-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 04:36:18
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tpe_web2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `name`, `price`) VALUES
(1, 'vip', 750),
(2, 'popular', 320),
(3, 'promo', 0),
(4, 'sale', 100),
(28, 'asdasd', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `score` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comment`
--

INSERT INTO `comment` (`comment_id`, `description`, `ticket_id`, `user_id`, `score`) VALUES
(72, 'this is great!', 35, 65, 5),
(81, 'oh yessss!!!', 35, 120, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `id_category` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `name`, `date`, `id_category`) VALUES
(35, 'Paul Deep', '2020-10-24', 1),
(36, 'Paul Deep', '2020-10-24', 1),
(37, 'Paul Deep', '2020-10-24', 1),
(38, 'Paul Deep', '2020-10-24', 1),
(39, 'Paul Deep', '2020-10-24', 1),
(40, 'Paul Deep', '2020-10-24', 1),
(41, 'Paul Deep', '2020-10-24', 1),
(42, 'Paul Deep', '2020-10-24', 1),
(43, 'Paul Deep', '2020-10-24', 1),
(44, 'Paul Deep', '2020-10-24', 1),
(45, 'Paul Deep', '2020-10-24', 1),
(46, 'Paul Deep', '2020-10-24', 1),
(47, 'Paul Deep', '2020-10-24', 1),
(48, 'Paul Deep', '2020-10-24', 1),
(49, 'Paul Deep', '2020-10-24', 1),
(50, 'Paul Deep', '2020-10-24', 1),
(51, 'Paul Deep', '2020-10-24', 1),
(52, 'Paul Deep', '2020-10-24', 1),
(53, 'Paul Deep', '2020-10-24', 1),
(54, 'Paul Deep', '2020-10-24', 1),
(55, 'Paul Deep', '2020-10-24', 1),
(56, 'Paul Deep', '2020-10-24', 1),
(57, 'Paul Deep', '2020-10-24', 1),
(58, 'Paul Deep', '2020-10-24', 1),
(59, 'Paul Deep', '2020-10-24', 1),
(60, 'Paul Deep', '2020-10-24', 1),
(61, 'Paul Deep', '2020-10-24', 1),
(62, 'Paul Deep', '2020-10-24', 1),
(63, 'Paul Deep', '2020-10-24', 1),
(64, 'Paul Deep', '2020-10-24', 1),
(65, 'Paul Deep', '2020-10-24', 1),
(66, 'Paul Deep', '2020-10-24', 1),
(67, 'Paul Deep', '2020-10-24', 1),
(68, 'Paul Deep', '2020-10-24', 1),
(69, 'Paul Deep', '2020-10-24', 1),
(70, 'Paul Deep', '2020-10-24', 1),
(71, 'Paul Deep', '2020-10-24', 1),
(72, 'Paul Deep', '2020-10-24', 1),
(73, 'Paul Deep', '2020-10-24', 1),
(74, 'Paul Deep', '2020-10-24', 1),
(75, 'Paul Deep', '2020-10-24', 1),
(76, 'Paul Deep', '2020-10-24', 1),
(77, 'Paul Deep', '2020-10-24', 1),
(78, 'Paul Deep', '2020-10-24', 1),
(79, 'Paul Deep', '2020-10-24', 1),
(80, 'Paul Deep', '2020-10-24', 1),
(81, 'Paul Deep', '2020-10-24', 1),
(82, 'Paul Deep', '2020-10-24', 1),
(83, 'Paul Deep', '2020-10-24', 1),
(84, 'Paul Deep', '2020-10-24', 1),
(85, 'Paul Deep', '2020-10-24', 1),
(86, 'Paul Deep', '2020-10-24', 1),
(87, 'Paul Deep', '2020-10-24', 1),
(88, 'Paul Deep', '2020-10-24', 1),
(89, 'Paul Deep', '2020-10-24', 1),
(90, 'Paul Deep', '2020-10-24', 1),
(91, 'Paul Deep', '2020-10-24', 1),
(92, 'Paul Deep', '2020-10-24', 1),
(93, 'Paul Deep', '2020-10-24', 1),
(94, 'Paul Deep', '2020-10-24', 1),
(95, 'Paul Deep', '2020-10-24', 1),
(96, 'Paul Deep', '2020-10-24', 1),
(97, 'Paul Deep', '2020-10-24', 1),
(98, 'Paul Deep', '2020-10-24', 1),
(99, 'Paul Deep', '2020-10-24', 1),
(100, 'Paul Deep', '2020-10-24', 1),
(101, 'Paul Deep', '2020-10-24', 1),
(102, 'Paul Deep', '2020-10-24', 1),
(103, 'Paul Deep', '2020-10-24', 1),
(104, 'Paul Deep', '2020-10-24', 1),
(105, 'Paul Deep', '2020-10-24', 1),
(106, 'Paul Deep', '2020-10-24', 1),
(107, 'Paul Deep', '2020-10-24', 1),
(108, 'Paul Deep', '2020-10-24', 1),
(109, 'Paul Deep', '2020-10-24', 1),
(110, 'Paul Deep', '2020-10-24', 1),
(111, 'Paul Deep', '2020-10-24', 1),
(112, 'Paul Deep', '2020-10-24', 1),
(113, 'Paul Deep', '2020-10-24', 1),
(114, 'Paul Deep', '2020-10-24', 1),
(115, 'Paul Deep', '2020-10-24', 1),
(116, 'Paul Deep', '2020-10-24', 1),
(117, 'Paul Deep', '2020-10-24', 1),
(118, 'Paul Deep', '2020-10-24', 1),
(119, 'Paul Deep', '2020-10-24', 1),
(120, 'Paul Deep', '2020-10-24', 1),
(121, 'Paul Deep', '2020-10-24', 1),
(122, 'Paul Deep', '2020-10-24', 1),
(123, 'Paul Deep', '2020-10-24', 1),
(124, 'Paul Deep', '2020-10-24', 1),
(125, 'Paul Deep', '2020-10-24', 1),
(126, 'Paul Deep', '2020-10-24', 1),
(127, 'Paul Deep', '2020-10-24', 1),
(128, 'Paul Deep', '2020-10-24', 1),
(129, 'Paul Deep', '2020-10-24', 1),
(130, 'Paul Deep', '2020-10-24', 1),
(131, 'Paul Deep', '2020-10-24', 1),
(132, 'Paul Deep', '2020-10-24', 1),
(133, 'Paul Deep', '2020-10-24', 1),
(134, 'Paul Deep', '2020-10-24', 1),
(135, 'Paul Deep', '2020-10-24', 1),
(136, 'Paul Deep', '2020-10-24', 1),
(137, 'Paul Deep', '2020-10-24', 1),
(138, 'Paul Deep', '2020-10-24', 1),
(139, 'Paul Deep', '2020-10-24', 1),
(140, 'Paul Deep', '2020-10-24', 1),
(141, 'Paul Deep', '2020-10-24', 1),
(142, 'Paul Deep', '2020-10-24', 1),
(143, 'Paul Deep', '2020-10-24', 1),
(144, 'Paul Deep', '2020-10-24', 1),
(145, 'Paul Deep', '2020-10-24', 1),
(146, 'Paul Deep', '2020-10-24', 1),
(147, 'Paul Deep', '2020-10-24', 1),
(148, 'Paul Deep', '2020-10-24', 1),
(149, 'Paul Deep', '2020-10-24', 1),
(150, 'Paul Deep', '2020-10-24', 1),
(151, 'Paul Deep', '2020-10-24', 1),
(152, 'Paul Deep', '2020-10-24', 1),
(153, 'Paul Deep', '2020-10-24', 1),
(154, 'Paul Deep', '2020-10-24', 1),
(155, 'Paul Deep', '2020-10-24', 2),
(156, 'Paul Deep', '2020-10-24', 2),
(157, 'Paul Deep', '2020-10-24', 2),
(158, 'Paul Deep', '2020-10-24', 2),
(159, 'Paul Deep', '2020-10-24', 2),
(160, 'Paul Deep', '2020-10-24', 2),
(161, 'Paul Deep', '2020-10-24', 2),
(162, 'Paul Deep', '2020-10-24', 2),
(163, 'Paul Deep', '2020-10-24', 2),
(164, 'Paul Deep', '2020-10-24', 2),
(165, 'Paul Deep', '2020-10-24', 2),
(166, 'Paul Deep', '2020-10-24', 2),
(167, 'Paul Deep', '2020-10-24', 2),
(168, 'Paul Deep', '2020-10-24', 2),
(169, 'Paul Deep', '2020-10-24', 2),
(170, 'Paul Deep', '2020-10-24', 2),
(171, 'Paul Deep', '2020-10-24', 2),
(172, 'Paul Deep', '2020-10-24', 2),
(173, 'Paul Deep', '2020-10-24', 2),
(174, 'Paul Deep', '2020-10-24', 2),
(175, 'Paul Deep', '2020-10-24', 2),
(176, 'Paul Deep', '2020-10-24', 2),
(177, 'Paul Deep', '2020-10-24', 2),
(178, 'Paul Deep', '2020-10-24', 2),
(179, 'Paul Deep', '2020-10-24', 2),
(180, 'Paul Deep', '2020-10-24', 2),
(181, 'Paul Deep', '2020-10-24', 2),
(182, 'Paul Deep', '2020-10-24', 2),
(183, 'Paul Deep', '2020-10-24', 2),
(184, 'Paul Deep', '2020-10-24', 2),
(185, 'Paul Deep', '2020-10-24', 2),
(186, 'Paul Deep', '2020-10-24', 2),
(187, 'Paul Deep', '2020-10-24', 2),
(188, 'Paul Deep', '2020-10-24', 2),
(189, 'Paul Deep', '2020-10-24', 2),
(190, 'Paul Deep', '2020-10-24', 2),
(191, 'Paul Deep', '2020-10-24', 2),
(192, 'Paul Deep', '2020-10-24', 2),
(193, 'Paul Deep', '2020-10-24', 2),
(194, 'Paul Deep', '2020-10-24', 2),
(195, 'Paul Deep', '2020-10-24', 2),
(196, 'Paul Deep', '2020-10-24', 2),
(197, 'Paul Deep', '2020-10-24', 2),
(198, 'Paul Deep', '2020-10-24', 2),
(199, 'Paul Deep', '2020-10-24', 2),
(200, 'Paul Deep', '2020-10-24', 2),
(201, 'Paul Deep', '2020-10-24', 2),
(202, 'Paul Deep', '2020-10-24', 2),
(203, 'Paul Deep', '2020-10-24', 2),
(204, 'Paul Deep', '2020-10-24', 2),
(205, 'Paul Deep', '2020-10-24', 2),
(206, 'Paul Deep', '2020-10-24', 2),
(207, 'Paul Deep', '2020-10-24', 2),
(208, 'Paul Deep', '2020-10-24', 2),
(209, 'Paul Deep', '2020-10-24', 2),
(210, 'Paul Deep', '2020-10-24', 2),
(211, 'Paul Deep', '2020-10-24', 2),
(212, 'Paul Deep', '2020-10-24', 2),
(213, 'Paul Deep', '2020-10-24', 2),
(214, 'Paul Deep', '2020-10-24', 2),
(215, 'Paul Deep', '2020-10-24', 2),
(216, 'Paul Deep', '2020-10-24', 2),
(217, 'Paul Deep', '2020-10-24', 2),
(218, 'Paul Deep', '2020-10-24', 2),
(219, 'Paul Deep', '2020-10-24', 2),
(220, 'Paul Deep', '2020-10-24', 2),
(221, 'Paul Deep', '2020-10-24', 2),
(222, 'Paul Deep', '2020-10-24', 2),
(223, 'Paul Deep', '2020-10-24', 2),
(224, 'Paul Deep', '2020-10-24', 2),
(225, 'Dig Weed', '2020-11-04', 2),
(226, 'Paul Deep', '2020-10-24', 2),
(227, 'Paul Deep', '2020-10-24', 2),
(228, 'Paul Deep', '2020-10-24', 2),
(229, 'Paul Deep', '2020-10-24', 2),
(230, 'Paul Deep', '2020-10-24', 2),
(231, 'Paul Deep', '2020-10-24', 2),
(232, 'Paul Deep', '2020-10-24', 2),
(233, 'Paul Deep', '2020-10-24', 2),
(234, 'Paul Deep', '2020-10-24', 2),
(235, 'Paul Deep', '2020-10-24', 2),
(236, 'Paul Deep', '2020-10-24', 2),
(237, 'Paul Deep', '2020-10-24', 2),
(238, 'Paul Deep', '2020-10-24', 2),
(239, 'Paul Deep', '2020-10-24', 2),
(240, 'Paul Deep', '2020-10-24', 2),
(241, 'Paul Deep', '2020-10-24', 2),
(242, 'Paul Deep', '2020-10-24', 2),
(243, 'Paul Deep', '2020-10-24', 2),
(244, 'Paul Deep', '2020-10-24', 2),
(245, 'Paul Deep', '2020-10-24', 2),
(246, 'Paul Deep', '2020-10-24', 2),
(247, 'Paul Deep', '2020-10-24', 2),
(248, 'Paul Deep', '2020-10-24', 2),
(249, 'Paul Deep', '2020-10-24', 2),
(250, 'Paul Deep', '2020-10-24', 2),
(251, 'Paul Deep', '2020-10-24', 2),
(252, 'Paul Deep', '2020-10-24', 2),
(253, 'Paul Deep', '2020-10-24', 2),
(254, 'Paul Deep', '2020-10-24', 2),
(255, 'Paul Deep', '2020-10-24', 2),
(256, 'Paul Deep', '2020-10-24', 2),
(257, 'Paul Deep', '2020-10-24', 2),
(258, 'Paul Deep', '2020-10-24', 2),
(259, 'Paul Deep', '2020-10-24', 2),
(260, 'Paul Deep', '2020-10-24', 2),
(261, 'Paul Deep', '2020-10-24', 2),
(262, 'Paul Deep', '2020-10-24', 2),
(263, 'Paul Deep', '2020-10-24', 2),
(264, 'Paul Deep', '2020-10-24', 2),
(265, 'Paul Deep', '2020-10-24', 2),
(266, 'Paul Deep', '2020-10-24', 2),
(267, 'Paul Deep', '2020-10-24', 2),
(268, 'Paul Deep', '2020-10-24', 2),
(269, 'Paul Deep', '2020-10-24', 2),
(270, 'Paul Deep', '2020-10-24', 2),
(271, 'Paul Deep', '2020-10-24', 2),
(272, 'Paul Deep', '2020-10-24', 2),
(273, 'Paul Deep', '2020-10-24', 2),
(274, 'Paul Deep', '2020-10-24', 2),
(275, 'Paul Deep', '2020-10-24', 2),
(276, 'Paul Deep', '2020-10-24', 2),
(277, 'Paul Deep', '2020-10-24', 2),
(278, 'Paul Deep', '2020-10-24', 2),
(279, 'Paul Deep', '2020-10-24', 2),
(280, 'Paul Deep', '2020-10-24', 2),
(281, 'Paul Deep', '2020-10-24', 2),
(282, 'Paul Deep', '2020-10-24', 2),
(283, 'Paul Deep', '2020-10-24', 2),
(284, 'Paul Deep', '2020-10-24', 2),
(285, 'Paul Deep', '2020-10-24', 2),
(286, 'Paul Deep', '2020-10-24', 2),
(287, 'Paul Deep', '2020-10-24', 2),
(288, 'Paul Deep', '2020-10-24', 2),
(289, 'Paul Deep', '2020-10-24', 2),
(290, 'Paul Deep', '2020-10-24', 2),
(291, 'Paul Deep', '2020-10-24', 2),
(292, 'Paul Deep', '2020-10-24', 2),
(293, 'Paul Deep', '2020-10-24', 2),
(294, 'Paul Deep', '2020-10-24', 2),
(295, 'Paul Deep', '2020-10-24', 2),
(296, 'Paul Deep', '2020-10-24', 2),
(297, 'Paul Deep', '2020-10-24', 2),
(298, 'Paul Deep', '2020-10-24', 2),
(299, 'Paul Deep', '2020-10-24', 2),
(300, 'Paul Deep', '2020-10-24', 2),
(301, 'Paul Deep', '2020-10-24', 2),
(302, 'Paul Deep', '2020-10-24', 2),
(303, 'Paul Deep', '2020-10-24', 2),
(304, 'Paul Deep', '2020-10-24', 2),
(305, 'Paul Deep', '2020-10-24', 2),
(306, 'Paul Deep', '2020-10-24', 2),
(307, 'Paul Deep', '2020-10-24', 2),
(308, 'Paul Deep', '2020-10-24', 2),
(309, 'Paul Deep', '2020-10-24', 2),
(310, 'Paul Deep', '2020-10-24', 2),
(311, 'Paul Deep', '2020-10-24', 2),
(312, 'Paul Deep', '2020-10-24', 2),
(313, 'Paul Deep', '2020-10-24', 2),
(314, 'Paul Deep', '2020-10-24', 2),
(315, 'Paul Deep', '2020-10-24', 2),
(316, 'Paul Deep', '2020-10-24', 2),
(317, 'Paul Deep', '2020-10-24', 2),
(318, 'Paul Deep', '2020-10-24', 2),
(319, 'Paul Deep', '2020-10-24', 2),
(320, 'Paul Deep', '2020-10-24', 2),
(321, 'Paul Deep', '2020-10-24', 2),
(322, 'Paul Deep', '2020-10-24', 2),
(323, 'Paul Deep', '2020-10-24', 2),
(324, 'Paul Deep', '2020-10-24', 2),
(325, 'Paul Deep', '2020-10-24', 2),
(326, 'Paul Deep', '2020-10-24', 2),
(327, 'Paul Deep', '2020-10-24', 2),
(328, 'Paul Deep', '2020-10-24', 2),
(329, 'Paul Deep', '2020-10-24', 2),
(330, 'Paul Deep', '2020-10-24', 2),
(331, 'Paul Deep', '2020-10-24', 2),
(332, 'Paul Deep', '2020-10-24', 2),
(333, 'Paul Deep', '2020-10-24', 2),
(334, 'Paul Deep', '2020-10-24', 2),
(335, 'Paul Deep', '2020-10-24', 2),
(336, 'Paul Deep', '2020-10-24', 2),
(337, 'Paul Deep', '2020-10-24', 2),
(338, 'Paul Deep', '2020-10-24', 2),
(339, 'Paul Deep', '2020-10-24', 2),
(340, 'Paul Deep', '2020-10-24', 2),
(341, 'Paul Deep', '2020-10-24', 2),
(342, 'Paul Deep', '2020-10-24', 2),
(343, 'Paul Deep', '2020-10-24', 2),
(344, 'Paul Deep', '2020-10-24', 2),
(345, 'Paul Deep', '2020-10-24', 2),
(346, 'Paul Deep', '2020-10-24', 2),
(347, 'Paul Deep', '2020-10-24', 2),
(348, 'Paul Deep', '2020-10-24', 2),
(349, 'Paul Deep', '2020-10-24', 2),
(350, 'Paul Deep', '2020-10-24', 2),
(351, 'Paul Deep', '2020-10-24', 2),
(352, 'Paul Deep', '2020-10-24', 2),
(353, 'Paul Deep', '2020-10-24', 2),
(354, 'Paul Deep', '2020-10-24', 2),
(355, 'Paul Deep', '2020-10-24', 2),
(356, 'Paul Deep', '2020-10-24', 2),
(357, 'Paul Deep', '2020-10-24', 2),
(358, 'Paul Deep', '2020-10-24', 2),
(359, 'Paul Deep', '2020-10-24', 2),
(360, 'Paul Deep', '2020-10-24', 2),
(361, 'Paul Deep', '2020-10-24', 2),
(362, 'Paul Deep', '2020-10-24', 2),
(363, 'Paul Deep', '2020-10-24', 2),
(364, 'Paul Deep', '2020-10-24', 2),
(365, 'Paul Deep', '2020-10-24', 2),
(366, 'Paul Deep', '2020-10-24', 2),
(367, 'Paul Deep', '2020-10-24', 2),
(368, 'Paul Deep', '2020-10-24', 2),
(369, 'Paul Deep', '2020-10-24', 2),
(370, 'Paul Deep', '2020-10-24', 2),
(371, 'Paul Deep', '2020-10-24', 2),
(372, 'Paul Deep', '2020-10-24', 2),
(373, 'Paul Deep', '2020-10-24', 2),
(374, 'Paul Deep', '2020-10-24', 2),
(375, 'Paul Deep', '2020-10-24', 2),
(376, 'Paul Deep', '2020-10-24', 2),
(377, 'Paul Deep', '2020-10-24', 2),
(378, 'Paul Deep', '2020-10-24', 2),
(379, 'Paul Deep', '2020-10-24', 2),
(380, 'Paul Deep', '2020-10-24', 2),
(381, 'Paul Deep', '2020-10-24', 2),
(382, 'Paul Deep', '2020-10-24', 2),
(383, 'Paul Deep', '2020-10-24', 2),
(384, 'Paul Deep', '2020-10-24', 2),
(385, 'Paul Deep', '2020-10-24', 2),
(386, 'Paul Deep', '2020-10-24', 2),
(387, 'Paul Deep', '2020-10-24', 2),
(388, 'Paul Deep', '2020-10-24', 2),
(389, 'Paul Deep', '2020-10-24', 2),
(390, 'Paul Deep', '2020-10-24', 2),
(391, 'Paul Deep', '2020-10-24', 2),
(392, 'Paul Deep', '2020-10-24', 2),
(393, 'Paul Deep', '2020-10-24', 2),
(394, 'Paul Deep', '2020-10-24', 2),
(395, 'Paul Deep', '2020-10-24', 2),
(396, 'Paul Deep', '2020-10-24', 2),
(397, 'Paul Deep', '2020-10-24', 2),
(398, 'Paul Deep', '2020-10-24', 2),
(399, 'Paul Deep', '2020-10-24', 2),
(400, 'Paul Deep', '2020-10-24', 2),
(401, 'Paul Deep', '2020-10-24', 2),
(402, 'Paul Deep', '2020-10-24', 2),
(403, 'Paul Deep', '2020-10-24', 2),
(404, 'Paul Deep', '2020-10-24', 2),
(405, 'Paul Deep', '2020-10-24', 2),
(406, 'Paul Deep', '2020-10-24', 2),
(407, 'Paul Deep', '2020-10-24', 2),
(408, 'Paul Deep', '2020-10-24', 2),
(409, 'Paul Deep', '2020-10-24', 2),
(410, 'Paul Deep', '2020-10-24', 2),
(411, 'Paul Deep', '2020-10-24', 2),
(412, 'Paul Deep', '2020-10-24', 2),
(413, 'Paul Deep', '2020-10-24', 2),
(414, 'Paul Deep', '2020-10-24', 2),
(415, 'Paul Deep', '2020-10-24', 2),
(416, 'Paul Deep', '2020-10-24', 2),
(417, 'Paul Deep', '2020-10-24', 2),
(418, 'Paul Deep', '2020-10-24', 2),
(419, 'Paul Deep', '2020-10-24', 2),
(420, 'Paul Deep', '2020-10-24', 2),
(421, 'Paul Deep', '2020-10-24', 2),
(422, 'Paul Deep', '2020-10-24', 2),
(423, 'Paul Deep', '2020-10-24', 2),
(424, 'Paul Deep', '2020-10-24', 2),
(425, 'Paul Deep', '2020-10-24', 2),
(426, 'Paul Deep', '2020-10-24', 2),
(427, 'Paul Deep', '2020-10-24', 2),
(428, 'Paul Deep', '2020-10-24', 2),
(429, 'Paul Deep', '2020-10-24', 2),
(430, 'Paul Deep', '2020-10-24', 2),
(431, 'Paul Deep', '2020-10-24', 2),
(432, 'Paul Deep', '2020-10-24', 2),
(433, 'Paul Deep', '2020-10-24', 2),
(434, 'Paul Deep', '2020-10-24', 2),
(435, 'Paul Deep', '2020-10-24', 2),
(436, 'Paul Deep', '2020-10-24', 2),
(437, 'Paul Deep', '2020-10-24', 2),
(438, 'Paul Deep', '2020-10-24', 2),
(439, 'Paul Deep', '2020-10-24', 2),
(440, 'Paul Deep', '2020-10-24', 2),
(441, 'Paul Deep', '2020-10-24', 2),
(442, 'Paul Deep', '2020-10-24', 2),
(443, 'Paul Deep', '2020-10-24', 2),
(444, 'Paul Deep', '2020-10-24', 2),
(445, 'Paul Deep', '2020-10-24', 2),
(446, 'Paul Deep', '2020-10-24', 2),
(447, 'Paul Deep', '2020-10-24', 2),
(448, 'Paul Deep', '2020-10-24', 2),
(449, 'Paul Deep', '2020-10-24', 2),
(450, 'Paul Deep', '2020-10-24', 2),
(451, 'Paul Deep', '2020-10-24', 2),
(452, 'Paul Deep', '2020-10-24', 2),
(453, 'Paul Deep', '2020-10-24', 2),
(454, 'Paul Deep', '2020-10-24', 2),
(455, 'Paul Deep', '2020-10-24', 2),
(456, 'Paul Deep', '2020-10-24', 2),
(457, 'Paul Deep', '2020-10-24', 2),
(458, 'Paul Deep', '2020-10-24', 2),
(459, 'Paul Deep', '2020-10-24', 2),
(460, 'Paul Deep', '2020-10-24', 2),
(461, 'Paul Deep', '2020-10-24', 2),
(462, 'Paul Deep', '2020-10-24', 2),
(463, 'Paul Deep', '2020-10-24', 2),
(464, 'Paul Deep', '2020-10-24', 2),
(465, 'Paul Deep', '2020-10-24', 2),
(466, 'Paul Deep', '2020-10-24', 2),
(467, 'Paul Deep', '2020-10-24', 2),
(468, 'Paul Deep', '2020-10-24', 2),
(469, 'Paul Deep', '2020-10-24', 2),
(470, 'Paul Deep', '2020-10-24', 2),
(471, 'Paul Deep', '2020-10-24', 2),
(472, 'Paul Deep', '2020-10-24', 2),
(473, 'Paul Deep', '2020-10-24', 2),
(474, 'Paul Deep', '2020-10-24', 2),
(475, 'Paul Deep', '2020-10-24', 2),
(476, 'Paul Deep', '2020-10-24', 2),
(477, 'Paul Deep', '2020-10-24', 2),
(478, 'Paul Deep', '2020-10-24', 2),
(479, 'Paul Deep', '2020-10-24', 2),
(480, 'Paul Deep', '2020-10-24', 2),
(481, 'Paul Deep', '2020-10-24', 2),
(482, 'Paul Deep', '2020-10-24', 2),
(483, 'Paul Deep', '2020-10-24', 2),
(484, 'Paul Deep', '2020-10-24', 2),
(485, 'Paul Deep', '2020-10-24', 2),
(486, 'Paul Deep', '2020-10-24', 2),
(487, 'Paul Deep', '2020-10-24', 2),
(488, 'Paul Deep', '2020-10-24', 2),
(489, 'Paul Deep', '2020-10-24', 2),
(490, 'Paul Deep', '2020-10-24', 2),
(491, 'Paul Deep', '2020-10-24', 2),
(492, 'Paul Deep', '2020-10-24', 2),
(493, 'Paul Deep', '2020-10-24', 2),
(494, 'Paul Deep', '2020-10-24', 2),
(495, 'Paul Deep', '2020-10-24', 2),
(496, 'Paul Deep', '2020-10-24', 2),
(497, 'Paul Deep', '2020-10-24', 2),
(498, 'Paul Deep', '2020-10-24', 2),
(499, 'Paul Deep', '2020-10-24', 2),
(500, 'Paul Deep', '2020-10-24', 2),
(501, 'Paul Deep', '2020-10-24', 2),
(502, 'Paul Deep', '2020-10-24', 2),
(503, 'Paul Deep', '2020-10-24', 2),
(504, 'Paul Deep', '2020-10-24', 2),
(505, 'Paul Deep', '2020-10-24', 2),
(506, 'Paul Deep', '2020-10-24', 2),
(507, 'Paul Deep', '2020-10-24', 2),
(508, 'Paul Deep', '2020-10-24', 2),
(509, 'Paul Deep', '2020-10-24', 2),
(510, 'Paul Deep', '2020-10-24', 2),
(511, 'Paul Deep', '2020-10-24', 2),
(512, 'Paul Deep', '2020-10-24', 2),
(513, 'Paul Deep', '2020-10-24', 2),
(514, 'Paul Deep', '2020-10-24', 2),
(515, 'Paul Deep', '2020-10-24', 2),
(516, 'Paul Deep', '2020-10-24', 2),
(517, 'Paul Deep', '2020-10-24', 2),
(518, 'Paul Deep', '2020-10-24', 2),
(519, 'Paul Deep', '2020-10-24', 2),
(520, 'Paul Deep', '2020-10-24', 2),
(521, 'Paul Deep', '2020-10-24', 2),
(522, 'Paul Deep', '2020-10-24', 2),
(523, 'Paul Deep', '2020-10-24', 2),
(524, 'Paul Deep', '2020-10-24', 2),
(525, 'Paul Deep', '2020-10-24', 2),
(526, 'Paul Deep', '2020-10-24', 2),
(527, 'Paul Deep', '2020-10-24', 2),
(528, 'Paul Deep', '2020-10-24', 2),
(529, 'Paul Deep', '2020-10-24', 2),
(530, 'Paul Deep', '2020-10-24', 2),
(531, 'Paul Deep', '2020-10-24', 2),
(532, 'Paul Deep', '2020-10-24', 2),
(533, 'Paul Deep', '2020-10-24', 2),
(534, 'Paul Deep', '2020-10-24', 2),
(535, 'Paul Deep', '2020-10-24', 2),
(536, 'Paul Deep', '2020-10-24', 2),
(537, 'Paul Deep', '2020-10-24', 2),
(538, 'Paul Deep', '2020-10-24', 2),
(539, 'Paul Deep', '2020-10-24', 2),
(540, 'Paul Deep', '2020-10-24', 2),
(541, 'Paul Deep', '2020-10-24', 2),
(542, 'Paul Deep', '2020-10-24', 2),
(543, 'Paul Deep', '2020-10-24', 2),
(544, 'Paul Deep', '2020-10-24', 2),
(545, 'Paul Deep', '2020-10-24', 2),
(546, 'Paul Deep', '2020-10-24', 2),
(547, 'Paul Deep', '2020-10-24', 2),
(548, 'Paul Deep', '2020-10-24', 2),
(549, 'Paul Deep', '2020-10-24', 2),
(550, 'Paul Deep', '2020-10-24', 2),
(551, 'Paul Deep', '2020-10-24', 2),
(552, 'Paul Deep', '2020-10-24', 2),
(553, 'Paul Deep', '2020-10-24', 2),
(554, 'Paul Deep', '2020-10-24', 2),
(555, 'Paul Deep', '2020-10-24', 2),
(556, 'Paul Deep', '2020-10-24', 2),
(557, 'Paul Deep', '2020-10-24', 2),
(558, 'Paul Deep', '2020-10-24', 2),
(559, 'Paul Deep', '2020-10-24', 2),
(560, 'Paul Deep', '2020-10-24', 2),
(561, 'Paul Deep', '2020-10-24', 2),
(562, 'Paul Deep', '2020-10-24', 2),
(563, 'Paul Deep', '2020-10-24', 2),
(564, 'Paul Deep', '2020-10-24', 2),
(565, 'Paul Deep', '2020-10-24', 2),
(566, 'Paul Deep', '2020-10-24', 2),
(567, 'Paul Deep', '2020-10-24', 2),
(568, 'Paul Deep', '2020-10-24', 2),
(569, 'Paul Deep', '2020-10-24', 2),
(570, 'Paul Deep', '2020-10-24', 2),
(571, 'Paul Deep', '2020-10-24', 2),
(572, 'Paul Deep', '2020-10-24', 2),
(573, 'Paul Deep', '2020-10-24', 2),
(574, 'Paul Deep', '2020-10-24', 2),
(575, 'Paul Deep', '2020-10-24', 2),
(576, 'Paul Deep', '2020-10-24', 2),
(577, 'Paul Deep', '2020-10-24', 2),
(578, 'Paul Deep', '2020-10-24', 2),
(579, 'Paul Deep', '2020-10-24', 2),
(580, 'Paul Deep', '2020-10-24', 2),
(581, 'Paul Deep', '2020-10-24', 2),
(582, 'Paul Deep', '2020-10-24', 2),
(583, 'Paul Deep', '2020-10-24', 2),
(584, 'Paul Deep', '2020-10-24', 2),
(585, 'Paul Deep', '2020-10-24', 2),
(586, 'Paul Deep', '2020-10-24', 2),
(587, 'Paul Deep', '2020-10-24', 2),
(588, 'Paul Deep', '2020-10-24', 2),
(589, 'Paul Deep', '2020-10-24', 2),
(590, 'Paul Deep', '2020-10-24', 3),
(591, 'Paul Deep', '2020-10-24', 3),
(592, 'Paul Deep', '2020-10-24', 3),
(593, 'Paul Deep', '2020-10-24', 3),
(594, 'Paul Deep', '2020-10-24', 3),
(595, 'Paul Deep', '2020-10-24', 3),
(596, 'Paul Deep', '2020-10-24', 3),
(597, 'Paul Deep', '2020-10-24', 3),
(598, 'Paul Deep', '2020-10-24', 3),
(599, 'Paul Deep', '2020-10-24', 3),
(600, 'Paul Deep', '2020-10-24', 3),
(601, 'Paul Deep', '2020-10-24', 3),
(602, 'Paul Deep', '2020-10-24', 3),
(625, 'Paul Deep', '2020-11-15', 1),
(626, 'Paul Deep', '2020-11-15', 1),
(627, 'Paul Deep', '2020-11-15', 1),
(628, 'Paul Deep', '2020-11-15', 1),
(629, 'Paul Deep', '2020-11-15', 1),
(630, 'Paul Deep', '2020-11-15', 1),
(631, 'Paul Deep', '2020-11-15', 1),
(632, 'Paul Deep', '2020-11-15', 1),
(663, 'Paul Deep', '2020-11-15', 3),
(664, 'Paul Deep', '2020-11-15', 3),
(665, 'Paul Deep', '2020-11-15', 3),
(666, 'Paul Deep', '2020-11-15', 3),
(667, 'Paul Deep', '2020-11-15', 3),
(668, 'Paul Deep', '2020-11-15', 3),
(669, 'Paul Deep', '2020-11-15', 3),
(694, 'Latmun', '2020-10-15', 4),
(695, 'Latmun', '2020-10-15', 4),
(696, 'Latmun', '2020-10-15', 4),
(697, 'Latmun', '2020-10-15', 4),
(698, 'Latmun', '2020-10-15', 4),
(699, 'Latmun', '2020-10-15', 4),
(700, 'Latmun', '2020-10-15', 4),
(701, 'Latmun', '2020-10-15', 4),
(702, 'Latmun', '2020-10-15', 4),
(703, 'Latmun', '2020-10-15', 4),
(704, 'Paul Deep', '2020-11-15', 1),
(705, 'Paul Deep', '2020-11-15', 1),
(706, 'Paul Deep', '2020-11-15', 1),
(707, 'Dig Weed', '2020-11-05', 4),
(710, 'Dig Weed', '2020-11-05', 4),
(711, 'Nicholas', '2020-11-07', 1),
(712, 'Nicholas', '2020-11-07', 1),
(713, 'Nicholas', '2020-11-07', 1),
(714, 'Nicholas', '2020-11-07', 1),
(715, 'Nicholas', '2020-11-07', 1),
(716, 'Paul Deep', '2020-11-15', 1),
(717, 'Paul Deep', '2020-11-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `clearence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `clearence`) VALUES
(65, 'GASPI', 'gaspi.tudai@gmail.com', '$2y$10$d/AcpkdKVEeHr7Cd/uAM/.EYA86EsjR/Noy/avzyB4UkpztWlCuYq', 'admin'),
(67, 'ARIEL', 'arielvincennao@hotmail.com', '$2y$10$8Xt2oAL8ZazAXNS5bQxT5eA9lT.myDGgHRrt41BcytlPlqdWvuXHW', 'admin'),
(120, 'TEST', 'test@test', '$2y$10$IBMxqbp6Azq6myyrptTEwO8L92ArZ7ChAs4vWVi9TCEolkjhBI23K', 'null');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_category` (`id_category`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
