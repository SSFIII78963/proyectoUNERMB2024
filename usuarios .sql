-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 01:42:49
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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `usuario_password` varchar(40) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `privilegio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre_usuario`, `nombre`, `apellido`, `usuario_password`, `fecha`, `privilegio`) VALUES
(1, 'Jor', 'Josfran', 'Ortega', 'Josfran123', '2024-06-26 03:38:19', 0),
(3, 'endergei', 'endergei', 'cuello', '123456', '2024-06-26 21:18:03', 0),
(6, 'admin', 'admin', 'admin', 'admin1', '2024-06-29 22:35:04', 1),
(7, 'mango', 'mango', 'mango', 'mango', '2024-06-29 23:09:07', 0),
(8, 'henry', 'henry', 'henry', 'henry', '2024-06-29 23:31:18', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
