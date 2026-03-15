from fastapi import FastAPI, Depends
from fastapi.middleware.cors import CORSMiddleware
from app.api import auth, users, trains, analytics, routing
from app.api.deps import get_current_user
from app.database import engine, SessionLocal
from app import models

# Create SQLite database tables
models.Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.on_event("startup")
def startup_event():
    db = SessionLocal()
    try:
        routing.build_graph(db)
    finally:
        db.close()

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
app.include_router(trains.router, prefix="/api/trains", tags=["trains"])
app.include_router(analytics.router, prefix="/api/analytics", tags=["analytics"])
app.include_router(routing.router, prefix="/api/routing", tags=["routing"])

@app.get("/")
def read_root():
    return {"Hello": "World"}
