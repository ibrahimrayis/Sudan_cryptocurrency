-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 01:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `faceclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 1, 3),
(5, 4, 1),
(6, 1, 4),
(7, 8, 1),
(8, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_id`, `friend_id`) VALUES
(2, 3, 2),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `user_id`, `created_at`) VALUES
(1, 'test', 0, '2018-10-27 14:50:41'),
(2, 'aaa', 1, '2018-10-27 14:58:03'),
(3, 'hi a', 2, '2018-10-27 14:59:22'),
(4, 'Community!!!', 5, '2018-10-29 23:39:12'),
(6, 'About Blockchain :Is blockchain technology the new internet? The blockchain is an undeniably ingenious invention â€“ the brainchild of a person or group of people known by the pseudonym, Satoshi Nakamoto. But since then, it has evolved into something greater, and the main question every single person is asking is: What is Blockchain?  By allowing digital information to be distributed but not copied, blockchain technology created the backbone of a new type of internet. Originally devised for the digital currency, Bitcoin,  (Buy Bitcoin) the tech community is now finding other potential uses for the technology.  Bitcoin has been called â€œdigital gold,â€ and for a good reason. To date, the total value of the currency is close to $112 billion US. And blockchains can make other types of digital value. Like the internet (or your car), you donâ€™t need to know how the blockchain works to use it. However, having a basic knowledge of this new technology shows why itâ€™s considered revolutionary. So, we hope you enjoy this, What Is Blockchain Guide. And if you already know what blockchain is and want to become a blockchain developer (2018 â€“ currently in high demand!) please check out our in-depth blockchain tutorial and create your very first blockchain.', 5, '2018-10-30 00:10:37'),
(7, 'ð˜¼ð™—ð™¤ð™ªð™© ð˜½ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£', 5, '2018-10-30 00:14:07'),
(8, 'ð˜¼ð™—ð™¤ð™ªð™© ð˜½ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ :ð™„ð™¨ ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™©ð™šð™˜ð™ð™£ð™¤ð™¡ð™¤ð™œð™® ð™©ð™ð™š ð™£ð™šð™¬ ð™žð™£ð™©ð™šð™§ð™£ð™šð™©? ð™ð™ð™š ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™žð™¨ ð™–ð™£ ð™ªð™£ð™™ð™šð™£ð™žð™–ð™—ð™¡ð™® ð™žð™£ð™œð™šð™£ð™žð™¤ð™ªð™¨ ð™žð™£ð™«ð™šð™£ð™©ð™žð™¤ð™£ â€“ ð™©ð™ð™š ð™—ð™§ð™–ð™žð™£ð™˜ð™ð™žð™¡ð™™ ð™¤ð™› ð™– ð™¥ð™šð™§ð™¨ð™¤ð™£ ð™¤ð™§ ð™œð™§ð™¤ð™ªð™¥ ð™¤ð™› ð™¥ð™šð™¤ð™¥ð™¡ð™š ð™ ð™£ð™¤ð™¬ð™£ ð™—ð™® ð™©ð™ð™š ð™¥ð™¨ð™šð™ªð™™ð™¤ð™£ð™®ð™¢, ð™Žð™–ð™©ð™¤ð™¨ð™ð™ž ð™‰ð™–ð™ ð™–ð™¢ð™¤ð™©ð™¤. ð˜½ð™ªð™© ð™¨ð™žð™£ð™˜ð™š ð™©ð™ð™šð™£, ð™žð™© ð™ð™–ð™¨ ð™šð™«ð™¤ð™¡ð™«ð™šð™™ ð™žð™£ð™©ð™¤ ð™¨ð™¤ð™¢ð™šð™©ð™ð™žð™£ð™œ ð™œð™§ð™šð™–ð™©ð™šð™§, ð™–ð™£ð™™ ð™©ð™ð™š ð™¢ð™–ð™žð™£ ð™¦ð™ªð™šð™¨ð™©ð™žð™¤ð™£ ð™šð™«ð™šð™§ð™® ð™¨ð™žð™£ð™œð™¡ð™š ð™¥ð™šð™§ð™¨ð™¤ð™£ ð™žð™¨ ð™–ð™¨ð™ ð™žð™£ð™œ ð™žð™¨: ð™’ð™ð™–ð™© ð™žð™¨ ð˜½ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£? ð˜½ð™® ð™–ð™¡ð™¡ð™¤ð™¬ð™žð™£ð™œ ð™™ð™žð™œð™žð™©ð™–ð™¡ ð™žð™£ð™›ð™¤ð™§ð™¢ð™–ð™©ð™žð™¤ð™£ ð™©ð™¤ ð™—ð™š ð™™ð™žð™¨ð™©ð™§ð™žð™—ð™ªð™©ð™šð™™ ð™—ð™ªð™© ð™£ð™¤ð™© ð™˜ð™¤ð™¥ð™žð™šð™™, ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™©ð™šð™˜ð™ð™£ð™¤ð™¡ð™¤ð™œð™® ð™˜ð™§ð™šð™–ð™©ð™šð™™ ð™©ð™ð™š ð™—ð™–ð™˜ð™ ð™—ð™¤ð™£ð™š ð™¤ð™› ð™– ð™£ð™šð™¬ ð™©ð™®ð™¥ð™š ð™¤ð™› ð™žð™£ð™©ð™šð™§ð™£ð™šð™©. ð™Šð™§ð™žð™œð™žð™£ð™–ð™¡ð™¡ð™® ð™™ð™šð™«ð™žð™¨ð™šð™™ ð™›ð™¤ð™§ ð™©ð™ð™š ð™™ð™žð™œð™žð™©ð™–ð™¡ ð™˜ð™ªð™§ð™§ð™šð™£ð™˜ð™®, ð˜½ð™žð™©ð™˜ð™¤ð™žð™£, (ð˜½ð™ªð™® ð˜½ð™žð™©ð™˜ð™¤ð™žð™£) ð™©ð™ð™š ð™©ð™šð™˜ð™ ð™˜ð™¤ð™¢ð™¢ð™ªð™£ð™žð™©ð™® ð™žð™¨ ð™£ð™¤ð™¬ ð™›ð™žð™£ð™™ð™žð™£ð™œ ð™¤ð™©ð™ð™šð™§ ð™¥ð™¤ð™©ð™šð™£ð™©ð™žð™–ð™¡ ð™ªð™¨ð™šð™¨ ð™›ð™¤ð™§ ð™©ð™ð™š ð™©ð™šð™˜ð™ð™£ð™¤ð™¡ð™¤ð™œð™®. ð˜½ð™žð™©ð™˜ð™¤ð™žð™£ ð™ð™–ð™¨ ð™—ð™šð™šð™£ ð™˜ð™–ð™¡ð™¡ð™šð™™ â€œð™™ð™žð™œð™žð™©ð™–ð™¡ ð™œð™¤ð™¡ð™™,â€ ð™–ð™£ð™™ ð™›ð™¤ð™§ ð™– ð™œð™¤ð™¤ð™™ ð™§ð™šð™–ð™¨ð™¤ð™£. ð™ð™¤ ð™™ð™–ð™©ð™š, ð™©ð™ð™š ð™©ð™¤ð™©ð™–ð™¡ ð™«ð™–ð™¡ð™ªð™š ð™¤ð™› ð™©ð™ð™š ð™˜ð™ªð™§ð™§ð™šð™£ð™˜ð™® ð™žð™¨ ð™˜ð™¡ð™¤ð™¨ð™š ð™©ð™¤ $112 ð™—ð™žð™¡ð™¡ð™žð™¤ð™£ ð™ð™Ž. ð˜¼ð™£ð™™ ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ð™¨ ð™˜ð™–ð™£ ð™¢ð™–ð™ ð™š ð™¤ð™©ð™ð™šð™§ ð™©ð™®ð™¥ð™šð™¨ ð™¤ð™› ð™™ð™žð™œð™žð™©ð™–ð™¡ ð™«ð™–ð™¡ð™ªð™š. ð™‡ð™žð™ ð™š ð™©ð™ð™š ð™žð™£ð™©ð™šð™§ð™£ð™šð™© (ð™¤ð™§ ð™®ð™¤ð™ªð™§ ð™˜ð™–ð™§), ð™®ð™¤ð™ª ð™™ð™¤ð™£â€™ð™© ð™£ð™šð™šð™™ ð™©ð™¤ ð™ ð™£ð™¤ð™¬ ð™ð™¤ð™¬ ð™©ð™ð™š ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™¬ð™¤ð™§ð™ ð™¨ ð™©ð™¤ ð™ªð™¨ð™š ð™žð™©. ð™ƒð™¤ð™¬ð™šð™«ð™šð™§, ð™ð™–ð™«ð™žð™£ð™œ ð™– ð™—ð™–ð™¨ð™žð™˜ ð™ ð™£ð™¤ð™¬ð™¡ð™šð™™ð™œð™š ð™¤ð™› ð™©ð™ð™žð™¨ ð™£ð™šð™¬ ð™©ð™šð™˜ð™ð™£ð™¤ð™¡ð™¤ð™œð™® ð™¨ð™ð™¤ð™¬ð™¨ ð™¬ð™ð™® ð™žð™©â€™ð™¨ ð™˜ð™¤ð™£ð™¨ð™žð™™ð™šð™§ð™šð™™ ð™§ð™šð™«ð™¤ð™¡ð™ªð™©ð™žð™¤ð™£ð™–ð™§ð™®. ð™Žð™¤, ð™¬ð™š ð™ð™¤ð™¥ð™š ð™®ð™¤ð™ª ð™šð™£ð™Ÿð™¤ð™® ð™©ð™ð™žð™¨, ð™’ð™ð™–ð™© ð™„ð™¨ ð˜½ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™‚ð™ªð™žð™™ð™š. ð˜¼ð™£ð™™ ð™žð™› ð™®ð™¤ð™ª ð™–ð™¡ð™§ð™šð™–ð™™ð™® ð™ ð™£ð™¤ð™¬ ð™¬ð™ð™–ð™© ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™žð™¨ ð™–ð™£ð™™ ð™¬ð™–ð™£ð™© ð™©ð™¤ ð™—ð™šð™˜ð™¤ð™¢ð™š ð™– ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™™ð™šð™«ð™šð™¡ð™¤ð™¥ð™šð™§ (2018 â€“ ð™˜ð™ªð™§ð™§ð™šð™£ð™©ð™¡ð™® ð™žð™£ ð™ð™žð™œð™ ð™™ð™šð™¢ð™–ð™£ð™™!) ð™¥ð™¡ð™šð™–ð™¨ð™š ð™˜ð™ð™šð™˜ð™  ð™¤ð™ªð™© ð™¤ð™ªð™§ ð™žð™£-ð™™ð™šð™¥ð™©ð™ ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£ ð™©ð™ªð™©ð™¤ð™§ð™žð™–ð™¡ ð™–ð™£ð™™ ð™˜ð™§ð™šð™–ð™©ð™š ð™®ð™¤ð™ªð™§ ð™«ð™šð™§ð™® ð™›ð™žð™§ð™¨ð™© ð™—ð™¡ð™¤ð™˜ð™ ð™˜ð™ð™–ð™žð™£.', 5, '2018-10-30 00:15:02'),
(9, 'aaa', 5, '2018-10-30 01:24:57'),
(10, 'ddd', 1, '2018-10-30 01:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(150) NOT NULL,
  `profile_image_url` varchar(200) NOT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`, `profile_image_url`, `location`) VALUES
(1, 'a', '$2y$10$bV1VSve7JzzpPBfYKS3Jxu08KTc1Z2zc8DiskAzJBoK4Dsll99xTy', '343rnkdf3nfn33fs', '/img/BlockchainCommunity.png', ''),
(2, 'rayis', '$2y$10$8hZezccH1dxXxUYqbFzmL.zcIxEYaP/J1VLwCH0uR.MXT0Oab.yHK', '', '', 'sudan'),
(3, 'ahmed', '$2y$10$wvjWSZ/7lm/MWoZEPFAqqOwNGfRlaHNplepWijzTxsll9a6sND3eu', '343rnkdf3nfn33fs', '', 'software engineer '),
(4, 'ibrahim', '$2y$10$JFSklVg95Mvdo2TA0m3vt.KxcOkG7vTFGIlmck3gxaGHadWHOr.pW', 'good a', '', ''),
(5, 'Community', '$2y$10$29juNnSZxlxOPIb1fWAEC.77f19NzCE7NIliR7Qct17/D2/Ct6j66', '', '', 'sudan'),
(6, 'rayis', '$2y$10$gpUAlMdpGZ6nwXEtteAvgOaerP50tpmkzrMQzLpZMMsRsa05UWGXu', '', '', 'sudan'),
(7, 'b', '$2y$10$qFbLO7mNTwJ7tDvT.Ls8nuUvq9QmU9Rg.ts8DlpQ.ji8ndTGg/Bam', '', '', 'b'),
(8, 'test', '$2y$10$.TooylGAZL45pI7H8wQj4.tGXyCqAVIC5SwQzglwca47pT665oKfq', '', '', '0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
