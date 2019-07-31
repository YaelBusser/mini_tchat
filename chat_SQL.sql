-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 31 Juillet 2019 à 14:41
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `msg` varchar(310) NOT NULL,
  `dateA` date NOT NULL,
  `dateH` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Contenu de la table `chat`
--

INSERT INTO `chat` (`id`, `pseudo`, `msg`, `dateA`, `dateH`) VALUES
(176, 'maclevine', 'Salut !\r\n', '0000-00-00', '00:00:00'),
(177, 'maclevine', 'Salut !', '0000-00-00', '00:00:00'),
(178, 'maclevine', 'Yo !', '0000-00-00', '00:00:00'),
(179, 'maclevine', 'Yo! \r\n\r\n', '0000-00-00', '00:00:00'),
(180, 'maclevine', 'ça va ?', '0000-00-00', '00:00:00'),
(181, 'maclevine', 'Oui et toi ?', '0000-00-00', '00:00:00'),
(182, 'maclevine', 'Bien bien ', '0000-00-00', '00:00:00'),
(183, 'maclevine', 'Oui je sais ! Je parle tout seul !', '0000-00-00', '00:00:00'),
(184, 'maclevine', 'Mais bon c''est un test', '0000-00-00', '00:00:00'),
(185, 'maclevine', 'pour tester quoi x)\r\n', '0000-00-00', '00:00:00'),
(186, 'maclevine', 'voilà voilà\r\n', '0000-00-00', '00:00:00'),
(189, 'maclevine', 'Ceci est un test ! Cher correcteur, le pseudo est bien sauvegardé d''un message à l''autre mais j''ai pas réussit à le sauvegarder quand on appuie sur le bouton afficher les 15 derniers messages ceci est un mystère pour moi j''ai tout essayer ! Ne me retirez pas des points sur un truc que j''ai rajouté en plus xD ', '0000-00-00', '00:00:00'),
(190, 'maclevine', 'Voili voilou x)', '0000-00-00', '00:00:00'),
(195, 'maclevine', 'lol !', '0000-00-00', '00:00:00'),
(196, 'maclevine', 'azeaze', '0000-00-00', '00:00:00'),
(197, 'maclevine', 'azeaze', '0000-00-00', '00:00:00'),
(198, 'maclevine', 'zz', '0000-00-00', '00:00:00'),
(199, 'maclevine', 'ee', '2019-07-31', '00:00:00'),
(200, 'maclevine', 'aa', '2019-07-31', '00:00:00'),
(201, 'maclevine', 'azz', '2019-07-31', '14:27:10'),
(202, 'maclevine', 'te', '2019-07-31', '14:27:29'),
(203, 'maclevine', 'er', '2019-07-31', '14:27:36'),
(204, 'maclevine', 'lol', '2019-07-31', '14:27:42'),
(205, 'maclevine', 'xD', '2019-07-31', '14:27:51'),
(206, 'maclevine', 'xxx', '2019-07-31', '14:27:55'),
(207, 'maclevine', 'xxx', '2019-07-31', '14:27:57'),
(208, 'maclevine', 'xx', '2019-07-31', '14:28:01'),
(209, 'maclevine', 'xx', '2019-07-31', '14:29:45'),
(210, 'maclevine', 'xx', '2019-07-31', '14:30:02'),
(211, 'maclevine', 'ezae', '2019-07-31', '14:32:14'),
(212, 'maclevine', 'yo\r\n', '2019-07-31', '14:32:18'),
(213, '&lt;h1&gt;maclevine&lt;/h1&gt;', '&lt;h1&gt;yo&lt;/h1&gt;', '2019-07-31', '14:32:36'),
(214, '&lt;h1&gt;maclevine&lt;/h1&gt;', '&lt;h1&gt;yo&lt;/h1&gt;', '2019-07-31', '14:33:58'),
(215, '&lt;h1&gt;maclevine&lt;/h1&gt;', '&lt;h1&gt;yo&lt;/h1&gt;', '2019-07-31', '14:34:18'),
(216, '&lt;h1&gt;maclevine&lt;/h1&gt;', '&lt;h1&gt;yo&lt;/h1&gt;', '2019-07-31', '14:34:24'),
(217, '&lt;h1&gt;maclevine&lt;/h1&gt;', '&lt;h1&gt;yo&lt;/h1&gt;', '2019-07-31', '14:34:28'),
(218, 'maclevine', 'yopp\r\n', '2019-07-31', '14:34:38'),
(219, 'maclevine', 'yopp\r\n', '2019-07-31', '14:34:51'),
(220, 'maclevine', 'yopp\r\n', '2019-07-31', '14:35:07'),
(221, 'maclevine', 'yopp\r\n', '2019-07-31', '14:35:12'),
(222, 'maclevine', 'yopp\r\n', '2019-07-31', '14:35:18'),
(223, 'maclevine', 'yopp\r\n', '2019-07-31', '14:35:26'),
(224, 'maclevine', 'yopp\r\n', '2019-07-31', '14:35:58'),
(230, '&lt;h1&gt;maclevine&lt;/h1&gt;', 'Ceci est un test ! Cher correcteur, le pseudo est bien sauvegardé d''un message à l''autre mais j''ai pas réussit à le sauvegarder quand on appuie sur le bouton afficher les 15 derniers messages ceci est un mystère pour moi j''ai tout essayer ! Ne me retirez pas des points sur un truc que j''ai rajouté en plus xD ', '2019-07-31', '14:41:20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
