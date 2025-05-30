-- Phần 3: Tiếp tục insert từ user 31-40 
-- Đây là phần tiếp theo của script insert_medical_registry_list_200.sql

-- User 31 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám nội tiết', 'Điều trị suy giáp', 'https://example.com/qr121', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 121, 31, 5, 121),
('Khám mắt', 'Điều trị đục thủy tinh thể', 'https://example.com/qr122', false, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), true, 122, 31, 5, 122),
('Khám xương khớp', 'Thoái hóa khớp gối', 'https://example.com/qr123', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 123, 31, 5, 123),
('Khám răng hàm mặt', 'Cấy ghép implant', 'https://example.com/qr124', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 124, 31, 5, 124);

-- User 32 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám da liễu', 'Điều trị bạch biến', 'https://example.com/qr125', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 125, 32, 5, 125),
('Khám hô hấp', 'Điều trị COPD giai đoạn 2', 'https://example.com/qr126', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 126, 32, 5, 126),
('Khám tim mạch', 'Điều trị suy tim', 'https://example.com/qr127', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 127, 32, 5, 127),
('Khám tiêu hóa', 'Điều trị viêm đại tràng', 'https://example.com/qr128', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 128, 32, 5, 128);

-- User 33 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tai mũi họng', 'Điều trị viêm tai giữa', 'https://example.com/qr129', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 129, 33, 5, 129),
('Khám thần kinh', 'Điều trị bệnh Parkinson', 'https://example.com/qr130', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 130, 33, 5, 130),
('Khám sản phụ khoa', 'Điều trị lạc nội mạc tử cung', 'https://example.com/qr131', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 131, 33, 5, 131),
('Khám nhi khoa', 'Điều trị hen ở trẻ em', 'https://example.com/qr132', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 132, 33, 5, 132);

-- User 34 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám mạch máu', 'Điều trị suy tĩnh mạch', 'https://example.com/qr133', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 133, 34, 5, 133),
('Khám dị ứng', 'Điều trị dị ứng thời tiết', 'https://example.com/qr134', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 134, 34, 5, 134),
('Khám tâm lý', 'Điều trị lo âu', 'https://example.com/qr135', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 135, 34, 5, 135),
('Khám vật lý trị liệu', 'Điều trị sau chấn thương', 'https://example.com/qr136', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), true, 136, 34, 5, 136);

-- User 35 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám dinh dưỡng', 'Tư vấn giảm cân', 'https://example.com/qr137', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), true, 137, 35, 5, 137),
('Khám nam khoa', 'Điều trị rối loạn cương dương', 'https://example.com/qr138', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), true, 138, 35, 5, 138),
('Khám sức khỏe tổng quát', 'Khám sức khỏe trước khi kết hôn', 'https://example.com/qr139', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), true, 139, 35, 5, 139),
('Khám da liễu', 'Điều trị rụng tóc', 'https://example.com/qr140', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), true, 140, 35, 5, 140);

-- User 36 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tim mạch', 'Điều trị nhồi máu cơ tim', 'https://example.com/qr141', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), true, 141, 36, 5, 141),
('Khám hô hấp', 'Điều trị lao phổi', 'https://example.com/qr142', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), true, 142, 36, 5, 142),
('Khám nội tiết', 'Điều trị cường giáp', 'https://example.com/qr143', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), true, 143, 36, 5, 143),
('Khám tai mũi họng', 'Điều trị polyp mũi', 'https://example.com/qr144', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), true, 144, 36, 5, 144);

-- User 37 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Điều trị hội chứng ruột kích thích', 'https://example.com/qr145', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 145, 37, 5, 145),
('Khám thần kinh', 'Điều trị đau đầu migraine', 'https://example.com/qr146', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 146, 37, 5, 146),
('Khám mắt', 'Điều trị thoái hóa điểm vàng', 'https://example.com/qr147', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 147, 37, 5, 147),
('Khám xương khớp', 'Điều trị thoát vị đĩa đệm', 'https://example.com/qr148', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 148, 37, 5, 148);

-- User 38 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám răng hàm mặt', 'Điều trị khớp thái dương hàm', 'https://example.com/qr149', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 149, 38, 5, 149),
('Khám da liễu', 'Điều trị bệnh vẩy nến', 'https://example.com/qr150', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 150, 38, 5, 150),
('Khám sản phụ khoa', 'Điều trị u xơ tử cung', 'https://example.com/qr151', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 151, 38, 5, 151),
('Khám hô hấp', 'Điều trị viêm phế quản mạn', 'https://example.com/qr152', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 152, 38, 5, 152);

-- User 39 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tim mạch', 'Điều trị hẹp van động mạch chủ', 'https://example.com/qr153', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 153, 39, 5, 153),
('Khám tiêu hóa', 'Điều trị viêm gan siêu vi B', 'https://example.com/qr154', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 154, 39, 5, 154),
('Khám tai mũi họng', 'Điều trị ung thư thanh quản', 'https://example.com/qr155', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 155, 39, 5, 155),
('Khám nội tiết', 'Điều trị bệnh Cushing', 'https://example.com/qr156', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), true, 156, 39, 5, 156);

-- User 40 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám thần kinh', 'Điều trị bệnh Alzheimer', 'https://example.com/qr157', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), true, 157, 40, 5, 157),
('Khám mắt', 'Điều trị bệnh glôcôm', 'https://example.com/qr158', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), true, 158, 40, 5, 158),
('Khám xương khớp', 'Điều trị viêm cột sống dính khớp', 'https://example.com/qr159', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), true, 159, 40, 5, 159),
('Khám dị ứng', 'Điều trị dị ứng thức ăn', 'https://example.com/qr160', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), true, 160, 40, 5, 160); 