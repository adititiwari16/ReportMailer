import pandas as pd
from sqlalchemy import (Column, DateTime, Float, ForeignKey, Integer, MetaData,
                        String, Table, and_, create_engine, select)

engine = create_engine('postgresql:'+
                       '//demouser:12345678@localhost:5432/demo')
with engine.connect() as conn:
    print("Connection successful")

metadata = MetaData()

demo_view = Table('demo_view', metadata,
                  Column('id', Integer, primary_key=True),
                  Column('name', String),
                  Column('created_at', DateTime)
                  )

# Shop table definition
shop_table = Table('shop', metadata,
    Column('shop_id', Integer, primary_key=True),
    Column('shop_name', String(100), unique=True, nullable=False)
)

# Model table definition
model_table = Table('model', metadata,
    Column('id', Integer, primary_key=True, autoincrement=True),
    Column('model_name', String(100), nullable=False),
    Column('model_description', String(200)),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False)
)

# Part table definition
part_table = Table('part', metadata,
    Column('material_code', String(50), primary_key=True),
    Column('part_name', String(200), nullable=False),
    Column('variant_id', Integer, ForeignKey('variant.id'), nullable=False),
    Column('pe_code', String(50), nullable=False),
    Column('model_id', Integer, ForeignKey('model.id'), nullable=False),
    Column('material_type', String(50), nullable=False),
    Column('supplier', String(100), nullable=False),
    Column('storage_type', String(50), nullable=False),
    Column('unit', String(20), nullable=False),
    Column('weight', Float, nullable=False),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False)
)

# Batch table definition
batch_table = Table('batch', metadata,
    Column('batch_id', Integer, primary_key=True, autoincrement=True),
    Column('name', String(100), nullable=False),
    Column('shift', String(50), nullable=False),
    Column('start_time', DateTime, nullable=False),
    Column('end_time', DateTime, nullable=False),
    Column('prod_qty', Float, nullable=False),
    Column('input_id', Integer, nullable=False),
    Column('output_id', Integer, nullable=False),
    Column('production_id', Integer, nullable=False),
    Column('material_code', String(50), ForeignKey('part.material_code'), nullable=False)
)

# Equipment table definition
equipment_table = Table('equipment', metadata,
    Column('equipment_id', Integer, primary_key=True, autoincrement=True),
    Column('name', String(100), nullable=False),
    Column('equipment_group', String(50), nullable=False),
    Column('line_id', Integer, nullable=False),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False)
)

# Input Material table definition
input_material_table = Table('input_material', metadata,
    Column('material_code', String(50), ForeignKey('part.material_code'), primary_key=True),
    Column('part_name', String(200), nullable=False),
    Column('production_id', Integer, nullable=False),
    Column('batch_id', Integer, ForeignKey('batch.batch_id'), nullable=False),
    Column('material_qty', Float, nullable=False)
)

# Quality Punching table definition
quality_punching_table = Table('quality_punching', metadata,
    Column('id', Integer, primary_key=True, autoincrement=True),
    Column('equipment_id', Integer, ForeignKey('equipment.equipment_id'), nullable=False),
    Column('material_code', String(50), ForeignKey('part.material_code'), nullable=False),
    Column('batch_id', Integer, ForeignKey('batch.batch_id'), nullable=False),
    Column('hold_qty', Float, nullable=False),
    Column('reject_qty', Float, nullable=False),
    Column('rework_qty', Float, nullable=False),
    Column('ok_qty', Float, nullable=False),
    Column('status', String(50), nullable=False),
    Column('submitted_by', String(100), nullable=False),
    Column('submitted_at', DateTime, nullable=False),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False)
)

# Shift table definition
shift_table = Table('shift', metadata,
    Column('id', Integer, primary_key=True, autoincrement=True),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False),
    Column('shift_name', String(100), nullable=False),
    Column('shift_start_time', DateTime, nullable=False),
    Column('shift_end_time', DateTime, nullable=False)
)

# Shift Report table definition
shift_report_table = Table('shift_report', metadata,
    Column('id', Integer, primary_key=True),
    Column('shop_id', Integer, ForeignKey('shop.shop_id'), nullable=False),
    Column('equipment_id', Integer, ForeignKey('equipment.equipment_id'), nullable=False),
    Column('shift_id', Integer, ForeignKey('shift.id'), nullable=False),
    Column('batch_id', Integer, ForeignKey('batch.batch_id'), nullable=False),
    Column('start_time', DateTime, nullable=False),
    Column('end_time', DateTime, nullable=False),
    Column('actual_qty', Integer, nullable=False),
    Column('hold_qty', Integer, nullable=False),
    Column('ok_qty', Integer, nullable=False),
    Column('rework_qty', Integer, nullable=False),
    Column('reject_qty', Integer, nullable=False)
)

# Variant table definition
variant_table = Table('variant', metadata,
    Column('id', Integer, primary_key=True, autoincrement=True),
    Column('variant_name', String(100), nullable=False),
    Column('common_name', String(100))
)

# User table definition
user_table = Table('user', metadata,
    Column('id', Integer, primary_key=True),
    Column('username', String(50), nullable=False),
    Column('email', String(100), nullable=False),
    Column('first_name', String(50), nullable=False),
    Column('last_name', String(50), nullable=False)
)


# with engine.connect() as conn:
#     conn.execute(demo_view.insert(),[
#         {'name':'John', 'created_at': '2021-07-01'},
#         {'name':'Jane', 'created_at': '2021-07-02'},
#         {'name':'Bob', 'created_at': '2021-07-03'}
#     ])
#     conn.commit()

# query = select().select_from(demo_view).with_only_columns(
#     demo_view.c.name, demo_view.c.created_at)

shop_name_input = input("Enter the shop name: ")
shift_name_input = input("Enter the shift name: ")

query = select(
    shop_table.c.shop_name,
    equipment_table.c.name,
    input_material_table.c.material_code,
    input_material_table.c.part_name,
    part_table.c.pe_code,
    model_table.c.model_name,
    variant_table.c.variant_name,
    batch_table.c.start_time,
    batch_table.c.end_time,
    shift_report_table.c.actual_qty,
    shift_report_table.c.hold_qty,
    shift_report_table.c.ok_qty,
    shift_report_table.c.rework_qty,
    shift_report_table.c.reject_qty
).select_from(shop_table) \
    .join(equipment_table, equipment_table.c.shop_id == shop_table.c.shop_id) \
    .join(part_table, part_table.c.shop_id == shop_table.c.shop_id) \
    .join(model_table, model_table.c.id == part_table.c.model_id) \
    .join(variant_table, variant_table.c.id == part_table.c.variant_id) \
    .join(batch_table, batch_table.c.material_code == part_table.c.material_code) \
    .join(input_material_table, input_material_table.c.material_code == part_table.c.material_code) \
    .join(shift_report_table, shift_report_table.c.batch_id == batch_table.c.batch_id) \
    .where(and_(
        shop_table.c.shop_name == shop_name_input,
        shift_table.c.shift_name == shift_name_input
    ))

# #to see result in terminal
# with engine.connect() as conn:
#     result = conn.execute(query).fetchall()
#     for row in result:
#         print(row)

# After executing the query and creating the DataFrame

with engine.connect() as connection:
    result = connection.execute(query)
    df = pd.DataFrame(result.fetchall(), columns=result.keys())

# # Save DataFrame to Excel
# excel_file_path = 'output_report.xlsx'
# df.to_excel(excel_file_path, index=False)

# print(f'Data saved to {excel_file_path}')

# Construct the filename using user inputs
excel_file_name = f"{shop_name_input}_{shift_name_input}_report.xlsx"
excel_file_path = f'output_reports/{excel_file_name}'  # Adjust the path as needed

# Save DataFrame to Excel
df.to_excel(excel_file_path, index=False)

print(f'Data saved to {excel_file_path}')

# query = select(batch_table)
# with engine.connect() as connection:
#     result = connection.execute(query)
#     df = pd.DataFrame(result.fetchall(), columns=result.keys())
# df['start_time'] = pd.to_datetime(df['start_time'])
# for index, row in df.iterrows():
#     start_time = row['start_time']
#     date_part = start_time.date()
#     time_part = start_time.time()
    
#     print(f"Batch ID: {row['batch_id']}, Date: {date_part}, Time: {time_part}")




metadata.create_all(engine)