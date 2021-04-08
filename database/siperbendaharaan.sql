-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 05:28 AM
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
  `id_apbd` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `pagu_apbd` double NOT NULL,
  `pagu_perubahan_apbd` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_apbd`
--

INSERT INTO `tbl_apbd` (`id_apbd`, `tahun`, `id_rekening`, `pagu_apbd`, `pagu_perubahan_apbd`, `id_user`, `id_opd`) VALUES
(2, 2021, 7, 78, 78, '', '1'),
(4, 2021, 7, 7000, 8000, 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbp`
--

CREATE TABLE `tbl_bbp` (
  `id_bbp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_bbp` varchar(128) NOT NULL,
  `id_buktipajak` varchar(25) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bbp`
--

INSERT INTO `tbl_bbp` (`id_bbp`, `tanggal`, `kode_bbp`, `id_buktipajak`, `debet`, `kredit`, `id_user`, `id_opd`) VALUES
(9, '2021-04-06', '', '19', 0, 23, '', ''),
(10, '2021-04-09', '', '17', 0, 1123, '', '35'),
(11, '2021-04-13', '', '17', 0, 12, 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bpp`
--

CREATE TABLE `tbl_bpp` (
  `id_bpp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_bpp` varchar(128) NOT NULL,
  `id_buktipajak` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bpp`
--

INSERT INTO `tbl_bpp` (`id_bpp`, `tanggal`, `kode_bpp`, `id_buktipajak`, `uraian`, `penerimaan`, `pengeluaran`, `id_user`, `id_opd`) VALUES
(13, '2021-04-05', '', '2131', 'pajak', 2000, 0, '', '35'),
(14, '2021-04-15', '', '123', 'pajak', 0, 5656, 'admin', '35'),
(15, '2021-04-23', '', '2131', 'pembantu pajak', 1234214, 0, 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buktipajak`
--

CREATE TABLE `tbl_buktipajak` (
  `id_buktipajak` int(128) NOT NULL,
  `kode_buktipajak` varchar(128) NOT NULL,
  `nama_buktipajak` varchar(128) NOT NULL,
  `id_rekening` varchar(128) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buktipajak`
--

INSERT INTO `tbl_buktipajak` (`id_buktipajak`, `kode_buktipajak`, `nama_buktipajak`, `id_rekening`, `id_user`, `id_opd`) VALUES
(17, '12313', '12313', '7', 'admin', '35'),
(18, '89080', '45645', '7', 'admin', '1'),
(19, '-', 'gdfg', '7', 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keteranganselisih`
--

CREATE TABLE `tbl_keteranganselisih` (
  `id` int(11) NOT NULL,
  `kode_keterangan` enum('A','B','C','D') NOT NULL,
  `uraian_keteranganselisih` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_keteranganselisih`
--

INSERT INTO `tbl_keteranganselisih` (`id`, `kode_keterangan`, `uraian_keteranganselisih`) VALUES
(1, 'A', 'Penerimaan yang telah dicatat oleh buku, belum dicatat oleh Bank'),
(2, 'B', 'Pengeluaran yang telah dicatat oleh buku, belum dicatat oleh Bank'),
(3, 'C', 'Penerimaan yang telah dicatat oleh Bank, belum dicatat oleh Buku'),
(4, 'D', 'Pengeluaran yang telah dicatat oleh Bank, belum dicatat oleh Buku');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opd`
--

CREATE TABLE `tbl_opd` (
  `id_opd` int(128) NOT NULL,
  `nama_opd` varchar(128) NOT NULL,
  `nip_bud` varchar(128) NOT NULL,
  `nama_bud` varchar(128) NOT NULL,
  `nip_kbud` varchar(128) NOT NULL,
  `nama_kbud` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_opd`
--

INSERT INTO `tbl_opd` (`id_opd`, `nama_opd`, `nip_bud`, `nama_bud`, `nip_kbud`, `nama_kbud`) VALUES
(35, 'Badan Keuangan Daerah', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(128) NOT NULL,
  `kode_rekening` varchar(128) NOT NULL,
  `nama_rekening` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `kode_rekening`, `nama_rekening`, `id_opd`) VALUES
(7, 'asd', 'asd', '35'),
(10, 'fhf', 'fhf', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saldobank`
--

CREATE TABLE `tbl_saldobank` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `saldo` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_saldobank`
--

INSERT INTO `tbl_saldobank` (`id`, `tanggal`, `saldo`, `id_user`, `id_opd`) VALUES
(6, '2021-01-22', 123, '', '35'),
(7, '2021-01-05', 144619041871.43, '', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_selisihrekon`
--

CREATE TABLE `tbl_selisihrekon` (
  `id_selisihrekon` int(11) NOT NULL,
  `tanggal_selisih` date NOT NULL,
  `kode_keterangan` varchar(128) NOT NULL,
  `uraian` varchar(128) NOT NULL,
  `nominal` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_selisihrekon`
--

INSERT INTO `tbl_selisihrekon` (`id_selisihrekon`, `tanggal_selisih`, `kode_keterangan`, `uraian`, `nominal`, `id_user`, `id_opd`) VALUES
(14, '2021-04-14', 'A', 'hgfjh', 9000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id` int(11) NOT NULL,
  `no_sk` varchar(128) NOT NULL,
  `tanggal_sk` date NOT NULL,
  `tanggal_skberakhir` date NOT NULL,
  `nama` varchar(128) NOT NULL,
  `nip` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `gol` int(10) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sk`
--

INSERT INTO `tbl_sk` (`id`, `no_sk`, `tanggal_sk`, `tanggal_skberakhir`, `nama`, `nip`, `jabatan`, `gol`, `id_opd`) VALUES
(1, '2', '2021-01-04', '2021-12-31', 'Sulaiman Lubis, SE', '19690501 199303 1 004', 'Pembina Utama Muda / IV/ c', 1, '35'),
(2, '5', '2021-01-04', '2021-03-31', 'Aswin Hasibuan, S.Ap', '19820911 200312 1 008', 'Penata Tingkat I / III d', 2, '35'),
(3, '9', '2021-04-01', '2021-12-31', 'Asir Aryadi, SE', '19760207 200502 1 002', 'Penata Tingkat I / III d', 2, '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_bukti` enum('SP2D','STS','LAIN-LAIN','-') NOT NULL,
  `no_bukti` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`kode_transaksi`, `tanggal`, `jenis_bukti`, `no_bukti`, `uraian`, `penerimaan`, `pengeluaran`, `id_user`, `id_opd`) VALUES
(12, '2021-01-04', '-', '-', 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', 1500000, 0, '', ''),
(13, '2021-01-04', '-', '-', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 40298352000, 0, '', ''),
(14, '2020-12-31', '-', '-', 'Saldo Akhir Bank Tahun 2020', 104313662823.43, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  `id_opd` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `status`, `is_active`, `id_opd`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 1, 35),
(3, 'operator1', 'operator1', 'operator1', 'member', 1, 1),
(4, 'operator2', 'operator2', 'operator2', 'member', 1, 1),
(5, 'operator3', 'operator3', 'operator3', 'member', 1, 35),
(6, 'operator4', 'operator4', 'operator4', 'member', 1, 35),
(7, 'operator5', 'operator5', 'operator5', 'member', 1, 35),
(8, 'operator6', 'operator6', 'operator6', 'member', 1, 35);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(128) NOT NULL,
  `user_id` int(128) NOT NULL,
  `menu_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `user_id`, `menu_id`) VALUES
(1, 1, 1),
(29, 3, 2),
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
(53, 1, 14),
(54, 1, 15),
(55, 1, 16),
(56, 1, 17),
(57, 5, 4),
(58, 4, 6),
(59, 7, 11),
(60, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `levelmenu` enum('Y','T','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `levelmenu`) VALUES
(1, 'User Management', 'Y'),
(2, 'Rekening', 'T'),
(3, 'Bukti Pajak', 'T'),
(4, 'Buku Besar Pembantu', 'T'),
(5, 'Buku Pembantu Pajak', 'T'),
(6, 'Transaksi', 'T'),
(7, 'APBD', 'T'),
(8, 'Saldo Bank', 'T'),
(9, 'Laporan Rekonsiliasi Bank', 'T'),
(10, 'Laporan Buku Pembantu Pajak', 'T'),
(11, 'Laporan Buku Besar Pembantu', 'T'),
(12, 'Laporan Posisi Kas Harian', 'T'),
(13, 'Laporan Buku Kas Umum', 'T'),
(14, 'Berita Acara Pemeriksaan Kas', 'T'),
(15, 'Register Penutupan Kas', 'T'),
(16, 'Management Akun', 'Y'),
(17, 'Selisih', 'T');

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
(15, 15, 'Register Penutupan Kas', 'laporan/register', 1),
(16, 16, 'Management Akun', 'manageakun/manageakun', 1),
(17, 17, 'Selisih', 'selisihrekon/selisihrekon', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_apbd`
--
ALTER TABLE `tbl_apbd`
  ADD PRIMARY KEY (`id_apbd`,`tahun`,`id_rekening`);

--
-- Indexes for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  ADD PRIMARY KEY (`id_bbp`);

--
-- Indexes for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  ADD PRIMARY KEY (`id_bpp`);

--
-- Indexes for table `tbl_buktipajak`
--
ALTER TABLE `tbl_buktipajak`
  ADD PRIMARY KEY (`id_buktipajak`,`kode_buktipajak`);

--
-- Indexes for table `tbl_keteranganselisih`
--
ALTER TABLE `tbl_keteranganselisih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_opd`
--
ALTER TABLE `tbl_opd`
  ADD PRIMARY KEY (`id_opd`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`,`kode_rekening`);

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
-- Indexes for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`username`);

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
  MODIFY `id_apbd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  MODIFY `id_bbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  MODIFY `id_bpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_buktipajak`
--
ALTER TABLE `tbl_buktipajak`
  MODIFY `id_buktipajak` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_keteranganselisih`
--
ALTER TABLE `tbl_keteranganselisih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_saldobank`
--
ALTER TABLE `tbl_saldobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_selisihrekon`
--
ALTER TABLE `tbl_selisihrekon`
  MODIFY `id_selisihrekon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
