-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 09:40 AM
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
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post\r\n', 'firstpost@gmail.com', '123456789', '0000-00-00 00:00:00', '2025-04-22 17:25:12'),
(3, 'prakash', '5467876755', 'hello', NULL, 'singhfhuih34@gmail.com'),
(4, 'prakash', '5467876755', 'hello', NULL, 'singhfhuih34@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about stock Market', 'this is my first post', 'first-post', 'What Are Stocks?\r\nA stock, also known as equity, is a security that represents the ownership of a fraction of the issuing corporation. Units of stock are called shares, which entitle the owner to a proportion of the corporation’s assets and profits equal to how much stock they own.\r\n\r\nStocks are bought and sold predominantly on stock exchanges and are the foundation of many individual investors’ portfolios. Stock trades have to conform to government regulations meant to protect investors from fraudulent practices.\r\n\r\nKey Takeaways\r\nA stock is a form of security that indicates the holder has proportionate ownership in the issuing corporation and is sold predominantly on stock exchanges.\r\nCorporations issue stock to raise funds to operate their businesses.\r\nThere are two main types of stock: common and preferred.\r\nHistorically, stocks have outperformed most other investments over the long run.\r\n1\r\nUnderstanding Stocks\r\nCorporations issue stock to raise funds to operate their businesses. The holder of stock, a shareholder, may have a claim to part of the company’s assets and earnings.\r\n\r\nA shareholder is considered an owner of the issuing company, determined by the number of shares an investor owns relative to the number of outstanding shares. If a company has 1,000 shares of stock outstanding and one person owns 100 shares, that person would own and have a claim to 10% of the company’s assets and earnings.\r\n2\r\n\r\nStockholders do not own a corporation, but corporations are a special type of organization because the law treats them as legal persons. Corporations file taxes, can borrow, can own property, and \r\n', 'stock.jpg', '2025-05-02 14:15:34'),
(2, 'IPL TEAMS news', ' As the tournament unfolds, every squad will be looking to make a mark and etch their name in IPL history.', 'iplteams', 'The IPL 2025 season features ten competitive teams, each bringing a mix of experienced superstars and rising talents. Over the years, franchises like Mumbai Indians (5 titles) and Chennai Super Kings (5 titles) have dominated the league, while Kolkata Knight Riders 3 titles), Sunrisers Hyderabad (1 title), Gujarat Titans (1 title), and Rajasthan Royals (1 title) have also tasted glory. However, teams like Royal Challengers Bangalore, Punjab Kings, Delhi Capitals, and Lucknow Super Giants are still chasing their maiden IPL trophy. As the tournament unfolds, every squad will be looking to make a mark and etch their name in IPL history.', 'IPL.jpg', '2025-05-04 13:10:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
