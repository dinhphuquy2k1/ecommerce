SET CHARSET UTF8;

-- Loại bảo hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1, 'Bảo hành của nhà cung cấp', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2, 'Bảo hành của nhà sản xuất', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3, 'Bảo hành quốc tế', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4, 'Không bảo hành', 2, now(), now());
-- Thương hiệu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(100, 'ASUS', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(101, 'Google', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(102, 'HTC', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(103, 'LG', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(104, 'Nokia', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(105, 'OPPO', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(106, 'Samsung', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(107, 'Sắc nhọn', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(108, 'Sony', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(109, 'Đường', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(110, 'Vivo', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(111, 'Xiaomi', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(112, 'Meitu', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(113, 'Huawei', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(114, 'Táo', 3, now(), now());
-- Chất liệu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(200, 'Nhôm', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(201, 'Sợi các-bon', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(202, 'Vải', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(203, 'Da', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(204, 'Kim loại', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(205, 'Cao su tổng hợp', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(206, 'Nhựa', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(207, 'Polycarbonate', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(208, 'Silicon', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(209, 'TPU', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(210, 'Gỗ', 4, now(), now());
-- Loại hộp đựng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(300, 'Tùy chỉnh', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(301, 'Lật', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(302, 'Da', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(303, 'Thạch anh trong suốt', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(304, 'Chống thấm nước', 5, now(), now());
-- Loại da
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(400, 'Da bò', 6, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(401, 'Da cừu', 6, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(402, 'Không có', 6, now(), now());
-- Chất liệu dây đeo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(500, 'Silicone', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(501, 'Da', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(502, 'Nhựa nhân tạo tổng hợp', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(503, 'Nylon', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(504, 'Nhựa', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(505, 'Cao su', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(506, 'Thép không gỉ', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(507, 'Không có', 7, now(), now());
-- Dung lượng Powerbank
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(600, '<5000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(601, '5000-10000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(602, '10001-20000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(603, '>20000mAh', 9, now(), now());
-- Số cổng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(700, '1', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(701, '2', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(702, '3', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(703, '4', 10, now(), now());
-- Cổng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(800, 'HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(801, 'Micro HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(802, 'MicroSD Card', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(803, 'Màn hình nhỏ', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(804, 'Mini HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(805, 'NVME', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(806, 'PCI-e', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(807, 'SATA III', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(808, 'SD Card', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(809, 'Thunderbolt', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(810, 'Thunderbolt 2', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(811, 'Thunderbolt 3', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(812, 'USB 2.0', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(813, 'USB 3.0', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(814, 'USB 3.1', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(815, 'USB Type-C', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(816, 'VGA', 11, now(), now());
-- Các tính năng của Powerbank
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(900, 'Vỏ điện thoại Tích hợp', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(901, 'Bộ sạc Tường Tích hợp', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(902, 'Sạc Đa Thiết bị', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(903, 'Sạc nhanh 2.0', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(904, 'Sạc nhanh 3.0', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(905, 'Năng lượng mặt trời', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(906, 'Sạc không dây', 12, now(), now());
-- Sạc nhanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1000, 'Có', 14, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1001, 'Không', 14, now(), now());
-- Loại phích cắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1100, 'Không dây', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1101, 'Loại Anh', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1102, 'Loại IDO', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1103, 'Loại EU', 16, now(), now());
-- Độ phân giải
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1200, '4K UHD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1201, '8K UHD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1202, 'Full HD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1203, 'HD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1204, 'SD', 19, now(), now());
-- Dung lượng lưu trữ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1300, '1GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1301, '2GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1302, '3GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1303, '5GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1304, '10GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1305, '32GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1306, '64GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1307, '128GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1308, '256GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1309, '500GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1310, '512GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1311, '1TB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1312, '2TB', 20, now(), now());
-- Hệ điều hành được Hỗ trợ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1400, 'Android', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1401, 'BlackBerry', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1402, 'Chrome OS', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1403, 'iOS', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1404, 'Linux', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1405, 'Mac OS X', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1406, 'Nokia Asha', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1407, 'Symbian', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1408, 'Phổ cập', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1409, 'Cửa sổ', 21, now(), now());
-- Loại cáp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1500, 'Type C', 22, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1501, 'Micro USB', 22, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1502, 'Lightning', 22, now(), now());
-- Thời hạn bảo hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1600, '1 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1601, '2 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1602, '3 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1603, '6 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1604, '12 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1605, '24 tháng', 23, now(), now());
-- Bó
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1700, 'Có', 24, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1701, 'Không', 24, now(), now());
-- Có pin
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1800, 'Có', 26, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1801, 'Không', 26, now(), now());
-- Có Maganet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1900, 'Có', 28, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1901, 'Không', 28, now(), now());
-- Tình trạng sản phẩm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2000, 'Mới', 29, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2001, 'Đã dùng', 29, now(), now());
-- Pin tích hợp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2100, 'Có', 30, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2101, 'Không', 30, now(), now());
-- Không thấm nước
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2200, 'Có', 36, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2201, 'Không', 36, now(), now());
-- Loại pin
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2300, '23A', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2301, 'AA', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2302, 'AAA', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2303, 'AG', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2304, 'LR', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2305, 'SR Series', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2306, 'C', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2307, 'Dòng CR', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2309, 'D', 39, now(), now());
-- Thu phóng Kỹ thuật số
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2400, '3x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2401, '4x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2402, '10x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2403, '12x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2404, '30x', 40, now(), now());
-- Tỷ lệ Khung
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2500, '24fps', 41, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2501, '30fps', 41, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2502, '60fps', 41, now(), now());
-- Khẩu độ Tối đa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2600, '11f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2601, '13f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2602, '16f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2603, '22f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2604, '29f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2605, '32f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2606, '45f/', 42, now(), now());
-- Loại Thẻ nhớ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2700, 'Đèn flash Nhỏ gọn', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2701, 'Eye fi', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2702, 'Thẻ nhớ', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2703, 'Thẻ nhớ Memory Stick Duo', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2704, 'Micro SD', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2705, 'Micro SDHC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2706, 'MMC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2707, 'SD', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2708, 'SDHC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2709, 'SDXC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2710, 'XQD', 43, now(), now());
-- Khẩu độ Tối thiểu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2800, '1f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2801, '1.2f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2802, '1.4f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2803, '1.7f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2804, '1.8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2805, '2f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2806, '2.8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2807, '3.5f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2808, '4f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2809, '4.5f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2810, '5.6f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2811, '6.3f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2812, '8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2813, '9f/', 44, now(), now());
-- Zoom Quang học
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2900, '3x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2901, '4x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2902, '8x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2903, '12x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2904, '25x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2905, '40x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2906, '42x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2907, '60x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2908, '125x', 45, now(), now());
-- Chụp video Nghị quyết
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3000, '360p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3001, '480p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3002, '720p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3003, '960p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3004, '1080p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3005, '1440p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3006, '4K', 46, now(), now());
-- Ống ngắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3100, 'Điện tử', 47, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3101, 'Không có ống ngắm', 47, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3102, 'Quang học', 47, now(), now());
-- Loại Ống kính Camera
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3200, 'Chính', 48, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3201, 'Mắt cá', 48, now(), now());
-- Dành cho Trò chơi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3300, 'Có', 50, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3301, 'Không', 50, now(), now());
-- Loại kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3400, 'Không dây', 51, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3401, 'Có dây', 51, now(), now());
-- Dành cho Thể thao
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3500, 'Không dây', 52, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3501, 'Có dây', 52, now(), now());
-- Khả năng tương thích Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3600, 'Camera', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3601, 'Di động', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3602, 'Phương tiện giao thông', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3603, 'PC & Máy tính xách tay', 53, now(), now());
-- Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3700, 'Dây dẫn qua xương', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3701, 'Trong tai', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3702, 'Mono', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3703, 'Trên tai', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3704, 'Qua tai', 54, now(), now());
-- Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3800, 'Micro Tích hợp sẵn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3801, 'Khử tiếng ồn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3802, 'Cách ly tiếng ồn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3803, 'Điều khiển từ xa', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3804, 'Chống Mồ hôi', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3805, 'Kiểm soát Âm lượng', 55, now(), now());
-- Loại Phụ kiện Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3900, 'Bộ sắp xếp Dây cáp', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3901, 'Vỏ', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3902, 'Tai nghe úp tai', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3903, 'Bộ khuếch đại Tai nghe', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3904, 'Tai nghe nút tai Thay thế', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3905, 'Cáp Âm thanh nổi', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3906, 'Bộ tách Âm thanh nổi', 56, now(), now());
-- Loại Kết nối Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4000, 'Đầu vào Phụ trợ', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4001, 'Giắc cắm Tai nghe', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4002, 'Bluetooth', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4003, 'NFC Được kích hoạt', 57, now(), now());
-- Phản hồi Tần số Tối đa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4100, '20000Hz', 58, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4101, '45000Hz', 58, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4102, '50000Hz', 58, now(), now());
-- Phản hồi Tần số Tối thiểu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4200, '45Hz', 59, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4201, '50Hz', 59, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4202, '90Hz', 59, now(), now());
-- Đánh giá Độ nhạy
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4300, '86dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4301, '88dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4302, '90dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4303, '92dB', 60, now(), now());
-- Loa Thông minh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4400, 'Có', 61, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4401, 'Không', 61, now(), now());
-- Bluetooth
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4500, 'Có', 62, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4501, 'Không', 62, now(), now());
-- Loại âm li
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4600, 'Dành cho Sân khấu', 63, now(), now());
-- Bộ cắt Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4700, '2 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4701, '3 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4702, '4 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4703, 'Toàn phạm vi', 64, now(), now());
-- Đầu vào
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4800, 'Đầu vào Phụ trợ', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4801, 'HDMI', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4802, 'HDMI ARC', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4803, 'NFC Được kích hoạt', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4804, 'Quang học', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4805, 'RCA', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4806, 'Âm thanh nổi', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4807, 'USB', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4808, 'VGA', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4809, 'Wi-Fi', 65, now(), now());
-- Phạm vi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4900, '3KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4901, '5KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4902, '8KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4903, '10KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4904, '20KM', 66, now(), now());
-- Số kênh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5000, '3', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5001, '5', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5002, '7', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5003, '9', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5004, '10', 67, now(), now());
-- Kết nối Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5100, 'UHF (Không dây)', 68, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5101, 'VHF (Không dây)', 68, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5102, 'Có dây', 68, now(), now());
-- Loại Phụ kiện Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5200, 'Dây cáp', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5201, 'Nắp', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5202, 'Bộ giữ', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5203, 'Giá đỡ', 69, now(), now());
-- Loại Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5300, 'Tai nghe Dạng tụ', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5301, 'Tai nghe Cổ ngỗng', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5302, 'Tai nghe Cầm tay', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5303, 'Tai nghe Trùm đầu', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5304, 'Tai nghe Nhạc cụ', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5305, 'Tai nghe Ve áo', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5306, 'Tai nghe Ruy băng', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5307, 'Tai nghe USB', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5308, 'Tai nghe giọng hát', 70, now(), now());
-- Độ sáng Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5400, '450Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5401, '800Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5402, '1100Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5403, '1600Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5404, '2600Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5405, '5800Lumens', 72, now(), now());
-- Tỷ lệ Tương phản
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5500, '10000:1', 73, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5501, '20000:1', 73, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5502, '30000:1', 73, now(), now());
-- Các tính năng của Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5600, 'Âm thanh Tích hợp', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5601, 'DLP', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5602, 'LCD echnology', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5603, 'Khoảng cách Phóng hình Dài', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5604, 'Cầm tay', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5605, 'Khoảng cách Phóng hình Ngắn', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5606, 'Khoảng cách Phóng hình Siêu ngắn', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5607, 'Không dây', 74, now(), now());
-- Loại Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5700, 'Sử dụng cho Doanh nghiệp', 75, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5701, 'Sử dụng cho Nhà riêng', 75, now(), now());
-- Loại Bảng điều khiển Trò chơi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5800, 'Playstation', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5801, 'Công tắc', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5802, 'Xbox', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5803, 'Will', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5804, 'Gameboy', 76, now(), now());
-- Kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5900, 'Bluetooth', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5901, 'HDMI', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5902, 'Micro USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5903, 'Mini USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5904, 'PCIe NVMe', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5905, 'TYPE-C', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5906, 'USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5907, 'VGA', 77, now(), now());
-- Khả năng tương thích Nền tảng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6000, 'Vòng cổ', 78, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6001, 'Cổ tay', 78, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6002, 'Ban nhạc', 78, now(), now());
-- Độ phân giải Camera Chính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6100, '3MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6101, '5MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6102, '8MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6103, '12MP', 82, now(), now());
-- Chất liệu dây đeo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6200, 'Silicone', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6201, 'Da', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6202, 'Nhựa nhân tạo tổng hợp', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6203, 'Nylon', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6204, 'Nhựa', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6205, 'Cao su', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6206, 'Thép không gỉ', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6207, 'Không có', 83, now(), now());
-- Xem Kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6300, 'Bluetooth', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6301, 'Dữ liệu di động', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6302, 'GPS', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6303, 'Wi-Fi', 84, now(), now());
-- Tính năng Đồng hồ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6400, 'Trình theo dõi Calo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6401, 'Camera', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6402, 'Màn hình Đồng hồ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6403, 'Trình theo dõi Khoảng cách', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6404, 'GPS', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6405, 'Theo dõi Nhịp tim', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6406, 'Máy nghe nhạc', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6407, 'Thông báo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6408, 'Thanh toán', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6409, 'Máy đếm bước chân', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6410, 'Cuộc gọi điện thoại', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6411, 'Trình theo dõi giấc ngủ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6412, 'Tin nhắn', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6413, 'Điều khiển giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6414, 'Ghi âm giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6415, 'Không thấm nước', 145, now(), now());
-- RAM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6500, '4G', 86, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6501, '6G', 86, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6502, '8G', 86, now(), now());
-- NFC
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6600, 'Có', 88, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6601, 'Không', 88, now(), now());
-- Màu sắc
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6700, 'Màu đen', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6701, 'Màu trắng', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6702, 'Màu đỏ', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6703, 'Màu vàng', 89, now(), now());
-- Số lượng Khe cắm Thẻ SIM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6800, '1', 90, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6801, '2', 90, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6802, '3', 90, now(), now());
-- Loại Điện thoại
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6900, 'Điện thoại phổ thông', 91, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6901, 'Điện thoại thông minh', 91, now(), now());
-- Vi xử lý
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7000, 'Apple 13 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7001, 'Snapdragon 865 Plus', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7002, 'Snapdragon 865', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7003, 'Exynos 990', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7004, 'Exynos 7885', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7005, 'Dimensity 1000+', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7006, 'Snapdragon 855', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7007, 'Snapdragon 855 Plus', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7008, 'Apple A12 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7009, 'Apple A14 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7010, 'Apple A4', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7011, 'Apple A6', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7012, 'Apple A16 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7013, 'Apple A13 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7014, 'Apple A5', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7015, 'Apple A15 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7016, 'Apple A9', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7017, 'Apple A8', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7018, 'Apple A10 Fusion', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7019, 'Apple A11 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7020, 'Apple A7', 93, now(), now());
-- Số lõi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7100, 'Đơn', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7101, 'Bốn lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7102, 'Sáu lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7103, 'Tám lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7104, 'Dual-core', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7105, 'Deca-core', 94, now(), now());
-- Loại SIM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7200, 'Vi mô', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7201, 'Nano', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7202, 'Tiêu chuẩn', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7203, 'Mini', 95, now(), now());
-- Giắc cắm 3,5 mm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7300, 'Có', 96, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7301, 'Không', 96, now(), now());
-- Ổ đĩa quang
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7400, 'Có', 100, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7401, 'Không', 100, now(), now());
-- Loại bảo quản
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7500, 'SSHD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7501, 'SSD+HDD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7502, 'SSD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7503, 'HDD', 101, now(), now());
-- Nhà sản xuất Chipset Đồ họa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7600, 'AMD', 103, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7601, 'Integrated', 103, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7602, 'Nvidia', 103, now(), now());
-- Kích thước Màn hình Máy tính xách tay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7700, '<13inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7701, '13inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7702, '14inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7703, '15inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7704, '>15inches', 104, now(), now());
-- Loại máy tính xách tay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7800, '2 trong 1', 105, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7801, 'Trò chơi', 105, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7802, 'Ultrabook', 105, now(), now());
-- Hệ điều hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7900, 'Cửa sổ', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7901, 'Linux', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7902, 'Android', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7903, 'Chrome OS', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7904, 'Mac OS', 106, now(), now());
-- Loại bảng LED
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8000, 'AH-IPS', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8001, 'IPS', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8002, 'TFT', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8003, 'TN', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8004, 'VA', 107, now(), now());
-- Kích thước Màn hình Điều khiển
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8100, '<20inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8101, '20-22inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8102, '23-25inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8103, '26-28inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8104, '29-32inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8105, '>32inches', 108, now(), now());
-- Cổng Giám sát
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8200, 'DP', 110, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8201, 'HDMI', 110, now(), now());
-- Điện áp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8300, 'Có', 111, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8301, 'Không', 111, now(), now());
-- DDR
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8400, 'DDR', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8401, 'DDR2', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8402, 'DDR3', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8403, 'DDR4', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8404, 'DDR5', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8405, 'DDR6', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8406, 'DDR3L', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8407, 'LPDDR4', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8408, 'LPDDR4X', 112, now(), now());
-- Số lượng Lõi CPU
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8500, 'Đơn', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8501, 'Bốn lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8502, 'Sáu lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8503, 'Tám lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8504, 'Dual-core', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8505, 'Deca-core', 113, now(), now());
-- Chipset CPU
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8600, 'Intel i3', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8601, 'Intel i5', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8602, 'Intel i7', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8603, 'AMD Ryzen 5', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8604, 'AMD Ryzen 7', 114, now(), now());
-- Bên trong/Bên ngoài
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8700, 'Bên trong', 118, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8701, 'Bên ngoài', 118, now(), now());
-- Phương tiện Tương thích
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8800, 'Blu-Ray', 120, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8801, 'CD', 120, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8802, 'DVD', 120, now(), now());
-- Chế độ Đầu ra Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8900, 'DirectSound', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8901, 'WASAPI', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8902, 'ASIO', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8903, 'Đầu ra Rỗng', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8904, 'Truyền trực tuyến Hạt nhân', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8905, 'Trình ghi Ổ đĩa', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8906, 'Âm thanh vòm 5.1', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8907, 'Âm thanh Lõi', 121, now(), now());
-- Nước xuất xứ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9000, 'Đèn flash Nhỏ gọn', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9001, 'Eye fi', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9002, 'Thẻ nhớ', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9003, 'Thẻ nhớ Memory Stick Duo', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9004, 'Micro SD', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9005, 'Micro SDHC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9006, 'MMC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9007, 'SD', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9008, 'SDHC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9009, 'SDXC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9010, 'XQD', 122, now(), now());
-- Micro Tích hợp sẵn
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10000, 'Có', 125, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10000, 'Không', 125, now(), now());
-- Loại Bộ điều hợp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10100, 'Bộ sạc Ô tô', 128, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10101, 'Bộ sạc tường', 128, now(), now());
-- Loại Bút
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10200, 'Bút bi', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10201, 'Bút gel', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10202, 'Bút máy', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10203, 'Bút lông kim', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10204, 'Bút đa năng', 129, now(), now());
-- Tốc độ Quay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10300, '5400rpm', 130, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10301, '5900rpm', 130, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10302, '7200rpm', 130, now(), now());
-- Hệ số hình thức SSD
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10400, '2.5', 131, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10401, 'M.2', 131, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10402, 'mSATA', 131, now(), now());
-- Số lượng Nhịp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10500, 'Ổ đĩa đơn', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10501, '2-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10502, '4-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10503, '5-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10504, '6-Bay', 132, now(), now());
-- Loại Tốc độ Bộ nhớ Flash
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10600, 'Class 2', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10601, 'Class 4', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10602, 'Class 6', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10603, 'Class 10', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10604, 'UHS Class 1', 133, now(), now());
-- Loại Bộ nhớ Flash
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10700, 'Đèn flash Nhỏ gọn', 134, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10701, 'Micro SD', 134, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10702, 'SDHC', 134, now(), now());
-- Loại Ăng ten
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10800, 'Tích hợp sẵn', 137, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10801, 'Bên ngoài', 137, now(), now());
-- Mạng Không dây
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10900, '3G', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10901, '4G', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10902, 'Bluetooth', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10903, 'Wifi 6(802.11ax)', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10904, 'Wifi AC(802.11ac)', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10905, 'Wifi N(802.11n)', 139, now(), now());
-- Tốc độ Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11000, '700Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11001, '800Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11002, '900Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11003, '1Gbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11004, '2Gbps', 140, now(), now());
-- Loại Công tắc Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11100, 'Được quản lý', 141, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11101, 'Thông minh', 141, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11102, 'Không được quản lý', 141, now(), now());
-- Loại Đầu nối & Cáp mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11200, 'Cat 5e', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11201, 'Cat 6', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11202, 'Cat 6a', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11203, 'Cat 7', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11204, 'Cat 8', 142, now(), now());
-- Loại két sắt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11300, 'Két sắt thương mại & văn phòng', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11301, 'Két chống cháy & an ninh', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11302, 'Chìa khóa & Két di động', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11303, 'Két treo tường & để sàn', 143, now(), now());
-- Thiết bị thông minh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11400, 'Thông minh', 144, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11401, 'Không phải thiết bị thông minh', 144, now(), now());
-- Tính năng Đồng hồ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11500, 'Trình theo dõi Calo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11501, 'Camera', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11502, 'Màn hình Đồng hồ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11503, 'Trình theo dõi Khoảng cách', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11504, 'GPS', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11505, 'Theo dõi Nhịp tim', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11506, 'Máy nghe nhạc', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11507, 'Thông báo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11508, 'Thanh toán', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11509, 'Máy đếm bước chân', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11510, 'Cuộc gọi điện thoại', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11511, 'Trình theo dõi giấc ngủ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11512, 'Tin nhắn', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11513, 'Điều khiển giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11514, 'Ghi âm giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11515, 'Không thấm nước', 145, now(), now());
-- Kiểu Theo dõi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11600, 'Vòng cổ', 146, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11601, 'Cổ tay', 146, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11602, 'Ban nhạc', 146, now(), now());
-- Tính năng VR
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11700, 'Bluetooth', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11701, 'Mic tích hợp', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11702, 'Loa tích hợp', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11703, 'Dữ liệu di động', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11704, 'HDMI', 147, now(), now());
-- Tiêu chuẩn Giao tiếp Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11800, 'GSM', 148, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11801, 'CDMS', 148, now(), now());
-- Cài đặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11900, 'Phòng ngủ', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11901, 'Phòng tắm', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11902, 'Phòng tắm', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11903, 'Phòng vệ sinh', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11904, 'Phòng bếp', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11905, 'Ban công', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11906, 'Ga-ra', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11907, 'Tủ quần áo', 150, now(), now());
-- Sử dụng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12000, 'Đồ gia dụng', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12001, 'Quần áo', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12002, 'Đồ chơi', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12003, 'Thực phẩm & Đồ uống', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12004, 'Sách', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12005, 'Đồ nữ trang', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12006, 'Thiết bị điện tử', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12007, 'Sắc đẹp', 151, now(), now());
-- Số lượng mỗi gói
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12100, 1, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12101, 2, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12102, 3, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12103, 4, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12104, 5, 152, now(), now());
-- Đặc điểm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12200, 'Điều chỉnh được', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12201, 'Có thể phân hủy', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12202, 'Thân thiện với môi trường', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12203, 'Có thể tái chế', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12204, 'Có thể gập gọn', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12205, 'Có thể gập lại', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12206, 'Chống thấm nước', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12207, 'Có thể xoay', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12208, 'Chống bụi', 153, now(), now());
-- Hình dạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12300, 'Hình trái xoan', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12301, 'Hình tròn', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12302, 'Hình trái tim', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12303, 'Hình vuông', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12304, 'Hình chữ nhật', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12305, 'Hình thang', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12306, 'Hình cung', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12307, 'Không đều', 154, now(), now());
-- Phong cách
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12400, 'Đồ cổ', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12401, 'Châu Á', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12402, 'Cổ điển', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12403, 'Nước Pháp', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12404, 'Sân vườn', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12405, 'Glam', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12406, 'Công nghiệp', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12407, 'Người Nhật', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12408, 'Hiện đại', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12409, 'Mộc mạc', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12410, 'Đông Nam Á', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12411, 'Truyền thống', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12412, 'Nhiệt đới', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12413, 'Vintage', 155, now(), now());
-- Kẹp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12500, 'Có kẹp', 156, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12501, 'Không có kẹp', 156, now(), now());
-- Số lớp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12600, '1 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12601, '2 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12602, '3 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12603, '4 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12604, '5 lớp', 157, now(), now());
-- Trả góp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12700, 'Treo tường', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12701, 'Móc dính', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12702, 'Móng', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12703, 'Băng dính', 158, now(), now());
-- Trọng lượng hỗ trợ (kg)
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12800, '0 - 5 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12801, '5 - 10 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12802, '10 - 15 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12803, '15 - 20 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12804, '20 - 25 kg', 159, now(), now());
-- Xếp đặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12900, 'Wall-Mounted', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12901, 'Desk', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12902, 'Floor', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12903, 'Cầm tay', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12904, 'Phòng ngủ', 160, now(), now());
-- Số lượng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13000, '10 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13001, '20 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13002, '30 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13003, '50 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13004, '100 ml', 161, now(), now());
-- Tuổi đời sản phẩm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13100, 'Dùng một lần', 162, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13101, 'Có thể tái sử dụng', 162, now(), now());
-- Loại bàn chải toilet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13200, 'Wall-Mounted', 163, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13201, 'Floor', 163, now(), now());
-- Loại bàn chải toilet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13300, 'Mùa xuân', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13301, 'Mùa hè', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13302, 'Mùa thu', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13303, 'Mùa đông', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13304, 'Bốn mùa', 164, now(), now());
-- Loại bọc ghế nhà vệ sinh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13400, 'Dùng một lần', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13401, 'Dính', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13402, 'Có dây kéo', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13403, 'Có tay cầm', 165, now(), now());
-- Loại khay đựng xà phòng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13500, 'Nhấn', 166, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13501, 'Cảm ứng', 166, now(), now());
-- Tuổi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13600, 'Trẻ em', 167, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13601, 'Dành cho người lớn', 167, now(), now());
-- Loại giá đỡ bàn chải đánh răng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13700, '2 lớp', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13701, 'Nhiều phần', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13702, 'Cầm tay', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13703, 'Tam giác', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13704, 'Kết hợp', 168, now(), now());
-- Loại thanh treo rèm phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13800, 'Loại chữ U', 169, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13801, 'Thẳng', 169, now(), now());
-- Loại đĩa xà phòng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13900, '2 lớp', 170, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13901, 'Có nắp', 170, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13902, 'Trong suốt', 170, now(), now());
-- Loại bồn tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14000, 'Chậu rửa mặt', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14001, 'Chậu ngâm chân', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14002, 'Xô ngâm chân', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14003, 'Đĩa', 171, now(), now());
-- Giới tính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14100, 'Nam', 172, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14101, 'Nữ', 172, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14102, 'Unisex', 172, now(), now());
-- Loại khăn
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14200, 'Khăn tắm biển', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14201, 'Khăn tắm', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14202, 'Khăn mặt', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14203, 'Khăn lau đầu', 173, now(), now());
-- Loại tiện ích phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14200, 'Dụng cụ bóp kem đánh răng', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14201, 'Đầu nối dài vòi nước', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14202, 'Dụng cụ chặn tóc', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14203, 'Giá đỡ giấy vệ sinh di động', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14204, 'Gối tắm', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14205, 'Cân phòng tắm', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14206, 'Pit-tông bồn cầu', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14207, 'Dụng cụ nâng nắp bồn cầu', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14208, 'Giá đỡ dao cạo râu', 174, now(), now());
-- Bộ phận cơ thể
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14300, 'Đầu', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14301, 'Lưng', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14302, 'Cánh tay', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14303, 'Bàn Chân', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14304, 'Cả người', 175, now(), now());
-- Loại phụ kiện phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14400, 'Bọt biển tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14401, 'Găng tay tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14402, 'Bàn chải tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14403, 'Máy chà cơ thể', 175, now(), now());
-- Hướng dẫn giặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14500, 'Chỉ giặt tay', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14501, 'Chỉ giặt khô', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14502, 'Giặt máy', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14503, 'Không cần giặt', 177, now(), now());
