-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 05:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_cart`
--

CREATE TABLE `app_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_added` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_cart`
--

INSERT INTO `app_cart` (`id`, `quantity`, `date_added`, `product_id`, `user_id`) VALUES
(45, 1, '2024-02-15 15:39:02.841153', 6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `app_customer`
--

CREATE TABLE `app_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `locality` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `state` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_customer`
--

INSERT INTO `app_customer` (`id`, `name`, `locality`, `city`, `mobile`, `zipcode`, `state`, `user_id`) VALUES
(3, 'Rukai', 'baruipur', 'kolkata', 9999999, 700345, 'West Bengal', 18),
(4, 'rukai', 'baruipur', 'kolkata', 99999999, 700144, 'West Bengal', 18);

-- --------------------------------------------------------

--
-- Table structure for table `app_order`
--

CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_ordered` datetime(6) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_order`
--

INSERT INTO `app_order` (`id`, `quantity`, `date_ordered`, `payment_status`, `payment_id`, `address`, `product_id`, `user_id`) VALUES
(17, 1, '2024-02-15 05:48:13.588589', 'success', '', 'Baruipur', 12, 1),
(18, 1, '2024-02-15 05:48:13.588589', 'success', '', 'Baruipur', 2, 1),
(19, 1, '2024-02-15 05:48:13.604213', 'success', '', 'Baruipur', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `selling_price` double NOT NULL,
  `discounted_price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(10) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_product`
--

INSERT INTO `app_product` (`id`, `title`, `selling_price`, `discounted_price`, `description`, `category`, `product_image`) VALUES
(1, 'Tomato', 35, 30, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'SUMMER', 'product/tomato.jpg'),
(2, 'Brinjal', 40.99, 35.49, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'SUMMER', 'product/brinjal.jpg'),
(3, 'sweet potato', 45, 38, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'SUMMER', 'product/potato.jpg'),
(4, 'Beetroot', 38.99, 32.09, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'WINTER', 'product/beetroot.jpg'),
(5, 'Cucumber', 30, 28, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'WINTER', 'product/cucumber.jpg'),
(6, 'Pumpkin', 60.39, 50, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'WINTER', 'product/pumpkin.jpg'),
(7, 'Turnip', 35, 30, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'MONSOON', 'product/turnip.jpg'),
(8, 'Bitter grout', 28.99, 25, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'MONSOON', 'product/bitter.jpg'),
(9, 'Radish', 32, 30.23, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'MONSOON', 'product/radish.jpg'),
(10, 'Chillis', 30, 25, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'SUMMER', 'product/chilli.jpg'),
(11, 'Carrots', 38, 26, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'WINTER', 'product/carrot.jpg'),
(12, 'Beans', 32.03, 28, 'Welcome to the vegetable shop, all the products are fresh and pure, please apply, we are at your service, we have both online and offline application methods, order and get good quality vegetable and various grocery store products.  Products, our address and login and signup must be done to order, thanks customers or consumers', 'MONSOON', 'product/beans.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$c4o79X0mBAfkjzf9KKdiy5$tWHn+p6BNanlbGZiAPscZWTxPWN21hjRyHUeapf5IXs=', '2024-02-15 06:34:15.131467', 1, 'aman', '', '', 'aman@gmail.com', 1, 1, '2024-02-05 15:44:56.366840'),
(18, 'pbkdf2_sha256$720000$gKzWS8Qw0ARDb3FcoXWoRW$jlmLe008WPuD5gs1VlkuXonM1SLmVgnWPvXx7+YoUqk=', '2024-02-15 15:38:47.678076', 0, 'rukai', '', '', 'rukai@gmail.com', 0, 1, '2024-02-06 12:23:04.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-05 15:57:07.889581', '1', 'Tomato', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-02-05 15:58:12.055260', '2', 'Brinjal', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-02-05 15:59:13.989235', '3', 'sweet potato', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-02-05 16:00:14.180036', '4', 'Beetroot', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-02-05 16:01:53.135299', '5', 'Cucumber', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-02-05 16:02:48.218989', '6', 'Pumpkin', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-02-05 16:03:26.613948', '7', 'Turnip', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-02-05 16:04:37.210625', '8', 'Bitter grout', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-02-05 16:05:30.450042', '9', 'Radish', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-02-06 08:18:32.568402', '2', 'abcd', 3, '', 4, 1),
(11, '2024-02-06 08:18:38.398335', '4', 'rukai', 3, '', 4, 1),
(12, '2024-02-06 08:19:43.104025', '6', 'rukai', 3, '', 4, 1),
(13, '2024-02-06 08:49:53.323414', '13', 'anis', 3, '', 4, 1),
(14, '2024-02-06 08:50:02.649051', '10', 'akash', 3, '', 4, 1),
(15, '2024-02-06 08:50:08.460164', '12', 'sampriti', 3, '', 4, 1),
(16, '2024-02-06 08:50:14.569861', '11', 'tripti', 3, '', 4, 1),
(17, '2024-02-06 08:57:11.772766', '14', 'tripti', 3, '', 4, 1),
(18, '2024-02-06 09:04:51.695481', '15', 'asik', 3, '', 4, 1),
(19, '2024-02-06 09:07:32.564084', '16', 'kutta', 3, '', 4, 1),
(20, '2024-02-06 12:24:25.828884', '17', 'tukai', 3, '', 4, 1),
(21, '2024-02-06 12:25:28.807652', '18', 'rukai', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]', 4, 1),
(22, '2024-02-06 16:02:30.287460', '2', 'Cucumber', 3, '', 8, 1),
(23, '2024-02-06 16:02:30.289148', '1', 'ramij khan', 3, '', 8, 1),
(24, '2024-02-06 16:53:14.004988', '10', 'Chillis', 1, '[{\"added\": {}}]', 7, 1),
(25, '2024-02-06 16:54:11.882334', '11', 'Carrots', 1, '[{\"added\": {}}]', 7, 1),
(26, '2024-02-06 16:54:53.687819', '12', 'Beans', 1, '[{\"added\": {}}]', 7, 1),
(27, '2024-02-15 06:34:54.863398', '19', 'Amansk', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'app', 'cart'),
(8, 'app', 'customer'),
(10, 'app', 'order'),
(7, 'app', 'product'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-05 15:43:09.206893'),
(2, 'auth', '0001_initial', '2024-02-05 15:43:09.674575'),
(3, 'admin', '0001_initial', '2024-02-05 15:43:09.831754'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-05 15:43:09.847377'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-05 15:43:09.895444'),
(6, 'app', '0001_initial', '2024-02-05 15:43:09.924342'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-02-05 15:43:10.021390'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-02-05 15:43:10.077207'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-02-05 15:43:10.092902'),
(10, 'auth', '0004_alter_user_username_opts', '2024-02-05 15:43:10.106609'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-02-05 15:43:10.154978'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-02-05 15:43:10.156976'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-02-05 15:43:10.171532'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-02-05 15:43:10.210185'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-02-05 15:43:10.227351'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-02-05 15:43:10.249408'),
(17, 'auth', '0011_update_proxy_permissions', '2024-02-05 15:43:10.262399'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-02-05 15:43:10.282420'),
(19, 'sessions', '0001_initial', '2024-02-05 15:43:10.321319'),
(20, 'app', '0002_customer', '2024-02-06 13:29:32.162329'),
(21, 'app', '0003_cart', '2024-02-07 05:10:12.778735'),
(22, 'app', '0004_delete_cart', '2024-02-07 10:14:07.250193'),
(23, 'app', '0005_cart', '2024-02-07 10:15:13.795682'),
(24, 'app', '0006_remove_cart_date_added_alter_cart_quantity', '2024-02-07 10:57:13.631142'),
(25, 'app', '0007_delete_cart', '2024-02-08 10:46:02.443681'),
(26, 'app', '0008_cart', '2024-02-08 10:47:16.500290'),
(27, 'app', '0009_order', '2024-02-11 05:18:06.516861');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5d2ryz9upkpbstd84lf2l8lxo8igmmwk', '.eJxVjEEOwiAQAP_C2ZClhW3r0btvIEt3kaqBpLQn49-VpAe9zkzmpTztW_J7ldUvrM7KqNMvCzQ_JDfBd8q3oueSt3UJuiX6sFVfC8vzcrR_g0Q1tS2FHsxM2JOBkUxEdihDRwjOdDY6jjCBFQcQghvt8LUIggJuIkZQ7w_Nhzch:1rZ7Qo:95PVDb6WGDVzGyOIXqys0VOULZdUl8dpA5hCcLwr-tg', '2024-02-25 10:51:30.625994'),
('dhhqcdg2nwnk381074a08ssbhz1rphcu', '.eJxVjEEOwiAQRe_C2pBioUxduu8ZyDAzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqBOv2NEekjZCd-x3KqmWtZljnpX9EGbnirL83q4fwcZW_7WghFgFDQJOtMPlo0z5AGAjAOInFJkFPZkGWREF53tfWdp8Ik5nUm9PyLdORE:1radp1:0juZiYMy-XsUO_h88tLbA-5TGDQwzl0opcxr6P0DIzs', '2024-02-29 15:38:47.684386'),
('f54tabkvi6xngych9bp4o4k8y2pm3kwr', '.eJxVjDsOwjAQBe_iGln-fyjpcwZrd21wANlSnFSIu0OkFNC-mXkvlmBba9pGWdKc2ZlJdvrdEOhR2g7yHdqtc-ptXWbku8IPOvjUc3leDvfvoMKo39oVjN5H57UFaVREQ0aEQBCcsA5zsaCkDhCFFFflibyjbD0WYVBrUuz9AcMHN0E:1rY1IH:G0dLnghuV4cKBaDtk69WNcrVQYuAvmK9LrrwyGt-NvU', '2024-02-22 10:06:09.022892'),
('skn90l7al66jvbtxy73ws7da7zwceu97', '.eJxVjDsOwjAQRO_iGln-fyjpOYO1Xi84gGwpTirE3UmkFNCN5r2ZN0uwLjWtg-Y0FXZmkp1-uwz4pLaD8oB27xx7W-Yp813hBx382gu9Lof7d1Bh1G0dsy8SQAttLEKMoExWKtzICEfeSSBEq3PIKgofnLAGXCTcEnoqRbDPF97rN84:1raVK3:c_jFGnurRfPxQMBVD2uVjUXwM9v3-o4HnS7Ejv0Zm34', '2024-02-29 06:34:15.135845'),
('vnuvdinge171j5wu5kkdljtzu11obv6s', '.eJxVjDsOwjAQBe_iGll2Nv5R0nMGa9de4wBypDipEHeHSCmgfTPzXiLitta4dV7ilMVZaC9OvyNhenDbSb5ju80yzW1dJpK7Ig_a5XXO_Lwc7t9BxV6_tQUOnjOxDgwaFUJRhXLwYNCqbJWHIQEZosSD19o4A2VMyiUcrXNWvD8ZTzgE:1rZ8HF:uj5O8mBMMnvwDVUEbMVNs89tZvBQaPOun5G6Gmui62I', '2024-02-25 11:45:41.214582');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_cart_product_id_a4171918_fk_app_product_id` (`product_id`),
  ADD KEY `app_cart_user_id_2bf07879_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_customer`
--
ALTER TABLE `app_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_customer_user_id_e6e52921_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_order`
--
ALTER TABLE `app_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_order_product_id_02495a9c_fk_app_product_id` (`product_id`),
  ADD KEY `app_order_user_id_f25a9fc4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `app_cart`
--
ALTER TABLE `app_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `app_customer`
--
ALTER TABLE `app_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_order`
--
ALTER TABLE `app_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD CONSTRAINT `app_cart_product_id_a4171918_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_cart_user_id_2bf07879_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_customer`
--
ALTER TABLE `app_customer`
  ADD CONSTRAINT `app_customer_user_id_e6e52921_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_order`
--
ALTER TABLE `app_order`
  ADD CONSTRAINT `app_order_product_id_02495a9c_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_order_user_id_f25a9fc4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
