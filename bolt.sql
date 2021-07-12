-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2021 at 04:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'WEEBS3', 'ASUS ROG STRIX TKL GUNDAM EDITION GAMING KEYBOARD', 'ROG Strix Scope TKL GUNDAM EDITION wired mechanical gaming keyboard for FPS games features an aluminum frame, Cherry MX switches and Aura Sync lighting.', 2309000, 2, 4618000, '2021-07-12 04:26:22', 'sjobs@apple.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'WEEBS1', 'ASUS ROG STRIX ROG XG279Q 170 Hz', '27 inch WQHD (2560 x 1440), Fast IPS, Overclockable 170Hz (Above 144Hz), 1ms (GTG), ELMB SYNC, G-SYNC Compatible, DisplayHDR™ 400', 'monitor_gundam.jpeg', 2, '12500000'),
(2, 'WEEBS2', 'ViewSonic VA2456-MIKU Limited Edition 24', 'Collaboration with Hatsune Miku\r\nSuperClear® IPS technology\r\nFrameless bezel\r\nHDMI and VGA inputs\r\nViewMode technology', 'monitor.jpg', 7, '2950000'),
(3, 'WEEBS3', 'ASUS ROG STRIX TKL GUNDAM EDITION GAMING KEYBOARD', 'ROG Strix Scope TKL GUNDAM EDITION wired mechanical gaming keyboard for FPS games features an aluminum frame, Cherry MX switches and Aura Sync lighting.', 'rog_gundam.png', 0, '2309000'),
(4, 'WEEBS4', 'ASUS ROG STRIX HELIOS GUNDAM EDITION ATX PC CASE', 'Front I/O Port\r\n1 x Headphone\r\n1 x Microphone\r\n4 x USB 3.1 Gen1\r\n1 x USB 3.1 Gen2 Type C\r\nLED Control Button\r\nFan Control Button\r\nReset Button\r\n\r\nTempered Glass\r\nFront Side\r\nLeft Side\r\nRight Side', 'casing.png', 2, '5695000'),
(5, 'WEEBS5', 'Asus TUF Gaming Case G301 Zaku II Red Gundam', 'Case Size\r\nMid Tower\r\nMotherboard Support\r\nATX\r\nDrive Bays\r\n4 x 2.5\" Bay\r\n2 x 2.5\"/3.5\" Combo Bay\r\nExpansion Slots\r\n7\r\nFront I/O Port\r\n1 x Headphone\r\n1 x Microphone\r\n2 x USB 3.1 Gen1\r\nLED Control Button\r\nReset Button', 'red_case.png', 2, '1750000'),
(6, 'WEEBS6', 'Yeston Radeon RX 6800 XT SAKURA Edition', 'MD Radeon™ RX 6800 XT Graphics · 4K120Hz/8K60Hz VRR as specified in HDMI® 2.1 · DisplayPort™ 1.4 · USB Type-C® ·', 'rx6800.jpg', 2, '32500000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'admin'),
(2, 'admin', 'admin', 'admin', 'jakarta', 2, 'admin@admin.com', 'admin', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
