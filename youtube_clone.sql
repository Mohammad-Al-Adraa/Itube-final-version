-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 08:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channel_user_id` int(11) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `profile_pic` text DEFAULT NULL COMMENT 'link to an image',
  `channel_name` varchar(45) NOT NULL,
  `playlist` text DEFAULT ':',
  `#subscribers` int(11) DEFAULT 0,
  `#subscriptions` int(11) DEFAULT 0,
  `history` text DEFAULT ':',
  `watch_later` text DEFAULT ':'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channel_user_id`, `author`, `profile_pic`, `channel_name`, `playlist`, `#subscribers`, `#subscriptions`, `history`, `watch_later`) VALUES
(7, 'Alaa', '../profiles/defaultImageForAllUsers.png', 'Introduction to programming', ':|14|15', 1, 0, ':', ':|13|14'),
(8, 'Muhammad Al Adraa', '../profiles/defaultImageForAllUsers.png', 'Muhammad Channel', ':|15', 0, 1, ':', ':|21|16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `dislikes` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `video_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`dislikes`, `likes`, `video_id`, `comment_id`, `comment`, `date_added`, `channel_id`) VALUES
(0, 0, 15, 55, 'alo', '2020-12-13', 7),
(0, 0, 15, 56, 'alo', '2020-12-13', 7),
(0, 0, 15, 57, 'alo', '2020-12-13', 7),
(0, 0, 15, 58, 'alo', '2020-12-13', 7),
(0, 0, 15, 59, 'alo', '2020-12-13', 7),
(0, 0, 15, 60, '\n', '2020-12-13', 7),
(0, 0, 15, 61, '\n', '2020-12-13', 7),
(0, 0, 15, 62, '\n', '2020-12-13', 7),
(0, 0, 15, 63, 'askdkasd\n', '2020-12-13', 7),
(0, 0, 15, 64, 'alo\n', '2020-12-13', 7),
(0, 0, 15, 65, 'habebe\n', '2020-12-13', 7),
(0, 0, 15, 66, '\n', '2020-12-13', 7),
(0, 0, 15, 67, 'my comment', '2020-12-13', 7),
(0, 0, 15, 68, 'my second com\n', '2020-12-13', 7),
(0, 0, 15, 69, '\n', '2020-12-13', 7),
(0, 0, 15, 70, 'habebe\n', '2020-12-13', 7),
(0, 0, 15, 71, '\n', '2020-12-13', 7),
(0, 0, 15, 72, 'alo\n', '2020-12-13', 7),
(0, 0, 15, 73, '\n', '2020-12-13', 7),
(0, 0, 15, 74, 'aslkndlaksdnlkas', '2020-12-13', 7),
(0, 0, 15, 75, 'aooooo\n', '2020-12-13', 7),
(0, 0, 15, 76, 'ba3ed\n', '2020-12-13', 7),
(0, 0, 15, 77, '\n', '2020-12-13', 7),
(0, 0, 15, 78, '\n', '2020-12-13', 7),
(0, 0, 15, 79, 'sslakdklask\n', '2020-12-13', 7),
(0, 0, 15, 80, '\n', '2020-12-13', 7),
(0, 0, 15, 81, 'slakdnlkas\n', '2020-12-13', 7),
(0, 0, 15, 82, '\n', '2020-12-13', 7),
(0, 0, 15, 83, 'alooooooooooooooooooo\n', '2020-12-13', 7),
(0, 0, 15, 84, '\n', '2020-12-13', 7),
(0, 0, 15, 85, '\n', '2020-12-13', 7),
(0, 0, 15, 86, '3m tsma3?\n', '2020-12-13', 7),
(0, 0, 15, 87, 'msh 33mm  ebssmma3k\n', '2020-12-13', 7),
(0, 0, 15, 88, 'alo\n', '2020-12-13', 7),
(0, 0, 15, 89, '\n', '2020-12-13', 7),
(0, 0, 15, 90, 'alksdn\n', '2020-12-13', 7),
(0, 0, 15, 91, '\n', '2020-12-13', 7),
(0, 0, 15, 92, 'this\n', '2020-12-13', 7),
(0, 0, 15, 93, 'ahsdjslak\n', '2020-12-13', 7),
(0, 0, 15, 94, '\n', '2020-12-13', 7),
(0, 0, 15, 95, 'sasd\n', '2020-12-13', 7),
(0, 0, 15, 96, 'this\n', '2020-12-13', 7),
(0, 0, 15, 97, '\n', '2020-12-13', 7),
(0, 0, 15, 98, 'aloasl\n', '2020-12-13', 7),
(0, 0, 15, 99, '\n\n', '2020-12-13', 7),
(0, 0, 15, 100, 'askndlk\n', '2020-12-13', 7),
(0, 0, 15, 101, '\n\n', '2020-12-13', 7),
(0, 0, 15, 102, 'alo\n', '2020-12-13', 7),
(0, 0, 15, 103, 'asd\n', '2020-12-13', 7),
(0, 0, 15, 104, 'asd\n', '2020-12-13', 7),
(0, 0, 15, 105, ' \n', '2020-12-13', 7),
(0, 0, 15, 106, '        asd\n', '2020-12-13', 7),
(0, 0, 15, 107, 'asdsa\n', '2020-12-13', 7),
(0, 0, 15, 108, 'laksdlka\n', '2020-12-13', 7),
(0, 0, 24, 109, 'alo habebe\n', '2020-12-13', 8);

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes_dislikes`
--

CREATE TABLE `comment_likes_dislikes` (
  `liked` tinyint(4) DEFAULT 0,
  `disliked` tinyint(4) DEFAULT 0,
  `channel_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `comment_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `reply` varchar(205) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`comment_id`, `channel_id`, `reply_id`, `reply`, `date`, `video_id`) VALUES
(108, 8, 16, 'sajdkjakasndl', '2020-12-13', 15);

-- --------------------------------------------------------

--
-- Table structure for table `subs`
--

CREATE TABLE `subs` (
  `session_channel_id` int(11) NOT NULL,
  `other_channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subs`
--

INSERT INTO `subs` (`session_channel_id`, `other_channel_id`) VALUES
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `suspended` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `suspended`) VALUES
(7, 'Alaa', 'Test@123', 0),
(8, 'Muhammad Al Adraa', 'Itube@123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `dislikes` int(11) DEFAULT 0,
  `title` text DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `video_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `video_path` text DEFAULT NULL,
  `video_time` varchar(45) NOT NULL,
  `views` int(11) DEFAULT 0,
  `reports` int(11) DEFAULT 0,
  `show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`dislikes`, `title`, `likes`, `description`, `date`, `video_id`, `channel_id`, `video_path`, `video_time`, `views`, `reports`, `show`) VALUES
(0, 'Smart Wait ', 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, vel, optio! Error, velit, unde? Pariatur cupiditate totam necessitatibus harum quisquam incidunt modi saepe, similique, minus aliquid voluptate, quam sapiente, debitis.', '2020-12-12', 15, 7, '../uploads/Introduction to programming/15/bussiness_5fd5438c51f33.mp4', '0:41', 2, 2, 1),
(0, 'girl', 0, NULL, '2020-12-13', 16, 7, '../uploads/Introduction to programming/16/girl_5fd550df0f744.mp4', '1:01', 1, 0, 0),
(0, 'habebe', 0, NULL, '2020-12-13', 17, 7, '../uploads/Introduction to programming/17/habebe_5fd550df38c66.mp4', '1:00', 0, 0, 1),
(0, 'test bro', 0, NULL, '2020-12-13', 21, 7, '../uploads/Introduction to programming/21/test bro_5fd5578f240c0.mp4', '1:10', 1, 0, 1),
(0, 'habebe', 0, NULL, '2020-12-13', 22, 8, '../uploads/Muhammad Channel/22/habebe_5fd55e78bebea.mp4', '1:00', 1, 0, 1),
(0, 'wala wa7esh', 0, NULL, '2020-12-13', 23, 8, '../uploads/Muhammad Channel/23/wala wa7esh_5fd55e78f1be0.mp4', '0:41', 1, 0, 1),
(1, 'drop ya bro', 0, 'alo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo aloalo alo alo alo', '2020-12-13', 24, 8, '../uploads/Muhammad Channel/24/drop ya sis_5fd563aa877d8.mp4', '1:01', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_channel`
--

CREATE TABLE `video_channel` (
  `liked` tinyint(1) DEFAULT 0,
  `disliked` tinyint(1) DEFAULT 0,
  `channel_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `saved` tinyint(4) DEFAULT 0,
  `reported` tinyint(4) DEFAULT 0,
  `watch_later` tinyint(4) DEFAULT 0,
  `viewed` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_channel`
--

INSERT INTO `video_channel` (`liked`, `disliked`, `channel_id`, `video_id`, `saved`, `reported`, `watch_later`, `viewed`) VALUES
(0, 0, 7, 15, 1, 1, 0, 1),
(0, 0, 8, 15, 1, 1, 0, 1),
(0, 0, 8, 16, 0, 0, 0, 1),
(0, 0, 8, 21, 0, 0, 1, 1),
(0, 0, 8, 22, 0, 0, 0, 1),
(0, 0, 8, 23, 0, 0, 0, 1),
(0, 1, 8, 24, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channel_user_id`,`channel_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `cid` (`channel_id`),
  ADD KEY `vid` (`video_id`);

--
-- Indexes for table `comment_likes_dislikes`
--
ALTER TABLE `comment_likes_dislikes`
  ADD PRIMARY KEY (`comment_id`,`channel_id`),
  ADD KEY `channel_id_` (`channel_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `videoID` (`video_id`),
  ADD KEY `user` (`channel_id`),
  ADD KEY `comment` (`comment_id`);

--
-- Indexes for table `subs`
--
ALTER TABLE `subs`
  ADD PRIMARY KEY (`session_channel_id`,`other_channel_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name_UNIQUE` (`user_name`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `video_channel`
--
ALTER TABLE `video_channel`
  ADD PRIMARY KEY (`channel_id`,`video_id`),
  ADD KEY `video` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `channel_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `ch_id` FOREIGN KEY (`channel_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `cid` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vid` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_likes_dislikes`
--
ALTER TABLE `comment_likes_dislikes`
  ADD CONSTRAINT `channel_id_` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `comment` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videoID` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subs`
--
ALTER TABLE `subs`
  ADD CONSTRAINT `cid_first` FOREIGN KEY (`session_channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `channel_id` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video_channel`
--
ALTER TABLE `video_channel`
  ADD CONSTRAINT `channel` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `video` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
