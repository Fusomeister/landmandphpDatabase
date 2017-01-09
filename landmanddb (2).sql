-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2016 at 01:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landmanddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `PK_catId` int(11) NOT NULL,
  `C_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`PK_catId`, `C_name`) VALUES
(1, 'Korn'),
(2, 'Frugt'),
(7, 'Grønsager');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `PK_CommentId` int(11) NOT NULL,
  `FK_cUserId` varchar(128) NOT NULL,
  `FK_cTopicId` int(11) NOT NULL,
  `Comment` text NOT NULL,
  `Creator` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`PK_CommentId`, `FK_cUserId`, `FK_cTopicId`, `Comment`, `Creator`) VALUES
(1, '{D65181D2-2633-D5C8-D031-1C0104185327}', 1, 'Hvad laver du?', ''),
(2, '{F2BF3D0A-A604-0119-0326-A4793FDB9C41}', 1, 'Hvor er salaten?', ''),
(3, '{5A0E5B3B-EA73-F97D-BF57-DBAC00083B50}', 1, 'Goddag', ''),
(4, '{5A0E5B3B-EA73-F97D-BF57-DBAC00083B50}', 1, 'Jeg hedder 33', ''),
(5, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(6, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(7, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(8, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(9, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(10, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 2, '2', ''),
(11, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 1, '<vfbxsfhdddz', ''),
(12, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 1, '', ''),
(13, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 1, '234234', ''),
(14, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 1, '3242rb23a2a4ngan', ''),
(15, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 1, '343432423rqqqqh', ''),
(16, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 7, 'dfs', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `PK_imageId` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `iDesc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`PK_imageId`, `url`, `iDesc`) VALUES
(1, 'http://i.imgur.com/ONM4KR2.jpg', 'Grøn pære'),
(2, 'http://i.imgur.com/85p8lRA.jpg', 'Rødt æble'),
(4, 'http://imgur.com/MGoLxO2.jpg', 'Havre');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `PK_linksId` int(11) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Url` varchar(256) NOT NULL,
  `UrlDesc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`PK_linksId`, `Title`, `Url`, `UrlDesc`) VALUES
(1, 'Google', 'http://www.google.dk', 'Dette er Google'),
(2, 'Danmarks Radio', 'http://www.dr.dk', 'Nyheder');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `item` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PK_productId` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `pDesc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `antal` varchar(128) NOT NULL,
  `FK_pCatId` int(11) NOT NULL,
  `FK_pImageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PK_productId`, `name`, `pDesc`, `price`, `antal`, `FK_pCatId`, `FK_pImageId`) VALUES
(10, 'Pære', 'gult', '39.00', 'kg', 2, 2),
(12, 'Banan', 'Den gule en', '10.30', 'kg', 2, 2),
(14, 'Havre', 'Det er gult', '30.30', 'kg', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Id` varchar(128) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `PK_TopicId` int(11) NOT NULL,
  `FK_tUserId` varchar(128) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`PK_TopicId`, `FK_tUserId`, `Title`, `Note`) VALUES
(1, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 'Hvordan laver man jordbær?', 'Jeg ved ikke hvad jeg gør, de ligner tomater.'),
(2, '{F2BF3D0A-A604-0119-0326-A4793FDB9C41}', 'Sådan vander du kartofler', 'Med rent vand, med 5,5 pH'),
(7, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 'Goddag', 'Testest'),
(8, '{546C4423-FF2A-175F-F1FA-B855292A8653}', 'Ny', 'KDflæawfae');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `UserId` varchar(128) NOT NULL,
  `RoleId` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `PK_UserId` varchar(128) NOT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `PasswordHash` text,
  `UserName` varchar(256) NOT NULL,
  `IsAdmin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`PK_UserId`, `Email`, `PasswordHash`, `UserName`, `IsAdmin`) VALUES
('', 'hc@dl.dk', 'asdf', 'Dan', 0),
('1', 'hc@hc.hc', '$2y$10$xfcD9GhnzIrPw2IHGUvqDetE4RjB1HsqpM36qfzHlH/qBNS3Le2Gq', 'hchchc', 0),
('{12CF9559-AF9C-FBD1-639D-45BC62AF190D}', '44@44.dk', '$2y$10$J9uzmeIIdjpGhm41Rlv25Oi0Le15Jf9v1QK/alStsKuj/j7aY8MG.', '44', 1),
('{1A366494-E580-AEF8-9226-5F17F11BE86B}', 'hc@hc.dk', '$2y$10$8MeKvxAEousqmSNmUv0mCuwrfKd5MAxfdBYgfvfyxOpc2u1h8NSni', '1111', 0),
('{546C4423-FF2A-175F-F1FA-B855292A8653}', 'dk@dk.dk', '$2y$10$6jVzBE.vBUnAF11RKPsBEepb0XkO.9Ikb8qz0CLxWjZoHSrl/Qjia', '22', 1),
('{5A0E5B3B-EA73-F97D-BF57-DBAC00083B50}', '33@33.dk', '$2y$10$d0W4vNuaIJv3u4QLiLslqOudD1dd60IQ62vuusCycP3ldLulKWbjm', '33', 1),
('{CE4DA3E5-05D9-D73A-2F66-710AAE365109}', '1234@1234.dk', '$2y$10$Zdlwn4svmweQXRf4qkrCYeqjOPGa.0ac26rO.Ze/TsvNhCnC85lZu', '1234', 0),
('{D65181D2-2633-D5C8-D031-1C0104185327}', 'hc@hc.dk', '$2y$10$TvV8QcDQYB1aQYtoDdPnUOKuqleKKbTbHnlxy5Q2VaN88l3VEVJ9C', 'Dan', 0),
('{F2BF3D0A-A604-0119-0326-A4793FDB9C41}', 'hc@hc.dk', '$2y$10$PSBlEdc3d98u9iqmd5nq6.cnSA.oBQ50xf8sGpXvHKVHBvelOLMOW', 'qqq', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`PK_catId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`PK_CommentId`),
  ADD KEY `UserId` (`FK_cUserId`),
  ADD KEY `TopicId` (`FK_cTopicId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`PK_imageId`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`PK_linksId`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PK_productId`),
  ADD KEY `FK_pCatId` (`FK_pCatId`),
  ADD KEY `FK_pImageId` (`FK_pImageId`),
  ADD KEY `FK_pImageId_2` (`FK_pImageId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`PK_TopicId`),
  ADD KEY `UserId` (`FK_tUserId`),
  ADD KEY `UserId_2` (`FK_tUserId`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD KEY `UserId` (`UserId`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`PK_UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `PK_catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `PK_CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `PK_imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `PK_linksId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `PK_productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `PK_TopicId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`FK_cUserId`) REFERENCES `users` (`PK_UserId`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`FK_cTopicId`) REFERENCES `topics` (`PK_TopicId`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`FK_pCatId`) REFERENCES `categories` (`PK_catId`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`FK_pImageId`) REFERENCES `images` (`PK_imageId`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`FK_tUserId`) REFERENCES `users` (`PK_UserId`);

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`PK_UserId`),
  ADD CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
