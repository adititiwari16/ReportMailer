import datetime
import enum

import pytz
from sqlalchemy import (BigInteger, Boolean, Column, DateTime, Enum, Float,
                        ForeignKey, ForeignKeyConstraint, Index, Integer,
                        String, UniqueConstraint)
from sqlalchemy.orm import relationship

from models.batch import Batch
from models.equipment import Equipment
from models.input_material import InputMaterial
from models.model import Model
from models.part import Part
from models.quality_punching import QualityPunching
from models.shift import Shift
from models.shiftreport import ShiftReport
from models.shop import Shop
from models.user import User
from models.variant import Variant
from psql import Base, engine


def create():
    Base.metadata.create_all(engine)

create()
