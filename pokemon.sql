-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2023 at 11:14 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `elo_rating` int NOT NULL DEFAULT '1500',
  `total_votes` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `elo_rating`, `total_votes`) VALUES
(1, 'Bulbasaur', 1500, 0),
(2, 'Ivysaur', 1500, 0),
(3, 'Venusaur', 1500, 0),
(4, 'Charmander', 1500, 0),
(5, 'Charmeleon', 1500, 0),
(6, 'Charizard', 1500, 0),
(7, 'Squirtle', 1500, 0),
(8, 'Wartortle', 1500, 0),
(9, 'Blastoise', 1500, 0),
(10, 'Caterpie', 1500, 0),
(11, 'Metapod', 1500, 0),
(12, 'Butterfree', 1500, 0),
(13, 'Weedle', 1500, 0),
(14, 'Kakuna', 1500, 0),
(15, 'Beedrill', 1500, 0),
(16, 'Pidgey', 1500, 0),
(17, 'Pidgeotto', 1500, 0),
(18, 'Pidgeot', 1500, 0),
(19, 'Rattata', 1500, 0),
(20, 'Raticate', 1500, 0),
(21, 'Spearow', 1500, 0),
(22, 'Fearow', 1500, 0),
(23, 'Ekans', 1500, 0),
(24, 'Arbok', 1500, 0),
(25, 'Pikachu', 1500, 0),
(26, 'Raichu', 1500, 0),
(27, 'Sandshrew', 1500, 0),
(28, 'Sandslash', 1500, 0),
(29, 'Nidoran♀', 1500, 0),
(30, 'Nidorina', 1500, 0),
(31, 'Nidoqueen', 1500, 0),
(32, 'Nidoran♂', 1500, 0),
(33, 'Nidorino', 1500, 0),
(34, 'Nidoking', 1500, 0),
(35, 'Clefairy', 1500, 0),
(36, 'Clefable', 1500, 0),
(37, 'Vulpix', 1500, 0),
(38, 'Ninetales', 1500, 0),
(39, 'Jigglypuff', 1500, 0),
(40, 'Wigglytuff', 1500, 0),
(41, 'Zubat', 1500, 0),
(42, 'Golbat', 1500, 0),
(43, 'Oddish', 1500, 0),
(44, 'Gloom', 1500, 0),
(45, 'Vileplume', 1500, 0),
(46, 'Paras', 1500, 0),
(47, 'Parasect', 1500, 0),
(48, 'Venonat', 1500, 0),
(49, 'Venomoth', 1500, 0),
(50, 'Diglett', 1500, 0),
(51, 'Dugtrio', 1500, 0),
(52, 'Meowth', 1500, 0),
(53, 'Persian', 1500, 0),
(54, 'Psyduck', 1500, 0),
(55, 'Golduck', 1500, 0),
(56, 'Mankey', 1500, 0),
(57, 'Primeape', 1500, 0),
(58, 'Growlithe', 1500, 0),
(59, 'Arcanine', 1500, 0),
(60, 'Poliwag', 1500, 0),
(61, 'Poliwhirl', 1500, 0),
(62, 'Poliwrath', 1500, 0),
(63, 'Abra', 1500, 0),
(64, 'Kadabra', 1500, 0),
(65, 'Alakazam', 1500, 0),
(66, 'Machop', 1500, 0),
(67, 'Machoke', 1500, 0),
(68, 'Machamp', 1500, 0),
(69, 'Bellsprout', 1500, 0),
(70, 'Weepinbell', 1500, 0),
(71, 'Victreebel', 1500, 0),
(72, 'Tentacool', 1500, 0),
(73, 'Tentacruel', 1500, 0),
(74, 'Geodude', 1500, 0),
(75, 'Graveler', 1500, 0),
(76, 'Golem', 1500, 0),
(77, 'Ponyta', 1500, 0),
(78, 'Rapidash', 1500, 0),
(79, 'Slowpoke', 1500, 0),
(80, 'Slowbro', 1500, 0),
(81, 'Magnemite', 1500, 0),
(82, 'Magneton', 1500, 0),
(83, 'Farfetchd', 1500, 0),
(84, 'Doduo', 1500, 0),
(85, 'Dodrio', 1500, 0),
(86, 'Seel', 1500, 0),
(87, 'Dewgong', 1500, 0),
(88, 'Grimer', 1500, 0),
(89, 'Muk', 1500, 0),
(90, 'Shellder', 1500, 0),
(91, 'Cloyster', 1500, 0),
(92, 'Gastly', 1500, 0),
(93, 'Haunter', 1500, 0),
(94, 'Gengar', 1500, 0),
(95, 'Onix', 1500, 0),
(96, 'Drowzee', 1500, 0),
(97, 'Hypno', 1500, 0),
(98, 'Krabby', 1500, 0),
(99, 'Kingler', 1500, 0),
(100, 'Voltorb', 1500, 0),
(101, 'Electrode', 1500, 0),
(102, 'Exeggcute', 1500, 0),
(103, 'Exeggutor', 1500, 0),
(104, 'Cubone', 1500, 0),
(105, 'Marowak', 1500, 0),
(106, 'Hitmonlee', 1500, 0),
(107, 'Hitmonchan', 1500, 0),
(108, 'Lickitung', 1500, 0),
(109, 'Koffing', 1500, 0),
(110, 'Weezing', 1500, 0),
(111, 'Rhyhorn', 1500, 0),
(112, 'Rhydon', 1500, 0),
(113, 'Chansey', 1500, 0),
(114, 'Tangela', 1500, 0),
(115, 'Kangaskhan', 1500, 0),
(116, 'Horsea', 1500, 0),
(117, 'Seadra', 1500, 0),
(118, 'Goldeen', 1500, 0),
(119, 'Seaking', 1500, 0),
(120, 'Staryu', 1500, 0),
(121, 'Starmie', 1500, 0),
(122, 'Mr. mime', 1500, 0),
(123, 'Scyther', 1500, 0),
(124, 'Jynx', 1500, 0),
(125, 'Electabuzz', 1500, 0),
(126, 'Magmar', 1500, 0),
(127, 'Pinsir', 1500, 0),
(128, 'Tauros', 1500, 0),
(129, 'Magikarp', 1500, 0),
(130, 'Gyarados', 1500, 0),
(131, 'Lapras', 1500, 0),
(132, 'Ditto', 1500, 0),
(133, 'Eevee', 1500, 0),
(134, 'Vaporeon', 1500, 0),
(135, 'Jolteon', 1500, 0),
(136, 'Flareon', 1500, 0),
(137, 'Porygon', 1500, 0),
(138, 'Omanyte', 1500, 0),
(139, 'Omastar', 1500, 0),
(140, 'Kabuto', 1500, 0),
(141, 'Kabutops', 1500, 0),
(142, 'Aerodactyl', 1500, 0),
(143, 'Snorlax', 1500, 0),
(144, 'Articuno', 1500, 0),
(145, 'Zapdos', 1500, 0),
(146, 'Moltres', 1500, 0),
(147, 'Dratini', 1500, 0),
(148, 'Dragonair', 1500, 0),
(149, 'Dragonite', 1500, 0),
(150, 'Mewtwo', 1500, 0),
(151, 'Mew', 1500, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
