-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2021 at 04:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `main_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `title`, `text`, `img1`, `img2`, `img3`, `main_img`) VALUES
(1, 'Redefining You', 'Redefining was a freelance position over the summer of 2021. I was asked by Rose Hastreiter to rebrand. I came up with a new logo, colours, brand guides, and various assets. To the right are just a few. ', 'redefining_img1.svg', 'redefining_img2.svg', 'redefining_img3.svg', 'redefining_img1.svg'),
(2, 'London Referees Group', 'London Referee Group was a final class project in my Interactive Media Design Program of 2021. The objective was to work in a team of five classmates to complete a rebrand and website for a local business. LRG was chosen for all groups to compete to see who’s website would be selected. My group got selected and we had the pleasure of working for a local company right out of school. My overall role was the Project Manager, however, I helped in the graphics where needed.', 'londonreferee_img1.svg', 'londonreferee_img2.svg', 'londonreferee_img3.svg', 'londonreferee_img1.svg'),
(3, 'Leo Vintage', 'Leo is a London local Vintage Clothing Company. It represents strength, passion, power, confidence, and above all a good heart. “Kings and Queens” represents anyone and everyone. Leo clothing is for ALL people who are ready to discover their expression through apparel and clothing. My role in this project was the complete brand package including logo, posters, brand guide, video, social media and more. \r\n', 'leo_img1.svg', 'leo_img2.svg', 'leo_img3.svg', 'leo_img1.svg'),
(4, 'Flower Power', 'This was an experimental project to dive further into cinema. I learned how to make a glass material and how to move said glass material. I utilized a youtube video as a guide but made it my own and it came out to this result. ', 'flower_img1.svg', 'flower_img2.svg', 'flower_img3.svg', 'flower_img1.svg'),
(5, 'Rainbow Road', 'This was an experimental project to dive further into cinema. This was play with movement and materials. As seen in my demo reel you can see the “rainbow” in action. ', 'rainbow_img1.svg', 'rainbow_img2.svg', 'rainbow_img3.svg', 'rainbow_img1.svg'),
(6, 'Happy Monster', 'This was an experimental project through cinema. I created this guy from scratch. I decided I wanted theses spinning teeth like shapes spinning in-front of him while he blinks. Monster insinuates something scary, however, to juxtapose that there are bright fun colours to liven up and ease the angst of an actual monster. He is more of a friendly Giant. ', 'monster_img1.svg', 'monster_img2.svg', 'monster_img3.svg', 'monster_img1.svg'),
(7, 'Manitoba Wildland', 'This was in collaboration with the province of Manitoba and the Wild-land Firefighting Crew. They were in need of a new graphic for a shirt. I was suggested to do two bulls running away from the fire. The bull represents strength and perseverance against life natural disaster; the wild fire. ', 'manitoba_img1.svg', 'manitoba_img2.svg', 'manitoba_img3.svg', 'manitoba_img1.svg'),
(8, 'Coffee Mate Mix-up', 'This was an in class assignment where we had to combine two different elements. A design style and a brand. In this example it utilizes Coffee Mate the brand and the stylings of David Carson. We had to utilize cinema and any other design program to complete the final product. ', 'coffeemate_img1.svg', 'coffeemate_img2.svg', 'coffeemate_img3.svg', 'coffeemate_img1.svg'),
(9, 'Smoke is Not Dope', 'This was an in class assignment where we had to come up with a series of posters to depict the effects of smoking or vaping, specifically for a young audience. My partner and I decided to go with a catch 3D effect with a black background to make an impact. ', 'smoke_img1.svg', 'smoke_img2.svg', 'smoke_img3.svg', 'smoke_img1.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
