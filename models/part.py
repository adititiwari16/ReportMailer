from sqlalchemy import Column, Float, ForeignKey, Index, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class Part(Base):
    __tablename__ = 'part'
    material_code = Column(String(50), primary_key=True)
    part_name = Column(String(200), nullable=False)
    variant_id = Column(Integer, ForeignKey('variant.id'), nullable=False)
    pe_code = Column(String(50), nullable=False)
    model_id = Column(Integer, ForeignKey('model.id'), nullable=False)
    material_type = Column(String(50), nullable=False)
    supplier = Column(String(100), nullable=False)
    storage_type = Column(String(50), nullable=False)
    unit = Column(String(20), nullable=False)
    weight = Column(Float, nullable=False)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)

    __table_args__ = (
        Index('idx_part_name', 'part_name'),
    )

    model = relationship("Model", backref="parts")
    variant = relationship("Variant", backref="parts")
    shop = relationship("Shop", backref="parts")
