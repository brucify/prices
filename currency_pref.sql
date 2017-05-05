-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 05, 2017 at 01:49 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency_pref`
--

CREATE TABLE `currency_pref` (
  `user_id` int(11) NOT NULL,
  `pref` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_pref`
--

INSERT INTO `currency_pref` (`user_id`, `pref`) VALUES
(1, 'price_usd'),
(2, 'price_sek'),
(3, 'price_dkk');
