from sqlalchemy import Column, Float, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from psql import Base


class InputMaterial(Base):
    __tablename__ = 'input_material'
    material_code = Column(String(50), ForeignKey('part.material_code'), primary_key=True)
    part_name = Column(String(200), nullable=False)
    production_id = Column(Integer, nullable=False)
    batch_id = Column(Integer, ForeignKey('batch.batch_id'), nullable=False)
    material_qty = Column(Float, nullable=False)

    material = relationship("Part")
    batch = relationship("Batch")
