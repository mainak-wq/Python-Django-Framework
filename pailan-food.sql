-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 12:31 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pailan-food`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add foodtable', 7, 'add_foodtable'),
(26, 'Can change foodtable', 7, 'change_foodtable'),
(27, 'Can delete foodtable', 7, 'delete_foodtable'),
(28, 'Can view foodtable', 7, 'view_foodtable'),
(29, 'Can add other user', 8, 'add_otheruser'),
(30, 'Can change other user', 8, 'change_otheruser'),
(31, 'Can delete other user', 8, 'delete_otheruser'),
(32, 'Can view other user', 8, 'view_otheruser'),
(33, 'Can add foodapp', 9, 'add_foodapp'),
(34, 'Can change foodapp', 9, 'change_foodapp'),
(35, 'Can delete foodapp', 9, 'delete_foodapp'),
(36, 'Can view foodapp', 9, 'view_foodapp'),
(49, 'Can add userdetails', 13, 'add_userdetails'),
(50, 'Can change userdetails', 13, 'change_userdetails'),
(51, 'Can delete userdetails', 13, 'delete_userdetails'),
(52, 'Can view userdetails', 13, 'view_userdetails');

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
  `date_joined` datetime(6) NOT NULL,
  `address` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `address`) VALUES
(2, 'pbkdf2_sha256$320000$VmssflGSrfQvTxLfWMntHf$CgaJUyM51lmMv+HXaqeVdBF8NFv/traHcvR9xM3hRlE=', NULL, 0, 'mainak-wq', 'Mainak ', 'Deb', 'Debjyotimalik62@gmail.com', 0, 1, '2022-05-07 16:39:57.763358', ''),
(3, 'pbkdf2_sha256$320000$kpzzEvLHgVJUoOxi3AldKX$kHvwSlE7cjNgviAj2oEMqfBS9D1TOzaBV6iI+hEfXrE=', '2022-05-31 06:53:00.585380', 1, 'root', '', '', 'root@root.com', 1, 1, '2022-05-07 16:41:35.624997', ''),
(4, 'pbkdf2_sha256$320000$6PPwDRHITpiyzJD5x61JkZ$eR/Q9uAVKpjgATNfNYsDbSMF4TjIpYBxk7EMD6UtFqM=', '2022-06-03 04:44:24.306945', 0, 'rootm', 'Mainak ', 'Deb', 'Debjyotimalik62@gmail.com', 0, 1, '2022-05-12 08:07:19.988071', ''),
(5, 'pbkdf2_sha256$320000$9WkhUzasdIZztU3FrkuWnA$t6TirMZdTRvGap95GmdHPJiIF7wlX2PVq0sBJ+ld3v0=', '2022-05-24 09:54:14.090996', 0, 'tuhin', 'tuhin', 'samanta', 'tuhin@gmail.com', 0, 1, '2022-05-12 16:19:09.777293', ''),
(6, 'pbkdf2_sha256$320000$gfEzAq3YzS1ITjpoRKVpSA$H4Hbymce/kUMDPrRTtSKSP3h7ZKy4QAUoKDh5PjOJ1s=', NULL, 0, 'imsu123', 'subho', 'panja', 'ims@gmail.com', 0, 1, '2022-05-15 05:54:49.440489', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint(20) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `caption`, `price`, `image`) VALUES
(6, 'hello world', '2501', 'images/c_biriyani_t8W6iHR.jpg'),
(13, 'biriyanni', '150', 'images/chicken-biryani.png'),
(14, 'rice', '124', 'images/choco-mousse.png'),
(16, 'chicken fry', '150', 'images/chicken-reshmi-kebab_IVh1Gge.png');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-07 16:43:37.950306', '1', 'user@123', 3, '', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'foodapp', 'foodapp'),
(7, 'foodapp', 'foodtable'),
(8, 'foodapp', 'otheruser'),
(13, 'foodapp', 'userdetails'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-05 08:15:43.225827'),
(2, 'auth', '0001_initial', '2022-05-05 08:15:43.615866'),
(3, 'admin', '0001_initial', '2022-05-05 08:15:43.749373'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-05 08:15:43.759266'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-05 08:15:43.769277'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-05 08:15:43.824445'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-05 08:15:43.840875'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-05 08:15:43.859096'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-05 08:15:43.868451'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-05 08:15:43.902690'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-05 08:15:43.907100'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-05 08:15:43.916077'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-05 08:15:43.930136'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-05 08:15:43.946244'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-05 08:15:43.962200'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-05 08:15:43.973164'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-05 08:15:43.987416'),
(18, 'sessions', '0001_initial', '2022-05-05 08:15:44.013202'),
(19, 'foodapp', '0001_initial', '2022-05-06 18:45:39.109909');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3cau4x77j3cbrrk82gnvupar5dy5u0i6', '.eJxVjEEOgjAQRe_StWkKxc7UpXvO0ExnBosaSCisjHdXEha6_e-9_zKJtrWkreqSRjEX483pd8vED512IHeabrPleVqXMdtdsQettp9Fn9fD_TsoVMu3jpI7QUUngwKib3NsgIYI4oIGCZ7iGTU4CAwtAnMHARSJY9t4jt68P-uQN6k:1nnNVt:pkvAiGe-2FjRXf90ZBSQ5Z3EnYjaXgwSdqXdDxwAICA', '2022-05-21 16:42:37.691829'),
('ao7bld2ihngdwqnuiguzxjydvrzu9y9e', '.eJxVjDsOwjAQBe_iGln-4Q8lPWewdu01DiBbipMKcXcSKQW0b2bem0VYlxrXQXOcMrsww06_G0J6UttBfkC7d556W-YJ-a7wgw5-65le18P9O6gw6lZ7JO0kIoVgdRFOKVJYhJfKW4EeTQoSIATj0Emym3SWQrmstS4BHbHPF9LPNyM:1ntmq6:FIgOH5hoXwQXp2fwi5MhfDNRTWfwCB7eFFPsTUsXuhM', '2022-06-08 08:57:58.542196'),
('sxb7ivwzc6i5z4ab4p8owz650t4ibkz0', '.eJxVjEEOgjAQRe_StWkKxc7UpXvO0ExnBosaSCisjHdXEha6_e-9_zKJtrWkreqSRjEX483pd8vED512IHeabrPleVqXMdtdsQettp9Fn9fD_TsoVMu3jpI7QUUngwKib3NsgIYI4oIGCZ7iGTU4CAwtAnMHARSJY9t4jt68P-uQN6k:1nvvkS:Pa_Tp7lXtGsMNm6U_sfmwvJ-eQVJIlGONpPREtEOgiM', '2022-06-14 06:53:00.593379'),
('t0ndoigbyvbtbkon69wfg8pgbzwjlqs2', '.eJxVjDsOwjAQBe_iGln-4Q8lPWewdu01DiBbipMKcXcSKQW0b2bem0VYlxrXQXOcMrsww06_G0J6UttBfkC7d556W-YJ-a7wgw5-65le18P9O6gw6lZ7JO0kIoVgdRFOKVJYhJfKW4EeTQoSIATj0Emym3SWQrmstS4BHbHPF9LPNyM:1nwzAe:pKcV7NAe2bnDETmJu_HZqI0WJ-NZmCxx7w6SIeSOAvE', '2022-06-17 04:44:24.313849');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `dish` varchar(254) NOT NULL,
  `username` varchar(254) NOT NULL,
  `phone` varchar(254) NOT NULL,
  `address` varchar(254) NOT NULL,
  `price` varchar(254) NOT NULL,
  `quantity` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `fname`, `lname`, `username`, `phone`, `email`, `address`, `password`) VALUES
(1, 'Debjyoti', 'Malik', 'dmvdsjkvklsndv', '9875642097', 'Debjyotimalik62@gmail.com', 'Vill-Udairampur,post-kanyanagar,ps-bishnupur,dist-south 24 pgs,state-west Bengal pin,743398', 'dm v'),
(2, 'Debjyoti', 'Malik', 'sdsafsc', '9875642097', 'Debjyotimalik62@gmail.com', 'Vill-Udairampur,post-kanyanagar,ps-bishnupur,dist-south 24 pgs,state-west Bengal pin,743398', 'scscscsscscsc'),
(3, 'dsdvsdv', 'sdvsdv', 'sdvdsvsdv', 'sdvsdvsdv', 'Debjyotimalik62@gmail.com', 'Vill-Udairampur,post-kanyanagar,ps-bishnupur,dist-south 24 pgs,state-west Bengal pin,743398', 'ssssssssssss');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
