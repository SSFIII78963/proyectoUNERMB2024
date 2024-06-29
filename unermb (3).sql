-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 01:54:22
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_cientificos`
--

CREATE TABLE `eventos_cientificos` (
  `eventos_cientificos_id` int(11) NOT NULL,
  `titulo_evento` varchar(50) NOT NULL,
  `sinopsis_evento` varchar(255) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_evento` varchar(50) NOT NULL,
  `fecha` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos_cientificos`
--

INSERT INTO `eventos_cientificos` (`eventos_cientificos_id`, `titulo_evento`, `sinopsis_evento`, `link_imagen`, `link_evento`, `fecha`) VALUES
(1, 'los xd', 'xddddddddddddddd', 'img/1', 'xd', '2024-06-26 03:35:30.346748'),
(2, 'patata', 'papata reunion', '/img2', 'xdxdxdxd', '2024-06-26 03:35:30.346748'),
(3, 'papa', 'xddxsxd', 'dvsvsdv', 'dvsvsdv', '2024-06-26 03:35:30.346748'),
(6, 'be6ueb', 'dybrsysy', 'eyAVAYA', 'AVYAYAYAY', '2024-06-26 03:35:30.346748');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `libro_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `link_imagen` varchar(255) NOT NULL,
  `link_libro` varchar(100) NOT NULL,
  `coleccion_id` int(11) NOT NULL,
  `fecha` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`libro_id`, `titulo`, `sinopsis`, `link_imagen`, `link_libro`, `coleccion_id`, `fecha`) VALUES
(6, 'ender', 'bocagrande', 'cuello', 'link.png', 3, '2024-06-27 17:13:16.996762'),
(15, 'torero', 'torero', 'torero', 'torero', 1, '2024-06-29 21:18:59.028733'),
(22, 'mango', 'mango', 'mango', 'mango', 3, '2024-06-29 21:54:10.801817');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `noticias_id` int(255) NOT NULL,
  `titulo_noticia` varchar(50) NOT NULL,
  `sinopsis` varchar(50) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_noticia` varchar(50) NOT NULL,
  `fecha` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`noticias_id`, `titulo_noticia`, `sinopsis`, `link_imagen`, `link_noticia`, `fecha`) VALUES
(1, 'xd', 'la mama de luciano', 'xd', 'xd', '2024-06-26 03:37:00.700926'),
(2, 'patata', 'patata al cuadrado', 'xdddd', 'xddd', '2024-06-26 03:37:00.700926'),
(3, 'hd', 'dh', 'xd', 'dx', '2024-06-26 03:37:00.700926'),
(8, 'mango', 'mango', 'mango', 'mango', '2024-06-29 22:13:07.225878');

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
(32, 3, 1, '2024-06-28 04:13:50'),
(33, 1, 1, '2024-06-29 21:39:33'),
(34, 1, 0, '2024-06-29 22:46:58'),
(35, 6, 1, '2024-06-29 22:47:05'),
(36, 6, 0, '2024-06-29 22:50:40'),
(37, 1, 1, '2024-06-29 22:50:48'),
(38, 1, 0, '2024-06-29 23:08:17'),
(39, 1, 1, '2024-06-29 23:08:24'),
(40, 1, 0, '2024-06-29 23:08:28'),
(41, 6, 1, '2024-06-29 23:08:35'),
(42, 6, 0, '2024-06-29 23:08:37'),
(43, 7, 1, '2024-06-29 23:09:18'),
(44, 7, 0, '2024-06-29 23:30:34'),
(45, 6, 1, '2024-06-29 23:30:41'),
(46, 6, 0, '2024-06-29 23:31:20'),
(47, 8, 1, '2024-06-29 23:31:28'),
(48, 8, 0, '2024-06-29 23:38:59'),
(49, 1, 1, '2024-06-29 23:39:11'),
(50, 1, 0, '2024-06-29 23:39:59'),
(51, 8, 1, '2024-06-29 23:40:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revistas`
--

CREATE TABLE `revistas` (
  `revistas_id` int(255) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `sinopsis` varchar(50) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `link_revista` varchar(50) NOT NULL,
  `fecha` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revistas`
--

INSERT INTO `revistas` (`revistas_id`, `titulo`, `sinopsis`, `link_imagen`, `link_revista`, `fecha`) VALUES
(1, 'libro de prueba', 'este es un libro de prueba', 'img/2', 'xdxdxdnoexisteaun', '2024-06-26 03:37:26.547327'),
(2, 'patata', 'patata junio 2024', 'xdxdxd', 'xdddd', '2024-06-26 03:37:26.547327'),
(3, 'mango', 'mango bajo junio 2024', 'xddd', 'xdxd', '2024-06-26 03:37:26.547327'),
(4, 'paralelepipedoz', 'bfdbzfdbdz', 'etwGwx', 'gjxgjgfnxhr', '2024-06-26 03:37:26.547327'),
(5, 'lonosrn', 'athrtshth', 'hsthgdshsrth', 'sjaejtajt', '2024-06-26 03:37:26.547327'),
(6, 'lonosrn', 'athrtshth', 'hsthgdshsrth', 'sjaejtajt', '2024-06-26 03:37:26.547327'),
(7, 'gsthsh', 'shsthsehsteh', 'gawawgawgr', 'yjrtjrjrdj', '2024-06-26 03:37:26.547327'),
(8, 'gsthsh', 'shsthsehsteh', 'gawawgawgr', 'yjrtjrjrdj', '2024-06-26 03:37:26.547327'),
(9, 'nzdgnzdgnbz', 'zdfbzfbzdnbn', 'nb<bgQ', 'FGZHFS<HEH', '2024-06-26 03:37:26.547327');

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
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `usuario_id` (`usuario_id`);

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
  MODIFY `colecciones_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `eventos_cientificos`
--
ALTER TABLE `eventos_cientificos`
  MODIFY `eventos_cientificos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `noticias_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `revistas`
--
ALTER TABLE `revistas`
  MODIFY `revistas_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
