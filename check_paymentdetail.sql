-- Kiểm tra cấu trúc bảng paymentdetail
DESCRIBE paymentdetail;

-- Xem 5 bản ghi đầu tiên để hiểu cấu trúc dữ liệu
SELECT * FROM paymentdetail LIMIT 5;

-- Kiểm tra ID lớn nhất hiện tại
SELECT MAX(id) FROM paymentdetail;

-- Xem các khóa ngoại liên quan
SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    CONSTRAINT_NAME, 
    REFERENCED_TABLE_NAME, 
    REFERENCED_COLUMN_NAME
FROM 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE 
    REFERENCED_TABLE_SCHEMA = 'privateclinicmanage' AND 
    REFERENCED_TABLE_NAME = 'paymentdetail'; 