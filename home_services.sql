-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2026 at 06:55 AM
-- Server version: 8.0.32
-- PHP Version: 8.5.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_booking`
--

CREATE TABLE `accounts_booking` (
  `id` bigint NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `problem` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date` date DEFAULT NULL,
  `scheduled_time` varchar(50) DEFAULT NULL,
  `booking_created_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vendor_id` bigint DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `renewal_requested` tinyint(1) NOT NULL,
  `is_renewed` tinyint(1) NOT NULL,
  `previous_total_days` int DEFAULT NULL,
  `renewal_count` int NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `booking_updated_at` datetime(6) NOT NULL,
  `estimated_amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_booking`
--

INSERT INTO `accounts_booking` (`id`, `order_id`, `name`, `phone`, `address`, `problem`, `status`, `scheduled_date`, `scheduled_time`, `booking_created_at`, `category_id`, `service_id`, `user_id`, `vendor_id`, `city`, `end_date`, `start_date`, `renewal_requested`, `is_renewed`, `previous_total_days`, `renewal_count`, `admin_id`, `booking_updated_at`, `estimated_amount`) VALUES
(11, 'SDXETS49D5B6', 'ustomer', '9666130492', 'main road gurazala and guntur distict', 'this is the testing perpose only created it', 'accepted', NULL, NULL, '2026-05-26 09:58:40.644877', 1, 1, 25, 21, 'Hyderabad', '2026-05-28', '2026-05-26', 0, 0, NULL, 0, 20, '2026-05-28 09:15:42.124901', 0),
(12, 'SDXETS68C408', 'customer2', '9666130493', 'near ramalayam main road gurazala', 'i need the services in the block of the days', 'pending', NULL, NULL, '2026-05-26 10:34:28.279550', 1, 1, 26, NULL, 'Gurazala', '2026-05-26', '2026-05-25', 0, 0, NULL, 0, 24, '2026-05-26 12:06:18.998908', 0),
(13, 'SDXETSB55BCB', 'customer2', '9666130493', ' vcsvc vutg ', 'knfkjsnfkjjbsuvshb cjhytfsyujbnjbhsdfcvyfsjc vhc', 'accepted', NULL, NULL, '2026-05-27 10:37:19.371018', 1, 2, 26, 22, 'Gurazala', '2026-05-29', '2026-05-20', 0, 0, NULL, 0, 24, '2026-05-27 13:31:20.511865', 2000),
(14, 'SDXETSA0D5FC', 'ustomer', '9666130492', 'near main road hyderabad', 'i need the product that time line', 'assigned', NULL, NULL, '2026-05-28 04:37:30.608051', 1, 2, 25, 21, 'Hyderabad', '2026-06-02', '2026-05-28', 0, 0, NULL, 0, 20, '2026-05-28 08:49:22.335248', 1000),
(15, 'SDXETS9DD330', 'ustomer', '9666130492', 'location ', 'probelm ', 'pending', NULL, NULL, '2026-05-28 06:14:30.307713', 1, 2, 25, NULL, 'Hyderabad', '2026-06-25', '2026-05-28', 0, 0, NULL, 0, 20, '2026-05-28 06:14:30.307713', 2000),
(16, 'SDXETS676FC4', 'ustomer', '9666130492', 'sdsdsdsd', 'dsdsdsd', 'pending', NULL, NULL, '2026-05-28 07:51:23.734870', 1, 1, 25, NULL, 'Hyderabad', '2026-10-28', '2026-05-28', 0, 0, NULL, 0, 20, '2026-05-28 07:51:23.734870', 3000),
(17, 'SDXETS5CB5AD', 'ustomer', '9666130492', 'dsd', 'sdsd', 'pending', NULL, NULL, '2026-05-28 07:51:57.947065', 1, 2, 25, NULL, 'Hyderabad', '2026-05-30', '2026-05-13', 0, 0, NULL, 0, 20, '2026-05-28 07:51:57.947065', 5151),
(18, 'SDXETS16C093', 'ustomer', '9666130492', 'cvcvcvcvcv', 'cvcvcvcv', 'assigned', NULL, NULL, '2026-05-28 12:09:57.216289', 1, 2, 25, 21, 'Hyderabad', '2026-05-31', '2026-05-29', 0, 0, NULL, 0, 20, '2026-05-28 12:11:07.469915', 5645);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bookinghistory`
--

CREATE TABLE `accounts_bookinghistory` (
  `id` bigint NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `booking_id` bigint NOT NULL,
  `updated_by_id` bigint DEFAULT NULL,
  `service_days` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_bookinghistory`
--

INSERT INTO `accounts_bookinghistory` (`id`, `status`, `created_at`, `booking_id`, `updated_by_id`, `service_days`) VALUES
(42, 'assigned', '2026-05-26 09:59:32.711900', 11, 20, 30),
(43, 'assigned', '2026-05-26 10:06:27.796964', 11, 20, 30),
(44, 'pending', '2026-05-27 07:02:11.524817', 11, 20, 30),
(45, 'assigned', '2026-05-27 07:02:18.115079', 11, 20, 30),
(46, 'assigned', '2026-05-27 07:02:35.990125', 11, 20, 30),
(47, 'assigned', '2026-05-27 13:31:17.184744', 13, 24, 30),
(48, 'accepted', '2026-05-27 13:31:20.516677', 13, 24, 30),
(49, 'assigned', '2026-05-28 05:49:16.319605', 14, 20, 30),
(50, 'accepted', '2026-05-28 05:50:55.928239', 14, 21, 30),
(51, 'assigned', '2026-05-28 08:49:12.119897', 14, 20, 30),
(52, 'assigned', '2026-05-28 08:49:15.305195', 14, 20, 30),
(53, 'assigned', '2026-05-28 08:49:17.243062', 14, 20, 30),
(54, 'assigned', '2026-05-28 08:49:17.812948', 14, 20, 30),
(55, 'assigned', '2026-05-28 08:49:18.784210', 14, 20, 30),
(56, 'assigned', '2026-05-28 08:49:22.341832', 14, 20, 30),
(57, 'accepted', '2026-05-28 09:15:42.133274', 11, 21, 30),
(58, 'assigned', '2026-05-28 12:11:03.749853', 18, 20, 30),
(59, 'assigned', '2026-05-28 12:11:07.469915', 18, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customerremark`
--

CREATE TABLE `accounts_customerremark` (
  `id` bigint NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `booking_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vendor_id` bigint NOT NULL,
  `priority` varchar(10) NOT NULL,
  `resolved_by_id` bigint DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_notification`
--

CREATE TABLE `accounts_notification` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `booking_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_payment`
--

CREATE TABLE `accounts_payment` (
  `id` bigint NOT NULL,
  `status` varchar(20) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `screenshot` varchar(100) DEFAULT NULL,
  `payment_created_at` datetime(6) NOT NULL,
  `booking_id` bigint NOT NULL,
  `service_id` bigint DEFAULT NULL,
  `vendor_id` bigint DEFAULT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remaining_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `due_date` date DEFAULT NULL,
  `payment_request` longtext,
  `reminder_sent` tinyint(1) NOT NULL,
  `payment_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_payment`
--

INSERT INTO `accounts_payment` (`id`, `status`, `transaction_id`, `screenshot`, `payment_created_at`, `booking_id`, `service_id`, `vendor_id`, `paid_amount`, `total_amount`, `remaining_amount`, `payment_method`, `due_date`, `payment_request`, `reminder_sent`, `payment_updated_at`) VALUES
(6, 'partial_paid', NULL, '', '2026-05-26 09:59:40.548401', 11, 1, 21, 1000.00, 1000.00, 0.00, 'Cash', '2026-05-29', 'payment pay the next month', 0, '2026-05-28 10:15:36.894606'),
(7, 'pending', NULL, '', '2026-05-27 10:58:56.261820', 13, 2, NULL, 0.00, 100.00, 100.00, 'Cash', NULL, NULL, 0, '2026-05-27 13:31:36.297343'),
(8, 'pending', NULL, '', '2026-05-28 04:48:02.468061', 14, 2, NULL, 0.00, 500.00, 500.00, 'Online', '2026-05-30', NULL, 0, '2026-05-28 13:36:52.328567'),
(9, 'pending', NULL, '', '2026-05-28 06:15:14.367426', 15, 2, NULL, 0.00, 1500.00, 1500.00, 'Cash', '2026-05-30', NULL, 0, '2026-05-28 12:01:27.071534'),
(10, 'pending', NULL, '', '2026-05-28 12:11:20.279564', 18, 2, 21, 0.00, 2000.00, 2000.00, 'UPI', '2026-06-01', 'ds', 0, '2026-05-28 13:36:48.728464');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_termsacceptance`
--

CREATE TABLE `accounts_termsacceptance` (
  `id` bigint NOT NULL,
  `signature` varchar(100) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `accepted_at` datetime(6) NOT NULL,
  `customer_id` bigint NOT NULL,
  `booking_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `address` longtext,
  `area` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `behaviour` varchar(20) NOT NULL,
  `behaviour_note` longtext,
  `user_created_at` datetime(6) NOT NULL,
  `user_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `phone`, `role`, `created_by_id`, `address`, `area`, `city`, `district`, `pincode`, `state`, `profile_image`, `behaviour`, `behaviour_note`, `user_created_at`, `user_updated_at`) VALUES
(1, 'pbkdf2_sha256$1000000$RdfN3ixNHXyRLNosR2DaTS$eHZmWfNV5n3NRbgGrgxcJKbrtNd/xRhl9rMs0xZAnvc=', '2026-05-29 12:56:49.681215', 1, 'Vinod', '', 1, 1, '2026-05-14 04:38:28.639197', 'vinod@gmail.com', '9010027126', 'superadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'normal', NULL, '2026-05-20 07:14:09.511586', '2026-05-20 07:14:09.977099'),
(20, 'pbkdf2_sha256$1000000$HhsJUGEgRE0cz0SZP9lPnQ$aJR74eG59xgD4Ym2/EthybGJ5OJkqLdaNsrRjSJ97j0=', '2026-05-29 10:55:26.340529', 0, 'admin', 'A', 0, 1, '2026-05-26 09:38:40.693552', 'admin@gmail.com', '8688561493', 'admin', NULL, 'None', NULL, 'Hyderabad', NULL, '520520', NULL, '', 'normal', NULL, '2026-05-26 09:38:40.693552', '2026-05-26 09:55:07.056450'),
(21, '!Jh8F0ayMRX1ww2zLnczJ2YW3u00GNlOP4VFA41OC', '2026-05-29 10:59:48.921559', 0, 'vendor', '', 0, 1, '2026-05-26 09:40:22.943144', 'vendor@gmail.com', '6302020886', 'vendor', NULL, NULL, NULL, 'Hyderabad', NULL, NULL, NULL, '', 'normal', NULL, '2026-05-26 09:40:22.943144', '2026-05-26 10:06:19.276369'),
(22, '!ulCA6dxjLGHDwrqdJB71fk1i4outaot9w6ppak87', '2026-05-26 09:45:34.253806', 0, 'vendor2', '', 0, 1, '2026-05-26 09:42:04.355364', 'vendor2@gmail.com', '6302020887', 'vendor', NULL, NULL, NULL, 'Gurazala', NULL, NULL, NULL, '', 'normal', NULL, '2026-05-26 09:42:04.362131', '2026-05-26 10:55:49.610906'),
(24, 'pbkdf2_sha256$1000000$WhVPUty2ZRmzkUAma6kZ80$GnuqofZE9P/9VOobRnWe4KX5zSC1CTEA9ZnsfPBBX+g=', '2026-05-27 10:49:11.402960', 0, 'admin2', 'A', 0, 1, '2026-05-26 09:43:58.432526', 'admin2@gmail.com', '8688561494', 'admin', NULL, NULL, NULL, 'Gurazala', NULL, '522415', NULL, '', 'normal', NULL, '2026-05-26 09:43:58.432526', '2026-05-26 09:43:59.000999'),
(25, '!j2iOnowilwjefdSpCWf6ZTl2IobHGoQpdxWCUJpy', '2026-05-29 11:07:01.274597', 0, 'ustomer', '', 0, 1, '2026-05-26 09:47:12.492692', 'customer@gmail.com', '9666130492', 'customer', NULL, NULL, NULL, 'Hyderabad', NULL, NULL, NULL, '', 'normal', NULL, '2026-05-26 09:47:12.492692', '2026-05-26 10:43:04.395564'),
(26, '!W1MegTpbc9EggUIKKSshTkVGYOkxb8v31F4pqvz7', '2026-05-27 10:36:29.917177', 0, 'customer2', '', 0, 1, '2026-05-26 10:32:48.270480', 'customer2@gmail.com', '9666130493', 'customer', NULL, NULL, NULL, 'Gurazala', NULL, NULL, NULL, '', 'normal', NULL, '2026-05-26 10:32:48.281757', '2026-05-26 10:55:13.164150');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_services`
--

CREATE TABLE `accounts_user_services` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `categoryservice_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_user_user_permissions`
--

INSERT INTO `accounts_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(145, 20, 52),
(150, 20, 61),
(151, 20, 62),
(134, 20, 64),
(135, 20, 65),
(136, 20, 66),
(137, 20, 67),
(138, 20, 68),
(139, 20, 69),
(140, 20, 70),
(141, 20, 72),
(142, 20, 81),
(143, 20, 82),
(144, 20, 83),
(146, 20, 84),
(147, 20, 85),
(148, 20, 86),
(149, 20, 88),
(74, 24, 69),
(75, 24, 70);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_vendorprofile`
--

CREATE TABLE `accounts_vendorprofile` (
  `id` bigint NOT NULL,
  `experience` int UNSIGNED NOT NULL,
  `locality` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_address` longtext NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `rating` double NOT NULL,
  `total_jobs` int NOT NULL,
  `profile_created_at` datetime(6) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `license_file` varchar(100) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `pan_card` varchar(100) DEFAULT NULL,
  `pan_number` varchar(30) DEFAULT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `profile_updated_at` datetime(6) NOT NULL
) ;

--
-- Dumping data for table `accounts_vendorprofile`
--

INSERT INTO `accounts_vendorprofile` (`id`, `experience`, `locality`, `street`, `city`, `postal_code`, `company_name`, `company_address`, `is_verified`, `rating`, `total_jobs`, `profile_created_at`, `category_id`, `user_id`, `license_file`, `license_number`, `pan_card`, `pan_number`, `verified_at`, `profile_updated_at`) VALUES
(6, 0, 'Default', 'Default', 'Hyderabad', '520520', '', '', 0, 0, 0, '2026-05-26 09:40:22.957689', 1, 21, '', NULL, '', NULL, NULL, '2026-05-26 09:40:22.957689'),
(7, 0, 'Default', 'Default', 'Gurazala', '522415', '', '', 0, 0, 0, '2026-05-26 09:42:04.396508', 1, 22, '', NULL, '', NULL, NULL, '2026-05-26 09:42:04.396508');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_vendorprofile_services`
--

CREATE TABLE `accounts_vendorprofile_services` (
  `id` bigint NOT NULL,
  `vendorprofile_id` bigint NOT NULL,
  `categoryservice_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_vendorprofile_services`
--

INSERT INTO `accounts_vendorprofile_services` (`id`, `vendorprofile_id`, `categoryservice_id`) VALUES
(6, 6, 1),
(7, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_visitor`
--

CREATE TABLE `accounts_visitor` (
  `id` bigint NOT NULL,
  `ip_address` char(39) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `page_url` longtext NOT NULL,
  `visited_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add booking history', 8, 'add_bookinghistory'),
(30, 'Can change booking history', 8, 'change_bookinghistory'),
(31, 'Can delete booking history', 8, 'delete_bookinghistory'),
(32, 'Can view booking history', 8, 'view_bookinghistory'),
(33, 'Can add payment', 9, 'add_payment'),
(34, 'Can change payment', 9, 'change_payment'),
(35, 'Can delete payment', 9, 'delete_payment'),
(36, 'Can view payment', 9, 'view_payment'),
(37, 'Can add vendor profile', 10, 'add_vendorprofile'),
(38, 'Can change vendor profile', 10, 'change_vendorprofile'),
(39, 'Can delete vendor profile', 10, 'delete_vendorprofile'),
(40, 'Can view vendor profile', 10, 'view_vendorprofile'),
(41, 'Can add customer remark', 11, 'add_customerremark'),
(42, 'Can change customer remark', 11, 'change_customerremark'),
(43, 'Can delete customer remark', 11, 'delete_customerremark'),
(44, 'Can view customer remark', 11, 'view_customerremark'),
(45, 'Can add notification', 12, 'add_notification'),
(46, 'Can change notification', 12, 'change_notification'),
(47, 'Can delete notification', 12, 'delete_notification'),
(48, 'Can view notification', 12, 'view_notification'),
(49, 'Can add category', 13, 'add_category'),
(50, 'Can change category', 13, 'change_category'),
(51, 'Can delete category', 13, 'delete_category'),
(52, 'Can view category', 13, 'view_category'),
(53, 'Can add contact', 14, 'add_contact'),
(54, 'Can change contact', 14, 'change_contact'),
(55, 'Can delete contact', 14, 'delete_contact'),
(56, 'Can view contact', 14, 'view_contact'),
(57, 'Can add footer', 15, 'add_footer'),
(58, 'Can change footer', 15, 'change_footer'),
(59, 'Can delete footer', 15, 'delete_footer'),
(60, 'Can view footer', 15, 'view_footer'),
(61, 'Can add hero banner', 16, 'add_herobanner'),
(62, 'Can change hero banner', 16, 'change_herobanner'),
(63, 'Can delete hero banner', 16, 'delete_herobanner'),
(64, 'Can view hero banner', 16, 'view_herobanner'),
(65, 'Can add job', 17, 'add_job'),
(66, 'Can change job', 17, 'change_job'),
(67, 'Can delete job', 17, 'delete_job'),
(68, 'Can view job', 17, 'view_job'),
(69, 'Can add news', 18, 'add_news'),
(70, 'Can change news', 18, 'change_news'),
(71, 'Can delete news', 18, 'delete_news'),
(72, 'Can view news', 18, 'view_news'),
(73, 'Can add service feedback', 19, 'add_servicefeedback'),
(74, 'Can change service feedback', 19, 'change_servicefeedback'),
(75, 'Can delete service feedback', 19, 'delete_servicefeedback'),
(76, 'Can view service feedback', 19, 'view_servicefeedback'),
(77, 'Can add services cards', 20, 'add_servicescards'),
(78, 'Can change services cards', 20, 'change_servicescards'),
(79, 'Can delete services cards', 20, 'delete_servicescards'),
(80, 'Can view services cards', 20, 'view_servicescards'),
(81, 'Can add category service', 21, 'add_categoryservice'),
(82, 'Can change category service', 21, 'change_categoryservice'),
(83, 'Can delete category service', 21, 'delete_categoryservice'),
(84, 'Can view category service', 21, 'view_categoryservice'),
(85, 'Can add job application', 22, 'add_jobapplication'),
(86, 'Can change job application', 22, 'change_jobapplication'),
(87, 'Can delete job application', 22, 'delete_jobapplication'),
(88, 'Can view job application', 22, 'view_jobapplication'),
(89, 'Can add terms acceptance', 23, 'add_termsacceptance'),
(90, 'Can change terms acceptance', 23, 'change_termsacceptance'),
(91, 'Can delete terms acceptance', 23, 'delete_termsacceptance'),
(92, 'Can view terms acceptance', 23, 'view_termsacceptance'),
(93, 'Can Manage News', 23, 'manage news'),
(94, 'Can Manage Hero Section', 23, 'manage hero section'),
(95, 'Can Manage Categories', 23, 'manage categories'),
(96, 'Can Manage Categories Service', 23, 'manage categories service'),
(97, 'Can Manage Service', 23, 'manage service'),
(98, 'Can Manage Job Application', 23, 'manage Job Application'),
(99, 'Can Manage Feedback', 23, 'manage feedback'),
(100, 'Can Manage Inquery Contact', 23, 'manage inquery contact'),
(101, 'Can Manage Footer', 23, 'manage footer'),
(102, 'Can Manage News', 23, 'manage_news'),
(103, 'Can Manage Hero Section', 23, 'manage_hero_section'),
(104, 'Can Manage Categories', 23, 'manage_categories'),
(105, 'Can Manage Categories Service', 23, 'manage_categories_service'),
(106, 'Can Manage Service', 23, 'manage_service'),
(107, 'Can Manage Job Application', 23, 'manage_job_application'),
(108, 'Can Manage Feedback', 23, 'manage_feedback'),
(109, 'Can Manage Inquery Contact', 23, 'manage_inquery_contact'),
(110, 'Can Manage Footer', 23, 'manage_footer'),
(111, 'Can Manage Jobs', 23, 'manage_jobs'),
(112, 'Can add visitor', 24, 'add_visitor'),
(113, 'Can change visitor', 24, 'change_visitor'),
(114, 'Can delete visitor', 24, 'delete_visitor'),
(115, 'Can view visitor', 24, 'view_visitor');

-- --------------------------------------------------------

--
-- Table structure for table `core_category`
--

CREATE TABLE `core_category` (
  `id` bigint NOT NULL,
  `slug` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) NOT NULL,
  `badge` varchar(50) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `banner_image` varchar(100) DEFAULT NULL,
  `category_about_des` longtext NOT NULL,
  `category_about_img` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `category_created_at` datetime(6) NOT NULL,
  `category_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_category`
--

INSERT INTO `core_category` (`id`, `slug`, `title`, `description`, `icon`, `badge`, `tags`, `banner_image`, `category_about_des`, `category_about_img`, `is_active`, `category_created_at`, `category_updated_at`) VALUES
(1, 'b2b-services', 'B2B Services', 'Doctor services (often referred to as “doc services” or medical practitioner support) include clinical consultations, diagnostics, treatments, and telemedicine. If you are in Kukatpally, Hyderabad\r\n        ', 'categories/icons/b2b_icon_h7a9wk8_uCc49YO.png', 'Enterprise', 'Procurement,Consulting,Logisticks', 'categories/banners/b2b_banner_list_img_I1M64BM_kv7byJy.webp', 'B2B services, or business-to-business services, are designed to support companies in their daily operations, growth, and long-term success by connecting them with reliable service providers and suppliers. These services cover a wide range of industries including electronics, furniture, event management, IT solutions, logistics, and more, allowing businesses to access everything they need in one place. From supplying essential products like inverters, office furniture, and sports equipment to offering specialized services such as wedding setups, photography, digital marketing, and business consulting, B2B platforms streamline the process of finding trusted vendors. They help organizations save time, reduce operational costs, and improve efficiency by providing verified listings, easy communication, and scalable solutions tailored to business needs. Whether a company is looking for bulk products, professional services, or long-term partnerships, B2B services play a crucial role in building strong business networks and enabling smooth collaboration across different sectors.', '', 1, '2026-05-14 05:08:38.293045', '2026-05-22 10:21:06.184112'),
(2, 'cc-tv', 'CC TV ', 'Doctor services (often referred to as “doc services” or medical practitioner support) include clinical consultations, diagnostics, treatments, and telemedicine. If you are in Kukatpally, Hyderabad', 'categories/icons/cctv_icon_W3XypDS.png', 'jhs vfv', 'cxcxcxc', '', 'cxcxvggfbfbfbfbfbfb', '', 1, '2026-05-14 06:31:54.595668', '2026-05-22 10:20:59.547018'),
(3, 'computer-service', 'Computer Service', 'Doctor services (often referred to as “doc services” or medical practitioner support) include clinical consultations, diagnostics, treatments, and telemedicine. If you are in Kukatpally, Hyderabad', 'categories/icons/computer_services_icon_gYhe9OK_Zgr2F7T.png', 'Nature', 'Whether,rustling', '', 'Nature has an incredible way of reminding us to slow down and appreciate the present. Whether it is the rustlin', '', 1, '2026-05-22 05:21:42.779794', '2026-05-22 10:20:53.242506'),
(4, 'doctor-services', 'Doctor Services', 'Doctor services (often referred to as “doc services” or medical practitioner support) include clinical consultations, diagnostics, treatments, and telemedicine. If you are in Kukatpally, Hyderabad', 'categories/icons/doctor-visit_icon_nn7rdDI.png', 'Doctor ', 'Doctor ,services ', '', '', '', 1, '2026-05-22 09:51:44.609866', '2026-05-22 09:51:44.609866');

-- --------------------------------------------------------

--
-- Table structure for table `core_categoryservice`
--

CREATE TABLE `core_categoryservice` (
  `id` bigint NOT NULL,
  `s_tag` varchar(150) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_desc` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `categoryservice_created_at` datetime(6) NOT NULL,
  `Categoryservice_updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_categoryservice`
--

INSERT INTO `core_categoryservice` (`id`, `s_tag`, `s_title`, `s_desc`, `image`, `categoryservice_created_at`, `Categoryservice_updated_at`, `category_id`) VALUES
(1, 'Home Servcie', 'AC Repair Service', 'Fast and reliable AC repair service for cooling, installation, gas filling, and maintenance at your home.', 'categories_service_images/ac_repair.webp', '2026-05-14 05:11:19.328545', '2026-05-14 05:11:19.328545', 1),
(2, 'electrical', 'Electrical Servcie', 'Here\'s your cleaned-up code with refined, compact styling — same structure and Django template logic', 'categories_service_images/electrical_.webp', '2026-05-14 06:11:17.192557', '2026-05-29 05:05:38.599631', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_contact`
--

CREATE TABLE `core_contact` (
  `id` bigint NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `contact_created_at` datetime(6) NOT NULL,
  `contact_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_footer`
--

CREATE TABLE `core_footer` (
  `id` bigint NOT NULL,
  `logo_image` varchar(100) DEFAULT NULL,
  `footer_description` longtext NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `whatsapp_num` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` longtext NOT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `footer_created_at` datetime(6) NOT NULL,
  `footer_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_footer`
--

INSERT INTO `core_footer` (`id`, `logo_image`, `footer_description`, `phone_num`, `whatsapp_num`, `email`, `address`, `facebook`, `instagram`, `whatsapp`, `twitter`, `footer_created_at`, `footer_updated_at`) VALUES
(1, 'footer/logo/sridixitha_logo_pVGa7ci_3VzgekL.gif', 'At Sri Dixitha Enterprises, we provide trusted staffing solutions including domestic help, caregivers, and professional services. We connect people with the right opportunities and deliver reliable support for homes and businesses.\r\n\r\n', '9966286721', '9292657671', 'support@sridixitha.com', 'support@sridixitha.com', '', '', '', '', '2026-05-14 04:57:47.733419', '2026-05-20 07:39:07.771628');

-- --------------------------------------------------------

--
-- Table structure for table `core_herobanner`
--

CREATE TABLE `core_herobanner` (
  `id` bigint NOT NULL,
  `heading` varchar(255) NOT NULL,
  `sub_heading` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `herosection_created_at` datetime(6) NOT NULL,
  `herosection_updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_herobanner`
--

INSERT INTO `core_herobanner` (`id`, `heading`, `sub_heading`, `image`, `herosection_created_at`, `herosection_updated_at`) VALUES
(1, 'Find The Best Home Services 12', 'Connecting you with trusted professionals for quality service.', 'hero/banner_img_02_sWIXogQ_H4Oa0MC.webp', '2026-05-14 04:44:29.537275', '2026-05-21'),
(2, 'Find The Best Home Services', 'Connecting you with trusted professionals for quality service.', 'hero/banner_img_01_SueEnga.webp', '2026-05-14 04:44:48.690978', '2026-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `core_job`
--

CREATE TABLE `core_job` (
  `id` bigint NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `job_type` varchar(20) NOT NULL,
  `work_mode` varchar(20) NOT NULL,
  `job_created_at` datetime(6) NOT NULL,
  `job_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_job`
--

INSERT INTO `core_job` (`id`, `icon`, `title`, `description`, `status`, `job_type`, `work_mode`, `job_created_at`, `job_updated_at`) VALUES
(1, 'jobs/icons/baby_LsZTu6s.png', 'Baby Care ', 'A baby care worker or nanny is responsible for taking care of babies and young children by ensuring their safety, health, comfort, and daily needs. They help with feeding, bathing, changing diapers, sleeping routines, and engaging children in learning and play activities.', 'hiring', 'part_time', 'residential', '2026-05-21 08:55:09.650234', '2026-05-21 08:55:09.651239'),
(2, 'jobs/icons/cooking_GHt2L4S_dywmp9n.png', 'Cook', 'A Baby Care and Cook worker is responsible for taking care of babies or children while also preparing healthy meals for the family. The role includes maintaining child hygiene, safety, feeding, and assisting with household cooking duties.', 'hiring', 'full_time', 'on_site', '2026-05-21 08:56:00.635206', '2026-05-21 08:56:00.635206'),
(3, 'jobs/icons/patient_care_0n4d5Cb.png', 'Patient Care', 'A Baby Care and Patient Care worker is responsible for taking care of babies, children, elderly people, or patients by ensuring their safety, hygiene, comfort, and daily needs. The role includes assisting with feeding, bathing, medication support, and providing emotional care.', 'hiring', 'full_time', 'on_site', '2026-05-21 08:56:46.820010', '2026-05-21 08:56:46.820010');

-- --------------------------------------------------------

--
-- Table structure for table `core_jobapplication`
--

CREATE TABLE `core_jobapplication` (
  `id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `expected_salary` decimal(10,2) NOT NULL,
  `address` longtext NOT NULL,
  `resume` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `jobapplication_created_at` datetime(6) NOT NULL,
  `job_id` bigint NOT NULL,
  `jobapplication_updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint NOT NULL,
  `content` longtext NOT NULL,
  `news_created_at` datetime(6) NOT NULL,
  `news_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `content`, `news_created_at`, `news_updated_at`) VALUES
(1, 'Breaking: New job opportunities available across India', '2026-05-14 04:40:32.796152', '2026-05-14 04:40:32.835507'),
(2, ' Home services demand increasing', '2026-05-14 04:40:44.231520', '2026-05-14 04:40:44.236320'),
(3, ' Special offers on insurance and loan services', '2026-05-14 04:40:54.649752', '2026-05-14 04:40:54.655585'),
(4, '  IT companies hiring freshers in 2026 ', '2026-05-14 04:41:18.091492', '2026-05-27 06:34:50.865280');

-- --------------------------------------------------------

--
-- Table structure for table `core_servicefeedback`
--

CREATE TABLE `core_servicefeedback` (
  `id` bigint NOT NULL,
  `service_name` varchar(150) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_type` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `rating` smallint UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `feedback_created_at` datetime(6) NOT NULL,
  `feedback_updated_at` date NOT NULL
) ;

--
-- Dumping data for table `core_servicefeedback`
--

INSERT INTO `core_servicefeedback` (`id`, `service_name`, `customer_name`, `customer_type`, `image`, `rating`, `description`, `feedback_created_at`, `feedback_updated_at`) VALUES
(1, 'Cook', 'Ravi', 'House_Owner', 'feedback_images/Screenshot_2026-05-14_113034.png', 4, 'A Baby Care and Cook worker is responsible for taking care of babies or children while also preparing healthy meals for the family. The role includes maintaining child hygiene, safety, feeding, and assisting with household cooking duties.', '2026-05-21 09:00:22.542633', '2026-05-21'),
(2, 'Loan Service', 'Mamatha', 'Business_Owner', 'feedback_images/downloadbag.webp', 4, 'A Baby Care and Cook worker is responsible for taking care of babies or children while also preparing healthy meals for the family. The role includes maintaining child hygiene, safety, feeding, and assisting with household cooking duties.', '2026-05-21 09:03:01.560295', '2026-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `core_servicescards`
--

CREATE TABLE `core_servicescards` (
  `id` bigint NOT NULL,
  `servicename` varchar(150) NOT NULL,
  `serviceicon` varchar(100) NOT NULL,
  `service_image` varchar(100) NOT NULL,
  `servicecard_created_at` datetime(6) NOT NULL,
  `servicecard_updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_servicescards`
--

INSERT INTO `core_servicescards` (`id`, `servicename`, `serviceicon`, `service_image`, `servicecard_created_at`, `servicecard_updated_at`) VALUES
(1, 'AC Repair Services', 'cardSeries/icons/ac_repair_NUC8hbx.png', 'cardSeries/card_images/ac_repair_rOWbzYz.webp', '2026-05-14 04:46:00.531019', '2026-05-14 04:46:00.531019'),
(2, 'Baby Care', 'cardSeries/icons/baby_06BgIBC_HwTHPVW.png', 'cardSeries/card_images/baby_care01_q005Kil.webp', '2026-05-14 04:46:53.984925', '2026-05-14 04:46:53.984925'),
(3, 'Female Cook', 'cardSeries/icons/female_cook_Uha12Dg.png', 'cardSeries/card_images/female_cook_inner_3QSNsFV.jpg', '2026-05-14 04:47:38.142973', '2026-05-14 04:47:38.143965'),
(4, 'Maid Services', 'cardSeries/icons/maid__StKzPzd.png', 'cardSeries/card_images/maid_inner_CPPgpOM.jpg', '2026-05-14 04:48:17.278788', '2026-05-14 04:48:17.278788'),
(5, 'Patient Care', 'cardSeries/icons/patient_care_P3cIhLM.png', 'cardSeries/card_images/patient_inner_0d4Ew6J.jpg', '2026-05-14 04:48:56.939304', '2026-05-14 04:48:56.939304'),
(6, 'Marriage Services', 'cardSeries/icons/marrage_j3okDFi.png', 'cardSeries/card_images/marriage_inner_acrZM4v.jpg', '2026-05-14 04:49:34.820414', '2026-05-14 04:49:34.820414'),
(7, 'Tuition Servcies', 'cardSeries/icons/tution_R0ZWdtP.png', 'cardSeries/card_images/tution_inner_eLBEETo.jpg', '2026-05-14 04:50:16.306669', '2026-05-14 04:50:16.306669'),
(8, 'Catering Services', 'cardSeries/icons/catering_Ew2sxIu.png', 'cardSeries/card_images/catering_inner_GPjCZqL.jpg', '2026-05-14 04:50:50.913020', '2026-05-14 04:50:50.913020'),
(9, 'Electrical Services', 'cardSeries/icons/electrical_yX5E20x.png', 'cardSeries/card_images/electrical__9EscEmK.webp', '2026-05-14 04:51:34.574321', '2026-05-14 04:51:34.574321'),
(10, 'Passport Services', 'cardSeries/icons/passport_uHJhWWA.png', 'cardSeries/card_images/visa_inner_Ofos6pe.webp', '2026-05-14 04:52:35.503767', '2026-05-14 04:52:35.505090'),
(11, 'Health Insurence', 'cardSeries/icons/health_insurence_tXpHS05.png', 'cardSeries/card_images/health_insurance_yqwiOQr.webp', '2026-05-14 04:53:21.153742', '2026-05-14 04:53:21.153742'),
(12, 'Loan Servcies', 'cardSeries/icons/loans_IOK6PmC.png', 'cardSeries/card_images/laons__Lq3UXRO.webp', '2026-05-14 04:54:04.759630', '2026-05-14 04:54:04.759630'),
(13, 'Office Jobs', 'cardSeries/icons/jobs_in_office_lGyOaEx.png', 'cardSeries/card_images/jobs_in_offices_Gt0AvIT.webp', '2026-05-14 04:55:10.631266', '2026-05-14 04:55:10.631266'),
(14, 'Brahmin Cook', 'cardSeries/icons/bramhin_cook_UY0GKLd.png', 'cardSeries/card_images/brahmin_cook_XuXkAZ3.webp', '2026-05-14 04:55:50.160570', '2026-05-14 04:55:50.161940'),
(15, 'Visa Services', 'cardSeries/icons/visa_myqrjU7.png', 'cardSeries/card_images/usa_visa_pHHASSt.webp', '2026-05-14 05:02:00.070785', '2026-05-14 05:02:00.070785'),
(16, 'Doctor Services', 'cardSeries/icons/doctors_rk0ewz9.png', 'cardSeries/card_images/doctors_ozLzfkM.webp', '2026-05-14 05:02:43.522835', '2026-05-14 05:02:43.522835'),
(17, 'Plumbing Servcies', 'cardSeries/icons/plumber_mS7kOpR.png', 'cardSeries/card_images/plumber_6wtSTPv.webp', '2026-05-14 05:03:29.243051', '2026-05-14 05:03:29.243051'),
(18, 'Carpenter Services', 'cardSeries/icons/carpenter_hFCv97y.png', 'cardSeries/card_images/carpenter__LCBn3oT.webp', '2026-05-14 05:04:33.433841', '2026-05-14 05:04:33.433841');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'booking'),
(8, 'accounts', 'bookinghistory'),
(11, 'accounts', 'customerremark'),
(12, 'accounts', 'notification'),
(9, 'accounts', 'payment'),
(23, 'accounts', 'termsacceptance'),
(6, 'accounts', 'user'),
(10, 'accounts', 'vendorprofile'),
(24, 'accounts', 'visitor'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(13, 'core', 'category'),
(21, 'core', 'categoryservice'),
(14, 'core', 'contact'),
(15, 'core', 'footer'),
(16, 'core', 'herobanner'),
(17, 'core', 'job'),
(22, 'core', 'jobapplication'),
(18, 'core', 'news'),
(19, 'core', 'servicefeedback'),
(20, 'core', 'servicescards'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'core', '0001_initial', '2026-05-14 04:36:45.149247'),
(2, 'contenttypes', '0001_initial', '2026-05-14 04:36:45.252477'),
(3, 'contenttypes', '0002_remove_content_type_name', '2026-05-14 04:36:45.365124'),
(4, 'auth', '0001_initial', '2026-05-14 04:36:45.703647'),
(5, 'auth', '0002_alter_permission_name_max_length', '2026-05-14 04:36:45.812948'),
(6, 'auth', '0003_alter_user_email_max_length', '2026-05-14 04:36:45.832881'),
(7, 'auth', '0004_alter_user_username_opts', '2026-05-14 04:36:45.849290'),
(8, 'auth', '0005_alter_user_last_login_null', '2026-05-14 04:36:45.868254'),
(9, 'auth', '0006_require_contenttypes_0002', '2026-05-14 04:36:45.874245'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2026-05-14 04:36:45.895249'),
(11, 'auth', '0008_alter_user_username_max_length', '2026-05-14 04:36:45.915301'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2026-05-14 04:36:45.939734'),
(13, 'auth', '0010_alter_group_name_max_length', '2026-05-14 04:36:45.993755'),
(14, 'auth', '0011_update_proxy_permissions', '2026-05-14 04:36:46.035844'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2026-05-14 04:36:46.056842'),
(16, 'accounts', '0001_initial', '2026-05-14 04:36:47.957503'),
(17, 'accounts', '0002_alter_booking_status', '2026-05-14 04:36:47.985533'),
(18, 'accounts', '0003_customerremark', '2026-05-14 04:36:48.247686'),
(19, 'accounts', '0004_customerremark_priority_customerremark_resolved_by_and_more', '2026-05-14 04:36:48.533648'),
(20, 'accounts', '0005_bookinghistory_service_days', '2026-05-14 04:36:48.611115'),
(21, 'accounts', '0006_payment_paid_amount_payment_total_amount', '2026-05-14 04:36:48.901800'),
(22, 'accounts', '0007_alter_payment_status', '2026-05-14 04:36:48.924391'),
(23, 'accounts', '0008_user_address_user_area_user_city_user_district_and_more', '2026-05-14 04:36:49.562132'),
(24, 'accounts', '0009_booking_city', '2026-05-14 04:36:49.640765'),
(25, 'accounts', '0010_booking_end_date_booking_start_date', '2026-05-14 04:36:49.798690'),
(26, 'accounts', '0011_alter_booking_scheduled_date_and_more', '2026-05-14 04:36:50.034721'),
(27, 'accounts', '0012_booking_renewal_requested', '2026-05-14 04:36:50.146950'),
(28, 'accounts', '0013_booking_is_renewed_booking_previous_total_days_and_more', '2026-05-14 04:36:50.427272'),
(29, 'accounts', '0014_vendorprofile_license_file_and_more', '2026-05-14 04:36:50.787913'),
(30, 'accounts', '0015_user_profile_image', '2026-05-14 04:36:50.913101'),
(31, 'accounts', '0016_user_behaviour_user_behaviour_note', '2026-05-14 04:36:51.213233'),
(32, 'accounts', '0017_payment_remaining_amount', '2026-05-14 04:36:51.291703'),
(33, 'accounts', '0018_payment_payment_method', '2026-05-14 04:36:51.370333'),
(34, 'accounts', '0019_payment_due_date_payment_payment_request_and_more', '2026-05-14 04:36:51.532851'),
(35, 'accounts', '0020_notification', '2026-05-14 04:36:51.817877'),
(36, 'admin', '0001_initial', '2026-05-14 04:36:52.013249'),
(37, 'admin', '0002_logentry_remove_auto_add', '2026-05-14 04:36:52.046218'),
(38, 'admin', '0003_logentry_add_action_flag_choices', '2026-05-14 04:36:52.086123'),
(39, 'core', '0002_jobapplication', '2026-05-14 04:36:52.202800'),
(40, 'sessions', '0001_initial', '2026-05-14 04:36:52.268950'),
(41, 'accounts', '0021_booking_admin', '2026-05-14 11:00:31.810650'),
(42, 'accounts', '0022_termsacceptance', '2026-05-15 04:32:32.972640'),
(43, 'accounts', '0023_termsacceptance_booking', '2026-05-15 05:33:38.606864'),
(44, 'accounts', '0024_user_user_created_at_user_user_updated_at', '2026-05-20 07:14:10.104762'),
(45, 'accounts', '0025_rename_created_at_booking_booking_created_at_and_more', '2026-05-20 07:19:46.522150'),
(46, 'accounts', '0026_rename_created_at_payment_payment_created_at_and_more', '2026-05-20 07:22:24.078104'),
(47, 'accounts', '0027_rename_created_at_vendorprofile_profile_created_at_and_more', '2026-05-20 07:24:55.996606'),
(48, 'core', '0003_rename_created_at_news_news_created_at_and_more', '2026-05-20 07:30:17.178333'),
(49, 'core', '0004_rename_created_at_herobanner_herosection_created_at_and_more', '2026-05-20 07:30:17.260751'),
(50, 'core', '0005_rename_created_at_category_category_created_at_and_more', '2026-05-20 07:30:59.123546'),
(51, 'core', '0006_rename_updated_at_categoryservice_categoryservice_updated_at_and_more', '2026-05-20 07:34:10.490195'),
(52, 'core', '0007_rename_created_at_contact_contact_created_at_and_more', '2026-05-20 07:39:07.819970'),
(53, 'accounts', '0028_alter_termsacceptance_options', '2026-05-26 12:47:48.649474'),
(54, 'accounts', '0029_alter_termsacceptance_options', '2026-05-26 13:22:53.927192'),
(55, 'accounts', '0030_alter_termsacceptance_options', '2026-05-27 09:46:32.822891'),
(56, 'accounts', '0031_booking_estimated_amount', '2026-05-27 10:36:07.722884'),
(57, 'accounts', '0032_visitor', '2026-05-29 07:51:10.054704'),
(58, 'accounts', '0033_alter_visitor_ip_address_alter_visitor_page_url_and_more', '2026-05-29 09:40:59.180175');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01b1d0oe4festquxmmkf7njdgdnz68ia', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wRs8G:9_bJl_GteDk5TtIcoaQSDfmY7r8qRGHLHfUupdujAP0', '2026-06-09 13:47:44.830089'),
('0er707n0b28oy2glulxfg720dn7a4i7l', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wQ1yT:0DxZMbQ1NkRjh3U0oEWGY67Aga4I_RjtJ6BYYttQZRk', '2026-06-04 11:54:01.457820'),
('4qpsxwl3weqhjf92x0qflmigby1l4wzn', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wPhEJ:h1yPn9PU6ZfgBinnxPYJvvx2ZYQ61pHNZ5zU5fNaldw', '2026-06-03 13:44:59.471712'),
('4v09g2vzb9heh9y1ipx7bntd3cco6liu', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wPMvC:vqGXmogTrFK5ZuhpW-D8vp11zxkTnuhpDGlrC-jOooY', '2026-06-02 16:03:54.830665'),
('531q1wenmqy79u0rh4hbtosmvfa7s3ru', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wRV71:VRbhp0tn3o1lZI-p5LRjlaHuGqstNdKdCGzMMCG8a50', '2026-06-08 13:12:55.136487'),
('7e96ngt750hc7nhy4ksb76gsc622elgv', '.eJxVjEEOwiAQRe_C2hDKSKEu3fcMDcPMSNVAUtqV8e7apAvd_vfef6kpbmuetsbLNJO6KNup0--IMT247ITusdyqTrWsy4x6V_RBmx4r8fN6uH8HObb8rT3bGHxKwSIAiHNMfW8GpkBC7Gw3IHsxIOLRAZpkhPEMiZEZIYJ6fwAnxzmF:1wSwxI:9Ew1VObyTysUgJJgK7S_j8yBf1F1Ri_GLGwzxTW5_6I', '2026-06-12 13:08:52.713358'),
('9k7rs3bcf19tqsr1ywlna9gpkgvwlgf5', '.eJxVjE0OwiAYRO_C2hCkFMGl-56B8P0gVQNJaVfGu0uTLnQzi3lv5i1C3NYctsZLmElcxdmI028JEZ9cdkKPWO5VYi3rMoPcFXnQJqdK_Lod7t9Bji33dcLxYlEzDwA-OXSkvYZBKRptQuTolHKasEe3IGpltTGGgNl6GKz4fAEq8Ti7:1wNWGr:SHstSC_NDln1AfU8f6yNwY9lUo1aoGDyKPPTFsBExRo', '2026-05-28 13:38:37.764147'),
('b2r2vi6iud914mnymbv4aa3ms5nwnwem', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wSXnJ:d3IGLwyy-HPEqUkMTz1VBR4J4QeaGA8EMSwoI0eQv-s', '2026-06-11 10:16:53.643372'),
('bc6k6973z74ozeveuntzsp0qnll2x7ol', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wSqWk:M-NVEUcN1jFKhu0H2IWS_X1KAsWAYHFi3KZa3FgjNWU', '2026-06-12 06:17:02.299951'),
('bjve49zahclvggozidih1gcnx6hp8ao9', '.eJxVjEEOwiAQRe_C2hBAZmhduu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIiDIjT7xiIH6nuJN6p3prkVtdlDnJX5EG7nFpMz-vh_h0U6uVbIyjipDRlZxFdBK1NyngOEKJDgDECs2agNFoDaggAObM1YTDKOUTx_gADejes:1wSvJH:wDTj-SRpwJFO06Umk52lY3R3eE92_NUXwcelPCj5CTk', '2026-06-12 11:23:27.480839'),
('dfhl2847ss5q879qr4q968oy4re3f8ur', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wRs1q:G3ChBXyvPtcnF_vlpoY_c4sapA91rMhywlva-d85Bp4', '2026-06-09 13:41:06.667559'),
('dke4e6qz5o0ebnkeye03mmkqtu5oc9e0', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wSavh:pL-o1nUnGRAWQ8GLAPlcIvjzR191uB4-iYsPQEPPKjg', '2026-06-11 13:37:45.851735'),
('dpc0urn8dtfvkvandmoj55pcxenwaa4o', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wRU44:hCs7OO73U3mT2CjSuJJPy0BaeZ-0JGGYs7OXvrPGxjI', '2026-06-08 12:05:48.561348'),
('f3miaikdidv4vcwb8z3ge87svolof6w4', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wRtYZ:pm3sAI2D1N9sKmTdUz-2ogld6vYtF13yvY4BSqO0Ll0', '2026-06-09 15:18:59.869555'),
('fuzo2cdujrpjebu5afr2a4wazfan2b0o', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wNrb4:xgl1sgO4ciAVfwsH5Q6ZD7QbSt9oGWKpqaFnxqUDKyQ', '2026-05-29 12:24:54.503885'),
('gms2joyylmjt7p0gjia00msl03jvf8zx', '.eJxVjEEOwiAQRe_C2hDKSKEu3fcMDcPMSNVAUtqV8e7apAvd_vfef6kpbmuetsbLNJO6KNup0--IMT247ITusdyqTrWsy4x6V_RBmx4r8fN6uH8HObb8rT3bGHxKwSIAiHNMfW8GpkBC7Gw3IHsxIOLRAZpkhPEMiZEZIYJ6fwAnxzmF:1wSXI0:neXzE8ysfaCq06qTTJ9_qK5uokWpObDRv6-SYZfjqrM', '2026-06-11 09:44:32.679207'),
('k7h3xmk8gvsyw1pm444nbuafrgxanz2c', '.eJxVjEEOwiAQRe_C2hBAZmhduu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIiDIjT7xiIH6nuJN6p3prkVtdlDnJX5EG7nFpMz-vh_h0U6uVbIyjipDRlZxFdBK1NyngOEKJDgDECs2agNFoDaggAObM1YTDKOUTx_gADejes:1wSY9D:VEkYAgONYjhCSYOHAy_ox6ZvNhO8Ms9GRiO6siWPziM', '2026-06-11 10:39:31.791919'),
('khlvdnqzcpd4iadzhu9yawpka8m3lcqr', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wOs7W:1sXIFK1-lwQteGq-8PvsrFg4mmvtAIZ2I777nPk6S2o', '2026-06-01 07:10:34.012058'),
('ks2u4neqouyh67mzsnopsatqscklqqwh', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wSEVw:HKbtOZn1RHNX3y5LoogH_aIcQv4bqA8MksYOyRsYSmQ', '2026-06-10 13:41:40.536490'),
('l2n2hp9v05uc44br5u2i9lbqmia3letd', '.eJxVjMsOwiAQRf-FtSE8WnBcuu83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mLME6cfseI6cF1J3THemsytbouc5S7Ig_a5dSIn9fD_Tso2Mu3zoyADtlYVNkro_QZnQZLnr0nlTFbo4DGlDiSHwCJaIBRe8g2WwTx_gAlETjP:1wSBpY:cA0_FbeUPk2NWMZvJJj6Yr8e930R6vaMkI5l5_psaio', '2026-06-10 10:49:44.096378'),
('l8ofeo7u22lfwtkdmxt5tjszqe69fa6i', '.eJxVjEsOwiAUAO_C2hA-5fNcuvcMhD4eUjWQlHZlvLuSdKHbmcm8WIj7VsLeaQ1LYmem2OmXzREfVIdI91hvjWOr27rMfCT8sJ1fW6Ln5Wj_BiX2MraAUlpSgqzTVmbh5WRFMijIZfDGG0RwRkltAN03jYDeKg0aM0zZs_cHrBo2cg:1wNONL:cAQfep9GAIo_-lVErlx2nV9WsjpZpm7fuE60jeOEKVQ', '2026-05-28 05:12:47.524468'),
('l90332yy87k9kkun846eizsaum92b97p', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wSb8M:HdKpnSYFTulUP_0satUBTQpYdfpRM9z9DQsUgpcDW20', '2026-06-11 13:50:50.106473'),
('lmeu9wl40rms90ya0et1epgnanqja2ka', '.eJxVjEsOAiEQBe_CVkMAGYZ26d4zkKZpHNSAmY8b492dSVzo9lW9eomAyzyEZeIxlCSOQov97xaRblw3kK5YL01Sq_NYotwU-aWTPLfE99PX_QsMOA3rW4FWkW3fpwSa0DF7Aq-ycSZTZzFb6LsEYLRPzkdgJEKrjcaeFUVao08eSy6cwmNoldfmDrR33ndOWziI9wfeREHQ:1wNOmS:MDhl39fsIByDJqR-S1ZIpjjXdLMMhogtXUUgwad08mE', '2026-05-28 05:38:44.699570'),
('m0401abygju1naxzacwwf0ji1u80t6wy', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wSxKm:o5ZRmuWUeJewo3WKx-HXJ1PQplnL_Y9iVaNC6IyT7c8', '2026-06-12 13:33:08.833368'),
('m54kas8bq2cr54el2pc2pup7npqom55z', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wSeua:ibLeLc3WsaVYqu87_XcCo9L4iwdK3WmZN5gNsx3Hf90', '2026-06-11 17:52:52.257588'),
('nbrjyaplf4dvoagmhypzdteqrenmqu6z', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wOsI4:rosOtkKaYM9mky5_KeA109S0XpSzmNECcNrEqw0KB1s', '2026-06-01 07:21:28.966765'),
('r8pr0p63fxl2jwxxa4n9bsuznwhu2byb', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wOsGO:PM-mQ9BpWuQ-Gf_ADlO0pefguoETOWHWTY8oROY1mvE', '2026-06-01 07:19:44.028249'),
('t4qlryufnew4rg97lzeywr04z8jkjfkr', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wNV0k:023flMJETps9_V9P8uF-pW8Tdj_UHQlN_ug0dtjXd7Y', '2026-05-28 12:17:54.771836'),
('tupot2uewh5j69xy8tvk24horrzrxmw1', '.eJxVjMsOwiAUBf-FtSE8SqEu3fsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLM7CKHH6HRHokepO-A711iS1ui4zyl2RB-3y2jg9L4f7d1Cgl29tjTNq8tYBa7TeaW8BORjShJ4CuKAygtXeKSTQOYQ8UsjJDBmHkSfx_gDyYzgr:1wRryQ:SCWv9ayLZGneS4ouT8Zv8Nt7yRbqpgph13Ol8i_sURw', '2026-06-09 13:37:34.737346'),
('ugt3hv1r2evrjinnrlh04r826p8q990e', '.eJxVjEEOwiAQRe_C2pABMhRcuvcMhBlAqoYmpV013t026UK3_733NxHiutSw9jyHMYmrUEpcfkeK_MrtIOkZ22OSPLVlHkkeijxpl_cp5fftdP8Oaux1ry1qw8lxBMLslTFgjfZo0qCcg4GQQIHVDJh1KUzgEblwQtqB8U58vuL9N18:1wQ3kl:_LLnL3Ufh-jRE2GPq0La0uf107PS8rKA2822CFb7cLo', '2026-06-04 13:47:59.253149'),
('upa3s76jxshyvu8guqvmuz95tskxmce9', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wNUtQ:YKLB0bc4lhjhJ-W23aO2i_V4EAI-N3zVp4d8MMrUPos', '2026-05-28 12:10:20.297338'),
('uvg1opnl4g08s1loc7hgcp45hpcs5kkq', '.eJxVjDEOwyAQBP9CHSG4sxGkTJ83oAPOwUkEkrErK3-PkVwkzRazs7sLT9ua_dZ48XMSV6GNuPzCQPHFpTfpSeVRZaxlXeYguyLPtsl7Tfy-ne7fQaaWj7VNCCMqRmONhclNABDQGFDKhREDa-AhEroBEyA7TcrgwWLoQSA-X9cmNyo:1wNmkS:a3CIPgBfDRX3aJCcmlLJGAmmk-VRtlYF9JS1zd0XsuE', '2026-05-29 07:14:16.638095'),
('vmv0lu6jwdh9r9zcmojqm563pc8ajf1z', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wPjUx:_Wkjf841TYQaHVxTPGHubYlNm6qarvUMn7ZGmrL5gvs', '2026-06-03 16:10:19.034653'),
('w16j42l7f0dgqjusm281i8xz0bbe1n3s', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wSXRN:F_mltdmwdmDw6mf_HXnfgvuAmw65NwuVfy5eBT4s_Qk', '2026-06-11 09:54:13.858838'),
('xe1e2bvqb51is7xuec0z3y1chwvanky6', '.eJxVjEEOwiAQRe_C2hDKSKEu3fcMDcPMSNVAUtqV8e7apAvd_vfef6kpbmuetsbLNJO6KNup0--IMT247ITusdyqTrWsy4x6V_RBmx4r8fN6uH8HObb8rT3bGHxKwSIAiHNMfW8GpkBC7Gw3IHsxIOLRAZpkhPEMiZEZIYJ6fwAnxzmF:1wSalw:wJDVRaeksfttHMPHXOsmZYUgK2ePEWyCbTOWdugeMbI', '2026-06-11 13:27:40.353220'),
('y6pfqyfpyy33awultj5zikbobyhww2q8', '.eJxVjDsOwjAQBe_iGlnr9S-mpOcM1tpr4wBKpDipEHeHSCmgfTPzXiLStra49bLEkcVZKBCn3zFRfpRpJ3yn6TbLPE_rMia5K_KgXV5nLs_L4f4dNOrtW1ukBEYjaUA9eAM0ZGKuaNiVEhBcBgxJJfSKdeAaUrZA3hlbDXgj3h_zqTeI:1wQN06:oP5_wxyk0eJQ24h6_yeSoMAyIm7JCkl9YvLr4bb_dao', '2026-06-05 10:21:06.419119'),
('ydknm9skgnkmrbdu1icw2kbf9s2vz3ci', '.eJxVjEEOwiAQRe_C2hBAZmhduu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIiDIjT7xiIH6nuJN6p3prkVtdlDnJX5EG7nFpMz-vh_h0U6uVbIyjipDRlZxFdBK1NyngOEKJDgDECs2agNFoDaggAObM1YTDKOUTx_gADejes:1wRqQ3:g7jc0oXKT__JHv24APUgBmnRt2qKRivpEsUoDfP17W4', '2026-06-09 11:57:59.790745'),
('ynxqi2kh6g2y26phvlysqmu08bvjwx2n', '.eJxVjDsOwjAQBe_iGlnr9S-mpOcM1tpr4wBKpDipEHeHSCmgfTPzXiLStra49bLEkcVZKBCn3zFRfpRpJ3yn6TbLPE_rMia5K_KgXV5nLs_L4f4dNOrtW1ukBEYjaUA9eAM0ZGKuaNiVEhBcBgxJJfSKdeAaUrZA3hlbDXgj3h_zqTeI:1wNT8e:6zuT2UUNLVu2z5qGANrNZ57EOjmzfgALUTlzf-QCogg', '2026-05-28 10:17:56.533883'),
('z8mtyuifw09fe6z5u53678j36p4orv9l', '.eJxVjDEOwjAMRe-SGUVxlDYxIztnqBzbpQWUSE07Ie4OlTrA-t97_2UG2tZp2JouwyzmbMCcfrdM_NCyA7lTuVXLtazLnO2u2IM2e62iz8vh_h1M1KZv7RBc1hCjCAJTr5oYkxt970fuAo0BYyeIHpL0KaMSMwXwQFEdZzbvD-mHOGw:1wSEVm:i-SMft--Hc4QD2Ht0DqaRvbWlweHvz2lrR0QDJGN3lQ', '2026-06-10 13:41:30.163490'),
('zywlfc0a66b49v7zuhzmo33xatu4g21j', '.eJxVjEEOwiAQRe_C2hBAZmhduu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIiDIjT7xiIH6nuJN6p3prkVtdlDnJX5EG7nFpMz-vh_h0U6uVbIyjipDRlZxFdBK1NyngOEKJDgDECs2agNFoDaggAObM1YTDKOUTx_gADejes:1wSdQE:5QDdANQtQapfPNf3JHlIWfejS_s_DAC6sM6oR8I8Sd0', '2026-06-11 16:17:26.956829');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `accounts_booking_category_id_b12c295b_fk_core_category_id` (`category_id`),
  ADD KEY `accounts_booking_service_id_f2b5d13b_fk_core_categoryservice_id` (`service_id`),
  ADD KEY `accounts_booking_user_id_2ea98fac_fk_accounts_user_id` (`user_id`),
  ADD KEY `accounts_booking_vendor_id_9bc891ab_fk_accounts_user_id` (`vendor_id`),
  ADD KEY `accounts_booking_admin_id_3e52e328_fk_accounts_user_id` (`admin_id`);

--
-- Indexes for table `accounts_bookinghistory`
--
ALTER TABLE `accounts_bookinghistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_bookinghist_booking_id_08af0d23_fk_accounts_` (`booking_id`),
  ADD KEY `accounts_bookinghist_updated_by_id_3ad851f4_fk_accounts_` (`updated_by_id`);

--
-- Indexes for table `accounts_customerremark`
--
ALTER TABLE `accounts_customerremark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_customerrem_booking_id_8abeb4fb_fk_accounts_` (`booking_id`),
  ADD KEY `accounts_customerremark_user_id_be22136a_fk_accounts_user_id` (`user_id`),
  ADD KEY `accounts_customerremark_vendor_id_efd07df4_fk_accounts_user_id` (`vendor_id`),
  ADD KEY `accounts_customerrem_resolved_by_id_a2fac6b1_fk_accounts_` (`resolved_by_id`);

--
-- Indexes for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_notification_booking_id_a9db6da0_fk_accounts_booking_id` (`booking_id`),
  ADD KEY `accounts_notification_payment_id_c90e7506_fk_accounts_payment_id` (`payment_id`),
  ADD KEY `accounts_notification_user_id_30e6cfc5_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `accounts_payment`
--
ALTER TABLE `accounts_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_payment_booking_id_3c920187_fk_accounts_booking_id` (`booking_id`),
  ADD KEY `accounts_payment_service_id_c62d76d1_fk_core_categoryservice_id` (`service_id`),
  ADD KEY `accounts_payment_vendor_id_4ce1ef96_fk_accounts_user_id` (`vendor_id`);

--
-- Indexes for table `accounts_termsacceptance`
--
ALTER TABLE `accounts_termsacceptance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_termsaccept_customer_id_5ee28101_fk_accounts_` (`customer_id`),
  ADD KEY `accounts_termsaccept_booking_id_578c4bb0_fk_accounts_` (`booking_id`);

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `accounts_user_created_by_id_ba68b522_fk_accounts_user_id` (`created_by_id`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_services`
--
ALTER TABLE `accounts_user_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_services_user_id_categoryservice_id_5ace8a8a_uniq` (`user_id`,`categoryservice_id`),
  ADD KEY `accounts_user_servic_categoryservice_id_c5a4ae5a_fk_core_cate` (`categoryservice_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `accounts_vendorprofile`
--
ALTER TABLE `accounts_vendorprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_vendorprofile_category_id_30625fe1_fk_core_category_id` (`category_id`),
  ADD KEY `accounts_vendorprofile_locality_024fcc8f` (`locality`),
  ADD KEY `accounts_vendorprofile_city_d3071945` (`city`),
  ADD KEY `accounts_vendorprofile_postal_code_45234c24` (`postal_code`);

--
-- Indexes for table `accounts_vendorprofile_services`
--
ALTER TABLE `accounts_vendorprofile_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_vendorprofile_s_vendorprofile_id_categor_f909212b_uniq` (`vendorprofile_id`,`categoryservice_id`),
  ADD KEY `accounts_vendorprofi_categoryservice_id_8422776d_fk_core_cate` (`categoryservice_id`);

--
-- Indexes for table `accounts_visitor`
--
ALTER TABLE `accounts_visitor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_visitor_ip_address_5a68a43b_uniq` (`ip_address`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_category`
--
ALTER TABLE `core_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `core_categoryservice`
--
ALTER TABLE `core_categoryservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_categoryservice_category_id_043296f4_fk_core_category_id` (`category_id`);

--
-- Indexes for table `core_contact`
--
ALTER TABLE `core_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_footer`
--
ALTER TABLE `core_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_herobanner`
--
ALTER TABLE `core_herobanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_job`
--
ALTER TABLE `core_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_jobapplication`
--
ALTER TABLE `core_jobapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_jobapplication_job_id_b1d0ac28_fk_core_job_id` (`job_id`);

--
-- Indexes for table `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_servicefeedback`
--
ALTER TABLE `core_servicefeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_servicescards`
--
ALTER TABLE `core_servicescards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `accounts_bookinghistory`
--
ALTER TABLE `accounts_bookinghistory`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `accounts_customerremark`
--
ALTER TABLE `accounts_customerremark`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_payment`
--
ALTER TABLE `accounts_payment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts_termsacceptance`
--
ALTER TABLE `accounts_termsacceptance`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_services`
--
ALTER TABLE `accounts_user_services`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `accounts_vendorprofile`
--
ALTER TABLE `accounts_vendorprofile`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_vendorprofile_services`
--
ALTER TABLE `accounts_vendorprofile_services`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `accounts_visitor`
--
ALTER TABLE `accounts_visitor`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `core_category`
--
ALTER TABLE `core_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_categoryservice`
--
ALTER TABLE `core_categoryservice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_contact`
--
ALTER TABLE `core_contact`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_footer`
--
ALTER TABLE `core_footer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_herobanner`
--
ALTER TABLE `core_herobanner`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_job`
--
ALTER TABLE `core_job`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_jobapplication`
--
ALTER TABLE `core_jobapplication`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_servicefeedback`
--
ALTER TABLE `core_servicefeedback`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_servicescards`
--
ALTER TABLE `core_servicescards`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_booking`
--
ALTER TABLE `accounts_booking`
  ADD CONSTRAINT `accounts_booking_admin_id_3e52e328_fk_accounts_user_id` FOREIGN KEY (`admin_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `accounts_booking_category_id_b12c295b_fk_core_category_id` FOREIGN KEY (`category_id`) REFERENCES `core_category` (`id`),
  ADD CONSTRAINT `accounts_booking_service_id_f2b5d13b_fk_core_categoryservice_id` FOREIGN KEY (`service_id`) REFERENCES `core_categoryservice` (`id`),
  ADD CONSTRAINT `accounts_booking_user_id_2ea98fac_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `accounts_booking_vendor_id_9bc891ab_fk_accounts_user_id` FOREIGN KEY (`vendor_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_bookinghistory`
--
ALTER TABLE `accounts_bookinghistory`
  ADD CONSTRAINT `accounts_bookinghist_booking_id_08af0d23_fk_accounts_` FOREIGN KEY (`booking_id`) REFERENCES `accounts_booking` (`id`),
  ADD CONSTRAINT `accounts_bookinghist_updated_by_id_3ad851f4_fk_accounts_` FOREIGN KEY (`updated_by_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_customerremark`
--
ALTER TABLE `accounts_customerremark`
  ADD CONSTRAINT `accounts_customerrem_booking_id_8abeb4fb_fk_accounts_` FOREIGN KEY (`booking_id`) REFERENCES `accounts_booking` (`id`),
  ADD CONSTRAINT `accounts_customerrem_resolved_by_id_a2fac6b1_fk_accounts_` FOREIGN KEY (`resolved_by_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `accounts_customerremark_user_id_be22136a_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `accounts_customerremark_vendor_id_efd07df4_fk_accounts_user_id` FOREIGN KEY (`vendor_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD CONSTRAINT `accounts_notification_booking_id_a9db6da0_fk_accounts_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `accounts_booking` (`id`),
  ADD CONSTRAINT `accounts_notification_payment_id_c90e7506_fk_accounts_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `accounts_payment` (`id`),
  ADD CONSTRAINT `accounts_notification_user_id_30e6cfc5_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_payment`
--
ALTER TABLE `accounts_payment`
  ADD CONSTRAINT `accounts_payment_booking_id_3c920187_fk_accounts_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `accounts_booking` (`id`),
  ADD CONSTRAINT `accounts_payment_service_id_c62d76d1_fk_core_categoryservice_id` FOREIGN KEY (`service_id`) REFERENCES `core_categoryservice` (`id`),
  ADD CONSTRAINT `accounts_payment_vendor_id_4ce1ef96_fk_accounts_user_id` FOREIGN KEY (`vendor_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_termsacceptance`
--
ALTER TABLE `accounts_termsacceptance`
  ADD CONSTRAINT `accounts_termsaccept_booking_id_578c4bb0_fk_accounts_` FOREIGN KEY (`booking_id`) REFERENCES `accounts_booking` (`id`),
  ADD CONSTRAINT `accounts_termsaccept_customer_id_5ee28101_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD CONSTRAINT `accounts_user_created_by_id_ba68b522_fk_accounts_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_services`
--
ALTER TABLE `accounts_user_services`
  ADD CONSTRAINT `accounts_user_servic_categoryservice_id_c5a4ae5a_fk_core_cate` FOREIGN KEY (`categoryservice_id`) REFERENCES `core_categoryservice` (`id`),
  ADD CONSTRAINT `accounts_user_services_user_id_b4f9ad64_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_vendorprofile`
--
ALTER TABLE `accounts_vendorprofile`
  ADD CONSTRAINT `accounts_vendorprofile_category_id_30625fe1_fk_core_category_id` FOREIGN KEY (`category_id`) REFERENCES `core_category` (`id`),
  ADD CONSTRAINT `accounts_vendorprofile_user_id_320a0e9f_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_vendorprofile_services`
--
ALTER TABLE `accounts_vendorprofile_services`
  ADD CONSTRAINT `accounts_vendorprofi_categoryservice_id_8422776d_fk_core_cate` FOREIGN KEY (`categoryservice_id`) REFERENCES `core_categoryservice` (`id`),
  ADD CONSTRAINT `accounts_vendorprofi_vendorprofile_id_ef48a97d_fk_accounts_` FOREIGN KEY (`vendorprofile_id`) REFERENCES `accounts_vendorprofile` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_categoryservice`
--
ALTER TABLE `core_categoryservice`
  ADD CONSTRAINT `core_categoryservice_category_id_043296f4_fk_core_category_id` FOREIGN KEY (`category_id`) REFERENCES `core_category` (`id`);

--
-- Constraints for table `core_jobapplication`
--
ALTER TABLE `core_jobapplication`
  ADD CONSTRAINT `core_jobapplication_job_id_b1d0ac28_fk_core_job_id` FOREIGN KEY (`job_id`) REFERENCES `core_job` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
