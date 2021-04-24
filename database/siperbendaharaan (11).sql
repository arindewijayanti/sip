-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 08:15 AM
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
-- Table structure for table `tbl_administrator`
--

CREATE TABLE `tbl_administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_administrator`
--

INSERT INTO `tbl_administrator` (`id`, `username`, `password`, `name`) VALUES
(1, 'arin', 'arin', 'arin\r\n'),
(2, 'yulia', 'yulia', 'yulia\r\n'),
(3, 'master', 'master', 'master');

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbp`
--

CREATE TABLE `tbl_bbp` (
  `id_bbp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_bbp` varchar(128) NOT NULL,
  `uraian` varchar(250) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `id_rekening` int(128) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbpsave`
--

CREATE TABLE `tbl_bbpsave` (
  `id_bbp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_bbp` varchar(128) NOT NULL,
  `uraian` varchar(250) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `id_rekening` int(128) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bbpsave`
--

INSERT INTO `tbl_bbpsave` (`id_bbp`, `tanggal`, `kode_bbp`, `uraian`, `debet`, `kredit`, `id_rekening`, `id_user`, `id_opd`) VALUES
(13, '2021-01-04', '', 'PAD Bakeuda Pajak PBB-P2', 0, 527048, 0, 'admin', '35'),
(14, '2021-01-04', '', 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', 0, 1500000, 0, 'admin', '35'),
(15, '2021-01-04', '', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 0, 40298352000, 0, 'admin', '35'),
(16, '2021-01-05', '', 'Pengembalian Kelebihan Bayar ATK TA. 2018', 0, 5000000, 0, 'admin', '35'),
(17, '2021-01-07', '', 'Pengembalian Lebih Bayar Peningkatan Gg pada Lk I Desa Batang Bahal Dinas Permukiman An. Aslamiah Hrp', 0, 1000000, 0, 'admin', '35'),
(18, '2021-01-08', '', 'Pengembalian Anggaran BTT Dinas Sosial', 0, 25000, 0, 'admin', '35'),
(19, '2021-01-11', '', 'Pengembalian Lebih Bayar Belanja Penggandaan Bag. Organisasi Setda Kota TA. 2020', 0, 14169347, 0, 'admin', '35'),
(20, '2021-01-12', '', 'PAD Bakeuda Pajak PBB-P2', 0, 481040, 0, 'admin', '35'),
(21, '2021-01-12', '', 'Pengembalian Lebih Bayar Belanja Fotocopy Bag. Hukum Setda Kota Padangsidimpuan', 0, 5278408, 0, 'admin', '35'),
(22, '2021-01-13', '', 'PAD Bakeuda Pajak Restoran', 0, 3123500, 0, 'admin', '35'),
(23, '2021-01-13', '', 'PAD Bakeuda Pajak PBB-P2', 0, 3715616, 0, 'admin', '35'),
(24, '2021-01-13', '', 'PAD Bakeuda Pajak Hotel', 0, 3300000, 0, 'admin', '35'),
(25, '2021-01-13', '', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 1412956, 0, 'admin', '35'),
(26, '2021-01-13', '', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 2874000, 0, 'admin', '35'),
(27, '2021-01-13', '', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 617974, 0, 'admin', '35'),
(29, '2021-01-13', '', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 215909, 0, 'admin', '35'),
(30, '2021-01-13', '', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 19633022, 0, 'admin', '35'),
(31, '2021-01-14', '', 'PAD Bakeuda Pajak PBB-P2', 0, 6586267, 0, 'admin', '35'),
(32, '2021-01-14', '', 'PAD Bakeuda Pajak Restoran', 0, 125563040, 0, 'admin', '35'),
(33, '2021-01-14', '', 'PAD Bakeuda Pajak Reklame', 0, 9293750, 0, 'admin', '35'),
(34, '2021-01-14', '', 'Pengembalian Temuan BPK dari Kegiatan Kel. Aek Tampang', 0, 13413789.5, 0, 'admin', '35'),
(35, '2021-01-14', '', 'Pengembalian Kelebihan Bayar Penggandaan/ Fotocopy 2020', 0, 2710506, 0, 'admin', '35'),
(36, '2021-01-14', '', 'Pengembalian Kelebihan Bayar Belanja Barang dan Jasa Dinas Pertanian', 0, 15000000, 0, 'admin', '35'),
(37, '2021-01-15', '', 'PAD Bakeuda Pajak PBB-P2', 0, 430931, 0, 'admin', '35'),
(38, '2021-01-15', '', 'PAD Bakeuda Pajak Reklame', 0, 11317250, 0, 'admin', '35'),
(39, '2021-01-15', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5000000, 0, 'admin', '35'),
(40, '2021-01-15', '', 'PAD Bakeuda PPJU dari PLN', 0, 711449202, 0, 'admin', '35'),
(41, '2021-01-15', '', 'Pengembalian Kelebihan Barang dan Jasa (Sewa)', 0, 30451274, 0, 'admin', '35'),
(42, '2021-01-18', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 120800, 0, 'admin', '35'),
(43, '2021-01-18', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1618563, 0, 'admin', '35'),
(44, '2021-01-18', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 6602850, 0, 'admin', '35'),
(45, '2021-01-18', '', 'Pengembalian Dana Bantuan yang tidak diserahkan pada Panti Asuhan', 0, 28000000, 0, 'admin', '35'),
(46, '2021-01-19', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1306000, 0, 'admin', '35'),
(47, '2021-01-19', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2595751, 0, 'admin', '35'),
(48, '2021-01-19', '', 'PAD Bakeuda Pajak Reklame', 0, 3166950, 0, 'admin', '35'),
(49, '2021-01-19', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5700000, 0, 'admin', '35'),
(50, '2021-01-19', '', 'Pengembalian Kelebihan Bayar Atas Ippd/LKPJ 2020 Setda Bag. Pemerintahan', 0, 16000000, 0, 'admin', '35'),
(51, '2021-01-20', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1000000, 0, 'admin', '35'),
(52, '2021-01-20', '', 'PAD Bakeuda Pajak PBB-P2', 0, 5757979, 0, 'admin', '35'),
(53, '2021-01-20', '', 'PAD Bakeuda Pajak Reklame', 0, 2972500, 0, 'admin', '35'),
(54, '2021-01-20', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 44800000, 0, 'admin', '35'),
(55, '2021-01-20', '', 'PAD Perhubungan Retribusi Parkir', 0, 10000000, 0, 'admin', '35'),
(56, '2021-01-20', '', 'PAD Perhubungan Retribusi PKD (PKB)', 0, 11380000, 0, 'admin', '35'),
(57, '2021-01-20', '', 'Pengembalian Kegiatan Rehab Jalan pada Kel. Wek II', 0, 3000000, 0, 'admin', '35'),
(58, '2021-01-20', '', 'Pengembalian Belanja Jasa Kantor Tunj. Insentif Covid-19 Puskesmas Sadabuan', 0, 18181000, 0, 'admin', '35'),
(59, '2021-01-21', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 760000, 0, 'admin', '35'),
(60, '2021-01-21', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1724067, 0, 'admin', '35'),
(61, '2021-01-21', '', 'PAD Bakeuda Pajak Reklame', 0, 22862500, 0, 'admin', '35'),
(62, '2021-01-21', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 30270000, 0, 'admin', '35'),
(63, '2021-01-21', '', 'PAD Kec. Psp Utara Retribusi IMB', 0, 729000, 0, 'admin', '35'),
(64, '2021-01-21', '', 'Pengembalian Sisa BTT 2020 Dinas Perdagangan', 0, 167693821, 0, 'admin', '35'),
(65, '2021-01-21', '', 'Pengembalian Kekurangan Volume Pek. Pemb. Gg. Idaman Kel. Kantin', 0, 2000000, 0, 'admin', '35'),
(66, '2021-01-21', '', 'Pengembalian Kekurangan Volume Pekerjaan Kel. Batang Ayumi Julu', 0, 2082537.55, 0, 'admin', '35'),
(67, '2021-01-21', '', 'Pengembalian Kelebihan Bayar Barang dan Jasa Dinas Kependudukan dan Capil', 0, 28619770, 0, 'admin', '35'),
(68, '2021-01-21', '', 'Pengembalian Tunj. Camat Padangsidimpuan Hutaimbaru Januari 2021', 0, 1075000, 0, 'admin', '35'),
(69, '2021-01-21', '', 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 0, 200000, 0, 'admin', '35'),
(70, '2021-01-22', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 674000, 0, 'admin', '35'),
(71, '2021-01-22', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2096209, 0, 'admin', '35'),
(72, '2021-01-22', '', 'PAD PMPTSP Retribusi IMB', 0, 3616000, 0, 'admin', '35'),
(73, '2021-01-22', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 25000, 0, 'admin', '35'),
(74, '2021-01-25', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 3029500, 0, 'admin', '35'),
(75, '2021-01-25', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2901401, 0, 'admin', '35'),
(76, '2021-01-25', '', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 6080000, 0, 'admin', '35'),
(77, '2021-01-25', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1750000, 0, 'admin', '35'),
(78, '2021-01-25', '', 'PAD Perhubungan Retribusi Terminal', 0, 9450000, 0, 'admin', '35'),
(79, '2021-01-25', '', 'PAD Perhubungan Retribusi Parkir', 0, 2345000, 0, 'admin', '35'),
(80, '2021-01-26', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 115000, 0, 'admin', '35'),
(81, '2021-01-26', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1105414, 0, 'admin', '35'),
(82, '2021-01-26', '', 'PAD Bakeuda Pajak Reklame', 0, 1590625, 0, 'admin', '35'),
(83, '2021-01-26', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 2525000, 0, 'admin', '35'),
(87, '2021-01-26', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 4712000, 0, 'admin', '35'),
(88, '2021-01-26', '', 'Pengembalian Perjalanan Dinas Luar Daerah Dinas Sosial', 0, 45000, 0, 'admin', '35'),
(89, '2021-01-27', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1770561, 0, 'admin', '35'),
(90, '2021-01-27', '', 'PAD Bakeuda Pajak Hiburan', 0, 2500000, 0, 'admin', '35'),
(91, '2021-01-27', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3000000, 0, 'admin', '35'),
(92, '2021-01-27', '', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 10615575, 0, 'admin', '35'),
(93, '2021-01-27', '', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 4048000, 0, 'admin', '35'),
(94, '2021-01-27', '', 'Pengembalian Kelebihan Bayar CV. PH Hasil LHP BPK', 0, 4440962.41, 0, 'admin', '35'),
(95, '2021-01-27', '', 'Pengembalian Gaji/Tunjangan Januari 2021 Dinas Kesehatan', 0, 3295300, 0, 'admin', '35'),
(96, '2021-01-27', '', 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 0, 205929600, 0, 'admin', '35'),
(97, '2021-01-27', '', 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 0, 465512200, 0, 'admin', '35'),
(98, '2021-01-27', '', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Tetap)', 0, 5149200, 0, 'admin', '35'),
(99, '2021-01-27', '', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Produksi)', 0, 37690400, 0, 'admin', '35'),
(100, '2021-01-27', '', 'Penerimaan DBH SDA Perikanan Triw. I TA. 2021', 0, 169247850, 0, 'admin', '35'),
(101, '2021-01-28', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1885252, 0, 'admin', '35'),
(102, '2021-01-28', '', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 1206000, 0, 'admin', '35'),
(103, '2021-01-28', '', 'Pengembalian Kelebihan Bayar atas Kerugian Negara Rehab. Gg. Serasi Ujung Kel. Kayu Ombun TA. 2017', 0, 1000000, 0, 'admin', '35'),
(104, '2021-01-29', '', 'PAD Bakeuda Pajak PBB-P2', 0, 152310, 0, 'admin', '35'),
(105, '2021-01-29', '', 'PAD Bakeuda Pajak Reklame', 0, 13165700, 0, 'admin', '35'),
(106, '2021-01-29', '', 'PAD Bakeuda Pajak Hotel', 0, 10901727, 0, 'admin', '35'),
(107, '2021-01-29', '', 'PAD Bakeuda Pajak ABT', 0, 2849500, 0, 'admin', '35'),
(108, '2021-01-29', '', 'PAD Bakeuda Pajak Perparkiran', 0, 1000000, 0, 'admin', '35'),
(109, '2021-01-29', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3620050, 0, 'admin', '35'),
(110, '2021-01-29', '', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 9156000, 0, 'admin', '35'),
(111, '2021-01-29', '', 'PAD Perhubungan Retribusi Parkir', 0, 5075000, 0, 'admin', '35'),
(112, '2021-01-29', '', 'PAD Perhubungan Retribusi Terminal', 0, 7600000, 0, 'admin', '35'),
(113, '2021-01-29', '', 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 0, 4026000, 0, 'admin', '35'),
(114, '2021-01-29', '', 'PAD Lingk. Hidup Retribusi Penyedotan Kakus/Tinja', 0, 1000000, 0, 'admin', '35'),
(115, '2021-01-29', '', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 31750000, 0, 'admin', '35'),
(116, '2021-01-29', '', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 540000, 0, 'admin', '35'),
(117, '2021-01-29', '', 'PAD Bag. Umum Retribusi Rumah Penginapan', 0, 2800000, 0, 'admin', '35'),
(118, '2021-01-29', '', 'PAD Pertanian Retribusi Pemeriksaan Kesehatan (RPH)', 0, 1050000, 0, 'admin', '35'),
(119, '2021-01-29', '', 'PAD Pertanian Retribusi Penjualan Produksi Usaha Daerah', 0, 350000, 0, 'admin', '35'),
(120, '2021-01-29', '', 'Penerimaan Kontribusi dari PDAM Tirtanadi', 0, 6500000, 0, 'admin', '35'),
(121, '2021-01-31', '', 'PAD Baekuda Penerimaan Jasa Giro Januari 2021', 0, 269730799, 0, 'admin', '35'),
(122, '2021-02-01', '', 'PAD Bakeuda Pajak Restoran', 0, 1240000, 0, 'admin', '35'),
(123, '2021-02-01', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2077640, 0, 'admin', '35'),
(124, '2021-02-01', '', 'PAD Bakeuda Pajak Reklame', 0, 786250, 0, 'admin', '35'),
(125, '2021-02-01', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9050000, 0, 'admin', '35'),
(126, '2021-02-01', '', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 810000, 0, 'admin', '35'),
(127, '2021-02-01', '', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 4320000, 0, 'admin', '35'),
(128, '2021-02-01', '', 'PAD Perhubungan Retribusi Parkir', 0, 3232000, 0, 'admin', '35'),
(129, '2021-02-01', '', 'PAD Perhubungan Retribusi Izin Trayek', 0, 60000, 0, 'admin', '35'),
(130, '2021-02-01', '', 'Pengembalian Kelebihan Bayar ATK TA. 2018', 0, 5000000, 0, 'admin', '35'),
(131, '2021-02-02', '', 'PAD Bakeuda Pajak Restoran', 0, 2623400, 0, 'admin', '35'),
(132, '2021-02-02', '', 'PAD Bakeuda Pajak PBB-P2', 0, 594499, 0, 'admin', '35'),
(133, '2021-02-02', '', 'PAD Perhubungan Retribusi Parkir', 0, 2430000, 0, 'admin', '35'),
(134, '2021-02-02', '', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 3133000, 0, 'admin', '35'),
(135, '2021-02-02', '', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 1552000, 0, 'admin', '35'),
(136, '2021-02-02', '', 'PAD PMPTSP Retribusi IMB', 0, 12446000, 0, 'admin', '35'),
(137, '2021-02-02', '', 'Penerimaa Setoran dari PT. Anugerah Tetap Cemerlang (ATC)', 0, 55000000, 0, 'admin', '35'),
(138, '2021-02-03', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2001977, 0, 'admin', '35'),
(139, '2021-02-03', '', 'PAD Bakeuda Pajak Reklame', 0, 45022500, 0, 'admin', '35'),
(140, '2021-02-03', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5380000, 0, 'admin', '35'),
(141, '2021-02-03', '', 'PAD Perhubungan Retribusi Parkir', 0, 2667000, 0, 'admin', '35'),
(142, '2021-02-03', '', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 5280000, 0, 'admin', '35'),
(143, '2021-02-04', '', 'PAD Bakeuda Pajak Restoran', 0, 860000, 0, 'admin', '35'),
(144, '2021-02-04', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2297128, 0, 'admin', '35'),
(145, '2021-02-04', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1450000, 0, 'admin', '35'),
(146, '2021-02-04', '', 'PAD Perhubungan Retribusi Terminal', 0, 600000, 0, 'admin', '35'),
(147, '2021-02-04', '', 'Pengembalian Tamb. Pengh. Berd. Beban Kerja Oktober s/d Desember 2021 Dinas Pendidikan', 0, 1912500, 0, 'admin', '35'),
(148, '2021-02-05', '', 'PAD Bakeuda Pajak PBB-P2', 0, 359529, 0, 'admin', '35'),
(149, '2021-02-08', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1973069, 0, 'admin', '35'),
(150, '2021-02-08', '', 'PAD Bakeuda Pajak Reklame', 0, 19445000, 0, 'admin', '35'),
(151, '2021-02-08', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1336600, 0, 'admin', '35'),
(152, '2021-02-08', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 489000, 0, 'admin', '35'),
(153, '2021-02-08', '', 'PAD Perhubungan Retribusi Terminal', 0, 1695000, 0, 'admin', '35'),
(154, '2021-02-08', '', 'PAD PMPTSP Retribusi IMB', 0, 28516000, 0, 'admin', '35'),
(155, '2021-02-09', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1964807, 0, 'admin', '35'),
(156, '2021-02-09', '', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 265000, 0, 'admin', '35'),
(157, '2021-02-09', '', 'PAD Perhubungan Retribusi Terminal', 0, 704000, 0, 'admin', '35'),
(158, '2021-02-09', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 4262000, 0, 'admin', '35'),
(159, '2021-02-09', '', 'PAD PMPTSP Retribusi IMB', 0, 13350000, 0, 'admin', '35'),
(160, '2021-02-09', '', 'Pengembalian dari Gaji Pensiun PT. Taspen', 0, 466951, 0, 'admin', '35'),
(161, '2021-02-09', '', 'Pengembalian Lebih Bayar Peningkatan Jln Silandit 2017', 0, 5184086.66, 0, 'admin', '35'),
(162, '2021-02-09', '', 'Pengembalian Lebih Bayar Peningkatan Jalan Baru Hutaimbaru', 0, 10000000, 0, 'admin', '35'),
(163, '2021-02-10', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1164517, 0, 'admin', '35'),
(164, '2021-02-10', '', 'PAD Bakeuda Pajak Reklame', 0, 17725000, 0, 'admin', '35'),
(165, '2021-02-10', '', 'PAD PMPTSP Retribusi IMB', 0, 1822500, 0, 'admin', '35'),
(166, '2021-02-10', '', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 86400, 0, 'admin', '35'),
(167, '2021-02-10', '', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 36000, 0, 'admin', '35'),
(168, '2021-02-10', '', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 50000, 0, 'admin', '35'),
(169, '2021-02-10', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1780000, 0, 'admin', '35'),
(170, '2021-02-10', '', 'PAD Perhubungan Retribusi Terminal', 0, 720000, 0, 'admin', '35'),
(171, '2021-02-11', '', 'PAD Bakeuda Pajak PBB-P2', 0, 2455111, 0, 'admin', '35'),
(172, '2021-02-11', '', 'PAD Bakeuda Pajak Reklame', 0, 2548750, 0, 'admin', '35'),
(173, '2021-02-11', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2590000, 0, 'admin', '35'),
(174, '2021-02-11', '', 'PAD Perhubungan Retribusi Terminal', 0, 680000, 0, 'admin', '35'),
(175, '2021-02-11', '', 'PAD Perhubungan Retribusi Izin Trayek', 0, 20000, 0, 'admin', '35'),
(176, '2021-02-15', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 107977333, 0, 'admin', '35'),
(177, '2021-02-15', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1600261, 0, 'admin', '35'),
(178, '2021-02-15', '', 'PAD Bakeuda Pajak Reklame', 0, 1584000, 0, 'admin', '35'),
(179, '2021-02-15', '', 'PAD PMPTSP Retribusi IMB', 0, 9757200, 0, 'admin', '35'),
(180, '2021-02-15', '', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 2508000, 0, 'admin', '35'),
(181, '2021-02-15', '', 'PAD Perdagangan Retribusi Persampahan', 0, 128000, 0, 'admin', '35'),
(182, '2021-02-15', '', 'PAD Perhubungan Retribusi Terminal', 0, 2350000, 0, 'admin', '35'),
(183, '2021-02-15', '', 'PAD Perhubungan Retribusi Parkir', 0, 1875000, 0, 'admin', '35'),
(184, '2021-02-15', '', 'Pengembalian Gaji / Tunjangan Januari 2021 SMPN 9', 0, 5600900, 0, 'admin', '35'),
(185, '2021-02-16', '', 'PAD Bakeuda Pajak PBB-P2', 0, 1564099, 0, 'admin', '35'),
(186, '2021-02-16', '', 'PAD Bakeuda Pajak Hotel', 0, 3750000, 0, 'admin', '35'),
(187, '2021-02-16', '', 'PAD Bakeuda Pajak Reklame', 0, 2931250, 0, 'admin', '35'),
(188, '2021-02-16', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9294925, 0, 'admin', '35'),
(189, '2021-02-16', '', 'PAD Bakeuda PPJU dari PLN', 0, 708594820, 0, 'admin', '35'),
(190, '2021-02-16', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1140000, 0, 'admin', '35'),
(191, '2021-02-16', '', 'PAD Perhubungan Retribusi Terminal', 0, 1400000, 0, 'admin', '35'),
(192, '2021-02-16', '', 'Pengembalian Kekurangan Volume Pekerjaan Pemb. Trotoar Jln Kpaten Tendean Kel. Bincar', 0, 9645533.66, 0, 'admin', '35'),
(193, '2021-02-17', '', 'PAD Bakeuda Pajak PBB-P2', 0, 797329, 0, 'admin', '35'),
(194, '2021-02-17', '', 'PAD Bakeuda Pajak Reklame', 0, 5236875, 0, 'admin', '35'),
(195, '2021-02-17', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 11814300, 0, 'admin', '35'),
(196, '2021-02-17', '', 'PAD Perdagangan Retribusi Persampahan', 0, 900000, 0, 'admin', '35'),
(197, '2021-02-17', '', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 4070200, 0, 'admin', '35'),
(198, '2021-02-17', '', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 235000, 0, 'admin', '35'),
(199, '2021-02-17', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2246000, 0, 'admin', '35'),
(200, '2021-02-17', '', 'PAD Perhubungan Retribusi Terminal', 0, 816000, 0, 'admin', '35'),
(201, '2021-02-18', '', 'PAD Bakeuda Pajak PBB-P2', 0, 748946, 0, 'admin', '35'),
(202, '2021-02-18', '', 'PAD Bakeuda Pajak Reklame', 0, 8400000, 0, 'admin', '35'),
(203, '2021-02-18', '', 'PAD Bakeuda Pajak Air Bawah Tanah', 0, 50000, 0, 'admin', '35'),
(204, '2021-02-18', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3500000, 0, 'admin', '35'),
(205, '2021-02-18', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1728000, 0, 'admin', '35'),
(206, '2021-02-18', '', 'PAD Perhubungan Retribusi Terminal', 0, 720000, 0, 'admin', '35'),
(207, '2021-02-19', '', 'PAD Bakeuda Pajak PBB-P2', 0, 835795, 0, 'admin', '35'),
(208, '2021-02-19', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9413500, 0, 'admin', '35'),
(209, '2021-02-19', '', 'PAD Perhubungan Retribusi Terminal', 0, 700000, 0, 'admin', '35'),
(210, '2021-02-19', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1320000, 0, 'admin', '35'),
(212, '2021-02-22', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1786500, 0, 'admin', '35'),
(213, '2021-02-22', '', 'PAD Bakeuda Pajak PBB-P2', 0, 840280, 0, 'admin', '35'),
(214, '2021-02-22', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 10025000, 0, 'admin', '35'),
(215, '2021-02-22', '', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2003000, 0, 'admin', '35'),
(216, '2021-02-22', '', 'PAD Perhubungan Retribusi Terminal', 0, 2900000, 0, 'admin', '35'),
(217, '2021-02-22', '', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 0, 40298352000, 0, 'admin', '35'),
(218, '2021-02-23', '', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 2112500, 0, 'admin', '35'),
(219, '2021-02-23', '', 'PAD Bakeuda Pajak PBB-P2', 0, 8831921, 0, 'admin', '35'),
(220, '2021-02-23', '', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1775000, 0, 'admin', '35'),
(221, '2021-02-23', '', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 605000, 0, 'admin', '35'),
(222, '2021-02-23', '', 'PAD Perhubungan Retribusi Terminal', 0, 980000, 0, 'admin', '35'),
(223, '2021-02-23', '', 'PAD Perhubungan Retribusi Parkir', 0, 1630000, 0, 'admin', '35'),
(224, '2021-02-23', '', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 8016200, 0, 'admin', '35'),
(225, '2021-02-23', '', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 1696000, 0, 'admin', '35'),
(226, '2021-02-23', '', 'Penerimaan DBH SDA Gas Bumi 30% Triw. I 2021', 0, 3604000, 0, 'admin', '35'),
(227, '2021-02-23', '', 'Penerimaan DBH SDA Gas Bumi 0,5% Triw. I 2021', 0, 60000, 0, 'admin', '35'),
(228, '2021-02-23', '', 'Penerimaan DBH SDA Minyak Bumi 15% Triw. I 2021', 0, 590200, 0, 'admin', '35'),
(229, '2021-02-23', '', 'Penerimaan DBH SDA Minyak Bumi 0,5% Triw. I 2021', 0, 19600, 0, 'admin', '35'),
(230, '2021-02-23', '', 'Penerimaan Dana Fasilitas Penanaman Modal Tahap I 2021', 0, 163061000, 0, 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bpp`
--

CREATE TABLE `tbl_bpp` (
  `id_bpp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` varchar(128) NOT NULL,
  `no_sts` varchar(128) DEFAULT NULL,
  `no_lainlain` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bppsave`
--

CREATE TABLE `tbl_bppsave` (
  `id_bpp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` varchar(128) NOT NULL,
  `no_sts` varchar(128) DEFAULT NULL,
  `no_lainlain` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bppsave`
--

INSERT INTO `tbl_bppsave` (`id_bpp`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `id_user`, `id_opd`) VALUES
(16, '2021-01-14', '', NULL, '', 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'admin', '35'),
(17, '2021-01-14', '', NULL, '', 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'admin', '35'),
(20, '2021-01-15', '', NULL, '', 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'admin', '35'),
(21, '2021-01-15', '', NULL, '', 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'admin', '35'),
(22, '2021-01-15', '', NULL, '', 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'admin', '35'),
(23, '2021-01-15', '', NULL, '', 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'admin', '35'),
(24, '2021-01-15', '', NULL, '', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'admin', '35'),
(25, '2021-01-15', '', NULL, '', 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'admin', '35'),
(26, '2021-01-15', '', NULL, '', 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'admin', '35'),
(27, '2021-01-15', '', NULL, '', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'admin', '35'),
(28, '2021-01-15', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'admin', '35'),
(29, '2021-01-15', '', NULL, '', 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'admin', '35'),
(30, '2021-01-15', '', NULL, '', 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'admin', '35'),
(31, '2021-01-15', '', NULL, '', 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'admin', '35'),
(32, '2021-01-15', '', NULL, '', 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'admin', '35'),
(33, '2021-01-15', '', NULL, '', 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'admin', '35'),
(34, '2021-01-15', '', NULL, '', 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'admin', '35'),
(35, '2021-01-15', '', NULL, '', 'Inspektorat Gaji Januari 2021', 0, 209381856, 'admin', '35'),
(36, '2021-01-15', '', NULL, '', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'admin', '35'),
(37, '2021-01-15', '', NULL, '', 'RSUD Gaji Januari 2021', 0, 1227269974, 'admin', '35'),
(38, '2021-01-15', '', NULL, '', 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'admin', '35'),
(39, '2021-01-15', '', NULL, '', 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'admin', '35'),
(42, '2021-01-15', '', NULL, '', 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'admin', '35'),
(43, '2021-01-18', '', NULL, '', 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'admin', '35'),
(44, '2021-01-18', '', NULL, '', 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'admin', '35'),
(45, '2021-01-18', '', NULL, '', 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'admin', '35'),
(46, '2021-01-18', '', NULL, '', 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'admin', '35'),
(47, '2021-01-18', '', NULL, '', 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'admin', '35'),
(48, '2021-01-18', '', NULL, '', 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'admin', '35'),
(49, '2021-01-18', '', NULL, '', 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'admin', '35'),
(50, '2021-01-18', '', NULL, '', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'admin', '35'),
(51, '2021-01-18', '', NULL, '', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'admin', '35'),
(52, '2021-01-18', '', NULL, '', 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'admin', '35'),
(53, '2021-01-18', '', NULL, '', 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'admin', '35'),
(54, '2021-01-18', '', NULL, '', 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'admin', '35'),
(56, '2021-01-19', '', NULL, '', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'admin', '35'),
(58, '2021-01-20', '', NULL, '', 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'admin', '35'),
(60, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'admin', '35'),
(61, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'admin', '35'),
(62, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'admin', '35'),
(63, '2021-01-29', '', NULL, '', 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'admin', '35'),
(64, '2021-01-29', '', NULL, '', 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'admin', '35'),
(67, '2021-02-05', '', NULL, '', 'Badan Keuangan Daerah Gaji Februari 2021', 0, 472323691, 'admin', '35'),
(68, '2021-02-05', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Februari 2021', 0, 80010953, 'admin', '35'),
(69, '2021-02-05', '', NULL, '', 'Kantor Kesbang dan Politik Gaji Februari 2021', 0, 127058984, 'admin', '35'),
(70, '2021-02-05', '', NULL, '', 'Dinas Sosial Gaji Februari 2021', 0, 128347719, 'admin', '35'),
(71, '2021-02-05', '', NULL, '', 'Dinas Komunikasi dan Informatika Gaji Februari 2021', 0, 94014403, 'admin', '35'),
(72, '2021-02-05', '', NULL, '', 'Dinas Pariwisata Gaji Februari 2021', 0, 126038168, 'admin', '35'),
(73, '2021-02-05', '', NULL, '', 'Dinas Lingkungan Hidup Gaji Februari 2021', 0, 241341162, 'admin', '35'),
(74, '2021-02-05', '', NULL, '', 'Dinas Penataan Ruang dan Permukiman Gaji Februari 2021', 0, 235877446, 'admin', '35'),
(75, '2021-02-05', '', NULL, '', 'Inspektorat Gaji Februari 2021', 0, 209381856, 'admin', '35'),
(76, '2021-02-05', '', NULL, '', 'Kec. Psp Tenggara Gaji Februari 2021', 0, 186688626, 'admin', '35'),
(77, '2021-02-05', '', NULL, '', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Februari 2021', 0, 139385382, 'admin', '35'),
(78, '2021-02-05', '', NULL, '', 'Dinas Ketenagakerjaan Gaji Februari 2021', 0, 154171163, 'admin', '35'),
(79, '2021-02-05', '', NULL, '', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Februari 2021', 0, 190969612, 'admin', '35'),
(80, '2021-02-05', '', NULL, '', 'Dinas Pertanian Gaji Februari 2021', 0, 315966384, 'admin', '35'),
(81, '2021-02-05', '', NULL, '', 'Sekretariat Daerah Gaji Februari 2021', 0, 574264409, 'admin', '35'),
(82, '2021-02-05', '', NULL, '', 'KDH & WKDH Gaji Februari 2021', 0, 11841621, 'admin', '35'),
(83, '2021-02-08', '', NULL, '', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Februari 2021', 0, 151972131, 'admin', '35'),
(84, '2021-02-08', '', NULL, '', 'Kec. Psp Utara Gaji Februari 2021', 0, 564429227, 'admin', '35'),
(85, '2021-02-08', '', NULL, '', 'Kantor Satpol-PP Gaji Februari 2021', 0, 181363899, 'admin', '35'),
(86, '2021-02-08', '', NULL, '', 'Kec. Psp Batunadua Gaji Februari 2021', 0, 146134302, 'admin', '35'),
(87, '2021-02-08', '', NULL, '', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Februari 2021', 0, 202682046, 'admin', '35'),
(88, '2021-02-08', '', NULL, '', 'Kec. Psp Angkola Julu Gaji Februari 2021', 0, 114826520, 'admin', '35'),
(89, '2021-02-08', '', NULL, '', 'Badan Penanggulangan Bencana Daerah Gaji Februari 2021', 0, 64159019, 'admin', '35'),
(90, '2021-02-08', '', NULL, '', 'RSUD Gaji Februari 2021', 0, 1227269974, 'admin', '35'),
(91, '2021-02-08', '', NULL, '', 'Dinas Perhubungan Gaji Februari 2021', 0, 199484397, 'admin', '35'),
(92, '2021-02-08', '', NULL, '', 'Dinas Pemadam Kebakaran Gaji Februari 2021', 0, 117355379, 'admin', '35'),
(93, '2021-02-08', '', NULL, '', 'Dinas Perpustakaan Gaji Februari 2021', 0, 166650005, 'admin', '35'),
(94, '2021-02-08', '', NULL, '', 'Sekr. DPRD Gaji Februari 2021', 0, 200707775, 'admin', '35'),
(95, '2021-02-08', '', NULL, '', 'Dinas Pendidikan Gaji Februari 2021', 0, 7293751905, 'admin', '35'),
(96, '2021-02-08', '', NULL, '', 'Badan Kepegawaian dan Pengembangan SDM Gaji Februari 2021', 0, 130840587, 'admin', '35'),
(97, '2021-02-08', '', NULL, '', 'PUD Pembayaran Uang Persediaan (UP) TA. 2021', 0, 605752000, 'admin', '35'),
(98, '2021-02-08', '', NULL, '', 'Bapelitbang Pembayaran UP TA. 2021', 0, 333121000, 'admin', '35'),
(99, '2021-02-09', '', NULL, '', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Februari 2021', 0, 126255504, 'admin', '35'),
(100, '2021-02-09', '', NULL, '', 'Kec. Psp Hutaimbaru Gaji Februari 2021', 0, 213834833, 'admin', '35'),
(101, '2021-02-09', '', NULL, '', 'Dinas Kesehatan Gaji Februari 2021', 0, 2097607474, 'admin', '35'),
(102, '2021-02-09', '', NULL, '', 'Dinas Perdagangan Gaji Februari 2021', 0, 189640664, 'admin', '35'),
(103, '2021-02-09', '', NULL, '', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Februari 2021', 0, 136256722, 'admin', '35'),
(104, '2021-02-09', '', NULL, '', 'Dinas Kesehatan Pangan Gaji Februari 2021', 0, 130322792, 'admin', '35'),
(105, '2021-02-09', '', NULL, '', 'Kominfo Permintaan UP TA. 2021', 0, 79835000, 'admin', '35'),
(112, '2021-02-10', '', NULL, '', 'P2KB Permintaan UP TA. 2021', 0, 475283000, 'admin', '35'),
(113, '2021-02-10', '', NULL, '', 'Pemadam, KP Permintaan UP TA. 2021', 0, 165181000, 'admin', '35'),
(114, '2021-02-10', '', NULL, '', 'Sekrt. DPRD Pembayaran Uang Persediaan (UP) 2021', 0, 1669615000, 'admin', '35'),
(115, '2021-02-10', '', NULL, '', 'DLH Permintaan UP TA. 2021', 0, 349976000, 'admin', '35'),
(116, '2021-02-10', '', NULL, '', 'Kec. Psp Tenggara Permintaan UP TA. 2021', 0, 91960000, 'admin', '35'),
(117, '2021-02-10', '', NULL, '', 'Ketenagakerjaan Permintaan UP TA. 2021', 0, 253642000, 'admin', '35'),
(118, '2021-02-15', '', NULL, '', 'P3A Permintaan UP TA. 2021', 0, 259953000, 'admin', '35'),
(119, '2021-02-16', '', NULL, '', 'Penanaman Modal, PTSP Permintaan UP TA. 2021', 0, 317117000, 'admin', '35'),
(120, '2021-02-16', '', NULL, '', 'Perpustakaan Permintaan UP TA. 2021', 0, 101549000, 'admin', '35'),
(121, '2021-02-16', '', NULL, '', 'Satpol-PP Permintaan UP TA. 2021', 0, 139847000, 'admin', '35'),
(122, '2021-02-17', '', NULL, '', 'Per. Rakyat, KP LPJU Bulan Februari 2021', 0, 212924291, 'admin', '35'),
(123, '2021-02-18', '', NULL, '', 'Sosial Permintaan UP TA. 2021', 0, 235686000, 'admin', '35'),
(124, '2021-02-18', '', NULL, '', 'Inspektorat Permintaan UP TA. 2021', 0, 283820000, 'admin', '35'),
(125, '2021-02-18', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Terusan An. Masnilam Daulay', 0, 22858800, 'admin', '35'),
(126, '2021-02-18', '', NULL, '', 'Dinas Pendidikan Gaji Terusan Februari 2021', 0, 125247639, 'admin', '35'),
(127, '2021-02-18', '', NULL, '', 'BPBD Permintaan UP TA. 2021', 0, 119681000, 'admin', '35'),
(128, '2021-02-18', '', NULL, '', 'Perdagangan Permintaan UP TA. 2021', 0, 352000000, 'admin', '35'),
(129, '2021-02-19', '', NULL, '', 'BKD Permintaan UP TA. 2021', 0, 174279000, 'admin', '35'),
(133, '2021-02-19', '', NULL, '', 'Kec. Psp Utara Permintaan Uang Persediaan (UP) TA. 2021', 0, 108721000, 'admin', '35'),
(134, '2021-02-19', '', NULL, '', 'Kec. Psp Hutaimbaru Permintaan UP TA. 2021', 0, 60390000, 'admin', '35'),
(135, '2021-02-19', '', NULL, '', 'PMD Permintaan UP TA. 2021', 0, 110680000, 'admin', '35'),
(136, '2021-02-19', '', NULL, '', 'Kec. Psp Selatan Gaji Februari 2021', 0, 431229137, 'admin', '35'),
(137, '2021-02-22', '', NULL, '', 'Dinas Kesehatan Gaji Terusan Februari 2021', 0, 22072245, 'admin', '35'),
(138, '2021-02-23', '', NULL, '', 'Inspektorat Gaji Terusan An. Iskandar Zulkarnaen', 0, 28398150, 'admin', '35'),
(139, '2021-02-23', '', NULL, '', 'Perhubungan Permintaan UP TA. 2021', 0, 135643000, 'admin', '35');

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
(22, '-', '-', '11', 'admin', '35'),
(23, '-', 'PAD Bakeuda Pajak PBB-P2', '11', 'admin', '35'),
(24, '-', 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', '11', 'admin', '35'),
(25, '-', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', '11', 'admin', '35'),
(26, '-', 'Pengembalian Kelebihan Bayar ATK TA. 2018', '11', 'admin', '35'),
(27, '-', 'Pengembalian Lebih Bayar Peningkatan Gg pada Lk I Desa Batang Bahal Dinas Permukiman An. Aslamiah Hrp', '11', 'admin', '35'),
(28, '-', 'Pengembalian Anggaran BTT Dinas Sosial', '11', 'admin', '35'),
(29, '-', 'Pengembalian Lebih Bayar Belanja Penggandaan Bag. Organisasi Setda Kota TA. 2020', '11', 'admin', '35'),
(30, '-', 'PAD Bakeuda Pajak PBB-P2', '11', 'admin', '35'),
(31, '-', 'Pengembalian Lebih Bayar Belanja Fotocopy Bag. Hukum Setda Kota Padangsidimpuan', '11', 'admin', '35'),
(32, '-', 'PAD Bakeuda Pajak Restoran', '11', 'admin', '35'),
(33, '-', 'PAD Bakeuda Pajak PBB-P2', '11', 'admin', '35'),
(34, '-', 'PAD Bakeuda Pajak Hotel', '11', 'admin', '35'),
(35, '-', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', '11', 'admin', '35'),
(36, '-', 'PAD Bakeuda Pajak Reklame', '11', 'admin', '35'),
(37, '-', 'Pengembalian Temuan BPK dari Kegiatan Kel. Aek Tampang', '11', 'admin', '35'),
(38, '-', 'Pengembalian Kelebihan Bayar Penggandaan/ Fotocopy 2020', '11', 'admin', '35'),
(39, '-', 'Pengembalian Kelebihan Bayar Belanja Barang dan Jasa Dinas Pertanian', '11', 'admin', '35'),
(40, '-', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', '11', 'admin', '35'),
(41, '-', 'PAD Bakeuda PPJU dari PLN', '11', 'admin', '35'),
(42, '-', 'Pengembalian Kelebihan Barang dan Jasa (Sewa)', '11', 'admin', '35'),
(43, '-', 'PAD Bakeuda Pajak Restoran (Katering)', '11', 'admin', '35'),
(44, '-', 'Pengembalian Dana Bantuan yang tidak diserahkan pada Panti Asuhan', '11', 'admin', '35'),
(45, '-', 'Pengembalian Kelebihan Bayar Atas Ippd/LKPJ 2020 Setda Bag. Pemerintahan', '11', 'admin', '35'),
(46, '-', 'PAD Perhubungan Retribusi Parkir', '11', 'admin', '35'),
(47, '-', 'PAD Perhubungan Retribusi PKD (PKB)', '11', 'admin', '35'),
(48, '-', 'Pengembalian Kegiatan Rehab Jalan pada Kel. Wek II', '11', 'admin', '35'),
(49, '-', 'Pengembalian Belanja Jasa Kantor Tunj. Insentif Covid-19 Puskesmas Sadabuan', '11', 'admin', '35'),
(50, '-', 'PAD Kec. Psp Utara Retribusi IMB', '11', 'admin', '35'),
(51, '-', 'Pengembalian Sisa BTT 2020 Dinas Perdagangan', '11', 'admin', '35'),
(52, '-', 'Pengembalian Kekurangan Volume Pek. Pemb. Gg. Idaman Kel. Kantin', '11', 'admin', '35'),
(53, '-', 'Pengembalian Kekurangan Volume Pekerjaan Kel. Batang Ayumi Julu', '11', 'admin', '35'),
(54, '-', 'Pengembalian Kelebihan Bayar Barang dan Jasa Dinas Kependudukan dan Capil', '11', 'admin', '35'),
(55, '-', 'Pengembalian Tunj. Camat Padangsidimpuan Hutaimbaru Januari 2021', '11', 'admin', '35'),
(56, '-', 'Pengembalian Biaya DAK non Fisik PAUD Mawar', '11', 'admin', '35'),
(57, '-', 'PAD PMPTSP Retribusi IMB', '11', 'admin', '35'),
(58, '-', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', '11', 'admin', '35'),
(59, '-', 'PAD Perhubungan Retribusi Terminal', '11', 'admin', '35'),
(60, '-', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', '11', 'admin', '35'),
(61, '-', 'Pengembalian Perjalanan Dinas Luar Daerah Dinas Sosial', '11', 'admin', '35'),
(62, '-', 'PAD Bakeuda Pajak Hiburan', '11', 'admin', '35'),
(63, '-', 'PAD Perdagangan Retribusi Pelayanan Pasar', '11', 'admin', '35'),
(64, '-', 'PAD Perdagangan Retribusi Pelayanan Sampah', '11', 'admin', '35'),
(65, '-', 'Pengembalian Kelebihan Bayar CV. PH Hasil LHP BPK', '11', 'admin', '35'),
(66, '-', 'Pengembalian Gaji/Tunjangan Januari 2021 Dinas Kesehatan', '11', 'admin', '35'),
(67, '-', 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', '11', 'admin', '35'),
(68, '-', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Tetap)', '11', 'admin', '35'),
(69, '-', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Produksi)', '11', 'admin', '35'),
(70, '-', 'Penerimaan DBH SDA Perikanan Triw. I TA. 2021', '11', 'admin', '35'),
(71, '-', 'PAD Perdagangan Retribusi Fasilitas Pasar', '11', 'admin', '35'),
(72, '-', 'Pengembalian Kelebihan Bayar atas Kerugian Negara Rehab. Gg. Serasi Ujung Kel. Kayu Ombun TA. 2017', '11', 'admin', '35'),
(73, '-', 'PAD Bakeuda Pajak ABT', '11', 'admin', '35'),
(74, '-', 'PAD Bakeuda Pajak Perparkiran', '11', 'admin', '35'),
(75, '-', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', '11', 'admin', '35'),
(76, '-', 'PAD Lingk. Hidup Retribusi Penyedotan Kakus/Tinja', '11', 'admin', '35'),
(77, '-', 'PAD Bag. Umum Retribusi Rumah Penginapan', '11', 'admin', '35'),
(78, '-', 'PAD Pertanian Retribusi Pemeriksaan Kesehatan (RPH)', '11', 'admin', '35'),
(79, '-', 'PAD Pertanian Retribusi Penjualan Produksi Usaha Daerah', '11', 'admin', '35'),
(80, '-', 'Penerimaan Kontribusi dari PDAM Tirtanadi', '11', 'admin', '35'),
(81, '-', 'PAD Baekuda Penerimaan Jasa Giro Januari 2021', '11', 'admin', '35'),
(82, '-', 'PAD Perhubungan Retribusi Izin Trayek', '11', 'admin', '35'),
(83, '-', 'Penerimaa Setoran dari PT. Anugerah Tetap Cemerlang (ATC)', '11', 'admin', '35'),
(84, '-', 'Pengembalian Tamb. Pengh. Berd. Beban Kerja Oktober s/d Desember 2021 Dinas Pendidikan', '11', 'admin', '35'),
(85, '-', 'Pengembalian dari Gaji Pensiun PT. Taspen', '11', 'admin', '35'),
(86, '-', 'Pengembalian Lebih Bayar Peningkatan Jalan Baru Hutaimbaru', '11', 'admin', '35'),
(87, '-', 'Pengembalian Lebih Bayar Peningkatan Jln Silandit 2017', '11', 'admin', '35'),
(88, '-', 'PAD Perdagangan Retribusi Persampahan', '11', 'admin', '35'),
(89, '-', 'Pengembalian Gaji / Tunjangan Januari 2021 SMPN 9', '11', 'admin', '35'),
(91, '-', 'Pengembalian Kekurangan Volume Pekerjaan Pemb. Trotoar Jln Kpaten Tendean Kel. Bincar', '11', 'admin', '35'),
(92, '-', 'PAD Bakeuda Pajak Air Bawah Tanah', '11', 'admin', '35'),
(94, '-', 'Penerimaan DBH SDA Gas Bumi 30% Triw. I 2021', '11', 'admin', '35'),
(95, '-', 'Penerimaan DBH SDA Gas Bumi 0,5% Triw. I 2021', '11', 'admin', '35'),
(96, '-', 'Penerimaan DBH SDA Minyak Bumi 15% Triw. I 2021', '11', 'admin', '35'),
(97, '-', 'Penerimaan DBH SDA Minyak Bumi 0,5% Triw. I 2021', '11', 'admin', '35'),
(98, '-', 'Penerimaan Dana Fasilitas Penanaman Modal Tahap I 2021', '11', 'admin', '35'),
(99, '123', 'tes', '11', 'admin', '35'),
(100, '-', 'yuu', '11', 'admin', '35'),
(101, '-', 'tesssss', '11', 'admin', '35');

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
(5, 'A', 'A. Penerimaan yang telah dicatat oleh buku,\r\n    belum dicatat oleh Bank\r\n'),
(6, 'B', '\r\nB. Pengeluaran yang telah dicatat oleh buku,\r\n    belum dicatat oleh Bank'),
(7, 'C', '\r\nC. Penerimaan yang telah dicatat oleh Bank,\r\n    belum dicatat oleh Buku'),
(8, 'D', '\r\nD. Pengeluaran yang telah dicatat oleh Bank,\r\n    belum dicatat oleh Buku');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opd`
--

CREATE TABLE `tbl_opd` (
  `id_opd` int(128) NOT NULL,
  `nama_opd` varchar(128) NOT NULL,
  `alamat_opd` varchar(128) NOT NULL,
  `kecamatan_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_opd`
--

INSERT INTO `tbl_opd` (`id_opd`, `nama_opd`, `alamat_opd`, `kecamatan_opd`) VALUES
(1, 'Dinas Pendidikan', 'Alamat DP', 'Kec. DP'),
(35, 'Badan Keuangan Daerah', 'Jln. Jen. Dr. Abd.Haris Nasution Pal - IV Pijorkoling Telp (0634)27075 Fax. (0634) 27075', 'Kec. Padangsidimpuan Tenggara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(128) NOT NULL,
  `kode_rekening` varchar(128) NOT NULL,
  `nama_rekening` varchar(128) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `kode_rekening`, `nama_rekening`, `id_user`, `id_opd`) VALUES
(0, '-', '-', '', '35');

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
(10, '2021-01-04', 144614041871.43, 'admin', '35'),
(11, '2020-12-31', 104313662823.43, 'admin', '35'),
(12, '2021-01-05', 144619041871.43, 'admin', '35'),
(13, '2021-01-06', 144619041871.43, 'admin', '35'),
(14, '2021-01-07', 144620041871.43, 'admin', '35'),
(15, '2021-01-08', 144620066871.43, 'admin', '35'),
(16, '2021-01-11', 144634236218.43, 'admin', '35'),
(17, '2021-01-12', 144639995666.43, 'admin', '35'),
(18, '2021-01-13', 144674888643.43, 'admin', '35'),
(19, '2021-01-14', 144260980815.93, 'admin', '35'),
(20, '2021-01-15', 130963133747.93, 'admin', '35'),
(21, '2021-01-18', 128610502161.93, 'admin', '35'),
(22, '2021-01-19', 128436588816.93, 'admin', '35'),
(23, '2021-01-20', 128332972520.93, 'admin', '35'),
(24, '2021-01-21', 128590989216.48, 'admin', '35'),
(25, '2021-01-22', 128597400425.48, 'admin', '35'),
(26, '2021-01-25', 128622956326.48, 'admin', '35'),
(27, '2021-01-26', 128633049365.48, 'admin', '35'),
(28, '2021-01-27', 129546249013.89, 'admin', '35'),
(29, '2021-01-28', 129550340265.89, 'admin', '35'),
(30, '2021-01-29', 127372779537.89, 'admin', '35'),
(31, '2021-01-31', 127589353236.89, 'admin', '35'),
(32, '2021-02-01', 127615929126.89, 'admin', '35'),
(33, '2021-02-02', 127693708025.89, 'admin', '35'),
(34, '2021-02-03', 127754059502.89, 'admin', '35'),
(35, '2021-02-04', 127761179130.89, 'admin', '35'),
(36, '2021-02-05', 124473857080.89, 'admin', '35'),
(37, '2021-02-08', 112826811583.89, 'admin', '35'),
(38, '2021-02-09', 109889255439.55, 'admin', '35'),
(39, '2021-02-10', 106906982856.55, 'admin', '35'),
(40, '2021-02-11', 106915276717.55, 'admin', '35'),
(41, '2021-02-15', 106788704411.55, 'admin', '35'),
(42, '2021-02-16', 106969924039.21, 'admin', '35'),
(43, '2021-02-17', 106783115452.21, 'admin', '35'),
(44, '2021-02-18', 105658968959, 'admin', '35'),
(45, '2021-02-19', 104785939117.21, 'admin', '35'),
(46, '2021-02-22', 145079773652.21, 'admin', '35'),
(47, '2021-02-23', 145108713923.21, 'admin', '35');

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
(17, '2021-01-31', 'D', 'Pajak Jasa Giro Yang Dipotong Bank', 53157100, 0, ''),
(18, '2021-01-31', 'D', 'Pajak Jasa Giro Yang Dipotong Bank', 53157100, 0, '35');

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
  `gol_jabatan` varchar(128) NOT NULL,
  `gol` int(10) NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sk`
--

INSERT INTO `tbl_sk` (`id`, `no_sk`, `tanggal_sk`, `tanggal_skberakhir`, `nama`, `nip`, `jabatan`, `gol_jabatan`, `gol`, `id_user`, `id_opd`) VALUES
(1, '2/KPTS/2021', '2021-01-04', '2021-12-31', 'Sulaiman Lubis, SE', '19690501 199303 1 004', 'Pembina Utama Muda', 'IV/ c', 1, '', '35'),
(2, '5/KPTS/2021', '2021-01-04', '2021-03-31', 'Aswin Hasibuan, S.AP', '19820911 200312 1 008', 'Penata Tingkat I', 'III d', 2, '', '35'),
(3, '91/KPTS/2021', '2021-04-01', '2021-12-31', 'Asir Aryadi, SE', '19760207 200502 1 002', 'Penata Tingkat I', 'III d', 2, '', '35'),
(5, '9u89', '2021-01-01', '2021-04-30', 'vjhbvjh', '987897', 'jhkjh', 'jhkjh', 1, 'admin3', '1'),
(6, '7987', '2021-01-01', '2021-04-29', '87689', '89709', 'jlkh', 'lkjkl', 2, 'admin3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` int(128) NOT NULL,
  `no_sts` int(128) NOT NULL,
  `no_lainlain` int(128) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `keterangan` enum('Transaksi Utama','Transaksi Tambahan','','') NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(16, '2020-12-31', 0, 0, 0, 'Saldo Bank Tahun 2020', 104313662823.43, 0, 'Transaksi Utama', 'admin', '35'),
(17, '2021-02-05', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 355981899, 355981899, 'Transaksi Tambahan', 'admin', '35'),
(19, '2021-02-05', 0, 0, 0, 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(20, '2021-02-05', 0, 0, 0, 'JKK, JKM', 127943180, 127943180, 'Transaksi Tambahan', 'admin', '35'),
(21, '2021-02-08', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1242676766, 1242676766, 'Transaksi Tambahan', 'admin', '35'),
(22, '2021-02-09', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 325770689, 325770689, 'Transaksi Tambahan', 'admin', '35'),
(23, '2021-02-10', 0, 0, 0, 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(24, '2021-02-18', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Terusa Februari ', 7471939, 7471939, 'Transaksi Tambahan', 'admin', '35'),
(25, '2021-02-19', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 48612637, 48612637, 'Transaksi Tambahan', 'admin', '35'),
(26, '2021-02-22', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1043745, 1043745, 'Transaksi Tambahan', 'admin', '35'),
(27, '2021-02-23', 0, 0, 0, 'Pemby. PPN & PPh', 1467750, 1467750, 'Transaksi Tambahan', 'admin', '35'),
(28, '2021-01-14', 0, 0, 0, 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 65748880, 65748880, 'Transaksi Tambahan', 'admin', '35'),
(29, '2021-01-15', 0, 0, 0, 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 1597879303, 1597879303, 'Transaksi Tambahan', 'admin', '35'),
(30, '2021-01-15', 0, 0, 0, 'JKK, JKM', 128330322, 128330322, 'Transaksi Tambahan', 'admin', '35'),
(31, '2021-01-15', 0, 0, 0, 'Pemby. PPN & PPh', 269802799, 269802799, 'Transaksi Tambahan', 'admin', '35'),
(32, '2021-01-19', 0, 0, 0, 'Pemby. PPN & PPh', 22880746, 22880746, 'Transaksi Tambahan', 'admin', '35'),
(33, '2021-01-20', 0, 0, 0, 'Pemby. PPN & PPh', 22843075, 22843075, 'Transaksi Tambahan', 'admin', '35'),
(34, '2021-01-29', 0, 0, 0, 'JKK, JKM', 460656, 460656, 'Transaksi Tambahan', 'admin', '35'),
(35, '2021-01-29', 0, 0, 0, 'Pemby. PPN & PPh', 153842964, 153842964, 'Transaksi Tambahan', 'admin', '35'),
(36, '2021-01-14', 0, 0, 0, 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(37, '2021-01-14', 0, 0, 0, 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'Transaksi Utama', 'admin', '35'),
(38, '2021-01-15', 0, 0, 0, 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'Transaksi Utama', 'admin', '35'),
(39, '2021-01-15', 0, 0, 0, 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'Transaksi Utama', 'admin', '35'),
(40, '2021-01-15', 0, 0, 0, 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'Transaksi Utama', 'admin', '35'),
(41, '2021-01-15', 0, 0, 0, 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'Transaksi Utama', 'admin', '35'),
(42, '2021-01-15', 0, 0, 0, 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'Transaksi Utama', 'admin', '35'),
(43, '2021-01-15', 0, 0, 0, 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(44, '2021-01-15', 0, 0, 0, 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(45, '2021-01-15', 0, 0, 0, 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'Transaksi Utama', 'admin', '35'),
(46, '2021-01-15', 0, 0, 0, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'Transaksi Utama', 'admin', '35'),
(47, '2021-01-15', 0, 0, 0, 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'Transaksi Utama', 'admin', '35'),
(48, '2021-01-15', 0, 0, 0, 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'Transaksi Utama', 'admin', '35'),
(49, '2021-01-15', 0, 0, 0, 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'Transaksi Utama', 'admin', '35'),
(50, '2021-01-15', 0, 0, 0, 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'Transaksi Utama', 'admin', '35'),
(51, '2021-01-15', 0, 0, 0, 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'Transaksi Utama', 'admin', '35'),
(52, '2021-01-15', 0, 0, 0, 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(53, '2021-01-15', 0, 0, 0, 'Inspektorat Gaji Januari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(54, '2021-01-15', 0, 0, 0, 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'Transaksi Utama', 'admin', '35'),
(55, '2021-01-15', 0, 0, 0, 'RSUD Gaji Januari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(56, '2021-01-15', 0, 0, 0, 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(57, '2021-01-15', 0, 0, 0, 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'Transaksi Utama', 'admin', '35'),
(58, '2021-01-15', 0, 0, 0, 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'Transaksi Utama', 'admin', '35'),
(59, '2021-01-18', 0, 0, 0, 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'Transaksi Utama', 'admin', '35'),
(60, '2021-01-18', 0, 0, 0, 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'Transaksi Utama', 'admin', '35'),
(61, '2021-01-18', 0, 0, 0, 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'Transaksi Utama', 'admin', '35'),
(62, '2021-01-18', 0, 0, 0, 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'Transaksi Utama', 'admin', '35'),
(63, '2021-01-18', 0, 0, 0, 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(64, '2021-01-18', 0, 0, 0, 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'Transaksi Utama', 'admin', '35'),
(65, '2021-01-18', 0, 0, 0, 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(66, '2021-01-18', 0, 0, 0, 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'Transaksi Utama', 'admin', '35'),
(67, '2021-01-18', 0, 0, 0, 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'Transaksi Utama', 'admin', '35'),
(68, '2021-01-18', 0, 0, 0, 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'Transaksi Utama', 'admin', '35'),
(69, '2021-01-18', 0, 0, 0, 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(70, '2021-01-18', 0, 0, 0, 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(71, '2021-01-19', 0, 0, 0, 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(72, '2021-01-20', 0, 0, 0, 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(73, '2021-01-29', 0, 0, 0, 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'Transaksi Utama', 'admin', '35'),
(74, '2021-01-29', 0, 0, 0, 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'Transaksi Utama', 'admin', '35'),
(75, '2021-01-29', 0, 0, 0, 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'Transaksi Utama', 'admin', '35'),
(76, '2021-01-29', 0, 0, 0, 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'Transaksi Utama', 'admin', '35'),
(77, '2021-01-29', 0, 0, 0, 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'Transaksi Utama', 'admin', '35'),
(78, '2021-02-05', 0, 0, 0, 'Badan Keuangan Daerah Gaji Februari 2021', 0, 472323691, 'Transaksi Utama', 'admin', '35'),
(79, '2021-02-05', 0, 0, 0, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Februari 2021', 0, 80010953, 'Transaksi Utama', 'admin', '35'),
(80, '2021-02-05', 0, 0, 0, 'Kantor Kesbang dan Politik Gaji Februari 2021', 0, 127058984, 'Transaksi Utama', 'admin', '35'),
(81, '2021-02-05', 0, 0, 0, 'Dinas Sosial Gaji Februari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(82, '2021-02-05', 0, 0, 0, 'Dinas Komunikasi dan Informatika Gaji Februari 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(83, '2021-02-05', 0, 0, 0, 'Dinas Pariwisata Gaji Februari 2021', 0, 126038168, 'Transaksi Utama', 'admin', '35'),
(84, '2021-02-05', 0, 0, 0, 'Dinas Lingkungan Hidup Gaji Februari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(85, '2021-02-05', 0, 0, 0, 'Dinas Penataan Ruang dan Permukiman Gaji Februari 2021', 0, 235877446, 'Transaksi Utama', 'admin', '35'),
(86, '2021-02-05', 0, 0, 0, 'Inspektorat Gaji Februari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(87, '2021-02-05', 0, 0, 0, 'Kec. Psp Tenggara Gaji Februari 2021', 0, 186688626, 'Transaksi Utama', 'admin', '35'),
(88, '2021-02-05', 0, 0, 0, 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Februari 2021', 0, 139385382, 'Transaksi Utama', 'admin', '35'),
(89, '2021-02-05', 0, 0, 0, 'Dinas Ketenagakerjaan Gaji Februari 2021', 0, 154171163, 'Transaksi Utama', 'admin', '35'),
(90, '2021-02-05', 0, 0, 0, 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Februari 2021', 0, 190969612, 'Transaksi Utama', 'admin', '35'),
(91, '2021-02-05', 0, 0, 0, 'Dinas Pertanian Gaji Februari 2021', 0, 315966384, 'Transaksi Utama', 'admin', '35'),
(92, '2021-02-05', 0, 0, 0, 'Sekretariat Daerah Gaji Februari 2021', 0, 574264409, 'Transaksi Utama', 'admin', '35'),
(93, '2021-02-05', 0, 0, 0, 'KDH & WKDH Gaji Februari 2021', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(94, '2021-02-08', 0, 0, 0, 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Februari 2021', 0, 151972131, 'Transaksi Utama', 'admin', '35'),
(95, '2021-02-08', 0, 0, 0, 'Kec. Psp Utara Gaji Februari 2021', 0, 564429227, 'Transaksi Utama', 'admin', '35'),
(96, '2021-02-08', 0, 0, 0, 'Kantor Satpol-PP Gaji Februari 2021', 0, 181363899, 'Transaksi Utama', 'admin', '35'),
(97, '2021-02-08', 0, 0, 0, 'Kec. Psp Batunadua Gaji Februari 2021', 0, 146134302, 'Transaksi Utama', 'admin', '35'),
(98, '2021-02-08', 0, 0, 0, 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Februari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(99, '2021-02-08', 0, 0, 0, 'Kec. Psp Angkola Julu Gaji Februari 2021', 0, 114826520, 'Transaksi Utama', 'admin', '35'),
(100, '2021-02-08', 0, 0, 0, 'Badan Penanggulangan Bencana Daerah Gaji Februari 2021', 0, 64159019, 'Transaksi Utama', 'admin', '35'),
(101, '2021-02-08', 0, 0, 0, 'RSUD Gaji Februari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(102, '2021-02-08', 0, 0, 0, 'Dinas Perhubungan Gaji Februari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(103, '2021-02-08', 0, 0, 0, 'Dinas Pemadam Kebakaran Gaji Februari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(104, '2021-02-08', 0, 0, 0, 'Dinas Perpustakaan Gaji Februari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(105, '2021-02-08', 0, 0, 0, 'Sekr. DPRD Gaji Februari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(106, '2021-02-08', 0, 0, 0, 'Dinas Pendidikan Gaji Februari 2021', 0, 7293751905, 'Transaksi Utama', 'admin', '35'),
(107, '2021-02-08', 0, 0, 0, 'Badan Kepegawaian dan Pengembangan SDM Gaji Februari 2021', 0, 130840587, 'Transaksi Utama', 'admin', '35'),
(108, '2021-02-08', 0, 0, 0, 'PUD Pembayaran Uang Persediaan (UP) TA. 2021', 0, 605752000, 'Transaksi Utama', 'admin', '35'),
(109, '2021-02-08', 0, 0, 0, 'Bapelitbang Pembayaran UP TA. 2021', 0, 333121000, 'Transaksi Utama', 'admin', '35'),
(110, '2021-02-09', 0, 0, 0, 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Februari 2021', 0, 126255504, 'Transaksi Utama', 'admin', '35'),
(111, '2021-02-09', 0, 0, 0, 'Kec. Psp Hutaimbaru Gaji Februari 2021', 0, 213834833, 'Transaksi Utama', 'admin', '35'),
(112, '2021-02-09', 0, 0, 0, 'Dinas Kesehatan Gaji Februari 2021', 0, 2097607474, 'Transaksi Utama', 'admin', '35'),
(113, '2021-02-09', 0, 0, 0, 'Dinas Perdagangan Gaji Februari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(114, '2021-02-09', 0, 0, 0, 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Februari 2021', 0, 136256722, 'Transaksi Utama', 'admin', '35'),
(115, '2021-02-09', 0, 0, 0, 'Dinas Kesehatan Pangan Gaji Februari 2021', 0, 130322792, 'Transaksi Utama', 'admin', '35'),
(116, '2021-02-09', 0, 0, 0, 'Kominfo Permintaan UP TA. 2021', 0, 79835000, 'Transaksi Utama', 'admin', '35'),
(117, '2021-02-10', 0, 0, 0, 'P2KB Permintaan UP TA. 2021', 0, 475283000, 'Transaksi Utama', 'admin', '35'),
(118, '2021-02-10', 0, 0, 0, 'Pemadam, KP Permintaan UP TA. 2021', 0, 165181000, 'Transaksi Utama', 'admin', '35'),
(119, '2021-02-10', 0, 0, 0, 'Sekrt. DPRD Pembayaran Uang Persediaan (UP) 2021', 0, 1669615000, 'Transaksi Utama', 'admin', '35'),
(120, '2021-02-10', 0, 0, 0, 'DLH Permintaan UP TA. 2021', 0, 349976000, 'Transaksi Utama', 'admin', '35'),
(121, '2021-02-10', 0, 0, 0, 'Kec. Psp Tenggara Permintaan UP TA. 2021', 0, 91960000, 'Transaksi Utama', 'admin', '35'),
(122, '2021-02-10', 0, 0, 0, 'Ketenagakerjaan Permintaan UP TA. 2021', 0, 253642000, 'Transaksi Utama', 'admin', '35'),
(123, '2021-02-15', 0, 0, 0, 'P3A Permintaan UP TA. 2021', 0, 259953000, 'Transaksi Utama', 'admin', '35'),
(124, '2021-02-16', 0, 0, 0, 'Penanaman Modal, PTSP Permintaan UP TA. 2021', 0, 317117000, 'Transaksi Utama', 'admin', '35'),
(125, '2021-02-16', 0, 0, 0, 'Perpustakaan Permintaan UP TA. 2021', 0, 101549000, 'Transaksi Utama', 'admin', '35'),
(126, '2021-02-16', 0, 0, 0, 'Satpol-PP Permintaan UP TA. 2021', 0, 139847000, 'Transaksi Utama', 'admin', '35'),
(127, '2021-02-17', 0, 0, 0, 'Per. Rakyat, KP LPJU Bulan Februari 2021', 0, 212924291, 'Transaksi Utama', 'admin', '35'),
(128, '2021-02-18', 0, 0, 0, 'Sosial Permintaan UP TA. 2021', 0, 235686000, 'Transaksi Utama', 'admin', '35'),
(129, '2021-02-18', 0, 0, 0, 'Inspektorat Permintaan UP TA. 2021', 0, 283820000, 'Transaksi Utama', 'admin', '35'),
(130, '2021-02-18', 0, 0, 0, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Terusan An. Masnilam Daulay', 0, 22858800, 'Transaksi Utama', 'admin', '35'),
(131, '2021-02-18', 0, 0, 0, 'Dinas Pendidikan Gaji Terusan Februari 2021', 0, 125247639, 'Transaksi Utama', 'admin', '35'),
(132, '2021-02-18', 0, 0, 0, 'BPBD Permintaan UP TA. 2021', 0, 119681000, 'Transaksi Utama', 'admin', '35'),
(133, '2021-02-18', 0, 0, 0, 'Perdagangan Permintaan UP TA. 2021', 0, 352000000, 'Transaksi Utama', 'admin', '35'),
(134, '2021-02-19', 0, 0, 0, 'BKD Permintaan UP TA. 2021', 0, 174279000, 'Transaksi Utama', 'admin', '35'),
(135, '2021-02-19', 0, 0, 0, 'Kec. Psp Utara Permintaan Uang Persediaan (UP) TA. 2021', 0, 108721000, 'Transaksi Utama', 'admin', '35'),
(136, '2021-02-19', 0, 0, 0, 'Kec. Psp Hutaimbaru Permintaan UP TA. 2021', 0, 60390000, 'Transaksi Utama', 'admin', '35'),
(137, '2021-02-19', 0, 0, 0, 'PMD Permintaan UP TA. 2021', 0, 110680000, 'Transaksi Utama', 'admin', '35'),
(138, '2021-02-19', 0, 0, 0, 'Kec. Psp Selatan Gaji Februari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(139, '2021-02-22', 0, 0, 0, 'Dinas Kesehatan Gaji Terusan Februari 2021', 0, 22072245, 'Transaksi Utama', 'admin', '35'),
(140, '2021-02-23', 0, 0, 0, 'Inspektorat Gaji Terusan An. Iskandar Zulkarnaen', 0, 28398150, 'Transaksi Utama', 'admin', '35'),
(141, '2021-02-23', 0, 0, 0, 'Perhubungan Permintaan UP TA. 2021', 0, 135643000, 'Transaksi Utama', 'admin', '35'),
(163, '2021-01-04', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 527048, 0, 'Transaksi Utama', 'admin', '35'),
(164, '2021-01-04', 0, 0, 0, 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', 1500000, 0, 'Transaksi Utama', 'admin', '35'),
(165, '2021-01-04', 0, 0, 0, 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 40298352000, 0, 'Transaksi Utama', 'admin', '35'),
(166, '2021-01-05', 0, 0, 0, 'Pengembalian Kelebihan Bayar ATK TA. 2018', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(167, '2021-01-07', 0, 0, 0, 'Pengembalian Lebih Bayar Peningkatan Gg pada Lk I Desa Batang Bahal Dinas Permukiman An. Aslamiah Hr', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(168, '2021-01-08', 0, 0, 0, 'Pengembalian Anggaran BTT Dinas Sosial', 25000, 0, 'Transaksi Utama', 'admin', '35'),
(169, '2021-01-11', 0, 0, 0, 'Pengembalian Lebih Bayar Belanja Penggandaan Bag. Organisasi Setda Kota TA. 2020', 14169347, 0, 'Transaksi Utama', 'admin', '35'),
(170, '2021-01-12', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 481040, 0, 'Transaksi Utama', 'admin', '35'),
(171, '2021-01-12', 0, 0, 0, 'Pengembalian Lebih Bayar Belanja Fotocopy Bag. Hukum Setda Kota Padangsidimpuan', 5278408, 0, 'Transaksi Utama', 'admin', '35'),
(172, '2021-01-13', 0, 0, 0, 'PAD Bakeuda Pajak Restoran', 3123500, 0, 'Transaksi Utama', 'admin', '35'),
(173, '2021-01-13', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 3715616, 0, 'Transaksi Utama', 'admin', '35'),
(174, '2021-01-13', 0, 0, 0, 'PAD Bakeuda Pajak Hotel', 3300000, 0, 'Transaksi Utama', 'admin', '35'),
(175, '2021-01-13', 0, 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 1412956, 0, 'Transaksi Utama', 'admin', '35'),
(176, '2021-01-13', 0, 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 2874000, 0, 'Transaksi Utama', 'admin', '35'),
(177, '2021-01-13', 0, 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 617974, 0, 'Transaksi Utama', 'admin', '35'),
(178, '2021-01-13', 0, 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 215909, 0, 'Transaksi Utama', 'admin', '35'),
(179, '2021-01-13', 0, 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 19633022, 0, 'Transaksi Utama', 'admin', '35'),
(180, '2021-01-14', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 6586267, 0, 'Transaksi Utama', 'admin', '35'),
(181, '2021-01-14', 0, 0, 0, 'PAD Bakeuda Pajak Restoran', 125563040, 0, 'Transaksi Utama', 'admin', '35'),
(182, '2021-01-14', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 9293750, 0, 'Transaksi Utama', 'admin', '35'),
(183, '2021-01-14', 0, 0, 0, 'Pengembalian Temuan BPK dari Kegiatan Kel. Aek Tampang', 13413789.5, 0, 'Transaksi Utama', 'admin', '35'),
(184, '2021-01-14', 0, 0, 0, 'Pengembalian Kelebihan Bayar Penggandaan/ Fotocopy 2020', 2710506, 0, 'Transaksi Utama', 'admin', '35'),
(185, '2021-01-14', 0, 0, 0, 'Pengembalian Kelebihan Bayar Belanja Barang dan Jasa Dinas Pertanian', 15000000, 0, 'Transaksi Utama', 'admin', '35'),
(186, '2021-01-15', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 430931, 0, 'Transaksi Utama', 'admin', '35'),
(187, '2021-01-15', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 11317250, 0, 'Transaksi Utama', 'admin', '35'),
(188, '2021-01-15', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(189, '2021-01-15', 0, 0, 0, 'PAD Bakeuda PPJU dari PLN', 711449202, 0, 'Transaksi Utama', 'admin', '35'),
(190, '2021-01-15', 0, 0, 0, 'Pengembalian Kelebihan Barang dan Jasa (Sewa)', 30451274, 0, 'Transaksi Utama', 'admin', '35'),
(191, '2021-01-18', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 120800, 0, 'Transaksi Utama', 'admin', '35'),
(192, '2021-01-18', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1618563, 0, 'Transaksi Utama', 'admin', '35'),
(193, '2021-01-18', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 6602850, 0, 'Transaksi Utama', 'admin', '35'),
(194, '2021-01-18', 0, 0, 0, 'Pengembalian Dana Bantuan yang tidak diserahkan pada Panti Asuhan', 28000000, 0, 'Transaksi Utama', 'admin', '35'),
(195, '2021-01-19', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1306000, 0, 'Transaksi Utama', 'admin', '35'),
(196, '2021-01-19', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2595751, 0, 'Transaksi Utama', 'admin', '35'),
(197, '2021-01-19', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 3166950, 0, 'Transaksi Utama', 'admin', '35'),
(198, '2021-01-19', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5700000, 0, 'Transaksi Utama', 'admin', '35'),
(199, '2021-01-19', 0, 0, 0, 'Pengembalian Kelebihan Bayar Atas Ippd/LKPJ 2020 Setda Bag. Pemerintahan', 16000000, 0, 'Transaksi Utama', 'admin', '35'),
(200, '2021-01-20', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(201, '2021-01-20', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 5757979, 0, 'Transaksi Utama', 'admin', '35'),
(202, '2021-01-20', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 2972500, 0, 'Transaksi Utama', 'admin', '35'),
(203, '2021-01-20', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 44800000, 0, 'Transaksi Utama', 'admin', '35'),
(204, '2021-01-20', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 10000000, 0, 'Transaksi Utama', 'admin', '35'),
(205, '2021-01-20', 0, 0, 0, 'PAD Perhubungan Retribusi PKD (PKB)', 11380000, 0, 'Transaksi Utama', 'admin', '35'),
(206, '2021-01-20', 0, 0, 0, 'Pengembalian Kegiatan Rehab Jalan pada Kel. Wek II', 3000000, 0, 'Transaksi Utama', 'admin', '35'),
(207, '2021-01-20', 0, 0, 0, 'Pengembalian Belanja Jasa Kantor Tunj. Insentif Covid-19 Puskesmas Sadabuan', 18181000, 0, 'Transaksi Utama', 'admin', '35'),
(208, '2021-01-21', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 760000, 0, 'Transaksi Utama', 'admin', '35'),
(209, '2021-01-21', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1724067, 0, 'Transaksi Utama', 'admin', '35'),
(210, '2021-01-21', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 22862500, 0, 'Transaksi Utama', 'admin', '35'),
(211, '2021-01-21', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 30270000, 0, 'Transaksi Utama', 'admin', '35'),
(212, '2021-01-21', 0, 0, 0, 'PAD Kec. Psp Utara Retribusi IMB', 729000, 0, 'Transaksi Utama', 'admin', '35'),
(213, '2021-01-21', 0, 0, 0, 'Pengembalian Sisa BTT 2020 Dinas Perdagangan', 167693821, 0, 'Transaksi Utama', 'admin', '35'),
(214, '2021-01-21', 0, 0, 0, 'Pengembalian Kekurangan Volume Pek. Pemb. Gg. Idaman Kel. Kantin', 2000000, 0, 'Transaksi Utama', 'admin', '35'),
(215, '2021-01-21', 0, 0, 0, 'Pengembalian Kekurangan Volume Pekerjaan Kel. Batang Ayumi Julu', 2082537.55, 0, 'Transaksi Utama', 'admin', '35'),
(216, '2021-01-21', 0, 0, 0, 'Pengembalian Kelebihan Bayar Barang dan Jasa Dinas Kependudukan dan Capil', 28619770, 0, 'Transaksi Utama', 'admin', '35'),
(217, '2021-01-21', 0, 0, 0, 'Pengembalian Tunj. Camat Padangsidimpuan Hutaimbaru Januari 2021', 1075000, 0, 'Transaksi Utama', 'admin', '35'),
(218, '2021-01-21', 0, 0, 0, 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 200000, 0, 'Transaksi Utama', 'admin', '35'),
(219, '2021-01-22', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 674000, 0, 'Transaksi Utama', 'admin', '35'),
(220, '2021-01-22', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2096209, 0, 'Transaksi Utama', 'admin', '35'),
(221, '2021-01-22', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 3616000, 0, 'Transaksi Utama', 'admin', '35'),
(222, '2021-01-22', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 25000, 0, 'Transaksi Utama', 'admin', '35'),
(223, '2021-01-25', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 3029500, 0, 'Transaksi Utama', 'admin', '35'),
(224, '2021-01-25', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2901401, 0, 'Transaksi Utama', 'admin', '35'),
(225, '2021-01-25', 0, 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 6080000, 0, 'Transaksi Utama', 'admin', '35'),
(226, '2021-01-25', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1750000, 0, 'Transaksi Utama', 'admin', '35'),
(227, '2021-01-25', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 9450000, 0, 'Transaksi Utama', 'admin', '35'),
(228, '2021-01-25', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 2345000, 0, 'Transaksi Utama', 'admin', '35'),
(229, '2021-01-26', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 115000, 0, 'Transaksi Utama', 'admin', '35'),
(230, '2021-01-26', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1105414, 0, 'Transaksi Utama', 'admin', '35'),
(231, '2021-01-26', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 1590625, 0, 'Transaksi Utama', 'admin', '35'),
(232, '2021-01-26', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 2525000, 0, 'Transaksi Utama', 'admin', '35'),
(233, '2021-01-26', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 4712000, 0, 'Transaksi Utama', 'admin', '35'),
(234, '2021-01-26', 0, 0, 0, 'Pengembalian Perjalanan Dinas Luar Daerah Dinas Sosial', 45000, 0, 'Transaksi Utama', 'admin', '35'),
(235, '2021-01-27', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1770561, 0, 'Transaksi Utama', 'admin', '35'),
(236, '2021-01-27', 0, 0, 0, 'PAD Bakeuda Pajak Hiburan', 2500000, 0, 'Transaksi Utama', 'admin', '35'),
(237, '2021-01-27', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3000000, 0, 'Transaksi Utama', 'admin', '35'),
(238, '2021-01-27', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 10615575, 0, 'Transaksi Utama', 'admin', '35'),
(239, '2021-01-27', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 4048000, 0, 'Transaksi Utama', 'admin', '35'),
(240, '2021-01-27', 0, 0, 0, 'Pengembalian Kelebihan Bayar CV. PH Hasil LHP BPK', 4440962.41, 0, 'Transaksi Utama', 'admin', '35'),
(241, '2021-01-27', 0, 0, 0, 'Pengembalian Gaji/Tunjangan Januari 2021 Dinas Kesehatan', 3295300, 0, 'Transaksi Utama', 'admin', '35'),
(242, '2021-01-27', 0, 0, 0, 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 205929600, 0, 'Transaksi Utama', 'admin', '35'),
(243, '2021-01-27', 0, 0, 0, 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 465512200, 0, 'Transaksi Utama', 'admin', '35'),
(244, '2021-01-27', 0, 0, 0, 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Tetap)', 5149200, 0, 'Transaksi Utama', 'admin', '35'),
(245, '2021-01-27', 0, 0, 0, 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Produksi)', 37690400, 0, 'Transaksi Utama', 'admin', '35'),
(246, '2021-01-27', 0, 0, 0, 'Penerimaan DBH SDA Perikanan Triw. I TA. 2021', 169247850, 0, 'Transaksi Utama', 'admin', '35'),
(247, '2021-01-28', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1885252, 0, 'Transaksi Utama', 'admin', '35'),
(248, '2021-01-28', 0, 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 1206000, 0, 'Transaksi Utama', 'admin', '35'),
(249, '2021-01-28', 0, 0, 0, 'Pengembalian Kelebihan Bayar atas Kerugian Negara Rehab. Gg. Serasi Ujung Kel. Kayu Ombun TA. 2017', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(250, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 152310, 0, 'Transaksi Utama', 'admin', '35'),
(251, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 13165700, 0, 'Transaksi Utama', 'admin', '35'),
(252, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Pajak Hotel', 10901727, 0, 'Transaksi Utama', 'admin', '35'),
(253, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Pajak ABT', 2849500, 0, 'Transaksi Utama', 'admin', '35'),
(254, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Pajak Perparkiran', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(255, '2021-01-29', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3620050, 0, 'Transaksi Utama', 'admin', '35'),
(256, '2021-01-29', 0, 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 9156000, 0, 'Transaksi Utama', 'admin', '35'),
(257, '2021-01-29', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 5075000, 0, 'Transaksi Utama', 'admin', '35'),
(258, '2021-01-29', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 7600000, 0, 'Transaksi Utama', 'admin', '35'),
(259, '2021-01-29', 0, 0, 0, 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 4026000, 0, 'Transaksi Utama', 'admin', '35'),
(260, '2021-01-29', 0, 0, 0, 'PAD Lingk. Hidup Retribusi Penyedotan Kakus/Tinja', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(261, '2021-01-29', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 31750000, 0, 'Transaksi Utama', 'admin', '35'),
(262, '2021-01-29', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 540000, 0, 'Transaksi Utama', 'admin', '35'),
(263, '2021-01-29', 0, 0, 0, 'PAD Bag. Umum Retribusi Rumah Penginapan', 2800000, 0, 'Transaksi Utama', 'admin', '35'),
(264, '2021-01-29', 0, 0, 0, 'PAD Pertanian Retribusi Pemeriksaan Kesehatan (RPH)', 1050000, 0, 'Transaksi Utama', 'admin', '35'),
(265, '2021-01-29', 0, 0, 0, 'PAD Pertanian Retribusi Penjualan Produksi Usaha Daerah', 350000, 0, 'Transaksi Utama', 'admin', '35'),
(266, '2021-01-29', 0, 0, 0, 'Penerimaan Kontribusi dari PDAM Tirtanadi', 6500000, 0, 'Transaksi Utama', 'admin', '35'),
(267, '2021-01-31', 0, 0, 0, 'PAD Baekuda Penerimaan Jasa Giro Januari 2021', 269730799, 0, 'Transaksi Utama', 'admin', '35'),
(268, '2021-02-01', 0, 0, 0, 'PAD Bakeuda Pajak Restoran', 1240000, 0, 'Transaksi Utama', 'admin', '35'),
(269, '2021-02-01', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2077640, 0, 'Transaksi Utama', 'admin', '35'),
(270, '2021-02-01', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 786250, 0, 'Transaksi Utama', 'admin', '35'),
(271, '2021-02-01', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9050000, 0, 'Transaksi Utama', 'admin', '35'),
(272, '2021-02-01', 0, 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 810000, 0, 'Transaksi Utama', 'admin', '35'),
(273, '2021-02-01', 0, 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 4320000, 0, 'Transaksi Utama', 'admin', '35'),
(274, '2021-02-01', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 3232000, 0, 'Transaksi Utama', 'admin', '35'),
(275, '2021-02-01', 0, 0, 0, 'PAD Perhubungan Retribusi Izin Trayek', 60000, 0, 'Transaksi Utama', 'admin', '35'),
(276, '2021-02-01', 0, 0, 0, 'Pengembalian Kelebihan Bayar ATK TA. 2018', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(277, '2021-02-02', 0, 0, 0, 'PAD Bakeuda Pajak Restoran', 2623400, 0, 'Transaksi Utama', 'admin', '35'),
(278, '2021-02-02', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 594499, 0, 'Transaksi Utama', 'admin', '35'),
(279, '2021-02-02', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 2430000, 0, 'Transaksi Utama', 'admin', '35'),
(280, '2021-02-02', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 3133000, 0, 'Transaksi Utama', 'admin', '35'),
(281, '2021-02-02', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 1552000, 0, 'Transaksi Utama', 'admin', '35'),
(282, '2021-02-02', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 12446000, 0, 'Transaksi Utama', 'admin', '35'),
(283, '2021-02-02', 0, 0, 0, 'Penerimaa Setoran dari PT. Anugerah Tetap Cemerlang (ATC)', 55000000, 0, 'Transaksi Utama', 'admin', '35'),
(284, '2021-02-03', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2001977, 0, 'Transaksi Utama', 'admin', '35'),
(285, '2021-02-03', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 45022500, 0, 'Transaksi Utama', 'admin', '35'),
(286, '2021-02-03', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5380000, 0, 'Transaksi Utama', 'admin', '35'),
(287, '2021-02-03', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 2667000, 0, 'Transaksi Utama', 'admin', '35'),
(288, '2021-02-03', 0, 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 5280000, 0, 'Transaksi Utama', 'admin', '35'),
(289, '2021-02-04', 0, 0, 0, 'PAD Bakeuda Pajak Restoran', 860000, 0, 'Transaksi Utama', 'admin', '35'),
(290, '2021-02-04', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2297128, 0, 'Transaksi Utama', 'admin', '35'),
(291, '2021-02-04', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1450000, 0, 'Transaksi Utama', 'admin', '35'),
(292, '2021-02-04', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 600000, 0, 'Transaksi Utama', 'admin', '35'),
(293, '2021-02-04', 0, 0, 0, 'Pengembalian Tamb. Pengh. Berd. Beban Kerja Oktober s/d Desember 2021 Dinas Pendidikan', 1912500, 0, 'Transaksi Utama', 'admin', '35'),
(294, '2021-02-05', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 359529, 0, 'Transaksi Utama', 'admin', '35'),
(295, '2021-02-08', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1973069, 0, 'Transaksi Utama', 'admin', '35'),
(296, '2021-02-08', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 19445000, 0, 'Transaksi Utama', 'admin', '35'),
(297, '2021-02-08', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1336600, 0, 'Transaksi Utama', 'admin', '35'),
(298, '2021-02-08', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 489000, 0, 'Transaksi Utama', 'admin', '35'),
(299, '2021-02-08', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 1695000, 0, 'Transaksi Utama', 'admin', '35'),
(300, '2021-02-08', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 28516000, 0, 'Transaksi Utama', 'admin', '35'),
(301, '2021-02-09', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1964807, 0, 'Transaksi Utama', 'admin', '35'),
(302, '2021-02-09', 0, 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 265000, 0, 'Transaksi Utama', 'admin', '35'),
(303, '2021-02-09', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 704000, 0, 'Transaksi Utama', 'admin', '35'),
(304, '2021-02-09', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 4262000, 0, 'Transaksi Utama', 'admin', '35'),
(305, '2021-02-09', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 13350000, 0, 'Transaksi Utama', 'admin', '35'),
(306, '2021-02-09', 0, 0, 0, 'Pengembalian dari Gaji Pensiun PT. Taspen', 466951, 0, 'Transaksi Utama', 'admin', '35'),
(307, '2021-02-09', 0, 0, 0, 'Pengembalian Lebih Bayar Peningkatan Jln Silandit 2017', 5184086.66, 0, 'Transaksi Utama', 'admin', '35'),
(308, '2021-02-09', 0, 0, 0, 'Pengembalian Lebih Bayar Peningkatan Jalan Baru Hutaimbaru', 10000000, 0, 'Transaksi Utama', 'admin', '35'),
(309, '2021-02-10', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1164517, 0, 'Transaksi Utama', 'admin', '35'),
(310, '2021-02-10', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 17725000, 0, 'Transaksi Utama', 'admin', '35'),
(311, '2021-02-10', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 1822500, 0, 'Transaksi Utama', 'admin', '35'),
(312, '2021-02-10', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 86400, 0, 'Transaksi Utama', 'admin', '35'),
(313, '2021-02-10', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 36000, 0, 'Transaksi Utama', 'admin', '35'),
(314, '2021-02-10', 0, 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 50000, 0, 'Transaksi Utama', 'admin', '35'),
(315, '2021-02-10', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1780000, 0, 'Transaksi Utama', 'admin', '35'),
(316, '2021-02-10', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 720000, 0, 'Transaksi Utama', 'admin', '35'),
(317, '2021-02-11', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2455111, 0, 'Transaksi Utama', 'admin', '35'),
(318, '2021-02-11', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 2548750, 0, 'Transaksi Utama', 'admin', '35'),
(319, '2021-02-11', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2590000, 0, 'Transaksi Utama', 'admin', '35'),
(320, '2021-02-11', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 680000, 0, 'Transaksi Utama', 'admin', '35'),
(321, '2021-02-11', 0, 0, 0, 'PAD Perhubungan Retribusi Izin Trayek', 20000, 0, 'Transaksi Utama', 'admin', '35'),
(322, '2021-02-15', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 107977333, 0, 'Transaksi Utama', 'admin', '35'),
(323, '2021-02-15', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1600261, 0, 'Transaksi Utama', 'admin', '35'),
(324, '2021-02-15', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 1584000, 0, 'Transaksi Utama', 'admin', '35'),
(325, '2021-02-15', 0, 0, 0, 'PAD PMPTSP Retribusi IMB', 9757200, 0, 'Transaksi Utama', 'admin', '35'),
(326, '2021-02-15', 0, 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 2508000, 0, 'Transaksi Utama', 'admin', '35'),
(327, '2021-02-15', 0, 0, 0, 'PAD Perdagangan Retribusi Persampahan', 128000, 0, 'Transaksi Utama', 'admin', '35'),
(328, '2021-02-15', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 2350000, 0, 'Transaksi Utama', 'admin', '35'),
(329, '2021-02-15', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 1875000, 0, 'Transaksi Utama', 'admin', '35'),
(330, '2021-02-15', 0, 0, 0, 'Pengembalian Gaji / Tunjangan Januari 2021 SMPN 9', 5600900, 0, 'Transaksi Utama', 'admin', '35'),
(331, '2021-02-16', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1564099, 0, 'Transaksi Utama', 'admin', '35'),
(332, '2021-02-16', 0, 0, 0, 'PAD Bakeuda Pajak Hotel', 3750000, 0, 'Transaksi Utama', 'admin', '35'),
(333, '2021-02-16', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 2931250, 0, 'Transaksi Utama', 'admin', '35'),
(334, '2021-02-16', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9294925, 0, 'Transaksi Utama', 'admin', '35'),
(335, '2021-02-16', 0, 0, 0, 'PAD Bakeuda PPJU dari PLN', 708594820, 0, 'Transaksi Utama', 'admin', '35'),
(336, '2021-02-16', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1140000, 0, 'Transaksi Utama', 'admin', '35'),
(337, '2021-02-16', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 1400000, 0, 'Transaksi Utama', 'admin', '35'),
(338, '2021-02-16', 0, 0, 0, 'Pengembalian Kekurangan Volume Pekerjaan Pemb. Trotoar Jln Kpaten Tendean Kel. Bincar', 9645533.66, 0, 'Transaksi Utama', 'admin', '35'),
(339, '2021-02-17', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 797329, 0, 'Transaksi Utama', 'admin', '35'),
(340, '2021-02-17', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 5236875, 0, 'Transaksi Utama', 'admin', '35'),
(341, '2021-02-17', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 11814300, 0, 'Transaksi Utama', 'admin', '35'),
(342, '2021-02-17', 0, 0, 0, 'PAD Perdagangan Retribusi Persampahan', 900000, 0, 'Transaksi Utama', 'admin', '35'),
(343, '2021-02-17', 0, 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 4070200, 0, 'Transaksi Utama', 'admin', '35'),
(344, '2021-02-17', 0, 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 235000, 0, 'Transaksi Utama', 'admin', '35'),
(345, '2021-02-17', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2246000, 0, 'Transaksi Utama', 'admin', '35'),
(346, '2021-02-17', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 816000, 0, 'Transaksi Utama', 'admin', '35'),
(347, '2021-02-18', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 748946, 0, 'Transaksi Utama', 'admin', '35'),
(348, '2021-02-18', 0, 0, 0, 'PAD Bakeuda Pajak Reklame', 8400000, 0, 'Transaksi Utama', 'admin', '35'),
(349, '2021-02-18', 0, 0, 0, 'PAD Bakeuda Pajak Air Bawah Tanah', 50000, 0, 'Transaksi Utama', 'admin', '35'),
(350, '2021-02-18', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3500000, 0, 'Transaksi Utama', 'admin', '35'),
(351, '2021-02-18', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1728000, 0, 'Transaksi Utama', 'admin', '35'),
(352, '2021-02-18', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 720000, 0, 'Transaksi Utama', 'admin', '35'),
(353, '2021-02-19', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 835795, 0, 'Transaksi Utama', 'admin', '35'),
(354, '2021-02-19', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9413500, 0, 'Transaksi Utama', 'admin', '35'),
(355, '2021-02-19', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 700000, 0, 'Transaksi Utama', 'admin', '35'),
(356, '2021-02-19', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1320000, 0, 'Transaksi Utama', 'admin', '35'),
(357, '2021-02-22', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1786500, 0, 'Transaksi Utama', 'admin', '35'),
(358, '2021-02-22', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 840280, 0, 'Transaksi Utama', 'admin', '35'),
(359, '2021-02-22', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 10025000, 0, 'Transaksi Utama', 'admin', '35'),
(360, '2021-02-22', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2003000, 0, 'Transaksi Utama', 'admin', '35'),
(361, '2021-02-22', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 2900000, 0, 'Transaksi Utama', 'admin', '35'),
(362, '2021-02-22', 0, 0, 0, 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 40298352000, 0, 'Transaksi Utama', 'admin', '35'),
(363, '2021-02-23', 0, 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 2112500, 0, 'Transaksi Utama', 'admin', '35'),
(364, '2021-02-23', 0, 0, 0, 'PAD Bakeuda Pajak PBB-P2', 8831921, 0, 'Transaksi Utama', 'admin', '35'),
(365, '2021-02-23', 0, 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1775000, 0, 'Transaksi Utama', 'admin', '35'),
(366, '2021-02-23', 0, 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 605000, 0, 'Transaksi Utama', 'admin', '35'),
(367, '2021-02-23', 0, 0, 0, 'PAD Perhubungan Retribusi Terminal', 980000, 0, 'Transaksi Utama', 'admin', '35'),
(368, '2021-02-23', 0, 0, 0, 'PAD Perhubungan Retribusi Parkir', 1630000, 0, 'Transaksi Utama', 'admin', '35'),
(369, '2021-02-23', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 8016200, 0, 'Transaksi Utama', 'admin', '35'),
(370, '2021-02-23', 0, 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 1696000, 0, 'Transaksi Utama', 'admin', '35'),
(371, '2021-02-23', 0, 0, 0, 'Penerimaan DBH SDA Gas Bumi 30% Triw. I 2021', 3604000, 0, 'Transaksi Utama', 'admin', '35'),
(372, '2021-02-23', 0, 0, 0, 'Penerimaan DBH SDA Gas Bumi 0,5% Triw. I 2021', 60000, 0, 'Transaksi Utama', 'admin', '35'),
(373, '2021-02-23', 0, 0, 0, 'Penerimaan DBH SDA Minyak Bumi 15% Triw. I 2021', 590200, 0, 'Transaksi Utama', 'admin', '35'),
(374, '2021-02-23', 0, 0, 0, 'Penerimaan DBH SDA Minyak Bumi 0,5% Triw. I 2021', 19600, 0, 'Transaksi Utama', 'admin', '35'),
(375, '2021-02-23', 0, 0, 0, 'Penerimaan Dana Fasilitas Penanaman Modal Tahap I 2021', 163061000, 0, 'Transaksi Utama', 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi2`
--

CREATE TABLE `tbl_transaksi2` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp3d` varchar(128) NOT NULL,
  `no_sts` int(11) NOT NULL,
  `no_lainlain` int(11) NOT NULL,
  `uraian` varchar(250) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `keterangan` enum('Transaksi Utama','Transaksi Tambahan','','') NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi2`
--

INSERT INTO `tbl_transaksi2` (`id_transaksi`, `tanggal`, `no_sp3d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(0, '2021-01-04', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 527048, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-04', '', 0, 0, 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', 1500000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-04', '', 0, 0, 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 40298352000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-05', '', 0, 0, 'Pengembalian Kelebihan Bayar ATK TA. 2018', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-07', '', 0, 0, 'Pengembalian Lebih Bayar Peningkatan Gg pada Lk I Desa Batang Bahal Dinas Permukiman An. Aslamiah Hrp', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-08', '', 0, 0, 'Pengembalian Anggaran BTT Dinas Sosial', 25000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-11', '', 0, 0, 'Pengembalian Lebih Bayar Belanja Penggandaan Bag. Organisasi Setda Kota TA. 2020', 14169347, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-12', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 481040, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-12', '', 0, 0, 'Pengembalian Lebih Bayar Belanja Fotocopy Bag. Hukum Setda Kota Padangsidimpuan', 5278408, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'PAD Bakeuda Pajak Restoran', 3123500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 3715616, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'PAD Bakeuda Pajak Hotel', 3300000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 1412956, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 2874000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 617974, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 215909, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-13', '', 0, 0, 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 19633022, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 6586267, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'PAD Bakeuda Pajak Restoran', 125563040, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 9293750, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'Pengembalian Temuan BPK dari Kegiatan Kel. Aek Tampang', 13413789.5, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'Pengembalian Kelebihan Bayar Penggandaan/ Fotocopy 2020', 2710506, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', 0, 0, 'Pengembalian Kelebihan Bayar Belanja Barang dan Jasa Dinas Pertanian', 15000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 430931, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 11317250, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', 0, 0, 'PAD Bakeuda PPJU dari PLN', 711449202, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', 0, 0, 'Pengembalian Kelebihan Barang dan Jasa (Sewa)', 30451274, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 120800, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1618563, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 6602850, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', 0, 0, 'Pengembalian Dana Bantuan yang tidak diserahkan pada Panti Asuhan', 28000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1306000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2595751, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 3166950, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5700000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', 0, 0, 'Pengembalian Kelebihan Bayar Atas Ippd/LKPJ 2020 Setda Bag. Pemerintahan', 16000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 5757979, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 2972500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 44800000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 10000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'PAD Perhubungan Retribusi PKD (PKB)', 11380000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'Pengembalian Kegiatan Rehab Jalan pada Kel. Wek II', 3000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', 0, 0, 'Pengembalian Belanja Jasa Kantor Tunj. Insentif Covid-19 Puskesmas Sadabuan', 18181000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 760000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1724067, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 22862500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 30270000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'PAD Kec. Psp Utara Retribusi IMB', 729000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Sisa BTT 2020 Dinas Perdagangan', 167693821, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Kekurangan Volume Pek. Pemb. Gg. Idaman Kel. Kantin', 2000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Kekurangan Volume Pekerjaan Kel. Batang Ayumi Julu', 2082537.55, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Kelebihan Bayar Barang dan Jasa Dinas Kependudukan dan Capil', 28619770, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Tunj. Camat Padangsidimpuan Hutaimbaru Januari 2021', 1075000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-21', '', 0, 0, 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 200000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-22', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 674000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-22', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2096209, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-22', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 3616000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-22', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 25000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 3029500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2901401, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 6080000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1750000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 9450000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-25', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 2345000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 115000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1105414, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 1590625, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 2525000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 4712000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-26', '', 0, 0, 'Pengembalian Perjalanan Dinas Luar Daerah Dinas Sosial', 45000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1770561, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'PAD Bakeuda Pajak Hiburan', 2500000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 10615575, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 4048000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Pengembalian Kelebihan Bayar CV. PH Hasil LHP BPK', 4440962.41, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Pengembalian Gaji/Tunjangan Januari 2021 Dinas Kesehatan', 3295300, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 205929600, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 465512200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Tetap)', 5149200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Produksi)', 37690400, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-27', '', 0, 0, 'Penerimaan DBH SDA Perikanan Triw. I TA. 2021', 169247850, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-28', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1885252, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-28', '', 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 1206000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-28', '', 0, 0, 'Pengembalian Kelebihan Bayar atas Kerugian Negara Rehab. Gg. Serasi Ujung Kel. Kayu Ombun TA. 2017', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 152310, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 13165700, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Pajak Hotel', 10901727, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Pajak ABT', 2849500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Pajak Perparkiran', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3620050, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 9156000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 5075000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 7600000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 4026000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Lingk. Hidup Retribusi Penyedotan Kakus/Tinja', 1000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 31750000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 540000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Bag. Umum Retribusi Rumah Penginapan', 2800000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Pertanian Retribusi Pemeriksaan Kesehatan (RPH)', 1050000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'PAD Pertanian Retribusi Penjualan Produksi Usaha Daerah', 350000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', 0, 0, 'Penerimaan Kontribusi dari PDAM Tirtanadi', 6500000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-31', '', 0, 0, 'PAD Baekuda Penerimaan Jasa Giro Januari 2021', 269730799, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Bakeuda Pajak Restoran', 1240000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2077640, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 786250, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9050000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 810000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 4320000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 3232000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'PAD Perhubungan Retribusi Izin Trayek', 60000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-01', '', 0, 0, 'Pengembalian Kelebihan Bayar ATK TA. 2018', 5000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD Bakeuda Pajak Restoran', 2623400, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 594499, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 2430000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 3133000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 1552000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 12446000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-02', '', 0, 0, 'Penerimaa Setoran dari PT. Anugerah Tetap Cemerlang (ATC)', 55000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-03', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2001977, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-03', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 45022500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-03', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 5380000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-03', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 2667000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-03', '', 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 5280000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-04', '', 0, 0, 'PAD Bakeuda Pajak Restoran', 860000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-04', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2297128, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-04', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1450000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-04', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 600000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-04', '', 0, 0, 'Pengembalian Tamb. Pengh. Berd. Beban Kerja Oktober s/d Desember 2021 Dinas Pendidikan', 1912500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 359529, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1973069, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 19445000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1336600, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 489000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 1695000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 28516000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1964807, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 265000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 704000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 4262000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 13350000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'Pengembalian dari Gaji Pensiun PT. Taspen', 466951, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'Pengembalian Lebih Bayar Peningkatan Jln Silandit 2017', 5184086.66, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', 0, 0, 'Pengembalian Lebih Bayar Peningkatan Jalan Baru Hutaimbaru', 10000000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1164517, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 17725000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 1822500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 86400, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 36000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 50000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1780000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 720000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-11', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 2455111, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-11', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 2548750, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-11', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2590000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-11', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 680000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-11', '', 0, 0, 'PAD Perhubungan Retribusi Izin Trayek', 20000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 107977333, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1600261, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 1584000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD PMPTSP Retribusi IMB', 9757200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 2508000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Perdagangan Retribusi Persampahan', 128000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 2350000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 1875000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', 0, 0, 'Pengembalian Gaji / Tunjangan Januari 2021 SMPN 9', 5600900, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 1564099, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Bakeuda Pajak Hotel', 3750000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 2931250, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9294925, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Bakeuda PPJU dari PLN', 708594820, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1140000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 1400000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', 0, 0, 'Pengembalian Kekurangan Volume Pekerjaan Pemb. Trotoar Jln Kpaten Tendean Kel. Bincar', 9645533.66, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 797329, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 5236875, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 11814300, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Perdagangan Retribusi Persampahan', 900000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Perdagangan Retribusi Fasilitas Pasar', 4070200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 235000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2246000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 816000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 748946, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Bakeuda Pajak Reklame', 8400000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Bakeuda Pajak Air Bawah Tanah', 50000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 3500000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1728000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 720000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 835795, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 9413500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 700000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 1320000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 1786500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 840280, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 10025000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 2003000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 2900000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', 0, 0, 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 40298352000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Bakeuda Pajak Restoran (Katering)', 2112500, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Bakeuda Pajak PBB-P2', 8831921, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 1775000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 605000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Perhubungan Retribusi Terminal', 980000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Perhubungan Retribusi Parkir', 1630000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Pasar', 8016200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'PAD Perdagangan Retribusi Pelayanan Sampah', 1696000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'Penerimaan DBH SDA Gas Bumi 30% Triw. I 2021', 3604000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'Penerimaan DBH SDA Gas Bumi 0,5% Triw. I 2021', 60000, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'Penerimaan DBH SDA Minyak Bumi 15% Triw. I 2021', 590200, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'Penerimaan DBH SDA Minyak Bumi 0,5% Triw. I 2021', 19600, 0, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', 0, 0, 'Penerimaan Dana Fasilitas Penanaman Modal Tahap I 2021', 163061000, 0, 'Transaksi Utama', 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi3`
--

CREATE TABLE `tbl_transaksi3` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` varchar(128) NOT NULL,
  `no_sts` varchar(128) DEFAULT NULL,
  `no_lainlain` varchar(25) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `keterangan` enum('Transaksi Utama','Transaksi Tambahan','','') NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi3`
--

INSERT INTO `tbl_transaksi3` (`id_transaksi`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(0, '2021-01-14', '', NULL, '', 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-14', '', NULL, '', 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Inspektorat Gaji Januari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'RSUD Gaji Januari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-15', '', NULL, '', 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-18', '', NULL, '', 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-19', '', NULL, '', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-20', '', NULL, '', 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', NULL, '', 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', NULL, '', 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-01-29', '', NULL, '', 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Badan Keuangan Daerah Gaji Februari 2021', 0, 472323691, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Februari 2021', 0, 80010953, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Kantor Kesbang dan Politik Gaji Februari 2021', 0, 127058984, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Sosial Gaji Februari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Komunikasi dan Informatika Gaji Februari 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Pariwisata Gaji Februari 2021', 0, 126038168, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Lingkungan Hidup Gaji Februari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Penataan Ruang dan Permukiman Gaji Februari 2021', 0, 235877446, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Inspektorat Gaji Februari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Kec. Psp Tenggara Gaji Februari 2021', 0, 186688626, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Februari 2021', 0, 139385382, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Ketenagakerjaan Gaji Februari 2021', 0, 154171163, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Februari 2021', 0, 190969612, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Dinas Pertanian Gaji Februari 2021', 0, 315966384, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'Sekretariat Daerah Gaji Februari 2021', 0, 574264409, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-05', '', NULL, '', 'KDH & WKDH Gaji Februari 2021', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Februari 2021', 0, 151972131, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Kec. Psp Utara Gaji Februari 2021', 0, 564429227, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Kantor Satpol-PP Gaji Februari 2021', 0, 181363899, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Kec. Psp Batunadua Gaji Februari 2021', 0, 146134302, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Februari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Kec. Psp Angkola Julu Gaji Februari 2021', 0, 114826520, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Badan Penanggulangan Bencana Daerah Gaji Februari 2021', 0, 64159019, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'RSUD Gaji Februari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Perhubungan Gaji Februari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Pemadam Kebakaran Gaji Februari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Perpustakaan Gaji Februari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Sekr. DPRD Gaji Februari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Dinas Pendidikan Gaji Februari 2021', 0, 7293751905, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Badan Kepegawaian dan Pengembangan SDM Gaji Februari 2021', 0, 130840587, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'PUD Pembayaran Uang Persediaan (UP) TA. 2021', 0, 605752000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-08', '', NULL, '', 'Bapelitbang Pembayaran UP TA. 2021', 0, 333121000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Februari 2021', 0, 126255504, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Kec. Psp Hutaimbaru Gaji Februari 2021', 0, 213834833, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Dinas Kesehatan Gaji Februari 2021', 0, 2097607474, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Dinas Perdagangan Gaji Februari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Februari 2021', 0, 136256722, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Dinas Kesehatan Pangan Gaji Februari 2021', 0, 130322792, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-09', '', NULL, '', 'Kominfo Permintaan UP TA. 2021', 0, 79835000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'P2KB Permintaan UP TA. 2021', 0, 475283000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'Pemadam, KP Permintaan UP TA. 2021', 0, 165181000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'Sekrt. DPRD Pembayaran Uang Persediaan (UP) 2021', 0, 1669615000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'DLH Permintaan UP TA. 2021', 0, 349976000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'Kec. Psp Tenggara Permintaan UP TA. 2021', 0, 91960000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-10', '', NULL, '', 'Ketenagakerjaan Permintaan UP TA. 2021', 0, 253642000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-15', '', NULL, '', 'P3A Permintaan UP TA. 2021', 0, 259953000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', NULL, '', 'Penanaman Modal, PTSP Permintaan UP TA. 2021', 0, 317117000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', NULL, '', 'Perpustakaan Permintaan UP TA. 2021', 0, 101549000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-16', '', NULL, '', 'Satpol-PP Permintaan UP TA. 2021', 0, 139847000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-17', '', NULL, '', 'Per. Rakyat, KP LPJU Bulan Februari 2021', 0, 212924291, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'Sosial Permintaan UP TA. 2021', 0, 235686000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'Inspektorat Permintaan UP TA. 2021', 0, 283820000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Terusan An. Masnilam Daulay', 0, 22858800, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'Dinas Pendidikan Gaji Terusan Februari 2021', 0, 125247639, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'BPBD Permintaan UP TA. 2021', 0, 119681000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-18', '', NULL, '', 'Perdagangan Permintaan UP TA. 2021', 0, 352000000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', NULL, '', 'BKD Permintaan UP TA. 2021', 0, 174279000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', NULL, '', 'Kec. Psp Utara Permintaan Uang Persediaan (UP) TA. 2021', 0, 108721000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', NULL, '', 'Kec. Psp Hutaimbaru Permintaan UP TA. 2021', 0, 60390000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', NULL, '', 'PMD Permintaan UP TA. 2021', 0, 110680000, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-19', '', NULL, '', 'Kec. Psp Selatan Gaji Februari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-22', '', NULL, '', 'Dinas Kesehatan Gaji Terusan Februari 2021', 0, 22072245, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', NULL, '', 'Inspektorat Gaji Terusan An. Iskandar Zulkarnaen', 0, 28398150, 'Transaksi Utama', 'admin', '35'),
(0, '2021-02-23', '', NULL, '', 'Perhubungan Permintaan UP TA. 2021', 0, 135643000, 'Transaksi Utama', 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksibaru`
--

CREATE TABLE `tbl_transaksibaru` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` varchar(128) NOT NULL,
  `no_sts` varchar(128) NOT NULL,
  `no_lainlain` varchar(128) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `keterangan` enum('Transaksi Utama','Transaksi Tambahan','','') NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksibaru`
--

INSERT INTO `tbl_transaksibaru` (`id_transaksi`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(16, '2020-12-31', '0', '0', '0', 'Saldo Bank Tahun 2020', 104313662823.43, 0, 'Transaksi Utama', 'admin', '35'),
(17, '2021-02-05', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 355981899, 355981899, 'Transaksi Tambahan', 'admin', '35'),
(19, '2021-02-05', '0', '0', '0', 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(20, '2021-02-05', '0', '0', '0', 'JKK, JKM', 127943180, 127943180, 'Transaksi Tambahan', 'admin', '35'),
(21, '2021-02-08', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1242676766, 1242676766, 'Transaksi Tambahan', 'admin', '35'),
(22, '2021-02-09', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 325770689, 325770689, 'Transaksi Tambahan', 'admin', '35'),
(23, '2021-02-10', '0', '0', '0', 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(24, '2021-02-18', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Terusa Februari ', 7471939, 7471939, 'Transaksi Tambahan', 'admin', '35'),
(25, '2021-02-19', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 48612637, 48612637, 'Transaksi Tambahan', 'admin', '35'),
(26, '2021-02-22', '0', '0', '0', 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1043745, 1043745, 'Transaksi Tambahan', 'admin', '35'),
(27, '2021-02-23', '0', '0', '0', 'Pemby. PPN & PPh', 1467750, 1467750, 'Transaksi Tambahan', 'admin', '35'),
(28, '2021-01-14', '0', '0', '0', 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 65748880, 65748880, 'Transaksi Tambahan', 'admin', '35'),
(29, '2021-01-15', '0', '0', '0', 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 1597879303, 1597879303, 'Transaksi Tambahan', 'admin', '35'),
(30, '2021-01-15', '0', '0', '0', 'JKK, JKM', 128330322, 128330322, 'Transaksi Tambahan', 'admin', '35'),
(31, '2021-01-15', '0', '0', '0', 'Pemby. PPN & PPh', 269802799, 269802799, 'Transaksi Tambahan', 'admin', '35'),
(32, '2021-01-19', '0', '0', '0', 'Pemby. PPN & PPh', 22880746, 22880746, 'Transaksi Tambahan', 'admin', '35'),
(33, '2021-01-20', '0', '0', '0', 'Pemby. PPN & PPh', 22843075, 22843075, 'Transaksi Tambahan', 'admin', '35'),
(34, '2021-01-29', '0', '0', '0', 'JKK, JKM', 460656, 460656, 'Transaksi Tambahan', 'admin', '35'),
(35, '2021-01-29', '0', '0', '0', 'Pemby. PPN & PPh', 153842964, 153842964, 'Transaksi Tambahan', 'admin', '35'),
(36, '2021-01-14', '0', '0', '0', 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(37, '2021-01-14', '0', '0', '0', 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'Transaksi Utama', 'admin', '35'),
(38, '2021-01-15', '0', '0', '0', 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'Transaksi Utama', 'admin', '35'),
(39, '2021-01-15', '0', '0', '0', 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'Transaksi Utama', 'admin', '35'),
(40, '2021-01-15', '0', '0', '0', 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'Transaksi Utama', 'admin', '35'),
(41, '2021-01-15', '0', '0', '0', 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'Transaksi Utama', 'admin', '35'),
(42, '2021-01-15', '0', '0', '0', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'Transaksi Utama', 'admin', '35'),
(43, '2021-01-15', '0', '0', '0', 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(44, '2021-01-15', '0', '0', '0', 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(45, '2021-01-15', '0', '0', '0', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'Transaksi Utama', 'admin', '35'),
(46, '2021-01-15', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'Transaksi Utama', 'admin', '35'),
(47, '2021-01-15', '0', '0', '0', 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'Transaksi Utama', 'admin', '35'),
(48, '2021-01-15', '0', '0', '0', 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'Transaksi Utama', 'admin', '35'),
(49, '2021-01-15', '0', '0', '0', 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'Transaksi Utama', 'admin', '35'),
(50, '2021-01-15', '0', '0', '0', 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'Transaksi Utama', 'admin', '35'),
(51, '2021-01-15', '0', '0', '0', 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'Transaksi Utama', 'admin', '35'),
(52, '2021-01-15', '0', '0', '0', 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(53, '2021-01-15', '0', '0', '0', 'Inspektorat Gaji Januari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(54, '2021-01-15', '0', '0', '0', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'Transaksi Utama', 'admin', '35'),
(55, '2021-01-15', '0', '0', '0', 'RSUD Gaji Januari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(56, '2021-01-15', '0', '0', '0', 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(57, '2021-01-15', '0', '0', '0', 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'Transaksi Utama', 'admin', '35'),
(58, '2021-01-15', '0', '0', '0', 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'Transaksi Utama', 'admin', '35'),
(59, '2021-01-18', '0', '0', '0', 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'Transaksi Utama', 'admin', '35'),
(60, '2021-01-18', '0', '0', '0', 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'Transaksi Utama', 'admin', '35'),
(61, '2021-01-18', '0', '0', '0', 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'Transaksi Utama', 'admin', '35'),
(62, '2021-01-18', '0', '0', '0', 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'Transaksi Utama', 'admin', '35'),
(63, '2021-01-18', '0', '0', '0', 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(64, '2021-01-18', '0', '0', '0', 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'Transaksi Utama', 'admin', '35'),
(65, '2021-01-18', '0', '0', '0', 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(66, '2021-01-18', '0', '0', '0', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'Transaksi Utama', 'admin', '35'),
(67, '2021-01-18', '0', '0', '0', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'Transaksi Utama', 'admin', '35'),
(68, '2021-01-18', '0', '0', '0', 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'Transaksi Utama', 'admin', '35'),
(69, '2021-01-18', '0', '0', '0', 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(70, '2021-01-18', '0', '0', '0', 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(71, '2021-01-19', '0', '0', '0', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(72, '2021-01-20', '0', '0', '0', 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(73, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'Transaksi Utama', 'admin', '35'),
(74, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'Transaksi Utama', 'admin', '35'),
(75, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'Transaksi Utama', 'admin', '35'),
(76, '2021-01-29', '0', '0', '0', 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'Transaksi Utama', 'admin', '35'),
(77, '2021-01-29', '0', '0', '0', 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'Transaksi Utama', 'admin', '35'),
(78, '2021-02-05', '0', '0', '0', 'Badan Keuangan Daerah Gaji Februari 2021', 0, 472323691, 'Transaksi Utama', 'admin', '35'),
(79, '2021-02-05', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Februari 2021', 0, 80010953, 'Transaksi Utama', 'admin', '35'),
(80, '2021-02-05', '0', '0', '0', 'Kantor Kesbang dan Politik Gaji Februari 2021', 0, 127058984, 'Transaksi Utama', 'admin', '35'),
(81, '2021-02-05', '0', '0', '0', 'Dinas Sosial Gaji Februari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(82, '2021-02-05', '0', '0', '0', 'Dinas Komunikasi dan Informatika Gaji Februari 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(83, '2021-02-05', '0', '0', '0', 'Dinas Pariwisata Gaji Februari 2021', 0, 126038168, 'Transaksi Utama', 'admin', '35'),
(84, '2021-02-05', '0', '0', '0', 'Dinas Lingkungan Hidup Gaji Februari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(85, '2021-02-05', '0', '0', '0', 'Dinas Penataan Ruang dan Permukiman Gaji Februari 2021', 0, 235877446, 'Transaksi Utama', 'admin', '35'),
(86, '2021-02-05', '0', '0', '0', 'Inspektorat Gaji Februari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(87, '2021-02-05', '0', '0', '0', 'Kec. Psp Tenggara Gaji Februari 2021', 0, 186688626, 'Transaksi Utama', 'admin', '35'),
(88, '2021-02-05', '0', '0', '0', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Februari 2021', 0, 139385382, 'Transaksi Utama', 'admin', '35'),
(89, '2021-02-05', '0', '0', '0', 'Dinas Ketenagakerjaan Gaji Februari 2021', 0, 154171163, 'Transaksi Utama', 'admin', '35'),
(90, '2021-02-05', '0', '0', '0', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Februari 2021', 0, 190969612, 'Transaksi Utama', 'admin', '35'),
(91, '2021-02-05', '0', '0', '0', 'Dinas Pertanian Gaji Februari 2021', 0, 315966384, 'Transaksi Utama', 'admin', '35'),
(92, '2021-02-05', '0', '0', '0', 'Sekretariat Daerah Gaji Februari 2021', 0, 574264409, 'Transaksi Utama', 'admin', '35'),
(93, '2021-02-05', '0', '0', '0', 'KDH & WKDH Gaji Februari 2021', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(94, '2021-02-08', '0', '0', '0', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Februari 2021', 0, 151972131, 'Transaksi Utama', 'admin', '35'),
(95, '2021-02-08', '0', '0', '0', 'Kec. Psp Utara Gaji Februari 2021', 0, 564429227, 'Transaksi Utama', 'admin', '35'),
(96, '2021-02-08', '0', '0', '0', 'Kantor Satpol-PP Gaji Februari 2021', 0, 181363899, 'Transaksi Utama', 'admin', '35'),
(97, '2021-02-08', '0', '0', '0', 'Kec. Psp Batunadua Gaji Februari 2021', 0, 146134302, 'Transaksi Utama', 'admin', '35'),
(98, '2021-02-08', '0', '0', '0', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Februari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(99, '2021-02-08', '0', '0', '0', 'Kec. Psp Angkola Julu Gaji Februari 2021', 0, 114826520, 'Transaksi Utama', 'admin', '35'),
(100, '2021-02-08', '0', '0', '0', 'Badan Penanggulangan Bencana Daerah Gaji Februari 2021', 0, 64159019, 'Transaksi Utama', 'admin', '35'),
(101, '2021-02-08', '0', '0', '0', 'RSUD Gaji Februari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(102, '2021-02-08', '0', '0', '0', 'Dinas Perhubungan Gaji Februari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(103, '2021-02-08', '0', '0', '0', 'Dinas Pemadam Kebakaran Gaji Februari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(104, '2021-02-08', '0', '0', '0', 'Dinas Perpustakaan Gaji Februari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(105, '2021-02-08', '0', '0', '0', 'Sekr. DPRD Gaji Februari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(106, '2021-02-08', '0', '0', '0', 'Dinas Pendidikan Gaji Februari 2021', 0, 7293751905, 'Transaksi Utama', 'admin', '35'),
(107, '2021-02-08', '0', '0', '0', 'Badan Kepegawaian dan Pengembangan SDM Gaji Februari 2021', 0, 130840587, 'Transaksi Utama', 'admin', '35'),
(108, '2021-02-08', '0', '0', '0', 'PUD Pembayaran Uang Persediaan (UP) TA. 2021', 0, 605752000, 'Transaksi Utama', 'admin', '35'),
(109, '2021-02-08', '0', '0', '0', 'Bapelitbang Pembayaran UP TA. 2021', 0, 333121000, 'Transaksi Utama', 'admin', '35'),
(110, '2021-02-09', '0', '0', '0', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Februari 2021', 0, 126255504, 'Transaksi Utama', 'admin', '35'),
(111, '2021-02-09', '0', '0', '0', 'Kec. Psp Hutaimbaru Gaji Februari 2021', 0, 213834833, 'Transaksi Utama', 'admin', '35'),
(112, '2021-02-09', '0', '0', '0', 'Dinas Kesehatan Gaji Februari 2021', 0, 2097607474, 'Transaksi Utama', 'admin', '35'),
(113, '2021-02-09', '0', '0', '0', 'Dinas Perdagangan Gaji Februari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(114, '2021-02-09', '0', '0', '0', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Februari 2021', 0, 136256722, 'Transaksi Utama', 'admin', '35'),
(115, '2021-02-09', '0', '0', '0', 'Dinas Kesehatan Pangan Gaji Februari 2021', 0, 130322792, 'Transaksi Utama', 'admin', '35'),
(116, '2021-02-09', '0', '0', '0', 'Kominfo Permintaan UP TA. 2021', 0, 79835000, 'Transaksi Utama', 'admin', '35'),
(117, '2021-02-10', '0', '0', '0', 'P2KB Permintaan UP TA. 2021', 0, 475283000, 'Transaksi Utama', 'admin', '35'),
(118, '2021-02-10', '0', '0', '0', 'Pemadam, KP Permintaan UP TA. 2021', 0, 165181000, 'Transaksi Utama', 'admin', '35'),
(119, '2021-02-10', '0', '0', '0', 'Sekrt. DPRD Pembayaran Uang Persediaan (UP) 2021', 0, 1669615000, 'Transaksi Utama', 'admin', '35'),
(120, '2021-02-10', '0', '0', '0', 'DLH Permintaan UP TA. 2021', 0, 349976000, 'Transaksi Utama', 'admin', '35'),
(121, '2021-02-10', '0', '0', '0', 'Kec. Psp Tenggara Permintaan UP TA. 2021', 0, 91960000, 'Transaksi Utama', 'admin', '35'),
(122, '2021-02-10', '0', '0', '0', 'Ketenagakerjaan Permintaan UP TA. 2021', 0, 253642000, 'Transaksi Utama', 'admin', '35'),
(123, '2021-02-15', '0', '0', '0', 'P3A Permintaan UP TA. 2021', 0, 259953000, 'Transaksi Utama', 'admin', '35'),
(124, '2021-02-16', '0', '0', '0', 'Penanaman Modal, PTSP Permintaan UP TA. 2021', 0, 317117000, 'Transaksi Utama', 'admin', '35'),
(125, '2021-02-16', '0', '0', '0', 'Perpustakaan Permintaan UP TA. 2021', 0, 101549000, 'Transaksi Utama', 'admin', '35'),
(126, '2021-02-16', '0', '0', '0', 'Satpol-PP Permintaan UP TA. 2021', 0, 139847000, 'Transaksi Utama', 'admin', '35'),
(127, '2021-02-17', '0', '0', '0', 'Per. Rakyat, KP LPJU Bulan Februari 2021', 0, 212924291, 'Transaksi Utama', 'admin', '35'),
(128, '2021-02-18', '0', '0', '0', 'Sosial Permintaan UP TA. 2021', 0, 235686000, 'Transaksi Utama', 'admin', '35'),
(129, '2021-02-18', '0', '0', '0', 'Inspektorat Permintaan UP TA. 2021', 0, 283820000, 'Transaksi Utama', 'admin', '35'),
(130, '2021-02-18', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Terusan An. Masnilam Daulay', 0, 22858800, 'Transaksi Utama', 'admin', '35'),
(131, '2021-02-18', '0', '0', '0', 'Dinas Pendidikan Gaji Terusan Februari 2021', 0, 125247639, 'Transaksi Utama', 'admin', '35'),
(132, '2021-02-18', '0', '0', '0', 'BPBD Permintaan UP TA. 2021', 0, 119681000, 'Transaksi Utama', 'admin', '35'),
(133, '2021-02-18', '0', '0', '0', 'Perdagangan Permintaan UP TA. 2021', 0, 352000000, 'Transaksi Utama', 'admin', '35'),
(134, '2021-02-19', '0', '0', '0', 'BKD Permintaan UP TA. 2021', 0, 174279000, 'Transaksi Utama', 'admin', '35'),
(135, '2021-02-19', '0', '0', '0', 'Kec. Psp Utara Permintaan Uang Persediaan (UP) TA. 2021', 0, 108721000, 'Transaksi Utama', 'admin', '35'),
(136, '2021-02-19', '0', '0', '0', 'Kec. Psp Hutaimbaru Permintaan UP TA. 2021', 0, 60390000, 'Transaksi Utama', 'admin', '35'),
(137, '2021-02-19', '0', '0', '0', 'PMD Permintaan UP TA. 2021', 0, 110680000, 'Transaksi Utama', 'admin', '35'),
(138, '2021-02-19', '0', '0', '0', 'Kec. Psp Selatan Gaji Februari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(139, '2021-02-22', '0', '0', '0', 'Dinas Kesehatan Gaji Terusan Februari 2021', 0, 22072245, 'Transaksi Utama', 'admin', '35'),
(140, '2021-02-23', '0', '0', '0', 'Inspektorat Gaji Terusan An. Iskandar Zulkarnaen', 0, 28398150, 'Transaksi Utama', 'admin', '35'),
(141, '2021-02-23', '0', '0', '0', 'Perhubungan Permintaan UP TA. 2021', 0, 135643000, 'Transaksi Utama', 'admin', '35'),
(163, '2021-01-14', '0', '0', '0', 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(164, '2021-01-14', '0', '0', '0', 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'Transaksi Utama', 'admin', '35'),
(165, '2021-01-15', '0', '0', '0', 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'Transaksi Utama', 'admin', '35'),
(166, '2021-01-15', '0', '0', '0', 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'Transaksi Utama', 'admin', '35'),
(167, '2021-01-15', '0', '0', '0', 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'Transaksi Utama', 'admin', '35'),
(168, '2021-01-15', '0', '0', '0', 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'Transaksi Utama', 'admin', '35'),
(169, '2021-01-15', '0', '0', '0', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'Transaksi Utama', 'admin', '35'),
(170, '2021-01-15', '0', '0', '0', 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(171, '2021-01-15', '0', '0', '0', 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(172, '2021-01-15', '0', '0', '0', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'Transaksi Utama', 'admin', '35'),
(173, '2021-01-15', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'Transaksi Utama', 'admin', '35'),
(174, '2021-01-15', '0', '0', '0', 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'Transaksi Utama', 'admin', '35'),
(175, '2021-01-15', '0', '0', '0', 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'Transaksi Utama', 'admin', '35'),
(176, '2021-01-15', '0', '0', '0', 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'Transaksi Utama', 'admin', '35'),
(177, '2021-01-15', '0', '0', '0', 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'Transaksi Utama', 'admin', '35'),
(178, '2021-01-15', '0', '0', '0', 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'Transaksi Utama', 'admin', '35'),
(179, '2021-01-15', '0', '0', '0', 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(180, '2021-01-15', '0', '0', '0', 'Inspektorat Gaji Januari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(181, '2021-01-15', '0', '0', '0', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'Transaksi Utama', 'admin', '35'),
(182, '2021-01-15', '0', '0', '0', 'RSUD Gaji Januari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(183, '2021-01-15', '0', '0', '0', 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(184, '2021-01-15', '0', '0', '0', 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'Transaksi Utama', 'admin', '35'),
(185, '2021-01-15', '0', '0', '0', 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'Transaksi Utama', 'admin', '35'),
(186, '2021-01-18', '0', '0', '0', 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'Transaksi Utama', 'admin', '35'),
(187, '2021-01-18', '0', '0', '0', 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'Transaksi Utama', 'admin', '35'),
(188, '2021-01-18', '0', '0', '0', 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'Transaksi Utama', 'admin', '35'),
(189, '2021-01-18', '0', '0', '0', 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'Transaksi Utama', 'admin', '35'),
(190, '2021-01-18', '0', '0', '0', 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(191, '2021-01-18', '0', '0', '0', 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'Transaksi Utama', 'admin', '35'),
(192, '2021-01-18', '0', '0', '0', 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(193, '2021-01-18', '0', '0', '0', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'Transaksi Utama', 'admin', '35'),
(194, '2021-01-18', '0', '0', '0', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'Transaksi Utama', 'admin', '35'),
(195, '2021-01-18', '0', '0', '0', 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'Transaksi Utama', 'admin', '35'),
(196, '2021-01-18', '0', '0', '0', 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(197, '2021-01-18', '0', '0', '0', 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(198, '2021-01-19', '0', '0', '0', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(199, '2021-01-20', '0', '0', '0', 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(200, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'Transaksi Utama', 'admin', '35'),
(201, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'Transaksi Utama', 'admin', '35'),
(202, '2021-01-29', '0', '0', '0', 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'Transaksi Utama', 'admin', '35'),
(203, '2021-01-29', '0', '0', '0', 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'Transaksi Utama', 'admin', '35'),
(204, '2021-01-29', '0', '0', '0', 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'Transaksi Utama', 'admin', '35'),
(205, '2021-02-05', '0', '0', '0', 'Badan Keuangan Daerah Gaji Februari 2021', 0, 472323691, 'Transaksi Utama', 'admin', '35'),
(206, '2021-02-05', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Februari 2021', 0, 80010953, 'Transaksi Utama', 'admin', '35'),
(207, '2021-02-05', '0', '0', '0', 'Kantor Kesbang dan Politik Gaji Februari 2021', 0, 127058984, 'Transaksi Utama', 'admin', '35'),
(208, '2021-02-05', '0', '0', '0', 'Dinas Sosial Gaji Februari 2021', 0, 128347719, 'Transaksi Utama', 'admin', '35'),
(209, '2021-02-05', '0', '0', '0', 'Dinas Komunikasi dan Informatika Gaji Februari 2021', 0, 94014403, 'Transaksi Utama', 'admin', '35'),
(210, '2021-02-05', '0', '0', '0', 'Dinas Pariwisata Gaji Februari 2021', 0, 126038168, 'Transaksi Utama', 'admin', '35'),
(211, '2021-02-05', '0', '0', '0', 'Dinas Lingkungan Hidup Gaji Februari 2021', 0, 241341162, 'Transaksi Utama', 'admin', '35'),
(212, '2021-02-05', '0', '0', '0', 'Dinas Penataan Ruang dan Permukiman Gaji Februari 2021', 0, 235877446, 'Transaksi Utama', 'admin', '35'),
(213, '2021-02-05', '0', '0', '0', 'Inspektorat Gaji Februari 2021', 0, 209381856, 'Transaksi Utama', 'admin', '35'),
(214, '2021-02-05', '0', '0', '0', 'Kec. Psp Tenggara Gaji Februari 2021', 0, 186688626, 'Transaksi Utama', 'admin', '35'),
(215, '2021-02-05', '0', '0', '0', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Februari 2021', 0, 139385382, 'Transaksi Utama', 'admin', '35'),
(216, '2021-02-05', '0', '0', '0', 'Dinas Ketenagakerjaan Gaji Februari 2021', 0, 154171163, 'Transaksi Utama', 'admin', '35'),
(217, '2021-02-05', '0', '0', '0', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Februari 2021', 0, 190969612, 'Transaksi Utama', 'admin', '35'),
(218, '2021-02-05', '0', '0', '0', 'Dinas Pertanian Gaji Februari 2021', 0, 315966384, 'Transaksi Utama', 'admin', '35'),
(219, '2021-02-05', '0', '0', '0', 'Sekretariat Daerah Gaji Februari 2021', 0, 574264409, 'Transaksi Utama', 'admin', '35'),
(220, '2021-02-05', '0', '0', '0', 'KDH & WKDH Gaji Februari 2021', 0, 11841621, 'Transaksi Utama', 'admin', '35'),
(221, '2021-02-08', '0', '0', '0', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Februari 2021', 0, 151972131, 'Transaksi Utama', 'admin', '35'),
(222, '2021-02-08', '0', '0', '0', 'Kec. Psp Utara Gaji Februari 2021', 0, 564429227, 'Transaksi Utama', 'admin', '35'),
(223, '2021-02-08', '0', '0', '0', 'Kantor Satpol-PP Gaji Februari 2021', 0, 181363899, 'Transaksi Utama', 'admin', '35'),
(224, '2021-02-08', '0', '0', '0', 'Kec. Psp Batunadua Gaji Februari 2021', 0, 146134302, 'Transaksi Utama', 'admin', '35'),
(225, '2021-02-08', '0', '0', '0', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Februari 2021', 0, 202682046, 'Transaksi Utama', 'admin', '35'),
(226, '2021-02-08', '0', '0', '0', 'Kec. Psp Angkola Julu Gaji Februari 2021', 0, 114826520, 'Transaksi Utama', 'admin', '35'),
(227, '2021-02-08', '0', '0', '0', 'Badan Penanggulangan Bencana Daerah Gaji Februari 2021', 0, 64159019, 'Transaksi Utama', 'admin', '35'),
(228, '2021-02-08', '0', '0', '0', 'RSUD Gaji Februari 2021', 0, 1227269974, 'Transaksi Utama', 'admin', '35'),
(229, '2021-02-08', '0', '0', '0', 'Dinas Perhubungan Gaji Februari 2021', 0, 199484397, 'Transaksi Utama', 'admin', '35'),
(230, '2021-02-08', '0', '0', '0', 'Dinas Pemadam Kebakaran Gaji Februari 2021', 0, 117355379, 'Transaksi Utama', 'admin', '35'),
(231, '2021-02-08', '0', '0', '0', 'Dinas Perpustakaan Gaji Februari 2021', 0, 166650005, 'Transaksi Utama', 'admin', '35'),
(232, '2021-02-08', '0', '0', '0', 'Sekr. DPRD Gaji Februari 2021', 0, 200707775, 'Transaksi Utama', 'admin', '35'),
(233, '2021-02-08', '0', '0', '0', 'Dinas Pendidikan Gaji Februari 2021', 0, 7293751905, 'Transaksi Utama', 'admin', '35'),
(234, '2021-02-08', '0', '0', '0', 'Badan Kepegawaian dan Pengembangan SDM Gaji Februari 2021', 0, 130840587, 'Transaksi Utama', 'admin', '35'),
(235, '2021-02-08', '0', '0', '0', 'PUD Pembayaran Uang Persediaan (UP) TA. 2021', 0, 605752000, 'Transaksi Utama', 'admin', '35'),
(236, '2021-02-08', '0', '0', '0', 'Bapelitbang Pembayaran UP TA. 2021', 0, 333121000, 'Transaksi Utama', 'admin', '35'),
(237, '2021-02-09', '0', '0', '0', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Februari 2021', 0, 126255504, 'Transaksi Utama', 'admin', '35'),
(238, '2021-02-09', '0', '0', '0', 'Kec. Psp Hutaimbaru Gaji Februari 2021', 0, 213834833, 'Transaksi Utama', 'admin', '35'),
(239, '2021-02-09', '0', '0', '0', 'Dinas Kesehatan Gaji Februari 2021', 0, 2097607474, 'Transaksi Utama', 'admin', '35'),
(240, '2021-02-09', '0', '0', '0', 'Dinas Perdagangan Gaji Februari 2021', 0, 189640664, 'Transaksi Utama', 'admin', '35'),
(241, '2021-02-09', '0', '0', '0', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Februari 2021', 0, 136256722, 'Transaksi Utama', 'admin', '35'),
(242, '2021-02-09', '0', '0', '0', 'Dinas Kesehatan Pangan Gaji Februari 2021', 0, 130322792, 'Transaksi Utama', 'admin', '35'),
(243, '2021-02-09', '0', '0', '0', 'Kominfo Permintaan UP TA. 2021', 0, 79835000, 'Transaksi Utama', 'admin', '35'),
(244, '2021-02-10', '0', '0', '0', 'P2KB Permintaan UP TA. 2021', 0, 475283000, 'Transaksi Utama', 'admin', '35'),
(245, '2021-02-10', '0', '0', '0', 'Pemadam, KP Permintaan UP TA. 2021', 0, 165181000, 'Transaksi Utama', 'admin', '35'),
(246, '2021-02-10', '0', '0', '0', 'Sekrt. DPRD Pembayaran Uang Persediaan (UP) 2021', 0, 1669615000, 'Transaksi Utama', 'admin', '35'),
(247, '2021-02-10', '0', '0', '0', 'DLH Permintaan UP TA. 2021', 0, 349976000, 'Transaksi Utama', 'admin', '35'),
(248, '2021-02-10', '0', '0', '0', 'Kec. Psp Tenggara Permintaan UP TA. 2021', 0, 91960000, 'Transaksi Utama', 'admin', '35'),
(249, '2021-02-10', '0', '0', '0', 'Ketenagakerjaan Permintaan UP TA. 2021', 0, 253642000, 'Transaksi Utama', 'admin', '35'),
(250, '2021-02-15', '0', '0', '0', 'P3A Permintaan UP TA. 2021', 0, 259953000, 'Transaksi Utama', 'admin', '35'),
(251, '2021-02-16', '0', '0', '0', 'Penanaman Modal, PTSP Permintaan UP TA. 2021', 0, 317117000, 'Transaksi Utama', 'admin', '35'),
(252, '2021-02-16', '0', '0', '0', 'Perpustakaan Permintaan UP TA. 2021', 0, 101549000, 'Transaksi Utama', 'admin', '35'),
(253, '2021-02-16', '0', '0', '0', 'Satpol-PP Permintaan UP TA. 2021', 0, 139847000, 'Transaksi Utama', 'admin', '35'),
(254, '2021-02-17', '0', '0', '0', 'Per. Rakyat, KP LPJU Bulan Februari 2021', 0, 212924291, 'Transaksi Utama', 'admin', '35'),
(255, '2021-02-18', '0', '0', '0', 'Sosial Permintaan UP TA. 2021', 0, 235686000, 'Transaksi Utama', 'admin', '35'),
(256, '2021-02-18', '0', '0', '0', 'Inspektorat Permintaan UP TA. 2021', 0, 283820000, 'Transaksi Utama', 'admin', '35'),
(257, '2021-02-18', '0', '0', '0', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Terusan An. Masnilam Daulay', 0, 22858800, 'Transaksi Utama', 'admin', '35'),
(258, '2021-02-18', '0', '0', '0', 'Dinas Pendidikan Gaji Terusan Februari 2021', 0, 125247639, 'Transaksi Utama', 'admin', '35'),
(259, '2021-02-18', '0', '0', '0', 'BPBD Permintaan UP TA. 2021', 0, 119681000, 'Transaksi Utama', 'admin', '35'),
(260, '2021-02-18', '0', '0', '0', 'Perdagangan Permintaan UP TA. 2021', 0, 352000000, 'Transaksi Utama', 'admin', '35'),
(261, '2021-02-19', '0', '0', '0', 'BKD Permintaan UP TA. 2021', 0, 174279000, 'Transaksi Utama', 'admin', '35'),
(262, '2021-02-19', '0', '0', '0', 'Kec. Psp Utara Permintaan Uang Persediaan (UP) TA. 2021', 0, 108721000, 'Transaksi Utama', 'admin', '35'),
(263, '2021-02-19', '0', '0', '0', 'Kec. Psp Hutaimbaru Permintaan UP TA. 2021', 0, 60390000, 'Transaksi Utama', 'admin', '35'),
(264, '2021-02-19', '0', '0', '0', 'PMD Permintaan UP TA. 2021', 0, 110680000, 'Transaksi Utama', 'admin', '35'),
(265, '2021-02-19', '0', '0', '0', 'Kec. Psp Selatan Gaji Februari 2021', 0, 431229137, 'Transaksi Utama', 'admin', '35'),
(266, '2021-02-22', '0', '0', '0', 'Dinas Kesehatan Gaji Terusan Februari 2021', 0, 22072245, 'Transaksi Utama', 'admin', '35'),
(267, '2021-02-23', '0', '0', '0', 'Inspektorat Gaji Terusan An. Iskandar Zulkarnaen', 0, 28398150, 'Transaksi Utama', 'admin', '35'),
(268, '2021-02-23', '0', '0', '0', 'Perhubungan Permintaan UP TA. 2021', 0, 135643000, 'Transaksi Utama', 'admin', '35'),
(290, '2021-01-04', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 527048, 'Transaksi Utama', 'admin', '35'),
(291, '2021-01-04', '0', '0', '0', 'Pengembalian Lebih Bayar Peningkatan Gg. Setia Budi Kel. Padangmatinggi Psp Selatan CV. Balakka', 0, 1500000, 'Transaksi Utama', 'admin', '35'),
(292, '2021-01-04', '0', '0', '0', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 0, 40298352000, 'Transaksi Utama', 'admin', '35'),
(293, '2021-01-05', '0', '0', '0', 'Pengembalian Kelebihan Bayar ATK TA. 2018', 0, 5000000, 'Transaksi Utama', 'admin', '35'),
(294, '2021-01-07', '0', '0', '0', 'Pengembalian Lebih Bayar Peningkatan Gg pada Lk I Desa Batang Bahal Dinas Permukiman An. Aslamiah Hr', 0, 1000000, 'Transaksi Utama', 'admin', '35'),
(295, '2021-01-08', '0', '0', '0', 'Pengembalian Anggaran BTT Dinas Sosial', 0, 25000, 'Transaksi Utama', 'admin', '35'),
(296, '2021-01-11', '0', '0', '0', 'Pengembalian Lebih Bayar Belanja Penggandaan Bag. Organisasi Setda Kota TA. 2020', 0, 14169347, 'Transaksi Utama', 'admin', '35'),
(297, '2021-01-12', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 481040, 'Transaksi Utama', 'admin', '35'),
(298, '2021-01-12', '0', '0', '0', 'Pengembalian Lebih Bayar Belanja Fotocopy Bag. Hukum Setda Kota Padangsidimpuan', 0, 5278408, 'Transaksi Utama', 'admin', '35'),
(299, '2021-01-13', '0', '0', '0', 'PAD Bakeuda Pajak Restoran', 0, 3123500, 'Transaksi Utama', 'admin', '35'),
(300, '2021-01-13', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 3715616, 'Transaksi Utama', 'admin', '35'),
(301, '2021-01-13', '0', '0', '0', 'PAD Bakeuda Pajak Hotel', 0, 3300000, 'Transaksi Utama', 'admin', '35'),
(302, '2021-01-13', '0', '0', '0', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 1412956, 'Transaksi Utama', 'admin', '35'),
(303, '2021-01-13', '0', '0', '0', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 2874000, 'Transaksi Utama', 'admin', '35'),
(304, '2021-01-13', '0', '0', '0', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 617974, 'Transaksi Utama', 'admin', '35'),
(305, '2021-01-13', '0', '0', '0', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 215909, 'Transaksi Utama', 'admin', '35'),
(306, '2021-01-13', '0', '0', '0', 'Pengembalian Kelebihan Pembayaran Barang dan Jasa Dinas Pendidikan Temuan BPK 2020', 0, 19633022, 'Transaksi Utama', 'admin', '35'),
(307, '2021-01-14', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 6586267, 'Transaksi Utama', 'admin', '35'),
(308, '2021-01-14', '0', '0', '0', 'PAD Bakeuda Pajak Restoran', 0, 125563040, 'Transaksi Utama', 'admin', '35'),
(309, '2021-01-14', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 9293750, 'Transaksi Utama', 'admin', '35'),
(310, '2021-01-14', '0', '0', '0', 'Pengembalian Temuan BPK dari Kegiatan Kel. Aek Tampang', 0, 13413789.5, 'Transaksi Utama', 'admin', '35'),
(311, '2021-01-14', '0', '0', '0', 'Pengembalian Kelebihan Bayar Penggandaan/ Fotocopy 2020', 0, 2710506, 'Transaksi Utama', 'admin', '35'),
(312, '2021-01-14', '0', '0', '0', 'Pengembalian Kelebihan Bayar Belanja Barang dan Jasa Dinas Pertanian', 0, 15000000, 'Transaksi Utama', 'admin', '35'),
(313, '2021-01-15', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 430931, 'Transaksi Utama', 'admin', '35'),
(314, '2021-01-15', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 11317250, 'Transaksi Utama', 'admin', '35'),
(315, '2021-01-15', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5000000, 'Transaksi Utama', 'admin', '35'),
(316, '2021-01-15', '0', '0', '0', 'PAD Bakeuda PPJU dari PLN', 0, 711449202, 'Transaksi Utama', 'admin', '35'),
(317, '2021-01-15', '0', '0', '0', 'Pengembalian Kelebihan Barang dan Jasa (Sewa)', 0, 30451274, 'Transaksi Utama', 'admin', '35'),
(318, '2021-01-18', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 120800, 'Transaksi Utama', 'admin', '35'),
(319, '2021-01-18', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1618563, 'Transaksi Utama', 'admin', '35'),
(320, '2021-01-18', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 6602850, 'Transaksi Utama', 'admin', '35'),
(321, '2021-01-18', '0', '0', '0', 'Pengembalian Dana Bantuan yang tidak diserahkan pada Panti Asuhan', 0, 28000000, 'Transaksi Utama', 'admin', '35'),
(322, '2021-01-19', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1306000, 'Transaksi Utama', 'admin', '35'),
(323, '2021-01-19', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2595751, 'Transaksi Utama', 'admin', '35'),
(324, '2021-01-19', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 3166950, 'Transaksi Utama', 'admin', '35'),
(325, '2021-01-19', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5700000, 'Transaksi Utama', 'admin', '35'),
(326, '2021-01-19', '0', '0', '0', 'Pengembalian Kelebihan Bayar Atas Ippd/LKPJ 2020 Setda Bag. Pemerintahan', 0, 16000000, 'Transaksi Utama', 'admin', '35'),
(327, '2021-01-20', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1000000, 'Transaksi Utama', 'admin', '35'),
(328, '2021-01-20', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 5757979, 'Transaksi Utama', 'admin', '35'),
(329, '2021-01-20', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 2972500, 'Transaksi Utama', 'admin', '35'),
(330, '2021-01-20', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 44800000, 'Transaksi Utama', 'admin', '35'),
(331, '2021-01-20', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 10000000, 'Transaksi Utama', 'admin', '35'),
(332, '2021-01-20', '0', '0', '0', 'PAD Perhubungan Retribusi PKD (PKB)', 0, 11380000, 'Transaksi Utama', 'admin', '35'),
(333, '2021-01-20', '0', '0', '0', 'Pengembalian Kegiatan Rehab Jalan pada Kel. Wek II', 0, 3000000, 'Transaksi Utama', 'admin', '35'),
(334, '2021-01-20', '0', '0', '0', 'Pengembalian Belanja Jasa Kantor Tunj. Insentif Covid-19 Puskesmas Sadabuan', 0, 18181000, 'Transaksi Utama', 'admin', '35'),
(335, '2021-01-21', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 760000, 'Transaksi Utama', 'admin', '35'),
(336, '2021-01-21', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1724067, 'Transaksi Utama', 'admin', '35'),
(337, '2021-01-21', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 22862500, 'Transaksi Utama', 'admin', '35'),
(338, '2021-01-21', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 30270000, 'Transaksi Utama', 'admin', '35'),
(339, '2021-01-21', '0', '0', '0', 'PAD Kec. Psp Utara Retribusi IMB', 0, 729000, 'Transaksi Utama', 'admin', '35'),
(340, '2021-01-21', '0', '0', '0', 'Pengembalian Sisa BTT 2020 Dinas Perdagangan', 0, 167693821, 'Transaksi Utama', 'admin', '35'),
(341, '2021-01-21', '0', '0', '0', 'Pengembalian Kekurangan Volume Pek. Pemb. Gg. Idaman Kel. Kantin', 0, 2000000, 'Transaksi Utama', 'admin', '35'),
(342, '2021-01-21', '0', '0', '0', 'Pengembalian Kekurangan Volume Pekerjaan Kel. Batang Ayumi Julu', 0, 2082537.55, 'Transaksi Utama', 'admin', '35'),
(343, '2021-01-21', '0', '0', '0', 'Pengembalian Kelebihan Bayar Barang dan Jasa Dinas Kependudukan dan Capil', 0, 28619770, 'Transaksi Utama', 'admin', '35'),
(344, '2021-01-21', '0', '0', '0', 'Pengembalian Tunj. Camat Padangsidimpuan Hutaimbaru Januari 2021', 0, 1075000, 'Transaksi Utama', 'admin', '35'),
(345, '2021-01-21', '0', '0', '0', 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 0, 200000, 'Transaksi Utama', 'admin', '35'),
(346, '2021-01-22', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 674000, 'Transaksi Utama', 'admin', '35'),
(347, '2021-01-22', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2096209, 'Transaksi Utama', 'admin', '35'),
(348, '2021-01-22', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 3616000, 'Transaksi Utama', 'admin', '35'),
(349, '2021-01-22', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 25000, 'Transaksi Utama', 'admin', '35'),
(350, '2021-01-25', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 3029500, 'Transaksi Utama', 'admin', '35'),
(351, '2021-01-25', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2901401, 'Transaksi Utama', 'admin', '35'),
(352, '2021-01-25', '0', '0', '0', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 6080000, 'Transaksi Utama', 'admin', '35'),
(353, '2021-01-25', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1750000, 'Transaksi Utama', 'admin', '35'),
(354, '2021-01-25', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 9450000, 'Transaksi Utama', 'admin', '35'),
(355, '2021-01-25', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 2345000, 'Transaksi Utama', 'admin', '35'),
(356, '2021-01-26', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 115000, 'Transaksi Utama', 'admin', '35'),
(357, '2021-01-26', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1105414, 'Transaksi Utama', 'admin', '35'),
(358, '2021-01-26', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 1590625, 'Transaksi Utama', 'admin', '35'),
(359, '2021-01-26', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 2525000, 'Transaksi Utama', 'admin', '35'),
(360, '2021-01-26', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 4712000, 'Transaksi Utama', 'admin', '35'),
(361, '2021-01-26', '0', '0', '0', 'Pengembalian Perjalanan Dinas Luar Daerah Dinas Sosial', 0, 45000, 'Transaksi Utama', 'admin', '35'),
(362, '2021-01-27', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1770561, 'Transaksi Utama', 'admin', '35'),
(363, '2021-01-27', '0', '0', '0', 'PAD Bakeuda Pajak Hiburan', 0, 2500000, 'Transaksi Utama', 'admin', '35'),
(364, '2021-01-27', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3000000, 'Transaksi Utama', 'admin', '35'),
(365, '2021-01-27', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 10615575, 'Transaksi Utama', 'admin', '35'),
(366, '2021-01-27', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 4048000, 'Transaksi Utama', 'admin', '35'),
(367, '2021-01-27', '0', '0', '0', 'Pengembalian Kelebihan Bayar CV. PH Hasil LHP BPK', 0, 4440962.41, 'Transaksi Utama', 'admin', '35'),
(368, '2021-01-27', '0', '0', '0', 'Pengembalian Gaji/Tunjangan Januari 2021 Dinas Kesehatan', 0, 3295300, 'Transaksi Utama', 'admin', '35'),
(369, '2021-01-27', '0', '0', '0', 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 0, 205929600, 'Transaksi Utama', 'admin', '35'),
(370, '2021-01-27', '0', '0', '0', 'Penerimaan DBH SDA Minerba Triw. I TA. 2021', 0, 465512200, 'Transaksi Utama', 'admin', '35'),
(371, '2021-01-27', '0', '0', '0', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Tetap)', 0, 5149200, 'Transaksi Utama', 'admin', '35'),
(372, '2021-01-27', '0', '0', '0', 'Penerimaan DBH SDA Panas Bumi Triw. I TA. 2021 (Iuran Produksi)', 0, 37690400, 'Transaksi Utama', 'admin', '35'),
(373, '2021-01-27', '0', '0', '0', 'Penerimaan DBH SDA Perikanan Triw. I TA. 2021', 0, 169247850, 'Transaksi Utama', 'admin', '35'),
(374, '2021-01-28', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1885252, 'Transaksi Utama', 'admin', '35'),
(375, '2021-01-28', '0', '0', '0', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 1206000, 'Transaksi Utama', 'admin', '35'),
(376, '2021-01-28', '0', '0', '0', 'Pengembalian Kelebihan Bayar atas Kerugian Negara Rehab. Gg. Serasi Ujung Kel. Kayu Ombun TA. 2017', 0, 1000000, 'Transaksi Utama', 'admin', '35'),
(377, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 152310, 'Transaksi Utama', 'admin', '35'),
(378, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 13165700, 'Transaksi Utama', 'admin', '35'),
(379, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Pajak Hotel', 0, 10901727, 'Transaksi Utama', 'admin', '35'),
(380, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Pajak ABT', 0, 2849500, 'Transaksi Utama', 'admin', '35'),
(381, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Pajak Perparkiran', 0, 1000000, 'Transaksi Utama', 'admin', '35'),
(382, '2021-01-29', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3620050, 'Transaksi Utama', 'admin', '35'),
(383, '2021-01-29', '0', '0', '0', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 9156000, 'Transaksi Utama', 'admin', '35'),
(384, '2021-01-29', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 5075000, 'Transaksi Utama', 'admin', '35'),
(385, '2021-01-29', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 7600000, 'Transaksi Utama', 'admin', '35'),
(386, '2021-01-29', '0', '0', '0', 'Pengembalian Biaya DAK non Fisik PAUD Mawar', 0, 4026000, 'Transaksi Utama', 'admin', '35'),
(387, '2021-01-29', '0', '0', '0', 'PAD Lingk. Hidup Retribusi Penyedotan Kakus/Tinja', 0, 1000000, 'Transaksi Utama', 'admin', '35'),
(388, '2021-01-29', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 31750000, 'Transaksi Utama', 'admin', '35'),
(389, '2021-01-29', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 540000, 'Transaksi Utama', 'admin', '35'),
(390, '2021-01-29', '0', '0', '0', 'PAD Bag. Umum Retribusi Rumah Penginapan', 0, 2800000, 'Transaksi Utama', 'admin', '35'),
(391, '2021-01-29', '0', '0', '0', 'PAD Pertanian Retribusi Pemeriksaan Kesehatan (RPH)', 0, 1050000, 'Transaksi Utama', 'admin', '35'),
(392, '2021-01-29', '0', '0', '0', 'PAD Pertanian Retribusi Penjualan Produksi Usaha Daerah', 0, 350000, 'Transaksi Utama', 'admin', '35'),
(393, '2021-01-29', '0', '0', '0', 'Penerimaan Kontribusi dari PDAM Tirtanadi', 0, 6500000, 'Transaksi Utama', 'admin', '35'),
(394, '2021-01-31', '0', '0', '0', 'PAD Baekuda Penerimaan Jasa Giro Januari 2021', 0, 269730799, 'Transaksi Utama', 'admin', '35'),
(395, '2021-02-01', '0', '0', '0', 'PAD Bakeuda Pajak Restoran', 0, 1240000, 'Transaksi Utama', 'admin', '35'),
(396, '2021-02-01', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2077640, 'Transaksi Utama', 'admin', '35'),
(397, '2021-02-01', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 786250, 'Transaksi Utama', 'admin', '35'),
(398, '2021-02-01', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9050000, 'Transaksi Utama', 'admin', '35'),
(399, '2021-02-01', '0', '0', '0', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 810000, 'Transaksi Utama', 'admin', '35'),
(400, '2021-02-01', '0', '0', '0', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 4320000, 'Transaksi Utama', 'admin', '35'),
(401, '2021-02-01', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 3232000, 'Transaksi Utama', 'admin', '35'),
(402, '2021-02-01', '0', '0', '0', 'PAD Perhubungan Retribusi Izin Trayek', 0, 60000, 'Transaksi Utama', 'admin', '35'),
(403, '2021-02-01', '0', '0', '0', 'Pengembalian Kelebihan Bayar ATK TA. 2018', 0, 5000000, 'Transaksi Utama', 'admin', '35'),
(404, '2021-02-02', '0', '0', '0', 'PAD Bakeuda Pajak Restoran', 0, 2623400, 'Transaksi Utama', 'admin', '35'),
(405, '2021-02-02', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 594499, 'Transaksi Utama', 'admin', '35'),
(406, '2021-02-02', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 2430000, 'Transaksi Utama', 'admin', '35'),
(407, '2021-02-02', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 3133000, 'Transaksi Utama', 'admin', '35'),
(408, '2021-02-02', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 1552000, 'Transaksi Utama', 'admin', '35'),
(409, '2021-02-02', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 12446000, 'Transaksi Utama', 'admin', '35'),
(410, '2021-02-02', '0', '0', '0', 'Penerimaa Setoran dari PT. Anugerah Tetap Cemerlang (ATC)', 0, 55000000, 'Transaksi Utama', 'admin', '35'),
(411, '2021-02-03', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2001977, 'Transaksi Utama', 'admin', '35'),
(412, '2021-02-03', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 45022500, 'Transaksi Utama', 'admin', '35'),
(413, '2021-02-03', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 5380000, 'Transaksi Utama', 'admin', '35'),
(414, '2021-02-03', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 2667000, 'Transaksi Utama', 'admin', '35'),
(415, '2021-02-03', '0', '0', '0', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 5280000, 'Transaksi Utama', 'admin', '35'),
(416, '2021-02-04', '0', '0', '0', 'PAD Bakeuda Pajak Restoran', 0, 860000, 'Transaksi Utama', 'admin', '35'),
(417, '2021-02-04', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2297128, 'Transaksi Utama', 'admin', '35'),
(418, '2021-02-04', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1450000, 'Transaksi Utama', 'admin', '35'),
(419, '2021-02-04', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 600000, 'Transaksi Utama', 'admin', '35'),
(420, '2021-02-04', '0', '0', '0', 'Pengembalian Tamb. Pengh. Berd. Beban Kerja Oktober s/d Desember 2021 Dinas Pendidikan', 0, 1912500, 'Transaksi Utama', 'admin', '35'),
(421, '2021-02-05', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 359529, 'Transaksi Utama', 'admin', '35'),
(422, '2021-02-08', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1973069, 'Transaksi Utama', 'admin', '35'),
(423, '2021-02-08', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 19445000, 'Transaksi Utama', 'admin', '35'),
(424, '2021-02-08', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1336600, 'Transaksi Utama', 'admin', '35'),
(425, '2021-02-08', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 489000, 'Transaksi Utama', 'admin', '35'),
(426, '2021-02-08', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 1695000, 'Transaksi Utama', 'admin', '35'),
(427, '2021-02-08', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 28516000, 'Transaksi Utama', 'admin', '35'),
(428, '2021-02-09', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1964807, 'Transaksi Utama', 'admin', '35'),
(429, '2021-02-09', '0', '0', '0', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 265000, 'Transaksi Utama', 'admin', '35'),
(430, '2021-02-09', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 704000, 'Transaksi Utama', 'admin', '35'),
(431, '2021-02-09', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 4262000, 'Transaksi Utama', 'admin', '35'),
(432, '2021-02-09', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 13350000, 'Transaksi Utama', 'admin', '35'),
(433, '2021-02-09', '0', '0', '0', 'Pengembalian dari Gaji Pensiun PT. Taspen', 0, 466951, 'Transaksi Utama', 'admin', '35'),
(434, '2021-02-09', '0', '0', '0', 'Pengembalian Lebih Bayar Peningkatan Jln Silandit 2017', 0, 5184086.66, 'Transaksi Utama', 'admin', '35'),
(435, '2021-02-09', '0', '0', '0', 'Pengembalian Lebih Bayar Peningkatan Jalan Baru Hutaimbaru', 0, 10000000, 'Transaksi Utama', 'admin', '35'),
(436, '2021-02-10', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1164517, 'Transaksi Utama', 'admin', '35'),
(437, '2021-02-10', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 17725000, 'Transaksi Utama', 'admin', '35'),
(438, '2021-02-10', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 1822500, 'Transaksi Utama', 'admin', '35'),
(439, '2021-02-10', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 86400, 'Transaksi Utama', 'admin', '35'),
(440, '2021-02-10', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 36000, 'Transaksi Utama', 'admin', '35'),
(441, '2021-02-10', '0', '0', '0', 'PAD PUPR Retribusi PKD Kendaraan Bermotor', 0, 50000, 'Transaksi Utama', 'admin', '35'),
(442, '2021-02-10', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1780000, 'Transaksi Utama', 'admin', '35'),
(443, '2021-02-10', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 720000, 'Transaksi Utama', 'admin', '35'),
(444, '2021-02-11', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 2455111, 'Transaksi Utama', 'admin', '35'),
(445, '2021-02-11', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 2548750, 'Transaksi Utama', 'admin', '35'),
(446, '2021-02-11', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2590000, 'Transaksi Utama', 'admin', '35'),
(447, '2021-02-11', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 680000, 'Transaksi Utama', 'admin', '35'),
(448, '2021-02-11', '0', '0', '0', 'PAD Perhubungan Retribusi Izin Trayek', 0, 20000, 'Transaksi Utama', 'admin', '35'),
(449, '2021-02-15', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 107977333, 'Transaksi Utama', 'admin', '35'),
(450, '2021-02-15', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1600261, 'Transaksi Utama', 'admin', '35'),
(451, '2021-02-15', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 1584000, 'Transaksi Utama', 'admin', '35'),
(452, '2021-02-15', '0', '0', '0', 'PAD PMPTSP Retribusi IMB', 0, 9757200, 'Transaksi Utama', 'admin', '35');
INSERT INTO `tbl_transaksibaru` (`id_transaksi`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(453, '2021-02-15', '0', '0', '0', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 2508000, 'Transaksi Utama', 'admin', '35'),
(454, '2021-02-15', '0', '0', '0', 'PAD Perdagangan Retribusi Persampahan', 0, 128000, 'Transaksi Utama', 'admin', '35'),
(455, '2021-02-15', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 2350000, 'Transaksi Utama', 'admin', '35'),
(456, '2021-02-15', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 1875000, 'Transaksi Utama', 'admin', '35'),
(457, '2021-02-15', '0', '0', '0', 'Pengembalian Gaji / Tunjangan Januari 2021 SMPN 9', 0, 5600900, 'Transaksi Utama', 'admin', '35'),
(458, '2021-02-16', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 1564099, 'Transaksi Utama', 'admin', '35'),
(459, '2021-02-16', '0', '0', '0', 'PAD Bakeuda Pajak Hotel', 0, 3750000, 'Transaksi Utama', 'admin', '35'),
(460, '2021-02-16', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 2931250, 'Transaksi Utama', 'admin', '35'),
(461, '2021-02-16', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9294925, 'Transaksi Utama', 'admin', '35'),
(462, '2021-02-16', '0', '0', '0', 'PAD Bakeuda PPJU dari PLN', 0, 708594820, 'Transaksi Utama', 'admin', '35'),
(463, '2021-02-16', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1140000, 'Transaksi Utama', 'admin', '35'),
(464, '2021-02-16', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 1400000, 'Transaksi Utama', 'admin', '35'),
(465, '2021-02-16', '0', '0', '0', 'Pengembalian Kekurangan Volume Pekerjaan Pemb. Trotoar Jln Kpaten Tendean Kel. Bincar', 0, 9645533.66, 'Transaksi Utama', 'admin', '35'),
(466, '2021-02-17', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 797329, 'Transaksi Utama', 'admin', '35'),
(467, '2021-02-17', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 5236875, 'Transaksi Utama', 'admin', '35'),
(468, '2021-02-17', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 11814300, 'Transaksi Utama', 'admin', '35'),
(469, '2021-02-17', '0', '0', '0', 'PAD Perdagangan Retribusi Persampahan', 0, 900000, 'Transaksi Utama', 'admin', '35'),
(470, '2021-02-17', '0', '0', '0', 'PAD Perdagangan Retribusi Fasilitas Pasar', 0, 4070200, 'Transaksi Utama', 'admin', '35'),
(471, '2021-02-17', '0', '0', '0', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 235000, 'Transaksi Utama', 'admin', '35'),
(472, '2021-02-17', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2246000, 'Transaksi Utama', 'admin', '35'),
(473, '2021-02-17', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 816000, 'Transaksi Utama', 'admin', '35'),
(474, '2021-02-18', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 748946, 'Transaksi Utama', 'admin', '35'),
(475, '2021-02-18', '0', '0', '0', 'PAD Bakeuda Pajak Reklame', 0, 8400000, 'Transaksi Utama', 'admin', '35'),
(476, '2021-02-18', '0', '0', '0', 'PAD Bakeuda Pajak Air Bawah Tanah', 0, 50000, 'Transaksi Utama', 'admin', '35'),
(477, '2021-02-18', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 3500000, 'Transaksi Utama', 'admin', '35'),
(478, '2021-02-18', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1728000, 'Transaksi Utama', 'admin', '35'),
(479, '2021-02-18', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 720000, 'Transaksi Utama', 'admin', '35'),
(480, '2021-02-19', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 835795, 'Transaksi Utama', 'admin', '35'),
(481, '2021-02-19', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 9413500, 'Transaksi Utama', 'admin', '35'),
(482, '2021-02-19', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 700000, 'Transaksi Utama', 'admin', '35'),
(483, '2021-02-19', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 1320000, 'Transaksi Utama', 'admin', '35'),
(484, '2021-02-22', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 1786500, 'Transaksi Utama', 'admin', '35'),
(485, '2021-02-22', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 840280, 'Transaksi Utama', 'admin', '35'),
(486, '2021-02-22', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 10025000, 'Transaksi Utama', 'admin', '35'),
(487, '2021-02-22', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir Tepi Jalan', 0, 2003000, 'Transaksi Utama', 'admin', '35'),
(488, '2021-02-22', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 2900000, 'Transaksi Utama', 'admin', '35'),
(489, '2021-02-22', '0', '0', '0', 'Penerimaan Dana Transfer Pusat DAU Januari 2021', 0, 40298352000, 'Transaksi Utama', 'admin', '35'),
(490, '2021-02-23', '0', '0', '0', 'PAD Bakeuda Pajak Restoran (Katering)', 0, 2112500, 'Transaksi Utama', 'admin', '35'),
(491, '2021-02-23', '0', '0', '0', 'PAD Bakeuda Pajak PBB-P2', 0, 8831921, 'Transaksi Utama', 'admin', '35'),
(492, '2021-02-23', '0', '0', '0', 'PAD Bakeuda Penerimaan BPHTB Bagian Pemko Psp', 0, 1775000, 'Transaksi Utama', 'admin', '35'),
(493, '2021-02-23', '0', '0', '0', 'PAD Kesehatan Retribusi Pelayanan Kesehatan Puskesmas', 0, 605000, 'Transaksi Utama', 'admin', '35'),
(494, '2021-02-23', '0', '0', '0', 'PAD Perhubungan Retribusi Terminal', 0, 980000, 'Transaksi Utama', 'admin', '35'),
(495, '2021-02-23', '0', '0', '0', 'PAD Perhubungan Retribusi Parkir', 0, 1630000, 'Transaksi Utama', 'admin', '35'),
(496, '2021-02-23', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Pasar', 0, 8016200, 'Transaksi Utama', 'admin', '35'),
(497, '2021-02-23', '0', '0', '0', 'PAD Perdagangan Retribusi Pelayanan Sampah', 0, 1696000, 'Transaksi Utama', 'admin', '35'),
(498, '2021-02-23', '0', '0', '0', 'Penerimaan DBH SDA Gas Bumi 30% Triw. I 2021', 0, 3604000, 'Transaksi Utama', 'admin', '35'),
(499, '2021-02-23', '0', '0', '0', 'Penerimaan DBH SDA Gas Bumi 0,5% Triw. I 2021', 0, 60000, 'Transaksi Utama', 'admin', '35'),
(500, '2021-02-23', '0', '0', '0', 'Penerimaan DBH SDA Minyak Bumi 15% Triw. I 2021', 0, 590200, 'Transaksi Utama', 'admin', '35'),
(501, '2021-02-23', '0', '0', '0', 'Penerimaan DBH SDA Minyak Bumi 0,5% Triw. I 2021', 0, 19600, 'Transaksi Utama', 'admin', '35'),
(502, '2021-02-23', '0', '0', '0', 'Penerimaan Dana Fasilitas Penanaman Modal Tahap I 2021', 0, 163061000, 'Transaksi Utama', 'admin', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksisave`
--

CREATE TABLE `tbl_transaksisave` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_sp2d` int(128) NOT NULL,
  `no_sts` int(128) NOT NULL,
  `no_lainlain` int(128) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `penerimaan` double NOT NULL,
  `pengeluaran` double NOT NULL,
  `keterangan` enum('Transaksi Utama','Transaksi Tambahan','','') NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksisave`
--

INSERT INTO `tbl_transaksisave` (`id_transaksi`, `tanggal`, `no_sp2d`, `no_sts`, `no_lainlain`, `uraian`, `penerimaan`, `pengeluaran`, `keterangan`, `id_user`, `id_opd`) VALUES
(16, '2020-12-31', 0, 0, 0, 'Saldo Bank Tahun 2020', 104313662823.43, 0, 'Transaksi Utama', 'admin', '35'),
(17, '2021-02-05', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 355981899, 355981899, 'Transaksi Tambahan', 'admin', '35'),
(19, '2021-02-05', 0, 0, 0, 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(20, '2021-02-05', 0, 0, 0, 'JKK, JKM', 127943180, 127943180, 'Transaksi Tambahan', 'admin', '35'),
(21, '2021-02-08', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1242676766, 1242676766, 'Transaksi Tambahan', 'admin', '35'),
(22, '2021-02-09', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 325770689, 325770689, 'Transaksi Tambahan', 'admin', '35'),
(23, '2021-02-10', 0, 0, 0, 'Pemby. PPN & PPh', 0, 0, 'Transaksi Tambahan', 'admin', '35'),
(24, '2021-02-18', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Terusa Februari ', 7471939, 7471939, 'Transaksi Tambahan', 'admin', '35'),
(25, '2021-02-19', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 48612637, 48612637, 'Transaksi Tambahan', 'admin', '35'),
(26, '2021-02-22', 0, 0, 0, 'Pot . IWP,PPh 21 & Taperum Gaji Februari 2021', 1043745, 1043745, 'Transaksi Tambahan', 'admin', '35'),
(27, '2021-02-23', 0, 0, 0, 'Pemby. PPN & PPh', 1467750, 1467750, 'Transaksi Tambahan', 'admin', '35'),
(28, '2021-01-14', 0, 0, 0, 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 65748880, 65748880, 'Transaksi Tambahan', 'admin', '35'),
(29, '2021-01-15', 0, 0, 0, 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 1597879303, 1597879303, 'Transaksi Tambahan', 'admin', '35'),
(30, '2021-01-15', 0, 0, 0, 'JKK, JKM', 128330322, 128330322, 'Transaksi Tambahan', 'admin', '35'),
(31, '2021-01-15', 0, 0, 0, 'Pemby. PPN & PPh', 269802799, 269802799, 'Transaksi Tambahan', 'admin', '35'),
(32, '2021-01-19', 0, 0, 0, 'Pemby. PPN & PPh', 22880746, 22880746, 'Transaksi Tambahan', 'admin', '35'),
(33, '2021-01-20', 0, 0, 0, 'Pemby. PPN & PPh', 22843075, 22843075, 'Transaksi Tambahan', 'admin', '35'),
(34, '2021-01-29', 0, 0, 0, 'JKK, JKM', 460656, 460656, 'Transaksi Tambahan', 'admin', '35'),
(35, '2021-01-29', 0, 0, 0, 'Pemby. PPN & PPh', 153842964, 153842964, 'Transaksi Tambahan', 'admin', '35');

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
(5, 'admin3', 'admin3', 'admin3', 'admin', 1, 1),
(6, 'operator4', 'operator4', 'operator4', 'member', 1, 35);

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
(61, 1, 18),
(62, 5, 2),
(64, 5, 5),
(65, 5, 6),
(66, 5, 7),
(67, 5, 8),
(68, 5, 9),
(69, 5, 10),
(70, 5, 11),
(71, 5, 12),
(72, 5, 13),
(73, 5, 15),
(74, 5, 14),
(76, 5, 17),
(77, 5, 1),
(78, 5, 16),
(79, 5, 18),
(80, 6, 4);

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
(17, 'Selisih', 'T'),
(18, 'Nomor Surat Keputusan', 'Y');

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
(1, 1, 'Management Menu', 'manageuser/manageuser', 1),
(2, 2, 'Rekening', 'rekening/rekening', 1),
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
(17, 17, 'Selisih', 'selisihrekon/selisihrekon', 1),
(18, 18, 'Nomor Surat Keputusan', 'nomorsk/nomorsk', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_administrator`
--
ALTER TABLE `tbl_administrator`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_bbpsave`
--
ALTER TABLE `tbl_bbpsave`
  ADD PRIMARY KEY (`id_bbp`);

--
-- Indexes for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  ADD PRIMARY KEY (`id_bpp`);

--
-- Indexes for table `tbl_bppsave`
--
ALTER TABLE `tbl_bppsave`
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
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_transaksibaru`
--
ALTER TABLE `tbl_transaksibaru`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_transaksisave`
--
ALTER TABLE `tbl_transaksisave`
  ADD PRIMARY KEY (`id_transaksi`);

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
-- AUTO_INCREMENT for table `tbl_administrator`
--
ALTER TABLE `tbl_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_apbd`
--
ALTER TABLE `tbl_apbd`
  MODIFY `id_apbd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bbp`
--
ALTER TABLE `tbl_bbp`
  MODIFY `id_bbp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bbpsave`
--
ALTER TABLE `tbl_bbpsave`
  MODIFY `id_bbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  MODIFY `id_bpp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bppsave`
--
ALTER TABLE `tbl_bppsave`
  MODIFY `id_bpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_buktipajak`
--
ALTER TABLE `tbl_buktipajak`
  MODIFY `id_buktipajak` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_keteranganselisih`
--
ALTER TABLE `tbl_keteranganselisih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_saldobank`
--
ALTER TABLE `tbl_saldobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_selisihrekon`
--
ALTER TABLE `tbl_selisihrekon`
  MODIFY `id_selisihrekon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `tbl_transaksibaru`
--
ALTER TABLE `tbl_transaksibaru`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `tbl_transaksisave`
--
ALTER TABLE `tbl_transaksisave`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
