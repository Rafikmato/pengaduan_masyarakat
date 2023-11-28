-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2023 at 02:11 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelurahan`
--

CREATE TABLE `tb_kelurahan` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelurahan`
--

INSERT INTO `tb_kelurahan` (`id`, `nama`) VALUES
(1, 'BIAWAO'),
(2, 'BIAWU'),
(3, 'BOTU'),
(4, 'BUGIS'),
(5, 'BULADU'),
(6, 'BULIIDE'),
(7, 'BULOTADAA BARAT'),
(8, 'BULOTADAA TIMUR'),
(9, 'DEMBE I'),
(10, 'DEMBE II'),
(11, 'DEMBE JAYA'),
(12, 'DONGGALA'),
(13, 'DULALOWO'),
(14, 'DULALOWO TIMUR'),
(15, 'DULOMO SELATAN'),
(16, 'DULOMO UTARA'),
(17, 'HELEDULAA SELATAN'),
(18, 'HELEDULAA UTARA'),
(19, 'HUANGOBOTU'),
(20, 'IPILO'),
(21, 'LEATO SELATAN'),
(22, 'LEATO UTARA'),
(23, 'LEKOBALO'),
(24, 'LIBUO'),
(25, 'LILUWO'),
(26, 'LIMBA B'),
(27, 'LIMBA U I'),
(28, 'LIMBA U II'),
(29, 'MOLOSIPAT U'),
(30, 'MOLOSIPAT W'),
(31, 'MOODU'),
(32, 'PADEBUOLO'),
(33, 'PAGUYAMAN'),
(34, 'PILOLODAA'),
(35, 'POHE'),
(36, 'PULUBALA'),
(37, 'SIENDENG'),
(38, 'TALUMOLO'),
(39, 'TAMALATE'),
(40, 'TANGGIKIKI'),
(41, 'TANJUNG KRAMAT'),
(42, 'TAPA'),
(43, 'TENDA'),
(44, 'TENILO'),
(45, 'TOMULABUTAO'),
(46, 'TOMULABUTAO SELATAN'),
(47, 'TULADENGGI'),
(48, 'WONGKADITI BARAT'),
(49, 'WONGKADITI TIMUR'),
(50, 'WUMIALO');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id` bigint NOT NULL,
  `nik` char(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id`, `nik`, `nama`, `username`, `password`, `telp`) VALUES
(5, '1234567890123455', 'yunita', 'yunita', '41a0b6583426e2f3b0382d9cb3a3969205d39980', '08122323243'),
(6, '1231231231123123', 'ai', 'ai', '141a92417f71895e56c4a5da05f3e98fc78e2220', '01928198200'),
(7, '1231231451452345', 'yana', 'yana', '54d5a2ff84fc92d0c057b642f6144230af5ab7f2', '0812222343434'),
(8, '1234567891011111', 'tia', 'tianjay', 'c11449185f4180fc866bd6a8e73df3ee28fbd637', '08979764574'),
(9, '7571066187453024', 'Cindy', 'cindy rauf', '334bf206aca8b1265a47b84db6ef96c3657195ee', '081247128365'),
(10, '7894561232145698', 'Masyarakat', 'Capil', 'daa65f04aa73775e8d336b8b6256962472786cff', '8745123649856'),
(11, '7894561230147856', 'Namira', 'Namira', '8f9fe6fdafe123fdcb7e201a28fda8776beb640e', '012458788466');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id` bigint NOT NULL,
  `tgl` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('ditanggapi','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id`, `tgl`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(12, '2023-11-03', '7571066187453024', 'Nik saya di KTP dan KK beda', '', 'selesai'),
(13, '2023-11-07', '7894561232145698', 'KTP Bermasalah', '', 'proses'),
(14, '2023-11-07', '7894561230147856', 'KK bermasalah', '', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `tb_persyaratan`
--

CREATE TABLE `tb_persyaratan` (
  `id` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(250) NOT NULL,
  `id_sub` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_persyaratan`
--

INSERT INTO `tb_persyaratan` (`id`, `judul`, `isi`, `id_sub`) VALUES
(1, 'SURAT KETERANGAN PENGANGKATAN ANAK', 'tesss', 1),
(2, 'sistem informasi geografis', '&lt;ul&gt;\r\n	&lt;li&gt;wdadwa&lt;/li&gt;\r\n	&lt;li&gt;&amp;nbsp;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 2),
(3, 'banjir', '&lt;ul&gt;\r\n	&lt;li&gt;vsdvnskdlnv&lt;/li&gt;\r\n	&lt;li&gt;vcdsjvn&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 1),
(4, 'klaster spasial', '&lt;ul&gt;\r\n	&lt;li&gt;oktas wibu&lt;/li&gt;\r\n	&lt;li&gt;fsdfs&lt;/li&gt;\r\n	&lt;li&gt;sd&lt;/li&gt;\r\n	&lt;li&gt;fsd&lt;/li&gt;\r\n	&lt;li&gt;&amp;nbsp;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 0),
(5, 'bis', '&lt;ol&gt;\r\n	&lt;li&gt;sfsd&lt;/li&gt;\r\n	&lt;li&gt;fsd&lt;/li&gt;\r\n	&lt;li&gt;f&lt;/li&gt;\r\n	&lt;li&gt;sd&lt;/li&gt;\r\n	&lt;li&gt;sd&lt;/li&gt;\r\n&lt;/ol&gt;\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` bigint NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(2, 'andi', 'andi', 'dbd122ef7b6a09ffecf5db9c9296320f3c94e707', '0812', 'admin'),
(12, 'yani', 'yani', '99a123b54e4c74b11c40ce5934bc137b2fbf2531', '0812', 'petugas'),
(13, 'namira', 'rafik', '1a29f96d6ce2df9294a903b4ffad7129896e10b2', '082192618893', 'petugas'),
(14, 'cindy', 'cindy', '7c222fb2927d828af22f592134e8932480637c0d', '0987654567890', 'petugas'),
(15, 'okta', 'okta', 'fd988fa1b6c468f30b2ce0e9e8555c4eb3aea74c', '087845215612', 'petugas'),
(16, 'oktachan', 'okta123', 'fd988fa1b6c468f30b2ce0e9e8555c4eb3aea74c', '08222222222', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub_persyaratan`
--

CREATE TABLE `tb_sub_persyaratan` (
  `id_sub` int NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_sub_persyaratan`
--

INSERT INTO `tb_sub_persyaratan` (`id_sub`, `keterangan`) VALUES
(1, 'PENGANGKATAN ANAK'),
(2, 'PINDAH DATANG');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id` bigint NOT NULL,
  `id_pengaduan` bigint NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tanggapan`
--

INSERT INTO `tb_tanggapan` (`id`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(3, 2, '2020-04-30', 'andi isi ya', 2),
(4, 3, '2020-04-30', ';ofalah ;alhf a;fha;ohf;ahfda', 2),
(5, 7, '2020-05-01', 'kami akan segera menyelesaikan nya\r\n', 2),
(6, 4, '2020-05-01', 'FDAdWADGFDA', 2),
(7, 11, '2023-10-26', 'jangan galau-galau', 2),
(8, 12, '2023-11-03', 'Datang ke kantor langsung\r\n', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_persyaratan`
--
ALTER TABLE `tb_persyaratan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sub` (`id_sub`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sub_persyaratan`
--
ALTER TABLE `tb_sub_persyaratan`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_persyaratan`
--
ALTER TABLE `tb_persyaratan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_sub_persyaratan`
--
ALTER TABLE `tb_sub_persyaratan`
  MODIFY `id_sub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
