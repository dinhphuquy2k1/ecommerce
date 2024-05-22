SET
FOREIGN_KEY_CHECKS = 0; -- disable check foreign key

DROP TABLE IF EXISTS categories;
CREATE TABLE `categories`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent_id`   bigint(20) unsigned DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    `size_table`  tinyint(1) NOT NULL DEFAULT '0',
    `created_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY           `categories_parent_id_foreign` (`parent_id`),
    CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS properties;
CREATE TABLE `properties`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type`       int(11) NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS categories_properties;
CREATE TABLE `categories_properties`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `category_id` bigint(20) unsigned NOT NULL,
    `property_id` bigint(20) unsigned NOT NULL,
    `required`    tinyint(1) NOT NULL DEFAULT '0',
    `created_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY           `categories_properties_category_id_foreign` (`category_id`),
    KEY           `categories_properties_property_id_foreign` (`property_id`),
    CONSTRAINT `categories_properties_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
    CONSTRAINT `categories_properties_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS property_values;
CREATE TABLE `property_values`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `property_id` bigint(20) unsigned NOT NULL,
    `value`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY           `property_values_property_id_foreign` (`property_id`),
    CONSTRAINT `property_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS sizes;
CREATE TABLE `sizes`
(
    `id`              bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `size_name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `size_option`     varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `one_size`        tinyint(11) NOT NULL DEFAULT '0',
    `type`            tinyint(11) NOT NULL DEFAULT '0',
    `size_conversion` tinyint(11) NOT NULL DEFAULT '0',
    `note`            varchar(500) COLLATE utf8mb4_unicode_ci NULL,
    `created_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS products;
CREATE TABLE `products`
(
    `id`                 bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `product_name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category_id`        bigint(20) unsigned NOT NULL,
    `use_sample_size`    tinyint(1) NOT NULL DEFAULT '0',
    `size_image_url`     varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `size_id`            bigint(20) unsigned NULL,
    `has_variant`        tinyint(1) NOT NULL DEFAULT '0',
    `brand`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `min_price`          int(11) COLLATE utf8mb4_unicode_ci NULL,
    `max_price`          int(11) COLLATE utf8mb4_unicode_ci NULL,
    `product_quantity`   int(11) COLLATE utf8mb4_unicode_ci NULL,
    `product_price`      int(11) COLLATE utf8mb4_unicode_ci NULL,
    `product_sku_seller` int(11) COLLATE utf8mb4_unicode_ci NULL,
    `properties`         json NULL,
    `description`        varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY                  `products_category_id_foreign` (`category_id`),
    KEY                  `products_size_id_foreign` (`size_id`),
    CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
    CONSTRAINT `products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS variants;
CREATE TABLE `variants`
(
    `id`                 bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `content`            json NOT NULL,
    `product_id`         bigint(20) unsigned NOT NULL,
    `media_id`           bigint(20) unsigned NULL,
    `variant_price`      int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_quantity`   int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_sku_seller` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `created_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY                  `variants_product_id_foreign` (`product_id`),
    KEY                  `variants_media_id_foreign` (`media_id`),
    CONSTRAINT `variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
    CONSTRAINT `variants_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS medias;
CREATE TABLE `medias`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `media_url`  varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_id` bigint(20) unsigned NULL,
    `type`       tinyint(11) NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY          `products_product_id_foreign` (`product_id`),
    CONSTRAINT `products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS brands;
CREATE TABLE `brands`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
    `media_id`   bigint(20) unsigned NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY          `brands_media_id_foreign` (`media_id`),
    CONSTRAINT `brands_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS ware_houses;
CREATE TABLE `ware_houses`
(
    `id`                bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `warehouse_name`    varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL UNIQUE,
    `warehouse_type`    tinyint(11) NOT NULL DEFAULT '0',
    `warehouse_contact` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `phone_number`      varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `detailed_address`  varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `warehouse_status`  tinyint(11) NOT NULL DEFAULT '0',
    `created_at`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS menus;
CREATE TABLE `menus`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `label`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon`       varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `route`      varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `parent_id`  bigint(20) unsigned DEFAULT NULL,
    `display`    tinyint(1) NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY          `menus_parent_id_foreign` (`parent_id`),
    CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `username`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `password`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS roles;
CREATE TABLE roles
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `role_name`  varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `role_type`  tinyint(1) NOT NULL DEFAULT '0',
    `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS permissions;
CREATE TABLE permissions
(
    `id`              bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `permission_name` VARCHAR(255)                            NOT NULL,
    `permission_type` bigint(20) unsigned NOT NULL,
    `parent_id`       bigint(20) unsigned DEFAULT NULL,
    `model`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY               `permissions_parent_id_foreign` (`parent_id`),
    CONSTRAINT `permissions_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS role_permissions;
CREATE TABLE role_permissions
(
    `id`            bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `role_id`       bigint(20) unsigned NOT NULL,
    `permission_id` bigint(20) unsigned NOT NULL,
    `created_at`    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`    TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY             `role_permissions_role_id_foreign` (`role_id`),
    KEY             `role_permissions_permission_idd_foreign` (`permission_id`),
    CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
    CONSTRAINT `role_permissions_permission_idd_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS user_roles;
CREATE TABLE user_roles
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `user_id`    bigint(20) unsigned NOT NULL,
    `role_id`    bigint(20) unsigned NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY          `user_roles_user_id_foreign` (`user_id`),
    KEY          `user_roles_role_id_foreign` (`role_id`),
    CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
);

SET
FOREIGN_KEY_CHECKS = 1; -- enable check foreign key
