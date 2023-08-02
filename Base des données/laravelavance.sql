-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 juin 2023 à 02:02
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
-- Base de données : `laravelavance`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_01_23_105943_create_pays_table', 1),
(5, '2023_01_23_110145_create_regions_table', 1),
(6, '2023_01_24_124614_add_soft_delete_region', 2),
(7, '2023_01_24_125424_create_pays_region_table', 3);

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

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('salomon@gmail.com', '$2y$10$uLN/nGG.5QEGeZ1nPyiZ0u75QYAHl2cTVC21Vqet107bvL5Hl0M8a', '2023-01-24 06:57:47');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `name`, `capital`, `created_at`, `updated_at`) VALUES
(1, 'Cote d\'Ivoire', 'excepturi', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(2, 'GHANA', 'Acra', '2023-01-23 10:15:43', '2023-01-23 14:42:42'),
(3, 'Yemen', 'illum', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(4, 'Myanmar', 'laborum', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(5, 'South Georgia and the South Sandwich Islands', 'totam', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(6, 'Reunion', 'saepe', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(7, 'Dominica', 'sunt', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(8, 'Swaziland', 'enim', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(9, 'Canada', 'iure', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(10, 'Saint Pierre and Miquelon', 'tempore', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(11, 'China', 'assumenda', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(12, 'Taiwan', 'aspernatur', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(13, 'Greece', 'est', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(14, 'Montenegro', 'voluptatem', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(15, 'United States Minor Outlying Islands', 'est', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(16, 'Bulgaria', 'ratione', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(17, 'Somalia', 'willbe', '2023-01-23 10:15:43', '2023-01-23 14:47:25'),
(18, 'Algeria', 'modi', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(19, 'Turkey', 'aut', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(20, 'Cayman Islands', 'numquam', '2023-01-23 10:15:43', '2023-01-23 10:15:43'),
(21, 'RDC', 'kinshasa', '2023-01-23 14:17:06', '2023-01-23 14:17:06'),
(22, 'FAO', 'kinshasa', '2023-01-24 12:39:36', '2023-01-24 12:39:36'),
(23, 'kkkk', 'kkkk', '2023-01-24 13:08:03', '2023-01-24 13:08:03'),
(24, 'france', 'paris', '2023-01-24 13:16:11', '2023-01-24 13:16:11'),
(25, 'cc', 'cc', '2023-01-24 13:17:33', '2023-01-24 13:17:33'),
(26, 'congo', 'brazza', '2023-01-24 13:20:24', '2023-01-24 13:20:24'),
(27, 'congo', 'brazza', '2023-01-24 13:24:00', '2023-01-24 13:24:00'),
(28, 'congo', 'brazza', '2023-01-24 13:24:05', '2023-01-24 13:24:05'),
(29, 'congo', 'brazza', '2023-01-24 13:26:24', '2023-01-24 13:26:24'),
(30, 'congo', 'brazza', '2023-01-24 13:27:25', '2023-01-24 13:27:25'),
(31, 'congo', 'brazza', '2023-01-24 13:28:34', '2023-01-24 13:28:34'),
(32, 'salomon', 'willbe', '2023-01-24 13:30:26', '2023-01-24 13:30:26'),
(33, 'chine', 'pekin', '2023-01-24 13:32:08', '2023-01-24 13:32:08'),
(34, 'nj', 'z', '2023-01-24 13:33:27', '2023-01-24 13:33:27'),
(35, 'belgique', 'bruxell', '2023-01-25 07:16:36', '2023-01-25 07:16:36'),
(36, 'Cote d\'Ivoire', 'excepturi', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(37, 'GHANA', 'Acra', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(38, 'Yemen', 'illum', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(39, 'Myanmar', 'laborum', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(40, 'South Georgia and the South Sandwich Islands', 'totam', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(41, 'Reunion', 'saepe', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(42, 'Dominica', 'sunt', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(43, 'Swaziland', 'enim', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(44, 'Canada', 'iure', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(45, 'Saint Pierre and Miquelon', 'tempore', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(46, 'China', 'assumenda', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(47, 'Taiwan', 'aspernatur', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(48, 'Greece', 'est', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(49, 'Montenegro', 'voluptatem', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(50, 'United States Minor Outlying Islands', 'est', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(51, 'Bulgaria', 'ratione', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(52, 'Somalia', 'willbe', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(53, 'Algeria', 'modi', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(54, 'Turkey', 'aut', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(55, 'Cayman Islands', 'numquam', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(56, 'RDC', 'kinshasa', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(57, 'FAO', 'kinshasa', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(58, 'kkkk', 'kkkk', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(59, 'france', 'paris', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(60, 'cc', 'cc', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(61, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(62, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(63, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(64, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(65, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(66, 'congo', 'brazza', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(67, 'salomon', 'willbe', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(68, 'chine', 'pekin', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(69, 'nj', 'z', '2023-01-25 12:27:35', '2023-01-25 12:27:35'),
(70, 'belgique', 'bruxell', '2023-01-25 12:27:35', '2023-01-25 12:27:35');

-- --------------------------------------------------------

--
-- Structure de la table `pays_region`
--

DROP TABLE IF EXISTS `pays_region`;
CREATE TABLE IF NOT EXISTS `pays_region` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pays_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `adhesion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pays_region_pays_id_foreign` (`pays_id`),
  KEY `pays_region_region_id_foreign` (`region_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays_region`
--

INSERT INTO `pays_region` (`id`, `pays_id`, `region_id`, `adhesion`, `created_at`, `updated_at`) VALUES
(1, 31, 27, '2023-01-20', NULL, NULL),
(2, 31, 26, '2023-01-15', NULL, NULL),
(3, 31, 25, '2023-02-05', NULL, NULL),
(4, 32, 27, '2023-01-26', NULL, NULL),
(5, 32, 25, '2023-01-28', NULL, NULL),
(6, 33, 27, '2023-01-29', NULL, NULL),
(7, 33, 20, '2023-01-28', NULL, NULL),
(8, 34, 26, '2023-01-28', NULL, NULL),
(9, 35, 27, '2023-01-21', NULL, NULL),
(10, 35, 26, '2023-01-13', NULL, NULL),
(11, 35, 25, '2023-01-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'salomon@gmail.com', '959d5ae042903f4abecf5e580eb96b964c057a93a8fcdb7c7d57c17ef9c734e9', '[\"*\"]', NULL, '2023-01-25 09:00:26', '2023-01-25 09:00:26'),
(2, 'App\\Models\\User', 1, 'salomon@gmail.com', '61cf1e85f7753518f88d770d8232d7978db547b6e34e9d2a4f747d74f8b23b00', '[\"*\"]', '2023-01-25 09:11:01', '2023-01-25 09:03:03', '2023-01-25 09:11:01'),
(3, 'App\\Models\\User', 1, 'salomon@gmail.com', '79f365e691df8d77821da3452e8dacc6e17656a507b52360e4889dfb6871df51', '[\"*\"]', '2023-01-25 09:20:12', '2023-01-25 09:19:01', '2023-01-25 09:20:12'),
(4, 'App\\Models\\User', 1, 'salomon@gmail.com', 'e4043dc89bf644e7fccef94f4ede24699e7d679594e9cddfd7e2a52c67b3b638', '[\"*\"]', '2023-01-25 09:58:12', '2023-01-25 09:44:33', '2023-01-25 09:58:12');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, 'cool', '2023-01-24 13:40:51', '2023-01-24 14:59:27', '2023-01-24 14:59:27'),
(27, 'Afrique de l\'ouest', '2023-01-24 12:34:16', '2023-01-24 12:34:16', NULL),
(26, 'Afrique central', '2023-01-24 12:33:57', '2023-01-24 12:33:57', NULL),
(25, 'Afrique du sud', '2023-01-24 12:17:59', '2023-01-24 12:17:59', NULL),
(19, 'Afrique du nord', '2023-01-22 22:08:12', '2023-01-24 12:17:21', NULL),
(20, 'Afrique de l\'est', '2023-01-22 22:08:12', '2023-01-24 12:17:38', NULL),
(24, 'RDC', '2023-01-24 09:59:50', '2023-01-24 11:50:09', '2023-01-24 11:50:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'salomon', 'salomon@gmail.com', NULL, '$2y$10$Q/z/cBW0.A47DKOIwPWJOeyHEq86t7cQDJPSTfVKPgABMdDfoqrrW', NULL, '2023-01-23 12:16:35', '2023-01-23 12:16:35', 1),
(2, 'king', 'king@gmail.com', NULL, '$2y$10$UzQm6OMUecG010P245fj3.PwLaC33lygRHd2IVWhM5ZeXEq7Le06G', NULL, '2023-01-25 13:46:07', '2023-01-25 13:46:07', 0),
(3, 'king', 'kin@gmail.com', NULL, '$2y$10$FLwQdvZLar.qLeR83Vtgw.4Tlv9tIzPoMxNaYTIPOt2jeJeIWa29O', NULL, '2023-06-20 01:10:49', '2023-06-20 01:10:49', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
