SET CHARSET UTF8;

-- Loại sản phẩm
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(1, 'Đồ gia dụng', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(2, 'Đồ dùng nhà bếp', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(3, 'Hàng dệt & Đồ nội thất mềm', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(4, 'Thiết bị gia dụng', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(5, 'Trang phục nữ & Đồ lót', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(6, 'Thời trang Hồi giáo', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(7, 'Giày', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(8, 'Chăm sóc sắc đẹp & Chăm sóc cá nhân', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(9, 'Điện thoại & Đồ điện tử', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(10, 'Máy tính & Thiết bị văn phòng', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(11, 'Đồ dùng cho thú cưng', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(12, 'Trẻ sơ sinh & Thai sản', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(13, 'Thể thao & Ngoài trời', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(14, 'Đồ chơi & Sở thích', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(15, 'Đồ nội thất', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(16, 'Công cụ & Phần cứng', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(17, 'Sửa chữa nhà cửa', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(18, 'Ô tô & xe máy', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(19, 'Phụ kiện thời trang', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(20, 'Đồ ăn & đồ uống', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(21, 'Sức khỏe', null, now(), now());
INSERT IGNORE INTO myapp_category (id, name, parent_id, created_at, updated_at) VALUES(22, 'Thời trang trẻ em', null, now(), now());

-- -- Đồ gia dụng
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(23, 'Đồ dựng trong nhà', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(24, 'Đồ dùng phòng tắm', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(25, 'Trang trí nội thất', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(26, 'Đồ gia dụng', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(27, 'Dụng cụ & Phụ kiện giặt là', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(28, 'Đồ dùng cho lễ hội & bữa tiệc', 1);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(29, 'Đồ gia dụng khác', 1);
--
-- -- Đồ dùng nhà bếp
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(30, 'Đồ để uống trà & cà phê', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(31, 'Dao nhà bếp', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(32, 'Tiệc nước barbecue', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(33, 'Đồ dùng quầy rượu & Đồ uống rượu', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(34, 'Đồ làm bánh', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(35, 'Đồ nấu ăn', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(36, 'Dao kéo & Bộ đồ ăn', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(37, 'Bộ đồ uống', 2);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(38, 'Đồ dùng & Dụng cụ nhà bếp', 2);
--
--
-- -- Hàng dệt & Đồ nội thất mềm
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(39, 'Chăn ga gối đệm', 3);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(40, 'Hàng dệt gia dụng', 3);
-- INSERT IGNORE INTO myapp_category (id, name, parent_id) VALUES(41, 'Vải & Đồ may', 3);
