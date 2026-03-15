from fastapi import APIRouter

router = APIRouter()

@router.get("/me")
def read_user_me():
    """
    Returns mock data for the current user.
    """
    return {"username": "db_traveler_01", "email": "student@uni-hildesheim.de", "status": "active", "reward_points": 150}

@router.get("/leaderboard")
def get_leaderboard():
    """
    Returns a mock leaderboard.
    """
    return [{"username": "train_master", "points": 500}, {"username": "rail_fan", "points": 450}, {"username": "db_traveler_01", "points": 150}]

@router.get("/me/history/exports")
def get_user_exports():
    """
    Returns a mock list of the user's exported files.
    """
    return [{"filename": "trains_berlin.csv", "timestamp": "2026-03-14T10:00:00Z"}]

@router.get("/me/history/searches")
def get_user_searches():
    """
    Returns a mock list of the user's recent searches.
    """
    return ["Berlin Hbf", "ICE123", "Munich Hbf", "Hannover Hbf", "Delay > 10min"]
