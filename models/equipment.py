from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Equipment(Base):
    __tablename__ = 'equipment'
    equipment_id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), nullable=False)
    equipment_group = Column(String(50), nullable=False)
    line_id = Column(Integer, nullable=False)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)

    shop = relationship("Shop", backref="equipments")
