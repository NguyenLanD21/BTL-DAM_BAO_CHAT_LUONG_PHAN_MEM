-- Script chèn 200 người dùng với role=1 vào database
-- Set foreign key checks = 0 nếu cần thiết
-- SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO user (username, email, password, full_name, address, phone, sex, active, role_id)
VALUES
-- User 1-20
('user001', 'user001@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A001', 'Hà Nội', '0900000001', 1, 1, 1),
('user002', 'user002@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A002', 'Hà Nội', '0900000002', 1, 1, 1),
('user003', 'user003@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A003', 'Hà Nội', '0900000003', 1, 1, 1),
('user004', 'user004@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A004', 'Hà Nội', '0900000004', 1, 1, 1),
('user005', 'user005@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A005', 'Hà Nội', '0900000005', 1, 1, 1),
('user006', 'user006@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A006', 'Hà Nội', '0900000006', 1, 1, 1),
('user007', 'user007@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A007', 'Hà Nội', '0900000007', 1, 1, 1),
('user008', 'user008@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A008', 'Hà Nội', '0900000008', 1, 1, 1),
('user009', 'user009@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A009', 'Hà Nội', '0900000009', 1, 1, 1),
('user010', 'user010@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A010', 'Hà Nội', '0900000010', 1, 1, 1),
('user011', 'user011@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A011', 'Hà Nội', '0900000011', 1, 1, 1),
('user012', 'user012@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A012', 'Hà Nội', '0900000012', 1, 1, 1),
('user013', 'user013@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A013', 'Hà Nội', '0900000013', 1, 1, 1),
('user014', 'user014@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A014', 'Hà Nội', '0900000014', 1, 1, 1),
('user015', 'user015@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A015', 'Hà Nội', '0900000015', 1, 1, 1),
('user016', 'user016@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A016', 'Hà Nội', '0900000016', 1, 1, 1),
('user017', 'user017@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A017', 'Hà Nội', '0900000017', 1, 1, 1),
('user018', 'user018@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A018', 'Hà Nội', '0900000018', 1, 1, 1),
('user019', 'user019@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A019', 'Hà Nội', '0900000019', 1, 1, 1),
('user020', 'user020@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A020', 'Hà Nội', '0900000020', 1, 1, 1),

-- User 21-40
('user021', 'user021@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A021', 'Hà Nội', '0900000021', 1, 1, 1),
('user022', 'user022@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A022', 'Hà Nội', '0900000022', 1, 1, 1),
('user023', 'user023@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A023', 'Hà Nội', '0900000023', 1, 1, 1),
('user024', 'user024@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A024', 'Hà Nội', '0900000024', 1, 1, 1),
('user025', 'user025@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A025', 'Hà Nội', '0900000025', 1, 1, 1),
('user026', 'user026@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A026', 'Hà Nội', '0900000026', 1, 1, 1),
('user027', 'user027@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A027', 'Hà Nội', '0900000027', 1, 1, 1),
('user028', 'user028@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A028', 'Hà Nội', '0900000028', 1, 1, 1),
('user029', 'user029@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A029', 'Hà Nội', '0900000029', 1, 1, 1),
('user030', 'user030@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A030', 'Hà Nội', '0900000030', 1, 1, 1),
('user031', 'user031@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A031', 'Hà Nội', '0900000031', 1, 1, 1),
('user032', 'user032@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A032', 'Hà Nội', '0900000032', 1, 1, 1),
('user033', 'user033@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A033', 'Hà Nội', '0900000033', 1, 1, 1),
('user034', 'user034@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A034', 'Hà Nội', '0900000034', 1, 1, 1),
('user035', 'user035@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A035', 'Hà Nội', '0900000035', 1, 1, 1),
('user036', 'user036@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A036', 'Hà Nội', '0900000036', 1, 1, 1),
('user037', 'user037@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A037', 'Hà Nội', '0900000037', 1, 1, 1),
('user038', 'user038@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A038', 'Hà Nội', '0900000038', 1, 1, 1),
('user039', 'user039@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A039', 'Hà Nội', '0900000039', 1, 1, 1),
('user040', 'user040@example.com', '$2a$10$1/dOCGCEO5Ig1s3qcTIkT.DYvxl1rz6I/PxzK9MsXkjVSVuT.WIm2', 'Nguyễn Văn A040', 'Hà Nội', '0900000040', 1, 1, 1); 