# models/shop.py

from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Shop(Base):
    __tablename__ = 'shop'
    shop_id = Column(Integer, primary_key=True)
    shop_name = Column(String(100), unique=True, nullable=False)

    # Relationships
    parts = relationship("Part", backref="shop")
    models = relationship("Model", backref="shop")
