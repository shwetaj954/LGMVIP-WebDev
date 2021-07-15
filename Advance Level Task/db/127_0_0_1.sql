-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 09:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--
CREATE DATABASE IF NOT EXISTS `banking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banking`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `about` varchar(200) NOT NULL,
  `query` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `about`, `query`) VALUES
(1, 'a@gmail.com', 'aa', 'aa'),
(2, 'user1@gmail.com', 'ss', 'ss'),
(3, 'user1@gmail.com', 'ss', 'ss'),
(4, 'user1@gmail.com', 'my task1', 'we preparing..'),
(5, 'user1@gmail.com', 'my task1', 'for following query..'),
(6, 'user1@gmail.com', 'My Task1', 'Now');

-- --------------------------------------------------------

--
-- Table structure for table `custumer`
--

CREATE TABLE `custumer` (
  `id` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `transcatlast` varchar(200) NOT NULL,
  `transactuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custumer`
--

INSERT INTO `custumer` (`id`, `img`, `name`, `dob`, `email`, `phone`, `balance`, `transcatlast`, `transactuser`) VALUES
(1, 'assets/img/profile1.jpg', 'Ruchika', '1999-06-15', 'Ru@gmail.com', '12345', '49400', '200', 'Ruchika'),
(2, 'assets/img/profile2.jpg', 'Neha', '2001-07-11', 'ne@gmail.com', '13579', '59820', '200', 'Shyam'),
(3, 'assets/img/profile3.jpg', 'Radha', '2002-07-11', 'radha@gmail.com', '681097', '60070', '10', 'Radha'),
(4, 'assets/img/profile4.jpg', 'Renuka', '2001-07-31', 'renuka@gmail.com', '786532', '59850', '50', 'Neha'),
(5, 'assets/img/profile14.jpg', 'Vivek', '1995-07-13', 'vivk@gmail.com', '545489656', '59700', '300', 'Shyam'),
(6, 'assets/img/profile9.jpg', 'Anand', '1993-07-22', 'anand@gmail.com', '4545421', '29480', '550', 'Ankita'),
(7, 'assets/img/profile10.jpg', 'Harry', '1999-02-17', 'har@gmail.com', '1215787', '69500', '500', 'Shubham'),
(8, 'assets/img/profile11.jpg', 'Shyam', '1996-12-17', 'shy@gmail.com', '765421878', '80470', '30', 'Anand'),
(9, 'assets/img/profile6.jpg', 'Ankita', '2004-08-12', 'ank@gmail.com', '7875641454', '50550', '0', ''),
(10, 'assets/img/profile13.jpg', 'Shubham', '1995-10-13', 'shubham@gmail.com', '245559565232', '450500', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactb`
--

CREATE TABLE `transactb` (
  `id` int(11) NOT NULL,
  `Sender` varchar(100) NOT NULL,
  `Receiver` varchar(100) NOT NULL,
  `Amount` varchar(200) NOT NULL,
  `Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactb`
--

INSERT INTO `transactb` (`id`, `Sender`, `Receiver`, `Amount`, `Date`) VALUES
(23, 'Neha', 'Radha', '500', '04.07.2021 14:13'),
(24, 'Neha', 'Ruchika', '100', '04.07.2021 14:14'),
(25, 'Neha', 'Ruchika', '100', '04.07.2021 14:19'),
(26, 'Neha', 'Ruchika', '100', '04.07.2021 14:20'),
(27, 'Neha', 'Ruchika', '100', '04.07.2021 14:32'),
(28, 'Radha', 'Radha', '20', '04.07.2021 19:52'),
(29, 'Neha', 'Ruchika', '200', '04.07.2021 20:17'),
(30, 'Neha', 'Neha', '200', '04.07.2021 20:19'),
(31, 'Renuka', 'Radha', '60', '04.07.2021 20:20'),
(32, 'Renuka', 'Neha', '30', '04.07.2021 20:21'),
(33, 'Renuka', 'Radha', '10', '04.07.2021 20:43'),
(34, 'Renuka', 'Neha', '50', '04.07.2021 20:48'),
(35, 'Vivek', 'Shyam', '300', '05.07.2021 06:56'),
(36, 'Neha', 'Shyam', '200', '05.07.2021 10:34'),
(37, 'Anand', 'Ankita', '550', '05.07.2021 10:40'),
(38, 'Harry', 'Shubham', '500', '05.07.2021 10:52'),
(39, 'Shyam', 'Anand', '30', '05.07.2021 11:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custumer`
--
ALTER TABLE `custumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactb`
--
ALTER TABLE `transactb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custumer`
--
ALTER TABLE `custumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactb`
--
ALTER TABLE `transactb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Database: `for_movie`
--
CREATE DATABASE IF NOT EXISTS `for_movie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `for_movie`;

-- --------------------------------------------------------

--
-- Table structure for table `courselist`
--

CREATE TABLE `courselist` (
  `corid` int(11) NOT NULL,
  `corcategorie` varchar(500) NOT NULL,
  `corname` varchar(500) NOT NULL,
  `cordetail` varchar(10000) NOT NULL,
  `corimg` varchar(500) NOT NULL,
  `cordate` varchar(500) NOT NULL,
  `corcharge` varchar(500) NOT NULL,
  `corduration` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courselist`
--

INSERT INTO `courselist` (`corid`, `corcategorie`, `corname`, `cordetail`, `corimg`, `cordate`, `corcharge`, `corduration`) VALUES
(1, 'PRIMARY STAGE', 'LKG', 'ITS GIVES YOU PRIMARY KNOWLEDGE.', 'assets/img/cour.jpg', '21/05/2021', 'ITS FREE', '1 YEAR'),
(2, 'PRIMARY STAGE', 'UKG', 'Its Gives You Primary Knowledge', 'assets/img/cor1.jpg', '21/05/2021', 'FREE', '1 YEAR'),
(3, 'MIDDLE STAGE', 'FIRST(I)', 'Its for Middle Stage', 'assets/img/cor2.jpg', '21/05/2021', 'FREE', '1 YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `empid` int(11) NOT NULL,
  `empname` varchar(500) NOT NULL,
  `empemail` varchar(500) NOT NULL,
  `empjoiningdate` varchar(200) NOT NULL,
  `emppassword` varchar(200) NOT NULL,
  `empaddress` varchar(1000) NOT NULL,
  `empcellphone` varchar(200) NOT NULL,
  `empdob` varchar(200) NOT NULL,
  `empfield` varchar(500) NOT NULL,
  `empsubject` varchar(500) NOT NULL,
  `empalot` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userphone` varchar(200) NOT NULL,
  `useraddress` varchar(1000) NOT NULL,
  `userdob` varchar(200) NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `role` int(100) NOT NULL,
  `userimg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `useremail`, `userphone`, `useraddress`, `userdob`, `userpassword`, `role`, `userimg`) VALUES
(1, 'user1', 'user1@gmail.com', '12345', 'user1', '2021-05-24', 'user1', 2, 'cor1.jpg'),
(4, 'user2', 'user2@gmail.com', '12345', 'user2', '2021-05-24', 'user2', 2, 'cor1.jpg'),
(5, 'user3', 'user3@gmail.com', '12345', 'user3', '2021-05-24', 'user3', 2, 'cor7.png'),
(7, 'user4', 'user4@gmail.com', '12345', 'user4', '2021-05-28', 'user4', 2, '3.jpg'),
(8, 'user5', 'user5@gmail.com', '12345', 'user5', '2021-05-28', 'user5', 2, 'cor4.jpg'),
(9, 'shweta', 'shwetaj954@gmail.com', '12345', 'kanpur', '1999-12-16', 'shweta', 2, 'cor2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courselist`
--
ALTER TABLE `courselist`
  ADD PRIMARY KEY (`corid`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courselist`
--
ALTER TABLE `courselist`
  MODIFY `corid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `gym`
--
CREATE DATABASE IF NOT EXISTS `gym` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gym`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `egble` varchar(200) NOT NULL,
  `grp` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `phone`, `email`, `date`, `egble`, `grp`, `gender`, `about`) VALUES
(1, 'user1', '123', 'user1@gmail.com', '2021-06-21', 'y', 'egble', 'F', 'aa'),
(2, 'user2', '123', 'user2@gmail.com', '2021-06-08', 'y', 'A40', 'F', 'dd'),
(4, 'user3', '123', 'user3@gmail.com', '2021-06-21', 'y', 'A40', 'M', 'ss'),
(5, 'user4', '123', 'user4@gmail.com', '2021-06-21', 'y', 'ABOVE 18 and BELOW 40', 'F', 'aa'),
(6, 'user5', '123', 'user5@gmail.com', '2021-06-21', 'y', 'ABOVE 40', 'F', 'hello');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `kjins`
--
CREATE DATABASE IF NOT EXISTS `kjins` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kjins`;

-- --------------------------------------------------------

--
-- Table structure for table `applycourse`
--

CREATE TABLE `applycourse` (
  `corid` int(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `cordate` varchar(300) NOT NULL,
  `corduration` varchar(300) NOT NULL,
  `corcharges` varchar(300) NOT NULL,
  `trainer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applycourse`
--

INSERT INTO `applycourse` (`corid`, `user_id`, `cordate`, `corduration`, `corcharges`, `trainer`) VALUES
(0, '1', '', '1 YEAR', 'ITS FREE', ''),
(0, '1', 'ALL TIME OPEN', 'DEPENDS YOU', 'FREE', ''),
(0, '14', '21/05/2021', '1 YEAR', 'FREE', ''),
(0, '13', '2021-2022', '1 YEAR', 'FREE', ''),
(0, '9', '2021-2022', '1 Year/Its Depending You', 'Its Free', 'Radha'),
(2, '5', '21/05/2021', '1 YEAR', 'FREE', ''),
(2, '5', '21/05/2021', '1 YEAR', 'FREE', ''),
(3, '4', '2021-2022', '1 YEAR', 'FREE', ''),
(3, '4', '2021-2022', '1 YEAR', 'FREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `classlink`
--

CREATE TABLE `classlink` (
  `clsid` int(11) NOT NULL,
  `clsname` varchar(200) NOT NULL,
  `clslink` varchar(500) NOT NULL,
  `place` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classlink`
--

INSERT INTO `classlink` (`clsid`, `clsname`, `clslink`, `place`) VALUES
(1, 'clasanm2', 'https://youtu.be/HVuAk6pV83A', 'Youtube'),
(2, 'UKG', 'https://youtu.be/71h8MZshGSs', 'YOUTUBE');

-- --------------------------------------------------------

--
-- Table structure for table `courselist`
--

CREATE TABLE `courselist` (
  `corid` int(11) NOT NULL,
  `corcategorie` varchar(500) NOT NULL,
  `corname` varchar(500) NOT NULL,
  `cordetail` varchar(10000) NOT NULL,
  `corimg` varchar(500) NOT NULL,
  `cordate` varchar(500) NOT NULL,
  `corcharge` varchar(500) NOT NULL,
  `corduration` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courselist`
--

INSERT INTO `courselist` (`corid`, `corcategorie`, `corname`, `cordetail`, `corimg`, `cordate`, `corcharge`, `corduration`) VALUES
(1, 'PRIMARY STAGE', 'LKG', 'Counting objects, inside and outside, longer and shorter, letter names, rhyming words and more.', 'cor7.png', '', 'ITS FREE', '1 YEAR'),
(3, 'MIDDLE STAGE', 'CLASS I', 'Adding and subtracting, greater than and less than, categories, nouns, verb tense, time order and more.', 'cor3.jpg', '2021-2022', 'FREE', '1 YEAR'),
(4, 'MIDDILE STAGE', 'CLASS II', 'Identifying shapes, completing patterns, contractions, irregular plurals, pronouns and more.', 'cor7.png', '2021-2022', 'Its Free', '1 Year/Its Depending You'),
(5, 'MIDDILE STAGE', 'CLASS III', 'Comparing numbers, measurement, possessive nouns, conjunctions, using a dictionary and more.', 'cor4.jpg', '2021-2022', 'Its Free', '1 Year/Its Depending You'),
(6, 'MIDDLE STAGE', 'CLASS IV', 'Understanding fractions, multiplication, time, synonyms, antonyms, homophones and more.', 'cor5.jpg', '2021-2022', 'Its Free', '1 Year'),
(7, 'MIDDLE STAGE', 'ClASS V', 'Your Subjects Science, Maths, Arts, Physical Education, Technologies, Computer, Hindi, Sanskrit', '4gf.gif', '2021-2022', 'FREE', '1 Year'),
(8, 'MIDDLE STAGE', 'CLASS VI', 'SCIENCE, MATHS, ARTS, HINDI, ENGLISH, TECHNLOGY, SANSKRIT, URDU, SOCIAL SCIENCE', '3.jpg', 'NOW', 'FREE', '2021-2022'),
(9, 'MIDDLE STAGE', 'CLASS VII', 'Your Subjects Science, Maths, Arts, Physical Education, Technologies, Computer, Hindi, Sanskrit', 'cor9.jpg', '2021-2022', 'FREE', '1 YEAR'),
(10, 'Middle Stage', 'CLASS VIII', 'Your Subjects Science, Maths, Arts, Physical Education, Technologies, Computer, Hindi, Sanskrit', 'cor10.jpg', '2021-2022', 'FREE', '1 YEAR'),
(11, 'SECONDARY STAGE ', 'CLASS IX', 'SCIENCE,MATH,HOME SCIENCE,ARTS,COMPUTER,HINDI,ENGLISH,SANSKRIT', 'cor11.jpg', '2021-2022', 'FREE', '1 YEAR'),
(12, 'SECONDARY STAGE', 'CLASS X', 'SCIENCE,MATH,HOME SCIENCE,ARTS,COMPUTER,HINDI,ENGLISH,SANSKRIT', 'cor12.jpg', '2021-2022', 'FREE', '1 YEAR'),
(13, 'SENIOR SECONDARY STAGE', 'CLASS XI', 'SCIENCE,MATH,HOME SCIENCE,ARTS,COMPUTER,HINDI,ENGLISH,SANSKRIT', 'cor13.jpg', '2021-2022', 'FREE', '1 YEAR'),
(14, 'SENIOR SECONDARY STAGE', 'CLASS XII', 'SCIENCE,MATH,HOME SCIENCE,ARTS,COMPUTER,HINDI,ENGLISH,SANSKRIT', 'cor14.jpg', '2021-2022', 'FREE', '1 YEAR'),
(16, 'OTHERS', 'HTML5', 'IN THIS COURSE WE COVER ALL HTML TEGS BIGNNER TO ADVANCED', 'cor15.png', 'ALL TIME OPEN', 'FREE', 'DEPENDS YOU'),
(17, 'OTHERS', 'CSS3', 'IN THIS COURSE WE COVER ALL CSS PROPERTIES BIGINER TO ADVANCED', 'cor16.png', 'ALL TIME OPEN', 'FREE', 'DEPENDS YOU'),
(18, 'OTHERS', 'BOOTSTRAP5', 'IN THIS COURSE COVER ALL BOOTSTRAP5 CLASSES, PROPERTIES AND TEGS', 'cor17.jfif', 'OPEN', 'FREE', 'DEPENDS YOU'),
(19, 'OTHERS', 'PHP8', 'IN THIS COURSE WE PROVIDE YOU PHP8 ALL NEW FEATURES AND LEARN ABOUT ALL THINGS', 'cor18.png', 'ALL TIME OPEN', 'FREE', 'DEPENDS OF YOU');

-- --------------------------------------------------------

--
-- Table structure for table `elibrary`
--

CREATE TABLE `elibrary` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) NOT NULL,
  `type` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `disposition` varchar(200) NOT NULL,
  `expires` varchar(500) NOT NULL,
  `cache` varchar(400) NOT NULL,
  `pragma` varchar(400) NOT NULL,
  `fileimg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elibrary`
--

INSERT INTO `elibrary` (`id`, `filename`, `type`, `description`, `disposition`, `expires`, `cache`, `pragma`, `fileimg`) VALUES
(1, 'HTMLBASIC INTRO.pdf', 'application/octet-stream', 'File Transfer', 'attachment', '0', 'must-revalidate', 'public', 'assets/img/fileimg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `empid` int(11) NOT NULL,
  `empname` varchar(500) NOT NULL,
  `empemail` varchar(500) NOT NULL,
  `empjoiningdate` varchar(200) NOT NULL,
  `emppassword` varchar(200) NOT NULL,
  `empaddress` varchar(1000) NOT NULL,
  `empcellphone` varchar(200) NOT NULL,
  `empdob` varchar(200) NOT NULL,
  `empfield` varchar(500) NOT NULL,
  `empsubject` varchar(500) NOT NULL,
  `empalot` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`empid`, `empname`, `empemail`, `empjoiningdate`, `emppassword`, `empaddress`, `empcellphone`, `empdob`, `empfield`, `empsubject`, `empalot`) VALUES
(1, 'k', 'k@gmail.com', '2021-06-02', 'krsihna', 'kanpur', '1234', '', 'cse', 'html', 'others');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(200) NOT NULL,
  `userphone` varchar(200) NOT NULL,
  `useraddress` varchar(1000) NOT NULL,
  `userdob` varchar(200) NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `role` int(100) NOT NULL,
  `userimg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `useremail`, `userphone`, `useraddress`, `userdob`, `userpassword`, `role`, `userimg`) VALUES
(4, 'user2', 'user2@gmail.com', '12345', 'user2', '2021-05-24', 'user2', 2, 'cor1.jpg'),
(5, 'user3', 'user3@gmail.com', '12345', 'user3', '2021-05-24', 'user3', 2, 'cor7.png'),
(7, 'user4', 'user4@gmail.com', '12345', 'user4', '2021-05-28', 'user4', 2, '3.jpg'),
(8, 'user5', 'user5@gmail.com', '12345', 'user5', '2021-05-28', 'user5', 2, 'cor4.jpg'),
(9, 'shweta jha', 'shwetaj954@gmail.com', '12345', 'kanpur', '1999-12-16', 'shwetaj', 1, 'profile.jpg'),
(12, 'a', 'a@gmail.com', '12345', 'india', '2021-06-05', 'abc', 2, 'Screenshot (1).png'),
(13, 'example', 'example@gmail.com', '12345', 'india', '2021-06-24', 'example', 2, 'Screenshot (1).png'),
(14, 'example1', 'example1@gmail.com', '12345', 'india', '1997-03-06', 'example1', 2, 'Screenshot (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `usercontact`
--

CREATE TABLE `usercontact` (
  `id` int(11) NOT NULL,
  `useremail` varchar(500) NOT NULL,
  `userquery` varchar(5000) NOT NULL,
  `role` varchar(200) NOT NULL,
  `username` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercontact`
--

INSERT INTO `usercontact` (`id`, `useremail`, `userquery`, `role`, `username`) VALUES
(7, 'user1@gmail.com', 'ntt', '2', 'user1'),
(8, 'user1@gmail.com', 'ntt', '2', 'user1'),
(9, 'user1@gmail.com', 'ntt', '2', 'user1'),
(10, 'user1@gmail.com', 'ntt', '2', 'user1'),
(13, 'user1@gmail.com', 'kjs', '2', 'user1'),
(14, 'shwetaj954@gmail.com', 'fd', '2', 'user1'),
(15, 'shwetaj954@gmail.com', 'fd', '2', 'user1'),
(16, 'shwetaj954@gmail.com', 'not meets date of join', '2', 'shweta jha'),
(18, 'user2@gmail.com', 'No Query', '2', 'user2'),
(19, 'user1@gmail.com', 'please Help My Class Not Start', '2', 'user1'),
(20, 'user1@gmail.com', 'When Class Start?', '2', 'user1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classlink`
--
ALTER TABLE `classlink`
  ADD PRIMARY KEY (`clsid`);

--
-- Indexes for table `courselist`
--
ALTER TABLE `courselist`
  ADD PRIMARY KEY (`corid`);

--
-- Indexes for table `elibrary`
--
ALTER TABLE `elibrary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `empemail` (`empemail`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `useremail` (`useremail`);

--
-- Indexes for table `usercontact`
--
ALTER TABLE `usercontact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classlink`
--
ALTER TABLE `classlink`
  MODIFY `clsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courselist`
--
ALTER TABLE `courselist`
  MODIFY `corid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `elibrary`
--
ALTER TABLE `elibrary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usercontact`
--
ALTER TABLE `usercontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `login_sql`
--
CREATE DATABASE IF NOT EXISTS `login_sql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_sql`;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `username` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`username`, `score`) VALUES
('user1', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `score`) VALUES
(9, 'Utk', 'utk@utk.com', '25d55ad283aa400af464c76d713c07ad', '50'),
(10, 'user1', 'user1@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(2) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `password`, `role`) VALUES
(1, 'user1', 'user1', 'user1@gmail.com', 'user1', '2'),
(3, 'user2', 'user2', 'user2@gmail.com', 'user2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'banking', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"contact\",\"custumer\",\"transactb\"],\"table_structure[]\":[\"contact\",\"custumer\",\"transactb\"],\"table_data[]\":[\"contact\",\"custumer\",\"transactb\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"srms\",\"table\":\"admin\"},{\"db\":\"srms\",\"table\":\"tblsubjects\"},{\"db\":\"srms\",\"table\":\"tblsubjectcombination\"},{\"db\":\"srms\",\"table\":\"tblstudents\"},{\"db\":\"srms\",\"table\":\"tblresult\"},{\"db\":\"srms\",\"table\":\"tblclasses\"},{\"db\":\"result_management\",\"table\":\"classes\"},{\"db\":\"banking\",\"table\":\"transactb\"},{\"db\":\"banking\",\"table\":\"custumer\"},{\"db\":\"banking\",\"table\":\"contact\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'kjins', 'user', '{\"sorted_col\":\"`userpassword`  DESC\"}', '2021-06-03 06:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-15 07:10:22', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":6.98638}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `result_management`
--
CREATE DATABASE IF NOT EXISTS `result_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `result_management`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-11 12:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Btech I', 1, 'A', '2021-07-12 13:54:08', '2021-07-13 11:15:46'),
(2, 'Btech I', 1, 'B', '2021-07-13 10:27:13', '2021-07-13 11:16:05'),
(3, 'Btech I', 1, 'C', '2021-07-13 10:27:27', '2021-07-13 11:17:35'),
(4, 'Btech II', 2, 'A', '2021-07-13 10:27:40', '2021-07-13 11:17:53'),
(5, 'Btech II', 2, 'B', '2021-07-13 10:27:50', '2021-07-13 11:18:35'),
(6, 'Btech II', 2, 'C', '2021-07-13 10:28:28', '2021-07-13 11:18:52'),
(7, 'Btech III', 3, 'A', '2021-07-13 10:28:41', '2021-07-13 11:16:54'),
(8, 'Btech III', 3, 'B', '2021-07-13 10:28:53', '2021-07-13 11:17:16'),
(9, 'Btech III', 3, 'C', '2021-07-13 10:29:06', '2021-07-13 11:18:11'),
(10, 'Btech IV', 4, 'A', '2021-07-13 10:29:37', '2021-07-13 11:19:15'),
(11, 'Btech IV', 4, 'B', '2021-07-13 10:29:48', '2021-07-13 11:19:31'),
(12, 'Btech IV', 4, 'C', '2021-07-13 10:30:00', '2021-07-13 11:19:50'),
(13, 'class1', 1, 'A', '2021-07-13 17:43:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 7, 12, 80, '2021-07-13 11:25:59', NULL),
(2, 1, 7, 7, 75, '2021-07-13 11:25:59', NULL),
(3, 1, 7, 11, 86, '2021-07-13 11:25:59', NULL),
(4, 1, 7, 8, 80, '2021-07-13 11:25:59', NULL),
(5, 1, 7, 6, 85, '2021-07-13 11:25:59', NULL),
(6, 1, 7, 10, 90, '2021-07-13 11:25:59', NULL),
(7, 2, 7, 12, 67, '2021-07-13 11:26:43', NULL),
(8, 2, 7, 7, 84, '2021-07-13 11:26:43', NULL),
(9, 2, 7, 11, 83, '2021-07-13 11:26:43', NULL),
(10, 2, 7, 8, 79, '2021-07-13 11:26:43', NULL),
(11, 2, 7, 6, 83, '2021-07-13 11:26:43', NULL),
(12, 2, 7, 10, 87, '2021-07-13 11:26:43', NULL),
(13, 3, 13, 13, 80, '2021-07-13 17:47:30', NULL),
(14, 3, 13, 1, 90, '2021-07-13 17:47:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Student1', '111', 'student1@gmail.com', 'Female', '2001-07-12', 7, '2021-07-13 11:23:57', NULL, 1),
(2, 'Student2', '112', 'student2@gmail.com', 'Male', '2000-10-18', 7, '2021-07-13 11:24:54', NULL, 1),
(3, 'student3', '113', 'student3@gmail.com', 'Female', '2009-06-13', 13, '2021-07-13 17:46:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 7, 6, 1, '2021-07-13 11:20:55', '2021-07-13 11:20:55'),
(2, 7, 7, 1, '2021-07-13 11:21:05', '2021-07-13 11:21:05'),
(3, 7, 8, 1, '2021-07-13 11:21:20', '2021-07-13 11:21:20'),
(4, 7, 10, 1, '2021-07-13 11:21:31', '2021-07-13 11:21:31'),
(5, 7, 11, 1, '2021-07-13 11:22:07', '2021-07-13 11:22:07'),
(6, 7, 12, 1, '2021-07-13 11:22:16', '2021-07-13 11:22:16'),
(7, 13, 1, 1, '2021-07-13 17:45:17', '2021-07-13 17:45:17'),
(8, 13, 13, 1, '2021-07-13 17:45:32', '2021-07-13 17:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Mathematics', 'NAS103', '2021-07-13 11:05:38', '0000-00-00 00:00:00'),
(2, 'Chemistry', 'NEC101', '2021-07-13 11:06:34', '0000-00-00 00:00:00'),
(3, 'Computer System and Programming in C', 'NEE101', '2021-07-13 11:07:26', '0000-00-00 00:00:00'),
(4, 'Physics1', 'NAS101', '2021-07-13 11:08:08', '0000-00-00 00:00:00'),
(5, 'Mathematics II', 'NAS203', '2021-07-13 11:08:40', '0000-00-00 00:00:00'),
(6, 'DBMS', 'KCS501', '2021-07-13 11:10:43', '0000-00-00 00:00:00'),
(7, 'Compiler Design', 'KCS502', '2021-07-13 11:12:02', '0000-00-00 00:00:00'),
(8, 'DAA', 'KCS503', '2021-07-13 11:12:20', '0000-00-00 00:00:00'),
(9, 'Software Enginnering', 'KCS601', '2021-07-13 11:13:06', '0000-00-00 00:00:00'),
(10, 'Web Technology', 'KCS602', '2021-07-13 11:13:35', '0000-00-00 00:00:00'),
(11, 'Computer Networks', 'KCS603', '2021-07-13 11:14:07', '0000-00-00 00:00:00'),
(12, 'Big Data', 'KCS061', '2021-07-13 11:14:56', '0000-00-00 00:00:00'),
(13, 'Computer', '21', '2021-07-13 17:44:13', '2021-07-13 17:44:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
