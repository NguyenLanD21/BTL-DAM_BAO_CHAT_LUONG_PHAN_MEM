-- Script SQL để insert 200 bản ghi vào bảng medical_registry_list
-- Đảm bảo mỗi cặp (name, favor, created_date) là duy nhất
-- Mỗi user chỉ có tối đa 4 bản ghi
-- Chỉ áp dụng cho người dùng có role = 1

-- Trước tiên, sao lưu dữ liệu hiện tại nếu cần
CREATE TABLE IF NOT EXISTS medical_registry_list_backup AS SELECT * FROM medical_registry_list;

-- Đặt chế độ an toàn
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0;

-- Xóa dữ liệu cũ (tùy chọn, cân nhắc trước khi thực hiện)
-- DELETE FROM medical_registry_list;

-- Reset auto-increment nếu cần
-- ALTER TABLE medical_registry_list AUTO_INCREMENT = 1;

-- Bước 1: Lấy danh sách các user có role = 1
-- Giả sử chúng ta đã biết ID của các user có role = 1 hoặc có thể lấy bằng truy vấn:
-- SELECT u.id FROM user u JOIN user_role ur ON u.id = ur.user_id WHERE ur.role_id = 1;

-- Bước 2: Chuẩn bị insert dữ liệu
-- Chúng ta sẽ tạo 200 bản ghi phân bố cho các user có role = 1
-- Giả sử có 50 user, mỗi user có 4 bản ghi => 200 bản ghi

-- Danh sách các loại khám phổ biến
INSERT INTO medical_registry_list (name, favor, ql_url, is_canceled, created_date, is_voucher_taken, schedule_id, user_id, status_is_approved_id, payment_phase1_id)
VALUES
-- User 1-50 (4 bản ghi mỗi user, tổng 200 bản ghi)

-- User 1 (4 bản ghi)
('Khám sức khỏe tổng quát', 'Kiểm tra sức khỏe định kỳ', 'https://example.com/qr001', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 1, 1, 5, 1),
('Khám da liễu', 'Nổi mẩn đỏ vùng cánh tay', 'https://example.com/qr002', false, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), true, 2, 1, 5, 2),
('Khám tim mạch', 'Đau ngực khi gắng sức', 'https://example.com/qr003', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 3, 1, 5, 3),
('Khám hô hấp', 'Ho kéo dài 2 tuần', 'https://example.com/qr004', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 4, 1, 5, 4),

-- User 2 (4 bản ghi)
('Khám mắt', 'Mờ mắt khi làm việc với máy tính', 'https://example.com/qr005', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 5, 2, 5, 5),
('Khám nội tiết', 'Nghi ngờ tiểu đường', 'https://example.com/qr006', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 6, 2, 5, 6),
('Khám xương khớp', 'Đau nhức khớp gối trái', 'https://example.com/qr007', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 7, 2, 5, 7),
('Khám tai mũi họng', 'Viêm họng cấp tính', 'https://example.com/qr008', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 8, 2, 5, 8),

-- User 3 (4 bản ghi)
('Khám thần kinh', 'Đau đầu vùng thái dương', 'https://example.com/qr009', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 9, 3, 5, 9),
('Khám tiêu hóa', 'Đau bụng sau khi ăn', 'https://example.com/qr010', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 10, 3, 5, 10),
('Khám sức khỏe định kỳ', 'Kiểm tra sức khỏe hàng năm', 'https://example.com/qr011', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 11, 3, 5, 11),
('Khám da liễu', 'Dị ứng da vùng cổ', 'https://example.com/qr012', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 12, 3, 5, 12),

-- User 4 (4 bản ghi)
('Khám tim mạch', 'Cao huyết áp', 'https://example.com/qr013', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 13, 4, 5, 13),
('Khám hô hấp', 'Khó thở khi vận động', 'https://example.com/qr014', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 14, 4, 5, 14),
('Khám mắt', 'Ngứa mắt và chảy nước mắt', 'https://example.com/qr015', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 15, 4, 5, 15),
('Khám nội tiết', 'Rối loạn tuyến giáp', 'https://example.com/qr016', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), true, 16, 4, 5, 16),

-- User 5 (4 bản ghi)
('Khám xương khớp', 'Đau lưng vùng thắt lưng', 'https://example.com/qr017', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), true, 17, 5, 5, 17),
('Khám tai mũi họng', 'Viêm xoang mạn tính', 'https://example.com/qr018', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), true, 18, 5, 5, 18),
('Khám thần kinh', 'Chóng mặt buổi sáng', 'https://example.com/qr019', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), true, 19, 5, 5, 19),
('Khám tiêu hóa', 'Trào ngược dạ dày', 'https://example.com/qr020', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), true, 20, 5, 5, 20),

-- User 6 (4 bản ghi)
('Khám sức khỏe toàn diện', 'Kiểm tra toàn diện', 'https://example.com/qr021', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), true, 21, 6, 5, 21),
('Khám da liễu', 'Nổi mụn vùng mặt', 'https://example.com/qr022', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), true, 22, 6, 5, 22),
('Khám tim mạch', 'Đánh trống ngực', 'https://example.com/qr023', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), true, 23, 6, 5, 23),
('Khám hô hấp', 'Ho có đờm màu vàng', 'https://example.com/qr024', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), true, 24, 6, 5, 24),

-- User 7 (4 bản ghi)
('Khám mắt', 'Mắt mờ sau khi đọc sách', 'https://example.com/qr025', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 25, 7, 5, 25),
('Khám nội tiết', 'Kiểm tra nồng độ insulin', 'https://example.com/qr026', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 26, 7, 5, 26),
('Khám xương khớp', 'Đau cổ khi ngồi lâu', 'https://example.com/qr027', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 27, 7, 5, 27),
('Khám tai mũi họng', 'Nghẹt mũi về đêm', 'https://example.com/qr028', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 28, 7, 5, 28),

-- User 8 (4 bản ghi)
('Khám thần kinh', 'Run tay khi cầm vật nặng', 'https://example.com/qr029', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 29, 8, 5, 29),
('Khám tiêu hóa', 'Khó tiêu sau bữa ăn tối', 'https://example.com/qr030', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 30, 8, 5, 30),
('Khám sức khỏe tổng thể', 'Khám định kỳ 6 tháng', 'https://example.com/qr031', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 31, 8, 5, 31),
('Khám da liễu', 'Da khô và ngứa mùa đông', 'https://example.com/qr032', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 32, 8, 5, 32),

-- User 9 (4 bản ghi)
('Khám tim mạch', 'Tức ngực khi leo cầu thang', 'https://example.com/qr033', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 33, 9, 5, 33),
('Khám hô hấp', 'Thở khò khè khi ngủ', 'https://example.com/qr034', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 34, 9, 5, 34),
('Khám mắt', 'Cảm giác có dị vật trong mắt', 'https://example.com/qr035', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 35, 9, 5, 35),
('Khám nội tiết', 'Thay đổi cân nặng bất thường', 'https://example.com/qr036', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), true, 36, 9, 5, 36),

-- User 10 (4 bản ghi)
('Khám xương khớp', 'Đau khớp khi thời tiết thay đổi', 'https://example.com/qr037', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), true, 37, 10, 5, 37),
('Khám tai mũi họng', 'Giảm thính lực', 'https://example.com/qr038', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), true, 38, 10, 5, 38),
('Khám thần kinh', 'Rối loạn giấc ngủ', 'https://example.com/qr039', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), true, 39, 10, 5, 39),
('Khám tiêu hóa', 'Đau bụng âm ỉ vùng rốn', 'https://example.com/qr040', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), true, 40, 10, 5, 40),

-- User 11 (4 bản ghi)
('Khám sức khỏe công ty', 'Khám sức khỏe theo yêu cầu', 'https://example.com/qr041', false, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), true, 41, 11, 5, 41),
('Khám da liễu', 'Vết thâm sau mụn', 'https://example.com/qr042', false, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), true, 42, 11, 5, 42),
('Khám tim mạch', 'Đo điện tâm đồ định kỳ', 'https://example.com/qr043', false, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), true, 43, 11, 5, 43),
('Khám hô hấp', 'Ho kéo dài sau cảm cúm', 'https://example.com/qr044', false, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), true, 44, 11, 5, 44),

-- User 12 (4 bản ghi)
('Khám mắt', 'Kiểm tra thị lực định kỳ', 'https://example.com/qr045', false, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), true, 45, 12, 5, 45),
('Khám nội tiết', 'Kiểm tra hormone tuyến giáp', 'https://example.com/qr046', false, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), true, 46, 12, 5, 46),
('Khám xương khớp', 'Viêm khớp cổ tay', 'https://example.com/qr047', false, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), true, 47, 12, 5, 47),
('Khám tai mũi họng', 'Ù tai kéo dài', 'https://example.com/qr048', false, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), true, 48, 12, 5, 48),

-- User 13 (4 bản ghi)
('Khám thần kinh', 'Đau nửa đầu bên phải', 'https://example.com/qr049', false, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), true, 49, 13, 5, 49),
('Khám răng hàm mặt', 'Đau răng hàm', 'https://example.com/qr050', false, DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), true, 50, 13, 5, 50),
('Khám tim mạch', 'Bệnh van tim', 'https://example.com/qr051', false, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), true, 51, 13, 5, 51),
('Khám da liễu', 'Vẩy nến', 'https://example.com/qr052', false, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), true, 52, 13, 5, 52),

-- User 14 (4 bản ghi)
('Khám hô hấp', 'Hen phế quản', 'https://example.com/qr053', false, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), true, 53, 14, 5, 53),
('Khám nội tiết', 'Cường giáp', 'https://example.com/qr054', false, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), true, 54, 14, 5, 54),
('Khám tai mũi họng', 'Rối loạn tiền đình', 'https://example.com/qr055', false, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), true, 55, 14, 5, 55),
('Khám mắt', 'Tăng nhãn áp', 'https://example.com/qr056', false, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), true, 56, 14, 5, 56),

-- User 15 (4 bản ghi)
('Khám răng hàm mặt', 'Mất răng', 'https://example.com/qr057', false, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), true, 57, 15, 5, 57),
('Khám thần kinh', 'Run tay', 'https://example.com/qr058', false, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), true, 58, 15, 5, 58),
('Khám xương khớp', 'Viêm khớp dạng thấp', 'https://example.com/qr059', false, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), true, 59, 15, 5, 59),
('Khám tiêu hóa', 'Hội chứng ruột kích thích', 'https://example.com/qr060', false, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), true, 60, 15, 5, 60),

-- User 16 (4 bản ghi)
('Khám da liễu', 'Mụn trứng cá nặng', 'https://example.com/qr061', false, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), true, 61, 16, 5, 61),
('Khám nhi khoa', 'Chậm phát triển', 'https://example.com/qr062', false, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), true, 62, 16, 5, 62),
('Khám hô hấp', 'Khó thở khi gắng sức', 'https://example.com/qr063', false, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), true, 63, 16, 5, 63),
('Khám tim mạch', 'Bệnh động mạch vành', 'https://example.com/qr064', false, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), true, 64, 16, 5, 64),

-- User 17 (4 bản ghi)
('Khám nội tiết', 'Tiểu đường tuýp 2', 'https://example.com/qr065', false, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), true, 65, 17, 5, 65),
('Khám thần kinh', 'Parkinson', 'https://example.com/qr066', false, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), true, 66, 17, 5, 66),
('Khám tai mũi họng', 'Mất thính lực', 'https://example.com/qr067', false, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), true, 67, 17, 5, 67),
('Khám mắt', 'Đục thủy tinh thể', 'https://example.com/qr068', false, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), true, 68, 17, 5, 68),

-- User 18 (4 bản ghi)
('Khám xương khớp', 'Gout', 'https://example.com/qr069', false, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), true, 69, 18, 5, 69),
('Khám tiêu hóa', 'Polyp đại tràng', 'https://example.com/qr070', false, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), true, 70, 18, 5, 70),
('Khám da liễu', 'Eczema', 'https://example.com/qr071', false, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), true, 71, 18, 5, 71),
('Khám hô hấp', 'COPD', 'https://example.com/qr072', false, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), true, 72, 18, 5, 72),

-- User 19 (4 bản ghi)
('Khám tim mạch', 'Suy tim', 'https://example.com/qr073', false, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), true, 73, 19, 5, 73),
('Khám thần kinh', 'Đau dây thần kinh tọa', 'https://example.com/qr074', false, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), true, 74, 19, 5, 74),
('Khám mắt', 'Bệnh võng mạc', 'https://example.com/qr075', false, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), true, 75, 19, 5, 75),
('Khám xương khớp', 'Loãng xương', 'https://example.com/qr076', false, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), true, 76, 19, 5, 76),

-- User 20 (4 bản ghi)
('Khám tai mũi họng', 'Viêm xoang mạn tính', 'https://example.com/qr077', false, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), true, 77, 20, 5, 77),
('Khám nội tiết', 'Hạ đường huyết', 'https://example.com/qr078', false, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), true, 78, 20, 5, 78),
('Khám tiêu hóa', 'Viêm tụy', 'https://example.com/qr079', false, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), true, 79, 20, 5, 79),
('Khám da liễu', 'Viêm da tiếp xúc', 'https://example.com/qr080', false, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), true, 80, 20, 5, 80),

-- Tiếp tục với các user từ 21-50, với mỗi user có 4 bản ghi 