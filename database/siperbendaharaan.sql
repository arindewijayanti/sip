-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 08:20 PM
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
(1, '2020-05-14', '05/PBB', '0', '13994219'),
(2, '2021-03-10', '05/PBB', '0', '738584'),
(3, '2021-03-10', '05/PBB', '0', '53390800'),
(4, '2021-03-12', '05/PBB', '0', '2817600'),
(5, '2021-03-10', '05/PBB', '0', '12257670');

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
(4, '123', 'benar', '2021-03-10', 0, 2000);

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
('05/PBB', 'Penerimaan KB DPH PBB Perkebunan TA. 2018', '4.2.1.01.04');

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
('4.2.1.01.04', 'Bagi Hasil dari Pajak Bumi dan Bangunan sektor Perkebunan');

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
(5, '2021-03-09', 'SP2D', '12', 'benar', 1000, 0);

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
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 2),
(9, 2, 3),
(10, 3, 4),
(11, 3, 5),
(12, 1, 8),
(13, 1, 9),
(14, 1, 10),
(15, 1, 11);

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
(7, 'Laporan Posisi Kas Harian'),
(8, 'Laporan Buku Kas Umum'),
(9, 'Laporan Rekonsiliasi Bank'),
(10, 'Laporan Buku Pembantu Pajak'),
(11, 'Laporan Buku Besar Pembantu');

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
(7, 7, 'Laporan Posisi Kas Harian', 'laporan/posisikasharian', 1),
(8, 8, 'Laporan Buku Kas Umum', 'laporan/bukukasumum', 1),
(9, 9, 'Laporan Rekonsiliasi Bank', 'laporan/rekonsiliasibank', 1),
(10, 10, 'Laporan Buku Pembantu Pajak', 'laporan/bukupembantupajak', 1),
(11, 11, 'Laporan Buku Besar Pembantu', 'laporan/bukubesarpembantu', 1);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  MODIFY `kode_bbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  MODIFY `kode_bpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
