from sqlalchemy import Boolean, Column, Integer, String, ForeignKey, Float
from sqlalchemy.orm import relationship
from app.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String, unique=True, index=True)
    email = Column(String, unique=True, index=True)
    hashed_password = Column(String)
    is_active = Column(Boolean, default=True)
    reward_points = Column(Integer, default=0)
    status = Column(String, default="Available")

    trains = relationship("Train", back_populates="uploader")

class Train(Base):
    __tablename__ = "trains"

    id = Column(Integer, primary_key=True, index=True)
    journey_id = Column(String, index=True)
    line = Column(String, nullable=True)
    eva_nr = Column(Integer, index=True, nullable=True)
    category = Column(Integer, nullable=True)
    path = Column(String, nullable=True)
    station = Column(String, index=True)
    state = Column(String, nullable=True)
    city = Column(String, index=True, nullable=True)
    zip_code = Column(String, nullable=True)
    longitude = Column(Float, nullable=True)
    latitude = Column(Float, nullable=True)
    arrival_plan = Column(String, nullable=True)
    departure_plan = Column(String, nullable=True)
    arrival_change = Column(String, nullable=True)
    departure_change = Column(String, nullable=True)
    delay_m = Column(Integer, nullable=True)
    delay_check = Column(String, nullable=True)
    info = Column(String, nullable=True)
    
    upload_batch = Column(String, index=True)
    uploader_id = Column(Integer, ForeignKey("users.id"))
    
    uploader = relationship("User", back_populates="trains")

class Dataset(Base):
    __tablename__ = "datasets"
    
    id = Column(String, primary_key=True, index=True)
    name = Column(String, index=True)
    size = Column(Float)
    uploader = Column(String, default="Admin")
    timestamp = Column(String)
    uploader_id = Column(Integer, ForeignKey("users.id"))

class ExportHistory(Base):
    __tablename__ = "export_history"
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"))
    action = Column(String)
    timestamp = Column(String)