-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 06 Sep 2018 la 13:03
-- Versiune server: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `category`
--

INSERT INTO `category` (`ID`, `title`) VALUES
(1, 'L\'envahisseur'),
(2, 'Le sultan'),
(3, 'Le fou'),
(4, 'Le fuyard');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `destinationID` int(11) NOT NULL,
  `content` text NOT NULL,
  `period` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `include` text NOT NULL,
  `notInclude` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `destinationID` (`destinationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `conditions`
--

INSERT INTO `conditions` (`ID`, `destinationID`, `content`, `period`, `price`, `include`, `notInclude`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit.', '7 jours / 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit.'),
(2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours / 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(3, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate', '7 jours / 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate'),
(4, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate', '7 jours / 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate'),
(5, 5, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7jours/6nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(6, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours/ 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(7, 7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours/ 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(8, 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours/ 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(9, 9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours/ 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.'),
(10, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '7 jours/ 6 nuits', 600, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `destination`
--

DROP TABLE IF EXISTS `destination`;
CREATE TABLE IF NOT EXISTS `destination` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(60) NOT NULL,
  `picture` varchar(50) NOT NULL,
  `slider` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `destination`
--

INSERT INTO `destination` (`ID`, `title`, `description`, `category`, `picture`, `slider`) VALUES
(1, 'Machu Picchu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie velit sapien, sit amet porttitor felis sollicitudin sed. Cras sem diam, ornare et ornare quis, malesuada quis tellus. Duis tempor, ipsum non congue maximus, quam nulla maximus elit, eget posuere mauris tellus nec tortor. Morbi venenatis quis metus at interdum. Aenean luctus pellentesque leo sed aliquet. Maecenas et felis in turpis commodo blandit sit amet a nisl. Donec vitae mi sit amet tortor convallis bibendum. Nulla facilisi. Suspendisse ex ex, fringilla at cursus et, vehicula fringilla metus. Sed imperdiet, lorem quis varius hendrerit, eros arcu luctus nibh, id lacinia ante est in risus. Duis fringilla nisl et leo tincidunt, vel varius est tristique.', '1', 'machupicchufinal.jpg', 's2.jpg'),
(2, 'Chutes de Gocta', 'Cras elit erat, porttitor a est vitae, varius suscipit eros. Nulla facilisi. Ut id urna vel enim condimentum semper. Nunc vel mi quis dui dignissim eleifend. Mauris pellentesque et mi accumsan tincidunt. In ut odio et justo ullamcorper cursus. Fusce finibus lacus orci, vitae cursus nibh blandit sit amet. Aliquam quam ex, gravida aliquam tincidunt eu, dapibus eget dolor. Aenean non ultricies justo, quis elementum quam. Vivamus condimentum leo et enim tincidunt pulvinar. Sed rutrum ex at leo molestie tempor. Donec commodo elit id ex accumsan, non iaculis purus lobortis. Ut sodales nisi quis leo feugiat bibendum. Ut ligula eros, malesuada sed purus at, rhoncus egestas magna. Vivamus id nulla ac massa imperdiet facilisis. Nam vitae justo a ligula faucibus mattis vel nec dolor.', '4', 'gocta.jpg', 's3.jpg'),
(3, 'Carnaval de Rio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie velit sapien, sit amet porttitor felis sollicitudin sed. Cras sem diam, ornare et ornare quis, malesuada quis tellus. Duis tempor, ipsum non congue maximus, quam nulla maximus elit, eget posuere mauris tellus nec tortor. Morbi venenatis quis metus at interdum. Aenean luctus pellentesque leo sed aliquet. Maecenas et felis in turpis commodo blandit sit amet a nisl. Donec vitae mi sit amet tortor convallis bibendum. Nulla facilisi. Suspendisse ex ex, fringilla at cursus et, vehicula fringilla metus. Sed imperdiet, lorem quis varius hendrerit, eros arcu luctus nibh, id lacinia ante est in risus. Duis fringilla nisl et leo tincidunt, vel varius est tristique.', '3', 'carnavalrio.jpg', 's4.jpg'),
(4, 'Mont Roraima', 'Cras elit erat, porttitor a est vitae, varius suscipit eros. Nulla facilisi. Ut id urna vel enim condimentum semper. Nunc vel mi quis dui dignissim eleifend. Mauris pellentesque et mi accumsan tincidunt. In ut odio et justo ullamcorper cursus. Fusce finibus lacus orci, vitae cursus nibh blandit sit amet. Aliquam quam ex, gravida aliquam tincidunt eu, dapibus eget dolor. Aenean non ultricies justo, quis elementum quam. Vivamus condimentum leo et enim tincidunt pulvinar. Sed rutrum ex at leo molestie tempor. Donec commodo elit id ex accumsan, non iaculis purus lobortis. Ut sodales nisi quis leo feugiat bibendum. Ut ligula eros, malesuada sed purus at, rhoncus egestas magna. Vivamus id nulla ac massa imperdiet facilisis. Nam vitae justo a ligula faucibus mattis vel nec dolor.', '1', 'roraima.jpg', 's5.jpg'),
(5, 'Le Pantanal', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi, dolor sequi quod inventore quos commodi! Iure ullam sapiente, facere quasi eos culpa eligendi repellat ex voluptate, accusantium sunt, aliquid porro. Lrem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus earum ullam quam placeat explicabo nam porro animi cupiditate error saepe laudantium accusantium magnam minima, deleniti, repudiandae iusto. Accusantium, quaerat nostrum.', '3', 'pantanal.jpg', 's6.jpg'),
(6, 'Les Dunes de Coro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie velit sapien, sit amet porttitor felis sollicitudin sed. Cras sem diam, ornare et ornare quis, malesuada quis tellus. Duis tempor, ipsum non congue maximus, quam nulla maximus elit, eget posuere mauris tellus nec tortor. Morbi venenatis quis metus at interdum. Aenean luctus pellentesque leo sed aliquet. Maecenas et felis in turpis commodo blandit sit amet a nisl. Donec vitae mi sit amet tortor convallis bibendum. Nulla facilisi. Suspendisse ex ex, fringilla at cursus et, vehicula fringilla metus. Sed imperdiet, lorem quis varius hendrerit, eros arcu luctus nibh, id lacinia ante est in risus. Duis fringilla nisl et leo tincidunt, vel varius est tristique.', '4', 'corodunes.jpg', 's7.jpg'),
(7, 'Le cratère Kerið', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie velit sapien, sit amet porttitor felis sollicitudin sed. Cras sem diam, ornare et ornare quis, malesuada quis tellus. Duis tempor, ipsum non congue maximus, quam nulla maximus elit, eget posuere mauris tellus nec tortor. Morbi venenatis quis metus at interdum. Aenean luctus pellentesque leo sed aliquet. Maecenas et felis in turpis commodo blandit sit amet a nisl. Donec vitae mi sit amet tortor convallis bibendum. Nulla facilisi. Suspendisse ex ex, fringilla at cursus et, vehicula fringilla metus. Sed imperdiet, lorem quis varius hendrerit, eros arcu luctus nibh, id lacinia ante est in risus. Duis fringilla nisl et leo tincidunt, vel varius est tristique.', '4', 'kerid.jpg', 's8.jpg'),
(8, 'La croisière Caraïbes', 'Nullam mollis, leo at viverra posuere, tortor nunc facilisis est, sed gravida sem lectus at mauris. Nam rhoncus pulvinar dui, et cursus arcu consectetur quis. Nunc vel tristique dui. Ut lobortis urna quam, vitae consectetur orci placerat nec. Suspendisse et est vitae nisi malesuada hendrerit a vitae nisi. Donec dictum tortor eget scelerisque posuere. Sed est nibh, pretium id tortor non, placerat facilisis turpis. Nulla facilisi. Aliquam id odio venenatis, fermentum lacus vel, efficitur arcu. Cras odio ante, mollis condimentum sollicitudin facilisis, mollis eu lorem. Nam laoreet erat vel finibus faucibus. Sed consequat consectetur interdum. Sed at aliquet quam, sed varius lorem. Proin rhoncus dui vitae lorem sollicitudin tristique.', '2', 'caraibes.jpg', 's9.jpg'),
(9, 'Dubai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse molestie velit sapien, sit amet porttitor felis sollicitudin sed. Cras sem diam, ornare et ornare quis, malesuada quis tellus. Duis tempor, ipsum non congue maximus, quam nulla maximus elit, eget posuere mauris tellus nec tortor. Morbi venenatis quis metus at interdum. Aenean luctus pellentesque leo sed aliquet. Maecenas et felis in turpis commodo blandit sit amet a nisl. Donec vitae mi sit amet tortor convallis bibendum. Nulla facilisi. Suspendisse ex ex, fringilla at cursus et, vehicula fringilla metus. Sed imperdiet, lorem quis varius hendrerit, eros arcu luctus nibh, id lacinia ante est in risus. Duis fringilla nisl et leo tincidunt, vel varius est tristique.', '2', 'dubai.jpg', 's10.jpg'),
(10, 'Hobbiton', 'Nullam mollis, leo at viverra posuere, tortor nunc facilisis est, sed gravida sem lectus at mauris. Nam rhoncus pulvinar dui, et cursus arcu consectetur quis. Nunc vel tristique dui. Ut lobortis urna quam, vitae consectetur orci placerat nec. Suspendisse et est vitae nisi malesuada hendrerit a vitae nisi. Donec dictum tortor eget scelerisque posuere. Sed est nibh, pretium id tortor non, placerat facilisis turpis. Nulla facilisi. Aliquam id odio venenatis, fermentum lacus vel, efficitur arcu. Cras odio ante, mollis condimentum sollicitudin facilisis, mollis eu lorem. Nam laoreet erat vel finibus faucibus. Sed consequat consectetur interdum. Sed at aliquet quam, sed varius lorem. Proin rhoncus dui vitae lorem sollicitudin tristique.', '4', 'nouvellezelande.jpg', 's1.jpg');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `destinationID` int(11) NOT NULL,
  `creationDate` date NOT NULL,
  `nbPersons` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`),
  KEY `destinationID` (`destinationID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `orders`
--

INSERT INTO `orders` (`ID`, `userID`, `destinationID`, `creationDate`, `nbPersons`) VALUES
(27, 11, 8, '2018-09-03', 3),
(42, 11, 1, '2018-09-06', 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `birthday` date NOT NULL,
  `city` varchar(60) NOT NULL,
  `postalCode` int(11) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Salvarea datelor din tabel `user`
--

INSERT INTO `user` (`ID`, `firstName`, `lastName`, `password`, `email`, `address`, `birthday`, `city`, `postalCode`, `country`, `phoneNumber`) VALUES
(11, 'test', 'test', '$2y$10$WZ/AAzs8JLGibE1HXw4CN.x8zdG.0cwP5dLKT10tbhNSSUsPDceQW', 'test@test.com', '16 test ', '2018-08-09', 'Test', 67000, 'Test', '123456'),
(12, 'test2', 'test2', '$2y$10$RLZay.nR/G6xSOt8nivqNus9eVxYBozKiL4f5OHBxzC3JHCZQFQ06', 'test2@test.com', 'test 12', '2018-09-15', 'test2', 67000, 'test2', '123789');

--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `conditions`
--
ALTER TABLE `conditions`
  ADD CONSTRAINT `conditions_ibfk_1` FOREIGN KEY (`destinationID`) REFERENCES `conditions` (`ID`);

--
-- Restrictii pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`destinationID`) REFERENCES `destination` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
