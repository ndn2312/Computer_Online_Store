-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2024 lúc 09:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(14, 'INTEL', 'intel', 1, '2024-06-15 00:54:56', '2024-06-15 00:54:56'),
(15, 'Asus', 'asus', 1, '2024-06-15 01:46:03', '2024-06-15 01:46:03'),
(16, 'Xiaomi', 'xiaomi', 1, '2024-06-15 01:48:29', '2024-06-15 01:48:29'),
(17, 'LG', 'lg', 1, '2024-06-15 02:49:44', '2024-06-15 02:49:44'),
(18, 'Giga', 'giga', 1, '2024-06-15 02:50:17', '2024-06-15 02:50:17'),
(19, 'MSI', 'msi', 1, '2024-06-15 02:50:25', '2024-06-15 02:50:25'),
(20, 'Philips', 'philips', 1, '2024-06-15 21:00:19', '2024-06-15 21:00:19'),
(21, 'DeepCool', 'deepcool', 1, '2024-06-16 11:35:51', '2024-06-16 11:35:51'),
(22, 'Xingmatek', 'xingmatek', 1, '2024-06-16 11:36:16', '2024-06-16 11:36:16'),
(23, 'Kingston', 'kingston', 1, '2024-06-16 11:37:15', '2024-06-16 11:37:15'),
(24, 'Gigabyte', 'gigabyte', 1, '2024-06-16 11:37:32', '2024-06-16 11:37:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(31, 'Màn hình', 'man-hinh', '31-1718437197.jpg', '1', 'Yes', '2024-06-12 03:47:32', '2024-06-15 00:39:57'),
(35, 'Main', 'main', '35-1718437182.jpg', '1', 'Yes', '2024-06-14 10:39:16', '2024-06-15 00:39:42'),
(36, 'CPU', 'cpu', '36-1718437177.png', '1', 'Yes', '2024-06-14 22:20:40', '2024-06-15 00:39:37'),
(38, 'RAM', 'ram', '38.jpg', '1', 'Yes', '2024-06-16 11:22:39', '2024-06-16 11:22:39'),
(39, 'Ổ cứng', 'o-cung', '39.jpg', '1', 'Yes', '2024-06-16 11:23:17', '2024-06-16 11:23:17'),
(40, 'Card màn hình', 'card-man-hinh', '40.jpg', '1', 'Yes', '2024-06-16 11:26:43', '2024-06-16 11:26:43'),
(41, 'Nguồn máy tính', 'nguon-may-tinh', '41.jpg', '1', 'Yes', '2024-06-16 11:28:27', '2024-06-16 11:28:27'),
(42, 'Case máy tinh', 'case-may-tinh', '42.jpg', '1', 'Yes', '2024-06-16 11:34:08', '2024-06-16 11:34:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_10_135320_alter_users_table', 1),
(6, '2024_06_11_092117_create_categories_table', 1),
(7, '2024_06_12_024603_create_temp_images_table', 1),
(8, '2024_06_12_101451_create_sub_categories_table', 2),
(9, '2024_06_13_030431_create_brands_table', 3),
(10, '2024_06_13_040918_create_products_table', 4),
(11, '2024_06_13_040956_create_products_images_table', 5),
(12, '2024_06_15_051435_aliter_categories_table', 6),
(13, '2024_06_15_053615_alter_products_table', 7),
(14, '2024_06_15_054559_alter_sub_categories_table', 8),
(15, '2024_06_15_172814_alter_products_table', 9),
(16, '2024_06_16_093728_aler_users_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(94, 'Card màn hình Asus GT730 SL 2GD5 BRK', 'card-man-hinh-asus-gt730-sl-2gd5-brk', '<h2 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: center;\"><span style=\"font-size: 18pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 204);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">VGA Asus GT730-SL-2GD5-BRK</span></span></span></h2><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;</p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><span style=\"color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">VGA Asus GT730-SL-2GD5-BRK</span></span><span style=\"color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"> là card đồ họa có cấu hình thấp cho cấu trúc HTPC không ồn, bao gồm giá đỡ cổng I/O.&nbsp;</span></span></p><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;</p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><span style=\"color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><a href=\"https://www.anphatpc.com.vn/vga-asus.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51); transition: all 0.3s ease 0s; outline: none;\">VGA Asus</a> GT730-SL-2GD5-BRK với các tính năng làm mát im lặng 0db không gây ồn hoàn thảo cho máy tính của bạn. Tận hưởng giây phút giải trí đa phương tiện yên tĩnh và chìm đắm. Công nghệ Auto-Extreme sử dụng tốc độ hóa để nâng cao độ tin cậy. Bên cạnh đó, công nghệ CPU Tweak II cũng cung cấp khả năng điều chỉnh hiệu suất, điều khiển nhiệt và giám sát hệ thống trực quan. Đây là card đồ họa thuộc phân khúc giá rẻ dành cho tất cả mọi người.</span></span></span></p><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk111-1.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><em><span style=\"color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">VGA Asus GT730-SL-2GD5-BRK</span></em></span></p><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></span></p><h2 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 18pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 204);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Đánh giá các tính năng của VGA Asus GT730-SL-2GD5-BRK</span></span></span></h2><h3 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 14pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 0);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Đồ họa phong phú cho tất cả mọi người</span></span></span></h3><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;<span style=\"font-weight: bolder;\"><img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk111-3.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight: bolder;\"><a href=\"https://www.anphatpc.com.vn/vga-asus-gt730-sl-2gd5-brk_id39927.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51); transition: all 0.3s ease 0s; outline: none;\">VGA Asus GT730-SL-2GD5-BRK</a></span> là <a href=\"https://www.anphatpc.com.vn/vga-card-man-hinh.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51); transition: all 0.3s ease 0s; outline: none;\">card đồ họa</a> tuyệt vời của thương hiệu ASUS. Nó được thiết kế và chế tác tản nhiệt db hiệu quả cao, hoạt động hoàn toàn im lặng khiến card đồ họa trở thành lựa chọn hoàn hảo cho dàn hệ thống PC nhỏ gọn nhà bạn. Công nghệ Auto-Extreme độc quyền cung cấp chất lượng cao cấp với độ tin cậy tốt nhất. Nó cũng bao gồm GPU Tweak II với Xsplit Gamecaster mang lại khả năng điều chỉnh hiệu suất trực quan và cho phép bạn phát trực tuyến trong khi chơi game ngay lập tức.&nbsp;</span></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></p><h3 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 14pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 0);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Điểm nổi bật của cổng I/O</span></span></span></h3><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk111-5.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></span></p><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\">&nbsp;</p><ul style=\"margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; padding-inline-start: 48px;\"><li style=\"list-style-type: disc; font-size: 13pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; text-wrap: wrap;\">1x Native D-Sub</span></li><li style=\"list-style-type: disc; font-size: 13pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; text-wrap: wrap;\">1x Native DVI-D</span></li><li style=\"list-style-type: disc; font-size: 13pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; text-wrap: wrap;\">1x Native HDMI</span></li></ul><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></span></p><h3 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 14pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 0);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Thiết kế tản nhiệt im lặng 0dB</span></span></span></h3><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;<span style=\"font-weight: bolder;\"><img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk111-4.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Thiết kế làm mát hoàn hảo để xây dựng một hệ thống PC kín. Tản nhiệt được ASUS thiết kế độc quyền với diện tích bề mặt lớn nhằm tăng hiệu quả làm mát cho các card đồ họa một cách thụ động. Nhờ đó, nó hoàn toàn không phát ra âm thanh gây ồn khi chạy. Đây chính là sự lựa chọn hoàn hảo cho các trung tâm đa phương tiện đòi hỏi sự im lặng và các dàn máy tính PC gia đình.&nbsp;</span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></p><h2 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 14pt; font-family: arial, helvetica, sans-serif; color: rgb(255, 153, 0);\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Công nghệ Auto-Extreme</span></span></span></h2><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&nbsp;<img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk111-2.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Công nghệ Auto-Extreme là một quy trình sản xuất tự động có tính chính xác. Nó đặt ra các tiêu chuẩn mới trong ngành bằng cách cho phép tất cả mối hàn được hoàn thành trong 1 lần duy nhất. Điều này làm giảm trạng thái căng nhiệt quá mức trên các bộ phận dẫn đến tác động đến môi trường ít hơn. Đồng thời, giảm lượng điện năng tiêu thụ sản trong quá trình sản xuất và tổng thể sản phẩm trở nên đáng tin cậy hơn.&nbsp;</span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 14pt; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></span></p><h3 style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"font-size: 14pt; color: rgb(255, 153, 0); font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">ASUS GPU Tweak II</span></span></span></h3><p style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\"><span style=\"font-weight: bolder;\"><span style=\"font-size: 20pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><img src=\"https://anphat.com.vn/media/lib/25-11-2021/65_vgaasusgt730sl2gd5brk1116.png\" alt=\"\" style=\"max-width: 100%; height: auto;\"></span></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Tiện ích ASUS GPU Tweak II đưa việc điều chỉnh card đồ hoạ lên một tầm cao mới. Nó cho phép bạn tinh chỉnh các thông số quan trọng bao gồm tần số bộ nhớ, đồng hồ lõi GPU và cài đặt điện áp. Tuỳ chọn giám sát mọi thứ trong thời gian thực được vận hành thông qua màn hình. Điều khiển quạt nâng cao cũng được bao gồm cùng với nhiều tính năng khác giúp bạn khai thác tối đa card đồ hoạ của mình.&nbsp;</span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">&nbsp;</span></span></p><p style=\"margin-top: 0pt; margin-bottom: 0pt; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 1.38; text-align: justify;\"><br></p>', '<p><span class=\"item \" style=\"display: block; margin-bottom: 5px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><span class=\"fa fa-check-circle\" style=\"font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: inherit; color: rgb(255, 153, 0); margin-right: 5px;\"></span>Dung lượng bộ nhớ: 2GB GDDR5</span><span class=\"item \" style=\"display: block; margin-bottom: 5px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><span class=\"fa fa-check-circle\" style=\"font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: inherit; color: rgb(255, 153, 0); margin-right: 5px;\"></span>Engine Clock: 902 MHz</span><span class=\"item \" style=\"display: block; margin-bottom: 5px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><span class=\"fa fa-check-circle\" style=\"font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: inherit; color: rgb(255, 153, 0); margin-right: 5px;\"></span>Băng thông: 64-bit</span><span class=\"item \" style=\"display: block; margin-bottom: 5px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\"><span class=\"fa fa-check-circle\" style=\"font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: inherit; color: rgb(255, 153, 0); margin-right: 5px;\"></span>Kết nối: es x 1 (Native DVI-D), Yes x 1 (D-Sub), Yes x 1 (Native HDMI 1.4a), HDCP Support Yes (2.2)</span></p>', '<ul class=\"ul\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; line-height: 25px;\"><li>- Mua online - Giao hàng nhanh chóng</li><li>- Ship hàng toàn quốc</li><li>- Nhận hàng và thanh toán tại nhà ( ship COD)</li></ul>', NULL, 1449000.00, 1999000.00, 40, 32, 15, 'Yes', 'SP1', '123', 'Yes', 12, 1, '2024-06-16 11:41:41', '2024-06-16 11:41:41'),
(95, 'Card màn hình Gigabyte Geforce RTX 3060 Gaming OC 12GB', 'card-man-hinh-gigabyte-geforce-rtx-3060-gaming-oc-12gb', '<h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241); color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Đánh giá: Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V3 chính hãng, bảo hành dài</h2><div id=\"js-product-description\" style=\"color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-weight: 700;\">Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V2</span>&nbsp;là dòng card đồ họa tầm trung của Gigabyte dành cho nhu cầu chơi game ở độ phân giải 2K&nbsp;</span></p><p>*Đây là phiên bản Low Hash Rate - Hạn chế khả năng đào coin tuy nhiên hiệu năng chơi game vẫn giữ nguyên như phiên bản thường.</p><p><img src=\"https://hanoicomputercdn.com/media/product/59997_card_man_hinh_gigabyte_rtx_3060_gaming_oc_12gd_v2_11.jpg\" alt=\"Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V2\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Hiệu năng của Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V2</span></h3><p><span style=\"font-family: arial, helvetica, sans-serif;\">Được trang bị nhân đồ họa Nvidia&nbsp;<a href=\"https://hacom.vn/nvidia-rtx-3060\" target=\"_blank\" rel=\"noopener\" style=\"cursor: pointer; transition: all 0.2s ease 0s; font-size: 14px; color: rgb(0, 90, 255) !important;\">RTX 3060</a>, Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V2 có hiệu năng tốt hơn RTX 2060 và chơi tốt tất cả những game khủng hiện nay ở độ phân giải 2K và setting đặt ở mức cao.&nbsp;</span></p><h3 style=\"font-weight: 700;\"><img src=\"https://hacom.vn/media/lib/10-07-2021/cardmnhnhgigabytertx3060gamingoc12gd-v2-11.png\" alt=\"Card màn hình Gigabyte RTX 3060 GAMING OC 12GD-V2\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></h3></div>', '<div class=\"product-summary-item\" style=\"padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"><div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Nhân đồ họa Nvidia RTX 3060</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Số nhân Cuda: 3584</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Xung nhịp GPU tối đa: 1837 Mhz</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Bộ nhớ Vram: 12GB GDDR6</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Phiên bản giới hạn khả năng đào coin - Low Hash Rate</li></ul></div><div class=\"price-2021\" id=\"product-info-price\" style=\"padding: 20px 10px; border: 1px dashed rgb(221, 221, 221); border-radius: 5px; margin-bottom: 20px; position: relative; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 13px;\"></div>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 8490000.00, 12990000.00, 40, 32, 18, 'Yes', 'SP2', '123', 'Yes', 12, 1, '2024-06-16 11:46:52', '2024-06-16 11:46:52'),
(96, 'VỎ CASE ASUS ROG STRIX HELIOS GX601 TEMPERED GLASS GAMING', 'vo-case-asus-rog-strix-helios-gx601-tempered-glass-gaming', '<div class=\"nd title_box_scroll_content_2019\" style=\"padding: 10px 10px 120px; border-radius: 3px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><div id=\"js-product-description\"><h3 style=\"font-weight: 700;\">Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/46922_AsusROGStrixheliosWatercooling.jpg\" alt=\"Vỏ Case Asus ROG Strix Helios GX601 \" width=\"1200\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><p><img src=\"https://hanoicomputercdn.com/media/lib/46922_MSI-gaming-watercooling-28.jpg\" alt=\"Vỏ Case Asus ROG \" width=\"1200\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Vỏ case ROG 3 mặt kính cường lực</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota.jpg\" alt=\"Vỏ Case ROG\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Công nghệ chiếu sáng AURA SYNC</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota2.jpg\" alt=\"Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Quản lý cáp dễ dàng hơn với vỏ case ROG ASUS</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota3.jpg\" alt=\"Vỏ Case ROG ASUS\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Lắp đặt vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota4.jpg\" alt=\"Vỏ Case ROG ASUS Strix Helios GX601 Tempered Glass Gaming&nbsp;\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\"><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota5.jpg\" alt=\"Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></h3><h3 style=\"font-weight: 700;\"><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota6.jpg\" alt=\"Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></h3><h3 style=\"font-weight: 700;\">Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota7.jpg\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/02-06-2022/asus-gx601-mota8.jpg\" alt=\"Vỏ Case Asus ROG Strix Helios GX601 Tempered Glass Gaming&nbsp;\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p></div></div><div class=\"viewmore-area d-inline-block\" style=\"position: absolute; bottom: 0px; left: 0px; right: 0px; width: 766.662px; height: 150px; padding-top: 85px; text-align: center; border-radius: 0px 0px 5px 5px; background: linear-gradient(rgba(255, 255, 255, 0) 0px, rgba(255, 255, 255, 0.91) 50%, rgb(255, 255, 255) 55%); color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><a class=\"viewmore active\" style=\"cursor: pointer; transition: all 0.2s ease 0s; font-size: 14px; display: inline-block; height: 28px; line-height: 26px; padding: 0px 10px; background: rgb(255, 255, 255); border: 1px solid rgb(0, 90, 255); border-radius: 2px; color: rgb(0, 90, 255) !important;\">Thu gọn&nbsp;<span class=\"far fa-angle-up\" style=\"font-family: &quot;Font Awesome 5 Pro&quot;;\"></span></a></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Thiết kế cho các bộ máy trưng bày với ba mặt kính cường lực, khung nhôm mạ và tích hợp đèn Aura Sync mặt trước</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Nắp đa năng với các giá đỡ cạc đồ họa, một vỏ bảo vệ PSU và một nắp cáp phía sau mờ giúp quản lý cáp dễ dàng</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Lắp ba card đồ họa theo hướng tiêu chuẩn hoặc hai theo hướng thẳng đứng để có thêm gờ trưng bày bằng cách sử dụng giá đỡ tích hợp</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Hỗ trợ bo mạch chủ EATX với khoảng trống cho lắp radiator tản nhiệt nước 420mm phía trước, bơm làm mát bằng nước và bình chứa nước</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Dễ dàng mang vác di chuyển mọi nơi với tay xách bọc vải phía trên</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Cổng USB 3.1 Gen 2 Type-C™, bốn cổng USB 3.0, một nút điều khiển đèn RGB và nút điều khiển tốc độ quạt</li></ul>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 6499000.00, 7999000.00, 42, 36, 15, 'Yes', 'SP3', '123', 'Yes', 12, 1, '2024-06-16 11:49:46', '2024-06-16 11:50:21'),
(97, 'VỎ CASE ASUS TUF GAMING GT502 WHITE ( MID TOWER)', 'vo-case-asus-tuf-gaming-gt502-white-mid-tower', '<h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241); color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Đánh giá: Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h2><div id=\"js-product-description\" style=\"color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota1.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><div class=\"hd-content\"><p class=\"reveal-bottom-delay2\" data-sr-id=\"15\">Các bộ phận bên trong GT502 được chia thành hai phần, cho phép bạn thiết kế các vùng làm mát sạch và định cấu hình độc lập riêng cho CPU và GPU. Tự do mở rộng thiết bị của bạn và cung cấp cho các thành phần linh kiện trong hệ thống một môi trường lý tưởng, để xử lý các nhiệm vụ khung hình và xử lý khối lượng công việc.</p></div><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota2.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><div class=\"hd-content\" role=\"group\" aria-labelledby=\"pageContent-title-bracket\"><p>Một giá đỡ 360mm nằm trong phần thùng máy phía sau, bạn có thể lắp một radiator tản nhiệt cùng quạt hoặc ba thiết bị lưu trữ.</p></div><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota3.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><p>TUF Gaming GT502 tiếp tục tối ưu hóa thiết kế bên ngoài của mình với các mặt lắp cạnh bên có thể được gỡ chỉ bằng cách, dùng ngón tay nhấn một nút ẩn ở phía sau thùng máy là sẽ bung ra, không cần bất kì công cụ nào.</p><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota5.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><p>Các tấm kính cường lực ở phía trước và bên cạnh mang đến một góc nhìn toàn cảnh ở phần khoang chính, cũng như khoe được các linh kiện cao cấp trên trong.</p><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota6.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><div class=\"hd-container hd-w1200 flex-nowrap align-items-center justify-content-end\"><div class=\"hd-content hd-col45\"><p class=\"reveal-bottom-delay2\" data-sr-id=\"18\">Ngoài hai cổng USB-A, mặt trước TUF Gaming GT502 còn có cổng USB 3.2 Gen 2 Type-C cho tốc độ truyền lên tới 10 Gbps.</p></div></div><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota7.jpg\" alt=\"Vỏ Case Asus TUF Gaming GT502 ( Mid Tower / Màu Đen)\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 align=\"center\" style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><p>Hai dây đai cực bền và tháo rời được, có thể chịu được trọng lượng lên đến 30 kg (66 lbs) giúp việc di chuyển thùng máy dễ dàng hơn nhiều ngay cả khi thùng máy của bạn đã lắp đầy linh kiện bên trong.</p><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota8.jpg\" alt=\"Hai dây đai cực bền và tháo rời được, có thể chịu được trọng lượng lên đến 30 kg (66 lbs) giúp việc di chuyển thùng máy dễ dàng hơn nhiều ngay cả khi thùng máy của bạn đã lắp đầy linh kiện bên trong.\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><h3 style=\"font-weight: 700;\">Vỏ Case Asus TUF Gaming GT502 White ( Mid Tower / Màu Trắng)</h3><p>Cho dù bạn thích một dàn máy cơ bản đơn giản hay một trạm chiến đấu đầy đủ đồ chơi, GT502 đều sẵn sàng đáp ứng nhu cầu của bạn. Hầu hết các tấm mặt cạnh bên và giá treo đều có thể tháo rời để dễ dàng lắp đặt linh kiện phần cứng – hãy tháo rời thùng máy theo suy nghĩ của bạn rồi lắp vào những gì bạn thích nhất.</p><p><img src=\"https://hanoicomputercdn.com/media/lib/08-12-2022/gt502-mota9.jpg\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Thiết kế dạng hộp phân thành hai phần tiện lợi</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Góc nhìn Panoramic cho phép nhìn thấy toàn bộ không gian bộ máy ở các góc cạnh khác nhau</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Tháo lắp dễ dàng với thiết kế modular</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Tay xách giúp vận chuyển vỏ case dễ dàng với sức chịu đựng lên tới 30kg</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Không gian rộng rãi hỗ trợ tốt các loại tản nhiệt AIO/Custom</li></ul><div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Thiết kế dạng hộp phân thành hai phần tiện lợi</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Góc nhìn Panoramic cho phép nhìn thấy toàn bộ không gian bộ máy ở các góc cạnh khác nhau</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Tháo lắp dễ dàng với thiết kế modular</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Tay xách giúp vận chuyển vỏ case dễ dàng với sức chịu đựng lên tới 30kg</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Không gian rộng rãi hỗ trợ tốt các loại tản nhiệt AIO/Custom</li></ul><p><a class=\"viewmoretskt active\" data-content=\"#js-tskt-item\" style=\"cursor: pointer; color: rgb(51, 62, 72); transition: all 0.2s ease 0s; font-size: 13px; background: rgb(245, 245, 245); padding: 5px 10px; margin-bottom: 20px; display: inline-block; text-transform: capitalize; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thu Gọn&nbsp;<span class=\"far fa-angle-up\" style=\"font-family: &quot;Font Awesome 5 Pro&quot;;\"></span></a></p>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 3289000.00, 3789000.00, 42, 37, 15, 'Yes', 'SP5', '123', 'Yes', 12, 1, '2024-06-16 11:52:14', '2024-06-16 11:52:41'),
(98, 'CPU INTEL CORE I5-11400F (TRAY, KHÔNG FAN)', 'cpu-intel-core-i5-11400f-tray-khong-fan', '<h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241); color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Đánh giá: CPU Intel Core i5-11400F (Tray, không Fan)</h2><div id=\"js-product-description\" style=\"color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p><span style=\"font-size: 14pt;\"><a href=\"https://www.hacom.vn/cpu-intel-core-i5-11400f-2.6ghz-turbo-up-to-4.4ghz-6-nhan-12-luong-12mb-cache-65w-socket-intel-lga-1200\" style=\"cursor: pointer; transition: all 0.2s ease 0s; font-size: 14px; color: rgb(0, 90, 255) !important;\"><span style=\"font-weight: 700;\">CPU Intel Core i5-11400F</span></a>&nbsp;là phiên bản nâng cấp của i5-10400F với xung nhịp tăng nhẹ và hiệu suất trên mỗi nhân được cải thiện. Với 6 nhân 12 luồng, đây là CPU có hiệu năng trên giá thành tốt nhất của Intel.&nbsp;</span></p><p><span style=\"font-size: 14pt;\"><img src=\"https://hanoicomputercdn.com/media/product/58403_cpu_intel_core_i5_11400f_2_6ghz_turbo_up_to_4_4ghz_6_nhan_12_luong_12mb_cache_65w_socket_intel_lga_1200_012.jpg\" alt=\"CPU Intel Core i5-11400F\" width=\"1000\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto; display: block; margin-left: auto; margin-right: auto;\"></span></p><h3 style=\"font-weight: 700;\"><span style=\"font-size: 14pt;\">Thế hệ Intel Core i5 thứ 11 có nâng cấp gì?&nbsp;</span></h3><ul><li><span style=\"font-size: 14pt;\">Hỗ trợ PCI-E Gen 4 có băng thông gấp đôi Gen 3 ở thế hệ cũ</span></li><li><span style=\"font-size: 14pt;\">Nhân đồ họa tích hợp (trên các model không có ký tự F) UHD 750 mạnh hơn, có khả năng xuất hình đạt độ phân giải 5K.&nbsp;</span></li><li><span style=\"font-size: 14pt;\">Hỗ trợ tập lệnh AVX-512 tăng sức mạnh tính toán với khả năng xử lý dữ liễu cỡ lớn, cải thiện hiệu năng xử lý với các tác vụ giải mã, render, mã hoá và máy học (Deep Learning)</span></li></ul><p><span style=\"font-size: 14pt;\"><img src=\"https://hanoicomputercdn.com/media/product/58403_cpu_intel_core_i5_11400f_2_6ghz_turbo_up_to_4_4ghz_6_nhan_12_luong_12mb_cache_65w_socket_intel_lga_1200_011.jpg\" alt=\"CPU Intel Core i5-11400F\" width=\"1000\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto; display: block; margin-left: auto; margin-right: auto;\"></span></p><h3 style=\"font-weight: 700;\"><span style=\"font-size: 14pt;\">Tính tương thích</span></h3><p><span style=\"font-size: 14pt;\">CPU Intel Core i5-11400F vẫn sử dụng socket LGA 1200 và có thể chạy được trên các bo mạch chủ&nbsp; H470, Z490 (sau khi update Bios) và các bo mạch chủ thế hệ mới H510, B560, Z590.&nbsp;</span></p><h3 style=\"font-weight: 700;\"><span style=\"font-size: 14pt;\">Intel Core i5 dành cho ai?&nbsp;</span></h3><p><span style=\"font-size: 14pt;\">Với 6 nhân 12 luồng và hiệu năng trên mỗi nhân được nâng cấp, Intel Core i5 sẽ phù hợp cho các bộ máy tầm trung, phục vụ mục đích Stream, Gaming hoặc làm việc với các phần mềm chuyên dụng.&nbsp;</span></p><p><img src=\"https://hanoicomputercdn.com/media/product/58403_cpu_intel_core_i5_11400f_2_6ghz_turbo_up_to_4_4ghz_6_nhan_12_luong_12mb_cache_65w_socket_intel_lga_1200_111.jpg\" alt=\"CPU Intel Core i5-11400F\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0 content-collapse\" id=\"js-tskt-item\" style=\"max-height: 134px; position: relative; overflow: hidden; font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Dòng CPU Core i thế hệ thứ 11 của Intel</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Socket: LGA 1200</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Thế hệ: Rocket Lake</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Số nhân: 6</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Số luồng: 12</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Xung nhịp: 2.6 - 4.4 Ghz</li></ul>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 2199000.00, 3699000.00, 36, 15, 14, 'Yes', 'SP6', '123', 'Yes', 12, 1, '2024-06-16 11:54:51', '2024-06-16 11:54:51');
INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(99, 'CPU AMD RYZEN 7 7700X (4.5 GHZ UPTO 5.4GHZ / 40MB / 8 CORES', 'cpu-amd-ryzen-7-7700x-45-ghz-upto-54ghz-40mb-8-cores', '<h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241); color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Đánh giá: CPU AMD Ryzen 7 7700X (4.5 GHz Upto 5.4GHz / 40MB / 8 Cores, 16 Threads / 105W / Socket AM5)</h2><div id=\"js-product-description\" style=\"color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><h3 style=\"font-weight: 700;\">Nâng cấp sức mạnh cho game thủ</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/29-11-2022/cpu-amd-ryzen-7-7700x-45-ghz-upto-54ghz-40mb-8-cores-16-threads-105w-socket-am5-x.jpg\" alt=\"cpu-amd-ryzen-7-7700x-4.5-ghz-upto-5.4ghz-40mb-8-cores-16-threads-105w-socket-am5\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><p>Ryzen 7 7700X cung cấp sức mạnh cho các game đòi hỏi khắt khe về hiệu suất, mang đến một trải nghiệm nhập vai có một không hai và thống trị mọi tác vụ đa luồng như 3D và kết xuất video cũng như biên dịch phần mềm.</p><h3 style=\"font-weight: 700;\">Cấu trúc Zen 4 thế hệ mới</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/29-11-2022/zen4.jpg\" alt=\"CPU AMD Ryzen 7 7700X\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><p>Được thiết kế với kiến trúc \"Zen 4\" là thiết kế thế hệ mới với tiến trình 5nm FinFET. Được trang bị những cải tiến về thiết kế từ đầu đến cuối, Zen 4 của Ryzen 7 7700X mang đến hiệu suất cực cao, giúp tiết kiệm năng lượng và giảm độ trễ, đó là cốt lõi mà bộ vi xử lý muốn mang đến để bạn có được trải nghiệm chơi game hoàn hảo nhất.</p><h3 style=\"font-weight: 700;\">Cải thiện hiệu suất</h3><p>CPU AMD Ryzen 7000 Series cải thiện hiệu suất CPU với xung có thể lên đến 5.7GHz giúp cải thiện hiệu suất nhân đơn lên đến 29% so với thế hệ CPU 5000 Series</p></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Số nhân: 8 nhân</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Số luồng: 16 luồng</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Xung nhịp boost tối đa: 5.4 GHz</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Hỗ trợ PCI-e 5.0</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Có hỗ trợ ép xung</li></ul>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 9299000.00, 10999000.00, 36, 25, 18, 'Yes', 'SP7', '123', 'Yes', 12, 1, '2024-06-16 11:57:04', '2024-06-16 11:57:04'),
(100, 'MAINBOARD ASUS ROG STRIX B760-G GAMING WIFI DDR5', 'mainboard-asus-rog-strix-b760-g-gaming-wifi-ddr5', '<div class=\"nd title_box_scroll_content_2019\" style=\"padding: 10px 10px 120px; border-radius: 3px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241);\">Đánh giá: Mainboard Asus ROG STRIX B760-G GAMING WIFI DDR5</h2><div id=\"js-product-description\"><h3 style=\"font-weight: 700;\"><img src=\"https://hanoicomputercdn.com/media/lib/29-11-2023/screenshot_2.jpg\" alt=\"Mainboard Asus ROG STRIX B760-G GAMING WIFI DDR5 (\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></h3><h3 style=\"font-weight: 700;\">HIỆU SUẤT TOÀN DIỆN</h3><p>Giải pháp nguồn điện được tinh chỉnh và bộ nhớ DDR5 cực nhanh giúp ROG Strix B760-G vượt trội so với các thiết bị nhỏ gọn cùng loại. Các bộ tản nhiệt được bố trí hợp lý và tối ưu hóa bao phủ các khe VRM và M.2 để duy trì hiệu năng ở mức tối đa, ngay cả trong những không gian chật hẹp.</p><h3 style=\"font-weight: 700;\">TỐC ĐỘ HÀNG ĐẦU</h3><p><img src=\"https://hanoicomputercdn.com/media/product/77917_mainboard_asus_rog_strix_b760_g_gaming_wifi_ddr5__2_.jpg\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto; display: block; margin-left: auto; margin-right: auto;\"></p><p>Strix B760-G được kết nối hoàn toàn tốt với mạng không dây và có dây tốc độ cao, vô số cổng I/O USB và âm thanh SupremeFX để truyền âm thanh trong trẻo qua loa hoặc tai nghe để tăng cường trải nghiệm đắm chìm.</p><h3 style=\"font-weight: 700;\">TUỲ CHỈNH MÀU SẮC&nbsp;</h3><p>Strix B760-G có PCB màu đen, tản nhiệt trần và các điểm nhấn màu trắng, cho phép nó ghép nối với hầu hết mọi thành phần hoặc thiết bị ngoại vi.&nbsp;Hệ thống chiếu sáng RGB có thể tùy chỉnh tăng cường tính linh hoạt cho thiết lập chơi game được tùy chỉnh hoàn toàn phản ánh phong cách cá nhân của bạn.</p><div><br></div></div></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Chipset: Intel Z790</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Socket: LGA 1700</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Form factor: ATX</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Memory: 4 khe DDR5 ( Tối đa 192GB)</li></ul>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 5799000.00, 6999000.00, 35, 20, 15, 'Yes', 'SP8', '123', 'Yes', 12, 1, '2024-06-16 11:59:03', '2024-06-16 11:59:03'),
(101, 'MAINBOARD ASUS ROG MAXIMUS Z790 HERO EVA-02', 'mainboard-asus-rog-maximus-z790-hero-eva-02', '<div class=\"nd title_box_scroll_content_2019\" style=\"padding: 10px 10px 120px; border-radius: 3px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><h2 class=\"ddnb-title spct-title\" style=\"font-weight: 600; font-size: 22px; margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid rgb(234, 237, 241);\">Đánh giá: Mainboard ASUS ROG MAXIMUS Z790 HERO EVA-02</h2><div id=\"js-product-description\"><p>Đến từ thương hiệu ASUS, thuộc dòng sản phẩm ROG COLLAB, ROG tiếp tục dự án EVANGELION dành cho game thủ với thiết kế máy hoàn toàn mới xoay quanh EVA-02 và Asuka. Bộ sưu tập thứ hai ra mắt với bo mạch chủ, card đồ họa, hộp đựng chơi game đựng thẻ, bộ làm mát tất cả trong một, thiết bị ngoại vi và thiết bị. Xây dựng cỗ máy hoàn chỉnh và đạt được mức độ đồng bộ hóa cao với Asuka.​</p><p><img src=\"https://hanoicomputercdn.com/media/lib/17-10-2023/screenshot_2.jpg\" alt=\"\" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><p>&nbsp;</p><div class=\"maintitle\"><div class=\"info text-left\">ROG Maximus Z790 Hero EVA-02 Edition là kết quả của sự hợp tác mới xoay quanh EVA-02 và Asuka của bộ anime Evangelion nổi tiếng từ lâu.&nbsp;Sau khi thu hút sự chú ý của bạn với chủ đề màu đỏ cam đặc trưng của EVA-02 và các vệt màu xanh lá cây, sự khởi sắc về mặt nghệ thuật tiếp tục xuất hiện: thiết kế AT Field bao quanh ổ cắm CPU và đèn Polymo trên nắp I/O chuyển đổi giữa Asuka và EVA thông thường -02.&nbsp;Thiết kế tấm ốp lưng thể hiện chế độ EVA-02 “The Beast” và các mẫu Evangelion, làm tăng thêm vẻ hấp dẫn về mặt hình ảnh của bo mạch chủ.&nbsp;Và với tư cách là bo mạch chủ ROG Maximus, nó cung cấp tất cả các tính năng mạnh mẽ, làm mát và linh hoạt cần thiết để nâng hiệu năng lên một tầm cao mới.</div></div><div class=\"maintitle_b\"><div class=\"product_box\">&nbsp;</div><div class=\"product_box\"><h3 style=\"font-weight: 700;\">Bo mạch chủ thông minh</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/17-10-2023/screenshot_1.jpg\" alt=\"Mainboard ASUS ROG MAXIMUS Z790 HERO EVA-02 \" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><div class=\"info\">Các giải pháp phần mềm thông minh giúp đảm bảo hệ thống của bạn hoạt động tốt nhất.&nbsp;Những cải tiến mới nhất được hỗ trợ bởi AI của ASUS trải rộng trên bốn trụ cột về hiệu năng, bao gồm ép xung, làm mát, kết nối mạng và âm thanh tích hợp, giúp các tân binh cũng như những người kỳ cựu có hiểu biết về PC DIY có thể tiếp cận được các tinh chỉnh và tối ưu hóa nâng cao.</div><div class=\"info\">&nbsp;</div><h3 class=\"info\" style=\"font-weight: 700;\">Hệ thống tản nhiệt cao cấp</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/17-10-2023/screenshot_3.jpg\" alt=\"Mainboard ASUS ROG MAXIMUS Z790 HERO EVA-02 \" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><ul><li class=\"info\">&nbsp;<span style=\"font-weight: 700;\">Tản nhiệt I/O VRM và nhôm:&nbsp;</span>Tản nhiệt VRM trên MOSFET và cuộn cảm được kết nối với nắp I/O bằng nhôm thông qua một ống tản nhiệt nhúng để tăng khối lượng và diện tích bề mặt tản nhiệt.</li><li><span style=\"font-weight: 700;\">Tản nhiệt và tấm ốp lưng M.2:&nbsp;</span>Các tản nhiệt bằng nhôm lớn cung cấp diện tích bề mặt rộng rãi để làm mát các ổ M.2 được gắn và mỗi khe trong số ba khe cắm trên bo mạch đều có tấm ốp lưng chuyên dụng để tản nhiệt bổ sung.</li><li><span style=\"font-weight: 700;\">Tản nhiệt chipset:&nbsp;</span>Một bộ tản nhiệt chuyên dụng sẽ hút nhiệt ra khỏi chipset để duy trì nhiệt độ hoạt động tối ưu.</li><li><span style=\"font-weight: 700;\">Tấm ốp kim loại</span>: Một tấm kim loại trải dài khắp mặt dưới của ROG Maximus Z790 Hero EVA-02 Edition, thiết lập một nền tảng được gia cố để xây dựng PC DIY mượt mà hơn.</li></ul><h3 style=\"font-weight: 700;\">Cá nhân hóa</h3><p><img src=\"https://hanoicomputercdn.com/media/lib/17-10-2023/screenshot_4.jpg\" alt=\"Mainboard ASUS ROG MAXIMUS Z790 HERO EVA-02 \" width=\"100%\" class=\"loading\" data-was-processed=\"true\" style=\"max-width: 100%; border-width: initial; border-color: initial; border-image: initial; height: auto;\"></p><p>Chiếu sáng tấm che I/O của ROG Maximus Z790 Hero EVA-02 Edition là một mảng cấu trúc vi mô đầy màu sắc được gọi là Polymo Lighting. Hai mẫu thời trang có sẵn để người xây dựng mày mò trong Armory Crate và đồng bộ hóa với phần còn lại của hệ thống để thể hiện cá tính rực rỡ.</p></div></div></div></div>', '<div class=\"product-summary-item-title\" style=\"font-size: 14px; padding: 0px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Thông số sản phẩm</div><ul class=\"product-summary-item-ul d-flex flex-wrap mb-0\" id=\"js-tskt-item\" style=\"font-size: 12px; padding-left: 17px; color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, Arial, sans-serif; margin: 10px 0px !important;\"><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Hỗ trợ CPU Intel thế hệ thứ 12 và 13</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Socket: LGA1700 , Chipset: Z790</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Hỗ trợ RAM: 4 khe DDR4, tối đa 128Gb</li><li style=\"line-height: 1.75; list-style: circle; float: left; width: 396.4px;\">Chuẩn mainboard: ATX</li></ul>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 18499000.00, 19999000.00, 35, 21, 15, 'Yes', 'SP9', '123', 'Yes', 12, 1, '2024-06-16 12:00:23', '2024-06-16 12:00:23'),
(102, 'Card màn hình Gigabyte Radeon RX 570 Gaming (GV-RX570GAMING-4GD)', 'card-man-hinh-gigabyte-radeon-rx-570-gaming-gv-rx570gaming-4gd', NULL, '<p><b class=\"product-info-summary-title\" style=\"font-weight: bold; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\">Mô tả tóm tắt sản phẩm</b><span style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\"></span></p><div class=\"summary overflow-hidden active\" id=\"js-summary\" style=\"color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"margin: 0px; position: relative; padding-left: 15px;\">Số nhân xử lý đồ họa: 2048</li><li style=\"margin: 0px; position: relative; padding-left: 15px;\">Xung nhịp: Base 1168MHz/ Boost 1244MHz</li><li style=\"margin: 0px; position: relative; padding-left: 15px;\">Bộ nhớ VRAM: GDDR5 4GB</li><li style=\"margin: 0px; position: relative; padding-left: 15px;\">Băng thông bộ nhớ: 224GB/s</li><li style=\"margin: 0px; position: relative; padding-left: 15px; display: block;\">Cổng kết nối: 1 x HDMI, 3 x DisplayPort, 1 x DVI-D</li><li style=\"margin: 0px; position: relative; padding-left: 15px; display: block;\">Nguồn cấp: 1 x 8-pin</li></ul></div>', '<p class=\"title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; line-height: 32px; font-weight: bold; background: rgb(225, 0, 52); color: rgb(255, 255, 255); border-bottom: 1px solid rgb(208, 203, 203); font-family: Roboto, sans-serif; font-size: 12px;\">CHÍNH SÁCH MUA HÀNG</p><div class=\"content\" style=\"padding: 8px 11px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif; font-size: 12px;\"><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành chính hãng tới 5 năm</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Bảo hành tận nơi siêu tốc 3h</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Đổi mới khi lỗi 30 ngày đầu</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Trả góp lãi suất 0%</span><span style=\"display: block; border-bottom: 1px solid rgb(248, 249, 250); line-height: 30px; position: relative; padding-left: 29px;\">Giao hàng toàn quốc</span></div>', NULL, 6500000.00, 9600000.00, 40, 33, 18, 'Yes', 'sp12', '123', 'Yes', 12, 1, '2024-06-16 12:03:22', '2024-06-16 12:03:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(40, 94, '94-40-1718563301.png', NULL, '2024-06-16 11:41:41', '2024-06-16 11:41:41'),
(41, 95, '95-41-1718563612.jpg', NULL, '2024-06-16 11:46:52', '2024-06-16 11:46:52'),
(42, 96, '96-42-1718563786.png', NULL, '2024-06-16 11:49:46', '2024-06-16 11:49:46'),
(43, 97, '97-43-1718563934.jpg', NULL, '2024-06-16 11:52:14', '2024-06-16 11:52:14'),
(44, 98, '98-44-1718564091.jpg', NULL, '2024-06-16 11:54:51', '2024-06-16 11:54:51'),
(45, 99, '99-45-1718564224.jpg', NULL, '2024-06-16 11:57:04', '2024-06-16 11:57:04'),
(46, 100, '100-46-1718564343.jpg', NULL, '2024-06-16 11:59:03', '2024-06-16 11:59:03'),
(47, 101, '101-47-1718564423.jpg', NULL, '2024-06-16 12:00:23', '2024-06-16 12:00:23'),
(48, 102, '102-48-1718564602.jpg', NULL, '2024-06-16 12:03:22', '2024-06-16 12:03:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(15, 'CPU-I5', 'cpu-i5', 1, 'Yes', 36, '2024-06-15 00:25:18', '2024-06-15 00:55:51'),
(17, 'CPU-I9', 'cpu-i9', 1, 'Yes', 36, '2024-06-15 01:04:43', '2024-06-15 01:04:43'),
(20, 'Main gaming', 'main-gaming', 1, 'Yes', 35, '2024-06-15 02:47:53', '2024-06-15 02:47:53'),
(21, 'Main thường', 'main-thuong', 1, 'Yes', 35, '2024-06-15 02:48:04', '2024-06-15 02:48:04'),
(22, 'Màn hình thường', 'man-hinh-thuong', 1, 'Yes', 31, '2024-06-15 02:48:13', '2024-06-15 02:48:13'),
(23, 'Màn hình led RGB', 'man-hinh-led-rgb', 1, 'Yes', 31, '2024-06-15 02:48:25', '2024-06-15 02:48:25'),
(24, 'Gaming', 'gaming', 1, 'Yes', 31, '2024-06-15 02:48:47', '2024-06-15 02:48:47'),
(25, 'CPU-I7', 'cpu-i7', 1, 'Yes', 36, '2024-06-16 11:29:44', '2024-06-16 11:29:44'),
(26, '8GB', '8gb', 1, 'Yes', 38, '2024-06-16 11:30:22', '2024-06-16 11:30:22'),
(27, '16GB', '16gb', 1, 'Yes', 38, '2024-06-16 11:30:28', '2024-06-16 11:30:28'),
(28, '32GB', '32gb', 1, 'Yes', 38, '2024-06-16 11:30:37', '2024-06-16 11:30:37'),
(29, 'HDD', 'hdd', 1, 'Yes', 39, '2024-06-16 11:30:57', '2024-06-16 11:30:57'),
(30, 'SDD', 'sdd', 1, 'Yes', 39, '2024-06-16 11:31:08', '2024-06-16 11:31:08'),
(31, 'Ổ cứng di động', 'o-cung-di-dong', 1, 'Yes', 39, '2024-06-16 11:31:18', '2024-06-16 11:31:18'),
(32, 'NVIDIA', 'nvidia', 1, 'Yes', 40, '2024-06-16 11:31:55', '2024-06-16 11:31:55'),
(33, 'AMD', 'amd', 1, 'Yes', 40, '2024-06-16 11:32:04', '2024-06-16 11:32:04'),
(34, 'Công suất cao', 'cong-suat-cao', 1, 'Yes', 41, '2024-06-16 11:33:00', '2024-06-16 11:33:00'),
(35, 'Công suất thấp', 'cong-suat-thap', 1, 'Yes', 41, '2024-06-16 11:33:11', '2024-06-16 11:33:11'),
(36, 'Có led', 'co-led', 1, 'Yes', 42, '2024-06-16 11:34:28', '2024-06-16 11:34:28'),
(37, 'Không led', 'khong-led', 1, 'Yes', 42, '2024-06-16 11:34:37', '2024-06-16 11:35:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1718162997.PNG', '2024-06-11 20:29:57', '2024-06-11 20:29:57'),
(2, '1718163171.PNG', '2024-06-11 20:32:51', '2024-06-11 20:32:51'),
(3, '1718163295.PNG', '2024-06-11 20:34:55', '2024-06-11 20:34:55'),
(4, '1718163342.PNG', '2024-06-11 20:35:42', '2024-06-11 20:35:42'),
(5, '1718163476.jpeg', '2024-06-11 20:37:56', '2024-06-11 20:37:56'),
(6, '1718163567.PNG', '2024-06-11 20:39:27', '2024-06-11 20:39:27'),
(7, '1718167378.png', '2024-06-11 21:42:58', '2024-06-11 21:42:58'),
(8, '1718167494.PNG', '2024-06-11 21:44:54', '2024-06-11 21:44:54'),
(9, '1718167501.png', '2024-06-11 21:45:01', '2024-06-11 21:45:01'),
(10, '1718168035.PNG', '2024-06-11 21:53:55', '2024-06-11 21:53:55'),
(11, '1718168547.png', '2024-06-11 22:02:27', '2024-06-11 22:02:27'),
(12, '1718169548.PNG', '2024-06-11 22:19:08', '2024-06-11 22:19:08'),
(13, '1718170029.jpg', '2024-06-11 22:27:09', '2024-06-11 22:27:09'),
(14, '1718170186.PNG', '2024-06-11 22:29:46', '2024-06-11 22:29:46'),
(15, '1718170373.jpg', '2024-06-11 22:32:53', '2024-06-11 22:32:53'),
(16, '1718170543.jpeg', '2024-06-11 22:35:43', '2024-06-11 22:35:43'),
(17, '1718170591.jpg', '2024-06-11 22:36:31', '2024-06-11 22:36:31'),
(18, '1718179043.jpg', '2024-06-12 00:57:23', '2024-06-12 00:57:23'),
(34, '1718185487.png', '2024-06-12 02:44:47', '2024-06-12 02:44:47'),
(35, '1718185516.PNG', '2024-06-12 02:45:16', '2024-06-12 02:45:16'),
(36, '1718185933.PNG', '2024-06-12 02:52:13', '2024-06-12 02:52:13'),
(37, '1718185972.png', '2024-06-12 02:52:52', '2024-06-12 02:52:52'),
(38, '1718185992.png', '2024-06-12 02:53:12', '2024-06-12 02:53:12'),
(39, '1718186133.png', '2024-06-12 02:55:33', '2024-06-12 02:55:33'),
(40, '1718186146.PNG', '2024-06-12 02:55:46', '2024-06-12 02:55:46'),
(41, '1718186208.PNG', '2024-06-12 02:56:48', '2024-06-12 02:56:48'),
(42, '1718186269.png', '2024-06-12 02:57:49', '2024-06-12 02:57:49'),
(43, '1718186291.PNG', '2024-06-12 02:58:11', '2024-06-12 02:58:11'),
(44, '1718186355.png', '2024-06-12 02:59:15', '2024-06-12 02:59:15'),
(45, '1718186615.jpg', '2024-06-12 03:03:35', '2024-06-12 03:03:35'),
(46, '1718186824.png', '2024-06-12 03:07:04', '2024-06-12 03:07:04'),
(47, '1718186841.png', '2024-06-12 03:07:21', '2024-06-12 03:07:21'),
(48, '1718187081.png', '2024-06-12 03:11:21', '2024-06-12 03:11:21'),
(49, '1718187150.PNG', '2024-06-12 03:12:30', '2024-06-12 03:12:30'),
(50, '1718189251.png', '2024-06-12 03:47:31', '2024-06-12 03:47:31'),
(51, '1718189266.PNG', '2024-06-12 03:47:46', '2024-06-12 03:47:46'),
(52, '1718204363.PNG', '2024-06-12 07:59:23', '2024-06-12 07:59:23'),
(53, '1718294815.PNG', '2024-06-13 09:06:55', '2024-06-13 09:06:55'),
(54, '1718294821.jpg', '2024-06-13 09:07:01', '2024-06-13 09:07:01'),
(55, '1718295168.jpg', '2024-06-13 09:12:48', '2024-06-13 09:12:48'),
(56, '1718295189.jpg', '2024-06-13 09:13:09', '2024-06-13 09:13:09'),
(57, '1718295635.jpeg', '2024-06-13 09:20:35', '2024-06-13 09:20:35'),
(58, '1718295748.jpg', '2024-06-13 09:22:28', '2024-06-13 09:22:28'),
(59, '1718295774.jpg', '2024-06-13 09:22:54', '2024-06-13 09:22:54'),
(60, '1718295784.jpg', '2024-06-13 09:23:04', '2024-06-13 09:23:04'),
(61, '1718295793.jpeg', '2024-06-13 09:23:13', '2024-06-13 09:23:13'),
(62, '1718295810.jpg', '2024-06-13 09:23:30', '2024-06-13 09:23:30'),
(63, '1718295870.jpeg', '2024-06-13 09:24:30', '2024-06-13 09:24:30'),
(64, '1718300922.jpg', '2024-06-13 10:48:42', '2024-06-13 10:48:42'),
(65, '1718300927.png', '2024-06-13 10:48:47', '2024-06-13 10:48:47'),
(66, '1718301024.jpg', '2024-06-13 10:50:24', '2024-06-13 10:50:24'),
(67, '1718301043.jpg', '2024-06-13 10:50:43', '2024-06-13 10:50:43'),
(68, '1718301043.jpeg', '2024-06-13 10:50:43', '2024-06-13 10:50:43'),
(69, '1718301125.jpeg', '2024-06-13 10:52:05', '2024-06-13 10:52:05'),
(70, '1718301126.jpg', '2024-06-13 10:52:06', '2024-06-13 10:52:06'),
(71, '1718301126.png', '2024-06-13 10:52:06', '2024-06-13 10:52:06'),
(72, '1718301350.jpg', '2024-06-13 10:55:50', '2024-06-13 10:55:50'),
(73, '1718301351.jpeg', '2024-06-13 10:55:51', '2024-06-13 10:55:51'),
(74, '1718301351.jpg', '2024-06-13 10:55:51', '2024-06-13 10:55:51'),
(75, '1718301388.jpg', '2024-06-13 10:56:28', '2024-06-13 10:56:28'),
(76, '1718301389.jpeg', '2024-06-13 10:56:29', '2024-06-13 10:56:29'),
(77, '1718301389.jpg', '2024-06-13 10:56:29', '2024-06-13 10:56:29'),
(78, '1718301400.jpg', '2024-06-13 10:56:40', '2024-06-13 10:56:40'),
(79, '1718301408.jpg', '2024-06-13 10:56:48', '2024-06-13 10:56:48'),
(80, '1718301408.jpeg', '2024-06-13 10:56:48', '2024-06-13 10:56:48'),
(81, '1718301408.jpg', '2024-06-13 10:56:48', '2024-06-13 10:56:48'),
(82, '1718301670.jpg', '2024-06-13 11:01:10', '2024-06-13 11:01:10'),
(83, '1718301671.jpg', '2024-06-13 11:01:11', '2024-06-13 11:01:11'),
(84, '1718301672.PNG', '2024-06-13 11:01:12', '2024-06-13 11:01:12'),
(85, '1718302087.jpg', '2024-06-13 11:08:07', '2024-06-13 11:08:07'),
(86, '1718302087.jpeg', '2024-06-13 11:08:07', '2024-06-13 11:08:07'),
(87, '1718302088.jpg', '2024-06-13 11:08:08', '2024-06-13 11:08:08'),
(88, '1718302282.jpg', '2024-06-13 11:11:22', '2024-06-13 11:11:22'),
(89, '1718302283.jpeg', '2024-06-13 11:11:23', '2024-06-13 11:11:23'),
(90, '1718302287.jpg', '2024-06-13 11:11:27', '2024-06-13 11:11:27'),
(91, '1718302291.PNG', '2024-06-13 11:11:31', '2024-06-13 11:11:31'),
(92, '1718302471.jpg', '2024-06-13 11:14:31', '2024-06-13 11:14:31'),
(93, '1718302472.jpeg', '2024-06-13 11:14:32', '2024-06-13 11:14:32'),
(94, '1718302472.jpg', '2024-06-13 11:14:32', '2024-06-13 11:14:32'),
(95, '1718302495.jpg', '2024-06-13 11:14:55', '2024-06-13 11:14:55'),
(96, '1718302510.jpg', '2024-06-13 11:15:10', '2024-06-13 11:15:10'),
(97, '1718302510.jpeg', '2024-06-13 11:15:10', '2024-06-13 11:15:10'),
(98, '1718302511.jpg', '2024-06-13 11:15:11', '2024-06-13 11:15:11'),
(99, '1718302517.jpg', '2024-06-13 11:15:17', '2024-06-13 11:15:17'),
(100, '1718302648.jpeg', '2024-06-13 11:17:28', '2024-06-13 11:17:28'),
(101, '1718302648.jpg', '2024-06-13 11:17:28', '2024-06-13 11:17:28'),
(102, '1718302648.jpg', '2024-06-13 11:17:28', '2024-06-13 11:17:28'),
(103, '1718302835.jpg', '2024-06-13 11:20:35', '2024-06-13 11:20:35'),
(104, '1718302835.jpeg', '2024-06-13 11:20:35', '2024-06-13 11:20:35'),
(105, '1718302836.jpg', '2024-06-13 11:20:36', '2024-06-13 11:20:36'),
(106, '1718303124.jpeg', '2024-06-13 11:25:24', '2024-06-13 11:25:24'),
(107, '1718303124.jpg', '2024-06-13 11:25:24', '2024-06-13 11:25:24'),
(108, '1718303125.jpg', '2024-06-13 11:25:25', '2024-06-13 11:25:25'),
(109, '1718303352.jpg', '2024-06-13 11:29:12', '2024-06-13 11:29:12'),
(110, '1718303352.jpeg', '2024-06-13 11:29:12', '2024-06-13 11:29:12'),
(111, '1718303352.jpg', '2024-06-13 11:29:12', '2024-06-13 11:29:12'),
(112, '1718303353.png', '2024-06-13 11:29:13', '2024-06-13 11:29:13'),
(113, '1718303353.png', '2024-06-13 11:29:13', '2024-06-13 11:29:13'),
(114, '1718303354.png', '2024-06-13 11:29:14', '2024-06-13 11:29:14'),
(115, '1718303359.png', '2024-06-13 11:29:19', '2024-06-13 11:29:19'),
(116, '1718303360.png', '2024-06-13 11:29:20', '2024-06-13 11:29:20'),
(117, '1718303361.png', '2024-06-13 11:29:21', '2024-06-13 11:29:21'),
(118, '1718303389.jpg', '2024-06-13 11:29:49', '2024-06-13 11:29:49'),
(119, '1718303389.png', '2024-06-13 11:29:49', '2024-06-13 11:29:49'),
(120, '1718303390.png', '2024-06-13 11:29:50', '2024-06-13 11:29:50'),
(121, '1718303497.png', '2024-06-13 11:31:37', '2024-06-13 11:31:37'),
(122, '1718303497.png', '2024-06-13 11:31:37', '2024-06-13 11:31:37'),
(124, '1718304867.PNG', '2024-06-13 11:54:27', '2024-06-13 11:54:27'),
(125, '1718304867.PNG', '2024-06-13 11:54:27', '2024-06-13 11:54:27'),
(126, '1718304880.png', '2024-06-13 11:54:40', '2024-06-13 11:54:40'),
(127, '1718304881.PNG', '2024-06-13 11:54:41', '2024-06-13 11:54:41'),
(128, '1718305145.png', '2024-06-13 11:59:05', '2024-06-13 11:59:05'),
(129, '1718305146.png', '2024-06-13 11:59:06', '2024-06-13 11:59:06'),
(130, '1718305146.png', '2024-06-13 11:59:06', '2024-06-13 11:59:06'),
(131, '1718305224.png', '2024-06-13 12:00:24', '2024-06-13 12:00:24'),
(132, '1718305224.PNG', '2024-06-13 12:00:24', '2024-06-13 12:00:24'),
(133, '1718305225.PNG', '2024-06-13 12:00:25', '2024-06-13 12:00:25'),
(134, '1718334016.jpg', '2024-06-13 20:00:16', '2024-06-13 20:00:16'),
(135, '1718334016.png', '2024-06-13 20:00:16', '2024-06-13 20:00:16'),
(136, '1718334026.jpg', '2024-06-13 20:00:26', '2024-06-13 20:00:26'),
(137, '1718334027.png', '2024-06-13 20:00:27', '2024-06-13 20:00:27'),
(138, '1718336478.jpg', '2024-06-13 20:41:18', '2024-06-13 20:41:18'),
(139, '1718336535.png', '2024-06-13 20:42:15', '2024-06-13 20:42:15'),
(140, '1718336559.png', '2024-06-13 20:42:39', '2024-06-13 20:42:39'),
(141, '1718336565.png', '2024-06-13 20:42:45', '2024-06-13 20:42:45'),
(142, '1718336680.png', '2024-06-13 20:44:40', '2024-06-13 20:44:40'),
(143, '1718336708.PNG', '2024-06-13 20:45:08', '2024-06-13 20:45:08'),
(144, '1718336776.PNG', '2024-06-13 20:46:16', '2024-06-13 20:46:16'),
(145, '1718336776.PNG', '2024-06-13 20:46:16', '2024-06-13 20:46:16'),
(146, '1718336777.PNG', '2024-06-13 20:46:17', '2024-06-13 20:46:17'),
(147, '1718336883.PNG', '2024-06-13 20:48:03', '2024-06-13 20:48:03'),
(148, '1718336883.png', '2024-06-13 20:48:03', '2024-06-13 20:48:03'),
(149, '1718336884.PNG', '2024-06-13 20:48:04', '2024-06-13 20:48:04'),
(150, '1718336984.png', '2024-06-13 20:49:44', '2024-06-13 20:49:44'),
(151, '1718336984.png', '2024-06-13 20:49:44', '2024-06-13 20:49:44'),
(152, '1718336984.png', '2024-06-13 20:49:44', '2024-06-13 20:49:44'),
(153, '1718337076.jpg', '2024-06-13 20:51:16', '2024-06-13 20:51:16'),
(154, '1718337077.png', '2024-06-13 20:51:17', '2024-06-13 20:51:17'),
(155, '1718337859.png', '2024-06-13 21:04:19', '2024-06-13 21:04:19'),
(156, '1718337859.PNG', '2024-06-13 21:04:19', '2024-06-13 21:04:19'),
(157, '1718337879.png', '2024-06-13 21:04:39', '2024-06-13 21:04:39'),
(158, '1718337879.PNG', '2024-06-13 21:04:39', '2024-06-13 21:04:39'),
(159, '1718338024.png', '2024-06-13 21:07:04', '2024-06-13 21:07:04'),
(160, '1718338024.png', '2024-06-13 21:07:04', '2024-06-13 21:07:04'),
(161, '1718338031.png', '2024-06-13 21:07:11', '2024-06-13 21:07:11'),
(162, '1718338210.PNG', '2024-06-13 21:10:10', '2024-06-13 21:10:10'),
(163, '1718338211.png', '2024-06-13 21:10:11', '2024-06-13 21:10:11'),
(164, '1718338597.png', '2024-06-13 21:16:37', '2024-06-13 21:16:37'),
(165, '1718338776.png', '2024-06-13 21:19:36', '2024-06-13 21:19:36'),
(166, '1718338841.png', '2024-06-13 21:20:41', '2024-06-13 21:20:41'),
(167, '1718339147.png', '2024-06-13 21:25:47', '2024-06-13 21:25:47'),
(168, '1718339148.png', '2024-06-13 21:25:48', '2024-06-13 21:25:48'),
(169, '1718339162.png', '2024-06-13 21:26:02', '2024-06-13 21:26:02'),
(170, '1718339218.png', '2024-06-13 21:26:58', '2024-06-13 21:26:58'),
(171, '1718339219.png', '2024-06-13 21:26:59', '2024-06-13 21:26:59'),
(172, '1718339219.PNG', '2024-06-13 21:26:59', '2024-06-13 21:26:59'),
(173, '1718339227.png', '2024-06-13 21:27:07', '2024-06-13 21:27:07'),
(174, '1718339356.png', '2024-06-13 21:29:16', '2024-06-13 21:29:16'),
(175, '1718339380.png', '2024-06-13 21:29:40', '2024-06-13 21:29:40'),
(176, '1718339450.png', '2024-06-13 21:30:50', '2024-06-13 21:30:50'),
(177, '1718339450.png', '2024-06-13 21:30:50', '2024-06-13 21:30:50'),
(178, '1718339458.png', '2024-06-13 21:30:58', '2024-06-13 21:30:58'),
(179, '1718339486.png', '2024-06-13 21:31:26', '2024-06-13 21:31:26'),
(180, '1718339537.png', '2024-06-13 21:32:17', '2024-06-13 21:32:17'),
(181, '1718339563.png', '2024-06-13 21:32:43', '2024-06-13 21:32:43'),
(182, '1718339637.png', '2024-06-13 21:33:57', '2024-06-13 21:33:57'),
(183, '1718339659.png', '2024-06-13 21:34:19', '2024-06-13 21:34:19'),
(184, '1718339688.png', '2024-06-13 21:34:48', '2024-06-13 21:34:48'),
(185, '1718339977.png', '2024-06-13 21:39:37', '2024-06-13 21:39:37'),
(186, '1718340177.png', '2024-06-13 21:42:57', '2024-06-13 21:42:57'),
(187, '1718340266.png', '2024-06-13 21:44:26', '2024-06-13 21:44:26'),
(188, '1718340266.png', '2024-06-13 21:44:26', '2024-06-13 21:44:26'),
(189, '1718340266.png', '2024-06-13 21:44:26', '2024-06-13 21:44:26'),
(190, '1718340276.png', '2024-06-13 21:44:36', '2024-06-13 21:44:36'),
(191, '1718340276.png', '2024-06-13 21:44:36', '2024-06-13 21:44:36'),
(192, '1718340276.PNG', '2024-06-13 21:44:36', '2024-06-13 21:44:36'),
(193, '1718340284.png', '2024-06-13 21:44:44', '2024-06-13 21:44:44'),
(194, '1718340284.PNG', '2024-06-13 21:44:44', '2024-06-13 21:44:44'),
(195, '1718340285.png', '2024-06-13 21:44:45', '2024-06-13 21:44:45'),
(196, '1718340363.png', '2024-06-13 21:46:03', '2024-06-13 21:46:03'),
(197, '1718340364.png', '2024-06-13 21:46:04', '2024-06-13 21:46:04'),
(198, '1718340364.png', '2024-06-13 21:46:04', '2024-06-13 21:46:04'),
(199, '1718340450.png', '2024-06-13 21:47:30', '2024-06-13 21:47:30'),
(200, '1718340450.jpg', '2024-06-13 21:47:30', '2024-06-13 21:47:30'),
(201, '1718340450.png', '2024-06-13 21:47:30', '2024-06-13 21:47:30'),
(202, '1718340595.png', '2024-06-13 21:49:55', '2024-06-13 21:49:55'),
(203, '1718340597.png', '2024-06-13 21:49:57', '2024-06-13 21:49:57'),
(204, '1718340599.png', '2024-06-13 21:49:59', '2024-06-13 21:49:59'),
(205, '1718354224.PNG', '2024-06-14 01:37:04', '2024-06-14 01:37:04'),
(206, '1718355353.PNG', '2024-06-14 01:55:53', '2024-06-14 01:55:53'),
(207, '1718356032.PNG', '2024-06-14 02:07:12', '2024-06-14 02:07:12'),
(208, '1718359481.png', '2024-06-14 03:04:41', '2024-06-14 03:04:41'),
(209, '1718375667.png', '2024-06-14 07:34:27', '2024-06-14 07:34:27'),
(210, '1718375743.png', '2024-06-14 07:35:43', '2024-06-14 07:35:43'),
(211, '1718381837.png', '2024-06-14 09:17:17', '2024-06-14 09:17:17'),
(212, '1718382201.png', '2024-06-14 09:23:21', '2024-06-14 09:23:21'),
(213, '1718391665.png', '2024-06-14 12:01:05', '2024-06-14 12:01:05'),
(214, '1718391687.png', '2024-06-14 12:01:27', '2024-06-14 12:01:27'),
(215, '1718391736.png', '2024-06-14 12:02:16', '2024-06-14 12:02:16'),
(216, '1718391749.png', '2024-06-14 12:02:29', '2024-06-14 12:02:29'),
(217, '1718391750.png', '2024-06-14 12:02:30', '2024-06-14 12:02:30'),
(218, '1718392466.png', '2024-06-14 12:14:26', '2024-06-14 12:14:26'),
(219, '1718393010.png', '2024-06-14 12:23:30', '2024-06-14 12:23:30'),
(220, '1718393379.png', '2024-06-14 12:29:39', '2024-06-14 12:29:39'),
(221, '1718393427.png', '2024-06-14 12:30:27', '2024-06-14 12:30:27'),
(222, '1718393540.png', '2024-06-14 12:32:20', '2024-06-14 12:32:20'),
(223, '1718417841.png', '2024-06-14 19:17:21', '2024-06-14 19:17:21'),
(224, '1718417881.png', '2024-06-14 19:18:01', '2024-06-14 19:18:01'),
(225, '1718421911.png', '2024-06-14 20:25:11', '2024-06-14 20:25:11'),
(226, '1718437175.png', '2024-06-15 00:39:35', '2024-06-15 00:39:35'),
(227, '1718437182.jpg', '2024-06-15 00:39:42', '2024-06-15 00:39:42'),
(228, '1718437187.jpg', '2024-06-15 00:39:47', '2024-06-15 00:39:47'),
(229, '1718437196.jpg', '2024-06-15 00:39:56', '2024-06-15 00:39:56'),
(230, '1718437966.png', '2024-06-15 00:52:46', '2024-06-15 00:52:46'),
(231, '1718438617.jpg', '2024-06-15 01:03:37', '2024-06-15 01:03:37'),
(232, '1718438728.jpg', '2024-06-15 01:05:28', '2024-06-15 01:05:28'),
(233, '1718438792.jpg', '2024-06-15 01:06:32', '2024-06-15 01:06:32'),
(234, '1718438799.jpg', '2024-06-15 01:06:39', '2024-06-15 01:06:39'),
(235, '1718439333.png', '2024-06-15 01:15:33', '2024-06-15 01:15:33'),
(236, '1718439614.png', '2024-06-15 01:20:14', '2024-06-15 01:20:14'),
(237, '1718439703.png', '2024-06-15 01:21:43', '2024-06-15 01:21:43'),
(238, '1718439792.png', '2024-06-15 01:23:12', '2024-06-15 01:23:12'),
(239, '1718441080.jpg', '2024-06-15 01:44:40', '2024-06-15 01:44:40'),
(240, '1718441186.jpg', '2024-06-15 01:46:26', '2024-06-15 01:46:26'),
(241, '1718441341.jpg', '2024-06-15 01:49:01', '2024-06-15 01:49:01'),
(242, '1718441422.jpg', '2024-06-15 01:50:22', '2024-06-15 01:50:22'),
(243, '1718448026.jpg', '2024-06-15 03:40:26', '2024-06-15 03:40:26'),
(244, '1718448437.jpg', '2024-06-15 03:47:17', '2024-06-15 03:47:17'),
(245, '1718455999.jpg', '2024-06-15 05:53:19', '2024-06-15 05:53:19'),
(246, '1718456131.jpg', '2024-06-15 05:55:31', '2024-06-15 05:55:31'),
(247, '1718461810.jpg', '2024-06-15 07:30:10', '2024-06-15 07:30:10'),
(248, '1718470911.jpg', '2024-06-15 10:01:51', '2024-06-15 10:01:51'),
(249, '1718509953.jpg', '2024-06-15 20:52:33', '2024-06-15 20:52:33'),
(250, '1718510514.jpg', '2024-06-15 21:01:54', '2024-06-15 21:01:54'),
(251, '1718562151.jpg', '2024-06-16 11:22:31', '2024-06-16 11:22:31'),
(252, '1718562194.jpg', '2024-06-16 11:23:14', '2024-06-16 11:23:14'),
(253, '1718562400.jpg', '2024-06-16 11:26:40', '2024-06-16 11:26:40'),
(254, '1718562505.jpg', '2024-06-16 11:28:25', '2024-06-16 11:28:25'),
(255, '1718562842.jpg', '2024-06-16 11:34:02', '2024-06-16 11:34:02'),
(256, '1718563210.png', '2024-06-16 11:40:10', '2024-06-16 11:40:10'),
(257, '1718563494.jpg', '2024-06-16 11:44:54', '2024-06-16 11:44:54'),
(258, '1718563596.jpg', '2024-06-16 11:46:36', '2024-06-16 11:46:36'),
(259, '1718563740.png', '2024-06-16 11:49:00', '2024-06-16 11:49:00'),
(260, '1718563894.jpg', '2024-06-16 11:51:34', '2024-06-16 11:51:34'),
(261, '1718564054.jpg', '2024-06-16 11:54:14', '2024-06-16 11:54:14'),
(262, '1718564181.jpg', '2024-06-16 11:56:21', '2024-06-16 11:56:21'),
(263, '1718564307.jpg', '2024-06-16 11:58:27', '2024-06-16 11:58:27'),
(264, '1718564313.jpg', '2024-06-16 11:58:33', '2024-06-16 11:58:33'),
(265, '1718564389.jpg', '2024-06-16 11:59:49', '2024-06-16 11:59:49'),
(266, '1718564562.jpg', '2024-06-16 12:02:42', '2024-06-16 12:02:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'kocoten001a@gmail.com', NULL, 2, NULL, '$2y$10$0cGZnhPM9jKxD7INltIWaeWVawyy4.2pcG4WVXuuswxnXUmCyb6oa', NULL, '2024-06-11 20:16:46', '2024-06-11 20:16:46'),
(2, 'Nguyen', 'ndn@gmail.com', NULL, 1, NULL, '$2y$10$PJqEfkB7Kr9LzKTL45COeOemEpMaAwK25/LHoF4DPgnbokLw3IWK6', NULL, '2024-06-11 20:18:27', '2024-06-11 20:18:27'),
(3, 'Nguyễn Đức Nguyện', 'kocoten001aaa@gmail.com', '41242', 1, NULL, '$2y$10$P.3snrgbsjfou8Aj/cyxTeE7tZ3XEytmRwXjR2ucYRcyIoN0xGqnG', NULL, '2024-06-16 02:55:23', '2024-06-16 02:55:23'),
(4, 'ndn', 'ndn2312@gmail.com', '12342525', 1, NULL, '$2y$10$Lv2/ye0iAvjVm2s4HQStRua1SaCAEJj7sDr3IsksE0FZFEVIQaoYG', NULL, '2024-06-16 03:21:48', '2024-06-16 03:21:48'),
(5, 'nguyen', 'ndn123@gmail.com', '12342525', 1, NULL, '$2y$10$XEU5MOvhrVO9/xrwr3E7ee4XJ.jypmSh7YmiPTemim3vUz1SlvphO', NULL, '2024-06-16 03:24:15', '2024-06-16 03:24:15'),
(6, 'tttt', 'ndn1234@gmail.com', '12342525', 1, NULL, '$2y$10$pHMmD5F25veco5.fr.lJU.JAnl9QuSbRETAmLoynETcbjY83VXJoS', NULL, '2024-06-16 04:19:10', '2024-06-16 04:19:10'),
(7, 'nhitran', 'nhitran071202@gmail.com', '0364313062', 1, NULL, '$2y$10$Z0sUqLoWEk/uAW3.fm311OnpmyxzKnlgQYahf2o/QmJPxRsvjKnlK', NULL, '2024-06-16 09:55:57', '2024-06-16 09:55:57'),
(8, 'nhi123', 'nhitran123@gmail.com', '0364313063', 1, NULL, '$2y$10$9XFFBiVWuETCfxzrJX2rZO/bI6qEvkCG.LuRxuPC3JYoxIRipo752', NULL, '2024-06-16 10:31:00', '2024-06-16 10:31:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `products_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
