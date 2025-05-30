-- Script để thêm dữ liệu vào bảng paymentdetail từ ID hiện tại đến 200
-- Đầu tiên, kiểm tra ID lớn nhất hiện có
SELECT MAX(id) AS max_id FROM paymentdetail;

-- Tắt kiểm tra khóa ngoại để dễ thao tác
SET FOREIGN_KEY_CHECKS = 0;

-- Khi biết ID lớn nhất hiện tại (giả sử là X), bạn cần thêm các bản ghi từ X+1 đến 200
-- THAY ĐỔI giá trị auto_increment hiện tại (nếu cần)
-- ALTER TABLE paymentdetail AUTO_INCREMENT = X+1;

-- Thêm dữ liệu vào bảng paymentdetail
-- Đoạn này sẽ thêm dữ liệu từ bản ghi 1 đến 200
-- Bạn nên điều chỉnh id_start và id_end dựa trên kết quả MAX(id) ở trên

DELIMITER //
DROP PROCEDURE IF EXISTS insert_payment_records //
CREATE PROCEDURE insert_payment_records(IN id_start INT, IN id_end INT)
BEGIN
    DECLARE i INT DEFAULT id_start;
    WHILE i <= id_end DO
        -- Định dạng số thứ tự với leading zeros
        SET @order_num = LPAD(i, 3, '0');
        
        -- Tính created_date động (để các bản ghi có ngày khác nhau)
        SET @days_ago = (i % 60) + 1; -- Sẽ tạo ra khoảng thời gian 60 ngày
        
        -- Xoay vòng các giá trị partner_code
        SET @partner_code = CASE i % 3
            WHEN 0 THEN 'VNPAY'
            WHEN 1 THEN 'MOMO'
            WHEN 2 THEN 'WALLET'
        END;
        
        -- Nếu bản ghi không tồn tại, thêm mới
        INSERT IGNORE INTO paymentdetail 
            (id, phase_type, amount, created_date, description, order_id, partner_code, result_code)
        VALUES 
            (i, 'PHASE1', 100000, DATE_SUB(CURRENT_DATE(), INTERVAL @days_ago DAY), 
             'Thanh toán đăng ký khám bệnh', CONCAT('ORDER_P1_', @order_num), @partner_code, '00');
        
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

-- Gọi thủ tục
-- Thay thế 1 và 200 bằng id_start và id_end thích hợp
CALL insert_payment_records(1, 200);

-- Kiểm tra dữ liệu đã thêm
SELECT COUNT(*) AS total_records FROM paymentdetail;
SELECT MIN(id) AS min_id, MAX(id) AS max_id FROM paymentdetail;

-- Bật lại kiểm tra khóa ngoại
SET FOREIGN_KEY_CHECKS = 1;

-- Nếu cần kiểm tra một số bản ghi cụ thể
SELECT * FROM paymentdetail LIMIT 10;
SELECT * FROM paymentdetail ORDER BY id DESC LIMIT 10; 