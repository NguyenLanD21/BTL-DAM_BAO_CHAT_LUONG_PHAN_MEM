-- Script để thêm dữ liệu vào bảng paymentdetail và medical_registry_list
-- Bước 1: Thêm dữ liệu vào bảng paymentdetail
INSERT INTO paymentdetail (phase_type, amount, created_date, description, order_id, partner_code, result_code)
VALUES
('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_105', 'VNPAY', '00'),
('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_106', 'MOMO', '00'),
('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_107', 'WALLET', '00'),
('PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), 'Thanh toán đăng ký khám bệnh', 'ORDER_P1_108', 'VNPAY', '00');

-- Lấy ID của các bản ghi vừa thêm
SET @payment_id1 = (SELECT id FROM paymentdetail WHERE order_id = 'ORDER_P1_105');
SET @payment_id2 = (SELECT id FROM paymentdetail WHERE order_id = 'ORDER_P1_106');
SET @payment_id3 = (SELECT id FROM paymentdetail WHERE order_id = 'ORDER_P1_107');
SET @payment_id4 = (SELECT id FROM paymentdetail WHERE order_id = 'ORDER_P1_108');

-- Hiển thị ID để kiểm tra
SELECT @payment_id1, @payment_id2, @payment_id3, @payment_id4;

-- Bước 2: Thêm dữ liệu vào bảng medical_registry_list sử dụng các ID vừa lấy được
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
('Khám tiêu hóa', 'Nội soi đại tràng', 'https://example.com/qr105', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 105, 27, 5, @payment_id1),
('Khám tim mạch', 'Siêu âm tim và điện tâm đồ', 'https://example.com/qr106', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 106, 27, 5, @payment_id2),
('Khám tai mũi họng', 'Viêm xoang và viêm mũi dị ứng', 'https://example.com/qr107', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 107, 27, 5, @payment_id3),
('Khám nội tiết', 'Rối loạn nội tiết tố nữ', 'https://example.com/qr108', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 108, 27, 5, @payment_id4);

-- Kiểm tra dữ liệu đã thêm
SELECT ml.*, pd.order_id, pd.phase_type, pd.amount
FROM medical_registry_list ml
JOIN paymentdetail pd ON ml.payment_phase1_id = pd.id
WHERE ml.user_id = 27
ORDER BY ml.id DESC
LIMIT 4; 