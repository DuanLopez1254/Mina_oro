-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2020 a las 06:14:58
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `Id_esta` int(10) NOT NULL,
  `Estado` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`Id_esta`, `Estado`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `Id` int(10) NOT NULL,
  `Cuadrante` varchar(100) NOT NULL,
  `Encargado` varchar(100) NOT NULL,
  `Porcentaje` int(110) NOT NULL,
  `Id_esta` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`Id`, `Cuadrante`, `Encargado`, `Porcentaje`, `Id_esta`) VALUES
(4, 'A1', '1', 12, 1),
(5, 'A1', '1', 13, 1),
(6, 'A1', '1', 10, 1),
(7, 'A2', '1', 25, 1),
(8, 'A3', '1', 30, 1),
(9, 'A4', '1', 18, 1),
(10, 'A5', '1', 38, 1),
(11, 'B5', '1', 17, 1),
(12, 'B4', '1', 35, 1),
(13, 'B3', '1', 25, 1),
(14, 'B2', '1', 80, 1),
(15, 'B1', '1', 30, 1),
(16, 'C1', '1', 30, 1),
(17, 'C2', '1', 50, 1),
(18, 'C3', '1', 45, 1),
(19, 'C4', '2', 19, 1),
(20, 'C5', '2', 27, 1),
(21, 'D5', '2', 24, 1),
(22, 'D4', '2', 90, 1),
(23, 'D3', '2', 85, 1),
(24, 'D2', '2', 18, 1),
(25, 'D1', '2', 25, 1),
(26, 'E1', '2', 20, 1),
(27, 'E2', '2', 26, 1),
(28, 'E3', '2', 40, 1),
(29, 'E4', '2', 70, 1),
(30, 'E5', '2', 16, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_esta`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_esta` (`Id_esta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `rutas_ibfk_1` FOREIGN KEY (`Id_esta`) REFERENCES `estado` (`Id_esta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
