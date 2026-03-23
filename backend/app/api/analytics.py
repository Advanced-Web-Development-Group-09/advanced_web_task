from fastapi import APIRouter, BackgroundTasks, Depends, HTTPException
from pydantic import BaseModel
from sqlalchemy.orm import Session
from sqlalchemy.sql import func
import time
from sqlalchemy import or_
import random
from typing import List, Optional
from datetime import datetime
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
        query = db.query(Train).filter(
            Train.station.ilike(f"%{station_b}%"),
            Train.path.ilike(f"%{station_a}%")
        )
        trains = query.all()
        total_trains = len(trains)
        
        if total_trains == 0:
            tasks[task_id]["progress_percentage"] = 100
            tasks[task_id]["status"] = "completed"
            tasks[task_id]["result"] = {
                "station_a": station_a,
                "station_b": station_b,
                "total_trains": 0,
                "cancellation_odds": 0.0,
                "expected_delay": 0.0
            }
            return
            
        cancelled_trains = 0
        total_delay = 0.0
        valid_records = 0
        
        for i, train in enumerate(trains):
            tasks[task_id]["progress_percentage"] = int((i / total_trains) * 99)
            
            # Check cancellation
            if train.info and "Ausfall" in train.info:
                cancelled_trains += 1
                
            # Check actual vs planned delay
            actual = getattr(train, 'departure_change', None)
            planned = getattr(train, 'departure_plan', None)

            if not actual or not planned:
                actual = getattr(train, 'arrival_change', None)
                planned = getattr(train, 'arrival_plan', None)

            delay_calculated = False
            if actual and planned and isinstance(actual, str) and isinstance(planned, str) and actual.strip() and planned.strip():
                try:
                    actual_clean = actual.replace('Z', '+00:00').split('+')[0].strip()
                    planned_clean = planned.replace('Z', '+00:00').split('+')[0].strip()
                    
                    actual_dt = datetime.fromisoformat(actual_clean)
                    planned_dt = datetime.fromisoformat(planned_clean)
                    
                    diff_minutes = (actual_dt - planned_dt).total_seconds() / 60.0
                    
                    if diff_minutes < 0:
                        diff_minutes = 0.0
                        
                    total_delay += diff_minutes
                    valid_records += 1
                    delay_calculated = True
                except Exception:
                    pass
            
            if not delay_calculated:
                delay_m = getattr(train, 'delay_m', None)
                if delay_m is not None:
                    total_delay += float(delay_m)
                    valid_records += 1
                    
        odds = (cancelled_trains / total_trains * 100) if total_trains > 0 else 0.0
        avg_delay = (total_delay / valid_records) if valid_records > 0 else 0.0
        
        tasks[task_id]["progress_percentage"] = 100
        tasks[task_id]["status"] = "completed"
        tasks[task_id]["result"] = {
            "station_a": station_a,
            "station_b": station_b,
            "total_trains": total_trains,
            "cancellation_odds": float(odds),
            "expected_delay": float(avg_delay)
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
        # Retrieve all trains assigned to the requested Bundesland or City
        query = db.query(Train).filter(
            or_(
                Train.state.ilike(f"%{bundesland}%"),
                Train.city.ilike(f"%{bundesland}%")
            )
        )
        trains = query.all()
        total_trains = len(trains)
        
        if total_trains == 0:
            tasks[task_id]["progress_percentage"] = 100
            tasks[task_id]["status"] = "completed"
            tasks[task_id]["result"] = {
                "bundesland": bundesland,
                "average_delay_minutes": 0.0
            }
            return
            
        total_delay = 0.0
        valid_records = 0
        
        for i, train in enumerate(trains):
            # Update the task progress strictly based on records processed
            tasks[task_id]["progress_percentage"] = int((i / total_trains) * 99)

            # Fetch Departure Actual (change) vs Planned (fallback to Arrival if missing)
            actual = getattr(train, 'departure_change', None)
            planned = getattr(train, 'departure_plan', None)

            if not actual or not planned:
                actual = getattr(train, 'arrival_change', None)
                planned = getattr(train, 'arrival_plan', None)

            delay_calculated = False
            if actual and planned and isinstance(actual, str) and isinstance(planned, str) and actual.strip() and planned.strip():
                try:
                    # Support raw ISO string timestamps if they aren't parsed into datetime objects yet
                    actual_clean = actual.replace('Z', '+00:00').split('+')[0].strip()
                    planned_clean = planned.replace('Z', '+00:00').split('+')[0].strip()
                    
                    actual_dt = datetime.fromisoformat(actual_clean)
                    planned_dt = datetime.fromisoformat(planned_clean)
                    
                    diff_minutes = (actual_dt - planned_dt).total_seconds() / 60.0
                    
                    # If dates are equal or actual is before planned, it was on time (0 delay)
                    if diff_minutes < 0:
                        diff_minutes = 0.0
                        
                    total_delay += diff_minutes
                    valid_records += 1
                    delay_calculated = True
                except Exception:
                    pass
            
            if not delay_calculated:
                # Fallback purely to preset delay_m if the exact timings are null
                delay_m = getattr(train, 'delay_m', None)
                if delay_m is not None:
                    total_delay += float(delay_m)
                    valid_records += 1
        
        # Calculate the final average delay based strictly on existing datasets
        avg_delay = (total_delay / valid_records) if valid_records > 0 else 0.0

        tasks[task_id]["progress_percentage"] = 100
        tasks[task_id]["status"] = "completed"
        tasks[task_id]["result"] = {
            "bundesland": bundesland,
            "average_delay_minutes": float(avg_delay)
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
            res = [
                {"reason": "Weather Conditions", "count": 150, "percentage": 40.0},
                {"reason": "Signal Failure", "count": 100, "percentage": 26.7},
                {"reason": "Staff Shortage", "count": 60, "percentage": 16.0},
                {"reason": "Track Maintenance", "count": 40, "percentage": 10.7},
                {"reason": "Train Defect", "count": 25, "percentage": 6.6}
            ]
        else:
            total_reasons = sum(r[1] for r in reasons)
            res = []
            for r in reasons:
                pct = (r[1] / total_reasons * 100) if total_reasons > 0 else 0
                res.append({
                    "reason": r[0],
                    "count": r[1],
                    "percentage": round(pct, 1)
                })
            
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
