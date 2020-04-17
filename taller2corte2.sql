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


-- Volcando estructura de base de datos para taller2corte2
CREATE DATABASE IF NOT EXISTS `taller2corte2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `taller2corte2`;

-- Volcando estructura para tabla taller2corte2.carros
CREATE TABLE IF NOT EXISTS `carros` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller2corte2.carros: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
REPLACE INTO `carros` (`id`, `nombre`, `marca`, `color`, `placa`, `created_at`, `updated_at`) VALUES
	(1, 'chucho', 'toyota', 'negro', 'ktg 534', '2020-04-17 09:43:52', '2020-04-17 09:43:53'),
	(2, 'pedro', 'bmw', 'azul', 'jhr 738', '2020-04-17 09:45:49', '2020-04-17 09:45:50'),
	(3, 'luis', 'ford', 'gris', 'kfg 625', '2020-04-17 09:46:34', '2020-04-17 09:46:35'),
	(4, 'lucas', 'renaul', 'rojo', 'lko 402', '2020-04-17 09:47:16', '2020-04-17 09:47:17');
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;

-- Volcando estructura para tabla taller2corte2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller2corte2.migrations: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2020_04_17_130112_create_carros_table', 1),
	(2, '2020_04_17_130148_create_motos_table', 1),
	(3, '2020_04_17_130231_create_tecnomecanicas_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla taller2corte2.motos
CREATE TABLE IF NOT EXISTS `motos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller2corte2.motos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `motos` DISABLE KEYS */;
REPLACE INTO `motos` (`id`, `nombre`, `marca`, `color`, `placa`, `created_at`, `updated_at`) VALUES
	(1, 'jose', 'auteco', 'azul', 'ty 32', '2020-04-17 09:48:57', '2020-04-17 09:48:58'),
	(2, 'juan', 'honda', 'negro', 'gt 65', '2020-04-17 09:49:40', '2020-04-17 09:49:41'),
	(3, 'checho', 'boxer', 'gris', 'rx 43', '2020-04-17 09:50:34', '2020-04-17 09:50:36'),
	(4, 'joxx', 'zusiki', 'rojo', 'zk 89', '2020-04-17 09:51:44', '2020-04-17 09:51:45');
/*!40000 ALTER TABLE `motos` ENABLE KEYS */;

-- Volcando estructura para tabla taller2corte2.tecnomecanicas
CREATE TABLE IF NOT EXISTS `tecnomecanicas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tecnomecanicatable_id` int(11) NOT NULL,
  `tecnomecanicatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller2corte2.tecnomecanicas: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `tecnomecanicas` DISABLE KEYS */;
REPLACE INTO `tecnomecanicas` (`id`, `nombre`, `descripcion`, `tecnomecanicatable_id`, `tecnomecanicatable_type`, `created_at`, `updated_at`) VALUES
	(1, 'jorge', 'hyundai', 2, 'App\\Models\\Carro', '2020-04-17 16:14:01', '2020-04-17 16:14:01'),
	(2, 'nestor', 'boxer', 4, 'App\\Models\\Moto', '2020-04-17 16:20:33', '2020-04-17 16:20:33'),
	(3, 'edwin', 'diecover', 4, 'App\\Models\\Moto', '2020-04-17 16:20:33', '2020-04-17 16:20:33'),
	(4, 'jerey', 'bwis', 4, 'App\\Models\\Moto', '2020-04-17 16:20:33', '2020-04-17 16:20:33'),
	(5, 'nestor', 'boxer', 4, 'App\\Models\\Moto', '2020-04-17 16:22:47', '2020-04-17 16:22:47'),
	(6, 'edwin', 'diecover', 4, 'App\\Models\\Moto', '2020-04-17 16:22:47', '2020-04-17 16:22:47'),
	(7, 'jerey', 'bwis', 4, 'App\\Models\\Moto', '2020-04-17 16:22:47', '2020-04-17 16:22:47'),
	(8, 'nestor', 'boxer', 4, 'App\\Models\\Moto', '2020-04-17 16:23:43', '2020-04-17 16:23:43'),
	(9, 'edwin', 'diecover', 4, 'App\\Models\\Moto', '2020-04-17 16:23:43', '2020-04-17 16:23:43'),
	(10, 'jerey', 'bwis', 4, 'App\\Models\\Moto', '2020-04-17 16:23:44', '2020-04-17 16:23:44'),
	(11, 'nestor', 'boxer', 4, 'App\\Models\\Moto', '2020-04-17 16:24:48', '2020-04-17 16:24:48'),
	(12, 'edwin', 'diecover', 4, 'App\\Models\\Moto', '2020-04-17 16:24:48', '2020-04-17 16:24:48'),
	(13, 'jerey', 'bwis', 4, 'App\\Models\\Moto', '2020-04-17 16:24:48', '2020-04-17 16:24:48');
/*!40000 ALTER TABLE `tecnomecanicas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
