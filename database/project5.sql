-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 02:37 PM
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
-- Database: `project5`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`kode_barang`, `nama_barang`, `harga_barang`) VALUES
('001', 'apel', 5000),
('002', 'pisang', 10000),
('003', 'anggur', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `data_pembeli`
--

CREATE TABLE `data_pembeli` (
  `kode_pembelian` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga_barang` int(100) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `jumlah_pembeli` int(100) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `total_pembayaran` int(100) NOT NULL,
  `kembalian` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pembeli`
--

INSERT INTO `data_pembeli` (`kode_pembelian`, `kode_barang`, `nama_barang`, `harga_barang`, `nama_pembeli`, `jumlah_pembeli`, `total_harga`, `total_pembayaran`, `kembalian`) VALUES
('111', '001', 'apel', 5000, 'reyyy', 10, 50000, 100000, 50000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
