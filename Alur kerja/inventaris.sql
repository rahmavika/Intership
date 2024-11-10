-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 08:14 AM
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
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lokasi_id` bigint(20) UNSIGNED NOT NULL,
  `harga_jual` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kategori_id`, `kode_barang`, `nama_barang`, `deskripsi`, `lokasi_id`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'AS0012', 'Asus ROG Strix Scar 15', 'Laptop dengan spesifikasi tinggi yang cocok untuk bermain game berat.', 1, 20000000.00, '2024-11-09 21:50:05', '2024-11-09 21:50:05'),
(2, 3, 'KY0001', 'Keyboard (mechanical, wireless)', 'Perangkat keras yang digunakan bersama komputer untuk meningkatkan pengalaman pengguna.', 3, 450000.00, '2024-11-09 21:51:17', '2024-11-09 21:51:17'),
(3, 4, 'NS0001', 'Nintendo Switch', 'Perangkat keras dan aksesori yang mendukung pengalaman bermain game.', 2, 780000.00, '2024-11-09 21:52:20', '2024-11-09 21:52:20');

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
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2024-11-09 21:47:24', '2024-11-09 21:47:24'),
(2, 'Aksesoris Laptop', '2024-11-09 21:47:30', '2024-11-09 21:47:30'),
(3, 'Peripherals Komputer', '2024-11-09 21:48:10', '2024-11-09 21:48:10'),
(4, 'Peralatan Gaming', '2024-11-09 21:48:24', '2024-11-09 21:48:24'),
(5, 'Perangkat Audio dan Video', '2024-11-09 21:48:33', '2024-11-09 21:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `keluars`
--

CREATE TABLE `keluars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keluars`
--

INSERT INTO `keluars` (`id`, `barang_id`, `jumlah`, `tanggal_keluar`, `tujuan`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2024-11-02', 'Jawa Barat', '2024-11-09 21:54:09', '2024-11-09 21:54:09'),
(2, 2, 12, '2024-11-10', 'Kalimantan Selatan', '2024-11-09 21:54:36', '2024-11-09 21:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Gudang A', 'Jalan Merdeka No. 12, Jakarta Pusat, DKI Jakarta', '2024-11-09 21:43:19', '2024-11-09 21:43:19'),
(2, 'Gudang B', 'Jalan Sudirman No. 45, Bandung, Jawa Barat', '2024-11-09 21:43:35', '2024-11-09 21:43:35'),
(3, 'Gudang C', 'Jalan Pemuda No. 7, Surabaya, Jawa Timur', '2024-11-09 21:43:55', '2024-11-09 21:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `masuks`
--

CREATE TABLE `masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masuks`
--

INSERT INTO `masuks` (`id`, `barang_id`, `jumlah`, `tanggal_masuk`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 1, 28, '2024-11-01', 1, '2024-11-09 21:52:49', '2024-11-09 21:52:49'),
(2, 2, 16, '2024-11-10', 2, '2024-11-09 21:53:07', '2024-11-09 21:53:07'),
(3, 3, 21, '2024-11-02', 3, '2024-11-09 21:53:28', '2024-11-09 21:53:28');

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
(4, '2024_11_08_082843_create_kategoris_table', 1),
(5, '2024_11_08_083135_create_lokasis_table', 1),
(6, '2024_11_08_083201_create_supliers_table', 1),
(7, '2024_11_08_083251_create_produks_table', 1),
(8, '2024_11_08_083321_create_masuks_table', 1),
(9, '2024_11_09_065655_create_keluars_table', 1),
(10, '2024_11_09_071055_remove_harga_beli_from_masuks_table', 1),
(11, '2024_11_09_122714_rename_produks_to_barangs_table', 1),
(12, '2024_11_09_125729_rename_supliers_to_suppliers_table', 1);

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
('0YKp2vMWXvhStPDSK7B4B3r3W1Cnzl8GDGdMs3ua', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHFYU1FyZTRBOXNqU0RDcmxyWTJHOWRZU2tNcTJSNFIwQmR4c1NmTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731217062),
('195EydS79B77LzoLqyCKdNz8tawnVVovwVH3YJed', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNURlYXJhR095RmpIaTA2YjR1NWRGYlRJWHR1UnFWb3l6U0dGQmcwZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214583),
('2JPahZLGMjjtSEgi9S2WyN2sn8JIgS6fLxdv8w5j', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXJ6Mk1mdEVEeGpqOWk0TktIdndISVp6U01LODFaWGp3enV4Q0NBMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221562),
('2s7C1p1TwiBR5LCGAgK6c28mH483ncDV0SPDsQ1g', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWdIZ2FHY0JyS1NyVGYzbFFPZGhzTVZISVA4YUVKWHYya2ZDeVJRMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215419),
('3rkO3ksT4Vuda2XC0SF7qVo0S4KApgMUAa9W6ZfB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWhiRHlHdXc0T3NieVUwNThMVFQzV281dm9IN3RhaUY2NFhhbk5mOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221584),
('4QvccX0nBxh6GGN5o7goq3vJQU1RRwIOfIfK0k09', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFBSckJPN3VidnRqaFRKREI0NGd0Y09HT2FjbHozVnBRSmRQdFlaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214689),
('4V2XmLv9RpWLtFpgc1MtobA9wmazKXdouaGdx9VP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXVKWDJtRERRazB3d2c2eUZKTWNCczd6ODdJNGcyR1l1OWNPZVd2RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221578),
('82GoEPYEmOX3THJxTWOfU7IbhcB3ujFlZn3pAoRz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHN2d1h6WER0cDZUeDBIeEFQaGJGaGpSMnY3U2FocDNneWRHck9mayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221546),
('8EvjihewZVTvdEK3CAfYHit9FMR6ecloaUaf4DYC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3g3UU84RlJzazJOTGIzOVZISHZOZERId3ZOeEoybVdCcnpLR2t4TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221565),
('8Ov3fEekZOpiB76GvC74oEewFTun8UpUtOEx3LmV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWU2SjE4QUc2aTlCVlN3bHBNUmZKTHVvdXN5UWx4VXhpWjZuY2dmVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215578),
('9A1q2f01EE28FsP7JuOR8V7zgganOsZxbXDwRxpA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazgydFZ5bUpsTDhYRkI0TkxobzZMMnlJTmpVeW44NXlOaWh5QVRONCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215720),
('biw0rblos4E3sPE7aYbXiHq4XCZSiJRVtLcHTVXB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnVhVTh5S2FDd0NHNkRxNVkwaEFwc3NyRVViNTVoWTdSck41c1JGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221622),
('BvGfd8rjnMYrUDo8pfWAN5ZQba9MLAzRtFtdkFqV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDVJV2xpQjl5S0dGSDZkTlFqMmxrNW01cUJhZ3drOTFOVGJxa0xsVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221757),
('BXIvWrO7ilWRZPcGB4ZYAIwmVlG009KintuFbfzc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1BWenlxU280SVpQRTBNNndDQjBwWmNrY2w1QmFQYVk1cFFIY25ySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731220472),
('byjuHuq6SQ83yMkAEaqSczyAJrCGhWachPNLfgS7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1EwQWJ6REJLUHVOZjBKaGNnSThpZ0hVZldtOWRkU1hPTVB3T2dORyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214633),
('ciz7GE53TU72YHyy01dO2HUGibzgC2ohEEy3ADpb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOERhRGVLUm5zOUthM2JhV21teXBFYWFiNjlIVVJUZU5NUnZDcDRMTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215273),
('cJQ1jLGGxbGbm8XXtiMwTvizSnUJTUpMqvDeqjf6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFhpNFVmZGpobmNDZ2tEMzVhb3J4SGk3OEg5SzZiNVdDcW95ODNnUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214595),
('csJioBppzwceYNpABWQ0DO69yb6hEpcgT0sfk5c3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVRCYzAydFJEVldwQ3hLaHh5Qm1BdkM5MnUzZXVVcm9IU0pXRENycSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221840),
('CwkaUJoI0QQNenHbpZGbeB0h2xQ1PMxPLynKvT4t', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnVLS2laclpqVnI1eG1jU05wMlJIV0d1TlA2T0VacFNtbTdDQjRwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221612),
('D5gWYRYRgcBTeHzBIdgXTp7O14a4i2aQooFXVm60', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE5TVkpHT0dPcFFGT09IQ1N2TlQxS1VpQkFIYlZHOWdSbW9PdGJaZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731220477),
('f4awEsjewuXZ3pcZchGN0kwi3KjXiVMRANUiRQuq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3NUdkZzb1Q1YWVKbEtHZE5RVVlSM3lUQmFYMlNaek1PQUF1eFNvYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215430),
('fRS0BQDG5KnWFcd8ovqdJZIJROlU0TQoHVAbPJEU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzVLZXUzUm45ZVJXRnI2ZE1QUVlYUnlwS0pOdnhYSTBCVU51QnFyViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731220493),
('GfsHrmPBCm7MdfFR1pwpUno9qYzRwE1N0NwH0KHu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTZ5RlZvY3prTDBtb2VUNlJhRVM0amdUZ3hCNDF6TDZjd0ViVlROSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221750),
('gOTQqXKuV7G1OC3mtRyMm1LlxdBbdSD1gWXlfB0t', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmdVQUtrd0FBMEkxZ1FTYkJ3UG9GbXNJSnNMdW5NN3FjVkt5OEdTQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221543),
('GxruhjKs9bY6bVn8UUWGhpMhoD4BOPpBi2UfOPgJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem04QVY5NGZOMFJaTUFCaUxFMFh0cEtpcXRWNjJPTGdzejFGZXU2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215282),
('GYN3z6DWXsT7KG12pXVE51a2YGdo1dZKUaXNLBrG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjJvVGxUTjFJSHF6RndJRUFIQWNuMTNzZHN6NlhFeHNDeTFkZktXTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214608),
('HxfgRETNDeoFV8nJa2qcZzxdObJwYzjGuN2QcazJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVpLaFh4MkNadWxEd25nOUxrNHN2b2U4bThoSHU5Nkd4b0tqSHhOOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221525),
('IlmNwE4EyGEef1mSYLW7fV6YwS1LSzo8yYoqbHQY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1dET2xzTFZKSTVvSFFqbk50WjBvMTFUSUdBYUJrVzFMUFpSUWxRaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215291),
('J1PCcvKVbapFLREb6qeFJJqUgeagxCISBkaijz9U', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWd6eUVTQXdYRVhKRmE5bmRTR1dnOWYycktRdUlhNVJIVkp1WGlEMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216692),
('j2oUdMyHmFBa0eVSRGOa2EHEZanvgfeLCbPy7NAP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1FXVXhxYTE2RmtYU3ZPbnBWYWd4Z3NhNEFkMENqSHBmaTNNYWJ4RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221518),
('jMu5epVAkkwivczzNLZKeEuQsk61Rz89ITdk5o1Z', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWZIZUdqeEFBZjRjb0l4c0hhOVhvVllzb1JhOHVSaVVub1hTR0pPeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214699),
('jyxdPqdtUS0fdr1dsLEezfFkAjzjCcP5XGfr3U6E', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlo4NkpmaUlDQWcyMm93cWZ5NjFHc0lWZ2JOY1g0WGtSSGQxdnNxayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216987),
('KZqkrNX7x0zTpsvPVhCea6eJU0WdujDdxeGxCsT0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUxXcExNSW5vdXR6MnNuMWZhVWdIdnlCRXNIcXhmQzFJRUFUdXo4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221652),
('LDdREtPFxs2VpxxFVX6iv0y3aBpB20NNtTc35Uks', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXYzdlpFNFp5TmQ2WXNJY3lZcXRsNm40cENZN2xXcHR0YmZHQ3VsbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215296),
('lg6UZbxuqIbOWYhkJDaDlOWCSukVtkYwzSiDfSwg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY01TWlBNbnJjRkpoS294Nkt3ekpWdFNXUW5JREpSR2t3aEtneFRuYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731220490),
('LIOjOqyuRY1u19wF0cvLzra6MbXmZSOXHAygrfr2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWxGRDdvQUFyTUJqU0JyNTBMQXp5Q3AzMGs2bjRHS3QybnAycHJSSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221540),
('LKehd0WksXPO6PduBCCzNPcrQN46QYkYoXMPMing', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk1BWWp2MUhvWDZ1ZWsya1E3aHBmcjlTVFhNbWhLSlZLQlk3cVY4NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215219),
('lLt0uWpBf0YcKwpV1fSGjLFpmHbmY7W7HkDOZbvv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnd3Vnh5bU0xZDh4Mk42MUw5d3VrZmRrZ0tNVzJEMktsOE5walFMZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216920),
('LqdRuXslpyE6620mjLzvKaFRLEUaLh8uiC6MeVI1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1pTZHh6dWZVQnd0azNZMUhFUVFKMXdYUklENTdkZGZFSm95SHdMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216694),
('mb3cDrvpDZBTonIkE5bvQVBSCJc0cSPpqDKQaj74', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTFnS09KTjhFemlFNjJmWUl1V0RBYVRUNUl0WGVjbG8xZFhLZ1g5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214630),
('mdLV61AC0oJeAuuA8hoEkmsL5Trjg7ukUukHW8xy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUVscTF4Ujk0Ulh0R3lXU2M3M09zOGVESWxCaVUzZ2pGZHNyN3VMcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214745),
('mEERHWz48vD9ZDOQlO6wEENBku1yGAFhLybnsuCE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWVlTjQwWU5QbDRrRUJWNVJFMWhTVTBtMnNzaGZZdk9oaldTZVQxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731218591),
('n7vBXnaPmSGM3IKMrgAgG5QbxFIW3H1nDWMVODD7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJJMWE0bzhGSDV3OEJnNmFNZUlOMHNZanprelpRVFJpR2k4TlJmVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214569),
('NFfqohsmH7FJyy1Whlw4gVBxfWN0e75MAHtg5xja', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEdmckFhZW9jNEd2c0hZZVVMNk5SbTRWZ3VlbEZQeVhPUjlUQlJseiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215200),
('nhe0VHVKNxefDifPLnRkEfBbXnThFhpJapdwlZUt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUhyT0hzWnRsS0tLeFJHZlplczlpbWFUc05qMjNmVkZ0TDNFSnBSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215088),
('ocb5Hd2Nn7bwMubVS9JZiqgF0sRE9o7cl19uEPOX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2M4bk5pa2NrWnFuaThVQWtwRUpsaG9sWDJCTW52M2lFR3FNdVZ0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216659),
('OGTs0yxapn8mOXKovethfTcetRLpvqo5pT7DsZLB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUlJaUJnRTZzb2xYemhZR3F4YzkyV2FWdGthUmFGUzNqS3lFSXNvUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214735),
('OrMsMkOKZqb4GOtgYj51qgWLpKimZWCva1dQCntz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFBmc1IxQVM5RXNNNFpMWEl0UW82clBGaHlZN1pXUFRoc3VsUEtEQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221596),
('pBqXmPLx6FpfEwMpJtpqGE2uhOGJrPdmscQHB70d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXZUN1B4T2c0WDI4TnpOVnpaZkRFY3l5ODJqNkx2Uk9FYTVoY3JWdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215633),
('Pcw1ZJMIbb9ZrFO0X8bWyCmNlQzmlHYxIZRP1VqU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUUzNlNaUUFDRU1yN24zQmtiQU1DOTRWZEhmZjNSdVBieFY4N0NINSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215230),
('pflxJfXnqdv9HaOTStgLSTrgxaTzwMrcMWC0zwOC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk1Ka0pUWFE1eHdWOTUxbHFPemVZY0dIdkhHSTZpeWNGdFhkUVpacCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214663),
('POt19Xpgkq0EGUBfXNE3Xsobi75rLZARUiGxZ9po', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWNidUhxcWlIdGNFRW44OUVhYVN2MFREb0NLeHJ1dnJqYlNneElLaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215091),
('prh4rHBCE1R1GQ3e3dEJdJkrjB1Nw0MSX6As5upY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzY5ZjV5R3FwVlEwUHJhSldnNThKUGdRSmlPOEFzb3VRRGowWGZBbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221591),
('pSkyYI59RIXaJvoWHUJWYcPlm8iisqspcuSeJH4x', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUFtZkJIY2dJN1h1WUFCSWh2ZkkxQ283UTJ5VmpaSVVvUUM4MHFRMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215556),
('QyXmeTCD8iG5TkO6P5yL9gmQj1zb9acjCJl6DDqg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXVqb0VRZldDcUREZmVqbVpGSDdOM0Jac3BOZ3lMeWVubHVIbWtjUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216665),
('R7h9uNc5NpsGewGJJFHFKMXUEqcUmGDt1KjUMjPm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzBrUkUzM2FIRU5SQnJWcENYZzlXb1F2NUVYbWRFNjBhN3pOQml1QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215317),
('s7gUauFhFpbtYUfurpdRmjnmEl5QupwYZuRGRw3c', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3J4NjJyVkVxQmtCSnN4bHAweElaU2N2UlQwQlBwNjU0YlVMYk1GUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215137),
('smyoYFPUFJXsv0DNcxJ5Nxs4RGgNVbYmuhgjcWsm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVpKM2p3VmpDSXZSeWdJYnRMUkZuTUY2dkV4bU9PaXFVYzBvNXlBSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215647),
('tgoZXuFXaj4rc2QAdhC4EfLdSq14nlbGnDxpQYHU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRG5yZkJsNWJkR01LVGxwenAzUVNqZjZkYWFkUDF1S2hxY1hKeTRJMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214787),
('TGY3JiUhaXWCfgBIuP0fSLWFBKmQrupQjp8TsHsy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTZqRmdpbXdKR0E5TWhodm4wQkRpQ0pTWm5kQldiZWhOZXpWU2R2OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221552),
('tLJlRKecAh6LqSB7LaXpq6AGztrP7z9Pid1v7s5s', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXJwYmtaTWZZZXpEcWZza1hFUEMxUXFEZmZSSWZ0VVZLNEltb1duTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731219392),
('uTwFOGOKQEPavNckgAn151lMeNTdmX2dOdTD3zRR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlFsdk96WjlQckdRVWY0RWRpemFKSlRmZnZ1bEtkNjNDVElUYWVaViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221820),
('vIugpU7iJlJSWgjGPGtlvFq18EnmcAf87Z6SjGH1', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlRBRFZCZzcwZW1vYjBGbWdPbGUyeEE5ZkJvMXpEUEJzSk5TbmFmNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQta2F0ZWdvcmkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjt9', 1731222504),
('w6r5Jq1VgC8qHOzSNbu6YZstzIGYidT2wxdnHa64', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGRVR3ZZM2dXdUVTdEdpUm1kRWZ3UnJTcGU3U3VPek1DNXZaMVNrVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214759),
('WbdvuYBjiMPffun0yDKpgpXDs06lWUlGD5PS33AD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2VCaFZ4WWJqQlVFWHJaSzVwQTRKdjVVckw0Q1NRT2VLa3JHQ0hlNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215311),
('wCOSfwW5Nc300eX0rsfHynX5QQvVE1EyWQlkmzMQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUk2N1V3SFhNYmVPMWF5NEFMa1dVYUs4OUdsejBNYUJyeXZ0OGRPbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731216650),
('wjjOycHm5SPpR0Y35yjb6cs30CWukcYonEzUhdX2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialhzNUVQbnBURmVxcjd2WWRNeURWU1lEcEdsZml0aGlqeU5tVXFSMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731220467),
('WZxq2ePL8mnKrnTwLq7RJgV8CKqPL0CqSlPqkhUz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFZGWjYzZGppcVU2cExkVU1GN0FKQnNJZVk5RFVMd1p3Sndjc2RIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731218839),
('x6lcwthgwdmoNQkAlOXvHC35Ij0xgAoBFOpDA8L4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU5GdGhNZHoyVWtsMlZrRGpBa2ppVU9tRTFCeUhUZmJhZHcxSEFjSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221647),
('XqwitwSNuH1ajFuB0Rc4L1Du7W5cfbClIc5mbhTq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmoxT1dPdFYzajhLaXoyWklsZmljMVY4ckJJTVhDV1N0WjVWM0tBQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731214721),
('Y2X2h4sMbFPje6Pu5uLsiBUaBPisoTdUbTGSTlE1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2oyU0w5QzZvQXA3cjNocDR6WU82eVI5TDdYaXJjRFFGc2lUSkNKZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215215),
('Y3oOrhVarmDInJLLDwe3G4rllRNGkMLWGwXcRnZb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVZ5aXF1Qk9qZ1lXOGZzMktma3NnclBFM0JCcW5LdzVMWmJGdndiTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215177),
('y4TFs8bTMeZ4f0IPiEXa8aUOPjegDPSRSmmNXvq8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG02RjRMcE85akJUQk9WQXNyZVRGRmNkZU1uQURkTGFSNFo0UmowZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215204),
('yUJBvk1pyYZNsbEPRpBKgywnQdaEj292MRf4txNZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVhnazRCb3RJWGRpY3QxTDZzcHpDZXhWbkNuejhGSjV5aDhBajFCVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731215584),
('ZJ1KeFUJ0juMhF3bXDQ1vsrYQGe1ygARtZ3pz1hN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkZTazA5V3JqR29sOWxkU1hOZTc1NEJPTGRMOUoxME9xTGd3RTZ1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221568),
('zMFMq7bd9br78zpErfzbDYPK4DKkGoaLJTEwit2M', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUJSUlNWNnFWSXlzVlpaZ0xXQWxIT1pjRjhFMGFrQ0JGdDJKMlpkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731217076);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `nama_supplier`, `kontak`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'PT. Laptop Canggih', '081234567890', 'Jalan Jendral Sudirman No. 20, Jakarta Selatan, DKI Jakarta', '2024-11-09 21:44:28', '2024-11-09 21:44:28'),
(2, 'CV. Teknologi Masa Depan', '082345678901', 'Jalan Diponegoro No. 15, Bandung, Jawa Barat', '2024-11-09 21:44:50', '2024-11-09 21:44:50'),
(3, 'UD. Laptop Jaya', '083456789012', 'Jalan Hasanuddin No. 8, Surabaya, Jawa Timur', '2024-11-09 21:45:14', '2024-11-09 21:45:14');

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
(1, 'Daruna Uwais', 'victoria.prasetyo@example.org', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'uT5sXm9zWK', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(2, 'Karta Widodo', 'prasetyo.tina@example.net', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'NFtW7IYX5i', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(3, 'Salman Maheswara', 'maimunah29@example.net', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', '2Bne7rS8hl', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(4, 'Capa Samosir', 'gfujiati@example.com', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'XT9IEPiGMm', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(5, 'Emin Damanik', 'sprastuti@example.net', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'bS86fM3krC', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(6, 'Tira Mandasari S.Gz', 'widya74@example.com', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'HYqhAF1VLX', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(7, 'Warsa Budiman', 'guwais@example.com', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'GVvEKmxmMo', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(8, 'Luluh Budiman', 'kardi.manullang@example.org', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'mAyzOuBy2H', '2024-11-09 18:26:31', '2024-11-09 18:26:31'),
(9, 'Mariadi Hartana Tarihoran S.E.', 'ipuspasari@example.com', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'gz3Iqkpkyw', '2024-11-09 18:26:32', '2024-11-09 18:26:32'),
(10, 'Rahayu Rahimah', 'prasasta.kamidin@example.net', '2024-11-09 18:26:31', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'Y4uScfLbMn', '2024-11-09 18:26:32', '2024-11-09 18:26:32'),
(11, 'Test User', 'test@example.com', '2024-11-09 18:26:32', '$2y$12$5HPESiSpvOA0aASDYzL1FugLTVzwwh1NsfAoB1aUL/jKGTeFWmm42', 'WBCJNVU4eJ', '2024-11-09 18:26:32', '2024-11-09 18:26:32'),
(12, 'Rahma Vika Safitri', 'vika@gmail.com', NULL, '$2y$12$AQDdjTsxuiaYpd98cp0JOeqwlp0OlJAW9klAXjR7SoeKVNxb1KM9C', NULL, '2024-11-09 19:57:55', '2024-11-09 19:57:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produks_kode_barang_unique` (`kode_barang`);

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
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluars`
--
ALTER TABLE `keluars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masuks`
--
ALTER TABLE `masuks`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
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
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keluars`
--
ALTER TABLE `keluars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masuks`
--
ALTER TABLE `masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
