-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2025 a las 00:12:52
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
-- Base de datos: `proyecto_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL COMMENT 'identificador de producto',
  `pro_nom` varchar(50) NOT NULL COMMENT 'define nombre',
  `pro_mar` varchar(50) NOT NULL COMMENT 'define marca',
  `pro_cos` float(10,2) NOT NULL COMMENT 'define costo',
  `pro_pre` float(10,2) NOT NULL COMMENT 'define precio',
  `pro_can` int(11) NOT NULL COMMENT 'define cantidad',
  `pro_img` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla 7xn';

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_nom`, `pro_mar`, `pro_cos`, `pro_pre`, `pro_can`, `pro_img`) VALUES
(21, 'Coca-Cola', 'Coca-Cola', 15.00, 20.00, 16, 8),
(23, 'Coca-Cola', 'Coca-Cola', 15.00, 20.00, 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_user` varchar(30) NOT NULL,
  `usu_nom` varchar(30) NOT NULL,
  `usu_ape` varchar(30) NOT NULL,
  `usu_ema` varchar(60) NOT NULL,
  `usu_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);
ALTER TABLE `productos` ADD FULLTEXT KEY `pro_nom` (`pro_nom`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de producto', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
