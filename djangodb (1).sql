-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2022 at 04:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `Title` varchar(20) NOT NULL,
  `Alubm_ID` int(11) NOT NULL,
  `Copyright_Data` varchar(100) NOT NULL,
  `Format` varchar(100) NOT NULL,
  `Producer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add album', 7, 'add_album'),
(26, 'Can change album', 7, 'change_album'),
(27, 'Can delete album', 7, 'delete_album'),
(28, 'Can view album', 7, 'view_album'),
(29, 'Can add full_ address', 8, 'add_full_address'),
(30, 'Can change full_ address', 8, 'change_full_address'),
(31, 'Can delete full_ address', 8, 'delete_full_address'),
(32, 'Can view full_ address', 8, 'view_full_address'),
(33, 'Can add instrument', 9, 'add_instrument'),
(34, 'Can change instrument', 9, 'change_instrument'),
(35, 'Can delete instrument', 9, 'delete_instrument'),
(36, 'Can view instrument', 9, 'view_instrument'),
(37, 'Can add musician', 10, 'add_musician'),
(38, 'Can change musician', 10, 'change_musician'),
(39, 'Can delete musician', 10, 'delete_musician'),
(40, 'Can view musician', 10, 'view_musician'),
(41, 'Can add song', 11, 'add_song'),
(42, 'Can change song', 11, 'change_song'),
(43, 'Can delete song', 11, 'delete_song'),
(44, 'Can view song', 11, 'view_song'),
(45, 'Can add performance', 12, 'add_performance'),
(46, 'Can change performance', 12, 'change_performance'),
(47, 'Can delete performance', 12, 'delete_performance'),
(48, 'Can view performance', 12, 'view_performance'),
(49, 'Can add instrument_ player', 13, 'add_instrument_player'),
(50, 'Can change instrument_ player', 13, 'change_instrument_player'),
(51, 'Can delete instrument_ player', 13, 'delete_instrument_player'),
(52, 'Can view instrument_ player', 13, 'view_instrument_player');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$gMk3Um1AOkmYMdJ7QCWJd3$v6gBuIbctCb//MAYULAzKPm/0F16HugbzuWQFEaAYOc=', '2022-08-03 02:23:52.449045', 1, 'sagar', '', '', 'sagar@gmail.com', 1, 1, '2022-08-02 13:23:20.597337');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-02 13:24:41.426986', '576', 'Phone Number: 576', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-08-02 13:24:43.449551', '8546767', 'SSN: 8546767 \n  Name: 456', 1, '[{\"added\": {}}]', 10, 1),
(3, '2022-08-02 13:24:45.538961', '756', 'Album ID:756', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-08-02 16:53:59.875675', '9898989', 'Phone Number: 9898989', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-08-02 16:54:02.606427', '10001', 'SSN: 10001 \n  Name: sagar', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-08-02 16:54:25.281420', '48491', 'Album ID:48491', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-08-02 16:54:56.196150', '101', 'Instrument ID:101', 1, '[{\"added\": {}}]', 9, 1),
(8, '2022-08-02 16:54:58.459354', '1', 'Social Security Number :SSN: 10001 \n  Name: sagar', 1, '[{\"added\": {}}]', 13, 1),
(9, '2022-08-02 16:55:36.978134', '10101', 'Instrument ID:10101', 1, '[{\"added\": {}}]', 9, 1),
(10, '2022-08-02 16:55:38.997055', '2', 'Social Security Number :SSN: 10001 \n  Name: sagar', 1, '[{\"added\": {}}]', 13, 1),
(11, '2022-08-02 16:56:21.660529', '56768767', 'SSN: 56768767 \n  Name: asd', 1, '[{\"added\": {}}]', 10, 1),
(12, '2022-08-02 16:57:10.055015', '14', 'Album ID:14', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-08-02 16:57:23.423748', 'teej', 'SONG ID: 1425', 1, '[{\"added\": {}}]', 11, 1),
(14, '2022-08-02 16:58:17.551679', '1', 'SSN :SSN: 10001 \n  Name: sagar', 1, '[{\"added\": {}}]', 12, 1),
(15, '2022-08-02 16:58:28.088483', '2', 'SSN :SSN: 10001 \n  Name: sagar', 1, '[{\"added\": {}}]', 12, 1),
(16, '2022-08-02 16:58:54.394956', '1475', 'SONG ID: 537', 1, '[{\"added\": {}}]', 11, 1),
(17, '2022-08-03 02:24:16.278042', '48491', 'Album ID:48491', 3, '', 7, 1),
(18, '2022-08-03 02:24:16.284017', '756', 'Album ID:756', 3, '', 7, 1),
(19, '2022-08-03 02:24:16.288510', '14', 'Album ID:14', 3, '', 7, 1),
(20, '2022-08-03 02:24:25.930780', '9898989', 'Phone Number: 9898989', 3, '', 8, 1),
(21, '2022-08-03 02:24:25.935541', '576', 'Phone Number: 576', 3, '', 8, 1),
(22, '2022-08-03 02:24:36.919818', '10101', 'Instrument ID:10101', 3, '', 9, 1),
(23, '2022-08-03 02:24:36.925031', '101', 'Instrument ID:101', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'musicdatab', 'album'),
(8, 'musicdatab', 'full_address'),
(9, 'musicdatab', 'instrument'),
(13, 'musicdatab', 'instrument_player'),
(10, 'musicdatab', 'musician'),
(12, 'musicdatab', 'performance'),
(11, 'musicdatab', 'song'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-02 13:22:28.954428'),
(2, 'auth', '0001_initial', '2022-08-02 13:22:29.713566'),
(3, 'admin', '0001_initial', '2022-08-02 13:22:29.896563'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-02 13:22:29.916031'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-02 13:22:29.937203'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-02 13:22:30.149988'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-02 13:22:30.253026'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-02 13:22:30.283227'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-02 13:22:30.303165'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-02 13:22:30.382800'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-02 13:22:30.388992'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-02 13:22:30.409070'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-02 13:22:30.443410'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-02 13:22:30.482450'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-02 13:22:30.518060'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-02 13:22:30.547989'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-02 13:22:30.599446'),
(18, 'musicdatab', '0001_initial', '2022-08-02 13:22:31.375871'),
(19, 'sessions', '0001_initial', '2022-08-02 13:22:31.435050');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tieu2u6k0o9btu5trqsws73elja3fl6e', '.eJxVjMEOwiAQBf-FsyHQhQIevfcbCOyCVA0kpT0Z_9026UGvb2bem_mwrcVvPS1-JnZlkl1-txjwmeoB6BHqvXFsdV3myA-Fn7TzqVF63U7376CEXvZaRyQcpZBBgiLQzgBZrQ1gHiylrLQYyUTKCp1JuCuWrDBOKxsDDMA-X-BxN7A:1oJ436:1sU-T83mg1ou8HjLjE2mG4iHrHpZI7t7xgH-8qK9xSA', '2022-08-17 02:23:52.455305');

-- --------------------------------------------------------

--
-- Table structure for table `full_address`
--

CREATE TABLE `full_address` (
  `City` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `House_Num` varchar(20) NOT NULL,
  `Phone_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `Instrument_ID` int(11) NOT NULL,
  `Music_Key` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instrument_player`
--

CREATE TABLE `instrument_player` (
  `id` bigint(20) NOT NULL,
  `Instrument_ID_id` int(11) NOT NULL,
  `M_Sn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `musician`
--

CREATE TABLE `musician` (
  `M_Sn` int(11) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Mid_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Phone_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` bigint(20) NOT NULL,
  `M_Sn_id` int(11) NOT NULL,
  `Song_ID_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `Title` varchar(100) NOT NULL,
  `Song_ID` int(11) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Album_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Alubm_ID`),
  ADD KEY `album_Producer_id_0ea9c8dc_fk_musician_M_Sn` (`Producer_id`);

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
-- Indexes for table `full_address`
--
ALTER TABLE `full_address`
  ADD PRIMARY KEY (`Phone_Num`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`Instrument_ID`);

--
-- Indexes for table `instrument_player`
--
ALTER TABLE `instrument_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_player_Instrument_ID_id_8ba4101e_fk_instrumen` (`Instrument_ID_id`),
  ADD KEY `instrument_player_M_Sn_id_d95071d7_fk_musician_M_Sn` (`M_Sn_id`);

--
-- Indexes for table `musician`
--
ALTER TABLE `musician`
  ADD PRIMARY KEY (`M_Sn`),
  ADD KEY `musician_Phone_Num_c37a06df_fk_full_address_Phone_Num` (`Phone_Num`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `performance_M_Sn_id_6f843181_fk_musician_M_Sn` (`M_Sn_id`),
  ADD KEY `performance_Song_ID_id_a66268af_fk_song_Title` (`Song_ID_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Title`),
  ADD KEY `song_Album_ID_id_9b758c41_fk_album_Alubm_ID` (`Album_ID_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `instrument_player`
--
ALTER TABLE `instrument_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_Producer_id_0ea9c8dc_fk_musician_M_Sn` FOREIGN KEY (`Producer_id`) REFERENCES `musician` (`M_Sn`);

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

--
-- Constraints for table `instrument_player`
--
ALTER TABLE `instrument_player`
  ADD CONSTRAINT `instrument_player_Instrument_ID_id_8ba4101e_fk_instrumen` FOREIGN KEY (`Instrument_ID_id`) REFERENCES `instrument` (`Instrument_ID`),
  ADD CONSTRAINT `instrument_player_M_Sn_id_d95071d7_fk_musician_M_Sn` FOREIGN KEY (`M_Sn_id`) REFERENCES `musician` (`M_Sn`);

--
-- Constraints for table `musician`
--
ALTER TABLE `musician`
  ADD CONSTRAINT `musician_Phone_Num_c37a06df_fk_full_address_Phone_Num` FOREIGN KEY (`Phone_Num`) REFERENCES `full_address` (`Phone_Num`);

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_M_Sn_id_6f843181_fk_musician_M_Sn` FOREIGN KEY (`M_Sn_id`) REFERENCES `musician` (`M_Sn`),
  ADD CONSTRAINT `performance_Song_ID_id_a66268af_fk_song_Title` FOREIGN KEY (`Song_ID_id`) REFERENCES `song` (`Title`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_Album_ID_id_9b758c41_fk_album_Alubm_ID` FOREIGN KEY (`Album_ID_id`) REFERENCES `album` (`Alubm_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
