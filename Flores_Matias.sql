-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2021 a las 07:03:34
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `suscripcion_firenze`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `clientes_nombre` varchar(50) NOT NULL,
  `clientes_apellido` varchar(50) NOT NULL,
  `clientes_fechadenacimiento` date NOT NULL,
  `clientes_telefono` varchar(50) NOT NULL,
  `clientes_mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `clientes_nombre`, `clientes_apellido`, `clientes_fechadenacimiento`, `clientes_telefono`, `clientes_mail`) VALUES
(17, 'MATIAS', 'FLORES', '1985-04-21', '351223355', 'matiasflores85@gmail.com'),
(35, 'Eugenia', 'Irurueta', '1983-08-03', '351665544', 'eugenia@gmail.com'),
(36, 'Silvia', 'Flores', '1960-03-09', '266254625', 'silvia@hotmail.com'),
(37, 'Juan', 'Perez', '1990-05-10', '351998877', 'juanperez@gmail.com'),
(38, 'Homero', 'Simpsons', '1956-05-12', '351445566', 'homero@simpsons.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
