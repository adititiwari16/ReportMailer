from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class User(Base):
    __tablename__ = 'user'
    id = Column(Integer, primary_key=True)
    username = Column(String(50), nullable=False)
    email = Column(String(100), nullable=False)
    first_name = Column(String(50), nullable=False)
    last_name = Column(String(50), nullable=False)
    
    shift_reports = relationship("ShiftReport", backref="user")
