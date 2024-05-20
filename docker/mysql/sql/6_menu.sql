SET CHARSET UTF8;

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(1, 'Trang chủ', 'pi pi-envelope', '/admin', null, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(10, 'Tổng quan', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(11, 'Đơn hàng', null, '/admin/dashboard/order', 10, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(12, 'Sản phẩm', null, '/admin/dashboard/product', 10, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(20, 'Sản phẩm', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(21, 'Quản lý sản phẩm', null, '/admin/product/manage', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(22, 'Thêm sản phẩm mới', null, '/admin/product/create', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(23, 'Công cụ hàng loạt', null, '/admin/product/batch', 20, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(50, 'Đơn hàng', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(51, 'Quản lý đơn hàng', 'pi pi-envelope', '/admin/order', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(52, 'Quản lý yêu cầu hủy', 'pi pi-envelope', '/admin/order/cancellation', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(53, 'Quản lý đơn hàng hoàn trả', 'pi pi-envelope', '/admin/order/return', 50, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(100, 'Tài khoản của tôi', 'pi pi-envelope', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(101, 'Hồ sơ nguời bán', 'pi pi-envelope', '/admin/profile/seller-profile', 100, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(102, 'Cài đặt tài khoản', 'pi pi-envelope', '/admin/profile/account-setting', 100, now(), now());
