-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mis_moua
CREATE DATABASE IF NOT EXISTS `mis_moua` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mis_moua`;

-- Dumping structure for table mis_moua.cit
CREATE TABLE IF NOT EXISTS `cit` (
  `cit_id` int(10) NOT NULL AUTO_INCREMENT,
  `cit_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.cit: ~0 rows (approximately)
/*!40000 ALTER TABLE `cit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cit` ENABLE KEYS */;

-- Dumping structure for table mis_moua.m_contact
CREATE TABLE IF NOT EXISTS `m_contact` (
  `m_con_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_con_name` varchar(100) NOT NULL,
  `m_pla_id` int(4) DEFAULT NULL,
  `m_con_phone` varchar(20) NOT NULL,
  `m_con_email` varchar(100) NOT NULL,
  `m_con_role` varchar(50) NOT NULL,
  PRIMARY KEY (`m_con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.m_contact: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_contact` ENABLE KEYS */;

-- Dumping structure for table mis_moua.m_moua
CREATE TABLE IF NOT EXISTS `m_moua` (
  `m_moua_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_moua_type` char(1) NOT NULL,
  `m_pla_id` int(4) DEFAULT NULL,
  `m_par_id` int(10) DEFAULT NULL,
  `m_con_id` int(10) DEFAULT NULL,
  `m_mut_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`m_moua_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.m_moua: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_moua` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_moua` ENABLE KEYS */;

-- Dumping structure for table mis_moua.m_mutual
CREATE TABLE IF NOT EXISTS `m_mutual` (
  `m_mut_id` int(2) NOT NULL AUTO_INCREMENT,
  `m_mut_name` varchar(20) NOT NULL,
  PRIMARY KEY (`m_mut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.m_mutual: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_mutual` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_mutual` ENABLE KEYS */;

-- Dumping structure for table mis_moua.m_partner
CREATE TABLE IF NOT EXISTS `m_partner` (
  `m_par_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_par_name` varchar(100) NOT NULL,
  `m_par_detail` varchar(50) NOT NULL,
  PRIMARY KEY (`m_par_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.m_partner: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_partner` ENABLE KEYS */;

-- Dumping structure for table mis_moua.m_place
CREATE TABLE IF NOT EXISTS `m_place` (
  `m_pla_id` int(4) NOT NULL AUTO_INCREMENT,
  `m_pla_name` varchar(100) NOT NULL,
  `sta_id` int(6) DEFAULT NULL,
  `cit_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`m_pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.m_place: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_place` ENABLE KEYS */;

-- Dumping structure for table mis_moua.sta
CREATE TABLE IF NOT EXISTS `sta` (
  `sta_id` int(10) NOT NULL AUTO_INCREMENT,
  `sta_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mis_moua.sta: ~0 rows (approximately)
/*!40000 ALTER TABLE `sta` DISABLE KEYS */;
/*!40000 ALTER TABLE `sta` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
