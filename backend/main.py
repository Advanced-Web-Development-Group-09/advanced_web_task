from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.api import auth, users, trains, analytics

app = FastAPI()

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(auth.router, prefix="/api/auth", tags=["auth"])
app.include_router(users.router, prefix="/api/users", tags=["users"])
app.include_router(trains.router, tags=["trains"])
app.include_router(analytics.router, tags=["analytics"])

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/api/data")
def get_data():
    return {"message": "Hello from the backend!"}
