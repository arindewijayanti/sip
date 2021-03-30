-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2021 at 04:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siperbendaharaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apbd`
--

CREATE TABLE `tbl_apbd` (
  `id` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `kode_rekening` varchar(50) NOT NULL,
  `pagu_apbd` bigint(128) NOT NULL,
  `pagu_perubahan_apbd` bigint(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_apbd`
--

INSERT INTO `tbl_apbd` (`id`, `tahun`, `kode_rekening`, `pagu_apbd`, `pagu_perubahan_apbd`) VALUES
(1, '2021', '4.2.1.01.04', 4000000000, 3000000000),
(2, '2021', '4.2.1.01.02', 5000000000, 5000000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbp`
--

CREATE TABLE `tbl_bbp` (
  `kode_bbp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_buktipajak` varchar(25) NOT NULL,
  `debet` varchar(25) NOT NULL,
  `kredit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bbp`
--

INSERT INTO `tbl_bbp` (`kode_bbp`, `tanggal`, `kode_buktipajak`, `debet`, `kredit`) VALUES
(2, '2021-03-10', '05/PBB', '0', '797069100'),
(3, '2021-03-10', '05/PBB', '0', '4589157'),
(4, '2021-03-12', '05/PBB', '0', '37346498'),
(5, '2021-03-10', '05/PBB', '0', '4216072');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bpp`
--

CREATE TABLE `tbl_bpp` (
  `kode_bpp` int(11) NOT NULL,
  `kode_buktipajak` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `penerimaan` int(25) NOT NULL,
  `pengeluaran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bpp`
--

INSERT INTO `tbl_bpp` (`kode_bpp`, `kode_buktipajak`, `uraian`, `tanggal`, `penerimaan`, `pengeluaran`) VALUES
(1, '123', 'ASD', '2021-03-10', 10000, 0),
(4, '123', 'benar', '2021-03-10', 0, 2000),
(6, '12', 'tes', '2021-03-29', 600000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buktipajak`
--

CREATE TABLE `tbl_buktipajak` (
  `kode_buktipajak` varchar(25) NOT NULL,
  `nama_buktipajak` varchar(100) NOT NULL,
  `kode_rekening` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buktipajak`
--

INSERT INTO `tbl_buktipajak` (`kode_buktipajak`, `nama_buktipajak`, `kode_rekening`) VALUES
('-', 'tes', '4.2.1.01.01'),
('05/PBB', 'Penerimaan KB DPH PBB Perkebunan TA. 2018', '4.2.1.01.04'),
('45', 'df', '4.2.1.01.04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `kode_rekening` varchar(25) NOT NULL,
  `nama_rekening` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`kode_rekening`, `nama_rekening`) VALUES
('4.2.1.01.01', 'Bagi Hasil dari Pajak Bumi dan Bangunan sektor Pertambangan'),
('4.2.1.01.04', 'Bagi Hasil dari Pajak Bumi dan Bangunan sektor Perkebunan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saldobank`
--

CREATE TABLE `tbl_saldobank` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_saldobank`
--

INSERT INTO `tbl_saldobank` (`id`, `tanggal`, `saldo`) VALUES
(1, '2021-03-10', 200000),
(3, '2021-03-18', 300000),
(4, '2021-03-13', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_selisihrekon`
--

CREATE TABLE `tbl_selisihrekon` (
  `id_selisihrekon` int(11) NOT NULL,
  `tanggal_selisih` date NOT NULL,
  `kode_keterangan` varchar(128) NOT NULL,
  `uraian` varchar(128) NOT NULL,
  `nominal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_selisihrekon`
--

INSERT INTO `tbl_selisihrekon` (`id_selisihrekon`, `tanggal_selisih`, `kode_keterangan`, `uraian`, `nominal`) VALUES
(1, '2021-03-13', 'A', 'STS NO', 2000),
(2, '2021-03-13', 'A', 'STS NO', 1000),
(3, '2021-03-13', 'B', 'SFDSDF', 1000),
(4, '2021-03-13', 'C', 'SFGFDF', 500),
(5, '2021-03-13', 'D', 'DGHDFH', 84000),
(6, '2021-03-13', 'D', 'asdsfd', 500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_bukti` enum('SP2D','STS','LAIN-LAIN','') NOT NULL,
  `no_bukti` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` int(25) NOT NULL,
  `pengeluaran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`kode_transaksi`, `tanggal`, `jenis_bukti`, `no_bukti`, `uraian`, `penerimaan`, `pengeluaran`) VALUES
(2, '2021-03-10', 'STS', '123', 'dfsf', 200000, 0),
(3, '2021-03-10', 'LAIN-LAIN', '123', 'ddddd', 0, 10000),
(4, '2021-03-12', 'SP2D', '123', 'asd', 0, 1000),
(5, '2021-03-13', 'SP2D', '12', 'benar', 100000, 0),
(6, '2021-03-13', 'STS', '567', 'tes', 0, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `role_id`, `is_active`) VALUES
(1, 'admin', 'admin', 'admin', 1, 1),
(3, 'operator1', 'operator1', 'operator1', 2, 1),
(4, 'operator2', 'operator2', 'operator2', 3, 1),
(5, 'operator3', 'operator3', 'operator3', 4, 1),
(6, 'operator4', 'operator4', 'operator4', 5, 1),
(7, 'operator5', 'operator5', 'operator5', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(28, 1, 1),
(29, 2, 2),
(33, 5, 7),
(34, 5, 8),
(35, 6, 9),
(36, 1, 2),
(37, 1, 3),
(38, 1, 4),
(39, 1, 5),
(40, 1, 6),
(41, 1, 7),
(42, 1, 8),
(43, 1, 9),
(44, 1, 10),
(45, 1, 11),
(46, 1, 12),
(47, 1, 13),
(48, 2, 12),
(49, 2, 0),
(51, 2, 13),
(52, 2, 8),
(53, 1, 14),
(54, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'User Management'),
(2, 'Rekening'),
(3, 'Bukti Pajak'),
(4, 'Buku Besar Pembantu'),
(5, 'Buku Pembantu Pajak'),
(6, 'Transaksi'),
(7, 'APBD'),
(8, 'Saldo Bank'),
(9, 'Laporan Rekonsiliasi Bank'),
(10, 'Laporan Buku Pembantu Pajak'),
(11, 'Laporan Buku Besar Pembantu'),
(12, 'Laporan Posisi Kas Harian'),
(13, 'Laporan Buku Kas Umum'),
(14, 'Berita Acara Pemeriksaan Kas'),
(15, 'Register Penutupan Kas');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'operator1'),
(3, 'operator2'),
(4, 'operator3'),
(5, 'operator4'),
(6, 'operator5');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `is_active`) VALUES
(1, 1, 'Management User', 'manageuser/manageuser', 1),
(2, 2, 'Rekening', 'rekening/rekening', 1),
(3, 3, 'Bukti Pajak', 'buktipajak/buktipajak', 1),
(4, 4, 'Buku Besar Pembantu', 'bbp/bbp', 1),
(5, 5, 'Buku Pembantu Pajak', 'bpp/bpp', 1),
(6, 6, 'Transaksi', 'transaksi/transaksi', 1),
(7, 7, 'APBD', 'apbd/apbd', 1),
(8, 8, 'Saldo Bank', 'saldobank/saldobank', 1),
(9, 9, 'Laporan Rekonsiliasi Bank', 'laporan/rekonsiliasibank', 1),
(10, 10, 'Laporan Buku Pembantu Pajak', 'laporan/bukupembantupajak', 1),
(11, 11, 'Laporan Buku Besar Pembantu', 'laporan/bukubesarpembantu', 1),
(12, 12, 'Laporan Posisi Kas Harian', 'laporan/posisikasharian', 1),
(13, 13, 'Laporan Buku Kas Umum', 'laporan/bukukasumum', 1),
(14, 14, 'Berita Acara Pemeriksaan Kas', 'laporan/bapemeriksaankas', 1),
(15, 15, 'Register Penutupan Kas', 'laporan/register', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_apbd`
--
ALTER TABLE `tbl_apbd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  ADD PRIMARY KEY (`kode_bbp`);

--
-- Indexes for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  ADD PRIMARY KEY (`kode_bpp`);

--
-- Indexes for table `tbl_buktipajak`
--
ALTER TABLE `tbl_buktipajak`
  ADD PRIMARY KEY (`kode_buktipajak`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indexes for table `tbl_saldobank`
--
ALTER TABLE `tbl_saldobank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_selisihrekon`
--
ALTER TABLE `tbl_selisihrekon`
  ADD PRIMARY KEY (`id_selisihrekon`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_apbd`
--
ALTER TABLE `tbl_apbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  MODIFY `kode_bbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  MODIFY `kode_bpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_saldobank`
--
ALTER TABLE `tbl_saldobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_selisihrekon`
--
ALTER TABLE `tbl_selisihrekon`
  MODIFY `id_selisihrekon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
