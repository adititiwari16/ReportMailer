from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy_utils import create_database, database_exists

# Database credentials
user = 'USERNAME'
password = 'PASSWORD'
host = 'localhost'
port = '5432'
database = 'DATABASE NAME'

# Database URL
url = f"postgresql://{user}:{password}@{host}:{port}/{database}"

# SQLAlchemy engine
engine = create_engine(url)

# Declarative base
Base = declarative_base()

# Create database if it doesn't exist
if not database_exists(engine.url):
    create_database(engine.url)

# Create session
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()