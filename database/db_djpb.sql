-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 07:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_djpb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_analisis_lk`
--

CREATE TABLE `tbl_analisis_lk` (
  `id_jawaban` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `kondisi_lk` int(11) NOT NULL,
  `seharusnya` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_analisis_lk`
--

INSERT INTO `tbl_analisis_lk` (`id_jawaban`, `id_instansi`, `id_pertanyaan`, `kondisi_lk`, `seharusnya`, `bobot`) VALUES
(1, 24, 1, 1, 'Ada', 100),
(2, 24, 2, 2, 'Ada', 0),
(3, 24, 3, 1, 'Ada', 100),
(4, 24, 4, 2, 'Ada', 0),
(5, 24, 5, 2, 'Ada', 0),
(6, 24, 6, 2, 'Ada', 0),
(7, 24, 7, 1, 'Sama', 100),
(8, 24, 8, 1, 'Tidak', 100),
(9, 24, 9, 1, 'Sama', 100),
(10, 24, 10, 1, 'Sama', 100),
(11, 24, 11, 2, 'Tidak', 0),
(12, 24, 12, 2, 'Tidak', 0),
(13, 24, 13, 1, 'Ada', 100),
(14, 24, 14, 1, 'Ada', 100),
(15, 24, 14, 1, 'Ada', 100),
(16, 24, 16, 1, 'Ada', 100),
(17, 24, 17, 1, 'Ada', 100),
(18, 24, 18, 1, 'Ada', 100),
(19, 24, 19, 1, 'Ada', 100),
(20, 24, 20, 1, 'Ada', 100),
(21, 24, 21, 1, 'Ada', 100),
(22, 24, 22, 1, 'Ada', 100),
(23, 24, 23, 1, 'Ada', 100),
(24, 24, 24, 1, 'Ada', 100),
(25, 24, 25, 1, 'Ada', 100),
(26, 24, 26, 1, 'Ada', 100),
(27, 24, 27, 1, 'Ada', 100),
(28, 24, 28, 1, 'Ada', 100),
(29, 24, 29, 1, 'Ada', 100),
(30, 24, 30, 1, 'Ada', 100),
(31, 24, 31, 1, 'Ada', 100),
(32, 24, 32, 1, 'Ada', 100),
(33, 24, 33, 1, 'Ada', 100),
(34, 24, 34, 1, 'Ada', 100),
(35, 24, 35, 1, 'Ada', 100),
(36, 24, 36, 1, 'Ada', 100),
(37, 24, 37, 1, 'Ada', 100),
(38, 24, 38, 1, 'Ada', 100),
(39, 24, 39, 1, 'Ada', 100),
(40, 24, 40, 1, 'Ada', 100),
(41, 24, 41, 1, 'Ada', 100),
(42, 24, 42, 1, 'Ada', 100),
(43, 24, 43, 1, 'Ada', 100),
(44, 24, 44, 1, 'Ada', 100),
(45, 24, 45, 1, 'Ada', 100),
(46, 24, 46, 1, 'Ada', 100),
(47, 24, 47, 1, 'Ada', 100),
(48, 24, 48, 1, 'Ada', 100),
(49, 24, 49, 1, 'Ada', 100),
(50, 24, 50, 1, 'Ada', 100),
(51, 24, 51, 1, 'Ada', 100),
(52, 24, 52, 1, 'Ada', 100),
(53, 24, 53, 1, 'Ada', 100),
(54, 24, 54, 1, 'Ada', 100),
(55, 24, 55, 1, 'Ada', 100),
(56, 24, 56, 1, 'Ada', 100),
(57, 24, 57, 1, 'Ada', 100),
(58, 24, 58, 1, 'Ada', 100),
(59, 24, 59, 1, 'Ada', 100),
(60, 24, 60, 1, 'Ada', 100),
(61, 24, 61, 1, 'Ada', 100),
(62, 24, 62, 1, 'Ada', 100),
(63, 24, 63, 1, 'Ada', 100),
(64, 24, 64, 1, 'Ada', 100),
(65, 24, 65, 1, 'Ada', 100),
(66, 24, 66, 1, 'Ada', 100),
(67, 24, 67, 1, 'Ada', 100),
(68, 24, 68, 1, 'Ada', 100),
(69, 24, 69, 1, 'Ada', 100),
(70, 24, 70, 1, 'Ada', 100),
(71, 24, 71, 1, 'Ada', 100),
(72, 24, 72, 1, 'Ada', 100),
(73, 24, 73, 1, 'Ada', 100),
(74, 24, 74, 1, 'Ada', 100),
(75, 24, 75, 1, 'Ada', 100),
(76, 24, 76, 1, 'Ada', 100),
(77, 24, 77, 1, 'Ada', 100),
(78, 24, 78, 1, 'Ada', 100),
(79, 24, 79, 1, 'Ada', 100),
(80, 24, 80, 1, 'Ada', 100),
(81, 24, 81, 1, 'Ada', 100),
(82, 24, 82, 1, 'Ada', 100),
(83, 24, 83, 1, 'Ada', 100),
(84, 24, 84, 1, 'Ada', 100),
(85, 24, 85, 1, 'Ada', 100),
(86, 24, 86, 1, 'Ada', 100),
(87, 24, 87, 1, 'Ada', 100),
(88, 24, 88, 1, 'Ada', 100),
(89, 24, 89, 1, 'Ada', 100),
(90, 24, 90, 1, 'Ada', 100),
(91, 24, 91, 1, 'Ada', 100),
(92, 24, 92, 1, 'Ada', 100),
(93, 24, 93, 1, 'Ada', 100),
(94, 24, 94, 1, 'Ada', 100),
(95, 24, 95, 1, 'Ada', 100),
(96, 24, 96, 1, 'Ada', 100),
(97, 24, 97, 1, 'Ada', 100),
(98, 24, 98, 1, 'Ada', 100),
(99, 24, 99, 1, 'Ada', 100),
(100, 24, 100, 1, 'Ada', 100),
(101, 24, 101, 1, 'Ada', 100),
(102, 24, 102, 1, 'Ada', 100),
(103, 24, 103, 1, 'Ada', 100),
(104, 24, 104, 1, 'Ada', 100),
(105, 24, 105, 1, 'Ada', 100),
(106, 24, 106, 1, 'Ada', 100),
(107, 24, 107, 1, 'Ada', 100),
(108, 24, 108, 1, 'Ada', 100),
(109, 24, 109, 1, 'Ada', 100),
(110, 24, 110, 1, 'Ada', 100),
(111, 24, 111, 1, 'Ada', 100),
(112, 24, 112, 1, 'Ada', 100),
(113, 24, 113, 1, 'Ada', 100),
(114, 24, 114, 1, 'Ada', 100),
(115, 24, 115, 1, 'Ada', 100),
(116, 24, 116, 1, 'Ada', 100),
(117, 24, 117, 1, 'Ada', 100),
(118, 24, 118, 1, 'Ada', 100),
(119, 24, 119, 1, 'Ada', 100),
(120, 24, 120, 1, 'Ada', 100),
(121, 24, 121, 1, 'Ada', 100),
(122, 24, 122, 1, 'Ada', 100),
(123, 24, 123, 1, 'Ada', 100),
(124, 24, 124, 1, 'Ada', 100),
(125, 24, 125, 1, 'Ada', 100),
(126, 24, 126, 1, 'Ada', 100),
(127, 24, 127, 1, 'Ada', 100),
(128, 24, 128, 1, 'Ada', 100),
(129, 24, 129, 1, 'Ada', 100),
(130, 24, 130, 1, 'Ada', 100),
(131, 24, 131, 1, 'Ada', 100),
(132, 24, 132, 1, 'Ada', 100),
(133, 24, 133, 1, 'Ada', 100),
(134, 24, 134, 1, 'Ada', 100),
(135, 24, 135, 1, 'Ada', 100),
(136, 24, 136, 1, 'Ada', 100),
(137, 24, 137, 1, 'Ada', 100),
(138, 24, 138, 1, 'Ada', 100),
(139, 24, 139, 1, 'Ada', 100),
(140, 24, 140, 1, 'Ada', 100),
(141, 24, 141, 1, 'Ada', 100),
(142, 24, 142, 1, 'Ada', 100),
(143, 24, 143, 1, 'Ada', 100),
(144, 24, 144, 1, 'Ada', 100),
(145, 24, 145, 1, 'Ada', 100),
(146, 24, 146, 1, 'Ada', 100),
(147, 24, 147, 1, 'Ada', 100),
(148, 24, 148, 1, 'Ada', 100),
(149, 24, 149, 1, 'Ada', 100),
(150, 24, 150, 1, 'Ada', 100),
(151, 24, 151, 1, 'Ada', 100),
(152, 24, 152, 1, 'Ada', 100),
(153, 24, 153, 1, 'Ada', 100),
(154, 24, 154, 1, 'Ada', 100),
(155, 24, 155, 1, 'Ada', 100),
(156, 24, 156, 1, 'Ada', 100),
(157, 24, 157, 1, 'Ada', 100),
(158, 24, 158, 1, 'Ada', 100),
(159, 24, 159, 1, 'Ada', 100),
(160, 24, 160, 1, 'Ada', 100),
(161, 24, 161, 1, 'Ada', 100),
(162, 24, 162, 1, 'Ada', 100),
(163, 24, 163, 1, 'Ada', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pegawai`
--

CREATE TABLE `tbl_data_pegawai` (
  `id_pegawai_satker` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `nama_pegawai_dibuat` varchar(255) NOT NULL,
  `nip_pegawai_dibuat` varchar(255) NOT NULL,
  `nama_pegawai_diverifikasi` varchar(255) NOT NULL,
  `nip_pegawai_diverifikasi` varchar(255) NOT NULL,
  `nama_pegawai_disetujui` varchar(255) NOT NULL,
  `nip_pegawai_disetujui` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_data_pegawai`
--

INSERT INTO `tbl_data_pegawai` (`id_pegawai_satker`, `id_instansi`, `nama_pegawai_dibuat`, `nip_pegawai_dibuat`, `nama_pegawai_diverifikasi`, `nip_pegawai_diverifikasi`, `nama_pegawai_disetujui`, `nip_pegawai_disetujui`) VALUES
(1, 24, 'Vera Alzena', '199810212022012001', 'Samsul Hadi', '198203252004121001', 'Andi Khairuddin', '196709291999031005'),
(2, 1, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(3, 2, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(4, 3, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(5, 4, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(6, 5, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(7, 6, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(8, 7, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(9, 8, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(10, 9, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(11, 10, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(12, 11, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(13, 12, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(14, 13, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(15, 14, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(16, 15, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(17, 16, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(18, 17, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(19, 18, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(20, 19, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(21, 20, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(22, 21, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(23, 22, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(24, 23, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(25, 25, 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(11) NOT NULL,
  `kode_instansi` varchar(255) NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `kode_ba` int(11) NOT NULL,
  `kode_eselon_1` int(11) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `jenis_kewenangan` varchar(255) NOT NULL,
  `nama_uappaw` varchar(255) NOT NULL,
  `kode_uappaw` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `kode_instansi`, `nama_instansi`, `kode_ba`, `kode_eselon_1`, `kode_satker`, `jenis_kewenangan`, `nama_uappaw`, `kode_uappaw`, `periode`) VALUES
(1, 'PTMASYARAKAT', 'Pengadilan Tinggi Kendari', 5, 1, 400540, 'kosong', 'kosong', 'kosong', 'kosong'),
(2, 'PTIMIGRASI', 'Pengadilan Tinggi Kendari', 5, 3, 400541, 'kosong', 'kosong', 'kosong', 'kosong'),
(3, 'PTAGAMAKENDARI', 'Pengadilan Tinggi Agama Kendari', 5, 4, 576254, 'kosong', 'kosong', 'kosong', 'kosong'),
(4, 'KEJATI', 'Kejaksaan Tinggi Sulawesi Tenggara', 6, 1, 8416, 'kosong', 'kosong', 'kosong', 'kosong'),
(5, 'KUMHAM1', 'Kementerian Hukum dan Hak Asasi Manusia', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(6, 'KUMHAM2', 'Kementerian Hukum dan Hak Asasi Manusia', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(7, 'KANWILDJPb', 'Kantor Wilayah Direktorat Jenderal Perbendaharaan', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(8, 'LPMP', 'Lembaga Penjaminan Mutu Pendidikan', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(9, 'KSOP', 'Kantor Kesyahbandaran dan Otoritas Pelabuhan', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(10, 'BANDARA', 'Bandara Haluoleo', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(11, 'KEMENAG1', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(12, 'KEMENAG2', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(13, 'KEMENAG3', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(14, 'KEMENAG4', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(15, 'KEMENAG5', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(16, 'KEMENAG6', 'Kementerian Agama', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(17, 'MEOHAI', 'Loka MEOHAI', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(18, 'BKSDA', 'Balai Konservasi Sumber Daya Alam', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(19, 'SKIPM', 'Stasiun Karantina Ikan, Pengendalian Mutu dan Keamanan Hasil Perikanan', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(20, 'BPJN', 'Balai Pelaksanaan Jalan Nasional', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(21, 'PEMUKIMAN', 'Pemukiman', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(22, 'BWS', 'Balai Besar Wilayah Sungai', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(23, 'UHO', 'Universitas Halu Oleo', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(24, 'BPS', 'Badan Pusat Statistik', 0, 0, 54, 'kosong', 'kosong', 'kosong', 'kosong'),
(25, 'BPN', 'Badan Pertahanan Nasional', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(26, 'POLDA', 'Bidang Keuangan Polda Sulawesi Tenggara', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(27, 'BNN', 'Badan Narkotika Nasional', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(28, 'SMM', 'Stasium Meteorologi Maritim', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong'),
(29, 'KPU', 'Komisi Pemilihan Umum', 0, 0, 0, 'kosong', 'kosong', 'kosong', 'kosong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertanyaan_analisis_lk`
--

CREATE TABLE `tbl_pertanyaan_analisis_lk` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pertanyaan_analisis_lk`
--

INSERT INTO `tbl_pertanyaan_analisis_lk` (`id_pertanyaan`, `id_sub`, `pertanyaan`) VALUES
(1, 1, 'Pernyataan Tanggung Jawab'),
(2, 1, 'LRA, Neraca, LO dan LPE face'),
(3, 1, 'Catatan atas Laporan Keuangan'),
(4, 2, 'Neraca Percobaan Akrual'),
(5, 2, 'Neraca Percobaan Kas'),
(6, 2, 'Laporan Realisasi Pendapatan dan Belanja'),
(7, 3, 'Apakah semua face laporan (LRA, LO, LPE dan Neraca) sama dengan MONSAKTI termasuk perbandingan dengan tahun 2021?'),
(8, 4, 'Adakah Satker Neracanya tidak balance? '),
(9, 5, 'Apakah Nilai \"Surplus/(Defisit)-LO\" di LO = Nilai \"Surplus/ (Defisit) - LO\" di LPE'),
(10, 5, 'Apakah Saldo \"Ekuitas Akhir\" di LPE = \"Saldo Ekuitas\" di Neraca'),
(11, 6, 'Adakah akun dengan uraian \"null\" atau \"uraian tidak ada\" ? '),
(12, 6, 'Adakah \"Saldo Tidak normal\"? '),
(13, 7, 'Adakah akun Aset (1xxxxx) yang semestinya tidak terdapat di K/L tersebut, misal Persediaan Amunisi yang ada di Kementerian Kesehatan, atau persediaan Bansos di LIPI, atau Piutang BLU layanan Kesehatan di Kemenristek Dikti.'),
(14, 7, 'Adakah Akun 1111xx hingga 1115xx? (Kas Setara Kas yang boleh ada di KL hanya Akun dari 1116xx hingga 1119xx, selainnya adalah akun BUN)'),
(15, 8, 'Akun 114113/4/6/7 Belanja Pembayaran Bunga/Lain-lain/Hibah/Subsidi dibayar dimuka (prepaid)'),
(16, 8, 'Akun 114214/5/6/8 Uang Muka Belanja Bunga/Subsidi/ Hibah/Lain-lain'),
(17, 9, 'Akun 212114/6/9 Belanja Hibah/Utang/Lain-lain Yang Masih Harus Dibayar'),
(18, 10, 'Adakah saldo 218211-Hibah langsung yang belum disahkan pada awal tahun? (Cek di Neraca Percobaan saldo awal)'),
(19, 10, 'Apabila terdapat Saldo Awal Akun 218211, Apakah Nilainya sama dengan Akun 391133-Pengesahan Hibah Langsung TAYL pada akhir tahun 2021? (untuk mengecek akun 391133, Cetak di Neraca Percobaan Tahunan 2021)'),
(20, 10, 'Jika saldo awal akun 218211 tidak sama saldo akun 391133 di akhir tahun, apakah terdapat Hibah TAYL yang belum disahkan?'),
(21, 10, 'Jika ada akun 111827-Kas Lainnya dari Hibah Yang Belum disahkan, apakah nilainya ≤ akun 218211 ?'),
(22, 11, 'Adakah akun 391117-Penyesuaian Nilai Persediaan'),
(23, 11, 'Adakah akun 391121-Ekuitas Transaksi Lainnya Kec. Di RRI, TVRI dan POLRI'),
(24, 11, 'Adakah Saldo akun 391114-Revaluasi Aset Tetap'),
(25, 11, 'Adakah Saldo akun 391151-Koreksi atas Reklasifikasi Persediaan/Aset Tetap/Aset Lainnya'),
(26, 11, 'Jika ada, Apakah Saldo akun 391151-Koreksi atas Reklasifikasi Persediaan/Aset Tetap/Aset Lainnya berasal dari transaksi reklasifikasi Aset Tetap /Aset Lainnya dengan masa manfaat yang berbeda dan/atau reklasifikasi persediaan menjadi aset ekstrakomptabel '),
(27, 11, 'Apakah Saldo akun 391131-Pengesahan Hibah Langsung ≥ akun 111822-Kas Lainnya di Kementerian Negara/ Lembaga dari Hibah'),
(28, 12, 'Nilai absolut selisih Transfer Keluar dan Transfer Masuk '),
(29, 12, 'Nilai selisih TK/TM secara Neto/Akun TK dikurang TM di Neraca Percobaan'),
(30, 13, 'Adakah akun 41xxxx-Pendapatan Perpajakan kecuali BA.015.04 ?'),
(31, 14, 'Adakah akun 423xxx'),
(32, 14, 'Adakah akun 421xxx khusus BUN? Yaitu 421111, 421211, 421621'),
(33, 14, 'Adakah akun 422xxx khusus BUN? Yaitu 4221xx'),
(34, 14, 'Adakah akun 425xxx khusus BUN? Antara lain 425143, 425144, 425161, 425162, 425745, 425772, 425773, 425774, 425815, 425816, 425998'),
(35, 15, 'Adakah Akun 425914/5/6/8/9 Penerimaan kembali belanja Kewajiban Utang/Subsidi/hibah/ lain-lain/transfer TAYL'),
(36, 16, 'Adakah akun yang tidak normal keberadaannya?, misalnya pendapatan SIM/STNK/ Kejaksaan terdapat pada Kementerian Kesehatan'),
(37, 16, 'Adakah akun 425719-Pendapatan Bunga Lainnya Di KL? seharusnya 425764-Pendapatan Jasa Lembaga Keuangan (Jasa Giro)'),
(38, 17, 'Adakah akun 43xxxx-Pendapatan Hibah'),
(39, 18, 'Apakah ada akun 491429-Pendapatan Perolehan Aset Lainnya?'),
(40, 18, 'Jika ada, apakah benar? (Bukan karena salah pilih menu dalam aplikasi atau salah kode akun saat menjurnal?'),
(41, 19, 'Adakah akun 54/55/56/57xxxx (Beban Bunga, Subsidi, Hibah, lain-lain) ?'),
(42, 20, 'Adakah akun \"Kas dan Bank BLU Belum Disahkan\"'),
(43, 20, 'Apakah terdapat selisih transaksi resiprokal pada Aplikasi MONSAKTI ? (cek pada MONSAKTI pada menu Monitoring Lainnya, Rekap Resiprokal)'),
(44, 21, 'Adakah akun 424xxx-Pendapatan BLU'),
(45, 21, 'Adakah akun 525xxx (Belanja Barang dan Jasa BLU)'),
(46, 21, 'Adakah akun 527xxx (Belanja Modal BLU)'),
(47, 22, 'Isi kolom di sebelah kanan saldo akun 491511'),
(48, 22, 'Isi kolom di sebelah kanan saldo akun 593311'),
(49, 22, 'Isi kolom di sebelah kanan hasil dari akun 491511 dikurangi akun 593311'),
(50, 22, 'Apakah nilai angka 1, 2, dan 3 diatas normal ? Tidak terlalu besar atau terlalu kecil?'),
(51, 23, 'Adakah akun 491511/593311 yang berasal dari transaksi Reklas Keluar (K10)/Reklas Masuk(M07)'),
(52, 22, 'Apakah terdapat pengeluaran belanja untuk Penanganan Pandemi Covid-19?'),
(53, 22, 'Apabila terdapat pengeluaran belanja dalam rangka Penanganan Pandemi Covid-19, apakah belanja tersebut sudah menggunakan kode akun khusus untuk Penanganan Pandemi Covid-19?'),
(54, 23, 'Adakah pendapatan Perpajakan (Kecuali BA.015)'),
(55, 23, 'Adakah pendapatan Hibah'),
(56, 23, 'Adakah beban bunga'),
(57, 23, 'Adakah beban subsidi'),
(58, 23, 'Adakah beban hibah'),
(59, 23, 'Adakah beban transfer'),
(60, 23, 'Adakah beban lain-lain'),
(61, 24, 'Adakah akun \"null\" atau tidak ada uraiannya (saldo akun \"null\" biasanya disebabkan karena belum dilakukan update aplikasi)'),
(62, 24, 'Apakah seluruh akun bernilai positif, kecuali Beban Penyisihan Piutang'),
(63, 25, 'Saldo Awal Penyisihan Piutang (Jk.Pendek dan Jk.Panjang) - Saldo Akhir Penyisihan Piutang (Jk.Pendek dan Jk.Panjang)= Beban Penyisihan Piutang LO'),
(64, 26, 'Apakah ada saldo pos \"Selisih Revaluasi Aset\"'),
(65, 26, 'Pada LPE, apakah \"Ekuitas Awal\" + \"Kenaikan/Penurunan Ekuitas\" = \"Ekuitas Akhir\"'),
(66, 27, 'Apakah terdapat pengungkapan yang memadai atas akun koreksi dimaksud ?'),
(67, 28, 'Apakah Kas Di Bendahara Pengeluaran = Uang Muka dari KPPN'),
(68, 28, 'Apakah ada Penjurnalan akun \"Belum Diregister\" yang dipasangkan dengan beban ?'),
(69, 28, 'Dari kolom perbandingan antara 31 Desember 2021 dengan 31 Desember 2020 adakah Kenaikan/ Penurunan nilai per pos Neraca yang tidak wajar (terlalu tinggi/rendah) tanpa penjelasan?'),
(70, 28, 'Normalnya total ASET akan naik dibanding Audited 2020, Apakah demikian?'),
(71, 29, 'Apakah Saldo Kas di Bendahara Pengeluaran = LPJ Bendahara dan Aplikasi Silabi ?'),
(72, 30, 'Ada Akun Piutang/Piutang TP/Piutang TGR (Neraca) maka akan ada akun:'),
(73, 30, 'Penyisihan Piutang/Penyisihan Bagian Lancar TP/TGR/Penyisihan TP/TGR (Neraca)'),
(74, 30, 'Beban Penyisihan Piutang (di LO)'),
(75, 31, 'Ada akun Piutang Jangka Panjang (TP/TGR/Lainnya) maka akan ada akun:'),
(76, 31, 'Bagian Lancar Piutang Jangka Panjang'),
(77, 32, 'Ada persediaan (Neraca) maka akan ada akun:'),
(78, 32, 'Beban Persediaan (di LO)'),
(79, 32, '491511-Pendapatan Penyesuaian Persediaan di Neraca Percobaan'),
(80, 32, '593311-Beban Penyesuaian Persediaan di Neraca Percobaan'),
(81, 33, 'Ada Aset Tetap/Aset Lainnya (Neraca) maka akan ada akun:'),
(82, 33, 'Akumulasi AT/AL (Neraca)'),
(83, 33, 'Beban Penyusutan/Amortisasi (di LO)'),
(84, 34, 'Adakah beban barang diserahkan ke Masyarakat?'),
(85, 34, 'Jika Ya, adakah realisasi akun 526xxx pada neraca percobaan kas ?'),
(86, 34, 'Adakah beban bansos?'),
(87, 34, 'Jika Ya, adakah realisasi akun 57xxxx pada neraca percobaan kas ?'),
(88, 35, 'Adakah realisasi pendapatan Sewa di Neraca Percobaan Kas (425131/2/3 atau 42492x)?'),
(89, 35, 'Adakah akun 219211-Pendapatan sewa diterima Dimuka pada Neraca ?'),
(90, 35, 'Adakah realisasi 522141-Belanja Sewa di Neraca Percobaan Kas ?'),
(91, 35, 'Adakah belanja Barang dibayar dimuka pada Neraca'),
(92, 35, 'Adakah realisasi belanja Jasa Listrik/telepon/air di Neraca Percobaan Kas (522111/2/3/9) ?'),
(93, 35, 'Ada Belanja Barang yang masih harus dibayar pada Neraca'),
(94, 36, 'Apakah ada selisih Saldo pada Rekon Internal Sawal di Monsakti?'),
(95, 36, 'Apakah ada selisih Saldo pada Rekon Internal Bulan Desember 2021 di Monsakti?'),
(96, 36, 'Apakah menurut Monsakti terdapat Jurnal Tidak lazim (menu Daftar >> Jurnal Tidak Lazim) yaitu jurnal dengan akun Persediaan/Aset yang seharusnya hanya kiriman dari Aplikasi SIMAK ?'),
(97, 36, 'Jika ada, apakah jurnal tersebut telah benar?'),
(98, 37, 'Apakah terdapat transaksi BMN yang terkena validasi pada Aplikasi Monsakti yang meliputi , Nilai Perolehan Minus, Nilai Buku Minus dll. (Masuk ke Aplikasi Monsakti, kemudian pilih \"daftar BMN\")'),
(99, 38, 'Adakah Nilai Perolehan Minus (Intrakomptabel)?'),
(100, 38, 'Berapa NUP BMN dengan Nilai Perolehan Minus? (diisi jumlah NUP)'),
(101, 38, 'Berapa Total Nilai BMN dengan Nilai Perolehan Minus? (diisi nilai rupiahnya)'),
(102, 38, 'Adakah Nilai Bukua Minus (Intrakomptabel)?'),
(103, 38, 'Berapa NUP BMN dengan Nilai Perolehan Minus? (diisi jumlah NUP)'),
(104, 38, 'Berapa Total Nilai BMN dengan Nilai Perolehan Minus? (diisi nilai rupiahnya)'),
(105, 39, 'Adakah Pagu Minus? (Cek melalui Monsakti menu daftar >> pagu minus\")'),
(106, 39, 'Adakah uraian jenis belanja \"tidak ada\" pada Neraca Percobaan Kas?'),
(107, 40, 'Adakah TDK Belanja Netto baik di Satker Aktif, Tidak Aktif Bersaldo dan tidak aktif tidak bersaldo'),
(108, 40, 'Adakah TDK Pendapatan Netto di Satker Aktif, Tidak Aktif dan tidak aktif bersaldo ?'),
(109, 40, 'Adakah TDK Pendapatan MPHL-BJS'),
(110, 40, 'Adakah TDK Kas di Bendahara BLU baik di Satker Aktif, Tidak Aktif Bersaldo dan tidak aktif tidak bersaldo'),
(111, 40, 'Adakah TDK Kas di Bendahara Pengeluaran baik di Satker Aktif, Tidak Aktif Bersaldo dan tidak aktif tidak bersaldo'),
(112, 40, 'Adakah TDK Kas Hibah baik di Satker Aktif, Tidak Aktif Bersaldo dan tidak aktif tidak bersaldo'),
(113, 41, 'Apakah Jurnal tahun 2020 telah diselesaikan (Dinihilkan) ?'),
(114, 41, 'Apakah telah dilakukan Jurnal Take-In Reval dengan benar ?'),
(115, 42, 'Apakah sudah dibuat Berita Acara Stock Opname Persediaan ?'),
(116, 42, 'Apakah semua jurnal manual di SAIBA telah dibuatkan Memo Penyesuaian beserta dokumen pendukung terkait?'),
(117, 42, 'Masih adakah kesalahan akun belanja Persediaan'),
(118, 42, 'Apakah PNBP telah disetor tepat pada waktunya (tidak terlambat)'),
(119, 42, 'Adakan PNBP digunakan langsung?'),
(120, 42, 'Apakah seluruh pendapatan dan Belanja BLU telah disahkan (di-SP3B-BLUkan)?'),
(121, 42, 'Apakah seluruh hibah langsung telah disahkan (di-SP2HL-kan)?'),
(122, 42, '....................................'),
(123, 43, 'Rincian yang ada di CALK sama dengan LKKL (Neraca Percobaan)'),
(124, 44, 'Apakah pengungkapan Revaluasi BMN telah sesuai baik pada Penjelasan Umum, LO, LPE dan Neraca ?'),
(125, 44, 'Apakah pengungkapan dan ikhtisar Transaksi yang bersumber dari PHLN telah secara memadai sesuai format ?'),
(126, 44, 'Apakah pengungkapan KDP telah sesuai?'),
(127, 44, 'Apakah ada penjelasan akun \"Dana Yang Dibatasi Penggunaannya\" ?'),
(128, 44, 'Apakah terdapat penjelasan akun Hibah Langsung yang Belum Disahkan ?'),
(129, 44, 'Apakah format dan penjelasan akun-akun LPE telah sesuai? Terutama penjelasan akun Koreksi?'),
(130, 44, 'Apakah belanja dalam rangkan penanganan Pandemi Covid-19 telah dijelaskan dalam CaLK?'),
(131, 45, 'Apakah Realisasi Belanja 51 + 525111 = Beban Pegawai pada Laporan Operasional'),
(132, 45, 'Apakah realisasi belanja 53 = (Pembelian Aset Tetap+Perolehan KDP+Pengembangan KDP)-Hibah Langsung Barang'),
(133, 45, 'Apakah Beban Penyusutan/Amortisasi = Akumulasi Penyusutan/Amortisasi 2021 - Saldo Awal Penyusutan/Amortisasi 2021'),
(134, 45, 'Apakah Beban Persediaan = Saldo Awal + Pembelian - Saldo Akhir (rumus perhitungan beban persediaan terlampir)'),
(135, 46, 'Apakah terdapat pengungkapan atas Refocussing kegiatan/Realokasi anggaran/Revisi DIPA terkait penanganan Pandemi Covid-19'),
(136, 46, 'Jika terdapat Refocussing kegiatan/Realokasi anggaran/Revisi DIPA terkait penanganan Pandemi Covid-19, berapa nominal perubahannya (kenaikan/penurunan) pada total anggaran K/L'),
(137, 46, 'Apakah terdapat pengungkapan atas perubahan Estimasi Pendapatan (Pajak dan/atau PNBP) sebagai dampak Pandemi Covid-19'),
(138, 46, 'Apakah terdapat pengungkapan atas realisasi Pendapatan (Pajak dan/atau PNBP) khususnya sebagai dampak Pandemi Covid-19'),
(139, 46, 'Apakah terdapat pengungkapan atas realisasi Belanja dalam rangka penanganan pandemi Covid-19 dengan menggunakan akun Non penanganan pandemi Covid-19'),
(140, 46, 'Apakah terdapat pengungkapan atas realisasi Belanja dalam rangka penanganan pandemi Covid-19 dengan menggunakan akun penanganan pandemi Covid-19'),
(141, 47, 'Apakah terdapat pengungkapan atas perubahan Realisasi Pendapatan - LO (Pajak dan/atau PNBP) sebagai dampak Pandemi Covid-19'),
(142, 47, 'Apakah terdapat pengungkapan atas realisasi Beban dalam rangka penanganan pandemi Covid-19 dengan menggunakan akun Non penanganan pandemi Covid-19'),
(143, 47, 'Apakah terdapat pengungkapan atas realisasi Beban dalam rangka penanganan pandemi Covid-19 dengan menggunakan akun penanganan pandemi Covid-19'),
(144, 48, 'Apakah terdapat pengungkapan atas Transaksi Antar Entitas berupa Transfer Masuk – Transfer Keluar, dapat berupa pengiriman barang persediaan, peralatan dan mesin berupa alat kesehatan, dan/atau jenis-jenis BMN lainnya yang spesifik untuk penanganan pandem'),
(155, 48, 'Apakah terdapat pengungkapan atas realisasi pengesahan hibah langsung baik berupa uang, barang, maupun jasa yang diterima oleh K/L dalam rangka penanganan pandemi COVID-19'),
(156, 49, 'Apakah terdapat pengungkapan atas Pos Aset, antara lain :'),
(157, 49, 'Kenaikan/penurunan Piutang sebagai dampak pandemi Covid-19'),
(158, 49, 'Kenaikan/penurunan Persediaan sebagai dampak pandemi Covid-19'),
(159, 49, 'Kenaikan/penurunan KDP sebagai dampak pandemi Covid-19'),
(160, 49, 'Kenaikan/penurunan pos aset yang lain, sebutkan ……………….'),
(161, 49, 'Apakah terdapat pengungkapan atas Pos Kewajiban, antara lain :'),
(162, 49, 'Kenaikan/penurunan Utang kepada pihak ketiga sebagai dampak pandemi Covid-19'),
(163, 49, 'Kenaikan/penurunan Hibah yang belum disahkan sebagai dampak pandemi Covid-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sheet`
--

CREATE TABLE `tbl_sheet` (
  `id_sheet` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `sheet` varchar(255) NOT NULL,
  `total_skor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sheet`
--

INSERT INTO `tbl_sheet` (`id_sheet`, `id_instansi`, `sheet`, `total_skor`) VALUES
(1, 24, 'Analisis LK', 6.66667);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_pertanyaan_analisis_lk`
--

CREATE TABLE `tbl_sub_pertanyaan_analisis_lk` (
  `id_sub` int(11) NOT NULL,
  `id_sub_sub_pertanyaan` int(11) NOT NULL,
  `sub_pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_pertanyaan_analisis_lk`
--

INSERT INTO `tbl_sub_pertanyaan_analisis_lk` (`id_sub`, `id_sub_sub_pertanyaan`, `sub_pertanyaan`) VALUES
(1, 1, 'Kelengkapan Komponen Laporan Keuangan Pokok (Hardcopy)'),
(2, 1, 'Laporan Keuangan Tambahan'),
(3, 2, 'Kesesuaian Laporan Hardcopy Dengan Monsakti'),
(4, 3, 'Neraca Balance'),
(5, 3, 'Saldo antar Laporan'),
(6, 4, 'Pengecekan Saldo Yang Tidak Normal Dan Tidak Ada Referensinya'),
(7, 4, 'Akun Aset (1xxxxx)'),
(8, 4, 'Akun Dibayar dimuka (prepaid) dan Uang Muka Belanja Khusus BUN (Transaksi Hibah, Bunga, Subsidi, Lain-lain, dan Transfer merupakan Transaksi BUN)'),
(9, 4, 'Akun Kewajiban (2xxxxx)'),
(10, 4, 'Telaah Akun Hibah Langsung Yang Belum Disahkan (akun 218211)'),
(11, 4, 'Akun Ekuitas (3xxxxx)'),
(12, 4, 'Akun 313221-Transfer Masuk (TM) dan akun 313211-Transfer Keluar (TK)'),
(13, 4, 'Akun Pendapatan Perpajakan (41xxxx)'),
(14, 4, 'Ketepatan penggunaan Akun PNBP Baru (Kepdirjen 211/PB/2018 BAS)'),
(15, 4, 'Akun Penerimaan Kembali Belanja Khusus BUN'),
(16, 4, 'Pengecekan akun yang tidak sesuai karasteristik tupoksi entitas'),
(17, 4, 'Akun Pendapatan Hibah (43xxxx)'),
(18, 4, 'Telaah Akun 491429 (Pendapatan Perolehan Aset Lainnya)'),
(19, 4, 'Akun Belanja (5xxxxx)'),
(20, 4, 'Telaah Terkait BLU'),
(21, 4, 'Jika Tidak Memiliki Satker BLU '),
(22, 4, 'Telaah Akun 491511-Pendapatan Penyesuaian Nilai Persediaan dan 593311 Beban Penyesuaian Nilai Persediaan'),
(23, 5, 'Pengecekan Pos/Akun yang tidak boleh ada'),
(24, 5, 'Pengecekan saldo Normal'),
(25, 5, 'Kebenaran Beban Penyisihan Piutang sesuai Perdirjen 43/2015'),
(26, 6, 'Laporan Perubahan Ekuitas'),
(27, 6, 'Pengecekan akun koreksi (Cek seluruh akun koreksi yaitu 391113, 391114, 391116, 391118 dan 391119)'),
(28, 7, 'Neraca'),
(29, 8, 'Pengecekan Saldo Kas di Bendahra Pengeluaran'),
(30, 8, 'Pengecekan telah melakukan penyisihan piutang'),
(31, 8, 'Pengecekan telah melakukan reklasifikasi piutang jk. Panjang'),
(32, 8, 'Pengecekan persediaan'),
(33, 8, 'Pengecekan penyusutan aset tetap'),
(34, 8, 'Pengecekan Beban Diserahkan ke Masyarakat & Beban Bansos'),
(35, 8, 'Pengecekan Jurnal Akrual'),
(36, 9, 'Rekon Internal LKKL dengan L-BMN'),
(37, 9, 'Validasi Transaksi BMN Pada Aplikasi e-Rekon'),
(38, 9, 'Menu Daftar BMN'),
(39, 10, 'Laporan Realisasi Anggaran'),
(40, 10, 'Pengecekan TDK'),
(41, 11, 'Satker Konsolidasian'),
(42, 11, 'Pertanyaan berdasarkan temuan-temuan BPK tahun-tahun lalu (Disesuaikan dengan kondisi masing-masing satker)'),
(43, 12, 'Kesesuaian antara Face Laporan dan CaLK'),
(44, 12, 'Kecukupan pengungkapan pada CaLK (Bila akun tsb ada)'),
(45, 13, 'Analisis Laporan Keuangan Lainnya'),
(46, 13, 'Kecukupan pengungkapan pada CaLK - LRA'),
(47, 13, 'Kecukupan pengungkapan pada CaLK - Laporan Operasional'),
(48, 13, 'Kecukupan pengungkapan pada CaLK - Laporan Perubahan Ekuitas'),
(49, 13, 'Kecukupan pengungkapan pada CaLK - Neraca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_sub_pertanyaan_analisis_lk`
--

CREATE TABLE `tbl_sub_sub_pertanyaan_analisis_lk` (
  `id_sub_sub_pertanyaan` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `sub_sub_pertanyaan` varchar(255) NOT NULL,
  `nilai` float NOT NULL,
  `persen` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_sub_pertanyaan_analisis_lk`
--

INSERT INTO `tbl_sub_sub_pertanyaan_analisis_lk` (`id_sub_sub_pertanyaan`, `id_instansi`, `sub_sub_pertanyaan`, `nilai`, `persen`) VALUES
(1, 24, 'Kelengkapan Laporan Keuangan', 1.66666, 5),
(2, 24, 'Kesesuaian Laporan Hardcopy Dengan Monsakti', 5, 5),
(3, 24, 'Kesesuaian Dengan Persamaan Dasar Akuntansi', 0, 5),
(4, 24, 'Neraca Percobaan Akruan', 0, 15),
(5, 24, 'Laporan Operasional', 0, 10),
(6, 24, 'Laporan Perubahan Ekuitas', 0, 5),
(7, 24, 'Neraca', 0, 10),
(8, 24, 'Telaah Antar Laporan Keuangan', 0, 10),
(9, 24, 'Kesesuaian Dengan L-BMN', 0, 10),
(10, 24, 'Laporan Realisasi Anggaran', 0, 10),
(11, 24, 'SATKONS dan Pengawasan Temuan BPK Tahun-Tahun Sebelumnya', 0, 5),
(12, 24, 'Catatan Atas Laporan Keuangan', 0, 5),
(13, 24, 'Analisis Lainnya', 0, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_analisis_lk`
--
ALTER TABLE `tbl_analisis_lk`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `tbl_data_pegawai`
--
ALTER TABLE `tbl_data_pegawai`
  ADD PRIMARY KEY (`id_pegawai_satker`),
  ADD KEY `id_instansi` (`id_instansi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_pertanyaan_analisis_lk`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `id_sub` (`id_sub`);

--
-- Indexes for table `tbl_sheet`
--
ALTER TABLE `tbl_sheet`
  ADD PRIMARY KEY (`id_sheet`),
  ADD KEY `id_instansi` (`id_instansi`);

--
-- Indexes for table `tbl_sub_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_sub_pertanyaan_analisis_lk`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_sub_sub_pertanyaan` (`id_sub_sub_pertanyaan`);

--
-- Indexes for table `tbl_sub_sub_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_sub_sub_pertanyaan_analisis_lk`
  ADD PRIMARY KEY (`id_sub_sub_pertanyaan`),
  ADD KEY `id_instansi` (`id_instansi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_analisis_lk`
--
ALTER TABLE `tbl_analisis_lk`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_data_pegawai`
--
ALTER TABLE `tbl_data_pegawai`
  MODIFY `id_pegawai_satker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_pertanyaan_analisis_lk`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_sheet`
--
ALTER TABLE `tbl_sheet`
  MODIFY `id_sheet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sub_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_sub_pertanyaan_analisis_lk`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_sub_sub_pertanyaan_analisis_lk`
--
ALTER TABLE `tbl_sub_sub_pertanyaan_analisis_lk`
  MODIFY `id_sub_sub_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
