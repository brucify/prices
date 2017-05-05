-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 05, 2017 at 01:50 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `price_usd` float NOT NULL,
  `price_eur` float NOT NULL,
  `price_sek` float NOT NULL,
  `price_dkk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `price_usd`, `price_eur`, `price_sek`, `price_dkk`) VALUES
(1, 50, 50, 500, 400),
(2, 60, 60, 600, 500),
(3, 70, 70, 700, 600),
(4, 19.99, 18.99, 199.99, 159.99),
(5, 299.99, 299.99, 2999.99, 1999.99);
