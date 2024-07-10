from sqlalchemy import Column, DateTime, ForeignKey, Integer
from sqlalchemy.orm import relationship

from psql import Base


class ShiftReport(Base):
    __tablename__ = 'shift_report'
    id = Column(Integer, primary_key=True)
    shop_id = Column(Integer, ForeignKey('shop.shop_id'), nullable=False)
    equipment_id = Column(Integer, ForeignKey('equipment.equipment_id'), nullable=False)
    shift_id = Column(Integer, ForeignKey('shift.id'), nullable=False)
    batch_id = Column(Integer, ForeignKey('batch.batch_id'), nullable=False)
    start_time = Column(DateTime, nullable=False)
    end_time = Column(DateTime, nullable=False)
    actual_qty = Column(Integer, nullable=False)
    hold_qty = Column(Integer, nullable=False)
    ok_qty = Column(Integer, nullable=False)
    rework_qty = Column(Integer, nullable=False)
    reject_qty = Column(Integer, nullable=False)
    
    shop = relationship("Shop", backref="shift_reports")
    equipment = relationship("Equipment", backref="shift_reports")
    shift = relationship("Shift", backref="shift_reports")
    batch = relationship("Batch", backref="shift_reports")
