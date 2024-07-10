-- Sequence to add data:
-- 1. variant
-- 2. shop
-- 3. model
-- 4. part
-- 5. equipment
-- 6. batch
-- 7. shift
-- 8. shift_report
-- 9. quality_punching
-- 10. user
-- 11. input_material

INSERT INTO batch (batch_id, batch_name, shift, start_time, end_time, prod_qty, input_id, output_id, production_id, material_code)
VALUES
    (1, 'Batch 1', 'A', '2024-06-24 20:49:09', '2024-06-24 16:54:52', 352, 0, 350, 0, '65111M66T60'),
    (2, 'Batch 2', 'B', '2024-06-24 19:49:09', '2024-06-24 20:49:09', 1000, 1000, 0, 0, '68111M66T00'),
    (3, 'Batch 3', 'C', '2024-06-24 18:49:09', '2024-06-24 19:49:09', 800, 800, 0, 0, '68311M66T00'),
    (4, 'Batch 4', 'A', '2024-06-24 17:49:09', '2024-06-24 18:49:09', 525, 500, 25, 0, '68151M66T00'),
    (5, 'Batch 5', 'B', '2024-06-24 20:49:09', '2024-06-24 16:54:52', 456, 56, 350, 49, '68351M66T00'),
    (6, 'Batch 6', 'C', '2024-06-24 19:49:09', '2024-06-24 20:49:09', 89, 80, 9, 0, '68511M66T00'),
    (7, 'Batch 7', 'A', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 768, 0, 768, 0, '68551M66T00'),
    (8, 'Batch 8', 'B', '2024-06-24 19:49:09', '2024-06-24 20:49:09', 159, 0, 154, 0, '68711M66T00'),
    (9, 'Batch 9', 'C', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 752, 752, 0, 0, '69111M66T00'),
    (10, 'Batch 10', 'A', '2024-06-24 19:49:09', '2024-06-24 20:49:09', 1229, 0, 1224, 0, '69151M66T00'),
    (11, 'Batch 11', 'B', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 2016, 15, 2000, 0, '61111M66T00'),
    (12, 'Batch 12', 'C', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 144, 0, 144, 0, '61161M66T00'),
    (13, 'Batch 13', 'A', '2024-06-24 15:49:09', '2024-06-24 17:49:09', 893, 893, 0, 0, '61161M66T10'),
    (14, 'Batch 14', 'B', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 843, 843, 0, 0, '59411M66T00'),
    (15, 'Batch 15', 'C', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 1351, 1351, 0, 0, '59461M66T00'),
    (16, 'Batch 16', 'A', '2024-06-24 17:49:09', '2024-06-24 19:49:09', 888, 0, 800, 80, '61513M66T01'),
    (17, 'Batch 17', 'B', '2024-06-24 15:49:09', '2024-06-24 17:49:09', 789, 0, 780, 5, '61513M66T11');

INSERT INTO equipment (equipment_id, name, equipment_group, line_id, shop_id)
VALUES
(1, 'Blanking line - A', 'Group A', 1, 1),
(2, 'Blanking line - C', 'Group B', 2, 1),
(3, 'TWB-A', 'Group C', 3, 1),
(4, 'TWB-C', 'Group D', 4, 1),
(5, 'X BAR-1', 'Group E', 5, 1),
(6, 'X BAR-2', 'Group F', 6, 1),
(7, 'X BAR-3', 'Group G', 7, 1),
(8, 'X BAR-4', 'Group H', 8, 1),
(9, 'Tandem Line 1', 'Group I', 9, 1),
(10, 'Tandem Line 2', 'Group J', 10, 1),
(11, 'Tandem Line 3', 'Group K', 11, 1),
(12, 'Tandem Line 4', 'Group L', 12, 1),
(13, '2400T-1', 'Group M', 1, 2),
(14, '2400T-2', 'Group N', 2, 2),
(15, 'HPDC-A1', 'Group O', 3, 3),
(16, 'HPDC-A2', 'Group P', 4, 3),
(17, 'HPDC-A3', 'Group Q', 5, 3),
(18, 'HPDC-A4', 'Group R', 6, 3);


INSERT INTO input_material (material_code, part_name, production_id, batch_id, material_qty)
VALUES
    ('65111M66T60', 'PANEL, ROOF, WITH SUNROOF', 1, 1, 1000),
    ('68111M66T00', 'PANEL, FRONT DOOR OUTER, RH', 2, 2, 1500),
    ('68311M66T00', 'PANEL, FRONT DOOR OUTER, LH', 3, 3, 1200),
    ('68151M66T00', 'PANEL, FRONT DOOR INNER, RH', 4, 4, 800),
    ('68351M66T00', 'PANEL, FRONT DOOR INNER, LH', 5, 5, 700),
    ('68511M66T00', 'PANEL, REAR DOOR OUTER, RH', 6, 6, 600),
    ('68711M66T00', 'PANEL, REAR DOOR OUTER, LH', 7, 7, 500),
    ('68551M66T00', 'PANEL, REAR DOOR INNER, RH', 8, 8, 400),
    ('68751M66T00', 'PANEL, REAR DOOR INNER, LH', 9, 9, 300),
    ('69111M66T00', 'PANEL, BACK DOOR OUTER', 10, 10, 200),
    ('69151M66T00', 'PANEL, BACK DOOR INNER', 11, 11, 100),
    ('61111M66T00', 'PANEL, MAIN FLOOR, RH', 12, 12, 50),
    ('61161M66T00', 'PANEL, MAIN FLOOR, LH', 13, 13, 20),
    ('61161M66T10', 'PANEL, MAIN FLOOR, LH', 14, 14, 25),
    ('59411M66T00', 'PANEL, MEMBER COWL SIDE OUTER, RH', 15, 15, 30),
    ('59461M66T00', 'PANEL, MEMBER COWL SIDE OUTER, LH', 16, 16, 35),
    ('61513M66T01', 'PANEL, REAR FLOOR REAR', 17, 17, 40);

INSERT INTO model (id, model_name, model_description, shop_id) VALUES
(1, 'YXA', 'Model YXA', 1),
(2, 'Y1K', 'Model Y1K', 1),
(3, 'YX04', 'Model YX04', 1),
(4, 'YX05', 'Model YX05', 1),
(5, 'YX07', 'Model YX07', 1),
(6, 'YX10', 'Model YX10', 1),
(7, 'YX17', 'Model YX17', 1),
(8, 'YX18', 'Model YX18', 1),
(9, 'YX12', 'Model YX12', 1),
(10, 'YX13', 'Model YX13', 1),
(11, 'YX19', 'Model YX19', 1),
(12, 'YX20', 'Model YX20', 2),
(13, 'YX21', 'Model YX21', 2),
(14, 'YX22', 'Model YX22', 3),
(15, 'YX14', 'Model YX14', 3),
(16, 'YX15', 'Model YX15', 3),
(17, 'YX23', 'Model YX23', 3),
(18, 'Y1K', 'Model Y1K', 1);


INSERT INTO part (material_code, part_name, variant_id, pe_code, model_id, material_type, supplier, storage_type, unit, weight, shop_id)
VALUES
    ('65111M66T60', 'PANEL, ROOF, WITH SUNROOF', 7, 'YXA', 1, 'Metal', 'Supplier A', 'Type A', 'kg', 10.5, 1),
    ('68111M66T00', 'PANEL, FRONT DOOR OUTER, RH', 8, 'Y1K', 2, 'Metal', 'Supplier B', 'Type B', 'kg', 12.3, 1),
    ('68311M66T00', 'PANEL, FRONT DOOR OUTER, LH', 9, 'Y1K', 3, 'Metal', 'Supplier C', 'Type C', 'kg', 11.8, 1),
    ('68151M66T00', 'PANEL, FRONT DOOR INNER, RH', 10, 'YX04', 4, 'Metal', 'Supplier D', 'Type D', 'kg', 9.2, 1),
    ('68351M66T00', 'PANEL, FRONT DOOR INNER, LH', 11, 'YX05', 5, 'Metal', 'Supplier E', 'Type E', 'kg', 8.7, 1),
    ('68511M66T00', 'PANEL, REAR DOOR OUTER, RH', 12, 'YX07', 6, 'Metal', 'Supplier F', 'Type F', 'kg', 7.4, 1),
    ('68711M66T00', 'PANEL, REAR DOOR OUTER, LH', 13, 'YX10', 7, 'Metal', 'Supplier G', 'Type G', 'kg', 6.9, 1),
    ('68551M66T00', 'PANEL, REAR DOOR INNER, RH', 7, 'YX17', 8, 'Metal', 'Supplier H', 'Type H', 'kg', 5.6, 1),
    ('68751M66T00', 'PANEL, REAR DOOR INNER, LH', 8, 'YX18', 9, 'Metal', 'Supplier I', 'Type I', 'kg', 4.5, 1),
    ('69111M66T00', 'PANEL, BACK DOOR OUTER', 9, 'YX12', 10, 'Metal', 'Supplier J', 'Type J', 'kg', 3.9, 1),
    ('69151M66T00', 'PANEL, BACK DOOR INNER', 10, 'YX13', 11, 'Metal', 'Supplier K', 'Type K', 'kg', 2.8, 1),
    ('61111M66T00', 'PANEL, MAIN FLOOR, RH', 11, 'YX19', 12, 'Metal', 'Supplier L', 'Type L', 'kg', 1.5, 1),
    ('61161M66T00', 'PANEL, MAIN FLOOR, LH', 12, 'YX20', 13, 'Metal', 'Supplier M', 'Type M', 'kg', 1.2, 2),
    ('61161M66T10', 'PANEL, MAIN FLOOR, LH', 13, 'YX21', 14, 'Metal', 'Supplier N', 'Type N', 'kg', 1.8, 2),
    ('59411M66T00', 'PANEL, MEMBER COWL SIDE OUTER, RH', 7, 'YX22', 15, 'Metal', 'Supplier O', 'Type O', 'kg', 2.5, 3),
    ('59461M66T00', 'PANEL, MEMBER COWL SIDE OUTER, LH', 8, 'YX14', 16, 'Metal', 'Supplier P', 'Type P', 'kg', 3.1, 3),
    ('61513M66T01', 'PANEL, REAR FLOOR REAR', 9, 'YX15', 17, 'Metal', 'Supplier Q', 'Type Q', 'kg', 4.8, 3),
    ('61513M66T11', 'PANEL, REAR FLOOR REAR*', 10, 'YX23', 18, 'Metal', 'Supplier R', 'Type R', 'kg', 4.3, 3);

INSERT INTO quality_punching (equipment_id, material_code, batch_id, hold_qty, reject_qty, rework_qty, ok_qty, status, submitted_by, submitted_at, shop_id)
VALUES
    (1, '65111M66T60', 1, 0, 2, 0, 350, 'OK', 'John Doe', '2024-06-24 08:00:00', 1),
    (2, '68111M66T00', 2, 1000, 0, 0, 0, 'OK', 'Jane Smith', '2024-06-24 16:00:00', 1),
    (3, '68311M66T00', 3, 800, 0, 0, 0, 'OK', 'John Doe', '2024-06-24 18:00:00', 1),
    (4, '68151M66T00', 4, 500, 0, 25, 0, 'OK', 'Jane Smith', '2024-06-24 17:00:00', 1),
    (5, '68351M66T00', 5, 56, 1, 49, 350, 'OK', 'John Doe', '2024-06-24 20:00:00', 1),
    (6, '68511M66T00', 6, 80, 0, 9, 0, 'OK', 'Jane Smith', '2024-06-24 19:00:00', 1),
    (7, '68711M66T00', 7, 0, 0, 0, 768, 'OK', 'John Doe', '2024-06-24 18:00:00', 1),
    (8, '68551M66T00', 8, 0, 0, 0, 768, 'OK', 'Jane Smith', '2024-06-24 20:00:00', 1),
    (9, '68751M66T00', 9, 0, 5, 0, 154, 'OK', 'John Doe', '2024-06-24 18:00:00', 1),
    (10, '69111M66T00', 10, 752, 0, 0, 0, 'OK', 'Jane Smith', '2024-06-24 19:00:00', 1),
    (11, '69151M66T00', 11, 0, 5, 0, 1224, 'OK', 'John Doe', '2024-06-24 20:00:00', 1),
    (12, '61111M66T00', 12, 15, 1, 0, 2000, 'OK', 'Jane Smith', '2024-06-24 19:00:00', 1),
    (13, '61161M66T00', 13, 0, 0, 0, 144, 'OK', 'John Doe', '2024-06-24 18:00:00', 2),
    (14, '61161M66T10', 14, 893, 0, 0, 0, 'OK', 'Jane Smith', '2024-06-24 16:00:00', 2),
    (15, '59411M66T00', 15, 843, 0, 0, 0, 'OK', 'John Doe', '2024-06-24 18:00:00', 3),
    (16, '59461M66T00', 16, 1351, 0, 0, 0, 'OK', 'Jane Smith', '2024-06-24 16:00:00', 3),
    (17, '61513M66T01', 17, 0, 8, 80, 800, 'OK', 'John Doe', '2024-06-24 18:00:00', 3);

INSERT INTO shift (shift_name, shift_start_time, shift_end_time, shop_id)
VALUES
    ('A', '2024-06-24 07:00:00', '2024-06-24 15:00:00', 1),
    ('B', '2024-06-24 15:00:00', '2024-06-24 23:00:00', 1),
    ('C', '2024-06-24 23:00:00', '2024-06-25 07:00:00', 1),
    ('A', '2024-06-24 07:00:00', '2024-06-24 15:00:00', 2),
    ('B', '2024-06-24 15:00:00', '2024-06-24 23:00:00', 2),
    ('C', '2024-06-24 23:00:00', '2024-06-25 07:00:00', 2),
    ('A', '2024-06-24 07:00:00', '2024-06-24 15:00:00', 3),
    ('B', '2024-06-24 15:00:00', '2024-06-24 23:00:00', 3),
    ('C', '2024-06-24 23:00:00', '2024-06-25 07:00:00', 3);

INSERT INTO shift_report (shop_id, equipment_id, shift_id, batch_id, start_time, end_time, actual_qty, hold_qty, ok_qty, rework_qty, reject_qty)
VALUES
    (1, 1, 1, 1, '2024-06-24 20:49:09', '2024-06-24 16:54:52', 352, 0, 350, 0, 2),
    (1, 2, 1, 2, '2024-06-24 19:49:09', '2024-06-24 20:49:09', 1000, 1000, 0, 0, 0),
    (1, 3, 1, 3, '2024-06-24 18:49:09', '2024-06-24 19:49:09', 800, 800, 0, 0, 0),
    (1, 4, 1, 4, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 525, 500, 25, 0, 0),
    (1, 5, 1, 5, '2024-06-24 20:49:09', '2024-06-24 16:54:52', 456, 56, 350, 49, 1),
    (1, 6, 1, 6, '2024-06-24 19:49:09', '2024-06-24 20:49:09', 89, 80, 9, 0, 0),
    (1, 7, 1, 7, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 768, 0, 768, 0, 0),
    (1, 8, 1, 8, '2024-06-24 19:49:09', '2024-06-24 20:49:09', 159, 0, 154, 0, 5),
    (1, 9, 1, 9, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 752, 752, 0, 0, 0),
    (1, 10, 1, 10, '2024-06-24 19:49:09', '2024-06-24 20:49:09', 1229, 0, 1224, 0, 5),
    (1, 11, 1, 11, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 2016, 15, 2000, 0, 1),
    (2, 12, 1, 12, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 144, 0, 144, 0, 0),
    (2, 13, 1, 13, '2024-06-24 15:49:09', '2024-06-24 17:49:09', 893, 893, 0, 0, 0),
    (3, 14, 1, 14, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 843, 843, 0, 0, 0),
    (3, 15, 1, 15, '2024-06-24 15:49:09', '2024-06-24 17:49:09', 1351, 1351, 0, 0, 0),
    (3, 16, 1, 16, '2024-06-24 17:49:09', '2024-06-24 18:49:09', 888, 0, 800, 80, 8),
    (3, 17, 1, 17, '2024-06-24 15:49:09', '2024-06-24 17:49:09', 789, 0, 780, 5, 4);

INSERT INTO shop (shop_id, shop_name) VALUES
(1, 'PRS-M'),
(2, 'PRS-G'),
(3, 'CAS-G');

INSERT INTO "user" (username, email, first_name, last_name)
VALUES
    ('johndoe', 'kopahe3582@atebin.com', 'John', 'Doe'),
    ('janesmith', 'aditisince2003@gmail.com', 'Jane', 'Smith');

INSERT INTO variant (id, variant_name, common_name) VALUES
(7, 'R00', 'Variant R00'),
(8, 'R10', 'Variant R10'),
(9, 'R20', 'Variant R20'),
(10, 'R00', 'Variant R00'),
(11, 'R10', 'Variant R10'),
(12, 'S00', 'Variant S00'),
(13, 'S10', 'Variant S10');
