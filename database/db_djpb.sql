-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 02:13 PM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `tbl_analisis_lk`
--

CREATE TABLE `tbl_analisis_lk` (
  `id_jawaban` int(11) NOT NULL,
  `kode_satker` varchar(255) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `kondisi_lk` int(11) NOT NULL,
  `seharusnya` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_analisis_lk`
--

INSERT INTO `tbl_analisis_lk` (`id_jawaban`, `kode_satker`, `id_pertanyaan`, `kondisi_lk`, `seharusnya`, `bobot`, `disabled`) VALUES
(1, '429068', 1, 1, 'Ada', 100, 0),
(2, '429068', 2, 1, 'Ada', 100, 0),
(3, '429068', 3, 1, 'Ada', 100, 0),
(4, '429068', 4, 1, 'Ada', 100, 0),
(5, '429068', 5, 1, 'Ada', 100, 0),
(6, '429068', 6, 1, 'Ada', 100, 0),
(7, '429068', 7, 1, 'Sama', 100, 0),
(8, '429068', 8, 1, 'Tidak', 100, 0),
(9, '429068', 9, 1, 'Sama', 100, 0),
(10, '429068', 10, 1, 'Sama', 100, 0),
(11, '429068', 11, 2, 'Tidak', 0, 0),
(12, '429068', 12, 2, 'Tidak', 0, 0),
(13, '429068', 13, 1, 'Tidak', 100, 0),
(14, '429068', 14, 1, 'Tidak', 100, 0),
(15, '429068', 15, 1, 'Tidak', 100, 0),
(16, '429068', 16, 1, 'Ada', 100, 0),
(17, '429068', 17, 1, 'Ada', 100, 0),
(18, '429068', 18, 2, 'Ya/Tidak', 0, 0),
(19, '429068', 19, 1, 'Ya', 100, 0),
(20, '429068', 20, 1, 'Tidak', 100, 0),
(21, '429068', 21, 1, 'Ya', 100, 0),
(22, '429068', 22, 1, 'Tidak', 100, 0),
(23, '429068', 23, 1, 'Tidak', 100, 0),
(24, '429068', 24, 2, 'Ya', 0, 0),
(25, '429068', 25, 1, 'Ada/Tidak', 100, 0),
(26, '429068', 26, 1, 'Ya', 100, 0),
(27, '429068', 27, 2, 'Ya', 0, 0),
(28, '429068', 28, 1, 'Ada', 100, 1),
(29, '429068', 29, 1, 'Ada', 100, 1),
(30, '429068', 30, 1, 'Tidak', 100, 0),
(31, '429068', 31, 1, 'Tidak', 100, 0),
(32, '429068', 32, 1, 'Tidak', 100, 0),
(33, '429068', 33, 1, 'Tidak', 100, 0),
(34, '429068', 34, 1, 'Tidak', 100, 0),
(35, '429068', 35, 1, 'Tidak', 100, 0),
(36, '429068', 36, 1, 'Tidak', 100, 0),
(37, '429068', 37, 1, 'Tidak', 100, 0),
(38, '429068', 38, 1, 'Tidak', 100, 0),
(39, '429068', 39, 1, 'Ya/Tidak', 100, 1),
(40, '429068', 40, 1, 'Ya/Tidak', 100, 1),
(41, '429068', 41, 1, 'Tidak', 100, 0),
(42, '429068', 42, 1, 'Tidak', 100, 0),
(43, '429068', 43, 1, 'Tidak', 100, 0),
(44, '429068', 44, 1, 'Tidak', 100, 0),
(45, '429068', 45, 1, 'Tidak', 100, 0),
(46, '429068', 46, 1, 'Tidak', 100, 0),
(47, '429068', 47, 1, 'Ada', 100, 1),
(48, '429068', 48, 1, 'Ada', 100, 1),
(49, '429068', 49, 1, 'Ada', 100, 1),
(50, '429068', 50, 1, 'Tidak', 0, 0),
(51, '429068', 51, 1, 'Tidak', 100, 0),
(52, '429068', 52, 1, 'Ya/Tidak', 100, 1),
(53, '429068', 53, 1, 'Ya', 100, 0),
(54, '429068', 54, 1, 'Tidak', 100, 0),
(55, '429068', 55, 1, 'Tidak', 100, 0),
(56, '429068', 56, 1, 'Tidak', 100, 0),
(57, '429068', 57, 1, 'Tidak', 100, 0),
(58, '429068', 58, 1, 'Tidak', 100, 0),
(59, '429068', 59, 1, 'Tidak', 100, 0),
(60, '429068', 60, 1, 'Tidak', 100, 0),
(61, '429068', 61, 1, 'Tidak', 100, 0),
(62, '429068', 62, 1, 'Ya', 100, 0),
(63, '429068', 63, 1, 'Ya', 100, 0),
(64, '429068', 64, 1, 'Tidak', 100, 0),
(65, '429068', 65, 1, 'Sama', 100, 0),
(66, '429068', 66, 1, 'Ya', 100, 0),
(67, '429068', 67, 1, 'Ya', 100, 0),
(68, '429068', 68, 1, 'Tidak', 100, 0),
(69, '429068', 69, 1, 'Tidak', 100, 0),
(70, '429068', 70, 1, 'Ya', 100, 0),
(71, '429068', 71, 2, 'Ya', 0, 0),
(72, '429068', 72, 1, 'Ada/Tidak', 100, 1),
(73, '429068', 73, 1, 'Ada', 100, 0),
(74, '429068', 74, 2, 'Ada', 0, 0),
(75, '429068', 75, 2, 'Ada/Tidak', 100, 1),
(76, '429068', 76, 2, 'Ada', 0, 0),
(77, '429068', 77, 1, 'Ada/Tidak', 100, 1),
(78, '429068', 78, 1, 'Ada', 100, 0),
(79, '429068', 79, 2, 'Ada/Tidak', 0, 0),
(80, '429068', 80, 2, 'Ada/Tidak', 0, 0),
(81, '429068', 81, 1, 'Ada/Tidak', 100, 1),
(82, '429068', 82, 1, 'Ada', 100, 0),
(83, '429068', 83, 1, 'Ada', 100, 0),
(84, '429068', 84, 2, 'Ya/Tidak', 100, 1),
(85, '429068', 85, 2, 'Ya', 0, 0),
(86, '429068', 86, 2, 'Ya/Tidak', 100, 1),
(87, '429068', 87, 2, 'Ya', 0, 0),
(88, '429068', 88, 1, 'Ada/Tidak', 100, 0),
(89, '429068', 89, 2, 'Ada/Tidak', 0, 1),
(90, '429068', 90, 1, 'Ada/Tidak', 100, 1),
(91, '429068', 91, 2, 'Ada/Tidak', 0, 1),
(92, '429068', 92, 1, 'Ada/Tidak', 100, 1),
(93, '429068', 93, 1, 'Ada', 100, 0),
(94, '429068', 94, 1, 'Tidak', 100, 0),
(95, '429068', 95, 1, 'Tidak', 100, 0),
(96, '429068', 96, 1, 'Tidak', 100, 0),
(97, '429068', 97, 1, 'Ya', 100, 0),
(98, '429068', 98, 1, 'Ada', 100, 1),
(99, '429068', 99, 1, 'Tidak', 100, 0),
(100, '429068', 100, 1, 'Ada', 100, 1),
(101, '429068', 101, 1, 'Ada', 100, 1),
(102, '429068', 102, 1, 'Tidak', 100, 0),
(103, '429068', 103, 1, 'Ada', 100, 1),
(104, '429068', 104, 1, 'Ada', 100, 1),
(105, '429068', 105, 2, 'Tidak', 0, 0),
(106, '429068', 106, 1, 'Tidak', 100, 0),
(107, '429068', 107, 1, 'Tidak', 100, 0),
(108, '429068', 108, 1, 'Tidak', 100, 0),
(109, '429068', 109, 1, 'Tidak', 100, 0),
(110, '429068', 110, 1, 'Tidak', 100, 0),
(111, '429068', 111, 1, 'Tidak', 100, 0),
(112, '429068', 112, 1, 'Tidak', 100, 0),
(113, '429068', 113, 1, 'Ada', 100, 1),
(114, '429068', 114, 1, 'Ada', 100, 1),
(115, '429068', 115, 1, 'Ya', 100, 0),
(116, '429068', 116, 1, 'Ya', 100, 0),
(117, '429068', 117, 1, 'Tidak', 100, 0),
(118, '429068', 118, 1, 'Ya', 100, 0),
(119, '429068', 119, 1, 'Tidak', 100, 0),
(120, '429068', 120, 1, 'Ya', 100, 0),
(121, '429068', 121, 1, 'Ya', 100, 0),
(122, '429068', 122, 2, 'Ya', 0, 0),
(123, '429068', 123, 1, 'Sama', 100, 0),
(124, '429068', 124, 1, 'Ya', 100, 0),
(125, '429068', 125, 2, 'Ya', 0, 0),
(126, '429068', 126, 1, 'Ya', 100, 0),
(127, '429068', 127, 1, 'Ada', 100, 0),
(128, '429068', 128, 1, 'Ya', 100, 0),
(129, '429068', 129, 1, 'Ya', 100, 0),
(130, '429068', 130, 1, 'Ya', 100, 0),
(131, '429068', 131, 1, 'Ya', 100, 0),
(132, '429068', 132, 1, 'Ya', 100, 0),
(133, '429068', 133, 1, 'Ya', 100, 0),
(134, '429068', 134, 1, 'Ya', 100, 0),
(135, '429068', 135, 2, 'Ada', 0, 0),
(136, '429068', 136, 2, 'Ada', 0, 1),
(137, '429068', 137, 2, 'Ada', 0, 0),
(138, '429068', 138, 2, 'Ada', 0, 0),
(139, '429068', 139, 1, 'Ada', 100, 0),
(140, '429068', 140, 1, 'Ada', 100, 0),
(141, '429068', 141, 2, 'Ada', 0, 0),
(142, '429068', 142, 1, 'Ada', 100, 0),
(143, '429068', 143, 1, 'Ada', 100, 0),
(144, '429068', 144, 2, 'Ada', 0, 0),
(145, '429068', 145, 2, 'Ada', 0, 0),
(146, '429068', 146, 2, 'Ada', 0, 1),
(147, '429068', 147, 2, 'Ada', 0, 0),
(148, '429068', 148, 2, 'Ada', 0, 0),
(149, '429068', 149, 2, 'Ada', 0, 0),
(150, '429068', 150, 2, 'Ada', 0, 0),
(151, '429068', 151, 2, 'Ada', 0, 1),
(152, '429068', 152, 2, 'Ada', 0, 0),
(153, '429068', 153, 2, 'Ada', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pegawai`
--

CREATE TABLE `tbl_data_pegawai` (
  `id_pegawai_satker` int(11) NOT NULL,
  `kode_satker` varchar(255) NOT NULL,
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

INSERT INTO `tbl_data_pegawai` (`id_pegawai_satker`, `kode_satker`, `nama_pegawai_dibuat`, `nip_pegawai_dibuat`, `nama_pegawai_diverifikasi`, `nip_pegawai_diverifikasi`, `nama_pegawai_disetujui`, `nip_pegawai_disetujui`) VALUES
(1, '429068', 'Vera Alzena', '199810212022012001', 'Samsul Hadi', '198203252004121001', 'Andi Khairuddin', '196709291999031005'),
(2, '1', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(3, '2', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(4, '3', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(5, '4', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(6, '5', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(7, '6', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(8, '7', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(9, '8', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(10, '9', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(11, '10', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(12, '11', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(13, '12', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(14, '13', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(15, '14', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(16, '15', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(17, '16', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(18, '17', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(19, '18', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(20, '19', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(21, '20', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(22, '21', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(23, '22', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(24, '23', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong'),
(25, '25', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `kode_ba` varchar(255) NOT NULL,
  `kode_eselon_1` varchar(255) NOT NULL,
  `kode_satker` varchar(255) NOT NULL,
  `jenis_kewenangan` varchar(255) NOT NULL,
  `nama_uappaw` varchar(255) NOT NULL,
  `kode_uappaw` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `nama_instansi`, `kode_ba`, `kode_eselon_1`, `kode_satker`, `jenis_kewenangan`, `nama_uappaw`, `kode_uappaw`, `periode`) VALUES
(1, 'Pengadilan Tinggi Kendari', '005', '01', '400540', 'kosong', 'kosong', 'kosong', 'kosong'),
(2, 'Pengadilan Tinggi Kendari', '005', '03', '400541', 'kosong', 'kosong', 'kosong', 'kosong'),
(3, 'Pengadilan Tinggi Agama Kendari', '005', '04', '576254', 'kosong', 'kosong', 'kosong', 'kosong'),
(4, 'Kejaksaan Tinggi Sulawesi Tenggara', '006', '01', '008416', 'kosong', 'kosong', 'kosong', 'kosong'),
(5, 'Kementerian Hukum dan Hak Asasi Manusia', '013', '05', '409202', 'kosong', 'kosong', 'kosong', 'kosong'),
(6, 'Kementerian Hukum dan Hak Asasi Manusia', '013', '06', '409203', 'kosong', 'kosong', 'kosong', 'kosong'),
(7, 'Kantor Wilayah Direktorat Jenderal Perbendaharaan', '015', '08', '613792', 'kosong', 'kosong', 'kosong', 'kosong'),
(8, 'Lembaga Penjaminan Mutu Pendidikan', '023', '03', '417811', 'kosong', 'kosong', 'kosong', 'kosong'),
(9, 'Kantor Kesyahbandaran dan Otoritas Pelabuhan', '022', '04', '287502', 'kosong', 'kosong', 'kosong', 'kosong'),
(10, 'Bandara Haluoleo', '022', '05', '288436', 'kosong', 'kosong', 'kosong', 'kosong'),
(11, 'Kementerian Agama', '025', '01', '419700', 'kosong', 'kosong', 'kosong', 'kosong'),
(12, 'Kementerian Agama', '025', '03', '419704', 'kosong', 'kosong', 'kosong', 'kosong'),
(13, 'Kementerian Agama', '025', '04', '419705', 'kosong', 'kosong', 'kosong', 'kosong'),
(14, 'Kementerian Agama', '025', '05', '419706', 'kosong', 'kosong', 'kosong', 'kosong'),
(15, 'Kementerian Agama', '025', '06', '419707', 'kosong', 'kosong', 'kosong', 'kosong'),
(16, 'Kementerian Agama', '025', '07', '419708', 'kosong', 'kosong', 'kosong', 'kosong'),
(17, 'Loka MEOHAI', '027', '04', '690250', 'kosong', 'kosong', 'kosong', 'kosong'),
(18, 'Balai Konservasi Sumber Daya Alam', '029', '05', '238652', 'kosong', 'kosong', 'kosong', 'kosong'),
(19, 'Stasiun Karantina Ikan, Pengendalian Mutu dan Keamanan Hasil Perikanan', '032', '013', '567694', 'kosong', 'kosong', 'kosong', 'kosong'),
(20, 'Balai Pelaksanaan Jalan Nasional', '033', '04', '631092', 'kosong', 'kosong', 'kosong', 'kosong'),
(21, 'Balai Prasarana Pemukiman Wilayah Sulawesi Tenggara', '033', '05', '505105', 'kosong', 'kosong', 'kosong', 'kosong'),
(22, 'Balai Besar Wilayah Sungai', '033', '06', '447900', 'kosong', 'kosong', 'kosong', 'kosong'),
(23, 'Universitas Halu Oleo', '023', '017', '677510', 'kosong', 'kosong', 'kosong', 'kosong'),
(24, 'Badan Pusat Statistik', '054', '01', '429068', 'kosong', 'kosong', 'kosong', 'kosong'),
(25, 'Badan Pertahanan Nasional', '056', '01', '431943', 'kosong', 'kosong', 'kosong', 'kosong'),
(26, 'Bidang Keuangan Polda Sulawesi Tenggara', '060', '01', '646786', 'kosong', 'kosong', 'kosong', 'kosong'),
(27, 'Badan Narkotika Nasional', '066', '01', '682701', 'kosong', 'kosong', 'kosong', 'kosong'),
(28, 'Stasium Meteorologi Maritim', '075', '01', '654542', 'kosong', 'kosong', 'kosong', 'kosong'),
(29, 'Komisi Pemilihan Umum', '115', '01', '686470', 'kosong', 'kosong', 'kosong', 'kosong');

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
(145, 48, 'Apakah terdapat pengungkapan atas realisasi pengesahan hibah langsung baik berupa uang, barang, maupun jasa yang diterima oleh K/L dalam rangka penanganan pandemi COVID-19'),
(146, 49, 'Apakah terdapat pengungkapan atas Pos Aset, antara lain :'),
(147, 49, 'Kenaikan/penurunan Piutang sebagai dampak pandemi Covid-19'),
(148, 49, 'Kenaikan/penurunan Persediaan sebagai dampak pandemi Covid-19'),
(149, 49, 'Kenaikan/penurunan KDP sebagai dampak pandemi Covid-19'),
(150, 49, 'Kenaikan/penurunan pos aset yang lain, sebutkan ……………….'),
(151, 49, 'Apakah terdapat pengungkapan atas Pos Kewajiban, antara lain :'),
(152, 49, 'Kenaikan/penurunan Utang kepada pihak ketiga sebagai dampak pandemi Covid-19'),
(153, 49, 'Kenaikan/penurunan Hibah yang belum disahkan sebagai dampak pandemi Covid-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sheet`
--

CREATE TABLE `tbl_sheet` (
  `id_sheet` int(11) NOT NULL,
  `kode_satker` varchar(255) NOT NULL,
  `sheet` varchar(255) NOT NULL,
  `total_skor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sheet`
--

INSERT INTO `tbl_sheet` (`id_sheet`, `kode_satker`, `sheet`, `total_skor`) VALUES
(1, '429068', 'Analisis LK', 86.4683);

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
  `kode_satker` varchar(255) NOT NULL,
  `sub_sub_pertanyaan` varchar(255) NOT NULL,
  `nilai` float NOT NULL,
  `persen` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_sub_pertanyaan_analisis_lk`
--

INSERT INTO `tbl_sub_sub_pertanyaan_analisis_lk` (`id_sub_sub_pertanyaan`, `kode_satker`, `sub_sub_pertanyaan`, `nilai`, `persen`) VALUES
(1, '429068', 'Kelengkapan Laporan Keuangan', 5, 5),
(2, '429068', 'Kesesuaian Laporan Hardcopy Dengan Monsakti', 5, 5),
(3, '429068', 'Kesesuaian Dengan Persamaan Dasar Akuntansi', 5, 5),
(4, '429068', 'Neraca Percobaan Akruan', 12.3529, 15),
(5, '429068', 'Laporan Operasional', 10, 10),
(6, '429068', 'Laporan Perubahan Ekuitas', 5, 5),
(7, '429068', 'Neraca', 10, 10),
(8, '429068', 'Telaah Antar Laporan Keuangan', 4.61538, 10),
(9, '429068', 'Kesesuaian Dengan L-BMN', 10, 10),
(10, '429068', 'Laporan Realisasi Anggaran', 8.75, 10),
(11, '429068', 'SATKONS dan Pengawasan Temuan BPK Tahun-Tahun Sebelumnya', 4.375, 5),
(12, '429068', 'Catatan Atas Laporan Keuangan', 4.375, 5),
(13, '429068', 'Analisis Lainnya', 2, 5);

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
(1, 'UserDJPB', 'djpbkendari@gmail.com', NULL, '$2y$10$GC5ap6HGONB3EJbUNor/8.7iZQM2twQYhe4aO7aMBpjc6BjyVmM0K', NULL, '2023-01-28 03:43:10', '2023-01-28 03:43:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD KEY `id_instansi` (`kode_satker`),
  ADD KEY `kode_satker` (`kode_satker`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`),
  ADD UNIQUE KEY `kode_satker` (`kode_satker`);

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
  ADD KEY `id_instansi` (`kode_satker`),
  ADD KEY `kode_satker` (`kode_satker`);

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
  ADD KEY `id_instansi` (`kode_satker`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

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

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
