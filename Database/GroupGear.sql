-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 16, 2021 at 07:01 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travellog`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`) VALUES
(1, 1, 6),
(2, 6, 1),
(7, 2, 1),
(8, 1, 2),
(11, 3, 4),
(12, 4, 3),
(13, 3, 1),
(14, 1, 3),
(15, 3, 2),
(16, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`request_id`, `user_id`, `friend_id`) VALUES
(5, 5, 1),
(7, 2, 5),
(9, 6, 3),
(13, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notif_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notif_id`, `user_id`, `notification`, `timestamp`) VALUES
(1, 1, 'Welcome to TravelLog', '2025-01-25 22:01:18'),
(2, 2, 'Welcome to TravelLog', '2025-01-25 22:02:08'),
(3, 3, 'Welcome to TravelLog', '2025-01-25 22:02:22'),
(4, 4, 'Welcome to TravelLog', '2025-01-25 22:02:33'),
(5, 5, 'Welcome to TravelLog', '2025-01-25 22:02:41'),
(6, 6, 'Welcome to TravelLog', '2025-01-25 22:02:48'),
(7, 3, '@sn2606 sent you a friend request.', '2025-01-25 22:56:03'),
(8, 3, '@noora sent you a friend request.', '2025-01-25 23:02:45'),
(9, 3, '@jane sent you a friend request.', '2025-01-25 23:03:30'),
(10, 3, '@johnny sent you a friend request.', '2025-01-25 23:04:13'),
(11, 3, '@mel21 sent you a friend request.', '2025-01-25 23:04:48'),
(12, 7, 'Welcome to TravelLog', '2025-01-03 16:18:44'),
(13, 7, '@louis.d sent you a friend request.', '2025-01-25 21:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `content_img` mediumblob DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(1, 'Test data', '', 3, '2025-01-25 11:15:48'),
(2, 'Had the pleasure of visiting this amazing website', NULL, 6, '2025-01-25 16:23:25');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(5, 'These cliffs are the most beautiful place in the world', '', 4, '2025-01-25 17:56:29');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(6, 'What a beautiful, rainy day!', '', 2, '2025-01-25 11:27:42');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(7, 'BnW shot', '', 1, '2025-01-25 06:04:58');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(8, 'Hello world', '', 1, '2025-01-25 11:32:27');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(9, 'The nicest view', '', 5, '2025-01-25 12:47:36');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(10, 'Clicked a pic today!', '', 3, '2025-01-25 17:38:40');
INSERT INTO `posts` (`post_id`, `content`, `content_img`, `user_id`, `created_at`) VALUES
(11, 'Making a post', '', 1, '2025-01-25 12:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `profile_img` mediumblob DEFAULT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(1, 'Swaranjana Nayak', 'swaranjananayak@gmail.com', 'sn2606', '$2y$10$c90eU23DIyTv2DYY18lhzeBiaQTCtjvHjSgKug0tiu7Nyeg46sqfK', 'Change Status','' , 'new_location'),
(2, 'Melanie Hamilton', 'melanie.hamilton@gmail.com', 'mel21', '$2y$10$w0wbw1MRipHs.pz0YECv0.YVU3FJc985FnPIWAHmKpHyMwsNrNREi', 'Exploring the world one day at a time!', '', 'Ireland');
INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(3, 'Louis Dickinson', 'louis.dickinson@email.com', 'louis.d', '$2y$10$WfW4zTPq5oxtyc7w9PYwRulRxPoEH2bagzXFNpegq6BkhTA0v5JcC', 'Hello i am exploring','' , 'Earth');
INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(4, 'John Doe', 'john.doe@gmail.com', 'johnny', '$2y$10$a6pwpb3xhjS56w3EKNxa7uMVuTlNhyWxehNbpXhznhzaEEqbzwJOC', '', '', '');
INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(5, 'Jane Austen', 'janey@gmail.com', 'jane', '$2y$10$OSsrdlAFP5XoCXz8d8qT0OMuaF8PM0G6IludYdDiQMyxlIiUIcm3C', '', '', '');
INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(6, 'Noor Afsoon', 'noora@yahoo.com', 'noora', '$2y$10$/LT1WIhpz.tNxLTTZuRo9OmW4APx40EdK.LeFswC7nF7z/tqB4bIi', '', '', '');
INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `status`, `profile_img`, `location`) VALUES
(7, 'New Person', 'person@gmail.com', 'person', '$2y$10$aJ2v6M4b41lVQYM1no0uUuE3DjAlm7VcTo70GhsaBQ3Prp8jbnfuW', '', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_frnd_uid` (`user_id`),
  ADD KEY `fk_frnd_fid` (`friend_id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `fk_rqst_uid` (`user_id`),
  ADD KEY `fk_rqst_fid` (`friend_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notif_id`),
  ADD KEY `fk_notif_uid` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `fk_post_uid` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `fk_frnd_fid` FOREIGN KEY (`friend_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_frnd_uid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD CONSTRAINT `fk_rqst_fid` FOREIGN KEY (`friend_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_rqst_uid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_uid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_post_uid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;