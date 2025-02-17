-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2025 pada 22.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_05_155426_add_role_to_users_table', 1),
(6, '2025_01_07_205351_create_transactions_table', 2),
(7, '2025_01_07_205549_create_payments_table', 3),
(8, '2025_01_07_205944_create_transaction_details_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `id_transaksi`, `kode_transaksi`, `metode_pembayaran`, `tanggal_pembayaran`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(23, 25, 'TRX-677FA152EF340', 'cod', '2025-01-09', '3', '2025-01-09 03:13:39', '2025-01-09 03:14:46'),
(24, 26, 'TRX-6784F9A735E28', 'transfer_bank', '2025-01-13', '0', '2025-01-13 04:31:51', '2025-01-13 04:31:51'),
(25, 27, 'TRX-678539DEBBF84', 'transfer_bank', '2025-01-13', '0', '2025-01-13 09:05:50', '2025-01-13 09:05:50'),
(26, 28, 'TRX-67853C3B189EC', 'transfer_bank', '2025-01-13', '0', '2025-01-13 09:15:55', '2025-01-13 09:15:55'),
(27, 29, 'TRX-6785402AACE38', 'transfer_bank', '2025-01-13', '3', '2025-01-13 09:32:42', '2025-01-19 04:04:26'),
(28, 30, 'TRX-6790D2CC05746', 'transfer_bank', '2025-01-22', '2', '2025-01-22 04:13:16', '2025-01-22 04:14:01'),
(29, 31, 'TRX-679145C53D5AD', 'transfer_bank', '2025-01-22', '2', '2025-01-22 12:23:49', '2025-01-22 12:24:11'),
(30, 32, 'TRX-6791493716E03', 'transfer_bank', '2025-01-22', '2', '2025-01-22 12:38:31', '2025-01-22 12:38:51'),
(31, 33, 'TRX-67914EB68E41D', 'transfer_bank', '2025-01-22', '2', '2025-01-22 13:01:58', '2025-01-22 13:02:53'),
(32, 34, 'TRX-67915487F1004', 'transfer_bank', '2025-01-22', '2', '2025-01-22 13:26:48', '2025-01-22 13:27:03'),
(33, 35, 'TRX-6791586B53636', 'transfer_bank', '2025-01-22', '2', '2025-01-22 13:43:23', '2025-01-22 13:43:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `kategori_produk` varchar(225) NOT NULL,
  `merk_produk` varchar(225) NOT NULL,
  `harga_produk` int(100) NOT NULL,
  `stok_produk` int(10) NOT NULL,
  `deskripsi_produk` varchar(225) DEFAULT NULL,
  `gambar_produk` varchar(225) NOT NULL,
  `status_produk` enum('Ready','Sold') NOT NULL,
  `kondisi_produk` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_produk`, `kategori_produk`, `merk_produk`, `harga_produk`, `stok_produk`, `deskripsi_produk`, `gambar_produk`, `status_produk`, `kondisi_produk`, `created_at`, `updated_at`) VALUES
(3, 'Canon', 'Kamera', 'Cannon', 50000, 16, 'asdawda', 'assets/img/products/bannerkecil.jpg', 'Ready', 'baik', '2025-01-07 20:08:02', '2025-01-13 09:32:08'),
(4, 'Canon', 'Kamera', 'Cannon', 50000, 19, 'asdawda', 'assets/img/products/bannerkecil.jpg', 'Ready', 'baik', '2025-01-07 20:08:02', '2025-01-13 08:15:52'),
(9, 'Pentax Acron', 'Kamera', 'Pentax', 30000, 113, '123456', 'assets/img/products/1736761656.jpeg', 'Ready', 'baru', '2025-01-08 11:04:32', '2025-01-22 12:37:37'),
(10, 'Sony Mirrorles A7R', 'Kamera', 'Sony', 60000, 8, 'Kamera digital mirrorles. cocok untuk mengambil gambar.', 'assets/img/products/1736762061.jpg', 'Ready', 'baru', '2025-01-13 02:54:21', '2025-01-22 13:42:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `total_harga` decimal(15,2) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL DEFAULT 'pending',
  `image_kk` varchar(255) NOT NULL,
  `image_ktp` varchar(255) NOT NULL,
  `image_transfer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `kode_transaksi`, `user_id`, `tanggal_sewa`, `tanggal_kembali`, `total_harga`, `status_pembayaran`, `image_kk`, `image_ktp`, `image_transfer`, `created_at`, `updated_at`) VALUES
(25, 'TRX-677FA152EF340', 7, '2025-01-09', '2025-01-11', 100000.00, '6', 'assets/img/kk/XvMRg6I2Am3UPbQuQ1pJADi2w3ufwlONN2avQhW6.png', 'assets/img/ktp/rsqYSBwr6XczDvLShsp8cFHCRzMTUsBJVLbYMtBq.png', '0', '2025-01-09 03:13:38', '2025-01-09 03:29:07'),
(26, 'TRX-6784F9A735E28', 8, '2025-01-13', '2025-08-30', 6870000.00, '0', 'assets/img/kk/zUUU7EQeQNRIbD6I1w0jGwvztG9FpURtiJyZka1u.png', 'assets/img/ktp/WSna1krUYhRx2gdZuOFA3ej8sxCo91ISb1cxmMEC.png', '0', '2025-01-13 04:31:51', '2025-01-13 04:31:51'),
(27, 'TRX-678539DEBBF84', 9, '2025-01-13', '2025-04-15', 2760000.00, '0', 'assets/img/kk/QtXZLNmQXk6G5nwaZ4pMaiFe7h6xqxr9A4vJkQYK.png', 'assets/img/ktp/Jkp0nF3FUm37QHbiB2RKl7GElldvPLoqG2n2m54v.png', '0', '2025-01-13 09:05:50', '2025-01-13 09:05:50'),
(28, 'TRX-67853C3B189EC', 9, '2025-01-19', '2025-03-03', 1290000.00, '0', 'assets/img/kk/N2YFMDMTwGageCPxf4IVkX9DFsBCuMl6Izfyo8mm.png', 'assets/img/ktp/QaNgIUbnOD3xVhJ3jX9HpXfg7v5uJ1ooMfemMZDc.png', '0', '2025-01-13 09:15:55', '2025-01-13 09:15:55'),
(29, 'TRX-6785402AACE38', 9, '2025-01-13', '2025-01-30', 1360000.00, '3', 'assets/img/kk/AJK8uZjWVkYtEuEObQofjl0R5pmCsc7QsovllkQc.png', 'assets/img/ktp/fIaAZsuRBYxL6VbIkf4Fnqmff0BHH0tWgPatjFxG.png', 'assets/img/payments/WOFF4vgnpUs2aWoCkz0L4QCURhjmCesacyjTPOYG.png', '2025-01-13 09:32:42', '2025-01-19 04:04:26'),
(30, 'TRX-6790D2CC05746', 9, '2025-01-22', '2025-03-21', 1740000.00, '2', 'assets/img/kk/H4CjLz7WpaAwcKbBE3siP7Ars6dx0javNVrhlY1v.png', 'assets/img/ktp/Bk2ToOHJZJgqr3KGzqoRsV5rMwwZAyTaNWGWIsi0.png', 'assets/img/payments/ZklRGlIDMpU1DL6q3yxqhwuPS0dcY6E8xSjalncC.png', '2025-01-22 04:13:16', '2025-01-22 04:14:01'),
(31, 'TRX-679145C53D5AD', 9, '2025-01-23', '2025-02-16', 720000.00, '2', 'assets/img/kk/FUFma8TsBppLJJpicNCWEiHyU9Bpi9GEq1K0E42N.png', 'assets/img/ktp/EHk39xh2MaDPRXdqU4QmjN5uJwSEXFURX9SVjsF0.png', 'assets/img/payments/cnUq0TNCxfyFD9x0tIXpRjV3jYgjUjsSB0sfstq0.png', '2025-01-22 12:23:49', '2025-01-22 12:24:11'),
(32, 'TRX-6791493716E03', 9, '2025-01-23', '2025-03-23', 1770000.00, '2', 'assets/img/kk/IYDOjQ7HC9Qi8NuIAqvyTckITZhegZ6JuSxU9X7X.png', 'assets/img/ktp/WscfPZwdEgaLo6EkR8ODDrHh3QyKvtzRCcR1nhG5.png', 'assets/img/payments/a06V9k4hlpWebn8Dsu0sPDgpEZyFZ1Fxtvii93YB.png', '2025-01-22 12:38:31', '2025-01-22 12:38:51'),
(33, 'TRX-67914EB68E41D', 9, '2025-01-23', '2025-02-25', 1980000.00, '2', 'assets/img/kk/NaGIxOfO3kGG3m0LHbxbHiim8w3IQAW2srBZukN3.png', 'assets/img/ktp/BKGEz3c5UopwDPcGAbPEwOq454puSXYg7AH8cPz4.png', 'assets/img/payments/OOWL21CHGb15fORXQv2mZRA1nkvlT2u5F4rBi9ui.png', '2025-01-22 13:01:58', '2025-01-22 13:02:53'),
(34, 'TRX-67915487F1004', 8, '2025-01-23', '2025-02-23', 1550000.00, '2', 'assets/img/kk/VrZSnK3pJi68TOfSQ4TiEZoKLJo6ICmnnzGmOkdD.png', 'assets/img/ktp/LS3dVZJw8YkL2whuC1tHlAYqV8CnOn5T79ZWzcD6.png', 'assets/img/payments/WTCuP4LLaS5aUmIZej4ypu3GDvhJ5Vhe3SOgSvp8.png', '2025-01-22 13:26:47', '2025-01-22 13:27:03'),
(35, 'TRX-6791586B53636', 8, '2025-01-23', '2025-02-26', 2040000.00, '2', 'assets/img/kk/y4UTIAcyqLpAEjQcEyhBQRjfj6BGBzEB7WHMDLiS.png', 'assets/img/ktp/5H5hmiU0RVspjzHWJbro1NZaskSaYtZsPJuVD0vn.png', 'assets/img/payments/FezRqYzS7PYIvecLD3wSNVeAgfwSIIkbCJWsAmmt.png', '2025-01-22 13:43:23', '2025-01-22 13:43:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_satuan` decimal(15,2) NOT NULL,
  `durasi_sewa` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `id_transaksi`, `id_produk`, `quantity`, `harga_satuan`, `durasi_sewa`, `subtotal`, `created_at`, `updated_at`) VALUES
(28, 25, 3, 1, 50000.00, 2, 100000.00, '2025-01-09 03:13:39', '2025-01-09 03:13:39'),
(29, 26, 9, 1, 30000.00, 229, 6870000.00, '2025-01-13 04:31:51', '2025-01-13 04:31:51'),
(30, 27, 9, 1, 30000.00, 92, 2760000.00, '2025-01-13 09:05:50', '2025-01-13 09:05:50'),
(31, 28, 9, 1, 30000.00, 43, 1290000.00, '2025-01-13 09:15:55', '2025-01-13 09:15:55'),
(32, 29, 9, 1, 30000.00, 17, 510000.00, '2025-01-13 09:32:42', '2025-01-13 09:32:42'),
(33, 29, 3, 1, 50000.00, 17, 850000.00, '2025-01-13 09:32:42', '2025-01-13 09:32:42'),
(34, 30, 9, 1, 30000.00, 58, 1740000.00, '2025-01-22 04:13:16', '2025-01-22 04:13:16'),
(35, 31, 9, 1, 30000.00, 24, 720000.00, '2025-01-22 12:23:49', '2025-01-22 12:23:49'),
(36, 32, 9, 1, 30000.00, 59, 1770000.00, '2025-01-22 12:38:31', '2025-01-22 12:38:31'),
(37, 33, 10, 1, 60000.00, 33, 1980000.00, '2025-01-22 13:01:58', '2025-01-22 13:01:58'),
(38, 34, 4, 1, 50000.00, 31, 1550000.00, '2025-01-22 13:26:48', '2025-01-22 13:26:48'),
(39, 35, 10, 1, 60000.00, 34, 2040000.00, '2025-01-22 13:43:23', '2025-01-22 13:43:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `telephone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Om Admin', 'Admin@gmail.com', NULL, '$2y$10$f7J8rpcswi3/qsoPGjdGiOXEvqvKfCPdIosvyBTTI5FF63r8OkMHG', '123456789123', 'admin', NULL, '2025-01-07 12:22:30', '2025-01-07 12:22:30'),
(7, 'admin@admail.com', 'admin@admail.com', NULL, '$2y$10$jgACDC/LEUyPGpWq211.0.wEWqn8lYjytijdqPTQr94lT22qbhVzK', '123456789', 'user', NULL, '2025-01-09 03:12:38', '2025-01-09 03:12:38'),
(8, 'Efendi Sugiantoro', 'efendisugiantoro18@gmail.com', NULL, '$2y$10$I1G5QzSE3eXBLOI6F845z.LWGjdnlPQkAjLxNCNZtSEyeD9I1VTji', '12345678910', 'user', NULL, '2025-01-13 02:57:17', '2025-01-13 02:57:17'),
(9, 'Efendi Sugiantoro', 'efendisugiantoro16@gmail.com', NULL, '$2y$10$AXQG94aLwZYaGYxLOj1mdO5exwyqiJt7HFgn7AfCKju4bbeZVNrOu', '082332963807', 'user', NULL, '2025-01-13 09:04:23', '2025-01-13 09:04:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_id_transaksi_foreign` (`id_transaksi`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_kode_transaksi_unique` (`kode_transaksi`),
  ADD KEY `transaction_id_user_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_id_transaksi_foreign` (`id_transaksi`),
  ADD KEY `transaction_details_id_produk_foreign` (`id_produk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_telephone_unique` (`telephone`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transaction_id_user_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
