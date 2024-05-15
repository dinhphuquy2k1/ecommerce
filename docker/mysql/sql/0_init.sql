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

DROP TABLE IF EXISTS medias;
CREATE TABLE `medias`
(
    `id`         bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `media_url`  varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type`       tinyint(11) NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
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
    `content`         json                                    NOT NULL,
    `note`            varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`      TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
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

DROP TABLE IF EXISTS products;
CREATE TABLE `products`
(
    `id`                 bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `product_name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category_id`        bigint(20) unsigned NOT NULL,
    `media_id`           bigint(20) unsigned NOT NULL,
    `use_sample_size`    tinyint(1) NOT NULL DEFAULT '0',
    `size_image_url`     varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `size_id`            bigint(20) unsigned NULL,
    `has_variant`        tinyint(1) NOT NULL DEFAULT '0',
    `brand`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_quantity`   int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_price`      int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_sku_seller` int(11) COLLATE utf8mb4_unicode_ci NULL,
    `properties`         json NULL,
    `description`        varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY                  `products_category_id_foreign` (`category_id`),
    KEY                  `products_media_id_foreign` (`media_id`),
    KEY                  `products_size_id_foreign` (`size_id`),
    CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
    CONSTRAINT `products_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE,
    CONSTRAINT `products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS variants;
CREATE TABLE `variants`
(
    `id`                 bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `variant_name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_value`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `media_id`           bigint(20) unsigned NOT NULL,
    `product_id`         bigint(20) unsigned NOT NULL,
    `variant_price`      int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_quantity`   int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `variant_sku_seller` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
    `created_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY                  `variants_media_id_foreign` (`media_id`),
    KEY                  `variants_product_id_foreign` (`product_id`),
    CONSTRAINT `variants_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE,
    CONSTRAINT `variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET
FOREIGN_KEY_CHECKS = 1; -- enable check foreign key
