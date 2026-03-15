from typing import List, Optional
from fastapi import APIRouter, File, UploadFile, HTTPException

router = APIRouter()

# Mock database for trains
mock_trains_db = [
    {"id": "ICE123", "station": "Berlin Hbf", "planned_departure": "10:00"},
    {"id": "RE456", "station": "Berlin Südkreuz", "planned_departure": "10:15"},
]

# Mock database for train details
mock_train_details_db = {
    "ICE123": {"id": "ICE123", "station": "Berlin Hbf", "planned_departure": "10:00", "platform": "3", "destination": "Munich Hbf"}
}

@router.get("/api/trains")
async def get_trains(search: Optional[str] = None, sort_by_departure: Optional[bool] = False):
    """
    Get a list of trains.
    This endpoint returns a mock list of trains.
    It supports searching by station and sorting by departure time.
    """
    response = mock_trains_db
    if search:
        response = [train for train in response if search.lower() in train["station"].lower()]

    if sort_by_departure:
        response = sorted(response, key=lambda x: x["planned_departure"])

    return response

@router.get("/api/trains/{train_id}")
async def get_train_by_id(train_id: str):
    """
    Get details for a specific train.
    This endpoint returns mock details for a specific train.
    """
    if train_id in mock_train_details_db:
        return mock_train_details_db[train_id]
    raise HTTPException(status_code=404, detail="Train not found")

@router.post("/api/trains/upload")
async def upload_train_data(file: UploadFile = File(...)):
    """
    Upload a CSV file with train data.
    This is a mock endpoint that checks if the uploaded file is a CSV.
    """
    if not file.filename.endswith(".csv"):
        raise HTTPException(status_code=400, detail="Only CSV allowed")
    return {"message": "File uploaded successfully. +10 Reward Points!"}
