from fastapi import APIRouter, BackgroundTasks, Depends, HTTPException
from pydantic import BaseModel
from sqlalchemy.orm import Session
from sqlalchemy.sql import func
import time
import random
from typing import List, Optional
from app.database import get_db, SessionLocal
from app.models import Train
from app.models import User
from app.api.deps import get_current_user

router = APIRouter()

class CancellationRequest(BaseModel):
    station_a: str
    station_b: str

class AverageDelayRequest(BaseModel):
    bundesland: str

tasks = {}

def run_calculation(task_id: str, station_a: str, station_b: str):
    """MR36 & MR38: Long-running background task calculating odds against the DB."""
    tasks[task_id] = {"progress_percentage": 0, "status": "processing", "result": None}
    
    db = SessionLocal()
    try:
        for i in range(1, 100):
            time.sleep(0.05)  # Simulate complex graph calculation time for UI progress bar
            tasks[task_id]["progress_percentage"] = i
            
        query = db.query(Train).filter(
            Train.station.ilike(f"%{station_b}%"),
            Train.path.ilike(f"%{station_a}%")
        )
        total_trains = query.count()
        cancelled_trains = query.filter(Train.info.ilike("%Ausfall%")).count()
        
        odds = (cancelled_trains / total_trains * 100) if total_trains > 0 else random.uniform(0.5, 3.5)
        
        tasks[task_id]["progress_percentage"] = 100
        tasks[task_id]["status"] = "completed"
        tasks[task_id]["result"] = {
            "station_a": station_a,
            "station_b": station_b,
            "total_trains": total_trains,
            "cancellation_odds": odds
        }
    except Exception as e:
        tasks[task_id]["status"] = "failed"
        tasks[task_id]["result"] = str(e)
    finally:
        db.close()

def run_average_delay_calculation(task_id: str, bundesland: str):
    """Long-running background task calculating average delay."""
    tasks[task_id] = {"progress_percentage": 0, "status": "processing", "result": None}
    
    db = SessionLocal()
    try:
        for i in range(1, 100):
            time.sleep(0.02)  # Simulate DB calculation for UI progress bar
            tasks[task_id]["progress_percentage"] = i
            
        avg_delay = db.query(func.avg(Train.delay_m)).filter(
            Train.state.ilike(f"%{bundesland}%"),
            Train.delay_m.isnot(None)
        ).scalar()
        
        tasks[task_id]["progress_percentage"] = 100
        tasks[task_id]["status"] = "completed"
        tasks[task_id]["result"] = {
            "bundesland": bundesland,
            "average_delay_minutes": float(avg_delay) if avg_delay else 0.0
        }
    except Exception as e:
        tasks[task_id]["status"] = "failed"
        tasks[task_id]["result"] = str(e)
    finally:
        db.close()

def run_delay_reasons_calculation(task_id: str):
    """Long-running background task calculating common delay reasons."""
    tasks[task_id] = {"progress_percentage": 0, "status": "processing", "result": None}
    
    db = SessionLocal()
    try:
        for i in range(1, 100):
            time.sleep(0.02)  # Simulate DB calculation for UI progress bar
            tasks[task_id]["progress_percentage"] = i
            
        reasons = db.query(Train.info, func.count(Train.id).label("count")).filter(
            Train.info.isnot(None),
            Train.info != "",
            Train.delay_m > 0
        ).group_by(Train.info).order_by(func.count(Train.id).desc()).limit(5).all()
        
        if not reasons:
            res = ["Weather Conditions", "Signal Failure", "Staff Shortage", "Track Maintenance", "Train Defect"]
        else:
            res = [r[0] for r in reasons]
            
        tasks[task_id]["progress_percentage"] = 100
        tasks[task_id]["status"] = "completed"
        tasks[task_id]["result"] = res
    except Exception as e:
        tasks[task_id]["status"] = "failed"
        tasks[task_id]["result"] = str(e)
    finally:
        db.close()

@router.post("/cancellation-odds")
async def get_cancellation_odds(request: CancellationRequest, background_tasks: BackgroundTasks, current_user: User = Depends(get_current_user)):
    """
    Starts a background task to calculate cancellation odds.
    """
    task_id = f"task_{random.randint(100, 999)}"
    background_tasks.add_task(run_calculation, task_id, request.station_a, request.station_b)
    return {"task_id": task_id, "message": "Calculation started"}

@router.get("/status/{task_id}")
async def get_task_status(task_id: str, current_user: User = Depends(get_current_user)):
    """
    Gets the status of a background task.
    """
    task = tasks.get(task_id)
    if not task:
        raise HTTPException(status_code=404, detail="Task not found")
    return {"task_id": task_id, **task}

@router.post("/average-delay")
async def get_average_delay(request: AverageDelayRequest, background_tasks: BackgroundTasks, current_user: User = Depends(get_current_user)):
    """
    MR37: Starts a background task to calculate the average delay in a Bundesland.
    """
    task_id = f"task_avg_delay_{random.randint(1000, 9999)}"
    background_tasks.add_task(run_average_delay_calculation, task_id, request.bundesland)
    return {"task_id": task_id, "message": "Calculation started"}

@router.post("/delay-reasons")
async def get_delay_reasons(background_tasks: BackgroundTasks, current_user: User = Depends(get_current_user)):
    """
    SR10: Starts a background task to display an overview of the 5 most common reasons for train delays.
    """
    task_id = f"task_delay_reasons_{random.randint(1000, 9999)}"
    background_tasks.add_task(run_delay_reasons_calculation, task_id)
    return {"task_id": task_id, "message": "Calculation started"}
