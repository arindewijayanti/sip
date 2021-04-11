-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 10:46 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bbp`
--

CREATE TABLE `tbl_bbp` (
  `id_bbp` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_buktipajak` varchar(25) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `id_user` varchar(128) NOT NULL,
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bbp`
--

INSERT INTO `tbl_bbp` (`id_bbp`, `tanggal`, `id_buktipajak`, `debet`, `kredit`, `id_user`, `id_opd`) VALUES
(13, '2021-01-04', '23', 0, 527048, 'admin', '35'),
(14, '2021-01-04', '24', 0, 1500000, 'admin', '35'),
(15, '2021-01-04', '25', 0, 40298352000, 'admin', '35'),
(16, '2021-01-05', '26', 0, 5000000, 'admin', '35'),
(17, '2021-01-07', '27', 0, 1000000, 'admin', '35'),
(18, '2021-01-08', '28', 0, 25000, 'admin', '35'),
(19, '2021-01-11', '29', 0, 14169347, 'admin', '35'),
(20, '2021-01-12', '30', 0, 481040, 'admin', '35'),
(21, '2021-01-12', '31', 0, 5278408, 'admin', '35'),
(22, '2021-01-13', '32', 0, 3123500, 'admin', '35'),
(23, '2021-01-13', '33', 0, 3715616, 'admin', '35'),
(24, '2021-01-13', '34', 0, 3300000, 'admin', '35'),
(25, '2021-01-13', '35', 0, 1412956, 'admin', '35'),
(26, '2021-01-13', '35', 0, 2874000, 'admin', '35'),
(27, '2021-01-13', '35', 0, 617974, 'admin', '35'),
(29, '2021-01-13', '35', 0, 215909, 'admin', '35'),
(30, '2021-01-13', '35', 0, 19633022, 'admin', '35'),
(31, '2021-01-14', '30', 0, 6586267, 'admin', '35'),
(32, '2021-01-14', '32', 0, 125563040, 'admin', '35'),
(33, '2021-01-14', '36', 0, 9293750, 'admin', '35'),
(34, '2021-01-14', '37', 0, 13413789.5, 'admin', '35'),
(35, '2021-01-14', '38', 0, 2710506, 'admin', '35'),
(36, '2021-01-14', '39', 0, 15000000, 'admin', '35'),
(37, '2021-01-15', '23', 0, 430931, 'admin', '35'),
(38, '2021-01-15', '36', 0, 11317250, 'admin', '35'),
(39, '2021-01-15', '40', 0, 5000000, 'admin', '35'),
(40, '2021-01-15', '41', 0, 711449202, 'admin', '35'),
(41, '2021-01-15', '42', 0, 30451274, 'admin', '35'),
(42, '2021-01-18', '43', 0, 120800, 'admin', '35'),
(43, '2021-01-18', '23', 0, 1618563, 'admin', '35'),
(44, '2021-01-18', '40', 0, 6602850, 'admin', '35'),
(45, '2021-01-18', '44', 0, 28000000, 'admin', '35'),
(46, '2021-01-19', '43', 0, 1306000, 'admin', '35'),
(47, '2021-01-19', '23', 0, 2595751, 'admin', '35'),
(48, '2021-01-19', '36', 0, 3166950, 'admin', '35'),
(49, '2021-01-19', '40', 0, 5700000, 'admin', '35'),
(50, '2021-01-19', '45', 0, 16000000, 'admin', '35'),
(51, '2021-01-20', '43', 0, 1000000, 'admin', '35'),
(52, '2021-01-20', '23', 0, 5757979, 'admin', '35'),
(53, '2021-01-20', '36', 0, 2972500, 'admin', '35'),
(54, '2021-01-20', '40', 0, 44800000, 'admin', '35'),
(55, '2021-01-20', '46', 0, 10000000, 'admin', '35'),
(56, '2021-01-20', '47', 0, 11380000, 'admin', '35'),
(57, '2021-01-20', '48', 0, 3000000, 'admin', '35'),
(58, '2021-01-20', '49', 0, 18181000, 'admin', '35'),
(59, '2021-01-21', '43', 0, 760000, 'admin', '35'),
(60, '2021-01-21', '30', 0, 1724067, 'admin', '35'),
(61, '2021-01-21', '36', 0, 22862500, 'admin', '35'),
(62, '2021-01-21', '40', 0, 30270000, 'admin', '35'),
(63, '2021-01-21', '50', 0, 729000, 'admin', '35'),
(64, '2021-01-21', '51', 0, 167693821, 'admin', '35'),
(65, '2021-01-21', '52', 0, 2000000, 'admin', '35'),
(66, '2021-01-21', '53', 0, 2082537.55, 'admin', '35'),
(67, '2021-01-21', '54', 0, 28619770, 'admin', '35'),
(68, '2021-01-21', '55', 0, 1075000, 'admin', '35'),
(69, '2021-01-21', '56', 0, 200000, 'admin', '35'),
(70, '2021-01-22', '43', 0, 674000, 'admin', '35'),
(71, '2021-01-22', '30', 0, 2096209, 'admin', '35'),
(72, '2021-01-22', '57', 0, 3616000, 'admin', '35'),
(73, '2021-01-22', '40', 0, 25000, 'admin', '35'),
(74, '2021-01-25', '43', 0, 3029500, 'admin', '35'),
(75, '2021-01-25', '23', 0, 2901401, 'admin', '35'),
(76, '2021-01-25', '58', 0, 6080000, 'admin', '35'),
(77, '2021-01-25', '40', 0, 1750000, 'admin', '35'),
(78, '2021-01-25', '59', 0, 9450000, 'admin', '35'),
(79, '2021-01-25', '46', 0, 2345000, 'admin', '35'),
(80, '2021-01-26', '43', 0, 115000, 'admin', '35'),
(81, '2021-01-26', '23', 0, 1105414, 'admin', '35'),
(82, '2021-01-26', '36', 0, 1590625, 'admin', '35'),
(83, '2021-01-26', '40', 0, 2525000, 'admin', '35'),
(87, '2021-01-26', '60', 0, 4712000, 'admin', '35'),
(88, '2021-01-26', '61', 0, 45000, 'admin', '35'),
(89, '2021-01-27', '30', 0, 1770561, 'admin', '35'),
(90, '2021-01-27', '62', 0, 2500000, 'admin', '35'),
(91, '2021-01-27', '40', 0, 3000000, 'admin', '35'),
(92, '2021-01-27', '63', 0, 10615575, 'admin', '35'),
(93, '2021-01-27', '64', 0, 4048000, 'admin', '35'),
(94, '2021-01-27', '65', 0, 4440962.41, 'admin', '35'),
(95, '2021-01-27', '66', 0, 3295300, 'admin', '35'),
(96, '2021-01-27', '67', 0, 205929600, 'admin', '35'),
(97, '2021-01-27', '67', 0, 465512200, 'admin', '35'),
(98, '2021-01-27', '68', 0, 5149200, 'admin', '35'),
(99, '2021-01-27', '69', 0, 37690400, 'admin', '35'),
(100, '2021-01-27', '70', 0, 169247850, 'admin', '35'),
(101, '2021-01-28', '23', 0, 1885252, 'admin', '35'),
(102, '2021-01-28', '71', 0, 1206000, 'admin', '35'),
(103, '2021-01-28', '72', 0, 1000000, 'admin', '35'),
(104, '2021-01-29', '23', 0, 152310, 'admin', '35'),
(105, '2021-01-29', '36', 0, 13165700, 'admin', '35'),
(106, '2021-01-29', '34', 0, 10901727, 'admin', '35'),
(107, '2021-01-29', '73', 0, 2849500, 'admin', '35'),
(108, '2021-01-29', '74', 0, 1000000, 'admin', '35'),
(109, '2021-01-29', '40', 0, 3620050, 'admin', '35'),
(110, '2021-01-29', '75', 0, 9156000, 'admin', '35'),
(111, '2021-01-29', '46', 0, 5075000, 'admin', '35'),
(112, '2021-01-29', '59', 0, 7600000, 'admin', '35'),
(113, '2021-01-29', '56', 0, 4026000, 'admin', '35'),
(114, '2021-01-29', '76', 0, 1000000, 'admin', '35'),
(115, '2021-01-29', '64', 0, 31750000, 'admin', '35'),
(116, '2021-01-29', '63', 0, 540000, 'admin', '35'),
(117, '2021-01-29', '77', 0, 2800000, 'admin', '35'),
(118, '2021-01-29', '78', 0, 1050000, 'admin', '35'),
(119, '2021-01-29', '79', 0, 350000, 'admin', '35'),
(120, '2021-01-29', '80', 0, 6500000, 'admin', '35'),
(121, '2021-01-31', '81', 0, 269730799, 'admin', '35'),
(122, '2021-02-01', '32', 0, 1240000, 'admin', '35'),
(123, '2021-02-01', '23', 0, 2077640, 'admin', '35'),
(124, '2021-02-01', '36', 0, 786250, 'admin', '35'),
(125, '2021-02-01', '40', 0, 9050000, 'admin', '35'),
(126, '2021-02-01', '75', 0, 810000, 'admin', '35'),
(127, '2021-02-01', '58', 0, 4320000, 'admin', '35'),
(128, '2021-02-01', '46', 0, 3232000, 'admin', '35'),
(129, '2021-02-01', '82', 0, 60000, 'admin', '35'),
(130, '2021-02-01', '26', 0, 5000000, 'admin', '35');

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
(16, '2021-01-14', '', '', 'KDH & WKDH Gaji Januari 2020', 0, 11841621, 'admin', '35'),
(17, '2021-01-14', '', '', 'Sekretariat Daerah Gaji Januari 2020', 0, 574633559, 'admin', '35'),
(19, '2021-01-14', '', '', 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 65748880, 65748880, 'admin', '35'),
(20, '2021-01-15', '', '-', 'Badan Keuangan Daerah Gaji Januari 2021', 0, 473901583, 'admin', '35'),
(21, '2021-01-15', '', '-', 'Dinas Pendidikan Gaji Januari 2021', 0, 7314198947, 'admin', '35'),
(22, '2021-01-15', '', '-', 'Kantor Satpol-PP Gaji Januari 2021', 0, 191929410, 'admin', '35'),
(23, '2021-01-15', '', '-', 'Dinas Kesehatan Gaji Januari 2021', 0, 2105606040, 'admin', '35'),
(24, '2021-01-15', '', '-', 'Dinas Perumahan Rakyat dan Kawasan Permukiman Gaji Januari 2021', 0, 140597982, 'admin', '35'),
(25, '2021-01-15', '', '-', 'Dinas Sosial Gaji Januari 2021', 0, 128347719, 'admin', '35'),
(26, '2021-01-15', '', '-', 'Dinas Perpustakaan Gaji Januari 2021', 0, 166650005, 'admin', '35'),
(27, '2021-01-15', '', '-', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah Gaji Januari 2021', 0, 192501570, 'admin', '35'),
(28, '2021-01-15', '', '-', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Gaji Januari 2021', 0, 79794854, 'admin', '35'),
(29, '2021-01-15', '', '-', 'Kec. Psp Tenggara Gaji Januari 2021', 0, 187005776, 'admin', '35'),
(30, '2021-01-15', '', '-', 'Kantor Kesbang dan Politik Gaji Januari 2021', 0, 122274431, 'admin', '35'),
(31, '2021-01-15', '', '-', 'Dinas Penataan Ruang dan Permukiman Gaji Januari 2021', 0, 237531046, 'admin', '35'),
(32, '2021-01-15', '', '-', 'Badan Penanggulangan Bencana Daerah Gaji Januari 2021', 0, 69136385, 'admin', '35'),
(33, '2021-01-15', '', '-', 'Badan Kepegawaian dan Pengembangan SDM Gaji Januari 2021', 0, 130599989, 'admin', '35'),
(34, '2021-01-15', '', '-', 'Dinas Lingkungan Hidup Gaji Januari 2021', 0, 241341162, 'admin', '35'),
(35, '2021-01-15', '', '-', 'Inspektorat Gaji Januari 2021', 0, 209381856, 'admin', '35'),
(36, '2021-01-15', '', '-', 'Dinas Penanaman Modal dan Pelayanan Satu Pintu Gaji Januari 2021', 0, 138200276, 'admin', '35'),
(37, '2021-01-15', '', '-', 'RSUD Gaji Januari 2021', 0, 1227269974, 'admin', '35'),
(38, '2021-01-15', '', '-', 'Kec. Psp Selatan Gaji Januari 2021', 0, 431229137, 'admin', '35'),
(39, '2021-01-15', '', '-', 'Kec. Psp Angkola Julu Gaji Januari 2021', 0, 115195670, 'admin', '35'),
(40, '2021-01-15', '', '-', 'Pot. IWP, PPh 21 & Taperum Gaji Januari 2021', 1597679303, 1597679303, 'admin', '35'),
(41, '2021-01-15', '', '-', 'JKK, JKM', 128330332, 128330332, 'admin', '35'),
(42, '2021-01-15', '', '-', 'Dinas Ketenagakerjaan Gaji Januari 2021', 0, 153801913, 'admin', '35'),
(43, '2021-01-18', '', '-', 'Kec. Psp Utara Gaji Januari 2021', 0, 576090983, 'admin', '35'),
(44, '2021-01-18', '', '-', 'Kec. Psp Hutaimbaru Gaji Januari 2021', 0, 218492059, 'admin', '35'),
(45, '2021-01-18', '', '-', 'Kec. Psp Batunadua Gaji Januari 2021', 0, 145985504, 'admin', '35'),
(46, '2021-01-18', '', '-', 'Dinas Pariwisata Gaji Januari 2021', 0, 119861960, 'admin', '35'),
(47, '2021-01-18', '', '-', 'Dinas Komunikasi dan Informatika Gaji 2021', 0, 94014403, 'admin', '35'),
(48, '2021-01-18', '', '-', 'Dinas Ketahanan Pangan Gaji Januari 2021', 0, 132301668, 'admin', '35'),
(49, '2021-01-18', '', '-', 'Dinas Perdagangan Gaji Januari 2021', 0, 189640664, 'admin', '35'),
(50, '2021-01-18', '', '-', 'Dinas Pengendalian Penduduk dan Keluarga Berencana Gaji Januari 2021', 0, 152299781, 'admin', '35'),
(51, '2021-01-18', '', '-', 'Dinas Pemberdayaan Masyarakat dan Desa Gaji Januari 2021', 0, 127105304, 'admin', '35'),
(52, '2021-01-18', '', '-', 'Dinas Pertanian Gaji Januari 2021', 0, 316341697, 'admin', '35'),
(53, '2021-01-18', '', '-', 'Dinas Pemadam Kebakaran Gaji Januari 2021', 0, 117355379, 'admin', '35'),
(54, '2021-01-18', '', '-', 'Dinas Perhubungan Gaji Januari 2021', 0, 199484397, 'admin', '35'),
(55, '2021-01-18', '', '-', 'Pemby. PPN & PPh', 269802799, 269802799, 'admin', '35'),
(56, '2021-01-19', '', '-', 'Dinas Administrasi Kependudukan dan Pencatatan Sipil Gaji Januari 2021', 0, 202682046, 'admin', '35'),
(57, '2021-01-19', '', '-', 'Pemby. PPN & PPh', 22880746, 22880746, 'admin', '35'),
(58, '2021-01-20', '', '-', 'Sekr. DPRD Gaji Januari 2021', 0, 200707775, 'admin', '35'),
(59, '2021-01-20', '', '-', 'Pemby. PPN & PPh', 22843075, 22843075, 'admin', '35'),
(60, '2021-01-29', '', '-', 'Sekrt. DPRP Gaji Pimpinan dan Anggota DPRD Januari 2021', 0, 474492015, 'admin', '35'),
(61, '2021-01-29', '', '-', 'Sekrt. DPRP Tunj. Transportasi Anggota DPRD Januari 2021', 0, 459000000, 'admin', '35'),
(62, '2021-01-29', '', '-', 'Sekrt. DPRP Tunj. Komunikasi Insentif (TKI) Pimpinan dan Anggota DPRD Januari 2021', 0, 189000000, 'admin', '35'),
(63, '2021-01-29', '', '-', 'Per. Rakyat, KP Pembayaran Uang Persediaan (UP) TA. 2021', 0, 485894000, 'admin', '35'),
(64, '2021-01-29', '', '-', 'Bakeuda Permintaan UP TA. 2021', 0, 670711000, 'admin', '35'),
(65, '2021-01-29', '', '-', 'Pemby. PPN & PPh', 153842964, 153842964, 'admin', '35'),
(66, '2021-01-29', '', '-', 'JKK, JKM', 460656, 460656, 'admin', '35');

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
(82, '-', 'PAD Perhubungan Retribusi Izin Trayek', '11', 'admin', '35');

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
  `nip_bud` varchar(128) NOT NULL,
  `nama_bud` varchar(128) NOT NULL,
  `nip_kbud` varchar(128) NOT NULL,
  `nama_kbud` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_opd`
--

INSERT INTO `tbl_opd` (`id_opd`, `nama_opd`, `nip_bud`, `nama_bud`, `nip_kbud`, `nama_kbud`) VALUES
(1, 'Dinas Pendidikan', '', '', '', ''),
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
(11, '-', '-', '35');

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
(32, '2021-02-01', 127615929126.89, 'admin', '35');

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
(17, '2021-01-31', 'D', 'Pajak Jasa Giro Yang Dipotong Bank', 53157100, 0, '');

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
  `id_opd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sk`
--

INSERT INTO `tbl_sk` (`id`, `no_sk`, `tanggal_sk`, `tanggal_skberakhir`, `nama`, `nip`, `jabatan`, `gol_jabatan`, `gol`, `id_opd`) VALUES
(1, '2/KPTS/2021', '2021-01-04', '2021-12-31', 'Sulaiman Lubis, SE', '19690501 199303 1 004', 'Pembina Utama Muda', 'IV/ c', 1, '35'),
(2, '5/KPTS/2021', '2021-01-04', '2021-03-31', 'Aswin Hasibuan, S.AP', '19820911 200312 1 008', 'Penata Tingkat I', 'III d', 2, '35'),
(3, '91/KPTS/2021', '2021-04-01', '2021-12-31', 'Asir Aryadi, SE', '19760207 200502 1 002', 'Penata Tingkat I', 'III d', 2, '35');

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
(15, '2020-12-31', '-', 'Saldo Bank Tahun Lalu', 'Saldo Bank Tahun Lalu', 104313662823.43, 0, '', '');

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
  MODIFY `id_bbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbl_bpp`
--
ALTER TABLE `tbl_bpp`
  MODIFY `id_bpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_buktipajak`
--
ALTER TABLE `tbl_buktipajak`
  MODIFY `id_buktipajak` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_selisihrekon`
--
ALTER TABLE `tbl_selisihrekon`
  MODIFY `id_selisihrekon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
