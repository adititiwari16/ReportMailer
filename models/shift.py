from sqlalchemy import Column, DateTime, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Shift(Base):
    __tablename__ = 'shift'
    id = Column(Integer, primary_key=True, autoincrement=True)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)
    shift_name = Column(String(100), nullable=False)
    shift_start_time = Column(DateTime, nullable=False)
    shift_end_time = Column(DateTime, nullable=False)

    shop = relationship("Shop", backref="shifts")
