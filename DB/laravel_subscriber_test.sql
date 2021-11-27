-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 04:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_subscriber_test`
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
(5, '2021_11_27_135632_create_segments_table', 2),
(6, '2021_11_27_141401_create_subscribers_table', 3);

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
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `segments`
--

INSERT INTO `segments` (`id`, `name`, `query`, `created_at`, `updated_at`) VALUES
(1, 'Segment 1', '(date(`created_at`) = \'1992-07-11\' OR date(`created_at`) <= \'1992-07-11\') AND (date(`updated_at`) = \'2010-09-10\' OR date(`updated_at`) BETWEEN \'1987-01-04\' AND \'2011-12-24\')', NULL, NULL),
(2, 'Segment 2', 'first_name LIKE \'Sa%\'', NULL, NULL),
(3, 'Segment 3', 'last_name NOT LIKE \'%r\'', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_day` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `first_name`, `last_name`, `email`, `birth_day`, `created_at`, `updated_at`) VALUES
(1, 'Remington', 'Shanahan', 'jaquan61@example.org', '2018-02-24', '1989-10-14 14:23:39', '2003-08-20 02:12:03'),
(2, 'Morris', 'Kuhlman', 'baumbach.seth@example.net', '1980-10-14', '1983-01-03 14:16:36', '2008-05-10 22:37:25'),
(3, 'Casimer', 'Cummerata', 'audra98@example.net', '2005-09-12', '2014-10-15 04:42:46', '2021-07-09 09:58:30'),
(4, 'Sylvan', 'Ryan', 'braun.luciano@example.net', '1997-09-03', '2010-07-14 11:15:40', '2016-08-07 17:12:38'),
(5, 'Abdiel', 'Mraz', 'mary.stamm@example.net', '1982-05-26', '2016-02-24 22:43:52', '2013-04-27 02:18:28'),
(6, 'Zella', 'Connelly', 'florida.sporer@example.org', '2021-06-11', '2015-01-04 10:52:40', '2016-06-16 17:33:50'),
(7, 'Salvador', 'Rohan', 'jaufderhar@example.org', '2007-06-24', '2010-12-25 23:55:47', '2016-05-28 13:54:22'),
(8, 'Emile', 'Bosco', 'rickey.fisher@example.net', '1981-12-23', '1971-08-15 14:54:52', '2004-01-20 16:22:08'),
(9, 'Annetta', 'Donnelly', 'odouglas@example.com', '2011-08-17', '1980-03-09 13:09:06', '1999-11-24 22:57:07'),
(10, 'Durward', 'Rowe', 'roob.dane@example.com', '1992-04-29', '2011-12-24 03:32:46', '2020-03-16 02:08:39'),
(11, 'Ivy', 'Nitzsche', 'dino29@example.com', '1993-05-07', '1992-07-11 00:39:31', '2015-02-08 02:43:14'),
(12, 'Sammy', 'Welch', 'bbrakus@example.org', '2016-03-03', '1997-10-14 02:56:03', '1993-04-22 03:07:41'),
(13, 'Delia', 'Trantow', 'hermann.zemlak@example.com', '1995-10-05', '2019-01-05 06:28:51', '2017-10-07 17:35:52'),
(14, 'Cornell', 'Watsica', 'bbruen@example.org', '2015-08-24', '2013-10-09 16:16:35', '1987-01-04 04:31:56'),
(15, 'Stephanie', 'Lowe', 'lockman.jane@example.org', '1975-09-06', '2009-10-11 19:07:28', '1992-07-14 01:02:23'),
(16, 'Monserrat', 'Schneider', 'douglas.garland@example.org', '1995-05-19', '2010-01-12 21:43:10', '2010-09-10 11:39:05'),
(17, 'Easter', 'Fritsch', 'lilliana.hartmann@example.org', '1981-02-23', '1975-07-09 15:33:50', '1989-11-07 12:16:20'),
(18, 'Keith', 'Little', 'srenner@example.org', '1995-03-09', '1977-04-24 20:30:55', '2008-06-18 13:04:53'),
(19, 'Misael', 'Reinger', 'keaton07@example.com', '2021-09-03', '1976-06-02 21:14:48', '1998-09-27 03:49:28'),
(20, 'Junior', 'Borer', 'abby.jakubowski@example.org', '1992-12-07', '2002-08-27 17:54:07', '2002-09-22 00:10:19'),
(21, 'Susan', 'Dickinson', 'reina.wisozk@example.org', '2015-04-10', '2015-05-26 13:50:11', '1989-05-18 06:36:23'),
(22, 'Tevin', 'Christiansen', 'zetta.shanahan@example.com', '2000-08-11', '1979-02-25 05:24:25', '1984-12-15 11:42:34'),
(23, 'Conrad', 'Dibbert', 'therese.wiza@example.com', '1981-03-18', '1993-01-06 11:08:37', '2002-01-13 18:14:35'),
(24, 'Destiney', 'VonRueden', 'bergstrom.dameon@example.net', '2020-11-23', '1973-07-11 15:14:39', '2020-09-14 20:01:47'),
(25, 'Bud', 'Leannon', 'delmer37@example.org', '1989-06-05', '1999-02-23 14:03:17', '1994-01-14 07:11:09'),
(26, 'Jerrold', 'Ziemann', 'thea.gottlieb@example.com', '1971-08-19', '1979-12-28 00:24:27', '1996-07-14 16:53:40'),
(27, 'Dudley', 'Dooley', 'bridie.rau@example.com', '1984-09-20', '1982-01-04 09:54:30', '2014-08-22 21:49:17'),
(28, 'Queenie', 'Hayes', 'nicholaus67@example.com', '2007-06-08', '1989-06-20 10:36:05', '1982-03-12 14:53:30'),
(29, 'Darien', 'Goldner', 'dsmith@example.org', '1998-08-29', '1994-01-30 08:33:01', '1998-05-07 07:59:50'),
(30, 'Ethan', 'Satterfield', 'gleason.blaise@example.com', '2007-05-27', '1987-05-10 05:58:18', '1997-10-13 14:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
