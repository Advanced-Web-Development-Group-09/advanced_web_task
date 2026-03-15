from fastapi import APIRouter, status
from app.schemas.user import UserRegister, UserLogin

router = APIRouter()

@router.post("/register", status_code=status.HTTP_201_CREATED)
def register_user(user: UserRegister):
    """
    Registers a new user.
    This is a mock endpoint and does not actually create a user.
    """
    return {"message": "User registered successfully."}

@router.post("/login")
def login_user(user: UserLogin):
    """
    Logs in a user.
    This is a mock endpoint and returns a mock JWT token.
    """
    return {"access_token": "mock_jwt_token_123", "token_type": "bearer"}
