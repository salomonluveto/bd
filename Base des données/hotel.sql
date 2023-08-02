-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 juin 2023 à 02:01
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
-- Base de données : `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre_nonres`
--

DROP TABLE IF EXISTS `chambre_nonres`;
CREATE TABLE IF NOT EXISTS `chambre_nonres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_chambre` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `photos` varchar(100) NOT NULL,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_nonres`
--

INSERT INTO `chambre_nonres` (`id`, `nom_chambre`, `prix`, `photos`, `name`) VALUES
(2, 'chambre de luxe avec lit jumeaux', 200, 'img/room/room-2.jpg', 'b2'),
(3, 'chambre standard', 200, 'img/room/room-3.jpg', 'b3'),
(5, 'King', 174, 'img/room/room-5.jpg', 'b5'),
(1, 'chambre de luxe', 198, 'img/room/room-1.jpg', 'b1'),
(6, 'familly', 250, 'img/room/room-6.jpg', 'b6');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_reserve`
--

DROP TABLE IF EXISTS `chambre_reserve`;
CREATE TABLE IF NOT EXISTS `chambre_reserve` (
  `id_chambre` int(4) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `photos` char(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_chambre`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_reserve`
--

INSERT INTO `chambre_reserve` (`id_chambre`, `nom`, `prix`, `photos`, `email`) VALUES
(1, 'chambre_classique', 185, 'img/room/a.PNG', 'king@gmail.com'),
(2, 'chambre_noble', 220, 'img/room/b.PNG', 'kisala@gmail.com'),
(48, 'luxury room', 159, 'img/room/room-4.jpg', 'luyungu@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photos` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_cli`, `prenom`, `nom`, `email`, `password`, `ville`, `date`, `photos`) VALUES
(1, 'salomon', 'luveto', 'salomonluveto2023@gmail.com', '1234', 'kinshasa', '2022-12-24 17:15:57', '0'),
(2, 'king', 'luveto', 'king@gmail.com', '12345', 'kinshasa', '2022-12-24 19:19:20', 'doc/BB.PNG'),
(13, 'nzuzi', 'kivwama', 'nzuzikivwama@gmail.com', '1234', 'kinshasa', '2023-01-13 18:41:33', 'doc/Capture2.PNG'),
(12, 'simon', 'luveto', 'simon@gmail.com', '1234', 'paris', '2023-01-10 18:03:40', 'doc/a.PNG'),
(11, 'r', 'r', 'k@gmail.com', '1234', 'FG', '2022-12-24 20:57:25', 'doc/a.PNG'),
(10, 'plamedi', 'kimbangu', 'kisala@gmail.com', 'rtrtr', 'paris', '2022-12-24 19:39:14', 'doc/Capture2.PNG'),
(9, 'plamedi', 'kisala', 'kisala@gmail.com', 'azer', 'canada', '2022-12-24 19:38:25', 'doc/3.PNG'),
(14, 'stema', 'mwamba', 'stema@gmail.com', '134', 'canada', '2023-01-12 15:40:16', 'doc/CC.PNG'),
(15, 'gabriel', 'luyungu', 'luyungu@gmail.com', '1234', 'paris', '2023-01-12 16:00:15', 'doc/BB.PNG'),
(16, 'joel', 'mosengwo', 'mosengwo@gmail.', 'jetre', 'kinshas', '2023-01-12 16:27:37', '');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `email`, `prix`) VALUES
(34, 'luyungu@gmail.com', 20),
(33, 'luyungu@gmail.com', 90);

-- --------------------------------------------------------

--
-- Structure de la table `repas`
--

DROP TABLE IF EXISTS `repas`;
CREATE TABLE IF NOT EXISTS `repas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `repas`
--

INSERT INTO `repas` (`id`, `name`, `img`, `prix`) VALUES
(1, 'c1', 'img/image/1.jpg', 35),
(2, 'c2', 'img/image/2.jpg', 30),
(3, 'c3', 'img/image/3.jpg', 20),
(4, 'c4', 'img/image/4.jpg', 25),
(5, 'c5', 'img/image/5.jpg', 60),
(6, 'c6', 'img/image/6.jpg', 40);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
