from sqlalchemy import Column, DateTime, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Batch(Base):
    __tablename__ = 'batch'
    batch_id = Column(Integer, primary_key=True)
    batch_name = Column(String(100), nullable=False)
    start_time = Column(DateTime, nullable=False)
    end_time = Column(DateTime, nullable=False)
    quantity = Column(Integer, nullable=False)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)

    shop = relationship("Shop", backref="batches")
