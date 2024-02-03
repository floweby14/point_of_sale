-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 06:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keuangan_tnmd`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_gaji`
--

CREATE TABLE `data_gaji` (
  `id_gaji` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_gaji`
--

INSERT INTO `data_gaji` (`id_gaji`, `nama`, `tanggal`, `keterangan`, `total`) VALUES
(4, 'Wawan', '2023-11-30', 'Gaji full', '2000000'),
(5, 'Jasheline', '2023-11-30', 'Gaji full', '2000000'),
(6, 'Cynthia', '2023-11-30', 'Izin 2 hari', '1900000'),
(7, 'Jilian', '2023-11-30', 'Izin 1 hari', '1950000');

-- --------------------------------------------------------

--
-- Table structure for table `data_pemasukan`
--

CREATE TABLE `data_pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_transaksi` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pemasukan`
--

INSERT INTO `data_pemasukan` (`id_pemasukan`, `tanggal`, `nama_transaksi`, `total`, `created_by`, `created_at`) VALUES
(6, '2023-11-16', 'Pendapatan harian', '750000', 'Jasheline', '2023-11-28 09:39:02'),
(7, '2023-11-17', 'Pendapatan Harian', '950000', 'Jasheline', '2023-11-29 09:39:37'),
(8, '2023-11-18', 'Pendapatan Harian', '1300000', 'Wawan', '2023-11-29 09:39:59'),
(9, '2023-11-19', 'Pendapatan Harian', '880000', 'Jasheline', '2023-11-29 09:40:15'),
(10, '2023-11-20', 'Pendapatan Harian', '678000', 'Wawan', '2023-11-29 09:40:28'),
(12, '2023-11-29', 'Pendapatan ', '100000', 'Jilian', '2023-11-29 09:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengeluaran`
--

CREATE TABLE `data_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pengeluaran`
--

INSERT INTO `data_pengeluaran` (`id_pengeluaran`, `tanggal`, `nama_barang`, `keterangan`, `total`, `created_by`, `created_at`) VALUES
(5, '2023-11-15', 'Ice gel ', '10 pcs', '150000', '', NULL),
(6, '2023-11-20', 'Sanford', '4 galon', '48000', '', NULL),
(7, '2023-11-20', 'Gayo espresso arabica ', '2 pcs', '520000', '', NULL),
(8, '2023-11-20', 'Sticky note', '-', '10500', '', NULL),
(9, '2023-11-20', 'Lem tikus', '2 pcs', '29000', '', NULL),
(10, '2023-11-20', 'Kawat aluminium', '1 meter', '35000', '', NULL),
(11, '2023-11-20', 'Es batu', '-', '10000', '', NULL),
(12, '2023-11-21', 'Beras', '5 kg', '61000', '', NULL),
(13, '2023-11-29', 'ffrgthr', 'hello', 'ergt', 'sdfe', '2023-11-29 09:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'admin'),
(2, 'karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`, `created_by`) VALUES
(1, 'jilian', '3116bf18654787a5f63ae9b417b37c37', 'Jilian', 1, 'Admin'),
(2, 'cynthia', '3a9357ba0b1007ca3bf5f354dd737d78', 'Cynthia', 2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_gaji`
--
ALTER TABLE `data_gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `data_pemasukan`
--
ALTER TABLE `data_pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `data_pengeluaran`
--
ALTER TABLE `data_pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_gaji`
--
ALTER TABLE `data_gaji`
  MODIFY `id_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_pemasukan`
--
ALTER TABLE `data_pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_pengeluaran`
--
ALTER TABLE `data_pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
