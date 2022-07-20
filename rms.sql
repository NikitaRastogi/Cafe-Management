-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 08:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `allsale`
--

CREATE TABLE `allsale` (
  `sname` varchar(50) NOT NULL,
  `stype` varchar(10) NOT NULL,
  `sprice` int(10) NOT NULL,
  `squantity` int(10) NOT NULL,
  `stotalamou` int(10) NOT NULL,
  `sendprice` int(10) NOT NULL,
  `scashs` int(10) NOT NULL,
  `sbalances` int(10) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allsale`
--

INSERT INTO `allsale` (`sname`, `stype`, `sprice`, `squantity`, `stotalamou`, `sendprice`, `scashs`, `sbalances`, `sid`, `date`) VALUES
('Roll', 'Normal', 90, 2, 380, 180, 400, 20, 1, '2022-07-17'),
('Pasta', 'Full', 220, 2, 440, 440, 500, 60, 2, '2022-07-11'),
('Mushroom Gravy', 'Full', 280, 1, 380, 280, 400, 20, 3, '2022-07-14'),
('Roll', 'Normal', 90, 7, 630, 630, 650, 20, 4, '2022-07-15'),
('Momos Fry', 'Full', 200, 3, 600, 600, 650, 50, 5, '2022-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `fname` varchar(20) NOT NULL,
  `ftype` varchar(10) NOT NULL,
  `fprice` int(10) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`fname`, `ftype`, `fprice`, `fid`) VALUES
('Noodles', 'Full', 200, 5),
('Roll', 'Normal', 90, 6),
('Biriyani', 'Full', 250, 7),
('Rice Plate', 'Full', 100, 8),
('Soup', 'Normal', 90, 9),
('Soup', 'Full', 120, 10),
('Pasta', 'Full', 220, 11),
('Mushroom Gravy', 'Full', 280, 12),
('Chily Baby Corn', 'Full', 200, 13),
('Momos', 'Normal', 90, 14),
('Momos', 'Full', 160, 15),
('Momos Fry', 'Full', 200, 16),
('Manchurian Gravy', 'Full', 250, 17),
('Manchurian Dry', 'Full', 240, 18);

-- --------------------------------------------------------

--
-- Table structure for table `inzert`
--

CREATE TABLE `inzert` (
  `iname` varchar(11) NOT NULL,
  `itype` varchar(11) NOT NULL,
  `iprize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oitem` varchar(10) NOT NULL,
  `oprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regis`
--

CREATE TABLE `regis` (
  `rname` varchar(10) NOT NULL,
  `ruser` varchar(10) NOT NULL,
  `ridnumber` int(10) NOT NULL,
  `rpass` varchar(10) NOT NULL,
  `rrepass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regis`
--

INSERT INTO `regis` (`rname`, `ruser`, `ridnumber`, `rpass`, `rrepass`) VALUES
('Nikita', 'Nikita', 1, 'Nikita', 'Nikita'),
('Nicky', 'Nicky', 2, 'Nicky', 'Nicky');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rname` varchar(10) NOT NULL,
  `rposition` varchar(10) NOT NULL,
  `rphone` int(10) NOT NULL,
  `rsection` varchar(10) NOT NULL,
  `rid` int(5) NOT NULL,
  `raddress` varchar(25) NOT NULL,
  `rage` int(5) NOT NULL,
  `rnic` varchar(11) NOT NULL,
  `rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rname`, `rposition`, `rphone`, `rsection`, `rid`, `raddress`, `rage`, `rnic`, `rdate`) VALUES
('abc', 'kitchen', 99, 'Z', 1, 'varanasi', 24, '1', '2012-07-06'),
('xyz', 'hall', 98, 'B', 4, 'varanasi', 24, '2', '2022-10-18'),
('pqr', 'counter', 97, 'C', 5, 'varanasi', 24, '3', '2012-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rname` varchar(10) NOT NULL,
  `rphone` int(10) NOT NULL,
  `ridnumber` int(10) NOT NULL,
  `rroom` int(11) NOT NULL,
  `raddress` varchar(10) NOT NULL,
  `rdate` date NOT NULL,
  `ravala` varchar(10) NOT NULL,
  `rrid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rname`, `rphone`, `ridnumber`, `rroom`, `raddress`, `rdate`, `ravala`, `rrid`) VALUES
('user2', 92, 2, 2, 'varanasi', '2022-07-22', 'AVAILABLE', 2),
('user3', 93, 3, 1, 'varanasi', '2016-07-14', 'BOOK', 3),
('user1', 91, 1, 1, 'kochi', '2015-07-09', 'BOOK', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `bill_no` int(10) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `quantity` int(10) NOT NULL,
  `item_price` int(5) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`bill_no`, `item_name`, `quantity`, `item_price`, `amount`) VALUES
(1, 'noodles', 1, 200, 200),
(2, 'noodles', 1, 200, 200),
(3, ' Noodles  Roll ', 2, 180, 380),
(4, ' Pasta ', 2, 440, 440),
(5, ' Rice Plate  Mushroom Gravy ', 1, 280, 380),
(6, ' Roll ', 7, 630, 630),
(7, ' Momos Fry ', 3, 600, 600);

-- --------------------------------------------------------

--
-- Table structure for table `tableee`
--

CREATE TABLE `tableee` (
  `tname` varchar(10) NOT NULL,
  `tphone` int(10) NOT NULL,
  `tid` varchar(10) NOT NULL,
  `tdate` varchar(10) NOT NULL,
  `ttime` varchar(10) NOT NULL,
  `tavai` varchar(10) NOT NULL,
  `ttable` int(10) NOT NULL,
  `ttidd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tableee`
--

INSERT INTO `tableee` (`tname`, `tphone`, `tid`, `tdate`, `ttime`, `tavai`, `ttable`, `ttidd`) VALUES
('Sweta', 666, '1', '2022-05-25', '3.00 P.M', 'AVAILABLE', 3, 1),
('Vishnu', 98, '2', '2022-07-19', '5.00 P.M', 'BOOK', 2, 2),
('Sahil', 97, '2', '2022-07-20', '7.00 P.M', 'BOOK', 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allsale`
--
ALTER TABLE `allsale`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `regis`
--
ALTER TABLE `regis`
  ADD PRIMARY KEY (`ridnumber`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rrid`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `tableee`
--
ALTER TABLE `tableee`
  ADD PRIMARY KEY (`ttidd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allsale`
--
ALTER TABLE `allsale`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `regis`
--
ALTER TABLE `regis`
  MODIFY `ridnumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rrid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `bill_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tableee`
--
ALTER TABLE `tableee`
  MODIFY `ttidd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
