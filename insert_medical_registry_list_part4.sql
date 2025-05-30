-- Phần 4: Tiếp tục insert từ user 41-50
-- Đây là phần cuối của script insert_medical_registry_list_200.sql

-- User 41 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tâm lý', 'Điều trị rối loạn trầm cảm', 'https://example.com/qr161', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 161, 41, 5, 161),
('Khám dinh dưỡng', 'Tư vấn dinh dưỡng cho bệnh nhân ung thư', 'https://example.com/qr162', false, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), true, 162, 41, 5, 162),
('Khám nam khoa', 'Điều trị vô sinh nam', 'https://example.com/qr163', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 163, 41, 5, 163),
('Khám sức khỏe tổng quát', 'Khám sức khỏe trước khi du học', 'https://example.com/qr164', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 164, 41, 5, 164);

-- User 42 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám da liễu', 'Điều trị sẹo lồi', 'https://example.com/qr165', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 165, 42, 5, 165),
('Khám hô hấp', 'Điều trị ung thư phổi', 'https://example.com/qr166', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 166, 42, 5, 166),
('Khám tim mạch', 'Điều trị bệnh mạch vành', 'https://example.com/qr167', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 167, 42, 5, 167),
('Khám nội tiết', 'Điều trị bệnh Addison', 'https://example.com/qr168', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 168, 42, 5, 168);

-- User 43 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Điều trị bệnh Crohn', 'https://example.com/qr169', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 169, 43, 5, 169),
('Khám tai mũi họng', 'Điều trị ù tai', 'https://example.com/qr170', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 170, 43, 5, 170),
('Khám thần kinh', 'Điều trị bệnh đa xơ cứng', 'https://example.com/qr171', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 171, 43, 5, 171),
('Khám mắt', 'Điều trị bệnh võng mạc tiểu đường', 'https://example.com/qr172', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 172, 43, 5, 172);

-- User 44 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám xương khớp', 'Điều trị xương khớp ở người cao tuổi', 'https://example.com/qr173', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 173, 44, 5, 173),
('Khám răng hàm mặt', 'Điều trị răng sứ thẩm mỹ', 'https://example.com/qr174', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 174, 44, 5, 174),
('Khám sản phụ khoa', 'Điều trị vô sinh nữ', 'https://example.com/qr175', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 175, 44, 5, 175),
('Khám nhi khoa', 'Điều trị suy dinh dưỡng ở trẻ', 'https://example.com/qr176', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), true, 176, 44, 5, 176);

-- User 45 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám mạch máu', 'Điều trị bệnh động mạch ngoại biên', 'https://example.com/qr177', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), true, 177, 45, 5, 177),
('Khám dị ứng', 'Điều trị hen phế quản do dị ứng', 'https://example.com/qr178', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), true, 178, 45, 5, 178),
('Khám vật lý trị liệu', 'Phục hồi chức năng sau tai biến', 'https://example.com/qr179', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), true, 179, 45, 5, 179),
('Khám tâm lý', 'Điều trị rối loạn lo âu', 'https://example.com/qr180', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), true, 180, 45, 5, 180);

-- User 46 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám hô hấp', 'Điều trị giãn phế nang', 'https://example.com/qr181', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), true, 181, 46, 5, 181),
('Khám tim mạch', 'Điều trị bệnh van hai lá', 'https://example.com/qr182', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), true, 182, 46, 5, 182),
('Khám da liễu', 'Điều trị mụn trứng cá nặng', 'https://example.com/qr183', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), true, 183, 46, 5, 183),
('Khám nội tiết', 'Điều trị hội chứng buồng trứng đa nang', 'https://example.com/qr184', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), true, 184, 46, 5, 184);

-- User 47 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Điều trị ung thư đại tràng', 'https://example.com/qr185', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 185, 47, 5, 185),
('Khám thần kinh', 'Điều trị bệnh Huntington', 'https://example.com/qr186', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 186, 47, 5, 186),
('Khám tai mũi họng', 'Điều trị mất thính lực do tuổi tác', 'https://example.com/qr187', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 187, 47, 5, 187),
('Khám xương khớp', 'Điều trị viêm khớp dạng thấp', 'https://example.com/qr188', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 188, 47, 5, 188);

-- User 48 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám mắt', 'Điều trị bệnh viêm màng bồ đào', 'https://example.com/qr189', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 189, 48, 5, 189),
('Khám răng hàm mặt', 'Điều trị nha chu', 'https://example.com/qr190', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 190, 48, 5, 190),
('Khám sức khỏe tổng quát', 'Khám sức khỏe trước khi tham gia bảo hiểm', 'https://example.com/qr191', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 191, 48, 5, 191),
('Khám sản phụ khoa', 'Điều trị rối loạn kinh nguyệt', 'https://example.com/qr192', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 192, 48, 5, 192);

-- User 49 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám hô hấp', 'Điều trị sarcoidosis phổi', 'https://example.com/qr193', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 193, 49, 5, 193),
('Khám nhi khoa', 'Điều trị tự kỷ ở trẻ em', 'https://example.com/qr194', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 194, 49, 5, 194),
('Khám tim mạch', 'Điều trị phình động mạch chủ', 'https://example.com/qr195', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 195, 49, 5, 195),
('Khám da liễu', 'Điều trị bệnh da do virus', 'https://example.com/qr196', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), true, 196, 49, 5, 196);

-- User 50 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám nội tiết', 'Điều trị bệnh Basedow', 'https://example.com/qr197', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), true, 197, 50, 5, 197),
('Khám tiêu hóa', 'Điều trị ung thư dạ dày', 'https://example.com/qr198', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), true, 198, 50, 5, 198),
('Khám thần kinh', 'Điều trị động kinh kháng thuốc', 'https://example.com/qr199', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), true, 199, 50, 5, 199),
('Khám tai mũi họng', 'Điều trị viêm xoang mạn tính', 'https://example.com/qr200', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), true, 200, 50, 5, 200);

-- Khôi phục các chế độ an toàn
SET SQL_SAFE_UPDATES = 1;
SET FOREIGN_KEY_CHECKS = 1;

-- Kiểm tra xem còn trùng lặp không
SELECT name, favor, created_date, COUNT(*) as count
FROM medical_registry_list
GROUP BY name, favor, created_date
HAVING COUNT(*) > 1;

-- Thêm ràng buộc UNIQUE để ngăn chặn trùng lặp trong tương lai (tùy chọn)
-- ALTER TABLE medical_registry_list ADD UNIQUE INDEX idx_name_favor_date (name, favor, created_date);

-- Thông báo hoàn tất
SELECT 'Đã thêm 200 dữ liệu mới vào bảng medical_registry_list với các cặp (name, favor, created_date) đều là duy nhất' AS Result; 