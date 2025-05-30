-- Script để thêm dữ liệu từng bước một
-- Hãy bắt đầu bằng việc xem ID lớn nhất hiện tại trong bảng paymentdetail
SELECT MAX(id) AS max_payment_id FROM paymentdetail;

-- Bước 1: Thêm dữ liệu vào bảng paymentdetail
INSERT INTO paymentdetail (phase_type, amount, created_date, description, order_id, partner_code, result_code)
VALUES ('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_NEW1', 'VNPAY', '00');

-- Xem ID của bản ghi vừa thêm
SELECT * FROM paymentdetail WHERE order_id = 'ORDER_P1_NEW1';

-- Khi đã biết ID của bản ghi vừa thêm (giả sử là XXX), hãy thêm bản ghi tương ứng vào medical_registry_list
-- Thay thế XXX bằng ID thực tế từ kết quả truy vấn trên
-- INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
-- VALUES ('Khám tiêu hóa', 'Nội soi đại tràng', 'https://example.com/qr-new1', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 105, 27, 5, XXX);

-- Sau khi thực hiện thành công, hãy làm tương tự cho 3 bản ghi còn lại
-- Thêm bản ghi 2
INSERT INTO paymentdetail (phase_type, amount, created_date, description, order_id, partner_code, result_code)
VALUES ('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_NEW2', 'MOMO', '00');

-- Thêm bản ghi 3
INSERT INTO paymentdetail (phase_type, amount, created_date, description, order_id, partner_code, result_code)
VALUES ('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_NEW3', 'WALLET', '00');

-- Thêm bản ghi 4
INSERT INTO paymentdetail (phase_type, amount, created_date, description, order_id, partner_code, result_code)
VALUES ('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_NEW4', 'VNPAY', '00');

-- Kiểm tra tất cả ID vừa thêm
SELECT id, order_id FROM paymentdetail 
WHERE order_id IN ('ORDER_P1_NEW1', 'ORDER_P1_NEW2', 'ORDER_P1_NEW3', 'ORDER_P1_NEW4');

-- *** Quan trọng ***
-- Sau khi chạy đoạn script trên và có được các ID thực tế, 
-- hãy thay thế các XXX, YYY, ZZZ, TTT bên dưới bằng các ID đó
-- và chạy đoạn lệnh này riêng.

-- INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
-- VALUES
-- ('Khám tiêu hóa', 'Nội soi đại tràng', 'https://example.com/qr-new1', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 105, 27, 5, XXX),
-- ('Khám tim mạch', 'Siêu âm tim và điện tâm đồ', 'https://example.com/qr-new2', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 106, 27, 5, YYY),
-- ('Khám tai mũi họng', 'Viêm xoang và viêm mũi dị ứng', 'https://example.com/qr-new3', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 107, 27, 5, ZZZ),
-- ('Khám nội tiết', 'Rối loạn nội tiết tố nữ', 'https://example.com/qr-new4', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 108, 27, 5, TTT); 