-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 01:43:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
  `colecciones_id` int(11) NOT NULL,
  `titulo_coleccion` varchar(50) NOT NULL,
  `sinopsis_coleccion` varchar(500) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `fecha` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `Ult_Actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colecciones`
--

INSERT INTO `colecciones` (`colecciones_id`, `titulo_coleccion`, `sinopsis_coleccion`, `link_imagen`, `fecha`, `Ult_Actualizacion`) VALUES
(1, 'coleccion bicenterario', 'xd', 'img/1.jpg', '2024-06-29 21:18:59.068708', '2024-06-29 21:18:59'),
(3, 'rafael maria baralt', 'rafael maria baralt', 'img/2.jpg', '2024-06-29 21:54:10.802824', '2024-06-29 21:54:10'),
(4, 'manuel david', 'colombiazzz', 'img/3.jpg', '2024-06-29 21:14:23.559157', '2024-06-29 21:14:23'),
(5, 'cocotero colection', 'colombiazzz', 'img/Portada-del-libro-Dibujando-mi-ciudad-azul.png', '2024-06-29 21:14:23.559157', '2024-06-29 21:14:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  ADD PRIMARY KEY (`colecciones_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  MODIFY `colecciones_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
