-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-08-2019 a las 13:40:02
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Telas', '2018-11-15 05:27:47', '2019-01-10 04:07:53'),
(2, 'Cierres', '2018-11-15 05:27:52', '2018-11-22 14:59:48'),
(3, 'Plastico', '2019-01-06 20:57:37', '2019-01-06 20:58:05'),
(4, 'Cartas', '2019-01-06 20:57:43', '2019-01-06 20:57:43'),
(9, 'Tornillos', '2019-01-10 04:38:55', '2019-01-10 04:38:55'),
(11, 'Tuercas', '2019-01-10 04:40:43', '2019-01-10 04:40:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(10) UNSIGNED NOT NULL,
  `provedor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `provedor`, `cantidad`, `descripcion`, `producto_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Bepis', 1000, 'jojo', 2, 1, '2019-01-06 21:08:29', '2019-01-06 21:08:29'),
(3, 'Sony', 100, 'lo ui', 3, 1, '2019-01-06 21:08:55', '2019-01-10 07:18:15'),
(4, 'Bepis', 100, 'Ajuj', 2, 1, '2019-01-10 05:18:55', '2019-01-10 05:18:55'),
(6, 'Bepis', 100, 'kjb', 2, 1, '2019-01-10 05:21:37', '2019-01-10 05:21:37'),
(8, 'Nintendo', 100, 'oibio', 2, 1, '2019-01-10 05:30:11', '2019-01-10 05:30:11'),
(9, 'Nintendo', 100, 'loki', 2, 1, '2019-01-10 05:44:00', '2019-01-10 05:44:00'),
(10, 'Nintendo', 100, 'oibiu', 2, 1, '2019-01-10 06:35:51', '2019-01-10 06:35:51'),
(12, 'Conke', 100, 'onb', 3, 1, '2019-01-10 07:11:52', '2019-01-10 07:11:52'),
(15, 'Nintendo', 97, '877v', 3, 1, '2019-01-10 08:17:25', '2019-01-10 08:17:25'),
(17, 'Konami', 10, '', 6, 1, '2019-08-01 18:45:43', '2019-08-01 18:45:43'),
(18, 'Sony', 20, '', 7, 1, '2019-08-02 13:30:22', '2019-08-02 13:30:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `numero`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, '2019-01-10 18:27:14', '2019-01-10 18:27:14'),
(5, 5, '2019-01-10 18:29:55', '2019-01-10 18:30:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasillos`
--

CREATE TABLE `pasillos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pasillos`
--

INSERT INTO `pasillos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(2, 'B', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '0',
  `agotamiento` int(11) NOT NULL,
  `unidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasillo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `codigo`, `cantidad`, `agotamiento`, `unidad`, `pasillo`, `rack`, `nivel`, `descripcion`, `categoria_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Cierre gris', 'ax6/7r8', 0, 600, 'PCS', 'B', 'C', 3, 'cierre color gris', 2, 1, '2019-01-06 21:04:25', '2019-01-10 19:50:02'),
(3, 'Cierre rojo', 'ax6/7r8', 0, 200, 'ML', 'A', 'A', 1, 'Cierre negro', 2, 1, '2019-01-06 21:06:20', '2019-01-06 21:06:20'),
(6, 'Test', 'Test', 0, 0, '', 'Test', 'Test', 0, 'Test', 3, 1, NULL, NULL),
(7, 'Pipi', '001', 0, 0, '', '2', 'A', 2, 'Kdkdkf', 3, 1, NULL, NULL),
(8, 'Pipi', '001', 0, 0, '', '2', 'A', 2, 'Kdkdkf', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Sony', '2019-01-06 20:54:46', '2019-01-06 20:54:46'),
(2, 'Konami', '2019-01-06 20:54:51', '2019-01-10 20:14:06'),
(3, 'Conke', '2019-01-06 20:54:57', '2019-01-06 20:54:57'),
(4, 'Bepis', '2019-01-06 20:55:01', '2019-01-06 20:55:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `racks`
--

CREATE TABLE `racks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `racks`
--

INSERT INTO `racks` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'A', '2019-01-06 20:54:14', '2019-01-06 20:54:14'),
(2, 'B', '2019-01-06 20:54:18', '2019-01-06 20:54:18'),
(3, 'C', '2019-01-06 20:54:22', '2019-01-06 20:54:22'),
(4, 'S', '2019-01-10 20:20:54', '2019-01-10 20:23:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entrada_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`id`, `cantidad`, `producto_id`, `user_id`, `entrada_id`, `created_at`, `updated_at`) VALUES
(1, 100, 2, 1, 2, '2019-01-08 07:13:49', '2019-01-08 07:13:49'),
(4, 100, 2, 1, 2, '2019-01-08 08:49:39', '2019-01-08 08:49:39'),
(5, 100, 2, 1, 2, '2019-01-08 08:51:33', '2019-01-08 08:51:33'),
(6, 100, 2, 1, 2, '2019-01-08 08:51:57', '2019-01-08 08:51:57'),
(7, 100, 2, 1, 2, '2019-01-08 08:53:19', '2019-01-08 08:53:19'),
(8, 99, 2, 1, 2, '2019-01-08 08:53:42', '2019-01-13 23:55:12'),
(16, 50, 2, 1, 4, '2019-01-13 23:42:55', '2019-01-13 23:42:55'),
(17, 10, 2, 1, 4, '2019-01-13 23:43:33', '2019-01-13 23:43:33'),
(18, 5, 2, 1, 4, '2019-01-13 23:45:27', '2019-01-13 23:45:27'),
(19, 5, 2, 1, 4, '2019-01-13 23:50:13', '2019-01-13 23:50:13'),
(20, 2, 2, 1, 4, '2019-01-13 23:51:29', '2019-01-13 23:51:29'),
(21, 3, 2, 1, 4, '2019-01-13 23:52:51', '2019-01-13 23:52:51'),
(22, 10, 2, 1, NULL, '2019-08-01 02:27:14', '2019-08-01 02:27:14'),
(23, 10, 2, 1, NULL, '2019-08-01 19:08:53', '2019-08-01 19:08:53'),
(25, 4, 3, 1, NULL, '2019-08-01 19:08:53', '2019-08-01 19:08:53'),
(26, 1, 2, 1, NULL, '2019-08-02 13:30:48', '2019-08-02 13:30:48'),
(27, 5, 2, 1, NULL, '2019-08-02 13:31:19', '2019-08-02 13:31:19'),
(28, 3, 3, 1, NULL, '2019-08-02 13:31:19', '2019-08-02 13:31:19'),
(29, 5, 7, 1, NULL, '2019-08-02 13:31:19', '2019-08-02 13:31:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `email`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Felipe Ornelas', '\r\n', 'felipe.ornelas9@live.com.mx', '$2y$10$P81g2S1QztD70uCJ5.A8N.px1nkbB18jzbneKpdG7YgNMRAb.a.p.', '154680708343914247_1942824719358766_6106605715213180458_n.jpg', 'd2AfLcXYB6lPVu2TPgKSb7Qazr0ZQvIsC7oRer3AR9WPU7LE87ap0odH1wbd', '2018-11-14 06:00:00', '2019-01-06 20:38:03'),
(9, 'admin', 'Tester', NULL, 'admin@admin.com', '$2y$10$LyGO8XcjuA/XEKVK7ouvCeL0uKPp52bgQKnyR7rrdk5CbaVR3Y9j.', '', NULL, NULL, NULL),
(10, 'operador', 'Operator', NULL, 'op@op.com', '$2y$10$JCl/ZjUBaRbgXi7bgduDZ..CXmZTR7P0A1SReRqaB.2aSV8SqmEYK', '', NULL, NULL, NULL),
(12, 'invitado', 'Guest', NULL, 'g@g.com', '$2y$10$6xUPxjU/BIQ7oGTqCE3ZvOcEZ1snW/Uxleh6HNHG3Cxd3s9E87rZG', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volatile`
--

CREATE TABLE `volatile` (
  `id` int(11) NOT NULL,
  `temporal` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entradas_producto_id_foreign` (`producto_id`),
  ADD KEY `entradas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasillos`
--
ALTER TABLE `pasillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `productos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salidas_entrada_id_foreign` (`entrada_id`),
  ADD KEY `salidas_producto_id_foreign` (`producto_id`),
  ADD KEY `salidas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `volatile`
--
ALTER TABLE `volatile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pasillos`
--
ALTER TABLE `pasillos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `volatile`
--
ALTER TABLE `volatile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entradas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD CONSTRAINT `salidas_entrada_id_foreign` FOREIGN KEY (`entrada_id`) REFERENCES `entradas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salidas_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salidas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
