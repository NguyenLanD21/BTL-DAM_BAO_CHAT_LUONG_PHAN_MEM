-- Script SQL để cập nhật cặp (name, favor) trong bảng medical_registry_list
-- Mục đích: Đảm bảo mỗi cặp (name, favor) là duy nhất để tránh lỗi khi tìm kiếm

-- 1. Tìm các cặp (name, favor) bị trùng lặp
CREATE TEMPORARY TABLE duplicate_entries AS
SELECT name, favor, COUNT(*) as count, GROUP_CONCAT(id ORDER BY id) as id_list
FROM medical_registry_list
GROUP BY name, favor
HAVING COUNT(*) > 1;

-- 2. In ra danh sách các bản ghi trùng lặp (để tham khảo)
SELECT * FROM duplicate_entries;

-- 3. Cập nhật các bản ghi trùng lặp
-- Lưu ý: Script này sẽ thêm số thứ tự vào cuối của trường favor

-- Tạo bảng tạm để lưu thông tin cập nhật
CREATE TEMPORARY TABLE entries_to_update AS
SELECT mrl.id, mrl.name, mrl.favor, 
       CONCAT(mrl.favor, ' - Phiên #', 
              FIND_IN_SET(mrl.id, de.id_list)) as new_favor
FROM medical_registry_list mrl
JOIN duplicate_entries de ON mrl.name = de.name AND mrl.favor = de.favor
-- Bỏ qua bản ghi đầu tiên trong mỗi nhóm trùng lặp (giữ nguyên bản gốc)
WHERE FIND_IN_SET(mrl.id, de.id_list) > 1;

-- In ra danh sách các bản ghi sẽ được cập nhật (để tham khảo)
SELECT * FROM entries_to_update;

-- Thực hiện cập nhật
UPDATE medical_registry_list mrl
JOIN entries_to_update etu ON mrl.id = etu.id
SET mrl.favor = etu.new_favor;

-- 4. Kiểm tra lại xem còn trùng lặp không
SELECT name, favor, COUNT(*) as count
FROM medical_registry_list
GROUP BY name, favor
HAVING COUNT(*) > 1;

-- 5. Dọn dẹp
DROP TEMPORARY TABLE IF EXISTS duplicate_entries;
DROP TEMPORARY TABLE IF EXISTS entries_to_update;

-- 6. Tạo chỉ mục duy nhất để ngăn chặn trùng lặp trong tương lai (tùy chọn)
-- ALTER TABLE medical_registry_list ADD UNIQUE INDEX idx_name_favor (name, favor);
-- Lưu ý: Bỏ comment dòng trên nếu bạn muốn đảm bảo không có trùng lặp trong tương lai

-- Hoàn tất
SELECT 'Hoàn tất cập nhật các bản ghi trùng lặp trong bảng medical_registry_list' AS Result; 