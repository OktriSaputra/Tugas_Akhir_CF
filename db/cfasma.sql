-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 02:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cfasma`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kelompok_gejala_id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(18, 1, 'G001', 'Batuk'),
(19, 1, 'G002', 'Sesak Napas'),
(20, 1, 'G003', 'Demam Tinggi'),
(21, 1, 'G004', 'Dada Terasa Terhimpit'),
(22, 1, 'G005', 'Peradangan pada Tenggorokkan'),
(23, 1, 'G006', 'Nyeri Seluruh Tubuh'),
(24, 1, 'G007', 'Mudah Lemas'),
(25, 1, 'G008', 'Jantung Berdebar'),
(26, 1, 'G009', 'Sulit Bernafas'),
(27, 1, 'G010', 'Meriang di Malam Hari'),
(28, 1, 'G011', 'Mengi (Muncul Bunyi Saat Bernafas)'),
(29, 2, 'G001', 'Lingkungan Kerja Polusi Udara'),
(30, 2, 'G002', 'Alergi Terhadap Serbuk Sari, Hewan, Debu, dan Zat Kimia'),
(31, 2, 'G003', 'Kondisi Lingkungan dan Sering Minum Obat-obatan'),
(32, 2, 'G004', 'Komplikasi Penyakit Pada Pernapasan'),
(33, 2, 'G005', 'Cuaca Dingin di Malam Hari');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(1, 18, 1, 0.1, 0.8),
(2, 19, 1, 0.1, 0.6),
(3, 20, 1, 0.1, 1),
(4, 29, 1, 0.1, 1),
(5, 21, 2, 0.1, 0.8),
(6, 22, 2, 0.1, 1),
(7, 30, 2, 0.1, 1),
(8, 23, 3, 0.1, 0.8),
(9, 24, 3, 0.1, 0.8),
(10, 31, 3, 0.1, 1),
(11, 25, 4, 0.1, 0.8),
(12, 26, 4, 0.1, 0.8),
(13, 32, 4, 0.1, 1),
(14, 27, 5, 0.1, 1),
(15, 28, 5, 0.1, 0.8),
(16, 33, 5, 0.1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kepercayaan` float NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(24, 0, 'P005', 'Penyakit Asma Noktur', 81, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-22 16:09:29'),
(25, 0, 'P002', 'Penyakit Asma Alergi', 90, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-23 09:29:03'),
(26, 0, 'P001', 'Penyakit Asma Okupas', 73, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-28 10:12:06'),
(27, 0, 'P003', 'Penyakit Asma Non-Al', 90, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-28 10:13:14'),
(28, 0, 'P003', 'Penyakit Asma Non-Al', 90, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-28 10:15:45'),
(29, 0, 'P001', 'Penyakit Asma Okupas', 81, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-28 10:18:40'),
(30, 0, 'P001', 'Penyakit Asma Okupas', 90, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-28 10:19:54'),
(31, 0, 'P003', 'Penyakit Asma Non-Al', 90, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-28 10:21:30'),
(32, 0, 'P001', 'Penyakit Asma Okupas', 81, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-28 10:22:07'),
(33, 0, 'P002', 'Penyakit Asma Alergi', 90, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-28 10:23:38'),
(34, 0, 'P001', 'Penyakit Asma Okupas', 81, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-28 10:24:28'),
(35, 0, 'P002', 'Penyakit Asma Alergi', 70, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:21:58'),
(36, 0, 'P002', 'Penyakit Asma Alergi', 90, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:22:27'),
(37, 0, 'P001', 'Penyakit Asma Okupas', 81, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-30 15:23:19'),
(38, 0, 'P002', 'Penyakit Asma Alergi', 90, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:24:50'),
(39, 0, 'P003', 'Penyakit Asma Non-Al', 70, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:25:49'),
(40, 0, 'P005', 'Penyakit Asma Noktur', 90, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 15:27:14'),
(41, 0, 'P002', 'Penyakit Asma Alergi', 90, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:29:56'),
(42, 0, 'P002', 'Penyakit Asma Alergi', 81, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:32:57'),
(43, 0, 'P002', 'Penyakit Asma Alergi', 81, 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								', '2020-12-30 15:33:29'),
(44, 0, 'P003', 'Penyakit Asma Non-Al', 70, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:38:49'),
(45, 0, 'P004', 'Penyakit Asma COPD (', 77, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:40:15'),
(46, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:41:27'),
(47, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:42:21'),
(48, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:42:40'),
(49, 0, 'P005', 'Penyakit Asma Noktur', 90, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 15:42:59'),
(50, 0, 'P001', 'Penyakit Asma Okupas', 90, 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																			', '2020-12-30 15:43:23'),
(51, 0, 'P003', 'Penyakit Asma Non-Al', 70, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:43:51'),
(52, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:44:37'),
(53, 0, 'P003', 'Penyakit Asma Non-Al', 70, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:45:00'),
(54, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:46:11'),
(55, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:47:04'),
(56, 0, 'P003', 'Penyakit Asma Non-Al', 70, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:50:40'),
(57, 0, 'P003', 'Penyakit Asma Non-Al', 77, 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									', '2020-12-30 15:58:36'),
(58, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 15:59:34'),
(59, 0, 'P005', 'Penyakit Asma Noktur', 70, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:04:42'),
(60, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 16:04:58'),
(61, 0, 'P004', 'Penyakit Asma COPD (', 70, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 16:05:30'),
(62, 0, 'P005', 'Penyakit Asma Noktur', 90, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:09:22'),
(63, 0, 'P005', 'Penyakit Asma Noktur', 90, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:10:06'),
(64, 0, 'P005', 'Penyakit Asma Noktur', 70, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:10:40'),
(65, 0, 'P005', 'Penyakit Asma Noktur', 90, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:15:25'),
(66, 0, 'P005', 'Penyakit Asma Noktur', 70, 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir ', '2020-12-30 16:16:32'),
(67, 0, 'P004', 'Penyakit Asma COPD (', 77, 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.', '2020-12-30 16:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `user_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(3, 5, '2018-08-30 10:39:41'),
(3, 6, '2018-08-30 10:39:41'),
(3, 11, '2018-08-30 10:39:41'),
(3, 12, '2018-08-30 10:39:41'),
(3, 8, '2018-08-30 10:41:04'),
(3, 7, '2018-08-30 10:41:04'),
(6, 7, '2018-08-30 11:18:05'),
(6, 9, '2018-08-30 11:18:05'),
(6, 10, '2018-08-30 11:18:05'),
(3, 10, '2018-08-30 13:01:09'),
(3, 11, '2018-08-30 13:01:09'),
(3, 1, '2018-08-30 15:43:26'),
(3, 2, '2018-08-30 15:43:26'),
(3, 3, '2018-08-30 15:43:26'),
(3, 1, '2018-08-30 15:45:11'),
(3, 4, '2018-08-30 15:45:11'),
(3, 5, '2018-08-30 15:45:11'),
(3, 6, '2018-08-30 15:45:11'),
(0, 9, '2018-08-31 07:08:35'),
(0, 10, '2018-08-31 07:08:35'),
(3, 16, '2018-09-04 14:34:02'),
(3, 17, '2018-09-04 14:34:02'),
(3, 18, '2018-09-04 14:34:02'),
(3, 20, '2018-09-04 14:34:02'),
(3, 16, '2018-09-04 14:34:32'),
(3, 17, '2018-09-04 14:34:32'),
(3, 18, '2018-09-04 14:34:32'),
(3, 20, '2018-09-04 14:34:32'),
(3, 32, '2018-09-04 14:34:32'),
(3, 33, '2018-09-04 14:34:32'),
(4, 1, '2018-09-05 00:22:36'),
(4, 2, '2018-09-05 00:22:36'),
(4, 3, '2018-09-05 00:22:36'),
(4, 28, '2018-09-05 00:41:54'),
(4, 31, '2018-09-05 00:41:54'),
(4, 32, '2018-09-05 00:41:54'),
(4, 28, '2018-09-05 00:44:03'),
(4, 31, '2018-09-05 00:44:03'),
(4, 32, '2018-09-05 00:44:03'),
(3, 1, '2018-09-05 09:16:38'),
(3, 2, '2018-09-05 09:16:38'),
(3, 3, '2018-09-05 09:16:38'),
(3, 4, '2018-09-05 09:16:38'),
(3, 1, '2018-09-05 10:12:03'),
(4, 1, '2018-09-07 12:56:57'),
(4, 2, '2018-09-07 12:56:57'),
(4, 3, '2018-09-07 12:56:57'),
(3, 30, '2018-09-22 16:20:50'),
(3, 33, '2018-09-22 16:34:33'),
(3, 30, '2018-09-22 16:34:33'),
(0, 1, '2020-01-28 03:56:02'),
(0, 18, '2020-01-28 03:56:02'),
(0, 1, '2020-01-28 03:57:43'),
(0, 18, '2020-01-28 03:57:43'),
(0, 1, '2020-01-28 03:57:47'),
(0, 18, '2020-01-28 03:57:47'),
(0, 1, '2020-01-28 03:58:03'),
(0, 18, '2020-01-28 03:58:03'),
(0, 1, '2020-01-28 03:58:53'),
(0, 2, '2020-01-28 03:58:53'),
(0, 3, '2020-01-28 03:58:53'),
(0, 4, '2020-01-28 03:58:53'),
(0, 15, '2020-01-28 03:58:53'),
(0, 17, '2020-01-28 03:58:53'),
(0, 33, '2020-01-28 03:58:53'),
(0, 35, '2020-01-28 03:58:53'),
(0, 36, '2020-01-28 03:58:53'),
(0, 4, '2020-01-28 04:48:40'),
(0, 5, '2020-01-28 04:48:40'),
(0, 6, '2020-01-28 04:48:40'),
(0, 9, '2020-01-28 04:48:40'),
(0, 10, '2020-01-28 04:48:40'),
(0, 11, '2020-01-28 04:48:40'),
(0, 15, '2020-01-28 04:48:40'),
(0, 31, '2020-01-28 04:48:40'),
(0, 32, '2020-01-28 04:48:40'),
(0, 33, '2020-01-28 04:48:40'),
(0, 35, '2020-01-28 04:48:40'),
(0, 36, '2020-01-28 04:48:40'),
(0, 4, '2020-06-16 08:07:25'),
(0, 11, '2020-06-16 08:07:25'),
(0, 35, '2020-06-16 08:07:25'),
(0, 2, '2020-06-16 08:22:23'),
(0, 3, '2020-06-16 08:22:23'),
(0, 1, '2020-06-18 08:11:44'),
(0, 2, '2020-06-18 08:11:44'),
(0, 3, '2020-06-18 08:11:44'),
(0, 5, '2020-06-25 13:23:27'),
(0, 6, '2020-06-25 13:23:27'),
(0, 7, '2020-06-25 13:23:27'),
(0, 17, '2020-12-21 11:20:34'),
(0, 5, '2020-12-21 11:20:45'),
(0, 17, '2020-12-21 11:20:45'),
(0, 28, '2020-12-22 16:09:29'),
(0, 33, '2020-12-22 16:09:29'),
(0, 19, '2020-12-23 09:29:02'),
(0, 22, '2020-12-23 09:29:02'),
(0, 29, '2020-12-23 09:29:02'),
(0, 31, '2020-12-23 09:29:02'),
(0, 18, '2020-12-28 10:12:06'),
(0, 19, '2020-12-28 10:12:06'),
(0, 24, '2020-12-28 10:12:06'),
(0, 18, '2020-12-28 10:13:14'),
(0, 20, '2020-12-28 10:13:14'),
(0, 31, '2020-12-28 10:13:14'),
(0, 19, '2020-12-28 10:15:45'),
(0, 31, '2020-12-28 10:15:45'),
(0, 20, '2020-12-28 10:18:40'),
(0, 29, '2020-12-28 10:18:40'),
(0, 21, '2020-12-28 10:19:54'),
(0, 29, '2020-12-28 10:19:54'),
(0, 25, '2020-12-28 10:21:30'),
(0, 31, '2020-12-28 10:21:30'),
(0, 18, '2020-12-28 10:22:07'),
(0, 20, '2020-12-28 10:22:07'),
(0, 25, '2020-12-28 10:22:07'),
(0, 19, '2020-12-28 10:23:38'),
(0, 22, '2020-12-28 10:23:38'),
(0, 23, '2020-12-28 10:23:38'),
(0, 19, '2020-12-28 10:24:27'),
(0, 20, '2020-12-28 10:24:27'),
(0, 23, '2020-12-28 10:24:27'),
(0, 24, '2020-12-28 10:24:27'),
(0, 21, '2020-12-30 15:21:57'),
(0, 22, '2020-12-30 15:22:27'),
(0, 20, '2020-12-30 15:23:19'),
(0, 21, '2020-12-30 15:23:19'),
(0, 29, '2020-12-30 15:23:19'),
(0, 22, '2020-12-30 15:24:50'),
(0, 23, '2020-12-30 15:24:50'),
(0, 21, '2020-12-30 15:25:49'),
(0, 24, '2020-12-30 15:25:49'),
(0, 21, '2020-12-30 15:27:13'),
(0, 22, '2020-12-30 15:27:13'),
(0, 26, '2020-12-30 15:27:13'),
(0, 27, '2020-12-30 15:27:13'),
(0, 23, '2020-12-30 15:29:56'),
(0, 30, '2020-12-30 15:29:56'),
(0, 21, '2020-12-30 15:32:57'),
(0, 22, '2020-12-30 15:32:57'),
(0, 25, '2020-12-30 15:32:57'),
(0, 22, '2020-12-30 15:33:29'),
(0, 24, '2020-12-30 15:33:29'),
(0, 25, '2020-12-30 15:33:29'),
(0, 30, '2020-12-30 15:33:29'),
(0, 23, '2020-12-30 15:38:49'),
(0, 23, '2020-12-30 15:40:15'),
(0, 25, '2020-12-30 15:40:15'),
(0, 26, '2020-12-30 15:40:15'),
(0, 23, '2020-12-30 15:41:27'),
(0, 26, '2020-12-30 15:41:27'),
(0, 23, '2020-12-30 15:42:21'),
(0, 25, '2020-12-30 15:42:21'),
(0, 24, '2020-12-30 15:42:40'),
(0, 26, '2020-12-30 15:42:40'),
(0, 23, '2020-12-30 15:42:59'),
(0, 27, '2020-12-30 15:42:59'),
(0, 20, '2020-12-30 15:43:23'),
(0, 23, '2020-12-30 15:43:23'),
(0, 18, '2020-12-30 15:43:51'),
(0, 23, '2020-12-30 15:43:51'),
(0, 24, '2020-12-30 15:44:37'),
(0, 26, '2020-12-30 15:44:37'),
(0, 18, '2020-12-30 15:45:00'),
(0, 24, '2020-12-30 15:45:00'),
(0, 23, '2020-12-30 15:46:10'),
(0, 26, '2020-12-30 15:46:10'),
(0, 24, '2020-12-30 15:47:04'),
(0, 25, '2020-12-30 15:47:04'),
(0, 19, '2020-12-30 15:50:40'),
(0, 23, '2020-12-30 15:50:40'),
(0, 23, '2020-12-30 15:58:36'),
(0, 24, '2020-12-30 15:58:36'),
(0, 26, '2020-12-30 15:58:36'),
(0, 23, '2020-12-30 15:59:34'),
(0, 26, '2020-12-30 15:59:34'),
(0, 25, '2020-12-30 16:04:42'),
(0, 28, '2020-12-30 16:04:42'),
(0, 18, '2020-12-30 16:04:58'),
(0, 26, '2020-12-30 16:04:58'),
(0, 19, '2020-12-30 16:05:30'),
(0, 26, '2020-12-30 16:05:30'),
(0, 26, '2020-12-30 16:09:22'),
(0, 27, '2020-12-30 16:09:22'),
(0, 24, '2020-12-30 16:10:06'),
(0, 27, '2020-12-30 16:10:06'),
(0, 26, '2020-12-30 16:10:40'),
(0, 28, '2020-12-30 16:10:40'),
(0, 18, '2020-12-30 16:15:25'),
(0, 19, '2020-12-30 16:15:25'),
(0, 27, '2020-12-30 16:15:25'),
(0, 25, '2020-12-30 16:16:32'),
(0, 28, '2020-12-30 16:16:32'),
(0, 25, '2020-12-30 16:17:05'),
(0, 26, '2020-12-30 16:17:05'),
(0, 28, '2020-12-30 16:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_gejala`
--

CREATE TABLE `kelompok_gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_gejala`
--

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Gejala Fisik', '-'),
(2, 'Gejala Non Fisik', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(1, 'P001', 'Penyakit Asma Okupasional', 'Hindari lingkungan yang menimbulkan polusi udara seperti debu, uap kimiawi, asap dan sebagainya dan gunakan masker saat berada di lingkungan tersebut. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter. 																				'),
(2, 'P002', 'Penyakit Asma Alergi', 'Hindari lingkungan yang menyebabkan alergi seperi alergi serbuk sari, bulu hewan, debu dan zat kimia. Gunakan masker agar terhindar dan menimalisir asma alergi.								'),
(3, 'P003', 'Penyakit Asma Non-Alergi', 'Hindari lingkungan dan obat-obatan tanpa resep dokter yang menimbulkan sesak napas yang berkelanjutan. Apabila asma ini kambuh tidak ada perubahan 1x24 jam periksa lebih lanjut ke dokter untuk ditangani.									'),
(4, 'P004', 'Penyakit Asma COPD (Chronic Obstructive Pulmonary ', 'Asma ini disebabkan komplikasi penyakit paru – paru mengakibatkan asma berat, untuk menanggulangi asma ini berikan oksigen tambahan dengan tabung oksigen apabila asma ini tidak ada perubahan silahkan periksa ke dokter untuk ditangani lebih lanjut.'),
(5, 'P005', 'Penyakit Asma Nokturnal', 'Asma nokturnal terjadi pada malam hari atau waktu tidur. Pencegahan pada asma ini kenakan pakaian yang menghatkan tubuh seperti jaket dan lain – lain. Berikan selimut untuk lebih menghangatkan tubuh serta hindari pemakaiaan kipas angina untuk menimalisir debu yang ada di ruangan.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `level`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admins', 'oktriwaw@gmail.com', 'admin', ''),
(3, 'adhari', 'c6c3e74813e88db1a04293d41fa4fc3f', 'Adhari Ajipurnomo Sp', 'adhariajipurnomo@obet.com', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `userx`
--

CREATE TABLE `userx` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userx`
--

INSERT INTO `userx` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(3, 'pasien', 'f5c25a0082eb0748faedca1ecdcfb131', 'pasien1', 'hardiantix.1@gmail.com', 'pasien'),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hardianti', 'hardiantix.1@gmail.com', 'admin'),
(6, 'hardianti', '3843a08b3283e5603449b42a746ac973', 'hardianti', 'hardiantix.1@gmail.com', 'pasien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_gejala_id` (`kelompok_gejala_id`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userx`
--
ALTER TABLE `userx`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userx`
--
ALTER TABLE `userx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
