-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2020 at 04:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` varchar(45) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL,
  `stok` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`kategori_id`, `nama_kategori`) VALUES
(11, 'produk1');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `produk_id` varchar(45) DEFAULT NULL,
  `dari` date DEFAULT NULL,
  `sampai` date DEFAULT NULL,
  `jumlah` varbinary(45) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL,
  `status` enum('1','0','2') DEFAULT '0' COMMENT '2 kembali',
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `user_id`, `produk_id`, `dari`, `sampai`, `jumlah`, `harga`, `status`, `created_on`) VALUES
(2, '6', '1', '2017-10-21', '2017-10-22', 0x32, '1000000', '2', '2017-10-21 15:56:16'),
(3, '7', '1', '2017-10-21', '2017-10-24', 0x31, '1500000', '1', '2017-10-21 21:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_jasa`
--

CREATE TABLE `transaksi_jasa` (
  `transaksi_jasa_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `jenis_jasa_id` varchar(45) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `status` enum('1','0') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_jasa`
--

INSERT INTO `transaksi_jasa` (`transaksi_jasa_id`, `user_id`, `keterangan`, `jenis_jasa_id`, `tanggal_mulai`, `created_on`, `status`) VALUES
(1, '6', 'asdsad', '1', '2017-10-21', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `nama_lengkap` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `level` enum('0','1') DEFAULT '1',
  `blokir` varchar(1) DEFAULT '0',
  `alamat` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `nama_lengkap`, `email`, `notelp`, `level`, `blokir`, `alamat`) VALUES
(6, '1234', 'test', 'ekop123@a.c', '08917934054', '1', '0', 'sdasdasd`'),
(7, 'admin', 'Administrator', 'admin@admin.com', '08917934054', '0', '0', 'sdasdasd`');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `transaksi_jasa`
--
ALTER TABLE `transaksi_jasa`
  ADD PRIMARY KEY (`transaksi_jasa_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi_jasa`
--
ALTER TABLE `transaksi_jasa`
  MODIFY `transaksi_jasa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
