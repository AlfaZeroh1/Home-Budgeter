-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 12:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keja`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `purchased` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `quantity`, `unit_price`, `room`, `priority`, `phase`, `remarks`, `status`, `purchased`) VALUES
(2, 'Wireless Mouse', 'Laptop', 1, 500, 'Work', 7, 6, '', 0, NULL),
(5, 'Hotpot Set', 'Crockery', 1, 2500, 'Kitchen', 3, 4, '', 0, NULL),
(7, 'Cups', 'Crockery', 7, 150, 'Kitchen', 1, 2, '', 0, NULL),
(9, 'Sahani za Wageni', 'Crockery', 7, 150, 'Kitchen', 1, 2, '', 0, NULL),
(15, '3D Carpet 5x8', 'Carpet', 1, 3500, 'Living', 5, 5, '', 0, NULL),
(20, 'Gas Lighter', 'Indoor Kitchen', 1, 440, 'Kitchen', 2, 3, '', 0, NULL),
(21, 'Tissue Holder', 'Utility', 1, 350, 'Bathroom', 1, 2, '', 0, NULL),
(22, 'Soap Holder', 'Utility', 1, 350, 'Bathroom', 1, 2, '', 0, NULL),
(24, 'Air Fryer', 'Air Fryer', 1, 5000, 'Kitchen', 3, 3, '', 0, NULL),
(27, '4GB Laptop Ram', 'Laptop', 1, 1500, 'Office', 7, 6, '', 0, NULL),
(28, 'Xbox 360 wired', 'Desktop2', 1, 1200, 'Living', 7, 6, '', 0, NULL),
(30, 'Camo Cloth', 'Fabric', 1, 1000, 'Living', 4, 4, '', 0, NULL),
(36, 'Pasi', 'Utility', 1, 1000, 'Bedroom', 4, 5, '', 0, NULL),
(37, 'Hangers', 'Utility', 1, 450, 'Bedroom', 6, 6, '', 0, NULL),
(41, 'Moko 1-seater', 'Furniture', 1, 12500, 'Dining', 3, 3, '', 0, NULL),
(52, 'Berry loan', 'Credit', 1, 3250, 'Outside', 5, 5, '', 0, NULL),
(53, 'KCB loan', 'Credit', 1, 1300, 'Outside', 7, 6, '', 0, NULL),
(59, 'Fluffy Pillows', 'Fabric', 5, 200, 'Living', 4, 4, '', 0, NULL),
(81, '7KG Twin Tub Washing Machine', 'Electrics', 1, 18700, 'Bathroom', 9, 10, '', 0, NULL),
(83, 'Oil dispensing set with pastry brush', 'Air Fryer', 1, 200, 'Kitchen', 3, 3, '', 0, NULL),
(85, 'Nunix Mixer with Bowl', 'Electrics', 1, 1100, 'Kitchen', 9, 10, '', 0, NULL),
(93, 'Thermal Paste', 'Desktop2', 1, 300, 'Living', 7, 6, '', 0, NULL),
(95, 'HP 840 G3 Laptop Replace', 'Laptop Office', 1, 25000, 'Work', 9, 10, '', 0, NULL),
(108, 'Crucial 8GB RAM', 'Desktop2', 2, 2000, 'Living', 6, 6, '', 0, NULL),
(114, '3 in 1 wireless controller', 'Desktop2', 1, 1200, 'Living', 7, 6, '', 0, NULL),
(121, 'USB extender 1.5M', 'Desktop2', 1, 200, 'Living', 7, 6, '', 0, NULL),
(126, 'Car inherit', 'Car', 1, 5000, 'Outdoor', 4, 4, '', 0, NULL),
(135, 'Food Thermometer', 'Air Fryer', 1, 500, 'Kitchen', 3, 3, '', 0, NULL),
(148, 'Phone Holder', 'phone', 1, 400, 'Office', 7, 6, '', 0, NULL),
(149, 'USB Type C', 'phone', 1, 200, 'Office', 9, 10, '', 0, NULL),
(164, 'Stima', 'Monthly', 1, 2000, 'Living', 97, 98, '', 0, NULL),
(165, 'Takataka', 'Monthly', 1, 200, 'Kitchen', 97, 98, '', 0, NULL),
(166, 'Wifi', 'Monthly', 1, 800, 'Living', 97, 98, '\r\n\r\n', 0, NULL),
(167, 'Gas', 'Monthly', 1, 1200, 'Living', 97, 98, '', 0, NULL),
(168, 'Alpha Fare', 'Monthly', 1, 2000, 'Office', 97, 98, '', 0, NULL),
(169, 'Shopping', 'Monthly', 1, 4500, 'Kitchen', 97, 98, '', 0, NULL),
(170, 'Grocery', 'Monthly', 1, 6600, 'Kitchen', 97, 98, '', 0, NULL),
(171, 'Lha Special Diet', 'Monthly', 20, 100, 'Living', 97, 98, '', 0, NULL),
(173, 'Redmi 12C 3GB 64 GB phone', 'Lha', 1, 13000, 'Business', 9, 10, '', 0, NULL),
(189, 'Northstar', 'Alpha', 1, 1200, 'Work', 1, 2, '', 0, NULL),
(190, 'Bathroom Tank 300L', 'Storage', 1, 2500, 'Bathroom', 1, 2, '', 0, NULL),
(196, 'Hilda Loan', 'Credit', 1, 1500, 'Outside', 1, 2, '', 0, NULL),
(198, 'Jatos', 'Alpha', 2, 350, 'Work', 1, 2, '', 0, NULL),
(209, 'Balcony net and translucent roof ', 'Duty', 1, 2000, 'Balcony', 2, 2, '', 0, NULL),
(210, 'Sink Fixes', 'Duty', 1, 1000, 'Kitchen', 2, 2, '', 0, NULL),
(212, 'Plaster Balcony Wall', 'Duty', 1, 3000, 'Balcony', 2, 2, '', 0, NULL),
(213, 'Vacuum cleaner Cordless', 'Carpet', 1, 3000, 'Living', 5, 5, '', 0, NULL),
(218, 'Lha clothes ', 'Clothes', 1, 16000, 'Home', 6, 7, '', 0, NULL),
(219, 'Alpha Clothes', 'Clothes', 1, 5000, 'Home', 7, 7, '', 0, NULL),
(221, 'Lha Biz', 'Duty', 1, 80000, 'School', 8, 9, '14', 0, NULL),
(222, 'Kitchen Table', 'Indoor Kitchen', 1, 1500, 'Kitchen', 2, 3, '', 0, NULL),
(223, 'knives', 'Crockery', 1, 250, 'Kitchen', 1, 2, '', 0, NULL),
(224, 'Spoons', 'Crockery', 1, 200, 'Kitchen', 1, 2, '', 0, NULL),
(225, 'Fork', 'Kitchen', 1, 200, 'Kitchen', 1, 2, '', 0, NULL),
(226, 'Wine Glass', 'Crockery', 1, 700, 'Kitchen', 1, 2, '', 0, NULL),
(227, 'Water Glass', 'Crockery', 1, 700, 'Kitchen', 4, 5, '', 1, NULL),
(228, 'Sufuria', 'Cookware', 1, 700, 'Kitchen', 3, 4, '', 0, NULL),
(229, '2 Gas Burner Cooker', 'Indoor Kitchen', 1, 2500, 'Kitchen', 2, 3, '', 0, NULL),
(230, '3 in 1 Under Cabinet Shelf', 'Kitchen', 2, 1100, 'Kitchen', 1, 2, '', 0, NULL),
(232, 'Baby Cot Set with Chest Drawer', 'Baby', 1, 16000, 'Bedroom', 5, 7, '', 0, NULL),
(235, 'Portable Wardrobe', 'Storage', 1, 2700, 'Bedroom', 7, 6, '', 0, NULL),
(236, 'Wardrobe Curtain', 'Storage', 1, 1000, 'Bedroom', 9, 10, '', 0, NULL),
(237, 'Door Mat', 'Fabric', 1, 500, 'Living', 9, 10, '', 0, NULL),
(238, 'Curtains Substitute', 'Fabric', 1, 2000, 'Living', 9, 10, '', 0, NULL),
(239, 'Small Shoe Rack', 'Storage', 1, 500, 'Living', 9, 10, '', 0, NULL),
(240, 'SKyworth 43 inch TV', 'Entertainment', 1, 26000, 'Living', 9, 10, '', 0, NULL),
(242, 'Mini Art Plants', 'Decor', 2, 750, 'Living', 4, 5, '', 0, NULL),
(247, 'Lha Undergrad First Semesters Fee', 'School', 1, 53000, 'Outside', 7, 8, '', 0, NULL),
(248, 'Lha Undergrad 2nd year Semesters Fee', 'School', 1, 60000, 'Outdoor', 10, 11, '', 0, NULL),
(254, 'Lha Second Semester Fees', 'School', 1, 52000, 'Remote', 7, 8, '', 0, NULL),
(255, 'Mum Fridge Loan', 'Fridge', 1, 18000, 'Kitchen', 1, 2, '', 0, NULL),
(256, '180 Container', 'Fridge', 2, 180, 'Kitchen', 2, 3, '', 0, NULL),
(257, '100 Container', 'Fridge', 3, 100, 'Kitchen', 2, 3, '', 0, NULL),
(258, 'Stima', 'Monthly', 1, 2100, 'Living', 98, 99, '', 0, NULL),
(259, 'Takataka', 'Monthly', 1, 200, 'Kitchen', 98, 99, '', 0, NULL),
(260, 'Wifi', 'Monthly', 1, 800, 'Living', 98, 99, '\r\n\r\n', 0, NULL),
(261, 'Gas', 'Monthly', 1, 1300, 'Living', 98, 99, '', 0, NULL),
(262, 'Alpha Fare (Hybrid - Car + mat)', 'Monthly', 22, 200, 'Office', 98, 99, '', 0, NULL),
(263, 'Shopping', 'Monthly', 1, 5500, 'Kitchen', 98, 99, '', 0, NULL),
(264, 'Grocery', 'Monthly', 1, 6700, 'Kitchen', 98, 99, '', 0, NULL),
(265, 'Baby Special Diet', 'Monthly', 30, 100, 'Living', 98, 99, '', 0, NULL),
(273, 'Lha NHIF', 'Maternity', 1, 500, 'Hospital', 98, 99, '', 0, NULL),
(274, 'Land Konza 50x100', 'Shake', 1, 500000, 'Next Home', 11, 12, '', 0, NULL),
(275, '55 sqm 2 Bdrm Tukianzanga', 'Jake', 1, 1100000, 'Next Home', 12, 13, '', 0, NULL),
(276, 'Interior Upgrade 1', 'Ndani', 1, 150000, 'Next Home', 12, 13, '', 0, NULL),
(277, 'Barbed Wire Fence', 'Fence', 1, 50000, 'Next Home', 12, 13, '', 0, NULL),
(278, 'Water Kanjo Connection and Tank', 'Maji', 1, 80000, 'Next Home', 12, 13, '', 0, NULL),
(279, 'Stima KPLC', 'Stima', 1, 70000, 'Next Home', 12, 13, '', 0, NULL),
(280, 'Nissan March 10years Old', 'Gari', 1, 400000, 'Next Home', 13, 14, '', 0, NULL),
(281, 'Nyasi', 'Landscape', 1, 50000, 'Next Home', 13, 14, '', 0, NULL),
(282, 'Interior Upgrade 2', 'Ndani', 1, 250000, 'Next Home', 14, 15, '', 0, NULL),
(283, 'Birck and Live Fence', 'Fence', 1, 500000, 'Next Home', 13, 14, '\r\n\r\n', 0, NULL),
(284, 'Sliding Gate', 'Gate', 1, 130000, 'Next Home', 13, 14, '', 0, NULL),
(285, 'Water Facilities Upgrades 1', 'Maji', 1, 100000, 'Next Home', 13, 14, '', 0, NULL),
(286, 'Water Facilities Upgrades 2', 'Maji', 1, 200000, 'Next Home', 14, 15, '', 0, NULL),
(287, 'Cabro Pavement', 'Landscape', 1, 200000, 'Next Home', 13, 14, '', 0, NULL),
(288, 'Patio', 'Amenities', 1, 50000, 'Next Home', 14, 15, '', 0, NULL),
(289, 'Basketball Court Rim, Fence and Drawings', 'Amenities', 1, 150000, 'Next Home', 14, 15, '', 0, NULL),
(290, 'Outdoor Spa 12x10 Feet', 'Amenities', 1, 250000, 'Next Home', 14, 15, '', 0, NULL),
(291, 'Interior Upgrade 3', 'Ndani', 1, 200000, 'Next Home', 15, 16, '', 0, NULL),
(292, '4 Bdrm Upgrade +45 sqm', 'Jake', 1, 1000000, 'Next Home', 15, 16, '', 0, NULL),
(293, 'GF8 Subaru', 'Gari', 1, 350000, 'Next Home', 13, 14, '', 0, NULL),
(294, 'Solar', 'Stima', 1, 400000, 'Next Home', 14, 15, '', 0, NULL),
(295, 'Mahinda Loan', 'Credit', 1, 350, 'Outside', 1, 2, '', 0, NULL),
(296, 'Jose Loan', 'Credit', 1, 1000, 'Outside', 1, 2, '', 1, NULL),
(297, 'Lha Loan', 'Credit', 1, 1500, 'Outside', 3, 4, '', 0, NULL),
(298, 'Baby Emerald Package', 'Maternity', 1, 31500, 'Maternity', 1, 1, '', 0, NULL),
(299, 'LHA NHIF', 'Maternity', 7, 500, 'Maternity', 1, 1, '', 0, NULL),
(300, 'PregnaCare Plus', 'Maternity', 4, 2000, 'Maternity', 1, 1, '', 0, NULL),
(301, 'Clinic', 'Maternity', 4, 1500, 'Maternity', 1, 1, '', 0, NULL),
(302, 'Delivery Day', 'Maternity', 1, 5000, 'Maternity', 1, 1, '', 0, NULL),
(303, 'Emergency Saving', 'Maternity', 1, 16000, 'Maternity', 1, 1, '', 0, NULL),
(304, 'GF8 Off Road Build', 'Gari', 1, 150000, 'Next Home', 17, 17, '', 0, NULL),
(305, 'Bathroom Tiles Plaster', 'Duty', 1, 1000, 'Bathroom', 2, 2, '', 0, NULL),
(306, 'GF8 Sport Build', 'Gari', 1, 350000, 'Next Home', 18, 18, '', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
