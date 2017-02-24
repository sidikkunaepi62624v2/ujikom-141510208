-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2017 at 04:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikombesake`
--

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_golongan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_golongan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `kode_golongan`, `nama_golongan`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(5, 'kogo-01', 'Admin 1', 700000, '2017-02-24 01:35:50', '2017-02-24 01:35:50'),
(6, 'kogo-02', 'Admin 2', 800000, '2017-02-24 01:36:07', '2017-02-24 01:36:07'),
(8, 'kogo-03', 'HRD 1', 500000, '2017-02-24 01:38:04', '2017-02-24 01:38:04'),
(9, 'kogo-04', 'HRD 2', 600000, '2017-02-24 01:38:25', '2017-02-24 01:38:25'),
(10, 'kogo-05', 'Bendahara 1', 300000, '2017-02-24 01:38:58', '2017-02-24 01:38:58'),
(11, 'kogo-06', 'Bendahara 2', 400000, '2017-02-24 01:39:21', '2017-02-24 01:39:28'),
(12, 'kogo-07', 'Pegawai 1', 100000, '2017-02-24 01:40:04', '2017-02-24 01:40:10'),
(13, 'kogo-08', 'Pegawai 2', 200000, '2017-02-24 01:40:36', '2017-02-24 01:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `kode_jabatan`, `nama_jabatan`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(2, 'koja-01', 'Admin', 4000000, '2017-02-24 01:29:43', '2017-02-24 01:29:43'),
(3, 'koja-02', 'HRD', 3000000, '2017-02-24 01:30:05', '2017-02-24 01:30:05'),
(4, 'koja-03', 'Bendahara', 2000000, '2017-02-24 01:30:26', '2017-02-24 01:30:26'),
(5, 'koja-04', 'Pegawai', 1000000, '2017-02-24 01:30:46', '2017-02-24 01:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lemburs`
--

CREATE TABLE `kategori_lemburs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_lembur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategori_lemburs`
--

INSERT INTO `kategori_lemburs` (`id`, `kode_lembur`, `jabatan_id`, `golongan_id`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(3, 'kole-01 AD1', 2, 5, 300000, '2017-02-24 03:15:55', '2017-02-24 03:15:55'),
(4, 'kole-02 HR1', 3, 8, 295000, '2017-02-24 04:17:54', '2017-02-24 04:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `lembur_pegawais`
--

CREATE TABLE `lembur_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_lembur_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lembur_pegawais`
--

INSERT INTO `lembur_pegawais` (`id`, `kode_lembur_id`, `pegawai_id`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(4, 3, 4, 3, '2017-02-24 03:16:24', '2017-02-24 03:16:24'),
(5, 4, 5, 3, '2017-02-24 04:18:28', '2017-02-24 04:18:28'),
(6, 3, 4, 3, '2017-02-24 04:20:21', '2017-02-24 04:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_19_134446_create_table_jabatans', 1),
(4, '2017_02_19_134636_create_table_golongans', 1),
(5, '2017_02_19_134859_create_table_tunjangans', 1),
(6, '2017_02_19_141558_create_table_pegawais', 1),
(7, '2017_02_19_142010_create_table_tunjangan_pegawais', 1),
(8, '2017_02_19_142206_create_table_kategori_lemburs', 1),
(9, '2017_02_19_142429_create_table_lembur_pegawais', 1),
(10, '2017_02_19_142655_create_table_penggajians', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `nip`, `user_id`, `jabatan_id`, `golongan_id`, `photo`, `created_at`, `updated_at`) VALUES
(4, '14151001', 5, 2, 5, '07927100ee15aded5df39f527ba30d80.jpg', '2017-02-24 03:10:35', '2017-02-24 03:10:35'),
(5, '14151002', 6, 3, 8, 'e1471fbbeab2db28bfa86cea2f0c2e5e.png', '2017-02-24 04:16:21', '2017-02-24 04:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `penggajians`
--

CREATE TABLE `penggajians` (
  `id` int(10) UNSIGNED NOT NULL,
  `tunjangan_pegawai_id` int(10) UNSIGNED NOT NULL,
  `jumlah_jam_lembur` int(11) NOT NULL,
  `jumlah_uang_lembur` int(11) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `total_gaji` int(11) NOT NULL,
  `tanggal_pengambilan` date NOT NULL,
  `status_pengambilan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petugas_penerima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penggajians`
--

INSERT INTO `penggajians` (`id`, `tunjangan_pegawai_id`, `jumlah_jam_lembur`, `jumlah_uang_lembur`, `gaji_pokok`, `total_gaji`, `tanggal_pengambilan`, `status_pengambilan`, `petugas_penerima`, `created_at`, `updated_at`) VALUES
(13, 4, 3, 885000, 3500000, 4385000, '2017-02-24', '1', 'Kunaepi Sidik', '2017-02-24 04:18:50', '2017-02-24 04:19:01'),
(14, 3, 3, 900000, 4700000, 5600000, '2017-02-24', '1', 'Kunaepi Sidik', '2017-02-24 04:20:47', '2017-02-24 04:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_tunjangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_anak` int(11) NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `kode_tunjangan`, `jabatan_id`, `golongan_id`, `status`, `jumlah_anak`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(12, 'kotu-01 ad1-bm0', 2, 5, 'Belum Menikah', 0, 0, '2017-02-24 02:08:54', '2017-02-24 02:08:54'),
(13, 'kotu-02 ad1-me0', 2, 5, 'Menikah', 0, 65000, '2017-02-24 02:09:45', '2017-02-24 02:09:45'),
(14, 'kotu-03 ad1-me1', 2, 5, 'Menikah', 1, 115000, '2017-02-24 02:11:33', '2017-02-24 02:11:33'),
(15, 'kotu-04 ad1-me2', 2, 5, 'Menikah', 2, 165000, '2017-02-24 02:12:43', '2017-02-24 02:12:43'),
(16, 'kotu-05 ad1-br1', 2, 5, 'Bercerai', 1, 215000, '2017-02-24 02:13:47', '2017-02-24 02:13:47'),
(17, 'kotu-06 ad1-br2', 2, 5, 'Bercerai', 2, 265000, '2017-02-24 02:15:03', '2017-02-24 02:15:03'),
(18, 'kotu-07 HR1-bm0', 3, 8, 'Belum Menikah', 0, 0, '2017-02-24 02:16:26', '2017-02-24 02:16:26'),
(19, 'kotu-08 HR1-me0', 3, 8, 'Menikah', 0, 60000, '2017-02-24 02:17:47', '2017-02-24 02:17:47'),
(20, 'kotu-09 HR1-me1', 3, 8, 'Menikah', 1, 110000, '2017-02-24 02:20:31', '2017-02-24 02:20:31'),
(21, 'kotu-10 HR1-me2', 3, 8, 'Menikah', 2, 160000, '2017-02-24 02:21:11', '2017-02-24 02:21:11'),
(22, 'kotu-11 HR1-br1', 3, 8, 'Bercerai', 1, 210000, '2017-02-24 02:22:06', '2017-02-24 02:22:06'),
(23, 'kotu-12 HR1-br2', 3, 8, 'Bercerai', 2, 260000, '2017-02-24 02:22:55', '2017-02-24 02:22:55'),
(24, 'kotu-13 bd1-bm0', 4, 10, 'Belum Menikah', 0, 0, '2017-02-24 02:24:36', '2017-02-24 02:24:36'),
(25, 'kotu-14 bd1-me0', 4, 10, 'Menikah', 0, 55000, '2017-02-24 02:25:16', '2017-02-24 02:25:16'),
(26, 'kotu-15 bd1-me1', 4, 10, 'Menikah', 1, 105000, '2017-02-24 02:26:02', '2017-02-24 02:26:02'),
(27, 'kotu-16 bd1-me2', 4, 10, 'Menikah', 2, 155000, '2017-02-24 02:28:06', '2017-02-24 02:28:06'),
(28, 'kotu-17 bd1-br1', 4, 10, 'Bercerai', 1, 205000, '2017-02-24 02:29:28', '2017-02-24 02:29:54'),
(30, 'kotu-18 bd1-br2', 4, 10, 'Bercerai', 2, 255000, '2017-02-24 02:30:53', '2017-02-24 02:30:53'),
(31, 'kotu-19 pw1-bm0', 5, 12, 'Belum Menikah', 0, 0, '2017-02-24 02:32:03', '2017-02-24 02:32:03'),
(32, 'kotu-20 pw1-me0', 5, 12, 'Menikah', 0, 50000, '2017-02-24 02:33:12', '2017-02-24 02:33:12'),
(33, 'kotu-21 pw1-me1', 5, 12, 'Menikah', 1, 100000, '2017-02-24 02:34:18', '2017-02-24 02:34:18'),
(34, 'kotu-22 pw1-me2', 5, 12, 'Menikah', 2, 150000, '2017-02-24 02:35:25', '2017-02-24 02:35:25'),
(35, 'kotu-23 pw1-br1', 5, 12, 'Bercerai', 1, 200000, '2017-02-24 02:36:11', '2017-02-24 02:36:11'),
(36, 'kotu-24 pw1-br2', 5, 12, 'Bercerai', 2, 250000, '2017-02-24 02:37:06', '2017-02-24 02:37:06'),
(37, 'kotu-25 ad2-bm0', 2, 6, 'Belum Menikah', 0, 0, '2017-02-24 02:42:20', '2017-02-24 02:42:20'),
(38, 'kotu-26 ad2-me0', 2, 6, 'Menikah', 0, 90000, '2017-02-24 02:43:07', '2017-02-24 02:43:07'),
(39, 'kotu-27 ad2-me1', 2, 6, 'Menikah', 1, 140000, '2017-02-24 02:43:46', '2017-02-24 02:43:46'),
(40, 'kotu-28 ad2-me2', 2, 6, 'Menikah', 2, 190000, '2017-02-24 02:44:51', '2017-02-24 02:44:51'),
(41, 'kotu-29 ad2-br1', 2, 6, 'Bercerai', 1, 245000, '2017-02-24 02:46:25', '2017-02-24 02:46:25'),
(42, 'kotu-30 ad2-br2', 2, 6, 'Bercerai', 2, 290000, '2017-02-24 02:47:00', '2017-02-24 02:47:00'),
(43, 'kotu-31 HR2-bm0', 3, 9, 'Belum Menikah', 0, 0, '2017-02-24 02:47:35', '2017-02-24 02:47:35'),
(44, 'kotu-32 HR2-me0', 3, 9, 'Menikah', 0, 85000, '2017-02-24 02:48:13', '2017-02-24 02:48:13'),
(45, 'kotu-33 HR2-me1', 3, 9, 'Menikah', 1, 135000, '2017-02-24 02:48:46', '2017-02-24 02:48:46'),
(46, 'kotu-34 HR2-me2', 3, 9, 'Menikah', 2, 185000, '2017-02-24 02:49:16', '2017-02-24 02:49:16'),
(47, 'kotu-35 HR2-br1', 3, 9, 'Bercerai', 1, 240000, '2017-02-24 02:50:45', '2017-02-24 02:50:45'),
(48, 'kotu-36 HR2-br2', 3, 9, 'Bercerai', 2, 285000, '2017-02-24 02:52:00', '2017-02-24 02:52:00'),
(49, 'kotu-37 bd2-bm0', 4, 11, 'Belum Menikah', 0, 0, '2017-02-24 02:52:32', '2017-02-24 02:52:32'),
(50, 'kotu-38 bd2-me0', 4, 11, 'Menikah', 0, 80000, '2017-02-24 02:53:05', '2017-02-24 02:53:05'),
(51, 'kotu-39 bd2-me1', 4, 11, 'Menikah', 1, 130000, '2017-02-24 02:53:39', '2017-02-24 02:53:39'),
(52, 'kotu-40 bd2-me2', 4, 11, 'Menikah', 2, 180000, '2017-02-24 02:54:43', '2017-02-24 02:54:43'),
(53, 'kotu-41 bd2-br1', 4, 11, 'Bercerai', 1, 235000, '2017-02-24 02:55:28', '2017-02-24 02:55:28'),
(54, 'kotu-42 bd2-br2', 4, 11, 'Bercerai', 2, 280000, '2017-02-24 02:56:27', '2017-02-24 02:56:46'),
(57, 'kotu-43 pw2-bm0', 5, 13, 'Belum Menikah', 0, 0, '2017-02-24 02:57:29', '2017-02-24 02:57:29'),
(58, 'kotu-44 pw2-me0', 5, 13, 'Menikah', 0, 75000, '2017-02-24 02:57:59', '2017-02-24 02:57:59'),
(59, 'kotu-45 pw2-me1', 5, 13, 'Menikah', 1, 125000, '2017-02-24 02:58:45', '2017-02-24 02:58:45'),
(60, 'kotu-46 pw2-me2', 5, 13, 'Menikah', 2, 175000, '2017-02-24 02:59:22', '2017-02-24 02:59:22'),
(61, 'kotu-47 pw2-br1', 5, 13, 'Bercerai', 1, 230000, '2017-02-24 02:59:50', '2017-02-24 02:59:50'),
(62, 'kotu-48 pw2-br2', 5, 13, 'Bercerai', 2, 275000, '2017-02-24 03:00:22', '2017-02-24 03:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan_pegawais`
--

CREATE TABLE `tunjangan_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_tunjangan_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tunjangan_pegawais`
--

INSERT INTO `tunjangan_pegawais` (`id`, `kode_tunjangan_id`, `pegawai_id`, `created_at`, `updated_at`) VALUES
(3, 12, 4, '2017-02-24 03:11:48', '2017-02-24 03:11:48'),
(4, 18, 5, '2017-02-24 04:16:59', '2017-02-24 04:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kunaepi Sidik', 'kusi@inv.ug', '$2y$10$RrBt8pah6mbMPaZxcX7hKeLVm0ZITA3L1lBodiL.JmZG6k06GVu62', 'Admin', 'rJKSw2NyvWhpUGrA5M0VgacA0oeIcuBLEDGzYhE5HL1WjkFS4o5blQIwPGg0', '2017-02-23 02:38:26', '2017-02-24 04:25:24'),
(5, 'Zixin Junjie Zian', 'zijunzi@inv.ug', '$2y$10$ynAtimHwJBgBJEj4.2bMb.lr2yUjZXhwr2fV7s9evlwt3Kar6A4Ju', 'Admin', 'BSj6vYGsvL7SHOpisvPKO2j0qFb32iWm8lCKZc7KvMh4zdvD9rK8HxhgzRB0', '2017-02-24 03:10:35', '2017-02-24 04:12:21'),
(6, 'Lianx Xiao Chio', 'lixichi@inv.ug', '$2y$10$JCdnnHD7E3zx8OUyBanQ9eoeRLt5yEn/YLShZfi.dyDMEZHs1SjPq', 'HRD', NULL, '2017-02-24 04:16:21', '2017-02-24 04:16:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `golongans_kode_golongan_unique` (`kode_golongan`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jabatans_kode_jabatan_unique` (`kode_jabatan`);

--
-- Indexes for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_lemburs_kode_lembur_unique` (`kode_lembur`),
  ADD KEY `kategori_lemburs_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `kategori_lemburs_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembur_pegawais_kode_lembur_id_foreign` (`kode_lembur_id`),
  ADD KEY `lembur_pegawais_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_nip_unique` (`nip`),
  ADD KEY `pegawais_user_id_foreign` (`user_id`),
  ADD KEY `pegawais_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawais_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggajians_tunjangan_pegawai_id_foreign` (`tunjangan_pegawai_id`);

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tunjangans_kode_tunjangan_unique` (`kode_tunjangan`),
  ADD KEY `tunjangans_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `tunjangans_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tunjangan_pegawais_pegawai_id_unique` (`pegawai_id`),
  ADD KEY `tunjangan_pegawais_kode_tunjangan_id_foreign` (`kode_tunjangan_id`);

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
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `penggajians`
--
ALTER TABLE `penggajians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori_lemburs`
--
ALTER TABLE `kategori_lemburs`
  ADD CONSTRAINT `kategori_lemburs_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_lemburs_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD CONSTRAINT `lembur_pegawais_kode_lembur_id_foreign` FOREIGN KEY (`kode_lembur_id`) REFERENCES `kategori_lemburs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lembur_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `pegawais_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD CONSTRAINT `penggajians_tunjangan_pegawai_id_foreign` FOREIGN KEY (`tunjangan_pegawai_id`) REFERENCES `tunjangan_pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD CONSTRAINT `tunjangans_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangans_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD CONSTRAINT `tunjangan_pegawais_kode_tunjangan_id_foreign` FOREIGN KEY (`kode_tunjangan_id`) REFERENCES `tunjangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangan_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
