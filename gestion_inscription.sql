-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 18 Juin 2019 à 23:05
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_inscription`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `etat_civil` varchar(255) DEFAULT NULL,
  `prenom_contact` varchar(255) DEFAULT NULL,
  `nom_contact` varchar(255) DEFAULT NULL,
  `lien_parente` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `tel_contact` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id_contact`, `id_student`, `etat_civil`, `prenom_contact`, `nom_contact`, `lien_parente`, `adresse`, `ville`, `tel_contact`) VALUES
(1, 1, 'Monde des Obits', 'Bilbon', 'Saket', 'Oncle Sam', 'Monde des Obits', 'Monde des Obits', 33124587),
(2, 2, 'Dakar', 'Lune', 'Diop', 'Frére', 'Almadie', 'Dakar', 775821456),
(3, 3, 'Louga', 'Fatim', 'Ndiaye', 'Tante', 'Louga', 'Louga', 781024789),
(4, 4, 'Louga', 'Amary', 'Fall', 'Oncle', 'Louga', 'Louga', 771025487),
(6, 1, 'Saint-Louis', 'Mahmoud', 'Fall', 'Cousin', 'Pikine', 'Pikine', 784102569);

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE `diplome` (
  `id_diplome` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `mention` varchar(255) DEFAULT NULL,
  `etablissement` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `diplome`
--

INSERT INTO `diplome` (`id_diplome`, `id_etudiant`, `annee`, `mention`, `etablissement`) VALUES
(1, 1, 2009, 'Assez-bien', 'MIT'),
(2, 2, 2020, 'Trés-bien', 'Sup Info'),
(3, 3, 2024, 'Assez-bien', 'Saint-Michel'),
(4, 4, 2011, 'Bien ', 'Pierre et Marie-Curie'),
(7, 1, 2019, 'Trés-bien', 'Stanford'),
(8, 3, 2025, 'Trés-bien', 'Havard'),
(9, 2, 2022, 'Assez-bien', 'Pierre et Marie-Curie'),
(10, 1, 2018, 'Bien ', 'Grenoble'),
(11, 1, 2018, 'Passable ', 'UCAD'),
(12, 2, 2019, 'Assez-bien', 'Paris-Diderot'),
(13, 3, 2015, 'Assez-bien', 'UGB'),
(14, 1, 2015, 'Assez-bien', 'Sup De Co'),
(15, 1, 2010, 'Passable ', 'UGB'),
(16, 1, 2014, 'Bien ', 'UCAO'),
(17, 3, 2012, 'Bien ', 'Paris 2');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `identifiant` int(11) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `date_naissance` varchar(255) DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emploi` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `annee` varchar(255) DEFAULT NULL,
  `cycle` varchar(255) DEFAULT NULL,
  `departement` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`identifiant`, `prenom`, `nom`, `date_naissance`, `lieu_naissance`, `genre`, `nationalite`, `telephone`, `email`, `emploi`, `statut`, `annee`, `cycle`, `departement`) VALUES
(1, 'Freudon', 'Saket', '10/12/1990', 'Monde des Obits', 'Masculin', 'Obit', 33214587, 'freudon@gmail.com', 'Salarié', 'Régime Normal', 'Master 1', 'Deuxiéme', 'Informatique'),
(2, 'Moustapha', 'Diop', '12/12/1996', 'Dakar', 'Masculin', 'Sénégalaise', 785412369, 'moustaph@gmail.com', 'Salarié', 'Régime Particulier', 'Master 2', 'Deuxiéme', 'Informatique'),
(3, 'Aminata', 'Diop', '15/10/1997', 'Dakar', 'Féminin', 'Sénégalaise', 784102589, 'minadiop@gmail.com', 'Salarié', 'Régime Salarié', 'Licence 3', 'Premier', 'Management'),
(4, 'Cheikh ', 'Ndiaye', '05/05/1991', 'Louga', 'Masculin', 'Sénégalaise', 784512069, 'cheikh@gmail.com', 'Salarié', 'Régime Particulier', 'Deuxiéme année', 'Troisiéme', 'Physique'),
(5, 'François', 'Dubois', '15/03/2001', 'Paris', 'Masculin', 'Française', 33984575, 'francoisdubois@gmail.com', 'Non Salarié', 'Régime Normal', 'Licence 1', 'Premier', 'Géographie');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `id_user`, `username`, `password`, `type`) VALUES
(1, 1, 'admin', 'admin', 'administrateur'),
(2, 2, 'coord', 'coord', 'coordonnateur'),
(3, 3, 'assis', 'assis', 'assistant'),
(4, 4, 'testing', 'testing', 'coordonnateur'),
(5, 5, 'assis2', 'assis2', 'assistant');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`id_diplome`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `id_diplome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
