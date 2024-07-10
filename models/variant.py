from sqlalchemy import Column, Integer, String

from psql import Base


class Variant(Base):
    __tablename__ = 'variant'
    id = Column(Integer, primary_key=True, autoincrement=True)
    variant_name = Column(String(100), nullable=False)
    common_name = Column(String(100))
