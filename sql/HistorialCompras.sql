-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2019 at 08:22 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Test`
--

-- --------------------------------------------------------

--
-- Table structure for table `HistorialCompras`
--

CREATE TABLE `HistorialCompras` (
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `costoPrevio` float NOT NULL,
  `porcentajeDescuento` int(11) NOT NULL,
  `costoNeto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HistorialCompras`
--
ALTER TABLE `HistorialCompras`
  ADD KEY `historial-compra` (`id_compra`),
  ADD KEY `historial-producto` (`id_producto`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `HistorialCompras`
--
ALTER TABLE `HistorialCompras`
  ADD CONSTRAINT `historial-compra` FOREIGN KEY (`id_compra`) REFERENCES `Compras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `historial-producto` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
