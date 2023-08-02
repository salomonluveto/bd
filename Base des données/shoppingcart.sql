-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 juin 2023 à 02:03
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shoppingcart`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Légumes', '2023-04-12 20:26:56', '2023-04-12 20:26:56'),
(3, 'Fruits', '2023-04-12 22:10:27', '2023-04-12 22:10:27'),
(5, 'jus', '2023-04-13 19:45:57', '2023-04-13 19:45:57');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `email`, `password`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'salomonluveto2023@gmail.com', '1234', '2023-04-14 09:50:30', '2023-04-14 09:50:30', 0),
(2, 'king@gmail.com', '$2y$10$lQGvYbkTtgKk3LdCXotKLOMSuW92mJXxC/Vb8I38UkAogOyXOnlU2', '2023-04-14 10:01:08', '2023-04-14 10:01:08', 0),
(3, 'pascy@gmail.com', '$2y$10$9k8M8szNzcYWBayYsV3sd.oGMjJeJMm/PdnSPr40IIZ74cAQLihQC', '2023-04-14 10:14:10', '2023-04-14 10:14:10', 0),
(4, 'simon@gmail.com', '$2y$10$6wcioPNVw6sU9dCQx7TbuudsnWkLCzwKC1SRv/HGo./ZVL/3Hr/DW', '2023-04-14 10:17:28', '2023-04-14 10:17:28', 0),
(5, 'maman@gmail.com', '$2y$10$A2Nbf9ppgXwSCLSU0fHRDO95UI8DXMSjCdVRtG4mKb40yRz1RBgHG', '2023-05-29 12:53:03', '2023-05-29 12:53:03', 0),
(6, 'kkkk@gmail.com', '$2y$10$xwet.r0/RtSImGqzH2HT/uBdLLX8IY5aYpcQNl2bpndFETki/NfYm', '2023-05-29 13:01:45', '2023-05-29 13:01:45', 0),
(7, 'li@gmail.com', '$2y$10$.2wEQ4qIKZfEO1ZXc0S68eSejnCLFVAhvPMzlQgZDl4AkWo9AVzY2', '2023-05-29 13:02:41', '2023-05-29 13:02:41', 0),
(8, 'mil@gmail.com', '$2y$10$MhIYMbnCmH0a4SVlZhAGCe.DAsKzkonfmVa/F5HY7ky3/Ln8.vJHW', '2023-05-29 13:06:12', '2023-05-29 13:06:12', 0),
(9, 'wil@gmail.com', '$2y$10$ItIT3iNh6PcYRMB.UQ1Bm.A3VjBwA.MlEkezyeu/1gwxOnHRhQhvC', '2023-05-29 13:07:47', '2023-05-29 13:07:47', 0),
(10, 'pap@gmail.com', '$2y$10$edKGy2Zz0BXEs/OQEvDI1eTfyJX0fi80jyo7LR3KLPL4mbtFKJ1lO', '2023-05-29 13:46:46', '2023-05-29 13:46:46', 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_12_190416_create_categories_table', 1),
(6, '2023_04_13_034123_create_products_table', 2),
(7, '2023_04_13_060354_add_status_to_products', 3),
(8, '2023_04_13_063939_create_sliders_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_category`, `product_image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'tomate', '100', 'Légumes', 'jpg_1681358018.jpg', '2023-04-13 02:53:38', '2023-04-13 05:30:11', 1),
(2, 'pomme', '100', 'Fruits', 'jpg_1681358193.jpg', '2023-04-13 02:56:33', '2023-04-13 18:38:52', 1),
(3, 'poivre', '150', 'Légumes', 'jpg_1681360896.jpg', '2023-04-13 03:41:36', '2023-05-29 14:29:37', 0),
(4, 'piments', '100', 'Fruits', 'product-1_1681361136.jpg', '2023-04-13 03:45:36', '2023-04-13 18:38:58', 1),
(5, 'Ognion', '120', 'Légumes', 'product-9_1681355006.jpg', '2023-04-13 02:03:26', '2023-06-16 10:11:26', 0),
(8, 'fiesta', '600', 'jus', 'product-8_1681418815.jpg', '2023-04-13 19:46:56', '2023-04-13 19:46:56', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `description1`, `description2`, `slider_image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fresh vegetable fruit', 'organic vegetable fruit', 'product-1_1681376184.jpg', 1, '2023-04-13 07:56:24', '2023-04-13 18:22:51'),
(4, 'vegetable fruit', 'organic vegetable fruit', 'product-5_1681376878.jpg', 1, '2023-04-13 08:07:58', '2023-04-13 18:22:54');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'king', 'king@gmail.com', NULL, '1234', NULL, NULL, 0),
(2, 'simon', 'simon@gmail.com', NULL, '123456', NULL, NULL, 1),
(3, NULL, 'pap@gmail.com', NULL, '$2y$10$q.z00Gs1z12VVgwAQSBKceHL4GCpQevZpB3M16DsEUd.KBqei8giS', '2023-05-30 05:11:11', '2023-05-30 05:11:11', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
