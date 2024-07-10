from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Model(Base):
    __tablename__ = 'model'
    id = Column(Integer, primary_key=True, autoincrement=True)
    model_name = Column(String(100), nullable=False)
    model_description = Column(String(200))
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)

    shop = relationship("Shop", backref="models")
