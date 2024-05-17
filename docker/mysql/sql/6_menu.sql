SET CHARSET UTF8;

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(1, 'Sản phẩm', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(2, 'Quản lý sản phẩm', null, '/admin/setting', 1, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(3, 'Thêm sản phẩm mới', null, '/admin', 1, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(4, 'Công cụ hàng loạt', null, '/admin/setting', 1, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(50, 'Đơn hàng', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(51, 'Quản lý đơn hàng', 'pi pi-envelope', '/admin/setting', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(52, 'Quản lý yêu cầu hủy', 'pi pi-envelope', '/admin/setting', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(53, 'Quản lý đơn hàng hoàn trả', 'pi pi-envelope', '/admin/setting', 50, now(), now());
