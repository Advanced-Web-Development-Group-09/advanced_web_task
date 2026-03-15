from fastapi import APIRouter, BackgroundTasks
from pydantic import BaseModel
import time
import random
from typing import List, Optional

router = APIRouter()

# Pydantic model for the request body of the cancellation-odds endpoint
class CancellationRequest(BaseModel):
    train_id: str
    reason: str

# In-memory dictionary to store the status of background tasks
tasks = {}

def run_calculation(task_id: str):
    """
    Simulates a long-running background task for calculating cancellation odds.
    The task status is updated in the `tasks` dictionary.
    """
    tasks[task_id] = {"progress_percentage": 0, "status": "processing", "result": None}
    for i in range(1, 101):
        time.sleep(0.1)  # Simulate work being done
        tasks[task_id]["progress_percentage"] = i
        if i == 100:
            tasks[task_id]["status"] = "completed"
            tasks[task_id]["result"] = {"cancellation_odds": random.uniform(0, 1)}


@router.post("/api/analytics/cancellation-odds")
async def get_cancellation_odds(request: CancellationRequest, background_tasks: BackgroundTasks):
    """
    Starts a background task to calculate cancellation odds for a given train.
    """
    task_id = f"task_{random.randint(100, 999)}"
    background_tasks.add_task(run_calculation, task_id)
    return {"task_id": task_id, "message": "Calculation started"}

@router.get("/api/analytics/status/{task_id}")
async def get_task_status(task_id: str):
    """
    Gets the status of a background task.
    """
    task = tasks.get(task_id)
    if not task:
        return {"error": "Task not found"}
    return {"task_id": task_id, **task}

@router.get("/api/analytics/delay-reasons")
async def get_delay_reasons() -> List[str]:
    """
    Returns a mock list of common delay reasons.
    """
    return ["Weather Conditions", "Signal Failure", "Staff Shortage", "Track Maintenance", "Train Defect"]
