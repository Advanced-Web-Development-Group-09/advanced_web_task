import csv
import io
import codecs
import uuid
import os
import tempfile
import shutil
from datetime import datetime
from typing import List, Optional
from fastapi import APIRouter, File, UploadFile, HTTPException, Depends, BackgroundTasks
from fastapi.responses import StreamingResponse
from sqlalchemy.orm import Session
from sqlalchemy import or_

from app.database import get_db, SessionLocal
from app.models import Train, User
from app.api.deps import get_current_user
from app.api.users import user_searches, user_exports

router = APIRouter()

def _parse_int(val):
    try:
        return int(float(val))
    except (ValueError, TypeError):
        return None

def _parse_float(val):
    try:
        return float(val)
    except (ValueError, TypeError):
        return None

upload_tasks = {}
uploaded_datasets_cache = []

def process_csv_upload(task_id: str, file_path: str, user_id: int, filename: str, username: str):
    """Background task to process large CSV uploads and report progress."""
    upload_tasks[task_id] = {"progress_percentage": 0, "status": "processing", "result": None}
    db = SessionLocal()
    try:
        total_size = os.path.getsize(file_path)
        upload_batch_id = str(uuid.uuid4())
        new_trains = []
        batch_size = 5000
        
        with open(file_path, "r", encoding="utf-8") as f:
            reader = csv.DictReader(f)
            
            # MR34: Validate headers
            expected_headers = ["ID", "station", "departure_plan"]
            if not reader.fieldnames or not all(header in reader.fieldnames for header in expected_headers):
                upload_tasks[task_id]["status"] = "failed"
                upload_tasks[task_id]["result"] = "Invalid CSV format. Missing required headers."
                return
                
            for row in reader:
                train = Train(
                    journey_id=row.get("ID", ""),
                    line=row.get("line", ""),
                    eva_nr=_parse_int(row.get("eva_nr")),
                    category=_parse_int(row.get("category")),
                    path=row.get("path", ""),
                    station=row.get("station", ""),
                    state=row.get("state", ""),
                    city=row.get("city", ""),
                    zip_code=row.get("zip", ""),
                    longitude=_parse_float(row.get("long")),
                    latitude=_parse_float(row.get("lat")),
                    arrival_plan=row.get("arrival_plan", ""),
                    departure_plan=row.get("departure_plan", ""),
                    arrival_change=row.get("arrival_change", ""),
                    departure_change=row.get("departure_change", ""),
                    delay_m=_parse_int(row.get("arrival/departure_delay_m")),
                    delay_check=row.get("arrival/departure_delay_check", ""),
                    info=row.get("info", ""),
                    uploader_id=user_id,
                    upload_batch=upload_batch_id
                )
                new_trains.append(train)
                
                if len(new_trains) >= batch_size:
                    db.add_all(new_trains)
                    db.commit()
                    new_trains = []
                    try:
                        # Update progress based on file read position
                        processed_size = f.tell()
                        progress = int((processed_size / total_size) * 100)
                        upload_tasks[task_id]["progress_percentage"] = min(progress, 99)
                    except Exception:
                        pass
                        
            # Insert any remaining records
            if new_trains:
                db.add_all(new_trains)
                
        # CR4: Award reward points upon successful upload
        user = db.query(User).filter(User.id == user_id).first()
        if user:
            user.reward_points += 10
        db.commit()

        dataset_info = {
            "id": upload_batch_id,
            "name": filename,
            "size": total_size,
            "timestamp": datetime.utcnow().isoformat(),
            "uploader": username
        }
        uploaded_datasets_cache.append(dataset_info)
        
        upload_tasks[task_id]["progress_percentage"] = 100
        upload_tasks[task_id]["status"] = "completed"
        upload_tasks[task_id]["result"] = {
            "message": "File uploaded successfully. +10 Reward Points!",
            "upload_id": upload_batch_id
        }
    except Exception as e:
        upload_tasks[task_id]["status"] = "failed"
        upload_tasks[task_id]["result"] = str(e)
    finally:
        db.close()
        if os.path.exists(file_path):
            os.remove(file_path)

@router.get("")
async def get_trains(
    search: Optional[str] = None, 
    sort_by_departure: Optional[bool] = False,
    skip: int = 0,
    limit: int = 100,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """
    Get a list of trains.
    """
    query = db.query(Train)
    
    if search:
        # MR32: Filter by Journey ID, Station, or City
        query = query.filter(
            or_(
                Train.journey_id.ilike(f"%{search}%"),
                Train.station.ilike(f"%{search}%"),
                Train.city.ilike(f"%{search}%")
            )
        )
        # SR12: Record the search query here to the database
        user_searches[current_user.id].append({
            "query": search,
            "timestamp": datetime.utcnow().isoformat()
        })
        # Keep only the last 5 searches in memory to prevent memory leaks
        user_searches[current_user.id] = user_searches[current_user.id][-5:]

    # Calculate total records for the Angular Paginator BEFORE applying offset/limit
    total_count = query.count()

    if sort_by_departure:
        # MR39: Sort by planned departure time
        query = query.order_by(Train.departure_plan.asc())

    # Apply pagination bounds to prevent browser crashes
    trains = query.offset(skip).limit(limit).all()

    return {
        "total": total_count,
        "items": trains
    }

@router.post("/upload")
async def upload_train_data(
    background_tasks: BackgroundTasks,
    file: UploadFile = File(...),
    current_user: User = Depends(get_current_user)
):
    """
    Upload a CSV file with train data as a background task.
    """
    if not file.filename.endswith(".csv"):
        raise HTTPException(status_code=400, detail="Only CSV allowed")
        
    # Save uploaded file to a temporary file for background processing
    fd, temp_path = tempfile.mkstemp(suffix=".csv")
    with os.fdopen(fd, "wb") as f:
        shutil.copyfileobj(file.file, f)
        
    task_id = f"task_upload_{uuid.uuid4().hex[:8]}"
    background_tasks.add_task(process_csv_upload, task_id, temp_path, current_user.id, file.filename, current_user.username)
    
    return {
        "message": "Upload started. Check status endpoint.",
        "task_id": task_id
    }

@router.get("/upload/status/{task_id}")
async def get_upload_status(task_id: str, current_user: User = Depends(get_current_user)):
    """Check the progress of a background upload task."""
    task = upload_tasks.get(task_id)
    if not task:
        raise HTTPException(status_code=404, detail="Upload task not found")
    return {"task_id": task_id, **task}

@router.get("/uploads")
async def get_uploaded_datasets(current_user: User = Depends(get_current_user)):
    """Retrieve the globally cached list of uploaded datasets."""
    return uploaded_datasets_cache

@router.delete("/uploads/{upload_id}")
async def delete_uploaded_data(
    upload_id: str,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """
    MR40: Delete uploaded data
    """
    global uploaded_datasets_cache
    trains_to_delete = db.query(Train).filter(
        Train.upload_batch == upload_id, 
        Train.uploader_id == current_user.id
    ).all()
    
    if not trains_to_delete:
        raise HTTPException(status_code=404, detail="Upload batch not found or not owned by user.")
        
    for train in trains_to_delete:
        db.delete(train)
        
    db.commit()

    # Remove from cache
    uploaded_datasets_cache = [ds for ds in uploaded_datasets_cache if ds["id"] != upload_id]
    return {"message": f"Deleted {len(trains_to_delete)} train records successfully."}

@router.get("/download/csv")
async def download_trains_csv(
    search: Optional[str] = None, 
    sort_by_departure: Optional[bool] = False,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user)
):
    """
    MR35: Train data download. Streams the CSV to prevent memory crashes.
    """
    query = db.query(Train)
    if search:
        query = query.filter(
            or_(
                Train.journey_id.ilike(f"%{search}%"),
                Train.station.ilike(f"%{search}%"),
                Train.city.ilike(f"%{search}%")
            )
        )
    if sort_by_departure:
        query = query.order_by(Train.departure_plan.asc())
        
    # SR11: Add entry to the user's export history
    user_exports[current_user.id].append({
        "filters": search or "None",
        "timestamp": datetime.utcnow().isoformat()
    })
    # Keep only the last 50 exports in memory
    user_exports[current_user.id] = user_exports[current_user.id][-50:]

    def iter_csv():
        output = io.StringIO()
        writer = csv.writer(output)
        writer.writerow(["journey_id", "line", "station", "city", "departure_plan", "delay_m", "info"])
        yield output.getvalue()
        output.seek(0)
        output.truncate(0)
        
        for train in query.yield_per(1000):
            writer.writerow([train.journey_id, train.line, train.station, train.city, train.departure_plan, train.delay_m, train.info])
            yield output.getvalue()
            output.seek(0)
            output.truncate(0)
            
    return StreamingResponse(iter_csv(), media_type="text/csv", headers={"Content-Disposition": "attachment; filename=filtered_trains.csv"})

@router.get("/{train_id}")
async def get_train_by_id(train_id: str, db: Session = Depends(get_db), current_user: User = Depends(get_current_user)):
    """
    Get details for a specific train.
    """
    train = db.query(Train).filter(Train.journey_id == train_id).first()
    if not train:
        raise HTTPException(status_code=404, detail="Train not found")
    return train
