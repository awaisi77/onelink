-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2021 at 10:12 PM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartnkart_astra_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Astra Link', 'admin@gmail.com', '0423 5239025', 0, '1631682091final logo-01.jpg', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 1, 'rR8udOTYLdkjseE3zh5EdRa7GJvrOHgj3E5aate6bLi330mwROJhzzxVMEyf', '2018-02-28 23:27:08', '2021-09-15 04:01:31', 'Astra Link Industries'),
(8, 'shadab', 'mirzashahryarbaig@gmail.com', '03324740308', 16, '160250497865a45a0b5b2a60e402bbf764d20a3856 - Copy.png', '$2y$10$w9cLxHQcUs9mwmzlVbjA1eBovYL1JdDbdGGs9lx2ojSjGG9VX32Ia', 1, NULL, '2020-10-12 11:16:18', '2021-06-21 07:45:21', NULL),
(11, 'Sajjad MILICK OTC', 'test@otc.com', '03324740308', 21, '1604308078images.jpg', '$2y$10$l19ElcFIriDTc3IE53NRjeNVOZa6ZNaj3BqoGpTlDKAI9NF3OrJ7C', 1, 'bbNdEGacVYYGOjIxsvA0zu8Ox7Pnbv3aGNzDljeK80Uy0Gd8rJllwGB6XG1q', '2020-11-02 09:07:58', '2020-11-02 09:07:58', NULL),
(12, 'Shahryar', 'shahryar@activehousetech.com', '03324740308', 0, '1604989135Actibe-House-700x700-Only-Icon.png', '$2y$10$qBeCjhsJGmnpODXLG/cjruAuMbbCkrFKmZ1Sypg8lERa4ln8YYw5.', 1, 'nsLDduyZQOjopa7DFtUQNyTVrL0m6vVgIYsKHdD20sU1AqGyIQAjFgOUzSRI', NULL, '2021-03-12 08:21:13', '1 Link Industry');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'verify Request', 35, 'Submit photo', '2020-10-11 11:20:06', '2020-10-11 11:20:06', NULL, NULL),
(2, 'verify Request', 13, 'sadasasasasas', '2020-10-12 10:34:07', '2020-10-12 10:34:07', 'Ticket', NULL),
(4, 'complain', 50, 'hi', '2021-04-06 10:09:23', '2021-04-06 10:09:23', 'Ticket', NULL),
(5, 'query', 50, 'i have a query', '2021-04-08 10:10:27', '2021-04-08 10:10:27', 'Ticket', NULL),
(6, 'complain', 50, 'message', '2021-04-08 10:11:43', '2021-04-08 10:11:43', 'Dispute', '1234'),
(7, 'Refund', 61, '??', '2021-06-30 05:13:50', '2021-06-30 05:13:50', 'Ticket', NULL),
(8, 'Test', 61, 'Test message', '2021-07-06 04:48:07', '2021-07-06 04:48:07', 'Dispute', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Submit photo', NULL, '2020-10-11 11:20:06', '2020-10-11 11:20:06'),
(2, 2, 'sadasasasasas', 13, '2020-10-12 10:34:07', '2020-10-12 10:34:07'),
(4, 2, 'kjsadsaldkla', NULL, '2020-10-12 10:35:50', '2020-10-12 10:35:50'),
(6, 4, 'hi', 50, '2021-04-06 10:09:23', '2021-04-06 10:09:23'),
(7, 4, 'hello', NULL, '2021-04-06 10:09:48', '2021-04-06 10:09:48'),
(8, 5, 'i have a query', 50, '2021-04-08 10:10:27', '2021-04-08 10:10:27'),
(9, 6, 'message', 50, '2021-04-08 10:11:43', '2021-04-08 10:11:43'),
(10, 7, '??', 61, '2021-06-30 05:13:50', '2021-06-30 05:13:50'),
(11, 7, 'what do thy want?', NULL, '2021-06-30 05:16:33', '2021-06-30 05:16:33'),
(12, 8, 'Test message', 61, '2021-07-06 04:48:07', '2021-07-06 04:48:07'),
(13, 8, 'test reply to disputes', NULL, '2021-07-06 04:48:43', '2021-07-06 04:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39'),
(34, 15, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2020-09-11 09:31:48', '2020-09-11 09:34:44'),
(35, 20, 'App\\Models\\Category', 'Seals', 'seals', 0, 1, '2021-04-07 09:31:13', '2021-04-07 09:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(265, 34, 'A', '2020-11-04 10:39:37', '2020-11-04 10:39:37'),
(266, 34, 'b', '2020-11-04 10:39:37', '2020-11-04 10:39:37'),
(267, 34, 'c', '2020-11-04 10:39:37', '2020-11-04 10:39:37'),
(268, 34, 'd', '2020-11-04 10:39:37', '2020-11-04 10:39:37'),
(269, 35, 'nemo pump', '2021-04-07 09:31:13', '2021-04-07 09:31:13'),
(270, 35, 'Lbo', '2021-04-07 09:31:13', '2021-04-07 09:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1593589100560x230GPI.png', 'https://www.google.com/', 'TopSmall'),
(2, '1593589084560x230.png', NULL, 'TopSmall'),
(3, '1593589127Ads-1140x404.png', 'https://www.google.com/', 'Large'),
(4, '1594197368800x6002.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1594197311800x600.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1594197285800x6003.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(24, 3, 'How to design Good Pump', '<div align=\"justify\"><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600;\">NETZSCH – Experts in Pump Solutions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">For more than 60 years, NETZSCH has manufactured positive displacement pumps worldwide. Designed specifically for difficult pumping situations, NETZSCH pumps range in size from the industry’s smallest metering pumps to high volume pumps for applications in the oil and gas or mining industries.&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">With a production of over 50,000 pumps per year NETZSCH underlines the technology and market leadership, which it has gained thanks to the quality of the pumps and spare parts. It is guaranteed by the core competence and vertical manufacturing which we have built up over the many decades. With the worldwide implementation of common standards in accordance with DIN EN ISO 9001 in development and research the company guarantees the highest quality at each of the five production sites.</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">NETZSCH has been supplying worldwide NEMO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">progressing cavity pumps, TORNADO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">rotary lobe pumps, NOTOS multi screw pumps, macerators/grinders, dosing technology and equipment for custom built and challenging solutions for every applications.</span></p><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600;\">NETZSCH – Experts in Pump Solutions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">For more than 60 years, NETZSCH has manufactured positive displacement pumps worldwide. Designed specifically for difficult pumping situations, NETZSCH pumps range in size from the industry’s smallest metering pumps to high volume pumps for applications in the oil and gas or mining industries.&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">With a production of over 50,000 pumps per year NETZSCH underlines the technology and market leadership, which it has gained thanks to the quality of the pumps and spare parts. It is guaranteed by the core competence and vertical manufacturing which we have built up over the many decades. With the worldwide implementation of common standards in accordance with DIN EN ISO 9001 in development and research the company guarantees the highest quality at each of the five production sites.</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">NETZSCH has been supplying worldwide NEMO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">progressing cavity pumps, TORNADO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">rotary lobe pumps, NOTOS multi screw pumps, macerators/grinders, dosing technology and equipment for custom built and challenging solutions for every applications.</span></p>', '1604482887policy_1562181629435.jpg', 'https://www.newfoodmagazine.com/company_profile/40303/netzsch-pumpen-systeme-gmbh/', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(25, 3, 'How to design effective arts?', '<div align=\"justify\"><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600;\">NETZSCH – Experts in Pump Solutions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">For more than 60 years, NETZSCH has manufactured positive displacement pumps worldwide. Designed specifically for difficult pumping situations, NETZSCH pumps range in size from the industry’s smallest metering pumps to high volume pumps for applications in the oil and gas or mining industries.&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">With a production of over 50,000 pumps per year NETZSCH underlines the technology and market leadership, which it has gained thanks to the quality of the pumps and spare parts. It is guaranteed by the core competence and vertical manufacturing which we have built up over the many decades. With the worldwide implementation of common standards in accordance with DIN EN ISO 9001 in development and research the company guarantees the highest quality at each of the five production sites.</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51); text-align: start;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">NETZSCH has been supplying worldwide NEMO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">progressing cavity pumps, TORNADO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">rotary lobe pumps, NOTOS multi screw pumps, macerators/grinders, dosing technology and equipment for custom built and challenging solutions for every applications.</span></p><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">M<span style=\"font-style: inherit; color: rgb(51, 51, 51); font-family: muli, Arial; text-align: left; margin: 0px; padding: 0px; font-weight: 600;\">NETZSCH – Experts in Pump Solutions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-style: inherit; font-weight: inherit; color: rgb(51, 51, 51); font-family: muli, Arial; text-align: left;\">&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">For more than 60 years, NETZSCH has manufactured positive displacement pumps worldwide. Designed specifically for difficult pumping situations, NETZSCH pumps range in size from the industry’s smallest metering pumps to high volume pumps for applications in the oil and gas or mining industries.&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">With a production of over 50,000 pumps per year NETZSCH underlines the technology and market leadership, which it has gained thanks to the quality of the pumps and spare parts. It is guaranteed by the core competence and vertical manufacturing which we have built up over the many decades. With the worldwide implementation of common standards in accordance with DIN EN ISO 9001 in development and research the company guarantees the highest quality at each of the five production sites.</span></p><p align=\"justify\"><span style=\"color: rgb(51, 51, 51); font-family: muli, Arial; font-weight: inherit; text-align: left; margin: 0px; padding: 0px; font-style: inherit;\">NETZSCH has been supplying worldwide NEMO</span><span style=\"color: rgb(51, 51, 51); font-family: muli, Arial; font-weight: inherit; text-align: left; margin: 0px; padding: 0px; font-style: inherit;\">®&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: muli, Arial; font-weight: inherit; text-align: left; margin: 0px; padding: 0px; font-style: inherit;\">progressing cavity pumps, TORNADO</span><span style=\"color: rgb(51, 51, 51); font-family: muli, Arial; font-weight: inherit; text-align: left; margin: 0px; padding: 0px; font-style: inherit;\">®&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: muli, Arial; font-weight: inherit; text-align: left; margin: 0px; padding: 0px; font-style: inherit;\">rotary lobe pumps, NOTOS multi screw pumps, macerators/grinders, dosing technology and equipment for custom built and challenging solutions for ever</span></p>', '1604482864pexels-photo-247763.jpeg', 'https://www.newfoodmagazine.com/company_profile/40303/netzsch-pumpen-systeme-gmbh/', 63, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(26, 6, 'Netzch Pump', '<p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600;\">NETZSCH – Experts in Pump Solutions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">For more than 60 years, NETZSCH has manufactured positive displacement pumps worldwide. Designed specifically for difficult pumping situations, NETZSCH pumps range in size from the industry’s smallest metering pumps to high volume pumps for applications in the oil and gas or mining industries.&nbsp;</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">With a production of over 50,000 pumps per year NETZSCH underlines the technology and market leadership, which it has gained thanks to the quality of the pumps and spare parts. It is guaranteed by the core competence and vertical manufacturing which we have built up over the many decades. With the worldwide implementation of common standards in accordance with DIN EN ISO 9001 in development and research the company guarantees the highest quality at each of the five production sites.</span></p><p style=\"margin: 1.2em 0px; padding: 0px; font-size: 1.6em; line-height: 28px; font-family: muli, Arial; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">NETZSCH has been supplying worldwide NEMO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">progressing cavity pumps, TORNADO</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">®&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-weight: inherit;\">rotary lobe pumps, NOTOS multi screw pumps, macerators/grinders, dosing technology and equipment for custom built and challenging solutions for every applications.</span></p>', '1599039039csm_Produktgruppe_Industrie_Hygiene-webdaten_70cced615d.jpg', 'https://www.netzsch.com/en/', 28, 1, NULL, NULL, NULL, '2020-09-02 08:30:39'),
(27, 2, 'oil refinery', '<b><i>asd</i></b>', '1617880756WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg', 'youtube', 15, 1, 'oil', 'oil', 'oil', '2021-04-08 10:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology'),
(9, 'machines', 'machines'),
(10, 'Blog Test', 'BT');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(1, 'DETECTION - MEASUREMENT', 'Detection-Measurment', 1, '1595233985DETECTION---MEASUREMENT.png', 1, NULL),
(2, 'METROLOGY - LABORATORY', 'Laboratory', 1, '1595234538METROLOGY---LABORATORY.png', 1, NULL),
(3, 'ROBOTICS - AUTOMATION - INDUSTRIAL IT', 'Rebotic', 1, '1595234650ROBOTICS---AUTOMATION---INDUSTRIAL-IT.png', 1, NULL),
(4, 'ELECTRICITY - ELECTRONICS', 'Measuring-and-Leveling', 1, '1595234843ELECTRICITY---ELECTRONICS.jpg', 1, NULL),
(5, 'POWER TRANSMISSION - MECHANICAL COMPONENTS', 'PowerTransmission', 1, '1595235272POWER-TRANSMISSION---MECHANICAL-COMPONENTS.jpg', 1, NULL),
(6, 'HYDRAULICS - PNEUMATICS', 'HydraulicsPneumatic', 1, '1595235502HYDRAULICS---PNEUMATICS.jpg', 0, NULL),
(7, 'MATERIALS - TOOLS - COMPONENTS', 'Tools-Components', 1, '1595235749MATERIALS---TOOLS---COMPONENTS.jpg', 1, NULL),
(8, 'SUBCONTRACTING AND SERVICES', 'Subcontracting-and-services', 1, '1595236025SUBCONTRACTING-AND-SERVICES.jpg', 1, NULL),
(9, 'MACHINE-TOOLS', 'Machine-Tools', 1, '1595236676MACHINE-TOOLS.jpg', 1, NULL),
(10, 'PRODUCTION MACHINES', 'Production-Machine', 1, '1595236898PRODUCTION-MACHINES.jpg', 1, NULL),
(11, 'INDUSTRIAL MACHINES AND EQUIPMENT', 'Industrial-Machines-and-Equipment', 1, '1595237045INDUSTRIAL-MACHINES-AND-EQUIPMENT.jpg', 1, NULL),
(12, 'FOOD INDUSTRY', 'Food-Industry', 1, '1595237164FOOD-INDUSTRY.jpg', 1, NULL),
(13, 'PACKING - HANDLING - LOGISTICS', 'Packing-Handling-Logistics', 1, '1595237319PACKING---HANDLING---LOGISTICS.jpg', 1, NULL),
(14, 'ENVIRONMENT - HEALTH - SAFETY', 'Environment-Health-Safety', 1, '1595237490ENVIRONMENT---HEALTH---SAFETY.jpg', 1, NULL),
(15, 'BUILDING - CONSTRUCTION', 'Building-Construction', 1, '1595237583BUILDING---CONSTRUCTION.jpg', 1, NULL),
(18, 'Electrical', 'Switchgear-Components', 1, NULL, 0, NULL),
(20, 'Mechenical', 'Pumps', 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 72, 'sublevel', 'sublevel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 35, 212, 'fzfdsf', '2020-10-11 12:32:22', '2020-10-11 12:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_details_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `suffix`, `title`, `phone`, `fax_number`, `email`, `vendor_details_id`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Awais Ullah', 'Mr', 'Engineer', '03225460430', '12345', 'awais.awaisullah@outlook.com', 2, '2021-09-13 00:13:02', '2021-09-13 00:13:02'),
(2, 'Muhammad Awais Ullah', 'Mr', 'Engineer Test', '032254610430', '12345', 'awais.awaisullah@outlook.com', 3, '2021-09-13 01:01:55', '2021-09-13 01:01:55'),
(3, 'Muhammad Awais Ullah', 'Mr', 'Engineer Test', '03225460430', '12345', 'awais.awaisullah@outlook.com', 3, '2021-09-13 01:09:05', '2021-09-13 01:09:05'),
(4, 'Muhammad Awais Ullah', 'Mrd', 'Senior Engineer', '03225460430', '12345', 'awais.awaisullah@outlook.com', 4, '2021-09-13 01:24:29', '2021-09-13 01:24:29'),
(5, 'Muhammad Awais Ullah', 'Mr', 'Engineer', '03225460430', '123456', 'awais.awaisullah@outlook.com', 5, '2021-09-12 18:17:22', '2021-09-12 18:17:22'),
(6, 'Ali', 'Mr', 'Senior Engineer', '10900990', '12345', 'test@gmail.com', 6, '2021-09-12 18:36:16', '2021-09-12 18:36:16'),
(7, 'Sarkar Raj', 'Mr', 'Owner', '123123', 'N/A', 'sarkarraj@test.com', 7, '2021-09-15 05:29:57', '2021-09-15 05:29:57'),
(8, 'ABC', 'Mr', 'Manager', '123789456', 'na', 'abcassociates@test.com', 8, '2021-09-15 07:36:04', '2021-09-15 07:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 0, 0, NULL),
(3, 'browser', 'Windows 10', 1008, 0, NULL),
(4, 'browser', 'Linux', 4743, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 1858, 0, NULL),
(6, 'browser', 'Windows 7', 544, 0, NULL),
(8, 'browser', 'Windows 8.1', 143, 0, NULL),
(9, 'referral', 'www.google.com', 65, 0, NULL),
(10, 'browser', 'Android', 326, 0, NULL),
(11, 'browser', 'Mac OS X', 275, 0, NULL),
(14, 'browser', 'Windows XP', 123, 0, NULL),
(15, 'browser', 'Windows 8', 107, 0, NULL),
(16, 'browser', 'iPad', 57, 0, NULL),
(17, 'browser', 'Ubuntu', 426, 0, NULL),
(18, 'browser', 'iPhone', 16, 0, NULL),
(20, 'referral', 'www.bing.com', 3, 0, NULL),
(21, 'browser', 'Windows Vista', 16, 0, NULL),
(22, 'browser', 'Windows 2000', 2, 0, NULL),
(23, 'referral', '1LINKINDUSTRY.COM', 96, 0, NULL),
(24, 'referral', 'brandnewblogs.com', 2, 0, NULL),
(25, 'referral', 'www.netcraft.com', 8, 0, NULL),
(26, 'referral', 'search.yahoo.com', 1, 0, NULL),
(27, 'referral', 'baidu.com', 14, 0, NULL),
(28, 'referral', 'www.laureldaniell.online', 2, 0, NULL),
(29, 'referral', 'downloadgalaxy.eu', 4, 0, NULL),
(30, 'referral', 'www.1linkindustry.com', 6, 0, NULL),
(31, 'referral', NULL, 52, 0, NULL),
(32, 'referral', 'gojaspers.com', 1, 0, NULL),
(33, 'referral', 'simplesite.com', 5, 0, NULL),
(34, 'referral', 'mydreamdl.me', 4, 0, NULL),
(35, 'referral', 'wdlu.kulekan.net', 1, 0, NULL),
(36, 'referral', 'rlbvk.kulekan.net', 1, 0, NULL),
(37, 'referral', 'google.com', 2, 0, NULL),
(38, 'referral', 'www.google.com.hk', 31, 0, NULL),
(39, 'referral', 'yijhj.susannahome.top', 1, 0, NULL),
(40, 'referral', 'rushs.org', 1, 0, NULL),
(41, 'referral', 'downloadprotorrents.info', 1, 0, NULL),
(42, 'referral', 'mp3galaxy.art', 1, 0, NULL),
(43, 'referral', 'joyofmusic.wtf', 1, 0, NULL),
(44, 'referral', 'www.yahoo.com', 1, 0, NULL),
(45, 'referral', 'www.1NEXTSTEP.com', 1, 0, NULL),
(46, 'referral', 'www.dareboost.com', 4, 0, NULL),
(47, 'referral', 'www.google.com.pk', 1, 0, NULL),
(48, 'referral', '213.175.200.188', 1, 0, NULL),
(49, 'referral', 'xnxx.com', 2, 0, NULL),
(50, 'referral', 'bit.ly', 1, 0, NULL),
(51, 'referral', 'www.google.com.au', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26'),
(7, 'welcome30', 1, 5, '5', 0, 1, '2021-04-08', '2021-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(11, 'PKR', 'Rs', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `currency`, `currency_code`, `amount`, `currency_value`, `method`, `txnid`, `flutter_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 0x5273, 'PKR', 2596, 1, 'Stripe', 'txn_1Hb2ZkJlIV5dN9n7hj877szL', NULL, 1, '2020-10-11 10:18:51', '2020-10-11 10:18:51'),
(2, 36, 0x5273, 'PKR', 10000, 1, 'Stripe', 'txn_1HbPBGJlIV5dN9n7Ea7FlgLC', NULL, 1, '2020-10-12 10:27:06', '2020-10-12 10:27:06'),
(3, 37, 0x5273, 'PKR', 900000, 1, 'Stripe', 'txn_1HbjYoJlIV5dN9n7aUq1jvNf', NULL, 1, '2020-10-13 08:12:45', '2020-10-13 08:12:45'),
(4, 50, 0x5273, 'PKR', 100000, 1, 'Stripe', 'txn_1IfIwyJlIV5dN9n7xRLw8VZm', NULL, 1, '2021-04-12 05:08:43', '2021-04-12 05:08:43'),
(5, 51, 0x5273, 'PKR', 20000, 1, 'Stripe', 'txn_1IfhpoJlIV5dN9n7L8KP2BeQ', NULL, 1, '2021-04-13 07:43:00', '2021-04-13 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To 1 Link Industries', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your ID COPY.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>RS {deposit_amount} has been deposited in your account. Your current balance is RS {wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `featured_banners`
--

CREATE TABLE `featured_banners` (
  `id` int(191) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_banners`
--

INSERT INTO `featured_banners` (`id`, `link`, `photo`) VALUES
(6, 'https://www.google.com/', '1593614977600x6004.jpg'),
(7, 'https://www.google.com/', '1593614865600x6003.jpg'),
(8, 'https://www.google.com/', '1593614460600x6002.jpg'),
(11, 'google.com', '1618226342WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `featured_links`
--

CREATE TABLE `featured_links` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_links`
--

INSERT INTO `featured_links` (`id`, `name`, `link`, `photo`) VALUES
(12, 'GADGET 1', 'https://www.google.com/', '1571287354flink.png'),
(13, 'GADGET 2', 'https://www.google.com/', '1571287366flink.png'),
(14, 'GADGET 3', 'https://www.google.com/', '1571287383flink.png'),
(15, 'GADGET 4', 'https://www.google.com/', '1571287404flink.png'),
(16, 'GADGET 5', 'https://www.google.com/', '1571287415flink.png'),
(17, 'GADGET 6', 'https://www.google.com/', '1571287427flink.png'),
(18, 'GADGET 7', 'https://www.google.com/', '1571287439flink.png'),
(19, 'GADGET 8', 'https://www.google.com/', '1571287453flink.png'),
(20, 'GADGET 9', 'https://www.google.com/', '1571287481flink.png'),
(21, 'Pumping categories', 'https://www.netzsch.com/en/', '1571287511flink.png'),
(22, 'bestseller', 'google.com', '1618226252WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(201, 213, '16044848924515759-11.webp'),
(202, 213, '1604484892Hb2b1661123ec4108862090c4c73b3ed7p.jpg_.webp'),
(203, 213, '1604484892Ideal-Industries-BigKahuna_cable-saw.jpg'),
(204, 213, '1604484892images (1).jpg'),
(205, 220, '1604990105images (2).jpg'),
(206, 220, '1604990106pexels-photo-247763.jpeg'),
(207, 220, '1604990106policy_1562181629435.jpg'),
(208, 220, '1604990106vogelsang-pump-open-1.jpg'),
(210, 231, '16238344191a9170ff0c25711af89f9750f8f72726.jpg'),
(212, 231, '1623835403xyAL35s7.jpg'),
(213, 233, '1631089857WhatsApp Image 2021-08-26 at 00.42.02.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_client_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sandbox_check` tinyint(2) DEFAULT 2,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_authorize` tinyint(4) NOT NULL,
  `authorize_login_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_txn_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_mode` enum('PRODUCTION','SANDBOX') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mercado` tinyint(4) NOT NULL,
  `mercado_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercado_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `is_buy_now` tinyint(4) NOT NULL,
  `is_flutter` tinyint(4) NOT NULL DEFAULT 1,
  `flutter_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_twocheckout` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_private_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_seller_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_store_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_store_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_voguepay` tinyint(1) NOT NULL DEFAULT 1,
  `vougepay_merchant_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vougepay_developer_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voguepay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `mail_engine`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_client_id`, `paypal_client_secret`, `paypal_sandbox_check`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `is_authorize`, `authorize_login_id`, `authorize_txn_key`, `authorize_text`, `authorize_mode`, `is_mercado`, `mercado_token`, `mercado_text`, `mercadopago_sandbox_check`, `is_buy_now`, `is_flutter`, `flutter_public_key`, `flutter_text`, `flutter_secret`, `is_twocheckout`, `twocheckout_private_key`, `twocheckout_seller_id`, `twocheckout_public_key`, `twocheckout_sandbox_check`, `twocheckout_text`, `is_ssl`, `ssl_sandbox_check`, `ssl_store_id`, `ssl_store_password`, `ssl_text`, `is_voguepay`, `vougepay_merchant_id`, `vougepay_developer_code`, `voguepay_text`, `version`, `affilate_product`) VALUES
(1, '1631531700Astra Link Logo.png', '1631697981final logo-01.jpg', '1Link', 'Info@example.com', '0123 456789', 'From small IT venture of five skilled IT entrepreneur’s, Active house tech Software House has become a full-service software house which attracts small and medium businesses, internet users and those who seek to harness the power of web application in their businesses. At Active house', 'COPYRIGHT © 2019. All Rights Reserved By Activehousetech.com', '#f1f115', '1631774745final logo animation (1).gif', '1631774755final logo animation (1).gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'smtp', 'smtp.gmail.com', '587', 'order.lovecurry@gmail.com', 'vkqaswehfcxgbgof', 'order.lovecurry@gmail.com', '1 Link Industry', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '1605693476Siemens Plc.jpg', 'Already Added To Cart', 0, 0, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 1, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 1, '1566878455404.png', 1, 'NEWSLETTER', NULL, '1593778156newletter.jpg', '1631531711Astra Link Logo.png', '160242080696335789-call-center-operators-female-avatar-icons.jpg', '#4e5dcc', 0, 1, 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 0, '15935909262.png', 'tls', '#', '#', '#', 'Retail', 0, 'Pay via your Paytm account.', 'sandbox', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 0, '76zu9VgUSxrJ', '2Vj62a6skSrP5U3X', 'Pay Via Authorize.Net', 'SANDBOX', 0, 'TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156', 'Pay Via MarcadoPago', 1, 1, 0, 'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X', 'Pay via your Flutter Wave account.', 'FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X', 0, '9668BB2D-C246-4175-8F5B-CB72F655097B', '901417869', '2C2879C4-9F81-47D5-89F3-863F4CF0E7A3', 0, 'Pay Via 2Checkout', 0, 1, 'geniu5e1b00621f81e', 'geniu5e1b00621f81e@ssl', 'Pay Via SSLCommerz', 0, 'demo', '5a61be72ab323', 'Pay Via Voguepay', '4.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(11, 1, 'English', '1579775344B7uQhhvr.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_14_200250_create_users_table', 1),
(2, '2014_10_26_162751_create_password_resets_table', 1),
(3, '2021_09_05_123302_create_vendor_details_table', 2),
(4, '2021_09_07_174524_create_contacts_table', 2),
(5, '2021_09_07_180655_create_vendor_documents_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(68, 27, NULL, NULL, NULL, NULL, 1, '2021-06-22 08:30:28', '2021-06-23 04:48:20'),
(69, 28, NULL, NULL, NULL, NULL, 1, '2021-06-23 04:02:41', '2021-06-23 04:48:20'),
(70, 29, NULL, NULL, NULL, NULL, 1, '2021-06-23 04:47:52', '2021-06-23 04:48:20'),
(77, 30, NULL, NULL, NULL, NULL, 1, '2021-09-15 04:19:34', '2021-09-15 05:43:11'),
(82, NULL, 76, NULL, NULL, NULL, 1, '2021-09-15 07:18:52', '2021-09-16 04:17:23'),
(83, NULL, 77, NULL, NULL, NULL, 1, '2021-09-16 09:25:46', '2021-09-17 03:19:37'),
(84, NULL, 78, NULL, NULL, NULL, 1, '2021-09-16 09:32:44', '2021-09-17 03:19:37'),
(85, NULL, 79, NULL, NULL, NULL, 1, '2021-09-16 16:49:20', '2021-09-17 03:19:37'),
(86, NULL, 82, NULL, NULL, NULL, 0, '2021-09-17 08:42:07', '2021-09-17 08:42:07'),
(87, NULL, 83, NULL, NULL, NULL, 0, '2021-09-17 16:22:44', '2021-09-17 16:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery','withheld') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`) VALUES
(3, 31, 'BZh91AY&SYf½,\0¸ß@\0Pø+ô¿ÿÿúP¨ºÉh\0B\0\0\0\r\0\0\0\0	$Â%\ZL\0\0\0¢b`(Tõ\0Ò\r4\0\0\0\0@\0\0\0D@Ma)íSIú¦fOPÉ¥\" :ÍPIgP¾<q==Ï_[ ¨Ék#öþ]ÖH?ÐÉÿÈµ`6­UÍ½\ZW«B\'\Zq)eðÆ\Z6ãPQËccU+p9Ôlg.;Ì¹RüÊóÐ èho7Pê¾ÜcÕH Ò Oh(Ó)ÌÀû\r!\Z&M&ãX)%(\n,ea¡¨»ÐÂ$\nµÛGmDÆ Ít×Mp5&dáÀãÐ3Ë»Õ\"30¤RÐZÌ×íW722ÃVÃÆPÍ  Ð¡B\\\n,HjIQA£N°¤õM{Fkbpæ(1w»TÜ%B²Ô*,!Âfó\"¬:!¤uuUJTîÍGèýÃyªJP¸à<áVaPèæÉFvkRA;1ÒR	`6$Ú@Øøwð8Ó|¤, @|3|â²Ô©Z-*>Rrµ³cY2Öðjk¶\ZRM-iPTÒå\n2Ì§W6Æ(nÎs\ZêQM)uºC2X};ó8\0ÔÂ£IØ!AùnÎZÞ-¤d7ÝÙ*ûÅUªAkÆáC÷6 Ï¼ýH2íESâçò?\'$s:/¾¥¨êmàÅ¯	`¡økA\rMBæH1 4~Õ:#AÝ`ÑCbØ=Ì`8Tó7Ëm´`eVÆ.Aý>ã\'Ã;»øô£.´V\nØTm«¶W?sÿ\ZfE$ÈàÄêBZîIt\\î=Ã8GåS^4Üîo1×ô÷\ZÑ®Fí;p ñ#Ê\n8;\Zc¯¨¶Ü½ªöÎhc>yìOQrè`¾¡$ª5:Kèús	âúVFÏÆ-È>¬ð_açØcGqIZÖÂ¡j¢$®¤ó¨Ê¬* ý@Â¤©Ë8(¿Ùcø$.KØR8«Àaü/âñè¡¦^ Ã®Å=V\ZÔ÷$Éø\rkíÊ=p<¥êvGòv ;¶ àg5E\Z7Ù<Û\'8B=áFVÉ\Zdd(;+$vó\rÇÃÔò\\w(óCÍ°K3a\r(ÐRK2q2ykÒ^IvWÄµÄ  £BBë¾ÙÕÀU¼FÚMÌaHBFMdqR@¼5DT¨YkîGÍûÆÆ3¸ó]¢¢®dÿCéà@!\\ñk¸ÂyÛ=$mÊrxþ÷ò#ACXÿÅÜN$¯DK\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 105010, NULL, NULL, 'gBQC1599120302', 'Completed', 'kohat@gmail.com', 'kohat', 'Pakistan', '03324740308', 'kohat pakistan', 'islamabad', '64000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2020-09-03 07:05:02', '2021-03-30 10:40:00', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(4, 31, 'BZh91AY&SY³~Cé\0³ß@\0Pø+ô¿ÿÿúP¼df#Ð)È!(=M¨õ2¡\0\0\0\r¤a\Z\0\0\0\04\0jiOQÐFC&##i4b0À\0\0\0h\0\0\0\0H ¤ÄÓML¦ÔòLOP\r£RBÂC Ü	\'q>ÄñaÜ©ggðííÌÒd`Kf¡!ÇÖVn,£ô%¿wNÖ(6²4(ÉLÞÔ$[9¡VB×ÑfIw¬üPÊTSm4­\r\n®ºC°Íz²1/Rûî¼ ÀÞ|	Ø¹®öC÷å¼K0iBBð¬iÖ+Ò\0c°14¯ïEV¤\n¥ÆZ.\ZF\"åÇ Ó áD\"ÀPf+;ÎäJ)dTf7\Zl\rffm%¢¥(&ÐIÄ«È¸P¨Õnæoq$`P¡.IK$<I *(1²vBÙ;E2¸;½Ô¹tfÔ°:2U\ZÐÉQYìî$\\(¨Ö\n5T²D1(èûÁè&t÷àEPÕ\0ìe\nÕÁIr¢BX!¸Å  À¾ ¹Ðdf½¿Y¯-» @6	CEnÉ(Î;\ZP¨ÄÍ5ÔUÊ)TÁÜRb(96zARl,VÌbfoY\rBö&Zé½dV,¤\n&}Ó8\r°ß2ºAò¤ö\"O}~$l0üÎu%â­£:UZ¨Á´¼l=M\'úð?â¨ Üy#øô>æGJ7kÎ¥¦c©¦Ð4Ôu:Öc^%CôÙAl\rÌ.dhc4}jhuÅ°è0Im4	Uhb`1jOÉèëw}»¨ÌV\nÁR[\nµqVÊçØú\Z\ZfBdpa9#9]9\nñHÅrÉD©ZÂ¤D7-ó\n%T·t{U±>*I(wÜì0Æ(þbÙØ»óØïÜÜ1½`0g#uà-dÔæ`AÝI*eëtPg±&Ð.&åÄl×ºÙNÎ\'o-\Z\nOBn\ZÙqP½QNkèp)¾Ã,±T(AÌ(RqISjP¢è,@X,Å#bµz¯co´ZpFÄ*(æ2_¤#*)	¤Tv«@D^\ZÂ2@ûÔí 9¶ ÄÏV1;£¶f¦ÚuB!2F9¸i\\ÜA±fÿ§GÅàyIÔ*DÄdPÀY ²aY¬Ôvç¿èJ-µ.\"²ò/cBEÂQB!vtÁrìpo´Ó¹	¤dh c ,de;â¥uø\"¥ÈÉ¯4~¯Ð3 ><LsÐî\\´¢VVQàÞOàzn<IVÃÁ¥5j/aÀðùH_pAááù!6\r% ÔórE8P³~Cé', 'Cash On Delivery', 'shipto', 'Azampur', '1', 56410, NULL, NULL, 'M98j1599814516', 'Pending', 'kohat@gmail.com', 'Saima Iqbal', 'Pakistan', '03218855544', 'Office 19 IT Tower', 'lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'we need urgent delivery', NULL, NULL, 'pending', '2020-09-11 07:55:16', '2020-09-11 07:55:16', NULL, NULL, 'Rs', 1, 10, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(5, 31, 'BZh91AY&SYÕøO8\0·ß@\0Pø+ô¿ÿÿúPÝ5lÚ \0`\0\0\04\0\0\0\0$U?IdÉdÓ!Q$õF4\r©£M Éê\0\0\0\0\r\0\0\0\0	i54ÉDÔÑêi¡£Mj`àÐ÷`®ñöì¾£\'WÜëëÔì\Z-`b?äºÉô2CäEHÖ°\ZÔ«d&ÕàÆG¼Õ6_gÉ\ZXsAF¨Z)\\ iÂ£c7vö¹Rü\nðÄ âfv(ñõ[Ïà% 4!!S×ÓLnyDá$vÁ°ðk®º; ³HªaªH£Rö(\" 6ÅZlË³A0ÀÒi3l¢ÀãÐ3Ë»×¹%UQc*Dí	¬Íll$ÀÊVîføC0Ae\n2äT¹bCBH\nÚu$ªwj¸6\'`Â{µMÂT+(½B¢Éâ&o2*À0C¨¸X\ZGWUPeJàþ$.§xe )áÀLà«1%\\\Z4FÈAÇ5%%mÑ:eC0-(Qm6ñwMºqeGxÆvNTVc¥JÐÛi7TÆÉºfÖÅ$ÂKØÐÒÆl3YubLÜ¦cq±6cÊÆfPg.¶Rñ41%Çë7ÄýË\nXµ¸G9+|¶±¾ãs;eW#ª­T`Ú^6\nCYøö\";QAÈö©ð÷SÕ$p8¯mJ)7ãAÔ×x\Z;½ä%CÝ¥o`hh0A`Ñó©Åë#6\r\rPó2È6Ôï6µÖ2&U©Å¸>ï¨ÉßÂÝû¸ÑY«Hl*6ÕÅ[+Cþ57*4Ì\nIÁèBYêIt\\ê=67Ò¦´Øævrà||Æ ðkCffNÛH;éBO\0fcÅåâ-v/#ÑyK¾ç1µÁç[È[¤ÜxuÐ$F±#Øg|Ña{P¾G%³3+nFo=G1-E$X	kK\nªp¹Â£*²T(Aó(RrISm(Qe©!pº^BÀ´[ÆcU¿¨»¸£i¨0ÈñÔ§ÎÃZd=ÃZynNR´ô9£ìs :¶ ÚcE\Z6Íhí´ÝM°æÀÀÊÂ#<Q¥s¸\r¸Á©ÉÚæñðy®KzB!è,ÌÄ¤@!¥\Z\nQÄ°HÓ´ÁÓN0îKª½¬l!\\%\".È0®N­ät5Îne\Z¨È1<\"¥Öaxh>(©P²0×âû~Ì±°ï\\B¢¢®(ýÇÇy\00po¹§	©z\rv?â6s¼ÿ^]ÈÐPâü]ÉáBCWá<à', 'Cash On Delivery', 'shipto', 'Azampur', '1', 52505, NULL, NULL, 'Vd711599816472', 'Pending', 'kohat@gmail.com', 'Saima Iqbal', 'Pakistan', '03218855544', 'Office 19 IT Tower', 'Lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-11 08:27:52', '2020-09-11 08:27:52', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Other', NULL),
(6, 31, 'BZh91AY&SY\'¬u\0Ä_@\0Pø++ô.¿ÿÿúP,Ë$\ZhÇ0	\0\0\0	\0F\0i 	5&©\0\Z\0&0\0À&\0L\0`\0&\0D\0Ñ¤OJzi=M©êh<§©A!a!ú;\'tú\'ÎóÀC¤ õ(Cpué0H£ªu\n!­eÆ:\'æÌ¼C[48¢ïè££¦1\\¢3-²ªTÛtXòqÈäVJ£è²Ë9¸\ZíOb¹ð$ÐhFcH{c $d~á¬è~f4Lðï;ÈLK4¥áâÁ)EÁP\Zhb¶)ð©*u\nyC*&QQ	\rgÊ¦	`*Dqx»!PB,U^/åÄ-$Ëjñjed¬)\n¼cÆYdBe&;çôe,HTK§{ùlEIµw½p0ÀÆ aKbK(pæd%Þ«H¸kªÄáÃ E*á¦ÂR.¡ÝÂ*æD¬:EBÈéiURe*«q2H_Uýh±þm@­QLbQj)ª`ÀXb µPdd¢qI\"È\n3ÒíIl×$PFkLºv)26VFé5I¦9ÝîõFÜÊícpØ3fÊä¡t`©-G¥ÍÇmóLq½kq²ÆS/iÄ[bE1@}=ð9ÎxQé>ç±O*ÿ&5®Ì§PÞ;Ýq7¿ÉF¨0m(+2Ó\ZÎ£,zèe?¨ÃñGÄT¢Ê\ZRýCð?CÕ/¥23R#ä¼¨MHâlbpU6®@&ÓÀÜXèµ|HÄms­¨eKÍE×G¥\rxì¯AM°.¸6Ìädk+©jC(¸\ZÌÆp=}Ã%ÂÐìíÃí|¢ÝZ«ãÐÔT7\ZfÃbA+\Z~DØ§I	¥\'ît±NqÕªy2ßMA%n[ãü\ZÄ$vµ9ºØâ=$L¡Ú¸¸3pµd»Ï¢îI%Ùc1uÃ:îÊdùz¼ê^AÛIsTieÕ¹ìHâÚ¡ýÎ=í½/fp;½ãØ¢7HI\"ÀN$H,Å6±¯br±ËM%1ÖA¦Et ÜITa0]âØ@¦fòÔ½eØ.£\r2Ô}IõWÔkÄø\rcùo»\r\niûÑêfGhÓlel1ÂM®kP\rÒ¼Ñn±7æ°¯Nf	MÍ2`Ò¸âAèãK{úWs\\Úû| \"ò¥AF \"21A´m!CIBmHÚ`iÉÜ1U{ÊÔÈ`©4^P\\µÁtäà(Ýæt³AQ\rN((ád\Z~ Â`-4X*T,ÁÀTó²öçÌÃGbÍ^\rI** h$óàOÅM\"A5rMðh¬K\Z«G°ÔþwD/a\r¹·¹ ¤¤ä]ÉáB@.±Ô', 'Cash On Delivery', 'shipto', 'Azampur', '1', 682515, NULL, NULL, '8mhs1599823609', 'Pending', 'kohat@gmail.com', 'Kohat', 'Pakistan', '03218855544', 'Office 19 IT Tower', 'Lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-09-11 10:26:49', '2020-09-11 10:26:49', NULL, NULL, 'Rs', 1, 10, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(7, 35, 'BZh91AY&SYVÖÀ\0Å_@\0Pø;/ô.¿ÿÿúP< ,°º\0Ðr$ªdÐh4z\0h\Z\r\0\0SA4D Ð\0\0Ðh\0i \0\"J)\0Ð\0d4\0Ñ \0ÌiL\0`\0\0	L@DÉ´#M(È4\0Ð\Z2~©\nX\ndOFø#©ì@ÆP}0b æg,ÉB!7(/ä=ªÎQõw¡øS\n©Bÿdh£)å­$³ÎmU#1­ZÊã}ÐÎ44+SaÏ¡R¦Ý¶%ðzÔË5¡$$¹$&1ôÆ$h!¡´ì\\½AzÏK4Q	\n¸*Ó£)<Bê1\ZBX\r\"Ã¦ìNfä¤hLÖ´HæD³°áùrkáL C!lI\"Bã%&4¼Å4Ð&\ZPâH\"\"\\\03>Rt&0c4ÄÏ*\"dØsYD\"¢ÌRbÛz¢\\¼2·uºÌ2Ó#@åÍ¬bÂYÚoÉ\"quCc a¦ÁÊ%Q*Êµ­Udèñ!{×`	´\rþ[c@OÑ#*#cYI|°±¶F¢T¤E\\\"Rm¡\nH,Çp»í±ÜmÛ	\n¢HàfØ%Ý[VhèÜ4¬¿Q]ífðSöææîoÉ©Xs	Ê5aaÚ²0÷&úÖ³mFw6Û%&·Õ\Z­°0z¿!×8!d	¯¬fn5Ý(ïWö4{NàG YC·Ví¯::,Rj$¸µÑ°@HTøÏ¸aæv_È$ÍÍÇÌk!K~Ñ¡Ñ±ªÄ)ç	)±èÄáETBãU×´öð(}¹ÐGc*bf_4v¡ÉË\r\r`ZÁ¶ãS#B¹¬à\"òaL7ÞzúögmúÝl$ª(Kb Û°«Ucâv37\Zf\"$ÎD%ÎKÀ(`¡ÈèepÍÃÉÑ3Ý:ªñà~~ñ¨<×¥î»ñóâ@ËÃ zñ¯3ö]A%Þ1UxÁO\ZÄ[áA$«ÇRÈ¸g¡&ð^ãæ6PÝÄ¾ÝÈ?v»3ÃÄ~ÐÖE)·±¤AtÇeP\rÛ¬]­Qb®. c\\J³àI¸j£\nê)\nä°[ô ;­Þ\"ïâÐÓ-@ÀòìOUFyì\ZÃì°oºaèsGcR<c(3ØeæeèY*µâ¶AÍ,í¡ÀÖíð[AÊB0J^I¬Hu\ZWr/Õ¸vîiÍ¨â\\a0IË\nHcD*0\"¬5ÐRw9A¬¢ä/j­Ò_y¡#\0¼¹JØ3Äð2ÂUïCHÄÊ©ë./WCâF-B¹ü@¶´Ï»9¢®W\",¨\Z¢x/õÞ{ÊsTEúY$ß\Zù¦ai[Ñ?ÛÃºBé(È\r@åø»)ÂÚ¶¶\0', 'Cash On Delivery', 'pickup', 'Azampur', '3', 178999, NULL, NULL, 'KkTA1602419174', 'Pending', 'awais.awaisullah@outlook.com', 'Capt. Awais', 'Pakistan', '03324740308', 'South Pakistan', 'lahore', '25560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sas', NULL, NULL, 'completed', '2020-10-11 11:26:14', '2021-09-13 08:28:17', NULL, NULL, 'Rs', 1, 0, 43999, 0, 0, NULL, 0, 13, 0, 'Free Shipping', 'Shahryar', 'punjab', NULL),
(8, 35, 'BZh91AY&SYÀÂ\0Ä_@\0Pø;/ô.¿ÿÿúPÜd,±\0i È,s\0`!\0&\0\0PMMPõ\0\r\0È\0\0\0¤¦Ê\0=CM\rPÐF@\00	¦2\0	`\0\0$DDÓ)íÑ#!F§©ú¦j`) )ÊGh#ÆOÔûr³#ä1Üd4<ræFK^uõf¸K	%a_e2=ÉÂ¥¡Æñ	ÏáMª5FÊnnVJ9Ç_´QG?q¯cèg½\ZÖI	.CI	B<1ä	\ZÏ\0Öl:^Ì=\'Þ%\ZG _LiÖ9ÚoÊ<$&ñ!©yä¦²\'LL1	*dTKTL1@`´d0­\"»Iú\06ÄÇ[Jµ(60_E\0@Ø5H¤ÖE- J£ tÂ&fiT\"\"9 T(ª\ZÞ Øb²HRGÊ9	FMLÅÒ-´o`·8s G¸µª°d¨EFwp¹+\0¡`Ä²:ZUULU¤æBú.(h±\n\0Â0É)ÑÃSG`ÐÑÕL\ZFXÃä	1u`@P´C ºÎ½ÖlÙ	\nÂHäfÈ%RåhV]¥AËq¼{Y§%VÆ1ªl3LR±&l\nQÓ6=5Á¬ç8£mS\Z6ÛªD[bE $ò1Ö8\"Ç.H«ÈIÜdb{ÎàhðqÏ5±h«U6¡zGP±õ2è¿AI©ÍÕT\r{Øõ%ü|27)#CÔ¶T¢pdnU:\re\rC_âJ\ZcÄ©íÕQØ\ZXÈÔa4t©Åë\r\r¨/pÙCC3YmKT`L2©ãYÍÇÉÝxwwÝ¥/EIlUw¬®}N£iQ¦d\"IÁæBXæf»¦(Nft´yº²¦­³¬%[óßô\Z¹­9h`íÔyÊJ9à`ÅÚíO¤øgÚHÀ\"ávGaÏ¶ÄðÕ&ÓAÛI*eëtPg&à¤/zä6TÛÀÂýh>L6N<ÎZ;\"X@ö*jÄBåRÉI\r\'T¤Ud¨PI`aBTÀåá&Ñ«*K¼R8Åm?Ðèj[{EæàHi¨bwt\'½ca¦`zÆ±ö\\7O~³auG$t4#¸i¶2£=f~s?\"éY®Õ°\ZIfs[Ç}fóJnõ4¬)¥æ\näxÒÀàAÜÃa¿¯ww{¯pO\ZòCæH%\"F$2b\ZU¥FfGnpi(®Ô¸â­uø`k!bE\"ÄÂã²\rAÏ«yxÊ¹iÀÁ22\"¥uà8\"¤Gp¨þÌ ]F\r3ÝÈÇ-G5 ¡**\".ª\Z\"w_aé¸ùäªCà]f|\Z kî6\ZÔìüN®3w}SYOäh(rtÿ¹\"(H`KGa\0', 'Stripe', 'shipto', 'Azampur', '1', 50000, 'txn_1Hb4cjJlIV5dN9n7Fp1AAuaa', 'ch_1Hb4ciJlIV5dN9n7l8qpTRRq', 'Ge921602423002', 'Pending', 'awais.awaisullah@outlook.com', 'Capt. Awais', 'Pakistan', '03324740308', 'South Pakistan', 'lahore', '25560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'withheld', '2020-10-11 12:30:04', '2021-09-05 14:57:18', NULL, NULL, 'Rs', 1, 4500, 500, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(9, 13, 'BZh91AY&SYÀÂ\0Ä_@\0Pø;/ô.¿ÿÿúPÜd,±\0i È,s\0`!\0&\0\0PMMPõ\0\r\0È\0\0\0¤¦Ê\0=CM\rPÐF@\00	¦2\0	`\0\0$DDÓ)íÑ#!F§©ú¦j`) )ÊGh#ÆOÔûr³#ä1Üd4<ræFK^uõf¸K	%a_e2=ÉÂ¥¡Æñ	ÏáMª5FÊnnVJ9Ç_´QG?q¯cèg½\ZÖI	.CI	B<1ä	\ZÏ\0Öl:^Ì=\'Þ%\ZG _LiÖ9ÚoÊ<$&ñ!©yä¦²\'LL1	*dTKTL1@`´d0­\"»Iú\06ÄÇ[Jµ(60_E\0@Ø5H¤ÖE- J£ tÂ&fiT\"\"9 T(ª\ZÞ Øb²HRGÊ9	FMLÅÒ-´o`·8s G¸µª°d¨EFwp¹+\0¡`Ä²:ZUULU¤æBú.(h±\n\0Â0É)ÑÃSG`ÐÑÕL\ZFXÃä	1u`@P´C ºÎ½ÖlÙ	\nÂHäfÈ%RåhV]¥AËq¼{Y§%VÆ1ªl3LR±&l\nQÓ6=5Á¬ç8£mS\Z6ÛªD[bE $ò1Ö8\"Ç.H«ÈIÜdb{ÎàhðqÏ5±h«U6¡zGP±õ2è¿AI©ÍÕT\r{Øõ%ü|27)#CÔ¶T¢pdnU:\re\rC_âJ\ZcÄ©íÕQØ\ZXÈÔa4t©Åë\r\r¨/pÙCC3YmKT`L2©ãYÍÇÉÝxwwÝ¥/EIlUw¬®}N£iQ¦d\"IÁæBXæf»¦(Nft´yº²¦­³¬%[óßô\Z¹­9h`íÔyÊJ9à`ÅÚíO¤øgÚHÀ\"ávGaÏ¶ÄðÕ&ÓAÛI*eëtPg&à¤/zä6TÛÀÂýh>L6N<ÎZ;\"X@ö*jÄBåRÉI\r\'T¤Ud¨PI`aBTÀåá&Ñ«*K¼R8Åm?Ðèj[{EæàHi¨bwt\'½ca¦`zÆ±ö\\7O~³auG$t4#¸i¶2£=f~s?\"éY®Õ°\ZIfs[Ç}fóJnõ4¬)¥æ\näxÒÀàAÜÃa¿¯ww{¯pO\ZòCæH%\"F$2b\ZU¥FfGnpi(®Ô¸â­uø`k!bE\"ÄÂã²\rAÏ«yxÊ¹iÀÁ22\"¥uà8\"¤Gp¨þÌ ]F\r3ÝÈÇ-G5 ¡**\".ª\Z\"w_aé¸ùäªCà]f|\Z kî6\ZÔìüN®3w}SYOäh(rtÿ¹\"(H`KGa\0', 'Stripe', 'pickup', 'Kamarpara', '1', 46500, 'txn_1HbObbJlIV5dN9n7UutbRPoy', 'ch_1HbObaJlIV5dN9n76DOfPPFM', 'AS4R1602499813', 'Completed', 'vendor@gmail.com', 'Vendor', 'Pakistan', '98098080809', 'kohat pakistan', 'lahore', '923232', NULL, 'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-10-12 09:50:14', '2020-10-12 09:50:14', NULL, NULL, 'Rs', 1, 1000, 500, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(10, 37, 'BZh91AY&SYª~þO\0³ß@\0Pø+ô¿ÿÿúP¼Á\0(Ä\0\0\0Ð\0\0\0\0L#QQ£Ô\Z`\0 MDSÔ(Éé Ð\0Pi \0\0\0Ð\0\0\0\0$ÂOBbbLÒ	ê\03\'ªPHXH{N`uØOØN¥K>¿s§§FÓD¶o_ZseA,,ßöºy3AÉbµÖÅ;u8g\\Q\næq}mFøñ((ÒË32klÈF²×;µà^VÄÊí\'´àHÆãÌdº/C÷åîÄ\ZD¼§sE¯\"\rÂFI°2$ÖÝk(i P` *På¼ãeÃhÃ  ¤\\fó¸Û°ÁÄ\"ÀPfkW«(¥*îa7he°3ww²[cÁ1w{»ÍÎ½hO9EL(M`%ÌÒjuÒjÄmmNÑ¥&2ùj¨XQFÄ8LædU `QÁ$4²ª µ*yÃîºWàO,°.¨(V¨¦\nKb(%ÌZH2ËñÈ¤ (ð8röå¹	¾ÄúL4I0w)ÔmÁÎõ[Q» 7Î\rÍðoXÑpåÕ:bKÉ±L:¼XÌÝÞ¨ÛbÖK¸ÒÞ5¹C§òÓÆrA¶>Ññ${çó#\"ÃòS¤É;Õ3fµ6¦0m+S9#<ÏøK§ÐýýcZ«¬ËCÌÏ`è9V#^%yqòÊáXP©~\0Ñö0Uæ\ZF µ\\ÎFF²ç%Ì¼°Å w>C%«l:ºìÝs/VT	l&6ÕE:*sìfh`Li\nD¤8-,HJñENCÈf±ÞøLÇºì_Qmûãó\Z]üL¯,é¬ñR$\\s	TàXc }ýÀñ;#bMÈc<UätçB[Å¤9â$®kë:¢áZ¸³Må©Ü pâxoÂ¤z¨5EqY¢$KÖqá¡V @Ax$tøØàAQBDª)zÐaêb»8Ïz2CL¾ÏØE}cÌjÿÈéÔ5YÀ>ãõ<È/1ècDM£0äÎkAÓC³Ò¼LÔ»+vñ*QÐ2híQÍThïu¼Üû:wÐO\"D_RT21È#\0¡²Ad%2 Â,³¼ðÇ¿ü$lK¨¾%hfB¨I¸0\\Û±àg|ªZÉ¤`f c (`a.øqe`ªÄ{Ñ2à¢0kª?UÔ3P|øãÍoÂä¨¨£½ÞKð<÷@@Id^÷´ b©rì2ë_Ràäì<¼¿$&Á²R\rOø»)ÂS÷òx', 'Stripe', 'shipto', 'Azampur', '1', 56400, 'txn_1HbjUzJlIV5dN9n7MqHYvgRL', 'ch_1HbjUzJlIV5dN9n72bffFMwB', 'wsag1602580127', 'Completed', 'junaid@fatimafert.com', 'Fatima Fertilizer', 'Pakistan', '03324740308', 'Office 19, IT Tower', 'Lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'we need urgent delivery', NULL, NULL, 'pending', '2020-10-13 08:08:48', '2020-10-13 08:08:48', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(11, 37, 'BZh91AY&SYÀÂ\0Ä_@\0Pø;/ô.¿ÿÿúPÜd,±\0i È,s\0`!\0&\0\0PMMPõ\0\r\0È\0\0\0¤¦Ê\0=CM\rPÐF@\00	¦2\0	`\0\0$DDÓ)íÑ#!F§©ú¦j`) )ÊGh#ÆOÔûr³#ä1Üd4<ræFK^uõf¸K	%a_e2=ÉÂ¥¡Æñ	ÏáMª5FÊnnVJ9Ç_´QG?q¯cèg½\ZÖI	.CI	B<1ä	\ZÏ\0Öl:^Ì=\'Þ%\ZG _LiÖ9ÚoÊ<$&ñ!©yä¦²\'LL1	*dTKTL1@`´d0­\"»Iú\06ÄÇ[Jµ(60_E\0@Ø5H¤ÖE- J£ tÂ&fiT\"\"9 T(ª\ZÞ Øb²HRGÊ9	FMLÅÒ-´o`·8s G¸µª°d¨EFwp¹+\0¡`Ä²:ZUULU¤æBú.(h±\n\0Â0É)ÑÃSG`ÐÑÕL\ZFXÃä	1u`@P´C ºÎ½ÖlÙ	\nÂHäfÈ%RåhV]¥AËq¼{Y§%VÆ1ªl3LR±&l\nQÓ6=5Á¬ç8£mS\Z6ÛªD[bE $ò1Ö8\"Ç.H«ÈIÜdb{ÎàhðqÏ5±h«U6¡zGP±õ2è¿AI©ÍÕT\r{Øõ%ü|27)#CÔ¶T¢pdnU:\re\rC_âJ\ZcÄ©íÕQØ\ZXÈÔa4t©Åë\r\r¨/pÙCC3YmKT`L2©ãYÍÇÉÝxwwÝ¥/EIlUw¬®}N£iQ¦d\"IÁæBXæf»¦(Nft´yº²¦­³¬%[óßô\Z¹­9h`íÔyÊJ9à`ÅÚíO¤øgÚHÀ\"ávGaÏ¶ÄðÕ&ÓAÛI*eëtPg&à¤/zä6TÛÀÂýh>L6N<ÎZ;\"X@ö*jÄBåRÉI\r\'T¤Ud¨PI`aBTÀåá&Ñ«*K¼R8Åm?Ðèj[{EæàHi¨bwt\'½ca¦`zÆ±ö\\7O~³auG$t4#¸i¶2£=f~s?\"éY®Õ°\ZIfs[Ç}fóJnõ4¬)¥æ\näxÒÀàAÜÃa¿¯ww{¯pO\ZòCæH%\"F$2b\ZU¥FfGnpi(®Ô¸â­uø`k!bE\"ÄÂã²\rAÏ«yxÊ¹iÀÁ22\"¥uà8\"¤Gp¨þÌ ]F\r3ÝÈÇ-G5 ¡**\".ª\Z\"w_aé¸ùäªCà]f|\Z kî6\ZÔìüN®3w}SYOäh(rtÿ¹\"(H`KGa\0', 'Manual Payment', 'shipto', 'Azampur', '1', 46500, '876576465357', NULL, 'tnpu1602580514', 'Pending', 'junaid@fatimafert.com', 'Fatima Fertilizer', 'Pakistan', '03324740308', 'Office 19, IT Tower', 'Lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-10-13 08:15:14', '2020-10-13 08:15:14', NULL, NULL, 'Rs', 1, 1000, 500, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(12, 36, 'BZh91AY&SYÀÂ\0Ä_@\0Pø;/ô.¿ÿÿúPÜd,±\0i È,s\0`!\0&\0\0PMMPõ\0\r\0È\0\0\0¤¦Ê\0=CM\rPÐF@\00	¦2\0	`\0\0$DDÓ)íÑ#!F§©ú¦j`) )ÊGh#ÆOÔûr³#ä1Üd4<ræFK^uõf¸K	%a_e2=ÉÂ¥¡Æñ	ÏáMª5FÊnnVJ9Ç_´QG?q¯cèg½\ZÖI	.CI	B<1ä	\ZÏ\0Öl:^Ì=\'Þ%\ZG _LiÖ9ÚoÊ<$&ñ!©yä¦²\'LL1	*dTKTL1@`´d0­\"»Iú\06ÄÇ[Jµ(60_E\0@Ø5H¤ÖE- J£ tÂ&fiT\"\"9 T(ª\ZÞ Øb²HRGÊ9	FMLÅÒ-´o`·8s G¸µª°d¨EFwp¹+\0¡`Ä²:ZUULU¤æBú.(h±\n\0Â0É)ÑÃSG`ÐÑÕL\ZFXÃä	1u`@P´C ºÎ½ÖlÙ	\nÂHäfÈ%RåhV]¥AËq¼{Y§%VÆ1ªl3LR±&l\nQÓ6=5Á¬ç8£mS\Z6ÛªD[bE $ò1Ö8\"Ç.H«ÈIÜdb{ÎàhðqÏ5±h«U6¡zGP±õ2è¿AI©ÍÕT\r{Øõ%ü|27)#CÔ¶T¢pdnU:\re\rC_âJ\ZcÄ©íÕQØ\ZXÈÔa4t©Åë\r\r¨/pÙCC3YmKT`L2©ãYÍÇÉÝxwwÝ¥/EIlUw¬®}N£iQ¦d\"IÁæBXæf»¦(Nft´yº²¦­³¬%[óßô\Z¹­9h`íÔyÊJ9à`ÅÚíO¤øgÚHÀ\"ávGaÏ¶ÄðÕ&ÓAÛI*eëtPg&à¤/zä6TÛÀÂýh>L6N<ÎZ;\"X@ö*jÄBåRÉI\r\'T¤Ud¨PI`aBTÀåá&Ñ«*K¼R8Åm?Ðèj[{EæàHi¨bwt\'½ca¦`zÆ±ö\\7O~³auG$t4#¸i¶2£=f~s?\"éY®Õ°\ZIfs[Ç}fóJnõ4¬)¥æ\näxÒÀàAÜÃa¿¯ww{¯pO\ZòCæH%\"F$2b\ZU¥FfGnpi(®Ô¸â­uø`k!bE\"ÄÂã²\rAÏ«yxÊ¹iÀÁ22\"¥uà8\"¤Gp¨þÌ ]F\r3ÝÈÇ-G5 ¡**\".ª\Z\"w_aé¸ùäªCà]f|\Z kî6\ZÔìüN®3w}SYOäh(rtÿ¹\"(H`KGa\0', 'Cash On Delivery', 'pickup', 'Azampur', '1', 45000, NULL, NULL, 'Qig31602589082', 'Pending', 'malikhassan90@gmail.com', 'Faisal Hassan', 'Pakistan', '23423423', 'Canada', 'aaa', '33234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-10-13 10:38:02', '2020-10-13 10:38:02', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(13, NULL, 'BZh91AY&SYÀÂ\0Ä_@\0Pø;/ô.¿ÿÿúPÜd,±\0i È,s\0`!\0&\0\0PMMPõ\0\r\0È\0\0\0¤¦Ê\0=CM\rPÐF@\00	¦2\0	`\0\0$DDÓ)íÑ#!F§©ú¦j`) )ÊGh#ÆOÔûr³#ä1Üd4<ræFK^uõf¸K	%a_e2=ÉÂ¥¡Æñ	ÏáMª5FÊnnVJ9Ç_´QG?q¯cèg½\ZÖI	.CI	B<1ä	\ZÏ\0Öl:^Ì=\'Þ%\ZG _LiÖ9ÚoÊ<$&ñ!©yä¦²\'LL1	*dTKTL1@`´d0­\"»Iú\06ÄÇ[Jµ(60_E\0@Ø5H¤ÖE- J£ tÂ&fiT\"\"9 T(ª\ZÞ Øb²HRGÊ9	FMLÅÒ-´o`·8s G¸µª°d¨EFwp¹+\0¡`Ä²:ZUULU¤æBú.(h±\n\0Â0É)ÑÃSG`ÐÑÕL\ZFXÃä	1u`@P´C ºÎ½ÖlÙ	\nÂHäfÈ%RåhV]¥AËq¼{Y§%VÆ1ªl3LR±&l\nQÓ6=5Á¬ç8£mS\Z6ÛªD[bE $ò1Ö8\"Ç.H«ÈIÜdb{ÎàhðqÏ5±h«U6¡zGP±õ2è¿AI©ÍÕT\r{Øõ%ü|27)#CÔ¶T¢pdnU:\re\rC_âJ\ZcÄ©íÕQØ\ZXÈÔa4t©Åë\r\r¨/pÙCC3YmKT`L2©ãYÍÇÉÝxwwÝ¥/EIlUw¬®}N£iQ¦d\"IÁæBXæf»¦(Nft´yº²¦­³¬%[óßô\Z¹­9h`íÔyÊJ9à`ÅÚíO¤øgÚHÀ\"ávGaÏ¶ÄðÕ&ÓAÛI*eëtPg&à¤/zä6TÛÀÂýh>L6N<ÎZ;\"X@ö*jÄBåRÉI\r\'T¤Ud¨PI`aBTÀåá&Ñ«*K¼R8Åm?Ðèj[{EæàHi¨bwt\'½ca¦`zÆ±ö\\7O~³auG$t4#¸i¶2£=f~s?\"éY®Õ°\ZIfs[Ç}fóJnõ4¬)¥æ\näxÒÀàAÜÃa¿¯ww{¯pO\ZòCæH%\"F$2b\ZU¥FfGnpi(®Ô¸â­uø`k!bE\"ÄÂã²\rAÏ«yxÊ¹iÀÁ22\"¥uà8\"¤Gp¨þÌ ]F\r3ÝÈÇ-G5 ¡**\".ª\Z\"w_aé¸ùäªCà]f|\Z kî6\ZÔìüN®3w}SYOäh(rtÿ¹\"(H`KGa\0', 'Stripe', 'shipto', 'Azampur', '1', 49500, 'txn_1HjifGJlIV5dN9n7zqppJMaE', 'ch_1HjifFJlIV5dN9n7pyK9JWe9', 'jmyC1604483544', 'Completed', 'adil@gmail.com', 'Shahryar', 'Pakistan', '03324740308', 'Lahore pakistan', 'lahore', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASAP', NULL, NULL, 'pending', '2020-11-04 09:52:26', '2020-11-04 09:52:26', NULL, NULL, 'Rs', 1, 4500, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(14, NULL, 'BZh91AY&SY×éÂ?\0Å_@\0Pø;/ô.¿ÿÿúPÜ,.Ó È.U6¦A£Ô\0h@ \0(M\n= 4h@\0\0\nTÕPê4hhÚ¨£@\0Ó\0\0Á0\0\0\"\"iöhÈÈê4õ=LÕ=50Öh\nr§ÑÚï\'ê}9Ùâ2ä)<¨yeÌ\n¼F\"ÿ.ë$#$\'êÍ#m,LÂ.¿e4&èÚé¡	Æñ	¤ËiøS5JÁÇeI³nnV#¶QGOq¯&ô/¡ôh3Y$$¹\r$&1ôÆ$k<CY°èdU0ûOi¸úÄ³CHö«îRÅgH^±°ÐQ4Ò.10jaaKÐ«1\ZWibPuÁÁ­7ó$D\0Ûm*Ô ØÄ{Ê(ÚÁªE&´(¥¤ITdØDÌÍ q@UB\"#r@e*¢%\ZÞ ÈÅ01d0¤1%8y	FMfHbéÚ7°[9	#\\ZÕXJB2EÔ\"£;¸E\\ÈPH°bHY]ZÖ©²´ÑòH_5Ð%m`6\"aÀ/áMdêsDëNÁª0²Ä& Î!-\"RAY×²:Í!!XIüÙ³\n;ÖjqSf²Ü àï&1­9([\Z±®Í¡s4ÆU3`ðR±é®\r´ÓLQ®HSÎ	T¶ ÄeNsïÐvN±ÅK£Ò\"\'2÷I;Ó°Ù4=g(?8¸.©§N$%RETPZéBBÇù=EùMNnª¤ª>óY\nQm\Z9P>é0h<5:OTÖPÑd5àxñ*}úª#{PË\Z18£ÝbbÁ¡±uî(hfk-©j	U0Ük21¸ô  !ó;¯îû´¥ñÈ©-£nâµÏ3¡¨ÚdTidpa9#9®À©&§mn¬©«lë	Vá¼ý~cPw5§#-ºPùIB§0°8]ét^ùïx]¡Ã°ÄL.\'`Á>ÛÀ[TNfna$ª57­ÑAz¼ëÙSoõ ø°Ú8ò;8P¦äÂ°!S[9&E$5N¹M*2«%BLc\n¦,ÿ	6XaPª]âÀ¨+iþCRÛÚ/WjCL½C»¡=ë\r3à5ÝpÝ=úÎ%AÔzÐÐá¦ØÊøúÌý¥f»VÀh9%ÍoõÍ)º0÷´³XS&)KÍ2Éñ¥ÀaÜÃaÚ×»¹Íë\\3½y!òÆ$Ì#1\r*ÒHA!6¤ë2;sIEv¥Ä^\n×_a²F!DX2,L.; Ôø¸\n·Øg«`c#)Ò*PÁ`Y*@Y4w\nèÂÔ`Ó?F9j9­	QQuPÑ¼¢úMÇÈ¯%T\\ª±uMðh¯a°ÈÐÓy»¼)¬7r49h/âîH§\n\Zý8Gà', 'Cash On Delivery', 'pickup', 'Dhaka', '2', 90000, NULL, NULL, '3Py71604484729', 'Pending', 'admin@gmail.com', 'Home', 'Barbados', '23423423', 'Canada', 'aaa', '33234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-11-04 10:12:09', '2020-11-04 10:12:09', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(15, NULL, 'BZh91AY&SY×éÂ?\0Å_@\0Pø;/ô.¿ÿÿúPÜ,.Ó È.U6¦A£Ô\0h@ \0(M\n= 4h@\0\0\nTÕPê4hhÚ¨£@\0Ó\0\0Á0\0\0\"\"iöhÈÈê4õ=LÕ=50Öh\nr§ÑÚï\'ê}9Ùâ2ä)<¨yeÌ\n¼F\"ÿ.ë$#$\'êÍ#m,LÂ.¿e4&èÚé¡	Æñ	¤ËiøS5JÁÇeI³nnV#¶QGOq¯&ô/¡ôh3Y$$¹\r$&1ôÆ$k<CY°èdU0ûOi¸úÄ³CHö«îRÅgH^±°ÐQ4Ò.10jaaKÐ«1\ZWibPuÁÁ­7ó$D\0Ûm*Ô ØÄ{Ê(ÚÁªE&´(¥¤ITdØDÌÍ q@UB\"#r@e*¢%\ZÞ ÈÅ01d0¤1%8y	FMfHbéÚ7°[9	#\\ZÕXJB2EÔ\"£;¸E\\ÈPH°bHY]ZÖ©²´ÑòH_5Ð%m`6\"aÀ/áMdêsDëNÁª0²Ä& Î!-\"RAY×²:Í!!XIüÙ³\n;ÖjqSf²Ü àï&1­9([\Z±®Í¡s4ÆU3`ðR±é®\r´ÓLQ®HSÎ	T¶ ÄeNsïÐvN±ÅK£Ò\"\'2÷I;Ó°Ù4=g(?8¸.©§N$%RETPZéBBÇù=EùMNnª¤ª>óY\nQm\Z9P>é0h<5:OTÖPÑd5àxñ*}úª#{PË\Z18£ÝbbÁ¡±uî(hfk-©j	U0Ük21¸ô  !ó;¯îû´¥ñÈ©-£nâµÏ3¡¨ÚdTidpa9#9®À©&§mn¬©«lë	Vá¼ý~cPw5§#-ºPùIB§0°8]ét^ùïx]¡Ã°ÄL.\'`Á>ÛÀ[TNfna$ª57­ÑAz¼ëÙSoõ ø°Ú8ò;8P¦äÂ°!S[9&E$5N¹M*2«%BLc\n¦,ÿ	6XaPª]âÀ¨+iþCRÛÚ/WjCL½C»¡=ë\r3à5ÝpÝ=úÎ%AÔzÐÐá¦ØÊøúÌý¥f»VÀh9%ÍoõÍ)º0÷´³XS&)KÍ2Éñ¥ÀaÜÃaÚ×»¹Íë\\3½y!òÆ$Ì#1\r*ÒHA!6¤ë2;sIEv¥Ä^\n×_a²F!DX2,L.; Ôø¸\n·Øg«`c#)Ò*PÁ`Y*@Y4w\nèÂÔ`Ó?F9j9­	QQuPÑ¼¢úMÇÈ¯%T\\ª±uMðh¯a°ÈÐÓy»¼)¬7r49h/âîH§\n\Zý8Gà', 'Stripe', 'shipto', 'Azampur', '2', 94500, 'txn_1HjkeaJlIV5dN9n7HiR1aVKo', 'ch_1HjkeaJlIV5dN9n7a6g7qzXQ', '47lX1604491191', 'Completed', 'fatima@fatimafert.com', 'fatima fert', 'Pakistan', '03324740308', 'kohat pakistan', 'lahore', '25560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-11-04 11:59:52', '2020-11-04 11:59:52', NULL, NULL, 'Rs', 1, 4500, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(16, 45, 'BZh91AY&SYíAq¬\0À_p\0Pø;üD¿ÿÿúP±ç0#9QÖ è!(#LQ4ÏTÈÑ \r\r\0PÐ4 Ih\0\0\04ÓL)S*hÂ\0ÐÑ¦4£ À	\0L\0À\0H&&*¡2LL§©¡ê4\0ÑêzR#vFòë8¿g¼LaG!\'ÚM,dµÊ1ÇRAÊ2CwãawÎÖ>*\"ÇJ¸fDÍaÅsS£[t¬µºÞp2­HYdPßC;¹CYÏèT©®)RZÞ$À ê(yøâ%dG\"wBî|¨Fz¤ù2N»3©Q¡èbbZëëhj¦PÙ¤M\\hMÈÀ\rEÔÍÜ\r`ÑLA,¸+7~\"´[ÍN­ly$K¼×`¡[Bc«ã ±«©¬P3b<å@ÍAfHpBV ßk\r7ÄgÚöceT&jtòô¨!V²Ôª¬ÕØ°0©U ÊvJÒÌ£rµ}ä¹¹á§bpP\\ÓYINÇ5L0ÔîMbHË#Ài!JÒ×eÞëìQë ¦ ÆmÛ3ÜÊLÂ¸5(K#sÊVq39(ð_ÀÏ\nL½ Í²¥~³µ,£L¤¥(Nqy)RnHÁö&ÚéÀÓ¸ypúMÓ!Â8yy©MyÈLæµd\\<RiËävàMØ±äãafªÕF\ràÅ¦¡\0Â©DoaqÎ7m\rcVOG5\ZöÃÀ¦WÆ¨ÄLó^t&¤h\Z\ZCg\0?CYCÈkó!+ãLFÊ3+báúªqF#Á\\Å4µ¬>ÒC3QmZ \"äºAU¬È¸ÍÇ±Çà*Urqö§tnìÄëmåØ¬mèYGèô5ÌJv¸LÈS%$à¼³!,FXdXí1\n]ñBÖf©äTqR¹TÙÆ<rfPèÀÀ<M\"ã´Zõ,À©î»ÐÍÆ\"vævtÌ,§ÄR¸ìì¸cÃ#Õ\'(ÂÔ)°b ÛH\'Á¨)³wùá@÷fÐ)ËÓÆÁH&³¨¦e¢$ë£	1R¢:¥;@Õ¶¦&l$¨0(ÀS3¨aêfº¸nôdjËýIóXØi>Á¬~Z·KMÎÔ{G©ÉG!¦ÙB\n÷cT¨ÕÁcPu­£¶fMÔ×aàÑe1×¡) Hè4®p |Ar<ºõ÷ó¦ãÅâb`1Þ¨ÄY bSh\0 \\`ÐR72ëSr\\Eñ*ªfB°I&D.½pb#¡ªòÀ½ÓHÄÔ c *dc-\"Ìeø\"Â¨Å¯½}6ëä_-GEÀ!)©¨²àÐ{ÃyèH	,Þ~Ff$É¤½ÆO¼ïèì8¸¼¨ÐPä?ñw$S	Ô\ZÀ', 'Cash On Delivery', 'shipto', 'Azampur', '2', 22222, NULL, NULL, 'FiWk1617087780', 'Pending', 'captainawaisullah@gmail.com', 'Muhammad Awais Ullah', 'Pakistan', '0310123456789', 'House no 13 b block gul e daman society Lahore neer ameer chowk college road .', 'lhr', '54770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2021-03-30 06:03:00', '2021-09-13 08:28:29', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(17, 47, 'BZh91AY&SYKi\0	²_`\0Pø;/ü¿ÿÿú`	|\"\0BP¥@*¤G0	\0\0\0	Ì`À\0&\0`\0s\00\0	\0\0À&\0L\0`\0&\0$4ô=OS@Ð2\0hb\0¨&Fa\0i\'¦HÍ\'¢&\no­1õ~Ç*ÿJÊüóAö\rö¸ûG÷w`à.ë	újI¶\nX@°9å÷68}\\1ìnêôäÃ7nÝ½XÜ.{[#Ó¡ìrÙÃfÓÃànÚ7CmíèÁ»«k1Êä¶<×eÓt.µÐls]·ø{_«à».µÂèYmwïUSÀS&ööFkðtºÆûåñìü5hûVX+$Eù4;º8h°X%h±XcfÍX\ZbXxÂ\"HÂl÷¡ÉÀ\ZFáá³Ã0¡ÄÖ¶nÝ0Ê%úK,äH¨F(Æt¶péÃÈRX ÑtÙ³Ý=æèC¡ÉKÀíªynÝåÂlÊ­7\n\rpÝËé2X±r9lÝï!J<\'òQØàÌcKK6¤É ÔÔÉy¡cq¸Ð|ÍÉµetíNC:B4Ó¦îAÂn.Ê¼GN^Â»ÃèY»d.Ù»`nå§2ì\rÛ!w@ÐìkccHÝ­Ö§Dm^ù?Z/qáH\'mÐZb¤``¥Úi?Z144ÄcÁN@¡¥l0qÌÆÁM#H¡z¹°¨@¤lÓcHÄ6É}ØuóºÖn¬ÑqHcMt@~FãhvÝñeËËÛ§açÈSÐ}æ4Øz¼ÛºlUVÁqN4Ú¼]c·-Ç±4:N$täpÁÍ×­=ºjÄÛ¶^GmÃ«ÐnÁå§etç;»iÇS#·nÜÌÍÁäý5<£¸øÚÑ³þ¸\'ñì?WBû·Y3ï|ÜÏÕÔs4ûL_}ô_ÕÐÀô±§È:bbcÃ8X¶»Ha6>ã²4¿CÑ|Oø²ÕÓbám=GÈÿæq¿Ç}ÚuhÐÍ©÷×]±¬hyÌºL[.w<Öë©¾u¯ÌÍomÎÍ©]ÖÌÜq9»+Úà<ªì#¤8ÓÁx»S¢è{cÒufëÎÉfàiv­/cC|`ì\\+Áåí½¶«ë|¯sgm;|Í6tðò7f0CbÞÖèÞ~ËÔyÎ&×¶ÅÁÉ\ZZV2tZ]&dû\rÇ#CÀÜm,¯q£iÆõÛ7mµÒ[¯EÞw_ìÅexß1ázNWÜñ8Ø¸].ã7ªØØÝOqiq8fAhbñ½èë¹ÇèôK÷}_Å ¿¦&0ÎYïºËfÄu,Kð»¯Ù¹¾¶½aãhxÀ¯ `u¡äì^Ç£·¸C Ðô\r.#²£òÓ×{Ö#²î½§+Ñl_îÁçSkÝ{Ï+Òa`n³|¡p´¾ÇU½íÕfÐÒåKªÿ.Ky©ÅÂ6®õ©®·lXM#K&-,»GÅu·-Ç;ù_ÔÅçp°¼æêuÇö#ªð«±X7Ûpí¸ë÷6½ñÊàÄ`â¿©å}ntóÚ^3°ë»·\n5;|äPîZ{!ÁÈPéòcÕ3&¶#zLVeÄõÇq}Òp»÷¤¾¨	Õ`aå²Ýº S`è`Ìe{KyàdÉ·&óKézîã|N÷áiû}@@Àz¬+	\0\"­0\0d\0Y°,HÆ+C´âz®W¶¼Òx#ù£í7ÛÎ¥-ãCàÖèMªÞrC¹ñPlO;ÜÆÃ4ì{ÃÂí³Á·kyÀê¶0l¨t³æiÀÔèß:LY=ØÈÝ.6#ò¥ÿ°²pºÖªô+¨öGfcXÍ¾6<%¥Úï6´¿c7ÜzF§óa\Z­ãJ°q°Y0s9\Zö±üZÞ¥åwÔ}¸/)ð©¤ÿÅÜN$âäZ@', 'Cash On Delivery', 'shipto', 'Azampur', '4', 240000, NULL, NULL, 'cWfR1617104202', 'Pending', 'demo1@gmail.com', 'demo1', 'Pakistan', '0300123456789', 'demo 1 lahore', 'lahore', '54770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-30 10:36:42', '2021-03-30 10:36:42', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(18, 47, 'BZh91AY&SYKi\0	²_`\0Pø;/ü¿ÿÿú`	|\"\0BP¥@*¤G0	\0\0\0	Ì`À\0&\0`\0s\00\0	\0\0À&\0L\0`\0&\0$4ô=OS@Ð2\0hb\0¨&Fa\0i\'¦HÍ\'¢&\no­1õ~Ç*ÿJÊüóAö\rö¸ûG÷w`à.ë	újI¶\nX@°9å÷68}\\1ìnêôäÃ7nÝ½XÜ.{[#Ó¡ìrÙÃfÓÃànÚ7CmíèÁ»«k1Êä¶<×eÓt.µÐls]·ø{_«à».µÂèYmwïUSÀS&ööFkðtºÆûåñìü5hûVX+$Eù4;º8h°X%h±XcfÍX\ZbXxÂ\"HÂl÷¡ÉÀ\ZFáá³Ã0¡ÄÖ¶nÝ0Ê%úK,äH¨F(Æt¶péÃÈRX ÑtÙ³Ý=æèC¡ÉKÀíªynÝåÂlÊ­7\n\rpÝËé2X±r9lÝï!J<\'òQØàÌcKK6¤É ÔÔÉy¡cq¸Ð|ÍÉµetíNC:B4Ó¦îAÂn.Ê¼GN^Â»ÃèY»d.Ù»`nå§2ì\rÛ!w@ÐìkccHÝ­Ö§Dm^ù?Z/qáH\'mÐZb¤``¥Úi?Z144ÄcÁN@¡¥l0qÌÆÁM#H¡z¹°¨@¤lÓcHÄ6É}ØuóºÖn¬ÑqHcMt@~FãhvÝñeËËÛ§açÈSÐ}æ4Øz¼ÛºlUVÁqN4Ú¼]c·-Ç±4:N$täpÁÍ×­=ºjÄÛ¶^GmÃ«ÐnÁå§etç;»iÇS#·nÜÌÍÁäý5<£¸øÚÑ³þ¸\'ñì?WBû·Y3ï|ÜÏÕÔs4ûL_}ô_ÕÐÀô±§È:bbcÃ8X¶»Ha6>ã²4¿CÑ|Oø²ÕÓbám=GÈÿæq¿Ç}ÚuhÐÍ©÷×]±¬hyÌºL[.w<Öë©¾u¯ÌÍomÎÍ©]ÖÌÜq9»+Úà<ªì#¤8ÓÁx»S¢è{cÒufëÎÉfàiv­/cC|`ì\\+Áåí½¶«ë|¯sgm;|Í6tðò7f0CbÞÖèÞ~ËÔyÎ&×¶ÅÁÉ\ZZV2tZ]&dû\rÇ#CÀÜm,¯q£iÆõÛ7mµÒ[¯EÞw_ìÅexß1ázNWÜñ8Ø¸].ã7ªØØÝOqiq8fAhbñ½èë¹ÇèôK÷}_Å ¿¦&0ÎYïºËfÄu,Kð»¯Ù¹¾¶½aãhxÀ¯ `u¡äì^Ç£·¸C Ðô\r.#²£òÓ×{Ö#²î½§+Ñl_îÁçSkÝ{Ï+Òa`n³|¡p´¾ÇU½íÕfÐÒåKªÿ.Ky©ÅÂ6®õ©®·lXM#K&-,»GÅu·-Ç;ù_ÔÅçp°¼æêuÇö#ªð«±X7Ûpí¸ë÷6½ñÊàÄ`â¿©å}ntóÚ^3°ë»·\n5;|äPîZ{!ÁÈPéòcÕ3&¶#zLVeÄõÇq}Òp»÷¤¾¨	Õ`aå²Ýº S`è`Ìe{KyàdÉ·&óKézîã|N÷áiû}@@Àz¬+	\0\"­0\0d\0Y°,HÆ+C´âz®W¶¼Òx#ù£í7ÛÎ¥-ãCàÖèMªÞrC¹ñPlO;ÜÆÃ4ì{ÃÂí³Á·kyÀê¶0l¨t³æiÀÔèß:LY=ØÈÝ.6#ò¥ÿ°²pºÖªô+¨öGfcXÍ¾6<%¥Úï6´¿c7ÜzF§óa\Z­ãJ°q°Y0s9\Zö±üZÞ¥åwÔ}¸/)ð©¤ÿÅÜN$âäZ@', 'Cash On Delivery', 'shipto', 'Azampur', '4', 240000, NULL, NULL, 'WwST1617104251', 'Completed', 'demo1@gmail.com', 'demo1', 'Pakistan', '0300123456789', 'demo 1 lahore', 'lhr', '54770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-30 10:37:31', '2021-03-30 10:53:26', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(19, 50, 'BZh91AY&SY7\0âß@\0Pø+ô¿ÿÿúPûÜ²j,±Úí¢¬Æ°AOM&M¦\0É \04\0\"jTz¡ #@4\0)GBdõ4ÅP402h`\0\0	\0\0\0DA4M)²2OL¤ hz¡¦ÔýRK©æfPp2K`Gò~ÊgÜLaýòN´:õæ\n¾·ÌºÉÀcß\"Õ)w¤ZHãv_»Fòðìf:ÒJf´¤Y,ÝÑ0QÅ¹Úã0XÙl2ù¸üaÌø `cDt¡î#0Y6BÂäHikÓ²÷1QîÅ¬Ï)D2v²q14abºb¸A<²«	h0²Ø«[Pö U@UK¦ºè B*)Îs\n8°ÑG[MjªØX¬Í,YøJ­	®GTvyÐ¦ãzH aKbJ(pÐã!(ÄiRíi¶ RqX¤@[ÚÔØJ@2Eàé&)áÂ/\"VB)p¥IWVµ*ª®ê¿£äÚÓA 	j¤\'lhUFÍ]3ÄF/)\"1eÈ\r(À/Bm\0Ø!tûv­i)\nÉ1 ÜãhÊÁ0b­$\\ÙÞU àæ\0ÙÉLÃY«1litYy2]QÇÅ³\ZØ¼ÊA­SfÂLRj-µ&³¬SíÎrA×Úµ´É\"Ó$im\0må4ÐE¨)8YÕef¬0o&)2ê Xô4Sñ~¹\"MÔM§Ïy?+\\~Ç@ÖµÄy`a,Q1¬ jPðY~%OÃH ö,`Ð¶£}NÀî0`Æ¡{Ú³C@=»L¥k\'¸.ÓC1Ä2©çÃâ1Æ&ùfP*Kb¨Û¸­esÐùNó2½&h**C1;K1$º$ät1¨ÍÃ3¬4î}@õûL¿#\'ý,×siVZ6ñ|ø>f@öRÅgÔ<Ã¹Ø¾:B	@Bk2\ZÞtçe>¡nRn:tNITkLò­ÑæP}h[tÌÕÙq:¨1ß ÓpÆb,µ²Â¡j¢$d¬×2YQP¡âPPr j¿TË;VPÑKØ*É-dÈ·p3!ObC&%É3WÑ\rõLLLØ2§£¯º²»É$óxìT0©ä£Èi¶2Ã/ÄÙ¥«ZÄòFf¥`Ò¨¢Ã,q¹ìIÒõ-ÆÂ19L°j\"àqQ¨À¯{¹±hÓOÉzB`é\nHcE(\"\"­02\ZD5&ã3¦rWz^±Y}Å¬l!\\,Q*D.[`Ì=.¨uÌñ+#CHÌÖ±¡ð2YÖâ¥­/Ö	c¾âj4¥NJ\ntd:Ñê=á¼FñÌ\nDÆ¦±eØþ&=úÁCS«Z2P\'ygþ.äp¡ n3', 'Wallet', 'shipto', 'Azampur', '2', 4000, '40000', NULL, 'iI1L1618207835', 'Pending', 'demo01@gmail.com', 'demo01', 'Pakistan', '0310123456789', '123 block 1', 'lahore', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-12 05:10:35', '2021-04-12 05:10:35', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjabd', NULL),
(20, 50, 'BZh91AY&SYìM^\0áß@\0Pø+ô¿ÿÿúPûÜµ°ÜwZhÉ¬$hÔôÔÄiÚ=M\0\0\Z\Z £Ô @\0\0$B¦@ÓCM\ZF9`\0&\0\0\0\0	ÐÄÅOÍ%44h2\r #õJ,èOÙÂ í7Åí#Ò~\n\r8ÃäyzPôôòÅFK^c¯ÄÝdÌcß\"7TÝ yxUû±±ro/ÁvcHË-iKIdÔv,ÖMÎ¿)ÆØ¬Ëð;q7wf\0r#±LbBæ	äMá(õ3²\Zrüù1yqã8¥ ÓiO1Ü¾@`âcdÂÃ/b½1^B!a8fqHIk5yÖI£| 4YUK¦ºú(¢CÊE3EXBDÄÎ¯9r£7xÑZª8¹Âc4<äaÅIg\nn0ÀÇA)cIE\Zd%*]­\"³VÔ\nN+`K{Z	HH¼]$Ó¥<8EâdJÀ(E¸Þ\n2bd·yÖ°o¹rò\'ÝG¤êµ	º¤\'DhUFÚ0\'ÁFJH¤XQ]T4(@\"q«Y³U%!\\ ñ¶1¬Ô&/	\"àà¬æÎò­0ÌÆL²f\ZÍ\\ÁcK¢ËÉj9Y¨cv5±¶ÒkD)ÂLRj-ªM±¶LÄSíé9ÎäØ\'É¢W%Ðnh:|>	\\ncz:lfÊÏ\\@£ønoì@çÚuI \\t<ùÜãiÎ¦óãÔÅ¡\"Õ9ZÐCË#.ÁÉd®Nx(\"H¢ È¶rôDh%,2U ¼À 1¬É+TXâ`½-fF#6ý\nJ§3h·eñ±#ª\"ªØIgðýcb{ÊÈ¦¡2¡2Ó	b2òKÑ\'3©mC6Æ°Ti²Ê.4l8Ü÷¯ÀäZ\rÁäåPMdI|¯ZõKÔPÆ\"\0cûÌo:érÚ¤Úuê2Äs	%Q¬±Â·¢?ÂMá;¾\'3iìÝÈ¶xT;3hû¹9ath)\"à%¬îª±\\\ng\\Y§p	i²çÚUQ.¢Ý(dÊ¥à*Í,ìÈ7c^ÐfîbÑR1	Ã<Mÿ±ú01 eNº®MJNã±P°?C¢M±¿WVj3¢14[~fõ×aù´³L®2©Eñ=*j\nÄÒÄäAø?]0õõ¯=!{þLHIë$±\"A\0V !QJÓuví¯|tùÍhë/\"ÅHÏ\\\'T:Åm+ÖCHÄÕ@\\dc<\"¥zÈ|QQáB)dbÖV1%9Mä¯zzz#¼é7Ü3BÂw°OøÔdPkOø=Î4t|ÅWÄ Ô	õ-ÿ¹\"(Hv&¯\0', 'Wallet', 'shipto', 'Azampur', '1', 9500, '1234567', NULL, '5rDx1618208031', 'Completed', 'demo01@gmail.com', 'demo01', 'Pakistan', '0310123456789', '123 block 1', 'test', '222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2021-04-12 05:13:51', '2021-04-12 07:18:03', NULL, NULL, 'Rs', 1, 1000, 500, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'test', NULL),
(21, 50, 'BZh91AY&SY+9,\0áß@\0Pø+ô¿ÿÿúPûÜ²j,°º[häT$¦=SôMz4\0\Z¦J\0ªÔ \r\Zé4\0\0\0\"H¤z4mODô\r&M4Àæ\0	\0\0\0\0\0$D#B##	M ¥\ZdýRK©ÿ3(8N2Øñ?¤\n¡1ö{É:ÐëÖ-|#_¸dà1ÃoÄªJïH»Ì$r;/ÝÍ£yxv\n³²Jf«L1+,ÍÑ0QÔÜìr,lµÙ\'cæßÐæ@ð;@Á$Æ!(ç6¸>f`²pB\Zâë$FE´µéà¾Hpß|úJA\rcIOÊr.&2fl.3v,\"ñÆ1¬%ÂÈbv¬MmCÐ  ¹\0Xh\n ©t×SýQ¡ÞXQ©â(âÂ\r¢¶ÕU	°±YXÑÀªÐéY®F$TvyÐ¦ãt@Â8ÄPá¡ÆBQÒ¥ÚÒ+5m@¤â±	H·µ©°dÁ%ÒM:SÃ^&D¬:S\0¥IX+ZÕUWDuH^§Éµ)	´ ªBvÆ%QQ$lÕÓ1¤¹|añ#\\Òô!D´LØè,;ÍZÎíTd¸fÈ68ÆZ2°L«Ig6wh896f2e0Öjæ[\Z][*KQËÍÃc[Ì¤\ZØ2ØIME¶¤Öu\"qûzNñÀóQÉ=q\\:%rYÌ\rÒ-OæÁ+cÀ­ÊZ«5ax±IWPacèf§â0ýr>D¸¨&&u<Ik¦2Ôñ jZ¨ f\nÊ\"Î¢Èkô!,J~Åx03bæe®\rjnEÇW.Á\ZZ]#30=5Ê­¤>ÁìE,E#Oáz=C]×¾M+Ùï:¨*­TÙ¹×6\'¾¬hH&T ^t!,`I$ât/¨fÁV\nØü`õ	öL_î2»«:9I°Â%¤rá¸YFÿ1kÖ½½{ËzÄ@QÐÏ§;)îÅ&Ã§A$é I*g5Áüx÷!zMí§Ý·}1¨vfÀ+åÄåÀcG1IZÒÂ¡j¢$d¬âc$²¢¡B\r  åÀÕ2 (©w¬0¡*¨8\'´» Ú@|Í{xw\"´98ld4ªb98Ð9SÓ\\ß»ËwÁõ9(ä4Ûao4ÎÉU­Añ9##Ú<41ÚxW\\!µ¥¢erJ/SÐ¥MC!\\°h\"ânQ¨Ä®}ì4ý²gÞ§!0HIÑ\nHcE(\"\"¬02\ZD5&Ã#¦pqWj^B²ö±¡#\0±D\\©¸ë óàà*X¹ÌÊò±/t4P0dÌ§tT¡Ä0Yz*P5«ëWâCë¸a¹º»cKvéZ®ÚVÑ*>nÚ@#hÎeÅÅ¢	?ãQA«Ùv!~SèêFú2P\'ygÜ]ÉáB@¬ä°', 'Wallet', 'shipto', 'Azampur', '2', 4000, 'gq77723Smz', NULL, 'aFLQ1618216055', 'Completed', 'demo01@gmail.com', 'demo01', 'Pakistan', '0310123456789', '123 block 1', 'lahore', '54770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-04-12 07:27:35', '2021-04-12 07:29:42', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(22, NULL, 'BZh91AY&SY§}\0Â_`\0Pø;üD¿ÿÿúP³ËÙuAJ)BQ4S\Z#Iê~©åA¡£M\024hõb\0@\0z\0	4¡*hh\r44hÓ@Ðh\0æ\0	\0\0\0\0\0$H2OLÒb\r\0Ñ§¦Á\"êA!X³ìîdõÜÃ.A#Ë(Â2\rV(epÅñªLæeVÚ&Ü¨:Îjz¿ò¡µ%9@Tµ÷P¢ÅtdíHZhPár¸5)ãÄ©StR¤½Dû6A\"¡\'hüd­±+$É1Ñc\'$I	¸3B`ÁºÅÙ:TdÈRÂÃZÆµHdÔR77Õ	aAYÆ5ª3aRÚÂj\\CE\n@3\"Z¶{J¹ÊY!Ø+JMm°@¥G:Æu¾`ØfÙÅÑ¥p¥\nr2Q$AB¥IJÑT³uN\"ºTéw.]D	=³`E¬\'Pðá´È¸0C¨°P\ZGVU¬©ßKìn³,@qP&müEm+ÔRy`È20(C@ÚI´±Û­m¸êÚ%³BHâ1÷Áç5¡Z¶uJÁÁÄÍe+8¬¤Ac1s[Òf-­+åjY#2Élahc7¦Ù¤+ÒuZÎÑJ¾fL¸½çõõÇ6\ZDÁv&%Å 7`½zLóv,{Üuj­T`ÝØ®é°aCÌÕKù\0ó4\r®£pÆEÑÄæ£w\0yöµÇ0çÓ¾Ô!ÄØt:»@ýMÅkA¯	`-bb8°5*`Ô­#ÕS2;¬`Á-ÁkWÚPèjl[m #ºÉAU¸ÐÀÎ¡ÇØNJ·RÄc¶%käPb Û°«Ucþ>Fã°ÉO	\nd¤¤%$Y<¨Î±_°¨Ò8~GªJâ2\'\\YRçt	\\¸{\'!Lqà-Û+´©ô^(Ci$zðqCAàdhg¬ïé¨YO¥#ßÞ3ZGªSá2Àb@Õ %äJì¸¢©èFoýgNCV;Å\"*Ö¢Z\"$K+-o$UMLòdåx\Z£a%(ÔIPa3,¢^ÁLp,Ùc3U×È[û¢\ZRhtïzFaQJ\r\"¤{qØÜUÚLÆSyÔs\Zm ¯¦j\Z±¨3¸jå¼vÔ¾ó7BíijLÉNkäJf£!q	ùJoZuKËâìñðkò@÷$@EåKÈQ\"\nT&ÔNwB)Á.b¢úª,F	»tþns¡¶%sM#&Ê2¦eÆ(Lº¸Yh>ÔPUkÚ£~¡ÜÌi±Ñv%55]¨$£ÐÞÃäH	+µÅ¨>¦I!+I}OÈòèè<||\nJgü]ÉáBBuö ', 'Stripe', 'shipto', 'Azampur', '1', 15611, 'txn_1Ifho9JlIV5dN9n7WlgaAhZs', 'ch_1Ifho9JlIV5dN9n7FuvK6NCk', 'WqQf1618303275', 'Completed', 'shahryar@activehousetech.com', 'Shahryar', 'Pakistan', '03211100681', 'Suit # 4, 1st Floor Liberty Heights,', 'Lahore, Punjab', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASAP', NULL, NULL, 'pending', '2021-04-13 07:41:17', '2021-04-13 07:41:17', NULL, NULL, 'Rs', 1, 4500, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(23, 51, 'BZh91AY&SYKb\0áß@\0Pø+ô¿ÿÿúPþî`ÌB-Òí¡ÖÙF°$õOÑ¢j2\0Ð\0hh ªoRh\0h\0\0\0\0	5 #ÐÔê2F\Zz h`\0\0	\0\0\0DdÒ%?i15<QéPÄõ $	º>¦ôf`õÌkÈþÆ ,|~©cÎ(ÐÖ`K3xãê+G(Þ#¿Dp©+ÃB«È¼D$r/Ý\'ðìf9eS4µ&ØMÀÇVÍìÉ(èpu96dVìÊÇn&½¡¡ÐCäy@Á$Æ!4.`Ø/n7pÌ+!¡AJN^¼\'F}óô\\ AsÖBõ¦q(Íh¸Ã!v,A\"kJÔ`aT\r±:Ò%JÌñ&\\*I¸\nÓ5m3_Ñé7µP±Ð%ðX]ÆmLB(dÅ­|{åäÃñldbEIgp0ÀÇ±Æ$¢\r2FÕ.ÖY«T\nN+`K{Z	HH¼]$Ó¥<8EâdJÀ(C¥ô\n0]Ái¤Înk8psô²Ò`(\nBÕP¦P­QLZQx§lôËàb!v-AdaÀµ*$\0¡NSgÉ²ö u	¶®1¬Ô&/	\"àæVsNò­3LÆL²f\ZÍÜÁck²ËQj+¨b­ØÞæR\rè2ØIMÅ´É¬j	äûzNÙÌxÎQÌ		Ðë5¬:Í\rÁ]#éóµuG;\\«U7f)l*})#gúHÃbgY³È¹±¸ÂdO\Z¥ª	æP¨Ê¨+YØLíY{ÈJÄý¸ÞÀÀÊ0VàÑ­¸òJåØ0cK`emÜ`ÀÒÒX\ZCñb)VTR8ÈÐAê\Zí¹òi\\ÏxÑ#ª\"ªØIgðý3D÷M¤¡2òÐ³#$Hæu/°fáÒ\nÆü õù¶L]ð2¶ò«I:6¾¤ráÀX$GñmÚ¼ð£#Ä@~ÃC7zUK°[Ç^£.Hë HXÎÔÉò$o	v!yÎ-§Ù¯\"úZæÍÀS»èä1c ¤E@ZTS+DDIf¸ÒÑRFeåËm-ãhj¡öAyz\')i	eïÇ±Í-.È5 >¦ÝÀÍy\\N#@d£ðLG\':G*z±Mùì,¼O9OñÖt­Ã\"iÞ;=Él\ræèq£ËBÚé¶ÏcA¢e3×âNÁ®H;Æg\"7Äíéo_ZséÅ/ÔÄÄ1zR #D\"2$X\0²I\rHÜfuÄäjpª½jhBÈ*M(D.{`Ì;ù8\n!Ò.t3¼Ý\r#3dSrá&YX2XP`E.F¤·8#Xâüæõ8N­%4U¨iQö#¤\0Â5Ð¸¡®Ö ÿ\Z½Wè5xa2}	ssÂ())yiÿrE8PKb', 'Wallet', 'shipto', 'Azampur', '1', 2000, 'tjp3380jtr', NULL, 'y9JU1618303482', 'Pending', 'mirzashahryarbaig@gmail.com', 'Shahryar', 'Pakistan', '03211100681', 'Suit # 4, 1st Floor Liberty Heights,', 'Lahore, Punjab', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-13 07:44:42', '2021-04-13 07:44:42', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(24, 51, 'BZh91AY&SY\"\Z¯R\0»_@\0Pø+ü¿ïÿúP¯g0gl¡ÅI	 ÑFÉê\Z=G©\r\r\ZLQH\0\0\0\0\0ROSÓF&Òz@@\0d0\0\0\0\0\0\0\0\0\"ÐÄd Ð\0\ZzmCj	FE %´N;ÄÃÉ¬yïi³cÌXdµè1ñÝÔzOX*¿¦¬÷CfUã3#b{Ä±9-\nO;xVð\Zn©{dÅTÀõ$g2û$HÏQIL}h\09L5çÀ\Z 6AÌ.êÊyÍì]\"ºc´ÕF°ÆX7-4Ãµ\Zà­Ve mÚ¢jÐQÐ4&Ð6\r^¢×± Ò¦ ½MWÈäE;^oedÂ¢&­sÍÅÇ|N(\rSUü2AK@ÌAcÉq$%eË)1tâ\'mÁæÙ&UPÃ½°T«¥5*¦¤*ø´ò-*Ø,S±+\n÷£EenlH_Õ´J (M3º§\n³5QFsX2ÊB0\Z`HR´¡l3_uáî\\8£¼äCÃ\ZVÒö/F1ÈÐîq&É¸£ºM\0º©bªVËCv+51&$äà]ÆV+X±kQÜhXwa]ËRÌ1A=y\rPÝTLjBVÎì*:£¤t5Àlp4RA«(>Èã\r]«Ë]¾\'h¹¸Þ§Ðgã©òDÄ&È¦ÁÂ|öñÖDü0dÎèq&AÐad±ïu]|Õ&XÚcPhï±É\Z£45`ÄÆÀÎC¶Ó°¾íÐxÖóSAÏbÃÌ©Uûqå:FbqJØ¬6ð+Ý`ùá¼ï5-æá3`¨N\r\'i	j3F1íÚ3O+;m´&üüÿQ¨95áÌ×ÀË¾òÎI)t	Áä(.Nqàð½c°]g\"D&!°;dÇ×¥Ôò	8zÐ®ÐU5³\\Û¡NðÄ/3ävws4ÛüÎ\0[ÇÈéÌcÇQIZÛqQ{\"$Wvæ.IuJ àyV5vÂTÀå	[6²édT7\nT1`ÜX³qÎI`ß¤¿qÕSO$b2¯Ls¿@Z[ÈPËàÙ§^2fbaÄi%¨éEz*9ÃF²{óo9bÉI2ÚÊª4Ñ°bÒÉàA}½7{ºîròç¡D0^¨ÅY bSh\0 \\F3xæßïânwä+/¨½Í¤  £BÏ|\ZNnÉÚ2y´h@8HÔÜ c .l51b¬ÁòE£V¾´½cxÏfuÚt\\C©À¤®®£EÉï9>Äsâ|I!55âÜ48Âuê{Õé:yÑë6íéF ±ÿ¹\"(H\rW©\0', 'Stripe', 'pickup', 'Azampur', '1', 90000, 'txn_1IfhwgJlIV5dN9n7VOdoWCrL', 'ch_1IfhwfJlIV5dN9n7QTfO7vql', 'SjcG1618303804', 'Completed', 'mirzashahryarbaig@gmail.com', 'Shahryar', 'Palestine', '03211100681', 'Suit # 4, 1st Floor Liberty Heights,', 'Lahore, Punjab', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASAP', NULL, NULL, 'pending', '2021-04-13 07:50:06', '2021-04-13 07:50:06', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(25, NULL, 'BZh91AY&SYËâÖ\0ºß@\0Pø;ü¿ÿÿúP»<klv©»ºÐMÉM<ñ444Ð\0PJ\0IPê\0êz@	\niPdÐÓ@Ð\0\0\0h\0À\0\0\0\0\0\0\0D£¤Ô	êhdÈDd	f0Ì(u	ðýÆXô£1Ë GTâ(ÔZXq\"ë#ò©+¹¡Uä]Ñ	/S\Z\\©åØ/ÐBfW:©HYdPßrxÀ¡©¿¡R¦ºVÅ8à$Ä ±ì3	°3QÔ:\0bHôQÖYÙ¸Ò@`4¦tUh¦Æ  DEïkÞºØêZ¯XsÚÁªÍE+JÄ£Z«\"ìsARU	Z·¹A\\`hq!PEáãºYØ9îÏyà0ÀÆ aKbJ(pà8Èk)Ìch¬×Ã0)okSa)\0ÉPðá¥ÌXt$Òª¤¤ô\"}Ñäu*£ &Ð6b-\"ÞÔÜhmYBd\",0ÈàÈâ\ZI¤1	ðJ¬ ´ic·zÓS»HHXI±	E9ùØÌg5%IÁâ¡²oVs\\­&÷$\rY±Ø3ll®QV$¨é¦G¬aMt4Òà×RÕÄÅ&Ñm2izAàrõ&ó`ãô¸\0ÅypïBFâC¹ÅëÚl zÌRu8ï,ÕZ¨Á»±]ÓQ\0Â¸ÕK÷ÇÌ´ÔYçð0ùñ¹HKÊÔá¼Ìt5àÎ+¯	\\¿(À\Z7Ðäesq4µÜ;¦lfjWM \"«äbt¨¤¦càpW¨{#üìµ¢èÚæ\nlTvj¬}MMN%:8LÈS%$àÂYÐ©\"å	¢ç¤zÜ3\Zî¦a*íaÉö*8»Àr[yM¤VzâÎ^òÉ¬\Z$Bá?ÀZh»uØ@ÚI69!D ì\\hf^©¬+LC$<Ã 0ÈõN*c	Ðx¤F3H*A>ñT«5Ä²Q\0ÅLÀCEæ)ºDq¨TÚ¥qôNøûq2öAÖa%\\¹\rrX Õ6V³1WQ¤Ë¤uÇÎÌÞ0÷-þ\"áÉ!¦ZÀ;ñ5ï!S@¨¤¢¥=¼hgkR²ªÉÑ¬ÄÍíe*Î¦XÕ)µ#Ü:ä[q¾BÌÒÂ|UI0K<ÈB\Z²#Ëlý|é¶ÑîAñ10ß!\ZM0ccH°°J\ZjFã^E7¥à/QUì-cB	¸M\"ÝÐX:là(é<MpÌ0M#ES#xE	W,èE	QXÔ¾Ì ¾£9ìaEàÔÔYrDn8Ø\\O2@@JÌ\0m]¨!«M}ÆOÚvàÿ½{!6\r0q¹\"(Heñ\0ë\0', 'Stripe', 'pickup', 'Azampur', '1', 50000, 'txn_1IfkH3JlIV5dN9n7CHHtZm1q', 'ch_1IfkH2JlIV5dN9n7QQsXDgCd', 'DbMq1618312755', 'Completed', 'mirzashahryarbaig@gmail.com', 'Shahryar', 'Pakistan', '03211100681', 'Suit # 4, 1st Floor Liberty Heights,', 'Lahore, Punjab', '54660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-13 10:19:17', '2021-04-13 10:19:17', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(26, NULL, 'BZh91AY&SYz7Î\0ºß`\0Pø;ü¿ÿÿúP»<@b;©J2×pÑ#ÈÂ#MÒh\rê4È$A4R<¦\Z4 \0\ZzH\0(õ=F¨4 \0@À\0\0\0\0\0\0\0	4)<ÔÔÚhÅ\r\0\0\0\Zh\nm6û; /àpõGÀîFÓSÈññe2ZõGè=:XÉ=U\r[íDXû]*êü ä,í©¹Íù¨¥Å¾:L7UîLÛbfXÀ¡³´¡CLÈ©=Ij$Ò	*\\î2	02;OÌ8]&ÈBmC%VFÃIÐ\ZaFc\nlb\n!¹»+@Ûº«:ÚÁ­RÕèölA:efr5@Ú-ÉÊ¶ä©«SBcó$`ÖLÄç<  ÙE3	 ³FHJÔ-yíâqZ»Ü6ªÌz¼T«5JjUMHVbÖÁJ¬,§d­-j«ô¥û$/Éµ¢\r!@Pf!{ç¬Ã$§G5L14 ã°±/)ØK®!2´¡E·ÝÖ:û±G¡~CÝÝ²èº3X}\Z#½Ä6Uc;ä°:DAÇ1³®î2®M\ZÀÕÉ\\úIÖöÎ¼óuèS:C7u¥Ú²9±ç;(Ø¼¤øÍB¤\r k\':à¢î\'6Ô;»aªaî¹æpðjP`Ý¬ç a3Ìh£óÓÅè¥¦³\";¬S9Æ+ËÒøF2Cæi¨:V#^â	XªðX(`\\¦\0Ñ¶fä`:«`ÒÐ-`è¼ÈÐ¦yÀaªèbT¤ qà((U {#ým¹¢±¹Z¶ÄLbÛ¨©ESöhhjbO±Á2â§äA/ÑBäK$£ÌfÁðÉä\r&kK0eñ.ÎQqKIXéLï HA¢D2ðñy®gzæ\0Úp©¹b a¡ÞÊ(îÈðãÄf$9H©5ðQ!5â_rë:6õçi{6=ýg¡5¤-uÐ¨Õ¢$W ¿©ÄáG°ÚµeyÈ\n*¹ªl%LYÜJ±Y4Bà,ªÍ£IÛÀZîEÐÓ+0Ô*Ó¼:Q0äq9xä£g*µÉQMD¨Tq ózñ¦Ù2È¾4A\'ÑÖ¶+°Û=ØË/84uÕÍ1Ã¾K´ã0Ã0Úg>þ¯½³~üåCÜW<bA,Á±)4\0P.@A#N`äø:{ÐïKÐ/Òð3Ä 0$#¿¢C³{MÎ8\Za`F&j\0¡søa2EªãêDÉXÈ?Ìmuæ#G!¡.Dz=TµÆX=¸mØÀ(4\0Ý 2æF«%Þ2]Ç=P¿ .hh(rø»)ÂÑ¸¶p', 'Cash On Delivery', 'shipto', 'Azampur', '6', 300000, NULL, NULL, 'PwCQ1623041665', 'Pending', 'mail.naumankhan@gmail.com', 'Nauman Khan', 'Pakistan', '03224771757', 'HOUSE 289 BLOCK FF STREET 13PHASE IV DHA LAHORE', 'Lahore', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-08-29 10:39:15', '2021-06-07 03:54:25', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(27, 53, 'BZh91AY&SY·æ\0Í_@\0ø;¯ô¿ÿÿúP¶¼aÝt\ZUkGZ0LômM£Iêm@\0\0\0\0%£J\ZbdÄÓLÐÆL$ÔM*L\0\0Ð\0\Zh\Z\0s\0\0\0\0\0\0\0\0$HÑ&\ZLAG¨òSÔ=@å<£1A Ì|µ¡Ô1¨þx#Y§LB[9D íÕraÃÄslÌû³oGEpRiÐúàÎ^]=)	ÇÅ	±´FN+\rELÎÉ¸\\Ú[ØÄ­Õ¡¦SRz\0q,ytvw%M#¸%JÖ}æ$ c@XÀ!\r\raX´ãHA8\r\n÷yÆ!BlU\"ï.Óº+ö&`(3w[Þp\r!\rêñ5¾\"åÄV\Zsw¼É\rU_nÍDuw¬Ë««Ç.AD\\\n,Xã$jj$5rôög­ÅbLhË«½UÂ2½JR¤¯T5°\nY\\ ¡>8&÷£dÎY	ö9xDÔ°!ª¨#(ª)Âåd(¢ÆN« ìHT!\Z 0H²1ÛjÓaÕ¤$,Fú7nðÆ´+B*üP¹ZÉY*îâXÌP\"C-s ÍÌ©\\HÎ¦X³;½fg6eÃ«6xÍF|ÓøzºÁ´p?GIGøÁø _/ÐÀò£¹ýöúLªªby¸ÚYª´ªÙLÄ\n_ÐÏ\\MÄ»MA©õÜLví¬SBDLó^t&¤o\ræc¡³\Z5Y\r~D#Èf%=3ÕS#2¹G\nhÄvX°`ÆÀµªgBæsÎ0%´Z S9¼00iÄ¤»ôêxh½ªÜ ¤ÇUcnÂ¯ò\\Áb{ÇQ©N÷	\nd¤ÂÈeEñì Ì{(_u3	W_ðjMkM%k1p¸9ÌJ\rB0·îS|þMä@Út±ªÄB ÀhgC·²ª]bÝ#q\"9PqÒJR¹Ô<4Ú{f³i6öðæe¦4o;ÞcV;\"*Î£\"ÔÄI9ÛpY!lS©Ü$¥:*&dÊ%Þ\Zefm{­¸	B ¨¥S`Çì)JE9!N}ûKuJFÓä¢=Îj96ÊWÀ¾UE\Z3hÄè··-¸ßM!<Z.L¤§5ÆB°iXàAØÄysÏÃ¥9ó1ÆþÆTdb#!B	)BmLÜdt¿(E7¥Ö*/µ4!X$3&á®Xc°Y´\ZÌÔzÈTBÃ20Æ@T¹ºâÌeqòE	Q_R>­°gOS¡ô; ¦¦£ÉÄ|×ÀÀø7Å¢\\ÈÕ¦¾FOÄðõ;P¿àAäòqÂ())§ü]ÉáBB\ZÜ', 'Stripe', 'shipto', 'Azampur', '3', 80000, 'txn_1J55wAJlIV5dN9n7Bj0do4OU', 'ch_1J55wAJlIV5dN9n7MFDaw0wD', 'uro81624354226', 'Completed', 'testABC@testabc.com', 'Test ABC', 'Pakistan', 'TEST', 'Test no 1, gulberg 3', 'lahore', '545111', NULL, 'Pakistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-08-22 08:30:28', '2021-06-22 08:30:28', NULL, NULL, 'Rs', 1, 50000, 0, 0, 0, NULL, 53, 0, 0, 'Air Shipping', 'Default Packaging', 'Punjab', NULL),
(28, NULL, 'BZh91AY&SYÂ\0õß@\0Xø++ü¿ïÿúPí¼îe¹Ü»¦)Tä\ný2!ê3MCÔz@Ñ£! x\"@\0\0\0\0\0\0JPÐ\'¨Ô\0Ðd\r\00\0\0\0\0\0\0\0\0 M	©C4S1@õ4õ&M5*L2;Í\0ÁÈ<O·ÝÝB¤sïÌ»`§8NÏÙz.M3ÝÑóß`ÏvÀ&´t¨[ä£Êâ1¨e\nÄÎ«:>ÅòfÍë§&_`_°¯ZH!¥cEA|ÏÄ	a0o,ÈOÖêLJei+$Âï\nR d0CNqw\'I)BÍ&A40°Ûlm¯À`4 lR7W¯3Z<H	4&Ð6\rahÂ¹ª3hÔØTY;`q	©¡´QÖÒµ>¦ÁX\n\Z·:Ûp&`iG:ÆS#ã%°¸æâLã reJH91(Ð-\nUpÂ´¤¢ìR;¤´­¢BÃy¢a!æ¢´²<&èIYV³.¨©¢ú¤.þm@Ð6Å°ÍfJÈ¤Ì¦¡Jî1l$B b*AP\r\rÛMC£d$+¤?¡í×Âô©I­Ôæú¤DQÆ@Â\rNæ¹|>Õ^s2bI4ZTe,*6W/wqL±$ÆZ µÊ¯\\4ÌX±ðô³3yê Þ»9÷.|AæâHã6Ö\\Àü÷û¨ªÁS\'}¥Z\Zf,6>Æ_A+Dí5YÞzùþú ö37)3É~&¤tIèi¼LêX$#õ\\§q1LÌÂÆDÄ\Z7ÐìEÇevLhÐ-`è©°®yÀF¶åÃÆaÍ¸þÂo¢.÷çxÁeÓPm«\nV<ÏSCyNn2ÉI8/,ÈK2Ä\"Ç1æ3hËëC-´Ì%^FÿA¯?AµÃ³®âæ~ç:*¾\ZÉ;AR½âÓµxëÁ\0PÆ\"xLê:÷ÑP;IúÍ3CD0B-x´÷.úaQ·!v.CgÈÛÕ©}0 {³xåÌç¨ÆáH),ê*¢\"D±\\	gTK 2Æ&Iîã)³(q¡µ 8LÙd ÈwfáE»QiÖÉÌ6ÜÝâK5ì0|6iùtJ\r¤Ð~§Å°¡~XÔ£0â­Ã®E·4Ùñ&S)ÍDBÒ±¼\r±MÅöïêù{úß¾ýL9 \"úÒÁF \nÊ a\0Y$¨ \r©&G,øÂ\noK¨»ÊÔØB°I&D/æ»fHç«(é;M1î²Hf2¦F2á&`°,Å&F-x³JÚå©ó/Ã¹pJjj0\\d£ØÍä÷.H\'°îØ$f6¸2\r²÷?Ìðæý8yáÏø»)ÂäL', 'Cash On Delivery', 'shipto', 'Azampur', '1', 150000, NULL, NULL, '9m0U1624424561', 'Pending', 'test@test.com', 'AbcXyz', 'Pakistan', '123456789', 'street 123', 'city', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-06-23 04:02:41', '2021-06-23 04:02:41', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'state', NULL),
(29, NULL, 'BZh91AY&SY!H\0È_@\0ø+õ¿ÿÿúP¹·¸ê#7j\nV´tTý=47¥6¦Ò\0\0Aê\0)4ÓÐ`M20Re$C@\04\0¦§©£@`\0\0\04\0\0\0\0$HB6Õ2fiê\0(C°NÒ{Èp9{?&ýú80M3HsÍè£MF|%aÉ£²ù¹t|%áØ+!1¨¦lÔ	dÏ2M©X¬|Âf9 ñn°ÌEÃè: HÇ¡¤ÃÃ¡a`HJ5SË}ÝrE@p0`Í²¶º´MÕ$MÅaB íµm*2ÀTj¨ÕâQÒ4YR`0Au8I%A\n×lMd::(ª¨BÕ½M!HeUÙY1GY«Í	Äff«Y¸SXÃA\nXãQC±ÆDÆ5R\\­\"³NÃ0D¥Å¬Í¤$]B<:CÃUÌXt$æé¶ÖqÌ×|ü9K) )ªó2Z¢,5+!2vµÈ$\"CT¦É@AÛV­fÍP®*4$AíÒ/9ÝÌ¤Ì+Æ¤\\ÑÆS%;9i2CAx/bg&^Ðh°QZ`¶0£Îã\"5)¦fY\\\ZfB´WA+tsVòrwIÄg4@ì@OåÖt;ÕÜÀÿùáò;JÊÆ\'ÞãafªÒ«f,5ÏÂÔmÂ²2ÅÉ¼ä2ð%hzQòÂDLó^t&¤h\Z½àhk(pY\r}HJäúçÁRæen\rèfËì1¥¨-`×3¨®yÀF¶«QqORBrSôáÆWñ[	¡&ÅA·aWù20W<OôØp3)ÙÂf¡L)k!,FXdDÚ-¢\nKcÉé}`ÐÂò\"£5ªSªXZh>R.Pªê¹p÷\nÇ°¯þç²îm ]07¡D î\\hgC·Z©xI\Z»¸ÆÚÁG*N¬ïõ 5È\'ÁÜb`ª£W«Ð= éÔíÈc\nÇ¤E@YÔS+D3n¦\Z)! |0©* èì+³a%AÌYD¼cP,lÍ£øÍmä-ÛÑ4ÂéýÅ*¨§QRuÙ¼×Ü]¾E±D}J9\r6ÊWî2Æ¨£FaÉ9­Ã®E·\ZSWöIÓ+æ¢BÌd(:+ ÝX>z½ý)Ï@|P}AL7æÈCF \"2 )\0PPS72åâIÞ!U{ËTÖB°I\"ÏlnGH¹Ø×°/tÒ25¨È\nËÂ(LÁ`Y(L*Zø#ÕÚÆtæageàÔÔY{	GÐ:^£.\rðh\Z´×°Éô;óBû/.èJ\nJA©ÿrE8P!H', 'Stripe', 'shipto', 'Azampur', '2', 24500, 'txn_1J5OwJJlIV5dN9n7CUuASgUX', 'ch_1J5OwIJlIV5dN9n792NADruX', '1yN81624427270', 'Completed', 'test@test.com', 'AbcXyz', 'Pakistan', '12346789Street 123', 'street 123', 'city', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hurry Up!', NULL, NULL, 'pending', '2021-06-23 04:47:52', '2021-06-23 04:47:52', NULL, NULL, 'Rs', 1, 4500, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'state', NULL),
(30, NULL, 'BZh91AY&SYc¤\0Â_`\0Pø;üD¿ÿÿúP¨ÞHË S¬$4i \0\rF J# $A \0\0\0\Zz\0	4¡T4\0Âb3(4i h\r\0`\0\0	\0\0\0D ¢\ZSÒm H\0\0Qà2\'|Ø·\ZDÃaæ¸qA¦qD<Å´HÅ\"øºHwÐ©%ÈÄY;#a/¼KâÑL2¸éWY]FÁ/qÌÔÂ¦Ôs)· #,\":ãf\08BóGAíÄI×á)$¼¶rçf4!1²5î)\Z§i³¡FL,,jëVC&¤*¹¸Î¨L¸*ºÎ1­QaQí,´}	>$@Ú,ïôfëCÄÊD°ÄE±+4&:µnD\Z½LMÕÆd\" f	 ±räâHJÊ\rl®a»§}×fLUBf\'öÀYPB¬^Ôª«âÖù*°X§bVïFÊÝúÈO±Ä³\"P&mûÙEm+P¥43\"\"n±lFF	L\n4\r¤H:ÖþVøHZ K{BHä1kU£¢Ôfù<®XÇm3m&\0ÝjiÆM³j4Ä6\\½R#Ú5\'GRö-j1{¥àv`ÓÜ½oQÌcÎl¦ùN´?¹É5±QÒ?ÔzòSÁÞã¨ÃWjãòÅmâÅIúÆ´5côÔmaj Lxq¡G¼\\y\'¡hyx^V4ÔÂHfTµJr¹í#bæÅðhÛÑ¨ò´5`Á.WØXèlo1¿|hOY0]p7\Zâ|È^²¥WëËé\ZzbqJØ¬6ð+Ý`øè5-ìp¸TL§±	j3FaªÄ1>y\nqIP?[N\"Êì¥6%¤g:,Jè!är9ÁpÞ²%Ï5íH@.ýHc=£C;ÏsÉÄðð¡\'Á$ªkv¹¶C<É;Bz¿³¼íuqæi¶llìÝÝçNc^<$\\	kkÙ$ê¹¶bäT¨¢ÂÀÕ	Su¬0£VY/X¨p-pÎ±ÈÙuó<¥@²s>âÕîQß]¯¾ÂÈ¥\'YæY#¹GpÓl±ý¦ínÁ°3¸à5©vì8Û!FÉÖURøFÃ!oÉ¸p¦í¦áy¸»»xõ¿Ç|ð=ÀyÁF$D\"2H PÀ`ÐRq5:nõB-Å.áY}ÕÍ@A	FÕÂ\rCÃ¹ÀYÚ2t7é94Ñ4Mê2æãYå(ÊÈan¥(.ZñKÂk8³ÓYÆ¢J\n	Ò¨¡×wÑÈ~¬¾M~fÆ¥BXæ2½Ç»¢Ì lÙ¶AIPlÿ¹\"(HL±ÒN', 'Stripe', 'shipto', 'Azampur', '2', 22222, 'txn_3JZqWvJlIV5dN9n70olLodTB', 'ch_3JZqWvJlIV5dN9n70F7WKpNh', 'uYVz1631683172', 'Completed', 's_ms_93@hotmail.com', 'Saud', 'Pakistan', '03444543924', 'abc', 'lahore', '53705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-09-15 04:19:34', '2021-09-15 04:19:34', NULL, NULL, 'Rs', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(4, 3, 'Pending', 'You have successfully placed your order.', '2020-09-03 07:05:02', '2020-09-03 07:05:02'),
(5, 4, 'Pending', 'You have successfully placed your order.', '2020-09-11 07:55:16', '2020-09-11 07:55:16'),
(6, 5, 'Pending', 'You have successfully placed your order.', '2020-09-11 08:27:52', '2020-09-11 08:27:52'),
(7, 6, 'Pending', 'You have successfully placed your order.', '2020-09-11 10:26:49', '2020-09-11 10:26:49'),
(9, 8, 'Pending', 'You have successfully placed your order.', '2020-10-11 12:30:04', '2020-10-11 12:30:04'),
(10, 9, 'Pending', 'You have successfully placed your order.', '2020-10-12 09:50:14', '2020-10-12 09:50:14'),
(11, 10, 'Pending', 'You have successfully placed your order.', '2020-10-13 08:08:48', '2020-10-13 08:08:48'),
(12, 11, 'Pending', 'You have successfully placed your order.', '2020-10-13 08:15:14', '2020-10-13 08:15:14'),
(13, 12, 'Pending', 'You have successfully placed your order.', '2020-10-13 10:38:02', '2020-10-13 10:38:02'),
(14, 13, 'Pending', 'You have successfully placed your order.', '2020-11-04 09:52:26', '2020-11-04 09:52:26'),
(15, 14, 'Pending', 'You have successfully placed your order.', '2020-11-04 10:12:09', '2020-11-04 10:12:09'),
(16, 15, 'Pending', 'You have successfully placed your order.', '2020-11-04 11:59:52', '2020-11-04 11:59:52'),
(17, 16, 'Pending', 'You have successfully placed your order.', '2021-03-30 06:03:00', '2021-03-30 06:03:00'),
(18, 17, 'Pending', 'You have successfully placed your order.', '2021-03-30 10:36:42', '2021-03-30 10:36:42'),
(19, 18, 'completed', 'we have deliverd your order', '2021-03-30 10:37:31', '2021-04-07 07:40:00'),
(20, 17, 'complete', 'your order has benn completed', '2021-04-07 10:20:41', '2021-04-07 10:20:41'),
(21, 19, 'Pending', 'You have successfully placed your order.', '2021-04-12 05:10:35', '2021-04-12 05:10:35'),
(22, 20, 'Pending', 'You have successfully placed your order.', '2021-04-12 05:13:51', '2021-04-12 05:13:51'),
(23, 21, 'Pending', 'You have successfully placed your order.', '2021-04-12 07:27:35', '2021-04-12 07:27:35'),
(24, 21, 'completed', 'completed the order', '2021-04-12 07:31:39', '2021-04-12 07:31:39'),
(25, 22, 'Pending', 'You have successfully placed your order.', '2021-04-13 07:41:17', '2021-04-13 07:41:17'),
(26, 23, 'Pending', 'You have successfully placed your order.', '2021-04-13 07:44:42', '2021-04-13 07:44:42'),
(27, 24, 'Pending', 'You have successfully placed your order.', '2021-04-13 07:50:06', '2021-04-13 07:50:06'),
(28, 25, 'Pending', 'You have successfully placed your order.', '2021-04-13 10:19:17', '2021-04-13 10:19:17'),
(29, 26, 'Pending', 'You have successfully placed your order.', '2021-06-07 03:54:25', '2021-06-07 03:54:25'),
(30, 27, 'Pending', 'You have successfully placed your order.', '2021-06-22 08:30:28', '2021-06-22 08:30:28'),
(31, 28, 'Pending', 'You have successfully placed your order.', '2021-06-23 04:02:41', '2021-06-23 04:02:41'),
(32, 29, 'Pending', 'You have successfully placed your order.', '2021-06-23 04:47:52', '2021-06-23 04:47:52'),
(33, 7, 'Declined', 'Your Item need more details.', '2021-09-05 14:40:20', '2021-09-05 14:40:20'),
(34, 8, 'Declined', 'Closing for now', '2021-09-05 14:46:44', '2021-09-05 14:48:53'),
(35, 8, 'Withheld', 'Closing order now', '2021-09-05 14:57:18', '2021-09-05 14:58:53'),
(36, 7, 'Withheld', 'closing order', '2021-09-05 15:07:06', '2021-09-05 15:07:06'),
(37, 16, 'Withheld', 'closing', '2021-09-05 15:11:03', '2021-09-05 15:11:03'),
(38, 7, 'Completed', 'done', '2021-09-13 08:28:17', '2021-09-13 08:28:17'),
(39, 16, 'Processing', 'your good to go', '2021-09-13 08:28:29', '2021-09-13 08:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(4, 0, 'Special', 'Special Packing', 500);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font color=\"#333399\">WHAT WE ARE ?</font></h2><div><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10pt; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Dascon Construction Company was established in\r\n1979 with a vow for the drive &amp; commitment for the pursuit of excellence\r\nand absolute quality focused services in the field of Construction &amp;\r\nEngineering. Today; living up to the promise and commitment made over four\r\ndecades ago, DCC proudly stands as one of Pakistan’s leading Construction &amp;\r\nEngineering Service Providers.</span><span style=\"font-size:12.0pt;font-family:\r\n\" times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">Having successfully\r\nexecuted and handed over various commercial, residential, industrial, medical,\r\ninstitutional, iconic structures, steel fabricated structures, infrastructure\r\nand sensitive installation projects, DCC has become the ‘go-to’ construction\r\ncontractors for all developers, multi-national organizations / investors, large\r\nprominent group of companies to start-ups looking for cost effective yet\r\nquality driven construction and engineering services.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">By staying true to our core\r\nvalues, we have successfully forged exemplary business relationships built on\r\nstrong foundations of trust, integrity and our capability to outperform\r\ntargets. We believe in reinvesting in our teams, T&amp;P and technology to\r\ndeliver superior quality construction and engineering services to our treasured\r\nclients.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">The information systems and\r\nprocurement networks at DCC are constantly evolving to keep up to speed in this\r\nera of frequent technological advancements to operate anywhere within the\r\nCountry and to enable our clients to ultimately benefit from the broad\r\npractical experience, collective knowledge of the experienced professionals and\r\nvast procurement network of DCC.<o:p></o:p></span></p></div><p><br></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">WHY US ?</font><br></h2><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10pt; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Dascon Construction Company was established in\r\n1979 with a vow for the drive &amp; commitment for the pursuit of excellence\r\nand absolute quality focused services in the field of Construction &amp;\r\nEngineering. Today; living up to the promise and commitment made over four\r\ndecades ago, DCC proudly stands as one of Pakistan’s leading Construction &amp;\r\nEngineering Service Providers.</span><span style=\"font-size:12.0pt;font-family:\r\n\" times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">Having successfully\r\nexecuted and handed over various commercial, residential, industrial, medical,\r\ninstitutional, iconic structures, steel fabricated structures, infrastructure\r\nand sensitive installation projects, DCC has become the ‘go-to’ construction\r\ncontractors for all developers, multi-national organizations / investors, large\r\nprominent group of companies to start-ups looking for cost effective yet\r\nquality driven construction and engineering services.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">By staying true to our core\r\nvalues, we have successfully forged exemplary business relationships built on\r\nstrong foundations of trust, integrity and our capability to outperform\r\ntargets. We believe in reinvesting in our teams, T&amp;P and technology to\r\ndeliver superior quality construction and engineering services to our treasured\r\nclients.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">The information systems and\r\nprocurement networks at DCC are constantly evolving to keep up to speed in this\r\nera of frequent technological advancements to operate anywhere within the\r\nCountry and to enable our clients to ultimately benefit from the broad\r\npractical experience, collective knowledge of the experienced professionals and\r\nvast procurement network of DCC.<o:p></o:p></span></p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">WE ARE WORLD WIDE !</font><br></h2><p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10pt; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" color:=\"\" black;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Dascon Construction Company was established in\r\n1979 with a vow for the drive &amp; commitment for the pursuit of excellence\r\nand absolute quality focused services in the field of Construction &amp;\r\nEngineering. Today; living up to the promise and commitment made over four\r\ndecades ago, DCC proudly stands as one of Pakistan’s leading Construction &amp;\r\nEngineering Service Providers.</span><span style=\"font-size:12.0pt;font-family:\r\n\" times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">Having successfully\r\nexecuted and handed over various commercial, residential, industrial, medical,\r\ninstitutional, iconic structures, steel fabricated structures, infrastructure\r\nand sensitive installation projects, DCC has become the ‘go-to’ construction\r\ncontractors for all developers, multi-national organizations / investors, large\r\nprominent group of companies to start-ups looking for cost effective yet\r\nquality driven construction and engineering services.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">By staying true to our core\r\nvalues, we have successfully forged exemplary business relationships built on\r\nstrong foundations of trust, integrity and our capability to outperform\r\ntargets. We believe in reinvesting in our teams, T&amp;P and technology to\r\ndeliver superior quality construction and engineering services to our treasured\r\nclients.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:\" open=\"\" sans\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";color:black\"=\"\">The information systems and\r\nprocurement networks at DCC are constantly evolving to keep up to speed in this\r\nera of frequent technological advancements to operate anywhere within the\r\nCountry and to enable our clients to ultimately benefit from the broad\r\npractical experience, collective knowledge of the experienced professionals and\r\nvast procurement network of DCC.</span></p></div>', NULL, NULL, 1, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 0),
(4, 'Astra Link Store', 'category?search=', '<br>', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'info@1linkindustry.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D APPROPRIATE to&nbsp;&nbsp;</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\"><font face=\"times new roman\">HEAR FROM YOU</font></h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', 'Liberty Heights, Suite # 8 1st Floor, Block D 1 Gulberg III, Lahore, Punjab 54660', '03324740308', '03324740308', 'info@1linkindustry.com', 'https://1linkindustry.com', 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, '1605693275proximity-sensors-Schneider.jpg', 'http://google.com', '1618217824WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg', 'http://google.com', 1, 1, '1605693275siemens-overload-relay.jpg', 'http://google.com', '1618217824WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(9, '159361629307.jpg', 'https://www.google.com/'),
(10, '159361627708.jpg', 'https://www.google.com/'),
(11, '159361615406.jpg', 'https://www.google.com/'),
(12, '159361614605.jpg', 'https://www.google.com/'),
(13, '159361613804.jpg', 'https://www.google.com/'),
(14, '159361613003.jpg', 'https://www.google.com/'),
(15, '159361612202.jpg', 'https://www.google.com/'),
(16, '159361607601.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via Manual Payment.', 'Manual Payment', '<font size=\"3\"><font size=\"3\"><b>Manual Payment</b></font><b>&nbsp;No: 6528068515</b><br><br></font>', 1),
(47, 'PAK RS', 'Cash On Delivery', '<br>', 1),
(48, 'wallet payment', 'Wallet', '<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `make` varchar(240) DEFAULT NULL,
  `origin` varchar(240) DEFAULT NULL,
  `part_no` varchar(240) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `admin_approved` int(11) NOT NULL DEFAULT 1,
  `admin_remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `make`, `origin`, `part_no`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `admin_approved`, `admin_remarks`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(95, 'pr495jsv', NULL, NULL, NULL, 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 74, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, '2019-09-09 07:36:06', '2020-11-04 10:03:53', 1, '09/08/2021', NULL, NULL, 0, 0),
(116, 'pr496jsv', NULL, NULL, NULL, 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-04 10:03:52', 1, '09/08/2021', NULL, NULL, 0, 0),
(117, 'pr497jsv', NULL, NULL, NULL, 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-04 10:03:50', 1, '09/08/2021', NULL, NULL, 0, 0),
(118, 'pr498jsv', NULL, NULL, NULL, 'affiliate', 'https://pumpexpress.co.uk/shop/nga-centrifugal-pumps-with-open-impeller/', 13, 4, 18, NULL, NULL, 'Pump Impeller', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-118-pr498jsv', '1602315584bXzHNprm.png', '1602315607J3GO2U7g.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<h2 class=\"product_title entry-title show-product-nav\" style=\"margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-family: industry, sans-serif; font-weight: bold; color: rgb(76, 76, 76); font-size: 25px; letter-spacing: -0.01em; width: calc(100% - 52px); line-height: 35px !important;\">Pedrollo NGA Centrifugal Pumps with Open Impeller</h2><div class=\"product-nav\" style=\"position: absolute; top: 0px; margin-top: calc(1.125rem - 14px); right: 10px; z-index: 1; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif; font-size: 14px;\"><div class=\"product-prev\" style=\"float: left; margin-left: 0.125rem;\"><a href=\"https://pumpexpress.co.uk/shop/2cp-twin-impeller-centrifugal-pumps/\" style=\"color: rgb(34, 37, 41); display: block;\"><span class=\"product-link\" style=\"font-size: 16px; width: 28px; height: 28px; line-height: 23px; border: 2px solid rgb(231, 231, 231); border-radius: 14px; display: inline-block; text-align: center; font-family: porto;\"></span></a></div><div class=\"product-next\" style=\"float: left; margin-left: 0.125rem;\"><a href=\"https://pumpexpress.co.uk/shop/pro-nga-stainless-steel-centrifugal-pumps-with-open-impeller/\" style=\"color: rgb(34, 37, 41); display: block;\"><span class=\"product-link\" style=\"font-size: 16px; width: 28px; height: 28px; line-height: 23px; border: 2px solid rgb(231, 231, 231); border-radius: 14px; display: inline-block; text-align: center; font-family: porto;\"></span></a></div></div><div class=\"woocommerce-product-rating\" style=\"color: rgb(153, 153, 153); margin-bottom: 1.4286em; margin-top: 0px; font-size: 0.9286em; font-family: Montserrat, sans-serif;\"><div class=\"star-rating\" title=\"\" data-original-title=\"0\" style=\"font-family: &quot;Font Awesome 5 Free&quot;; font-weight: 900; -webkit-font-smoothing: antialiased; display: inline-block; cursor: pointer; float: none; font-size: 13px; height: 1em; line-height: 1em; overflow: hidden; position: relative; width: 6em; letter-spacing: 0.1em; white-space: nowrap; margin-right: 0.7143em; top: 1px;\"><span style=\"float: left; left: 0px; overflow: hidden; padding-top: 1.5em; position: absolute; top: 0px; width: 0px;\"><span class=\"rating\"></span></span></div><div class=\"review-link noreview\" style=\"display: inline-block;\"><a href=\"https://pumpexpress.co.uk/shop/nga-centrifugal-pumps-with-open-impeller/#review_form\" class=\"woocommerce-write-review-link\" rel=\"nofollow\" style=\"color: inherit; display: inline-block; vertical-align: bottom; padding: 0px 0.7143em 0px 0px;\">( There are no reviews yet. )</a></div></div><p class=\"price\" style=\"margin-right: 0px; margin-bottom: 1.25rem; margin-left: 0px; line-height: 24px; font-weight: bold; font-size: 26px; color: rgb(255, 137, 1); letter-spacing: -0.02em; font-family: Montserrat, sans-serif;\"></p><div class=\"description woocommerce-product-details__short-description\" style=\"margin-bottom: 1em; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif; font-size: 14px;\"><p style=\"margin: 10px 0px; font-size: 1.05em; line-height: 1.6875; letter-spacing: -0.015em;\">NGA Centrifugal Pumps with Open Impeller – The open impeller design allows liquids containing relatively high levels of impurities without clogging</p><p style=\"margin-top: 10px; margin-right: 0px; margin-left: 0px; font-size: 1.05em; line-height: 1.6875; letter-spacing: -0.015em;\"><span style=\"color: rgb(255, 137, 1); font-weight: bold;\">PERFORMANCE RANGE</span><br>Flow rate up to&nbsp;<span style=\"font-weight: 700;\">350 l/min (21 m³/h)</span>&nbsp;Head up to&nbsp;<span style=\"font-weight: 700;\">20m</span></p></div><div class=\"product_meta\" style=\"margin: 1.2143em 0px; clear: both; font-size: 0.8571em; text-transform: uppercase; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif;\"><span class=\"sku_wrapper\" style=\"display: block; margin-bottom: 0.25rem; margin-top: 0.5em !important;\">SKU:&nbsp;<span class=\"sku\" style=\"color: rgb(34, 37, 41); display: inline-block; font-weight: 700;\">PD/NGA</span></span><span class=\"mg-brand-wrapper mg-brand-wrapper-product\"><span style=\"font-weight: 700;\">MANUFACTURER:</span>&nbsp;<a href=\"https://pumpexpress.co.uk/brands/pedrollo/\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">PEDROLLO</a></span><span class=\"posted_in\" style=\"display: block; margin-bottom: 0.25rem; margin-top: 0.5em !important;\">CATEGORY:&nbsp;<a href=\"https://pumpexpress.co.uk/product-category/pump-types/centrifugal-pumps/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">CENTRIFUGAL PUMPS</a></span><span class=\"tagged_as\">TAGS:&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/centrifugal-pumps/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">CENTRIFUGAL PUMPS</a>,&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/open-impleller/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">OPEN IMPLELLER</a>,&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/supplying-water/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">SUPPLYING WATER</a></span></div>', 55555, '<h2 class=\"product_title entry-title show-product-nav\" style=\"margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-family: industry, sans-serif; font-weight: bold; color: rgb(76, 76, 76); font-size: 25px; letter-spacing: -0.01em; width: calc(100% - 52px); line-height: 35px !important;\">Pedrollo NGA Centrifugal Pumps with Open Impeller</h2><div class=\"product-nav\" style=\"position: absolute; top: 0px; margin-top: calc(1.125rem - 14px); right: 10px; z-index: 1; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif; font-size: 14px;\"><div class=\"product-prev\" style=\"float: left; margin-left: 0.125rem;\"><a href=\"https://pumpexpress.co.uk/shop/2cp-twin-impeller-centrifugal-pumps/\" style=\"color: rgb(34, 37, 41); display: block;\"><span class=\"product-link\" style=\"font-size: 16px; width: 28px; height: 28px; line-height: 23px; border: 2px solid rgb(231, 231, 231); border-radius: 14px; display: inline-block; text-align: center; font-family: porto;\"></span></a></div><div class=\"product-next\" style=\"float: left; margin-left: 0.125rem;\"><a href=\"https://pumpexpress.co.uk/shop/pro-nga-stainless-steel-centrifugal-pumps-with-open-impeller/\" style=\"color: rgb(34, 37, 41); display: block;\"><span class=\"product-link\" style=\"font-size: 16px; width: 28px; height: 28px; line-height: 23px; border: 2px solid rgb(231, 231, 231); border-radius: 14px; display: inline-block; text-align: center; font-family: porto;\"></span></a></div></div><div class=\"woocommerce-product-rating\" style=\"color: rgb(153, 153, 153); margin-bottom: 1.4286em; margin-top: 0px; font-size: 0.9286em; font-family: Montserrat, sans-serif;\"><div class=\"star-rating\" title=\"\" data-original-title=\"0\" style=\"font-family: &quot;Font Awesome 5 Free&quot;; font-weight: 900; -webkit-font-smoothing: antialiased; display: inline-block; cursor: pointer; float: none; font-size: 13px; height: 1em; line-height: 1em; overflow: hidden; position: relative; width: 6em; letter-spacing: 0.1em; white-space: nowrap; margin-right: 0.7143em; top: 1px;\"><span style=\"float: left; left: 0px; overflow: hidden; padding-top: 1.5em; position: absolute; top: 0px; width: 0px;\"><span class=\"rating\"></span></span></div><div class=\"review-link noreview\" style=\"display: inline-block;\"><a href=\"https://pumpexpress.co.uk/shop/nga-centrifugal-pumps-with-open-impeller/#review_form\" class=\"woocommerce-write-review-link\" rel=\"nofollow\" style=\"color: inherit; display: inline-block; vertical-align: bottom; padding: 0px 0.7143em 0px 0px;\">( There are no reviews yet. )</a></div></div><p class=\"price\" style=\"margin-right: 0px; margin-bottom: 1.25rem; margin-left: 0px; line-height: 24px; font-weight: bold; font-size: 26px; color: rgb(255, 137, 1); letter-spacing: -0.02em; font-family: Montserrat, sans-serif;\"></p><div class=\"description woocommerce-product-details__short-description\" style=\"margin-bottom: 1em; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif; font-size: 14px;\"><p style=\"margin: 10px 0px; font-size: 1.05em; line-height: 1.6875; letter-spacing: -0.015em;\">NGA Centrifugal Pumps with Open Impeller – The open impeller design allows liquids containing relatively high levels of impurities without clogging</p><p style=\"margin-top: 10px; margin-right: 0px; margin-left: 0px; font-size: 1.05em; line-height: 1.6875; letter-spacing: -0.015em;\"><span style=\"color: rgb(255, 137, 1); font-weight: bold;\">PERFORMANCE RANGE</span><br>Flow rate up to&nbsp;<span style=\"font-weight: 700;\">350 l/min (21 m³/h)</span>&nbsp;Head up to&nbsp;<span style=\"font-weight: 700;\">20m</span></p></div><div class=\"product_meta\" style=\"margin: 1.2143em 0px; clear: both; font-size: 0.8571em; text-transform: uppercase; color: rgb(104, 104, 104); font-family: Montserrat, sans-serif;\"><span class=\"sku_wrapper\" style=\"display: block; margin-bottom: 0.25rem; margin-top: 0.5em !important;\">SKU:&nbsp;<span class=\"sku\" style=\"color: rgb(34, 37, 41); display: inline-block; font-weight: 700;\">PD/NGA</span></span><span class=\"mg-brand-wrapper mg-brand-wrapper-product\"><span style=\"font-weight: 700;\">MANUFACTURER:</span>&nbsp;<a href=\"https://pumpexpress.co.uk/brands/pedrollo/\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">PEDROLLO</a></span><span class=\"posted_in\" style=\"display: block; margin-bottom: 0.25rem; margin-top: 0.5em !important;\">CATEGORY:&nbsp;<a href=\"https://pumpexpress.co.uk/product-category/pump-types/centrifugal-pumps/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">CENTRIFUGAL PUMPS</a></span><span class=\"tagged_as\">TAGS:&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/centrifugal-pumps/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">CENTRIFUGAL PUMPS</a>,&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/open-impleller/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">OPEN IMPLELLER</a>,&nbsp;<a href=\"https://pumpexpress.co.uk/product-tag/supplying-water/\" rel=\"tag\" style=\"color: rgb(255, 137, 1); display: inline-block; font-weight: 700;\">SUPPLYING WATER</a></span></div>', 0, 0, NULL, NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-04 10:03:49', 1, '09/08/2021', NULL, NULL, 0, 0),
(119, 'pr499jsv', NULL, NULL, NULL, 'affiliate', 'https://www.youtube.com/watch?v=PEY9-q_1SkM&app=desktop', 13, 4, 18, NULL, NULL, 'Netzch Stator', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr499jsv', '16023153845YgzK8yg.png', '1602315434rD9cuqyK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<header style=\"margin: 0px 0px 17px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto; vertical-align: baseline; float: left; width: 1120px; position: relative; color: rgb(112, 112, 112);\"><h1 class=\"title entry-title\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 32px; line-height: 1.1; font-family: Roboto; vertical-align: baseline; color: rgb(85, 85, 85); clear: both;\">Netzsch NE</h1></header><div class=\"post-single-content box mark-links entry-content\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto; vertical-align: baseline; clear: both; color: rgb(112, 112, 112);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">ACCA Pumps supplies complete rotating assemblies and individual parts for nearly all Netzsch NE Pumps NEMO®. All our&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Aftermarket parts</em>&nbsp;will fit your&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Netzsch NE serie pumps</span>&nbsp;in nearly all configuration. Originally, Netzsch pumps&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">NEMO</span>® NE series came with two main different types of Joint, pin and gear joint style. ACCA Pump can shorten deliveries and reduce your total cost of ownership in both types of configuration.</p><h2 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.2; font-family: Roboto; vertical-align: baseline; color: rgb(85, 85, 85);\">Netzsch NE Geometry</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">The NE Pumps came with different style of of rotor and stator geometry. It is defined on the model number. the NE70 or NE69 and the NE90 or NE89 use the same drive end of the NE60 and NE80 respectively in a single stage configuration. However, the “pitch” which is the geometry of the rotor and stator is more elongated increasing the velocity and evidently the flow of the media being pumped. These two models of Netzsch pumps are specially useful where the application requires a higher GPM mantaining the energy consumption of a smaller drive end.</p></div>', 55555, '<header style=\"margin: 0px 0px 17px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto; vertical-align: baseline; float: left; width: 1120px; position: relative; color: rgb(112, 112, 112);\"><h1 class=\"title entry-title\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 32px; line-height: 1.1; font-family: Roboto; vertical-align: baseline; color: rgb(85, 85, 85); clear: both;\">Netzsch NE</h1></header><div class=\"post-single-content box mark-links entry-content\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto; vertical-align: baseline; clear: both; color: rgb(112, 112, 112);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">ACCA Pumps supplies complete rotating assemblies and individual parts for nearly all Netzsch NE Pumps NEMO®. All our&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Aftermarket parts</em>&nbsp;will fit your&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Netzsch NE serie pumps</span>&nbsp;in nearly all configuration. Originally, Netzsch pumps&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">NEMO</span>® NE series came with two main different types of Joint, pin and gear joint style. ACCA Pump can shorten deliveries and reduce your total cost of ownership in both types of configuration.</p><h2 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.2; font-family: Roboto; vertical-align: baseline; color: rgb(85, 85, 85);\">Netzsch NE Geometry</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">The NE Pumps came with different style of of rotor and stator geometry. It is defined on the model number. the NE70 or NE69 and the NE90 or NE89 use the same drive end of the NE60 and NE80 respectively in a single stage configuration. However, the “pitch” which is the geometry of the rotor and stator is more elongated increasing the velocity and evidently the flow of the media being pumped. These two models of Netzsch pumps are specially useful where the application requires a higher GPM mantaining the energy consumption of a smaller drive end.</p></div>', 0, 7, 'Motor', NULL, NULL, 0, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-04 10:03:47', 1, '09/08/2021', NULL, NULL, 0, 0),
(120, 'pr500jsv', NULL, NULL, NULL, 'affiliate', 'https://www.alibaba.com/product-detail/NETZSCH-single-screw-pump-Rotor_60529869704.html', 13, 4, NULL, NULL, NULL, 'ROTOR NETZCH', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-120-pr500jsv', '1602315262Nh0ecAQz.png', '1602315294WC3Qj1KO.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span data-spm-anchor-id=\"a2700.details.pronpeci14.i0.23e774760sL43C\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: rgb(51, 204, 204);\">Screw pump with different rotor /stator geometries, operating method and conveying principle</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The/geometric shape belongs to a single head screw/rotor. With a circular cross-section, a large pitch and a large thread depth, the depth is constantly changing as the rotor rotates in the stator. The cross-section of the stator is the same as that of the rotor, however, the stator is a two-headed internal thread 180 ° apart, and when the stator and the rotor are meshed together, they form 1/2 stator cavities. When the rotor rotates, the continuous forward cavity between the rotor and the stator moves the medium in which the packet is delivered smoothly and continuously from the suction end of the stator to the discharge end.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The flow rate is determined by the pitch, diameter and eccentricity of the rotor/stator, and the speed of the pump.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The outlet pressure depends on the series and the pressure difference of maximum 6bar 85psi per level,</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The 2-stage screw pump with s-shape geometry can achieve a pressure difference of 12bar 170psi and hundred percent of flow.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The shape of a single-stage screw pump with L-shaped geometry is the same as that of the S-shaped 2-stage pump, with the same diameter and eccentricity. The rotor/stator screw pitch of L-shaped geometry is twice times than with the S-shape geometry. Therefore, compared with the S-shape geometry with the maximum pressure difference of 6bar 85psi, this pump can be twice times flow of it.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><img src=\"https://sc02.alicdn.com/kf/HTB1csymfRDH8KJjSszcq6zDTFXar/228221701/HTB1csymfRDH8KJjSszcq6zDTFXar.jpg_.webp\" data-alt=\"NETZSCH single screw pump Rotor\" data-width=\"708\" data-height=\"76\" ori-width=\"950\" ori-height=\"102\" width=\"708\" height=\"76\" alt=\"NETZSCH single screw pump Rotor\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: inherit; font-family: inherit; color: transparent; max-width: 750px; width: 708px; height: 76px;\"></p>', 55555, '<p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span data-spm-anchor-id=\"a2700.details.pronpeci14.i0.23e774760sL43C\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: rgb(51, 204, 204);\">Screw pump with different rotor /stator geometries, operating method and conveying principle</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The/geometric shape belongs to a single head screw/rotor. With a circular cross-section, a large pitch and a large thread depth, the depth is constantly changing as the rotor rotates in the stator. The cross-section of the stator is the same as that of the rotor, however, the stator is a two-headed internal thread 180 ° apart, and when the stator and the rotor are meshed together, they form 1/2 stator cavities. When the rotor rotates, the continuous forward cavity between the rotor and the stator moves the medium in which the packet is delivered smoothly and continuously from the suction end of the stator to the discharge end.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The flow rate is determined by the pitch, diameter and eccentricity of the rotor/stator, and the speed of the pump.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The outlet pressure depends on the series and the pressure difference of maximum 6bar 85psi per level,</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The 2-stage screw pump with s-shape geometry can achieve a pressure difference of 12bar 170psi and hundred percent of flow.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 18px; font-family: &quot;book antiqua&quot;, palatino; vertical-align: baseline; color: black;\">The shape of a single-stage screw pump with L-shaped geometry is the same as that of the S-shaped 2-stage pump, with the same diameter and eccentricity. The rotor/stator screw pitch of L-shaped geometry is twice times than with the S-shape geometry. Therefore, compared with the S-shape geometry with the maximum pressure difference of 6bar 85psi, this pump can be twice times flow of it.</span></p><p style=\"box-sizing: content-box; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-senif; vertical-align: baseline; color: rgb(51, 51, 51);\"><img src=\"https://sc02.alicdn.com/kf/HTB1csymfRDH8KJjSszcq6zDTFXar/228221701/HTB1csymfRDH8KJjSszcq6zDTFXar.jpg_.webp\" data-alt=\"NETZSCH single screw pump Rotor\" data-width=\"708\" data-height=\"76\" ori-width=\"950\" ori-height=\"102\" width=\"708\" height=\"76\" alt=\"NETZSCH single screw pump Rotor\" style=\"box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: inherit; font-family: inherit; color: transparent; max-width: 750px; width: 708px; height: 76px;\"></p>', 0, 3, 'Electical', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-09 19:34:26', 1, '09/08/2021', NULL, NULL, 0, 0),
(121, 'pr501jsv', NULL, NULL, NULL, 'affiliate', 'https://lastbestprice.com/shop/optilite-uk/optilite-uk-1u-rm-fixed-panel-with-2x32-plc-splitter-and-sc-apc-simplex-adapters-2x32-plc-splitter-ps342x32scas/', 13, 4, NULL, NULL, NULL, 'PLC PLATE', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-121-pr501jsv', '1602315077YalPDngl.png', '16023151065vjVzboW.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<h1 style=\"color: rgb(85, 85, 85); width: 1178px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Lato, sans-serif; font-weight: 700;\">OPTILITE-UK – 1U RM Fixed Panel with 2X32 PLC Splitter and SC/APC Simplex Adapters 2X32 PLC Splitter – PS342X32SCAS</h1><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">Etisalat – UAE Approved.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">2/32 PLC Splitter</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Low insertion loss</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Low PDL</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Compact design</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Good channel-to-channel uniformity</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Wide Operating Wavelength: From 1260nm to 1650nm</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Wide Operating Temperature: From -40 Degree C to 85 Degree C</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">High reliability and stability</li></ul>', 55555, '<h1 style=\"color: rgb(85, 85, 85); width: 1178px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Lato, sans-serif; font-weight: 700;\">OPTILITE-UK – 1U RM Fixed Panel with 2X32 PLC Splitter and SC/APC Simplex Adapters 2X32 PLC Splitter – PS342X32SCAS</h1><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">Etisalat – UAE Approved.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">2/32 PLC Splitter</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Low insertion loss</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Low PDL</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Compact design</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Good channel-to-channel uniformity</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Wide Operating Wavelength: From 1260nm to 1650nm</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Wide Operating Temperature: From -40 Degree C to 85 Degree C</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">High reliability and stability</li></ul>', 0, 1, 'PLC', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2020-11-04 10:03:45', 1, '09/08/2021', NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `make`, `origin`, `part_no`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `admin_approved`, `admin_remarks`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(122, 'pr502jsv', NULL, NULL, NULL, 'affiliate', 'https://www.nord.com/en/products/geared-motors/geared-motors.jsp', 13, 4, NULL, NULL, NULL, 'Nord Gear Motor', 'nord-gear-motor-pr502jsv', '1602314852XrQgQXbm.png', '1602314945u2utTJJL.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<h3 style=\"clear: both; margin-bottom: 10.5px; color: rgb(0, 0, 0); font-size: 24px; font-family: NimbusSansLBCP, Helvetica, Arial, sans-serif; font-weight: 900; letter-spacing: 0.02em; margin-top: 21px; line-height: 1em; padding-top: inherit; background-color: rgb(246, 246, 246);\">NORD Helical Gear Units impress with outstanding features:</h3><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><ul class=\"liste\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 1.2em; max-width: 65rem; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Powerful</span><br>Our helical gear units provide a maximum torque of 26,000 Nm (as an&nbsp;<a href=\"https://www.nord.com/en/products/industrial-gear-units/maxxdrive-helical-inline-industrial-gear-units/maxxdrive-parallel-gear-unit.jsp\" style=\"color: rgb(50, 109, 157);\">Industrial gear unit</a>&nbsp;up to 282.000 Nm).</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Efficient</span><br>High efficiency increases the productivity of the application.</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Hygienic</span><br>NORD Helical Gear Units have wash-down capability thanks to their smooth surfaces.</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Robust</span><br>If required, we can treat NORDBLOC.1 Helical Geared Motors with nsd tupH Corrosion Protection, which also withstands aggressive cleaning agents.</li></ul><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">Always the right solution: Our Helical Geared Motors</span><br>No two applications are the same. Because of this, NORD supplies three different drive solutions with helical gear units. All variants are available as flange or foot/flange mounted versions.</p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">The all-rounder</span><br>Standard Helical Geared Motors have a wide range of uses and offer proven quality. This type of geared motor is available from NORD in six sizes, in two or three stage versions with torque ranges from 50 to 700 Nm. We produce the gear wheels for helical gear units from highly wear-resistant, case-hardened steels.</p>', 55555, '<h3 style=\"clear: both; margin-bottom: 10.5px; color: rgb(0, 0, 0); font-size: 24px; font-family: NimbusSansLBCP, Helvetica, Arial, sans-serif; font-weight: 900; letter-spacing: 0.02em; margin-top: 21px; line-height: 1em; padding-top: inherit; background-color: rgb(246, 246, 246);\">NORD Helical Gear Units impress with outstanding features:</h3><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><ul class=\"liste\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 1.2em; max-width: 65rem; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Powerful</span><br>Our helical gear units provide a maximum torque of 26,000 Nm (as an&nbsp;<a href=\"https://www.nord.com/en/products/industrial-gear-units/maxxdrive-helical-inline-industrial-gear-units/maxxdrive-parallel-gear-unit.jsp\" style=\"color: rgb(50, 109, 157);\">Industrial gear unit</a>&nbsp;up to 282.000 Nm).</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Efficient</span><br>High efficiency increases the productivity of the application.</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Hygienic</span><br>NORD Helical Gear Units have wash-down capability thanks to their smooth surfaces.</li><li style=\"padding: 0px;\"><span style=\"font-weight: 700;\">Robust</span><br>If required, we can treat NORDBLOC.1 Helical Geared Motors with nsd tupH Corrosion Protection, which also withstands aggressive cleaning agents.</li></ul><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">Always the right solution: Our Helical Geared Motors</span><br>No two applications are the same. Because of this, NORD supplies three different drive solutions with helical gear units. All variants are available as flange or foot/flange mounted versions.</p><p style=\"max-width: 65rem; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">The all-rounder</span><br>Standard Helical Geared Motors have a wide range of uses and offer proven quality. This type of geared motor is available from NORD in six sizes, in two or three stage versions with torque ranges from 50 to 700 Nm. We produce the gear wheels for helical gear units from highly wear-resistant, case-hardened steels.</p>', 1, 13, 'motor', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-09-09 12:36:06', '2021-09-15 03:32:35', 1, '09/08/2021', NULL, NULL, 0, 0),
(208, 'lXz4663sbD', NULL, NULL, NULL, 'normal', NULL, 0, 9, 42, NULL, NULL, 'Netzch Pump', 'netzch-pump-lxz4663sbd', '1599035915lhvojogK.png', '15990359150IXD4LSL.jpg', NULL, 'KG', '0', '400', NULL, 56000, 0, '<section class=\"default-page default-slider \" style=\"color: rgb(63, 63, 63); font-family: &quot;Frutiger Neue LT W06&quot;, Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\"><div class=\"page-content\" style=\"min-height: 500px;\"><div class=\"container container-header\" style=\"width: 1170px;\"><div class=\"csc-default\" style=\"margin-bottom: 40px;\"><header class=\"csc-header-n1\"><h1 class=\"csc-firstHeader\" style=\"margin: 30px 0px 15px; font-family: &quot;Frutiger Neue LT W06 Cond&quot;, Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif; line-height: 1.08333; color: rgb(0, 113, 103); font-size: 48px;\">TORNADO<span style=\"position: relative; font-size: 31.2px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Industrial Rotary Lobe Pump from NETZSCH:</h1><h2 style=\"font-family: &quot;Frutiger Neue LT W06 Cond&quot;, Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif; line-height: 1.11765; color: inherit; margin-bottom: 15px; font-size: 34px;\">Convince through Highest Power Density, Reliability and Service Friendliness</h2></header></div></div><div class=\"container container-2-column\" style=\"width: 1170px;\"><div class=\"row\"><div class=\"col-sm-9\" style=\"min-height: 1px; float: left; width: 877.5px;\"><div class=\"container container-text\" style=\"padding: 0px; width: auto;\"><div class=\"csc-default\" style=\"margin-bottom: 40px;\"><a data-content-record=\"l10n_parent\" id=\"c5591\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; user-select: none; top: -126px; visibility: hidden; display: block; position: relative; border-top: 1px solid transparent; margin-bottom: -1px;\"></a><p class=\"bodytext\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\"><a href=\"https://pumps.netzsch.com/en/\" style=\"color: rgb(231, 121, 25); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\">NETZSCH&nbsp;</a>TORNADO<span style=\"position: relative; font-size: 13.5px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;industrial rotary lobe pumps are very versatile stand-alone equipment. They are used primarily in&nbsp;<a href=\"https://pumps.netzsch.com/en/applications-solutions/environment-energy/\" style=\"color: rgb(231, 121, 25); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\">environmental technology</a>&nbsp;and the&nbsp;<a href=\"https://pumps.netzsch.com/en/applications-solutions/chemical-pulp-paper/\" style=\"color: rgb(231, 121, 25); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\">chemical industry</a>&nbsp;for continuous and gentle conveyance of almost any substance while dosing in proportion to rotation speed.</span></p><p class=\"bodytext\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Their low space requirements and high power density are some of their most important advantages. The NETZSCH&nbsp;<a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/mobile/\" style=\"color: rgb(231, 121, 25); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none; font-weight: 700;\">TORNADO<span style=\"position: relative; font-size: 13.5px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Mobile</a>, a TORNADO<span style=\"position: relative; font-size: 13.5px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;rotary lobe pump mounted onto a trailer, is ideal for use in any disaster situation.</p><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">&nbsp;</p></div></div></div><div class=\"col-sm-3\" style=\"min-height: 1px; float: left; width: 292.5px;\"><div class=\"container container-nxyoutubedriver_teaser\" style=\"padding: 0px; width: auto;\"><div class=\"tile-video\" style=\"position: relative; margin-bottom: 30px; background: rgb(245, 245, 245); padding: 20px; min-height: 250px;\"><a href=\"https://www.youtube.com/watch?v=VqzNuvOQrc8\" title=\"TORNADO® Industrial Rotary Lobe Pump\" class=\"video-lightbox\" data-nxsecuredownload=\"pass-file-content\" target=\"_blank\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none; position: relative; display: block; overflow: hidden; margin-bottom: 20px;\"><div class=\"embed-responsive embed-responsive-16by9\" style=\"height: 0px; padding-bottom: 125.15px;\"><div class=\"embed-responsive-item embed-responsive-image\" style=\"height: 125.15px; width: 222.5px; background: url(&quot;https://i.ytimg.com/vi/VqzNuvOQrc8/maxresdefault.jpg&quot;) center center / cover no-repeat;\"></div></div></a><div class=\"caption\" style=\"margin: 0px -20px -20px; color: rgb(115, 115, 115); font-size: 15px; line-height: 1.5; border-top: 5px solid rgb(255, 255, 255); padding: 20px;\">TORNADO<span style=\"position: relative; font-size: 11.25px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Industrial Rotary Lobe Pump</div></div></div></div></div></div><div class=\"container container-text\" style=\"width: 1170px;\"><div class=\"csc-default\" style=\"margin-bottom: 40px;\"><a data-content-record=\"l10n_parent\" id=\"c323877\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; user-select: none; top: -126px; visibility: hidden; display: block; position: relative; border-top: 1px solid transparent; margin-bottom: -1px;\"></a><header class=\"csc-header-n3\"><h2 style=\"font-family: &quot;Frutiger Neue LT W06 Cond&quot;, Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif; line-height: 1.11765; color: inherit; margin-top: 30px; margin-bottom: 15px; font-size: 34px;\">Product Range of the TORNADO<span style=\"position: relative; font-size: 22.1px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Rotary Lobe Pumps</h2></header></div></div><div class=\"container container-4-column\" style=\"width: 1170px;\"><div class=\"row\"><div class=\"col-md-3 col-sm-6\" style=\"min-height: 1px; float: left; width: 292.5px;\"><div class=\"container container-nxnetzschproducts_product\" style=\"padding: 0px; width: auto;\"><div class=\"tile tile-image tile-teaser\" ng-init=\"open[\'9971-300466\'] = false;\" ng-class=\"{\'open\': open[\'9971-300466\']}\" style=\"position: relative; margin-bottom: 30px; max-width: 100%; transition: width 0.3s ease 0s;\"><div class=\"description\" style=\"padding: 55px 20px 20px; background-color: rgb(140, 140, 140); color: rgb(255, 255, 255); transition: transform 0.3s ease 0s, opacity 0.3s ease 0s; transform: scale(0); transform-origin: center bottom; opacity: 0; position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; line-height: 1.25; font-size: 16px;\"><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">The new design of the TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;T.Sano<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;rotary lobe pump plain has a completely smooth housing in comparison to the standard T.Sano<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>, which attracts barely any dirt or dust. &nbsp;The whole T.Sano<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;series are EHEDG-certifie</p></div></div></div><div class=\"container container-nxnetzschproducts_product\" style=\"padding: 0px; width: auto;\"><div class=\"tile tile-image tile-teaser\" ng-init=\"open[\'7491-224488\'] = false;\" ng-class=\"{\'open\': open[\'7491-224488\']}\" style=\"position: relative; margin-bottom: 30px; max-width: 100%; transition: width 0.3s ease 0s;\"><span class=\"caption\" style=\"display: block; margin-top: 0px; color: rgb(0, 113, 103); font-size: 16px; line-height: 22px; height: 156px; background-color: rgb(245, 245, 245); padding: 17px; font-weight: 700;\">TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Rotary Lobe Pump – special design for the petroleum ind</span><div class=\"description\" style=\"padding: 55px 20px 20px; background-color: rgb(140, 140, 140); color: rgb(255, 255, 255); transition: transform 0.3s ease 0s, opacity 0.3s ease 0s; transform: scale(0); transform-origin: center bottom; opacity: 0; position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; line-height: 1.25; font-size: 16px;\"><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">NETZSCH TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;rotary lobe pumps are used in the petroleum industry for the continuous, pressure-stable, gentle and low-pulsation conveyance of crude oil. The TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;is particularly well suited for running high capacities at medium pressures.</p></div></div></div></div><div class=\"col-md-3 col-sm-6\" style=\"min-height: 1px; float: left; width: 292.5px;\"><div class=\"container container-nxnetzschproducts_product\" style=\"padding: 0px; width: auto;\"><div class=\"tile tile-image tile-teaser\" ng-init=\"open[\'7487-224481\'] = false;\" ng-class=\"{\'open\': open[\'7487-224481\']}\" style=\"position: relative; margin-bottom: 30px; max-width: 100%; transition: width 0.3s ease 0s;\"><div class=\"description\" style=\"padding: 55px 20px 20px; background-color: rgb(140, 140, 140); color: rgb(255, 255, 255); transition: transform 0.3s ease 0s, opacity 0.3s ease 0s; transform: scale(0); transform-origin: center bottom; opacity: 0; position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; line-height: 1.25; font-size: 16px;\"><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">The TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;T2 rotary lobe pump is a positive displacement pump. The pumping action is generated by the contra-rotation of two rotors within the pump chamber which are synchronised externally. The media enters the pump chamber through the inlet port and is carried around the chamber by the rotors to the outlet port where it is discharged.</p></div><a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/t2/\" class=\"linkable\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\"></a></div></div></div><div class=\"col-md-3 col-sm-6\" style=\"min-height: 1px; float: left; width: 292.5px;\"><div class=\"container container-nxnetzschproducts_product\" style=\"padding: 0px; width: auto;\"><div class=\"tile tile-image tile-teaser\" ng-init=\"open[\'10006-294496\'] = false;\" ng-class=\"{\'open\': open[\'10006-294496\']}\" style=\"position: relative; margin-bottom: 30px; max-width: 100%; transition: width 0.3s ease 0s;\"><div class=\"toolbar toolbar-right toolbar-icons\" style=\"position: absolute; z-index: 10; right: 0px; top: 0px;\"><a class=\"fa fa-info-circle\" ng-click=\"open[\'10006-294496\'] = !open[\'10006-294496\']\" style=\"background-color: rgba(63, 63, 63, 0.6); color: rgb(255, 255, 255); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; user-select: none; display: block; font-weight: normal; font-stretch: normal; font-size: 20px; font-family: FontAwesome; width: 40px; height: 40px; float: left; padding: 10px; text-align: center; margin-left: 1px;\"></a><a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/t1/\" class=\"brand fa fa-angle-right\" style=\"background-color: rgba(0, 113, 103, 0.85); color: rgb(255, 255, 255); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none; display: block; font-weight: normal; font-stretch: normal; font-size: 37px; font-family: FontAwesome; width: 40px; height: 40px; float: left; padding: 1px 10px 10px; text-align: center; margin-left: 1px;\"></a></div><div class=\"image-container\" style=\"height: 0px; padding-bottom: 196.875px; position: relative;\"><div class=\"image\" style=\"display: flex; position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; background: rgb(245, 245, 245); height: 196.875px;\"><span class=\"image-background\" title=\"TORNADO® T1 Classic Rotary Lobe Pump\" style=\"display: block; width: 262.5px; height: 196.875px; background: url(&quot;https://d2brmtk65c6tyc.cloudfront.net/fileadmin/_processed_/5/2/csm_Tornado_T1_-_3_Gr%C3%B6%C3%9Fen_8cc7a09701.jpg&quot;) center center / contain no-repeat;\"></span></div></div><span class=\"caption\" style=\"display: block; margin-top: 0px; color: rgb(0, 113, 103); font-size: 16px; line-height: 22px; height: 156px; background-color: rgb(245, 245, 245); padding: 17px; font-weight: 700;\">TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;T1 Classic Rotary Lobe Pump</span><div class=\"description\" style=\"padding: 55px 20px 20px; background-color: rgb(140, 140, 140); color: rgb(255, 255, 255); transition: transform 0.3s ease 0s, opacity 0.3s ease 0s; transform: scale(0); transform-origin: center bottom; opacity: 0; position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; line-height: 1.25; font-size: 16px;\"><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">The TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;T1&nbsp;rotary lobe pump&nbsp;with its proven quality is a positive displacement pump. The pumping action is generated by the contra-rotation of two rotors within the pump chamber which are synchronised externally. The media enters the pump chamber through the inlet port and is carried around the chamber by the rotors to the outlet port where it is discharged.</p></div><a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/t1/\" class=\"linkable\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\"></a></div></div></div><div class=\"col-md-3 col-sm-6\" style=\"min-height: 1px; float: left; width: 292.5px;\"><div class=\"container container-nxnetzschproducts_product\" style=\"padding: 0px; width: auto;\"><div class=\"tile tile-image tile-teaser\" ng-init=\"open[\'7488-224483\'] = false;\" ng-class=\"{\'open\': open[\'7488-224483\']}\" style=\"position: relative; margin-bottom: 30px; max-width: 100%; transition: width 0.3s ease 0s;\"><div class=\"toolbar toolbar-right toolbar-icons\" style=\"position: absolute; z-index: 10; right: 0px; top: 0px;\"><a class=\"fa fa-info-circle\" ng-click=\"open[\'7488-224483\'] = !open[\'7488-224483\']\" style=\"background-color: rgba(63, 63, 63, 0.6); color: rgb(255, 255, 255); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; user-select: none; display: block; font-weight: normal; font-stretch: normal; font-size: 20px; font-family: FontAwesome; width: 40px; height: 40px; float: left; padding: 10px; text-align: center; margin-left: 1px;\"></a><a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/mobile/\" class=\"brand fa fa-angle-right\" style=\"background-color: rgba(0, 113, 103, 0.85); color: rgb(255, 255, 255); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none; display: block; font-weight: normal; font-stretch: normal; font-size: 37px; font-family: FontAwesome; width: 40px; height: 40px; float: left; padding: 1px 10px 10px; text-align: center; margin-left: 1px;\"></a></div><div class=\"image-container\" style=\"height: 0px; padding-bottom: 196.875px; position: relative;\"><div class=\"image\" style=\"display: flex; position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; background: rgb(245, 245, 245); height: 196.875px;\"><span class=\"image-background\" title=\"The NETZSCH TORNADO® Mobile\" style=\"display: block; width: 262.5px; height: 196.875px; background: url(&quot;https://d2brmtk65c6tyc.cloudfront.net/fileadmin/_processed_/2/7/csm_NPS_Tornado_Mobile_Teaser_Web_cbc4b7a391.jpg&quot;) center center / contain no-repeat;\"></span></div></div><span class=\"caption\" style=\"display: block; margin-top: 0px; color: rgb(0, 113, 103); font-size: 16px; line-height: 22px; height: 156px; background-color: rgb(245, 245, 245); padding: 17px; font-weight: 700;\">The NETZSCH TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Mobile</span><div class=\"description\" style=\"padding: 55px 20px 20px; background-color: rgb(140, 140, 140); color: rgb(255, 255, 255); transition: transform 0.3s ease 0s, opacity 0.3s ease 0s; transform: scale(0); transform-origin: center bottom; opacity: 0; position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; line-height: 1.25; font-size: 16px;\"><p class=\"bodytext\" style=\"margin-right: 0px; margin-left: 0px;\">A TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;rotary lobe pump fastened onto a mobile base – this is the NETZSCH TORNADO<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em; font-family: Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif;\">®</span>&nbsp;Mobile. The concept of mounting the equipment onto a car or truck trailer makes it possible to pump large quantities of fluids with solid content, wastewater and slurries at the most unusual of sites.</p></div><a href=\"https://pumps.netzsch.com/en/products-accessories/tornado-rotary-lobe-pump/mobile/\" class=\"linkable\" style=\"color: rgb(0, 113, 103); transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1) 0s; cursor: pointer; user-select: none;\"></a></div></div></div></div></div></div><section-menu data-type=\"sticky\" class=\"ng-isolate-scope\"></section-menu></section><div class=\"cookie-warning ng-isolate-scope\" cookie-warning=\"cookie-warning\" data-href=\"/en/footer/legal/data-protection-policy/\" data-ok=\"OK\" data-additional-infos=\"Additional Information\" style=\"background-color: rgb(240, 240, 240); position: fixed; bottom: 0px; z-index: 9999; width: 1481.6px; padding: 20px 10px; height: auto; display: flex; flex-direction: column; justify-content: center; color: rgb(63, 63, 63); font-family: &quot;Frutiger Neue LT W06&quot;, Arial, Helvetica, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\"><div ng-class=\"{hidden: !visible, visible: visible}\" class=\"hide-me visible\"><div class=\"container\" style=\"width: 1170px;\"><div class=\"row\"><div ng-transclude=\"\"><p class=\"ng-scope\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">We use cookies to personalize content and ads, provide social media feature</p></div></div></div></div></div>', NULL, '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 16px; color: rgb(0, 0, 0); line-height: 26px; font-family: Arial, Helvetica, sans-serif; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 16px; color: rgb(0, 0, 0); line-height: 26px; font-family: Arial, Helvetica, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 40, NULL, NULL, NULL, 0, '40 Days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-09-02 07:38:35', '2021-07-26 06:00:37', 0, NULL, NULL, NULL, 0, 0),
(209, 'YIP96027ng', NULL, NULL, NULL, 'normal', NULL, 13, 9, 42, NULL, NULL, 'Netch Motor', 'netch-motor-yip96027ng', '159911970602dQFnip.jpg', '15991197061crvHEUT.jpg', NULL, 'KG', '86', '0', NULL, 50000, 0, 'Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates vv<br>', NULL, 'Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;Munir Associates&nbsp;<br>', 1, 49, NULL, NULL, NULL, 0, '40 Days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-09-03 06:55:05', '2021-07-15 11:19:38', 0, NULL, NULL, NULL, 0, 0),
(210, '6ES7AA8BBAO', 'NORD', 'GERMANY', 'JH90KU', 'normal', NULL, 27, 4, 22, NULL, '{\"warranty_type\":{\"values\":[\"international manufacturer warranty\"],\"prices\":[\"0\"],\"details_status\":1}}', 'Electric Motor', 'electric-motor-6es7aa8bbao', '15998172010IbY1ijN.jpg', '1599817201ep01IvCW.jpg', NULL, NULL, NULL, NULL, NULL, 650000, 0, 'Electric Motor<div>P/N:&nbsp;6ES7AA8BBAO</div><div>230kW, 220AC, 4 pole</div><div>Make: Flender<br><div><br></div></div>', 1, '<br>', 1, 22, NULL, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-09-11 08:40:00', '2021-07-15 10:28:15', 0, NULL, NULL, NULL, 1, 0),
(211, '2.2-500kW', NULL, NULL, NULL, 'normal', NULL, 27, 1, 1, NULL, NULL, 'Compressor', 'compressor-2.2-500kw', '1599824533PHsJuim6.jpg', '1599824534UqWzr6Dd.jpg', NULL, NULL, NULL, NULL, NULL, 1065000, 0, '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px; font-size: 18px; line-height: 1.5em; overflow-wrap: break-word; color: rgb(13, 13, 13); font-family: &quot;Source Sans Pro&quot;, helvetica, arial, sans-serif;\">The main benefit of rotary screw compressors is the energy efficiency. But this type of compressor has many other benefits. These include:<br style=\"box-sizing: inherit;\"></p><ul style=\"box-sizing: inherit; margin: 0rem 0px 1rem; padding: 0px; font-size: 18px; line-height: 1.5em; list-style: none; overflow: hidden; color: rgb(13, 13, 13); font-family: &quot;Source Sans Pro&quot;, helvetica, arial, sans-serif;\"><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">low noise output</li><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">small footprint for point-of-use installations</li><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">no duty cycle</li><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">continuous operation at temperatures of up to 46 degrees C</li><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">low oil-carryover (as little as 3 ppm) in oil lubricated machines</li><li style=\"box-sizing: inherit; position: relative; padding-left: 0.75rem; padding-right: 0rem;\">zero loss of capacity over time</li></ul><span style=\"color: rgb(13, 13, 13); font-family: &quot;Source Sans Pro&quot;, helvetica, arial, sans-serif; font-size: 18px;\">The installation footprint can be further reduced with \"full-feature\" variants. Such machines have an integrated refrigerant dryer (dewpoint at compressor output of +4°C).</span><br>', 2, '<br>', 1, 14, NULL, NULL, NULL, 2, '5 - 10 working days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-09-11 10:42:13', '2021-07-15 11:02:51', 0, NULL, NULL, NULL, 0, 0),
(212, 'wk119849w3', NULL, NULL, NULL, 'normal', NULL, 13, 4, 21, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\"],\"prices\":[\"0\"],\"details_status\":1}}', 'Industrial Blower', 'industrial-blower-wk119849w3', '16024124261Py2BYqq.jpg', '16024124267Wa8fz2w.jpg', NULL, NULL, NULL, NULL, NULL, 45000, 0, '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10pt; font-family: &quot;Open Sans&quot;, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Dascon Construction Company was established in\r\n1979 with a vow for the drive &amp; commitment for the pursuit of excellence\r\nand absolute quality focused services in the field of Construction &amp;\r\nEngineering. Today; living up to the promise and commitment made over four\r\ndecades ago, DCC proudly stands as one of Pakistan’s leading Construction &amp;\r\nEngineering Service Providers.</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:&quot;Open Sans&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">Having successfully\r\nexecuted and handed over various commercial, residential, industrial, medical,\r\ninstitutional, iconic structures, steel fabricated structures, infrastructure\r\nand sensitive installation projects, DCC has become the ‘go-to’ construction\r\ncontractors for all developers, multi-national organizations / investors, large\r\nprominent group of companies to start-ups looking for cost effective yet\r\nquality driven construction and engineering services.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:&quot;Open Sans&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">By staying true to our core\r\nvalues, we have successfully forged exemplary business relationships built on\r\nstrong foundations of trust, integrity and our capability to outperform\r\ntargets. We believe in reinvesting in our teams, T&amp;P and technology to\r\ndeliver superior quality construction and engineering services to our treasured\r\nclients.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:10.0pt;\r\nfont-family:&quot;Open Sans&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:black\">The information systems and\r\nprocurement networks at DCC are constantly evolving to keep up to speed in this\r\nera of frequent technological advancements to operate anywhere within the\r\nCountry and to enable our clients to ultimately benefit from the broad\r\npractical experience, collective knowledge of the experienced professionals and\r\nvast procurement network of DCC.<o:p></o:p></span></p>', NULL, '<br>', 1, 67, 'Blower', NULL, NULL, 2, '45 Days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-10-11 09:33:46', '2021-07-20 09:53:57', 0, NULL, NULL, NULL, 0, 0),
(213, '9y14613iTX', NULL, NULL, NULL, 'normal', NULL, 0, 7, 33, NULL, NULL, 'Industrial Cutter', 'industrial-cutter-9y14613itx', '1604484892qEhlWu1y.png', '16044848922b8O8Mdx.jpg', NULL, 'KG', '1', '0', '#1c1919,#d6e35c,#e63d3d', 50000, 0, '<h3 style=\"margin-top: 21px; margin-bottom: 10.5px; font-weight: 900; line-height: 1em; font-size: 24px; color: rgb(0, 0, 0); font-family: NimbusSansLBCP, Helvetica, Arial, sans-serif; clear: both; letter-spacing: 0.02em; padding-top: inherit; background-color: rgb(246, 246, 246);\">NORD Helical Gear Units impress with outstanding features:</h3><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><ul class=\"liste\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.2em; max-width: 65rem; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Powerful</span><br>Our helical gear units provide a maximum torque of 26,000 Nm (as an&nbsp;<a href=\"https://www.nord.com/en/products/industrial-gear-units/maxxdrive-helical-inline-industrial-gear-units/maxxdrive-parallel-gear-unit.jsp\" style=\"color: rgb(50, 109, 157);\">Industrial gear unit</a>&nbsp;up to 282.000 Nm).</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Efficient</span><br>High efficiency increases the productivity of the application.</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Hygienic</span><br>NORD Helical Gear Units have wash-down capability thanks to their smooth surfaces.</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Robust</span><br>If required, we can treat NORDBLOC.1 Helical Geared Motors with nsd tupH Corrosion Protection, which also withstands aggressive cleaning agents.</li></ul><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">Always the right solution: Our Helical Geared Motors</span><br>No two applications are the same. Because of this, NORD supplies three different drive solutions with helical gear units. All variants are available as flange or foot/flange mounted versions.</p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">The all-rounder</span><br>Standard Helical Geared Motors have a wide range of uses and offer proven quality. This type of geared motor is available from NORD in six sizes, in two or three stage versions with torque ranges from 50 to 700 Nm. We produce the gear wheels for helical gear units from highly wear-resistant, case-hardened steels.</p>', NULL, '<h3 style=\"margin-top: 21px; margin-bottom: 10.5px; font-weight: 900; line-height: 1em; font-size: 24px; color: rgb(0, 0, 0); font-family: NimbusSansLBCP, Helvetica, Arial, sans-serif; clear: both; letter-spacing: 0.02em; padding-top: inherit; background-color: rgb(246, 246, 246);\">NORD Helical Gear Units impress with outstanding features:</h3><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><ul class=\"liste\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.2em; max-width: 65rem; color: rgb(49, 49, 49); font-family: sans-serif; font-size: 15px; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Powerful</span><br>Our helical gear units provide a maximum torque of 26,000 Nm (as an&nbsp;<a href=\"https://www.nord.com/en/products/industrial-gear-units/maxxdrive-helical-inline-industrial-gear-units/maxxdrive-parallel-gear-unit.jsp\" style=\"color: rgb(50, 109, 157);\">Industrial gear unit</a>&nbsp;up to 282.000 Nm).</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Efficient</span><br>High efficiency increases the productivity of the application.</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Hygienic</span><br>NORD Helical Gear Units have wash-down capability thanks to their smooth surfaces.</li><li style=\"list-style: none; padding: 0px;\"><span style=\"font-weight: 700;\">Robust</span><br>If required, we can treat NORDBLOC.1 Helical Geared Motors with nsd tupH Corrosion Protection, which also withstands aggressive cleaning agents.</li></ul><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">Always the right solution: Our Helical Geared Motors</span><br>No two applications are the same. Because of this, NORD supplies three different drive solutions with helical gear units. All variants are available as flange or foot/flange mounted versions.</p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; font-size: 15px; color: rgb(49, 49, 49); line-height: 26px; max-width: 65rem; font-family: sans-serif; letter-spacing: 0.375px; background-color: rgb(246, 246, 246);\"><span style=\"font-weight: 700;\">The all-rounder</span><br>Standard Helical Geared Motors have a wide range of uses and offer proven quality. This type of geared motor is available from NORD in six sizes, in two or three stage versions with torque ranges from 50 to 700 Nm. We produce the gear wheels for helical gear units from highly wear-resistant, case-hardened steels.</p>', 1, 31, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:14:52', '2021-07-29 21:54:01', 0, NULL, '200', '2', 0, 0);
INSERT INTO `products` (`id`, `sku`, `make`, `origin`, `part_no`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `admin_approved`, `admin_remarks`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(214, 'k3s5005igX', NULL, NULL, NULL, 'normal', NULL, 0, 7, 33, NULL, NULL, 'Misalignment Switch', 'misalignment-switch-k3s5005igx', '1604485531ub6gIf9g.png', '1604485531s1hhQfoO.jpg', NULL, '3x5x8 MM', '90', '0', '#f2c142', 15000, 22000, '<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0.0001pt 0.5in; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; text-indent: -0.25in;\"><b><span style=\"font-family: Arial, sans-serif;\">1.<span style=\"font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span></span></span></b><span style=\"font-family: Arial, sans-serif;\">PULL CARD SWITCH<span class=\"Apple-converted-space\">&nbsp;</span><br>WALL MOUNTED<br>&nbsp;BOTH SIDE SWITCH,<br><br><b>Model:&nbsp; ELAW 31</b><br><b>MAKE:</b><span class=\"Apple-converted-space\">&nbsp;</span><b>&nbsp;MITSUSHIMA JAPAN<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; text-indent: 0.5in;\"><b><span style=\"font-family: Arial, sans-serif;\">QTY: 06</span></b><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\"><o:p>&nbsp;</o:p></p>', NULL, '<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">If&nbsp;you suspect&nbsp;1 link has acted outside this Privacy<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Policy</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">, or your specific instructions, please contact our Relationship Officer.</span><br>', 1, 22, NULL, NULL, NULL, 2, '10 - 15 working days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:25:31', '2021-07-28 04:28:45', 0, NULL, '100', '10', 0, 0),
(215, 'apO5566cWO', NULL, NULL, NULL, 'normal', NULL, 0, 4, 19, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\"],\"prices\":[\"0\"],\"details_status\":1}}', 'Circuit Breaker', 'circuit-breaker-apo5566cwo', '1604485990I12gvoHD.png', '1604485990Uf3AQXIL.jpg', NULL, NULL, NULL, NULL, NULL, 8000, 0, '<p class=\"MsoPlainText\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Arial; text-size-adjust: auto; margin: 0in 0in 0pt;\"><font face=\"Courier New\"><span style=\"position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">MOTOR PROTECTION<span class=\"Apple-converted-space\">&nbsp;</span><span style=\"background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">CIRCUIT</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span>&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><o:p></o:p></font></p><p class=\"MsoPlainText\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Arial; text-size-adjust: auto; margin: 0in 0in 0pt;\"><font face=\"Courier New\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><span style=\"position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\"><span style=\"background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">BREAKER</span><span class=\"Apple-converted-space\">&nbsp;</span>TYPE:3RV2021-4DA15</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><o:p></o:p></font></p><p class=\"MsoPlainText\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Arial; text-size-adjust: auto; margin: 0in 0in 0pt;\"><font face=\"Courier New\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span>RANGE:18-25 AMP CLASS:10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><o:p></o:p></font></p><p class=\"MsoPlainText\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Arial; text-size-adjust: auto; margin: 0in 0in 0pt;\"><font face=\"Courier New\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span>AUX.CONTACT = 1NO+1NC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><o:p></o:p></font></p><p class=\"MsoPlainText\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Arial; text-size-adjust: auto; margin: 0in 0in 0pt;\"><font face=\"Courier New\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"Apple-converted-space\">&nbsp;</span><b><span style=\"font-size: 12pt;\">MAKE = SIEMENS<span class=\"Apple-converted-space\">&nbsp;</span></span></b><st1:country-region><st1:place><b><span style=\"font-size: 12pt;\">GERMANY</span></b></st1:place></st1:country-region></font></p>', 1000, '<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">At Office Shop we are committed&nbsp;to making sure&nbsp;the confidentiality and security of&nbsp;the data&nbsp;you provide to us. To&nbsp;go with&nbsp;legal requirements and to run our business effectively, from time to time&nbsp;it\'s&nbsp;necessary for us&nbsp;to gather&nbsp;certain personal information.&nbsp;this might&nbsp;include information&nbsp;like&nbsp;peoples’ names, job titles, addresses, contact details and credit card/bank account details. Additional information&nbsp;is also&nbsp;required&nbsp;looking on&nbsp;the character&nbsp;of your dealings with Office Shop. This Privacy<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Policy</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\"><span class=\"Apple-converted-space\">&nbsp;</span>explains how we manage your personal information in accordance with the Pakistani Privacy Principles&nbsp;within the&nbsp;Privacy Act. This Privacy<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Policy</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">&nbsp;could also be&nbsp;updated from time to time.</span><br>', 1, 23, NULL, NULL, NULL, 1, 'Same Day', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:33:10', '2021-07-20 21:54:37', 0, NULL, NULL, NULL, 0, 0),
(216, 'VZR6011fPb', NULL, NULL, NULL, 'normal', NULL, 0, 1, 2, NULL, NULL, 'Proximity Sensor', 'proximity-sensor-vzr6011fpb', '16044862457bRSPd5i.png', '1604486245YZ0xJJr9.jpg', NULL, NULL, NULL, NULL, NULL, 45000, 0, '<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 16px; text-size-adjust: auto;\">Inductive<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">proximity</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 16px; text-size-adjust: auto;\"><span class=\"Apple-converted-space\">&nbsp;</span>sensor, cylindrical, flush mountable, sensing distance 15mm,dia 30mm,supply voltage AC &amp; DC 24....240,material case nickel plated brass, Part No. XS630B1MAL2, Make: Telemecanique.</span><br>', 1, '<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">At Office Shop we are committed&nbsp;to making sure&nbsp;the confidentiality and security of&nbsp;the data&nbsp;you provide to us. To&nbsp;go with&nbsp;legal requirements and to run our business effectively, from time to time&nbsp;it\'s&nbsp;necessary for us&nbsp;to gather&nbsp;certain personal information.&nbsp;this might&nbsp;include information&nbsp;like&nbsp;peoples’ names, job titles, addresses, contact details and credit card/bank account details. Additional information&nbsp;is also&nbsp;required&nbsp;looking on&nbsp;the character&nbsp;of your dealings with Office Shop. This Privacy<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Policy</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\"><span class=\"Apple-converted-space\">&nbsp;</span>explains how we manage your personal information in accordance with the Pakistani Privacy Principles&nbsp;within the&nbsp;Privacy Act. This Privacy<span class=\"Apple-converted-space\">&nbsp;</span></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Policy</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Calibri, sans-serif; font-size: 14.6667px; text-size-adjust: auto;\">&nbsp;could also be&nbsp;updated from time to time.</span><br>', 1, 45, NULL, NULL, NULL, 2, '45 - 60 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:37:25', '2021-09-16 06:00:18', 0, NULL, NULL, NULL, 0, 0),
(217, 'IxH6987HiF', NULL, NULL, NULL, 'normal', NULL, 0, 6, 26, NULL, NULL, 'Variable displacement Pump', 'variable-displacement-pump-ixh6987hif', '1604487375yCiSi3SD.png', '1604487375jf2VzuL8.jpg', NULL, NULL, NULL, NULL, NULL, 475000, 0, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\">Variable displacement Pump<span class=\"Apple-converted-space\">&nbsp;</span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\">OEM Part No.1212021402<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\">Part# PVQ40AR01AB10G2100000200100CD0A<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\">Replaced type. PVQ40<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto;\"><span style=\"position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">Brand.<span class=\"Apple-converted-space\">&nbsp;</span><span style=\"background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">VICKERS</span></span></p>', 1, '<br>', 1, 33, NULL, NULL, NULL, 2, '4 months', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:56:15', '2021-07-26 12:35:04', 0, NULL, NULL, NULL, 0, 0),
(218, 'mVx7398Ria', 'test', 'Uk', '123', 'normal', NULL, 0, 7, 33, NULL, NULL, 'Pull Cord Switch', 'pull-cord-switch-mvx7398ria', '16044875552ZsgK4OH.png', '1604487555eZk2eHwg.jpg', NULL, NULL, NULL, NULL, NULL, 20000, 0, '<span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); text-size-adjust: auto; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-variant-caps: inherit !important; font-weight: inherit !important; background-color: rgb(255, 238, 148) !important; position: static !important; margin: 0px !important; padding: 0px !important; opacity: 1 !important; float: inherit !important; font-stretch: inherit !important; line-height: inherit !important;\">PULL</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 14.6667px;=\"\" text-size-adjust:=\"\" auto;\"=\"\"><span class=\"Apple-converted-space\">&nbsp;</span>CARD SWITCH SLAW-51P<span class=\"Apple-converted-space\">&nbsp;</span></span><br>', NULL, '<br>', 1, 31, NULL, NULL, NULL, 2, '20 - 25 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-04 10:59:15', '2021-09-14 08:04:21', 0, NULL, NULL, NULL, 0, 0),
(219, 'CcT86515vX', 'NORD', 'GERMANY', 'AB93032', 'normal', NULL, 0, 4, 17, NULL, NULL, 'Rotary Pump', 'rotary-pump-cct86515vx', '1604988816LZa9NvSk.png', '1604988817z3lWPxtd.jpg', NULL, NULL, NULL, NULL, NULL, 90000, 0, '<h1 style=\"margin: 0px; padding: 0px; font-size: 24px; line-height: 30px; font-weight: 800; color: rgb(26, 26, 26); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">Rotary pump</h1><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\"></p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">A positive displacement pump. For each revolution of the pump, a fixed volume of fluid is moved regardless of the resistance against which the pump is pushing. It is self-priming, and gives practically constant delivered capacity regardless of the pressure. The rotary pump consists of a fixed casing containing gears, cams, screws, plungers or similar elements actuated by rotation of the drive shaft. A number of pump types are included in this classification, among which are the&nbsp;<a href=\"http://www.wartsila.com/encyclopedia/term/gear-pump\" style=\"outline-style: initial; outline-width: 0px; display: inline; color: rgb(255, 115, 0); transition: color 0.3s linear 0s;\">gear pump</a>, the screw pump, and the rotary vane pump.</p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">Rotary pumps are useful for pumping oil and other liquids of high viscosity. In the engine room, rotary pumps are used for handling lube oil and fuel oil and are suitable for handling liquids over a wide range of viscosities. Rotary pumps are designed with very small clearances between rotating parts and stationary parts to minimize leakage (slippage) from the discharge side back to the suction side. Rotary pumps are designed to operate at relatively low speeds to maintain these clearances. The operation at higher speeds causes erosion and excessive wear which result in increased clearances with a subsequent decrease in pumping capacity. Classification of the rotary pumps is generally based on the types of rotating element.</p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">-&nbsp;<strong>Gear pump</strong>&nbsp;–&nbsp; The simple gear pump has two spur gears that mesh together and revolve in opposite directions. One is the driving gear, and the other is the driven gear. Clearances between the gear teeth (outside diameter of the gear) and the casing and between the end face and the casing are only a few thousandths of an inch. As the gears turn, they unmesh and liquid flows into the pockets that are vacated by the meshing gear teeth. This creates the suction that draws the liquid into the pump. The liquid is then carried along in the pockets formed by the gear teeth and the casing. On the discharge side, the liquid is displaced by the meshing of the gears and forced out through the discharge side of the pump.</p>', 1, '<h1 style=\"margin: 0px; padding: 0px; font-size: 24px; line-height: 30px; font-weight: 800; color: rgb(26, 26, 26); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">Rotary pump</h1><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\"></p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">A positive displacement pump. For each revolution of the pump, a fixed volume of fluid is moved regardless of the resistance against which the pump is pushing. It is self-priming, and gives practically constant delivered capacity regardless of the pressure. The rotary pump consists of a fixed casing containing gears, cams, screws, plungers or similar elements actuated by rotation of the drive shaft. A number of pump types are included in this classification, among which are the&nbsp;<a href=\"http://www.wartsila.com/encyclopedia/term/gear-pump\" style=\"outline-style: initial; outline-width: 0px; display: inline; color: rgb(255, 115, 0); transition: color 0.3s linear 0s;\">gear pump</a>, the screw pump, and the rotary vane pump.</p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">Rotary pumps are useful for pumping oil and other liquids of high viscosity. In the engine room, rotary pumps are used for handling lube oil and fuel oil and are suitable for handling liquids over a wide range of viscosities. Rotary pumps are designed with very small clearances between rotating parts and stationary parts to minimize leakage (slippage) from the discharge side back to the suction side. Rotary pumps are designed to operate at relatively low speeds to maintain these clearances. The operation at higher speeds causes erosion and excessive wear which result in increased clearances with a subsequent decrease in pumping capacity. Classification of the rotary pumps is generally based on the types of rotating element.</p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Verdana, sans-serif;\">-&nbsp;<strong>Gear pump</strong>&nbsp;–&nbsp; The simple gear pump has two spur gears that mesh together and revolve in opposite directions. One is the driving gear, and the other is the driven gear. Clearances between the gear teeth (outside diameter of the gear) and the casing and between the end face and the casing are only a few thousandths of an inch. As the gears turn, they unmesh and liquid flows into the pockets that are vacated by the meshing gear teeth. This creates the suction that draws the liquid into the pump. The liquid is then carried along in the pockets formed by the gear teeth and the casing. On the discharge side, the liquid is displaced by the meshing of the gears and forced out through the discharge side of the pump.</p>', 1, 40, NULL, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-10 06:13:36', '2021-07-15 10:15:35', 0, NULL, NULL, NULL, 0, 0),
(220, 'McV9604fg5', 'OXYGEN', 'GERMANY', 'POL9393', 'normal', NULL, 34, 4, NULL, NULL, NULL, 'Proximity Sensor', 'proximity-sensor-mcv9604fg5', '1604990105wMRdp8mB.jpg', '1604990105lfmsGODG.jpg', NULL, NULL, NULL, NULL, NULL, 50000, 0, '<div class=\"column1\" style=\"float: left; clear: none; width: 680px; margin: 15px 0px 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><div class=\"positionleft\" id=\"1\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline1\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.9792px;\">What Is a Proximity Sensor?</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">\"Proximity Sensor\" includes all sensors that perform non-contact detection in comparison to sensors, such as limit switches, that detect objects by physically contacting them.&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;convert information on the movement or presence of an object into an electrical signal. There are three types of detection systems that do this conversion: systems that use the eddy currents that are generated in metallic sensing objects by electromagnetic induction, systems that detect changes in electrical capacity when approaching the sensing object, and systems that use magnets and reed switches.<br>The Japanese Industrial Standards (JIS) define&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;in JIS C 8201-5-2 (Low-voltage switchgear and controlgear, Part 5: Control circuit devices and switching elements, Section 2: Proximity switches), which conforms to the IEC 60947-5-2 definition of non-contact position detection switches.<br>JIS gives the generic name \"proximity switch\" to all sensors that provide non-contact detection of target objects that are close by or within the general vicinity of the sensor, and classifies them as inductive, capacitive, ultrasonic, photoelectric, magnetic, etc.<br>This Technical Explanation defines all inductive sensors that are used for detecting metallic objects, capacitive sensors that are used for detecting metallic or non-metallic objects, and sensors that utilize magnetic DC fields as&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>.</p></div></div><div class=\"top-page-link-area\" style=\"color: rgb(85, 85, 85); font-family: Arial, sans-serif; font-size: 12px; line-height: 1.4; clear: both;\"><ul class=\"top-page-link\" style=\"margin: 1.64em 18px 0px; padding: 0px; text-align: right; font-size: 9.48px; line-height: 1.36;\"><li style=\"margin: 0px; padding: 0px; display: inline;\"><a href=\"http://www.ia.omron.com/support/guide/41/introduction.html#page-top\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(134, 143, 202);\"><img height=\"8\" width=\"5\" class=\"iconB01\" alt=\"\" src=\"http://www.ia.omron.com/common/img/icon_03.gif\" style=\"margin: 0px 4px 0px 0px; padding: 0px; border-width: initial; border-color: initial; border-image: initial;\">Top of page</a></li></ul></div><div class=\"column1\" style=\"float: left; clear: none; width: 680px; margin: 15px 0px 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><div class=\"positionleft\" id=\"2\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline1\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.9792px;\">Features</strong></p></div></div><div class=\"column1\" style=\"float: left; clear: none; width: 680px; margin: 15px 0px 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><div class=\"positionleft\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">1.&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;detect an object without touching it, and they therefore do not cause abrasion or damage to the object.</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">Devices such as limit switches detect an object by contacting it, but&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;are able to detect the presence of the object electrically, without having to touch it.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">2. No contacts are used for output, so the Sensor has a longer service life (excluding sensors that use magnets).</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;use semiconductor outputs, so there are no contacts to affect the service life.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">3. Unlike optical detection methods,&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;are suitable for use in locations where water or oil is used.</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">Detection takes place with almost no effect from dirt, oil, or water on the object being detected. Models with fluororesin cases are also available for excellent chemical resistance.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">4.&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;provide high-speed response, compared with switches that require physical contact.</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">For information on high-speed response, refer to Explanation of Terms.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">5.&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;can be used in a wide temperature range.</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;can be used in temperatures ranging from -40 to 200°C.</p></div></div>', NULL, '<div class=\"column1\" style=\"float: left; clear: none; width: 680px; margin: 15px 0px 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><div class=\"positionleft\" id=\"3\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline1\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.9792px;\">Operating Principles</strong></p></div></div><div class=\"column1\" style=\"float: left; clear: none; width: 680px; margin: 15px 0px 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><div class=\"positionleft\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">Detection Principle of Inductive Proximity Sensors</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">Inductive&nbsp;<a href=\"http://www.ia.omron.com/support/glossary/atoz/178/index.html\" class=\"term\" title=\"Proximity Sensors - Glossary of Industrial Automation\" style=\"color: rgb(134, 143, 202);\">Proximity Sensors</a>&nbsp;detect magnetic loss due to eddy currents that are generated on a conductive surface by an external magnetic field. An AC magnetic field is generated on the detection coil, and changes in the impedance due to eddy currents generated on a metallic object are detected.<br>Other methods include Aluminum-detecting Sensors, which detect the phase component of the frequency, and All-metal Sensors, which use a working coil to detect only the changed component of the impedance. There are also Pulse-response Sensors, which generate an eddy current in pulses and detect the time change in the eddy current with the voltage induced in the coil.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\"><strong class=\"headline2\" style=\"margin: 0px; padding: 0px 0px 5px; font-weight: bold; display: block; line-height: 1.4; font-size: 12.48px;\">(Qualitative Explanation)</strong></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; line-height: 1.4; font-family: Arial, sans-serif; font-size: 12.48px; color: rgb(85, 85, 85);\">The sensing object and Sensor form what appears to be a transformer-like relationship.</p><div class=\"img\" style=\"margin: 0px; padding: 0px 0px 15px;\"><img src=\"http://www.ia.omron.com/support/guide/41/img/intro_1.gif\" alt=\"\" style=\"border-width: initial; border-color: initial; border-image: initial;\"></div></div></div>', 1, 30, NULL, NULL, NULL, 0, '23', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-11-10 06:35:05', '2021-09-16 10:39:40', 0, NULL, NULL, NULL, 0, 0),
(221, 'hCl6508N7p', 'testss', 'Uk', '123ss', 'normal', NULL, 42, 1, 1, NULL, NULL, 'Muhammad Awais Ullah', 'muhammad-awais-ullah-hcl6508n7p', '16056102191hIq4f9E.jpg', '1605610219H7WVDN7M.jpg', NULL, NULL, NULL, NULL, NULL, 111, 111, '111111111', 111, '111111111', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, '111111111111111111111', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2020-11-15 21:43:11', '2021-08-06 02:20:17', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `make`, `origin`, `part_no`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `admin_approved`, `admin_remarks`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(222, 'U2L8216KNR', 'Check', 'GERMANY', 'AB9303232', 'normal', NULL, 34, 18, NULL, NULL, '{\"demo\":{\"values\":[\"demo 1\"],\"prices\":[\"0\"],\"details_status\":1}}', 'Heat Sink', 'heat-sink-u2l8216knr', '1605538394b5RQVeHq.jpg', '1605538394hac9f5Pp.jpg', NULL, NULL, NULL, NULL, NULL, 9000, 70000, '<div role=\"note\" class=\"hatnote navigation-not-searchable\" style=\"font-style: italic; padding-left: 1.6em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">This article is about components used to cool electronics. For other uses, see&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_sink_(disambiguation)\" class=\"mw-disambig\" title=\"Heat sink (disambiguation)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Heat sink (disambiguation)</a>.</div><div class=\"thumb tright\" style=\"margin: 0.5em 0px 1.3em 1.4em; width: auto; clear: right; float: right; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"min-width: 100px; border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 332px;\"><a href=\"https://en.wikipedia.org/wiki/File:AMD_heatsink_and_fan.jpg\" class=\"image\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/330px-AMD_heatsink_and_fan.jpg\" decoding=\"async\" width=\"330\" height=\"220\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/495px-AMD_heatsink_and_fan.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/660px-AMD_heatsink_and_fan.jpg 2x\" data-file-width=\"1600\" data-file-height=\"1067\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://en.wikipedia.org/wiki/File:AMD_heatsink_and_fan.jpg\" class=\"internal\" title=\"Enlarge\" style=\"color: rgb(11, 0, 128); background-image: linear-gradient(transparent, transparent), url(&quot;/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e&quot;); background-position-x: initial, initial; background-position-y: initial, initial; background-size: initial, initial; background-repeat: repeat, repeat; background-attachment: initial, initial; background-origin: initial, initial; background-clip: initial, initial; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>A&nbsp;<a href=\"https://en.wikipedia.org/wiki/Air_cooling\" title=\"Air cooling\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fan-cooled</a>&nbsp;heat sink on the processor of a personal computer. To the right is a smaller heat sink cooling&nbsp;<a href=\"https://en.wikipedia.org/wiki/Northbridge_(computing)\" title=\"Northbridge (computing)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">another integrated circuit</a>&nbsp;of the motherboard.</div></div></div><div class=\"thumb tright\" style=\"margin: 0.5em 0px 1.3em 1.4em; width: auto; clear: right; float: right; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"min-width: 100px; border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 332px;\"><a href=\"https://en.wikipedia.org/wiki/File:Laptop_Heatsink.jpg\" class=\"image\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/330px-Laptop_Heatsink.jpg\" decoding=\"async\" width=\"330\" height=\"220\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/495px-Laptop_Heatsink.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/660px-Laptop_Heatsink.jpg 2x\" data-file-width=\"6000\" data-file-height=\"4000\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://en.wikipedia.org/wiki/File:Laptop_Heatsink.jpg\" class=\"internal\" title=\"Enlarge\" style=\"color: rgb(11, 0, 128); background-image: linear-gradient(transparent, transparent), url(&quot;/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e&quot;); background-position-x: initial, initial; background-position-y: initial, initial; background-size: initial, initial; background-repeat: repeat, repeat; background-attachment: initial, initial; background-origin: initial, initial; background-clip: initial, initial; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>Typical heatsink-fan combination found on a consumer laptop. The heatpipes which contain a working fluid make direct contact with the CPU and GPU, conducting heat away from the component and transferring it to the fin-stack mounted on the exhaust port of the cooling fan. The fin-stack acts as a fluid-to-fluid&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_exchanger\" title=\"Heat exchanger\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat exchanger</a>&nbsp;transferring thermal energy from the working fluid within the heatpipe(s) to ambient air at dead-state condition.</div></div></div><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A&nbsp;<b>heat sink</b>&nbsp;(also commonly spelled&nbsp;<b>heatsink</b><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Heat_sink#cite_note-1\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>) is a passive&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_exchanger\" title=\"Heat exchanger\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat exchanger</a>&nbsp;that transfers the heat generated by an electronic or a mechanical device to a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fluid\" title=\"Fluid\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fluid</a>&nbsp;medium, often air or a liquid coolant, where it is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_management_(electronics)\" title=\"Thermal management (electronics)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dissipated</a>&nbsp;away from the device, thereby allowing regulation of the device\'s temperature. In computers, heat sinks are used to cool&nbsp;<a href=\"https://en.wikipedia.org/wiki/Central_processing_unit\" title=\"Central processing unit\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CPUs</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Graphics_processing_unit\" title=\"Graphics processing unit\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">GPUs</a>, and some chipsets and RAM modules. Heat sinks are used with high-power semiconductor devices such as power&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transistor\" title=\"Transistor\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">transistors</a>&nbsp;and optoelectronics such as lasers and light emitting diodes (LEDs), where the heat dissipation ability of the component itself is insufficient to moderate its temperature.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A heat sink is designed to maximize its surface area in contact with the cooling medium surrounding it, such as the air. Air velocity, choice of material, protrusion design and surface treatment are factors that affect the performance of a heat sink. Heat sink attachment methods and thermal interface materials also affect the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Die_(integrated_circuit)\" title=\"Die (integrated circuit)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">die</a>&nbsp;temperature of the integrated circuit.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_adhesive\" title=\"Thermal adhesive\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Thermal adhesive</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_paste\" title=\"Thermal paste\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">thermal paste</a>&nbsp;improve the heat sink\'s performance by filling air gaps between the heat sink and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_spreader\" title=\"Heat spreader\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat spreader</a>&nbsp;on the device. A heat sink is usually made out of aluminium or copper.</p>', 44, '<div role=\"note\" class=\"hatnote navigation-not-searchable\" style=\"font-style: italic; padding-left: 1.6em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">This article is about components used to cool electronics. For other uses, see&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_sink_(disambiguation)\" class=\"mw-disambig\" title=\"Heat sink (disambiguation)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Heat sink (disambiguation)</a>.</div><div class=\"thumb tright\" style=\"margin: 0.5em 0px 1.3em 1.4em; width: auto; clear: right; float: right; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"min-width: 100px; border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 332px;\"><a href=\"https://en.wikipedia.org/wiki/File:AMD_heatsink_and_fan.jpg\" class=\"image\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/330px-AMD_heatsink_and_fan.jpg\" decoding=\"async\" width=\"330\" height=\"220\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/495px-AMD_heatsink_and_fan.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/25/AMD_heatsink_and_fan.jpg/660px-AMD_heatsink_and_fan.jpg 2x\" data-file-width=\"1600\" data-file-height=\"1067\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://en.wikipedia.org/wiki/File:AMD_heatsink_and_fan.jpg\" class=\"internal\" title=\"Enlarge\" style=\"color: rgb(11, 0, 128); background-image: linear-gradient(transparent, transparent), url(&quot;/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e&quot;); background-position-x: initial, initial; background-position-y: initial, initial; background-size: initial, initial; background-repeat: repeat, repeat; background-attachment: initial, initial; background-origin: initial, initial; background-clip: initial, initial; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>A&nbsp;<a href=\"https://en.wikipedia.org/wiki/Air_cooling\" title=\"Air cooling\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fan-cooled</a>&nbsp;heat sink on the processor of a personal computer. To the right is a smaller heat sink cooling&nbsp;<a href=\"https://en.wikipedia.org/wiki/Northbridge_(computing)\" title=\"Northbridge (computing)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">another integrated circuit</a>&nbsp;of the motherboard.</div></div></div><div class=\"thumb tright\" style=\"margin: 0.5em 0px 1.3em 1.4em; width: auto; clear: right; float: right; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"min-width: 100px; border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 332px;\"><a href=\"https://en.wikipedia.org/wiki/File:Laptop_Heatsink.jpg\" class=\"image\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/330px-Laptop_Heatsink.jpg\" decoding=\"async\" width=\"330\" height=\"220\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/495px-Laptop_Heatsink.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laptop_Heatsink.jpg/660px-Laptop_Heatsink.jpg 2x\" data-file-width=\"6000\" data-file-height=\"4000\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://en.wikipedia.org/wiki/File:Laptop_Heatsink.jpg\" class=\"internal\" title=\"Enlarge\" style=\"color: rgb(11, 0, 128); background-image: linear-gradient(transparent, transparent), url(&quot;/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e&quot;); background-position-x: initial, initial; background-position-y: initial, initial; background-size: initial, initial; background-repeat: repeat, repeat; background-attachment: initial, initial; background-origin: initial, initial; background-clip: initial, initial; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>Typical heatsink-fan combination found on a consumer laptop. The heatpipes which contain a working fluid make direct contact with the CPU and GPU, conducting heat away from the component and transferring it to the fin-stack mounted on the exhaust port of the cooling fan. The fin-stack acts as a fluid-to-fluid&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_exchanger\" title=\"Heat exchanger\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat exchanger</a>&nbsp;transferring thermal energy from the working fluid within the heatpipe(s) to ambient air at dead-state condition.</div></div></div><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A&nbsp;<b>heat sink</b>&nbsp;(also commonly spelled&nbsp;<b>heatsink</b><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Heat_sink#cite_note-1\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>) is a passive&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_exchanger\" title=\"Heat exchanger\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat exchanger</a>&nbsp;that transfers the heat generated by an electronic or a mechanical device to a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fluid\" title=\"Fluid\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fluid</a>&nbsp;medium, often air or a liquid coolant, where it is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_management_(electronics)\" title=\"Thermal management (electronics)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dissipated</a>&nbsp;away from the device, thereby allowing regulation of the device\'s temperature. In computers, heat sinks are used to cool&nbsp;<a href=\"https://en.wikipedia.org/wiki/Central_processing_unit\" title=\"Central processing unit\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CPUs</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Graphics_processing_unit\" title=\"Graphics processing unit\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">GPUs</a>, and some chipsets and RAM modules. Heat sinks are used with high-power semiconductor devices such as power&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transistor\" title=\"Transistor\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">transistors</a>&nbsp;and optoelectronics such as lasers and light emitting diodes (LEDs), where the heat dissipation ability of the component itself is insufficient to moderate its temperature.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A heat sink is designed to maximize its surface area in contact with the cooling medium surrounding it, such as the air. Air velocity, choice of material, protrusion design and surface treatment are factors that affect the performance of a heat sink. Heat sink attachment methods and thermal interface materials also affect the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Die_(integrated_circuit)\" title=\"Die (integrated circuit)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">die</a>&nbsp;temperature of the integrated circuit.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_adhesive\" title=\"Thermal adhesive\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Thermal adhesive</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Thermal_paste\" title=\"Thermal paste\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">thermal paste</a>&nbsp;improve the heat sink\'s performance by filling air gaps between the heat sink and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heat_spreader\" title=\"Heat spreader\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heat spreader</a>&nbsp;on the device. A heat sink is usually made out of aluminium or copper.</p>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'picture quality poor', '2020-11-16 14:53:14', '2020-11-16 14:54:52', 0, NULL, NULL, NULL, 0, 0),
(223, 'HSQ24906jI', 'INDIGO', 'GERMANY', '97320942', 'normal', NULL, 34, 2, NULL, NULL, NULL, 'Industrial Lighter', 'industrial-lighter-hsq24906ji', '1605692848wbhAE7AM.jpg', '1605692848KQey5wwe.jpg', NULL, NULL, NULL, NULL, NULL, 50000, 60000, '<h1 data-buy-box-listing-title=\"\" data-listing-id=\"526394187\" class=\"wt-text-body-03 wt-line-height-tight wt-break-word wt-mb-xs-1\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; font-family: Guardian-EgypTT, serif; letter-spacing: 0.35px; font-size: 26px; line-height: 32px; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); margin-bottom: 6px !important; word-break: break-word !important; overflow-wrap: break-word !important;\">NGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy Zippo</h1>', 0, '<h1 data-buy-box-listing-title=\"\" data-listing-id=\"526394187\" class=\"wt-text-body-03 wt-line-height-tight wt-break-word wt-mb-xs-1\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; font-family: Guardian-EgypTT, serif; letter-spacing: 0.35px; font-size: 26px; line-height: 32px; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); margin-bottom: 6px !important; word-break: break-word !important; overflow-wrap: break-word !important;\">NGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy ZippoNGRAVED LIGHTER Dundee Advertising ONYX Oil Refinery Abilene Texas Man Cave Garage Industrial Gas Oil Barn Farm Rodeo Ranch Cowboy Zippo</h1>', 0, 27, NULL, NULL, NULL, 2, '30 Days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2021-08-25 08:44:06', '2021-08-29 15:45:55', 0, NULL, NULL, NULL, 0, 0),
(224, 'y8w6539dCI', 'Pakistan', '11111', 'test', 'normal', NULL, 45, 1, 1, NULL, NULL, 'Shahryar Baig', 'shahryar-baig-y8w6539dci', '1617087675tySOrrXN.jpg', '1617087675MYX0H410.jpg', NULL, NULL, NULL, NULL, NULL, 11111, 11111, '111111', 111106, '111111', 1, 45, 'out of order', 'test,blah,blag', '#e07878,#db1212,#000000', 0, NULL, 0, NULL, NULL, '11111111', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 0, 0, 1, 'Approved by Admin.', '2021-08-23 17:36:27', '2021-09-17 04:18:35', 0, NULL, NULL, NULL, 0, 0),
(225, 'fhg816443N', 'pak', 'pak', '121', 'normal', NULL, 47, 18, NULL, NULL, '{\"demo\":{\"values\":[\"demo 1\",\"demo 2\"],\"prices\":[\"0\",\"0\"],\"details_status\":1}}', 'my rpoduct', 'my-rpoduct-fhg816443n', '1617620368rA3nx4Jy.jpg', '1617620368EgkGAbur.jpg', NULL, NULL, NULL, NULL, NULL, 2000, 0, '<br>', 4, '<br>', 0, 24, 'sale,discount', 'Sale', '#e60000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2021-04-05 09:59:27', '2021-07-02 07:04:42', 0, NULL, NULL, NULL, 0, 0),
(226, NULL, 'pak', 'pak', '01', 'normal', NULL, 50, 1, NULL, NULL, NULL, 'image', 'image-xjb226m9a', '1617707848nYQYBicO.jpg', '1617707848anKiB3OU.jpg', '1617707848Free-Simple-Fresher-Resume-Template-Word.zip', NULL, NULL, NULL, NULL, 30, 50, 'our product', NULL, '<br>', 1, 25, 'sale', 'sale', '#ff0000', 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2021-04-06 10:17:28', '2021-07-31 02:05:20', 0, NULL, NULL, NULL, 0, 0),
(228, 'Eqy64112IC', NULL, NULL, NULL, 'affiliate', 'http://1linkindustry.com/item/my-rpoduct-fhg816443n', 0, 1, 72, 1, NULL, 'affiliate product', 'affiliate-product-eqy64112ic', '1618216539rEwA9XNE.png', '1618216539oaMNTlDI.jpg', NULL, NULL, NULL, NULL, NULL, 10000, 0, '<br>', 10, '<br>', 1, 19, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2021-04-12 07:35:39', '2021-07-15 10:02:39', 0, NULL, NULL, NULL, 0, 0),
(231, 'X424060JSW', 'SPUR', 'Chinese', '123456', 'normal', NULL, 53, 20, NULL, NULL, NULL, 'Gears', 'gears-x424060jsw', '1624354396EhsbOrfV.jpg', '1624354396Qcl4kqFD.jpg', NULL, NULL, NULL, NULL, NULL, 10000, 10000, '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">A gearmotor, also called a&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">gear motor</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;or a geared&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">motor</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, is a combination of a&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">gear</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;system or&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">gearbox</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and an electric&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">motor</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. ... Sometimes inaccurately called “</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">gears motors</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">,” or even geared&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">motors</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, gearmotors generally combine an efficient&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">motor</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, such as an Electrically Commutated&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Motor</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, with a&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">gear</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;reducer or gearhead.</span>', 995, 'Return only acceptable if product delivered wrong. Return should be made within 10 days of delivery.', 0, 1, 'Mechanical gears,gears,motor gears,spurs gears', 'Gears', '#000000', 2, '20 days', 0, 'mechanical,gears,motor gears,mechanical gears,spurs gears', 'Industrial and Mechanical gear suppliers, supplying to the Pakistani industries for over 2 decades.', NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'Approved by Admin.', '2021-06-16 08:06:59', '2021-09-15 04:04:54', 0, NULL, '100', '5', 0, 0),
(232, 'H2r509487f', '2020', 'Pakistan', '12345678', 'normal', NULL, 53, 18, NULL, NULL, NULL, 'Switch Switch', 'switch-switch-h2r509487f', '16244259400XYkrK8Z.jpg', '1624425940yt9PJCBR.jpg', NULL, NULL, NULL, NULL, '#0a1d61,#961717,#000000', 150, 0, 'Good switches&nbsp;', 2500, '7 Day Return', 0, 0, 'Switches', 'Switches,Fans', '#9c4949,#8f6f6f', 2, NULL, 0, 'Switches 101,Switches,Fan Switches,Light Switches,Breaker', 'Looking for good quality durable switches? You just came to the right place!', NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2021-09-03 04:25:40', '2021-09-15 04:04:51', 0, NULL, '1000', '8', 0, 0),
(233, 'NTP9492nzu', 'Test123', 'Test123', 'Test123', 'normal', NULL, 0, 1, 72, 1, '{\"display_size\":{\"values\":[\"40\"],\"prices\":[\"10\"],\"details_status\":1}}', 'Test123', 'test123-ntp9492nzu', '1631089856femz8OIC.png', '1631089857xZ4BDdUR.jpg', NULL, NULL, NULL, NULL, NULL, 1000, 20, 'Test desc', 20, NULL, 1, 0, 'test,123test', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2021-09-08 15:30:56', '2021-09-08 15:30:57', 0, NULL, NULL, NULL, 0, 0),
(234, '8IR0230qjz', 'Globe Valve Overlay', 'China', '123', 'normal', NULL, 76, 11, 50, NULL, NULL, 'Valve', 'valve-8ir0230qjz', '1631770894Ba2Nr0A2.jpg', '1631770894GxY3si2Q.jpg', NULL, NULL, NULL, NULL, NULL, 500, 0, 'CHINESE VALVE. OEM&nbsp;', 10, NULL, 1, 0, 'VALVE,BALLVALE,CHINESE,OEM,ORIGINAL,BLUE,VALVES', 'CHINESE', '#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Approved by Admin.', '2021-09-16 04:41:34', '2021-09-16 04:43:21', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(6, 95, '2020-01-23'),
(29, 95, '2020-07-17'),
(30, 95, '2020-08-31'),
(31, 95, '2020-09-01'),
(32, 95, '2020-09-01'),
(33, 95, '2020-09-02'),
(34, 95, '2020-09-02'),
(35, 208, '2020-09-02'),
(36, 208, '2020-09-02'),
(37, 208, '2020-09-02'),
(38, 208, '2020-09-02'),
(39, 208, '2020-09-02'),
(40, 208, '2020-09-02'),
(41, 208, '2020-09-02'),
(42, 95, '2020-09-02'),
(43, 208, '2020-09-02'),
(44, 208, '2020-09-02'),
(45, 208, '2020-09-03'),
(46, 209, '2020-09-03'),
(47, 209, '2020-09-03'),
(48, 209, '2020-09-03'),
(49, 95, '2020-09-03'),
(50, 95, '2020-09-03'),
(51, 95, '2020-09-03'),
(52, 95, '2020-09-03'),
(53, 95, '2020-09-03'),
(54, 95, '2020-09-03'),
(55, 95, '2020-09-03'),
(56, 95, '2020-09-03'),
(57, 95, '2020-09-03'),
(58, 95, '2020-09-04'),
(59, 95, '2020-09-04'),
(60, 95, '2020-09-04'),
(61, 95, '2020-09-04'),
(62, 95, '2020-09-04'),
(63, 95, '2020-09-04'),
(64, 208, '2020-09-04'),
(65, 95, '2020-09-04'),
(66, 209, '2020-09-04'),
(67, 95, '2020-09-04'),
(68, 95, '2020-09-04'),
(69, 209, '2020-09-04'),
(70, 208, '2020-09-04'),
(71, 209, '2020-09-04'),
(72, 209, '2020-09-04'),
(73, 209, '2020-09-04'),
(74, 209, '2020-09-04'),
(75, 209, '2020-09-04'),
(76, 209, '2020-09-04'),
(77, 209, '2020-09-04'),
(78, 209, '2020-09-04'),
(79, 208, '2020-09-11'),
(80, 208, '2020-09-11'),
(81, 209, '2020-09-11'),
(82, 208, '2020-09-11'),
(83, 209, '2020-09-11'),
(84, 210, '2020-09-11'),
(85, 95, '2020-09-12'),
(86, 209, '2020-09-22'),
(87, 209, '2020-09-23'),
(88, 211, '2020-09-26'),
(89, 211, '2020-09-26'),
(90, 211, '2020-09-26'),
(91, 211, '2020-09-26'),
(92, 211, '2020-09-26'),
(93, 208, '2020-10-10'),
(94, 119, '2020-10-10'),
(95, 119, '2020-10-10'),
(96, 209, '2020-10-11'),
(97, 209, '2020-10-11'),
(98, 209, '2020-10-11'),
(99, 209, '2020-10-11'),
(100, 209, '2020-10-11'),
(101, 209, '2020-10-11'),
(102, 209, '2020-10-11'),
(103, 209, '2020-10-11'),
(104, 209, '2020-10-11'),
(105, 209, '2020-10-11'),
(106, 121, '2020-10-11'),
(107, 212, '2020-10-11'),
(108, 212, '2020-10-11'),
(109, 212, '2020-10-11'),
(110, 212, '2020-10-11'),
(111, 212, '2020-10-11'),
(112, 212, '2020-10-11'),
(113, 212, '2020-10-11'),
(114, 212, '2020-10-11'),
(115, 212, '2020-10-11'),
(116, 212, '2020-10-11'),
(117, 212, '2020-10-11'),
(118, 212, '2020-10-11'),
(119, 212, '2020-10-11'),
(120, 119, '2020-10-11'),
(121, 212, '2020-10-11'),
(122, 212, '2020-10-11'),
(123, 212, '2020-10-11'),
(124, 212, '2020-10-11'),
(125, 212, '2020-10-11'),
(126, 212, '2020-10-11'),
(127, 212, '2020-10-11'),
(128, 212, '2020-10-11'),
(129, 212, '2020-10-11'),
(130, 212, '2020-10-11'),
(131, 212, '2020-10-11'),
(132, 212, '2020-10-11'),
(133, 212, '2020-10-11'),
(134, 212, '2020-10-11'),
(135, 212, '2020-10-12'),
(136, 119, '2020-10-12'),
(137, 212, '2020-10-12'),
(138, 212, '2020-10-12'),
(139, 212, '2020-10-12'),
(140, 212, '2020-10-12'),
(141, 212, '2020-10-12'),
(142, 212, '2020-10-12'),
(143, 212, '2020-10-12'),
(144, 212, '2020-10-12'),
(145, 208, '2020-10-13'),
(146, 212, '2020-10-13'),
(147, 212, '2020-10-13'),
(148, 208, '2020-11-03'),
(149, 119, '2020-11-03'),
(150, 119, '2020-11-03'),
(151, 212, '2020-11-04'),
(152, 119, '2020-11-04'),
(153, 210, '2020-11-04'),
(154, 212, '2020-11-04'),
(155, 212, '2020-11-04'),
(156, 212, '2020-11-04'),
(157, 122, '2020-11-04'),
(158, 212, '2020-11-04'),
(159, 122, '2020-11-04'),
(160, 213, '2020-11-04'),
(161, 213, '2020-11-04'),
(162, 210, '2020-11-04'),
(163, 215, '2020-11-04'),
(164, 209, '2020-11-04'),
(165, 216, '2020-11-04'),
(166, 212, '2020-11-04'),
(167, 212, '2020-11-04'),
(168, 217, '2020-11-04'),
(169, 217, '2020-11-07'),
(170, 218, '2020-11-09'),
(171, 217, '2020-11-09'),
(172, 120, '2020-11-09'),
(173, 218, '2020-11-09'),
(174, 120, '2020-11-09'),
(175, 218, '2020-11-09'),
(176, 218, '2020-11-09'),
(177, 120, '2020-11-09'),
(178, 218, '2020-11-09'),
(179, 218, '2020-11-09'),
(180, 218, '2020-11-09'),
(181, 218, '2020-11-09'),
(182, 216, '2020-11-09'),
(183, 218, '2020-11-09'),
(184, 219, '2020-11-10'),
(185, 219, '2020-11-10'),
(186, 219, '2020-11-10'),
(187, 219, '2020-11-10'),
(188, 220, '2020-11-10'),
(189, 221, '2020-11-15'),
(190, 208, '2020-11-17'),
(191, 220, '2020-11-17'),
(192, 208, '2020-11-17'),
(193, 216, '2020-11-17'),
(194, 219, '2020-11-17'),
(195, 218, '2020-11-17'),
(196, 216, '2020-11-17'),
(197, 216, '2020-11-17'),
(198, 220, '2020-11-18'),
(199, 220, '2020-11-18'),
(200, 220, '2020-11-18'),
(201, 221, '2020-11-18'),
(202, 223, '2020-11-19'),
(203, 223, '2020-12-14'),
(204, 216, '2020-12-18'),
(205, 219, '2020-12-19'),
(206, 216, '2020-12-20'),
(207, 219, '2020-12-22'),
(208, 216, '2021-01-03'),
(209, 213, '2021-01-07'),
(210, 212, '2021-01-09'),
(211, 209, '2021-01-09'),
(212, 223, '2021-01-09'),
(213, 220, '2021-01-10'),
(214, 215, '2021-01-10'),
(215, 214, '2021-01-10'),
(216, 217, '2021-01-10'),
(217, 219, '2021-01-10'),
(218, 208, '2021-01-11'),
(219, 218, '2021-01-11'),
(220, 212, '2021-01-12'),
(221, 209, '2021-01-12'),
(222, 215, '2021-01-13'),
(223, 217, '2021-01-13'),
(224, 219, '2021-01-13'),
(225, 216, '2021-01-20'),
(226, 223, '2021-01-20'),
(227, 219, '2021-01-20'),
(228, 220, '2021-01-20'),
(229, 215, '2021-01-20'),
(230, 212, '2021-01-20'),
(231, 217, '2021-01-20'),
(232, 218, '2021-01-20'),
(233, 214, '2021-01-20'),
(234, 213, '2021-01-20'),
(235, 209, '2021-01-20'),
(236, 208, '2021-01-20'),
(237, 211, '2021-01-20'),
(238, 210, '2021-01-20'),
(239, 216, '2021-01-20'),
(240, 223, '2021-01-20'),
(241, 220, '2021-01-20'),
(242, 219, '2021-01-20'),
(243, 215, '2021-01-20'),
(244, 212, '2021-01-20'),
(245, 217, '2021-01-20'),
(246, 218, '2021-01-20'),
(247, 214, '2021-01-20'),
(248, 213, '2021-01-20'),
(249, 209, '2021-01-20'),
(250, 208, '2021-01-20'),
(251, 211, '2021-01-20'),
(252, 210, '2021-01-20'),
(253, 216, '2021-01-21'),
(254, 213, '2021-01-22'),
(255, 209, '2021-01-24'),
(256, 214, '2021-01-25'),
(257, 208, '2021-01-25'),
(258, 209, '2021-01-25'),
(259, 212, '2021-01-25'),
(260, 219, '2021-01-25'),
(261, 215, '2021-01-25'),
(262, 216, '2021-01-25'),
(263, 213, '2021-01-25'),
(264, 217, '2021-01-25'),
(265, 220, '2021-01-25'),
(266, 211, '2021-01-25'),
(267, 213, '2021-01-25'),
(268, 210, '2021-01-26'),
(269, 223, '2021-01-27'),
(270, 220, '2021-01-27'),
(271, 220, '2021-01-30'),
(272, 215, '2021-01-30'),
(273, 208, '2021-01-31'),
(274, 218, '2021-02-01'),
(275, 217, '2021-02-03'),
(276, 216, '2021-02-07'),
(277, 216, '2021-02-08'),
(278, 216, '2021-02-10'),
(279, 219, '2021-02-12'),
(280, 219, '2021-02-14'),
(281, 219, '2021-02-20'),
(282, 213, '2021-02-20'),
(283, 210, '2021-02-20'),
(284, 209, '2021-02-21'),
(285, 212, '2021-02-22'),
(286, 209, '2021-02-22'),
(287, 216, '2021-02-23'),
(288, 213, '2021-02-24'),
(289, 212, '2021-02-25'),
(290, 219, '2021-02-26'),
(291, 215, '2021-02-28'),
(292, 214, '2021-03-01'),
(293, 223, '2021-03-01'),
(294, 223, '2021-03-02'),
(295, 215, '2021-03-03'),
(296, 214, '2021-03-03'),
(297, 219, '2021-03-04'),
(298, 215, '2021-03-04'),
(299, 218, '2021-03-04'),
(300, 212, '2021-03-05'),
(301, 208, '2021-03-07'),
(302, 218, '2021-03-07'),
(303, 220, '2021-03-08'),
(304, 217, '2021-03-09'),
(305, 208, '2021-03-10'),
(306, 216, '2021-03-11'),
(307, 220, '2021-03-11'),
(308, 219, '2021-03-12'),
(309, 216, '2021-03-13'),
(310, 219, '2021-03-20'),
(311, 219, '2021-03-23'),
(312, 209, '2021-03-25'),
(313, 219, '2021-03-26'),
(314, 210, '2021-03-30'),
(315, 224, '2021-03-30'),
(316, 224, '2021-03-30'),
(317, 224, '2021-03-30'),
(318, 223, '2021-03-30'),
(319, 223, '2021-03-30'),
(320, 216, '2021-03-30'),
(321, 218, '2021-03-30'),
(322, 223, '2021-03-30'),
(323, 220, '2021-03-30'),
(324, 212, '2021-03-30'),
(325, 223, '2021-03-31'),
(326, 213, '2021-04-01'),
(327, 217, '2021-04-01'),
(328, 224, '2021-04-03'),
(329, 216, '2021-04-03'),
(330, 223, '2021-04-03'),
(331, 220, '2021-04-03'),
(332, 208, '2021-04-03'),
(333, 219, '2021-04-03'),
(334, 209, '2021-04-03'),
(335, 215, '2021-04-03'),
(336, 214, '2021-04-03'),
(337, 213, '2021-04-03'),
(338, 217, '2021-04-03'),
(339, 210, '2021-04-03'),
(340, 214, '2021-04-03'),
(341, 214, '2021-04-05'),
(342, 226, '2021-04-06'),
(343, 224, '2021-04-07'),
(344, 226, '2021-04-08'),
(345, 219, '2021-04-09'),
(346, 226, '2021-04-09'),
(347, 226, '2021-04-09'),
(348, 226, '2021-04-09'),
(349, 226, '2021-04-09'),
(350, 226, '2021-04-09'),
(351, 226, '2021-04-09'),
(352, 216, '2021-04-09'),
(353, 218, '2021-04-09'),
(354, 212, '2021-04-10'),
(355, 226, '2021-04-10'),
(356, 225, '2021-04-10'),
(357, 220, '2021-04-11'),
(358, 215, '2021-04-11'),
(359, 217, '2021-04-11'),
(360, 225, '2021-04-12'),
(361, 208, '2021-04-12'),
(362, 224, '2021-04-12'),
(363, 226, '2021-04-12'),
(364, 225, '2021-04-12'),
(365, 225, '2021-04-12'),
(366, 225, '2021-04-12'),
(367, 225, '2021-04-12'),
(368, 226, '2021-04-12'),
(369, 225, '2021-04-12'),
(371, 225, '2021-04-12'),
(372, 225, '2021-04-12'),
(373, 228, '2021-04-12'),
(374, 225, '2021-04-12'),
(375, 225, '2021-04-12'),
(376, 218, '2021-04-12'),
(377, 216, '2021-04-12'),
(378, 122, '2021-04-13'),
(379, 211, '2021-04-13'),
(380, 228, '2021-04-13'),
(381, 225, '2021-04-13'),
(382, 216, '2021-04-13'),
(383, 224, '2021-04-13'),
(384, 228, '2021-04-13'),
(385, 225, '2021-04-13'),
(386, 223, '2021-04-13'),
(387, 219, '2021-04-13'),
(388, 218, '2021-04-13'),
(389, 220, '2021-04-13'),
(390, 226, '2021-04-13'),
(391, 215, '2021-04-13'),
(392, 217, '2021-04-13'),
(393, 208, '2021-04-14'),
(394, 219, '2021-04-15'),
(395, 219, '2021-04-19'),
(396, 219, '2021-04-23'),
(397, 209, '2021-04-23'),
(398, 211, '2021-04-26'),
(399, 209, '2021-04-26'),
(400, 223, '2021-04-26'),
(401, 224, '2021-04-27'),
(402, 213, '2021-04-30'),
(403, 213, '2021-05-03'),
(404, 217, '2021-05-03'),
(405, 223, '2021-05-03'),
(406, 212, '2021-05-04'),
(407, 217, '2021-05-05'),
(408, 219, '2021-05-06'),
(409, 213, '2021-05-06'),
(410, 228, '2021-05-06'),
(411, 210, '2021-05-06'),
(412, 219, '2021-05-07'),
(413, 214, '2021-05-07'),
(414, 218, '2021-05-11'),
(415, 216, '2021-05-11'),
(416, 216, '2021-05-11'),
(417, 224, '2021-05-11'),
(418, 228, '2021-05-11'),
(419, 226, '2021-05-11'),
(420, 223, '2021-05-11'),
(421, 220, '2021-05-12'),
(422, 215, '2021-05-12'),
(423, 213, '2021-05-12'),
(424, 225, '2021-05-12'),
(425, 224, '2021-05-13'),
(426, 228, '2021-05-13'),
(427, 226, '2021-05-13'),
(428, 217, '2021-05-15'),
(429, 225, '2021-05-15'),
(430, 224, '2021-05-15'),
(431, 228, '2021-05-15'),
(432, 216, '2021-05-16'),
(433, 217, '2021-05-17'),
(434, 208, '2021-05-18'),
(435, 216, '2021-05-19'),
(436, 226, '2021-05-20'),
(437, 225, '2021-05-20'),
(438, 224, '2021-05-20'),
(439, 219, '2021-05-20'),
(440, 216, '2021-05-20'),
(441, 220, '2021-05-20'),
(442, 228, '2021-05-20'),
(443, 214, '2021-05-20'),
(444, 219, '2021-05-21'),
(445, 212, '2021-05-28'),
(446, 223, '2021-05-28'),
(447, 216, '2021-05-28'),
(448, 217, '2021-05-29'),
(449, 226, '2021-05-30'),
(450, 209, '2021-05-30'),
(451, 216, '2021-05-30'),
(452, 213, '2021-05-31'),
(453, 226, '2021-06-01'),
(454, 219, '2021-06-01'),
(455, 217, '2021-06-01'),
(456, 209, '2021-06-02'),
(457, 220, '2021-06-02'),
(458, 228, '2021-06-03'),
(459, 209, '2021-06-04'),
(460, 214, '2021-06-04'),
(461, 212, '2021-06-06'),
(462, 223, '2021-06-07'),
(463, 220, '2021-06-07'),
(464, 223, '2021-06-07'),
(465, 220, '2021-06-07'),
(466, 224, '2021-06-07'),
(467, 217, '2021-06-08'),
(468, 212, '2021-06-09'),
(469, 228, '2021-06-09'),
(470, 215, '2021-06-09'),
(471, 226, '2021-06-09'),
(472, 212, '2021-06-09'),
(473, 213, '2021-06-09'),
(474, 223, '2021-06-09'),
(475, 214, '2021-06-09'),
(476, 225, '2021-06-09'),
(477, 209, '2021-06-09'),
(478, 208, '2021-06-09'),
(479, 122, '2021-06-09'),
(480, 220, '2021-06-09'),
(481, 216, '2021-06-09'),
(482, 218, '2021-06-09'),
(483, 219, '2021-06-09'),
(484, 224, '2021-06-09'),
(485, 217, '2021-06-09'),
(486, 214, '2021-06-10'),
(487, 219, '2021-06-10'),
(488, 225, '2021-06-11'),
(489, 210, '2021-06-11'),
(490, 225, '2021-06-12'),
(491, 218, '2021-06-13'),
(492, 216, '2021-06-13'),
(493, 220, '2021-06-14'),
(494, 225, '2021-06-14'),
(495, 210, '2021-06-14'),
(496, 217, '2021-06-15'),
(497, 225, '2021-06-16'),
(498, 210, '2021-06-16'),
(499, 224, '2021-06-16'),
(500, 213, '2021-06-16'),
(501, 215, '2021-06-16'),
(502, 208, '2021-06-17'),
(503, 228, '2021-06-18'),
(504, 215, '2021-06-18'),
(505, 226, '2021-06-18'),
(506, 212, '2021-06-18'),
(507, 213, '2021-06-18'),
(508, 223, '2021-06-18'),
(509, 214, '2021-06-18'),
(510, 225, '2021-06-18'),
(511, 209, '2021-06-18'),
(512, 208, '2021-06-18'),
(513, 122, '2021-06-18'),
(514, 220, '2021-06-18'),
(515, 216, '2021-06-18'),
(516, 218, '2021-06-18'),
(517, 219, '2021-06-18'),
(518, 224, '2021-06-18'),
(519, 217, '2021-06-18'),
(520, 215, '2021-06-19'),
(521, 217, '2021-06-19'),
(522, 224, '2021-06-19'),
(523, 210, '2021-06-20'),
(524, 208, '2021-06-20'),
(525, 216, '2021-06-20'),
(526, 217, '2021-06-21'),
(527, 224, '2021-06-22'),
(528, 225, '2021-06-22'),
(529, 210, '2021-06-22'),
(530, 214, '2021-06-23'),
(531, 224, '2021-06-23'),
(532, 216, '2021-06-23'),
(533, 224, '2021-06-23'),
(534, 224, '2021-06-23'),
(535, 224, '2021-06-26'),
(536, 219, '2021-06-26'),
(537, 228, '2021-06-26'),
(538, 226, '2021-06-27'),
(539, 213, '2021-06-30'),
(540, 213, '2021-07-01'),
(541, 224, '2021-07-02'),
(542, 231, '2021-07-02'),
(543, 228, '2021-07-02'),
(544, 218, '2021-07-02'),
(545, 214, '2021-07-02'),
(546, 216, '2021-07-02'),
(547, 225, '2021-07-02'),
(548, 209, '2021-07-02'),
(549, 223, '2021-07-02'),
(550, 210, '2021-07-03'),
(551, 223, '2021-07-04'),
(552, 214, '2021-07-05'),
(553, 224, '2021-07-05'),
(554, 224, '2021-07-05'),
(555, 211, '2021-07-05'),
(556, 224, '2021-07-05'),
(557, 210, '2021-07-05'),
(558, 228, '2021-07-06'),
(559, 216, '2021-07-07'),
(560, 217, '2021-07-08'),
(561, 228, '2021-07-08'),
(562, 219, '2021-07-08'),
(563, 213, '2021-07-08'),
(564, 228, '2021-07-08'),
(565, 210, '2021-07-08'),
(566, 217, '2021-07-09'),
(567, 224, '2021-07-09'),
(568, 219, '2021-07-09'),
(569, 218, '2021-07-09'),
(570, 216, '2021-07-09'),
(571, 220, '2021-07-09'),
(572, 122, '2021-07-09'),
(573, 208, '2021-07-09'),
(574, 209, '2021-07-09'),
(575, 214, '2021-07-09'),
(576, 223, '2021-07-09'),
(577, 213, '2021-07-09'),
(578, 212, '2021-07-09'),
(579, 226, '2021-07-09'),
(580, 215, '2021-07-09'),
(581, 228, '2021-07-09'),
(582, 211, '2021-07-09'),
(583, 210, '2021-07-09'),
(584, 217, '2021-07-09'),
(585, 224, '2021-07-09'),
(586, 219, '2021-07-09'),
(587, 218, '2021-07-09'),
(588, 216, '2021-07-09'),
(589, 220, '2021-07-09'),
(590, 122, '2021-07-09'),
(591, 208, '2021-07-09'),
(592, 209, '2021-07-09'),
(593, 214, '2021-07-09'),
(594, 223, '2021-07-09'),
(595, 213, '2021-07-09'),
(596, 212, '2021-07-09'),
(597, 226, '2021-07-09'),
(598, 215, '2021-07-09'),
(599, 228, '2021-07-09'),
(600, 210, '2021-07-09'),
(601, 211, '2021-07-09'),
(602, 216, '2021-07-10'),
(603, 218, '2021-07-10'),
(604, 224, '2021-07-12'),
(605, 218, '2021-07-12'),
(606, 216, '2021-07-12'),
(607, 216, '2021-07-13'),
(608, 210, '2021-07-14'),
(609, 213, '2021-07-14'),
(610, 213, '2021-07-14'),
(611, 213, '2021-07-14'),
(612, 122, '2021-07-15'),
(613, 212, '2021-07-15'),
(614, 217, '2021-07-15'),
(615, 228, '2021-07-15'),
(616, 215, '2021-07-15'),
(617, 212, '2021-07-15'),
(618, 216, '2021-07-15'),
(619, 219, '2021-07-15'),
(620, 224, '2021-07-15'),
(621, 210, '2021-07-15'),
(622, 223, '2021-07-15'),
(623, 211, '2021-07-15'),
(624, 226, '2021-07-15'),
(625, 209, '2021-07-15'),
(626, 208, '2021-07-15'),
(627, 213, '2021-07-15'),
(628, 214, '2021-07-15'),
(629, 218, '2021-07-15'),
(630, 226, '2021-07-15'),
(631, 122, '2021-07-15'),
(632, 220, '2021-07-15'),
(633, 122, '2021-07-16'),
(634, 217, '2021-07-17'),
(635, 212, '2021-07-18'),
(636, 224, '2021-07-18'),
(637, 215, '2021-07-19'),
(638, 212, '2021-07-20'),
(639, 216, '2021-07-20'),
(640, 220, '2021-07-20'),
(641, 215, '2021-07-20'),
(642, 217, '2021-07-21'),
(643, 224, '2021-07-23'),
(644, 208, '2021-07-24'),
(645, 122, '2021-07-24'),
(646, 224, '2021-07-26'),
(647, 208, '2021-07-26'),
(648, 217, '2021-07-26'),
(649, 214, '2021-07-28'),
(650, 213, '2021-07-28'),
(651, 122, '2021-07-29'),
(652, 213, '2021-07-29'),
(653, 226, '2021-07-31'),
(654, 224, '2021-09-13'),
(655, 224, '2021-09-13'),
(656, 224, '2021-09-14'),
(657, 218, '2021-09-14'),
(658, 122, '2021-09-15'),
(659, 224, '2021-09-15'),
(660, 224, '2021-09-15'),
(661, 224, '2021-09-15'),
(662, 224, '2021-09-15'),
(663, 224, '2021-09-15'),
(664, 224, '2021-09-16'),
(665, 224, '2021-09-16'),
(666, 216, '2021-09-16'),
(667, 224, '2021-09-16'),
(668, 220, '2021-09-16'),
(669, 224, '2021-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 35, 1, 'dasda', '2020-10-11 12:32:29', '2020-10-11 12:32:29'),
(2, 35, 1, 'dsada', '2020-10-11 12:32:33', '2020-10-11 12:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers'),
(19, 'OTC', 'orders , products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , manage_staffs'),
(20, 'OTC', 'orders , products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , payment_settings , manage_staffs'),
(21, 'Test OTC', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , manage_staffs , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', '0nelink,1link industry, process industry ,');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1571288944s1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1571288950s2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1571288955s3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1571288959s4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1571457250s1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1571457257s2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1571457261s3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1571457265s4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'TCS', '(5 - 6 days)', 1000),
(3, 0, 'Through Special Vehicle', '(1-2) Days', 4500),
(4, 76, 'Express Shipping', '5 days', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(10, NULL, '24', '#c32d2d', 'slideInUp', NULL, '60', '#bc2727', 'slideInDown', NULL, '16', '#31766f', 'slideInLeft', '1593614004Slider1920x800.jpg', 'slide-one', 'https://www.google.com/'),
(11, 'My product', '15', '#f21515', 'slideInDown', 'my title', '18', '#3afdff', 'flipInX', 'this is my description', '10', '#000000', 'fadeInLeft', '1618226026WhatsApp Image 2021-04-05 at 3.53.48 PM.jpeg', 'slide-two', 'google.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 0, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/upgraded/kingcommerce-new/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/upgraded/kingcommerce-new/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(1, 1, 'Flow, Pressure and Level Measurement', 'Measuring-and-Leveling', 1),
(2, 1, 'Temperature and Humidity Measurement', 'Temperature-and-Humidity-Measurement', 1),
(3, 1, 'Position, Speed and Acceleration Measurement', 'MEASUREments', 1),
(4, 1, 'Force Measurement', 'force-measurements', 1),
(5, 1, 'Optical and Acoustic Measurement', 'optical-and-acoustic-measurement', 1),
(6, 1, 'Electrical Measurement', 'electrical-measurement', 1),
(7, 2, 'Analytical Instrumentation', 'analytical-instrumentation', 1),
(8, 2, 'Metrology and Test Equipment', 'eetrology-and-test-equipment', 1),
(9, 2, 'Inspection and Monitoring', 'inspection-and-monitoring', 1),
(10, 2, 'Laboratory Equipment', 'laboratory-equipment', 1),
(11, 2, 'Optical Components', 'optical-components', 1),
(12, 3, 'AUTOMATION', 'automation', 1),
(13, 3, 'INDUSTRIAL ROBOTICS', 'industrial-robotics', 1),
(14, 3, 'SERVICE ROBOTICS', 'service-robotics', 1),
(15, 3, 'INDUSTRIAL COMPUTING', 'industrial-computing', 1),
(16, 3, 'INDUSTRIAL SOFTWARE', 'industrial-software', 1),
(17, 4, 'ENERGY: PRODUCTION AND DISTRIBUTION', 'production-and-distribution', 1),
(18, 4, 'POWER SUPPLIES', 'power-supplies', 1),
(19, 4, 'SWITCHES AND RELAYS', 'switches-and-relays', 1),
(20, 4, 'CABLES, CONNECTORS, ENCLOSURES', 'Cables-Connectors-Enclosure', 1),
(21, 4, 'ELECTRONIC COMPONENTS', 'electronic-components', 1),
(22, 4, 'MOTORS AND MOTOR CONTROL', 'motors-and-motor-control', 1),
(23, 4, 'BEARINGS AND LINEAR GUIDES', 'bearings-and-linear-guides', 1),
(24, 4, 'MECHANICAL TRANSMISSION', 'mechanical-transmission', 1),
(25, 4, 'ACTUATORS AND POSITIONING SYSTEMS', 'actuators-and-positioning-systems', 1),
(26, 6, 'Pumps', 'pumps', 1),
(27, 6, 'COMPRESSORS', 'compressors', 1),
(28, 6, 'VALVES', 'valves', 1),
(29, 6, 'PIPES, TUBES AND FITTINGS', 'pipes-tubes-fittings', 1),
(30, 6, 'FILTERS AND SEPARATORS', 'filters----separators', 1),
(31, 7, 'SEMI-FINISHED PRODUCTS', 'semi-finished-products', 1),
(32, 7, 'LUBRICATION', 'lubrication', 1),
(33, 7, 'HAND TOOLS, POWER TOOLS', 'hand-tool-power-tools', 1),
(34, 7, 'AUTOMOTIVE MAINTENANCE EQUIPMENT', 'automotive-maintenance-equipment', 1),
(35, 7, 'STANDARD MECHANICAL COMPONENTS', 'standard-mechanical-components', 1),
(36, 8, 'PLASTIC PROCESSING', 'plastic-processing', 1),
(37, 8, 'METALWORKING', 'metalworking', 1),
(38, 8, 'SURFACE TREATMENT', 'surface-treatment', 1),
(39, 9, 'MACHINING CENTERS', 'machining-centers', 1),
(40, 9, 'FINISHING MACHINES', 'finishing-machines', 1),
(41, 9, 'CUTTING TOOLS', 'cutting-tools', 1),
(42, 9, 'MACHINE TOOL ACCESSORIES', 'machine-tool-accessories', 1),
(43, 10, 'ADDITIVE MANUFACTURING, 3D PRINTING', 'additive-manufacturing-3d-printing', 1),
(44, 10, 'CUTTING MACHINES', 'cutting-machines', 1),
(45, 10, 'FORMING MACHINES', 'forming-machines', 1),
(46, 10, 'PLASTIC PROCESSING', 'plastic-processing', 1),
(47, 10, 'TEXTILE MACHINERY', 'textile-machinery', 1),
(48, 11, 'SURFACE TREATMENT EQUIPMENT', 'surface-treatment-equipment', 1),
(49, 11, 'WELDING AND ASSEMBLY', 'welding-and-assembly', 1),
(50, 11, 'PRINTING, MARKING AND ENGRAVING', 'printing-marking-and-engraving', 1),
(51, 11, 'MIXING AND DOSING', 'mixing-and-dosing', 1),
(52, 12, 'MEAT PROCESSING', 'meat-processing', 1),
(53, 12, 'FISH PROCESSING', 'fish-processing', 1),
(54, 12, 'FRUIT AND VEGETABLE PROCESSING', 'fruit-and-vegetable-processing', 1),
(55, 12, 'GRAIN PROCESSING AND PASTA MAKING', 'grain-processing-and-pasta-making', 1),
(56, 12, 'DAIRY PROCESSING', 'dairy-processing', 1),
(57, 12, 'BAKERY-PASTRY', 'bakery-pastry', 1),
(58, 12, 'OTHER FOOD MACHINERY', 'other-food-machinery', 1),
(59, 13, 'PACKING AND PACKAGING', 'packing-and-packaging', 1),
(60, 13, 'HANDLING AND LIFTING', 'handling-and-lifting', 1),
(61, 13, 'CONVEYING', 'conveying', 1),
(62, 13, 'STORAGE', 'storage', 1),
(63, 14, 'AIR TREATMENT AND NOISE MANAGEMENT', 'air-treatment-and-noise-management', 1),
(64, 14, 'WATER TREATMENT', 'water-treatment', 1),
(65, 14, 'WASTE TREATMENT', 'waste-treatment', 1),
(66, 14, 'PERSONAL PROTECTIVE EQUIPMENT', 'personal-protective-equipment', 1),
(67, 14, 'BUILDING SECURITY AND MACHINE SAFETY', 'building-security-and-machine-safety', 1),
(68, 15, 'INDUSTRIAL BUILDING EQUIPMENT', 'industrial-building-equipment', 1),
(69, 15, 'CONSTRUCTION AND MINING EQUIPMENT', 'construction-and-mining-equipment', 1),
(70, 15, 'PRODUCTION OF BUILDING MATERIALS', 'production-of-building-materials', 1),
(71, 15, 'CONSTRUCTION TOOLS', 'construction-tools', 1),
(72, 1, 'level', 'level', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'Sonya89@hotmail.com'),
(2, 'redskin9814@gmail.com'),
(3, 'matson.allie@gmail.com'),
(4, 'dhaval.patel2@dell.com'),
(5, 'terrencewright327@gmail.com'),
(6, 'nick@elegantthemes.com'),
(7, '1betterdaytoday@gmail.com'),
(8, 'cheekybuoy@gmail.com'),
(9, 'mikealzaga@yahoo.com'),
(10, 'sandrine.bejaud@gmail.com'),
(11, 'kees@amalphi.de'),
(12, 'haban_dennise@yahoo.com'),
(13, 'pbalmeda@yahoo.com'),
(14, 'dennismbrown@gmail.com'),
(15, 'rseravalle97@gmail.com'),
(16, 'mattw@premier-mfg.com'),
(17, 'kellysimmons77@gmail.com'),
(18, 'info@pro-digno.de'),
(19, 'just4today777@gmail.com'),
(20, 'joosoony621@me.com'),
(21, 'paula.salu@providence.org'),
(22, 'shel.b_lynne@yahoo.com'),
(23, 'ntprestonp@aol.com'),
(24, 'donaldr107@googlemail.com'),
(25, 'asm350@uowmail.edu.au'),
(26, 'joevcochrane@gmail.com'),
(27, 'janno.jogeva@ut.ee'),
(28, 'vinmassa@hotmail.com'),
(29, 'gypsum.operations@gmail.com'),
(30, 'cthomas7919@icloud.com'),
(31, 'Skyla.Beier@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'PKR', 60, 45, 25, '<ol><li>dash dash dash dash dash</li><li>dash dash dash dash dash</li><li>dash dash dash dash dash</li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(9, 'Free Basic', 'Free', '1122', 1122, 30, 300, 'its free for 30 days'),
(10, 'gold', 'pkr', 'pkr', 5000, 25, 0, 'this is a gold subscription');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 13, 'p466552VgR', 100, 0x24, 'USD', 1, NULL, NULL, 'test', 'plus', '2020-01-27 03:15:52', '2020-01-27 03:15:52'),
(2, 13, 'SdE5131709', 2596, 0x5273, 'PKR', 1, 'Stripe', 'txn_1Hb2ZkJlIV5dN9n7hj877szL', 'Payment Deposit', 'plus', '2020-10-11 10:18:51', '2020-10-11 10:18:51'),
(3, 36, 'bah2026sIx', 10000, 0x5273, 'PKR', 1, 'Stripe', 'txn_1HbPBGJlIV5dN9n7Ea7FlgLC', 'Payment Deposit', 'plus', '2020-10-12 10:27:06', '2020-10-12 10:27:06'),
(4, 37, 'Nfc03651RO', 900000, 0x5273, 'PKR', 1, 'Stripe', 'txn_1HbjYoJlIV5dN9n7aUq1jvNf', 'Payment Deposit', 'plus', '2020-10-13 08:12:45', '2020-10-13 08:12:45'),
(5, 46, 'h5U65628MV', 64, 0x5273, 'PKR', 1, NULL, NULL, 'subscription', 'plus', '2021-03-30 05:42:42', '2021-03-30 05:42:42'),
(6, 50, '5Vb5040HQS', 500, 0x5273, 'PKR', 1, NULL, NULL, 'deposit', 'plus', '2021-04-07 07:44:00', '2021-04-07 07:44:00'),
(7, 50, 'gq77723Smz', 100000, 0x5273, 'PKR', 1, 'Stripe', 'txn_1IfIwyJlIV5dN9n7xRLw8VZm', 'Payment Deposit', 'plus', '2021-04-12 05:08:43', '2021-04-12 05:08:43'),
(8, 51, 'tjp3380jtr', 20000, 0x5273, 'PKR', 1, 'Stripe', 'txn_1IfhpoJlIV5dN9n7L8KP2BeQ', 'Payment Deposit', 'plus', '2021-04-13 07:43:00', '2021-04-13 07:43:00'),
(9, 53, 'hSM6402h8L', 1000000, 0x5273, 'PKR', 1, NULL, NULL, 'ABC TESTING FUNDS', 'plus', '2021-06-14 03:53:22', '2021-06-14 03:53:22'),
(10, 54, 'qOr5437V8Y', 10000000, 0x5273, 'PKR', 1, NULL, NULL, 'TESTING', 'plus', '2021-06-17 09:23:57', '2021-06-17 09:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `dob`, `gender`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`) VALUES
(13, 'Vendor', NULL, NULL, NULL, NULL, '1557677677bouquet_PNG62.png', '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'epkB7f7tdu3bVFqZl3chGy25FABv290ThwBDjTXWXFm1doChPAUSqVtJSaBK', '2021-09-11 17:05:44', '2021-09-13 08:28:16', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5020.799999999999, 'Satco', 'MR Ali', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', '<br>', '16025855661.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 139368.02, '2020-07-11', 0, 2795.79),
(22, 'User', NULL, NULL, NULL, NULL, NULL, '1231', 'Test City', 'Pakistan', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 's3VWT6FmPY1lLbYHd7crHwt6kjniwYaijW3AZhdAlju8rYCsl2qP1iXeA5Hi', '2021-09-01 12:26:24', '2020-05-28 04:21:08', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4963.6900000000005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 127674.18),
(27, 'Test User', NULL, NULL, NULL, NULL, NULL, '1234', 'Test City', 'United Kingdom', 'UN', 'Space Needle 400 Broad St, Seattles', '34534534', '34534534', 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', '5rREGbTPIx0SjpANXe55S6KrbNEE6OPtXTbbB1EuhzhVGMRhaJuqNZALQUDB', '2019-10-05 04:15:08', '2020-10-05 07:16:26', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-11-24', 0, 10000.00),
(28, 'User', NULL, NULL, NULL, NULL, NULL, '1234', 'Test City', 'Algeria', 'UN', NULL, '34534534', '034534534', 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2020-01-12 01:36:05', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 9000.00),
(30, 'ayesha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'IT Tower, Office # 19, 2nd Floor, Hali Rd, Block E 1 Gulberg III, Lahore, Punjab 54660', '03324740308', NULL, 'anaya@activehousetech.com', '$2y$10$JPZ1WD6N02gcdcdYDgidFeVRa5TjlWqKWfB.hCUzzO33FCn1n9VvO', '5qAzQ3iN9Y7ErIbugQDIolrGGf1d6n4vB6nuNDwQR1rX6cOJUCZv2oaJWjkG', '2020-09-02 07:42:23', '2020-09-02 07:42:23', 0, 0, '2fa79e5d9f3def0c2fca815c68a36e20', 'Yes', '601cc33ad17bfc3fa3b397d5ecbe6a5f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(31, 'kohat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kohat pakistan', '03324740308', NULL, 'kohat@gmail.com', '$2y$10$SRg.3VEYkzgPrhh7HgEMvOsQ7vQ5ouVO1t12sRq6tpD6qK.mWAJ02', '8kmVb96CSahbvv9K5UGCLKohDXBZ5NE0qtsVxo02SkV4rEmnNVVCU8BaBevU', '2020-09-03 06:50:03', '2020-09-11 10:26:49', 0, 0, 'e779876a47c4808ad8a3c2049fb284c8', 'Yes', '25d8e4f4083c518038a6f136e2aacb6c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(32, 'faisal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kohat pakistan', '03324740308', NULL, 'info@activehousetech.com', '$2y$10$mJLynFg2.qx1Qgm/7n7sEe8pR2BGTC8t9BWeHaGgZyHfWl4dla.ay', NULL, '2020-09-26 15:07:45', '2020-10-05 07:16:19', 0, 0, '441faf8574a501d5b2d9e1e4c9c98211', 'Yes', 'afaf66b7e3c5031f653909bce7e1c2bb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(33, 'Active house', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multan pakistan', '03324740308', NULL, 'info@activehousetech.com.pk', '$2y$10$sT7SOjEiBshcd3jdOE1jvepIZsTTJbrnOpc/BDauVxW7Gc0iTI.d2', 'Dl71F4hJVpNV2h78l1wjgW2DQfbShniP6Tn7LqBoPEsmsgMVmTJl9BHXlyIj', '2020-10-05 07:17:30', '2020-10-11 09:25:07', 0, 0, '00c093c589c816bf89881ff19ce6d60f', 'Yes', '9389e667d7234983f5b057e0eaccddaf', 0, 'Munir Associates', 'MR Ali', '03324740308', 'kohat pakistan', '32323232323', 'kop', '<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2020-11-04', 0, 0.00),
(34, 'faisal Shahryar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Staeth Road', '03324740308', NULL, 'chahudry_fasi@hotmail.co.uk', '$2y$10$XC0PQruo/eBja3Vir.mEZ.QIanBgh6ew7HjaSpkFwngLZd.SgMcx.', 'zzVUsa472HDyY4jBsUeMkRSyy7FGY1Lr5tUbxfYPkOG4HdjvSAa6qmo87UDk', '2020-10-11 10:21:24', '2021-03-30 10:53:26', 0, 0, '30e096b17229f410f1dd3e863e236a52', 'Yes', 'dc6aa2ffa8803a185bfbca5982f1d184', 0, 'Faisal Engineering', 'Fasial Jahil', '11223', 'Streth Uk', '323232323232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 150000, '2021-10-11', 0, 0.00),
(36, 'Faisal Hassan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Canada', '23423423', NULL, 'malikhassan90@gmail.com', '$2y$10$WEiDHLPTx.8Ewf./nhVNoetDhQV0e/l/G9sKKXq8d14W2WtH7YBl6', 'Ncf3WSUlQTXSdIbY9565IQJiL0DKK5QWlbDaVcg22PqsTxqAffPhqpWGVUwA', '2020-10-12 10:25:24', '2020-10-13 10:38:02', 0, 0, 'd18abf7392103b8c86224be9d53210bf', 'Yes', '21801beadce02633ec68778359390d38', 0, 'XYZ', 'Faisal HAssan', '237', 'qqwweerrtt ttrw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2020-11-26', 0, 10000.00),
(37, 'Fatima Fertilizer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office 19, IT Tower', '03324740308', NULL, 'junaid@fatimafert.com', '$2y$10$9.IP0JFfSIRMVQHad.251OEi6rEaGd/W5I2NCtI5QD50fBbUG/o/u', NULL, '2020-10-13 08:04:11', '2020-10-13 08:15:14', 0, 0, '979a9adf0bbd6ec9d326c0ee2c2c6460', 'Yes', '33fd9181c29a5a0cae4277c9e0e88d0f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 900000.00),
(39, 'Imran Haider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Liberty Heights', '03324740308', NULL, 'imran.haider@otc.com.pk', '$2y$10$s5Sys1wUFr5RpM4W5HJu7eMcxNASFzWATjYJfxW/nqDiWXBNPCuNC', 'wcgHjVIJLEn3EkPCisenGniIsbC8Ysoh2BT04d4aagEzFV0wogB699EORm3V', '2020-10-24 06:12:43', '2020-10-24 06:27:11', 0, 0, '7266d7e74b8363c6454ed2287db829b5', 'Yes', 'e54eb4bfa58b2476380c9179235053ae', 0, 'Imran Haider', 'Imran Haider', '8687', 'Liberty Heights', '2323232', 'ds', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-24', 0, 0.00),
(41, 'cap is', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jsjjsj', '1234', NULL, 'captainawaisulllah@gmail.com', '$2y$10$NR3xC1Zd0Qq0IlwCwqScrOZS.lzoGOfBAV9QbI2JqAoytwjqu35qq', NULL, '2020-10-24 07:54:43', '2020-11-23 18:31:26', 0, 0, 'd4feb7f8dd75d9e288e4ceb38c874de3', 'Yes', 'a0981153859f30430d54805ee84b2aea', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-11-23', 0, 0.00),
(42, 'Muhammad Awais Ullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House no 13 b block gul e daman society Lahore neer ameer chowk college road .', '03225460430', NULL, 'awais.awaisullah@outlook.com', '$2y$10$uvg.OS.HLyWui5i6zMUhtO9wRZsxEatRiVQ1rPEWdgBq4n20cymza', 'CfF1K8AceNREqnJrnfFZVKEwJk6EkxMPB3vQtJugJUyBALZ3Sc5aXTlMHcQA', '2020-10-24 08:02:18', '2020-10-24 08:07:22', 0, 0, '0c17d7a7b128feec7b8f4cacd054dd0a', 'Yes', 'c811c360d19a119868c5738f9103466c', 0, 'helo', 'helo', 'helo', 'helo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-22', 0, 0.00),
(43, 'cement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kohat pakistan', '03324740308', NULL, 'cement@gmail.com', '$2y$10$l.antmd0SuZ8rVP9nvDqzOobIKiSkLbNd7xeOpDeflZ9OedPsfLOS', NULL, '2020-11-02 08:39:53', '2020-11-02 08:41:58', 0, 0, '8f145cd36127637c93e188db4d7b1807', 'Yes', '2ba56ec27a9d79a50111cc7cf98c258a', 0, 'Start', 'Shahryar', '2332', 'kohat pakistan', '32323232323', 'hello Please acept', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-01-31', 0, 0.00),
(44, 'shahry engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kohat pakistan', '03324740308', NULL, 'shery@gmail.com', '$2y$10$Wsy7l8ENhqNuP.zGmLMKg.pY6oRympjvHqc3ihgGDieV3nH6c6Z1a', 'mCNbbou82lREOGsHaJOtOmjR3JRWNZ2OP96NcU5iGOnNP929a2oAo3goepvS', '2020-11-04 12:02:02', '2020-11-04 12:11:34', 0, 0, '1a905a5daaae02b4748d48361d7b0051', 'Yes', 'c5b16fe6f4b11f3488b7790483fdc42a', 0, 'shary engineering', 'Shahryar baig', '343', 'multan lahore', '32323232323', 'hello Please acept', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, 0, '2021-11-04', 0, 0.00),
(45, 'Muhammad Awais Ullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House no 13 b block gul e daman society Lahore neer ameer chowk college road .', NULL, NULL, 'captainawaisullah@gmail.com', '1234', '8Yg9Hxod5YNJNe7f4cSysS2saf3jKA0HBeC7SuLPwPln0EjX8r6zbNDEN9cY', '2020-11-23 18:32:14', '2021-03-30 06:03:00', 0, 0, '5ae9638c99faee74ec220dcfa069337a', 'Yes', '6b48d500e74731f525f8b82bf1f6f9bf', 0, 'Test 123', 'Test 123', '1234', '1234', '1234', 'hellow', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-11-23', 0, 0.00),
(46, 'Ahsan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 street block 4 lahore', '+923101234567', NULL, 'ahsanazhar48@gmail.com', '$2y$10$8W6fLUC2U5j9Wosq.iMis.JOkv15lpD9ZoFSzkCoGMkX/558G/Rnq', 'BWC0hLNRWyNIM6MDmnpDe1uNveSEghaTaj7FlZ3S1yMOMUmQINuW6xbV9z46', '2021-03-30 05:34:49', '2021-03-30 05:42:42', 0, 0, 'f1e43d05d12c887c048a0750517a62bf', 'Yes', '21a6069f782e67a93582afe3017aa144', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 64.00),
(47, 'demo1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo 1 lahore', '0300123456789', NULL, 'demo1@gmail.com', '$2y$10$W9uwag/ioK12014CGM3O4uktH41SCQG3zyuyLN07MU77lCr51tv6a', 'AqWzd6XC1wiqV6NPxd6VJKuU4kuZ1iSLK4wt2aBZWZMUAwo6rWes2hUOwjBo', '2021-03-30 10:30:58', '2021-04-12 07:29:42', 0, 0, 'cfcd1944cdde26e72337545c93131d60', 'Yes', '99bea54f3a06bbc0727272547361d70c', 0, 'myshop', 'owner1', '112233', '123 block c1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 4000, '2021-05-05', 0, 0.00),
(48, 'demo2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 block 4 sector d1', '031012345676789', NULL, 'demo2@gmail.com', '$2y$10$vGGlYmi5z0mkNNVoIQaXEeic0TcmGg/UrVaLxOGCgvg/7bd144eKi', NULL, '2021-03-31 05:44:55', '2021-03-31 05:44:55', 0, 0, 'd13882fdd1068400e14937e39aeb9d5c', 'Yes', 'c53deb03797381bbbdb44ffef9544e91', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(49, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234411', '1234', NULL, 'test@gmail.com', '$2y$10$axgBFltAfW7bHaAjwDvZj.XNz9dQc5LVayxapigTWTw1sI3xuoLyG', 'A8jOYKjtIGF5gp8oU4HszfE0bRHlbuWVEl1pmK1tFwLzP092P48BsjktfWl5', '2021-03-31 06:06:21', '2021-03-31 06:06:21', 0, 0, 'eb65a23c0037aa613acccbe566f8e841', 'Yes', 'f7c504b5c111d18ea57b2b73b01e17c5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(50, 'demo01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 block 1', '0310123456789', NULL, 'demo01@gmail.com', '$2y$10$C4xMV6j/rKchWX8WlNM8h.K9v6P66.NEHPHiOCkyyk2GO/SZxFiGO', 'JxlgDIefZRaCohVg2ahih60cpqY0w2je2MX1pOFeLKZmcrSEpLfMu5sPE6ph', '2021-04-06 10:08:08', '2021-04-12 07:27:35', 0, 0, '337d7b0a5d5e03314586c4d98460a30b', 'Yes', '46d8f19e2276197a7e50c679751a307e', 0, 'demo01', 'demo01', '1123', '12 block1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-05-06', 0, 100500.00),
(51, 'Shahryar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suit # 4, 1st Floor Liberty Heights,', '03211100681', NULL, 'shahryar@activehousetech.com', '$2y$10$4Zwno6NKqLhKgCRZvLs3yOW2a74VkepFWkjEEhAdKlFeeACaAobym', '8aIJLxMF5CqL0PI8othBS6jddJodMTg1Qn9ylg64JITtmpTRuwWS4BE2tQ8c', '2021-04-13 07:42:16', '2021-04-13 07:50:06', 0, 0, '64d3c2c559b74d9015c4d1501381ddc7', 'Yes', 'f1a8283ea43a70b551d19a3d3af63b59', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 20000.00),
(52, 'mobilelegendsgama', NULL, NULL, NULL, NULL, '1626792054p.phtml', NULL, NULL, NULL, NULL, 'asdad', '02194399025', NULL, 'mobilelegendsgama@gmail.com', '$2y$10$wu9ultYyIk5dTijtHOn1yek7dQIe9GcsQkwT4h3G9RYAEDRc8r/pS', NULL, '2021-05-18 19:15:06', '2021-07-20 13:40:54', 0, 0, '2f0224f857b9c91c47af5c3566eb351d', 'Yes', 'd21293ca6732cdfd19d2cb90e05b721a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(53, 'Test ABC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pakistan', 'Punjab', 'Test no 1, gulberg 3', 'TEST', NULL, 'testABC@testabc.com', '$2y$10$bMF1DtDH./ZQfNmqxGoTCeOKB2svN1qqx7dSFqvWZ6r6LqJWT3z6e', 'TU5VLu6a9AHfByXkCGoMwvpn5G9GAwVqwh1bW4r9GyxiEOpx7sJnn3rwz2FZ', '2021-06-07 04:23:22', '2021-06-22 08:30:28', 0, 0, '0004f5088d4d1cb08a6939f34f07cdc4', 'Yes', 'f24162f9fbb93bce8dcd4ba276ecc0d8', 0, 'Testing ABC', 'Testing ABC1', 'test', 'Test no 1, Guberg 3 Lahore', 'N/A', 'TESTTEST', NULL, '1623819080product_banner.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-07-07', 0, 1000000.00),
(54, 'Testing Test', NULL, NULL, NULL, NULL, '1624259266pexels-pixabay-2150.jpg', '54111', NULL, 'Pakistan', 'punjab', 'testaddress', 'lahore', NULL, 'Test@test.com', '$2y$10$fhV4SxQY1IiG1MGaGgWQ2uBDUYfIEC1w9iLXKgZIPmuwh27TMZMMm', 'yGrZqZMLQ7u0mEUByWTb5L0WjLwKdhFjJ54EBpns1wFsknQJQYrS61r10IVX', '2021-06-09 04:49:40', '2021-06-21 06:07:46', 0, 0, '4ed9c66e42620232f9477667360d7608', 'Yes', '180eeb8b39e22ebdda1990bc2513158b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 10000000.00),
(55, 'Muhammad Dogar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'laho', '+923334517501', NULL, 'asif@otc.com.pk', '$2y$10$atUgY/P5JF1vuns5XlPWgOEamgFQsibl.go.7QfRG/J7AtlpBF3cK', 'LpcvWu0OCys7Yh7DhBnu9on2dDFkyCWIvZGVkMavwkeO1ioZmsD5NOhY5PEC', '2021-06-18 08:42:09', '2021-06-18 08:47:19', 0, 0, 'ed7345028d2142bc020bf52931d34f1a', 'Yes', '27462a353c078b30ce4c9221c3e166b6', 0, 'OTC', 'Asif Dogar', '12345', '123ABV', '54321', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-07-18', 0, 0.00),
(57, 'Mr ABC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Street 14', '123456789', NULL, 'ABCXYZ@XYZABC.com', '$2y$10$Jx7DKbSniO0oMr1k5HYV3Ob3rLDM/uzfv7XIeHLaV1.gZ/J.F5Rwi', 'rDW4K3yALCBoEym0m3p83tYV1P2kjKS2k5v6z7GaBxCmkOVWCd7PZQovMp7N', '2021-06-23 07:40:23', '2021-09-11 21:41:48', 0, 0, '713e6a83276ba500222580a696e4b765', 'Yes', 'ce7936299d512ffe43480687ac0ab8ab', 0, 'XYZ Co.', 'ABC', '1', 'XYZ Aveneue', 'ABC123', '123', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-09-21', 0, 0.00),
(58, 'bilal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suit # 4, 1st Floor Liberty Heights,', '0332848943', NULL, 'bilal@activehousetech.com', '$2y$10$qHpDWsoNqr4VWys5rj9uNO1VHlmMtIHMnP9S1Y26e9tYQDuwiLwyG', 'n9NnmTVh7dVEW0EYOinbtNe3J7KS0Xd1nUqiFpC6yqLSIyvScO6wHZf79RYs', '2021-06-24 10:22:31', '2021-06-24 10:22:31', 0, 0, '22750005764e6281f1205718c67c2c32', 'Yes', '653d061549c501f83cf860d6f96db8bb', 0, 'design', 'Bilal', '2232323', 'Suit # 4, 1st Floor Liberty Heights,', '32323232323', 'utyyutuy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(59, 'bilal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suit # 4, 1st Floor Liberty Heights,', '03220202202', NULL, 'bilal1@activehousetech.com', '$2y$10$64SRkyxPnrAFpsrs1DONu.ITagPUUAc/Hh19X2ieW/KnKZfClta6u', 'ORYcwM2ZVHazb8tVH7cXdAqJXmayjNdIPHnClSRzOgof6yN59TRSrxOm8Pdo', '2021-06-25 08:26:20', '2021-06-25 08:26:20', 0, 0, '840e1254eb5c7f71f0cb8cf260b66f1b', 'Yes', '836d191842de12e008cfc97da20fd439', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(60, 'Shahryar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suit # 4, 1st Floor Liberty Heights,', '064789087687', NULL, 'mjk@mail.com', '$2y$10$26IVoLnGQRkixosKZggvpOhuCnGdVTmUS.QPxDOqpbJHuy3/RA/9a', NULL, '2021-06-25 08:54:46', '2021-06-25 08:54:46', 0, 0, '62691a407a289f2a3a66704105602188', 'Yes', 'ad4d3c4294477140848065ca36d7c8b1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(61, 'test123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test123', '1234', NULL, 'test123@test.com', '$2y$10$wuynXuzWny.3D3ySaVy/OeHk8eBPF2kVI1HsB07IUDbDyS4opafFa', NULL, '2021-06-30 03:59:43', '2021-06-30 03:59:43', 0, 0, '74dd89e4583fd7d94170a05e286ae50c', 'Yes', 'cb91a8c1d1fa620e72bf6cdf632981ee', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(62, 'Hina Enterprises', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suit # 4, 1st Floor Liberty Heights,', '03211100681', NULL, 'hina@activehousetech.com', '$2y$10$L6l1TEsdrbVHmlBeivI4qeh/LJaNnC1BKnv9nmWeehd8XclTOZPzW', '1ItACXCBzRJyyJj7xg9xpsNG2hGLoOHi8LwWyiMj0CBoMN9fOOgPRY2VxEBi', '2021-07-02 06:08:55', '2021-07-02 06:08:56', 0, 0, 'bf2b353e992ecae869e469798e2aec97', 'Yes', 'd5e3088c2a03cc0583aa9d8ef91e8c6a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(63, 'Muhammad Awais Ullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House no 13 b block gul e daman society Lahore neer ameer chowk college road ., fhhhhhhhhh', '03225460430', NULL, 'awais.awaisullah1@outlook.com', '$2y$10$HVSdl53/QfHdHMb.zktp3.ATCSN7wrzjoDLQXHUbrnD4IUeueG0RG', 't01rL1mmHhN2WiZlPc6uyBmZaqNOSXbAfQQia7rU2RQjJk9s4s17Yy0ZPch8', '2021-09-08 00:39:26', '2021-09-16 17:15:08', 0, 0, 'c18bff03e8fcc025f695946f5b128cf2', 'Yes', 'eee2dd65c4352454e6ed89f2fffd2a03', 0, 'abc123', 'helo', 'abc123', 'House no 13 b block gul e daman society Lahore neer ameer chowk college road ., fhhhhhhhhh', '1221', '11111', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-07', 0, 0.00),
(64, 'Muhammad Awais Ullah', 'Muhammad Awais', 'Ullah', '2021-09-07', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03225460430', NULL, 'awais.awaisullah2@outlook.com', '$2y$10$hImonkEYO85ttKn92z8vGuXC0mM7pqsrreOpOtHqZ5t49x9lZsZPC', 'lguoQ8z7AGISqZWpTe1LzexTp2HzAe2k6Rr0flHOA1GDLbWAb6cFglyGH4ub', '2021-09-08 02:33:23', '2021-09-08 02:33:23', 0, 0, '1e51a99a2de0bd939ac8f0d96cd55972', 'Yes', 'a9fdf3355c907ba7b3667b0e6761c3ab', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(67, 'Muhammad Awais Ullah', 'Muhammad Awais', 'Ullah', '2021-09-12', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03225460430', NULL, 'awais.awaisullah3@outlook.com', '$2y$10$quQnIuGzo8lcky7vbupui.z0bLwfh3bm9SZq7K0gfrZstxSctt4VW', 'tLlsrOWnDBLDuGS08lp32QreFo7vS9DvWFNg9U91WhZoCWEiiUpEQbn4yo5q', '2021-09-13 00:10:37', '2021-09-13 00:15:05', 0, 0, '1d599067596fc0dc8d4fded4ca72084e', 'Yes', '4a3d9389fdf5ad06c98a2803cd1d7d8a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-12', 0, 0.00),
(68, 'Muhammad Awais Ullah', 'Muhammad Awais', 'Ullah', '2021-09-12', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03225460430', NULL, 'awais12@gmail.com', '$2y$10$osfLkLKrHle2r/oGZrnRuuKiJvfH1ANbBxBZya.vJ6qVhy2BYFP1u', '3qZd8bEBFw4V4XHzsyQ0dYPpeq4QnlnOmMlur8D6uipkgDVleDpzWgDc5GtY', '2021-09-12 18:22:45', '2021-09-12 18:36:34', 0, 0, 'e314fd3ef25ff1fcef87643f38c28003', 'Yes', '768e33380160278f520d708f9cbe91a7', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-12', 0, 0.00),
(69, 'Saad mahmood', 'Saad', 'mahmood', '1995-11-08', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '3324740308', NULL, 'saadaht21@gmail.com', '$2y$10$AasABpkZ3xtGRUV8GTFe1ucV5RSkNP2.MXOY/0pBgyPSnZZpsROIu', NULL, '2021-09-13 06:08:47', '2021-09-13 06:14:37', 0, 0, 'fab7683e2102c05d55cd0095d67c4ea7', 'Yes', 'bfe25237aa39b48ac57743b2b50baafc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-13', 0, 0.00),
(72, 'Saud Saud', 'Saud', 'Saud', '1993-09-12', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03444543924', NULL, 's_ms_93@hotmail.com', '$2y$10$HiORDCEOMWhd8BSG.21y7uQiPOZBAQhfUoyQJNb74SJsF1yVZGgu.', NULL, '2021-09-15 05:49:30', '2021-09-15 05:49:30', 0, 0, 'c6dbe4285ccbf23e0d12a389cab7a09a', 'Yes', '4cdb9dc23d8571d770e5e71ab8ec0a0e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(76, 'abc 123', 'abc', '123', '1991-11-11', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '123789456', NULL, 'abc123@test.com', '$2y$10$SKH/aNEYeVk3CPmBsVvPaeHVk.uc1bTspTTUyBWw615KclN1em686', 'PjW0zuMjYeajPwPIsDsAAOVxjonBiM6cVCck0V5J2tfi1lTjYsAKYyCwCYPl', '2021-09-15 07:18:52', '2021-09-16 17:16:32', 0, 0, '08b8ede3d24b4fc53b241c41f6155297', 'Yes', 'a1c78d86542eade92531d51fb993764e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-10-10', 0, 0.00),
(77, 'Shahryar Baig', 'Shahryar', 'Baig', '2008-02-14', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03324740308', NULL, 'jobs@activehousetech.com', '$2y$10$E.rT.r/D4566epceLz/VFOzaYSPr9y67H38qJLx9NdSx24Qnn2haS', 'K5pxklpFY1ssUmVuNNNWeysbn4PZQ7t0OqXyfgaNakIvHQmXvZvDvfaGdP69', '2021-09-16 09:25:46', '2021-09-16 09:25:46', 0, 0, 'ed7c33b9f7b8457b93ee41fdb7ee45dd', 'Yes', 'b7715ff619361924314e6dad3ffed1a0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(78, 'Shahryar Bayg', 'Shahryar', 'Bayg', '1995-03-28', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '03211100681', NULL, 'mirzashahryarbaigq@gmail.com', '$2y$10$oHFpsmd1SHU0gLhJSMVdIOclfUSq9KXMfPaATq.BjVEG8Fuu6iZne', 'm72lBHjnUhGgiwmZc64rII6o6V9MOZplFM2f0hGqQLLRrqXq5B9vHCzYF4yy', '2021-09-16 09:32:44', '2021-09-16 09:32:44', 0, 0, '2548b799c1ab40ec2315da2331deaf8d', 'Yes', '11a54530412c7b9f735422874074fb1a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(79, 'Shahryar mahmood', 'Shahryar', 'mahmood', '2021-09-16', 'male', NULL, NULL, NULL, NULL, NULL, NULL, 'awais.awaisullah@outlook.com', NULL, 'mirzashahtryarbaig@gmail.com', '$2y$10$ofDw3gxbMveA.8L8WbULou22I/g/HABEfY1g5XC0tb6LYgS1jPWte', NULL, '2021-09-16 16:49:20', '2021-09-16 16:49:20', 0, 0, '7b16b457d6b5c637c34c801a2752db20', 'Yes', 'fbc80d34d6c1f79ec1dc92d980c54056', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(82, 'ahsan ul haq', 'ahsan', 'ul haq', '2021-09-17', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '+923104555001', NULL, 'ahsanazhar49@gmail.com', '$2y$10$IB7JxuIwn4N3j4MhXCQddOivjL9xDrTpniO1tcsU/kiwiMhiHRcE6', NULL, '2021-09-17 08:42:07', '2021-09-17 08:42:07', 0, 0, '00d44d260adba1cb0bab686f6664c44e', 'Yes', '2935447a1acba905cfb30bce1786a17f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(83, 'dsfdsf sdf', 'dsfdsf', 'sdf', '0002-01-02', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '234324', NULL, 'admin@gmail.com', '$2y$10$iQykpwqJ6iKv3VqZOxmHv.dTLf/mqO3UudGvEIIGyJukWDnJtlQJS', NULL, '2021-09-17 16:22:44', '2021-09-17 16:22:44', 0, 0, 'f2a9b862b993e35188eed194c1e570ce', 'Yes', '75d23af433e0cea4c0e45a56dba18b30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'byeS1580541202', 1, '2020-02-01 01:13:22', '2020-09-03 07:06:18'),
(2, 13, '3CzM1580548569', 1, '2020-02-01 03:16:12', '2020-09-03 07:06:18'),
(3, 13, 'gBQC1599120302', 1, '2020-09-03 07:05:03', '2020-09-03 07:06:18'),
(4, 13, 'Vd711599816472', 1, '2020-09-11 08:27:52', '2020-10-05 11:58:37'),
(6, 13, 'KkTA1602419174', 0, '2020-10-11 11:26:14', '2020-10-11 11:26:14'),
(7, 13, 'Ge921602423002', 0, '2020-10-11 12:30:04', '2020-10-11 12:30:04'),
(8, 13, 'AS4R1602499813', 0, '2020-10-12 09:50:15', '2020-10-12 09:50:15'),
(9, 13, 'tnpu1602580514', 0, '2020-10-13 08:15:14', '2020-10-13 08:15:14'),
(10, 13, 'Qig31602589082', 0, '2020-10-13 10:38:02', '2020-10-13 10:38:02'),
(11, 13, 'jmyC1604483544', 0, '2020-11-04 09:52:26', '2020-11-04 09:52:26'),
(12, 13, '3Py71604484729', 0, '2020-11-04 10:12:09', '2020-11-04 10:12:09'),
(13, 13, '47lX1604491191', 0, '2020-11-04 11:59:52', '2020-11-04 11:59:52'),
(14, 45, 'FiWk1617087780', 0, '2021-03-30 06:03:00', '2021-03-30 06:03:00'),
(15, 34, 'cWfR1617104202', 0, '2021-03-30 10:36:42', '2021-03-30 10:36:42'),
(16, 34, 'WwST1617104251', 0, '2021-03-30 10:37:31', '2021-03-30 10:37:31'),
(17, 47, 'iI1L1618207835', 0, '2021-04-12 05:10:35', '2021-04-12 05:10:35'),
(18, 47, '5rDx1618208031', 0, '2021-04-12 05:13:51', '2021-04-12 05:13:51'),
(19, 47, 'aFLQ1618216055', 0, '2021-04-12 07:27:35', '2021-04-12 07:27:35'),
(20, 45, 'WqQf1618303275', 0, '2021-04-13 07:41:17', '2021-04-13 07:41:17'),
(21, 47, 'y9JU1618303482', 0, '2021-04-13 07:44:43', '2021-04-13 07:44:43'),
(22, 34, 'DbMq1618312755', 0, '2021-04-13 10:19:17', '2021-04-13 10:19:17'),
(23, 34, 'PwCQ1623041665', 0, '2021-06-07 03:54:25', '2021-06-07 03:54:25'),
(24, 53, 'uro81624354226', 1, '2021-06-22 08:30:28', '2021-06-23 06:05:21'),
(25, 53, '1yN81624427270', 1, '2021-06-23 04:47:52', '2021-06-23 06:05:21'),
(26, 45, 'uYVz1631683172', 0, '2021-09-15 04:19:34', '2021-09-15 04:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(94, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Voguepay', 'demo-5e1d577004e90', NULL, NULL, '2020-01-13 23:54:30', '2020-01-13 23:54:30', 1, NULL),
(95, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '5BP83764T7667933U', NULL, NULL, '2020-01-15 22:35:49', '2020-01-15 22:35:49', 1, NULL),
(96, 0, 5, 'Standard', '$', 'INR', 60, 45, 25, '', 'Instamojo', 'MOJO0116O05A79460608', NULL, NULL, '2020-01-16 01:11:37', '2020-01-16 01:11:37', 1, NULL),
(97, 33, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-10-05 07:39:45', '2020-10-05 07:39:45', 1, NULL),
(98, 34, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1Hb2eKJlIV5dN9n7YdIdpq2w', 'ch_1Hb2eKJlIV5dN9n744Ycscxy', NULL, '2020-10-11 10:23:35', '2020-10-11 10:23:35', 1, NULL),
(99, 35, 5, 'Standard', '$', 'INR', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1Hb3TlJlIV5dN9n7likvVuiL', 'ch_1Hb3TlJlIV5dN9n7Ovr0SfFp', NULL, '2020-10-11 11:16:44', '2020-10-11 11:16:44', 1, NULL),
(100, 36, 5, 'Standard', '$', 'INR', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HbPPoJlIV5dN9n7UV5A5ECr', 'ch_1HbPPoJlIV5dN9n7V5srdyeY', NULL, '2020-10-12 10:42:08', '2020-10-12 10:42:08', 1, NULL),
(101, 39, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1Hfh9gJlIV5dN9n7FJYBFm3U', 'ch_1Hfh9fJlIV5dN9n7SF1f55Ju', NULL, '2020-10-24 06:27:11', '2020-10-24 06:27:11', 1, NULL),
(102, 40, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-10-24 07:46:42', '2020-10-24 07:46:42', 1, NULL),
(103, 41, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-10-24 07:55:58', '2020-10-24 07:55:58', 1, NULL),
(104, 42, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1HfiidJlIV5dN9n70TmjBMgY', 'ch_1HfiicJlIV5dN9n757ucI5PI', NULL, '2020-10-24 08:07:22', '2020-10-24 08:07:22', 1, NULL),
(105, 43, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1HiybyJlIV5dN9n7NrEh3EYr', 'ch_1HiybyJlIV5dN9n7Hf9BLKbK', NULL, '2020-11-02 08:41:58', '2020-11-02 08:41:58', 1, NULL),
(106, 44, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1HjkhuJlIV5dN9n7oalGdeAf', 'ch_1HjkhuJlIV5dN9n7HNshAtZT', NULL, '2020-11-04 12:03:19', '2020-11-04 12:03:19', 1, NULL),
(107, 45, 7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-23 18:32:14', '2020-11-23 18:32:14', 1, NULL),
(108, 47, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-04-05 09:02:15', '2021-04-05 09:02:15', 1, NULL),
(109, 50, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-04-06 10:11:13', '2021-04-06 10:11:13', 1, NULL),
(110, 53, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-06-07 04:24:55', '2021-06-07 04:24:55', 1, NULL),
(111, 55, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-06-18 08:47:19', '2021-06-18 08:47:19', 1, NULL),
(112, 57, 6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_1J5RfDJlIV5dN9n7r24Dx7Fq', 'ch_1J5RfCJlIV5dN9n7SDhaE7VU', NULL, '2021-06-23 07:42:24', '2021-06-23 07:42:24', 1, NULL),
(113, 63, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-09-08 00:40:03', '2021-09-08 00:40:03', 1, NULL),
(114, 67, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-09-13 00:15:05', '2021-09-13 00:15:05', 1, NULL),
(115, 68, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-09-12 18:36:34', '2021-09-12 18:36:34', 1, NULL),
(116, 69, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-09-13 06:14:37', '2021-09-13 06:14:37', 1, NULL),
(118, 76, 10, 'gold', 'pkr', 'pkr', 5000, 25, 0, 'this is a gold subscription', 'Stripe', 'txn_3JZttPJlIV5dN9n70v0AuHnI', 'ch_3JZttPJlIV5dN9n70sOq6uwK', NULL, '2021-09-15 07:54:59', '2021-09-15 07:54:59', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

CREATE TABLE `vendor_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_nature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry_of_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_incorporation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_inception` date DEFAULT NULL,
  `ntn_strn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associated_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enlisted_on_platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_platforms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`id`, `business_status`, `company_name`, `address_country`, `address_city`, `address_state`, `address_street`, `business_nature`, `industry_of_work`, `company_email`, `company_website`, `company_phone`, `country_of_incorporation`, `country_of_business`, `date_of_inception`, `ntn_strn`, `parent_company`, `associated_company`, `enlisted_on_platform`, `name_of_platforms`, `extra_1`, `extra_2`, `extra_3`, `extra_4`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'corporation', 'Test Company', 'Pakistan', 'Lahore', 'Punjab', 'Test', 'supplier', 'retailer', 'awais.awaisullah@outlook.com', 'http://test.com', NULL, 'Pakistan', 'Pakistan', '2021-09-12', '123456', 'Test1', 'Test1', 'no', NULL, NULL, NULL, NULL, NULL, 67, '2021-09-12 18:17:22', '2021-09-12 18:17:22'),
(6, 'corporation', 'Test Company1', 'Test', 'Test', 'Test', 'House jjdjdjdj', 'supplier', 'other', 'test@company.com', 'http://test.com', NULL, '12345', 'Test', '2021-09-12', '123456', 'test', 'test', 'no', NULL, NULL, NULL, NULL, NULL, 68, '2021-09-12 18:36:16', '2021-09-12 18:36:16'),
(7, 'sole_proprietor', 'Sarkar Raj', 'Pakistan', 'Lahore', 'Punjab', '123 Bradth Road Lahore', 'supplier', 'manufacturer', 'sarkarraj@test.com', 'https://test.astralink.co/admin', NULL, 'Pakistan', 'Pakistan', '2000-01-01', '123456', 'Sarkar Raj', 'N/A', 'no', NULL, NULL, NULL, NULL, NULL, 70, '2021-09-15 05:29:57', '2021-09-15 05:29:57'),
(8, 'corporation', 'ABC Associates', 'Pakistan', 'Lahore', 'Punjab', 'ABC Associates 123', 'service_provider', 'services', 'info@abcassociates.com.pk', 'https://test.astralink.co/', NULL, 'Pakistan', 'Pakistan', '2000-11-11', 'abc123', 'nana', 'na', 'no', NULL, NULL, NULL, NULL, NULL, 76, '2021-09-15 07:36:04', '2021-09-15 07:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_documents`
--

CREATE TABLE `vendor_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_details_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery','withheld') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(3, 13, 3, 2, 105010, 'gBQC1599120302', 'on delivery'),
(4, 13, 5, 1, 52505, 'Vd711599816472', 'completed'),
(5, 27, 6, 1, 682505, '8mhs1599823609', 'pending'),
(6, 13, 7, 3, 135000, 'KkTA1602419174', 'completed'),
(7, 13, 8, 1, 45000, 'Ge921602423002', 'withheld'),
(8, 13, 9, 1, 45000, 'AS4R1602499813', 'pending'),
(9, 13, 11, 1, 45000, 'tnpu1602580514', 'pending'),
(10, 13, 12, 1, 45000, 'Qig31602589082', 'pending'),
(11, 13, 13, 1, 45000, 'jmyC1604483544', 'pending'),
(12, 13, 14, 2, 90000, '3Py71604484729', 'pending'),
(13, 13, 15, 2, 90000, '47lX1604491191', 'pending'),
(14, 45, 16, 2, 22222, 'FiWk1617087780', 'processing'),
(15, 34, 17, 2, 100000, 'cWfR1617104202', 'pending'),
(16, 34, 17, 1, 50000, 'cWfR1617104202', 'pending'),
(17, 34, 18, 2, 100000, 'WwST1617104251', 'completed'),
(18, 34, 18, 1, 50000, 'WwST1617104251', 'completed'),
(19, 47, 19, 2, 4000, 'iI1L1618207835', 'pending'),
(20, 47, 20, 4, 8000, '5rDx1618208031', 'processing'),
(21, 47, 21, 2, 4000, 'aFLQ1618216055', 'completed'),
(22, 45, 22, 1, 11111, 'WqQf1618303275', 'pending'),
(23, 47, 23, 1, 2000, 'y9JU1618303482', 'pending'),
(24, 34, 25, 1, 50000, 'DbMq1618312755', 'pending'),
(25, 34, 26, 6, 300000, 'PwCQ1623041665', 'pending'),
(26, 53, 27, 3, 30000, 'uro81624354226', 'completed'),
(27, 53, 29, 2, 20000, '1yN81624427270', 'completed'),
(28, 45, 30, 2, 22222, 'uYVz1631683172', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Declined', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2021-09-16 04:28:04'),
(5, 33, NULL, 'Declined', NULL, 0, 'asd', '2020-10-05 07:42:20', '2021-09-16 04:27:59'),
(12, 42, '1604948004download (1).png', 'Verified', 'aaaaaaa', 0, 'Please get your account verified to use this.', '2020-10-24 08:07:22', '2020-11-09 18:56:12'),
(15, 45, NULL, 'Declined', NULL, 0, 'Account Verified', '2020-11-23 18:32:15', '2021-09-16 04:27:49'),
(16, 47, NULL, NULL, NULL, 1, 'Please get your account verified to use this.', '2021-04-05 09:02:15', '2021-04-05 09:02:15'),
(17, 47, NULL, NULL, NULL, 1, 'id card', '2021-04-05 09:05:15', '2021-04-05 09:05:15'),
(19, 50, NULL, NULL, NULL, 1, 'Please get your account verified to use this.', '2021-04-06 10:11:14', '2021-04-06 10:11:14'),
(23, 57, NULL, 'Declined', NULL, 0, 'Please get your account verified to use this.', '2021-06-23 07:42:24', '2021-09-16 04:27:54'),
(24, 63, NULL, NULL, NULL, 1, 'Please get your account verified to use this.', '2021-09-08 00:40:14', '2021-09-08 00:40:14'),
(25, 67, '1631470430Capture.PNG', 'Verified', 'Test', 0, 'Please get your account verified to use this.', '2021-09-13 00:15:11', '2021-09-13 01:14:21'),
(27, 69, NULL, NULL, NULL, 1, 'Please get your account verified to use this.', '2021-09-13 06:14:39', '2021-09-13 06:14:39'),
(28, 70, NULL, NULL, NULL, 1, 'Please get your account verified to use this.', '2021-09-15 05:31:10', '2021-09-15 05:31:10'),
(29, 76, NULL, 'Verified', NULL, 0, 'Please get your account verified to use this.', '2021-09-15 07:55:07', '2021-09-16 04:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 13, 'Bank', NULL, '1234567', NULL, 'xyz', 'hehehheh', 'pkx', 'hdhhdhdh', 945, 55, '2021-09-10 18:18:24', '2021-09-10 18:20:02', 'completed', 'vendor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_banners`
--
ALTER TABLE `featured_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_links`
--
ALTER TABLE `featured_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_details`
--
ALTER TABLE `vendor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_documents`
--
ALTER TABLE `vendor_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_banners`
--
ALTER TABLE `featured_banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `featured_links`
--
ALTER TABLE `featured_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `vendor_details`
--
ALTER TABLE `vendor_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor_documents`
--
ALTER TABLE `vendor_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
