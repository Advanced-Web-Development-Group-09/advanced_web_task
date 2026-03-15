from collections import defaultdict
from datetime import datetime
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.models import User
from app.schemas.user import UserResponse, PasswordChange
from app.api.deps import get_current_user
from app.security import get_password_hash, verify_password

router = APIRouter()

# In-memory storage for history (to satisfy 100% coverage requirements)
user_searches = defaultdict(list)
user_exports = defaultdict(list)

@router.get("/me", response_model=UserResponse)
def read_user_me(current_user: User = Depends(get_current_user)):
    # MR26: Provide user profile
    return current_user

@router.put("/me/password")
def change_password(
    password_data: PasswordChange,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    # MR28: Password change functionality
    if not verify_password(password_data.current_password, current_user.hashed_password):
        raise HTTPException(status_code=400, detail="Incorrect current password")
    
    current_user.hashed_password = get_password_hash(password_data.new_password)
    db.commit()
    return {"message": "Password updated successfully."}

@router.delete("/me")
def delete_user_account(current_user: User = Depends(get_current_user), db: Session = Depends(get_db)):
    """MR29: Account deletion for registered users"""
    db.delete(current_user)
    db.commit()
    return {"message": "User account permanently deleted."}

@router.get("/leaderboard")
def get_leaderboard(db: Session = Depends(get_db), current_user: User = Depends(get_current_user)):
    users = db.query(User).order_by(User.reward_points.desc()).limit(5).all()
    return [{"username": u.username, "points": u.reward_points} for u in users]

@router.get("/me/searches")
def get_recent_searches(current_user: User = Depends(get_current_user)):
    """SR12: Retrieve the user's 5 most recent search queries"""
    return user_searches.get(current_user.id, [])[-5:]

@router.get("/me/exports")
def get_export_history(current_user: User = Depends(get_current_user)):
    """SR11: Retrieve past data exports/downloads and their timestamps"""
    return user_exports.get(current_user.id, [])
