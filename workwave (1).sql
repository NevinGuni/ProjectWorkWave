-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 02:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workwave`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `parent_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Finance & Accounting', NULL, 'Handles all financial operations.', '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(2, 'Human Resources', NULL, 'Responsible for workforce management.', '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(3, 'Information Technology', NULL, 'Manages the organization\'s technology.', '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(4, 'Marketing & Communications', NULL, 'Develops and implements strategies to promote the organization.', '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(5, 'PHP Developer', 3, 'Designing and building web applications.', '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(6, 'Mobile Marketing', 4, 'Handles mobile marketing for the operation.', '2025-04-09 20:53:23', '2025-04-09 20:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT 'uploads/profile_pictures/default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `user_id`, `department_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `position`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Nevin', 'Guni', 'nevinguni@yahoo.com', '0693414567', 'Ali Demi,Tirane', 'Intern', 'uploads/profile_pictures/67f82b45984a0.jpg', '2025-04-09 20:53:23', '2025-04-10 18:34:13'),
(2, 3, 1, 'Kevin', 'Dushku', 'kevindushku@gmail.com', '0683131845', 'Komuna Parisit,Tirane', 'Financial Analyst', 'uploads/profile_pictures/67f82b377082f.jpg', '2025-04-09 20:53:23', '2025-04-10 18:33:59'),
(3, 4, 4, 'Antonio', 'Agolli', 'antoniagolli@gmail.com', '0682131345', 'Don Bosko,Tirane', 'Marketing Manager', 'uploads/profile_pictures/67f82b4f4ecfb.jpg', '2025-04-09 20:53:23', '2025-04-10 18:34:23'),
(4, 5, 2, 'Sara', 'Komani', 'sarakomani@gmail.com', '0681313567', 'Astir,Tirane', 'HR Manager', 'uploads/profile_pictures/67f82b59e6ecd.jpg', '2025-04-09 20:53:23', '2025-04-10 18:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `sender_id`, `message`, `timestamp`) VALUES
(1, 1, 'Hello everyone!', '2025-04-13 11:57:45'),
(2, 1, 'How is your day going?', '2025-04-13 11:57:50'),
(3, 3, 'Hello!', '2025-04-13 11:58:30'),
(4, 3, 'I am doing fine what about you guys?', '2025-04-13 11:58:37'),
(5, 4, 'Hey there!', '2025-04-13 11:58:58'),
(6, 4, 'Fantastic over here', '2025-04-13 11:59:04'),
(7, 5, 'Hey!', '2025-04-13 11:59:31'),
(8, 5, 'Good morning everyone i am doing fantastic too', '2025-04-13 11:59:42'),
(9, 2, 'Good morning!', '2025-04-13 12:00:20'),
(10, 2, 'Fantastic over here too', '2025-04-13 12:00:29'),
(11, 2, 'Can i get some help on desk 11 please have some configuration problems', '2025-04-13 12:00:42'),
(12, 1, 'Sure i will be there in a min!', '2025-04-13 12:01:13'),
(13, 1, 'Antonio can you bring the paperwork on my desk please>', '2025-04-13 12:01:29'),
(14, 1, 'I have to do sign them so we can send them tomorrow thanks!', '2025-04-13 12:02:09'),
(15, 4, 'Yes i just finished them!', '2025-04-13 12:02:53'),
(16, 4, 'Anyone up for a coffee break?', '2025-04-13 12:03:01'),
(17, 4, 'I have mine in 20 min', '2025-04-13 12:03:06'),
(18, 5, 'Yes,sure ill be up in a min', '2025-04-13 12:03:39'),
(19, 5, 'I left my paperwork on my desk if anyone needs it', '2025-04-13 12:03:50'),
(20, 3, 'Ye i will wrap my work up too and join you guys', '2025-04-13 12:04:22'),
(21, 3, 'Max 10 mins and im up', '2025-04-13 12:04:31'),
(22, 3, 'See you soon!', '2025-04-13 12:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('employee','admin') NOT NULL DEFAULT 'employee',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin1234', 'admin', NULL, '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(2, 'nevin.guni', 'Welcome123', 'employee', NULL, '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(3, 'kevin.dushku', 'kevin123', 'employee', NULL, '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(4, 'antonio.agolli', 'Welcome123', 'employee', NULL, '2025-04-09 20:53:23', '2025-04-09 20:53:23'),
(5, 'sara.komani', 'Welcome123', 'employee', NULL, '2025-04-09 20:53:23', '2025-04-09 20:53:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `departments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
