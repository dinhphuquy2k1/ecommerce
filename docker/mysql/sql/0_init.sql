SET
FOREIGN_KEY_CHECKS = 0; -- disable check foreign key

DROP TABLE IF EXISTS categories;
CREATE TABLE `categories`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent_id`   bigint(20) unsigned DEFAULT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
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
SET
FOREIGN_KEY_CHECKS = 1; -- enable check foreign key
