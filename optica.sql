-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2019 a las 10:19:41
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `optica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Client`
--

CREATE TABLE `Client` (
  `id_client` int(12) NOT NULL,
  `nom_client` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `adresa_client` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefon_client` int(12) NOT NULL,
  `mail_client` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `data_client` date NOT NULL,
  `client_recomanacio` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Client`
--

INSERT INTO `Client` (`id_client`, `nom_client`, `adresa_client`, `telefon_client`, `mail_client`, `data_client`, `client_recomanacio`) VALUES
(1, 'client1', 'adresa client1', 555555555, 'mail@gmail.com', '2019-09-10', NULL),
(2, 'client2', 'adresa client2', 333333333, 'mail@lkdjldkjgdfg.com', '2019-09-26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleat`
--

CREATE TABLE `Empleat` (
  `id_empleat` int(12) NOT NULL,
  `nom_empleat` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Empleat`
--

INSERT INTO `Empleat` (`id_empleat`, `nom_empleat`) VALUES
(1, 'empleat1'),
(2, 'empleat 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marca`
--

CREATE TABLE `Marca` (
  `id_marca` int(12) NOT NULL,
  `proveidor_marca` int(12) NOT NULL,
  `nom_marca` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Marca`
--

INSERT INTO `Marca` (`id_marca`, `proveidor_marca`, `nom_marca`) VALUES
(1, 2, 'marca1'),
(2, 2, 'marca2'),
(3, 1, 'marca3'),
(4, 1, 'marca4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Muntura`
--

CREATE TABLE `Muntura` (
  `id_muntura` int(12) NOT NULL,
  `tipus_muntura` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Muntura`
--

INSERT INTO `Muntura` (`id_muntura`, `tipus_muntura`) VALUES
(1, 'flotant'),
(2, 'pasta'),
(3, 'metalica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveidor`
--

CREATE TABLE `Proveidor` (
  `id_proveidor` int(12) NOT NULL,
  `nom_proveidor` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `carrer_adresa` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `num_carrer` int(4) NOT NULL,
  `pis_adresa` int(2) NOT NULL,
  `porta_adresa` int(2) NOT NULL,
  `ciutat_adresa` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `postal_adresa` int(10) NOT NULL,
  `pais_adresa` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefon_proveidor` int(12) NOT NULL,
  `fax_proveidor` int(12) NOT NULL,
  `nif_proveidor` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Proveidor`
--

INSERT INTO `Proveidor` (`id_proveidor`, `nom_proveidor`, `carrer_adresa`, `num_carrer`, `pis_adresa`, `porta_adresa`, `ciutat_adresa`, `postal_adresa`, `pais_adresa`, `telefon_proveidor`, `fax_proveidor`, `nif_proveidor`) VALUES
(1, 'proveidor 1', 'carrer1', 3, 3, 4, 'Barcelona', 8006, 'espanya', 666666666, 66666666, '66666666L'),
(2, 'proveidor2', 'carrer2', 33, 3, 3, 'Mataro', 9003, 'espanya', 999999999, 999999999, '99999999f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ullera`
--

CREATE TABLE `Ullera` (
  `id_ullera` int(12) NOT NULL,
  `nom_ullera` varchar(150) NOT NULL,
  `marca_id` int(12) NOT NULL,
  `graduacio_ullera` int(4) NOT NULL,
  `preu_ullera` decimal(10,2) NOT NULL,
  `color_muntura` varchar(12) NOT NULL,
  `color_vidre` varchar(12) NOT NULL,
  `muntura_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Ullera`
--

INSERT INTO `Ullera` (`id_ullera`, `nom_ullera`, `marca_id`, `graduacio_ullera`, `preu_ullera`, `color_muntura`, `color_vidre`, `muntura_id`) VALUES
(1, 'nom ullera1', 2, 33, '40.00', 'blau', 'verd', 3),
(2, 'ullera2', 4, 4, '44.09', 'lila', 'lila', 2),
(3, 'ullera3', 1, 4, '33.00', 'rosa', 'verd', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE `Venta` (
  `id_venta` int(12) NOT NULL,
  `ullera_id` int(12) NOT NULL,
  `client_id` int(12) NOT NULL,
  `empleat_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`id_venta`, `ullera_id`, `client_id`, `empleat_id`) VALUES
(1, 2, 1, 2),
(2, 3, 1, 1),
(3, 2, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `client_recomanacio` (`client_recomanacio`);

--
-- Indices de la tabla `Empleat`
--
ALTER TABLE `Empleat`
  ADD PRIMARY KEY (`id_empleat`);

--
-- Indices de la tabla `Marca`
--
ALTER TABLE `Marca`
  ADD PRIMARY KEY (`id_marca`),
  ADD KEY `proveidor_marca` (`proveidor_marca`);

--
-- Indices de la tabla `Muntura`
--
ALTER TABLE `Muntura`
  ADD PRIMARY KEY (`id_muntura`);

--
-- Indices de la tabla `Proveidor`
--
ALTER TABLE `Proveidor`
  ADD UNIQUE KEY `id_proveidor` (`id_proveidor`),
  ADD UNIQUE KEY `nif_proveidor` (`nif_proveidor`);

--
-- Indices de la tabla `Ullera`
--
ALTER TABLE `Ullera`
  ADD PRIMARY KEY (`id_ullera`),
  ADD KEY `muntura_id` (`muntura_id`),
  ADD KEY `marca_id` (`marca_id`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `ullera_id` (`ullera_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `empleat_id` (`empleat_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Client`
--
ALTER TABLE `Client`
  MODIFY `id_client` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Empleat`
--
ALTER TABLE `Empleat`
  MODIFY `id_empleat` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Marca`
--
ALTER TABLE `Marca`
  MODIFY `id_marca` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Muntura`
--
ALTER TABLE `Muntura`
  MODIFY `id_muntura` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Proveidor`
--
ALTER TABLE `Proveidor`
  MODIFY `id_proveidor` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Ullera`
--
ALTER TABLE `Ullera`
  MODIFY `id_ullera` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
  MODIFY `id_venta` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Client`
--
ALTER TABLE `Client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`client_recomanacio`) REFERENCES `Client` (`id_client`);

--
-- Filtros para la tabla `Marca`
--
ALTER TABLE `Marca`
  ADD CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`proveidor_marca`) REFERENCES `Proveidor` (`id_proveidor`);

--
-- Filtros para la tabla `Ullera`
--
ALTER TABLE `Ullera`
  ADD CONSTRAINT `ullera_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `Marca` (`id_marca`),
  ADD CONSTRAINT `ullera_ibfk_2` FOREIGN KEY (`muntura_id`) REFERENCES `Muntura` (`id_muntura`);

--
-- Filtros para la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ullera_id`) REFERENCES `Ullera` (`id_ullera`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id_client`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`empleat_id`) REFERENCES `Empleat` (`id_empleat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
