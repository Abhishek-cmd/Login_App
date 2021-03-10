-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 05:55 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `year`, `purchase`, `sale`, `profit`) VALUES
(1, 2013, 2000, 3000, 1000),
(2, 2014, 4500, 5000, 500),
(3, 2015, 3000, 4500, 1500),
(4, 2016, 2000, 3000, 1000),
(5, 2017, 2000, 4000, 2000),
(6, 2018, 2200, 3000, 800),
(7, 2019, 5000, 7000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Brielle', 'O\'Hara', 'alexandre67@example.com', '1974-05-21', '1999-09-17 13:47:28'),
(2, 'Flavio', 'Lehner', 'mafalda85@example.net', '1971-10-14', '1998-09-08 18:55:06'),
(3, 'Elmira', 'Johns', 'wellington52@example.org', '1983-11-28', '2015-02-07 10:26:43'),
(4, 'Elza', 'Mitchell', 'marisol46@example.org', '1989-03-08', '1992-08-20 18:51:39'),
(5, 'Viva', 'Greenfelder', 'era94@example.com', '1995-04-17', '2017-04-30 00:25:39'),
(6, 'Maxwell', 'VonRueden', 'mcassin@example.net', '1994-07-01', '1996-05-08 18:00:14'),
(7, 'Deontae', 'Becker', 'rory.kub@example.org', '1992-02-19', '2017-07-22 06:19:15'),
(8, 'Sylvester', 'Christiansen', 'erohan@example.org', '1990-09-03', '2004-05-08 02:45:37'),
(9, 'Torrey', 'Strosin', 'adams.luciano@example.net', '1999-10-09', '2009-08-30 16:00:44'),
(10, 'Kelli', 'Smitham', 'daniel.catalina@example.com', '2012-11-07', '1986-01-22 15:22:57'),
(11, 'Abigale', 'Schuppe', 'andreanne.hayes@example.net', '2018-02-18', '1994-05-07 00:56:36'),
(12, 'Letha', 'Gleason', 'eldridge.heaney@example.net', '2009-02-06', '1998-05-24 23:07:54'),
(13, 'Sienna', 'Upton', 'monique57@example.org', '2017-08-17', '2009-08-08 13:38:10'),
(14, 'Harley', 'Gutkowski', 'breilly@example.net', '1987-11-30', '1998-07-31 05:38:01'),
(15, 'Lois', 'Bednar', 'hpouros@example.net', '2002-02-11', '2001-07-26 09:34:16'),
(16, 'Gail', 'McDermott', 'reina.kerluke@example.com', '1987-03-30', '2004-12-15 15:08:29'),
(17, 'Sydney', 'Strosin', 'dweber@example.net', '1985-04-29', '2010-08-07 03:20:35'),
(18, 'Anne', 'Cremin', 'fritz.schmitt@example.com', '1976-02-15', '1980-03-24 23:59:41'),
(19, 'Norberto', 'Bergnaum', 'franecki.javon@example.net', '1971-03-11', '1993-03-20 18:06:25'),
(20, 'Arvid', 'Johns', 'pschultz@example.org', '2016-01-03', '1995-04-30 11:37:15'),
(21, 'Bernita', 'Fay', 'arne96@example.org', '1983-12-26', '1987-02-23 11:25:28'),
(22, 'Gonzalo', 'Gorczany', 'velma.huels@example.com', '1987-10-19', '2016-10-18 13:55:46'),
(23, 'Jackie', 'Klein', 'gretchen.howe@example.com', '1971-01-20', '2010-11-15 21:28:05'),
(24, 'Andrew', 'Kessler', 'collins.faye@example.org', '1984-08-07', '1971-12-15 03:16:42'),
(25, 'Claire', 'Hudson', 'madalyn.wunsch@example.org', '1984-12-19', '1991-07-04 09:05:53'),
(26, 'Prudence', 'Runte', 'koch.laurie@example.net', '2008-12-27', '1985-09-29 23:27:55'),
(27, 'Destinee', 'Romaguera', 'tromp.tiffany@example.com', '1978-11-09', '1997-11-09 14:28:08'),
(28, 'Marianna', 'Harvey', 'clovis.schuppe@example.com', '2013-08-28', '1990-08-06 13:59:19'),
(29, 'Eloy', 'Lakin', 'wmorissette@example.net', '1989-12-08', '1974-03-15 21:51:16'),
(30, 'Rubie', 'McClure', 'haley.louisa@example.net', '1987-09-12', '1998-07-02 05:15:36'),
(31, 'Marisa', 'Stracke', 'zachary76@example.org', '1975-05-28', '1975-03-18 19:27:35'),
(32, 'Jacey', 'Beatty', 'dahlia.hermann@example.org', '1979-12-17', '1971-01-21 11:20:58'),
(33, 'Idella', 'Ruecker', 'elda.reichert@example.com', '2009-09-15', '1996-04-19 16:57:31'),
(34, 'Dimitri', 'Bednar', 'freida.parker@example.org', '1998-12-02', '2008-12-30 17:59:57'),
(35, 'Elfrieda', 'Smitham', 'padberg.rex@example.org', '2018-07-23', '1972-04-01 02:22:25'),
(36, 'Dwight', 'Walter', 'gmosciski@example.org', '2016-08-15', '1994-07-02 05:36:55'),
(37, 'Macie', 'Fay', 'uschuppe@example.net', '1976-01-29', '2005-12-13 13:14:46'),
(38, 'Lori', 'Kshlerin', 'mhansen@example.net', '1983-04-08', '1986-01-18 10:33:52'),
(39, 'Jeffry', 'Paucek', 'alisha35@example.net', '2002-10-02', '2004-03-29 01:36:03'),
(40, 'Yvonne', 'Bernhard', 'jaqueline21@example.net', '2017-11-04', '1986-12-15 18:25:23'),
(41, 'Ludwig', 'Heathcote', 'marcelino.kirlin@example.org', '1981-02-09', '2000-08-02 15:15:48'),
(42, 'Jadyn', 'Wiegand', 'georgianna.swift@example.net', '1982-06-16', '1980-12-05 07:39:37'),
(43, 'Ferne', 'Smitham', 'melany22@example.com', '1996-12-17', '1984-11-18 13:56:27'),
(44, 'Meta', 'Corkery', 'xharber@example.com', '1972-03-31', '2007-01-19 18:37:31'),
(45, 'Toni', 'Wolf', 'wyman.crystal@example.org', '2012-04-15', '1973-06-22 06:44:37'),
(46, 'Zack', 'Luettgen', 'deion.konopelski@example.org', '2003-05-29', '2018-11-18 23:33:21'),
(47, 'Kameron', 'Dietrich', 'ronaldo.torphy@example.com', '1973-05-20', '1974-09-16 14:57:17'),
(48, 'Zetta', 'Lebsack', 'timmothy.vandervort@example.com', '1996-11-04', '2001-03-05 20:03:01'),
(49, 'Benny', 'Hane', 'leone.lueilwitz@example.net', '2008-02-02', '2006-01-27 16:42:39'),
(50, 'Evans', 'Gleason', 'ccummerata@example.org', '1999-09-09', '1990-09-26 12:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `demo_click`
--

CREATE TABLE `demo_click` (
  `id` int(11) NOT NULL,
  `numberofclick` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_click`
--

INSERT INTO `demo_click` (`id`, `numberofclick`, `created_at`) VALUES
(10, 3, '2016-03-04 07:01:41'),
(11, 4, '2014-03-04 07:01:41'),
(12, 5, '2016-03-04 07:01:52'),
(13, 6, '2015-03-04 07:01:52'),
(14, 2, '2013-03-04 07:02:01'),
(15, 1, '2015-03-04 07:02:01'),
(16, 3, '2013-03-04 07:02:12'),
(17, 4, '2014-03-04 07:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `demo_viewer`
--

CREATE TABLE `demo_viewer` (
  `id` int(11) NOT NULL,
  `numberofview` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_viewer`
--

INSERT INTO `demo_viewer` (`id`, `numberofview`, `created_at`) VALUES
(10, 4, '2016-03-04 07:02:39'),
(11, 4, '2014-03-04 07:02:39'),
(12, 3, '2013-03-04 07:02:49'),
(13, 6, '2015-03-04 07:02:49'),
(14, 7, '2015-03-04 07:02:57'),
(15, 3, '2014-03-04 07:02:57'),
(16, 4, '2013-03-04 07:03:04'),
(17, 5, '2016-03-04 07:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `dummy_users`
--

CREATE TABLE `dummy_users` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `manager` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_users`
--

INSERT INTO `dummy_users` (`emp_id`, `name`, `age`, `dept`, `manager`) VALUES
(1, 'Abhi', 32, 'IT', '-'),
(2, 'Rakesh', 43, 'HR', '1'),
(3, 'Shyam', 34, 'IT', '1'),
(4, 'Dipak', 34, 'IT', '2');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `salary`) VALUES
(1, 'Abhi', 8000),
(2, 'Ram', 10000),
(3, 'Shyam', 12000),
(4, 'shubham', 5000),
(5, 'gauri', 12500),
(6, 'ganesh', 5100);

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(10) CHARACTER SET latin1 NOT NULL,
  `dept_name` char(10) CHARACTER SET latin1 NOT NULL,
  `status` enum('1','0') CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `emp_name`, `dept_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abhi Dalvi', 'Chemistry', '1', '2021-01-31 12:05:04', NULL),
(2, 'Abhi Dalvi', 'IT Dept', '0', '2021-01-31 11:58:51', '2021-01-31 12:07:33'),
(3, 'Ramakant', 'Physics De', '1', '2021-02-01 01:02:57', '2021-02-01 01:03:12'),
(4, 'abhishek d', 'abhishek d', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'download.jpg', '2021-02-02 13:00:28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `amout` varchar(50) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `emp_id`, `amout`, `year`) VALUES
(1, 1, '200', '2021-02-27'),
(2, 2, '4500', '2021-02-27'),
(3, 1, '500', '2021-01-30'),
(4, 1, '500', '2020-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `trn_movies`
--

CREATE TABLE `trn_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `film_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `director` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `release_year` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trn_movies`
--

INSERT INTO `trn_movies` (`movie_id`, `film_name`, `director`, `release_year`) VALUES
(1, 'Happy New Year', 'Farah Khan', 2014),
(2, 'Kill Dil', 'Shaad Ali', 2014),
(3, 'The Shaukeens', 'Abhishek Sharma', 2014),
(4, 'Kick', 'Sajid Nadiadwala', 2014),
(5, 'Bang Bang', 'Siddharth Anand', 2014),
(6, 'Ungli', 'Rensil DSilva', 2014),
(7, 'Happy Ending', ' Krishna D.K', 2014),
(8, 'Jai Ho', 'Sohail Khan', 2014),
(9, 'Lingaa', 'K. S. Ravikumar', 2015),
(10, 'Daawat-e-Ishq', 'Habib Faisal', 2014),
(11, 'Singham Returns', 'Rohit Shetty', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `image`, `status`, `created_on`, `updated_on`) VALUES
(1, 'Abhishekkkkk', 'abhi@gmail.com', '8149167341', 'e10adc3949ba59abbe56e057f20f883e', '1.jpg', '1', '0000-00-00 00:00:00', '2021-02-12 10:45:19'),
(2, 'Omkar', 'omkar@gmail.com', '8149167341', '81dc9bdb52d04dc20036dbd8313ed055', 'abhi_RRB1.png', '1', '0000-00-00 00:00:00', '2021-02-08 14:30:44'),
(3, 'sahil', 'sahil@gmail.com', '9260549793', '1006f0ae5a7ece19828a67ac62288e05', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Rupesh', 'rupesh@gmail.com', '9260549793', '59d35c0fea312771a132d8d5ac630b54', 'abhi_RRB3.png', '1', '2021-02-08 15:46:55', '0000-00-00 00:00:00'),
(5, 'ramakant', 'ramesh@gmail.com', '9260549793', '098f6bcd4621d373cade4e832627b4f6', 'abhi_RRB.jpg', '1', '2021-02-08 15:51:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `demo_click`
--
ALTER TABLE `demo_click`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_viewer`
--
ALTER TABLE `demo_viewer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dummy_users`
--
ALTER TABLE `dummy_users`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_movies`
--
ALTER TABLE `trn_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `demo_click`
--
ALTER TABLE `demo_click`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `demo_viewer`
--
ALTER TABLE `demo_viewer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dummy_users`
--
ALTER TABLE `dummy_users`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trn_movies`
--
ALTER TABLE `trn_movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
