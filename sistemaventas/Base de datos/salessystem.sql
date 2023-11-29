-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2021 a las 14:09:38
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salessystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `modified_at`) VALUES
(1, 'Bebidas', 'De todas las marcas y sabores', '2020-06-12 16:08:26', '2020-06-16 06:24:00'),
(2, 'Aceites Vegetales', 'De todas las marcas ', '2020-06-15 23:29:17', '2020-06-16 06:35:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_client` varchar(20) NOT NULL,
  `type_document` varchar(20) NOT NULL,
  `num_document` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `type_client`, `type_document`, `num_document`, `address`, `phone_number`, `email`, `created_at`, `modified_at`) VALUES
(1, 'Fabian laz', 'Otros', 'DNI', '10000000', 'Jr. fabain 1001', '100000001', 'fabian@gmail.com', '2020-06-14 02:15:22', '2020-06-16 06:39:36'),
(2, 'Mecados Paco', 'Empresa', 'RUC', '10000000000', 'Jr. mercado paco 1002', '100000001', 'mecadospaco@gmail.com', '2020-06-15 23:38:37', '0000-00-00 00:00:00'),
(3, 'Liz Diaz', 'Otros', 'DNI', '10000004', 'Jr. Liz Diaz 1004', '100000004', 'lizdiaz@gmail.com', '2020-06-16 08:51:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `barcode` varchar(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` varchar(10) NOT NULL,
  `stock` int(5) NOT NULL,
  `picture` varchar(40) NOT NULL DEFAULT 'default.png',
  `category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `barcode`, `name`, `description`, `price`, `stock`, `picture`, `category_id`, `created_at`, `modified_at`) VALUES
(1, '1000000000000', 'Coca Cola 2L', 'Gaseosa Coca Cola Botella 2.25 Lt', '2.10', 35, 'img1.png', 1, '2020-06-13 23:17:02', '2020-06-16 09:08:41'),
(2, '1000000000001', 'Fanta personal', 'Gaseosa FANTA Sin Azúcar Naranja Botella 400ml', '1.23', 37, 'img2.png', 1, '2020-06-14 00:08:54', '2020-06-16 09:09:22'),
(4, '1000000000002', 'Coca Cola sin Azucar 1.5 Lt   ', 'Gaseosa COCA COLA Botella 450ml Paquete 6un\r\n', '2.50', 25, 'img4.png', 1, '2020-06-14 09:56:55', '2020-06-16 09:11:03'),
(5, '1000000000003', 'Gloria - Bebida de durazno 250ml', 'Bebida de fruta obtenida a partir de pulpa concent', '0.50', 29, 'img5.png', 1, '2020-06-15 23:27:24', '2020-06-16 06:58:48'),
(6, '10000000000003', 'Primor Premium Botella 1 L', 'Aceite Vegetal Primor Premium Botella 1 L', '1.20', 20, 'img6.png', 2, '2020-06-15 23:36:26', '2020-06-16 09:11:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(1) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `id` int(5) NOT NULL,
  `subtotal` varchar(10) NOT NULL,
  `igv` varchar(10) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `user_id` int(1) NOT NULL,
  `client_id` int(1) NOT NULL,
  `voucher_id` int(1) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`id`, `subtotal`, `igv`, `discount`, `total`, `user_id`, `client_id`, `voucher_id`, `date`) VALUES
(1, '8.76', '8.76', '0.00', '8.76', 1, 1, 1, '2020-06-15 00:00:00'),
(2, '52.00', '52.00', '5.30', '56.06', 1, 2, 2, '2020-07-15 00:00:00'),
(3, '1.50', '1.50', '0.00', '1.77', 2, 1, 1, '2019-03-16 00:00:00'),
(4, '36.15', '36.15', '12.78', '29.88', 2, 2, 2, '2020-06-16 00:00:00'),
(5, '1.00', '1.00', '0.00', '1.18', 2, 3, 3, '2020-06-16 00:00:00'),
(6, '3.50', '3.50', '0.00', '3.50', 1, 1, 1, '2020-10-10 00:00:00'),
(7, '2.00', '2.00', '0.00', '2.36', 1, 3, 3, '2020-10-09 00:00:00'),
(8, '3.69', '3.69', '0.00', '4.35', 1, 2, 2, '2020-10-08 17:40:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(5) NOT NULL,
  `sale_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `cant` int(10) NOT NULL,
  `price` varchar(15) NOT NULL,
  `discount` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `sale_id`, `product_id`, `cant`, `price`, `discount`) VALUES
(1, 1, 2, 2, '1.23', '0.00'),
(2, 1, 1, 3, '2.10', '0.00'),
(3, 2, 6, 10, '1.20', '5.30'),
(4, 2, 5, 20, '0.50', '5.30'),
(5, 2, 4, 12, '2.50', '5.30'),
(6, 3, 5, 3, '0.50', '0.00'),
(7, 4, 4, 12, '2.50', '12.78'),
(8, 4, 2, 5, '1.23', '12.78'),
(9, 5, 5, 2, '0.50', '0.00'),
(10, 6, 5, 2, '0.50', '0.00'),
(11, 6, 4, 1, '2.50', '0.00'),
(12, 7, 5, 4, '0.50', '0.00'),
(13, 8, 2, 3, '1.23', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `picture` varchar(15) NOT NULL,
  `rol_id` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone_number`, `password`, `picture`, `rol_id`, `created_at`, `modified_at`) VALUES
(1, 'Primer Admin', 'primeradmin@gmail.com', '100000001', '81dc9bdb52d04dc20036dbd8313ed055', 'img1.png', 1, '2020-06-14 03:35:46', '2020-06-16 09:27:16'),
(2, 'Primer Empleado', 'primerempleado@gmail.com', '100000002', '81dc9bdb52d04dc20036dbd8313ed055', 'img2.png', 1, '2020-06-16 01:01:03', '2020-06-16 09:01:52'),
(3, 'Tercer Empleado', 'terceremplaedo@gmail.com', '100000003', '81dc9bdb52d04dc20036dbd8313ed055', 'img3.png', 2, '2020-06-16 02:29:43', '2020-06-16 09:06:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher`
--

CREATE TABLE `voucher` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `igv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `voucher`
--

INSERT INTO `voucher` (`id`, `name`, `igv`) VALUES
(1, 'Factura', 18),
(2, 'Boleta', 0),
(3, 'Ticket', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `sale_detail_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`),
  ADD CONSTRAINT `sale_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
