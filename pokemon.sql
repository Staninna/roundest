-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 12, 2023 at 11:46 PM
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
  `voted_for` int UNSIGNED DEFAULT '0',
  `voted_against` int UNSIGNED DEFAULT '0',
  `total_votes` int UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `voted_for`, `voted_against`, `total_votes`) VALUES
(1, 'Bulbasaur', 0, 0, 0),
(2, 'Ivysaur', 0, 0, 0),
(3, 'Venusaur', 0, 0, 0),
(4, 'Charmander', 0, 0, 0),
(5, 'Charmeleon', 0, 0, 0),
(6, 'Charizard', 0, 0, 0),
(7, 'Squirtle', 0, 0, 0),
(8, 'Wartortle', 0, 0, 0),
(9, 'Blastoise', 0, 0, 0),
(10, 'Caterpie', 0, 0, 0),
(11, 'Metapod', 0, 0, 0),
(12, 'Butterfree', 0, 0, 0),
(13, 'Weedle', 0, 0, 0),
(14, 'Kakuna', 0, 0, 0),
(15, 'Beedrill', 0, 0, 0),
(16, 'Pidgey', 0, 0, 0),
(17, 'Pidgeotto', 0, 0, 0),
(18, 'Pidgeot', 0, 0, 0),
(19, 'Rattata', 0, 0, 0),
(20, 'Raticate', 0, 0, 0),
(21, 'Spearow', 0, 0, 0),
(22, 'Fearow', 0, 0, 0),
(23, 'Ekans', 0, 0, 0),
(24, 'Arbok', 0, 0, 0),
(25, 'Pikachu', 0, 0, 0),
(26, 'Raichu', 0, 0, 0),
(27, 'Sandshrew', 0, 0, 0),
(28, 'Sandslash', 0, 0, 0),
(29, 'Nidoran♀', 0, 0, 0),
(30, 'Nidorina', 0, 0, 0),
(31, 'Nidoqueen', 0, 0, 0),
(32, 'Nidoran♂', 0, 0, 0),
(33, 'Nidorino', 0, 0, 0),
(34, 'Nidoking', 0, 0, 0),
(35, 'Clefairy', 0, 0, 0),
(36, 'Clefable', 0, 0, 0),
(37, 'Vulpix', 0, 0, 0),
(38, 'Ninetales', 0, 0, 0),
(39, 'Jigglypuff', 0, 0, 0),
(40, 'Wigglytuff', 0, 0, 0),
(41, 'Zubat', 0, 0, 0),
(42, 'Golbat', 0, 0, 0),
(43, 'Oddish', 0, 0, 0),
(44, 'Gloom', 0, 0, 0),
(45, 'Vileplume', 0, 0, 0),
(46, 'Paras', 0, 0, 0),
(47, 'Parasect', 0, 0, 0),
(48, 'Venonat', 0, 0, 0),
(49, 'Venomoth', 0, 0, 0),
(50, 'Diglett', 0, 0, 0),
(51, 'Dugtrio', 0, 0, 0),
(52, 'Meowth', 0, 0, 0),
(53, 'Persian', 0, 0, 0),
(54, 'Psyduck', 0, 0, 0),
(55, 'Golduck', 0, 0, 0),
(56, 'Mankey', 0, 0, 0),
(57, 'Primeape', 0, 0, 0),
(58, 'Growlithe', 0, 0, 0),
(59, 'Arcanine', 0, 0, 0),
(60, 'Poliwag', 0, 0, 0),
(61, 'Poliwhirl', 0, 0, 0),
(62, 'Poliwrath', 0, 0, 0),
(63, 'Abra', 0, 0, 0),
(64, 'Kadabra', 0, 0, 0),
(65, 'Alakazam', 0, 0, 0),
(66, 'Machop', 0, 0, 0),
(67, 'Machoke', 0, 0, 0),
(68, 'Machamp', 0, 0, 0),
(69, 'Bellsprout', 0, 0, 0),
(70, 'Weepinbell', 0, 0, 0),
(71, 'Victreebel', 0, 0, 0),
(72, 'Tentacool', 0, 0, 0),
(73, 'Tentacruel', 0, 0, 0),
(74, 'Geodude', 0, 0, 0),
(75, 'Graveler', 0, 0, 0),
(76, 'Golem', 0, 0, 0),
(77, 'Ponyta', 0, 0, 0),
(78, 'Rapidash', 0, 0, 0),
(79, 'Slowpoke', 0, 0, 0),
(80, 'Slowbro', 0, 0, 0),
(81, 'Magnemite', 0, 0, 0),
(82, 'Magneton', 0, 0, 0),
(83, 'Farfetchd', 0, 0, 0),
(84, 'Doduo', 0, 0, 0),
(85, 'Dodrio', 0, 0, 0),
(86, 'Seel', 0, 0, 0),
(87, 'Dewgong', 0, 0, 0),
(88, 'Grimer', 0, 0, 0),
(89, 'Muk', 0, 0, 0),
(90, 'Shellder', 0, 0, 0),
(91, 'Cloyster', 0, 0, 0),
(92, 'Gastly', 0, 0, 0),
(93, 'Haunter', 0, 0, 0),
(94, 'Gengar', 0, 0, 0),
(95, 'Onix', 0, 0, 0),
(96, 'Drowzee', 0, 0, 0),
(97, 'Hypno', 0, 0, 0),
(98, 'Krabby', 0, 0, 0),
(99, 'Kingler', 0, 0, 0),
(100, 'Voltorb', 0, 0, 0),
(101, 'Electrode', 0, 0, 0),
(102, 'Exeggcute', 0, 0, 0),
(103, 'Exeggutor', 0, 0, 0),
(104, 'Cubone', 0, 0, 0),
(105, 'Marowak', 0, 0, 0),
(106, 'Hitmonlee', 0, 0, 0),
(107, 'Hitmonchan', 0, 0, 0),
(108, 'Lickitung', 0, 0, 0),
(109, 'Koffing', 0, 0, 0),
(110, 'Weezing', 0, 0, 0),
(111, 'Rhyhorn', 0, 0, 0),
(112, 'Rhydon', 0, 0, 0),
(113, 'Chansey', 0, 0, 0),
(114, 'Tangela', 0, 0, 0),
(115, 'Kangaskhan', 0, 0, 0),
(116, 'Horsea', 0, 0, 0),
(117, 'Seadra', 0, 0, 0),
(118, 'Goldeen', 0, 0, 0),
(119, 'Seaking', 0, 0, 0),
(120, 'Staryu', 0, 0, 0),
(121, 'Starmie', 0, 0, 0),
(122, 'Mr. mime', 0, 0, 0),
(123, 'Scyther', 0, 0, 0),
(124, 'Jynx', 0, 0, 0),
(125, 'Electabuzz', 0, 0, 0),
(126, 'Magmar', 0, 0, 0),
(127, 'Pinsir', 0, 0, 0),
(128, 'Tauros', 0, 0, 0),
(129, 'Magikarp', 0, 0, 0),
(130, 'Gyarados', 0, 0, 0),
(131, 'Lapras', 0, 0, 0),
(132, 'Ditto', 0, 0, 0),
(133, 'Eevee', 0, 0, 0),
(134, 'Vaporeon', 0, 0, 0),
(135, 'Jolteon', 0, 0, 0),
(136, 'Flareon', 0, 0, 0),
(137, 'Porygon', 0, 0, 0),
(138, 'Omanyte', 0, 0, 0),
(139, 'Omastar', 0, 0, 0),
(140, 'Kabuto', 0, 0, 0),
(141, 'Kabutops', 0, 0, 0),
(142, 'Aerodactyl', 0, 0, 0),
(143, 'Snorlax', 0, 0, 0),
(144, 'Articuno', 0, 0, 0),
(145, 'Zapdos', 0, 0, 0),
(146, 'Moltres', 0, 0, 0),
(147, 'Dratini', 0, 0, 0),
(148, 'Dragonair', 0, 0, 0),
(149, 'Dragonite', 0, 0, 0),
(150, 'Mewtwo', 0, 0, 0),
(151, 'Mew', 0, 0, 0);

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
