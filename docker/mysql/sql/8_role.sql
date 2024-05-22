SET CHARSET UTF8;

INSERT IGNORE INTO roles (id, role_name,created_at, updated_at) VALUES(1, 'Quản trị viên chính', now(), now());
INSERT IGNORE INTO roles (id, role_name,created_at, updated_at) VALUES(2, 'Chuyên gia quản lý sản phẩm', now(), now());
INSERT IGNORE INTO roles (id, role_name,created_at, updated_at) VALUES(3, 'Chuyên gia thực hiện đơn hàng', now(), now());
