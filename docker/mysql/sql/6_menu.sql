SET CHARSET UTF8;

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(1, 'Trang chủ', 'icon-home_default', '/admin/homepage', null, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(10, 'Tổng quan', 'icon-challenge_default', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(11, 'Đơn hàng', null, '/admin/dashboard/order', 10, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(12, 'Sản phẩm', null, '/admin/dashboard/product', 10, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(20, 'Sản phẩm', 'icon-product_default', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(21, 'Quản lý sản phẩm', null, '/admin/product/manage', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(22, 'Thêm sản phẩm mới', null, '/admin/product/create', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(23, 'Công cụ hàng loạt', null, '/admin/product/batch', 20, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(50, 'Đơn hàng', 'icon-order_default', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(51, 'Quản lý đơn hàng', 'pi pi-envelope', '/admin/order/manage', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(52, 'Quản lý yêu cầu hủy', 'pi pi-envelope', '/admin/order/cancellation', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(53, 'Quản lý đơn hàng hoàn trả', 'pi pi-envelope', '/admin/order/return', 50, now(), now());

INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(100, 'Tài khoản của tôi', 'icon-account_default', null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(101, 'Hồ sơ nguời bán', 'pi pi-envelope', '/admin/profile/seller-profile', 100, now(), now());
INSERT IGNORE INTO menus (id, label, icon, route, parent_id, created_at, updated_at) VALUES(102, 'Cài đặt tài khoản', 'pi pi-envelope', '/admin/profile/account-setting', 100, now(), now());
