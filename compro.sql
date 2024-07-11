-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 09:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` varchar(255) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `periodemasuk` date NOT NULL,
  `periodekeluar` date NOT NULL,
  `jobdescription` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `job`, `instansi`, `periodemasuk`, `periodekeluar`, `jobdescription`, `created_at`, `updated_at`) VALUES
(1, 'Human Resources Staff', 'PT Sri Intan Perkasa', '2023-11-06', '2024-04-26', 'Screening kandidat', '2024-05-29 20:40:45', '2024-05-29 22:02:15'),
(3, 'Finance Accounting Staff', 'PT Sri Intan Perkasa', '2023-07-24', '2023-11-03', 'Mengidentifikasi dan memperbaiki kesalahan perhitungan dan perbedaan keuangan untuk penyelesaian tepat waktu.', '2024-05-29 20:47:47', '2024-05-29 23:07:47');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_27_014807_create_profiles_table', 2),
(5, '2024_05_30_031502_create_experience_table', 3),
(6, '2024_05_30_062537_create_pendidikan_table', 4),
(7, '2024_06_03_042900_create_pendidikans', 5),
(8, '2024_06_03_071048_create_skills', 6);

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
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `tahunmasuk` varchar(255) NOT NULL,
  `tahunkeluar` varchar(255) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikans`
--

INSERT INTO `pendidikans` (`id`, `nama_sekolah`, `jurusan`, `fakultas`, `tahunmasuk`, `tahunkeluar`, `gpa`, `created_at`, `updated_at`) VALUES
(1, 'Universitas Terbuka', 'Matematika', 'Fakultas Sains dan Teknologi', '2015-06-01', '2021-04-23', '3.18', '2024-06-02 21:54:09', '2024-06-02 21:54:09'),
(3, 'Universitas Negeri Jakarta', 'Teknologi Pendidikan', 'Fakultas Ilmu Pendidikan', '2012-09-10', '2015-06-01', '3.09', '2024-06-02 22:16:01', '2024-06-02 22:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `phone`, `address`, `description`, `github_link`, `linkedin_link`, `instagram_link`, `facebook_link`, `created_at`, `updated_at`) VALUES
(3, 'Kenanga Abadi', 'abadi@gmail.com', '0812538568', 'Pulo Kenanga', 'Saya adalah seorang developer', 'https://github.blog/changelog/2023-09-06-updates-to-your-github-feed/', 'https://id.linkedin.com/company/mrdiyindonesia', 'https://id.wikipedia.org/wiki/Twitter_(X)', 'https://www.facebook.com/?locale=id_ID', '2024-05-28 23:49:16', '2024-05-29 00:33:47'),
(4, 'Kalia Awaliyah', 'awaliyah@gmail.com', '08169542386', 'Pulo Malaya', 'Saya adalah seorang accounting', 'https://github.blog/changelog/2023-09-06-updates-to-your-github-feed/', 'https://id.linkedin.com/company/mrdiyindonesia', 'https://id.wikipedia.org/wiki/Twitter_(X)', 'https://www.facebook.com/?locale=id_ID', '2024-05-29 00:21:19', '2024-05-29 00:21:19'),
(5, 'Kenanga Abadi', 'admin@gmail.com', '081225586845', 'Pulo Italia', 'Saya adalah seorang content creator', 'https://github.blog/changelog/2023-09-06-updates-to-your-github-feed/', 'https://id.linkedin.com/company/mrdiyindonesia', 'https://id.wikipedia.org/wiki/Twitter_(X)', 'https://www.facebook.com/?locale=id_ID', '2024-05-29 00:22:18', '2024-05-29 00:22:18'),
(6, 'Kenanga Abadi', 'abadi@gmail.com', '0812538568', 'Pulo Malay', 'Saya adalah seorang Software Engineer', 'https://github.blog/changelog/2023-09-06-updates-to-your-github-feed/', 'https://id.linkedin.com/company/mrdiyindonesia', 'https://id.wikipedia.org/wiki/Twitter_(X)', 'https://www.facebook.com/?locale=id_ID', '2024-05-29 00:23:00', '2024-05-29 00:23:00'),
(8, 'Putri Maulidiyah', 'putrimaulidiyah94@gmail.com', '081288010137', 'Bogor, Jawa Barat', 'I am experienced in human resources and accounting', 'https://github.blog/changelog/2023-09-06-updates-to-your-github-feed/', 'https://linkedin.com/in/putri-maulidiyah', 'https://www.instagram.com/puuypm', 'https://www.facebook.com/puuypm', '2024-05-29 20:33:22', '2024-05-29 20:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4T1xvgLZpXdttZsdoeu463KXkXwP3nhDxzwfAwYF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzBUb0ZuUDFKbTFzd2p0d3I2NExQZDBRdndJYkFKVlNLZndDc2dRQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719368471),
('ToS1iMU02Cvkd7UPP1cbNGbARowlTEwshjcAS19r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnBtRG9VbDJXQThGYTVGTnA3Rk51OGdZWEFmR0s5UnZJck9DNGV5biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718002881);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, '1717056339_bouquet4.jpg', '2024-05-30 01:05:39', '2024-05-30 01:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tools` varchar(255) NOT NULL,
  `workflow` varchar(255) NOT NULL,
  `bahasa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `tools`, `workflow`, `bahasa`, `created_at`, `updated_at`) VALUES
(1, 'html-5', 'Menjadwalkan waktu interview antara pelamar dengan user', 'Inggris', '2024-06-04 18:00:00', '2024-06-04 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Kemal', 'kemal@gmail.com', NULL, '$2y$12$mx6IYQliiXnhKzC5k8zS.uqrbsovocp/Qm4l0FznQjzuHNzzAC42W', NULL, '2024-05-26 19:34:19', '2024-05-28 20:11:25'),
(2, 'Utama Habibi', 'palastri.michelle@gmail.co.id', NULL, '$2y$12$VFgGFm.wDkt3q5bslVESSufBlRIaSPX.vMfmOr0dzPAqP7Abzn3nG', NULL, '2024-05-26 20:34:28', '2024-05-26 20:34:28'),
(3, 'Zamira Hartati', 'jasmani45@yahoo.com', NULL, '$2y$12$aUic37kw2Lwl4z5BHwaxv.4OJREmgzQKUfN4DcnD2fcfFO57l0K0W', NULL, '2024-05-26 20:34:28', '2024-05-26 20:34:28'),
(4, 'Hesti Nasyiah', 'tarihoran.janet@yahoo.co.id', NULL, '$2y$12$31ZyiRT43xm3.4Et6BZm0exatkGa3rtuyCR6Y8LmpZpaX9OAW838y', NULL, '2024-05-26 20:34:28', '2024-05-26 20:34:28'),
(6, 'Yuni Eka Uyainah', 'ilsa38@prasetya.go.id', NULL, '$2y$12$yupO7DR.V9Puradyl6F26.Av4IXnR/191OmCRbuJswf/LlfWUQOGm', NULL, '2024-05-26 20:34:28', '2024-05-26 20:34:28'),
(7, 'Kalia Awaliyah', 'awaliyah@gmail.com', NULL, '$2y$12$GbdyuD3J8X777m5Lv4owUevzGnElXWi2tLAPn5z8h6/3U1DtjJcC.', NULL, '2024-05-28 19:22:06', '2024-05-28 19:22:06'),
(8, 'Habibi Ainun', 'bibinun@gmail.com', NULL, '$2y$12$Donw7P73NpdbQNlBl17D5unx2..oSJ48OlraGMhXJrlMxrXNBo9Yi', NULL, '2024-05-28 19:26:03', '2024-05-28 19:26:03'),
(10, 'Migrations Dana', 'dana@gmail.com', NULL, '$2y$12$NFpuxFt3Reh9B6Zvbh0vW.biccuTJGGdnwA5/KsexD6kqGChPJvJW', NULL, '2024-05-28 21:06:15', '2024-05-28 22:50:55'),
(11, 'Ita', 'ita@gmail.com', NULL, '$2y$12$dZQ.cxAhY0adpfKB17FcnO/LXF41ENxOcZIgIVfgydJ3YhHkLIW/K', NULL, '2024-06-07 01:58:51', '2024-06-07 01:58:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
