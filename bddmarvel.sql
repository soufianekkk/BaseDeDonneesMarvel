-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 24 août 2021 à 14:57
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddmarvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(30) NOT NULL,
  `Prénom` varchar(30) NOT NULL,
  `DateDeNaissance` date DEFAULT NULL,
  `DateDeCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateDeModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `Nom`, `Prénom`, `DateDeNaissance`, `DateDeCreation`, `DateDeModification`) VALUES
(1, 'DuChateau', 'Pierre', '1970-06-16', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(2, 'Johansson', 'Scarlett', '1984-11-22', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(3, 'Pugh', 'Florence', '1996-01-03', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(4, 'Harbour', 'David', '1975-04-10', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(5, 'Weisz', 'Rachel', '1970-03-07', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(6, 'Williams', 'Maisie', '1997-04-15', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(7, 'Taylor-Joy', 'Anya', '1996-04-16', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(8, 'Heaton', 'Charlie', '1994-02-06', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(9, 'Braga', 'Alice', '1983-04-15', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(10, 'Tomei', 'Marisa', '1964-12-04', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(11, 'Gyllenhaal', 'Jake', '1980-12-19', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(12, 'L. Jackson', 'Samuel', '1964-12-04', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(13, 'Holland', 'Tom', '1996-06-01', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(14, 'Hoult', 'Nicholas', '1989-12-07', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(15, 'Lawrence', 'Jennifer', '1990-08-15', '2021-08-24 14:17:57', '2021-08-24 14:17:57'),
(16, 'Fassbender', 'Michael', '1977-04-02', '2021-08-24 14:17:57', '2021-08-24 14:17:57');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(50) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `DateDeSortie` year(4) NOT NULL,
  `Duree` int(3) DEFAULT NULL,
  `DateDeCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateDeModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `Titre`, `Director`, `DateDeSortie`, `Duree`, `DateDeCreation`, `DateDeModification`) VALUES
(1, 'Black Widow', 'Cate Shortland', 2021, 134, '2021-08-24 14:26:41', '2021-08-24 14:26:41'),
(2, 'Les Nouveaux Mutants', 'Josh Boone', 2020, 94, '2021-08-24 14:26:41', '2021-08-24 14:26:41'),
(3, 'Spider-Man: Far from Home', 'Jon Watts', 2019, 129, '2021-08-24 14:26:41', '2021-08-24 14:26:41'),
(4, 'X-Men: Dark Phoenix', 'Simon Kinberg', 2019, 113, '2021-08-24 14:26:41', '2021-08-24 14:26:41'),
(5, 'Avengers: Endgame', 'Anthony Russo', 2019, 181, '2021-08-24 14:26:41', '2021-08-24 14:26:41');

-- --------------------------------------------------------

--
-- Structure de la table `movies_actors`
--

DROP TABLE IF EXISTS `movies_actors`;
CREATE TABLE IF NOT EXISTS `movies_actors` (
  `id_m` int(11) NOT NULL,
  `id_a` int(11) NOT NULL,
  KEY `id_a` (`id_a`),
  KEY `id_m` (`id_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movies_actors`
--

INSERT INTO `movies_actors` (`id_m`, `id_a`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 13),
(5, 14),
(5, 15),
(5, 16);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`id_a`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`id_m`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
