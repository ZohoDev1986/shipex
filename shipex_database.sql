-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 08:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shipex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_device` varchar(255) DEFAULT NULL,
  `last_login_browser` varchar(255) DEFAULT NULL,
  `last_login_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `otp`, `last_activity`, `password`, `last_login_ip`, `last_login_device`, `last_login_browser`, `last_login_location`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@shipex.com', NULL, NULL, '2025-11-10 14:11:22', '$2y$12$QvBA2XBa8PO9pWBCFSQuDemyBo9orhao8DHb2pXeHR2Tf6sv6WVV2', '127.0.0.1', 'Windows PC', 'Mozilla Firefox', 'Localhost', '2025-10-18 08:08:55', '2025-11-10 14:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_uid` varchar(255) NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `seen` varchar(255) NOT NULL DEFAULT '0',
  `message_type` varchar(255) NOT NULL,
  `main_message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `message_uid`, `sent_by`, `sent_to`, `seen`, `message_type`, `main_message`, `created_at`, `updated_at`) VALUES
(1, 'msg_690cb337542b2', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Hello!', '2025-11-06 08:39:51', '2025-11-06 08:40:15'),
(2, 'msg_690cb34d979ff', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'How are you?', '2025-11-06 08:40:13', '2025-11-06 08:40:15'),
(3, 'msg_690cb35730a20', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'Yeh i am good, you?', '2025-11-06 08:40:23', '2025-11-06 08:40:34'),
(4, 'msg_690cb36a2f0c0', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Good too!', '2025-11-06 08:40:42', '2025-11-06 08:41:04'),
(5, 'msg_690cb37511007', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'Great then...', '2025-11-06 08:40:53', '2025-11-06 08:41:24'),
(6, 'msg_690cb387617bb', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'asdsasds', '2025-11-06 08:41:11', '2025-11-06 08:41:24'),
(7, 'msg_690cc0438647b', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'fdsfds', '2025-11-06 09:35:31', '2025-11-06 09:39:53'),
(8, 'msg_690cc0482b3cb', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'dfds', '2025-11-06 09:35:36', '2025-11-06 09:39:53'),
(9, 'msg_690cc26ee0238', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Hey bro!', '2025-11-06 09:44:46', '2025-11-06 11:31:24'),
(10, 'msg_690cc27e1cf92', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Holas!', '2025-11-06 09:45:02', '2025-11-06 11:31:24'),
(11, 'msg_690cd5b0d579c', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Holas Atlas!', '2025-11-06 11:06:56', '2025-11-06 11:31:24'),
(12, 'msg_690cd5f9bcd8d', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'jhhv', '2025-11-06 11:08:09', '2025-11-06 11:31:24'),
(13, 'msg_690cd60b3539f', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'ghgh', '2025-11-06 11:08:27', '2025-11-06 11:31:24'),
(14, 'msg_690cdb6434156', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'kkjhjh', '2025-11-06 11:31:16', '2025-11-06 11:31:24'),
(15, 'msg_690cdb80b2c8d', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'hkjghg', '2025-11-06 11:31:44', '2025-11-06 12:10:24'),
(16, 'msg_690cdb89903ce', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'hjkh', '2025-11-06 11:31:53', '2025-11-06 12:10:24'),
(17, 'msg_690ce483a47d2', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'Alfred?', '2025-11-06 12:10:11', '2025-11-06 12:10:24'),
(18, 'msg_690ce48b73c59', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'sfsdf', '2025-11-06 12:10:19', '2025-11-06 12:10:24'),
(19, 'msg_690ce493dda3a', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'gfdgfd', '2025-11-06 12:10:27', '2025-11-06 12:28:01'),
(20, 'msg_690ce49f5ff9c', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'dfdfgd', '2025-11-06 12:10:39', '2025-11-06 12:27:59'),
(21, 'msg_690ce4c2083b5', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'fghfh', '2025-11-06 12:11:14', '2025-11-06 12:27:59'),
(22, 'msg_690ce4c8e6fff', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'hgfh', '2025-11-06 12:11:20', '2025-11-06 12:27:59'),
(23, 'msg_690ce8b5f21dd', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'sdfsdf', '2025-11-06 12:28:05', '2025-11-06 12:28:26'),
(24, 'msg_690ce8b95d65e', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'sdfds', '2025-11-06 12:28:09', '2025-11-06 12:28:43'),
(25, 'msg_690ce8bb902e1', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'sdfds', '2025-11-06 12:28:11', '2025-11-06 12:28:43'),
(26, 'msg_690ce8be279c3', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'sfsdf', '2025-11-06 12:28:14', '2025-11-06 12:28:26'),
(27, 'msg_690ce8c0798c7', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'dsdsfsdfdsf', '2025-11-06 12:28:16', '2025-11-06 12:28:26'),
(28, 'msg_690ce8ce82f91', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'sdfdsf', '2025-11-06 12:28:30', '2025-11-06 12:28:43'),
(29, 'msg_690ce8d0416e4', 'ManuFacturer_777418', 'WS_30477266', '1', 'text', 'sdfds', '2025-11-06 12:28:32', '2025-11-06 12:28:43'),
(30, 'msg_690ce8d229a15', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'dfgdf', '2025-11-06 12:28:34', '2025-11-06 12:28:58'),
(31, 'msg_690ce8d57a779', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'dgdfg', '2025-11-06 12:28:37', '2025-11-06 12:28:58'),
(32, 'msg_690ce8ede729c', 'ManuFacturer_777418', 'WS_30477266', '0', 'text', 'ffghfhgfg', '2025-11-06 12:29:01', '2025-11-06 12:29:01'),
(33, 'msg_690ce8efadb85', 'ManuFacturer_777418', 'WS_30477266', '0', 'text', 'fhgg', '2025-11-06 12:29:03', '2025-11-06 12:29:03'),
(34, 'msg_690ce8f0e2e42', 'ManuFacturer_777418', 'WS_30477266', '0', 'text', 'fghfg', '2025-11-06 12:29:04', '2025-11-06 12:29:04'),
(35, 'msg_690ce8f36df04', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'fghgf', '2025-11-06 12:29:07', '2025-11-10 13:29:49'),
(36, 'msg_690ce8f4eefa9', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'ffghfghfgh', '2025-11-06 12:29:08', '2025-11-10 13:29:49'),
(37, 'msg_690ce8f6b5696', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'fghfghfg', '2025-11-06 12:29:10', '2025-11-10 13:29:49'),
(38, 'msg_690ce8f901bfe', 'WS_30477266', 'ManuFacturer_777418', '1', 'text', 'fhfghfgh', '2025-11-06 12:29:13', '2025-11-10 13:29:49'),
(39, 'msg_69123d3199c57', 'ManuFacturer_777418', 'WS_30477266', '0', 'text', 'fdgfdg', '2025-11-10 13:29:53', '2025-11-10 13:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `monthly_fee_amount` varchar(255) DEFAULT NULL,
  `half_yearly_fee_amount` varchar(255) DEFAULT NULL,
  `yearly_fee_amount` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `coupon_code`, `monthly_fee_amount`, `half_yearly_fee_amount`, `yearly_fee_amount`, `type`, `discount_amount`, `discount_percentage`, `created_at`, `updated_at`) VALUES
(4, 'GR@b', '5.00', '75.00', '152.00', 'fixed', '10', NULL, '2025-10-20 12:01:28', '2025-11-10 08:44:29'),
(9, '%Percent%', '12.00', '68.00', '129.60', 'percentage', NULL, '20', '2025-11-10 08:44:14', '2025-11-10 08:44:14'),
(10, 'FREE', '0.00', '0.00', '0.00', 'percentage', NULL, '100', '2025-11-10 08:44:48', '2025-11-10 08:44:48'),
(11, 'Ultra', '7.50', '42.50', '81.00', 'percentage', NULL, '50', '2025-11-10 08:45:30', '2025-11-10 08:45:30'),
(12, 'Rapid', '0.00', '65.00', '142.00', 'fixed', '20', NULL, '2025-11-10 08:46:08', '2025-11-10 08:46:08');

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
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How do I create an account?', 'To create an account, click on the \"Sign Up\" button in the top right corner, fill in your details, and verify your email address.', '2025-10-27 02:07:28', '2025-10-27 02:07:28'),
(2, 'How can I reset my password?', 'Click on \"Forgot Password\" on the login page, enter your email address, and follow the instructions sent to your inbox.', '2025-10-27 02:07:43', '2025-10-27 02:07:43'),
(3, 'Where can I update my profile information?', 'Go to your dashboard, click on your profile picture in the top right, and select \"Edit Profile\" from the drop-down menu.', '2025-10-27 02:18:05', '2025-10-27 02:18:19'),
(4, 'How do I contact customer support?', 'You can reach our support team through the contact form below or email us directly at shipexcom@gmail.com.', '2025-10-27 02:18:38', '2025-10-27 02:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `verification_link` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `company_name_en` varchar(255) DEFAULT NULL,
  `company_name_ko` varchar(255) DEFAULT NULL,
  `company_address_en` text DEFAULT NULL,
  `company_address_ko` text DEFAULT NULL,
  `company_google_location` text DEFAULT NULL,
  `year_established` int(11) DEFAULT NULL,
  `number_of_employees` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `business_introduction` text DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_position` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `industry_category` varchar(255) DEFAULT NULL,
  `business_registration_number` varchar(255) DEFAULT NULL,
  `business_registration_license` varchar(255) DEFAULT NULL,
  `export_experience` enum('yes','no') DEFAULT NULL,
  `export_years` int(11) DEFAULT NULL,
  `main_product_category` varchar(255) DEFAULT NULL,
  `products` text DEFAULT NULL,
  `production_capacity` int(11) DEFAULT NULL,
  `production_capacity_unit` varchar(255) DEFAULT NULL,
  `moq` int(11) DEFAULT NULL,
  `certifications` text DEFAULT NULL,
  `has_patents` enum('yes','no') DEFAULT NULL,
  `patents` text DEFAULT NULL,
  `has_qms` enum('yes','no') DEFAULT NULL,
  `factory_audit_available` enum('yes','no') DEFAULT NULL,
  `standards` text DEFAULT NULL,
  `factory_pictures` text DEFAULT NULL,
  `catalogue` varchar(255) DEFAULT NULL,
  `agree_terms` tinyint(1) NOT NULL DEFAULT 0,
  `consent_background_check` tinyint(1) NOT NULL DEFAULT 0,
  `digital_signature` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL DEFAULT 'english',
  `subscription` varchar(255) NOT NULL DEFAULT '0',
  `subscription_type` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `paypal_payer_id` varchar(255) DEFAULT NULL,
  `paypal_payment_id` varchar(255) DEFAULT NULL,
  `subscription_start_date` varchar(255) DEFAULT NULL,
  `subscription_end_date` varchar(255) DEFAULT NULL,
  `total_ratings` varchar(255) NOT NULL DEFAULT '0',
  `rating` varchar(255) NOT NULL DEFAULT '0',
  `admin_comment` text DEFAULT NULL,
  `last_active_time` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturer_uid`, `name`, `email`, `password`, `otp`, `verification_link`, `status`, `company_name_en`, `company_name_ko`, `company_address_en`, `company_address_ko`, `company_google_location`, `year_established`, `number_of_employees`, `website`, `business_introduction`, `company_logo`, `contact_name`, `contact_position`, `contact_email`, `contact_phone`, `business_type`, `industry_category`, `business_registration_number`, `business_registration_license`, `export_experience`, `export_years`, `main_product_category`, `products`, `production_capacity`, `production_capacity_unit`, `moq`, `certifications`, `has_patents`, `patents`, `has_qms`, `factory_audit_available`, `standards`, `factory_pictures`, `catalogue`, `agree_terms`, `consent_background_check`, `digital_signature`, `language`, `subscription`, `subscription_type`, `coupon_code`, `paypal_payer_id`, `paypal_payment_id`, `subscription_start_date`, `subscription_end_date`, `total_ratings`, `rating`, `admin_comment`, `last_active_time`, `created_at`, `updated_at`) VALUES
(1, 'ManuFacturer_777418', 'Joseph Stiphen', 'manufacturer@gmail.com', '$2y$12$L3joS7xqOXrGo1qx84ZWZue0ZlU5pGMV8L0dY0KNGy/fTZBMdWrIK', '609875', 'Iuv3tuuZeZVLQUs3XEHLIHwVwZMpaCNb5vQIGlEj9Aj21fI4pkeVIsiQ9WZa', '5', 'Alfred Johanes Burg', 'sdfdsf', 'Located in USA', 'sdfdsf', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1841847750346!2d-73.98784668459395!3d40.75797937932686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855c6480299%3A0x55194ec5a1ae072e!2sTimes%20Square!5e0!3m2!1sen!2sus!4v1634567890123!5m2!1sen!2sus\"\r\n                        width=\"100%\" height=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\">\r\n                    </iframe>', 2020, 6, 'https://www.asads.asd', 'frssd', 'company_logo/company_logo_7706495619.jpeg', 'dsfds', 'Manager', 'robert@gmail.com', '+990452352343249', 'Manufacturer, OEM, ODM, Exporter', 'Textiles', 'fddgdfg', 'business_license/business_license_9724305870.png', 'yes', 5, 'technology', '[{\"name\":\"Trisk\",\"image\":\"products\\/product_9639638392.png\"},{\"name\":\"Drika\",\"image\":\"products\\/product_1760291676_1_6898.png\"}]', 5, 'tons/month', 4, '[{\"name\":\"ISO\",\"document\":\"certifications\\/certification_1760291676_0_1031.png\"},{\"name\":\"sdfsdff\",\"document\":\"certifications\\/certification_1760291676_1_8219.png\"}]', 'no', '[{\"description\":\"\",\"document\":\"patents\\/patent_2597383607.png\"}]', 'yes', 'yes', '[\"EU\",\"US\",\"RoHS\"]', '[{\"title\":\"Thyu dsfdsf\",\"image\":\"factory_pictures\\/factory_picture_1760291676_0_2752.png\"},{\"title\":\"Factory Discodas\",\"image\":\"factory_pictures\\/factory_picture_1761036123_1_4207.jpg\"}]', 'catalogue/catalogue_2928602268.png', 1, 1, 'Alfred Robert Histocky', 'korean', '1', '6months', '%Percent%', 'AJTFLJCVQ6SU8', 'PAYID-NEJEHJQ4BP16331A40892302', '2025-11-10 19:57:52', '2026-05-10 19:57:52', '1', '5', NULL, '2025-11-10 14:02:25', '2025-10-09 08:05:23', '2025-11-10 14:02:25'),
(2, 'ManuFacturer_649935', NULL, 'manufacturer2@gmail.com', '$2y$12$Kp5FJ/zituZ54wO5KSmdMOowU3S6trzDNOorbSn9sCcgJev9jH4zq', '342532', NULL, '1', 'Rectengular Company', 'ewrre', 'wrewrw', 'ewrewr', NULL, 2022, 5, 'https://www.asads.asd', 'sweerwrwr', 'company_logo/company_logo_1760306204_7090.png', 'fghf', 'Manager', 'werewre@qwe.qwewq', '+990452352343249', 'OEM', 'IT', 'fddgdfg', 'business_license/business_registration_license_1760306204_2673.jpeg', 'yes', 5, 'Electronics', '[{\"name\":\"Trisk\",\"image\":\"products\\/product_1760306204_0_7186.png\"},{\"name\":\"Drika\",\"image\":\"products\\/product_1760306204_1_9308.png\"}]', 5, 'pcs/month', 5, '[{\"name\":\"Best Certificate\",\"document\":\"certifications\\/certification_1760306204_0_5694.png\"}]', 'no', '[{\"description\":\"\"}]', 'yes', 'yes', '[\"EU\",\"US\"]', '[{\"title\":\"Thyu dsfdsf\",\"image\":\"factory_pictures\\/factory_picture_1760306204_0_3720.png\"}]', 'catalogue/catalogue_1760306204_5508.png', 1, 1, 'Alfred Robert Histocky', 'german', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '2025-11-05 07:51:51', '2025-10-12 15:52:03', '2025-10-18 09:56:19');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_10_08_173811_create_wholesalers_table', 1),
(6, '2025_10_09_132955_create_menufacturers_table', 2),
(7, '2025_10_09_141409_create_admins_table', 3),
(8, '2025_10_19_040029_create_website_information_table', 4),
(9, '2025_10_20_171148_create_coupon_codes_table', 5),
(10, '2025_10_20_225730_create_payment_records_table', 6),
(11, '2025_10_21_142510_create_reviews_table', 7),
(12, '2025_10_27_075445_create_f_a_q_s_table', 8),
(13, '2025_11_02_070159_create_chats_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_uid` varchar(255) NOT NULL,
  `paypal_payment_id` varchar(255) DEFAULT NULL,
  `paypal_payer_id` varchar(255) DEFAULT NULL,
  `paypal_order_id` varchar(255) DEFAULT NULL,
  `paypal_transaction_id` varchar(255) DEFAULT NULL,
  `package_type` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'usd',
  `payment_status` varchar(255) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'stripe',
  `paypal_response` text DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `subscription_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_records`
--

INSERT INTO `payment_records` (`id`, `manufacturer_uid`, `paypal_payment_id`, `paypal_payer_id`, `paypal_order_id`, `paypal_transaction_id`, `package_type`, `amount`, `currency`, `payment_status`, `coupon_code`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `payment_method`, `paypal_response`, `payment_date`, `subscription_end_date`, `created_at`, `updated_at`) VALUES
(1, 'ManuFacturer_777418', 'PAYID-NEJEHJQ4BP16331A40892302', 'AJTFLJCVQ6SU8', 'PAYID-NEJEHJQ4BP16331A40892302', '6R191055TC4209620', '6months', 68.00, 'usd', 'completed', '%Percent%', 'Robert Addison', 'manufacturer@gmail.com', NULL, NULL, 'paypal', '\"{\\\"id\\\":\\\"PAYID-NEJEHJQ4BP16331A40892302\\\",\\\"intent\\\":\\\"sale\\\",\\\"state\\\":\\\"approved\\\",\\\"cart\\\":\\\"0NX64545UE434805L\\\",\\\"payer\\\":{\\\"payment_method\\\":\\\"paypal\\\",\\\"status\\\":\\\"VERIFIED\\\",\\\"payer_info\\\":{\\\"email\\\":\\\"sb-p47siw29581808@personal.example.com\\\",\\\"first_name\\\":\\\"John\\\",\\\"last_name\\\":\\\"Doe\\\",\\\"payer_id\\\":\\\"AJTFLJCVQ6SU8\\\",\\\"shipping_address\\\":{\\\"recipient_name\\\":\\\"John Doe\\\",\\\"line1\\\":\\\"1 Main St\\\",\\\"city\\\":\\\"San Jose\\\",\\\"state\\\":\\\"CA\\\",\\\"postal_code\\\":\\\"95131\\\",\\\"country_code\\\":\\\"US\\\"},\\\"country_code\\\":\\\"US\\\"}},\\\"transactions\\\":[{\\\"amount\\\":{\\\"total\\\":\\\"68.00\\\",\\\"currency\\\":\\\"USD\\\",\\\"details\\\":{\\\"subtotal\\\":\\\"68.00\\\",\\\"shipping\\\":\\\"0.00\\\",\\\"insurance\\\":\\\"0.00\\\",\\\"handling_fee\\\":\\\"0.00\\\",\\\"shipping_discount\\\":\\\"0.00\\\",\\\"discount\\\":\\\"0.00\\\"}},\\\"payee\\\":{\\\"merchant_id\\\":\\\"HRYX324Z9P4MA\\\",\\\"email\\\":\\\"sandbox_merchant@epicsassessment.com\\\"},\\\"description\\\":\\\"6months Subscription Package\\\",\\\"soft_descriptor\\\":\\\"PAYPAL *SANDBOXTEST\\\",\\\"item_list\\\":{\\\"shipping_address\\\":{\\\"recipient_name\\\":\\\"John Doe\\\",\\\"line1\\\":\\\"1 Main St\\\",\\\"city\\\":\\\"San Jose\\\",\\\"state\\\":\\\"CA\\\",\\\"postal_code\\\":\\\"95131\\\",\\\"country_code\\\":\\\"US\\\"}},\\\"related_resources\\\":[{\\\"sale\\\":{\\\"id\\\":\\\"6R191055TC4209620\\\",\\\"state\\\":\\\"completed\\\",\\\"amount\\\":{\\\"total\\\":\\\"68.00\\\",\\\"currency\\\":\\\"USD\\\",\\\"details\\\":{\\\"subtotal\\\":\\\"68.00\\\",\\\"shipping\\\":\\\"0.00\\\",\\\"insurance\\\":\\\"0.00\\\",\\\"handling_fee\\\":\\\"0.00\\\",\\\"shipping_discount\\\":\\\"0.00\\\",\\\"discount\\\":\\\"0.00\\\"}},\\\"payment_mode\\\":\\\"INSTANT_TRANSFER\\\",\\\"protection_eligibility\\\":\\\"ELIGIBLE\\\",\\\"protection_eligibility_type\\\":\\\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\\\",\\\"transaction_fee\\\":{\\\"value\\\":\\\"2.86\\\",\\\"currency\\\":\\\"USD\\\"},\\\"parent_payment\\\":\\\"PAYID-NEJEHJQ4BP16331A40892302\\\",\\\"create_time\\\":\\\"2025-11-10T19:57:52Z\\\",\\\"update_time\\\":\\\"2025-11-10T19:57:52Z\\\",\\\"links\\\":[{\\\"href\\\":\\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v1\\\\\\/payments\\\\\\/sale\\\\\\/6R191055TC4209620\\\",\\\"rel\\\":\\\"self\\\",\\\"method\\\":\\\"GET\\\"},{\\\"href\\\":\\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v1\\\\\\/payments\\\\\\/sale\\\\\\/6R191055TC4209620\\\\\\/refund\\\",\\\"rel\\\":\\\"refund\\\",\\\"method\\\":\\\"POST\\\"},{\\\"href\\\":\\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v1\\\\\\/payments\\\\\\/payment\\\\\\/PAYID-NEJEHJQ4BP16331A40892302\\\",\\\"rel\\\":\\\"parent_payment\\\",\\\"method\\\":\\\"GET\\\"}],\\\"soft_descriptor\\\":\\\"PAYPAL *SANDBOXTEST\\\"}}]}],\\\"failed_transactions\\\":[],\\\"create_time\\\":\\\"2025-11-10T19:57:26Z\\\",\\\"update_time\\\":\\\"2025-11-10T19:57:52Z\\\",\\\"links\\\":[{\\\"href\\\":\\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v1\\\\\\/payments\\\\\\/payment\\\\\\/PAYID-NEJEHJQ4BP16331A40892302\\\",\\\"rel\\\":\\\"self\\\",\\\"method\\\":\\\"GET\\\"}]}\"', '2025-11-10 13:57:52', '2026-05-10 13:57:52', '2025-11-10 13:57:52', '2025-11-10 13:57:52');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wholesaler_uid` varchar(255) NOT NULL,
  `manufacturer_uid` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review_text` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `wholesaler_uid`, `manufacturer_uid`, `rating`, `review_text`, `status`, `created_at`, `updated_at`) VALUES
(2, 'WS_95761610', 'ManuFacturer_777418', '5', 'Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1', '2025-10-21 08:32:31', '2025-10-26 06:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `website_information`
--

CREATE TABLE `website_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandname` varchar(255) NOT NULL,
  `brandlogo` varchar(255) NOT NULL,
  `website_icon` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `PAYPAL_CLIENT_ID` varchar(255) NOT NULL,
  `PAYPAL_SECRET` varchar(255) NOT NULL,
  `PAYPAL_MODE` varchar(255) NOT NULL,
  `monthly_fee_amount` varchar(255) NOT NULL,
  `half_yearly_fee_amount` varchar(255) NOT NULL,
  `yearly_fee_amount` varchar(255) NOT NULL,
  `open_dys` varchar(255) NOT NULL,
  `open_time` varchar(255) NOT NULL,
  `contact_mail` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `fb_url` varchar(255) NOT NULL,
  `instagram_url` varchar(255) NOT NULL,
  `twitter_url` varchar(255) NOT NULL,
  `linkedin_url` varchar(255) NOT NULL,
  `business_registration_number` varchar(255) DEFAULT NULL,
  `business_address` varchar(500) DEFAULT NULL,
  `short_desc_about_brand` text NOT NULL,
  `terms_conditions` longtext DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_information`
--

INSERT INTO `website_information` (`id`, `brandname`, `brandlogo`, `website_icon`, `currency`, `PAYPAL_CLIENT_ID`, `PAYPAL_SECRET`, `PAYPAL_MODE`, `monthly_fee_amount`, `half_yearly_fee_amount`, `yearly_fee_amount`, `open_dys`, `open_time`, `contact_mail`, `contact_phone`, `fb_url`, `instagram_url`, `twitter_url`, `linkedin_url`, `business_registration_number`, `business_address`, `short_desc_about_brand`, `terms_conditions`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, 'SHIPEX', 'website/logos/2ruBP1XsVkqRwaIr99v3sjdnybNJ87ouUsJ0exTT.png', 'website/icons/8VRsIN5XQu9G5kedl4pJXGmw0wU2hwFYNdAwN4HW.png', 'USD', 'ASt-E4wyo2UiWQNUNrLm8N4koR_X56J0SuLzlTMOI5l7-f7p1nZ6UdrT-BjTHq3_BFGDhJfRBLUQ4m1N', 'EMd6j7JJkhyagD6xdckbpa5T45K0Qb_25Nd5wGPNnUDnJXrLb220dZlbENkaoy2adr9VbMtEE8yvmSPc', 'sandbox', '15', '85', '162', 'Mon-Fri', '9AM - 5PM EST', 'shipexcom@gmail.com', '+9132434234324', 'https://facebook.com/diginotaire', 'https://instagram.com/diginotaire', 'https://twitter.com/diginotaire', 'https://linkedin.com/diginotaire', '184-87-03252', '부산광역시 금정구 금정로 114, 302호', 'This is a better Manufacturer & Wholesaler Communication Platform', '<h2>1. Agreement to Terms</h2><p>By accessing and using our services, you accept and agree to be bound by the terms and provision of this agreement. If you do not agree to abide by these terms, please do not use our services.</p><h2>2. Description of Services</h2><p>We provide various online services including but not limited to [describe your services]. We reserve the right to modify, suspend, or discontinue any part of our services at any time.</p><h2>3. User Accounts</h2><h3>Account Creation</h3><p>When you create an account with us, you must provide accurate and complete information. You are responsible for maintaining the confidentiality of your account and password.</p><h3>Account Security</h3><p>You are responsible for all activities that occur under your account. Notify us immediately of any unauthorized use of your account or any other security breach.</p><h2>4. User Responsibilities</h2><p>You agree not to:</p><ul><li>Use the service for any illegal purpose</li><li>Violate any laws in your jurisdiction</li><li>Infringe upon our intellectual property rights</li><li>Harass, abuse, or harm another person</li><li>Upload or transmit viruses or any malicious code</li><li>Attempt to gain unauthorized access to our systems</li><li>Interfere with the proper working of the service</li></ul><h2>5. Intellectual Property</h2><p>The service and its original content, features, and functionality are owned by us and are protected by international copyright, trademark, and other intellectual property laws.</p><p>You may not reproduce, distribute, modify, create derivative works of, publicly display, or otherwise use our content without our express written permission.</p><h2>6. Termination</h2><p>We may terminate or suspend your account and bar access to the service immediately, without prior notice or liability, under our sole discretion, for any reason whatsoever, including without limitation if you breach the Terms.</p><h2>7. Limitation of Liability</h2><p>In no event shall we be liable for any indirect, incidental, special, consequential, or punitive damages, including without limitation, loss of profits, data, use, goodwill, or other intangible losses, resulting from your access to or use of or inability to access or use the service.</p><h2>8. Governing Law</h2><p>These Terms shall be governed and construed in accordance with the laws of [Your Country/State], without regard to its conflict of law provisions.</p><h2>9. Changes to Terms</h2><p>We reserve the right, at our sole discretion, to modify or replace these Terms at any time. By continuing to access or use our service after those revisions become effective, you agree to be bound by the revised terms.</p>', '<h2>1. Introduction</h2><p>Welcome to our Privacy Policy. Your privacy is critically important to us. This policy describes how we collect, use, and protect your personal information when you use our services.</p><h2>2. Information We Collect</h2><h3>Personal Information</h3><ul><li>Name and contact information</li><li>Email address</li><li>Profile information</li><li>Payment and billing information</li></ul><h3>Automatically Collected Information</h3><ul><li>IP address and browser type</li><li>Device information</li><li>Usage data and analytics</li><li>Cookies and similar technologies</li></ul><h2>3. How We Use Your Information</h2><ul><li>To provide and maintain our services</li><li>To notify you about changes to our services</li><li>To provide customer support</li><li>To gather analysis or valuable information to improve our services</li><li>To monitor the usage of our services</li><li>To detect, prevent and address technical issues</li></ul><h2>4. Data Sharing and Disclosure</h2><p>We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except in the following circumstances:</p><ul><li>With service providers who assist in our operations</li><li>To comply with legal obligations</li><li>To protect and defend our rights and property</li><li>With your explicit consent</li></ul><h2>5. Data Security</h2><p>We implement appropriate technical and organizational security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.</p><h2>6. Your Rights</h2><p>You have the right to:</p><ul><li>Access and receive a copy of your personal data</li><li>Rectify or update your personal data</li><li>Request deletion of your personal data</li><li>Restrict or object to our processing of your personal data</li><li>Data portability</li></ul><p><br></p>', '2025-10-19 04:12:31', '2025-11-10 13:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `wholesalers`
--

CREATE TABLE `wholesalers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wholesaler_uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `company_name` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `industry_focus` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL DEFAULT 'english',
  `admin_comment` text DEFAULT NULL,
  `profile_picture` varchar(500) DEFAULT NULL,
  `last_active_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wholesalers`
--

INSERT INTO `wholesalers` (`id`, `wholesaler_uid`, `name`, `email`, `password`, `otp`, `status`, `company_name`, `business_type`, `industry_focus`, `country`, `category`, `verification_token`, `language`, `admin_comment`, `profile_picture`, `last_active_time`, `created_at`, `updated_at`) VALUES
(1, 'WS_30477266', NULL, 'programmer@gmail.com', '$2y$12$FlPxJa7exccXW8KGS/nxRO2aTAYPRw5vRC3gvNTx9tWjMA.W0N.3O', '537930', '1', 'Wills Publications', 'IT', 'Software Solutions', 'us', '[\"medical\",\"automobile\",\"agrochemical\",\"technology\",\"military\",\"secondhand\"]', 'bMSkDQV3yEAqw1TwJy6der3sL8JMEGgWL3eE0rcyemSWMn5CWVpApEcSlUen', 'german', '', 'uploads/wholesalers/profile_images/1762247932_istockphoto-1132955522-612x612.jpg', '2025-11-06 12:29:13', '2025-10-08 12:41:38', '2025-11-06 12:29:13'),
(2, 'WS_95761610', NULL, 'wholesaler@gmail.com', '$2y$12$whj0ZPOJAB/elOIsrJmTT.gAM0nIfuOgaxaErQSQa8Ha8boxUlzz.', '784819', '3', 'Robusto Comz', 'business_three', 'business_two', 'us', '[\"medical\",\"automobile\",\"agrochemical\",\"technology\",\"military\",\"cosmetics\",\"fashion\",\"secondhand\"]', NULL, 'english', NULL, NULL, NULL, '2025-10-12 15:42:26', '2025-10-26 07:44:56');

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
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chats_message_uid_unique` (`message_uid`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturers_manufacturer_uid_unique` (`manufacturer_uid`),
  ADD UNIQUE KEY `manufacturers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_records_manufacturer_uid_index` (`manufacturer_uid`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_information`
--
ALTER TABLE `website_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wholesalers`
--
ALTER TABLE `wholesalers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_information`
--
ALTER TABLE `website_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wholesalers`
--
ALTER TABLE `wholesalers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
