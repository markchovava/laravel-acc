-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 03:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_africacc`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `landscape` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `name`, `slug`, `priority`, `description`, `portrait`, `landscape`, `created_at`, `updated_at`) VALUES
(6, 2, 'Zimbabwe', 'zimbabwe', 7, 'Zimbabwe', 'assets/img/country/sector_p202448406.jpg', 'assets/img/country/sector_l202448202448236.jpg', '2024-08-26 13:48:38', '2024-08-26 13:48:38'),
(7, 2, 'Angola', 'Angola', 2, 'Angola', 'assets/img/country/sector_p202454757.jpg', 'assets/img/country/sector_l202454202454655.jpg', '2024-08-26 13:54:29', '2024-08-26 13:54:29'),
(8, 2, 'Gabon', 'gabon', 1, 'Gabon', 'assets/img/country/sector_p202424691.jpg', 'assets/img/country/sector_l202424202424538.jpg', '2024-08-28 11:24:22', '2024-08-28 11:24:22'),
(9, 2, 'Central African Republic', 'central-african-republic', 2, 'Central African Republic', 'assets/img/country/sector_p202425492.jpg', 'assets/img/country/sector_l202425202425568.jpg', '2024-08-28 11:25:18', '2024-08-28 11:25:18'),
(10, 2, 'Chad', 'chad', 3, 'Chad', 'assets/img/country/sector_p202425446.jpg', 'assets/img/country/sector_l202425202425697.jpg', '2024-08-28 11:25:51', '2024-08-28 11:25:51'),
(11, 2, 'Guinea-Bisau', 'guinea-bissau', 5, 'Guinea-Bisau', 'assets/img/country/sector_p202426425.jpg', 'assets/img/country/sector_l202426202426855.jpg', '2024-08-28 11:26:45', '2024-08-28 11:26:45'),
(12, 2, 'Democratic Republic of Congo', 'drc', 5, 'Democratic Republic of Congo', 'assets/img/country/sector_p202427580.jpg', 'assets/img/country/sector_l202427202427245.jpg', '2024-08-28 11:27:42', '2024-08-28 11:27:42'),
(13, 2, 'Equatorial Guinea', 'equatorial-guinea', 1, 'Equatorial Guinea', 'assets/img/country/sector_p202428349.jpg', 'assets/img/country/sector_l202428202428318.jpg', '2024-08-28 11:28:34', '2024-08-28 11:28:34'),
(14, 2, 'Sierra Leone', 'sierra-leone', 12, 'Sierra Leone', 'assets/img/country/sector_p202430819.jpg', 'assets/img/country/sector_l202430202430923.jpg', '2024-08-28 11:30:18', '2024-08-28 11:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_23_110834_create_sectors_table', 1),
(6, '2024_08_23_110842_create_countries_table', 1),
(7, '2024_08_23_110853_create_opportunities_table', 1),
(8, '2024_08_23_110904_create_opportunity_sectors_table', 1),
(9, '2024_08_23_122013_create_opportunity_images_table', 2),
(10, '2024_08_26_163353_create_roles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `expected_return` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunities`
--

INSERT INTO `opportunities` (`id`, `user_id`, `country_id`, `name`, `slug`, `priority`, `status`, `description`, `short_description`, `amount`, `expected_return`, `created_at`, `updated_at`) VALUES
(8, 2, 10, 'Construction of multifunctional farms', 'op', 1, 'Processing', 'Grain farming and livestock rearing are sectors that are under developed in the country. Build Operate and Transfer model is the preferred model.', 'Construction of multi-functional farms in 4 districts', 8000000, 10000000, '2024-08-28 06:43:42', '2024-08-28 11:35:28'),
(9, 2, 10, 'Construction of a Dairy Complex', 'construction-of-a-dairy-complex', 4, 'Processing', 'Chad imports 10000tons of dairy products annually. Regardless of the fact that the weather is appropriate for diary production- local product is very low and characterised by a variety of small players- A ready local market and potential export to neighbouring countries characterises this investment opportunity.', 'A dairy complex needs to be built to supply 30% of the countries dairy requirements.', 1500000, 10000000, '2024-08-28 08:32:14', '2024-08-28 11:33:34'),
(10, 2, 10, 'Setup an Oil Refinery', 'setup-an-oil-refinery', 2, 'Processing', 'Chad is now a great producer of crude oil. Except for the new oil refinery in Nigeria setup by Dangote- there is no other significant sized oil refinery in Africa. The market is too big to fulfil and oil will remain a major source of energy for at least the next 50 years. Invest in an Oil Refinery and reap the rewards.', 'Oil Refinery setup', 50000000, 100000000, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(11, 2, 11, 'An offer of Cashew Nuts for export', 'an-offer-of-cashew-nuts-for-export', 6, 'Processing', 'The cashew nuts are export quality and are going for $800 per ton. Compared to international prices – consistent supply is available for a long term contract. Samples of the nuts can be provided as well. This is a great investment opportunity that is easy to implement with quick', 'Non GMO high quality pre-screened and pre-packed cashew nuts are available export.', 8000000, 40000000, '2024-08-28 11:40:43', '2024-08-28 11:41:23'),
(13, 2, 12, 'Creation of a National Airline', 'creation-of-a-national-airline', 3, 'Processing', 'Consultation – provision of detailed requirements for the setup of a national airline.  The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 3000000, 4000000, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(14, 2, 13, 'Creation of a National Airline', 'creation-of-a-national-airline', 2, 'Processing', 'Consultation – provision of detailed requirements for the setup of a national airline. Registering the airline internationally. Implementation – provision of aircrafts for leasing or outright purchase. Provision of other requirements for the airline to become operational and internationally recognised.', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 300000, 700000, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(15, 2, 8, 'Construction of 10 health centres', 'construction-of-10-health-centres', 5, 'Processing', 'The project is NGO funded and in partnership with the government. An investor with prior experience in the Health sector is preferred.', 'The investor is required to construct 10 health facilities as well as purchase the health equipment.', 11500000, 20000000, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(16, 2, 11, 'Creation of a National Airline', 'creation-of-a-national-airline', 6, 'Processing', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 1000000, 3000000, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(17, 2, 14, 'Supply of an aircraft', 'supply-of-an-aircraft', 1, 'Completed', 'An investor is sought after that will supply an aircraft to operate on the given routes on a long term lease. The option to sell the aircraft outright on a rent to own scheme is negotiable. Maintenance services of the aircraft are an essential part of the deal. A straightforward investment opportunity not to miss.', 'An aircraft is required to operate between Freetown-London, Freetown – Bissau and Lisbon-London', 2000000, 10000020, '2024-08-28 12:01:28', '2024-08-29 09:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity_images`
--

CREATE TABLE `opportunity_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `opportunity_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunity_images`
--

INSERT INTO `opportunity_images` (`id`, `image`, `user_id`, `opportunity_id`, `created_at`, `updated_at`) VALUES
(9, 'assets/img/opportunity/opportunity_202408012254.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(10, 'assets/img/opportunity/opportunity_202408015098.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(11, 'assets/img/opportunity/opportunity_202408012917.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(12, 'assets/img/opportunity/opportunity_202408019599.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(13, 'assets/img/opportunity/opportunity_202408011761.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(14, 'assets/img/opportunity/opportunity_202408018590.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(15, 'assets/img/opportunity/opportunity_202408012136.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(16, 'assets/img/opportunity/opportunity_202408015316.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(17, 'assets/img/opportunity/opportunity_202408015213.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(18, 'assets/img/opportunity/opportunity_202408014930.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(19, 'assets/img/opportunity/opportunity_202408017447.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(20, 'assets/img/opportunity/opportunity_202408011972.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(21, 'assets/img/opportunity/opportunity_202408019747.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(22, 'assets/img/opportunity/opportunity_202408013000.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(23, 'assets/img/opportunity/opportunity_202408018459.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(24, 'assets/img/opportunity/opportunity_20240801938.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(29, 'assets/img/opportunity/opportunity_202408014504.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(30, 'assets/img/opportunity/opportunity_202408014007.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(31, 'assets/img/opportunity/opportunity_202408015463.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(32, 'assets/img/opportunity/opportunity_202408013506.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(33, 'assets/img/opportunity/opportunity_202408014327.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(34, 'assets/img/opportunity/opportunity_202408016524.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(35, 'assets/img/opportunity/opportunity_202408015442.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(36, 'assets/img/opportunity/opportunity_202408011439.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(37, 'assets/img/opportunity/opportunity_202408017472.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(38, 'assets/img/opportunity/opportunity_202408019929.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(39, 'assets/img/opportunity/opportunity_202408016095.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(40, 'assets/img/opportunity/opportunity_202408018063.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(41, 'assets/img/opportunity/opportunity_202408013320.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(42, 'assets/img/opportunity/opportunity_202408017421.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(43, 'assets/img/opportunity/opportunity_202408011866.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(44, 'assets/img/opportunity/opportunity_202408017553.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(47, 'assets/img/opportunity/opportunity_202408026972.jpg', 2, 17, '2024-08-28 12:01:28', '2024-08-28 12:01:28'),
(48, 'assets/img/opportunity/opportunity_20240802494.jpg', 2, 17, '2024-08-28 12:01:28', '2024-08-28 12:01:28'),
(49, 'assets/img/opportunity/opportunity_202408099037.jpg', 2, 17, '2024-08-29 07:34:25', '2024-08-29 07:34:25'),
(50, 'assets/img/opportunity/opportunity_20240809226.jpg', 2, 17, '2024-08-29 07:34:26', '2024-08-29 07:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity_sectors`
--

CREATE TABLE `opportunity_sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opportunity_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunity_sectors`
--

INSERT INTO `opportunity_sectors` (`id`, `opportunity_id`, `sector_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 8, 4, 2, '2024-08-28 10:25:44', '2024-08-28 10:25:44'),
(9, 9, 4, 2, '2024-08-28 10:39:58', '2024-08-28 10:39:58'),
(11, 17, 2, 2, '2024-08-28 15:17:55', '2024-08-28 15:17:55'),
(12, 16, 2, 2, '2024-08-28 15:18:21', '2024-08-28 15:18:21'),
(13, 15, 5, 2, '2024-08-28 15:24:54', '2024-08-28 15:24:54'),
(14, 14, 2, 2, '2024-08-28 15:25:28', '2024-08-28 15:25:28'),
(15, 11, 4, 2, '2024-08-28 15:25:50', '2024-08-28 15:25:50'),
(16, 10, 4, 2, '2024-08-28 15:26:26', '2024-08-28 15:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 2, 'cho@email.com', '5041b360d45a4e8f40e49e44c8e8cf072dd1c6ef6c62b62915b47521322c687c', '[\"*\"]', '2024-08-29 09:23:31', NULL, '2024-08-24 12:28:08', '2024-08-29 09:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `name`, `slug`, `level`, `created_at`, `updated_at`) VALUES
(1, 2, 'Admin', 'admin', 1, '2024-08-26 15:08:51', '2024-08-26 15:13:13'),
(3, 2, 'Moderator', 'moderator', 3, '2024-08-26 15:16:48', '2024-08-26 15:16:48'),
(4, 2, 'Customer', 'cusotmer', 4, '2024-08-26 15:17:06', '2024-08-26 15:17:06'),
(5, 2, 'Manager', 'manager', 2, '2024-08-26 15:17:33', '2024-08-26 15:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `landscape` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `user_id`, `name`, `description`, `priority`, `portrait`, `landscape`, `slug`, `created_at`, `updated_at`) VALUES
(2, 2, 'Aviation', 'Aviation', 1, 'assets/img/sector/sector_p202415150.jpg', 'assets/img/sector/sector_l202425202425682.jpg', 'aviation', '2024-08-28 11:15:38', '2024-08-28 11:15:38'),
(4, 2, 'Agriculture', 'Agriculture', 4, 'assets/img/sector/sector_p202408878.jpg', 'assets/img/sector/sector_l202408156.jpg', 'agriculture', '2024-08-28 11:17:40', '2024-08-28 11:17:40'),
(5, 2, 'Health', 'Health', 2, 'assets/img/sector/sector_p202416247.jpg', 'assets/img/sector/sector_l202416202416182.jpg', 'health', '2024-08-28 11:16:37', '2024-08-28 11:16:37'),
(6, 2, 'Mining', 'Mining', 3, 'assets/img/sector/sector_p202417672.jpg', 'assets/img/sector/sector_l202417202417384.jpg', 'mining', '2024-08-28 11:17:25', '2024-08-28 11:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `country` longtext DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_level`, `name`, `gender`, `email`, `phone`, `address`, `country`, `code`, `password`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 4, 'Chovava', NULL, 'cho@email.com', NULL, NULL, NULL, '12345678', '$2y$12$1KI5dZmvz3KXYpMKoSJxs.YNKsM/.8A1hYoGqJ9rad4HR.Y7eg5Ry', NULL, NULL, NULL, '2024-08-23 14:53:08', '2024-08-23 14:53:08'),
(3, 3, 'Mark Chovava', 'Male', 'markchovava@gmail.com', '0782210021', '14949  Tynwald South, Harare, Zimbabwe', 'South Africa', 'JjuiaDYp', '$2y$12$x8N6nH1J4re/3njS6G.J9.MS4t0KRElVSV1djkvA0QAXvwg9XF5NC', 'assets/img/user/sector_p202457650.jpg', NULL, NULL, '2024-08-27 08:15:22', '2024-08-27 14:02:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunity_images`
--
ALTER TABLE `opportunity_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunity_sectors`
--
ALTER TABLE `opportunity_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `opportunity_images`
--
ALTER TABLE `opportunity_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `opportunity_sectors`
--
ALTER TABLE `opportunity_sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
