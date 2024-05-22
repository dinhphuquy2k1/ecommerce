SET CHARSET UTF8;

-- Chuyên gia quản lý sản phẩm
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(1, 1, 3, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(2, 1, 4, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(3, 1, 6, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(4, 1, 7, now(), now());
-- Chuyên gia thực hiện đơn hàng
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(100, 3, 102, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(101, 3, 103, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(102, 3, 105, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(103, 3, 106, now(), now());
