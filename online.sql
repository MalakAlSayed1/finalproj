-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 04:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcard`
--

CREATE TABLE `addcard` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addcard`
--

INSERT INTO `addcard` (`id`, `name`, `price`) VALUES
(10, 'POLO', '49.63$'),
(13, 'CK one', '9$'),
(14, 'Club De Nuit Intensel', '15$'),
(15, 'VERSACE EROS', '7.08$'),
(18, 'JIMMY CHOO FEVER', '28.36$'),
(20, 'POLO', '49.63$'),
(21, 'Doke', '34.50$'),
(22, 'JIMMY CHOO FEVER', '28.36$'),
(23, 'CK one', '9$'),
(24, 'Doke', '34.50$');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(5, 7, 'women perfume', 15, 'images/عطر نسائي.jpeg', 1),
(6, 7, 'عطر رجالي', 30, 'images/عطر رجالي.jpg', 1),
(7, 2, 'OBSESSION', 13, 'images/obsession.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`id`, `name`, `price`, `image`) VALUES
(25, 'Doke', '34.50$', 'images/Doke.png'),
(28, 'JIMMY CHOO FEVER', '28.36$', 'images/jimmy_choo.PNG'),
(29, 'DESIGN', '14.89$', 'images/disign.jpg'),
(30, 'RED DOOR', '8.50$', 'images/red_door.jpg'),
(32, 'CK one', '9$', 'images/ck.jpg'),
(34, 'VERSACE', '9.30$', 'images/versace.jpg'),
(35, 'Club De Nuit Intensel', '15$', 'images/club.PNG'),
(36, 'Jean Paul GAULTTER', '15.89$', 'images/jean_man.jpg'),
(37, 'VERSACE EROS', '7.08$', 'images/versace_eros.jpeg'),
(38, 'JIMMY CHOO MAN', '12.11$', 'images/jimmy_man.jpg'),
(39, 'POLO', '49.63$', 'images/polo.PNG'),
(40, 'OBSESSION', '13.46$', 'images/obsession.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'Malak', 'malak@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Lana', 'lana@gmail.com', '4297f44b13955235245b2497399d7a93'),
(4, 'Zain', 'Zain@gmail.com', '4297f44b13955235245b2497399d7a93'),
(5, 'Waseem', 'Waseem@gmail.com', 'e3ceb5881a0a1fdaad01296d7554868d'),
(6, 'ibaa1', 'ibaa1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'malk', 'malk1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'iman', 'iman@gmail.com', '6074c6aa3488f3c2dddff2a7ca821aab'),
(9, 'ahmad', 'ahmad@gmail.com', '6d071901727aec1ba6d8e2497ef5b709');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcard`
--
ALTER TABLE `addcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcard`
--
ALTER TABLE `addcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
