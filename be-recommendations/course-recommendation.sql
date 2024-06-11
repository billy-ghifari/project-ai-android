-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2024 at 03:41 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course-recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2024_06_07_041934_create_platform', 1),
(24, '2024_06_07_073239_create_ratings_platform', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'b8417834300782d37e0eed98a49ce298e095558f86ae2693cfaa7bb930660e41', '[\"*\"]', NULL, NULL, '2024-06-07 01:57:37', '2024-06-07 01:57:37'),
(2, 'App\\Models\\User', 1, 'auth_token', '60cbde279c8025c00deca9e8e2a521340777651eae22b1f5b877d3f560dcef12', '[\"*\"]', NULL, NULL, '2024-06-07 02:00:38', '2024-06-07 02:00:38'),
(3, 'App\\Models\\User', 1, 'auth_token', '9d4b573c6565f7290f7cf7fc100fe3fa18cd6cfd60845fd7ea4b0c836159bb5a', '[\"*\"]', '2024-06-07 02:09:01', NULL, '2024-06-07 02:05:21', '2024-06-07 02:09:01'),
(4, 'App\\Models\\User', 1, 'auth_token', '0b666a8b3df8782267bbf4b222e1dccdbe7bd0805ba732ad51dba65c6f9917e3', '[\"*\"]', '2024-06-07 02:27:55', NULL, '2024-06-07 02:14:20', '2024-06-07 02:27:55'),
(5, 'App\\Models\\User', 1, 'auth_token', '70c87912ab718fbdbabc2e17f16c2cd5720603a7a125f4b1d89d30b6ee11fa9d', '[\"*\"]', '2024-06-07 02:36:52', NULL, '2024-06-07 02:31:50', '2024-06-07 02:36:52'),
(6, 'App\\Models\\User', 1, 'auth_token', '0c8493520e9a1391eca1590f2727630f485f241d99551cc612bcdaf7d9435666', '[\"*\"]', '2024-06-07 02:46:16', NULL, '2024-06-07 02:42:11', '2024-06-07 02:46:16'),
(7, 'App\\Models\\User', 1, 'auth_token', 'e6c229a3b6377814fc9fddf861375f72d9feab6df9922a2bab9c7f92097b5711', '[\"*\"]', '2024-06-07 03:08:38', NULL, '2024-06-07 03:07:29', '2024-06-07 03:08:38'),
(9, 'App\\Models\\User', 1, 'auth_token', 'edf06262e08f6b9adc3d5194b8522471e2bf3c3e7f43e5ec424de0db7931621b', '[\"*\"]', '2024-06-10 20:29:02', NULL, '2024-06-07 03:46:25', '2024-06-10 20:29:02'),
(10, 'App\\Models\\User', 21, 'auth_token', '4eabb3fd0cac87743729faec39574a5c0b926391e84176249267bbd4f375506a', '[\"*\"]', NULL, NULL, '2024-06-07 04:47:51', '2024-06-07 04:47:51'),
(11, 'App\\Models\\User', 21, 'auth_token', '8acd6a57aac26d8c6bdf7c39124e5071d0f09b0d2dc060a52650064ae290bb26', '[\"*\"]', '2024-06-08 22:41:24', NULL, '2024-06-07 21:21:05', '2024-06-08 22:41:24'),
(12, 'App\\Models\\User', 21, 'auth_token', 'c34ea46e78c1cf94d439f7ffd4737ca6b3676c3db523de046ae603d11e914e37', '[\"*\"]', '2024-06-08 05:17:37', NULL, '2024-06-08 05:15:31', '2024-06-08 05:17:37'),
(13, 'App\\Models\\User', 21, 'auth_token', '08ca644357f1544af042133ee36c40cae9587db4de1693838375310200897bb5', '[\"*\"]', '2024-06-10 19:45:26', NULL, '2024-06-08 18:33:56', '2024-06-10 19:45:26'),
(14, 'App\\Models\\User', 21, 'auth_token', 'ccb95fa0acfb750bd651f7b562a2efb898a789695ff5e9f7ae84720a7f5b2067', '[\"*\"]', '2024-06-10 19:43:58', NULL, '2024-06-09 23:09:03', '2024-06-10 19:43:58'),
(15, 'App\\Models\\User', 21, 'auth_token', '97f65d82a74263a5a13b3befb957bd11400e54b7c3a6112c98ee2f3277816c8a', '[\"*\"]', NULL, NULL, '2024-06-10 17:02:10', '2024-06-10 17:02:10'),
(16, 'App\\Models\\User', 21, 'auth_token', 'f5ab164561937415170b0e9dce7a1b82ee9f4266f1d988eb4b6f25909bcd1322', '[\"*\"]', NULL, NULL, '2024-06-10 17:18:34', '2024-06-10 17:18:34'),
(17, 'App\\Models\\User', 21, 'auth_token', 'b8d74f4844317535d9dfeacfa2a935797623476ab60f1200b6f180571fbf5f97', '[\"*\"]', NULL, NULL, '2024-06-10 17:21:32', '2024-06-10 17:21:32'),
(18, 'App\\Models\\User', 21, 'auth_token', '4d0c46449c043b146ddc9692378569942f283ef5e64e047d8f8458c93a28b968', '[\"*\"]', NULL, NULL, '2024-06-10 17:22:19', '2024-06-10 17:22:19'),
(19, 'App\\Models\\User', 21, 'auth_token', '9db792915353056b36801b189c56160e672b21c4b096d913d7bf202f264464fb', '[\"*\"]', NULL, NULL, '2024-06-10 17:23:00', '2024-06-10 17:23:00'),
(20, 'App\\Models\\User', 21, 'auth_token', 'ff2d9f2c0f5a335520d2f416f9b9f51298e60f80a132b60bf79df19ff9db62c9', '[\"*\"]', NULL, NULL, '2024-06-10 17:28:25', '2024-06-10 17:28:25'),
(21, 'App\\Models\\User', 21, 'auth_token', '4151c182bd443100c6c39ac254ed8b918c4ef4696ae6d695fc35bc92e3bfe1af', '[\"*\"]', NULL, NULL, '2024-06-10 17:32:07', '2024-06-10 17:32:07'),
(22, 'App\\Models\\User', 21, 'auth_token', '3a9616769066b0af0074f8bdc427d0bb8c08eb5ceb21abcee7aa232b7bbec69e', '[\"*\"]', NULL, NULL, '2024-06-10 17:50:31', '2024-06-10 17:50:31'),
(23, 'App\\Models\\User', 21, 'auth_token', 'f3ab505c79b953d1bb559221e4878421199fdb7ecc3471a26924d78bcde4683a', '[\"*\"]', NULL, NULL, '2024-06-10 17:51:20', '2024-06-10 17:51:20'),
(24, 'App\\Models\\User', 21, 'auth_token', '9ad4058df41f2dd818d1a630f01ca983d5df9e7d2df5e6e33c841e762dc9d62a', '[\"*\"]', NULL, NULL, '2024-06-10 17:55:32', '2024-06-10 17:55:32'),
(25, 'App\\Models\\User', 21, 'auth_token', 'e1f5ce3243b0472614044338783305382a256812c7e8d7c995b4c1ccd8869bac', '[\"*\"]', NULL, NULL, '2024-06-10 17:58:08', '2024-06-10 17:58:08'),
(26, 'App\\Models\\User', 21, 'auth_token', '7368ceecf79e3ed5ae5253543b6e94d755836f754016ee9a7f98b53e5e7f66bd', '[\"*\"]', NULL, NULL, '2024-06-10 17:59:53', '2024-06-10 17:59:53'),
(27, 'App\\Models\\User', 21, 'auth_token', '255edac357ac0dc0a094511dbeee773709e42a4a5e3713deff604bc50107ace5', '[\"*\"]', NULL, NULL, '2024-06-10 18:06:56', '2024-06-10 18:06:56'),
(28, 'App\\Models\\User', 21, 'auth_token', '24fd0b7d4aa27f0b80aceee49de51779e1a3359f0fa7fd4e393cbf66e3045b0d', '[\"*\"]', NULL, NULL, '2024-06-10 19:34:40', '2024-06-10 19:34:40'),
(29, 'App\\Models\\User', 21, 'auth_token', '990f12e6f0e78d7b28a5f0a3d5a0b159faf9faf98fcf04970d5c6672e4ec6b1a', '[\"*\"]', NULL, NULL, '2024-06-10 19:34:46', '2024-06-10 19:34:46'),
(30, 'App\\Models\\User', 21, 'auth_token', '0a9959da1106fb882f7b6223b1d7e883f7d27cb5437467c5b7b79542e5da60c5', '[\"*\"]', NULL, NULL, '2024-06-10 19:37:29', '2024-06-10 19:37:29'),
(31, 'App\\Models\\User', 21, 'auth_token', '01572ef74c95521b6effa7cfa707327ddda0f9cf098ed1117a313a53bb698edb', '[\"*\"]', '2024-06-10 19:42:11', NULL, '2024-06-10 19:42:06', '2024-06-10 19:42:11'),
(32, 'App\\Models\\User', 1, 'auth_token', '0e7e8beb5bd23cb436ee3b45fb5918d9dbb4dff0987c79657db517e9a5864d71', '[\"*\"]', '2024-06-10 19:46:55', NULL, '2024-06-10 19:45:40', '2024-06-10 19:46:55'),
(33, 'App\\Models\\User', 2, 'auth_token', 'e94d41cd2a3849be5ab58cf7cc90e047cda677dc378966a3a047f934459e2e6d', '[\"*\"]', '2024-06-10 19:47:52', NULL, '2024-06-10 19:47:25', '2024-06-10 19:47:52'),
(34, 'App\\Models\\User', 2, 'auth_token', '1a9372c83f8135089f6e042c851f7f397730019916ce1e8515a942a1d36ae5b1', '[\"*\"]', NULL, NULL, '2024-06-10 19:48:35', '2024-06-10 19:48:35'),
(35, 'App\\Models\\User', 2, 'auth_token', '306664ed077de487709aea1c068dacc8d45f630f6ecef8a48aeb04c470801686', '[\"*\"]', '2024-06-10 19:49:28', NULL, '2024-06-10 19:49:25', '2024-06-10 19:49:28'),
(36, 'App\\Models\\User', 2, 'auth_token', '42537883aa87c6238532fcf27b5f641587a19f6d0fd5bc055a2f0f4aec368fb0', '[\"*\"]', '2024-06-10 19:50:46', NULL, '2024-06-10 19:50:43', '2024-06-10 19:50:46'),
(37, 'App\\Models\\User', 2, 'auth_token', '83774f668882cf0c0ff970aaf83aaca96ca971496aaa3fec72062549f8492108', '[\"*\"]', '2024-06-10 19:51:48', NULL, '2024-06-10 19:51:45', '2024-06-10 19:51:48'),
(38, 'App\\Models\\User', 2, 'auth_token', 'f6a793809f270e71214d0319aa81535141736a08ae458fd82b3be7ce4576bb12', '[\"*\"]', '2024-06-10 20:16:59', NULL, '2024-06-10 20:16:56', '2024-06-10 20:16:59'),
(39, 'App\\Models\\User', 2, 'auth_token', 'd8eac97d35df6c17587c5c0c831a7ad3eda0810f566ccc32b96ac1ccb7afdfcf', '[\"*\"]', '2024-06-10 20:19:12', NULL, '2024-06-10 20:19:07', '2024-06-10 20:19:12'),
(40, 'App\\Models\\User', 2, 'auth_token', 'b7f9f91a0e604ca063650bb5d7ca0fc4894daa0c931cd126662b04a2d32222e4', '[\"*\"]', '2024-06-10 20:20:26', NULL, '2024-06-10 20:20:23', '2024-06-10 20:20:26'),
(41, 'App\\Models\\User', 2, 'auth_token', '397c1ab43a4d66f5d1fd7eb8dd31757e3147cef98ca6389205321211b61421a3', '[\"*\"]', '2024-06-10 20:24:25', NULL, '2024-06-10 20:24:15', '2024-06-10 20:24:25'),
(42, 'App\\Models\\User', 2, 'auth_token', 'c918199a03416d2d7d6035693d10355de81b5d9e3730ba34d5c64e1d91069358', '[\"*\"]', NULL, NULL, '2024-06-10 20:25:33', '2024-06-10 20:25:33'),
(43, 'App\\Models\\User', 2, 'auth_token', '87730bb8fee5492f0421f3926bc36e008aed22b07c74a922a6804b8ac9278fe0', '[\"*\"]', '2024-06-10 20:26:14', NULL, '2024-06-10 20:26:03', '2024-06-10 20:26:14'),
(44, 'App\\Models\\User', 2, 'auth_token', 'efaf0e347c0582539fb5c615bd53b29146cd67a3e325e356976f6c9cc7e6cfea', '[\"*\"]', '2024-06-10 20:35:47', NULL, '2024-06-10 20:35:43', '2024-06-10 20:35:47'),
(45, 'App\\Models\\User', 2, 'auth_token', '7437fb98a2838e7efbf814da5940c6437a18a08d4e35a93f1ed9da0236145be3', '[\"*\"]', '2024-06-10 21:06:35', NULL, '2024-06-10 21:04:16', '2024-06-10 21:06:35'),
(46, 'App\\Models\\User', 2, 'auth_token', 'ce6ffc906add18b76e40e592d779ae70ee73116c57a7666fc0b7ec40665161ea', '[\"*\"]', '2024-06-10 22:47:54', NULL, '2024-06-10 21:12:29', '2024-06-10 22:47:54'),
(47, 'App\\Models\\User', 2, 'auth_token', 'c6baebe6848d36cba921a11c2fa89df591e978306d3c2004cca3dca6e1c38bc7', '[\"*\"]', '2024-06-11 00:53:42', NULL, '2024-06-10 22:48:26', '2024-06-11 00:53:42'),
(48, 'App\\Models\\User', 2, 'auth_token', '549f9149be20ddb1a0e773aeade8c9490e70b23d008aced2078bc8374597d72c', '[\"*\"]', NULL, NULL, '2024-06-11 00:59:10', '2024-06-11 00:59:10'),
(49, 'App\\Models\\User', 2, 'auth_token', 'd5cc9c0d283caba7fb62625652a87600de57b585e8ccddab6137abbe77b2043e', '[\"*\"]', '2024-06-11 02:18:53', NULL, '2024-06-11 00:59:11', '2024-06-11 02:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `uuid`, `platform_name`, `image`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, '082f535f-b17f-4be2-b723-2304180edb9e', 'BuildwithAngga', 'path/to/image1.jpg', 'https://buildwithangga.com', 'Description for BuildwithAngga', '2024-06-07 03:37:10', '2024-06-07 03:37:10'),
(2, '0dda816e-75ef-4d28-862d-3d38be7651d4', 'Udemy', 'path/to/image2.jpg', 'https://udemy.com', 'Description for Udemy', '2024-06-07 03:37:10', '2024-06-07 03:37:10'),
(3, 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 'Coursera', 'path/to/image3.jpg', 'https://coursera.org', 'Description for Coursera', '2024-06-07 03:37:10', '2024-06-07 03:37:10'),
(4, 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 'Dicoding', 'path/to/image4.jpg', 'https://dicoding.com', 'Description for Dicoding', '2024-06-07 03:37:10', '2024-06-07 03:37:10'),
(5, 'f564fc16-bd58-4794-80da-0d4a493048c6', 'Progate', 'path/to/image5.jpg', 'https://progate.com', 'Description for Progate', '2024-06-07 03:37:10', '2024-06-07 03:37:10'),
(6, '4900556b-8b02-4542-b6a2-47d182d43932', 'Codepolitan', 'path/to/image6.jpg', 'https://codepolitan.com', 'Description for Codepolitan', '2024-06-07 03:37:10', '2024-06-07 03:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `ratings_platform`
--

CREATE TABLE `ratings_platform` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik_kursus` int(11) NOT NULL,
  `durasi_kursus` int(11) NOT NULL,
  `biaya_kursus` int(11) NOT NULL,
  `level_kursus` int(11) NOT NULL,
  `fleksibilitas_waktu` int(11) NOT NULL,
  `bahasa_pengantar` int(11) NOT NULL,
  `metode_pembelajaran` int(11) NOT NULL,
  `kualifikasi_dan_reputasi_instruktur` int(11) NOT NULL,
  `kualitas_materi_kursus` int(11) NOT NULL,
  `dukungan_dan_interaksi` int(11) NOT NULL,
  `overall` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings_platform`
--

INSERT INTO `ratings_platform` (`id`, `uuid`, `user_id`, `platform_id`, `topik_kursus`, `durasi_kursus`, `biaya_kursus`, `level_kursus`, `fleksibilitas_waktu`, `bahasa_pengantar`, `metode_pembelajaran`, `kualifikasi_dan_reputasi_instruktur`, `kualitas_materi_kursus`, `dukungan_dan_interaksi`, `overall`, `created_at`, `updated_at`) VALUES
(1, 'd4843248-b146-4e58-a089-f6429ce58c85', '603456cb-024e-4fbf-90fe-c366507b1682', '0dda816e-75ef-4d28-862d-3d38be7651d4', 5, 4, 1, 3, 2, 5, 3, 1, 3, 2, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(2, 'de442f61-e9e7-4c64-a5de-0d8b8bb7f965', '603456cb-024e-4fbf-90fe-c366507b1682', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 3, 3, 5, 5, 3, 3, 3, 1, 3, 1, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(3, 'a5e2559c-4614-4adb-8633-147ab80fa7a5', '603456cb-024e-4fbf-90fe-c366507b1682', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 1, 1, 4, 4, 1, 4, 2, 3, 5, 4, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(4, '67276c9d-ccee-4207-8214-d42210df4634', '603456cb-024e-4fbf-90fe-c366507b1682', 'f564fc16-bd58-4794-80da-0d4a493048c6', 5, 4, 5, 2, 2, 3, 3, 1, 3, 3, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(5, '30c6d7c1-826f-492a-94fc-1efb8b023744', '603456cb-024e-4fbf-90fe-c366507b1682', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, '2024-06-08 20:56:13', '2024-06-10 21:12:48'),
(6, '2afd7586-e9c1-467e-b47e-1ef31563c604', 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', '0dda816e-75ef-4d28-862d-3d38be7651d4', 1, 4, 1, 1, 5, 2, 5, 1, 1, 2, 3, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(7, '1c154ad7-fcbf-46f9-88d7-8ec315c565f2', 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 2, 4, 2, 3, 5, 2, 5, 4, 5, 3, 3, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(8, '8d75bd22-0de9-4063-80c9-1828cb079c30', 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 5, 4, 4, 5, 3, 1, 5, 3, 3, 2, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(9, '56a0e80d-166a-4431-99b8-ef00ee9f101d', 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', 'f564fc16-bd58-4794-80da-0d4a493048c6', 1, 3, 4, 1, 1, 4, 5, 1, 2, 3, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(10, '200ad23c-3db6-4201-bd3b-84ef618b6db7', 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', '4900556b-8b02-4542-b6a2-47d182d43932', 5, 2, 5, 5, 3, 4, 2, 5, 2, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(11, '3b19e2cf-85c5-4a69-af00-1ab92bdb4236', '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', '0dda816e-75ef-4d28-862d-3d38be7651d4', 5, 5, 4, 5, 2, 2, 1, 4, 2, 4, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(12, '03da690a-abf9-476e-9c43-f4b8e239bf2f', '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 5, 1, 1, 4, 3, 4, 2, 5, 4, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(13, 'd4295420-5038-408f-892c-46755d3251b9', '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 3, 2, 2, 5, 2, 5, 4, 2, 3, 1, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(14, '38958886-d73e-40f5-a0f7-2fc652c25b5c', '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 5, 4, 4, 3, 2, 4, 4, 4, 5, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(15, '9c8cfef4-7d92-4c56-919c-86676d57550d', '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 2, 4, 1, 2, 3, 1, 1, 5, 1, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(16, 'ebecd94a-3f69-4d58-bbc2-8a14e0b85ec1', '2909adea-5c1f-4995-a5d4-c3db6688a7fd', '0dda816e-75ef-4d28-862d-3d38be7651d4', 2, 3, 2, 4, 1, 5, 2, 1, 1, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(17, '3799fa7e-56f0-44b7-96a9-150deee7b274', '2909adea-5c1f-4995-a5d4-c3db6688a7fd', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 4, 2, 1, 3, 1, 5, 4, 1, 3, 3, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(18, '3264014a-1bdd-44d3-82ce-a8f52f1f251e', '2909adea-5c1f-4995-a5d4-c3db6688a7fd', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 3, 5, 4, 4, 1, 1, 1, 2, 5, 2, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(19, '7201e11c-5fee-4cda-82c5-7f749daa3f46', '2909adea-5c1f-4995-a5d4-c3db6688a7fd', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 5, 2, 1, 4, 5, 2, 2, 3, 2, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(20, '65deef17-bad5-4f94-ab4a-e5c4959fe71f', '2909adea-5c1f-4995-a5d4-c3db6688a7fd', '4900556b-8b02-4542-b6a2-47d182d43932', 5, 5, 5, 3, 2, 1, 1, 1, 2, 5, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(21, '6d9ce755-ab9f-44a3-8963-f635f1c9c251', '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', '0dda816e-75ef-4d28-862d-3d38be7651d4', 5, 1, 5, 5, 4, 5, 1, 3, 1, 3, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(22, '07e6c20f-473e-4a1f-9dc0-63771d2d4ccb', '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 5, 1, 4, 3, 1, 1, 1, 5, 1, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(23, '15feca06-de93-4090-bbb8-15e7ea035842', '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 4, 1, 3, 4, 4, 4, 5, 3, 2, 2, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(24, 'b1208bf3-06dc-4e0c-8075-6f48ba3cc914', '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', 'f564fc16-bd58-4794-80da-0d4a493048c6', 1, 2, 3, 3, 3, 2, 2, 2, 1, 4, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(25, '3e073f6c-21d7-4dd2-8911-2be141b09fbd', '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 3, 4, 5, 2, 4, 5, 4, 5, 2, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(26, 'e357908f-d2e1-4ff0-8bb9-76c7e93dfb16', 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', '0dda816e-75ef-4d28-862d-3d38be7651d4', 4, 2, 1, 3, 3, 5, 5, 2, 3, 2, 3, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(27, '6ea07b27-1554-4f53-ba15-3b7fb9f917d0', 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 2, 3, 2, 3, 1, 5, 3, 1, 3, 2, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(28, 'd2b52f79-c886-42f0-a707-8f6086d1fbe9', 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 1, 1, 3, 3, 5, 2, 4, 3, 5, 4, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(29, 'c8550e99-6099-4271-8220-7cb2fc3860d2', 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', 'f564fc16-bd58-4794-80da-0d4a493048c6', 1, 1, 5, 1, 5, 5, 3, 1, 1, 3, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(30, 'd2504231-19e7-4c95-a903-61f1ca9aec48', 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 3, 5, 4, 4, 3, 4, 3, 5, 4, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(31, 'f7345355-af35-4ec9-9d50-2316f512557c', '5d5beae6-d123-40d1-979a-84604b825780', '0dda816e-75ef-4d28-862d-3d38be7651d4', 4, 5, 5, 1, 1, 2, 5, 1, 3, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(32, '31533827-6375-4ec6-b112-beeeded7e0d4', '5d5beae6-d123-40d1-979a-84604b825780', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 5, 5, 1, 1, 3, 3, 1, 3, 5, 4, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(33, 'bf719ff1-5492-4cde-b816-aee6d05f7ebf', '5d5beae6-d123-40d1-979a-84604b825780', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 1, 1, 4, 1, 4, 2, 2, 1, 2, 5, 3, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(34, '542d7de3-692a-4124-934f-45e10ace4c23', '5d5beae6-d123-40d1-979a-84604b825780', 'f564fc16-bd58-4794-80da-0d4a493048c6', 5, 1, 1, 4, 2, 5, 1, 4, 4, 1, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(35, 'b177ad8e-98a5-477d-8a36-547544dc22f0', '5d5beae6-d123-40d1-979a-84604b825780', '4900556b-8b02-4542-b6a2-47d182d43932', 1, 2, 4, 5, 5, 1, 5, 1, 5, 3, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(36, '243cd8a2-0918-4125-82c7-6da23fb3250e', 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', '0dda816e-75ef-4d28-862d-3d38be7651d4', 1, 3, 1, 5, 5, 2, 1, 2, 4, 3, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(37, '5c726ddc-96a9-4462-ba57-3da99a063381', 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 3, 4, 4, 1, 3, 4, 5, 3, 4, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(38, '8bf2481c-5388-410b-897d-b16a0627ca16', 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 5, 5, 4, 4, 5, 2, 4, 3, 2, 4, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(39, '13ed5c48-379f-421e-971e-418d19628c52', 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', 'f564fc16-bd58-4794-80da-0d4a493048c6', 5, 3, 1, 5, 1, 3, 4, 1, 5, 4, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(40, '53cd16ea-c58c-4842-a44b-d743ff1d855c', 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', '4900556b-8b02-4542-b6a2-47d182d43932', 2, 3, 2, 2, 5, 3, 1, 5, 4, 1, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(41, 'e2b7dc5b-e853-4027-a0bd-5e568829feda', 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', '0dda816e-75ef-4d28-862d-3d38be7651d4', 2, 1, 3, 5, 2, 5, 3, 5, 5, 5, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(42, '279210d1-ffc6-4910-8983-93f73f9c34a8', 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 2, 2, 2, 1, 2, 5, 5, 4, 2, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(43, 'a632199c-8d61-4861-b15a-753234be57bf', 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 4, 1, 3, 3, 1, 5, 5, 5, 4, 2, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(44, '2bfae6eb-df93-4f2f-b25a-1c2425417573', 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', 'f564fc16-bd58-4794-80da-0d4a493048c6', 2, 1, 2, 3, 5, 1, 5, 1, 1, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(45, '29049ba2-767e-4535-a629-95613f2ba6c0', 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', '4900556b-8b02-4542-b6a2-47d182d43932', 2, 5, 3, 2, 4, 2, 2, 1, 4, 5, 5, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(46, 'cdb27847-ead7-4a1c-ad79-d9b5ee9e2ff3', '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', '0dda816e-75ef-4d28-862d-3d38be7651d4', 5, 1, 5, 1, 2, 2, 2, 5, 4, 4, 3, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(47, '28645f4f-3b03-43c3-8f7a-52f527cf2e09', '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 3, 1, 5, 3, 2, 1, 1, 3, 5, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(48, '48499ab2-2f76-4781-88e0-4560fbdace6f', '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 5, 3, 5, 5, 3, 2, 5, 3, 2, 1, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(49, '01e01096-16d0-4894-b738-7e4dfdca2161', '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', 'f564fc16-bd58-4794-80da-0d4a493048c6', 2, 4, 4, 4, 1, 4, 1, 1, 4, 2, 4, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(50, 'cf41fbae-b946-4a50-8dba-8b1e36520a85', '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', '4900556b-8b02-4542-b6a2-47d182d43932', 2, 5, 4, 1, 5, 4, 1, 3, 4, 5, 2, '2024-06-08 20:56:13', '2024-06-08 20:56:13'),
(51, 'ba8ea1c4-4dc1-4bd1-b431-0656f5a06a98', 'b421f13f-d0cb-4442-b327-ee22bf6d8535', '0dda816e-75ef-4d28-862d-3d38be7651d4', 2, 5, 1, 4, 4, 4, 1, 4, 3, 4, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(52, 'cbfd6517-2840-46ec-a9aa-99dcb6966fb9', 'b421f13f-d0cb-4442-b327-ee22bf6d8535', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 5, 3, 1, 4, 1, 4, 2, 2, 5, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(53, '76a6da17-90a8-4f7e-a3ac-2ecb2f15f6e6', 'b421f13f-d0cb-4442-b327-ee22bf6d8535', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 4, 2, 1, 3, 4, 1, 1, 4, 1, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(54, 'a7a3e155-a952-46a0-9f6d-6bc59fab8931', 'b421f13f-d0cb-4442-b327-ee22bf6d8535', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 5, 1, 2, 4, 4, 1, 2, 2, 5, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(55, '28cc4c54-83bc-4b7e-93cf-556ff4fe4ef7', 'b421f13f-d0cb-4442-b327-ee22bf6d8535', '4900556b-8b02-4542-b6a2-47d182d43932', 1, 4, 3, 2, 5, 1, 2, 3, 1, 2, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(56, '2b006d5f-6302-4aec-bd26-61ce2288a06b', '3176072b-80b4-41ad-b8b9-153fa80a1f13', '0dda816e-75ef-4d28-862d-3d38be7651d4', 5, 1, 4, 1, 5, 5, 5, 3, 4, 2, 5, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(57, '20940dd0-ed31-46b5-a778-b4cab068337e', '3176072b-80b4-41ad-b8b9-153fa80a1f13', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 3, 4, 3, 5, 5, 3, 5, 1, 3, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(58, '4c2b6ee7-4573-4b67-95c8-2ef22c75a954', '3176072b-80b4-41ad-b8b9-153fa80a1f13', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 5, 5, 4, 3, 4, 4, 1, 5, 3, 5, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(59, '313bf3eb-5c7d-474f-a78d-e756f4e682af', '3176072b-80b4-41ad-b8b9-153fa80a1f13', 'f564fc16-bd58-4794-80da-0d4a493048c6', 5, 1, 3, 2, 3, 2, 3, 3, 5, 2, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(60, 'd5f3c757-c7c1-45da-b4b9-49ec22682c9c', '3176072b-80b4-41ad-b8b9-153fa80a1f13', '4900556b-8b02-4542-b6a2-47d182d43932', 1, 5, 5, 2, 3, 4, 3, 3, 3, 3, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(61, 'd4160e77-1fab-4426-b54a-5f01b8762a79', '2a41b770-bb0c-48b4-8171-822cf0273a10', '0dda816e-75ef-4d28-862d-3d38be7651d4', 1, 5, 4, 3, 3, 5, 2, 4, 5, 5, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(62, '54358e15-a44a-49ef-afe6-a06afe21da1a', '2a41b770-bb0c-48b4-8171-822cf0273a10', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 3, 2, 1, 3, 3, 3, 1, 3, 2, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(63, '31b88c3c-a842-4460-ab66-9b3fe04f1200', '2a41b770-bb0c-48b4-8171-822cf0273a10', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 4, 1, 2, 3, 1, 1, 4, 4, 2, 4, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(64, 'f9015e95-7be1-4aa5-ba8d-4e386b352719', '2a41b770-bb0c-48b4-8171-822cf0273a10', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 1, 4, 1, 3, 5, 3, 1, 4, 3, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(65, '83167ffa-e4be-409f-9521-597b42cd946b', '2a41b770-bb0c-48b4-8171-822cf0273a10', '4900556b-8b02-4542-b6a2-47d182d43932', 5, 4, 1, 1, 5, 1, 1, 2, 5, 2, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(66, 'f9ba65f6-89ce-4401-bf6e-c838d1280d0c', 'a2f818da-d6d1-4516-8867-a170a0c33df6', '0dda816e-75ef-4d28-862d-3d38be7651d4', 3, 1, 2, 4, 5, 5, 5, 3, 1, 5, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(67, 'c0f3551a-239a-4fa9-8e68-0d3e3aa54abe', 'a2f818da-d6d1-4516-8867-a170a0c33df6', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 1, 2, 2, 5, 2, 4, 2, 1, 4, 3, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(68, 'f1b93d78-3ac6-460e-9b91-3204a77452e1', 'a2f818da-d6d1-4516-8867-a170a0c33df6', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 4, 2, 5, 4, 3, 4, 1, 4, 2, 5, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(69, '09ef0f41-d80c-47ea-a2e2-9f308a21bf79', 'a2f818da-d6d1-4516-8867-a170a0c33df6', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 5, 4, 4, 5, 1, 2, 1, 3, 5, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(70, '31460ede-9707-4d27-814b-d265de630bc9', 'a2f818da-d6d1-4516-8867-a170a0c33df6', '4900556b-8b02-4542-b6a2-47d182d43932', 4, 2, 3, 2, 3, 1, 4, 1, 4, 2, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(71, 'd4b03515-e6e8-48d2-a93c-b1eaabf55a3b', 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', '0dda816e-75ef-4d28-862d-3d38be7651d4', 2, 3, 3, 5, 5, 2, 5, 5, 5, 5, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(72, '40f51e89-b594-40c5-8dfe-0ee6d70f97ec', 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 5, 2, 5, 4, 4, 4, 5, 3, 4, 4, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(73, '56e11bf4-91f1-4206-822f-4e183a68cc52', 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 1, 1, 2, 2, 4, 5, 3, 2, 3, 1, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(74, '75474010-21c1-4597-bc33-93bc6a2dc5a8', 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', 'f564fc16-bd58-4794-80da-0d4a493048c6', 4, 1, 2, 4, 1, 1, 4, 5, 1, 2, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(75, '102d8dd4-1bf0-48de-a059-78aad5c354d4', 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', '4900556b-8b02-4542-b6a2-47d182d43932', 4, 4, 4, 1, 4, 1, 2, 4, 3, 4, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(76, '2fdb1d56-0b82-4ea9-ba4e-5f29fc055ed5', 'be2b060c-b97b-46d4-81ee-8a027e9fe283', '0dda816e-75ef-4d28-862d-3d38be7651d4', 1, 5, 1, 5, 5, 5, 4, 5, 1, 4, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(77, '911256f0-555f-43bb-8572-1638f395cd00', 'be2b060c-b97b-46d4-81ee-8a027e9fe283', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 3, 5, 1, 3, 5, 5, 3, 4, 5, 5, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(78, 'd165b3c9-200a-4c1d-b2d2-fdf534cc84a7', 'be2b060c-b97b-46d4-81ee-8a027e9fe283', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 2, 3, 4, 4, 4, 2, 1, 3, 4, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(79, 'bd5bd1d5-eb26-4c28-afc4-388c2cd8cfd9', 'be2b060c-b97b-46d4-81ee-8a027e9fe283', 'f564fc16-bd58-4794-80da-0d4a493048c6', 3, 3, 3, 2, 3, 1, 3, 2, 4, 4, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(80, 'ec75d3d5-1e38-4b17-b741-4256ff400570', 'be2b060c-b97b-46d4-81ee-8a027e9fe283', '4900556b-8b02-4542-b6a2-47d182d43932', 4, 4, 1, 1, 5, 2, 1, 3, 5, 2, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(81, 'b74c4175-24e0-4c54-9a9c-bf5e91fc90eb', 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', '0dda816e-75ef-4d28-862d-3d38be7651d4', 3, 2, 4, 3, 5, 1, 4, 1, 5, 2, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(82, '7dc9e9d6-3c75-49ec-bc19-6b463a115c4e', 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 3, 4, 4, 4, 3, 1, 4, 2, 2, 1, 4, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(83, '723419b2-f24e-4ce9-8f6a-bc7ac5314792', 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 2, 5, 1, 2, 4, 4, 3, 3, 1, 1, 5, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(84, 'b488f593-b3b2-4824-8620-1b40e8fb4602', 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', 'f564fc16-bd58-4794-80da-0d4a493048c6', 1, 3, 3, 3, 4, 2, 4, 3, 4, 2, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(85, '222ecf3d-46c8-4a61-9ead-36306b77bb75', 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', '4900556b-8b02-4542-b6a2-47d182d43932', 1, 1, 3, 4, 4, 1, 2, 4, 4, 1, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(86, 'e40ca7fd-a0f0-4d58-8006-10eefe003a78', '6bc7bbe3-6501-4851-8432-c5aefc515d87', '0dda816e-75ef-4d28-862d-3d38be7651d4', 4, 5, 3, 2, 3, 2, 5, 5, 1, 1, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(87, 'bea4057c-aac8-48ec-946e-d26ec04881eb', '6bc7bbe3-6501-4851-8432-c5aefc515d87', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 5, 1, 3, 5, 3, 1, 5, 1, 4, 1, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(88, '207a57ad-9732-4a94-a1f8-de94cd28b79e', '6bc7bbe3-6501-4851-8432-c5aefc515d87', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 5, 3, 5, 1, 5, 2, 5, 3, 3, 4, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(89, '04dd85dd-de7b-4010-8f73-4c079ab99550', '6bc7bbe3-6501-4851-8432-c5aefc515d87', 'f564fc16-bd58-4794-80da-0d4a493048c6', 5, 2, 5, 2, 3, 4, 5, 5, 4, 5, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(90, 'ce49f0c9-6d99-4d8f-b2e7-a5e5a6654e1f', '6bc7bbe3-6501-4851-8432-c5aefc515d87', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 4, 1, 1, 1, 3, 5, 1, 1, 1, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(91, 'ff310719-2fc7-4982-b0ff-3962b617d533', '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', '0dda816e-75ef-4d28-862d-3d38be7651d4', 4, 5, 4, 3, 2, 5, 5, 4, 4, 5, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(92, 'dffa78a3-77f0-4a75-8d25-cd1d706a82f1', '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', 'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203', 4, 1, 3, 2, 1, 3, 1, 4, 1, 5, 2, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(93, '208e2384-3218-4b04-9dbb-7e46f813aebf', '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', 'ebf3495f-091a-45b1-bba7-9b8f75fb5df4', 3, 5, 4, 3, 2, 5, 1, 1, 1, 3, 3, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(94, '519431f2-cd58-47d5-ad96-072fa25d753a', '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', 'f564fc16-bd58-4794-80da-0d4a493048c6', 1, 3, 3, 1, 1, 2, 5, 2, 1, 1, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(95, '83d6e2d1-7fcd-40cf-b7d5-6f7c30bcaf74', '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', '4900556b-8b02-4542-b6a2-47d182d43932', 3, 4, 5, 3, 5, 1, 2, 1, 1, 1, 1, '2024-06-08 20:56:14', '2024-06-08 20:56:14'),
(96, '2d818c48-30b6-4f37-959a-a111a6d2a76c', 'f08a62ed-cc4c-41a3-ab99-d5ad2dd92e8a', '4900556b-8b02-4542-b6a2-47d182d43932', 2, 2, 4, 5, 2, 3, 4, 5, 2, 3, 2, '2024-06-08 20:57:08', '2024-06-08 22:24:39'),
(97, '8aeb3441-9703-45aa-b8a1-6a965d009b04', '603456cb-024e-4fbf-90fe-c366507b1682', '082f535f-b17f-4be2-b723-2304180edb9e', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2024-06-10 21:04:33', '2024-06-10 21:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'cb30a223-1fbc-4298-a5c8-d5ba8541b9f8', 'User 1', 'user1@gmail.com', NULL, '$2y$12$wytmDz3KcBVrtV2QqOZzRu5DoK5norAqEgc2VTtEERVJiELqmPG6u', NULL, '2024-06-07 01:57:37', '2024-06-07 01:57:37', 'user'),
(2, '603456cb-024e-4fbf-90fe-c366507b1682', 'User 2', 'user2@example.com', '2024-06-07 04:43:01', '$2y$12$YwmmUcHyDebcTqyBjRQYaeBOlRhPPxkrqI4weke2NmtlZh.qbtoZG', 'C7QZzEASK6', '2024-06-07 04:43:04', '2024-06-07 04:43:04', 'user'),
(3, 'aa7ee9b2-a412-4aaf-bb71-aa25b689a770', 'User 3', 'user3@example.com', '2024-06-07 04:43:04', '$2y$12$UqWLsHzmOplhNqvEUjMDLO3e4YG0JKFmN6vmYVKEUnldNaRMnE8ba', 'N82dI2A9ah', '2024-06-07 04:43:05', '2024-06-07 04:43:05', 'user'),
(4, '33f2be8f-7db9-44dc-af9b-9ce93d7c603d', 'User 4', 'user4@example.com', '2024-06-07 04:43:05', '$2y$12$BBwfnk8xi1DUsNqdntNBveR7m4eEIfie9F7wwdiePJRBKJwRCV6VS', 'HqcKYYzU7d', '2024-06-07 04:43:05', '2024-06-07 04:43:05', 'user'),
(5, '2909adea-5c1f-4995-a5d4-c3db6688a7fd', 'User 5', 'user5@example.com', '2024-06-07 04:43:05', '$2y$12$7/AxpOeZvbU0AZOWFa3YdOz8wK0J4FrCme453Mla4tbJVW5tgl7ZG', 'GXHU8K3xQt', '2024-06-07 04:43:05', '2024-06-07 04:43:05', 'user'),
(6, '0ed2da79-e31a-4ba2-9be7-8440fd784c5d', 'User 6', 'user6@example.com', '2024-06-07 04:43:05', '$2y$12$pfItO1t9IYrBBB6maB448u.MALHsmBxHSpokKaXlii9MD6KjCoL32', 'yxtwXbCIjA', '2024-06-07 04:43:06', '2024-06-07 04:43:06', 'user'),
(7, 'da1ceaee-c385-405b-a3d4-b40a3fcc9cde', 'User 7', 'user7@example.com', '2024-06-07 04:43:06', '$2y$12$7jLpMjwUXoya56LaTJ6rcOroIFQnEi9KX99ULxOl.iW/ifOX0kYUC', 'qW6GStlTP2', '2024-06-07 04:43:06', '2024-06-07 04:43:06', 'user'),
(8, '5d5beae6-d123-40d1-979a-84604b825780', 'User 8', 'user8@example.com', '2024-06-07 04:43:06', '$2y$12$a370q36M5ZAcok/DM6tXwOQcmJiVU3xUpfp7CxSoL1dRUwczI5qXy', '73QPSHaDrX', '2024-06-07 04:43:07', '2024-06-07 04:43:07', 'user'),
(9, 'd1fbb945-747f-4c7b-bdd9-b660d38708b0', 'User 9', 'user9@example.com', '2024-06-07 04:43:07', '$2y$12$Kzzx3btrzMLLnnbkzDKrIeqdGYrQ8fFuuF05g9BAWgtO1xfxtsNpy', 'k8gOMeqlkY', '2024-06-07 04:43:07', '2024-06-07 04:43:07', 'user'),
(10, 'f2b00147-cebc-400a-9db8-b88d47ee7fd3', 'User 10', 'user10@example.com', '2024-06-07 04:43:07', '$2y$12$FvqK6bkeXxwaZN/.1fpM/ONWAp5DJKyFpzET03icnBqKbPOM.jcQG', 'dHglOT7avd', '2024-06-07 04:43:08', '2024-06-07 04:43:08', 'user'),
(11, '9a591abc-e9ce-4fa8-a3a2-8fff47893bab', 'User 11', 'user11@example.com', '2024-06-07 04:43:08', '$2y$12$VwG2XGOpKcv4lSZr447zruDXh.W0Okf.VXJ4sZMN0iS0yicNlacQK', '46O1jaSBcN', '2024-06-07 04:43:08', '2024-06-07 04:43:08', 'user'),
(12, 'b421f13f-d0cb-4442-b327-ee22bf6d8535', 'User 12', 'user12@example.com', '2024-06-07 04:43:08', '$2y$12$UUprDG6AMDLSfb1QxN3ulOF8XP.OA8cP8hvEwtBuvK8fa6OpaM5V2', 'wGv1hnk14s', '2024-06-07 04:43:09', '2024-06-07 04:43:09', 'user'),
(13, '3176072b-80b4-41ad-b8b9-153fa80a1f13', 'User 13', 'user13@example.com', '2024-06-07 04:43:09', '$2y$12$ve2FA5Z0uLq0KWLjPzj/TOi/IBKnj.bSCoLAJTz2Gm3Vior46OTM2', 'WlMNsC6DdL', '2024-06-07 04:43:09', '2024-06-07 04:43:09', 'user'),
(14, '2a41b770-bb0c-48b4-8171-822cf0273a10', 'User 14', 'user14@example.com', '2024-06-07 04:43:09', '$2y$12$F5JaENBgfnbs1SHbvRpxsujvXLy.ZaiHiTJnAvl8H4xL7LiVYNRW2', 'BJ4iL6oeKY', '2024-06-07 04:43:10', '2024-06-07 04:43:10', 'user'),
(15, 'a2f818da-d6d1-4516-8867-a170a0c33df6', 'User 15', 'user15@example.com', '2024-06-07 04:43:10', '$2y$12$JJvRnafp0jj..97s5XQgSuyQ/TQTt36FF524FQVXdhPbwdKISKvSS', 'UrQBezoHy5', '2024-06-07 04:43:10', '2024-06-07 04:43:10', 'user'),
(16, 'c52b1727-cdf0-4ecb-bfba-404d9ba33456', 'User 16', 'user16@example.com', '2024-06-07 04:43:10', '$2y$12$q/qOlUpGZzxPkGvg/SsMx.PKuM8R8JK8.31IjpuZF8pxtMzbktGyS', 'WQPG1ydu4I', '2024-06-07 04:43:11', '2024-06-07 04:43:11', 'user'),
(17, 'be2b060c-b97b-46d4-81ee-8a027e9fe283', 'User 17', 'user17@example.com', '2024-06-07 04:43:11', '$2y$12$rcJSbs2kdEqG6NXdhzkHpePxVqBIeochwdctYKz1k2WnfH4ZaP122', 'y8Ky5End63', '2024-06-07 04:43:11', '2024-06-07 04:43:11', 'user'),
(18, 'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e', 'User 18', 'user18@example.com', '2024-06-07 04:43:11', '$2y$12$qViD0kycPbqorE6vb2XJ9O.QEiZ6m40OY5yyAaltq3eqLVByywtiq', 'zluQzfZtfT', '2024-06-07 04:43:11', '2024-06-07 04:43:11', 'user'),
(19, '6bc7bbe3-6501-4851-8432-c5aefc515d87', 'User 19', 'user19@example.com', '2024-06-07 04:43:11', '$2y$12$AYYY5zg..IVZR91fJNVkdei4OcHI/i6nEKcqoXAx8gqu5cZ1Pfo06', 'zjHr7pblTf', '2024-06-07 04:43:12', '2024-06-07 04:43:12', 'user'),
(20, '936ca02e-2a24-4dae-baa3-4f7d0084fbb6', 'User 20', 'user20@example.com', '2024-06-07 04:43:12', '$2y$12$9qYjVxIohhaD0hDBCazljO3..gMkbjKmsg8FHtyN2fDim58SABZpi', 'L98XMF3JRL', '2024-06-07 04:43:12', '2024-06-07 04:43:12', 'user'),
(21, 'f08a62ed-cc4c-41a3-ab99-d5ad2dd92e8a', 'Admin', 'admin@example.com', '2024-06-07 04:43:12', '$2y$12$fOY/hlxZVrKiiHo3yK.PJO1sIqCAgT8CjeGnD53IsbX64xwa83Yhu', '75BlNk7dHs', '2024-06-07 04:43:13', '2024-06-07 04:43:13', 'admin');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings_platform`
--
ALTER TABLE `ratings_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings_platform`
--
ALTER TABLE `ratings_platform`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
