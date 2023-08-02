-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 juin 2023 à 02:00
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
-- Base de données : `cabinet`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id_addresse` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `avenue` varchar(30) NOT NULL,
  `quartier` varchar(30) NOT NULL,
  `commune` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `postnom` varchar(30) NOT NULL,
  PRIMARY KEY (`id_addresse`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id_addresse`, `numero`, `avenue`, `quartier`, `commune`, `nom`, `postnom`) VALUES
(2, 2, 'Z', 'D', 'E', '', ''),
(4, 134, 'NGAMAYAMA', 'KAMBOKO', 'KIMBANSEKE', '', ''),
(19, 32, 'NGAMAYAMA', 'KINGASANI', 'KIMBANSEKE', 'KING', 'MPADIOMO');

-- --------------------------------------------------------

--
-- Structure de la table `fiche`
--

DROP TABLE IF EXISTS `fiche`;
CREATE TABLE IF NOT EXISTS `fiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `postnom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fiche`
--

INSERT INTO `fiche` (`id`, `nom`, `postnom`) VALUES
(1, 'king', 'luve'),
(2, 'king', 'mpadiomo'),
(3, 'king', 'mpadiomo'),
(4, 'luveto', 'dialungana');

-- --------------------------------------------------------

--
-- Structure de la table `fichepatient`
--

DROP TABLE IF EXISTS `fichepatient`;
CREATE TABLE IF NOT EXISTS `fichepatient` (
  `id_fiche` int(11) NOT NULL AUTO_INCREMENT,
  `num_fiche` int(11) DEFAULT NULL,
  `nom_pat` varchar(35) DEFAULT NULL,
  `postnom_pat` varchar(30) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `etat_civil` varchar(30) DEFAULT NULL,
  `poids` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `plainte` text,
  `duree_maladie` varchar(10) DEFAULT NULL,
  `examen_phys` text,
  `nom_redacteur` varchar(30) DEFAULT NULL,
  `medecin_traitant` varchar(30) DEFAULT NULL,
  `date_fiche` date NOT NULL,
  `taille` float DEFAULT NULL,
  `id_sec` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fiche`),
  KEY `id_sec` (`id_sec`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fichepatient`
--

INSERT INTO `fichepatient` (`id_fiche`, `num_fiche`, `nom_pat`, `postnom_pat`, `sexe`, `age`, `profession`, `etat_civil`, `poids`, `temperature`, `plainte`, `duree_maladie`, `examen_phys`, `nom_redacteur`, `medecin_traitant`, `date_fiche`, `taille`, `id_sec`) VALUES
(1, 123, '44', 'D', 'MASCULIN', 23, 'D', 'MARIE(E)', 2, 1, 'EEEE', 'R', 'D', 'E', 'E', '2023-01-12', 3, 1),
(2, 123, '', '', 'MASCULIN', 23, 'D', 'MARIE(E)', 2, 1, 'EEEE', 'R', 'D', 'E', 'E', '2023-01-12', 3.1, 1),
(3, 123, 'LUVETO', 'DIALUNGANA', 'MASCULIN', 21, 'ETUDIANT', 'CELIBATAIRE', 56, 36, 'MAUX DE TETE AVEC BBBBBBBBBBNNNNN\nFJFJJFJJFJFJFJJF\nFJJFJFJFJF\nFJFJJ', '3 jours', 'TDR', 'KIVWAMA', 'KAKUMBU', '2023-02-24', 1.6, 1),
(4, 3, '', '', '', 3, '', '', 3, 3, '', '', '', '', '', '2001-10-01', 3, 1),
(5, 3, '', '', '', 3, '', '', 3, 3, '', '', '', '', '', '2002-03-03', 3, 1),
(6, 212, 'KING', 'MPADIOMO', 'MASCULIN', 20, 'ETUDIANT', 'DIVORCE(E)', 56, 36, 'MAUX DE TETE', '2 JOURS', 'TDR', 'JHON', 'KAKUMBU', '2023-03-15', 1.4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `id_medecin` int(11) NOT NULL AUTO_INCREMENT,
  `nom_medecin` varchar(30) NOT NULL,
  `postnom_medecin` varchar(30) NOT NULL,
  `prenom_medecin` varchar(30) NOT NULL,
  `num_matricule` int(11) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `specialite` varchar(30) NOT NULL,
  `anciennete` int(11) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  PRIMARY KEY (`id_medecin`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id_medecin`, `nom_medecin`, `postnom_medecin`, `prenom_medecin`, `num_matricule`, `sexe`, `specialite`, `anciennete`, `telephone`, `ville`, `nationalite`) VALUES
(1, 'kakumbu', 'mobuo', 'franck', 722012538, 'M', 'ophtalmologue', 20, '0899168943', 'kinshasa', 'congolaise'),
(2, 'makalebo', 'mpadiomo', 'charlie', 733026344, 'F', 'ophtalmologiste', 11, '0815995094', 'kinshasa', 'congolaise'),
(3, 'matuzungidi', 'kimbangu', 'ken', 612442682, 'M', 'ophtalmologiste', 22, '0900444710', 'kinshasa', 'congolaise');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id_patient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_patient` varchar(30) DEFAULT NULL,
  `postnom_patient` varchar(30) DEFAULT NULL,
  `prenom_patient` varchar(30) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `datenais` date DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `nationalite` varchar(30) DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `id_sec` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_patient`),
  KEY `id_sec` (`id_sec`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id_patient`, `nom_patient`, `postnom_patient`, `prenom_patient`, `sexe`, `datenais`, `telephone`, `ville`, `nationalite`, `profession`, `id_sec`) VALUES
(1, 'LUVETO', 'DIALUNGANA', 'SALOMON', 'MASCULIN', '2001-12-27', '0815995094', 'KINSHASA', 'CONGOLAISE', 'ETUDIANT', 1),
(3, 'MOSENGWO', 'MOBUO', 'GLODY', 'MASCULIN', '2004-10-21', '08111453387', 'KINSHASA', 'CONGOLAISE', 'ETUDIANT', 1),
(4, 'MAKILA', 'LUKIAN', 'GLODY', 'MASCULIN', '2004-10-21', '123333333', 'KINSHASA', 'CONGOLAISE', 'ETUDIANT', 1),
(6, 'MWAMBA', 'NGWABA', 'JOEL', 'MASCULIN', '2020-03-12', '0824774776', 'CANADA', 'CONGOLAISE', 'ETUDIANT', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rendezvous`
--

DROP TABLE IF EXISTS `rendezvous`;
CREATE TABLE IF NOT EXISTS `rendezvous` (
  `id_rend` int(11) NOT NULL AUTO_INCREMENT,
  `date_rend` date DEFAULT NULL,
  `heure` varchar(20) DEFAULT NULL,
  `nom` varchar(40) NOT NULL,
  `postnom` varchar(40) NOT NULL,
  PRIMARY KEY (`id_rend`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rendezvous`
--

INSERT INTO `rendezvous` (`id_rend`, `date_rend`, `heure`, `nom`, `postnom`) VALUES
(1, '2021-06-06', '23 h', 'GDGD', 'XXHHX'),
(2, '2003-05-04', 'EHHE', 'SIMON', 'XJXJX'),
(3, '2003-03-08', '12h', 'LUVETO', 'DIALUNGANA');

-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

DROP TABLE IF EXISTS `secretaire`;
CREATE TABLE IF NOT EXISTS `secretaire` (
  `id_sec` int(11) NOT NULL AUTO_INCREMENT,
  `nom_sec` varchar(30) NOT NULL,
  `postnom_sec` varchar(30) NOT NULL,
  `prenom_sec` varchar(30) NOT NULL,
  `num_agent` int(11) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `date_engagement` date NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  `mot_de_passe` varchar(15) NOT NULL,
  PRIMARY KEY (`id_sec`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `secretaire`
--

INSERT INTO `secretaire` (`id_sec`, `nom_sec`, `postnom_sec`, `prenom_sec`, `num_agent`, `sexe`, `date_engagement`, `telephone`, `ville`, `nationalite`, `mot_de_passe`) VALUES
(1, 'kivwama', 'pidika', 'pascaline', 10035, 'F', '2021-12-14', '08148847544', 'kinshasa', 'congolaise', '123456'),
(2, 'makinisi', 'lumana', 'sarah', 10047, 'F', '2021-12-23', '0811453387', 'kinshasa', 'congolaise', '987654');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

DROP TABLE IF EXISTS `traitement`;
CREATE TABLE IF NOT EXISTS `traitement` (
  `id_trait` int(11) NOT NULL AUTO_INCREMENT,
  `nom_medicament` varchar(30) DEFAULT NULL,
  `type_medicament` varchar(30) DEFAULT NULL,
  `dose` varchar(30) DEFAULT NULL,
  `allergie` varchar(30) DEFAULT NULL,
  `nom` varchar(40) NOT NULL,
  `postnom` varchar(40) NOT NULL,
  PRIMARY KEY (`id_trait`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id_trait`, `nom_medicament`, `type_medicament`, `dose`, `allergie`, `nom`, `postnom`) VALUES
(1, 'E', 'E', 'E', 'E', '', ''),
(4, 'ANAFLAM', 'COMPRIME', '2 FOIS PAR JOURS', 'AUCUNE', '', ''),
(7, 'PARACETAMOL', 'COMPRIME', '2 FOIS PAR JOURS', 'AUCUNE', 'KING', 'MPADIOMO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
