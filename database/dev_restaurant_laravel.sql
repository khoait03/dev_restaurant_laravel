-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2025 at 04:14 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vanhairestaurant_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_banner`
--

CREATE TABLE `cdw1_banner` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` enum('Slideshow','ads') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Slideshow',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_banner`
--

INSERT INTO `cdw1_banner` (`id`, `name`, `link`, `image`, `position`, `description`, `sort_order`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(1, 'banner 1', 'link/banner', 'banner1.png', 'Slideshow', 'Đây là banner 1', 1, 1, NULL, NULL, '2025-01-23 21:18:23', 1, NULL),
(2, 'banner 2', 'link/banner2', 'banner2.png', 'Slideshow', 'Đây là banner 2', 2, 1, NULL, NULL, '2025-01-23 21:18:24', 2, NULL),
(3, 'Banner 3', 'link/banner3', 'banner3.png', 'Slideshow', 'Đây là banner 3', 3, 1, NULL, NULL, '2025-01-23 21:18:24', 2, NULL),
(4, 'quangcao1', 'link/quangcao1', 'quangcaonhanhang1.png', 'ads', 'Đây là quảng cáo 1', 1, 1, NULL, NULL, '2025-01-23 21:19:53', 1, NULL),
(5, 'Quảng cáo 2', 'link/quangcao2', 'quangcaonhanhang2.png', 'Slideshow', 'Đây là quảng cáo 2', 2, 1, NULL, NULL, '2025-01-23 21:19:57', 1, NULL),
(6, 'sssss', 'sssss', '20241229025701.webp', 'Slideshow', 'ssss', NULL, 1, NULL, '2024-12-28 19:57:01', '2025-01-23 21:18:20', 2, NULL),
(9, 'Test thêm', 'Test thêm', '20241229060538.webp', 'ads', 'Test thêm', NULL, 1, NULL, '2024-12-28 23:05:38', '2024-12-28 23:21:44', 2, '2024-12-28 23:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_bookings`
--

CREATE TABLE `cdw1_bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_people` int NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_bookings`
--

INSERT INTO `cdw1_bookings` (`id`, `name`, `email`, `phone`, `number_of_people`, `booking_date`, `booking_time`, `created_at`, `updated_at`, `status`, `note`) VALUES
(1, 'Thầy Lợi', 'haihai23112004@gmail.com', '0981487674', 4, '2025-02-22', '19:00:00', '2025-02-20 00:33:10', '2025-02-20 01:13:16', 3, 'Tiệc sinh nhật'),
(2, 'Khách hàng 2', 'levanhaiktm@gmail.com', '0981487674', 16, '2025-02-21', '17:25:00', '2025-02-20 07:12:23', '2025-02-20 07:14:17', 2, 'Tiệc họp lớp'),
(3, 'Lê Đình Bằng', 'bangdinh158@gmail.com', '0123456789', 2, '2025-02-21', '19:00:00', '2025-02-20 07:27:47', '2025-02-20 07:27:47', 1, '7g'),
(4, 'Hải Lê Văn', 'haihai23112004@gmail.com', '0981487674', 3, '2025-04-11', '11:23:00', '2025-04-04 20:23:33', '2025-04-04 20:25:30', 2, 'Tiệc đám cưới'),
(5, 'LÊ VĂN HẢI', 'haihai23112004@gmail.com', '0981487674', 4, '2025-04-05', '01:56:00', '2025-04-04 20:51:45', '2025-04-04 20:55:55', 3, 'Đây là tiệc sinh nhật');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_brand`
--

CREATE TABLE `cdw1_brand` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_brand`
--

INSERT INTO `cdw1_brand` (`id`, `name`, `slug`, `image`, `description`, `sort_order`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(1, 'Món Âu', 'mon-au', 'brand_au.png', 'Brand món Âu', 1, 1, NULL, NULL, NULL, 1, NULL),
(2, 'Món Ý', 'mon-y', 'brand_y.jpg', 'Brand món Ý', 2, 1, NULL, NULL, NULL, 1, NULL),
(3, 'Món Nhật', 'mon-nhat', 'brand_nhat.jpg', 'Đồ ăn món Nhật', 3, 1, NULL, NULL, NULL, 1, NULL),
(4, 'Món Việt ', 'viet-nam', 'vietnamnumberone.jpg', 'Đây là đồ ăn Việt', 4, 1, NULL, NULL, NULL, 1, NULL),
(5, 'testtt', 'sssss', '20241229064620.webp', 'ssssss', 1, 1, 1, '2024-12-28 23:46:20', '2025-02-20 03:01:02', 2, '2025-02-20 03:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_category`
--

CREATE TABLE `cdw1_category` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED NOT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_category`
--

INSERT INTO `cdw1_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(1, 'Khai vị', 'khai-vi', 0, 1, 'khaivi.jpg', 'Món ăn của khai vị', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(2, 'Món chính', 'mon-chinh', 0, 2, 'monchinh.jpg', 'Món ăn chính', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(3, 'Canh - Tiềm - Súp', 'canh-tiem-sup', 0, 3, 'canhtiemsup.jpg', 'Món ăn của Canh - Tiềm - Súp', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(4, 'Cơm - Mì - Cháo', 'com-mi-chao', 0, 4, 'commichao.jpg', 'Món ăn của Cơm - Mì - Cháo', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(5, 'Bánh trang miệng', 'banh-trang-mieng', 0, 5, 'banhtrangmieng.jpg', 'Món ăn của Bánh tráng miệng', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(6, 'Đồ uống', 'do-uong', 0, 6, 'douong.jpg', 'Đồ uống', 1, NULL, '2024-12-08 10:10:49', '2024-12-08 10:10:49', 1, NULL),
(7, 'Test sua', 'sss', 0, 0, '20241229075807.jpg', 'ss', 1, 1, '2024-12-29 00:53:11', '2025-02-20 03:00:57', 2, '2025-02-20 03:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_contact`
--

CREATE TABLE `cdw1_contact` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `timeline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_contact`
--

INSERT INTO `cdw1_contact` (`id`, `name`, `email`, `phone`, `title`, `content`, `reply_id`, `user_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`, `timeline`) VALUES
(1, 'Dev Restaurant', 'devrestaurant@gmail.com', '0123.456.789', 'Dev Restaurant luôn bảo đảm về chất lượng cũng như an toàn thực phẩm.', 'Hẻm 30, An Khánh, Ninh Kiều, Cần Thơ', 1, 1, 1, NULL, '2025-02-11 08:26:08', '2025-02-11 08:26:08', NULL, 1, 'Các ngày trong tuần 7:00am - 22:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_favorite`
--

CREATE TABLE `cdw1_favorite` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_favorite`
--

INSERT INTO `cdw1_favorite` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 4, 2, '2025-01-16 11:33:19', '2025-01-16 11:33:19'),
(9, 4, 3, '2025-01-16 11:33:46', '2025-01-16 11:33:46'),
(10, 4, 1, '2025-01-16 11:45:19', '2025-01-16 11:45:19'),
(12, 6, 4, '2025-01-23 06:01:58', '2025-01-23 06:01:58'),
(13, 3, 1, '2025-01-23 16:21:50', '2025-01-23 16:21:50'),
(14, 9, 6, '2025-02-19 07:24:22', '2025-02-19 07:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_inquiries`
--

CREATE TABLE `cdw1_inquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_inquiries`
--

INSERT INTO `cdw1_inquiries` (`id`, `name`, `phone`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 'LÊ VĂN HẢI', '0981487674', 'Tôi muốn tư vấn', '2025-02-20 02:42:17', '2025-04-04 20:55:44', 1),
(2, 'Khách', '4554456456', 'Tôi muốn tham khảo', '2025-04-04 20:58:58', '2025-04-04 20:59:17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_keyword`
--

CREATE TABLE `cdw1_keyword` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('search','blog') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'search',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_keyword`
--

INSERT INTO `cdw1_keyword` (`id`, `title`, `slug`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Cá hấp ', 'ca-hap', 'search', 0, NULL, NULL, NULL, NULL, 1),
(2, 'Gà nấu măng', 'ga-nau-mang', 'blog', 1, NULL, NULL, NULL, NULL, 1),
(3, 'Gà ta chiên mắm', 'ga-ta', 'blog', 1, NULL, '2025-02-20 07:01:08', '2025-02-20 07:01:08', NULL, 1),
(4, 'Salad rau mùa sốt cam', 'salad-rau-mua-sot-cam', 'search', 1, NULL, '2025-02-20 07:00:57', '2025-02-20 07:00:57', NULL, 1),
(5, 'Phở cuốn', 'pho-cuon', 'search', 1, NULL, '2025-02-20 07:01:57', '2025-02-20 07:01:57', NULL, 1),
(6, 'Gỏi tai heo hoa chuối', 'goi-tai-heo-hoa-chuoi', 'search', 1, NULL, '2025-02-20 07:02:10', '2025-02-20 07:02:10', NULL, 1),
(7, 'Gà cuốn lá dứa', 'ga-cuon-la-dua', 'search', 1, NULL, '2025-02-20 07:02:24', '2025-02-20 07:02:24', NULL, 1),
(8, 'Hủ tiếu áp chảo bò', 'hu-tieu', 'search', 1, NULL, '2025-02-20 07:02:56', '2025-02-20 07:02:56', NULL, 1),
(9, 'Cơm chiên thịt cua lá cẩm', 'com-chien-thit-cua-la-cam', 'search', 1, NULL, '2025-02-20 07:03:17', '2025-02-20 07:03:17', NULL, 1),
(10, 'Trà lài nhãn', 'tra-lai-nhan', 'search', 1, NULL, '2025-02-20 07:03:44', '2025-02-20 07:03:44', NULL, 1),
(11, 'Trà sữa Olong', 'tra-sua-olong', 'search', 1, NULL, '2025-02-20 07:04:02', '2025-02-20 07:04:02', NULL, 1),
(12, 'Cách hầm gà', 'cach-ham-ga', 'blog', 1, NULL, '2025-02-20 07:04:41', '2025-02-20 07:04:41', NULL, 1),
(13, 'Nấu canh Khổ qua', 'canh-kho-qua', 'blog', 1, NULL, '2025-02-20 07:04:52', '2025-02-20 07:04:52', NULL, 1),
(14, 'Bảo quản đồ tươi', 'bao-quan-do-tuoi', 'blog', 1, NULL, '2025-02-20 07:05:25', '2025-02-20 07:05:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_library`
--

CREATE TABLE `cdw1_library` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_library`
--

INSERT INTO `cdw1_library` (`id`, `title`, `slug`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Ảnh 1', 'anh-1', '1.jpg', 1, 1, NULL, '2025-02-12 06:39:45', NULL, 1),
(2, 'Ảnh 2', 'anh-2', '2.jpg', 1, NULL, NULL, NULL, NULL, 1),
(3, 'Ảnh 3', 'sss', '20250212134428.png', 1, NULL, '2025-02-12 06:44:28', '2025-02-12 06:57:33', NULL, 1),
(4, 'Ảnh 4', 'anh-4', '20250220140713.webp', 1, NULL, '2025-02-20 07:07:13', '2025-02-20 07:07:13', NULL, 1),
(5, 'Ảnh 5', 'anh-5', '20250220140724.webp', 1, NULL, '2025-02-20 07:07:24', '2025-02-20 07:07:24', NULL, 1),
(6, 'Ảnh 6', 'anh-6', '20250220140741.webp', 1, NULL, '2025-02-20 07:07:41', '2025-02-20 07:07:41', NULL, 1),
(7, 'Ảnh 7', 'anh-7', '20250220140805.webp', 1, NULL, '2025-02-20 07:08:05', '2025-02-20 07:08:05', NULL, 1),
(8, 'Ảnh 8', 'anh-8', '20250220140823.webp', 1, NULL, '2025-02-20 07:08:23', '2025-02-20 07:08:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_menu`
--

CREATE TABLE `cdw1_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` enum('mainmenu','footermenu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mainmenu',
  `table_id` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_menu`
--

INSERT INTO `cdw1_menu` (`id`, `name`, `link`, `type`, `position`, `table_id`, `parent_id`, `sort_order`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Trang chủ', '/', 'custom', 'mainmenu', NULL, 0, 1, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(2, 'Giới thiệu', '/gioi-thieu', 'custom', 'mainmenu', NULL, 0, 2, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(3, 'Thực đơn', '/danh-sach', 'custom', 'mainmenu', NULL, 0, 3, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(4, 'Bài viết', '/bai-viet', 'custom', 'mainmenu', NULL, 0, 4, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(5, 'Hình ảnh', '/hinh-anh', 'custom', 'mainmenu', NULL, 0, 5, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(6, 'Liên hệ', '/lien-he', 'custom', 'mainmenu', NULL, 0, 6, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(7, 'Tin tức', '/tin-tuc', 'custom', 'mainmenu', NULL, 4, 1, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 0),
(8, 'Bài viết', '/bai-viet', 'custom', 'mainmenu', NULL, 4, 2, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 0),
(9, 'Điều khoản sử dụng', '/dieu-khoan-su-dung', 'chinh-sach', 'footermenu', NULL, 0, 1, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(10, 'Chính sách bảo mật', '/chinh-sach-bao-mat', 'chinh-sach', 'footermenu', NULL, 0, 2, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(11, 'Chính sách vận chuyển', '/chinh-sach-van-chuyen', 'chinh-sach', 'footermenu', NULL, 0, 3, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(12, 'Chính sách An toàn thực phẩm', '/chinh-sach-an-toan-thuc-pham', 'chinh-sach', 'footermenu', NULL, 0, 4, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1),
(13, 'Chính sách liên hệ', '/chinh-sach-lien-he', 'chinh-sach', 'footermenu', NULL, 0, 5, 1, NULL, '2024-12-08 10:10:51', '2024-12-08 10:10:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_migrations`
--

CREATE TABLE `cdw1_migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_migrations`
--

INSERT INTO `cdw1_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_12_08_153839_create_brand_table', 1),
(2, '2024_12_08_153854_create_category_table', 1),
(3, '2024_12_08_153913_create_contact_table', 1),
(4, '2024_12_08_153930_create_menu_table', 1),
(5, '2024_12_08_153955_create_order_table', 1),
(6, '2024_12_08_154032_create_orderdetail_table', 1),
(7, '2024_12_08_154054_create_post_table', 1),
(8, '2024_12_08_154122_create_product_table', 1),
(9, '2024_12_08_154141_create_topic_table', 1),
(10, '2024_12_08_154155_create_user_table', 1),
(11, '2024_12_08_154422_create_banner_table', 1),
(12, '2024_12_08_162013_create_keyword_table', 1),
(13, '2024_12_15_152046_create_library', 2),
(14, '2024_12_16_130148_create_library', 3),
(15, '2025_01_08_143919_create_reviews', 4),
(16, '2025_01_08_143949_create_bookings', 4),
(17, '2025_01_08_144047_create_inquiries', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_order`
--

CREATE TABLE `cdw1_order` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `payment_method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_order`
--

INSERT INTO `cdw1_order` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`, `note`, `payment_method`) VALUES
(10, 3, 'LÊ VĂN HẢI', 'khachhangmoi2@gmail.com', '0981487674', 'Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh,, Phú Yên', 3, NULL, '2025-01-08 13:04:02', '2025-01-08 13:04:02', NULL, 1, 'dđ', 'ZaloPay'),
(11, 3, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B, ssss, Thủ đức', 3, NULL, '2025-01-08 14:23:38', '2025-01-08 15:02:08', NULL, 2, 'sss', 'ApplePay'),
(12, 3, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 3, NULL, '2025-01-12 08:23:00', '2025-01-12 08:23:13', NULL, 3, 'ssss', 'Momo'),
(13, 4, 'Hải Văn', 'levanhaiktm@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 4, NULL, '2025-01-12 08:26:45', '2025-01-12 08:27:29', NULL, 3, 'Không hành và không hẹ', 'ZaloPay'),
(14, 4, 'Hải Văn', 'levanhaiktm@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 4, NULL, '2025-01-13 03:46:47', '2025-01-13 05:56:25', NULL, 3, 'ko hanh ko he', 'COD'),
(15, 3, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0123456789', 'ddđ', 2, NULL, '2025-01-23 06:51:59', '2025-01-23 06:51:59', NULL, 2, 'ddd', 'Momo'),
(16, 2, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0981487674', 'rrrrrr', 3, NULL, '2025-01-23 06:53:57', '2025-01-23 07:08:20', NULL, 0, 'rrrrr', 'COD'),
(17, 3, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 3, NULL, '2025-01-23 16:15:00', '2025-01-23 16:15:26', NULL, 3, 'Lý do khác', 'Momo'),
(18, 3, 'Lê Nam V', 'khachhangmoi2@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 3, NULL, '2025-01-23 16:18:57', '2025-01-23 16:19:29', NULL, 3, 'Lý do khác (Tôi muốn đổi)', 'ApplePay'),
(19, 1, 'Lê Văn Hải', 'vanhai@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 1, NULL, '2025-02-15 09:45:53', '2025-02-15 09:46:25', NULL, 3, 'Thời gian giao hàng quá lâu', 'ATM'),
(20, 1, 'Lê Văn Hải', 'vanhai@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 1, NULL, '2025-02-15 09:48:58', '2025-02-15 09:50:31', NULL, 3, 'Lý do khác (sss)', 'COD'),
(21, 1, 'Lê Văn Hải', 'vanhai@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 1, NULL, '2025-02-15 09:49:35', '2025-02-19 10:53:59', NULL, 2, 'sssss', 'COD'),
(22, 5, 'Thầy Lợi', 'quanlywebphucphuong@gmail.com', '0123456789', 'KTX trường Cao Đẳng Công Thương, TP.HCM', 5, NULL, '2025-02-19 11:04:55', '2025-02-19 11:06:03', NULL, 2, 'Thầy ăn hành , không hẹ', 'COD'),
(23, 5, 'Thầy Lợi', 'quanlywebphucphuong@gmail.com', '0123456789', 'KTX trường Cao Đẳng Công Thương, TP.HCM', 5, NULL, '2025-02-20 07:17:06', '2025-02-20 07:17:38', NULL, 2, 'Khu D , Phòng 302 , gửi ở phòng bảo vệ', 'VNPAY'),
(24, 9, 'Khách hàng 1', 'vanhairestaurant@gmail.com', '0123456789', '8/15/15 đường 147 , Phước Long B', 9, NULL, '2025-02-20 07:20:27', '2025-02-21 00:36:52', NULL, 3, 'Chợ Hoa Cau , đường 147, hẻm 8/15/15', 'COD'),
(25, 9, 'Khách hàng 1', 'vanhairestaurant@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 9, NULL, '2025-04-04 20:21:19', '2025-04-04 20:21:54', NULL, 3, 'Đặt nhầm sản phẩm, Thời gian giao hàng quá lâu, Lý do khác', 'COD'),
(26, 9, 'Khách hàng 1', 'vanhairestaurant@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 9, NULL, '2025-04-04 20:22:11', '2025-04-04 20:22:11', NULL, 0, 'kkkkkk', 'VNPAY'),
(27, 9, 'Khách hàng 1', 'vanhairestaurant@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 9, NULL, '2025-04-04 20:48:56', '2025-04-04 20:49:30', NULL, 3, 'Lý do khác (Tôi muốn đổi)', 'COD'),
(28, 9, 'Khách hàng 1', 'vanhairestaurant@gmail.com', '0981487674', 'Lê Văn Hải, Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 9, NULL, '2025-04-04 20:49:46', '2025-04-04 20:56:39', NULL, 1, 'ok', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_orderdetail`
--

CREATE TABLE `cdw1_orderdetail` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_orderdetail`
--

INSERT INTO `cdw1_orderdetail` (`id`, `order_id`, `product_id`, `qty`, `price`, `discount`, `amount`, `created_at`, `updated_at`) VALUES
(1, 10, 3, 1, 21667, 0, 21667, NULL, NULL),
(2, 11, 2, 1, 40406, 0, 40406, NULL, NULL),
(3, 11, 5, 1, 31634, 0, 31634, NULL, NULL),
(4, 12, 2, 2, 40406, 0, 80812, NULL, NULL),
(5, 13, 2, 1, 40406, 0, 40406, NULL, NULL),
(6, 14, 2, 1, 40406, 0, 40406, NULL, NULL),
(7, 15, 1, 1, 35532, 0, 35532, NULL, NULL),
(8, 16, 3, 2, 21667, 0, 43334, NULL, NULL),
(9, 16, 4, 1, 49408, 0, 49408, NULL, NULL),
(10, 17, 2, 1, 40406, 0, 40406, NULL, NULL),
(11, 18, 2, 1, 40406, 0, 40406, NULL, NULL),
(12, 19, 3, 1, 21667, 0, 21667, NULL, NULL),
(13, 20, 3, 1, 21667, 0, 21667, NULL, NULL),
(14, 21, 3, 1, 21667, 0, 21667, NULL, NULL),
(15, 22, 2, 1, 40406, 0, 40406, NULL, NULL),
(16, 22, 3, 1, 21667, 0, 21667, NULL, NULL),
(18, 23, 1, 1, 68000, 0, 68000, NULL, NULL),
(19, 23, 4, 2, 120000, 0, 240000, NULL, NULL),
(20, 23, 14, 1, 155000, 0, 155000, NULL, NULL),
(21, 24, 14, 1, 155000, 0, 155000, NULL, NULL),
(22, 24, 18, 1, 58000, 0, 58000, NULL, NULL),
(23, 24, 39, 1, 45000, 0, 45000, NULL, NULL),
(24, 24, 35, 1, 45000, 0, 45000, NULL, NULL),
(25, 25, 5, 2, 168000, 0, 336000, NULL, NULL),
(26, 26, 5, 2, 168000, 0, 336000, NULL, NULL),
(27, 27, 6, 3, 195000, 0, 585000, NULL, NULL),
(28, 28, 6, 3, 195000, 0, 585000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_post`
--

CREATE TABLE `cdw1_post` (
  `id` bigint UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('post','page') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL,
  `new` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_post`
--

INSERT INTO `cdw1_post` (`id`, `topic_id`, `title`, `slug`, `content`, `description`, `image`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`, `new`) VALUES
(1, 1, 'Mách bạn công thức làm canh cá nấu mẻ thơm ngon đậm vị', 'cong-thuc-nau-an', '<h3><strong>Canh cá nấu mẻ</strong>&nbsp;là món ăn dân dã, quen thuộc trong mỗi mâm cơm gia đình Việt. Mùa hè nắng nóng mà có bát canh cá chua chua, ngọt ngọt thì còn gì bằng. Có rất nhiều cách để chế biến theo công thức này như: canh cá trắm nấu mẻ, canh cá basa nấu mẻ, canh cá lóc nấu mẻ, canh cá dọc mùng nấu mẻ,…</h3><p>Vậy cần chuẩn bị những nguyên liệu gì,&nbsp;<strong>cách chế biến canh cá nấu mẻ</strong>&nbsp;như thế nào để có bát canh thơm ngon, chuẩn vị nhất. Hãy cùng&nbsp;<strong>Dola</strong>&nbsp;theo dõi bài viết dưới đây bạn nhé.</p><h2><strong>Công thức làm canh cá nấu mẻ cả nhà đều mê</strong></h2><p>Để ra được một món canh thơm ngon, bổ dưỡng thì việc lựa chọn các nguyên liệu là điều rất cần thiết nên chị em cần phải lựa chọn thật kỹ. Nguyên liệu để nấu món canh này vô cùng đơn giản và dễ tìm.</p><h3><strong>Nguyên liệu cần chuẩn bị</strong></h3><ul><li>Cá tươi.</li><li>Cà chua.</li><li>Cơm mẻ.</li><li>Nghệ.</li><li>Hành tím, hành lá, thì là, mùi tàu, ớt.</li><li>Một số gia vị cần thiết cho món ăn: muối, hạt nêm, nước mắm, tiêu xay, …</li></ul><h3><strong>Sơ chế nguyên liệu cá nấu mẻ</strong></h3><ul><li>Cá tươi: Bạn nên chọn mua cá đang còn sống để đảm bảo độ tươi ngon, kích thước vừa phải, thịt cá săn chắc mới là cá ngon. Cá mua về, đánh vảy, rửa sạch sau đó mổ bụng lấy hết phần ruột cá ra. Chặt cá thành các khúc vừa ăn sau đó ướp một chút gia vị muối, nước mắm, hạt nêm trong vòng 30 phút.</li><li>Cà chua: Nên chọn mua những quả cà chua da căng bóng, có màu đỏ hồng, có hình tròn, đã chín hẳn để chế biến món ăn được ngon hơn. Cà chua rửa sạch, bổ hình múi cau.</li><li>Hành lá, thì là, mùi tàu nhặt rồi rửa sạch, cắt khúc tầm 2cm.</li><li>Nghệ cạo vỏ, giã lấy phần nước cốt, bỏ bã.</li><li>Hành tím bóc vỏ băm nhỏ hoặc xay nhuyễn bằng máy xay gia vị.</li><li>Ớt rửa sạch, xắt lát nhỏ.</li><li>Cơm mẻ lọc qua rây lấy 1 bát tô nước mẻ.</li></ul><p>&nbsp;</p><p>&nbsp;</p><h3><strong>Các bước chế biến canh cá nấu mẻ ngon đúng vị</strong></h3><p>Phần chế biến món ăn cũng là phần rất quan trọng, quyết định đến độ thành công của món ăn. Vậy nên hãy cùng tham khảo các bước chế biến canh&nbsp;<strong>cá nấu mẻ</strong>&nbsp;dưới đây bạn nhé:</p><ul><li>Bước 1: Bắc chảo lên bếp, thêm 1 thìa dầu ăn, làm nóng dầu ăn rồi cho cá vào rán sơ, vớt ra để ráo dầu.</li><li>Bước 2: Bắc nồi lên bếp, phi thơm hành tím, thêm một lượng nước vừa ăn rồi nêm nếm gia vị. Tiếp theo cho cà chua, nước mẻ, nước cốt nghệ vào đun sôi. Tiếp đến cho cá vào đun sôi với lửa nhỏ đến khi chín.</li><li>Bước 3: Cho hành lá, thì là, rau mùi vào rồi nêm nếm lại gia vị lần nữa rồi tắt bếp. Múc ra bát và thưởng thức.</li></ul><p>Vậy là chỉ với 3 bước cơ bản trên bạn đã có ngay món canh cá nấu mẻ thanh mát cho cả nhà rồi. Nếu bạn đang phân vân không biết&nbsp;<strong>hôm nay ăn gì</strong>&nbsp;thì thử ngay món này nhé.</p><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/11/canh-ca-nau-me-2-7edb.jpg\" alt=\"Canh Ca Nau Me 2\" width=\"764\">Canh cá nấu mẻ thơm ngon chua chua, ngọt ngọt</p><p>&nbsp;</p><h2><strong>Công thức làm canh cá dọc mùng nấu mẻ</strong></h2><h3><strong>Nguyên liệu làm canh cá dọc mùng nấu mẻ</strong></h3><ul><li>Cá tươi.</li><li>Dọc mùng.</li><li>Cơm mẻ.</li><li>Cà chua.</li><li>Hành tím, ớt, nghệ.</li><li>Hành lá, thì là.</li><li>Một số gia vị cần thiết cho món ăn: nước mắm, muối, hạt nêm, dầu ăn, …</li></ul><h3><strong>Sơ chế nguyên liệu làm canh cá dọc mùng nấu mẻ</strong></h3><ul><li>Cá tươi mua về đánh vảy, rửa sạch, làm sạch ruột, cắt thành các khúc vừa ăn. Ướp gia vị với muối, hạt nêm trong vòng 15 - 20 phút.</li><li>Dọc mùng tước bỏ phần sơ bên ngoài, xắt lát, ướp với muối sau đó rửa sạch lại với nước và vắt cho khô.</li><li>Hành tím bóc vỏ, băm nhỏ hoặc xay nhuyễn bằng máy xay gia vị.</li><li>Cà chua rửa sạch, thái hình múi cau.</li><li>Nghệ cạo vỏ, giã nát, lọc lấy nước cốt.</li><li>Hành lá, thì là nhặt, rửa sạch, xắt khúc.</li><li>Cơm mẻ lọc, rây lấy nước mẻ.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/11/so-che-nguyen-lieu-nau-canh-ca-doc-mung-nau-me-4-146a.jpg\" alt=\"So Che Nguyen Lieu Nau Canh Ca Doc Mung Nau Me 4\" width=\"764\">Sơ chế nguyên liệu canh cá dọc mùng nấu mẻ</p><p>&nbsp;</p><h3><strong>Cách làm canh cá dọc mùng nấu mẻ</strong></h3><ul><li>Bước 1: Bắc chảo lên bếp, làm nóng dầu ăn cho cá vào chiên sơ rồi vớt ra để ráo dầu.</li><li>Bước 2: Bắc nồi lên bếp, phi thơm hành tím, cho một lượng nước vừa ăn vào, nêm nếm gia vị rồi đun sôi. Tiếp đến cho cà chua, nước cốt nghệ, nước mẻ, dọc mùng vào đun sôi. Tiếp theo cho cá vào đun với lửa nhỏ đến chín.</li><li>Bước 3: Nêm nếm lại gia vị, rắc hành lá, thì là, ớt tươi tùy theo khẩu vị lên trên rồi tắt bếp. Múc ra bát và thưởng thức.</li></ul><p><strong>Canh cá dọc mùng nấu mẻ</strong>&nbsp;sẽ ngon hơn khi ăn nóng, ăn kèm với cơm hay bún cũng đều rất tuyệt.</p><p><br></p>', 'Canh cá nấu mẻ là món ăn dân dã, quen thuộc trong mỗi mâm cơm gia đình Việt. Mùa hè nắng nóng mà có bát canh cá chua chua, ngọt ngọt thì còn gì bằng.', '20250220134818.jpg', 'post', 0, 1, '2024-06-19 11:04:23', '2025-02-20 06:48:18', NULL, 1, 1),
(2, 2, 'Tuyển tập 8 món xào đơn giản, tiết kiệm thời gian cho chị em', 'tuyen-tap-8-mon-xao', '<h2><strong>Súp lơ xào thịt bò</strong></h2><p>Đây là món ăn được nhiều người lựa chọn không chỉ vì&nbsp;<strong>cách chế biến đơn giản,&nbsp;</strong>nhanh gọn, không phải chuẩn bị nhiều mà còn vô cùng dinh dưỡng cho bữa cơm hàng ngày.</p><h3><strong>Nguyên liệu:</strong></h3><ul><li>Một cây súp lơ (400g).</li><li>Thịt bò (300g).</li><li>Cà chua 2 trái.</li><li>Tỏi 1 củ.</li><li>Hành lá.</li><li>Gia vị đi kèm: nước mắm, tiêu, muối.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Thịt bò rửa sạch, thái mỏng. Ướp nước mắm, tỏi, tiêu, dầu ăn cho thịt mềm.</li><li>Súp lơ rửa sạch, ngâm qua nước muối, cà chua gọt vỏ, tỏi băm nhuyễn, hành thái khúc.</li></ul><h3><strong>Chế biến:</strong></h3><p>Phi tỏi thơm cho thịt bò đã ướp vào xào chín, cho cà chua, bông súp lơ vào xào 3 phút. Tắt bếp cho hành lá vào đảo qua rồi bày ra đĩa. Vậy là bạn đã thực hiện xong&nbsp;<strong>công thức nấu ăn ngon</strong>&nbsp;mà Bếp TASTY hướng dẫn rồi.</p><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/thit-bo-xao-sup-lo-1-4e4f.jpg\" alt=\"Thit Bo Xao Sup Lo 1\" width=\"764\">Súp lơ xào thịt bò với màu sắc bắt mắt, dinh dưỡng</p><p>&nbsp;</p><h2><strong>Lòng mề gà xào dứa</strong></h2><p>Để có được món&nbsp;<strong>mề gà xào dứa xào ngon</strong>, TASTY Kitchen mách nhỏ bạn cách làm lòng không bị tanh, dứa xào sẽ không bị chua, ra nhiều nước nhé.</p><p>Dứa thường góp mặt trong danh sách các&nbsp;<strong>món xào đơn giản</strong>. Với vị ngọt, chua nhẹ, và giòn sật của mề, tất cả tạo ra một món ăn rất vào cơm mà không bị ngán.</p><h3><strong>Nguyên liệu tạo ra món ăn:</strong></h3><ul><li>Lòng mề gà (4 bộ).</li><li>Dứa 1 quả (nhỏ).</li><li>Tỏi, gừng, hành tím.</li><li>Mùi tàu, mỡ lợn, muối, nước mắm, tiêu, hạt nêm.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Lòng, mề gà (ngâm nước gừng khử tanh) xát muối rửa sạch, thái miếng, ướp gia vị đầy đủ.</li><li>Dứa gọt vỏ, thái miếng.</li><li>Tỏi, gừng, ớt, hành tím băm nhuyễn.</li></ul><h3><strong>Chế biến:</strong></h3><p>Phi hành, tỏi thơm, cho lòng vào xào, dứa xào to lửa không chín quá dứa sẽ chua và ra nhiều nước nhé.</p><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/dua-xao-long-me-ga-3b27.jpg\" alt=\"Dua Xao Long Me Ga\" width=\"764\">Dứa xào lòng mề gà hấp dẫn, đưa cơm</p><p>&nbsp;</p><h2><strong>Giá, mướp xào trứng gà non</strong></h2><p>Đây cũng là một&nbsp;<strong>món xào đơn giản</strong>, ngon miệng, và đặc biệt rất thích hợp ăn vào mùa hè. Trứng vàng bắt mắt nhiều chất dinh dưỡng, bùi bùi, quyện cùng giá giòn giòn, ngọt ngọt sẽ mang đến một mùi vị đặc trưng khiến người dùng khó mà cưỡng lại được.</p><h3><strong>Nguyên liệu để tạo ra món ăn:</strong></h3><ul><li>500g trứng gà non.</li><li>300g giá đỗ.</li><li>1 quả mướp.</li><li>Hành lá, mùi, hành tím, tiêu.</li><li>Gia vị.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Trứng rửa sạch (ướp gia vị).</li><li>Giá rửa sạch (chần qua).</li><li>Mướp gọt vỏ, thái chéo.</li><li>Phi thơm hành cho trứng vào xào chín cho ra đĩa (nhẹ tay). Cho giá vào xào (không xào chín quá giá mất vị ngọt, giòn) tắt bếp bày ra đĩa.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/trung-ga-non-xao-muop-c1a9.jpg\" alt=\"Trung Ga Non Xao Muop\" width=\"764\">Nếu không có giá đỗ, bạn cũng có thể làm được món trứng non xào mướp ngon như thế này</p><p>&nbsp;</p><h2><strong>Bông thiên lý xào thịt bò</strong></h2><p>Bông thiên lý có vị ngọt lại giòn. kết hợp cùng thịt bò mềm sẽ tạo nên món ăn đặc biệt.</p><p>Là&nbsp;<strong>món xào đơn giản</strong>&nbsp;nhưng thịt bò xào hoa thiên lý lại có tác dụng thần kỳ, giúp thanh nhiệt, giải độc, hết rôm sẩy ở trẻ em.</p><h3><strong>Nguyên liệu tạo ra món ăn:</strong></h3><ul><li>Khoảng 300g bông thiên lý.</li><li>200g thịt bò.</li><li>Hành khô, tỏi, gừng, mùi tàu.</li><li>Gia vị, hạt nêm, dầu, nước mắm.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Thịt rửa sạch thái mỏng (ướp gia vị).</li><li>Bông thiên lý rửa sạch, ngâm nước muối hạt.</li><li>Hành khô, tỏi bóc vỏ giã nhỏ.</li><li>Phi thơm hành tỏi cùng thịt bò (lửa to). Cho bông thiên lý xào 2 phút nêm lại gia vị bày lên đĩa.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/bo-xao-hoa-thien-ly-c412.jpg\" alt=\"Bo Xao Hoa Thien Ly\" width=\"764\">Món xào thịt bò, bông thiên lý thành phẩm</p><p>&nbsp;</p><h2><strong>Mướp đắng xào thịt lợn</strong></h2><p>Món mướp đắng xào thịt lợn thì ngon hết sẩy, hòa quyện cùng vị đắng thanh, giòn của mướp, ngọt của thịt thăn khiến bất cứ ai ăn một lần cũng nhớ mãi. Đặc biệt, món ăn còn mang lại giá trị dinh dưỡng cao, tốt cho sức khỏe như: giảm táo bón, chống lại các bệnh về ung thư giúp người bị tiểu đường cải thiện khá ok.</p><h3><strong>Nguyên liệu tạo ra món ăn:</strong></h3><ul><li>2 quả mướp đắng.</li><li>300g thịt lợn (thăn).</li><li>Gia vị.</li><li>Tỏi, ớt, hành tím.</li><li>Hành lá.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Thịt lợn thái mỏng (ướp tỏi, hạt nêm, dầu ăn, nước mắm, muối, ướp 30 phút).</li><li>Mướp đắng rửa, ngâm nước muối cho đỡ đắng, thái mỏng.</li><li>Sau khi hoàn tất các khâu cho thịt xào trước xong cho mướp đắng xào 3 phút nếm lại gia vị cho ra đĩa.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/muop-dang-la-nguyen-lieu-chinh-a1ce.jpg\" alt=\"Muop Dang La Nguyen Lieu Chinh\" width=\"764\">Nguyên liệu chính để tạo ra món ăn</p><p>&nbsp;</p><p><strong>&gt;&gt; Xem thêm:</strong></p><ul><li><strong>4 bước để có món hến xào hoa thiên lý lạ miệng</strong></li><li><strong>Bật mí những món ăn cho mùa hè nắng nóng</strong></li></ul><h2><strong>Rau cải bó xôi xào tỏi</strong></h2><p>Rau cải bó xôi không còn xa lạ và thường xuyên xuất hiện trong các bữa ăn của người Việt. Công thức chế biến không những dễ ăn mà còn giàu dinh dưỡng, nhất là Vitamin A giúp tăng cường đề kháng, Vitamin E, C giúp phòng chống ung thư,...</p><h3><strong>Nguyên liệu để tạo ra món ăn:</strong></h3><ul><li>1 mớ rau cải bó xôi.</li><li>2 củ tỏi.</li><li>Gia vị.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Rau cải rửa sạch, ráo nước.</li><li>Tỏi bóc vỏ giã nhỏ.</li><li>Tỏi phi thơm cho rau vào xào, thêm xì dầu và gia vị vừa ăn là bạn đã có một món xào đơn giản mà đưa cơm rồi.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/cai-bo-xoi-xao-toi-b272.jpg\" alt=\"Cai Bo Xoi Xao Toi\" width=\"764\">Cải bó xôi xào tỏi với màu xanh mướt ngon mắt</p><p>&nbsp;</p><h2><strong>Rau muống xào chao</strong></h2><p>Rau muống xào chao giản dị mà ngon miệng, với vị béo của chao, giòn sật của rau muống, ăn rất đã miệng. Chưa kể, chao còn chứa nhiều vitamin, canxi, cải thiện cho người thiếu máu rất tốt.</p><h3><strong>Nguyên liệu để tạo ra món ăn:</strong></h3><ul><li>Rau muống (1mớ).</li><li>3 viên chao (trắng).</li><li>Tỏi (2 củ).</li><li>Gia vị.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Rau chọn không quá già, nhặt bớt lá sâu, úa, rửa sạch để ráo.</li><li>Tỏi băm nhỏ.</li><li>Muốn rau muống xanh giòn, bạn phải đun nước sôi chần qua rau, vớt ra cho vào nước đá lạnh (màu sẽ xanh, giòn), sau đó vớt ra để ráo.</li><li>Cho mỡ lợn vào phi thơm tỏi cho rau muống vào xào chín (lửa to), nêm gia vị vừa ăn, bày ra đĩa.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/rau-muong-xao-chao-52e7.jpg\" alt=\"Rau Muong Xao Chao\" width=\"764\">Rau muống xào chao dễ ăn cho mâm cơm mùa hè</p><p>&nbsp;</p><h2><strong>Đậu cô ve xào lòng, mề gà</strong></h2><p>Đậu cô ve không những người Việt mà khắp thế giới đều yêu thích. Đậu cô ve xào lòng là một&nbsp;<strong>món ngon dễ làm</strong>, tốt cho sức khỏe, ngăn ngừa ung thư, giảm nguy cơ trầm cảm, giúp xương chắc khỏe tăng cường hệ tiêu hóa.</p><h3><strong>Nguyên liệu để tạo ra món ăn:</strong></h3><ul><li>300g đậu cô ve.</li><li>4 bộ lòng mề gà.</li><li>Tiêu, dấm, hạt nêm, nước mắm, muối, dầu ăn.</li><li>Hành lá, mùi tàu, tỏi, hành tím.</li></ul><h3><strong>Cách làm:</strong></h3><ul><li>Lòng, mề xát muối, dấm rửa sạch. Mề thái mỏng, lòng thái khúc vừa ăn. Ướp (gia vị, nước mắm, hạt nêm, dầu ăn, tỏi).</li><li>Đậu cô ve thái vát (ngấm gia vị).</li><li>Phi thơm tỏi hành tiến hành xào chín lòng, đậu (đậu chần qua nước sôi) nêm gia vị vừa ăn cho ra đĩa rắc hạt tiêu, là thưởng thức được rồi.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/16/dau-cove-xao-long-me-ga-3066.jpg\" alt=\"Dau Cove Xao Long Me Ga\" width=\"764\">Đậu cô ve xào lòng, mề gà không tốn quá nhiều thời gian</p>', 'Cùng Bếp nhà VanHaiRestaurant khám phá công thức làm 8 món xào đơn giản, nhanh gọn trong bài viết dưới đây để làm phong phú, đa dạng thêm cho bữa cơm của gia đình mình nhé.', '20250220135020.jpg', 'post', 1, 1, '2024-12-29 01:44:54', '2025-02-20 06:50:20', NULL, 1, 1),
(4, 2, 'Hé lộ chìa khóa vàng giúp thiết lập được công thức nấu ăn ngon', 'he-lo-chi-khoa-vang-cong-thuc-nau-an-ngon', '<h2><strong>Thực phẩm tươi ngon - bước quan trọng giúp hoàn thiện công thức nấu ăn ngon</strong></h2><p>Một&nbsp;<strong>công thức nấu ăn ngon</strong>&nbsp;không chỉ đòi hỏi chuẩn theo tỉ lệ nêm nếm, phối hợp nguyên liệu phù hợp mà còn phụ thuộc rất lớn vào việc chọn lựa nguyên liệu. Ngoài ra, nhiều chuyên gia dinh dưỡng nhận định, thực phẩm có dấu hiệu ẩm mốc, không tươi ngon hoặc để quá lâu sẽ ảnh hưởng lớn đến sức khỏe. Do đó, nên có những mẹo nhỏ để quá trình chọn lựa được diễn ra thuận lợi, nhanh chóng, hiệu quả:</p><h3><strong>Mẹo chọn được cá tươi ngon&nbsp;</strong></h3><p>Có rất nhiều loại cá khác nhau và được bày bán dưới nhiều dạng như: đóng hộp, nguyên con, một phần, cá tươi sống,... Chọn được nguyên liệu tươi ngon được nhiều người ví như chìa khóa vàng mở ra&nbsp;<strong>công thức nấu ăn ngon</strong>:</p><ul><li>Cá còn tươi mắt sẽ không có dấu hiệu bị đục, sáng rõ ràng và có dấu hiệu phồng ra ngoài hơn.</li><li>Đối với các loại cá có vảy, nên đảm bảo vẩy chúng không xỉn màu, các lớp được xếp lên nhau chặt chẽ, không thiếu vảy.</li><li>Loài cá không có vẩy thường được cho là tươi ngon khi lớp da của chúng bóng mượt, không có màu sắc bất thường hoặc xỉn màu.</li><li>Cá còn tươi thường sẽ có thịt chắc chắn, độ đàn hồi cao. Do đó, nếu ấm thử thấy thịt cá mềm, màu sắc nhợt nhạt thì có nguy cơ rằng chúng đã bị ươn, không còn tương ngon.</li><li>Mang cá là một trong các dấu hiệu dễ dàng nhận biết được độ tươi ngon của cá. Nếu mang cá đã chuyển sang màu sẫm, không còn có màu đỏ anh đào thì tuyệt đối không nên mua.</li><li>Khi chọn cá phi lê, để chắc chắn rằng chúng còn tươi ngon, không để quá lâu, cần quan sát và chắc chắn rằng thịt cá có màu sắc bình thường, tạo cảm giác đàn hồi chắc chắn, không mềm, bở hat có dấu hiệu bong da.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/cach-chon-ca-tuoi-ngon-9031.jpg\" alt=\"Cach Chon Ca Tuoi Ngon\" width=\"764\"></strong>Món ăn sẽ hoàn hảo hơn nếu chọn mua được nguyên liệu tươi sạch</p><p>&nbsp;</p><h3><strong>Phương pháp để chọn mua rau củ quả tươi nguyên nhất</strong></h3><p>Việc chọn mua rau củ quả đã trở nên quen thuộc với nhiều chị em phụ nữ. Tuy nhiên, không ít người tỏ ra lúng túng trong việc chọn lựa để có được những loại rau của quả tươi ngon.</p><ul><li>Chọn lựa các loại rau củ tươi xanh, còn nguyên vẹn, tránh những loại có dấu hiệu dập nát, vẻ ngoài phổng phao, mập mạp hay có kích thước to lớn bất thường.</li><li>Màu sắc là một trong những dấu hiệu để nhận biết mức độ tươi nguyên của rau củ. Nên chọn những loại có màu sắc tự nhiên, không có dấu hiệu úa vàng.</li><li>Chọn rau ăn lá không nên có màu sắc quá đậm, quá mướt bởi chúng thường có khả năng đã được tiêm, phun thuốc tăng trưởng.</li><li>Đối với các loại củ quả nên chọn loại có nguồn gốc xuất xứ, kích thước không quá to, màu sắc tự nhiên.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/lua-chon-rau-cu-tuoi-nguyen-gop-phan-lam-nen-bua-a-0baa.jpg\" alt=\"Lua Chon Rau Cu Tuoi Nguyen Gop Phan Lam Nen Bua A\" width=\"764\"></strong>Chọn rau củ quả không dập nát, úa vàng, còn nguyên vỏ</p><p>&nbsp;</p><h3><strong>Mẹo chọn thịt được nhiều người áp dụng nhất</strong></h3><p>Để có được những miếng thịt đảm bảo chất lượng, tươi nguyên và giá cả hợp lý, có chị em nội trợ có thể tham khảo và áp dụng một số kỹ thuật sau:</p><ul><li>Khi chọn thịt đông lạnh, nên chọn loại cầm chắc tay, đặc thịt, không có dấu hiệu mềm nhũn.</li><li>Màu sắc thịt không nhợt nhạt, đều màu; tránh những loại có màu sắc bất thường, kể cả khi chúng xuất hiện ở viên thịt.</li><li>Đặc biệt, tránh chọn mua những loại thịt có màu mùi bất thường, bao gồm cả mùi của dấu hiệu ôi thiu và mùi hóa chất.</li><li>Nên chọn mua thịt tại các cơ sở đã niêm yết giá hoặc tham khảo giá thị trường trước khi mua để tránh vấn đề bị tăng giá.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/khong-chon-mua-thit-co-mau-mui-la-2-cc80.jpg\" alt=\"Khong Chon Mua Thit Co Mau Mui La 2\" width=\"764\"></strong>Không nên chọn mua những loại thịt đã có mùi và màu sắc bất thường</p><p>&nbsp;</p><h2><strong>Gợi ý một số công thức trong mâm cơm hàng ngày</strong></h2><p>Mâm cơm gia đình luôn đóng một vai trò quan trọng trong cuộc sống của chúng ta. Do đó, rất nhiều người luôn dành những khoảng thời gian nhất định trong ngày để chọn mua và chế biến nên những món ăn chất lượng, vừa miệng. Dưới đây là&nbsp;<strong>một số công thức nấu ăn ngon</strong>&nbsp;làm nên mâm cơm tròn vị. Chị em sẽ không phải đau đầu suy nghĩ “hôm nay ăn gì” và chế biến như thế nào nữa.</p><h3><strong>Một số công thức nấu món kho ngon</strong></h3><p>Món kho thường là một trong những món chính, phổ biến ở mọi mâm cơm trên khắp ba miền Bắc - Trung - Nam. Chúng có thể được biến tấu dưới nhiều dạng khác nhau, tuy nhiên tất cả đều phải đậm đà, có màu sắc hấp dẫn.</p><h4><strong>Cá bống kho tiêu - kích thích vị giác</strong></h4><p>Món ăn dân dã đậm vị này cần có một số loại nguyên liệu như: cá bống, ớt sừng, tiêu sọ, hành, tỏi, rau thơm, gia vị,... Ngoài ra, để thêm phần hấp dẫn cho món ăn, nên chọn một chiếc nồi đất với kích thước phù hợp để kho cá. Tiếp đó tiến hành theo các bước sau:</p><ul><li>Cá bống loại bỏ vẩy, phần đuôi, ruột và rửa sạch, lưu ý nếu phần bụng có trứng thì nên giữ lại. Ướp cá với những loại gia vị đã chuẩn bị sẵn như: nước mắm, hạt nêm, bột ngọt,... và để cá thấm trong vòng 1 đến 2h.</li><li>Các loại rau thơm được rửa sạch, thái thành từng khúc nhỏ; hành tím và tỏi giã nhuyễn; ớt sừng và tiêu sọ loại bỏ cuống, rửa sạch và giữ nguyên trái.</li><li>Sau khi đã tiến hành sơ chế xong nguyên liệu, tiến hành phi vàng tỏi, hành tím và muỗng ớt bột, tắt bếp để nguội. Bắc chiếc nồi đất đã chuẩn bị trước đó lên, cho khoảng 1,5 muỗng đường vào đảo đều tay đến khi đường tan chảy thì cho thêm nước và đun sôi.</li><li>Đợi cho hỗn hợp nước đường và hành tỏi phi nguội, xếp cá bống vào nồi và cho tất cả hành tỏi phi, tiêu sọ vào kho dưới lửa liu riu đến khi nước cá sánh lại, có màu nâu cánh gián đẹp mắt là có thể tắt bếp.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/ca-bong-kho-tieu-la-mon-an-ton-com-3-d5b1.jpg\" alt=\"Ca Bong Kho Tieu La Mon An Ton Com 3\" width=\"764\"></strong>Với nhiều người, cá bống kho tiêu là món ăn đặc biệt tốn cơm</p><p>&nbsp;</p><h4><strong>Thịt kho trứng - món ăn dễ chế biến</strong></h4><p>Thịt kho trứng là món ăn dễ chế biến, ít tốn thời gian và được nhiều người yêu thích bởi hướng vị thơm béo ngon miệng. Để có được món thịt kho trứng tròn vị,&nbsp;<strong>công thức nấu ăn</strong>&nbsp;phải bước đầu đảm bảo đầy đủ nguyên liệu cho món ăn này gồm có: thịt ba chỉ, trứng vịt, gia vị (đường, tiêu, muối, nước mắm), ớt trái và hành tím. Quy trình chế biến vô cùng đơn giản như sau:</p><ul><li>Thịt rửa sạch thái nhỏ thành từng miếng vuông với kích thước khoảng 5cm, hành tím và ớt giã hoặc băm nhuyễn.</li><li>Cho thịt đã sơ chế vào luộc trong vòng khoảng 1 phút, quá trình này nên cho thêm 1 thìa nhỏ muối. Sau đó rửa sạch lại bằng nước để giúp món ăn lên màu đẹp, khi nước nước dùng sẽ không bị đục.</li><li>Trứng vịt luộc chín, bóc vỏ và thực hiện khía trên thân trứng vài đường để khi nấu gia vị được thấm đều, có vị đậm đà hơn.</li><li>Tạo màu cho món ăn bằng cách bật lửa nhỏ, cho 2 thìa nhỏ đường vào nồi và đảo đều tay liên tục đến khi đường hòa tan, có màu cánh gián đẹp mắt (có thể cho thêm một bát nhỏ nước lọc để dễ dàng trộn đều với thịt và trứng).</li><li>Đợi hỗn hợp nước đường nguội, trộn đều chúng với hành tỏi đã băm nhỏ, thêm các gia vị như muối, nước mắm, mì chính, hạt nêm,... và cho tất cả vào ướp với thịt trứng trong vòng khoảng 1h.</li><li>Cuối cùng là cho tất cả hỗn hợp thịt trứng đã ướp lên bếp, đun với lửa nhỏ khoảng 45 đến 60 phút và tắt bếp. Trong quá trình đun nên cho thêm nước ở mức ngang mặt thịt để tất cả được đậm đà gia vị, tránh cháy khét.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/thit-kho-trung-cut-nuoc-dua-thom-ngon-b2bd.jpg\" alt=\"Thit Kho Trung Cut Nuoc Dua Thom Ngon\" width=\"751\"></strong>Món thịt kho trứng với màu sắc bắt mắt</p><p>&nbsp;</p><h4><strong>Gà kho sả ớt - món ăn đậm đà, đặc trưng</strong></h4><p>Đây là món ăn khá phổ biến ở miền Trung và miền Nam nước ta, được chế biến từ gà và các loại gai vị như tiêu, tỏi, ớt,... tạo nên một mùi hương đặc trưng, thơm ngon đậm đà khó cưỡng.</p><ul><li>Thịt gà chặt nhỏ thành từng khúc, tẩm ướp trong khoảng 30 phút với các loại gia vị như tỏi, tiêu ớt, hành tím, nước mắm,...</li><li>Chảo dầu sau khi sôi trên bếp, hạ nhỏ lửa và cho hành tím, tỏi băm nhuyễn vào phi vàng; tiếp đó cho phần gà đã ướp lên chảo, bập nhỏ lửa và đảo đều tay cho đến khi thịt săn lại, tỏa mùi thơm ngào ngạt.</li><li>Sau khi thịt gà chuyển sang hơi cháy cạnh thì tiến hành cho thêm nước dừa, nêm nếm gia vị vừa ăn và cho thêm nước dừa đun đến khi thịt gà chín mềm.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/ga-xao-sa-ot-cay-131f.jpg\" alt=\"Ga Xao Sa Ot Cay\" width=\"764\"></strong>Gà kho sả ớt được nhiều người yêu thích bởi vị thơm ngon, đậm đà</p><p>&nbsp;</p><h3><strong>Công thức nấu ăn ngon với món canh</strong></h3><p>Canh là món ăn không thể thiếu trong mỗi mâm cơm của gia đình Việt. Tùy theo thói quen và sở thích, có thể chế biến thành nhiều dạng khác nhau. Dưới đây là 3 cách chế biến những món canh đơn giản, nhanh chóng nhưng không kém phần hấp dẫn.</p><h4><strong>Canh rau củ đẹp mắt, giàu dinh dưỡng</strong></h4><p>Canh rau củ thường được rất nhiều người yêu thích bởi màu sắc hấp dẫn, dễ ăn và bổ dưỡng. Quy trình thực hiện đơn giản theo trình tự sau:</p><ul><li>Để có được&nbsp;<strong>công thức nấu ăn ngon</strong>&nbsp;với món canh rau củ, chị em có thể lựa các nguyên liệu sau: thịt sườn thăn, đậu hà lan, cà rốt, khoai tây, khoai tím, nấm hương,...</li><li>Các nguyên liệu sau khi mua về được sơ chế sạch sẽ, rau củ quả và nấm thái lát phù hợp, thịt sườn cắt thành từng khúc, ướp các loại gia vị như: nước mắm, hạt nêm, tiêu, muối.</li><li>Cho dầu sôi trên chảo với một lượng phù hợp, phi vàng hành tím, tỏi và cho sườn vào xào từ 2 đến 3 phút. Tiếp đó thêm nước, đun sôi ở mức lửa vừa khoảng 15 phút và cho hỗn hợp củ quả, nấm đã chuẩn bị vào tiếp tục nấu cho đến khi tất cả chín mềm, tỏa hương thơm cuốn hút.</li><li>Sau khi tắt bếp, nêm nếm gia vị vừa ăn, cho thêm rau thơm (rau ngò, hành lá, rau quế,...) và thưởng thức.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/canh-rau-cu-ngon-8d58.jpg\" alt=\"Canh Rau Cu Ngon\" width=\"764\"></strong>Có nhiều công thức nấu canh rau củ ngon cho chị em lựa chọn</p><p>&nbsp;</p><h4><strong>Canh khổ qua (mướp đắng) nhồi thịt - món ngon bổ dưỡng</strong></h4><p>Đây không chỉ là món ăn phổ biến trong mâm cơm hàng ngày mà còn được nhiều người lựa chọn chế biến, đãi khách mỗi dịp giỗ, đám tiệc. Nguyên liệu cho món ăn này thường khá đơn giản, bao gồm: khổ qua; thịt thăn đã xay nhuyễn cùng nấm mèo, trứng vịt, gia vị; lá ngò,...</p><p>Mướp đắng cắt khúc khoảng 5cm, loại bỏ phần ruột, rửa sạch và nhồi phần thịt đã xay nhuyễn vào bên trong. Nấu nước sôi (có thể thay nước lọc thành nước dừa), nêm nếm gia vị vừa miệng và cho khổ qua vào hầm trong khoảng 30 đến 45 phút. Sau khi chín, cho thêm rau ngò là có thể thưởng thức.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/canh-muop-dang-giup-giai-nhiet-thanh-mat-5-46ca.jpg\" alt=\"Canh Muop Dang Giup Giai Nhiet Thanh Mat 5\" width=\"764\"></strong>Canh khổ qua mang lại nhiều lợi ích cho sức khỏe như: thanh mát, cung cấp dinh dưỡng</p><p>&nbsp;</p><h4><strong>Canh rong biển nấu nấm - thức ăn thanh đạm</strong></h4><p>Rong biển và nấm đều là những thực phẩm thơm ngon, chứa nhiều chất dinh dưỡng. Do đó, nhiều người đã lựa chọn chúng trong bữa ăn hàng ngày. Quy trình chế biến món ăn này cũng vô cùng nhanh chóng, đơn giản:</p><ul><li>Mua rong biển với số lượng vừa ăn, rửa sạch sau đó vắt khô; cà rốt cắt lát mỏng; nấm hương thái nhỏ; đậu hũ thái khúc vuông nhỏ.</li><li>Phi vàng tỏi trong dầu ăn, cho rong biển vào đảo đều tay từ 4 đến 6 phút sau đó cho nước lọc đun sôi. Tiếp đó, cho tất cả hỗn hợp gồm đậu hũ, cà rốt, nấm hương và đun lửa đến khi tất cả chín mềm thì nêm nếm gia vị vừa ăn và tắt bếp.</li></ul><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/07/02/canh-rong-bien-nau-nam-ab93.jpg\" alt=\"Canh Rong Bien Nau Nam\" width=\"764\"></strong>Món canh rong biển thanh mát ngày hè</p><p>&nbsp;</p><p>Ngoài những món ăn trên, tùy thuộc vào sở thích, nhu cầu và sự khéo léo, chị em có thể kết hợp các nguyên liệu và chế biến theo phong cách riêng để tạo nên những món ăn ngon miệng nhất. Một số kỹ thuật chế biến đơn giản thường được áp dụng như: chiên rán, luộc, hấp,...</p>', 'Một công thức nấu ăn ngon không chỉ đòi hỏi chuẩn theo tỉ lệ nêm nếm, phối hợp nguyên liệu phù hợp mà còn phụ thuộc rất lớn vào việc chọn lựa nguyên liệu.', '20250220135342.jpg', 'post', 1, 1, '2024-12-29 02:07:24', '2025-02-20 06:53:42', NULL, 1, 1),
(5, 4, 'Test sửa trang đơn', 'Test thêm trang đơn', '<p class=\"ql-align-center\"><strong>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</strong></p><p class=\"ql-align-center\">Độc lập - Tự do - Hạnh phúc</p><p class=\"ql-align-right\">CDCT Ngày 29 Tháng 12 Năm 2025</p>', 'Test thêm trang đơn', '20241229091348.webp', 'page', 1, 1, '2024-12-29 02:13:48', '2025-02-20 06:48:23', '2025-02-20 06:48:23', 2, 1),
(6, 2, '1001 món ngon mỗi ngày - Giải quyết vấn đề “Hôm nay ăn gì?”', 'hom-nay-an-gi', '<h3><strong>Phở&nbsp;</strong></h3><p>Đây được xem nhưng một món ăn truyền thống chiếm được thiện cảm không chỉ của thực khách trong nước mà còn những người bạn phương xa. Nguyên liệu chính của món ăn là những sợi bánh phở, thịt bò hòa quyện cùng nước dùng ngọt thơm tạo nên bát phở say đắm lòng người.</p><p>Điểm thu hút đặc biệt của những bát phở là phần nước dùng ngon ngọt được ninh kĩ từ những ống xương heo trong nhiều giờ liền. Ngoài ra, thực khách còn có thể cho thêm gia vị khác như chanh, ớt, rau thơm để tạo nên bức tranh hòa quyện của hương vị.</p><p>Ở mỗi vùng khác nhau, phở có thể được biến tấu trở nên phong phú hơn, không chỉ lấy thịt bò làm nguyên liệu chính mà còn có các loại nguyên liệu khác như gà, tôm, vịt, các loại nội tạng,... Bởi vậy, phở là một lựa chọn tuyệt vời nếu bạn đang không biết&nbsp;<strong>sáng nay ăn gì</strong>, mở đầu cho list món ngon mỗi ngày.</p><h3><strong>Cơm rang&nbsp;</strong></h3><p>Một món ăn sáng quen thuộc, với nguyên liệu đơn giản và dễ dàng chế biến tại nhà. Bạn có thể sử dụng cơm thừa của bữa tối hôm trước kết hợp với những nguyên liệu khác như trứng, đậu hà lan, ngô non,... để chế biến được một món ăn sáng thơm ngon và chắc bụng cho ngày dài làm việc.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/com-rang-mon-an-sang-thom-ngon-chac-bung-1-22a5.jpg\" alt=\"Com Rang Mon An Sang Thom Ngon Chac Bung 1\" width=\"764\"></strong>Cơm rang là món ăn sáng chắc bụng, giàu dinh dưỡng</p><p>&nbsp;</p><p>Cơm rang rất phong phú với nhiều cách chế biến với các nguyên liệu khác nhau để bạn thỏa mái lựa chọn từ đơn giản như cơm rang trứng đến cơm chiên hải sản, cơm rang thập cẩm. Ngoài ra, hiện nay, bạn cũng có thể chiêu đãi gia đình bằng món cơm rang kim chi, lạ miệng được du nhập từ Xứ sở Hàn Quốc.</p><h3><strong>Xôi&nbsp;</strong></h3><p>Đây là một món ăn sáng dân dã góp mặt trong&nbsp;<strong>danh sách món ngon mỗi ngày</strong>&nbsp;được rất nhiều người Việt Nam ưa thích. Nó hấp dẫn bởi sự kết hợp giữa sự mềm dẻo của hạt nếp cùng những nguyên liệu đi kèm như lạc, đậu xanh, gấc, đậu đỏ,... tạo nên những món xôi nóng hổi, thơm bùi. Bạn còn có thể ăn kèm với những món phụ khác để tăng thêm sự thơm ngon cho món xôi như giò, trứng rán mỡ hành, chả cuốn, nộm dưa chuột,...</p><p>Hơn nữa, bạn có thể lựa chọn để mua xôi sáng với giá cả phải chăng hoặc nấu tại nhà rất đơn giản, dễ làm.</p><h3><strong>Sandwich</strong></h3><p>Một món ăn sáng tiện lợi dành cho những người bận rộn chính là món sandwich với sự kết hợp của trứng ốp la hoặc thịt nguội, phô mai cùng những lá rau cải xoăn xanh mướt cân bằng dinh dưỡng khởi đầu ngày mới.</p><p>Để cung cấp đủ năng lượng cho ngày dài hoạt động, bạn có thể uống thêm một cốc sữa hoặc một tách cà phê tùy vào nhu cầu của mỗi thành viên trong gia đình.</p><h3><strong>Bánh mì</strong></h3><p>Bánh mì có thể nói là một món ăn quốc dân chiếm được sự yêu thích của nhiều thực khách, cho dù là người khó tính nhất. Cũng giống như&nbsp;<strong>những món ăn sáng</strong>&nbsp;khác của người Việt, bánh mì là một sự kết hợp hoàn hảo giữa những loại nguyên liệu mộc mạc dân dã cùng các loại nước sốt đậm vị.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/banh-my-mon-ngon-nuc-tieng-gan-xa-3-d4e8.jpg\" alt=\"Banh My Mon Ngon Nuc Tieng Gan Xa 3\" width=\"764\"></strong>Những chiếc bánh mì nức tiếng gần xa chinh phục trái tim bao thực khách</p><p>&nbsp;</p><p>Giá cả dành cho bữa sáng tuyệt vời này cũng rất phải chăng, bạn chỉ cần bỏ ra khoảng 15.000 - 20.000 đồng để có được một chiếc bánh mì thơm ngon trong tay mình.</p><h3><strong>Cháo&nbsp;</strong></h3><p>Là một sự thiếu sót nếu như không nhắc đến món cháo bổ dưỡng khi nhắc đến những món ăn sáng phổ biến của người Việt. Những bát cháo nóng hổi, dễ ăn và nhẹ bụng, tốt cho dạ dày vào buổi sáng.</p><p>Ngoài những nguyên liệu phổ biến như thịt gà, thịt bò, thịt heo bằm thì món cháo cũng có những sự kết hợp với tim cật, lòng, lươn,... giúp bạn có rất nhiều sự lựa chọn vào mỗi sáng.</p><h2><strong>Những món ăn ngon từ thịt gà không thể thiếu trong các món ngon mỗi ngày</strong></h2><p>Bữa ăn tiếp theo cho toàn bộ gia đình chính là bữa trưa và bữa tối, đây chính là lúc các bà nội trợ thật sự đau đầu để suy nghĩ “<strong>hôm nay ăn gì</strong>?”. Những&nbsp;<strong>món ăn ngon từ thịt gà</strong>&nbsp;đơn giản và lạ miệng sau sẽ giúp bạn giải quyết vấn đề đó:</p><h3><strong>Sụn gà rang muối&nbsp;</strong></h3><p>Đây làm một món ăn hấp dẫn trong chuyên mục ăn ngon mỗi ngày chinh phục thực khách bằng những miếng sụn gà sần sật ở bên trong và lớp vỏ giòn rụm bên ngoài.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/sun-ga-rang-muoi-la-mieng-hao-com-4-03b6.jpg\" alt=\"Sun Ga Rang Muoi La Mieng Hao Com 4\" width=\"764\"></strong>Sụn gà rang muối - Món ăn lạ miệng, hấp dẫn cho cả nhà</p><p>&nbsp;</p><p>Cách làm và nguyên liệu của món sụn gà rang muối rất đơn giản, vì vậy rất thích hợp để bạn chế biến tại nhà. Nó sẽ khiến mọi thành viên trong gia đình bạn bởi sự kết hợp tuyệt vời của hương vị cay, mặn, ngọt rất lạ miệng, ăn kèm với những miếng cơm nóng thì hết sảy. Không chỉ thế, sụn gà rang muối cũng là món ăn chơi thích hợp để bạn tụ tập lai rai cùng với bạn bè đó.</p><h3><strong>Cánh gà kho coca&nbsp;</strong></h3><p>Một&nbsp;<strong>món ngon lạ miệng</strong>&nbsp;khác đến từ thịt gà đó chính là cánh gà kho coca. Quy trình chế biến không hề phức tạp nhưng thành phẩm có được lại làm bạn hài lòng hết sức.</p><p>Cánh gà kho coca đậm vị, từng thớ thịt thơm mềm, ngon ngọt với lớp ngoài nâu vàng óng hấp dẫn mọi giác quan của người ăn. Lưu ý, bạn phải nấu nhiều cơm hơn bình thường nếu như bạn chiêu đãi món ăn này cho cả nhà nhé, bởi nó sẽ khiến các thành viên trong gia đình bạn ăn nhiều hơn đó.</p><h3><strong>Gà nướng mật ong</strong></h3><p>Vào những ngày cuối tuần hay các dịp tụ họp, gà nướng mật ong là một món ngon hấp dẫn mà bạn có thể lựa chọn cho thực đơn trên bàn ăn.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/ga-nuong-mat-ong-thom-ngon-dam-vi-5-66d6.jpg\" alt=\"Ga Nuong Mat Ong Thom Ngon Dam Vi 5\" width=\"764\"></strong>Gà nướng mật ong thơm ngon, đậm vị</p><p>&nbsp;</p><p>Lớp da gà vàng ươm và giòn thơm chinh phục người thưởng thức từ ánh nhìn đầu tiên, để đến khi cắn một miếng mới bắt đầu cảm nhận được cảm giác mềm thơm của từng thớ thịt và hương vị ngọt ngào của mật ong cùng chút cay, mặn, ngọt của các gia vị khác làm say đắm lòng người.</p><h3><strong>Gỏi gà bóp lá chanh</strong></h3><p>Để đổi vị bằng những&nbsp;<strong>món ăn mỗi ngày</strong>&nbsp;thì gỏi gà bóp lá chanh là một gợi ý tuyệt vời với sự kết hợp hoàn hảo từ nguyên liệu đến hương vị. Bạn có thể dùng nó như một món ăn khai vị với đầy đủ các vị chua chua, ngọt ngọt cùng chút cay nồng của ớt cay giúp cho gia đình bạn ngon miệng hơn.</p><h3><strong>Canh gà nấu lá giang</strong></h3><p>Điểm đặc sắc của món canh gà là phần nước dùng được kết hợp bởi vị ngọt của thịt gà và vị chua thanh của lá giang. Vào những ngày hè nóng bức sắp tới, món canh gà lá giang là một món ăn bổ dưỡng, giải nhiệt, tiêu cơm rất tuyệt vời.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/canh-ga-la-giang-giai-nhiet-ngay-he-6-eb3e.jpg\" alt=\"Canh Ga La Giang Giai Nhiet Ngay He 6\" width=\"764\"></strong>Canh gà nấu là giang - một trong các món canh ngon mùa hè thanh mát, dưỡng chất</p><p>&nbsp;</p><h2><strong>Những món ăn hấp dẫn từ thịt khác</strong></h2><p>Các loại thịt heo và thịt bò là những loại nguyên liệu quen thuộc với những món ăn đơn giản bạn có thể chế biến mỗi ngày như thịt kho tàu, thịt viên, thịt bò xào,... Vậy hãy tham khảo một số món ăn ngon khác để chiêu đãi gia đình bạn mỗi ngày nhé!</p><h3><strong>Sườn xào chua ngọt&nbsp;</strong></h3><p>Một món sườn xào chua ngọt sẽ là gợi ý cho chị em nội trợ thêm vào danh sách món ngon mỗi ngày để chiêu đãi gia đình nếu không biết&nbsp;<strong>trưa nay ăn gì.</strong></p><p><strong>Những miếng sườn mềm thịt được thấm nước sốt đậm đà chua chua, mặn mặn, ngọt ngọt khiến ai cũng mê tít.</strong></p><h3><strong>Thịt ba chỉ xào kim chi&nbsp;</strong></h3><p>Để đổi vị cho gia đình, thịt ba chỉ xào kim chi là một món ăn đặc sắc được kết hợp từ những miếng thịt ba chỉ thơm béo cùng vị cay cay chua chua của những miếng kim chi đến từ xứ sở Hàn Quốc.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/thit-ba-chi-xao-kim-chi-hao-com-ban-can-luu-y-7-f480.jpg\" alt=\"Thit Ba Chi Xao Kim Chi Hao Com Ban Can Luu Y 7\" width=\"764\"></strong>Thịt ba chỉ xào nấm kim chi hao cơm mà bạn cần biết</p><p>&nbsp;</p><h3><strong>Thịt ba chỉ cuộn nấm kim chi&nbsp;</strong></h3><p>Đây là&nbsp;<strong>món ăn ngon từ thịt</strong>&nbsp;giúp cân bằng dinh dưỡng giúp gia đình bạn. Thịt ba chỉ cuộn nấm kim chi là một lựa chọn tuyệt vời, đơn giản và dễ dàng chế biến tại nhà. Bạn có thể nướng hoặc nấu thịt cuộn nấm để có được những đĩa thịt thơm ngon hấp dẫn.</p><h3><strong>Bắp bò om gừng sả</strong></h3><p>Phần bắp bò ngọt, mềm thịt xen lẫn những đường gân dẻo nhưng không hề dai thấm đậm vị của nước mắm, gừng tươi và sả làm cho món ăn trở nên tinh tế một cách lạ thường.</p><p>Món ăn này xứng đáng góp mặt trong số&nbsp;<strong>những món ngon mỗi ngày</strong>&nbsp;mà bạn có thể chế biến cho gia đình cùng thưởng thức.</p><h3><strong>Gân bò xào sả ớt</strong></h3><p>Gân bò giòn giòn, sần sật vui miệng nhưng để nấu được món ăn ngon không hề đơn giản. Để có được một món gân bò thơm ngon, đúng vị thì cần phải sơ chế gân bò đúng cách khử đi mùi tanh của thịt bò mà gân bò lại không bị dai.</p><p>Đây là một món ăn lạ miệng, kích thích vị giác, ăn hao cơm với độ ngọt từ gân bò, cay của ớt và mùi vị riêng biệt của sả. Bạn hãy lưu lại và đưa vào thực đơn nếu đang tìm kiếm một&nbsp;<strong>món ngon cuối tuần đãi khách</strong>&nbsp;nhé.</p><h3><strong>Ếch rang muối</strong></h3><p>Khi bạn đã quen với&nbsp;<strong>các món từ thịt bò</strong>&nbsp;hoặc thịt lợn thì có thể thử chế biến thịt ếch thơm bùi để chiêu đãi cho gia đình bạn.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/ech-rang-muoi-la-mieng-8-6346.jpg\" alt=\"Ech Rang Muoi La Mieng 8\" width=\"764\"></strong>Ếch rang muối - Món ăn lạ miệng chiêu đãi cả nhà</p><p>&nbsp;</p><p>Ếch rang muối là món ăn khá đơn giản từ thịt ếch với thành phẩm tuyệt vời khó có gì sánh bằng. Những miếng thịt ếch tươi ngon đậm vị với lớp vỏ giòn rụm kích thích vị giác, chỉ cắn một miếng thôi là cứ muốn ăn mãi không ngừng.</p><h2><strong>Món ngon mỗi ngày đến từ hải sản</strong></h2><p>Hải sản là nguyên liệu bổ dưỡng, cung cấp nhiều chất dinh dưỡng cần thiết cho cơ thể, đặc biệt là protein. Hãy thử tham khảo<strong>&nbsp;danh sách món ăn từ hải sản</strong>&nbsp;sau để chiêu đãi cho cả nhà.</p><h3><strong>Ốc bươu xào tiêu xanh&nbsp;</strong></h3><p>Tuy tên gọi có phần dân dã, mộc mạc nhưng ốc bươu xào tiêu xanh là một món ăn lạ miệng, “tốn cơm” với độ sần sật của con ốc thấm đậm vị cay cay thơm thơm ngấm trong từng thớ thịt.</p><p>Để chế biến món ốc bươu này, công đoạn khó nhất chính là phần chọn và sơ chế ốc. Bạn nên chọn mua những con ốc có mài nằm sát bên ngoài miệng, khi chạm vào thì thấy nó thụt lại để tránh mua phải ốc bị chết. Sau khi chọn được những con ốc tươi ngon, bạn cần làm sạch nó bằng cách ngâm trong nước vo gạo khoảng 1 tiếng để loại bỏ các chất bẩn, nhờn bám ở vỏ ốc.</p><p>Tiếp theo, bạn chỉ cần vớt ốc ra và rửa ốc thêm vài lần nước sạch để loại bỏ hoàn toàn chất bẩn rồi để ráo nước là đã xử lý xong những con ốc bươu cứng đầu rồi.</p><h3><strong>Viên đậu hũ thịt cua&nbsp;</strong></h3><p>Nghe tên gọi có vẻ phức tạp tuy nhiên cách làm viên đậu hũ thịt cua viên lại rất đơn giản. Hơn nữa, nó còn là một món ăn giàu dinh dưỡng với hương vị xuất sắc không gì bằng.</p><p>&nbsp;</p><p><strong><img src=\"https://img.tastykitchen.vn/resize/764x-/2021/06/29/vien-dau-hu-thit-cua-tuong-kho-nhung-de-khong-tuon-b67d.jpg\" alt=\"Vien Dau Hu Thit Cua Tuong Kho Nhung De Khong Tuon\" width=\"764\"></strong>Viên đậu hũ thịt cua - Tưởng khó nhưng đơn giản vô cùng</p><p>&nbsp;</p><p>Từng miếng viên chiên là lớp vỏ giòn ruộm cùng với phần nhân mềm thơm được kết hợp giữa thịt cua, đậu phụ và khoai mỡ. Để tăng thêm sự cân bằng trong hương vị, bạn có thể chấm viên đậu hũ thịt cua với sốt mayonnaise và tương ớt.</p>', 'Bữa sáng là một trong những bữa ăn quan trọng trong ngày, giúp cung cấp năng lượng cho một ngày dài học tập và làm việc. Một số món ăn sáng thơm ngon, hấp dẫn nhưng khá đơn giản mà bạn có thể chuẩn bị tại nhà như:', '20250220135527.jpg', 'post', 1, 1, '2025-02-20 06:55:27', '2025-02-20 06:58:34', NULL, 1, 1),
(7, 2, 'Cách làm gà ủ muối hoa tiêu thơm ngon đúng vị', 'ga-u-muoi-hoa-tieu', '<h3>Công thức làm gà ủ muối hoa tiêu</h3><ul><li>Gà ta: 1 con (khoảng 1,3-1,5kg)</li><li>Sả: 4 cây</li><li>Rau răm hoặc lá chanh: 10g</li><li>Ớt</li><li>Hành tây: 1 củ</li><li>Muối hạt: 400g</li><li>Gia vị:</li></ul><p>- Đường: 4g (1 thìa cà phê đầy)</p><p>- Muối: 4g (1 thìa cà phê đầy)</p><p>- Bột nghệ: 4g (1 thìa cà phê đầy)</p><p>- Hạt nêm: 4g (1 thìa cà phê đầy)</p><p>- Tiêu hạt: 2g</p><p>- Thảo quả: 1 trái</p><p>- Hoa tiêu: 3g</p><p>- Đinh hương: 1g</p><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2022/03/30/cach-lam-ga-u-muoi-hoa-tieu-02-f9a9.jpg\" alt=\"Cach Lam Ga U Muoi Hoa Tieu 02\" width=\"512\">Các gia vị không thể thiếu khi làm món gà ủ muối</p><p>&nbsp;</p><h3>Cách làm gà ủ muối hoa tiêu da giòn</h3><p>Cách làm gà ủ muối da tiêu đơn giản dưới đây ai cũng có thể làm được, đảm bảo sẽ ghi điểm trong mắt gia đình, bạn bè đó.</p><p><strong>Bước 1: Sơ chế gà và nguyên liệu</strong></p><p><strong><em>Sơ chế nguyên liệu:</em></strong></p><ul><li>Thái hành tây thành khoanh tròn, dày khoảng 1,5cm</li><li>Sả cắt đôi hoặc 3 theo chiều ngang và đập dập phần đầu sả</li><li>Rửa sạch rau răm, lá chanh</li><li>Bạn rang hoa tiêu cho đến khi thơm là có thể bỏ ra. Lưu ý hoa tiêu rất dễ bị cháy, bạn chỉ cần rang sơ qua.</li><li>Nếu có lá chanh, bạn rang lá chanh sao cho khô và giòn</li></ul><p>Điểm đặc biệt của món gà ủ muối hoa tiêu là ở hương thơm của hành tây, sả, rau răm, đây cũng là các nguyên liệu dễ kiếm, từ chợ cho đến siêu thị, bạn hãy cố gắng mua đủ các nguyên liệu này nhé.</p><p><strong><em>Sơ chế gà:</em></strong></p><ul><li>Bạn hòa giấm và muối rồi thoa đều lên gà và để khoảng 5 phút, sau đó rửa sạch lại với nước nhiều lần.</li><li>Nếu không có dấm, bạn có thể hòa nước cốt chanh cùng với muối để gà không bị tanh.</li></ul><p><strong>Bước 2: Ướp gà</strong></p><ul><li>Trộn đều hạt nêm, muối, đường, bột nghệ, đinh hương, thảo quả và lá chanh</li><li>Bạn nên xoa đều hỗn hợp gia vị lên bề mặt da gà từ ngoài và trong để gà được đều màu</li><li>Để gà ướp 30 phút cho ngấm gia vị</li><li>Trong lúc chờ gà ướp, bạn chuẩn bị 1 nồi nước ấm, bỏ hành tây và 2,3 lát sả đã chuẩn bị sẵn vào nồi</li><li>Sau 30 phút, bạn bỏ gà vào nồi, cho thêm 1 muỗng cà phê muối.</li><li>Luộc qua gà 15 phút với mức lửa vừa hoặc lớn.</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2022/03/30/cach-lam-ga-u-muoi-hoa-tieu-03-4ab5.jpg\" alt=\"Cach Lam Ga U Muoi Hoa Tieu 03\" width=\"512\">Gà ủ muối hoa tiêu vàng ruộm</p><p>&nbsp;</p><p>Đối với gà ủ muối, bạn không cần phải luộc quá lâu, chỉ cần luộc để gà lên dáng và thịt hơn săn lại, nếu quá lâu, gà sau khi hấp sẽ bị khô. Bước này sẽ quyết định không chỉ đến hương vị của thành phẩm mà còn cả màu sắc của gà có đẹp mắt hay không.</p><p><strong>Bước 3: Hấp gà</strong></p><ul><li>Rải đều 400g muối hạt vào đáy nồi hấp rồi lần lượt đặt hành tây, sả, rau răm hoặc lá chanh lên trên</li><li>Gà sau khi đã luộc 15 phút, bạn để ra đĩa, đợi gà nguội</li><li>Nếu bạn muốn tạo dáng đẹp cho món gà ủ muối hoa tiêu thì bạn có thể khứa khớp chân gà và nhét vào trong mình con gà</li><li>Sau khi gà đã nguội, bạn cho gà vào nồi hấp đã chuẩn bị</li><li>Bọc giấy bạc kín miệng nồi, không để thoát hơi ra ngoài và đậy nắp lên trên. Đậy kín như vậy để gà dễ chín và cũng dậy mùi thơm hơn bạn nhé</li><li>Bạn để lửa to cho đến khi có hơi thì giảm xuống mức vừa phải hoặc nhỏ</li><li>Hấp gà 60 phút</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2022/03/30/cach-lam-ga-u-muoi-hoa-tieu-04-4d0a.jpg\" alt=\"Cach Lam Ga U Muoi Hoa Tieu 04\" width=\"512\">Gà ủ muối hoa tiêu da giòn, vàng, dậy mùi thơm bắt mắt</p><p>&nbsp;</p><h2>Công thức làm muối chấm gà ủ muối hoa tiêu ngon</h2><p>Ăn kèm với một món gà ngon thì không thể thiếu được một đĩa muối tiêu chanh, dưới đây là cách làm muối chấm rất phù hợp với món gà ủ muối hoa tiêu, các bạn cùng tham khảo nhé.</p><p><strong>Nguyên liệu</strong></p><ul><li>1 muỗng canh muối hạt</li><li>½ muỗng canh đường</li><li>Ớt thái lát (tùy theo mức độ cay bạn muốn)</li><li>Nửa quả chanh</li><li>Hạt tiêu</li></ul><p><strong>Cách làm muối chấm gà ủ muối hoa tiêu</strong></p><ul><li>Bạn giã ớt chung với đường và muối</li><li>Vắt nửa quả chanh</li><li>Cắt thêm 4, 5 lá rau thơm (nếu có)</li><li>Rắc một ít hạt tiêu lên phía trên</li></ul><p>&nbsp;</p><p><img src=\"https://img.tastykitchen.vn/resize/764x-/2022/03/30/cach-lam-ga-u-muoi-hoa-tieu-05-6718.jpg\" alt=\"Cach Lam Ga U Muoi Hoa Tieu 05\" width=\"512\">Gà ủ muối hoa tiêu dùng kèm muối tiêu chanh cay tê nhè nhẹ</p><p>&nbsp;</p><p>Gà ủ muối hoa tiêu da giòn, thơm mùi sả chấm với muối tiêu chanh bạn sẽ cảm nhận được vị cay nhẹ của tiêu, ớt hòa quyện với vị mặn của gà và muối làm nên hương vị hoàn hảo, vừa dân dã lại vừa mới lạ, chắc chắn các thành viên trong gia đình sẽ mê tít món này</p>', 'Gà ủ muối có nhiều cách làm khác nhau, tùy vào tay mỗi đầu bếp, tuy nhiên, đối với những người lần đầu vào bếp làm món này, chúng ta nên chọn cách làm đơn giản nhất, vừa đảm bảo được hương vị lại vừa tiết kiệm thời gian.', '20250220135918.jpg', 'post', 1, 1, '2025-02-20 06:59:18', '2025-02-20 06:59:23', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_product`
--

CREATE TABLE `cdw1_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_buy` double NOT NULL,
  `price_sale` double NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `new_p` int UNSIGNED DEFAULT NULL,
  `status` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_product`
--

INSERT INTO `cdw1_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `content`, `description`, `price_buy`, `price_sale`, `qty`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `new_p`, `status`) VALUES
(1, 1, 4, 'Salad rau mùa sốt cam', 'salad-rau-mua-sot-cam', '<p>Salad rau mùa sốt cam&nbsp;là sự lựa chọn tuyệt vời cho các tín đồ yêu eat clean. Món ăn có đến 5 loại xà lách (carol, frise, lô lô tím, xà lách mỡ và radicchio tím) kết hợp cùng các loại trái cây như táo, cà chua, ô liu... mang lại nguồn vitamin tổng hợp dồi dào, hỗ trợ tăng cường đề kháng cho cơ thể. Điểm nhấn tạo nên nét chấm phá cho món nằm ở nước sốt cam độc đáo với vị chua ngọt tự nhiên dịu dàng. Salad rau mùa sốt cam thực sự là một bữa tiệc về màu sắc, xua tan cơn nóng mùa hè, đánh thức tối đa vị giác.&nbsp;</p><h3><strong>Thành phần :</strong></h3><p>Xà lách carol, xà lách frise, xà lách lô lô tím, xà lách mỡ, xà lách radicchio tím, táo đỏ, táo xanh, cà chua bi, củ cải đường, rau mầm, cà rốt baby, trái olive đen, trái olive xanh.</p><h3><strong>Khẩu phần:</strong></h3><p>1 - 2 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>6 - 8 phút</p>', 'Salad rau mùa sốt cam là sự lựa chọn tuyệt vời cho các tín đồ yêu eat clean. Món ăn có đến 5 loại xà lách (carol, frise, lô lô tím, xà lách mỡ và radicchio tím) kết hợp cùng các loại trái cây như táo, cà chua, ô liu..', 82390, 68000, 76, '20250220101003.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:17:06', NULL, 1, 1),
(2, 1, 4, 'Salad rau mùa sốt mác mác', 'salad-rau-mua-sot-mac-mac', '<p>Salad rau mùa sốt mác mác được lựa chọn từ những loại rau củ ẩm thực phương Tây như xà lách lolo, xà lách carron, dầu oliu, kết hợp với hương đồng cỏ nội trong văn hoá ẩm thực Việt Nam là củ dền, táo đỏ, táo xanh, chanh dây và rau quế. Tất cả được hòa quyện dưới lớp sốt mác mác rau mùi được cấu thành bởi 3 thành phần chính là chanh dây, rau mùi và mayonaise, đem đến hương vị độc đáo, giàu vitamin C và chất xơ.</p><h3><strong>Thành phần :</strong></h3><p>Táo đỏ, táo xanh, củ dền, cà rốt, xà lách lolo, xà lách carron, chanh dây, dầu oliu, rau quế, mayonaise,...</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein: 2.2, Carbs: 14.4, Fat: 12.2, Total Kcal: 157.8</p>', 'Salad rau mùa sốt mác mác được lựa chọn từ những loại rau củ ẩm thực phương Tây như xà lách lolo, xà lách carron, dầu oliu, kết hợp với hương đồng cỏ', 82000, 68000, 23, '20250220101228.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 03:12:28', NULL, NULL, 1),
(3, 1, 4, 'Phở cuốn', 'pho-cuon', '<p>Phở cuốn là món ăn được các đầu bếp&nbsp;dành nhiều thời gian dày công chế biến. Với bánh phở tạo ra từ hạt gạo ngâm suốt 12 tiếng liền, sau đó xay và tráng cách thủy mang đến miếng bánh ướt mỏng, dai dai hoàn toàn tự nhiên. Thêm vào đó là sự kết hợp hài hòa cùng nguyên liệu bò Úc thượng hạng tẩm ướp đậm vị và các loại rau thơm nhiệt đới. Khi thưởng thức kèm nước sốt chấm được pha chế đặc biệt mang đến trải nghiệm ẩm thực tuyệt hảo, đầy thú vị.</p><h3><strong>Thành phần :</strong></h3><p>Nạc vai bò Úc, bánh ướt, húng lủi, húng quế, ngò gai, giá sống, cà chua, hành phi, đậu phộng, nước mắm, đường cát Biên Hòa, giấm nuôi, tỏi lột, mè trắng, bột thịt gà, tiêu đen</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 28.33, Carbs - 24.93, Fats - 8.97 (Total Kcal - 293.77)</p>', 'Phở cuốn là món ăn được các đầu bếp dành nhiều thời gian dày công chế biến. Với bánh phở tạo ra từ hạt gạo ngâm suốt 12 tiếng liền,', 90000, 82000, 1, '20250220121017.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:10:17', NULL, NULL, 1),
(4, 1, 4, 'Gỏi tai heo hoa chuối', 'goi-tai-heo-hoa-chuoi', '<p>Sử dụng nguyên liệu chuối tây cùng tai heo quen thuộc, các đầu bếp&nbsp;tạo nên sự khác biệt bằng phương pháp luộc hoa chuối để lọc bỏ hết nhựa, tạo cảm giác dễ chịu và an toàn khi ăn. Kết hợp cùng cà rốt, dưa leo, hành tây, củ kiệu, món gỏi chuối tai heo mang màu sắc bắt mắt và những nét chấm phá đặc biệt trong hương vị. Hoàn thiện tất cả là nước mắm chua ngọt dung hòa, tổng thể làm nên món ăn thơm ngon, giàu chất dinh dưỡng và thanh mát ngày hè.</p><h3><strong>Thành phần :</strong></h3><p>Ba rọi heo, tai heo, bắp chuối, cà rốt, dưa leo, hành tây, ớt sừng, tỏi, rau răm, ngò rí, húng cây,...</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 16.0,&nbsp;Carbs -&nbsp;55.2,&nbsp;Fat -10.2 (Total Kcal -&nbsp;376.4)</p>', 'Sử dụng nguyên liệu chuối tây cùng tai heo quen thuộc, các đầu bếp tạo nên sự khác biệt bằng phương pháp luộc hoa chuối để lọc bỏ hết nhựa,', 175000, 120000, 84, '20250220121150.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:17:06', NULL, 1, 1),
(5, 1, 4, 'Gà cuốn lá dứa', 'ga-cuon-la-dua', '<p>Gà cuốn lá dứa là món ăn mang phong vị ẩm thực Thái Lan, đã được các đầu bếp TASTY Kitchen biến tấu mang đầy mới mẻ và phù hợp với khẩu vị người Việt. Thịt gà lóc xương, giữ nguyên da cắt miếng vừa ăn tẩm ướp suốt hơn 3 tiếng cùng các gia vị đặc trưng của Việt Nam như tỏi, dầu hào, điều,...cân chỉnh với tỷ lệ thích hợp. Thêm điểm nhấn khi kết hợp mùi thơm tự nhiên của lá dứa được trồng tại Đà Lạt cuốn cẩn thận với gà và chiên giòn hấp dẫn. Không chỉ dễ dàng chiêu đãi vị giác món ăn còn mang lại giá trị dinh dưỡng cao, rất tốt cho tim mạch.</p><h3><strong>Thành phần :</strong></h3><p>Đùi gà, lá dứa, xà lách lô lô xanh, xà lách lô lô tím, cà chua bi, hành tây tím, đường cát, tiêu sọ trắng, bột bắp, bột chiên giòn, bột năng, dầu mè, tỏi xay, ngò rí, nước tương, dầu ăn</p><p>+ Sốt chấm: mè trắng, đường thốt nốt, nước tương đậu nành, hắc xì dầu, dầu mè</p><p>+ Sốt xà lách: giấm trắng, muối, tiêu đen, tỏi xay, hành tím, đường cát</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 36.82,&nbsp;Carbs - 1.9,&nbsp;Fats - 26 (Total Kcal - 388.88)</p>', 'Gà cuốn lá dứa là món ăn mang phong vị ẩm thực Thái Lan, đã được các đầu bếp TASTY Kitchen biến tấu mang đầy mới mẻ và phù hợp với khẩu vị người Việt.', 195000, 168000, 37, '20250220121327.jpg', 1, 1, '2024-12-22 19:14:27', '2025-04-04 20:22:11', NULL, NULL, 1),
(6, 1, 4, 'Ức gà đút lò phủ lá chanh', 'uc-ga-dut-lo-phu-la-chanh', '<p>Sử dụng phương pháp nướng cách thủy đặc biệt mang đến hương vị mới mẻ cho món Ức gà đút lò phủ lá chanh vừa giữ được sự mềm dai vừa thấm đều nước sốt hấp dẫn. Với thành phần ức gà giàu đạm, ít béo, kết hợp cùng lá chanh, lá dứa, thịt heo và các loại nấm tạo nên một món ăn đậm đà từ hương đến vị khi dùng kèm cơm trắng. Không chỉ thơm ngon, món ăn còn cung cấp dinh dưỡng phù hợp, là lựa chọn không thể bỏ qua của người ăn kiêng</p><h3><strong>Thành phần :</strong></h3><p>Thịt ức gà, Thịt heo xay, giò sống, nấm mèo, nấm đông cô, tỏi, ớt sừng, phô mai Parmessan, lá chanh, ngũ vị hương, bột ớt cựa gà, bột hành tây, bột ngò, bột tỏi</p><p>+ Sốt ngò gai: ngò gai, húng lủi, ớt hiểm, sữa đặc, mayonnaise, chanh</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 62.5, Carbs - 4.61, Fats - 14.6 (Total Kcal - 399.84)</p>', 'Sử dụng phương pháp nướng cách thủy đặc biệt mang đến hương vị mới mẻ cho món Ức gà đút lò phủ lá chanh vừa giữ được sự mềm dai vừa thấm đều nước sốt hấp dẫn.', 225000, 195000, 56, '20250220121449.jpg', 1, 1, '2024-12-22 19:14:27', '2025-04-04 20:49:46', NULL, NULL, 1),
(7, 1, 4, 'Sụn gà xóc muối Tây Ninh', 'sun-ga-xoc-muoi', '<p>Món sụn gà xóc muối Tây Ninh là một món ăn vặt hoàn hảo với độ giòn từ lớp bột bên ngoài và độ dai dai từ sụn gà bên trong. Các đầu bếp đã sáng tạo khéo léo khi kết hợp muối ớt Tây Ninh và các gia vị hấp dẫn giúp tạo nên một món ăn mới lạ với mùi thơm cùng hương vị đậm đà. Món ăn được gói gọn trong một chiếc tổ chim làm bằng sả chiên, không chỉ đẹp mắt mà thực khách có thể thưởng thức độ giòn thơm, vị vừa ăn.</p><h3><strong>Thành phần :</strong></h3><p><strong>S</strong>ụn gà, muối Tây Ninh, trứng gà, sả, nghệ, lá chanh, ớt sừng, hành phi, tỏi phi, tôm khô, chà bông heo, bột chiên xù</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p><strong>&nbsp;</strong>Protein - 19, Carbs - 5.8, Fats - 4 (Total Kcal - 135.2)</p><p><br></p>', 'Món sụn gà xóc muối Tây Ninh là một món ăn vặt hoàn hảo với độ giòn từ lớp bột bên ngoài và độ dai dai từ sụn gà bên trong.', 165000, 135000, 16, '20250220121644.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:16:44', NULL, 1, 1),
(8, 1, 4, 'Nem lụi nướng mía', 'nem-lui-nuong-mia', '<p>Nem lụi được biết đến là đặc sản của vùng đất kinh kỳ đồng thời là lựa chọn mà mọi tín đồ yêu thích ẩm thực không thể bỏ qua. Món ăn hấp dẫn ngay từ cái nhìn đầu tiên với màu sắc vàng ươm cùng mùi vị thơm lừng sau khi được nướng lên. Thực khách sẽ cảm nhận trọn vẹn vị đậm đà pha chút mềm dai của thịt heo, giò sống hài hòa với các gia vị đặc biệt. Thêm vào đó, Nem lụi TASTY còn ngon hơn khi dùng kèm bánh tráng, bún tươi, rau sống và nước chấm sền sệt, vị bùi ngậy do chính các đầu bếp TASTY sáng tạo.</p><h3><strong>Hướng dẫn sử dụng :</strong></h3><p>Ngon hơn khi dùng nóng</p><h3><strong>Thành phần :</strong></h3><p>Mỡ gáy, thịt nạc mông, giò sống heo, mía cây, màu thực phẩm, chất tạo độ dai thực phẩm, bột nở, bột bắp, tiêu đen, tiêu sọ trắng, sả cây, hành tím, tỏi, mật ong, mắm khô, bột ngũ vị hương, bột ngọt, đường cát</p><p>+ Nước chấm: Nước mắm, đường phèn, tương ớt, mè trắng, ớt hiểm, bơ đậu phộng, ớt sừng, tỏi, tắc</p><p>+ Ăn kèm: bún tươi, bánh tráng, dưa leo, thơm gọt, khế chua, diếp cá, húng lủi, tía tô, ngò rí, lá quế, xà lách lô lô tím</p><p>+ Trang trí: Dầu ăn Tường An, hành lá, đậu phộng, ớt sừng, hành boa-rô</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 - 12 phút</p>', 'Nem lụi được biết đến là đặc sản của vùng đất kinh kỳ đồng thời là lựa chọn mà mọi tín đồ yêu thích ẩm thực không thể bỏ qua', 179000, 158000, 14, '20250220122919.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:29:19', NULL, 1, 1),
(9, 1, 2, 'Mì spaghetti sốt kem nấm', 'mi-spaghetti-kem-nam', '<p>Mì spaghetti sốt kem là món ăn đặc biệt không thể bỏ qua của mọi tín đồ yêu thích ẩm thực nước Ý. Với từng sợi mì vàng óng, mềm dai đấm mình trong nước sốt sền sệt vị béo ngậy, phảng phất mùi thơm đầy hấp dẫn cân bằng với vị mằn mặn của từng lát thịt ba chỉ xông khói, nhấn nhá thêm chút vị ngọt tự nhiên từ nấm đông cô, nấm đùi gà và chẳng thể thiếu một lớp phô mai parmesan bào nhuyển phủ đều bên trên, tất cả hòa quyện mang đến hương vị thơm ngon đúng điệu, dễ dàng đánh thức vị giác của mọi thực khách.</p><h3><strong>Thành phần :</strong></h3><p>Mì spaghetti, ba chỉ xông khói (Bacon), tỏi, hành tây, nấm đông cô, nấm đùi gà, kem sữa nấu, sữa tươi tiệt trùng, trứng gà, phô mai parmesan, dầu ô-liu extra virgin, bơ lạt Anchor, đường cát, muối, tiêu đen</p><p>+ Trang trí: ngò tây</p><p>+ Ăn kèm: phô mai parmesan</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Mì spaghetti sốt kem là món ăn đặc biệt không thể bỏ qua của mọi tín đồ yêu thích ẩm thực nước Ý', 140000, 99000, 28, '20250220123042.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:30:42', NULL, 1, 1),
(10, 1, 4, 'Cơm chiên hải sản', 'com-chien-hai-san', '<p>Cơm chiên hải sản mang đến hương vị đặc sắc khi dùng nguyên liệu chính là gạo Basmati - môt loại gạo Ấn Độ với những công dụng tuyệt vời cho sức khỏe, cộng hưởng vị ngọt tự nhiên của tôm tươi, thanh cua, trứng cua cùng các nguyên liệu và gia vị phong phú. Bên cạnh đó, lớp trứng bao phủ bên ngoài sẽ giúp lưu giữ độ nóng và hương vị món ăn được nguyên vẹn khi đến tay thực khách.</p><h3><strong>Thành phần :</strong></h3><p>Gạo basmati, Trứng gà, tôm, thanh cua, trứng cá chuồn, bắp hạt, cà rốt, đậu Hà Lan, hành lá, ớt sừng, tỏi, nghệ, mỡ gà, bột gạo, dầu hào</p><p>+ Nước tương pha tỏi, ớt: nước tương, tỏi, ớt sừng</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 23.2, Carbs - 72.05, Fats - 8.05 (Total Kcal - 453.45)</p>', 'Cơm chiên hải sản mang đến hương vị đặc sắc khi dùng nguyên liệu chính là gạo Basmati - môt loại gạo Ấn Độ', 120000, 99000, 31, '20250220123155.jpg', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:31:55', NULL, 1, 1),
(11, 2, 4, 'Gỏi tai heo hoa chuối', 'goi-tai-heo-hoa-chuoii', '<p>Sử dụng nguyên liệu chuối tây cùng tai heo quen thuộc, các đầu bếp&nbsp;tạo nên sự khác biệt bằng phương pháp luộc hoa chuối để lọc bỏ hết nhựa, tạo cảm giác dễ chịu và an toàn khi ăn. Kết hợp cùng cà rốt, dưa leo, hành tây, củ kiệu, món gỏi chuối tai heo mang màu sắc bắt mắt và những nét chấm phá đặc biệt trong hương vị. Hoàn thiện tất cả là nước mắm chua ngọt dung hòa, tổng thể làm nên món ăn thơm ngon, giàu chất dinh dưỡng và thanh mát ngày hè.</p><h3><strong>Thành phần :</strong></h3><p>Ba rọi heo, tai heo, bắp chuối, cà rốt, dưa leo, hành tây, ớt sừng, tỏi, rau răm, ngò rí, húng cây,...</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 16.0,&nbsp;Carbs -&nbsp;55.2,&nbsp;Fat -10.2 (Total Kcal -&nbsp;376.4)</p>', 'Sử dụng nguyên liệu chuối tây cùng tai heo quen thuộc, các đầu bếp tạo nên sự khác biệt bằng phương pháp luộc hoa chuối để lọc bỏ hết nhựa, tạo cảm giác dễ chịu và an toàn khi ăn.', 150000, 125000, 48, '20250220123320.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:33:20', NULL, NULL, 1),
(12, 2, 4, 'Gà cuốn lá dứa', 'ga-cuon-la-duaa', '<p>Gà cuốn lá dứa là món ăn mang phong vị ẩm thực Thái Lan, đã được các đầu bếp TASTY Kitchen biến tấu mang đầy mới mẻ và phù hợp với khẩu vị người Việt. Thịt gà lóc xương, giữ nguyên da cắt miếng vừa ăn tẩm ướp suốt hơn 3 tiếng cùng các gia vị đặc trưng của Việt Nam như tỏi, dầu hào, điều,...cân chỉnh với tỷ lệ thích hợp. Thêm điểm nhấn khi kết hợp mùi thơm tự nhiên của lá dứa được trồng tại Đà Lạt cuốn cẩn thận với gà và chiên giòn hấp dẫn. Không chỉ dễ dàng chiêu đãi vị giác món ăn còn mang lại giá trị dinh dưỡng cao, rất tốt cho tim mạch.</p><h3><strong>Thành phần :</strong></h3><p>Đùi gà, lá dứa, xà lách lô lô xanh, xà lách lô lô tím, cà chua bi, hành tây tím, đường cát, tiêu sọ trắng, bột bắp, bột chiên giòn, bột năng, dầu mè, tỏi xay, ngò rí, nước tương, dầu ăn</p><p>+ Sốt chấm: mè trắng, đường thốt nốt, nước tương đậu nành, hắc xì dầu, dầu mè</p><p>+ Sốt xà lách: giấm trắng, muối, tiêu đen, tỏi xay, hành tím, đường cát</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 36.82,&nbsp;Carbs - 1.9,&nbsp;Fats - 26 (Total Kcal - 388.88)</p>', 'Gà cuốn lá dứa là món ăn mang phong vị ẩm thực Thái Lan, đã được các đầu bếp TASTY Kitchen biến tấu mang đầy mới mẻ và phù hợp với khẩu vị người Việt.', 180000, 168000, 19, '20250220123454.jpg', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:34:54', NULL, 1, 1),
(13, 2, 4, 'Ức gà đút lò phủ lá chanh', 'uc-ga-dut-lo-phu-la-chanhh', '<p>Sử dụng phương pháp nướng cách thủy đặc biệt mang đến hương vị mới mẻ cho món Ức gà đút lò phủ lá chanh vừa giữ được sự mềm dai vừa thấm đều nước sốt hấp dẫn. Với thành phần ức gà giàu đạm, ít béo, kết hợp cùng lá chanh, lá dứa, thịt heo và các loại nấm tạo nên một món ăn đậm đà từ hương đến vị khi dùng kèm cơm trắng. Không chỉ thơm ngon, món ăn còn cung cấp dinh dưỡng phù hợp, là lựa chọn không thể bỏ qua của người ăn kiêng</p><h3><strong>Thành phần :</strong></h3><p>Thịt ức gà, Thịt heo xay, giò sống, nấm mèo, nấm đông cô, tỏi, ớt sừng, phô mai Parmessan, lá chanh, ngũ vị hương, bột ớt cựa gà, bột hành tây, bột ngò, bột tỏi</p><p>+ Sốt ngò gai: ngò gai, húng lủi, ớt hiểm, sữa đặc, mayonnaise, chanh</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 62.5, Carbs - 4.61, Fats - 14.6 (Total Kcal - 399.84)</p>', 'Sử dụng phương pháp nướng cách thủy đặc biệt mang đến hương vị mới mẻ cho món Ức gà đút lò phủ lá chanh vừa giữ được sự mềm dai vừa thấm đều nước sốt hấp dẫn.', 225000, 185000, 8, '20250220123629.jpg', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:36:29', NULL, 1, 1),
(14, 2, 4, 'Ba rọi nướng riềng mẻ', 'ba-roi-nuong-rieng-me', '<p>Ba rọi nướng riềng mẻ là món ăn đặc trưng của người miền Bắc. Với những miếng thịt ba rọi rút sườn tẩm ướp cẩn thận trong nhiều giờ cùng riềng, mẻ và các gia vị đặc biệt được nướng lên thơm lừng. Vị chua, cay nhẹ đầy hấp dẫn của từng miếng thịt khi thưởng thức kèm cơm nóng sẽ mang đến trải nghiệm vị giác ấn tượng không thể bỏ qua.</p><h3><strong>Thành phần :</strong></h3><p>Thịt ba rọi rút sườn Ba Lan, mắm tôm, cơm mẽ, hành tím, riềng củ, húng lủi, lá mơ, ngò gai, sả, ớt hiểm, mè trắng, dầu hào</p><p>+ Sốt chấm riềng mẻ: riềng củ, sả cây, hành tím, tỏi, ớt hiểm, cơm mẻ, nghệ, mắm tôm, màu điều, thịt ba chỉ xay</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 43.9, Carbs - 13, Fats - 53.75 (Total Kcal - 711.35)</p>', 'Ba rọi nướng riềng mẻ là món ăn đặc trưng của người miền Bắc. Với những miếng thịt ba rọi rút sườn tẩm ướp cẩn thận trong nhiều giờ cùng riềng,', 170000, 155000, 3, '20250220123753.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:20:27', NULL, 1, 1),
(15, 2, 4, 'Canh mướp hương nhồi thịt', 'canh-muop-dang-nhoi-thit', '<p>Canh mướp hương nhồi thịt được xử lý đầy tinh tế mang đến vị ngọt thanh và hương thơm thoang thoảng kích thích vị giác. Mướp hương vốn là loại quả quen thuộc được nhiều người ưa thích có vị ngọt, tính mát cùng nhiều dưỡng chất tốt cho sức khỏe. Đặc biệt kết hợp với phần nhân làm từ tôm bạc thẻ, thịt heo xay, giò sống heo giúp tăng thêm vị đậm đà, sự dai giòn ấn tượng. Đi cùng vị ngọt thuần chất của các loại củ như su hào, bắp mỹ trái, hành baro, củ sắn...chắc chắn sẽ mang đến trải nghiệm khó quên.</p><h3><strong>Thành phần :</strong></h3><p>Tôm bạc thẻ, giò sống, cá thát lát, ba chỉ heo xay, mướp hương, ngò rí, hành lá, tỏi củ, hành tím, ớt sừng, bắp mỹ, củ su hào, củ sắn nước, xương gà, đậu hũ non</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Canh mướp hương nhồi thịt được xử lý đầy tinh tế mang đến vị ngọt thanh và hương thơm thoang thoảng kích thích vị giác.', 130000, 120000, 26, '20250220123929.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:39:29', NULL, NULL, 1),
(16, 2, 4, 'Ba rọi chiên mắm ngò', 'ba-roi-chien-mam-ngo', '<p>Ba rọi chiên mắm ngò là sự sáng tạo được khơi nguồn từ món ba rọi chiên mắm vốn đã quen thuộc trong bữa cơm người Việt, giúp nâng tầm tinh túy ẩm thực dân gian và mang lại trải nghiệm hoàn toàn mới cho thực khách. Bằng cách xử lý tinh tế, miếng thịt ba rọi chiên giòn kết hợp cùng sốt nước mắm thơm thêm chút vị chua thanh nhẹ của tắc tươi, phảng phất mùi ngò rí tạo nên sự cân bằng tuyệt hảo. Món ăn sẽ tuyệt vời hơn khi thưởng thức kèm rau thơm và kim chi hấp dẫn.</p><h3><strong>Thành phần :</strong></h3><p>Thịt ba rọi rút sườn Ba Lan, bột chiên giòn, gạo thái, ngò rí, tỏi củ, sả cây, tắc, ớt sừng, dưa leo, ngò rí, ớt hiểm, thơm gọt, húng quế, húng lủi, lô lô xanh, lô lô tím, dầu ăn, đường cát, tương ớt, nước mắm, giấm gạo</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 16.7, Carbs - 0, Fats - 30.9 (Total Kcal - 344.9)</p>', 'Ba rọi chiên mắm ngò là sự sáng tạo được khơi nguồn từ món ba rọi chiên mắm vốn đã quen thuộc trong bữa cơm người Việt,..', 170000, 145000, 74, '20250220124131.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:41:31', NULL, 1, 1),
(17, 2, 4, 'Cơm chả cua hoàng kim', 'com-cha-cua-hoang-kim', '<p>Cơm chả cua hoàng kim với sự đặc biệt khi chả của được làm 100% thủ công. Từ khâu chọn lựa nguyên vật liệu chất lượng, đánh thịt làm giò sóng, sau đó kết hợp với các nguyên liệu như nấm mèo, miến, thịt cua miếng và thịt cua xé nhuyễn. Điểm nhấn đặc biệt nhất là trứng muối béo bùi, tất cả làm nên một hương vị chả cua chỉ có tại TASTY Kitchen. Chả cua được ăn kèm với cơm gạo ST25 hảo hạng, thơm ngon, dẻo bùi, cùng đồ chua được ngâm thủ công tại bếp đảm bảo chất lượng và hương vị độc đáo. Nước mắm được xem như linh hồn của món được pha chế công phu, khi độ ngọt thanh tự nhiên đến từ nước dừa tươi nấu lên làm thành thứ nước mắm đặc kẹo và là mảnh ghép cuối cùng cho sự tròn trịa hương vị của món tuy quen mà lạ.</p><p><br></p><p><strong>Thành phần :</strong></p><p>Mai cua, thịt heo xay, chả cua, thịt cua, trứng gà, trứng vịt muối, gạo ST25, hành tím, bún tàu, nấm mèo, củ sắn, ngò rí, dầu ăn, hành lá, sả, tiêu đen xay, dầu màu điều</p><p><br></p><p>+ Nước mắm pha tỏi, ớt: nước dừa tươi, đường phèn, nước mắm, giấm trắng, tỏi, ớt sừng</p><p><br></p><p>+ Đồ chua: cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p><br></p><p>+ Ăn kèm: dưa leo, cà chua</p><p><br></p><p><strong>Khẩu phần:</strong></p><p>1 người</p><p><br></p><p><strong>Thời gian hoàn tất :</strong></p><p>12 phút</p>', 'Cơm chả cua hoàng kim với sự đặc biệt khi chả của được làm 100% thủ công. Từ khâu chọn lựa nguyên vật liệu chất lượng, đánh thịt làm giò sóng, sau đó kết hợp với các nguyên liệu như nấm mèo,...', 85000, 75000, 31, '20250220124422.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:44:22', NULL, 1, 1),
(18, 2, 1, 'Cơm đùi gà chiên giòn', 'com-dui-ga-chien-gion', '<p>Cơm đùi gà chiên giòn vốn là món ăn quen thuộc với nhiều người nhưng với sự tinh tế của các đầu bếp giúp mang đến hương vị mới mẻ, đầy hấp dẫn. Phần đùi gà góc tư được tẩm ướp gia vị trong thời gian vừa đủ sau đó chiên cho lớp da vàng đều và giòn rụm còn phần thịt bên trong đảm bảo mềm dai, vị đậm đà, ngon ngọt tự nhiên. Khi thưởng thức, thực khách dùng kèm cơm nóng dẻo thêm chút cà rốt, đu đủ ngâm chua đặc biệt là phần nước mắm chấm tỏi ớt được pha chế từ nước dừa tươi càng giúp \"đổi gió\" cho món ăn thân thuộc.</p><h3><strong>Thành phần :</strong></h3><p>Đùi gà góc 4, muối thái, đường cát, bột thịt gà, hạt nêm heo, bột ngọt, hạt điều, dầu ăn, hành tím, hành lá, gừng củ, gạo tài nguyên, mỡ gà, nghệ củ, trứng gà, ngò gai, nghệ củ</p><p>+ Nước mắm pha tỏi, ớt: Nước dừa tươi, đường phèn, nước mắm, tỏi, ớt sừng</p><p>+ Đồ chua: Cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p>+ Ăn kèm: dưa leo, cà chua, xà lách</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút&nbsp;</p>', 'Cơm đùi gà chiên giòn vốn là món ăn quen thuộc với nhiều người nhưng với sự tinh tế của các đầu bếp giúp mang đến hương vị mới mẻ, đầy hấp dẫn.', 65000, 58000, 59, '20250220124538.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:20:27', NULL, 1, 1),
(19, 2, 4, 'Cơm sườn nướng', 'com-suon-nuong', '<p>Cơm sườn nướng sẽ gây ấn tượng với thực khách ngay từ lần đầu tiên với sự mềm thơm, đầy vị và mọng nước của miếng sườn, không hề khô rang như những nơi khác. Với tổng thời gian tẩm ướp lên đến 8 tiếng, với 4 tiếng ngâm sữa tươi và 4h tiếng ướp gia vị, giúp miếng sườn giữ được độ thơm mềm và hương vị đậm đà tròn trịa. Nước mắm được xem như linh hồn của món được pha chế công phu, khi độ ngọt thanh tự nhiên đến từ nước dừa tươi nấu lên làm thành thứ nước mắm đặc kẹo và là mảnh ghép cuối cùng cho sự tròn trịa hương vị của món tuy quen mà lạ.Món sườn ăn kèm với cơm gạo ST25 hảo hạng, thơm ngon, dẻo bùi, cùng đồ chua được ngâm thủ công tại bếp đảm bảo chất lượng và hương vị độc đáo.&nbsp;</p><h3><strong>Thành phần :</strong></h3><p>Sườn cốt lết, gạo ST25, sữa tươi (Ướp sườn), baking soda, dầu hào, nước tương, tiêu đen, bột ngọt, hạt nêm, bột ngũ vị hương, tương ớt, đường cát, mật ong, nước màu gạch tôm, rượu vodka, hành tím, tỏi, hành lá, sả</p><p>+ Nước mắm pha tỏi, ớt: Nước dừa tươi, đường phèn, nước mắm, giấm trắng, tỏi, ớt sừng</p><p>+ Đồ chua: cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p>+ Ăn kèm: Dưa leo, cà chua</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút&nbsp;</p>', 'Cơm sườn nướng sẽ gây ấn tượng với thực khách ngay từ lần đầu tiên với sự mềm thơm, đầy vị và mọng nước của miếng sườn, không hề khô rang như những nơi khác.', 75000, 65000, 39, '20250220124715.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:47:15', NULL, 1, 1),
(20, 2, 4, 'Sụn gà xóc muối Tây Ninh', 'sun-ga-xoc-muoi-tay-ninh', '<p>Món sụn gà xóc muối Tây Ninh là một món ăn vặt hoàn hảo với độ giòn từ lớp bột bên ngoài và độ dai dai từ sụn gà bên trong. Các đầu bếp đã sáng tạo khéo léo khi kết hợp muối ớt Tây Ninh và các gia vị hấp dẫn giúp tạo nên một món ăn mới lạ với mùi thơm cùng hương vị đậm đà. Món ăn được gói gọn trong một chiếc tổ chim làm bằng sả chiên, không chỉ đẹp mắt mà thực khách có thể thưởng thức độ giòn thơm, vị vừa ăn.</p><h3><strong>Thành phần :</strong></h3><p>Sụn gà, muối Tây Ninh, trứng gà, sả, nghệ, lá chanh, ớt sừng, hành phi, tỏi phi, tôm khô, chà bông heo, bột chiên xù</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p><strong>&nbsp;</strong>Protein - 19, Carbs - 5.8, Fats - 4 (Total Kcal - 135.2)</p>', 'Món sụn gà xóc muối Tây Ninh là một món ăn vặt hoàn hảo với độ giòn từ lớp bột bên ngoài và độ dai dai từ sụn gà bên trong.', 155000, 135000, 43, '20250220124825.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:48:25', NULL, 1, 1),
(21, 3, 4, 'Canh mướp hương nhồi thịt', 'canh-muop-dang-nhoi-thitt', '<p>Canh mướp hương nhồi thịt được xử lý đầy tinh tế mang đến vị ngọt thanh và hương thơm thoang thoảng kích thích vị giác. Mướp hương vốn là loại quả quen thuộc được nhiều người ưa thích có vị ngọt, tính mát cùng nhiều dưỡng chất tốt cho sức khỏe. Đặc biệt kết hợp với phần nhân làm từ tôm bạc thẻ, thịt heo xay, giò sống heo giúp tăng thêm vị đậm đà, sự dai giòn ấn tượng. Đi cùng vị ngọt thuần chất của các loại củ như su hào, bắp mỹ trái, hành baro, củ sắn...chắc chắn sẽ mang đến trải nghiệm khó quên.</p><h3><strong>Thành phần :</strong></h3><p><strong>T</strong>ôm bạc thẻ, giò sống, cá thát lát, ba chỉ heo xay, mướp hương, ngò rí, hành lá, tỏi củ, hành tím, ớt sừng, bắp mỹ, củ su hào, củ sắn nước, xương gà, đậu hũ non</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Canh mướp hương nhồi thịt được xử lý đầy tinh tế mang đến vị ngọt thanh và hương thơm thoang thoảng kích thích vị giác.', 130000, 120000, 39, '20250220124956.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:49:56', NULL, NULL, 1),
(22, 3, 4, 'Bún bò', 'bun-bo', '<p>Bún bò món ăn truyền thống, niềm tự hào của ẩm thực vùng đất kinh kỳ nay đã có trong thực đơn với phiên bản đầy mới mẻ đủ khiến mọi thực khách phải xuýt xoa. Để chế biến món bún bò đặc biệt&nbsp;cần trải qua nhiều công đoạn nhưng quan trọng nhất vẫn là nước lèo - “linh hồn” của món vì cần ninh xương trong hàng giờ liền kết hợp các gia vị và nguyên liệu đặc trưng từ sả tươi, sa tế, ớt sừng, hành tím...đến tôm khô tạo nên màu sắc bắt mắt, dậy mùi thơm phức cùng hương vị đậm đà. Đặc biệt, món ăn còn hấp dẫn bởi phần gầu bò hầm kỹ, chả cua ngọt thịt. Khi thưởng thức, thực khách vắt thêm miếng chanh, thả chút ớt và các loại rau sống tươi ngon chắc chắn sẽ mang đến trải nghiệm khó quên.</p><h3><strong>Thành phần :</strong></h3><p><strong>Topping:</strong>&nbsp;Chả cua, gầu bò, ngò gai, rau răm, hành lá, hành tây</p><p><strong>+&nbsp;</strong>Ăn kèm:&nbsp;Bún tươi, rau muống bào, bắp chuối bào, giá sống, ngò gai, chanh không hạt, ớt Batri, Sa tế khô, rau quế, húng quế</p><p><strong>+&nbsp;</strong>Nước lèo: Xương ống bò, xương bánh chè heo, tôm khô, tỏi, hành tím, hành tây, ớt sừng, sả cây, sa tế, dầu ăn, đường phèn, đường cát, bột ngọt, nước mắm</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Bún bò món ăn truyền thống, niềm tự hào của ẩm thực vùng đất kinh kỳ nay đã có trong thực đơn với phiên bản đầy mới mẻ đủ khiến mọi thực khách phải xuýt xoa.', 80000, 65000, 89, '20250220125110.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:51:10', NULL, NULL, 1),
(23, 4, 4, 'Cơm chả cua hoàng kim', 'com-cha-cua-hoang-kimc', '<p>Cơm chả cua hoàng kim với sự đặc biệt khi chả của được làm 100% thủ công. Từ khâu chọn lựa nguyên vật liệu chất lượng, đánh thịt làm giò sóng, sau đó kết hợp với các nguyên liệu như nấm mèo, miến, thịt cua miếng và thịt cua xé nhuyễn. Điểm nhấn đặc biệt nhất là trứng muối béo bùi, tất cả làm nên một hương vị chả cua chỉ có tại TASTY Kitchen. Chả cua được ăn kèm với cơm gạo ST25 hảo hạng, thơm ngon, dẻo bùi, cùng đồ chua được ngâm thủ công tại bếp đảm bảo chất lượng và hương vị độc đáo. Nước mắm được xem như linh hồn của món được pha chế công phu, khi độ ngọt thanh tự nhiên đến từ nước dừa tươi nấu lên làm thành thứ nước mắm đặc kẹo và là mảnh ghép cuối cùng cho sự tròn trịa hương vị của món tuy quen mà lạ.</p><h3><strong>Thành phần :</strong></h3><p>Mai cua, thịt heo xay, chả cua, thịt cua, trứng gà, trứng vịt muối, gạo ST25, hành tím, bún tàu, nấm mèo, củ sắn, ngò rí, dầu ăn, hành lá, sả, tiêu đen xay, dầu màu điều</p><p>+ Nước mắm pha tỏi, ớt: nước dừa tươi, đường phèn, nước mắm, giấm trắng, tỏi, ớt sừng</p><p>+ Đồ chua: cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p>+ Ăn kèm: dưa leo, cà chua</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút</p>', 'Cơm chả cua hoàng kim với sự đặc biệt khi chả của được làm 100% thủ công', 98985, 75000, 40, '20250220125440.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:54:40', NULL, NULL, 1),
(24, 4, 4, 'Cơm đùi gà chiên giòn', 'com-dui-ga-chien-gionc', '<p>Cơm đùi gà chiên giòn vốn là món ăn quen thuộc với nhiều người nhưng với sự tinh tế của các đầu bếp giúp mang đến hương vị mới mẻ, đầy hấp dẫn. Phần đùi gà góc tư được tẩm ướp gia vị trong thời gian vừa đủ sau đó chiên cho lớp da vàng đều và giòn rụm còn phần thịt bên trong đảm bảo mềm dai, vị đậm đà, ngon ngọt tự nhiên. Khi thưởng thức, thực khách dùng kèm cơm nóng dẻo thêm chút cà rốt, đu đủ ngâm chua đặc biệt là phần nước mắm chấm tỏi ớt được pha chế từ nước dừa tươi càng giúp \"đổi gió\" cho món ăn thân thuộc.</p><h3><strong>Thành phần :</strong></h3><p>Đùi gà góc 4, muối thái, đường cát, bột thịt gà, hạt nêm heo, bột ngọt, hạt điều, dầu ăn, hành tím, hành lá, gừng củ, gạo tài nguyên, mỡ gà, nghệ củ, trứng gà, ngò gai, nghệ củ</p><p>+ Nước mắm pha tỏi, ớt: Nước dừa tươi, đường phèn, nước mắm, tỏi, ớt sừng</p><p>+ Đồ chua: Cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p>+ Ăn kèm: dưa leo, cà chua, xà lách</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút&nbsp;</p>', 'Cơm đùi gà chiên giòn vốn là món ăn quen thuộc với nhiều người nhưng với sự tinh tế của các đầu bếp giúp mang đến hương vị mới mẻ, đầy hấp dẫn.', 65000, 58000, 86, '20250220125614.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:56:14', NULL, NULL, 1),
(25, 4, 4, 'Cơm sườn nướng', 'com-suon-nuongc', '<p>Cơm sườn nướng sẽ gây ấn tượng với thực khách ngay từ lần đầu tiên với sự mềm thơm, đầy vị và mọng nước của miếng sườn, không hề khô rang như những nơi khác. Với tổng thời gian tẩm ướp lên đến 8 tiếng, với 4 tiếng ngâm sữa tươi và 4h tiếng ướp gia vị, giúp miếng sườn giữ được độ thơm mềm và hương vị đậm đà tròn trịa. Nước mắm được xem như linh hồn của món được pha chế công phu, khi độ ngọt thanh tự nhiên đến từ nước dừa tươi nấu lên làm thành thứ nước mắm đặc kẹo và là mảnh ghép cuối cùng cho sự tròn trịa hương vị của món tuy quen mà lạ.Món sườn ăn kèm với cơm gạo ST25 hảo hạng, thơm ngon, dẻo bùi, cùng đồ chua được ngâm thủ công tại bếp đảm bảo chất lượng và hương vị độc đáo.&nbsp;</p><h3><strong>Thành phần :</strong></h3><p>Sườn cốt lết, gạo ST25, sữa tươi (Ướp sườn), baking soda, dầu hào, nước tương, tiêu đen, bột ngọt, hạt nêm, bột ngũ vị hương, tương ớt, đường cát, mật ong, nước màu gạch tôm, rượu vodka, hành tím, tỏi, hành lá, sả</p><p>+ Nước mắm pha tỏi, ớt: Nước dừa tươi, đường phèn, nước mắm, giấm trắng, tỏi, ớt sừng</p><p>+ Đồ chua: cà rốt ngâm chua, đu đủ ngâm chua, giấm gạo, muối Thái, đường cát</p><p>+ Ăn kèm: Dưa leo, cà chua</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút&nbsp;</p>', 'Cơm sườn nướng sẽ gây ấn tượng với thực khách ngay từ lần đầu tiên với sự mềm thơm, đầy vị và mọng nước của miếng sườn, không hề khô rang như những nơi khác.', 75000, 65000, 6, '20250220125736.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:57:36', NULL, NULL, 1),
(26, 4, 4, 'Bún bò', 'bun-boo', '<p>Bún bò món ăn truyền thống, niềm tự hào của ẩm thực vùng đất kinh kỳ nay đã có trong thực đơn với phiên bản đầy mới mẻ đủ khiến mọi thực khách phải xuýt xoa. Để chế biến món bún bò đặc biệt&nbsp;cần trải qua nhiều công đoạn nhưng quan trọng nhất vẫn là nước lèo - “linh hồn” của món vì cần ninh xương trong hàng giờ liền kết hợp các gia vị và nguyên liệu đặc trưng từ sả tươi, sa tế, ớt sừng, hành tím...đến tôm khô tạo nên màu sắc bắt mắt, dậy mùi thơm phức cùng hương vị đậm đà. Đặc biệt, món ăn còn hấp dẫn bởi phần gầu bò hầm kỹ, chả cua ngọt thịt. Khi thưởng thức, thực khách vắt thêm miếng chanh, thả chút ớt và các loại rau sống tươi ngon chắc chắn sẽ mang đến trải nghiệm khó quên.</p><h3><strong>Thành phần :</strong></h3><p><strong>+&nbsp;</strong>Topping:&nbsp;Chả cua, gầu bò, ngò gai, rau răm, hành lá, hành tây</p><p><strong>+&nbsp;</strong>Ăn kèm:&nbsp;Bún tươi, rau muống bào, bắp chuối bào, giá sống, ngò gai, chanh không hạt, ớt Batri, Sa tế khô, rau quế, húng quế</p><p><strong>+&nbsp;</strong>Nước lèo: Xương ống bò, xương bánh chè heo, tôm khô, tỏi, hành tím, hành tây, ớt sừng, sả cây, sa tế, dầu ăn, đường phèn, đường cát, bột ngọt, nước mắm</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Bún bò món ăn truyền thống, niềm tự hào của ẩm thực vùng đất kinh kỳ nay đã có trong thực đơn với phiên bản đầy mới mẻ đủ khiến mọi thực khách phải xuýt xoa.', 75000, 65000, 99, '20250220125909.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 05:59:09', NULL, NULL, 1),
(27, 4, 4, 'Cháo bò bằm và trứng bắc thảo', 'chao-bo-bam-trung-bac-thao', '<p>Cháo bò bằm và trứng bắc thảo là một món dễ ăn mà lại vô cùng bổ dưỡng. Cháo được nấu từ nước dùng xương hầm bò trong suốt 8 tiếng liền, tạo nên độ đậm đà và dinh dưỡng cho món ăn. Thịt bò giàu đạm, kết hợp cùng trứng bắc thảo béo bùi và giàu Vitamin A, là món ăn phù hợp cho nhiều đối tượng.</p><h3><strong>Thành phần :</strong></h3><p>Cháo còn hạt, thăn bò bằm, trứng bắc thảo, khoai môn sáp vàng, đậu bắp, rau răm, hành lá, hành phi, giá sống</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 16.7, Carbs - 50.15, Fats - 6.3 (Total Kcal - 324.1)</p>', 'Cháo bò bằm và trứng bắc thảo là một món dễ ăn mà lại vô cùng bổ dưỡng.', 95000, 85000, 41, '20250220130030.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:00:30', NULL, 1, 1),
(28, 4, 4, 'Hủ tiếu áp chảo bò', 'mon-an-28', '<p>Hủ tiếu bò áp chảo là món ăn tuyệt hảo sử dụng phương pháp áp chảo vốn đã rất nổi tiếng ở nhiều nước Phương Tây. Qua lớp dầu nóng giúp các nguyên liệu chín nhanh ở nhiệt độ cao, lưu giữ được độ giòn, vị ngọt tự nhiên, đặc biệt hơn hết là màu sắc bắt mắt và hương vị thơm ngon khó cưỡng của phần thịt bò phi lê đậm đà hài hòa cùng từng sợi hủ tiếu mềm mỏng hấp dẫn. Với hàm lượng dinh dưỡng phù hợp, giàu chất sơ từ các loại rau củ, món ăn chắc chắn là lựa chọn lý tưởng vào các bữa ăn trong ngày.&nbsp;</p><h3><strong>Thành phần :</strong></h3><p>Thăn bò, hủ tiếu mềm, nước hầm xương gà, cà rốt, cải thìa, nấm đông cô, giá sống, hẹ lá, hành lá, dầu ăn, tỏi củ, hành tím, bột năng, dầu hào, nước tương, mạch nha, đường phèn.</p><h3><strong>Khẩu phần:</strong></h3><p>1 - 2 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>12 phút</p>', 'Hủ tiếu bò áp chảo là món ăn tuyệt hảo sử dụng phương pháp áp chảo vốn đã rất nổi tiếng ở nhiều nước Phương Tây', 110000, 99000, 95, '20250220130131.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:01:31', NULL, 1, 1),
(29, 6, 2, 'Mì spaghetti sốt kem nấm', 'mi-spaghetti-kem-namm', '<p>Mì spaghetti sốt kem là món ăn đặc biệt không thể bỏ qua của mọi tín đồ yêu thích ẩm thực nước Ý. Với từng sợi mì vàng óng, mềm dai đấm mình trong nước sốt sền sệt vị béo ngậy, phảng phất mùi thơm đầy hấp dẫn cân bằng với vị mằn mặn của từng lát thịt ba chỉ xông khói, nhấn nhá thêm chút vị ngọt tự nhiên từ nấm đông cô, nấm đùi gà và chẳng thể thiếu một lớp phô mai parmesan bào nhuyển phủ đều bên trên, tất cả hòa quyện mang đến hương vị thơm ngon đúng điệu, dễ dàng đánh thức vị giác của mọi thực khách.</p><h3><strong>Thành phần :</strong></h3><p>Mì spaghetti, ba chỉ xông khói (Bacon), tỏi, hành tây, nấm đông cô, nấm đùi gà, kem sữa nấu, sữa tươi tiệt trùng, trứng gà, phô mai parmesan, dầu ô-liu extra virgin, bơ lạt Anchor, đường cát, muối, tiêu đen</p><p>+ Trang trí: ngò tây</p><p>+ Ăn kèm: phô mai parmesan</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Mì spaghetti sốt kem là món ăn đặc biệt không thể bỏ qua của mọi tín đồ yêu thích ẩm thực nước Ý.', 125000, 99000, 53, '20250220130252.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:02:52', NULL, NULL, 1),
(30, 4, 2, 'Mì spaghetti sốt bò bằm', 'mi-spaghetti-bo-bam', '<p>Với món mì spaghetti sốt bò bằm, TASTY muốn mang tới thực khách trải nghiệm nét đặc trưng trong văn hóa ẩm thực nước Ý nhưng được sáng tạo trong công thức nước sốt để phù hợp với khẩu vị người Việt. Phần nước sốt bò bằm là sự hòa quyện của nhiều nguyên liệu, mang màu đỏ nổi bật từ sốt cà chua và rượu vang, cùng với hương thơm béo ngậy của phô mai Parmesan và hương thơm đặc trưng của thịt bò. Sợi mì tơi, vàng óng, mềm dai hòa quyện với lớp sốt thịt bò bằm phô mai thơm ngọt đậm đà sẽ đem đến cho thực khách những trải nghiệm ẩm thực khó quên.</p><h3><strong>Thành phần :</strong></h3><p>Mì spaghetti, thịt bò xay, ớt hiểm đỏ, hành tây, ngò tây, quế tây, sốt cà chua, lá nguyệt quế, muối, tiêu đen, đường, phô mai parmesan, dầu ô-liu extra virgin, bơ lạt Anchor, tỏi</p><p>+ Trang trí: ngò tây</p><p>+ Ăn kèm: phô mai parmesan</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>10 phút</p>', 'Với món mì spaghetti sốt bò bằm, TASTY muốn mang tới thực khách trải nghiệm nét đặc trưng trong văn hóa ẩm thực nước Ý nhưng được sáng tạo,..', 110000, 75000, 69, '20250220130410.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:04:10', NULL, NULL, 1),
(31, 4, 4, 'Cơm chiên thịt cua lá cẩm', 'com-chien-thit-cua-la-cam', '<p>Cơm chiên thịt cua lá cẩm là món ăn đạt điểm tuyệt đối từ hình thức đến hương vị. Sử dụng nguyên liệu gạo Basmati Malika giàu dinh dưỡng được nhập khẩu từ Ấn Độ giúp hạt cơm luôn tơi xốp, không bị dính. Kết hợp cùng lá cẩm, một loại thảo dược tốt cho sức khỏe và tạo nên màu tím bắt mắt điểm xuyến với màu trắng từ thịt cua tươi ngon và màu vàng hấp dẫn của bắp mỹ. Món ăn gói cầu kỳ bên trong lớp trứng mỏng giúp lưu giữ độ nóng và vị đậm đà tuyệt hảo.</p><h3><strong>Thành phần :</strong></h3><p>Gạo Basmati, trứng gà (vỏ trứng cuộn), thịt cua, thanh cua, trứng cá chuồn, giá sống, hành lá, gừng, bắp mỹ, lá cẩm, hạt nêm heo, muối, đường cát, dầu ăn, bột mì, trứng gà, ớt chuông đỏ, ớt sừng xanh, ngò rí</p><p>+ Nước tương pha tỏi, ớt: nước tương Nam Dương, tỏi bằm,ớt sừng bằm</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 21.9, Carbs - 71.15, Fats - 1.7 (Total Kcal - 387.5)</p>', 'Cơm chiên thịt cua lá cẩm là món ăn đạt điểm tuyệt đối từ hình thức đến hương vị.', 100000, 89000, 35, '20250220130839.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:08:39', NULL, 1, 1),
(32, 4, 4, 'Cơm chiên hải sản', 'com-chien-hai-sann', '<p>Cơm chiên hải sản mang đến hương vị đặc sắc khi dùng nguyên liệu chính là gạo Basmati - môt loại gạo Ấn Độ với những công dụng tuyệt vời cho sức khỏe, cộng hưởng vị ngọt tự nhiên của tôm tươi, thanh cua, trứng cua cùng các nguyên liệu và gia vị phong phú. Bên cạnh đó, lớp trứng bao phủ bên ngoài sẽ giúp lưu giữ độ nóng và hương vị món ăn được nguyên vẹn khi đến tay thực khách.</p><h3><strong>Thành phần :</strong></h3><p>Gạo basmati, Trứng gà, tôm, thanh cua, trứng cá chuồn, bắp hạt, cà rốt, đậu Hà Lan, hành lá, ớt sừng, tỏi, nghệ, mỡ gà, bột gạo, dầu hào</p><p>+ Nước tương pha tỏi, ớt: nước tương, tỏi, ớt sừng</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p><h3><strong>Năng lượng :</strong></h3><p>Protein - 23.2, Carbs - 72.05, Fats - 8.05 (Total Kcal - 453.45)</p>', 'Cơm chiên hải sản mang đến hương vị đặc sắc khi dùng nguyên liệu chính là gạo Basmati - môt loại gạo Ấn Độ với những công dụng tuyệt vời cho sức khỏe,', 99000, 89000, 20, '20250220131008.jpg', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:10:08', NULL, 1, 1),
(33, 5, 4, 'Bánh chuối hấp', 'banh-chuoi-hap', '<p>Bánh chuối hấp là một món ăn vặt dân dã của nền ẩm thực Việt. Các đầu bếp của TASTY đã khéo léo kết hợp vị ngọt ngào của những quả chuối sứ chín thơm lừng cùng nước cốt dừa béo ngậy, nhấn nhá một chút hương rượu vodka để gia tăng sự độc đáo trong hương vị từng miếng bánh. Là sự giao thoa tinh tế giữa ẩm thực truyền thống và hơi thở hiện đại, từng miếng bánh chuối dẻo dai được phủ một lớp nước cốt dừa thơm béo, tuy giản dị song lại có sức hấp dẫn lạ lùng với các thực khách gần xa.</p><h3><strong>Thành phần :</strong></h3><p>a + Bánh chuối: Chuối sứ chín, đường vàng, muối Thái, hương va-ni, rượu vodka, tinh dầu chuối, bột năng, dầu hạt cải, bột nếp, màu vàng thực phẩm</p><p>+ Nước cốt dừa: nước cốt dừa, sữa đặc, đường cát, bột năng, muối Thái, lá dứa</p><p>+ Trang trí: đậu phộng, mè trắng, lá chuối</p><h3><strong>Khẩu phần:</strong></h3><p>1 - 2 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>6 phút</p>', 'Bánh chuối hấp là một món ăn vặt dân dã của nền ẩm thực Việt.', 65000, 45000, 47, '20250220131122.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:11:22', NULL, 1, 1),
(34, 5, 2, 'Bánh sừng bò', 'banh-sung-bo', '<p>Bánh sừng bò là một món ăn vặt của nền ẩm thực Ý. Các đầu bếp của TASTY đã khéo léo kết hợp vị ngọt ngào của những quả chuối sứ chín thơm lừng cùng nước cốt dừa béo ngậy, nhấn nhá một chút hương rượu vodka để gia tăng sự độc đáo trong hương vị từng miếng bánh. Là sự giao thoa tinh tế giữa ẩm thực truyền thống và hơi thở hiện đại, từng miếng bánh chuối dẻo dai được phủ một lớp nước cốt dừa thơm béo, tuy giản dị song lại có sức hấp dẫn lạ lùng với các thực khách gần xa.</p><h3><br></h3><h3><strong>Khẩu phần:</strong></h3><p>1 - 2 người</p><h3><strong>Thời gian hoàn tất :</strong></h3><p>6 phút</p>', 'Bánh sừng bò là một món ăn vặt của nền ẩm thực Ý.', 86137, 45000, 23, '20250220131702.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:17:02', NULL, NULL, 1),
(35, 5, 4, 'Bánh mì nướng bơ tỏi', 'banh-mi-nuong-bo-toi', '<p>Đang cập nhật</p>', 'Đang cập nhật', 75000, 45000, 23, '20250220132905.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:20:27', NULL, NULL, 1),
(36, 6, 4, 'Dương chi cam lộ', 'duong-chi-cam-lo', '<p>Đang cập nhật</p>', 'Đang cập nhật', 60000, 55000, 61, '20250220133759.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:37:59', NULL, 1, 1),
(37, 6, 4, 'Trà lài nhãn', 'tra-lai-nhan', '<p>Trà lài luôn là khởi đầu dễ chịu để sáng tạo nên những thức uống thanh nhiệt thú vị. Khi kết hợp cùng long nhãn, trà lài được cân bằng độ chát nhẹ bằng vị ngọt dịu thanh nhã, tạo nên một thức uống giải nhiệt, an thần hiệu quả.</p><h3><strong>Thành phần :</strong></h3><p>Trà xanh hoa lài Đài Loan, syrup nhãn, trái nhãn</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p>', 'Trà lài luôn là khởi đầu dễ chịu để sáng tạo nên những thức uống thanh nhiệt thú vị.', 55000, 45000, 54, '20250220133912.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:39:12', NULL, NULL, 1),
(38, 6, 4, 'Trà sữa olong', 'tra-sua-olong', '<p>Trà sữa Oolong là sự hòa quyện của tinh túy giữa trà olong vùng Bảo Lộc trứ danh và bột sữa thơm béo. Với tỷ lệ trà, sữa và đường phù hợp, mỗi ly trà sữa oolong có vị ngọt thanh dịu nhẹ, dễ dàng làm xiêu lòng mọi tín đồ trà sữa. Chúng tôi&nbsp;hy vọng, mỗi ly trà sữa oloong sẽ giúp quý khách tận hưởng vị ngon lan tỏa đến từng giác quan và tiếp thêm năng lượng cho ngày tươi mới.</p><h3><strong>Thành phần :</strong></h3><p>Trà olong Bảo Lộc, bột sữa tách béo&nbsp;</p><h3><strong>Khẩu phần:</strong></h3><p>1 người</p>', 'Trà sữa olong là sự hòa quyện của tinh túy giữa trà oolong vùng Bảo Lộc trứ danh và bột sữa thơm béo.', 55000, 45000, 60, '20250220134041.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:40:41', NULL, NULL, 1),
(39, 6, 4, 'Trà phúc bồn tử', 'tra-phuc-bon-tu', '<p>Đang cập nhật</p>', 'Đang cập nhật', 65000, 45000, 20, '20250220134150.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 07:20:27', NULL, NULL, 1),
(40, 6, 4, 'Trà vải', 'tra-vai', '<p>Vải là một loại quả được nhiều người yêu thích không chỉ khi ăn quả hay khi chế biến thành món trà vải thơm ngon. Nhân lúc mùa vải đang rộ các bạn hãy thử tự làm cho mình những cốc trà vải thật ngon để thưởng thức trong hè nha.</p><p><strong>Nguyên liệu pha trà vải cho 3 người :</strong></p><p>2 gói trà lipton túi lọc</p><p>-300ml nước sôi</p><p>-20g đường ( khoảng 2 thìa canh)</p><p>-1 lon trái vải đóng hộp hoặc 10 quả vải.</p><p>-1 chén đá lạnh</p><p>-Nếu sử dụng vải đóng hộp, khi pha trà vải bạn cho thêm 3 thìa canh nươc vải đóng hộp vào bình trước khi lắc.</p><p>-Đối với trà túi lọc bạn nên chọn loại có mùi nhẹ để không át đi mùi vải.</p><p>-Bạn có thể tạo hương vị cho món trà vải bằng cách cho thêm 1 chút nước cốt chanh hoặc 1 thìa sữa đặc, giảm lượng đường đi nếu muốn.</p>', 'Vải là một loại quả được nhiều người yêu thích không chỉ khi ăn quả hay khi chế biến thành món trà vải thơm ngon', 65000, 45000, 16, '20250220134247.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:42:47', NULL, 1, 1),
(41, 6, 4, 'Trà cam đào', 'tra-cam-dao', '<p>Đang cập nhật</p>', 'Đang cập nhật', 65000, 45000, 18, '20250220134330.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:43:30', NULL, NULL, 1),
(42, 6, 4, 'Trà việt quất', 'tra-viet-quat', '<p>Đang cập nhật</p>', 'Đang cập nhật', 65000, 45000, 5, '20250220134453.webp', 1, 1, '2024-12-22 19:14:27', '2025-02-20 06:44:53', NULL, 1, 1),
(43, 4, 2, 'Món ăn 43', 'mon-an-43', 'Đây là nội dung của Món ăn 43', 'Mô tả ngắn gọn về Món ăn 43', 86151, 21899, 87, 'anh_monan_(43).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:22', NULL, 0, 2),
(44, 1, 3, 'Món ăn 44', 'mon-an-44', 'Đây là nội dung của Món ăn 44', 'Mô tả ngắn gọn về Món ăn 44', 91788, 23458, 76, 'anh_monan_(44).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:26', NULL, 0, 2),
(45, 5, 4, 'Món ăn 45', 'mon-an-45', 'Đây là nội dung của Món ăn 45', 'Mô tả ngắn gọn về Món ăn 45', 72647, 43936, 74, 'anh_monan_(45).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:30', NULL, 1, 2),
(46, 4, 2, 'Món ăn 46', 'mon-an-46', 'Đây là nội dung của Món ăn 46', 'Mô tả ngắn gọn về Món ăn 46', 68581, 35507, 30, 'anh_monan_(46).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:33', NULL, 0, 2),
(47, 1, 2, 'Món ăn 47', 'mon-an-47', 'Đây là nội dung của Món ăn 47', 'Mô tả ngắn gọn về Món ăn 47', 99990, 33489, 70, 'anh_monan_(47).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:38', NULL, 0, 2),
(48, 1, 2, 'Món ăn 48', 'mon-an-48', 'Đây là nội dung của Món ăn 48', 'Mô tả ngắn gọn về Món ăn 48', 60561, 46386, 53, 'anh_monan_(48).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:42', NULL, 1, 2),
(49, 3, 3, 'Món ăn 49', 'mon-an-49', 'Đây là nội dung của Món ăn 49', 'Mô tả ngắn gọn về Món ăn 49', 56464, 25779, 35, 'anh_monan_(49).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:45', NULL, 1, 2),
(50, 5, 2, 'Món ăn 50', 'mon-an-50', 'Đây là nội dung của Món ăn 50', 'Mô tả ngắn gọn về Món ăn 50', 97411, 40480, 32, 'anh_monan_(50).jpg', 1, NULL, '2024-12-22 19:14:27', '2025-02-20 06:45:48', NULL, 1, 2),
(51, 1, 4, 'Test sửa sản phẩms', 'Test thêm sản phẩm', '<p><strong>Test thêm sản phẩm</strong></p>', 'Test thêm sản phẩm', 78000, 46000, 40, '20250104182901.webp', 1, 1, '2025-01-04 11:29:01', '2025-04-04 20:54:05', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_reviews`
--

CREATE TABLE `cdw1_reviews` (
  `review_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `likes` int UNSIGNED DEFAULT '0',
  `dislikes` int UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_reviews`
--

INSERT INTO `cdw1_reviews` (`review_id`, `product_id`, `user_id`, `rating`, `comment`, `response`, `created_at`, `updated_at`, `likes`, `dislikes`, `deleted_at`) VALUES
(1, 2, 1, 4, 'Món ăn ngon', 'Cảm ơn bạn đã ủng hộ VanHaiRestaurant', '2025-02-21 07:25:26', '2025-02-21 00:25:26', 10, 0, NULL),
(2, 2, 3, 5, 'okkk', 'Cảm ơn bạn đã ủng hộ VanHaiRestaurant', '2025-02-19 15:10:48', '2025-02-19 08:10:48', 0, 0, NULL),
(6, 2, 1, 5, 'Đồ ăn ok', NULL, '0000-00-00 00:00:00', '2025-01-13 05:03:24', 0, 0, NULL),
(7, 2, 4, 1, 'Đồ ăn khá tệ !', NULL, '2025-01-13 12:42:59', '2025-01-13 05:42:59', 0, 0, '2025-01-13 05:42:59'),
(8, 1, 3, 5, 'ngon', 'Cảm ơn bạn đã ủng hộ VanHaiRestaurant', '2025-04-05 03:25:04', '2025-04-04 20:25:04', 0, 0, NULL),
(9, 51, 6, 5, 'ok', 'xin cảm ơn!', '2025-02-19 14:47:57', '2025-02-19 07:47:57', 0, 0, NULL),
(10, 1, 6, 4, 'ok', 'Cảm ơn bạn đã ủng hộ VanHaiRestaurant', '2025-04-05 03:55:00', '2025-04-04 20:55:00', 0, 0, NULL),
(11, 4, 6, 5, 'ngonn', NULL, '2025-02-17 17:31:50', '2025-02-17 10:31:50', 0, 0, '2025-02-17 10:31:50'),
(12, 4, 6, 5, 'ngonn', NULL, '2025-02-17 17:30:32', '2025-02-17 10:30:32', 0, 0, '2025-02-17 10:30:32'),
(13, 4, 6, 5, 'ngon', NULL, '2025-02-17 10:31:57', '2025-02-17 10:31:57', 0, 0, NULL),
(14, 2, 9, 2, 'Khá ổn', NULL, '2025-02-17 11:04:39', '2025-02-17 11:04:39', 0, 0, NULL),
(15, 6, 9, 5, 'Ngon', NULL, '2025-02-19 14:24:15', '2025-02-19 07:24:15', 0, 0, '2025-02-19 07:24:15'),
(16, 2, 6, 5, 'Ngonn', NULL, '2025-02-21 07:39:03', '2025-02-21 00:39:03', 0, 0, '2025-02-21 00:39:03'),
(17, 5, 9, 4, 'Ngon', NULL, '2025-04-05 03:20:50', '2025-04-04 20:20:50', 0, 0, '2025-04-04 20:20:50'),
(18, 6, 9, 5, 'OK', NULL, '2025-04-05 03:48:10', '2025-04-04 20:48:10', 0, 0, '2025-04-04 20:48:10'),
(19, 6, 9, 1, 'Ngonn', NULL, '2025-04-04 20:48:19', '2025-04-04 20:48:19', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_sessions`
--

CREATE TABLE `cdw1_sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_sessions`
--

INSERT INTO `cdw1_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Gcd2ENbRLN0hXg6xzXM21oKQd2a2FICvHBEZFIFR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZDRqaWZTOVZ6V0hwSjN2a0t0aURtTEloUXZVMFFXUnFDY2wwcWtreCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NToic3RhdGUiO3M6NDA6IlB0c083Y0FtSmlmMDJYODZmWlRHRlRwcnFwSkVxOG9RMklTcVRCZzAiO3M6OToidXNlcl9zaXRlIjtPOjE1OiJBcHBcTW9kZWxzXFVzZXIiOjMzOntzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjQ6InVzZXIiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YToyMTp7czoyOiJpZCI7aToxO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMiRzbFMuVWZhSXJHOVdmRXY1TW1aU00ubTlHdFRBdzk3OEplRVIvNHAxOHNSRk5jZ2YzelhnLiI7czo4OiJmdWxsbmFtZSI7czoxODoiUXXhuqNuIHRy4buLIHZpw6puIjtzOjY6ImdlbmRlciI7czoxOiIxIjtzOjU6ImltYWdlIjtzOjU6IjEuanBnIjtzOjU6ImVtYWlsIjtzOjE1OiJhZG1pbkBnbWFpbC5jb20iO3M6NToicGhvbmUiO3M6MTA6IjA5ODE0ODc2NzQiO3M6NzoiYWRkcmVzcyI7czoyMjoiOC8xNS8xNSwgxJHGsOG7nW5nIDE0NyI7czo1OiJyb2xlcyI7czo1OiJhZG1pbiI7czoxMDoiY3JlYXRlZF9ieSI7aToxO3M6MTA6InVwZGF0ZWRfYnkiO2k6MTtzOjEwOiJjcmVhdGVkX2F0IjtOO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjUtMDQtMDggMDE6Mjc6MDkiO3M6MTA6ImRlbGV0ZWRfYXQiO047czo2OiJzdGF0dXMiO2k6MTtzOjQ6ImxpbmUiO2k6MTtzOjk6Imdvb2dsZV9pZCI7TjtzOjg6Im90cF9jb2RlIjtOO3M6MTQ6Im90cF9leHBpcmVzX2F0IjtOO3M6MTE6ImFkbWluX2xldmVyIjtpOjE7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjIxOntzOjI6ImlkIjtpOjE7czo4OiJ1c2VybmFtZSI7czo1OiJhZG1pbiI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEyJHNsUy5VZmFJckc5V2ZFdjVNbVpTTS5tOUd0VEF3OTc4SmVFUi80cDE4c1JGTmNnZjN6WGcuIjtzOjg6ImZ1bGxuYW1lIjtzOjE4OiJRdeG6o24gdHLhu4sgdmnDqm4iO3M6NjoiZ2VuZGVyIjtzOjE6IjEiO3M6NToiaW1hZ2UiO3M6NToiMS5qcGciO3M6NToiZW1haWwiO3M6MTU6ImFkbWluQGdtYWlsLmNvbSI7czo1OiJwaG9uZSI7czoxMDoiMDk4MTQ4NzY3NCI7czo3OiJhZGRyZXNzIjtzOjIyOiI4LzE1LzE1LCDEkcaw4budbmcgMTQ3IjtzOjU6InJvbGVzIjtzOjU6ImFkbWluIjtzOjEwOiJjcmVhdGVkX2J5IjtpOjE7czoxMDoidXBkYXRlZF9ieSI7aToxO3M6MTA6ImNyZWF0ZWRfYXQiO047czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNS0wNC0wOCAwMToyNzowOSI7czoxMDoiZGVsZXRlZF9hdCI7TjtzOjY6InN0YXR1cyI7aToxO3M6NDoibGluZSI7aToxO3M6OToiZ29vZ2xlX2lkIjtOO3M6ODoib3RwX2NvZGUiO047czoxNDoib3RwX2V4cGlyZXNfYXQiO047czoxMToiYWRtaW5fbGV2ZXIiO2k6MTt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTozOntzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7czo4OiJkYXRldGltZSI7czo4OiJwYXNzd29yZCI7czo2OiJoYXNoZWQiO3M6MTA6ImRlbGV0ZWRfYXQiO3M6ODoiZGF0ZXRpbWUiO31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEzOiJ1c2VzVW5pcXVlSWRzIjtiOjA7czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjEyOntpOjA7czo4OiJ1c2VybmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjtpOjM7czo4OiJmdWxsbmFtZSI7aTo0O3M6NjoiZ2VuZGVyIjtpOjU7czo1OiJwaG9uZSI7aTo2O3M6NzoiYWRkcmVzcyI7aTo3O3M6NToicm9sZXMiO2k6ODtzOjk6Imdvb2dsZV9pZCI7aTo5O3M6NToiaW1hZ2UiO2k6MTA7czo4OiJvdHBfY29kZSI7aToxMTtzOjE1OiJvdHBfZXhwaXJlc19hdAkiO31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO31zOjE5OiIAKgBhdXRoUGFzc3dvcmROYW1lIjtzOjg6InBhc3N3b3JkIjtzOjIwOiIAKgByZW1lbWJlclRva2VuTmFtZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO3M6MTY6IgAqAGZvcmNlRGVsZXRpbmciO2I6MDt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1744128646),
('UwVePlVd3qiAbgnIkjf2ccsn1Dj7cMNrsfZYF4Xq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVHJ5RWdLcHh2aHdBUTRiNFJuRk5yS0U4RkpaUTFMM3ZXQllsYWZhWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo2OiJjYXJ0XzEiO2E6MTp7aToxO2E6Nzp7czo0OiJuYW1lIjtzOjI0OiJTYWxhZCByYXUgbcO5YSBz4buRdCBjYW0iO3M6NDoic2x1ZyI7czoyMToic2FsYWQtcmF1LW11YS1zb3QtY2FtIjtzOjI6ImlkIjtpOjE7czo1OiJwcmljZSI7ZDo2ODAwMDtzOjM6InF0eSI7aToxO3M6NToiaW1hZ2UiO3M6MTk6IjIwMjUwMjIwMTAxMDAzLndlYnAiO3M6ODoiZGlzY291bnQiO2k6MDt9fX0=', 1744077856);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_topic`
--

CREATE TABLE `cdw1_topic` (
  `id` bigint UNSIGNED NOT NULL,
  `sort_order` int UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_topic`
--

INSERT INTO `cdw1_topic` (`id`, `sort_order`, `name`, `slug`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 1, 'Thực phẩm nhà hàng', 'thuc-pham-nha-hang', 'Bài viết về thực phẩm của VanHai Restaurant', 1, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Công thức nấu ăn', 'cong-thuc-nau-an', 'Chia sẻ các công thức để làm nên một món ăn ngon.', 1, NULL, NULL, NULL, NULL, 1),
(3, 3, 'Công nghệ hiện đại', 'cong-nghe-hien-dai', 'Giới thiệu về công nghệ mới được ứng dụng.', 1, NULL, NULL, NULL, NULL, 1),
(4, 4, 'Sản phẩm', 'san-pham', 'Bài viết về sản phẩm.', 1, NULL, NULL, NULL, NULL, 1),
(5, 5, 'Cảm hứng', 'cam-hung', 'Cảm hứng nấu ăn cùng bếp VanHai.', 1, NULL, NULL, NULL, NULL, 1),
(6, 6, 'Chăm sóc sức khỏe', 'cham-soc-suc-khoe', 'Danh mục chăm sóc sức khỏe, chia sẻ những cách bảo vệ sức khỏe.', 1, NULL, NULL, NULL, NULL, 1),
(7, 7, 'Test thêmm', 'themm', 'ddddd', 1, NULL, '2025-02-12 08:14:06', '2025-02-12 08:16:35', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cdw1_user`
--

CREATE TABLE `cdw1_user` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `line` tinyint DEFAULT '0',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `admin_lever` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cdw1_user`
--

INSERT INTO `cdw1_user` (`id`, `username`, `password`, `fullname`, `gender`, `image`, `email`, `phone`, `address`, `roles`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`, `line`, `google_id`, `otp_code`, `otp_expires_at`, `admin_lever`) VALUES
(1, 'admin', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Quản trị viên', '1', '1.jpg', 'admin@gmail.com', '0981487674', '8/15/15, đường 147', 'admin', 1, 1, NULL, '2025-04-07 18:27:09', NULL, 1, 1, NULL, NULL, NULL, 1),
(3, 'nhanvien2', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Trần Khánh', '1', '20250408014713.png', 'nhanvien2@gmail.com', '0981487674', 'Quận 9 , Thủ đức', 'admin', 1, 1, '2025-01-06 07:49:31', '2025-04-07 18:47:13', NULL, 1, 0, NULL, NULL, NULL, 2),
(4, 'google_kmo8Edbq', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Hải Văn', '1', '20250408014659.png', 'khoacntt2003@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 'customer', NULL, 1, '2025-01-12 07:53:39', '2025-04-08 08:25:01', NULL, 1, NULL, '103065390864874386564', NULL, NULL, 2),
(5, 'google_103875372950395761454', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Thầy Lợi', '1', '20250408014608.png', 'xyncc@gmail.com', '0123456789', 'KTX trường Cao Đẳng Công Thương, TP.HCM', 'customer', NULL, 1, '2025-01-12 07:57:26', '2025-04-07 18:46:08', NULL, 1, NULL, '103875372950395761454', NULL, NULL, 2),
(6, 'Vanhaicoder', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Trần Văn A', '1', '20250408014533.png', 'tranvana@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 'customer', 1, 1, '2025-01-16 13:53:03', '2025-04-07 18:45:33', NULL, 1, NULL, '100967323138447565197', NULL, NULL, 2),
(8, 'nhanvien1', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Nguyên Trúc', '0', '20250408014554.png', 'nhanvien1@gmail.com', '0981487674', 'Đội 5, Thôn Chư Bloi, Xã Eabar, Huyện Sông Hinh, Tỉnh Phú Yên', 'admin', 3, 1, '2025-02-15 09:30:37', '2025-04-07 18:45:54', NULL, 1, 0, NULL, NULL, NULL, 2),
(9, 'khachhang1', '$2y$12$slS.UfaIrG9WfEv5MmZSM.m9GtTAw978JeER/4p18sRFNcgf3zXg.', 'Khách hàng 1', 'Nam', '20250217161840.png', 'vanhairestaurant@gmail.com', '0981487674', '8/15/15 đường 147 , Phước Long B', 'customer', 1, NULL, '2025-02-17 09:18:41', '2025-04-04 20:46:19', NULL, 1, 0, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cdw1_banner`
--
ALTER TABLE `cdw1_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_bookings`
--
ALTER TABLE `cdw1_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_brand`
--
ALTER TABLE `cdw1_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_category`
--
ALTER TABLE `cdw1_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_contact`
--
ALTER TABLE `cdw1_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_favorite`
--
ALTER TABLE `cdw1_favorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cdw1_favorite_user_id_product_id_unique` (`user_id`,`product_id`);

--
-- Indexes for table `cdw1_inquiries`
--
ALTER TABLE `cdw1_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_keyword`
--
ALTER TABLE `cdw1_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_library`
--
ALTER TABLE `cdw1_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_menu`
--
ALTER TABLE `cdw1_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_migrations`
--
ALTER TABLE `cdw1_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_order`
--
ALTER TABLE `cdw1_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_orderdetail`
--
ALTER TABLE `cdw1_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_post`
--
ALTER TABLE `cdw1_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_product`
--
ALTER TABLE `cdw1_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_reviews`
--
ALTER TABLE `cdw1_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `cdw1_sessions`
--
ALTER TABLE `cdw1_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`);

--
-- Indexes for table `cdw1_topic`
--
ALTER TABLE `cdw1_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cdw1_user`
--
ALTER TABLE `cdw1_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cdw1_banner`
--
ALTER TABLE `cdw1_banner`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cdw1_bookings`
--
ALTER TABLE `cdw1_bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cdw1_brand`
--
ALTER TABLE `cdw1_brand`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cdw1_category`
--
ALTER TABLE `cdw1_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cdw1_contact`
--
ALTER TABLE `cdw1_contact`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cdw1_favorite`
--
ALTER TABLE `cdw1_favorite`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cdw1_inquiries`
--
ALTER TABLE `cdw1_inquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cdw1_keyword`
--
ALTER TABLE `cdw1_keyword`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cdw1_library`
--
ALTER TABLE `cdw1_library`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cdw1_menu`
--
ALTER TABLE `cdw1_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cdw1_migrations`
--
ALTER TABLE `cdw1_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cdw1_order`
--
ALTER TABLE `cdw1_order`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cdw1_orderdetail`
--
ALTER TABLE `cdw1_orderdetail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cdw1_post`
--
ALTER TABLE `cdw1_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cdw1_product`
--
ALTER TABLE `cdw1_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cdw1_reviews`
--
ALTER TABLE `cdw1_reviews`
  MODIFY `review_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cdw1_topic`
--
ALTER TABLE `cdw1_topic`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cdw1_user`
--
ALTER TABLE `cdw1_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
