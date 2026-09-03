-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 03 sep. 2026 à 20:58
-- Version du serveur : 10.11.14-MariaDB-0ubuntu0.24.04.1
-- Version de PHP : 8.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `es_extended`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Savings account', 0),
('society_abatteur', 'Abatteur', 1),
('society_agriculteur', 'Agriculteur', 1),
('society_ambulance', 'EMS', 1),
('society_bucheron', 'Bûcheron', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_mineur', 'Mineur', 1),
('society_nightclub', 'Nightclub', 1),
('society_police', 'Police', 1),
('society_shop01', 'Shop01', 1),
('society_shop02', 'Shop02', 1),
('society_shop03', 'Shop03', 1),
('society_shop04', 'Shop04', 1),
('society_shop05', 'Shop05', 1),
('society_shop06', 'Shop06', 1),
('society_shop07', 'Shop07', 1),
('society_shop08', 'Shop08', 1),
('society_shop09', 'Shop09', 1),
('society_shop10', 'Shop10', 1),
('society_shop11', 'Shop11', 1),
('society_shop12', 'Shop12', 1),
('society_shop13', 'Shop13', 1),
('society_shop14', 'Shop14', 1),
('society_shop15', 'Shop15', 1),
('society_shop16', 'Shop16', 1),
('society_shop17', 'Shop17', 1),
('society_shop18', 'Shop18', 1),
('society_shop19', 'Shop19', 1),
('society_shop20', 'Shop20', 1),
('society_tailleur', 'Tailleur', 1),
('society_taxi', 'Taxi', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Abus du klaxon', 30, 0),
(2, 'Traverser une ligne continue', 40, 0),
(3, 'Conduite à contre sens', 250, 0),
(4, 'Demi-tour illégal', 250, 0),
(5, 'Conduite hors route illégalement', 170, 0),
(6, 'Refuser un ordre légitime', 30, 0),
(7, 'Arrêt illégal du véhicule', 150, 0),
(8, 'Stationnement illégal', 70, 0),
(9, 'Ne pas céder la priorité à droite', 70, 0),
(10, 'Non-respect des informations sur le véhicule', 90, 0),
(11, 'Griller un Stop', 105, 0),
(12, 'Griller un feu rouge', 130, 0),
(13, 'Passage illégal', 100, 0),
(14, 'Conduire un véhicule illégal', 100, 0),
(15, 'Conduire sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Vitesse supérieure à < 5 mph', 90, 0),
(18, 'Vitesse supérieure à 5-15 mph', 120, 0),
(19, 'Vitesse supérieure à 15-30 mph', 180, 0),
(20, 'Vitesse supérieure à > 30 mph', 300, 0),
(21, 'Entrave à la fluidité du trafic', 110, 1),
(22, 'Ivresse publique', 90, 1),
(23, 'Conduite désordonnée', 90, 1),
(24, 'Entrave à la justice', 130, 1),
(25, 'Insultes envers les civils', 75, 1),
(26, 'Non-respect envers un LEO', 110, 1),
(27, 'Menace verbale envers un civil', 90, 1),
(28, 'Menace verbale envers un LEO', 150, 1),
(29, 'Fournir de fausses informations', 250, 1),
(30, 'Tentative de Corruption', 1500, 1),
(31, 'Brandir une arme dans la ville', 120, 2),
(32, 'Brandir une arme mortelle dans la ville', 300, 2),
(33, 'Pas de permis Armes à feu', 600, 2),
(34, 'Possession arme illégale', 700, 2),
(35, 'Possession outils de cambriolage', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intention de vendre/déranger une substance illégale', 1500, 2),
(38, 'Fabrication de substance illégale', 1500, 2),
(39, 'Possession de substance illégale', 650, 2),
(40, 'Enlèver un civil', 1500, 2),
(41, 'Kidnapper un LEO', 2000, 2),
(42, 'Vol', 650, 2),
(43, 'Vol à main armée magasin', 650, 2),
(44, 'Vol à main armée banque', 1500, 2),
(45, 'Assaut contre un civil', 2000, 3),
(46, 'Assaut envers LEO', 2500, 3),
(47, 'Tentative de meurtre  envers un civil', 3000, 3),
(48, 'Tentative de meurtre envers un LEO', 5000, 3),
(49, 'Meurtre envers un civil', 10000, 3),
(50, 'Meurtre envers un LEO', 30000, 3),
(51, 'Homicide involontaire', 1800, 3),
(52, 'Fraude', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'civ',
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `type`, `whitelisted`) VALUES
('abatteur', 'Abatteur', 'civ', 1),
('agriculteur', 'Agriculteur', 'civ', 1),
('ambulance', 'Ambulancier', 'civ', 1),
('bucheron', 'Bûcheron', 'civ', 1),
('cardealer', 'Concessionnaire', 'civ', 1),
('mechanic', 'Mécanicien', 'civ', 1),
('mineur', 'Mineur', 'civ', 1),
('nightclub', 'Nightclub', 'civ', 1),
('offambulance', 'Off Ambulancier', 'civ', 1),
('offmechanic', 'Off Mécanicien', 'civ', 1),
('offnightclub', 'Off Nightclub', 'civ', 1),
('offpolice', 'Off Policier', 'civ', 1),
('offtaxi', 'Off taxi', 'civ', 1),
('police', 'Policier', 'civ', 1),
('shop01', 'Shop01', 'civ', 1),
('shop02', 'Shop02', 'civ', 1),
('shop03', 'Shop03', 'civ', 1),
('shop04', 'Shop04', 'civ', 1),
('shop05', 'Shop05', 'civ', 1),
('shop06', 'Shop06', 'civ', 1),
('shop07', 'Shop07', 'civ', 1),
('shop08', 'Shop08', 'civ', 1),
('shop09', 'Shop09', 'civ', 1),
('shop10', 'Shop10', 'civ', 1),
('shop11', 'Shop11', 'civ', 1),
('shop12', 'Shop12', 'civ', 1),
('shop13', 'Shop13', 'civ', 1),
('shop14', 'Shop14', 'civ', 1),
('shop15', 'Shop15', 'civ', 1),
('shop16', 'Shop16', 'civ', 1),
('shop17', 'Shop17', 'civ', 1),
('shop18', 'Shop18', 'civ', 1),
('shop19', 'Shop19', 'civ', 1),
('shop20', 'Shop20', 'civ', 1),
('tailleur', 'Tailleur', 'civ', 1),
('taxi', 'Taxi', 'civ', 1),
('unemployed', 'Chômeur', 'civ', 0),
('unemployed2', 'Chômeur2', 'civ', 1),
('unemployed3', 'Chômeur3', 'civ', 1),
('vigneron', 'Vigneron', 'civ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chômeur', 0, '{}', '{}'),
(2, 'unemployed2', 0, 'unemployed2', 'Chômeur2', 0, '{}', '{}'),
(3, 'unemployed3', 0, 'unemployed3', 'Chômeur3', 0, '{}', '{}'),
(4, 'police', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(5, 'police', 1, 'officer', 'Officier', 0, '{}', '{}'),
(6, 'police', 2, 'sergeant', 'Sergent', 0, '{}', '{}'),
(7, 'police', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(8, 'police', 4, 'boss', 'Capitaine', 0, '{}', '{}'),
(9, 'offpolice', 0, 'offrecruit', 'Off Recrue', 0, '{}', '{}'),
(10, 'offpolice', 1, 'offofficer', 'Off Officier', 0, '{}', '{}'),
(11, 'offpolice', 2, 'offsergeant', 'Off Sergent', 0, '{}', '{}'),
(12, 'offpolice', 3, 'offlieutenant', 'Off Lieutenant', 0, '{}', '{}'),
(13, 'offpolice', 4, 'offboss', 'Off Capitaine', 0, '{}', '{}'),
(14, 'ambulance', 0, 'ambulance', 'Ambulancier', 0, '{}', '{}'),
(15, 'ambulance', 1, 'doctor', 'Docteur', 0, '{}', '{}'),
(16, 'ambulance', 2, 'chief_doctor', 'Chef', 0, '{}', '{}'),
(17, 'ambulance', 3, 'boss', 'Patron', 0, '{}', '{}'),
(18, 'offambulance', 0, 'offambulance', 'Off Ambulancier', 0, '{}', '{}'),
(19, 'offambulance', 1, 'offdoctor', 'Off Docteur', 0, '{}', '{}'),
(20, 'offambulance', 2, 'offchief_doctor', 'Off Chef', 0, '{}', '{}'),
(21, 'offambulance', 3, 'offboss', 'Off Patron', 0, '{}', '{}'),
(22, 'taxi', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(23, 'taxi', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(24, 'taxi', 2, 'experimente', 'Employé', 0, '{}', '{}'),
(25, 'taxi', 3, 'uber', 'Chef', 0, '{}', '{}'),
(26, 'taxi', 4, 'boss', 'Patron', 0, '{}', '{}'),
(27, 'offtaxi', 0, 'offrecrue', 'Off Recrue', 0, '{}', '{}'),
(28, 'offtaxi', 1, 'offnovice', 'Off Apprenti', 0, '{}', '{}'),
(29, 'offtaxi', 2, 'offexperimente', 'Off Employé', 0, '{}', '{}'),
(30, 'offtaxi', 3, 'offuber', 'Off Chef', 0, '{}', '{}'),
(31, 'offtaxi', 4, 'offboss', 'Off Patron', 0, '{}', '{}'),
(32, 'mechanic', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(33, 'mechanic', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(34, 'mechanic', 2, 'experimente', 'Employé', 0, '{}', '{}'),
(35, 'mechanic', 3, 'chief', 'Chef', 0, '{}', '{}'),
(36, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(37, 'offmechanic', 0, 'offrecrue', 'Off Recrue', 0, '{}', '{}'),
(38, 'offmechanic', 1, 'offnovice', 'Off Apprenti', 0, '{}', '{}'),
(39, 'offmechanic', 2, 'offexperimente', 'Off Employé', 0, '{}', '{}'),
(40, 'offmechanic', 3, 'offchief', 'Off Chef', 0, '{}', '{}'),
(41, 'offmechanic', 4, 'offboss', 'Off Patron', 0, '{}', '{}'),
(42, 'cardealer', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(43, 'cardealer', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(44, 'cardealer', 2, 'experienced', 'Employé', 0, '{}', '{}'),
(45, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(46, 'nightclub', 0, 'barman', 'Barman', 0, '{}', '{}'),
(47, 'nightclub', 1, 'dancer', 'Danseur', 0, '{}', '{}'),
(48, 'nightclub', 2, 'chef', 'Chef', 0, '{}', '{}'),
(49, 'nightclub', 3, 'boss', 'Patron', 0, '{}', '{}'),
(50, 'offnightclub', 0, 'offbarman', 'Off Barman', 0, '{}', '{}'),
(51, 'offnightclub', 1, 'offdancer', 'Off Danseur', 0, '{}', '{}'),
(52, 'offnightclub', 2, 'offchef', 'Off Chef', 0, '{}', '{}'),
(53, 'offnightclub', 3, 'offboss', 'Off Patron', 0, '{}', '{}'),
(54, 'abatteur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(55, 'abatteur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(56, 'abatteur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(57, 'vigneron', 0, 'employee', 'Employé', 0, '{}', '{}'),
(58, 'vigneron', 1, 'chef', 'Chef', 0, '{}', '{}'),
(59, 'vigneron', 2, 'boss', 'Patron', 0, '{}', '{}'),
(60, 'agriculteur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(61, 'agriculteur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(62, 'agriculteur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(63, 'mineur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(64, 'mineur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(65, 'mineur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(66, 'bucheron', 0, 'employee', 'Employé', 0, '{}', '{}'),
(67, 'bucheron', 1, 'chef', 'Chef', 0, '{}', '{}'),
(68, 'bucheron', 2, 'boss', 'Patron', 0, '{}', '{}'),
(69, 'tailleur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(70, 'tailleur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(71, 'tailleur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(72, 'shop01', 0, 'employee', 'Employé', 0, '{}', '{}'),
(73, 'shop01', 1, 'boss', 'Patron', 0, '{}', '{}'),
(74, 'shop02', 0, 'employee', 'Employé', 0, '{}', '{}'),
(75, 'shop02', 1, 'boss', 'Patron', 0, '{}', '{}'),
(76, 'shop03', 0, 'employee', 'Employé', 0, '{}', '{}'),
(77, 'shop03', 1, 'boss', 'Patron', 0, '{}', '{}'),
(78, 'shop04', 0, 'employee', 'Employé', 0, '{}', '{}'),
(79, 'shop04', 1, 'boss', 'Patron', 0, '{}', '{}'),
(80, 'shop05', 0, 'employee', 'Employé', 0, '{}', '{}'),
(81, 'shop05', 1, 'boss', 'Patron', 0, '{}', '{}'),
(82, 'shop06', 0, 'employee', 'Employé', 0, '{}', '{}'),
(83, 'shop06', 1, 'boss', 'Patron', 0, '{}', '{}'),
(84, 'shop07', 0, 'employee', 'Employé', 0, '{}', '{}'),
(85, 'shop07', 1, 'boss', 'Patron', 0, '{}', '{}'),
(86, 'shop08', 0, 'employee', 'Employé', 0, '{}', '{}'),
(87, 'shop08', 1, 'boss', 'Patron', 0, '{}', '{}'),
(88, 'shop09', 0, 'employee', 'Employé', 0, '{}', '{}'),
(89, 'shop09', 1, 'boss', 'Patron', 0, '{}', '{}'),
(90, 'shop10', 0, 'employee', 'Employé', 0, '{}', '{}'),
(91, 'shop10', 1, 'boss', 'Patron', 0, '{}', '{}'),
(92, 'shop11', 0, 'employee', 'Employé', 0, '{}', '{}'),
(93, 'shop11', 1, 'boss', 'Patron', 0, '{}', '{}'),
(94, 'shop12', 0, 'employee', 'Employé', 0, '{}', '{}'),
(95, 'shop12', 1, 'boss', 'Patron', 0, '{}', '{}'),
(96, 'shop13', 0, 'employee', 'Employé', 0, '{}', '{}'),
(97, 'shop13', 1, 'boss', 'Patron', 0, '{}', '{}'),
(98, 'shop14', 0, 'employee', 'Employé', 0, '{}', '{}'),
(99, 'shop14', 1, 'boss', 'Patron', 0, '{}', '{}'),
(100, 'shop15', 0, 'employee', 'Employé', 0, '{}', '{}'),
(101, 'shop15', 1, 'boss', 'Patron', 0, '{}', '{}'),
(102, 'shop16', 0, 'employee', 'Employé', 0, '{}', '{}'),
(103, 'shop16', 1, 'boss', 'Patron', 0, '{}', '{}'),
(104, 'shop17', 0, 'employee', 'Employé', 0, '{}', '{}'),
(105, 'shop17', 1, 'boss', 'Patron', 0, '{}', '{}'),
(106, 'shop18', 0, 'employee', 'Employé', 0, '{}', '{}'),
(107, 'shop18', 1, 'boss', 'Patron', 0, '{}', '{}'),
(108, 'shop19', 0, 'employee', 'Employé', 0, '{}', '{}'),
(109, 'shop19', 1, 'boss', 'Patron', 0, '{}', '{}'),
(110, 'shop20', 0, 'employee', 'Employé', 0, '{}', '{}'),
(111, 'shop20', 1, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('permis_camion', 'Permis Camion'),
('permis_camiondmv', 'License Théorique C '),
('permis_moto', 'Permis Moto'),
('permis_motodmv', 'License Théorique A'),
('permis_voiture', 'Permis Voiture'),
('permis_voituredmv', 'License Théorique B'),
('t_weapon', 'Licence Théorique Arme'),
('weapon', 'Permis Arme'),
('weapon_assault_rifles', 'Licence illégale Fusils d\'Assaut'),
('weapon_handguns', 'Licence illégale Pistolet'),
('weapon_heavy_weapons', 'Licence illégale Armes Lourdes'),
('weapon_machine_guns', 'Licence illégale Mitrailleuses'),
('weapon_shotguns', 'Licence illégale Fusils à Pompe'),
('weapon_smg', 'Licence illégale SMG'),
('weapon_sniper_rifles', 'Licence illégale Fusils de Sniper'),
('weapon_throwables', 'Licence illégale Armes à Lancer');

-- --------------------------------------------------------

--
-- Structure de la table `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_etabli`
--

CREATE TABLE `owned_etabli` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(128) NOT NULL,
  `position` varchar(255) NOT NULL,
  `rotation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `ShopName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `owned_shops`
--

INSERT INTO `owned_shops` (`id`, `identifier`, `ShopName`) VALUES
(1, '0', 'shop01'),
(2, '0', 'shop02'),
(3, '0', 'shop03'),
(4, '0', 'shop04'),
(5, '0', 'shop05'),
(6, '0', 'shop06'),
(7, '0', 'shop07'),
(8, '0', 'shop08'),
(9, '0', 'shop09'),
(10, '0', 'shop10'),
(11, '0', 'shop11'),
(12, '0', 'shop12'),
(13, '0', 'shop13'),
(14, '0', 'shop14'),
(15, '0', 'shop15'),
(16, '0', 'shop16'),
(17, '0', 'shop17'),
(18, '0', 'shop18'),
(19, '0', 'shop19'),
(20, '0', 'shop20');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stored` tinyint(1) DEFAULT NULL,
  `parking` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SandyShores',
  `mileage` float DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `garage_id` varchar(32) NOT NULL DEFAULT 'A',
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_vehicles_fuel_type`
--

CREATE TABLE `player_vehicles_fuel_type` (
  `plate` varchar(20) NOT NULL,
  `fuelType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rcannabis`
--

CREATE TABLE `rcannabis` (
  `id` int(10) UNSIGNED NOT NULL,
  `stage` int(3) UNSIGNED NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(60) NOT NULL,
  `ssn` varchar(11) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `job3` varchar(20) DEFAULT 'unemployed3',
  `job3_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`),
  ADD KEY `esx_addon_account_data_owner` (`owner`);

--
-- Index pour la table `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_banking_identifier_time` (`identifier`,`time`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esx_billing_identifier` (`identifier`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Index pour la table `owned_etabli`
--
ALTER TABLE `owned_etabli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `owned_shops`
--
ALTER TABLE `owned_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esx_owned_vehicles_owner` (`owner`);

--
-- Index pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Index pour la table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Index pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Index pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Index pour la table `player_vehicles_fuel_type`
--
ALTER TABLE `player_vehicles_fuel_type`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `rcannabis`
--
ALTER TABLE `rcannabis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stage` (`stage`,`time`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esx_society_moneywash_identifier` (`identifier`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `unique_ssn` (`ssn`),
  ADD KEY `idx_adminmenu_first_last` (`firstname`,`lastname`),
  ADD KEY `idx_adminmenu_last_first` (`lastname`,`firstname`),
  ADD KEY `idx_adminmenu_phone` (`phone_number`);

--
-- Index pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esx_user_licenses_owner` (`owner`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `owned_etabli`
--
ALTER TABLE `owned_etabli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `owned_shops`
--
ALTER TABLE `owned_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rcannabis`
--
ALTER TABLE `rcannabis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
