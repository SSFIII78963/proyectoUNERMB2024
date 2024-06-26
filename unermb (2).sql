-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2024 a las 01:37:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unermb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colecciones`
--

CREATE TABLE `colecciones` (
  `colecciones_id` int(255) NOT NULL,
  `titulo_coleccion` varchar(50) NOT NULL,
  `sinopsis_coleccion` varchar(500) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colecciones`
--

INSERT INTO `colecciones` (`colecciones_id`, `titulo_coleccion`, `sinopsis_coleccion`, `link_imagen`, `fecha`) VALUES
(10, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(11, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(12, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(13, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(14, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(15, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(16, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(17, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(18, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(19, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(20, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(21, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(22, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(23, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(24, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(25, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(26, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(27, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(28, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(29, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(30, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(31, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(32, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(33, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(34, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(35, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(36, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(37, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(38, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(39, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(40, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(41, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(42, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(43, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(44, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(45, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(46, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(47, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(48, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(49, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(50, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(51, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(52, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(53, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(54, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(55, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(56, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(57, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(58, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(59, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(60, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(61, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(62, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(63, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(64, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(65, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(66, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(67, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(68, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(69, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(70, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(71, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(72, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(73, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(74, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(75, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(76, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(77, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(78, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(79, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(80, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(81, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(82, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(83, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(84, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(85, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(86, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(87, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(88, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(89, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(90, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(91, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(92, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(93, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(94, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(95, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(96, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(97, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(98, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(99, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(100, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(101, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(102, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(103, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(104, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(105, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(106, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(107, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(108, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(109, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(110, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(111, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(112, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(113, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(114, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(115, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03'),
(116, 'Los menes', 'mene', 'img/2.jpg', '2024-06-26 03:29:03'),
(117, 'Los menes', 'mene', 'img/4.jpg', '2024-06-26 03:29:03'),
(118, 'Los menes', 'mene', 'img/3.jpg', '2024-06-26 03:29:03'),
(119, 'Los menes', 'mene', 'img/5.jpg', '2024-06-26 03:29:03'),
(120, 'Los menes', 'mene', 'img/1.jpg', '2024-06-26 03:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_cientificos`
--

CREATE TABLE `eventos_cientificos` (
  `eventos_cientificos_id` int(255) NOT NULL,
  `titulo_evento` varchar(50) NOT NULL,
  `sinopsis_evento` varchar(255) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_drive` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos_cientificos`
--

INSERT INTO `eventos_cientificos` (`eventos_cientificos_id`, `titulo_evento`, `sinopsis_evento`, `link_imagen`, `link_drive`, `fecha`) VALUES
(1, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(2, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(3, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(4, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(5, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(6, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(7, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(8, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(9, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(10, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(11, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(12, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(13, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(14, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(15, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(16, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(17, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(18, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(19, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(20, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(21, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(22, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(23, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(24, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(25, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(26, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(27, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(28, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(29, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(30, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(31, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42'),
(32, 'los xd', 'xd', 'img/4.jpg', '', '2024-06-26 13:14:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `libro_id` int(255) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `link_imagen` varchar(100) NOT NULL,
  `link_drive` varchar(255) NOT NULL,
  `coleccion_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`libro_id`, `titulo`, `sinopsis`, `link_imagen`, `link_drive`, `coleccion_id`, `fecha`) VALUES
(1, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(2, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(3, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(4, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(5, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(6, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(7, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(8, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(9, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(10, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(11, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(12, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(13, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(14, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(15, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(16, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(17, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(18, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(19, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(20, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(21, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(22, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(23, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(24, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(25, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(26, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(27, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(28, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(29, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(30, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(31, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(32, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27'),
(33, 'xdd', 'xxddddddd', 'img/1.jpg', '', 17, '2024-06-26 03:50:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `noticias_id` int(255) NOT NULL,
  `titulo_noticia` varchar(50) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_noticia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`noticias_id`, `titulo_noticia`, `sinopsis`, `link_imagen`, `link_noticia`) VALUES
(1, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(2, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(3, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(4, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(5, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(6, 'El Mene aumenta su PIB', 'Las iguanas aumentan su población', 'img/2.jpg', 'colecciones.php'),
(7, 'Nuevo GOTY, REIMWORLD', 'goty', 'img/Portada-del-libro-Mi-proyecto-2-1536x962.png', 'colecciones.php'),
(8, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(9, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(10, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(11, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(12, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(13, 'El Mene aumenta su PIB', 'Las iguanas aumentan su población', 'img/2.jpg', 'colecciones.php'),
(14, 'Nuevo GOTY, REIMWORLD', 'goty', 'img/Portada-del-libro-Mi-proyecto-2-1536x962.png', 'colecciones.php'),
(15, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(16, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(17, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(18, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(19, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(20, 'El Mene aumenta su PIB', 'Las iguanas aumentan su población', 'img/2.jpg', 'colecciones.php'),
(21, 'Nuevo GOTY, REIMWORLD', 'goty', 'img/Portada-del-libro-Mi-proyecto-2-1536x962.png', 'colecciones.php'),
(22, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(23, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(24, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(25, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(26, 'El Mene en Peligro', 'Ataque de iguanas a un local del mene (solo 7 muertos)', 'img/1.jpg', 'colecciones.php'),
(27, 'El Mene aumenta su PIB', 'Las iguanas aumentan su población', 'img/2.jpg', 'colecciones.php'),
(28, 'Nuevo GOTY, REIMWORLD', 'goty', 'img/Portada-del-libro-Mi-proyecto-2-1536x962.png', 'colecciones.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `entrada_date` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `salida_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revistas`
--

CREATE TABLE `revistas` (
  `revistas_id` int(255) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `sinopsis` varchar(50) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_drive` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revistas`
--

INSERT INTO `revistas` (`revistas_id`, `titulo`, `sinopsis`, `link_imagen`, `link_drive`, `fecha`) VALUES
(1, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(2, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(3, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(4, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(5, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(6, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(7, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(8, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(9, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(10, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(11, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(12, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(13, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(14, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(15, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(16, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(17, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(18, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(19, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(20, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(21, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(22, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(23, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(24, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(25, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(26, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(27, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(28, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(29, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(30, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(31, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '2024-06-26 03:19:30'),
(32, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(33, 'las aventuras en el santiago 2', 'las aventuras en el santiago 2', 'img/5.jpg', '', '2024-06-26 03:19:30'),
(34, 'las aventuras en el santiago', 'las aventuras en el santiago', 'img/3.jpg', '', '0000-00-00 00:00:00'),
(35, 'hola', 'xd', 'img/1.jpg', 'xxdd', '2024-06-26 20:24:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `usuario_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre_usuario`, `nombre`, `apellido`, `usuario_password`) VALUES
(1, 'Jor', 'Josfran', 'Ortega', 'Josfran123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  ADD PRIMARY KEY (`colecciones_id`);

--
-- Indices de la tabla `eventos_cientificos`
--
ALTER TABLE `eventos_cientificos`
  ADD PRIMARY KEY (`eventos_cientificos_id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`libro_id`),
  ADD KEY `coleccion_id` (`coleccion_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`noticias_id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `revistas`
--
ALTER TABLE `revistas`
  ADD PRIMARY KEY (`revistas_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  MODIFY `colecciones_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `eventos_cientificos`
--
ALTER TABLE `eventos_cientificos`
  MODIFY `eventos_cientificos_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `libro_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `noticias_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `revistas`
--
ALTER TABLE `revistas`
  MODIFY `revistas_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`coleccion_id`) REFERENCES `colecciones` (`colecciones_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
