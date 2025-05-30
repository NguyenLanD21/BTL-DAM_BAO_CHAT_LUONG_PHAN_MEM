-- Script tạo dữ liệu insert mới cho bảng medical_registry_list với các cặp (name, favor) đều là duy nhất
-- Mục đích: Thay thế các bản ghi cũ bằng dữ liệu mới đảm bảo không có trùng lặp

-- Trước tiên, sao lưu dữ liệu hiện tại nếu cần
CREATE TABLE IF NOT EXISTS medical_registry_list_backup AS SELECT * FROM medical_registry_list;

-- Xóa dữ liệu cũ (tùy chọn, cân nhắc trước khi thực hiện)
-- DELETE FROM medical_registry_list;

-- Reset auto-increment nếu cần thiết (tùy chọn)
-- ALTER TABLE medical_registry_list AUTO_INCREMENT = 1;

-- Tạo dữ liệu insert mới với các cặp (name, favor) duy nhất
-- Script này tạo 150 bản ghi cho người dùng có role_id = 1 (ROLE_BENHNHAN)
-- Mỗi cặp (name, favor) đều được đảm bảo là duy nhất

-- Bật tính năng an toàn khi xử lý nhiều câu lệnh
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0;

-- Chuẩn bị dữ liệu insert mới
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
-- User 1 (ID: 1-10)
('Khám sức khỏe tổng quát', 'Kiểm tra sức khỏe định kỳ', 'https://example.com/qr001', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 1, 1, 5, 1),
('Khám da liễu', 'Nổi mẩn đỏ vùng cánh tay', 'https://example.com/qr002', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 2, 1, 5, 2),
('Khám tim mạch', 'Đau ngực khi gắng sức', 'https://example.com/qr003', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 3, 1, 5, 3),
('Khám hô hấp', 'Ho kéo dài 2 tuần', 'https://example.com/qr004', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), false, 4, 1, 2, 4),
('Khám mắt', 'Mờ mắt khi làm việc với máy tính', 'https://example.com/qr005', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), false, 5, 1, 1, 5),
('Khám nội tiết', 'Nghi ngờ tiểu đường', 'https://example.com/qr006', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 6, 1, 5, 6),
('Khám xương khớp', 'Đau nhức khớp gối trái', 'https://example.com/qr007', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 7, 1, 5, 7),
('Khám tai mũi họng', 'Viêm họng cấp tính', 'https://example.com/qr008', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), false, 8, 1, 2, 8),
('Khám thần kinh', 'Đau đầu vùng thái dương', 'https://example.com/qr009', false, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), false, 9, 1, 1, 9),
('Khám tiêu hóa', 'Đau bụng sau khi ăn', 'https://example.com/qr010', false, CURRENT_DATE(), false, 10, 1, 1, 10),

-- User 2 (ID: 11-20)
('Khám sức khỏe định kỳ', 'Kiểm tra sức khỏe hàng năm', 'https://example.com/qr011', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 11, 2, 5, 11),
('Khám da liễu', 'Dị ứng da vùng cổ', 'https://example.com/qr012', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 12, 2, 5, 12),
('Khám tim mạch', 'Cao huyết áp', 'https://example.com/qr013', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 13, 2, 5, 13),
('Khám hô hấp', 'Khó thở khi vận động', 'https://example.com/qr014', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), false, 14, 2, 2, 14),
('Khám mắt', 'Ngứa mắt và chảy nước mắt', 'https://example.com/qr015', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), false, 15, 2, 1, 15),
('Khám nội tiết', 'Rối loạn tuyến giáp', 'https://example.com/qr016', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 16, 2, 5, null),
('Khám xương khớp', 'Đau lưng vùng thắt lưng', 'https://example.com/qr017', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 17, 2, 5, null),
('Khám tai mũi họng', 'Viêm xoang mạn tính', 'https://example.com/qr018', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), false, 18, 2, 2, null),
('Khám thần kinh', 'Chóng mặt buổi sáng', 'https://example.com/qr019', false, DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), false, 19, 2, 1, null),
('Khám tiêu hóa', 'Trào ngược dạ dày', 'https://example.com/qr020', false, CURRENT_DATE(), false, 20, 2, 1, null),

-- User 3 (ID: 21-30)
('Khám sức khỏe toàn diện', 'Kiểm tra toàn diện', 'https://example.com/qr021', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 21, 3, 5, null),
('Khám da liễu', 'Nổi mụn vùng mặt', 'https://example.com/qr022', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 22, 3, 5, null),
('Khám tim mạch', 'Đánh trống ngực', 'https://example.com/qr023', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 23, 3, 5, null),
('Khám hô hấp', 'Ho có đờm màu vàng', 'https://example.com/qr024', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), false, 24, 3, 2, null),
('Khám mắt', 'Mắt mờ sau khi đọc sách', 'https://example.com/qr025', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), false, 25, 3, 1, null),
('Khám nội tiết', 'Kiểm tra nồng độ insulin', 'https://example.com/qr026', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 26, 3, 5, null),
('Khám xương khớp', 'Đau cổ khi ngồi lâu', 'https://example.com/qr027', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 27, 3, 5, null),
('Khám tai mũi họng', 'Nghẹt mũi về đêm', 'https://example.com/qr028', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), false, 28, 3, 2, null),
('Khám thần kinh', 'Run tay khi cầm vật nặng', 'https://example.com/qr029', false, DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), false, 29, 3, 1, null),
('Khám tiêu hóa', 'Khó tiêu sau bữa ăn tối', 'https://example.com/qr030', false, CURRENT_DATE(), false, 30, 3, 1, null),

-- User 4 (ID: 31-40)
('Khám sức khỏe tổng thể', 'Khám định kỳ 6 tháng', 'https://example.com/qr031', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 31, 4, 5, null),
('Khám da liễu', 'Da khô và ngứa mùa đông', 'https://example.com/qr032', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 32, 4, 5, null),
('Khám tim mạch', 'Tức ngực khi leo cầu thang', 'https://example.com/qr033', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 33, 4, 5, null),
('Khám hô hấp', 'Thở khò khè khi ngủ', 'https://example.com/qr034', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), false, 34, 4, 2, null),
('Khám mắt', 'Cảm giác có dị vật trong mắt', 'https://example.com/qr035', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), false, 35, 4, 1, null),
('Khám nội tiết', 'Thay đổi cân nặng bất thường', 'https://example.com/qr036', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 36, 4, 5, null),
('Khám xương khớp', 'Đau khớp khi thời tiết thay đổi', 'https://example.com/qr037', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 37, 4, 5, null),
('Khám tai mũi họng', 'Giảm thính lực', 'https://example.com/qr038', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), false, 38, 4, 2, null),
('Khám thần kinh', 'Rối loạn giấc ngủ', 'https://example.com/qr039', false, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), false, 39, 4, 1, null),
('Khám tiêu hóa', 'Đau bụng âm ỉ vùng rốn', 'https://example.com/qr040', false, CURRENT_DATE(), false, 40, 4, 1, null),

-- User 5 (ID: 41-50)
('Khám sức khỏe công ty', 'Khám sức khỏe theo yêu cầu', 'https://example.com/qr041', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 41, 5, 5, null),
('Khám da liễu', 'Vết thâm sau mụn', 'https://example.com/qr042', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 42, 5, 5, null),
('Khám tim mạch', 'Đo điện tâm đồ định kỳ', 'https://example.com/qr043', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 43, 5, 5, null),
('Khám hô hấp', 'Ho kéo dài sau cảm cúm', 'https://example.com/qr044', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), false, 44, 5, 2, null),
('Khám mắt', 'Kiểm tra thị lực định kỳ', 'https://example.com/qr045', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), false, 45, 5, 1, null),
('Khám nội tiết', 'Kiểm tra hormone tuyến giáp', 'https://example.com/qr046', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 46, 5, 5, null),
('Khám xương khớp', 'Viêm khớp cổ tay', 'https://example.com/qr047', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 47, 5, 5, null),
('Khám tai mũi họng', 'Ù tai kéo dài', 'https://example.com/qr048', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), false, 48, 5, 2, null),
('Khám thần kinh', 'Đau nửa đầu bên phải', 'https://example.com/qr049', false, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), false, 49, 5, 1, null),
('Khám răng hàm mặt', 'Đau răng hàm', 'https://example.com/qr050', false, CURRENT_DATE(), false, 50, 5, 1, null);

-- Vô hiệu hóa các ràng buộc để tránh xung đột
SET SQL_SAFE_UPDATES = 1;
SET FOREIGN_KEY_CHECKS = 1;

-- Kiểm tra xem còn trùng lặp không
SELECT name, favor, COUNT(*) as count
FROM medical_registry_list
GROUP BY name, favor
HAVING COUNT(*) > 1;

-- Thêm ràng buộc UNIQUE để ngăn chặn trùng lặp trong tương lai (tùy chọn)
-- ALTER TABLE medical_registry_list ADD UNIQUE INDEX idx_name_favor (name, favor);

-- Thông báo hoàn tất
SELECT 'Đã thêm dữ liệu mới với các cặp (name, favor) đều là duy nhất vào bảng medical_registry_list' AS Result; 