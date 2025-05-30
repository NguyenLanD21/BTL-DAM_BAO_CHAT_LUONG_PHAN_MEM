-- Script để thêm dữ liệu vào bảng paymentdetail và medical_registry_list
-- với các giá trị liên kết chính xác

-- Đầu tiên, tạo các biến tạm để lưu ID
SET @payment_id1 = NULL;
SET @payment_id2 = NULL;
SET @payment_id3 = NULL;
SET @payment_id4 = NULL;

-- Thêm bản ghi vào paymentdetail và lưu ID
INSERT INTO paymentdetail (amount, method, status, created_date) 
VALUES (500000, 'CASH', 'COMPLETED', DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY));
SET @payment_id1 = LAST_INSERT_ID();

INSERT INTO paymentdetail (amount, method, status, created_date) 
VALUES (750000, 'CASH', 'COMPLETED', DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY));
SET @payment_id2 = LAST_INSERT_ID();

INSERT INTO paymentdetail (amount, method, status, created_date) 
VALUES (450000, 'CASH', 'COMPLETED', DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY));
SET @payment_id3 = LAST_INSERT_ID();

INSERT INTO paymentdetail (amount, method, status, created_date) 
VALUES (600000, 'CASH', 'COMPLETED', DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY));
SET @payment_id4 = LAST_INSERT_ID();

-- Kiểm tra các ID vừa tạo
SELECT @payment_id1, @payment_id2, @payment_id3, @payment_id4;

-- Thêm dữ liệu vào medical_registry_list với các ID vừa tạo
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Nội soi đại tràng', 'https://example.com/qr105', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 105, 27, 5, @payment_id1),
('Khám tim mạch', 'Siêu âm tim và điện tâm đồ', 'https://example.com/qr106', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 106, 27, 5, @payment_id2),
('Khám tai mũi họng', 'Viêm xoang và viêm mũi dị ứng', 'https://example.com/qr107', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 107, 27, 5, @payment_id3),
('Khám nội tiết', 'Rối loạn nội tiết tố nữ', 'https://example.com/qr108', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 108, 27, 5, @payment_id4);

-- Kiểm tra dữ liệu đã thêm
SELECT * FROM medical_registry_list WHERE user_id = 27 ORDER BY id DESC LIMIT 4; 