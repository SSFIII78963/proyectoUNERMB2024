-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 06:14:48
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
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `entrada` tinyint(1) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `usuario_id`, `entrada`, `fecha`) VALUES
(6, 1, 1, '2024-06-28 01:52:03'),
(8, 1, 1, '2024-06-28 02:12:44'),
(9, 1, 1, '2024-06-28 02:28:42'),
(10, 1, 0, '2024-06-28 02:28:52'),
(11, 1, 1, '2024-06-28 02:29:42'),
(12, 1, 0, '2024-06-28 02:38:18'),
(13, 1, 1, '2024-06-28 02:41:20'),
(14, 1, 0, '2024-06-28 02:44:51'),
(15, 1, 1, '2024-06-28 02:45:23'),
(16, 1, 1, '2024-06-28 02:54:12'),
(19, 1, 1, '2024-06-28 02:55:29'),
(20, 1, 1, '2024-06-28 03:02:21'),
(21, 1, 1, '2024-06-28 03:02:48'),
(22, 1, 0, '2024-06-28 03:16:00'),
(25, 1, 1, '2024-06-28 03:17:01'),
(26, 1, 0, '2024-06-28 03:55:06'),
(27, 1, 1, '2024-06-28 03:55:16'),
(28, 1, 0, '2024-06-28 04:07:14'),
(29, 1, 1, '2024-06-28 04:07:21'),
(30, 1, 1, '2024-06-28 04:08:10'),
(31, 1, 0, '2024-06-28 04:13:14'),
(32, 3, 1, '2024-06-28 04:13:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
