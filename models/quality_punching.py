# models/quality_punching.py

from sqlalchemy import Column, DateTime, Float, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from models.batch import Batch  # Import Batch table
from psql import Base


class QualityPunching(Base):
    __tablename__ = 'quality_punching'
    id = Column(Integer, primary_key=True, autoincrement=True)
    equipment_id = Column(Integer, ForeignKey('equipment.equipment_id'), nullable=False)
    material_code = Column(String(50), ForeignKey('part.material_code'), nullable=False)
    batch_id = Column(Integer, ForeignKey('batch.batch_id'), nullable=False)  
    hold_qty = Column(Float, nullable=False)
    reject_qty = Column(Float, nullable=False)
    rework_qty = Column(Float, nullable=False)
    ok_qty = Column(Float, nullable=False)
    status = Column(String(50), nullable=False)
    submitted_by = Column(String(100), nullable=False)
    submitted_at = Column(DateTime, nullable=False)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)

    material = relationship("Part")
    batch = relationship("Batch")
    equipment = relationship("Equipment")
    shop = relationship("Shop", backref="quality_punchings")
