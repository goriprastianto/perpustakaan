-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 11:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(11) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status_buku` enum('Tersedia','Sedang DIpinjam','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `tahun_terbit`, `penulis`, `foto`, `status_buku`) VALUES
('978-602-867', 'Dasar Dasar Uroginekologi', '2011', 'Pribakti B', '1641375939_e81985298f51163f6150.jfif', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
('C1955201000', 'manusia gunung', 'Sistem Informasi', 'pria', '42389428942', 'huerhweurw8@gmail.com', 'djaihwerew', '1638769564_140317ad88f5df1789e7.jpeg', '2021-12-05 23:46:04', '2021-12-05 23:46:04'),
('C1955201001', 'ganteng', 'Sistem Informasi', 'pria', '43249242', 'hrewurhwurw@yahoo.com', 'bweruwbrwurbwurw', '1638772657_b67c852bdc1603186629.jpeg', '2021-12-06 00:37:37', '2021-12-06 00:37:37'),
('C1955201010', 'Ellin A.P', 'Sosiologi', 'wanita', '081345990764', 'ellin@gmail.com', 'Murung Raya', '1638179109_4b2b542ca76b8dab0524.jpg', '2021-11-29 03:45:09', '2021-11-29 03:45:09'),
('C1955201068', 'Gori Prastianto', 'Teknik Informatika', 'pria', '081345990734', 'goryprastianto@gmail.com', 'Murung Raya', '1638178794_fc9d91a81d42f5572547.jpeg', '2021-11-29 03:39:54', '2021-11-29 03:39:54'),
('C2055201002', 'Budi', 'Teknik Informatika', 'pria', '08571234567', 'budi@gmail.com', 'Jl. G.Obos No. 77, Palangka\n\nRaya', '', '2021-11-28 19:30:38', NULL),
('C2055201003', 'Avrilyne Odela Prawara', 'Sistem Informasi', 'wanita', '08122334455', 'odela@gmail.com', 'Jl. Rembulan No. 90, Palangka\n\nRaya', '', '2021-11-28 19:30:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2021-10-19-120410', 'App\\Database\\Migrations\\Users', 'default', 'App', 1638149344, 1),
(6, '2021-11-28-171036', 'App\\Database\\Migrations\\Mahasiswa', 'default', 'App', 1638149344, 1),
(8, '2021-12-18-050055', 'App\\Database\\Migrations\\Mahasiswa', 'default', 'App', 1639804160, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `created_at`, `updated_at`) VALUES
('gori068', '$2y$10$FBu3HYQ1h8x4CD/NqlkgeeNs577lx05B1WqQtyiG/uFwav/3T7Iri', 'Gori Prastianto', '2021-11-29 01:45:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
