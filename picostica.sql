-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2017 at 06:39 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picostica`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `status` int(2) NOT NULL,
  `admin_mail` varchar(255) DEFAULT NULL,
  `admin_desc` varchar(255) NOT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`, `admin_mail`, `admin_desc`, `join_date`) VALUES
(1, 'Sharath Raj', 'sharath146', 'Sharu@143', 1, 'sharathrj143@gmail.com', 'CEO at Picostica Inc.', '2017-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image_price` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Abstract'),
(2, 'Animals'),
(3, 'Architecture'),
(4, 'Art Illustrations'),
(5, 'Backgrounds'),
(6, 'Business'),
(7, 'Communication'),
(8, 'Computers'),
(9, 'Conceptual'),
(10, 'Editorial'),
(11, 'Education'),
(12, 'Food'),
(13, 'Health'),
(14, 'Holidays'),
(15, 'Industry'),
(16, 'Internet'),
(17, 'Landscapes'),
(18, 'Maps'),
(19, 'Miscellaneous'),
(20, 'Musical'),
(21, 'Nature'),
(22, 'Objects'),
(23, 'People'),
(24, 'Places'),
(25, 'Sexy'),
(26, 'Sports'),
(27, 'Transportation'),
(28, 'Wildlife'),
(29, 'Textures'),
(30, 'Beauty'),
(31, 'Fashion'),
(32, 'Building'),
(33, 'Landmarks'),
(34, 'Finance'),
(35, 'Celebrities'),
(36, 'Drinks'),
(37, 'Healthcare'),
(38, 'Medical'),
(39, 'Interiors'),
(40, 'Park'),
(41, 'Outdoor'),
(42, 'Religion'),
(43, 'Science'),
(44, 'Signs'),
(45, 'Symbols'),
(46, 'Recreation'),
(47, 'Technology'),
(48, 'Vectors'),
(49, 'Vintage');

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `com_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amt` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`com_id`, `user_id`, `total_amt`) VALUES
(1, 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `image_path` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `image_id`, `image_path`, `user_id`) VALUES
(11, 22, 'watermarked/8841857910-sharath146.png', 1),
(3, 14, 'watermarked/37231445-sharath146.jpg', 1),
(4, 15, 'watermarked/4752502441-sharath146.jpg', 1),
(52, 38, 'watermarked/3022460937-sharath146.png', 1),
(36, 22, 'watermarked/3478088378-sharath146.jpg', 1),
(45, 31, 'watermarked/9671630859-sharath146.jpg', 1),
(15, 1, 'watermarked/3325805664-sharath146.jpg', 1),
(17, 3, 'watermarked/9651794433-amith222.jpg', 7),
(18, 4, 'watermarked/2844238281-amith222.jpg', 7),
(19, 5, 'watermarked/7539367675-amith222.jpg', 7),
(20, 6, 'watermarked/2356872558-amith222.jpg', 7),
(21, 7, 'watermarked/4452819824-anusha143.jpg', 8),
(22, 8, 'watermarked/6400451660-jijo267.jpg', 10),
(23, 9, 'watermarked/8961181640-sharath146.jpg', 1),
(24, 10, 'watermarked/1435241699-sharath146.jpg', 1),
(25, 11, 'watermarked/3825073242-sharath146.jpg', 1),
(26, 12, 'watermarked/1315307617-sharath146.jpg', 1),
(27, 13, 'watermarked/1198425292-sharath146.jpg', 1),
(28, 14, 'watermarked/5145568847-rupesh225.jpg', 2),
(29, 15, 'watermarked/9762878417-rupesh225.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `image_less`
--

CREATE TABLE `image_less` (
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_width` int(25) DEFAULT NULL,
  `img_height` int(25) DEFAULT NULL,
  `img_title` varchar(250) DEFAULT NULL,
  `img_desc` varchar(250) DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  `image_type` varchar(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `img_path` varchar(255) NOT NULL,
  `count` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `approval` varchar(10) DEFAULT '0',
  `thumb_path` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_less`
--

INSERT INTO `image_less` (`image_id`, `user_id`, `img_width`, `img_height`, `img_title`, `img_desc`, `upload_date`, `image_type`, `category_id`, `img_path`, `count`, `views`, `approval`, `thumb_path`) VALUES
(1, 1, 6016, 4000, 'Rideit', 'Riding', '2017-03-24 14:32:45', 'JPG', 10, 'uploads/1/3325805664-sharath146.jpg', 1, 8, 'APPROVED', NULL),
(3, 7, 6016, 4000, 'Red Rose', 'Focused on the Red Rose', '2017-03-24 23:06:20', 'JPG', 21, 'uploads/7/9651794433-amith222.jpg', 1, 2, 'APPROVED', NULL),
(4, 7, 6016, 4000, 'Cashew  Nut', 'Ant Viewing from cashew Nut ', '2017-03-24 23:12:33', 'JPG', 21, 'uploads/7/2844238281-amith222.jpg', 0, 3, 'APPROVED', NULL),
(5, 7, 4512, 3000, 'Jesus Christ Cross Rosary', 'Rosary with black background and lighted candles', '2017-03-24 23:15:11', 'JPG', 19, 'uploads/7/7539367675-amith222.jpg', 0, 0, 'APPROVED', NULL),
(6, 7, 6000, 4000, 'Beautiful Sunflare', 'Unfocused Sunflare beautiful', '2017-03-24 23:17:02', 'JPG', 21, 'uploads/7/2356872558-amith222.jpg', 0, 4, 'APPROVED', NULL),
(7, 8, 6000, 4000, 'Gooseberry', 'Gooseberry from nature good for health', '2017-03-24 23:23:28', 'JPG', 21, 'uploads/8/4452819824-anusha143.jpg', 3, 4, 'APPROVED', NULL),
(8, 10, 4512, 3000, 'Dry flowers', 'Tiny flowers that got dry', '2017-03-25 10:56:25', 'JPG', 17, 'uploads/10/6400451660-jijo267.jpg', 0, 2, 'APPROVED', NULL),
(9, 1, 6000, 4000, 'Sunset', 'Beautiful sunset between trees', '2017-03-25 11:09:38', 'JPG', 17, 'uploads/1/8961181640-sharath146.jpg', 0, 0, 'APPROVED', NULL),
(10, 1, 6000, 4000, 'Grass', 'AI pic with', '2017-03-25 12:29:56', 'JPG', 21, 'uploads/1/1435241699-sharath146.jpg', 0, 0, 'APPROVED', NULL),
(11, 1, 6000, 4000, 'Sunset', 'Beautiful sunset between the trees', '2017-03-25 16:58:40', 'JPG', 17, 'uploads/1/3825073242-sharath146.jpg', 0, 2, 'APPROVED', NULL),
(12, 1, 6000, 4000, 'Sunset', 'Beautiful sunset between the trees', '2017-03-25 17:01:23', 'JPG', 17, 'uploads/1/1315307617-sharath146.jpg', 1, 16, 'APPROVED', NULL),
(13, 1, 6000, 4000, 'Cat', 'Cat scratching its body', '2017-03-25 17:12:20', 'JPG', 2, 'uploads/1/1198425292-sharath146.jpg', 0, 0, 'APPROVED', NULL),
(14, 2, 6000, 4000, 'Moon at daytime', 'Moon at daytime. captured with most effectiveness', '2017-03-25 18:20:40', 'JPG', 43, 'uploads/2/5145568847-rupesh225.jpg', 0, 1, 'APPROVED', NULL),
(15, 2, 6000, 4000, 'Group of Tiny Plants', 'Tiny plants focused', '2017-03-25 18:30:51', 'JPG', 41, 'uploads/2/9762878417-rupesh225.jpg', 0, 0, 'APPROVED', NULL),
(31, 1, 1600, 1000, 'Dark Blue background', 'Dark blue background for editing purpose... ', '2017-03-30 22:20:01', 'JPG', 48, 'uploads/1/9671630859-sharath146.jpg', 0, 1, 'APPROVED', NULL),
(22, 1, 1920, 1200, 'Blue Circle Wallpaper', 'Abstract dark blue wallpaper for tech backgrounds', '2017-03-26 19:37:56', 'JPG', 1, 'uploads/1/3478088378-sharath146.jpg', 0, 0, 'APPROVED', NULL),
(38, 1, 1440, 900, 'Light Blue Computer Wallpaper', 'Beautiful Light Blue backgroud', '2017-04-02 12:32:29', 'PNG', 1, 'uploads/1/3022460937-sharath146.png', 7, 4, 'APPROVED', '3022460937-thumbsharath146.png');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `search_id` int(11) NOT NULL,
  `topic` varchar(25) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ipaddr` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`search_id`, `topic`, `user_id`, `ipaddr`) VALUES
(2, '3d', 17, ''),
(3, 'Search', 17, ''),
(4, 'Search', 17, ''),
(5, '3d', 17, ''),
(6, '3d', 17, ''),
(7, 'Search', 17, ''),
(8, 'Search', 17, ''),
(9, 'artificial', 17, ''),
(10, 'artificial', 17, ''),
(11, 'artificial', 17, ''),
(12, 'human', 17, ''),
(13, 'art', 17, ''),
(14, '3d', 17, ''),
(15, 'puga', 17, ''),
(16, 'abstract', 17, ''),
(17, 'painting', 17, ''),
(18, '3D', 17, ''),
(19, '3d', 17, ''),
(20, ' ', 17, ''),
(21, ' ', 17, ''),
(22, ' ', 17, ''),
(23, ' ', 17, ''),
(24, ' ', 17, ''),
(25, ' ', 17, ''),
(26, ' ', 17, ''),
(27, '', 17, ''),
(28, 'Search', NULL, '::1'),
(29, 'artificial', NULL, '::1'),
(30, 'artificial', NULL, '::1'),
(31, 'Search', NULL, '::1'),
(32, '', NULL, '::1'),
(33, '', NULL, '::1'),
(34, '', NULL, '::1'),
(35, '', NULL, '::1'),
(36, '', NULL, '::1'),
(37, 'class', 17, NULL),
(38, '3d', 17, NULL),
(39, '3d', 17, NULL),
(40, 'artificial', 17, NULL),
(41, 'class', 17, NULL),
(42, 'pinnacle', 17, NULL),
(43, 'class', 17, NULL),
(44, 'pinnacle', 17, NULL),
(45, 'pinnacle', 17, NULL),
(46, 'pinnacle', 17, NULL),
(47, 'pinnacle', 17, NULL),
(48, 'class', NULL, '::1'),
(49, 'pinnacle', NULL, '::1'),
(50, 'pinnacle', NULL, '::1'),
(51, 'class', NULL, '::1'),
(52, 'class', 17, NULL),
(53, 'class', NULL, '::1'),
(54, 'class', NULL, '::1'),
(55, 'class', NULL, '::1'),
(56, 'class', NULL, '::1'),
(57, 'class', NULL, '::1'),
(58, 'class', NULL, '::1'),
(59, 'class', NULL, '::1'),
(60, 'class', NULL, '::1'),
(61, 'class', NULL, '::1'),
(62, 'class', NULL, '::1'),
(63, 'class', NULL, '::1'),
(64, 'artificial', 17, NULL),
(65, '', 17, NULL),
(66, 'pinnacle', 17, NULL),
(67, 'Pinnacle', 17, NULL),
(68, '3d', 17, NULL),
(69, 'Search', 17, NULL),
(70, 'Search', 17, NULL),
(71, 'artificial', 17, NULL),
(72, 'pinnacle', 17, NULL),
(73, 'pinnacle', 17, NULL),
(74, 'pinnacle', 17, NULL),
(75, 'pinnacle', 17, NULL),
(76, 'pinnacle', 17, NULL),
(77, 'Search', NULL, '::1'),
(78, 'pinnacle', NULL, '::1'),
(79, 'fun', NULL, '::1'),
(80, 'fun', NULL, '::1'),
(81, 'journal', NULL, '::1'),
(82, 'journal', NULL, '::1'),
(83, '', NULL, '::1'),
(84, 'pinnacle', NULL, '::1'),
(85, 'Nature', NULL, '::1'),
(86, 'artificial', NULL, '::1'),
(87, 'artificial', NULL, '::1'),
(88, '', NULL, '::1'),
(89, '', NULL, '::1'),
(90, '', NULL, '::1'),
(91, '3d', NULL, '::1'),
(92, 'artificial', NULL, '::1'),
(93, 'se', NULL, '::1'),
(94, 'artificial', NULL, '::1'),
(95, 'pinnacle', NULL, '::1'),
(96, 'pinnacle', NULL, '::1'),
(97, '3d', NULL, '::1'),
(98, 'flower', NULL, '::1'),
(99, 'flower', NULL, '::1'),
(100, 'flower', NULL, '::1'),
(101, 'flower', NULL, '::1'),
(102, 'flower', NULL, '::1'),
(103, 'pinnacle', NULL, '::1'),
(104, 'pinnacle', NULL, '::1'),
(105, 'text', NULL, '::1'),
(106, 'text', NULL, '::1'),
(107, 'text', NULL, '::1'),
(108, 'pinnacle', NULL, '::1'),
(109, 'Search something', NULL, '::1'),
(110, 'pinnacle', NULL, '::1'),
(111, 'pinnacle', NULL, '::1'),
(112, 'pinnacle', NULL, '::1'),
(113, '3d', NULL, '::1'),
(114, 'pinnacle', 17, NULL),
(115, 'pinnacle', 17, NULL),
(116, 'pinnacle', 17, NULL),
(117, 'pinnacle', 17, NULL),
(118, 'pinnacle', 17, NULL),
(119, 'pinnacle', 17, NULL),
(120, 'pinnacle', 17, NULL),
(121, 'pinnacle', 17, NULL),
(122, 'pinnacle', NULL, '::1'),
(123, 'pinnacle', 17, NULL),
(124, 'Search', NULL, '::1'),
(125, 'pinnacle', NULL, '::1'),
(126, 'PINNACLE', NULL, '::1'),
(127, 'Search', 17, NULL),
(128, '', 17, NULL),
(129, 'pinnacle', NULL, '::1'),
(130, '', NULL, '::1'),
(131, '', NULL, '::1'),
(132, '', NULL, '::1'),
(133, '1', NULL, '::1'),
(134, '1', NULL, '::1'),
(135, '1', NULL, '::1'),
(136, '1', NULL, '::1'),
(137, '1', NULL, '::1'),
(138, '1', NULL, '::1'),
(139, '1', NULL, '::1'),
(140, '1', NULL, '::1'),
(141, '3d', NULL, '::1'),
(142, 'pinnacle', NULL, '::1'),
(143, 'indian', NULL, '::1'),
(144, 'jj', NULL, '::1'),
(145, 'Tree', NULL, '::1'),
(146, 'Illustration', NULL, '::1'),
(147, 's', NULL, '::1'),
(148, 'ss', NULL, '::1'),
(149, 's', NULL, '::1'),
(150, '3d', NULL, '::1'),
(151, '3', NULL, '::1'),
(152, 'pinnacle', NULL, '::1'),
(153, 'p', NULL, '::1'),
(154, 'pinnacle', NULL, '::1'),
(155, 'pinnacle', NULL, '::1'),
(156, 'class', 17, NULL),
(157, 'food', 17, NULL),
(158, 'wedding', NULL, '::1'),
(159, 'pinnacle', NULL, '::1'),
(160, 'pinnacle', 17, NULL),
(161, 'web', NULL, '::1'),
(162, 'pinnacle', 17, NULL),
(163, '3d', NULL, '::1'),
(164, 'pinnacle', NULL, '::1'),
(165, 'food', 1, NULL),
(166, 'pinnacle', 1, NULL),
(167, '\'\'', 1, NULL),
(168, '" ";', 1, NULL),
(169, '\'\'', 1, NULL),
(170, '"";', 1, NULL),
(171, 'Search something', 1, NULL),
(172, 'pinnacle', 1, NULL),
(173, 'Pinnackle', NULL, '192.168.1.179'),
(174, 'food', NULL, '192.168.1.179'),
(175, 'photography', NULL, '192.168.1.179'),
(176, 'ant', 1, NULL),
(177, 'fashion', 1, NULL),
(178, 'bikes', 1, NULL),
(179, 'sun', 1, NULL),
(180, 'fashion', NULL, '::1'),
(181, 'sun', NULL, '::1'),
(182, 'sun', NULL, '::1'),
(183, 'pinnacle', NULL, '::1'),
(184, 'sil', NULL, '::1'),
(185, 'beautiful', NULL, '::1'),
(186, 'beautiful', 1, NULL),
(187, 'wedding', 1, NULL),
(188, '', 1, NULL),
(189, 'Nature', 1, NULL),
(190, 'sun', 1, NULL),
(191, 'sun', 1, NULL),
(192, 'sun', 1, NULL),
(193, '', 1, NULL),
(194, 'sun', 1, NULL),
(195, 'sun', 1, NULL),
(196, 'Nature', NULL, '::1'),
(197, 'fun', 1, NULL),
(198, 'nature', 1, NULL),
(199, 'pinnacle', NULL, '::1'),
(200, 'Nature', NULL, '::1'),
(201, 'Sun', NULL, '192.168.43.120'),
(202, 'pinnacle', NULL, '::1'),
(203, 'lo', NULL, '::1'),
(204, 'fashion', 1, NULL),
(205, 'nature', NULL, '::1'),
(206, 'photography', NULL, '::1'),
(207, 'blue', 1, NULL),
(208, 'Fun', 1, NULL),
(209, 'blue', 1, NULL),
(210, 'nature', 1, NULL),
(211, 'blue', 1, NULL),
(212, 'blue', 1, NULL),
(213, 'class', 1, NULL),
(214, 'sun', 1, NULL),
(215, 'sun', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `subscription_id` int(250) NOT NULL,
  `sale_amount` float NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `image_id`, `user_id`, `cart_id`, `subscription_id`, `sale_amount`, `sale_date`) VALUES
(1, 38, 1, NULL, 1, 16, '2017-04-02 08:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `status` text,
  `customid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_of_sub` datetime DEFAULT NULL,
  `date_of_end` datetime NOT NULL,
  `sub_cat` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `user_id`, `amount`, `date_of_sub`, `date_of_end`, `sub_cat`) VALUES
(1, 1, 1152, '2017-02-28 23:27:20', '2017-03-30 17:03:20', 'BRONZE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_bio` text,
  `dob` date DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `user_status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `password`, `status`, `mobile_no`, `email`, `uname`, `type`, `user_avatar`, `user_bio`, `dob`, `profession`, `gender`, `address`, `country`, `user_status`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `userbank`
--

CREATE TABLE `userbank` (
  `user_id` int(11) NOT NULL,
  `flname` varchar(30) NOT NULL,
  `accountno` varchar(20) NOT NULL,
  `iban` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `bankname` varchar(40) NOT NULL,
  `ifsc` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userbank`
--

INSERT INTO `userbank` (`user_id`, `flname`, `accountno`, `iban`, `address`, `bankname`, `ifsc`) VALUES
(1, 'Sharath Raj', '1224135551231', '125123712362', '			Nellyady					', 'Corporation Bank', 'CORP125485248'),
(10, 'Jijo Joseph', '31786360649', NULL, 'State Bank of India\r\nPuttur, Near Court Maidan', 'State Bank of India', 'SBIN0004270');

-- --------------------------------------------------------

--
-- Table structure for table `usernotify`
--

CREATE TABLE `usernotify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `datepro` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usernotify`
--

INSERT INTO `usernotify` (`id`, `user_id`, `message`, `datepro`) VALUES
(13, 18, 'Sorry! your image with ID #9  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-23 22:14:39'),
(14, 18, 'Sorry! your image with ID #8  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-23 22:14:42'),
(62, 1, 'Your image with ID #38 Has been approved and is ready to be sold', '2017-04-02 12:34:21'),
(21, 1, 'Your image with ID #22 Has been approved and is ready to be sold', '2017-03-24 00:05:35'),
(61, 1, 'Sorry! your image with ID #37  didnot fullfill the conditions of our company..Your image has been rejected', '2017-04-02 12:30:11'),
(25, 8, 'Your image with ID #7 Has been approved and is ready to be sold', '2017-03-24 23:24:07'),
(26, 7, 'Your image with ID #4 Has been approved and is ready to be sold', '2017-03-24 23:24:14'),
(27, 7, 'Your image with ID #5 Has been approved and is ready to be sold', '2017-03-24 23:24:17'),
(28, 7, 'Your image with ID #6 Has been approved and is ready to be sold', '2017-03-24 23:24:20'),
(56, 1, 'Sorry! your image with ID #32  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-31 18:59:35'),
(30, 10, 'Your image with ID #8 Has been approved and is ready to be sold', '2017-03-25 12:22:32'),
(31, 1, 'Your image with ID #9 Has been approved and is ready to be sold', '2017-03-25 17:12:44'),
(32, 1, 'Your image with ID #11 Has been approved and is ready to be sold', '2017-03-25 17:12:51'),
(46, 1, 'Sorry! your image with ID #23  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-28 15:08:28'),
(47, 1, 'Sorry! your image with ID #24  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-28 15:11:25'),
(36, 2, 'Sorry! your image with ID #16  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 20:05:25'),
(37, 2, 'Your image with ID #14 Has been approved and is ready to be sold', '2017-03-25 20:05:29'),
(38, 2, 'Your image with ID #15 Has been approved and is ready to be sold', '2017-03-25 20:05:33'),
(39, 2, 'Sorry! your image with ID #17  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 20:09:42'),
(40, 2, 'Sorry! your image with ID #18  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 20:11:04'),
(41, 2, 'Sorry! your image with ID #19  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 21:47:22'),
(42, 2, 'Sorry! your image with ID #20  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 21:51:49'),
(43, 2, 'Sorry! your image with ID #21  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-25 21:53:15'),
(48, 1, 'Sorry! your image with ID #25  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-28 15:14:07'),
(49, 1, 'Sorry! your image with ID #26  didnot fullfill the conditions of our company..Your image has been rejected', '2017-03-28 15:16:52'),
(57, 1, 'Sorry! your image with ID #33  didnot fullfill the conditions of our company..Your image has been rejected', '2017-04-02 00:13:02'),
(58, 1, 'Sorry! your image with ID #34  didnot fullfill the conditions of our company..Your image has been rejected', '2017-04-02 00:16:08'),
(59, 1, 'Sorry! your image with ID #35  didnot fullfill the conditions of our company..Your image has been rejected', '2017-04-02 00:16:42'),
(60, 1, 'Sorry! your image with ID #36  didnot fullfill the conditions of our company..Your image has been rejected', '2017-04-02 00:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_confirm`
--

CREATE TABLE `user_confirm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `id_key` varchar(128) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `join_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_confirm`
--

INSERT INTO `user_confirm` (`id`, `user_id`, `uname`, `id_key`, `email`, `join_time`) VALUES
(44, 20, 'laji777', '6a8317cb8a59b4eeb6af0369af7bc94d', 'lajivarghese108@gmail.com', '2017-03-31 23:22:21'),
(13, 19, 'rupesh225', 'c883573b860bde8fc8b4ae8e325bb753', 'rupeshshetty243@gmail.com', '2017-02-14 12:25:49'),
(33, 7, 'amith222', 'cec4099a101647e2006763f7adba9280', 'amithmithu@gmail.com', '2017-03-24 22:48:41'),
(24, 1, 'sharath146', '9e8c98067483af24cad7b501bb4b7162', 'sharathrj143@gmail.com', '2017-03-11 00:02:18'),
(32, 6, 'sharath122', 'a7bb593a0c52729b858e9a5d2662203a', 'sharathrj3@gmail.com', '2017-03-24 22:23:46'),
(34, 8, 'anusha143', '4fcf41ee07fbcdf43836eabc045a10a0', 'anushpj95@gmail.com', '2017-03-24 22:52:12'),
(35, 9, 'puneeth123', '4a9adfaaafebb2d3e5ae3df1e0ae679b', 'puneeth.rai@gmail.com', '2017-03-24 22:53:14'),
(36, 10, 'jijo267', '5c2a7eb1bde4c9e8c2e8e74b7a43c76d', 'jijo@gmail.com', '2017-03-24 22:54:37'),
(37, 11, 'abinlol', '6e56f097ba6088f789604b6997cfbf63', 'abinsebastian@gmail.com', '2017-03-24 22:55:40'),
(45, 21, 'Blessy', '263a771ef564ca8bb6a8b2518920c736', 'blessyabraham199@gmail.com', '2017-04-01 22:41:15'),
(39, 13, 'sajuzachu', '92ac271345466e0837bc907fa6d69c44', 'sajuzacharias@gmail.com', '2017-03-24 22:57:35'),
(40, 14, 'Vineesh', '74d11481670ee6ff14263bf346bd5f2d', 'vineesh.pj@gmail.com', '2017-03-24 23:03:11'),
(41, 15, 'noel259', 'cc46909af69ee4daec21352ba94c68c1', 'regon259@gmail.com', '2017-03-25 10:34:33'),
(42, 16, 'Gana567', '0509afae8bfd77c5aa1e5f586970c0aa', 'ganavichandrasheka10r@gmail.com', '2017-03-25 10:45:56'),
(43, 18, 'Nishitha222', 'ad99dd4be0df29356d0ce4ac8a816852', 'nishithanadumutlu21@gmail.com', '2017-03-25 10:59:40'),
(46, 22, 'Naufal555', '2315493cb1c2ffb9f175a5f7d9e297a7', 'naufal555@gmail.com', '2017-04-01 22:48:32'),
(47, 23, 'Mohakmr', 'e2d6dda7c1591de0617ce21820b1dd4c', 'mohakmr@gmail.com', '2017-04-01 22:51:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `image_less`
--
ALTER TABLE `image_less`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `img_path` (`img_path`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`search_id`),
  ADD UNIQUE KEY `search_id` (`search_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- Indexes for table `userbank`
--
ALTER TABLE `userbank`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `accountno` (`accountno`);

--
-- Indexes for table `usernotify`
--
ALTER TABLE `usernotify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_confirm`
--
ALTER TABLE `user_confirm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `image_less`
--
ALTER TABLE `image_less`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `usernotify`
--
ALTER TABLE `usernotify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `user_confirm`
--
ALTER TABLE `user_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
