-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2023 at 04:23 PM
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
  `elo_rating` int NOT NULL DEFAULT '1500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `elo_rating`) VALUES
(1, 'Bulbasaur',    1500),
(2, 'Ivysaur',      1500),
(3, 'Venusaur',     1500),
(4, 'Charmander',   1500),
(5, 'Charmeleon',   1500),
(6, 'Charizard',    1500),
(7, 'Squirtle',     1500),
(8, 'Wartortle',    1500),
(9, 'Blastoise',    1500),
(10, 'Caterpie',    1500),
(11, 'Metapod',     1500),
(12, 'Butterfree',  1500),
(13, 'Weedle',      1500),
(14, 'Kakuna',      1500),
(15, 'Beedrill',    1500),
(16, 'Pidgey',      1500),
(17, 'Pidgeotto',   1500),
(18, 'Pidgeot',     1500),
(19, 'Rattata',     1500),
(20, 'Raticate',    1500),
(21, 'Spearow',     1500),
(22, 'Fearow',      1500),
(23, 'Ekans',       1500),
(24, 'Arbok',       1500),
(25, 'Pikachu',     1500),
(26, 'Raichu',      1500),
(27, 'Sandshrew',   1500),
(28, 'Sandslash',   1500),
(29, 'Nidoran♀',    1500),
(30, 'Nidorina',    1500),
(31, 'Nidoqueen',   1500),
(32, 'Nidoran♂',    1500),
(33, 'Nidorino',    1500),
(34, 'Nidoking',    1500),
(35, 'Clefairy',    1500),
(36, 'Clefable',    1500),
(37, 'Vulpix',      1500),
(38, 'Ninetales',   1500),
(39, 'Jigglypuff',  1500),
(40, 'Wigglytuff',  1500),
(41, 'Zubat',       1500),
(42, 'Golbat',      1500),
(43, 'Oddish',      1500),
(44, 'Gloom',       1500),
(45, 'Vileplume',   1500),
(46, 'Paras',       1500),
(47, 'Parasect',    1500),
(48, 'Venonat',     1500),
(49, 'Venomoth',    1500),
(50, 'Diglett',     1500),
(51, 'Dugtrio',     1500),
(52, 'Meowth',      1500),
(53, 'Persian',     1500),
(54, 'Psyduck',     1500),
(55, 'Golduck',     1500),
(56, 'Mankey',      1500),
(57, 'Primeape',    1500),
(58, 'Growlithe',   1500),
(59, 'Arcanine',    1500),
(60, 'Poliwag',     1500),
(61, 'Poliwhirl',   1500),
(62, 'Poliwrath',   1500),
(63, 'Abra',        1500),
(64, 'Kadabra',     1500),
(65, 'Alakazam',    1500),
(66, 'Machop',      1500),
(67, 'Machoke',     1500),
(68, 'Machamp',     1500),
(69, 'Bellsprout',  1500),
(70, 'Weepinbell',  1500),
(71, 'Victreebel',  1500),
(72, 'Tentacool',   1500),
(73, 'Tentacruel',  1500),
(74, 'Geodude',     1500),
(75, 'Graveler',    1500),
(76, 'Golem',       1500),
(77, 'Ponyta',      1500),
(78, 'Rapidash',    1500),
(79, 'Slowpoke',    1500),
(80, 'Slowbro',     1500),
(81, 'Magnemite',   1500),
(82, 'Magneton',    1500),
(83, 'Farfetchd',   1500),
(84, 'Doduo',       1500),
(85, 'Dodrio',      1500),
(86, 'Seel',        1500),
(87, 'Dewgong',     1500),
(88, 'Grimer',      1500),
(89, 'Muk',         1500),
(90, 'Shellder',    1500),
(91, 'Cloyster',    1500),
(92, 'Gastly',      1500),
(93, 'Haunter',     1500),
(94, 'Gengar',      1500),
(95, 'Onix',        1500),
(96, 'Drowzee',     1500),
(97, 'Hypno',       1500),
(98, 'Krabby',      1500),
(99, 'Kingler',     1500),
(100, 'Voltorb',    1500),
(101, 'Electrode',  1500),
(102, 'Exeggcute',  1500),
(103, 'Exeggutor',  1500),
(104, 'Cubone',     1500),
(105, 'Marowak',    1500),
(106, 'Hitmonlee',  1500),
(107, 'Hitmonchan', 1500),
(108, 'Lickitung',  1500),
(109, 'Koffing',    1500),
(110, 'Weezing',    1500),
(111, 'Rhyhorn',    1500),
(112, 'Rhydon',     1500),
(113, 'Chansey',    1500),
(114, 'Tangela',    1500),
(115, 'Kangaskhan', 1500),
(116, 'Horsea',     1500),
(117, 'Seadra',     1500),
(118, 'Goldeen',    1500),
(119, 'Seaking',    1500),
(120, 'Staryu',     1500),
(121, 'Starmie',    1500),
(122, 'Mr. mime',   1500),
(123, 'Scyther',    1500),
(124, 'Jynx',       1500),
(125, 'Electabuzz', 1500),
(126, 'Magmar',     1500),
(127, 'Pinsir',     1500),
(128, 'Tauros',     1500),
(129, 'Magikarp',   1500),
(130, 'Gyarados',   1500),
(131, 'Lapras',     1500),
(132, 'Ditto',      1500),
(133, 'Eevee',      1500),
(134, 'Vaporeon',   1500),
(135, 'Jolteon',    1500),
(136, 'Flareon',    1500),
(137, 'Porygon',    1500),
(138, 'Omanyte',    1500),
(139, 'Omastar',    1500),
(140, 'Kabuto',     1500),
(141, 'Kabutops',   1500),
(142, 'Aerodactyl', 1500),
(143, 'Snorlax',    1500),
(144, 'Articuno',   1500),
(145, 'Zapdos',     1500),
(146, 'Moltres',    1500),
(147, 'Dratini',    1500),
(148, 'Dragonair',  1500),
(149, 'Dragonite',  1500),
(150, 'Mewtwo',     1500),
(151, 'Mew',        1500);

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
