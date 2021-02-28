-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para id16221233_pastores

USE `id16221233_pastores`;

-- Volcando estructura para tabla id16221233_pastores.actividades
CREATE TABLE IF NOT EXISTS `actividades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
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
  KEY `actividades_deleted_at_index` (`deleted_at`),
  CONSTRAINT `35989_5913ebf64ed0b` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.actividades: ~1 rows (aproximadamente)
DELETE FROM `actividades`;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.cache: ~0 rows (aproximadamente)
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.documentos
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.documentos: ~1 rows (aproximadamente)
DELETE FROM `documentos`;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` (`id`, `nb_documento`, `user_id`, `iglesia_id`, `created_at`, `updated_at`) VALUES
	(1, '1614287304homework-emily.docx', 2, 20, '2021-02-25 17:08:24', '2021-02-25 17:08:24');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.estado
CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_estado` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.estado: ~24 rows (aproximadamente)
DELETE FROM `estado`;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` (`id`, `nb_estado`, `created_at`, `updated_at`) VALUES
	(1, 'Amazonas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(2, 'Anzoátegui', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(3, 'Apure', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(4, 'Aragua', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(5, 'Barinas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(6, 'Bolívar', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(7, 'Carabobo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(8, 'Cojedes', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(9, 'Delta Amacuro', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(10, 'Distrito Capital', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(11, 'Falcón', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(12, 'Guárico', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(13, 'Lara', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(14, 'Mérida', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(15, 'Miranda', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(16, 'Monagas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(17, 'Nueva Esparta', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(18, 'Portuguesa', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(19, 'Sucre', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(20, 'Táchira', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(21, 'Trujillo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(22, 'Vargas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(23, 'Yaracuy', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(24, 'Zulia', '2021-02-25 11:51:05', '2021-02-25 11:51:05');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.estado_civil
CREATE TABLE IF NOT EXISTS `estado_civil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_estado_civil` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.estado_civil: ~3 rows (aproximadamente)
DELETE FROM `estado_civil`;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` (`id`, `nb_estado_civil`, `created_at`, `updated_at`) VALUES
	(1, 'Soltero(a)', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(2, 'Casado(a)', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(3, 'Viudo(a)', '2021-02-25 11:51:05', '2021-02-25 11:51:05');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_genero` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.genero: ~2 rows (aproximadamente)
DELETE FROM `genero`;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`id`, `nb_genero`, `created_at`, `updated_at`) VALUES
	(1, 'Masculino', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(2, 'Femenino', '2021-02-25 11:51:05', '2021-02-25 11:51:05');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.grado_instruccion
CREATE TABLE IF NOT EXISTS `grado_instruccion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_grado_instruccion` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.grado_instruccion: ~7 rows (aproximadamente)
DELETE FROM `grado_instruccion`;
/*!40000 ALTER TABLE `grado_instruccion` DISABLE KEYS */;
INSERT INTO `grado_instruccion` (`id`, `nb_grado_instruccion`, `created_at`, `updated_at`) VALUES
	(1, 'Primaria', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(2, 'Bachiller', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(3, 'TSU', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(4, 'Ingeniero', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(5, 'Licenciado', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(6, 'Majister', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(7, 'Doctorado', '2021-02-25 11:51:06', '2021-02-25 11:51:06');
/*!40000 ALTER TABLE `grado_instruccion` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.grado_ministerial
CREATE TABLE IF NOT EXISTS `grado_ministerial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_grado_ministerial` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.grado_ministerial: ~4 rows (aproximadamente)
DELETE FROM `grado_ministerial`;
/*!40000 ALTER TABLE `grado_ministerial` DISABLE KEYS */;
INSERT INTO `grado_ministerial` (`id`, `nb_grado_ministerial`, `created_at`, `updated_at`) VALUES
	(1, 'Colaborador', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(2, 'Laico', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(3, 'Licenciado', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(4, 'Ministro Ordenado', '2021-02-25 11:51:05', '2021-02-25 11:51:05');
/*!40000 ALTER TABLE `grado_ministerial` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.iglesias
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.iglesias: ~23 rows (aproximadamente)
DELETE FROM `iglesias`;
/*!40000 ALTER TABLE `iglesias` DISABLE KEYS */;
INSERT INTO `iglesias` (`id`, `nb_nombre`, `nu_zona`, `nb_urbanizacion`, `nb_edificio`, `nu_casa`, `nb_parroquia`, `nb_municipio`, `nb_ciudad`, `estado_id`, `nu_codigo_postal`, `nu_telefono`, `tipo_local_id`, `pastor_id`, `users_id`, `created_at`, `updated_at`) VALUES
	(1, 'LA MONTAÑIA', 1, 'SECTOR RUIZ PINEDA', 'BARRIO LA MONTAÑITA', '5', 'ANTIMANO', 'LIBERTADORES', 'CARACAS', 10, '1015', '04263190448', 2, 1, 2, '2021-02-25 11:55:37', '2021-02-25 16:54:31'),
	(2, 'CATIA', 1, 'AV.SUCRE, CATIA, CRUCE CON CALLE EL CARMEN', '5B', '1', '23 DE ENERO', 'LIBERTADOR', 'CARACAS', 10, '1010', '04143195530', 2, 6, 2, '2021-02-25 12:29:17', '2021-02-25 12:29:17'),
	(3, 'EL JUNQUITO KM 11', 1, 'KM 11 EL JUNQUITO', 'BARRIO JOSE ANTONIO PAEZ', '90', 'EL JUNQUITO', 'LIBERTADOR', 'CARACAS', 10, '1010', '04166183119', 2, 7, 2, '2021-02-25 12:36:27', '2021-02-25 12:36:27'),
	(4, 'CATIA LA MAR', 1, 'Calle principal de Marapa', 'Callejón Rufino, primera pasarela', '10', 'MARAPA', 'VARGAS', 'CATIA LA MAR', 22, '1010', '04242040957', 2, 8, 2, '2021-02-25 12:41:50', '2021-02-25 12:41:50'),
	(5, 'EL VALLE', 1, 'AV. Intercomunal, El valle', 'Sector Las Malvinas', '10', 'EL VALLE', 'LIBERTADOR', 'CARACAS', 10, '1010', '04142736090', 2, 9, 2, '2021-02-25 12:47:43', '2021-02-25 12:47:43'),
	(6, 'LOS TEQUES', 1, '---', '---', '0', '---', '---', '--', 15, '1010', '04143275100', 1, 10, 2, '2021-02-25 12:51:59', '2021-02-25 12:51:59'),
	(7, 'EL SILENCIO', 1, 'AV. SAN MARTÍN, CAPUCHINOS LUXON', 'EL SILENCIO', '10', 'SAN JUAN', 'LIBERTADOR', 'CARACAS', 10, '1010', '04241105628', 2, 11, 2, '2021-02-25 12:57:59', '2021-02-25 12:57:59'),
	(8, 'TACARIGUA', 1, 'CALLE BELENCITO, SECTOR LA CORALINA', 'C.C. MAZZILLI', '14', 'BARLOVENTO', 'TACARIGUA', 'BARLOVENTO', 15, '1010', '04141025085', 1, 16, 2, '2021-02-25 13:36:54', '2021-02-25 13:36:54'),
	(9, 'KM 24 DEL JUNQUITO', 1, 'SECTOR LAS TORRES', '---', '10', 'EL JUNQUITO', 'LIBERTADOR', 'CARACAS', 10, '1010', '04262840431', 2, 17, 2, '2021-02-25 13:44:30', '2021-02-25 13:44:30'),
	(10, 'GUARENAS', 1, 'SECTOR BRISAS DEL GUACARAPA', 'TERRAZA D', '7', 'GUACARAPA', 'GUARENAS', 'GUARENAS', 15, '1010', '04167894827', 1, 20, 2, '2021-02-25 14:02:24', '2021-02-25 14:02:24'),
	(11, 'COLONIA TOVAR', 1, '-', '-', '0', '-', '-', '-', 22, '0', '0', 1, 21, 2, '2021-02-25 14:06:02', '2021-02-25 14:06:02'),
	(12, 'LA VEGA', 1, 'CARRETERA NEGRAS LOS MANGOS', 'SECTOR LA GALLERA', '10', 'LA VEGA', 'LIBERTADOR', 'CARACAS', 10, '1010', '04160304243', 1, 23, 2, '2021-02-25 14:14:10', '2021-02-25 14:14:10'),
	(13, 'PETARE', 1, 'CARRETERA PETARE-GUARENAS KM 2', 'BARRIO SAN JOSE ESCALERA PRINCIPAL', '18', 'PETARE', 'ACEVEDO', 'GRAN CARACAS', 15, '1015', '04142106130', 2, 24, 2, '2021-02-25 14:23:13', '2021-02-25 14:23:13'),
	(14, 'LOMAS DE BARUTA', 1, '---', '---', '0', '---', 'BARUTA', 'CARACAS', 15, '1010', '0', 2, 25, 2, '2021-02-25 14:27:13', '2021-02-25 14:27:13'),
	(15, 'LAS ADJUNTAS', 1, 'CALLE EL RIO', 'SECTOR LAS ADJUNTAS', '053', 'MACARAO', 'LIBERTADOR', 'CARACAS', 10, '1010', '04164281366', 2, 26, 2, '2021-02-25 14:36:26', '2021-02-25 14:36:26'),
	(16, 'LA CASTELLANA', 1, '---', '---', '0', '---', 'BARUTA', 'CARACAS', 15, '1010', '0', 1, 29, 2, '2021-02-25 14:52:31', '2021-02-25 14:52:31'),
	(17, 'MECEDORES', 1, '...', '...', '0', '...', '...', '...', 10, '0', '0', 1, 32, 2, '2021-02-25 15:03:08', '2021-02-25 15:03:08'),
	(18, 'LA DOLORITA', 1, '---', '---', '0', '---', '---', '---', 15, '1010', '0', 1, 32, 2, '2021-02-25 15:07:16', '2021-02-25 15:07:16'),
	(19, 'NUEVA CÚA', 1, '---', '---', '0', '---', '---', '---', 15, '1010', '0', 2, 35, 2, '2021-02-25 15:29:46', '2021-02-25 15:29:46'),
	(20, 'BARRIO AEROPUERTO', 1, 'CALLE LA MAR.', 'BARRIO AEROPUERTO', '10', '---', 'BARRIO AEROPUERTO,', 'VARGAS', 22, '1515', '0', 1, 39, 2, '2021-02-25 15:40:19', '2021-02-25 15:40:19'),
	(21, 'BARUTA', 1, '---', '---', '0', '---', '---', '---', 15, '1010', '0', 1, 41, 2, '2021-02-25 15:51:41', '2021-02-25 15:51:41'),
	(22, 'LA DOLORITA', 1, '---', '---', '0', '---', 'BARUTA', '---', 10, '1010', '0', 1, 44, 2, '2021-02-25 16:16:18', '2021-02-25 16:16:18'),
	(23, 'KM 4 DEL JUNQUITO', 1, '---', '---', '0', '---', '---', '---', 10, '1010', '0', 1, 47, 2, '2021-02-25 16:21:56', '2021-02-25 16:21:56');
/*!40000 ALTER TABLE `iglesias` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.logins
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.logins: ~3 rows (aproximadamente)
DELETE FROM `logins`;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` (`id`, `user_id`, `user_agent`, `session_token`, `ip_address`, `login_at`, `logout_at`) VALUES
	(1, 1, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36', 'uLAndjKmtVA9TJCqmbNZ8clRLGzfYP5ANo7reeg4', '127.0.0.1', '2021-02-25 17:12:24', '2021-02-25 17:14:50'),
	(2, 2, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36', '8rcH0oW9zIBHOberOV7UrAL7uJ9DMazB9cLD2cgp', '127.0.0.1', '2021-02-25 17:15:01', '2021-02-25 17:21:14'),
	(3, 1, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36', 'lNwSdikHfr2KoJI1OAX3iiWmzOfs4JWK6uB7RsaO', '127.0.0.1', '2021-02-25 17:21:25', '2021-02-25 17:49:06'),
	(4, 2, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36', 'QkwoNoi2PrReFkn7Er4eMtpK0KpU68g8sdr4qYua', '127.0.0.1', '2021-02-25 17:49:16', '2021-02-25 17:50:02'),
	(5, 1, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.59 Safari/537.36', 'f949WvIz3oPOMytTNfHMcXViStpjFPEk1KRYbcBO', '127.0.0.1', '2021-02-25 17:50:13', NULL);
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.migrations: ~20 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_000001_create_logins_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2017_11_05_134423_create_permission_tables', 1),
	(5, '2019_09_20_192035_create_pais__table', 1),
	(6, '2019_09_20_192059_create_estado__table', 1),
	(7, '2019_09_20_192134_create_genero__table', 1),
	(8, '2019_09_20_192200_create_grado_ministerial__table', 1),
	(9, '2019_09_20_192224_create_grado_instruccion__table', 1),
	(10, '2019_09_20_192739_create_nacionalidad__table', 1),
	(11, '2019_09_20_200000_create_estado_civil_table', 1),
	(12, '2019_09_24_030410_create_tipo_sangre_table', 1),
	(13, '2019_09_24_030503_create_pastor_table', 1),
	(14, '2019_09_26_163044_create_cache_table', 1),
	(15, '2021_01_26_134247_create_tipo_locals_table', 1),
	(16, '2021_01_27_134153_create_iglesias_table', 1),
	(17, '2021_02_04_091224_create_documentos_table', 1),
	(18, '2021_02_15_193951_create_actividades_table', 1),
	(19, '2021_02_21_203546_create_notificaciones_table', 1),
	(20, '2021_02_21_204033_notificacion_usuario_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.model_has_permissions: ~0 rows (aproximadamente)
DELETE FROM `model_has_permissions`;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.model_has_roles: ~3 rows (aproximadamente)
DELETE FROM `model_has_roles`;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
	(1, 1, 'App\\Models\\User'),
	(2, 2, 'App\\Models\\User'),
	(1, 3, 'App\\Models\\User');
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.nacionalidad
CREATE TABLE IF NOT EXISTS `nacionalidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nacionalidad` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.nacionalidad: ~2 rows (aproximadamente)
DELETE FROM `nacionalidad`;
/*!40000 ALTER TABLE `nacionalidad` DISABLE KEYS */;
INSERT INTO `nacionalidad` (`id`, `nb_nacionalidad`, `created_at`, `updated_at`) VALUES
	(1, 'Venezolano', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(2, 'Extranjero', '2021-02-25 11:51:06', '2021-02-25 11:51:06');
/*!40000 ALTER TABLE `nacionalidad` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_texto` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.notificaciones: ~1 rows (aproximadamente)
DELETE FROM `notificaciones`;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.notificacion_usuarios
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

-- Volcando datos para la tabla id16221233_pastores.notificacion_usuarios: ~0 rows (aproximadamente)
DELETE FROM `notificacion_usuarios`;
/*!40000 ALTER TABLE `notificacion_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.pais
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_pais` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.pais: ~194 rows (aproximadamente)
DELETE FROM `pais`;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id`, `nb_pais`, `created_at`, `updated_at`) VALUES
	(1, 'Afganistán', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(2, 'Albania', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(3, 'Alemania', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(4, 'Andorra', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(5, 'Angola', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(6, 'Antigua y Barbuda', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(7, 'Arabia Saudita', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(8, 'Argelia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(9, 'Argentina', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(10, 'Armenia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(11, 'Australia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(12, 'Austria', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(13, 'Azerbaiyán', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(14, 'Bahamas', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(15, 'Bangladés', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(16, 'Barbados', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(17, 'Baréin', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(18, 'Bélgica', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(19, 'Belice', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(20, 'Benín', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(21, 'Bielorrusia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(22, 'Birmania', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(23, 'Bolivia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(24, 'Bosnia y Herzegovina', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(25, 'Botsuana', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(26, 'Brasil', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(27, 'Brunéi', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(28, 'Bulgaria', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(29, 'Burkina Faso', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(30, 'Burundi', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(31, 'Bután', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(32, 'Cabo Verde', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(33, 'Camboya', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(34, 'Camerún', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(35, 'Canadá', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(36, 'Catar', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(37, 'Chad', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(38, 'Chile', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(39, 'China', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(40, 'Chipre', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(41, 'Ciudad del Vaticano', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(42, 'Colombia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(43, 'Comoras', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(44, 'Corea del Norte', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(45, 'Corea del Sur', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(46, 'Costa de Marfil', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(47, 'Costa Rica', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(48, 'Croacia', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(49, 'Cuba', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(50, 'Dinamarca', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(51, 'Dominica', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(52, 'Ecuador', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(53, 'Egipto', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(54, 'El Salvador', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(55, 'Emiratos Árabes Unidos', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(56, 'Eritrea', '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(57, 'Eslovaquia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(58, 'Eslovenia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(59, 'España', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(60, 'Estados Unidos', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(61, 'Estonia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(62, 'Etiopía', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(63, 'Filipinas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(64, 'Finlandia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(65, 'Fiyi', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(66, 'Francia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(67, 'Gabón', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(68, 'Gambia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(69, 'Georgia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(70, 'Ghana', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(71, 'Granada', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(72, 'Grecia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(73, 'Guatemala', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(74, 'Guyana', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(75, 'Guinea', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(76, 'Guinea-Bisáu', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(77, 'Guinea Ecuatorial', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(78, 'Haití', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(79, 'Honduras', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(80, 'Hungría', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(81, 'India', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(82, 'Indonesia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(83, 'Irak', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(84, 'Irán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(85, 'Irlanda', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(86, 'Islandia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(87, 'Islas Marshall', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(88, 'Islas Salomón', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(89, 'Israel', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(90, 'Italia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(91, 'Jamaica', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(92, 'Japón', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(93, 'Jordania', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(94, 'Kazajistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(95, 'Kenia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(96, 'Kirguistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(97, 'Kiribati', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(98, 'Kuwait', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(99, 'Laos', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(100, 'Lesoto', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(101, 'Letonia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(102, 'Líbano', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(103, 'Liberia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(104, 'Libia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(105, 'Liechtenstein', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(106, 'Lituania', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(107, 'Luxemburgo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(108, 'Macedonia del Norte', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(109, 'Madagascar', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(110, 'Malasia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(111, 'Malaui', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(112, 'Maldivas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(113, 'Malí', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(114, 'Malta', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(115, 'Marruecos', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(116, 'Mauricio', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(117, 'Mauritania', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(118, 'México', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(119, 'Micronesia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(120, 'Moldavia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(121, 'Mónaco', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(122, 'Mongolia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(123, 'Montenegro', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(124, 'Mozambique', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(125, 'Namibia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(126, 'Nauru', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(127, 'Nepal', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(128, 'Nicaragua', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(129, 'Níger', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(130, 'Nigeria', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(131, 'Noruega', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(132, 'Nueva Zelanda', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(133, 'Omán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(134, 'Países Bajos', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(135, 'Pakistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(136, 'Palaos', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(137, 'Panamá', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(138, 'Papúa Nueva Guinea', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(139, 'Paraguay', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(140, 'Perú', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(141, 'Polonia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(142, 'Portugal', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(143, 'Reino Unido de Gran Bretaña e Irlanda del Norte', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(144, 'República Centroafricana', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(145, 'República Checa', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(146, 'República del Congo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(147, 'República Democrática del Congo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(148, 'República Dominicana', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(149, 'República Sudafricana', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(150, 'Ruanda', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(151, 'Rumanía', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(152, 'Rusia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(153, 'Samoa', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(154, 'San Cristóbal y Nieves', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(155, 'San Marino', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(156, 'San Vicente y las Granadinas', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(157, 'Santa Lucía', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(158, 'Santo Tomé y Príncipe', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(159, 'Senegal', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(160, 'Serbia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(161, 'Seychelles', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(162, 'Sierra Leona', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(163, 'Singapur', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(164, 'Siria', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(165, 'Somalia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(166, 'Sri Lanka', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(167, 'Suazilandia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(168, 'Sudán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(169, 'Sudán del Sur', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(170, 'Suecia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(171, 'Suiza', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(172, 'Surinam', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(173, 'Tailandia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(174, 'Tanzania', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(175, 'Tayikistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(176, 'Timor Oriental', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(177, 'Togo', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(178, 'Tonga', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(179, 'Trinidad y Tobago', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(180, 'Túnez', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(181, 'Turkmenistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(182, 'Turquía', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(183, 'Tuvalu', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(184, 'Ucrania', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(185, 'Uganda', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(186, 'Uruguay', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(187, 'Uzbekistán', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(188, 'Vanuatu', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(189, 'Venezuela', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(190, 'Vietnam', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(191, 'Yemen', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(192, 'Yibuti', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(193, 'Zambia', '2021-02-25 11:51:05', '2021-02-25 11:51:05'),
	(194, 'Zimbabue', '2021-02-25 11:51:05', '2021-02-25 11:51:05');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.pastor
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
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pastor_nu_cedula_unique` (`nu_cedula`),
  UNIQUE KEY `pastor_tx_correo_unique` (`tx_correo`),
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
  CONSTRAINT `pastor_nacionalidad_id_foreign` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.pastor: ~44 rows (aproximadamente)
DELETE FROM `pastor`;
/*!40000 ALTER TABLE `pastor` DISABLE KEYS */;
INSERT INTO `pastor` (`id`, `tx_nombres`, `tx_apellidos`, `nu_cedula`, `nu_edad`, `tx_correo`, `tx_direccion`, `nu_telefono`, `fe_ingreso`, `nb_bau_Espiritu_Santo`, `nb_ins_teologico`, `nb_desc_ins_teologico`, `nu_tiempo_ins`, `nb_titulo_obtenido`, `nb_sufre_enfermedad`, `nb_descripcion_enfermedad`, `nb_hijos`, `nu_carga_familiar_hijos`, `tipo_sangre_id`, `nb_ocupacion`, `nu_zona`, `lugar_nacimiento_id`, `nacionalidad_id`, `fe_nacimiento`, `genero_id`, `grado_instruccion_id`, `grado_ministerial_id`, `estado_id`, `estado_civil_id`, `tx_nota`, `picture`, `users_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'IVAN ALFONSO', 'SALAZAR OVIEDO', '84.551.574', '---', 'isalazar@mmmvenezuela.com', '23 DE ENERO', '04263190448', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 42, 2, '2021-01-30', 1, 2, 2, 10, 2, '---', '1614268398ivan.jpg', 2, 1, '2021-02-25 11:53:18', '2021-02-25 11:53:18'),
	(2, 'YUSMIR INES', 'GUTIERREZ DE OLLARVES', '12.094.640', '---', 'ygutierrez@mmmvenezuela.com', 'EL SILENCIO', '0424-1110376', '25 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 4, 1, 'PASTORA', '1', 189, 1, '2021-12-31', 2, 3, 4, 10, 2, '---', '1614268806yusmir.jpg', 2, 1, '2021-02-25 12:00:06', '2021-02-25 12:00:06'),
	(3, 'MARISOL', 'SIVERA DE RIOS', '11.061.998', '---', 'msivera@mmmvenezuela.com', 'CATIA LA MAR', '---', '25 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 2, 4, 10, 2, '---', '1614269012marisol.jpg', 2, 1, '2021-02-25 12:03:32', '2021-02-25 12:03:32'),
	(4, 'MARIBEL', 'CENTENO DE TABERA', '7.897.330', '---', 'mcenteno@mmmvenezuela.com', 'JUNQUITO', '---', '---', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, 'OBRERA', '1', 189, 1, '2021-12-01', 2, 2, 1, 22, 2, 'FALTAN DATOS POR COMPLETAR', NULL, 2, 1, '2021-02-25 12:09:31', '2021-02-25 12:09:31'),
	(5, 'MARIA', 'PINO DE SALAZAR', '84.551.573', '---', 'mpino@mmmvenezuela.com', '23 DE ENERO', '0426-319.0448', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERA', '1', 42, 2, '2021-12-01', 2, 2, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 12:16:12', '2021-02-25 12:16:12'),
	(6, 'RICARDO', 'MANRIQUE RINCON', '9.249.292', '55', 'rmanrique@mmmvenezuela.com', 'EL PARAISO', '04143195530', '30 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 2, 1, 'SUPERVISOR NACIONAL', '1', 189, 1, '1962-02-28', 1, 3, 4, 10, 2, '-----', '1614270491ricardo.JPG', 2, 1, '2021-02-25 12:28:11', '2021-02-25 12:28:11'),
	(7, 'EDUARDO ALONSO', 'RANGEL MARQUEZ', '14.250.358', '---', 'erangel@mmmvenezuela.com', 'EL JUNQUITO KM 11', '0416-6183119', '25 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 4, 10, 2, 'FALTAN DATOS POR COMPLETAR', '1614270897eduardo.jpg', 2, 1, '2021-02-25 12:34:57', '2021-02-25 12:34:57'),
	(8, 'ROGER ANTONIO', 'RIOS HERNANDEZ', '10.584.428', '---', 'rrios@mmmvenezuela.com', 'CATIA LA MAR', '0424-2040957', '20 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 2, 4, 22, 2, 'FALTAN DATOS POR COMPLETAR', '1614271219roger.jpg', 2, 1, '2021-02-25 12:40:19', '2021-02-25 12:40:19'),
	(9, 'MICHAELL', 'PÁEZ', '6518271', '---', 'mpaez@mmmvenezuela.com', 'CATIA', '0414-2736090', '20 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'EMPRESARIO', '1', 189, 1, '2021-12-31', 1, 3, 4, 10, 2, 'FALTAN DATOS POR COMPLETAR', '1614271574michaell.JPG', 2, 1, '2021-02-25 12:46:14', '2021-02-25 12:46:14'),
	(10, 'CARLOS ALBERTO', 'ROA COLMENARES', '12.209.898', '---', 'croa@mmmvenezuela.com', 'LOS TEQUES', '0414-3275100', '25 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'No', 0, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 4, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614271859roa.jpg', 2, 1, '2021-02-25 12:50:59', '2021-02-25 12:50:59'),
	(11, 'FAUSTINO RAFAEL', 'OLLARVES CHIRINO', '9.926.064', '---', 'follarves@mmmvenezuela.com', 'EL SILENCIO', '0424-1105628', '21 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 4, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 4, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614272192faustino.jpg', 2, 1, '2021-02-25 12:56:32', '2021-02-25 12:56:32'),
	(12, 'GLADYS', 'ORTIZ DE MANRIQUE', '12.251.416', '---', 'gortiz@mmmvenezuela.com', 'EL PARAISO', '04143806617', '30 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 2, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 4, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 13:01:30', '2021-02-25 13:01:30'),
	(13, 'JUAN FRANCISCO', 'ROMERO COLMENARES', '3.556.483', '---', 'jromero@mmmvenezuela.com', 'NUEVA CÚA', '0424-1686427', '14 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 5, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 3, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614272839mateo.jpg', 2, 0, '2021-02-25 13:07:19', '2021-02-25 13:07:19'),
	(15, 'GABRIELA SARAI', 'BRACHO DE TOLEDO', '16.095.679', '---', 'gbracho@mmmvenezuela.com', 'TACARIGUA DE MAMPORAL', '0414-1025085', '8 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'ADMINISTRADORA', '1', 189, 1, '2021-12-31', 2, 5, 3, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614273381gabriela.jpg', 2, 1, '2021-02-25 13:16:21', '2021-02-25 13:16:21'),
	(16, 'JIMMY MISAEL', 'TOLEDO IZAGUIRRE', '14.934.170', '---', 'jtoledo@mmmvenezuela.com', 'TACARIGUA DE MAMPORAL', '0414-1025085', '8 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'GESTIÓN SOCIAL', '1', 189, 1, '2021-12-31', 1, 5, 3, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614274496jimmy.jpg', 2, 1, '2021-02-25 13:34:56', '2021-02-25 13:34:56'),
	(17, 'BRICEÑO', 'TABERA RONDON', '24.317.917', '---', 'tbriceno@mmmvenezuela.com', 'KM 24 JUNQUITO', '0426-2840431', '8 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 4, 1, 'OBRERO', '1', 42, 2, '2021-12-31', 1, 3, 3, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614274923briceno.jpg', 2, 1, '2021-02-25 13:42:03', '2021-02-25 13:42:03'),
	(18, 'ISABEL', 'DIAZ DE RANGEL', '13.405.857', '---', 'ydiaz@mmmvenezuela.com', 'KM 11 EL JUNQUITO', '---', '15 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 2, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 3, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614275298ysabel.jpg', 2, 1, '2021-02-25 13:48:18', '2021-02-25 13:48:18'),
	(19, 'ESPERANZA', 'HERNÁNDEZ DE ROMERO', '6.191.528', '---', 'eromero@mmmvenezuela.com', 'NUEVA CÚA', '0414-1534339', '10 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 5, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 3, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614275526esperanza.jpg', 2, 0, '2021-02-25 13:52:06', '2021-02-25 13:52:06'),
	(20, 'ADAN', 'PEREA SEVERICHE', '21.306.860', '---', 'aperea@mmmvenezuela.com', 'GUARENAS', '04167894827', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614276062adan.jpg', 2, 1, '2021-02-25 14:01:02', '2021-02-25 14:01:02'),
	(21, 'JESUS DIOSEMEL', 'CALDERON CALDERON', '17.160.195', '---', 'jcalderon@mmmvenezuela.com', 'COLONIA TOVAR', '---', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 189, 1, '2021-12-30', 1, 3, 2, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614276324jesus.jpg', 2, 1, '2021-02-25 14:05:24', '2021-02-25 14:05:24'),
	(22, 'GRISELDA', 'CONTRERAS DE PÁEZ', '9.357.681', '---', 'gcontreras@mmmvenezuela.com', 'CATIA', '---', '15 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 3, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614276585griselda.jpg', 2, 1, '2021-02-25 14:09:45', '2021-02-25 14:09:45'),
	(23, 'OSNEY DARIO', 'HERNANDEZ ROJAS', '17.321.826', '---', 'odario@mmmvenezuela.com', 'LA VEGA', '---', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614276782dario.jpg', 2, 1, '2021-02-25 14:13:02', '2021-02-25 14:13:02'),
	(24, 'ALEJANDRO JOSEPH', 'CAMACHO PIÑERO', '24.315.271', '---', 'acamacho@mmmvenezuela.com', 'PETARE', '04142106130', '4 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614277306alejandro.jpg', 2, 1, '2021-02-25 14:21:46', '2021-02-25 14:21:46'),
	(25, 'ANGEL JOSE', 'HERRERA FLORIAN', '84553878', '...', 'aherrera@mmmvenezuela.com', 'SABANA GRANDE', '---', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'TÉCNICO', '1', 42, 2, '2021-12-31', 1, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614277580angel.jpg', 2, 1, '2021-02-25 14:26:20', '2021-02-25 14:26:20'),
	(26, 'FERMIN JOSE', 'PERNIAS SALAS', '6.438.914', '---', 'fpernias@mmmvenezuela.com', 'CATIA', '0416-4281366', '4 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 4, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 2, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614278008fermin.jpg', 2, 1, '2021-02-25 14:33:28', '2021-02-25 14:33:28'),
	(27, 'KEREN APPUCH', 'QUINTANA DE PERNIAS', '10.533.174', '---', 'kquintana@mmmvenezuela.com', 'CATIA', '0424-1567496', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 4, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 2, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614278425keren.jpg', 2, 1, '2021-02-25 14:40:25', '2021-02-25 14:40:25'),
	(28, 'ALEXANDRA MARIA', 'BRITO DE ROA', '14.456.205', '---', 'abrito@mmmvenezuela.com', 'LOS TEQUES', '0414-1962781', '15 AÑOS', 'Si', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'No', 0, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 2, 1, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614278794alexandra.jpg', 2, 1, '2021-02-25 14:46:34', '2021-02-25 14:46:34'),
	(29, 'JOHANS', 'ARANDIA', '15.733.578', '---', 'jarandia@mmmvenezuela.com', 'LA CANDELARIA', '---', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 2, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 14:51:28', '2021-02-25 14:51:28'),
	(30, 'JANETH', 'URBINA DE ARANDIA', '13.126.166', '---', 'jurbina@mmmvenezuela.com', 'LA CANDELARIA', '---', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 5, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 14:55:25', '2021-02-25 14:55:25'),
	(31, 'SONIA MARIA', 'ASUAJE ZARRAGA', '16.905.569', '---', 'sasuaje@mmmvenezuela.com', 'COLONIA TOVAR', '---', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 1, 22, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 14:58:29', '2021-02-25 14:58:29'),
	(32, 'GREGORIO', 'CASANOVA NIÑO', '8.100.316', '---', 'gcasanova@mmmvenezuela.com', 'EL SILENCIO', '---', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 189, 1, '2021-12-30', 1, 3, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', '1614279740gregorio.jpg', 2, 1, '2021-02-25 15:02:20', '2021-02-25 15:02:20'),
	(35, 'TEODORO', 'ESCALANTE', '10.192.872', '---', 'tescalante@mmmvenezuela.com', 'NUEVA CÚA', '---', '3 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 3, 1, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 15:28:51', '2021-02-25 15:28:51'),
	(36, 'SAURCIRE', 'ROMERO DE ESCALANTE', '13.487.024', '---', 'sromero@mmvenezuela.com', 'NUEVA CÚA', '---', '3 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 2, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 1, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 15:31:35', '2021-02-25 15:31:35'),
	(37, 'NAIYILEHINE STEFANNY', 'FERNANDEZ DE CAMACHO', '25.625.949', '---', 'nfernandez@mmmvenezuela', 'PETARE', '---', '3 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 2, 1, 15, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 15:33:47', '2021-02-25 15:33:47'),
	(38, 'ANA ROSA', 'RAMÍREZ DE HERRERA', '17.159.674', '---', 'aramirez@mmmvenezuela.com', 'SABANA GRANDE', '---', '4 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 1, 10, 2, 'FALTAN DATOS PARA ACTUALIZAR', NULL, 2, 1, '2021-02-25 15:36:03', '2021-02-25 15:36:03'),
	(39, 'SAMUEL', 'MORA', '6.894.989', '---', 'smora@mmmvenezuela.com', 'ANTIMANO', '---', '10 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 4, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 2, 1, 10, 2, 'FALTAN DATOS PARA ACTUALIZAR', '1614281907mora.jpg', 2, 1, '2021-02-25 15:38:27', '2021-02-25 15:38:27'),
	(40, 'MARIA ISABEL', 'VILLAMIZAR DE MORA', '9.357.160', '---', 'mvillamizar@mmmvenezuela.com', 'Barrio aeropuerto', '---', '10 AÑOS', 'No', 'Si', 'ESCUELA MISIONERA', '3 AÑOS', 'TSU TEOLOGIA', 'No', 'N/A', 'Si', 4, 1, 'OBRERA', '1', 189, 1, '2020-01-31', 2, 1, 1, 22, 2, 'FALTAN DATOS PARA ACTUALIZAR', '1614282157isabel.jpg', 2, 1, '2021-02-25 15:42:37', '2021-02-25 15:42:37'),
	(41, 'EUCLIDES', 'PALENCIA LUGO', '20.797.761', '---', 'epalencia@mmmvenezuela.com', 'BARUTA', '---', '4 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Seleccione', 0, 1, 'OBRERO', '1', 189, 1, '2021-12-31', 1, 2, 1, 15, 1, 'FALTAN DATOS POR ACTUALIZAR', '1614282658euclides.jpg', 2, 1, '2021-02-25 15:50:58', '2021-02-25 15:50:58'),
	(42, 'MILEIDY ESSYMAR', 'DURÁN DE POLO', '19.632.747', '---', 'mduran@gmail.com', 'KM 19 DEL JUNQUITO', '---', '3 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 1, 10, 2, 'FALTAN DATOS PARA ACTUALIZAR', NULL, 2, 1, '2021-02-25 16:00:45', '2021-02-25 16:00:45'),
	(43, 'LISBETH', 'DE PEREA', '28.175.286', '---', 'lperea@mmmvenezuela.com', 'GUARENAS', '---', '4 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'Si', 1, 1, 'OBRERA', '1', 189, 1, '2021-12-31', 2, 3, 1, 15, 2, 'FALTAN DATOS PARA ACTUALIZAR', NULL, 2, 1, '2021-02-25 16:02:33', '2021-02-25 16:02:33'),
	(44, 'ANGEL RAFAEL', 'TOLEDO ZARAMERRA', '24.933.397', '---', 'atoledoz@mmmvenezuela.com', '---', '---', '4 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, '---', '1', 189, 1, '2021-12-31', 1, 2, 1, 10, 2, 'FALTAN DATOS PARA ACTUALIZAR', '1614284068angeltoledo.jpg', 2, 1, '2021-02-25 16:14:28', '2021-02-25 16:14:28'),
	(45, 'GENESIS', 'GARCIA DE TOLEDO', '23.617.344', '---', '---', '---', '---', '3 AÑOS', 'No', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, '---', '1', 189, 1, '2021-12-31', 2, 2, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 16:18:20', '2021-02-25 16:18:20'),
	(47, 'STIVEN', 'PAEZ', '25.386.302', '---', 'spaez@mmmvenezuela.com', '---', '---', '2 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, '---', '1', 189, 1, '2021-12-31', 1, 2, 1, 10, 2, 'FALTAN DATOS POR ACTUALIZAR', NULL, 2, 1, '2021-02-25 16:21:11', '2021-02-25 16:21:11'),
	(48, 'CLAUDIA MILENA', 'MACHADO DE PAEZ', '22.014.443', '---', 'mmachado@mmmvenezuela.com', '---', '---', '4 AÑOS', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 0, 1, '---', '1', 189, 1, '2021-12-31', 2, 3, 1, 10, 2, 'FALTAN DATOS PARA ACTUALIZAR', NULL, 2, 1, '2021-02-25 16:30:54', '2021-02-25 16:30:54');
/*!40000 ALTER TABLE `pastor` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.permissions: ~29 rows (aproximadamente)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'VerUsuario', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(2, 'RegistrarUsuario', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(3, 'EditarUsuario', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(4, 'EliminarUsuario', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(5, 'VerNotificaciones', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(6, 'VerPermisos', 'web', '2021-02-25 11:51:02', '2021-02-25 11:51:02'),
	(7, 'CrearPermisos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(8, 'EditarPermisos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(9, 'EliminarPermisos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(10, 'VerRol', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(11, 'CrearRol', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(12, 'EditarRol', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(13, 'EliminarRol', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(14, 'VerIglesia', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(15, 'CrearIglesia', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(16, 'EditarIglesia', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(17, 'EliminarIglesia', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(18, 'VerPastores', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(19, 'CrearPastores', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(20, 'EditarPastores', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(21, 'EliminarPastores', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(22, 'VerActividades', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(23, 'CrearActividades', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(24, 'EditarActividades', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(25, 'EliminarActividades', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(26, 'VerDocumentos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(27, 'CrearDocumentos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(28, 'EditarDocumentos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(29, 'EliminarDocumentos', 'web', '2021-02-25 11:51:03', '2021-02-25 11:51:03');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.roles: ~2 rows (aproximadamente)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `status_id`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'web', '1', '2021-02-25 11:51:03', '2021-02-25 11:51:03'),
	(2, 'Usuario', 'web', '1', '2021-02-25 11:51:03', '2021-02-25 11:51:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.role_has_permissions: ~43 rows (aproximadamente)
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
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2),
	(18, 2),
	(19, 2),
	(20, 2),
	(21, 2),
	(22, 2),
	(23, 2),
	(26, 2),
	(27, 2),
	(28, 2),
	(29, 2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.tipo_local
CREATE TABLE IF NOT EXISTS `tipo_local` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_nombre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.tipo_local: ~2 rows (aproximadamente)
DELETE FROM `tipo_local`;
/*!40000 ALTER TABLE `tipo_local` DISABLE KEYS */;
INSERT INTO `tipo_local` (`id`, `nb_nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Alquilado', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(2, 'Propio', '2021-02-25 11:51:06', '2021-02-25 11:51:06');
/*!40000 ALTER TABLE `tipo_local` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.tipo_sangre
CREATE TABLE IF NOT EXISTS `tipo_sangre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nb_tipo_sangre` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.tipo_sangre: ~9 rows (aproximadamente)
DELETE FROM `tipo_sangre`;
/*!40000 ALTER TABLE `tipo_sangre` DISABLE KEYS */;
INSERT INTO `tipo_sangre` (`id`, `nb_tipo_sangre`, `created_at`, `updated_at`) VALUES
	(1, 'Sin recordar', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(2, 'A Positiva', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(3, 'A Negativo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(4, 'B Positivo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(5, 'B Negativo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(6, 'O Positivo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(7, 'O Negativo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(8, 'AB Positivo', '2021-02-25 11:51:06', '2021-02-25 11:51:06'),
	(9, 'AB Negativo', '2021-02-25 11:51:06', '2021-02-25 11:51:06');
/*!40000 ALTER TABLE `tipo_sangre` ENABLE KEYS */;

-- Volcando estructura para tabla id16221233_pastores.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nu_zona` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla id16221233_pastores.users: ~3 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `last_name`, `email`, `password`, `nu_zona`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Theizer', 'tgonzalez', 'Gonzalez', 'tgonzalez@gmail.com', '$2y$10$NssCq1Vg584UwsRkfxHS..G6zMvPMdPZBpx2PUc7lYH6HviviBfTm', '', 1, 'MzbfLaj05p0gBbarAo9c8dX299Zc807ZA4MUKKRZrbef6p3nseyENBao2a21', NULL, '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(2, 'Michael', 'mpaez', 'Páez', 'mpaez@mmmvenezuela.com', '$2y$10$lJR482wbfqVGztSe39CCee0DB6n.zkZazLKOzgC.uOZxCgGoseMDW', '', 1, 'KGXW42r6XUHlEFiQvkFpg3UUR4pAglMetLq1GF2BaEZQE3bRq7WVM8DlWRTB', NULL, '2021-02-25 11:51:04', '2021-02-25 11:51:04'),
	(3, 'Ricardo', 'rmanrique', 'Manrique', 'mmmrmanrique@gmail.com', '$2y$10$/V.iiTfvsLQ.R.JfwhRVYelTGxtWQ.jsosZa46v9pIKEQuRllY/HC', '1', 1, NULL, NULL, '2021-02-25 17:14:19', '2021-02-25 17:14:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
