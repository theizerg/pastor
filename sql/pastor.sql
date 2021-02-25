-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para id16045709_mmm
CREATE DATABASE IF NOT EXISTS `id16045709_mmm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `id16045709_mmm`;

-- Volcando estructura para tabla id16045709_mmm.actividades
CREATE TABLE IF NOT EXISTS `actividades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `hora_comienzo` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_fin` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_inicio` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_fin` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comentario` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `35989_5913ebf64ed0b` (`user_id`),
  KEY `35989_5913ebf652b9b` (`status_id`),
  KEY `actividades_deleted_at_index` (`deleted_at`),
  CONSTRAINT `35989_5913ebf64ed0b` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `35989_5913ebf652b9b` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.actividades: ~0 rows (aproximadamente)
DELETE FROM `actividades`;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.cache: ~0 rows (aproximadamente)
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.documentos
CREATE TABLE IF NOT EXISTS `documentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_documento` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `iglesia_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentos_user_id_foreign` (`user_id`),
  KEY `documentos_iglesia_id_foreign` (`iglesia_id`),
  CONSTRAINT `documentos_iglesia_id_foreign` FOREIGN KEY (`iglesia_id`) REFERENCES `iglesias` (`id`),
  CONSTRAINT `documentos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.documentos: ~0 rows (aproximadamente)
DELETE FROM `documentos`;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.estado
CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_estado` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.estado: ~24 rows (aproximadamente)
DELETE FROM `estado`;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` (`id`, `nb_estado`, `created_at`, `updated_at`) VALUES
	(1, 'Amazonas', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Anzoátegui', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(3, 'Apure', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(4, 'Aragua', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(5, 'Barinas', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(6, 'Bolívar', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(7, 'Carabobo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(8, 'Cojedes', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(9, 'Delta Amacuro', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(10, 'Distrito Capital', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(11, 'Falcón', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(12, 'Guárico', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(13, 'Lara', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(14, 'Mérida', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(15, 'Miranda', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(16, 'Monagas', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(17, 'Nueva Esparta', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(18, 'Portuguesa', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(19, 'Sucre', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(20, 'Táchira', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(21, 'Trujillo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(22, 'Vargas', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(23, 'Yaracuy', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(24, 'Zulia', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.estado_civil
CREATE TABLE IF NOT EXISTS `estado_civil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_estado_civil` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.estado_civil: ~3 rows (aproximadamente)
DELETE FROM `estado_civil`;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` (`id`, `nb_estado_civil`, `created_at`, `updated_at`) VALUES
	(1, 'Soltero(a)', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Casado(a)', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(3, 'Viudo(a)', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_genero` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.genero: ~2 rows (aproximadamente)
DELETE FROM `genero`;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`id`, `nb_genero`, `created_at`, `updated_at`) VALUES
	(1, 'Masculino', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Femenino', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.grado_instruccion
CREATE TABLE IF NOT EXISTS `grado_instruccion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_grado_instruccion` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.grado_instruccion: ~7 rows (aproximadamente)
DELETE FROM `grado_instruccion`;
/*!40000 ALTER TABLE `grado_instruccion` DISABLE KEYS */;
INSERT INTO `grado_instruccion` (`id`, `nb_grado_instruccion`, `created_at`, `updated_at`) VALUES
	(1, 'Primaria', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Bachiller', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(3, 'TSU', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(4, 'Ingeniero', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(5, 'Licenciado', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(6, 'Majister', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(7, 'Doctorado', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `grado_instruccion` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.grado_ministerial
CREATE TABLE IF NOT EXISTS `grado_ministerial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_grado_ministerial` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.grado_ministerial: ~4 rows (aproximadamente)
DELETE FROM `grado_ministerial`;
/*!40000 ALTER TABLE `grado_ministerial` DISABLE KEYS */;
INSERT INTO `grado_ministerial` (`id`, `nb_grado_ministerial`, `created_at`, `updated_at`) VALUES
	(1, 'Colaborador', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Laico', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(3, 'Licenciado', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(4, 'Ministro Ordenado', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `grado_ministerial` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.iglesias
CREATE TABLE IF NOT EXISTS `iglesias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nombre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_zona` int(11) NOT NULL,
  `nb_urbanizacion` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_edificio` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_casa` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_parroquia` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_municipio` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_ciudad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `nu_codigo_postal` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_telefono` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_local_id` int(10) unsigned NOT NULL,
  `pastor_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iglesias_estado_id_foreign` (`estado_id`),
  KEY `iglesias_tipo_local_id_foreign` (`tipo_local_id`),
  KEY `iglesias_pastor_id_foreign` (`pastor_id`),
  KEY `iglesias_users_id_foreign` (`users_id`),
  CONSTRAINT `iglesias_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  CONSTRAINT `iglesias_pastor_id_foreign` FOREIGN KEY (`pastor_id`) REFERENCES `pastor` (`id`),
  CONSTRAINT `iglesias_tipo_local_id_foreign` FOREIGN KEY (`tipo_local_id`) REFERENCES `tipo_local` (`id`),
  CONSTRAINT `iglesias_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.iglesias: ~0 rows (aproximadamente)
DELETE FROM `iglesias`;
/*!40000 ALTER TABLE `iglesias` DISABLE KEYS */;
/*!40000 ALTER TABLE `iglesias` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.logins
CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_agent` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logins_user_id_foreign` (`user_id`),
  CONSTRAINT `logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.logins: ~0 rows (aproximadamente)
DELETE FROM `logins`;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.migrations: ~21 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_01_05_125250_create_statuses_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_000001_create_logins_table', 1),
	(4, '2014_10_12_100000_create_password_resets_table', 1),
	(5, '2017_11_05_134423_create_permission_tables', 1),
	(6, '2019_09_20_192035_create_pais__table', 1),
	(7, '2019_09_20_192059_create_estado__table', 1),
	(8, '2019_09_20_192134_create_genero__table', 1),
	(9, '2019_09_20_192200_create_grado_ministerial__table', 1),
	(10, '2019_09_20_192224_create_grado_instruccion__table', 1),
	(11, '2019_09_20_192739_create_nacionalidad__table', 1),
	(12, '2019_09_20_200000_create_estado_civil_table', 1),
	(13, '2019_09_24_030410_create_tipo_sangre_table', 1),
	(14, '2019_09_24_030503_create_pastor_table', 1),
	(15, '2019_09_26_163044_create_cache_table', 1),
	(16, '2021_01_26_134247_create_tipo_locals_table', 1),
	(17, '2021_01_27_134153_create_iglesias_table', 1),
	(18, '2021_02_04_091224_create_documentos_table', 1),
	(19, '2021_02_15_193951_create_actividades_table', 1),
	(20, '2021_02_21_203546_create_notificaciones_table', 1),
	(21, '2021_02_21_204033_notificacion_usuario_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.model_has_permissions: ~0 rows (aproximadamente)
DELETE FROM `model_has_permissions`;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.model_has_roles: ~1 rows (aproximadamente)
DELETE FROM `model_has_roles`;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
	(1, 1, 'App\\Models\\User');
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.nacionalidad
CREATE TABLE IF NOT EXISTS `nacionalidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nacionalidad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.nacionalidad: ~2 rows (aproximadamente)
DELETE FROM `nacionalidad`;
/*!40000 ALTER TABLE `nacionalidad` DISABLE KEYS */;
INSERT INTO `nacionalidad` (`id`, `nb_nacionalidad`, `created_at`, `updated_at`) VALUES
	(1, 'Venezolano', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Extranjero', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `nacionalidad` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_texto` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.notificaciones: ~0 rows (aproximadamente)
DELETE FROM `notificaciones`;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.notificacion_usuarios
CREATE TABLE IF NOT EXISTS `notificacion_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leido` tinyint(1) NOT NULL DEFAULT '0',
  `usuario_id` int(10) unsigned NOT NULL,
  `notificacion_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `not_usr_usr_fk` (`usuario_id`),
  KEY `not_usr_not_fk` (`notificacion_id`),
  CONSTRAINT `not_usr_not_fk` FOREIGN KEY (`notificacion_id`) REFERENCES `notificaciones` (`id`),
  CONSTRAINT `not_usr_usr_fk` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.notificacion_usuarios: ~0 rows (aproximadamente)
DELETE FROM `notificacion_usuarios`;
/*!40000 ALTER TABLE `notificacion_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.pais
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_pais` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.pais: ~194 rows (aproximadamente)
DELETE FROM `pais`;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id`, `nb_pais`, `created_at`, `updated_at`) VALUES
	(1, 'Afganistán', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(2, 'Albania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(3, 'Alemania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(4, 'Andorra', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(5, 'Angola', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(6, 'Antigua y Barbuda', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(7, 'Arabia Saudita', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(8, 'Argelia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(9, 'Argentina', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(10, 'Armenia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(11, 'Australia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(12, 'Austria', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(13, 'Azerbaiyán', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(14, 'Bahamas', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(15, 'Bangladés', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(16, 'Barbados', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(17, 'Baréin', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(18, 'Bélgica', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(19, 'Belice', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(20, 'Benín', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(21, 'Bielorrusia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(22, 'Birmania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(23, 'Bolivia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(24, 'Bosnia y Herzegovina', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(25, 'Botsuana', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(26, 'Brasil', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(27, 'Brunéi', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(28, 'Bulgaria', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(29, 'Burkina Faso', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(30, 'Burundi', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(31, 'Bután', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(32, 'Cabo Verde', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(33, 'Camboya', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(34, 'Camerún', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(35, 'Canadá', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(36, 'Catar', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(37, 'Chad', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(38, 'Chile', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(39, 'China', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(40, 'Chipre', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(41, 'Ciudad del Vaticano', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(42, 'Colombia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(43, 'Comoras', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(44, 'Corea del Norte', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(45, 'Corea del Sur', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(46, 'Costa de Marfil', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(47, 'Costa Rica', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(48, 'Croacia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(49, 'Cuba', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(50, 'Dinamarca', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(51, 'Dominica', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(52, 'Ecuador', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(53, 'Egipto', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(54, 'El Salvador', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(55, 'Emiratos Árabes Unidos', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(56, 'Eritrea', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(57, 'Eslovaquia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(58, 'Eslovenia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(59, 'España', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(60, 'Estados Unidos', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(61, 'Estonia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(62, 'Etiopía', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(63, 'Filipinas', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(64, 'Finlandia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(65, 'Fiyi', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(66, 'Francia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(67, 'Gabón', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(68, 'Gambia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(69, 'Georgia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(70, 'Ghana', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(71, 'Granada', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(72, 'Grecia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(73, 'Guatemala', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(74, 'Guyana', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(75, 'Guinea', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(76, 'Guinea-Bisáu', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(77, 'Guinea Ecuatorial', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(78, 'Haití', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(79, 'Honduras', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(80, 'Hungría', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(81, 'India', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(82, 'Indonesia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(83, 'Irak', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(84, 'Irán', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(85, 'Irlanda', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(86, 'Islandia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(87, 'Islas Marshall', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(88, 'Islas Salomón', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(89, 'Israel', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(90, 'Italia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(91, 'Jamaica', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(92, 'Japón', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(93, 'Jordania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(94, 'Kazajistán', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(95, 'Kenia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(96, 'Kirguistán', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(97, 'Kiribati', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(98, 'Kuwait', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(99, 'Laos', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(100, 'Lesoto', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(101, 'Letonia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(102, 'Líbano', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(103, 'Liberia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(104, 'Libia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(105, 'Liechtenstein', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(106, 'Lituania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(107, 'Luxemburgo', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(108, 'Macedonia del Norte', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(109, 'Madagascar', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(110, 'Malasia', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(111, 'Malaui', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(112, 'Maldivas', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(113, 'Malí', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(114, 'Malta', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(115, 'Marruecos', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(116, 'Mauricio', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(117, 'Mauritania', '2021-02-22 06:05:55', '2021-02-22 06:05:55'),
	(118, 'México', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(119, 'Micronesia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(120, 'Moldavia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(121, 'Mónaco', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(122, 'Mongolia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(123, 'Montenegro', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(124, 'Mozambique', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(125, 'Namibia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(126, 'Nauru', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(127, 'Nepal', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(128, 'Nicaragua', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(129, 'Níger', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(130, 'Nigeria', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(131, 'Noruega', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(132, 'Nueva Zelanda', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(133, 'Omán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(134, 'Países Bajos', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(135, 'Pakistán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(136, 'Palaos', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(137, 'Panamá', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(138, 'Papúa Nueva Guinea', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(139, 'Paraguay', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(140, 'Perú', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(141, 'Polonia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(142, 'Portugal', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(143, 'Reino Unido de Gran Bretaña e Irlanda del Norte', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(144, 'República Centroafricana', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(145, 'República Checa', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(146, 'República del Congo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(147, 'República Democrática del Congo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(148, 'República Dominicana', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(149, 'República Sudafricana', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(150, 'Ruanda', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(151, 'Rumanía', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(152, 'Rusia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(153, 'Samoa', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(154, 'San Cristóbal y Nieves', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(155, 'San Marino', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(156, 'San Vicente y las Granadinas', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(157, 'Santa Lucía', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(158, 'Santo Tomé y Príncipe', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(159, 'Senegal', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(160, 'Serbia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(161, 'Seychelles', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(162, 'Sierra Leona', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(163, 'Singapur', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(164, 'Siria', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(165, 'Somalia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(166, 'Sri Lanka', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(167, 'Suazilandia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(168, 'Sudán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(169, 'Sudán del Sur', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(170, 'Suecia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(171, 'Suiza', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(172, 'Surinam', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(173, 'Tailandia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(174, 'Tanzania', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(175, 'Tayikistán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(176, 'Timor Oriental', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(177, 'Togo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(178, 'Tonga', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(179, 'Trinidad y Tobago', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(180, 'Túnez', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(181, 'Turkmenistán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(182, 'Turquía', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(183, 'Tuvalu', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(184, 'Ucrania', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(185, 'Uganda', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(186, 'Uruguay', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(187, 'Uzbekistán', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(188, 'Vanuatu', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(189, 'Venezuela', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(190, 'Vietnam', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(191, 'Yemen', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(192, 'Yibuti', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(193, 'Zambia', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(194, 'Zimbabue', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.pastor
CREATE TABLE IF NOT EXISTS `pastor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_nombres` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_apellidos` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_cedula` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_edad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_correo` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tx_direccion` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_telefono` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fe_ingreso` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_bau_Espiritu_Santo` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_ins_teologico` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_desc_ins_teologico` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_tiempo_ins` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_titulo_obtenido` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_sufre_enfermedad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_descripcion_enfermedad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_hijos` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_carga_familiar_hijos` int(11) NOT NULL,
  `tipo_sangre_id` int(11) NOT NULL,
  `nb_ocupacion` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_zona` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_nacimiento_id` int(10) unsigned NOT NULL,
  `nacionalidad_id` int(10) unsigned NOT NULL,
  `fe_nacimiento` date NOT NULL,
  `genero_id` int(10) unsigned NOT NULL,
  `grado_instruccion_id` int(10) unsigned NOT NULL,
  `grado_ministerial_id` int(10) unsigned NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `estado_civil_id` int(10) unsigned NOT NULL,
  `tx_nota` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pastor_nu_cedula_unique` (`nu_cedula`),
  UNIQUE KEY `pastor_tx_correo_unique` (`tx_correo`),
  KEY `pastor_status_id_foreign` (`status_id`),
  KEY `pastor_lugar_nacimiento_id_foreign` (`lugar_nacimiento_id`),
  KEY `pastor_nacionalidad_id_foreign` (`nacionalidad_id`),
  KEY `pastor_grado_instruccion_id_foreign` (`grado_instruccion_id`),
  KEY `pastor_grado_ministerial_id_foreign` (`grado_ministerial_id`),
  KEY `pastor_estado_id_foreign` (`estado_id`),
  KEY `pastor_estado_civil_id_foreign` (`estado_civil_id`),
  CONSTRAINT `pastor_estado_civil_id_foreign` FOREIGN KEY (`estado_civil_id`) REFERENCES `estado_civil` (`id`),
  CONSTRAINT `pastor_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  CONSTRAINT `pastor_grado_instruccion_id_foreign` FOREIGN KEY (`grado_instruccion_id`) REFERENCES `grado_instruccion` (`id`),
  CONSTRAINT `pastor_grado_ministerial_id_foreign` FOREIGN KEY (`grado_ministerial_id`) REFERENCES `grado_ministerial` (`id`),
  CONSTRAINT `pastor_lugar_nacimiento_id_foreign` FOREIGN KEY (`lugar_nacimiento_id`) REFERENCES `pais` (`id`),
  CONSTRAINT `pastor_nacionalidad_id_foreign` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id`),
  CONSTRAINT `pastor_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.pastor: ~0 rows (aproximadamente)
DELETE FROM `pastor`;
/*!40000 ALTER TABLE `pastor` DISABLE KEYS */;
/*!40000 ALTER TABLE `pastor` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.permissions: ~9 rows (aproximadamente)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'VerUsuario', 'web', '2021-02-22 06:05:53', '2021-02-22 06:05:53'),
	(2, 'RegistrarUsuario', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(3, 'EditarUsuario', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(4, 'EliminarUsuario', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(5, 'VerNotificaciones', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(6, 'VerPermisos', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(7, 'CrearPermisos', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(8, 'EditarPermisos', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(9, 'EliminarPermisos', 'web', '2021-02-22 06:05:54', '2021-02-22 06:05:54');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.roles: ~2 rows (aproximadamente)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `status_id`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'web', '1', '2021-02-22 06:05:54', '2021-02-22 06:05:54'),
	(2, 'Usuario', 'web', '1', '2021-02-22 06:05:54', '2021-02-22 06:05:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.role_has_permissions: ~10 rows (aproximadamente)
DELETE FROM `role_has_permissions`;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(1, 2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nombre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.status: ~2 rows (aproximadamente)
DELETE FROM `status`;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `nb_nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Activo', NULL, NULL),
	(2, 'Inactivo', NULL, NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.tipo_local
CREATE TABLE IF NOT EXISTS `tipo_local` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nombre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.tipo_local: ~2 rows (aproximadamente)
DELETE FROM `tipo_local`;
/*!40000 ALTER TABLE `tipo_local` DISABLE KEYS */;
INSERT INTO `tipo_local` (`id`, `nb_nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Alquilado', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'Propio', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `tipo_local` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.tipo_sangre
CREATE TABLE IF NOT EXISTS `tipo_sangre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_tipo_sangre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.tipo_sangre: ~9 rows (aproximadamente)
DELETE FROM `tipo_sangre`;
/*!40000 ALTER TABLE `tipo_sangre` DISABLE KEYS */;
INSERT INTO `tipo_sangre` (`id`, `nb_tipo_sangre`, `created_at`, `updated_at`) VALUES
	(1, 'Sin recordar', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(2, 'A Positiva', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(3, 'A Negativo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(4, 'B Positivo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(5, 'B Negativo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(6, 'O Positivo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(7, 'O Negativo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(8, 'AB Positivo', '2021-02-22 06:05:56', '2021-02-22 06:05:56'),
	(9, 'AB Negativo', '2021-02-22 06:05:56', '2021-02-22 06:05:56');
/*!40000 ALTER TABLE `tipo_sangre` ENABLE KEYS */;

-- Volcando estructura para tabla id16045709_mmm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_zona` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_status_id_foreign` (`status_id`),
  CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16045709_mmm.users: ~1 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `last_name`, `email`, `password`, `nu_zona`, `status_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Theizer', 'tgonzalez', 'Gonzalez', 'tgonzalez@gmail.com', '$2y$10$YxqVGBOAjo4K4m6DcaUmL.zVII0SBNCjikpo1iS64zwZjQJTOF61G', '', 1, NULL, NULL, '2021-02-22 06:05:55', '2021-02-22 06:05:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
