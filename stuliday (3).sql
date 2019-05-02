-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 02 mai 2019 à 12:55
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stuliday`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` int(6) NOT NULL,
  `titre_article` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `contenu_article` text NOT NULL,
  `categorie_article` varchar(255) NOT NULL,
  `active` int(1) NOT NULL,
  `start_date_article` date DEFAULT NULL,
  `end_date_article` date DEFAULT NULL,
  `publish_date_article` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `available_article` int(2) NOT NULL,
  `price_article` int(3) NOT NULL,
  `adress_article` text NOT NULL,
  `city_article` text NOT NULL,
  `postal_article` int(5) NOT NULL,
  `author_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `titre_article`, `image_url`, `contenu_article`, `categorie_article`, `active`, `start_date_article`, `end_date_article`, `publish_date_article`, `available_article`, `price_article`, `adress_article`, `city_article`, `postal_article`, `author_article`) VALUES
(3, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 120, 45, '3', ' Place St-Michel', 33000, 37),
(4, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', -2, 65, '3', ' Place St-Michel', 33000, 27),
(5, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(6, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(7, 'Duplex Bordeaux Saint Michel', 'images/image7.jpg', 'Mon logement est proche de la vue exceptionnelle des quais sur La Garonne, les nombreux restaurants autour, les activités adaptées aux familles à la plaine des sports sur les quais.. Vous apprécierez mon logement pour le quartier historique de St Michel, la luminosité de l\'appartement, les lits confortables, la cuisine équipée, le confort de la rénovation.. Mon logement est parfait pour les couples, les voyageurs en solo, les voyageurs d\'affaires et les familles. Tram, vélos à 3mn à pied.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(8, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(9, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(10, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 0, 129, '3', ' Place St-Michel', 33000, 27),
(11, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(12, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise. Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(13, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(14, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(15, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(16, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(21, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(22, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 0, 23, '3', ' Place St-Michel', 33000, 27),
(23, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 0, 45, '3', ' Place St-Michel', 33000, 27),
(24, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 0, 65, '3', ' Place St-Michel', 33000, 27),
(25, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '7', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', -4, 79, '3', ' Place St-Michel', 33000, 27),
(26, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 0, 129, '3', ' Place St-Michel', 33000, 27),
(31, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(32, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(33, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(34, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(35, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(36, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(41, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(42, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(43, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(44, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(45, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(46, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(51, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(52, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(53, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(54, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(55, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(56, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(61, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(62, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(63, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(64, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 0, 65, '3', ' Place St-Michel', 33000, 27),
(65, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(66, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(71, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(72, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(73, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(74, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(75, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(76, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(81, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 0, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(82, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(83, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(84, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(85, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(86, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(91, 'Magnifique Duplex au centre de St Michel', 'images/image2.jpg', 'Laissez-vous séduire par la douceur d’un séjour à Bordeaux dans ce duplex d\'architecte situé dans un bel immeuble du XVIII siècle en plein cœur du quartier historique.', '3', 1, '2018-11-23', '2018-11-25', '2018-11-05 09:17:35', 1, 279, '3, Place St-Michel', 'Bordeaux', 33000, 27),
(92, 'St Pierre/Magnifique Suite rue de la Merci', 'images/image4.jpg', 'Vivez la Dolce Vita à la Bordelaise! Ce pied à terre de 40m2 aux prestations haut de gamme (cuisine en corian, Nespresso Kitchenaid , linge jacquard français, Speaker bluetooth, thé Kusmi Tea, Chromecast TV..) vous séduira par son caractère et sa position centrale. Accédez à pied à tous les lieux touristiques de la ville. A vous, les restos rue du Parlement et rue St Rémi, les boutiques tendances rue du Pas St George et rue St James, les apéritifs place Camille Jullian ou Ferdinand Lafargue...', '1', 1, '2018-11-22', '2018-11-08', '2018-11-09 11:20:29', 3, 23, '3', ' Place St-Michel', 33000, 27),
(93, 'Lovely Flat *** Grand Théâtre', 'images/image5.jpg', 'Venez poser vos valises dans cet appartement plein de charme, design et confortable, situé au coeur du Bordeaux historique et vivant, près du Grand Théâtre, dans la rue Ste Catherine.', '2', 1, '2018-11-29', '2018-11-29', '2018-11-09 11:20:29', 4, 45, '3', ' Place St-Michel', 33000, 27),
(94, 'T1 Bis au coeur du vieux Bordeaux', 'images/image1.jpg', 'Ce beau studio avec sa chambre en mezzanine, a été rénové et aménagé pour en faire un nid cosy et confortable. Il est situé dans un ancien hôtel particulier en pierre, au cœur de la vieille ville (rue des faussets), idéal pour découvrir Bordeaux.', '3', 1, '2018-11-17', '2018-11-21', '2018-11-09 11:20:29', 2, 65, '3', ' Place St-Michel', 33000, 27),
(95, 'Joli appartement de 30m2 au coeur de Bordeaux', 'images/image3.jpg', 'Joli appartement refait à neuf dans une rue calme au coeur de Bordeaux à proximité des commodités et des transports en commun. Situé dans une des plus ancienne rue de Bordeaux et proche de la grosse cloche, du pont de pierre, de la basilique Saint Michel, de la place de la bourse et des quais.', '2', 1, '2018-11-28', '2018-11-29', '2018-11-09 11:20:29', 1, 79, '3', ' Place St-Michel', 33000, 27),
(96, 'SUPERBE T2 PLEIN COEUR DE BORDEAUX', 'images/image7.jpg', 'Spacieux deux-pièces typique avec ses pierres apparentes et sa belle cheminée. Il est chaleureux, lumineux et fonctionnel. Vous êtes dans le coeur de Bx cerné par les terrasses, les boutiques, les restos, les vieilles ruelles et les jolies places.', '5', 1, '2018-11-23', '2018-11-25', '2018-11-09 11:20:29', 1, 129, '3', ' Place St-Michel', 33000, 27),
(97, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'images/image3.jpg', 'aaa', '1', 1, '2018-11-03', '2018-11-04', '2018-11-20 14:33:33', 0, 123, '1', '1', 1, 27),
(98, ' dsfddsfsdf', '2337.jpg', 'fsdsdfsdfsdf', '2', 1, '2019-01-12', '2019-01-27', '2019-01-11 08:07:11', 123, 123, '123', '123', 123, 27),
(99, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2337.jpg', 'aaa', '1', 1, '2019-01-11', '2019-01-12', '2019-01-11 08:16:17', 123, 123, '123', '123', 123, 27),
(100, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2337.jpg', 'aaa', '1', 1, '2019-01-06', '2019-01-06', '2019-01-11 08:19:32', 123, 123, '123', '123', 123, 27),
(101, 'Cirque Roger Lanzac', '2337.jpg', 'aaa', '1', 1, '2019-01-06', '2019-01-12', '2019-01-11 08:20:58', 123, 123, '123', '123', 123, 27);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `titre_categorie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `titre_categorie`) VALUES
(1, 'Chambre'),
(2, 'Logement Entier - T1'),
(3, 'Logement Entier - T2'),
(4, 'Logement Entier - T3'),
(5, 'Logement Entier - Maison'),
(6, 'Logement Entier - Chalet'),
(7, 'Place de MobilHome'),
(8, 'Chambre - Auberge de Jeunesse');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nbr_places` int(11) NOT NULL,
  `id_annonce` int(11) NOT NULL,
  `qr_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `id_user`, `nbr_places`, `id_annonce`, `qr_code`) VALUES
(10, 27, 3, 3, ''),
(11, 27, 2, 3, ''),
(12, 27, 3, 22, ''),
(13, 27, 1, 23, ''),
(14, 27, 1, 23, ''),
(15, 27, 1, 23, ''),
(16, 27, 1, 23, ''),
(17, 27, 1, 24, ''),
(18, 27, 1, 24, ''),
(19, 27, 1, 26, ''),
(20, 27, 1, 1, ''),
(21, 27, 1, 2, ''),
(22, 27, 1, 2, ''),
(23, 27, 1, 2, ''),
(24, 27, 1, 1, ''),
(25, 27, 1, 1, ''),
(26, 27, 1, 1, ''),
(27, 27, 1, 1, ''),
(28, 27, 1, 1, ''),
(29, 27, 1, 1, ''),
(30, 27, 1, 1, ''),
(31, 27, 1, 1, ''),
(32, 27, 1, 1, ''),
(33, 27, 1, 1, ''),
(34, 27, 1, 1, ''),
(35, 27, 1, 1, ''),
(36, 27, 1, 1, ''),
(37, 27, 1, 1, ''),
(38, 27, 1, 1, ''),
(39, 27, 1, 1, ''),
(40, 27, 1, 1, ''),
(41, 27, 1, 1, ''),
(42, 27, 1, 1, ''),
(43, 27, 1, 1, ''),
(44, 27, 1, 1, ''),
(45, 27, 1, 1, ''),
(46, 27, 1, 1, ''),
(47, 27, 1, 97, ''),
(48, 27, 3, 1, ''),
(49, 27, 3, 1, ''),
(50, 27, 3, 1, ''),
(51, 27, 3, 1, ''),
(52, 27, 3, 1, ''),
(53, 27, 1, 1, ''),
(54, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est94a65ba13d3560a20261e1dc6be8113f.png'),
(55, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est94a65ba13d3560a20261e1dc6be8113f.png'),
(56, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est94a65ba13d3560a20261e1dc6be8113f.png'),
(57, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est94a65ba13d3560a20261e1dc6be8113f.png'),
(58, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est94a65ba13d3560a20261e1dc6be8113f.png'),
(59, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	estc0a73a31266a0ac0ef0d980fe12263b8.png'),
(60, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	estdf5750a4c4abab9513f86bc7e54c49f6.png'),
(61, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	estb3f986d7174332cdf5b0e49a69baed9c.png'),
(62, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est45bb5e761827b276ff5e28a4a058e574.png'),
(63, 27, 1, 1, 'C:xampphtdocsprojectsmyblogappinc	emp	est45bb5e761827b276ff5e28a4a058e574.png'),
(64, 0, 1, 81, 'C:xampphtdocsprojectsDevLogicielmyblogappinc	emp	est6d90b8496ada7a8dcedef7f67b68a6db.png'),
(65, 0, 2, 64, 'C:xampphtdocsprojectsDevLogicielmyblogappinc	emp	est6d90b8496ada7a8dcedef7f67b68a6db.png'),
(66, 27, 1, 10, 'C:xampphtdocsprojectsDevLogicielmyblogappinc	emp	estfc153a0ba37af422bbf02c41b942083e.png'),
(67, 37, 0, 25, ''),
(68, 37, 1, 25, ''),
(69, 37, 1, 25, ''),
(70, 37, 1, 25, ''),
(71, 37, 1, 25, ''),
(72, 37, 1, 25, ''),
(73, 37, 1, 25, ''),
(74, 37, 1, 25, ''),
(75, 37, 1, 25, ''),
(76, 37, 1, 25, ''),
(77, 37, 1, 25, ''),
(78, 37, 1, 25, ''),
(79, 37, 1, 25, ''),
(80, 37, 1, 25, ''),
(81, 37, 1, 25, ''),
(82, 37, 2, 4, ''),
(83, 37, 2, 4, '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname_user` text NOT NULL,
  `lastname_user` text NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `image_user` varchar(255) NOT NULL,
  `adress_user` text NOT NULL,
  `number_articles_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname_user`, `lastname_user`, `email_user`, `password_user`, `image_user`, `adress_user`, `number_articles_user`) VALUES
(37, 'Thomas', 'test', 'ccc@ccc.fr', '$2y$10$7bG.RKi.1hIeE1P0v11V.Oox7znTKPh6HB2MR2fca6Q7e6sS64sNC', '', 'adresse', 12);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
