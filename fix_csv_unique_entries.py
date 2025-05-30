#!/usr/bin/env python
# -*- coding: utf-8 -*-

import pandas as pd
import os

# Đường dẫn tới file CSV gốc (thay đổi nếu cần)
input_file = 'data.csv'
output_file = 'data_fixed.csv'

# Đọc file CSV
print(f"Đang đọc file {input_file}...")
df = pd.read_csv(input_file)

# Hiển thị thông tin ban đầu
print(f"Tổng số bản ghi trước khi xử lý: {len(df)}")
print(f"Số lượng cặp (name, favor) duy nhất trước khi xử lý: {len(df.groupby(['name', 'favor']))}")

# Tìm các cặp (name, favor) trùng lặp
duplicates = df.groupby(['name', 'favor']).size().reset_index(name='count')
duplicates = duplicates[duplicates['count'] > 1]

print(f"Số lượng cặp (name, favor) bị trùng lặp: {len(duplicates)}")
print(f"Tổng số bản ghi cần xử lý: {duplicates['count'].sum()}")

if len(duplicates) > 0:
    # Với mỗi cặp trùng lặp
    for idx, row in duplicates.iterrows():
        name, favor, count = row['name'], row['favor'], row['count']
        
        # Lấy các index của các bản ghi trùng lặp
        indices = df[(df['name'] == name) & (df['favor'] == favor)].index.tolist()
        
        # Cập nhật favor bằng cách thêm số thứ tự (bắt đầu từ bản ghi thứ 2)
        for i, index in enumerate(indices[1:], start=2):
            df.at[index, 'favor'] = f"{favor} - Phiên #{i}"
        
        print(f"Đã cập nhật {count-1} bản ghi cho cặp ({name}, {favor})")

    # Hiển thị thông tin sau khi xử lý
    print(f"Số lượng cặp (name, favor) duy nhất sau khi xử lý: {len(df.groupby(['name', 'favor']))}")
    
    # Lưu dữ liệu đã được cập nhật
    df.to_csv(output_file, index=False, encoding='utf-8')
    print(f"Đã lưu file đã cập nhật tại {output_file}")
else:
    print("Không có cặp (name, favor) nào bị trùng lặp.")

print("Hoàn tất!") 