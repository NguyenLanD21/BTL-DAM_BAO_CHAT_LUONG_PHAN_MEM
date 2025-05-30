-- Phần 2: Tiếp tục insert từ user 21-50
-- Đây là phần tiếp theo của script insert_medical_registry_list_200.sql

-- User 21 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám sức khỏe định kỳ', 'Khám sức khỏe hàng quý', 'https://example.com/qr081', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 81, 21, 5, 81),
('Khám răng định kỳ', 'Khám và vệ sinh răng', 'https://example.com/qr082', false, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), true, 82, 21, 5, 82),
('Khám mắt định kỳ', 'Đo thị lực và khám mắt', 'https://example.com/qr083', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 83, 21, 5, 83),
('Khám tim mạch', 'Kiểm tra tim và huyết áp', 'https://example.com/qr084', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 84, 21, 5, 84);

-- User 22 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám nội tiết', 'Kiểm tra chức năng tuyến giáp', 'https://example.com/qr085', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 85, 22, 5, 85),
('Khám da liễu', 'Điều trị mụn trứng cá', 'https://example.com/qr086', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 86, 22, 5, 86),
('Khám tiêu hóa', 'Đau dạ dày và khó tiêu', 'https://example.com/qr087', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 87, 22, 5, 87),
('Khám xương khớp', 'Đau nhức vai gáy', 'https://example.com/qr088', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 88, 22, 5, 88);

-- User 23 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám hô hấp', 'Đánh giá chức năng phổi', 'https://example.com/qr089', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 89, 23, 5, 89),
('Khám tai mũi họng', 'Chữa viêm họng mạn tính', 'https://example.com/qr090', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 90, 23, 5, 90),
('Khám thần kinh', 'Đau đầu và chóng mặt', 'https://example.com/qr091', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 91, 23, 5, 91),
('Khám sản phụ khoa', 'Khám phụ khoa định kỳ', 'https://example.com/qr092', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 92, 23, 5, 92);

-- User 24 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tim mạch', 'Theo dõi bệnh tim', 'https://example.com/qr093', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 93, 24, 5, 93),
('Khám nhi khoa', 'Theo dõi phát triển', 'https://example.com/qr094', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 94, 24, 5, 94),
('Khám dinh dưỡng', 'Tư vấn chế độ ăn', 'https://example.com/qr095', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 95, 24, 5, 95),
('Khám nam khoa', 'Khám sức khỏe nam giới', 'https://example.com/qr096', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), true, 96, 24, 5, 96);

-- User 25 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám vật lý trị liệu', 'Điều trị đau cổ vai gáy', 'https://example.com/qr097', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), true, 97, 25, 5, 97),
('Khám tâm lý', 'Tư vấn sức khỏe tâm thần', 'https://example.com/qr098', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), true, 98, 25, 5, 98),
('Khám dị ứng', 'Xác định nguyên nhân dị ứng', 'https://example.com/qr099', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), true, 99, 25, 5, 99),
('Khám mạch máu', 'Siêu âm Doppler mạch', 'https://example.com/qr100', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), true, 100, 25, 5, 100);

-- User 26 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám sức khỏe tổng quát', 'Khám sức khỏe trước khi đi nước ngoài', 'https://example.com/qr101', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), true, 101, 26, 5, 101),
('Khám nhãn khoa', 'Đo thị lực và nhãn áp', 'https://example.com/qr102', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), true, 102, 26, 5, 102),
('Khám da liễu', 'Chứng da khô và bong tróc', 'https://example.com/qr103', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), true, 103, 26, 5, 103),
('Khám hô hấp', 'Hen phế quản và viêm phổi', 'https://example.com/qr104', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), true, 104, 26, 5, 104);

-- User 27 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Nội soi đại tràng', 'https://example.com/qr105', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 105, 27, 5, 105),
('Khám tim mạch', 'Siêu âm tim và điện tâm đồ', 'https://example.com/qr106', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 106, 27, 5, 106),
('Khám tai mũi họng', 'Viêm xoang và viêm mũi dị ứng', 'https://example.com/qr107', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 107, 27, 5, 107),
('Khám nội tiết', 'Rối loạn nội tiết tố nữ', 'https://example.com/qr108', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 108, 27, 5, 108);

-- User 28 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám thần kinh', 'Điều trị động kinh', 'https://example.com/qr109', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 109, 28, 5, 109),
('Khám mắt', 'Viêm kết mạc và đau mắt đỏ', 'https://example.com/qr110', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 110, 28, 5, 110),
('Khám răng hàm mặt', 'Nhổ răng khôn mọc lệch', 'https://example.com/qr111', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 111, 28, 5, 111),
('Khám xương khớp', 'Đau cột sống thắt lưng', 'https://example.com/qr112', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 112, 28, 5, 112);

-- User 29 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám sản phụ khoa', 'Siêu âm thai kỳ', 'https://example.com/qr113', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 113, 29, 5, 113),
('Khám nhi khoa', 'Tư vấn tiêm chủng cho trẻ', 'https://example.com/qr114', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 114, 29, 5, 114),
('Khám hô hấp', 'Ho kéo dài sau COVID-19', 'https://example.com/qr115', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 115, 29, 5, 115),
('Khám da liễu', 'Mề đay mạn tính', 'https://example.com/qr116', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), true, 116, 29, 5, 116);

-- User 30 (4 bản ghi)
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tim mạch', 'Điều trị rối loạn nhịp tim', 'https://example.com/qr117', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), true, 117, 30, 5, 117),
('Khám tiêu hóa', 'Nội soi dạ dày', 'https://example.com/qr118', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), true, 118, 30, 5, 118),
('Khám tai mũi họng', 'Chữa viêm amidan mạn', 'https://example.com/qr119', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), true, 119, 30, 5, 119),
('Khám thần kinh', 'Đau nửa đầu migraine', 'https://example.com/qr120', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), true, 120, 30, 5, 120);

-- User 31-50 được thêm tương tự 