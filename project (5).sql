-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 03:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `a_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `a_status` varchar(50) NOT NULL,
  `a_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
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
(24, 'Can view session', 6, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-08 09:32:18.157250'),
(2, 'auth', '0001_initial', '2020-03-08 09:32:20.337472'),
(3, 'admin', '0001_initial', '2020-03-08 09:32:30.046501'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-08 09:32:32.163270'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-08 09:32:32.260591'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-08 09:32:33.240553'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-08 09:32:33.376916'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-08 09:32:33.691660'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-08 09:32:33.822913'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-08 09:32:35.418528'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-08 09:32:35.512634'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-08 09:32:35.624217'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-08 09:32:35.942835'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-08 09:32:36.146334'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-08 09:32:36.282697'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-08 09:32:36.348873'),
(17, 'sessions', '0001_initial', '2020-03-08 09:32:36.768662');

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
('9egrpx9r3tkqbm20qd7ytl4gitb0flp6', 'NWNiYTAzNTk3NzM0MGNkMzE1ZDg3MGRiODlkOGExZmJjNjhjNWI0YTp7InN0dWRlbnQiOjE3LCJwcm9qZWN0Y29vcmRpbmF0b3IiOjV9', '2020-03-28 13:44:13.697769'),
('jujmvhnc4jj96n3fygtvjplks39crere', 'Y2Y3M2UzOWJjNDVkNGQzYTI4MjYzZjI3MjdhODU1NmMwZGM1NzBmZTp7InN0dWRlbnQiOjE2fQ==', '2020-03-23 08:11:35.009689'),
('xdkkitsuyc4gebeelg64hrqrp0dolq1b', 'NTY5YmFmNjVjMzk5MjI1MjMwOWNmMTM2M2Q3YzI0MjEzOTRjMDFjZDp7InN0dWRlbnQiOjE2LCJwcm9qZWN0Y29vcmRpbmF0b3IiOjV9', '2020-03-24 05:06:44.846667');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `f_date` date NOT NULL,
  `feedback` text NOT NULL,
  `rating` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `schedule_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `internalmark`
--

CREATE TABLE `internalmark` (
  `in_id` int(11) NOT NULL,
  `p id` int(11) NOT NULL,
  `systemdesgin` int(11) NOT NULL,
  `intermediatemark` int(11) NOT NULL,
  `internalmark` int(11) NOT NULL,
  `final mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `uid` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `uid`, `username`, `password`, `type`) VALUES
(1, 5, 'sreeji565@gmail.com', '12345', 'projectcoordinator'),
(2, 16, 'arathi12@gmail.com', '1234567', 'student'),
(3, 17, 'haritharajith@gmail.com', '1234', 'student'),
(4, 18, 'tinturaj@gmail.com', 'tintu', 'student'),
(5, 19, 'achu123@gmail.com', 'achu123', 'student'),
(6, 6, 'sheeba12@gmail.com', '99999', 'teacher'),
(8, 7, 'athira@gmail.com', 'athira', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `m_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_type` varchar(50) NOT NULL,
  `p_date` date NOT NULL,
  `p_status` varchar(50) NOT NULL,
  `p_languge` varchar(50) NOT NULL,
  `p_remark` text NOT NULL,
  `abstract` varchar(100) NOT NULL,
  `desgin document` varchar(100) NOT NULL,
  `full document` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `st_id`, `p_name`, `p_type`, `p_date`, `p_status`, `p_languge`, `p_remark`, `abstract`, `desgin document`, `full document`) VALUES
(1, 12, 'Academic project management', 'Main project', '2020-02-20', 'approved', 'Python', '', 'prr.pdf', 'prr.pdf', ''),
(2, 11, 'Zone beats', 'Mini Project', '2020-02-26', 'reject', '', 'common', 'project4 - Copy', '', ''),
(7, 13, 'echit', 'Main project', '2020-03-09', 'approved', '', '', 'UI  DESGIN', '', ''),
(8, 14, 'sms', 'Main project', '2020-03-11', 'approved', '', '', 'Zone Beats-1 - Copy', '', ''),
(9, 16, 'Bid-it', 'Main project', '2020-03-10', 'reject', '', 'common subject', 'arsha', '', ''),
(10, 17, 'memory', 'Mini Project', '2020-03-08', 'pending', 'Php', '', 'FileHandler', 'diagrams', 'Git');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `r_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `batch` year(4) NOT NULL,
  `date` date NOT NULL,
  `project coordinator` varchar(100) NOT NULL,
  `HOD` varchar(100) NOT NULL,
  `internal guide` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`r_id`, `t_id`, `batch`, `date`, `project coordinator`, `HOD`, `internal guide`) VALUES
(2, 1, 2020, '2020-03-18', 'Sabna', 'Ajaya kumar k k', 'Remmya');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `sch_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(50) NOT NULL,
  `st_semester` varchar(50) NOT NULL,
  `st_branch` varchar(50) NOT NULL,
  `st_year` year(4) NOT NULL,
  `st_contact` varchar(50) NOT NULL,
  `st_email` varchar(50) NOT NULL,
  `st_batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `st_name`, `st_semester`, `st_branch`, `st_year`, `st_contact`, `st_email`, `st_batch`) VALUES
(11, 'Anjaya', 'S6', 'MCA', 2020, '9876543211', 'anjayasudheer@gmail.com', 2020),
(12, 'Abina', 'S6', 'MCA', 2020, '9878765432', 'abina@gmail.com', 2020),
(14, 'Arsha p k', 'S6', 'MCA', 2020, '9876543210', 'arsharajith@gmail.com', 2020),
(16, 'Arathi', 'S5', 'mca', 2020, '9087676543', 'arathi12@gmail.com', 2020),
(17, 'Haritha P K', 'S5', 'MCA', 2019, '9876765432', 'haritharajith@gmail.com', 2020),
(18, 'tintu', 'S5', 'MCA', 2021, '9674321121', 'tinturaj@gmail.com', 2020),
(19, 'Aswathi', 'S4', 'MCA', 2020, '9087121212', 'achu123@gmail.com', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_email` varchar(50) NOT NULL,
  `t_contact` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `t_email`, `t_contact`, `qualification`, `experience`, `address`) VALUES
(4, 'SREEJITH', 'sreejith987@gmail.com', '9876543210', 'MSC computer science', '3', 'KATTAKAL '),
(5, 'sreejish', 'sreeji565@gmail.com', '9876569090', 'mphill', '6', 'kakkanad'),
(6, 'Sheeba', 'sheeba12@gmail.com', '9878790989', 'mphill', '5', 'rose'),
(7, 'athira', 'athira@gmail.com', '9876543232', 'mca', '2', 'kattakal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`a_id`);

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
-- Indexes for table `internalmark`
--
ALTER TABLE `internalmark`
  ADD PRIMARY KEY (`in_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
