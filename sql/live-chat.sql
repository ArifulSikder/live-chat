-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 03:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live-chat`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 17, 26, 'Dolores aperiam exercitationem debitis ut.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(2, 1, 2, 'Minus et ipsa nemo minus ut a rerum.', 1, '2022-08-12 09:17:55', '2022-08-15 04:17:46'),
(3, 2, 1, 'Explicabo dolor id explicabo nisi possimus.', 1, '2022-08-12 09:17:55', '2022-08-15 04:17:46'),
(4, 14, 20, 'Quia atque repellendus possimus deleniti non eos.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(5, 28, 30, 'Dolorem quis vel rerum molestias.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(6, 15, 22, 'Molestias temporibus repellat est.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(7, 5, 18, 'Totam perspiciatis laborum ut quas totam accusamus.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(8, 29, 7, 'Aspernatur nam consequatur eaque odit fuga quasi.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(9, 23, 3, 'Voluptatum commodi minus atque iste sapiente.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(10, 10, 2, 'Voluptatum cumque doloremque libero nostrum.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(11, 2, 23, 'Eum quo quis voluptate mollitia ut aut consectetur.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(12, 28, 3, 'Itaque itaque doloribus repellendus porro ullam ab.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(13, 11, 19, 'Explicabo id iste est minus enim deserunt voluptates.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(14, 6, 17, 'Libero sit earum voluptatum aut nihil.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(15, 4, 10, 'Et facilis fugiat qui.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(16, 23, 7, 'Officia quisquam voluptatibus ipsa sunt sed aperiam.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(17, 19, 29, 'Omnis consequatur qui autem quo ad quidem consectetur.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(18, 19, 13, 'Cum impedit sed non asperiores ut perferendis est.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(19, 29, 23, 'Nulla quo facere commodi ex sunt nesciunt.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(20, 14, 23, 'Repellat et corporis incidunt.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(21, 4, 29, 'Nisi dolorem non vitae delectus perspiciatis et.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(22, 10, 17, 'Qui quod ut blanditiis et.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(23, 17, 10, 'Ex similique aut aut id illo.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(24, 29, 27, 'Doloribus quo totam consequatur nesciunt.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(25, 8, 1, 'Voluptas excepturi nisi magnam dolores.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(26, 20, 14, 'Ducimus aut adipisci qui assumenda.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(27, 17, 10, 'Error qui quasi est quidem dolorum dolorum.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(28, 23, 16, 'Laborum quam quis deserunt autem repellat dolorem.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(29, 11, 4, 'Vitae veniam et beatae amet.', 0, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(30, 22, 20, 'Et aperiam deserunt officia mollitia.', 1, '2022-08-12 09:17:55', '2022-08-12 09:17:55'),
(31, 1, 2, 'hello', 1, '2022-08-12 12:59:54', '2022-08-15 04:17:46'),
(32, 2, 1, 'hi', 1, '2022-08-12 13:07:10', '2022-08-15 04:17:46'),
(33, 1, 2, 'dsfds', 1, '2022-08-12 13:16:29', '2022-08-15 04:17:46'),
(34, 2, 1, 'another message', 1, '2022-08-12 13:36:56', '2022-08-15 04:17:46'),
(35, 1, 2, 'dfd', 1, '2022-08-12 14:05:23', '2022-08-15 04:17:46'),
(36, 1, 2, 'd', 1, '2022-08-12 14:08:21', '2022-08-15 04:17:46'),
(37, 1, 2, 'd', 1, '2022-08-12 14:11:59', '2022-08-15 04:17:46'),
(38, 1, 2, 'd', 1, '2022-08-12 14:12:05', '2022-08-15 04:17:46'),
(39, 1, 2, 'dfds', 1, '2022-08-12 14:12:09', '2022-08-15 04:17:46'),
(40, 1, 2, 'dsfds', 1, '2022-08-12 14:13:21', '2022-08-15 04:17:46'),
(41, 1, 2, 'hi', 1, '2022-08-12 14:17:08', '2022-08-15 04:17:46'),
(42, 2, 1, 'hi', 1, '2022-08-12 14:17:37', '2022-08-15 04:17:46'),
(43, 1, 2, 'dfds', 1, '2022-08-12 14:17:47', '2022-08-15 04:17:46'),
(44, 1, 2, 'd', 1, '2022-08-12 14:19:33', '2022-08-15 04:17:46'),
(45, 1, 2, 'd', 1, '2022-08-12 14:19:49', '2022-08-15 04:17:46'),
(46, 1, 2, 'dd', 1, '2022-08-12 14:23:50', '2022-08-15 04:17:46'),
(47, 1, 2, 'dd', 1, '2022-08-12 14:25:31', '2022-08-15 04:17:46'),
(48, 1, 2, 'dd', 1, '2022-08-12 14:26:00', '2022-08-15 04:17:46'),
(49, 1, 2, 'd', 1, '2022-08-12 14:27:16', '2022-08-15 04:17:46'),
(50, 1, 2, 'hello', 1, '2022-08-12 14:27:42', '2022-08-15 04:17:46'),
(51, 1, 2, 'hello', 1, '2022-08-12 14:28:14', '2022-08-15 04:17:46'),
(52, 2, 1, 'hi', 1, '2022-08-12 14:28:28', '2022-08-15 04:17:46'),
(53, 1, 2, 'hello', 1, '2022-08-15 04:17:20', '2022-08-15 04:17:46'),
(54, 2, 1, 'hi', 1, '2022-08-15 04:17:46', '2022-08-15 04:17:46');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_12_144014_create_messages_table', 2),
(6, '2022_08_15_124443_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `last_seen`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', '2022-08-15 04:17:56', NULL, '$2y$10$VeRML2rmzEw.gptMRAXjyeWZo83tsH4KhSF/RJKARoQaJlVzL3EsG', NULL, '2022-08-05 06:07:17', '2022-08-15 04:17:56'),
(2, 'User', 'user@user.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', '2022-08-15 04:17:41', NULL, '$2y$10$zxmKUabJa2CycRQBIIimXe0/tYWPHpYEvhIC8udKfVRJD7kArOe1S', NULL, '2022-08-05 06:18:03', '2022-08-15 04:17:41'),
(4, 'Ms. Rachael Hermann', 'marilie55@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't3hSpQH54B', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(5, 'Erik Goyette', 'brandi.ankunding@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L5tY4gIpsO', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(6, 'Jamir Dare', 'bergnaum.elisabeth@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JjMnrET2Ox', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(7, 'Prof. Lane Zboncak', 'lane.schoen@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ianQLvdr8Y', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(8, 'Kaylie Steuber', 'edyth.pacocha@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gwIWKUVAgL', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(9, 'Etha Hill I', 'esmeralda05@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's6uRwM69ux', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(10, 'Edd Stanton', 'freichel@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ro0WeE3EL9', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(11, 'Orin Gleichner', 'shana22@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rIChqDu8N4', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(12, 'Dr. Kody Grady DDS', 'kamryn76@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I60OWRrnys', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(13, 'Fay Padberg', 'zion.rosenbaum@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U1ZtOdxahI', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(14, 'Edyth Boehm', 'schroeder.gerhard@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LG15rD1zBm', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(15, 'Mrs. Sandra Hudson', 'gibson.genesis@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3srgKFdcUR', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(16, 'Efrain Parisian', 'ashleigh.hills@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FxDOPbS10h', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(17, 'Ms. Cordie McCullough DDS', 'mittie10@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rGuip0A0Ee', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(18, 'Julianne Cartwright', 'aisha.conroy@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IDplyUJrVL', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(19, 'Joe Dooley', 'sherwood43@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cjr6CUUmWp', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(20, 'Abner Kessler', 'sidney.mcclure@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n6JdL3xUuv', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(21, 'Sim Pacocha', 'art27@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AE52eNSrR2', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(22, 'Tod Runolfsdottir V', 'qkoss@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4GchMexBBO', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(23, 'Mr. Gerhard Bogisich', 'khomenick@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uh1mYYFeCY', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(24, 'Coby Wyman', 'vincenza.torphy@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oiY0wXztJ3', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(25, 'Jameson Langosh', 'zulauf.madalyn@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nACQgAdKeA', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(26, 'Dewitt Konopelski DDS', 'torn@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PpLSNZFxtG', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(27, 'Jasper Heller', 'uthompson@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8cT4UgWYTq', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(28, 'Dr. Nico Franecki', 'qrau@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NbJnCwLOnp', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(29, 'Dr. Elmore Steuber', 'amiya26@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6gbPugMct6', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(30, 'Shanelle Altenwerth DVM', 'mozelle.rempel@example.net', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kyI9ZklR44', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(31, 'Gideon Kozey', 'marshall.dicki@example.org', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0V2mwlupos', '2022-08-12 09:03:09', '2022-08-12 09:03:09'),
(32, 'Ruby Renner', 'brath@example.com', 'https://bootdey.com/img/Content/avatar/avatar1.png', NULL, '2022-08-12 09:03:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AzWCM4bWRM', '2022-08-12 09:03:09', '2022-08-12 09:03:09');

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
