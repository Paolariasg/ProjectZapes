-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2023 a las 00:11:44
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebazepas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idCarrito` int(11) NOT NULL,
  `Total_Productos` int(11) NOT NULL,
  `FK_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(3) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `titulo`, `descripcion`, `precio`, `descuento`, `imagen`, `stock`, `categoria`) VALUES
(41, 'Camiseta dama ', 'Camiseta ajustada negro básico', '39', 20, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71443-1.jpg', 100, NULL),
(42, 'Top Basico dama', 'Top tejido beige básico', '70', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/0/70029-2.jpg', 100, NULL),
(43, 'Top Rosado dama', 'Top tiras rosado texto', '39', 32, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71941-1.jpg', 100, NULL),
(44, 'Camisa cafe dama', 'Camisa manga corta café ilustración', '79', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/0/70986-1.jpg', 100, NULL),
(45, 'Camiseta blanca dama', 'Camiseta oversize blanco ilustración', '59', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71426-1.jpg', 100, NULL),
(46, 'Camiseta negro dama', 'Camiseta oversize negro ilustración', '49', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71429-3-hover.jpg', 100, NULL),
(47, 'Top azul dama', 'Top tiras lino azul básico', '45', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/5/75008-2.jpg', 100, NULL),
(48, 'Buzo rosado dama', 'Buzo hoodie rosado básico', '85', 78, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/2/72862-3.jpg', 55, NULL),
(49, 'Top manga cafe dama', 'Top manga larga café básico', '60', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71453-1.jpg', 78, NULL),
(50, 'Top manga marfil dama', 'Top manga larga marfil texto', '49', 40, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71011-1.jpg', 29, NULL),
(51, 'Camiseta negro hombre ', 'Camiseta oversize negro texto', '69', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71524-1.jpg', 100, NULL),
(52, 'Camiseta beige hombre', 'Camiseta oversize beige texto', '20', 18, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71541-2.jpg', 100, NULL),
(53, 'Camiseta blanco hombre', 'Camiseta blanco texto', '59', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/0/70573-1.jpg', 100, NULL),
(54, 'Camisa marfil hombre', 'Camisa marfil rayas', '95', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/2/72445-1.jpg', 100, NULL),
(55, 'Camiseta marfil hombre', 'Camiseta oversize marfil bloques', '59', 50, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71149-1.jpg', 100, NULL),
(56, 'Camiseta rosado hombre', 'Camiseta oversize rosado texto', '59', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71540-2-hover.jpg', 100, NULL),
(57, 'Buzo marfil hombre', 'Buzo hoodie marfil ilustración', '113', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71808-1.jpg', 100, NULL),
(58, 'Buzo azul hombre', 'Buzo hoodie oversize azul texto', '119', 90, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71501-1.jpg', 100, NULL),
(59, 'Buzo negro hombre', 'Buzo hoodie negro texto', '125', 0, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/2/72041-2.jpg', 100, NULL),
(60, 'Buzo blanco hombre', 'Buzo hoodie blanco ilustración', '115', 100, 'https://www.mattelsa.net/media/catalog/product/cache/11dadf1c318faa12046dcbbf38b711fe/7/1/71123-3-hover.jpg', 100, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_carrito`
--

CREATE TABLE `producto_carrito` (
  `idProducto` int(11) NOT NULL,
  `idCarrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
