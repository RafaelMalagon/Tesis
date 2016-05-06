-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2016 a las 20:02:05
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `structured`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `t_name`, `t_logo`, `t_slogan`, `created_at`, `updated_at`) VALUES
(1, 'Empresa 1', '/imagenes/empresa1.jpg', 'me mejor empresa 3', '2016-05-02 19:03:56', '2016-05-02 19:17:09'),
(2, 'Aguna ', 'asdfasdf\\asdf.png', 'esta es la cosa', '2016-05-02 19:13:31', '2016-05-02 19:13:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goals`
--

CREATE TABLE IF NOT EXISTS `goals` (
  `id` int(11) NOT NULL,
  `n_processArea` int(11) DEFAULT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `processarea_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `goals`
--

INSERT INTO `goals` (`id`, `n_processArea`, `t_name`, `t_description`, `t_type`, `created_at`, `updated_at`, `processarea_id`) VALUES
(1, 3, 'meta1', 'prueba', 'editando', '2016-04-28 01:52:49', '2016-04-28 01:54:46', NULL),
(2, 3, 'segunda', 'segunda descripcion', 'segunda', '2016-04-28 01:53:50', '2016-04-28 01:53:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `levels`
--

INSERT INTO `levels` (`id`, `t_name`, `created_at`, `updated_at`) VALUES
(1, 'uno', '2016-04-28 02:00:41', '2016-04-28 02:00:41'),
(2, 'dos', '2016-04-28 02:02:09', '2016-04-28 02:02:09'),
(3, 'tres', '2016-04-28 02:03:10', '2016-04-28 02:03:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practices`
--

CREATE TABLE IF NOT EXISTS `practices` (
  `id` int(11) NOT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_goal` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `goal_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `practices`
--

INSERT INTO `practices` (`id`, `t_name`, `t_description`, `n_goal`, `created_at`, `updated_at`, `goal_id`) VALUES
(1, 'alguna', 'asdfadsf', 2, '2016-05-02 19:29:10', '2016-05-02 19:29:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `processareas`
--

CREATE TABLE IF NOT EXISTS `processareas` (
  `id` int(11) NOT NULL,
  `n_level` int(11) DEFAULT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `companie_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `t_name`, `created_at`, `updated_at`, `companie_id`, `company_id`) VALUES
(1, 'Primer proyecto', '2016-05-02 19:19:08', '2016-05-02 19:19:08', NULL, NULL),
(2, 'algun proyecto', '2016-05-02 19:22:03', '2016-05-02 19:22:03', NULL, NULL),
(3, 'alguno', '2016-05-06 17:57:38', '2016-05-06 17:57:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `k_idRol` int(11) NOT NULL,
  `t_roleName` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160427180252'),
('20160428005004'),
('20160428014021'),
('20160428014044'),
('20160428014102'),
('20160428014120'),
('20160428014138'),
('20160428234434'),
('20160504233742'),
('20160505035548'),
('20160506163726'),
('20160506170050'),
('20160506171606'),
('20160506175330');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `steps`
--

CREATE TABLE IF NOT EXISTS `steps` (
  `id` int(11) NOT NULL,
  `t_description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_practice` int(11) DEFAULT NULL,
  `n_yestStep` int(11) DEFAULT NULL,
  `n_noStep` int(11) DEFAULT NULL,
  `t_typeStep` varbinary(50) DEFAULT NULL COMMENT 'Task, Decision, Process',
  `n_rol` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `steps`
--

INSERT INTO `steps` (`id`, `t_description`, `n_practice`, `n_yestStep`, `n_noStep`, `t_typeStep`, `n_rol`, `user_id`, `practice_id`) VALUES
(1, 'esta es la descripcion cam', 2, 1, 1, 0x017461726561, 2, 2, NULL),
(2, 'algosql', 1, 4, 5, 0x36, 7, 1, NULL),
(3, 'alguna', 1, 1, 1, 0x31, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `roles_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `name`, `address`, `role`, `created_at`, `updated_at`, `roles_id`) VALUES
(1, 'rafael@mail.com', '$2a$11$n79C68S2LZnqGRPn/wHk.eqv8BlXo/mzKhRoLzdLdUQuNexvmcYHS', NULL, NULL, NULL, 5, '2016-05-04 23:41:48', '2016-05-04 21:50:57', '::1', '::1', 'Rafael', 'HouseR', 1, '2016-04-28 00:55:13', '2016-05-04 23:41:48', NULL),
(2, 'pancho@mail.com', '$2a$11$PwxsH1GSNEcWsWq.dAgRreXREq3IepOJ.ont1uAxxJHVyvlyORRB6', NULL, NULL, NULL, 1, '2016-04-28 22:42:06', '2016-04-28 22:42:06', '::1', '::1', 'Pancho', 'villa', 2, '2016-04-28 22:42:05', '2016-04-28 22:42:06', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_goals_on_processarea_id` (`processarea_id`);

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_practices_on_goal_id` (`goal_id`);

--
-- Indices de la tabla `processareas`
--
ALTER TABLE `processareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_processareas_on_level_id` (`level_id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_projects_on_companie_id` (`companie_id`),
  ADD KEY `index_projects_on_company_id` (`company_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`k_idRol`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indices de la tabla `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `n_yestStep` (`n_yestStep`),
  ADD KEY `n_noStep` (`n_noStep`),
  ADD KEY `n_practice` (`n_practice`),
  ADD KEY `n_rol` (`n_rol`),
  ADD KEY `index_steps_on_user_id` (`user_id`),
  ADD KEY `index_steps_on_practice_id` (`practice_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  ADD KEY `index_users_on_roles_id` (`roles_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `practices`
--
ALTER TABLE `practices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `processareas`
--
ALTER TABLE `processareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `fk_rails_f089ebf001` FOREIGN KEY (`processarea_id`) REFERENCES `processareas` (`id`);

--
-- Filtros para la tabla `practices`
--
ALTER TABLE `practices`
  ADD CONSTRAINT `fk_rails_76b79c1c62` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`);

--
-- Filtros para la tabla `processareas`
--
ALTER TABLE `processareas`
  ADD CONSTRAINT `fk_rails_7f3e6335c1` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_rails_44a549d7b3` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `fk_rails_0f28e70afa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_324d50fec2` FOREIGN KEY (`practice_id`) REFERENCES `practices` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
