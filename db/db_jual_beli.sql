-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 09:20 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jual_beli`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga_modal` double NOT NULL DEFAULT '0',
  `harga_terjual` double NOT NULL DEFAULT '0',
  `qty_terjual` double NOT NULL DEFAULT '0',
  `laba` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `harga_modal`, `harga_terjual`, `qty_terjual`, `laba`) VALUES
(1, 'BRG-001', 'oven hock no.3', 'buah', 330000, 50000, 1, -280000),
(2, 'BRG-002', 'oven hock no.4', 'buah', 390000, 0, 0, 0),
(3, 'BRG-003', 'Dispenser Miyako', 'buah', 160000, 0, 0, 0),
(4, 'BRG-004', 'Kompor Hock 10', 'buah', 165000, 0, 0, 0),
(5, 'BRG-005', 'kompor hock 16', 'buah', 210000, 0, 0, 0),
(6, 'BRG-006', 'Kompor Hock 22', 'buah', 250000, 0, 0, 0),
(7, 'BRG-007', 'Thanlong 20 Kg', 'buah', 370000, 0, 0, 0),
(8, 'BRG-008', 'Magic Miyako 606', 'buah', 185000, 220000, 2, 135000),
(9, 'BRG-009', 'Magic Miyako 509', 'buah', 220000, 0, 0, 0),
(10, 'BRG-010', 'Magic Miyako 612', 'buah', 210000, 0, 0, 0),
(11, 'BRG-011', 'Magic Miyako 507', 'buah', 220000, 260000, 1, 40000),
(12, 'BRG-012', 'Magic Philips', 'buah', 520000, 0, 0, 0),
(13, 'BRG-013', 'Magic yongma', 'buah', 560000, 0, 0, 0),
(14, 'BRG-014', 'Phylia bath border besar', 'buah', 30000, 35000, 1, 5000),
(15, 'BRG-015', 'Phylia bath border kecil', 'buah', 20000, 0, 0, 0),
(16, 'BRG-016', 'Timbamgan Dial', 'buah', 140000, 0, 0, 0),
(17, 'BRG-017', 'kaizen Navarrra Hot & Cold (8L)', 'buah', 75000, 0, 0, 0),
(18, 'BRG-018', 'Tempat bumbu celini', 'buah', 25000, 0, 0, 0),
(19, 'BRG-019', 'Food Carrier Maspion (16 cm susun 4)', 'buah', 80000, 0, 0, 0),
(20, 'BRG-020', 'Food Carrier Maspion (24Cm 2/1)', 'buah', 150000, 0, 0, 0),
(21, 'BRG-021', 'Food Carrier Maspion red (2/1)', 'buah', 160000, 0, 0, 0),
(22, 'BRG-022', 'Food Carrier Maspion (24Cm susun 4)', 'buah', 95000, 0, 0, 0),
(23, 'BRG-023', 'Kipas Miyako 927 (16Cm S.4)', 'buah', 160000, 0, 0, 0),
(24, 'BRG-024', 'Phylia Rice Bucket 26 L', 'buah', 125000, 0, 0, 0),
(25, 'BRG-025', 'Phylia Rice Bucket 10 L', 'buah', 80000, 0, 0, 0),
(26, 'BRG-026', 'Phylia Rice Bucket 12 L', 'buah', 90000, 0, 0, 0),
(27, 'BRG-027', 'Unix Ice Bucket 1236 (1,8L)', 'buah', 25000, 0, 0, 0),
(28, 'BRG-028', 'Rantang Food Carrier murah', 'buah', 25000, 0, 0, 0),
(29, 'BRG-029', 'Timbangan Thanglong Bulat', 'buah', 260000, 0, 0, 0),
(30, 'BRG-030', 'Termos nasi 6', 'buah', 65000, 0, 0, 0),
(31, 'BRG-031', 'Blender Miyako Putih (2 in 1)', 'buah', 210000, 0, 0, 0),
(32, 'BRG-032', 'Blender Miyako Putih (3 in 1)', 'buah', 240000, 0, 0, 0),
(33, 'BRG-033', 'Blender Miyako Hijau (2 in 1)', 'buah', 220000, 0, 0, 0),
(34, 'BRG-034', 'Blender Miyako Hijau (3 in 1)', 'buah', 250000, 0, 0, 0),
(35, 'BRG-035', 'Mixer Miyako', 'buah', 250000, 0, 0, 0),
(36, 'BRG-036', 'Selang gas Miyako', 'buah', 75000, 90000, 90000, -6749910000),
(37, 'BRG-037', 'Timbangan Camry (10Kg)', 'buah', 115000, 0, 0, 0),
(38, 'BRG-038', 'Kipas Arashi No tutup', 'buah', 60000, 0, 0, 0),
(39, 'BRG-039', 'Blender daging', 'buah', 95000, 0, 0, 0),
(40, 'BRG-040', 'Hand Mixer Cosmos', 'buah', 170000, 0, 0, 0),
(41, 'BRG-041', 'Hand Mixer Miyako', 'buah', 160000, 0, 0, 0),
(42, 'BRG-042', 'Blender Philips', 'buah', 610000, 0, 0, 0),
(43, 'BRG-043', 'Blender Cosmos', 'buah', 240000, 0, 0, 0),
(44, 'BRG-044', 'Blender Turbo', 'buah', 310000, 0, 0, 0),
(45, 'BRG-045', 'Timbangan Tanita (5Kg)', 'buah', 135000, 0, 0, 0),
(46, 'BRG-046', 'Kipas Arashi Karakter', 'buah', 60000, 90000, 1, 30000),
(47, 'BRG-047', 'Timbangan (5Kg & 2Kg) murah', 'buah', 40000, 0, 0, 0),
(48, 'BRG-048', 'Isi dalam kompor minyak (22)', 'buah', 25000, 0, 0, 0),
(49, 'BRG-049', 'Rinnai (RI-522C)', 'buah', 300000, 0, 0, 0),
(50, 'BRG-050', 'Rinnai (RI-522E)', 'buah', 320000, 0, 0, 0),
(51, 'BRG-051', 'Tungku goreng Rinnai', 'buah', 450000, 0, 0, 0),
(52, 'BRG-052', 'Setrika Philips', 'buah', 240000, 0, 0, 0),
(53, 'BRG-053', 'Setrika Maspion', 'buah', 125000, 0, 0, 0),
(54, 'BRG-054', 'Setrika Miyako', 'buah', 95000, 0, 0, 0),
(55, 'BRG-055', 'Cerek Bunyi', 'buah', 120000, 0, 0, 0),
(56, 'BRG-056', 'Kipas Miyako1627', 'buah', 265000, 0, 0, 0),
(57, 'BRG-057', 'Kipas Miyako 1227', 'buah', 185000, 220000, 1, 35000),
(58, 'BRG-058', 'Regullator gas Hitpro', 'buah', 50000, 0, 0, 0),
(59, 'BRG-059', 'Regullator gas Hitpro bulat', 'buah', 70000, 0, 0, 0),
(60, 'BRG-060', 'Isi dalam kompor  16 sumbu', 'buah', 20000, 0, 0, 0),
(61, 'BRG-061', 'Pot Phylia No.6', 'buah', 14000, 100000, 1, -13000),
(62, 'BRG-062', 'Pot Phylia No.7', 'buah', 18000, 100000, 2, -16000),
(63, 'BRG-063', 'Pot Phylia No.8', 'buah', 28000, 0, 0, 0),
(64, 'BRG-064', 'Pot Philia  No.5', 'buah', 8000, 10000, 2, 4000),
(65, 'BRG-065', 'Pot Phylia No.4', 'buah', 6000, 8000, 4, 6000),
(66, 'BRG-066', 'Pot Phylia No.12', 'buah', 60000, 35000, 1, -25000),
(67, 'BRG-067', 'Pot putih besar', 'buah', 20000, 0, 0, 0),
(68, 'BRG-068', 'Pot putih kotak besar', 'buah', 25000, 0, 0, 0),
(69, 'BRG-069', 'Ember No. 14 Hijau', 'buah', 4000, 0, 0, 0),
(70, 'BRG-070', 'Ember No.14 Hitam', 'buah', 4000, 0, 0, 0),
(71, 'BRG-071', 'Ember No. 18 Hitam', 'buah', 7000, 20000, 1, 0),
(72, 'BRG-072', 'Ember No.20 Hitam', 'buah', 8000, 0, 0, 0),
(73, 'BRG-073', 'Ember No. 22 Hitam', 'buah', 10000, 0, 0, 0),
(74, 'BRG-074', 'Ember No.26 Hitam', 'buah', 14000, 0, 0, 0),
(75, 'BRG-075', 'Ember siram bunga', 'buah', 18000, 0, 0, 0),
(76, 'BRG-076', 'baskom 6688 inul', 'buah', 27000, 0, 0, 0),
(77, 'BRG-077', 'Baskom 9988', 'buah', 65000, 0, 0, 0),
(78, 'BRG-078', 'Baskom7788', 'buah', 33000, 0, 0, 0),
(79, 'BRG-079', 'Baskom Inul Hijau', 'buah', 23000, 0, 0, 0),
(80, 'BRG-080', 'Baskom Kuping', 'buah', 23000, 15000, 1, -8000),
(81, 'BRG-081', 'Baskom Kuping Hijau kecil', 'buah', 8000, 0, 0, 0),
(82, 'BRG-082', 'Baskom Kuping Hitam kecil', 'buah', 8000, 12000, 2, 8000),
(83, 'BRG-083', 'Keranjang sampah kecil', 'buah', 8000, 0, 0, 0),
(84, 'BRG-084', 'Keranjang sampah besar', 'buah', 11000, 0, 0, 0),
(85, 'BRG-085', 'Keranjang Ultra', 'buah', 23000, 0, 0, 0),
(86, 'BRG-086', 'Keranjang 4488', 'buah', 35000, 45000, 2, 23000),
(87, 'BRG-087', 'Keranjang GM besar', 'buah', 35000, 0, 0, 0),
(88, 'BRG-088', 'Keranjang kain merah', 'buah', 25000, 0, 0, 0),
(89, 'BRG-089', 'Kukua Kelapa', 'buah', 340000, 0, 0, 0),
(90, 'BRG-090', 'Rak sepatu susun 4', 'buah', 65000, 0, 0, 0),
(91, 'BRG-091', 'Rak sepatu susun 3', 'buah', 55000, 60000, 1, 5000),
(92, 'BRG-092', 'Stand towel', 'buah', 75, 100000, 1, 99925),
(93, 'BRG-093', 'Tong sampah kecil tutup', 'buah', 20000, 0, 0, 0),
(94, 'BRG-094', 'Tong sampah Menengah tutup', 'buah', 25000, 0, 0, 0),
(95, 'BRG-095', 'Tong sampah besar tutup', 'buah', 33000, 0, 0, 0),
(96, 'BRG-096', 'Tong sampah jumbo tutup', 'buah', 45000, 0, 0, 0),
(97, 'BRG-097', 'Keranjang petak Phylia kecil', 'buah', 20000, 0, 0, 0),
(98, 'BRG-098', 'Keranjang petak Phylia besar', 'buah', 30000, 0, 0, 0),
(99, 'BRG-099', 'Crocok jumbo', 'buah', 8000, 0, 0, 0),
(100, 'BRG-100', 'Crocok Besar', 'buah', 5000, 0, 0, 0),
(101, 'BRG-101', 'Crocok menengah', 'buah', 3000, 8000, 1, 4000),
(102, 'BRG-102', 'Crocok kecil', 'buah', 1500, 10000, 4, 34000),
(103, 'BRG-103', 'Crocok mini', 'buah', 1000, 0, 0, 0),
(104, 'BRG-104', 'Bak mandi bayi Hockie star', 'buah', 35000, 0, 0, 0),
(105, 'BRG-105', 'Tempat makan Deluxe kotak', 'buah', 25000, 0, 0, 0),
(106, 'BRG-106', 'Tempat makan Dahlia', 'buah', 15000, 0, 0, 0),
(107, 'BRG-107', 'Panci Maxim 18Cm', 'buah', 60000, 0, 0, 0),
(108, 'BRG-108', 'Panci Maxim 20Cm', 'buah', 70000, 0, 0, 0),
(109, 'BRG-109', 'Panci Maxim 22Cm', 'buah', 78000, 0, 0, 0),
(110, 'BRG-110', 'Panci Maxim 24Cm', 'buah', 85000, 0, 0, 0),
(111, 'BRG-111', 'Panci Maxim 26Cm', 'buah', 90000, 0, 0, 0),
(112, 'BRG-112', 'Raket nyamuk', 'buah', 35000, 0, 0, 0),
(113, 'BRG-113', 'Tutup makanan', 'buah', 15000, 0, 0, 0),
(114, 'BRG-114', 'Termos Indoglass (0,50L)', 'buah', 65000, 0, 0, 0),
(115, 'BRG-115', 'Termos indoglass(750ML)', 'buah', 75000, 0, 0, 0),
(116, 'BRG-116', 'Keranjang bawang kecil', 'buah', 18000, 0, 0, 0),
(117, 'BRG-117', 'Keranjang bawang besar', 'buah', 22000, 0, 0, 0),
(118, 'BRG-118', 'Keranjang bungo segitiga', 'buah', 18000, 0, 0, 0),
(119, 'BRG-119', 'Rak  bumbu bulat', 'buah', 20000, 0, 0, 0),
(120, 'BRG-120', 'Rak salon', 'buah', 75000, 95000, 1, 20000),
(121, 'BRG-121', 'Bangku cuci kotak kecil', 'buah', 10000, 0, 0, 0),
(122, 'BRG-122', 'Bangku cuci kotak besar', 'buah', 12000, 0, 0, 0),
(123, 'BRG-123', 'Bangku cuci bulat', 'buah', 8000, 10000, 1, 2000),
(124, 'BRG-124', 'Hanger SPP', 'lusin', 8000, 15000, 1, 7000),
(125, 'BRG-125', 'Hanger SPP', 'ikat (6 buah)', 4000, 0, 0, 0),
(126, 'BRG-126', 'Hanger Monata', 'lusin', 18000, 0, 0, 0),
(127, 'BRG-127', 'Saringan santan besar', 'buah', 5000, 0, 0, 0),
(128, 'BRG-128', 'Saringan santan kecil', 'buah', 4000, 0, 0, 0),
(129, 'BRG-129', 'Saringan santan  tangkai besar', 'buah', 5000, 0, 0, 0),
(130, 'BRG-130', 'Saringan santan tangkai Menengah', 'buah', 4000, 0, 0, 0),
(131, 'BRG-131', 'Keranjang mandi viola', 'buah', 6000, 0, 0, 0),
(132, 'BRG-132', 'Hanger besi  murah', 'ikat (10 buah)', 8000, 10000, 1, 2000),
(133, 'BRG-133', 'jepitan baju Wisa', 'buah', 8000, 0, 0, 0),
(134, 'BRG-134', 'jepitan baju indokurnia (murah)', 'pack', 5000, 0, 0, 0),
(135, 'BRG-135', 'Asbak roko segitiga', 'buah', 4000, 0, 0, 0),
(136, 'BRG-136', 'Asbak rokok kotak', 'buah', 4000, 6000, 1, 0),
(137, 'BRG-137', 'Tempat bakar ikan murah', 'buah', 8000, 0, 0, 0),
(138, 'BRG-138', 'Tempat bakar ikan kecil', 'buah', 12000, 0, 0, 0),
(139, 'BRG-139', 'Tempat bakar iakan besar', 'buah', 15000, 0, 0, 0),
(140, 'BRG-140', 'Rotan kasar', 'buah', 8000, 0, 0, 0),
(141, 'BRG-141', 'Termos Elephant', 'buah', 45000, 0, 0, 0),
(142, 'BRG-142', 'Termos Lion Star', 'buah', 62500, 75000, 1, 12500),
(143, 'BRG-143', 'Hanger bayi SPP', 'buah', 27000, 0, 0, 0),
(144, 'BRG-144', 'Hanger bayi Lion Star', 'buah', 50000, 0, 0, 0),
(145, 'BRG-145', 'Gelas Set Royal', 'kotak', 18000, 0, 0, 0),
(146, 'BRG-146', 'Gelas Set Tadah', 'kotak', 25000, 0, 0, 0),
(147, 'BRG-147', 'Gelas Mama Papa', 'kotak', 18000, 0, 0, 0),
(148, 'BRG-148', 'Botol minum anak (10.000)', 'buah', 5000, 10000, 1, 5000),
(149, 'BRG-149', 'Gantungan sabun murah', 'buah', 10000, 0, 0, 0),
(150, 'BRG-150', 'Saringan minyak pendek besi', 'buah', 10000, 0, 0, 0),
(151, 'BRG-151', 'Saringan minyak panjang bagus', 'buah', 25000, 0, 0, 0),
(152, 'BRG-152', 'Saringan minyak pendek biasa', 'buah', 8000, 0, 0, 0),
(153, 'BRG-153', 'Saringan minyak tangkai kayu', 'buah', 18000, 0, 0, 0),
(154, 'BRG-154', 'Tudung saji petak kecil', 'buah', 8000, 0, 0, 0),
(155, 'BRG-155', 'Tudung saji bulat kecil', 'buah', 5000, 75000, 3, 210000),
(156, 'BRG-156', 'Botol minum mickey mouse', 'buah', 20000, 0, 0, 0),
(157, 'BRG-157', 'Botol minum Clean Safe (35.000)', 'buah', 27000, 35000, 2, 16000),
(158, 'BRG-158', 'Botol minum Clean Safe (37.000)', 'buah', 27000, 0, 0, 0),
(159, 'BRG-159', 'Botol Minum (13.000) kecil', 'buah', 8000, 0, 0, 0),
(160, 'BRG-160', 'Botol Minum (15.000) besar', 'buah', 10000, 0, 0, 0),
(161, 'BRG-161', 'Botol Minum Clio besar (20.000)', 'buah', 13000, 0, 0, 0),
(162, 'BRG-162', 'Botol Minum Sport (18.000)', 'buah', 13000, 0, 0, 0),
(163, 'BRG-163', 'Botol Minum Sarung', 'buah', 12000, 0, 0, 0),
(164, 'BRG-164', 'Botol Minum Bayi (30.000)', 'buah', 22000, 0, 0, 0),
(165, 'BRG-165', 'Teko plastik Lion Star', 'buah', 25000, 0, 0, 0),
(166, 'BRG-166', 'Gelas Plastik Bayi (7.000)', 'buah', 5000, 0, 0, 0),
(167, 'BRG-167', 'Gelas Plastik bunga (6.000)', 'buah', 4000, 0, 0, 0),
(168, 'BRG-168', 'Mangkok sweet Pacific (17.000)', 'buah', 10000, 0, 0, 0),
(169, 'BRG-169', 'Gelas Plastik (5.000)', 'buah', 3000, 0, 0, 0),
(170, 'BRG-170', 'Tempat makan bayi (25.000)', 'buah', 20000, 0, 0, 0),
(171, 'BRG-171', 'Tempat makan bayi (15.000) besar', 'buah', 10000, 0, 0, 0),
(172, 'BRG-172', 'Tempat makan bayi (12.000)', 'buah', 8000, 0, 0, 0),
(173, 'BRG-173', 'Tempat makan Yokohama (15.000)', 'buah', 11000, 0, 0, 0),
(174, 'BRG-174', 'Tempat kopi murah', 'buah', 4000, 0, 0, 0),
(175, 'BRG-175', 'Tempat makan (8.000)kecil', 'buah', 5000, 0, 0, 0),
(176, 'BRG-176', 'Tempat makan Lemony Plast (15.000)', 'buah', 10000, 0, 0, 0),
(177, 'BRG-177', 'Gelas kaca Sabrina', 'kotak', 18000, 0, 0, 0),
(178, 'BRG-178', 'Tempat makan (8.000)', 'buah', 5000, 0, 0, 0),
(179, 'BRG-179', 'Tempat kue  (10.000)', 'buah', 6000, 0, 0, 0),
(180, 'BRG-180', 'Tempat nasi (8.000)', 'buah', 5000, 0, 0, 0),
(181, 'BRG-181', 'Tempat nasi (10.000)', 'buah', 6000, 0, 0, 0),
(182, 'BRG-182', 'Tempa Microwave Food  (20.000)', 'buah', 15000, 0, 0, 0),
(183, 'BRG-183', 'Tempat makan Viola (10.000)', 'buah', 6000, 0, 0, 0),
(184, 'BRG-184', 'Tempat makan kelinci', 'buah', 2000, 0, 0, 0),
(185, 'BRG-185', 'Tempat makan ichiban 4 sususn', 'buah', 40000, 0, 0, 0),
(186, 'BRG-186', 'Tempat makan KH 3 Susun', 'buah', 30000, 0, 0, 0),
(187, 'BRG-187', 'Tempat makan KH 2 susun', 'buah', 20000, 0, 0, 0),
(188, 'BRG-188', 'Tempat kopi Chili murah', 'buah', 4000, 0, 0, 0),
(189, 'BRG-189', 'Tempat nasi (5.000)', 'buah', 4000, 0, 0, 0),
(190, 'BRG-190', 'Tempat sabun (3.000) KH', 'buah', 1500, 0, 0, 0),
(191, 'BRG-191', 'Pisau buah kecil (36.000)', 'lusin', 24000, 0, 0, 0),
(192, 'BRG-192', 'Pisau buah kecil (3.000)', 'buah', 2000, 0, 0, 0),
(193, 'BRG-193', 'Pisau (15.000)', 'buah', 9000, 0, 0, 0),
(194, 'BRG-194', 'Pisau besi besar', 'buah', 20000, 0, 0, 0),
(195, 'BRG-195', 'Pisau besi kecil', 'buah', 8000, 0, 0, 0),
(196, 'BRG-196', 'Pisau besi menengah', 'buah', 10000, 0, 0, 0),
(197, 'BRG-197', 'Pisau Peealer (6.000) kecil', 'buah', 4000, 0, 0, 0),
(198, 'BRG-198', 'Pisau bersarung kecil', 'buah', 3000, 0, 0, 0),
(199, 'BRG-199', 'pisau (18.000)', 'buah', 11000, 0, 0, 0),
(200, 'BRG-200', 'Pisau kecil (36.000)', 'lusin', 25000, 0, 0, 0),
(201, 'BRG-201', 'Pisau peealer besar', 'buah', 6000, 0, 0, 0),
(202, 'BRG-202', 'Spatula kecil', 'buah', 8000, 0, 0, 0),
(203, 'BRG-203', 'Celemek masak', 'buah', 9000, 0, 0, 0),
(204, 'BRG-204', 'Gantungan jilbab 5 susun', 'buah', 4000, 0, 0, 0),
(205, 'BRG-205', 'asoi Plastik Kharisma 1Kg', 'buah', 6000, 0, 0, 0),
(206, 'BRG-206', 'asoi Plastik Kharisma 2 Kg', 'buah', 6000, 0, 0, 0),
(207, 'BRG-207', 'asoi Plastik Kharisma 3Kg', 'buah', 6000, 0, 0, 0),
(208, 'BRG-208', 'asoi Plastik Kelinci (1Kg)', 'buah', 3000, 0, 0, 0),
(209, 'BRG-209', 'asoi Plastik Kelinci Putih (3Kg)', 'buah', 6000, 0, 0, 0),
(210, 'BRG-210', 'asoi Plastik Salami Kecil', 'buah', 11000, 0, 0, 0),
(211, 'BRG-211', 'asoi Plastik Salami Menengah', 'buah', 11000, 0, 0, 0),
(212, 'BRG-212', 'asoi Plastik Salami Besar', 'buah', 11000, 0, 0, 0),
(213, 'BRG-213', 'asoi Plastik Swallow', 'buah', 12000, 0, 0, 0),
(214, 'BRG-214', 'asoi Plastik Pop Ice 1 cup', 'buah', 4000, 0, 0, 0),
(215, 'BRG-215', 'asoi Plastik Pop Ice 2 cup', 'buah', 4000, 0, 0, 0),
(216, 'BRG-216', 'asoi Plastik belang hitam putih kecil', 'buah', 6000, 0, 0, 0),
(217, 'BRG-217', 'Asoi Plastik belang  besar', 'buah', 7000, 0, 0, 0),
(218, 'BRG-218', 'asoi Plastik besar biru', 'buah', 20000, 0, 0, 0),
(219, 'BRG-219', 'asoi Plastik besar kelinci jumbo', 'buah', 22000, 0, 0, 0),
(220, 'BRG-220', 'asoi Plastik Tas HD jumbo', 'buah', 30000, 0, 0, 0),
(221, 'BRG-221', 'lem setan', 'buah', 5000, 0, 0, 0),
(222, 'BRG-222', 'Kertas nasi bulat', 'pack', 22000, 0, 0, 0),
(223, 'BRG-223', 'Kertas nasi petak', 'pack', 25000, 25000, 2, 0),
(224, 'BRG-224', 'Plastik HD isi1 Kg', 'kg', 28000, 0, 0, 0),
(225, 'BRG-225', 'Plastik HD isi 10 Kg', 'kg', 28000, 0, 0, 0),
(226, 'BRG-226', 'Plastik HD isi 1/4 Kg', 'kg', 28000, 0, 0, 0),
(227, 'BRG-227', 'Plastik HD isi 1/2 Kg', 'kg', 28000, 0, 0, 0),
(228, 'BRG-228', 'Plastik HD isi 2 Kg', 'kg', 28000, 0, 0, 0),
(229, 'BRG-229', 'Jas hujan Rajawali', 'buah', 5000, 8000, 1, 3000),
(230, 'BRG-230', 'Jas hujan HDPE', 'buah', 5000, 12000, 3, 20000),
(231, 'BRG-231', 'Jas hujan Anda', 'buah', 10000, 0, 0, 0),
(232, 'BRG-232', 'Seal cup plastik press jus (85.000)', 'pack', 80, 0, 0, 0),
(233, 'BRG-233', 'Seal cup plastik press jus (65.000)', 'pack', 60000, 0, 0, 0),
(234, 'BRG-234', 'Plastik Thank You, Size (19)', 'buah', 15000, 0, 0, 0),
(235, 'BRG-235', 'Plastik Thank You,Size (24)', 'buah', 15000, 0, 0, 0),
(236, 'BRG-236', 'Plastik Thank You, Size (29)', 'buah', 15000, 0, 0, 0),
(237, 'BRG-237', 'Plastik Thank You Size (15)', 'buah', 15000, 0, 0, 0),
(238, 'BRG-238', 'Bangku ultra', 'buah', 18000, 0, 0, 0),
(239, 'BRG-239', 'Lemari Kayu 2 pintu', 'buah', 550000, 800000, 1, 250000),
(240, 'BRG-240', 'Lemari Kayu 3  pintu', 'buah', 700000, 0, 0, 0),
(241, 'BRG-241', 'Bestar rak 3', 'buah', 350000, 0, 0, 0),
(242, 'BRG-242', 'Bestar rak 4', 'buah', 450000, 510000, 3, 140000),
(243, 'BRG-243', 'Napolly kaca', 'buah', 670000, 0, 0, 0),
(244, 'BRG-244', 'Napolly BCBC', 'buah', 500000, 0, 0, 0),
(245, 'BRG-245', 'Lemari samba Besar', 'buah', 1450000, 0, 0, 0),
(246, 'BRG-246', 'Lemari samba Menangah', 'buah', 975000, 0, 0, 0),
(247, 'BRG-247', 'Lemari samba Kecil', 'buah', 675000, 0, 0, 0),
(248, 'BRG-248', 'Kasur surpet', 'buah', 290000, 350000, 1, 40000),
(249, 'BRG-249', 'Lehab 1.8m biasa', 'buah', 185000, 0, 0, 0),
(250, 'BRG-250', 'Lehab 1.6m', 'buah', 165000, 0, 0, 0),
(251, 'BRG-251', 'Lehab 1.4m', 'buah', 145000, 0, 0, 0),
(252, 'BRG-252', 'Lehab 1.2m', 'buah', 125000, 0, 0, 0),
(253, 'BRG-253', 'Lehab 1m', 'buah', 115000, 0, 0, 0),
(254, 'BRG-254', 'Lehab 80', 'buah', 100000, 125000, 1, 25000),
(255, 'BRG-255', 'Lehab 1.8 jumbo', 'buah', 255000, 0, 0, 0),
(256, 'BRG-256', 'Kasur busa murah', 'buah', 200000, 250000, 1, 50000),
(257, 'BRG-257', 'Kasur busa Shi Gay', 'buah', 310000, 0, 0, 0),
(258, 'BRG-258', 'Busa Bigland benua', 'buah', 350000, 0, 0, 0),
(259, 'BRG-259', 'Busa Bola Dunia 80', 'buah', 310000, 500000, 1, 190000),
(260, 'BRG-260', 'Busa Bola Dunia 90', 'buah', 350000, 0, 0, 0),
(261, 'BRG-261', 'Busa lipat + bantal (Kecil)', 'buah', 145000, 0, 0, 0),
(262, 'BRG-262', 'Busa lipat + bantal (Besar)', 'buah', 225000, 0, 0, 0),
(263, 'BRG-263', 'Busa lipat dua', 'buah', 200000, 0, 0, 0),
(264, 'BRG-264', 'Busa lipat empat', 'buah', 350000, 0, 0, 0),
(265, 'BRG-265', 'Kasur tempahan Ct.5', 'buah', 440000, 0, 0, 0),
(266, 'BRG-266', 'Kasur tempahan Ct.7', 'buah', 475000, 0, 0, 0),
(267, 'BRG-267', 'Kasur gulung  Ct5', 'buah', 225000, 0, 0, 0),
(268, 'BRG-268', 'Kasur gulung Ct.7', 'buah', 250000, 0, 0, 0),
(269, 'BRG-269', 'Spring bed Bigland 1.6', 'buah', 1900000, 0, 0, 0),
(270, 'BRG-270', 'Spring bed Bigland 1.8', 'buah', 2000000, 0, 0, 0),
(271, 'BRG-271', 'Spring bed Angel 1.6', 'buah', 1500000, 0, 0, 0),
(272, 'BRG-272', 'Spring bed Ocean 1.6', 'buah', 1900000, 2200000, 1, 300000),
(273, 'BRG-273', 'Spring bed Bola dunia  1.6', 'buah', 1750000, 0, 0, 0),
(274, 'BRG-274', 'Busa Bigland 1.2', 'buah', 1400000, 0, 0, 0),
(275, 'BRG-275', 'Bantal Dakron', 'buah', 35000, 50000, 4, 30000),
(276, 'BRG-276', 'Bantal kapas', 'buah', 35000, 50000, 4, 60000),
(277, 'BRG-277', 'Bantal busa', 'buah', 30000, 40000, 1, 10000),
(278, 'BRG-278', 'Guling Dakron', 'buah', 35000, 0, 0, 0),
(279, 'BRG-279', 'Guling kapas kain bunga', 'buah', 40000, 0, 0, 0),
(280, 'BRG-280', 'Guling kapas kain printing', 'buah', 35000, 0, 0, 0),
(281, 'BRG-281', 'Guling busa', 'buah', 30000, 0, 0, 0),
(282, 'BRG-282', 'Bantal cinta', 'buah', 75000, 0, 0, 0),
(283, 'BRG-283', 'Bantal set Bludru', 'set', 100000, 0, 0, 0),
(284, 'BRG-284', 'Kasur bayi bulat', 'buah', 145000, 0, 0, 0),
(285, 'BRG-285', 'Kasur bayi lipat', 'buah', 155000, 0, 0, 0),
(286, 'BRG-286', 'Per bayi', 'buah', 35000, 0, 0, 0),
(287, 'BRG-287', 'Kelambu bayi +per', 'buah', 67000, 0, 0, 0),
(288, 'BRG-288', 'Kelambu bayi', 'buah', 35000, 0, 0, 0),
(289, 'BRG-289', 'Kojong bayi Kecil', 'buah', 25000, 0, 0, 0),
(290, 'BRG-290', 'Kojong bayi besar', 'buah', 27000, 0, 0, 0),
(291, 'BRG-291', 'Perlak bayi', 'buah', 22000, 0, 0, 0),
(292, 'BRG-292', 'Gendongan murah', 'buah', 35000, 0, 0, 0),
(293, 'BRG-293', 'Gerndongan Menengah', 'buah', 75000, 0, 0, 0),
(294, 'BRG-294', 'Gendongan Mahal', 'buah', 85000, 0, 0, 0),
(295, 'BRG-295', 'Bantal picak bayi', 'buah', 35000, 0, 0, 0),
(296, 'BRG-296', 'Jaket bayi', 'buah', 40000, 0, 0, 0),
(297, 'BRG-297', 'Kolor anak-anak perempuan', 'buah', 10000, 0, 0, 0),
(298, 'BRG-298', 'Kolor anak-anak laki-laki', 'kotak', 20000, 0, 0, 0),
(299, 'BRG-299', 'Kolor laki-laki dewasa Campiro', 'kotak', 25000, 0, 0, 0),
(300, 'BRG-300', 'Singlet Laki-laki', 'buah', 15000, 0, 0, 0),
(301, 'BRG-301', 'Kain bantal bunga', 'buah', 8000, 0, 0, 0),
(302, 'BRG-302', 'Kain bantal murah', 'buah', 7000, 0, 0, 0),
(303, 'BRG-303', 'Kain guling bunga', 'buah', 15000, 0, 0, 0),
(304, 'BRG-304', 'Kain guling murah', 'buah', 10000, 0, 0, 0),
(305, 'BRG-305', 'Kain busa', 'buah', 75000, 0, 0, 0),
(306, 'BRG-306', 'Kain kasur kapas Ct.7 bunga', 'buah', 90000, 0, 0, 0),
(307, 'BRG-307', 'Kain kasur C+.5 bunga', 'buah', 80000, 0, 0, 0),
(308, 'BRG-308', 'Kain kasur biasa Ct.7', 'buah', 75000, 0, 0, 0),
(309, 'BRG-309', 'Kain kasur biasa Ct.5', 'buah', 70000, 0, 0, 0),
(310, 'BRG-310', 'Selimut Internal', 'buah', 110000, 0, 0, 0),
(311, 'BRG-311', 'Selimut Fata', 'buah', 95000, 0, 0, 0),
(312, 'BRG-312', 'Selimut LadyRose', 'buah', 98000, 0, 0, 0),
(313, 'BRG-313', 'Selimut Standar', 'buah', 65000, 0, 0, 0),
(314, 'BRG-314', 'Selimut biasa', 'buah', 45000, 80000, 1, 35000),
(315, 'BRG-315', 'Selimut murah', 'buah', 35000, 0, 0, 0),
(316, 'BRG-316', 'Handuk Classic', 'buah', 67000, 0, 0, 0),
(317, 'BRG-317', 'Handuk Lexus', 'buah', 65000, 0, 0, 0),
(318, 'BRG-318', 'Handuk Gucci', 'buah', 35000, 0, 0, 0),
(319, 'BRG-319', 'Handuk murah', 'buah', 25000, 0, 0, 0),
(320, 'BRG-320', 'Serbet biasa', 'buah', 3000, 0, 0, 0),
(321, 'BRG-321', 'Serbet murah', 'buah', 2000, 0, 0, 0),
(322, 'BRG-322', 'Sarung bantal LadyRoses', 'buah', 15000, 0, 0, 0),
(323, 'BRG-323', 'Seprai Bujangan Arcadia', 'buah', 45000, 0, 0, 0),
(324, 'BRG-324', 'Seprai Bujangan LadyRoses', 'buah', 65000, 80000, 1, 15000),
(325, 'BRG-325', 'Seprai Double California', 'buah', 93000, 130000, 1, 37000),
(326, 'BRG-326', 'Seprai  Double Illution', 'buah', 75000, 100, 1, 25000),
(327, 'BRG-327', 'Seprai Dulux Rempel', 'buah', 150000, 0, 0, 0),
(328, 'BRG-328', 'Sarung Wadimor', 'buah', 41000, 0, 0, 0),
(329, 'BRG-329', 'Sarung Gajah duduk', 'buah', 43000, 0, 0, 0),
(330, 'BRG-330', 'Kelambu Polos', 'buah', 23000, 0, 0, 0),
(331, 'BRG-331', 'Kelambu bunga /motif', 'buah', 27000, 0, 0, 0),
(332, 'BRG-332', 'Mahar', 'buah', 165000, 0, 0, 0),
(333, 'BRG-333', 'Lapiak Kamba 3 x 4', 'buah', 205000, 240000, 1, 35000),
(334, 'BRG-334', 'Lapiak kamba 2x3', 'buah', 110000, 0, 0, 0),
(335, 'BRG-335', 'Lapiak Kamba 3x3', 'buah', 150000, 0, 0, 0),
(336, 'BRG-336', 'Lapiak kamba 2x5', 'buah', 170000, 0, 0, 0),
(337, 'BRG-337', 'Lapiak Kamba 3x5', 'buah', 255000, 370000, 1, 115000),
(338, 'BRG-338', 'Lapiak Kamba 2x4', 'buah', 140000, 0, 0, 0),
(339, 'BRG-339', 'Gerobak Familly murah', 'buah', 225000, 0, 0, 0),
(340, 'BRG-340', 'Gerobak Familly mahal', 'buah', 360000, 0, 0, 0),
(341, 'BRG-341', 'Kasur sajadah', 'buah', 55000, 0, 0, 0),
(342, 'BRG-342', 'Busa gosokkan', 'buah', 45000, 0, 0, 0),
(343, 'BRG-343', 'Lemari rias', 'buah', 650000, 0, 0, 0),
(344, 'BRG-344', 'Kursi Napolly biasa bulat', 'buah', 52000, 65000, 4, 52000),
(345, 'BRG-345', 'Kursi Napolly petak', 'buah', 65000, 0, 0, 0),
(346, 'BRG-346', 'Napolly rotan', 'buah', 85000, 0, 0, 0),
(347, 'BRG-347', 'Napolly ceper murah', 'buah', 85000, 0, 0, 0),
(348, 'BRG-348', 'Napolly ceper bagus', 'buah', 105000, 0, 0, 0),
(349, 'BRG-349', 'Meja Napolly biasa', 'buah', 45000, 0, 0, 0),
(350, 'BRG-350', 'Meja Napolly bagus', 'buah', 50000, 0, 0, 0),
(351, 'BRG-351', 'Meja Napolly rotan', 'buah', 75000, 0, 0, 0),
(352, 'BRG-352', 'Bangku Napolly rotan petak', 'buah', 35000, 0, 0, 0),
(353, 'BRG-353', 'Bangku Napolly rotan bulat', 'buah', 35000, 0, 0, 0),
(354, 'BRG-354', 'Saba bangku', 'buah', 27000, 0, 0, 0),
(355, 'BRG-355', 'Bangku murah petak', 'buah', 17000, 0, 0, 0),
(356, 'BRG-356', 'Bangku anak pakai tangan', 'buah', 25000, 0, 0, 0),
(357, 'BRG-357', 'Bangku anak biasa', 'buah', 18000, 0, 0, 0),
(358, 'BRG-358', 'Jemuran kain kecil', 'buah', 200000, 0, 0, 0),
(359, 'BRG-359', 'Jemuran kain besar', 'buah', 450000, 0, 0, 0),
(360, 'BRG-360', 'jermuran kain stainless', 'buah', 450000, 0, 0, 0),
(361, 'BRG-361', 'Lemari samba Master', 'buah', 450000, 0, 0, 0),
(362, 'BRG-362', 'Rak piring Lancer besar', 'buah', 185000, 210000, 1, 25000),
(363, 'BRG-363', 'Rak piring Prima besar', 'buah', 135000, 0, 0, 0),
(364, 'BRG-364', 'Rak piring kecil', 'buah', 95000, 0, 0, 0),
(365, 'BRG-365', 'Galon', 'buah', 27000, 0, 0, 0),
(366, 'BRG-366', 'Lapiak Spun murah kecil', 'buah', 17000, 0, 0, 0),
(367, 'BRG-367', 'Lapiak Spun tebal  1.2m', 'buah', 45000, 0, 0, 0),
(368, 'BRG-368', 'Lapiak Spun tebal 2m', 'buah', 80000, 25000, 1, -55000),
(369, 'BRG-369', 'Kursi rotan Honda', 'buah', 65000, 95000, 1, 30000),
(370, 'BRG-370', 'Bebek sepeda', 'buah', 135000, 0, 0, 0),
(371, 'BRG-371', 'Kuda -Kuda', 'buah', 80000, 0, 0, 0),
(372, 'BRG-372', 'Vespa kuning', 'buah', 160000, 0, 0, 0),
(373, 'BRG-373', 'Honda polisi', 'buah', 120000, 0, 0, 0),
(374, 'BRG-374', 'Mobil polisi', 'buah', 125000, 0, 0, 0),
(375, 'BRG-375', 'Celengan Kaleng  5.000', 'buah', 3000, 5000, 1, 2000),
(376, 'BRG-376', 'Celengan kaleng  8.000', 'buah', 5000, 0, 0, 0),
(377, 'BRG-377', 'Celengan kaleng  10.000', 'buah', 8000, 0, 0, 0),
(378, 'BRG-378', 'Celengan kaleng  15.000', 'buah', 9000, 15000, 3, 36000),
(379, 'BRG-379', 'Celengan dorom plastik 5.000', 'buah', 2500, 0, 0, 0),
(380, 'BRG-380', 'Celengan rumah-rumah 15.000', 'buah', 10000, 0, 0, 0),
(381, 'BRG-381', 'Celengan lumba-lumba 5.000', 'buah', 3000, 0, 0, 0),
(382, 'BRG-382', 'Celengan kura-kura 8.000', 'buah', 5000, 0, 0, 0),
(383, 'BRG-383', 'Celengan ayam 8.000', 'buah', 5000, 0, 0, 0),
(384, 'BRG-384', 'Bola karet', 'buah', 5000, 0, 0, 0),
(385, 'BRG-385', 'Bola karah kecil', 'buah', 5000, 0, 0, 0),
(386, 'BRG-386', 'Bola karah besar', 'buah', 6000, 0, 0, 0),
(387, 'BRG-387', 'Tempat makan bayi besar', 'buah', 18000, 0, 0, 0),
(388, 'BRG-388', 'Tempat makan bayi Kecil', 'buah', 15000, 0, 0, 0),
(389, 'BRG-389', 'lapiak lantai meteran 2m', 'meter', 20000, 30000, 2, 37000),
(390, 'BRG-390', 'lapiak lantai meteran 1,5m', 'meter', 16000, 0, 0, 0),
(391, 'BRG-391', 'lapiak lantai meteran 1m', 'meter', 8000, 10000, 1, 2000),
(392, 'BRG-392', 'plastik loteng', 'meter', 3000, 8000, 1, 5000),
(393, 'BRG-393', 'plastik loteng', 'kg', 36000, 45000, 1, 9000),
(394, 'BRG-394', 'perlak orang tuo', 'meter', 18000, 50000, 1, 32000),
(395, 'BRG-395', 'Ambal besar', 'buah', 400000, 600000, 1, 200000),
(396, 'BRG-396', 'Ambal menengah', 'buah', 190, 0, 0, 0),
(397, 'BRG-397', 'Ambal kecil', 'buah', 120000, 0, 0, 0),
(398, 'BRG-398', 'Kajai merah per kg', 'kg', 55000, 0, 0, 0),
(399, 'BRG-399', 'Kajai kuning dan hijau per kg', 'kg', 53000, 0, 0, 0),
(400, 'BRG-400', 'Kajai merah 1/4 kg', 'kg', 13750, 0, 0, 0),
(401, 'BRG-401', 'Kajai kuning dan hijau 1/4 kg', 'kg', 13250, 0, 0, 0),
(402, 'BRG-402', 'Kajai per ons', 'ons', 5500, 0, 0, 0),
(403, 'BRG-403', 'Plastik HD all ukuran, 1/4 kg', 'kg', 7000, 0, 0, 0),
(404, 'BRG-404', 'Plastik HD all ukuran, 1 ons', 'ons', 3000, 0, 0, 0),
(405, 'BRG-405', 'Gelas 12', 'pack', 10000, 12000, 1, 2000),
(406, 'BRG-406', 'Gelas 14', 'pack', 10000, 0, 0, 0),
(407, 'BRG-407', 'Tutup datar', 'pack', 4000, 5000, 2, 2000),
(408, 'BRG-408', 'Tutup cembung', 'pack', 6500, 0, 0, 0),
(409, 'BRG-409', 'Pipet 1 pack', 'pack', 13000, 0, 0, 0),
(410, 'BRG-410', 'Pipert per pcs', 'buah', 1500, 0, 0, 0),
(411, 'BRG-411', 'Stik per ons', 'ons', 2500, 0, 0, 0),
(412, 'BRG-412', 'rak sepatu gantung', 'buah', 35000, 0, 0, 0),
(413, 'BRG-413', 'rak tas gantung', 'buah', 45000, 0, 0, 0),
(414, 'BRG-414', 'Tudung tilokoh rotan kecil', 'buah', 8000, 0, 0, 0),
(415, 'BRG-415', 'Tudung tilokoh rotan menengah', 'buah', 8500, 0, 0, 0),
(416, 'BRG-416', 'Tudung tilokoh rotan besar', 'buah', 10000, 0, 0, 0),
(417, 'BRG-417', 'Tudung tilokoh korea', 'buah', 18000, 0, 0, 0),
(418, 'BRG-418', 'Sendok besi besar', 'lusin', 8000, 12000, 1, 4000),
(419, 'BRG-419', 'Sendok besi kecil panjang', 'lusin', 6000, 0, 0, 0),
(420, 'BRG-420', 'Sendok sate aluminium', 'lusin', 5000, 0, 0, 0),
(421, 'BRG-421', 'Sendok karah pelangi', 'pack', 7000, 0, 0, 0),
(422, 'BRG-422', 'Garpu besi besar', 'lusin', 8000, 0, 0, 0),
(423, 'BRG-423', 'Botol Kecap kecil', 'buah', 3000, 0, 0, 0),
(424, 'BRG-424', 'Botol kecap menengah', 'buah', 4000, 0, 0, 0),
(425, 'BRG-425', 'Botol kecap besar', 'buah', 5000, 0, 0, 0),
(426, 'BRG-426', 'Tusuk sate', 'pack', 11000, 0, 0, 0),
(427, 'BRG-427', 'sarung tangan biasa', 'pasang', 2500, 5000, 1, 2500),
(428, 'BRG-428', 'sarung tangan rigi', 'pasang', 3000, 0, 0, 0),
(429, 'BRG-429', 'Catur', 'buah', 25000, 0, 0, 0),
(430, 'BRG-430', 'Paku rebana', 'kotak', 1000, 0, 0, 0),
(431, 'BRG-431', 'Lapiak bening alas meja biasa', 'meter', 6000, 0, 0, 0),
(432, 'BRG-432', 'Lapiak bening alas meja bagus', 'meter', 8000, 0, 0, 0),
(433, 'BRG-433', 'Karpet kaneka biasa', 'meter', 28000, 0, 0, 0),
(434, 'BRG-434', 'Karpet kaneka bagus', 'meter', 33000, 0, 0, 0),
(435, 'BRG-435', 'Kain kapan 1 set', 'set', 30000, 100000, 1, 70000),
(436, 'BRG-436', 'Kain kapan saja', 'buah', 20000, 0, 0, 0),
(437, 'BRG-437', 'Kapas mati', 'buah', 6000, 50000, 5, 161000),
(438, 'BRG-438', 'Air mawar', 'buah', 2000, 0, 0, 0),
(439, 'BRG-439', 'Kapur barus', 'bungkus', 2000, 0, 0, 0),
(440, 'BRG-440', 'Lapiak mati', 'buah', 50000, 65000, 1, 15000),
(441, 'BRG-441', 'Kampia sandang', 'buah', 15000, 0, 0, 0),
(442, 'BRG-442', 'Kampia bulat kecil', 'buah', 15000, 0, 0, 0),
(443, 'BRG-443', 'Kampia bulat besar', 'buah', 10000, 0, 0, 0),
(444, 'BRG-444', 'Masker kain', 'buah', 4000, 10000, 2, -2000),
(445, 'BRG-445', 'Masker scuba', 'buah', 4000, 10000, 1, 6000),
(446, 'BRG-446', 'Pompa minyak', 'buah', 20000, 0, 0, 0),
(447, 'BRG-447', 'Sapu oto', 'buah', 10000, 0, 0, 0),
(448, 'BRG-448', 'Gayung jumbo', 'buah', 8000, 0, 0, 0),
(449, 'BRG-449', 'Gayung biasa tipis', 'buah', 3000, 5000, 1, 2000),
(450, 'BRG-450', 'Gayung biasa tebal', 'buah', 3000, 0, 0, 0),
(451, 'BRG-451', 'Penyiram bunga putih besar', 'buah', 55000, 0, 0, 0),
(452, 'BRG-452', 'Penyiram bunga hijau kecil', 'buah', 35000, 0, 0, 0),
(453, 'BRG-453', 'Sikat galon', 'buah', 7500, 0, 0, 0),
(454, 'BRG-454', 'Raket badminton', 'buah', 10000, 0, 0, 0),
(455, 'BRG-455', 'Sikat closet tutup', 'buah', 10000, 0, 0, 0),
(456, 'BRG-456', 'Sikat closet tanpa tutup', 'buah', 7500, 5000, 1, -2500),
(457, 'BRG-457', 'Sikat wc pegangan nagoya', 'buah', 5000, 10000, 1, 5000),
(458, 'BRG-458', 'Gundar baju murah', 'buah', 3000, 0, 0, 0),
(459, 'BRG-459', 'Gundar baju bagus', 'buah', 4000, 0, 0, 0),
(460, 'BRG-460', 'Sapu (20.000)', 'buah', 13000, 0, 0, 0),
(461, 'BRG-461', 'Sapu (25.000)', 'buah', 19000, 25000, 2, 12000),
(462, 'BRG-462', 'Sapu (30.000)', 'buah', 21000, 30000, 1, 7000),
(463, 'BRG-463', 'Sapu korea (35.000)', 'buah', 24, 35000, 1, 34976),
(464, 'BRG-464', 'Sapu korea (40.000)', 'buah', 32000, 40000, 1, 8000),
(465, 'BRG-465', 'Sapu tangkai stainless', 'buah', 32000, 0, 0, 0),
(466, 'BRG-466', 'Sikat wc korea putih', 'buah', 27000, 30000, 1, 3000),
(467, 'BRG-467', 'Sikat wc korea warna', 'buah', 23000, 30000, 1, 7000),
(468, 'BRG-468', 'Sikat wc lotus', 'buah', 14000, 0, 0, 0),
(469, 'BRG-469', 'Sapu pel petak biasa', 'buah', 13000, 0, 0, 0),
(470, 'BRG-470', 'Sapu pel petak korea', 'buah', 28000, 0, 0, 0),
(471, 'BRG-471', 'Sapu pel bulat biasa', 'buah', 13000, 0, 0, 0),
(472, 'BRG-472', 'Sapu pel bulat korea', 'buah', 28000, 0, 0, 0),
(473, 'BRG-473', 'Sapu pel mall kecil', 'buah', 45000, 0, 0, 0),
(474, 'BRG-474', 'Sapu pel mall menengah', 'buah', 50000, 0, 0, 0),
(475, 'BRG-475', 'Sapu pel mall besar', 'buah', 65000, 0, 0, 0),
(476, 'BRG-476', 'Sapu ijuk', 'buah', 21000, 0, 0, 0),
(477, 'BRG-477', 'sapu lidi', 'buah', 5000, 7000, 1, 2000),
(478, 'BRG-478', 'Sodok air banjir biasa', 'buah', 13000, 0, 0, 0),
(479, 'BRG-479', 'Sodok air banjir korea', 'buah', 15000, 0, 0, 0),
(480, 'BRG-480', 'Sodok sampah korea', 'buah', 18000, 0, 0, 0),
(481, 'BRG-481', 'Sodok sampah macan', 'buah', 15000, 0, 0, 0),
(482, 'BRG-482', 'Sodok sampah biasa besar', 'buah', 10000, 0, 0, 0),
(483, 'BRG-483', 'Sodok sampah biasa kecil', 'buah', 7000, 0, 0, 0),
(484, 'BRG-484', 'Sodok sampah murah', 'buah', 5000, 0, 0, 0),
(485, 'BRG-485', 'cock bulu tangkis', 'buah', 2000, 0, 0, 0),
(486, 'BRG-486', 'Payung biasa', 'buah', 25000, 30000, 2, 10000),
(487, 'BRG-487', 'Payung lipat', 'buah', 25000, 0, 0, 0),
(488, 'BRG-488', 'Payung pelangi besar 90', 'buah', 75000, 0, 0, 0),
(489, 'BRG-489', 'Payung pelangi besar 120', 'buah', 110000, 0, 0, 0),
(490, 'BRG-490', 'Payung pelangi besar 180', 'buah', 135000, 0, 0, 0),
(491, 'BRG-491', 'Kolor laki-laki dewasa lintian', 'kotak', 60000, 0, 0, 0),
(492, 'BRG-492', 'Rel kuning', 'meter', 40000, 0, 0, 0),
(493, 'BRG-493', 'Rel putih', 'meter', 16000, 0, 0, 0),
(494, 'BRG-494', 'selasi ban (putih, kuning, hitam) tipis', 'buah', 5000, 0, 0, 0),
(495, 'BRG-495', 'selasi ban putih tebal', 'buah', 8000, 0, 0, 0),
(496, 'BRG-496', 'Domino', 'bungkus', 28000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_modal` double NOT NULL DEFAULT '0',
  `harga_jual` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `laba` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `kode_transaksi`, `tanggal_transaksi`, `kode_barang`, `qty`, `harga_modal`, `harga_jual`, `total`, `laba`) VALUES
(1, 'TRX-001', '2021-01-01', 'BRG-405', 1, 10000, 12000, 12000, 2000),
(2, 'TRX-002', '2021-01-01', 'BRG-407', 1, 4000, 5000, 5000, 1000),
(3, 'TRX-003', '2021-01-01', 'BRG-466', 1, 27000, 30000, 30000, 3000),
(4, 'TRX-004', '2021-01-01', 'BRG-223', 1, 25000, 25000, 25000, 0),
(5, 'TRX-005', '2021-02-01', 'BRG-157', 2, 27000, 35000, 70000, 16000),
(6, 'TRX-006', '2021-01-02', 'BRG-463', 1, 24, 35000, 35000, 34976),
(7, 'TRX-007', '2021-01-02', 'BRG-325', 1, 93000, 123, 123000, 30000),
(8, 'TRX-008', '2021-01-02', 'BRG-407', 1, 4000, 5000, 5000, 1000),
(9, 'TRX-009', '2021-01-02', 'BRG-239', 1, 550000, 800000, 800000, 250000),
(11, 'TRX-011', '2021-01-02', 'BRG-248', 1, 290000, 330000, 330000, 0),
(12, 'TRX-012', '2021-01-02', 'BRG-124', 1, 8000, 6000, 6000, -2000),
(13, 'TRX-013', '2021-01-02', 'BRG-136', 1, 4000, 6000, 6000, 0),
(14, 'TRX-014', '2021-01-02', 'BRG-223', 1, 25000, 25000, 25000, 0),
(15, 'TRX-015', '2021-01-02', 'BRG-375', 1, 3000, 5000, 5000, 2000),
(16, 'TRX-016', '2021-01-02', 'BRG-333', 1, 205000, 240000, 240000, 35000),
(18, 'TRX-017', '2021-01-02', 'BRG-275', 2, 35000, 50000, 100000, 30000),
(19, 'TRX-018', '2021-01-02', 'BRG-036', 1, 75000, 80000, 80000, 5000),
(20, 'TRX-019', '2021-01-03', 'BRG-393', 1, 36000, 45000, 45000, 9000),
(21, 'TRX-020', '2021-01-03', 'BRG-461', 1, 19000, 25000, 24000, 0),
(26, 'TRX-021', '2021-01-03', 'BRG-444', 1, 4000, 10000, 10000, 6000),
(27, 'TRX-022', '2021-01-03', 'BRG-276', 2, 35000, 50000, 100000, 30000),
(28, 'TRX-023', '2021-01-03', 'BRG-444', 1, 4000, 10000, 10000, 6000),
(29, 'TRX-024', '2021-01-03', 'BRG-437', 1, 6000, 35000, 35000, 29000),
(30, 'TRX-025', '2021-01-03', 'BRG-418', 1, 8000, 12000, 12000, 4000),
(31, 'TRX-026', '2021-01-03', 'BRG-092', 1, 75, 80000, 80000, 79925),
(32, 'TRX-027', '0000-00-00', 'BRG-242', 1, 450000, 530000, 530000, 80000),
(33, 'TRX-028', '2021-01-03', 'BRG-486', 1, 25000, 30000, 30000, 5000),
(34, 'TRX-029', '2021-01-03', 'BRG-123', 1, 8000, 10000, 10000, 2000),
(35, 'TRX-030', '2021-01-03', 'BRG-378', 1, 9000, 15000, 15000, 6000),
(36, 'TRX-031', '2021-01-03', 'BRG-155', 1, 5000, 75000, 75000, 70000),
(37, 'TRX-032', '2021-01-03', 'BRG-155', 1, 5000, 75000, 75000, 70000),
(38, 'TRX-033', '2021-01-03', 'BRG-486', 1, 25000, 30000, 30000, 5000),
(39, 'TRX-034', '2021-01-03', 'BRG-389', 1, 20000, 47000, 47000, 27000),
(40, 'TRX-035', '2021-01-03', 'BRG-155', 1, 5000, 75000, 75000, 70000),
(41, 'TRX-036', '2021-01-03', 'BRG-102', 4, 1500, 10000, 40000, 34000),
(42, 'TRX-037', '2021-01-03', 'BRG-242', 1, 450000, 530000, 500000, 0),
(43, 'TRX-038', '2021-01-03', 'BRG-437', 1, 6000, 50000, 50000, 44000),
(44, 'TRX-039', '2021-01-04', 'BRG-444', 2, 4000, 6000, 12000, 4000),
(45, 'TRX-040', '2021-01-04', 'BRG-064', 5, 8000, 12000, 60000, 20000),
(46, 'TRX-041', '2021-01-04', 'BRG-314', 1, 45000, 80000, 80000, 35000),
(47, 'TRX-042', '2021-01-04', 'BRG-362', 1, 185000, 210000, 210000, 25000),
(48, 'TRX-043', '2021-01-04', 'BRG-378', 1, 9000, 15000, 15000, 6000),
(49, 'TRX-044', '2021-01-04', 'BRG-229', 1, 5000, 8000, 8000, 3000),
(50, 'TRX-045', '2021-01-04', 'BRG-242', 1, 450000, 510000, 510000, 60000),
(51, 'TRX-046', '2021-01-04', 'BRG-064', 2, 8000, 10000, 20000, 4000),
(52, 'TRX-047', '2021-01-05', 'BRG-437', 1, 6000, 50000, 50000, 44000),
(53, 'TRX-048', '2021-01-05', 'BRG-467', 1, 23000, 30000, 30000, 7000),
(54, 'TRX-049', '2021-01-05', 'BRG-082', 2, 8000, 12000, 24000, 8000),
(55, 'TRX-050', '0000-00-00', 'BRG-036', 1, 75000, 90000, 90000, 15000),
(57, 'TRX-051', '2021-01-05', 'BRG-008', 1, 185000, 285000, 285000, 100000),
(59, 'TRX-052', '2021-01-05', 'BRG-378', 2, 9000, 15000, 30000, 30000),
(60, 'TRX-053', '2021-01-06', 'BRG-272', 1, 1900000, 2200000, 2200000, 300000),
(61, 'TRX-054', '2021-01-06', 'BRG-259', 1, 310000, 500000, 500000, 190000),
(62, 'TRX-055', '2021-01-06', 'BRG-461', 1, 19000, 25000, 25000, 6000),
(63, 'TRX-056', '2021-01-06', 'BRG-248', 1, 290000, 330000, 33000, -257000),
(64, 'TRX-057', '2021-01-06', 'BRG-124', 1, 8000, 15000, 15000, 7000),
(65, 'TRX-058', '2021-01-06', 'BRG-456', 1, 7500, 5000, 5000, -2500),
(66, 'TRX-059', '2021-01-06', 'BRG-449', 1, 3000, 5000, 5000, 2000),
(67, 'TRX-060', '2021-01-07', 'BRG-062', 2, 18000, 23000, 45000, 9000),
(69, 'TRX-061', '2021-01-07', 'BRG-086', 1, 35000, 45000, 45000, 10000),
(70, 'TRX-062', '2021-01-07', 'BRG-445', 1, 4000, 10000, 10000, 6000),
(71, 'TRX-063', '2021-01-07', 'BRG-369', 1, 65000, 95000, 95000, 30000),
(72, 'TRX-064', '0000-00-00', 'BRG-344', 4, 52000, 65000, 260000, 52000),
(74, 'TRX-065', '2021-01-07', 'BRG-064', 2, 8000, 10000, 20000, 4000),
(75, 'TRX-066', '2021-01-07', 'BRG-065', 4, 6000, 8000, 30000, 6000),
(76, 'TRX-067', '2021-01-07', 'BRG-391', 5, 8000, 10000, 50000, 10000),
(77, 'TRX-068', '2021-01-08', 'BRG-124', 2, 8000, 15000, 30000, 14000),
(78, 'TRX-069', '2021-01-08', 'BRG-325', 1, 93000, 130000, 13000, -80000),
(79, 'TRX-070', '2021-01-08', 'BRG-437', 1, 6000, 50000, 50000, 44000),
(80, 'TRX-071', '2021-01-08', 'BRG-148', 1, 5000, 10000, 10000, 5000),
(81, 'TRX-072', '2021-01-09', 'BRG-248', 1, 290000, 330000, 330000, 40000),
(82, 'TRX-073', '2021-01-08', 'BRG-008', 1, 185000, 220000, 220000, 35000),
(83, 'TRX-074', '2021-01-09', 'BRG-435', 1, 30000, 100000, 100000, 70000),
(84, 'TRX-075', '2021-01-09', 'BRG-440', 1, 50000, 70000, 70000, 20000),
(85, 'TRX-076', '2021-01-09', 'BRG-427', 1, 2500, 5000, 5000, 2500),
(86, 'TRX-077', '2021-01-09', 'BRG-437', 1, 6000, 50000, 50000, 0),
(87, 'TRX-078', '2021-03-09', 'BRG-389', 1, 20000, 30000, 30000, 10000),
(88, 'TRX-079', '2021-01-09', 'BRG-375', 1, 3000, 5000, 5000, 2000),
(89, 'TRX-080', '2021-01-09', 'BRG-057', 1, 185000, 220000, 220000, 35000),
(90, 'TRX-081', '2021-01-09', 'BRG-091', 1, 55000, 60000, 60000, 5000),
(91, 'TRX-082', '2021-01-09', 'BRG-324', 1, 65000, 80000, 80000, 15000),
(92, 'TRX-083', '2021-01-09', 'BRG-394', 1, 18000, 50000, 50000, 32000),
(93, 'TRX-084', '2021-01-09', 'BRG-132', 1, 8000, 10000, 10000, 2000),
(94, 'TRX-085', '2021-01-09', 'BRG-142', 1, 62500, 75000, 75000, 12500),
(95, 'TRX-086', '2021-01-10', 'BRG-444', 1, 4000, 10000, 10000, 6000),
(96, 'TRX-087', '0000-00-00', 'BRG-011', 1, 220000, 260000, 260000, 40000),
(99, 'TRX-089', '2021-01-10', 'BRG-326', 1, 75000, 10000, 100000, 25000),
(100, 'TRX-088', '2021-01-10', 'BRG-326', 1, 75000, 100000, 100000, 25000),
(105, 'TRX-090', '2021-01-10', 'BRG-066', 2, 60000, 35000, 70000, -50000),
(106, 'TRX-091', '2021-01-10', 'BRG-464', 1, 32000, 40000, 40000, 8000),
(107, 'TRX-092', '2021-01-10', 'BRG-391', 1, 8000, 100000, 100000, 92000),
(108, 'TRX-093', '2021-01-10', 'BRG-337', 1, 255000, 370000, 370000, 115000),
(109, 'TRX-094', '2021-01-10', 'BRG-477', 1, 5000, 7000, 7000, 2000),
(110, 'TRX-095', '2021-01-10', 'BRG-256', 1, 200000, 250000, 250000, 50000),
(111, 'TRX-097', '2021-01-10', 'BRG-462', 1, 21000, 30000, 28000, 7000),
(112, 'TRX-098', '2021-01-10', 'BRG-461', 1, 19000, 25000, 25000, 6000),
(114, 'TRX-099', '2021-01-10', 'BRG-440', 1, 50000, 70000, 70000, 20000);

--
-- Triggers `detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_update` AFTER DELETE ON `detail_transaksi` FOR EACH ROW BEGIN
     UPDATE barang SET qty_terjual = OLD.qty,harga_terjual = OLD.harga_jual,laba=OLD.laba
     WHERE kode_barang = OLD.kode_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_barang` AFTER INSERT ON `detail_transaksi` FOR EACH ROW BEGIN 
UPDATE barang set harga_terjual = NEW.harga_jual,
qty_terjual = qty_terjual + NEW.qty,laba=laba+NEW.laba
where kode_barang = NEW.kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(25) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `tanggal_transaksi`) VALUES
(1, 'TRX-001', '2021-01-01'),
(2, 'TRX-002', '2021-01-01'),
(3, 'TRX-003', '2021-01-01'),
(4, 'TRX-004', '2021-01-01'),
(5, 'TRX-005', '2021-01-02'),
(6, 'TRX-006', '2021-01-02'),
(7, 'TRX-007', '2021-01-02'),
(8, 'TRX-008', '2021-01-02'),
(9, 'TRX-009', '2021-01-02'),
(11, 'TRX-011', '2021-01-02'),
(12, 'TRX-012', '2021-01-02'),
(13, 'TRX-013', '2021-01-02'),
(14, 'TRX-014', '2021-01-02'),
(15, 'TRX-015', '2021-01-02'),
(16, 'TRX-016', '2021-01-02'),
(17, 'TRX-017', '2021-01-02'),
(18, 'TRX-018', '2021-01-02'),
(19, 'TRX-019', '2021-01-03'),
(20, 'TRX-020', '2021-01-03'),
(21, 'TRX-021', '2021-01-03'),
(22, 'TRX-022', '2021-01-03'),
(23, 'TRX-023', '2021-01-03'),
(24, 'TRX-024', '2021-01-03'),
(25, 'TRX-025', '2021-01-03'),
(26, 'TRX-026', '2021-01-03'),
(27, 'TRX-027', '2021-01-03'),
(28, 'TRX-028', '2021-01-03'),
(29, 'TRX-029', '2021-01-03'),
(30, 'TRX-030', '2021-01-03'),
(31, 'TRX-031', '2021-01-03'),
(32, 'TRX-032', '2021-01-03'),
(33, 'TRX-033', '2021-01-03'),
(34, 'TRX-034', '2021-01-03'),
(35, 'TRX-035', '2021-01-03'),
(36, 'TRX-036', '2021-01-03'),
(37, 'TRX-037', '2021-01-03'),
(38, 'TRX-038', '2021-01-03'),
(39, 'TRX-039', '2021-01-04'),
(40, 'TRX-040', '2021-01-04'),
(41, 'TRX-041', '2021-01-04'),
(42, 'TRX-042', '2021-01-04'),
(43, 'TRX-043', '2021-01-04'),
(44, 'TRX-044', '2021-01-04'),
(45, 'TRX-045', '2021-01-04'),
(46, 'TRX-046', '2021-01-04'),
(47, 'TRX-047', '2021-01-05'),
(48, 'TRX-048', '2021-01-05'),
(49, 'TRX-049', '2021-01-05'),
(50, 'TRX-050', '2021-01-05'),
(51, 'TRX-051', '2021-01-05'),
(52, 'TRX-052', '2021-01-05'),
(53, 'TRX-053', '2021-01-06'),
(54, 'TRX-054', '2021-01-06'),
(55, 'TRX-055', '2021-01-06'),
(56, 'TRX-056', '2021-01-06'),
(57, 'TRX-057', '2021-01-06'),
(58, 'TRX-058', '2021-01-06'),
(59, 'TRX-059', '2021-01-06'),
(60, 'TRX-060', '2021-01-07'),
(61, 'TRX-061', '2021-01-07'),
(62, 'TRX-062', '2021-01-07'),
(63, 'TRX-063', '2021-01-07'),
(64, 'TRX-064', '2021-01-07'),
(65, 'TRX-065', '2021-01-07'),
(66, 'TRX-066', '2021-01-07'),
(67, 'TRX-067', '2021-01-07'),
(68, 'TRX-068', '2021-01-08'),
(69, 'TRX-069', '2021-01-08'),
(70, 'TRX-070', '2021-01-08'),
(71, 'TRX-071', '2021-01-08'),
(72, 'TRX-072', '2021-01-09'),
(73, 'TRX-073', '2021-01-08'),
(74, 'TRX-074', '2021-01-09'),
(75, 'TRX-075', '2021-01-09'),
(76, 'TRX-076', '2021-01-09'),
(77, 'TRX-077', '2021-01-09'),
(78, 'TRX-078', '2021-03-09'),
(79, 'TRX-079', '2021-01-09'),
(80, 'TRX-080', '2021-01-09'),
(81, 'TRX-081', '2021-01-09'),
(82, 'TRX-082', '2021-01-09'),
(83, 'TRX-083', '2021-01-09'),
(84, 'TRX-084', '2021-01-09'),
(85, 'TRX-085', '2021-01-09'),
(86, 'TRX-086', '2021-01-10'),
(87, 'TRX-087', '2021-01-10'),
(88, 'TRX-088', '2021-01-10'),
(89, 'TRX-089', '2021-01-10'),
(90, 'TRX-090', '2021-01-10'),
(91, 'TRX-091', '2021-01-10'),
(92, 'TRX-092', '2021-01-10'),
(93, 'TRX-093', '2021-01-10'),
(94, 'TRX-094', '2021-01-10'),
(95, 'TRX-095', '2021-01-10'),
(96, 'TRX-096', '2021-01-10'),
(97, 'TRX-097', '2021-01-10'),
(98, 'TRX-098', '2021-01-10'),
(99, 'TRX-099', '2021-01-10'),
(100, 'TRX-100', '2021-01-10'),
(101, 'TRX-100', '2021-01-10'),
(102, 'TRX-100', '2021-01-10'),
(103, 'TRX-100', '2021-01-10'),
(104, 'TRX-100', '2021-01-10'),
(105, 'TRX-100', '2021-01-10'),
(106, 'TRX-100', '2021-01-10'),
(107, 'TRX-100', '2021-01-11'),
(108, 'TRX-100', '2021-01-11'),
(109, 'TRX-100', '2021-01-11'),
(110, 'TRX-100', '2021-01-11'),
(111, 'TRX-100', '2021-01-12'),
(112, 'TRX-100', '2021-01-12'),
(113, 'TRX-100', '2021-01-12'),
(114, 'TRX-100', '2021-01-12'),
(115, 'TRX-100', '2021-01-12'),
(116, 'TRX-100', '2021-01-12'),
(117, 'TRX-100', '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Juragan', 'Juragan', 'omsandi', 'Admin'),
(2, 'Karyawan', 'Karyawan', '12345', 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `zakat`
--

CREATE TABLE `zakat` (
  `id` int(11) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `total_penjualan` double NOT NULL DEFAULT '0',
  `total_keuntungan` double NOT NULL DEFAULT '0',
  `zakat` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakat`
--
ALTER TABLE `zakat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zakat`
--
ALTER TABLE `zakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
