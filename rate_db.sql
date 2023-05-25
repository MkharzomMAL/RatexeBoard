-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 03:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lic` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `lic`, `logo`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Ria Transfer', '122551155', 'companies\\May2023\\pg77CRzIVqlg4fKhVk7F.png', '+60-11255524', '2023-05-22 19:56:00', '2023-05-22 20:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `last_sell` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `last_buy` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `unit`, `title`, `logo`, `sell`, `last_sell`, `buy`, `last_buy`, `enable`, `created_at`, `updated_at`, `code`, `sort`) VALUES
(49, '1', 'American Dollars', 'currencies\\May2023\\JtAU4MqIOexP2lcPkadL.jpg', '4.616', '4.605', '4.524', '4.514', 1, '2023-05-23 03:27:00', '2023-05-23 06:22:46', 'USD', 1),
(50, '1', 'Euro', 'currencies\\May2023\\nlPjoVtRNaBkLqiyoizW.jpg', '4.975', '4.977', '4.877', '4.879', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'EUR', 2),
(51, '1', 'British Pound', 'currencies\\May2023\\V42K1bIGafKRsbYgPGGb.jpg', '5.733', '5.726', '5.62', '5.613', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'GBP', 4),
(52, '100', 'Japanese Yen', 'currencies\\May2023\\N4K0La1HzCRHJcHU4E6h.jpg', '3.332', '3.325', '3.266', '3.259', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'JPY', 3),
(53, '1', 'Australian Dollar', 'currencies\\May2023\\PnpMcWM9Bi8KaFjVjxX1.jpg', '3.056', '3.061', '2.995', '3.001', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'AUD', 5),
(54, '1', 'Canadian Dollar', 'currencies\\May2023\\JtmKhRcnQQ3OdKybGXkC.jpg', '3.419', '3.411', '3.351', '3.344', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'CAD', 6),
(55, '1', 'New Zealand Dollar', 'currencies\\May2023\\O4GPVgs2ew4O2opuelHI.jpg', '2.888', '2.894', '2.831', '2.836', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'NZD', 7),
(56, '1', 'Swiss Franc', 'currencies\\May2023\\R9QVTWq9AMPo4nBBePYO.jpg', '5.129', '5.125', '5.027', '5.023', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'CHF', 8),
(57, '1', 'Singapore Dollar', 'currencies\\May2023\\OfymGJT7XP7HttnWd9by.jpg', '3.427', '3.423', '3.36', '3.355', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'SGD', 9),
(58, '1', 'Chinese Yuan', 'currencies\\May2023\\G8vYcAm1LXShuy7RHKwW.jpg', '0.655', '0.653', '0.642', '0.64', 1, '2023-05-23 03:27:00', '2023-05-23 06:22:46', 'CNY', 10),
(59, '1', 'Hong Kong Dollar', 'currencies\\May2023\\sOoKSqfNfySXmtjlXaSY.jpg', '0.589', '0.588', '0.577', '0.577', 1, '2023-05-23 03:27:00', '2023-05-23 06:15:02', 'HKD', 11),
(60, '100', 'Indian Rupee', 'currencies\\May2023\\3EQ4qRuSdHzdEWpDBkzu.jpg', '5.573', '5.561', '5.462', '5.451', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'INR', 12),
(61, '10000', 'Indonesian Rupiah', 'currencies\\May2023\\rClhDmvzaXeft7Be8uml.jpg', '3.102', '3.099', '3.041', '3.037', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'IDR', 13),
(62, '100', 'Thai Baht', 'currencies\\May2023\\6Clc7XqvYkBOUcz3x6rt.jpg', '13.339', '13.291', '13.075', '13.028', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'THB', 14),
(63, '100', 'Philippine Peso', 'currencies\\May2023\\4nmTSVxT6OB1LksIrmL7.jpg', '8.285', '8.28', '8.121', '8.116', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'PHP', 15),
(64, '1000', 'South Korean Won', 'currencies\\May2023\\quR7jemtEODCBJqUr4G5.jpg', '3.5', '3.512', '3.431', '3.442', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'KRW', 16),
(65, '1', 'Taiwan Dollar', 'twd_logo.png', '0.15', '0.15', '0.147', '0.147', 0, '2023-05-23 03:27:00', '2023-05-23 06:17:23', 'TWD', 17),
(66, '1', 'Swedish Krona', 'sek_logo.png', '0.435', '0.436', '0.426', '0.427', 0, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'SEK', 18),
(67, '1', 'Norwegian Krone', 'nok_logo.png', '0.422', '0.422', '0.414', '0.413', 0, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'NOK', 19),
(68, '1', 'Danish Krone', 'dkk_logo.png', '0.668', '0.668', '0.655', '0.655', 0, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'DKK', 20),
(69, '100', 'Russian Ruble', 'rub_logo.png', '5.758', '5.735', '5.644', '5.621', 0, '2023-05-23 03:27:00', '2023-05-23 06:18:23', 'RUB', 21),
(70, '1', 'South African Rand', 'currencies\\May2023\\WTUtcsLatM8K4Jq93iUB.jpg', '0.24', '0.239', '0.236', '0.235', 1, '2023-05-23 03:27:00', '2023-05-23 07:00:31', 'ZAR', 22),
(71, '1', 'Saudi Riyal', 'currencies\\May2023\\hovb8SLyki2bkn5mQV04.jpg', '1.231', '1.228', '1.206', '1.204', 1, '2023-05-23 03:27:00', '2023-05-23 06:22:46', 'SAR', 23),
(72, '1', 'Emirates Dirham', 'currencies\\May2023\\f6SL3vWGSQe19Fg5onls.jpg', '1.257', '1.254', '1.232', '1.229', 1, '2023-05-23 03:27:00', '2023-05-23 06:22:21', 'AED', 24),
(73, '1', 'Omani Rials', 'currencies\\May2023\\Bin5AQxkZtHB8nUYMhTj.jpg', '11.988', NULL, '11.75', NULL, 1, '2023-05-23 06:11:36', '2023-05-23 06:22:46', 'OMR', 25),
(74, '1', 'Bahraini Dinars', 'currencies\\May2023\\UywGJyraaempVCMtB76a.jpg', '12.243', NULL, '12.001', NULL, 1, '2023-05-23 06:13:39', '2023-05-23 06:22:46', 'BHD', 26),
(75, '1', 'Qatari Rials', 'currencies\\May2023\\Tp3uoqQ5fOQNxeF0DBmn.jpg', '1.268', NULL, '1.243', NULL, 1, '2023-05-23 06:14:46', '2023-05-23 06:22:46', 'QAR', 27),
(76, '1', 'Taiwan New Dollars', 'currencies\\May2023\\ip7FSimmLuSUa03ddztd.jpg', '0.145', NULL, '0.155', NULL, 1, '2023-05-23 06:16:39', '2023-05-23 06:23:46', 'NTD', 28),
(77, '10000', 'Vietnamese Dongs', 'currencies\\May2023\\vpKgC8a8PAEh4xC9LOTD.jpg', '1.966', NULL, '1.927', NULL, 1, '2023-05-23 06:21:11', '2023-05-23 06:24:46', 'VND', 29);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(24, 4, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 5),
(25, 4, 'sell', 'number', 'Sell', 0, 1, 1, 1, 1, 1, '{}', 6),
(26, 4, 'last_sell', 'number', 'Last Sell', 0, 1, 1, 1, 1, 1, '{}', 7),
(27, 4, 'buy', 'number', 'Buy', 0, 1, 1, 1, 1, 1, '{}', 8),
(28, 4, 'last_buy', 'number', 'Last Buy', 0, 1, 1, 1, 1, 1, '{}', 9),
(29, 4, 'enable', 'checkbox', 'Enable', 0, 1, 1, 1, 1, 1, '{}', 10),
(30, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(31, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(32, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 6, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(34, 6, 'lic', 'text', 'Lic', 0, 1, 1, 1, 1, 1, '{}', 3),
(35, 6, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 4),
(36, 6, 'tel', 'text', 'Tel', 0, 1, 1, 1, 1, 1, '{}', 5),
(37, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(38, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(39, 4, 'unit', 'number', 'Unit', 1, 1, 1, 1, 1, 1, '{}', 4),
(40, 4, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(41, 4, 'sort', 'number', 'Sort', 0, 1, 1, 1, 1, 1, '{}', 13);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(4, 'currencies', 'currencies', 'Currency', 'Currencies', 'voyager-dollar', 'App\\Models\\Currency', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"sort\",\"order_display_column\":\"code\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-22 18:44:04', '2023-05-22 21:13:43'),
(6, 'companies', 'companies', 'Company', 'Companies', NULL, 'App\\Models\\Company', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-05-22 18:44:47', '2023-05-22 18:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-05-22 18:34:37', '2023-05-22 18:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-05-22 18:34:37', '2023-05-22 18:34:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-05-22 18:34:37', '2023-05-22 18:34:37', 'voyager.settings.index', NULL),
(11, 1, 'Currencies', '', '_self', 'voyager-dollar', NULL, NULL, 15, '2023-05-22 18:44:04', '2023-05-22 18:44:04', 'voyager.currencies.index', NULL),
(12, 1, 'Companies', '', '_self', NULL, NULL, NULL, 16, '2023-05-22 18:44:47', '2023-05-22 18:44:47', 'voyager.companies.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_05_23_023741_create_currencies_table', 2),
(28, '2023_05_23_023816_create_companies_table', 2),
(31, '2023_05_23_024753_add_unit_currency', 3),
(32, '2023_05_23_032214_add_code_currency', 4),
(33, '2023_05_23_051042_add_sort_currency', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(2, 'browse_bread', NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(3, 'browse_database', NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(4, 'browse_media', NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(5, 'browse_compass', NULL, '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(6, 'browse_menus', 'menus', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(7, 'read_menus', 'menus', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(8, 'edit_menus', 'menus', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(9, 'add_menus', 'menus', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(10, 'delete_menus', 'menus', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(11, 'browse_roles', 'roles', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(12, 'read_roles', 'roles', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(13, 'edit_roles', 'roles', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(14, 'add_roles', 'roles', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(15, 'delete_roles', 'roles', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(16, 'browse_users', 'users', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(17, 'read_users', 'users', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(18, 'edit_users', 'users', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(19, 'add_users', 'users', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(20, 'delete_users', 'users', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(21, 'browse_settings', 'settings', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(22, 'read_settings', 'settings', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(23, 'edit_settings', 'settings', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(24, 'add_settings', 'settings', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(25, 'delete_settings', 'settings', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(26, 'browse_currencies', 'currencies', '2023-05-22 18:44:04', '2023-05-22 18:44:04'),
(27, 'read_currencies', 'currencies', '2023-05-22 18:44:04', '2023-05-22 18:44:04'),
(28, 'edit_currencies', 'currencies', '2023-05-22 18:44:04', '2023-05-22 18:44:04'),
(29, 'add_currencies', 'currencies', '2023-05-22 18:44:04', '2023-05-22 18:44:04'),
(30, 'delete_currencies', 'currencies', '2023-05-22 18:44:04', '2023-05-22 18:44:04'),
(31, 'browse_companies', 'companies', '2023-05-22 18:44:47', '2023-05-22 18:44:47'),
(32, 'read_companies', 'companies', '2023-05-22 18:44:47', '2023-05-22 18:44:47'),
(33, 'edit_companies', 'companies', '2023-05-22 18:44:47', '2023-05-22 18:44:47'),
(34, 'add_companies', 'companies', '2023-05-22 18:44:47', '2023-05-22 18:44:47'),
(35, 'delete_companies', 'companies', '2023-05-22 18:44:47', '2023-05-22 18:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-05-22 18:34:37', '2023-05-22 18:34:37'),
(2, 'user', 'Normal User', '2023-05-22 18:34:37', '2023-05-22 18:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'mkt@email.com', 'users/default.png', NULL, '$2y$10$6UQQ42u/aWD./vk4Fxl.keEtRyAfjN2EKw26QhSuOaT8cDvBO5I1K', NULL, NULL, '2023-05-22 18:35:37', '2023-05-22 18:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
