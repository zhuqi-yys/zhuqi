# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.12)
# Database: guidance
# Generation Time: 2019-07-06 08:58:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table app_base_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_base_info`;

CREATE TABLE `app_base_info` (
  `app_key` varchar(255) NOT NULL,
  `sdkversion` double NOT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `c_time` date DEFAULT NULL,
  `m_time` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `app_base_info` WRITE;
/*!40000 ALTER TABLE `app_base_info` DISABLE KEYS */;

INSERT INTO `app_base_info` (`app_key`, `sdkversion`, `app_secret`, `c_time`, `m_time`, `name`, `type`)
VALUES
	('8247de86d8864ebdb2553f7f779c5fd5',26,'fdcab986d1e44a9a864ca951f22b9026','2018-09-25','2018-09-25','MOOCTEST','other'),
	('a622bc855ced462cb3e22ca8d3dc4329',1,'8e72d0f9a33f480fa456dce0b81e0ea4','2018-08-27','2018-08-27','慕测2','摄影'),
	('a6291647a6de441892c7ec1b060efca9',27,'c590025f4f934dddb17169161c5b5617','2018-08-30','2018-08-30','LeafPic2.0','life'),
	('d1fa137bfab94687922a8571176531d8',1,'1c15ef48b83e4668a2a87b1d1dd41f8f','2018-08-24','2018-08-24','慕测','娱乐'),
	('e9fa239446984055bc72426b49c4ea33',27,'f77a6ba25e2645c7893796f0787e35ea','2018-08-29','2018-08-29','LeafPic','生活'),
	('efa4fceefc6a4927952290fff2f08a6b',23,'b9a5df77baa04265afc3be6e587a44bb','2018-09-11','2018-09-11','Mooctest','娱乐');

/*!40000 ALTER TABLE `app_base_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table app_bug_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_bug_info`;

CREATE TABLE `app_bug_info` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `bug_describe` varchar(255) DEFAULT NULL,
  `c_time` datetime DEFAULT NULL,
  `current` varchar(255) DEFAULT NULL,
  `m_time` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `screenshot_adr` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`app_key`,`bug_id`),
  KEY `FK2ligj63trutj00wnf5mqlllv5` (`user_id`),
  CONSTRAINT `FK2ligj63trutj00wnf5mqlllv5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `app_bug_info` WRITE;
/*!40000 ALTER TABLE `app_bug_info` DISABLE KEYS */;

INSERT INTO `app_bug_info` (`app_key`, `bug_id`, `app_version`, `bug_describe`, `c_time`, `current`, `m_time`, `priority`, `screenshot_adr`, `status`, `type`, `user_id`)
VALUES
	('a6291647a6de441892c7ec1b060efca9','201837948558366111','v0.7-alpha-2','\n1、When users enter this Activity, the app crashes\n2、When users click a picture at this Activity , the app crashes','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-12-18 04:52:21','Minor','head_image','New','Layout',2),
	('a6291647a6de441892c7ec1b060efca9','201837948789110112','v0.7-alpha-2','bug 2','2018-09-26 07:59:49','org.horaapps.leafpic.activities.MainActivity','2018-09-26 07:59:49','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201837948848473113','v0.7-alpha-2','bug 444','2018-09-26 08:00:48','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:00:48','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201837950158927114','v0.7-alpha-2','bug 1','2018-09-26 08:22:38','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:22:38','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201837950228774115','v0.7-alpha-2','crash','2018-09-26 08:23:48','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:23:48','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201837950246731116','v0.7-alpha-2','crash','2018-09-26 08:24:06','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:24:06','Minor','no exist','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201838018347167117','v0.7-alpha-2','this layout have some error','2018-09-27 03:19:07','org.horaapps.leafpic.activities.MainActivity','2018-09-27 03:19:07','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201838031971957118','v0.7-alpha-2','when i enter this activity,it causes a crash','2018-09-27 07:06:11','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:06:11','Minor','head_image','New','Layout',2),
	('a6291647a6de441892c7ec1b060efca9','201838032489239119','v0.7-alpha-2','when i enter this activity,it causes a crash','2018-09-27 07:14:49','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:14:49','Crash','head_image','New','Layout',2),
	('a6291647a6de441892c7ec1b060efca9','201838033287945122','v0.7-alpha-2','when I enter this activity,it causes a crash','2018-09-27 07:28:07','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:28:07','Crash','head_image','New','Layout',2),
	('a6291647a6de441892c7ec1b060efca9','201838033384278123','v0.7-alpha-2','when I enter this activity,it causes a crash','2018-09-27 07:29:44','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:29:44','Crash','head_image','New','Layout',2),
	('a6291647a6de441892c7ec1b060efca9','201838033431735124','v0.7-alpha-2','when I click a picture,it crash a crash','2018-09-27 07:30:31','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:30:31','Crash','no exist','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201838033753521125','v0.7-alpha-2','When I enter this activity,it causes a crash','2018-09-27 07:35:53','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:35:53','Minor','head_image','New','Function',2),
	('a6291647a6de441892c7ec1b060efca9','201838033789369126','v0.7-alpha-2','When I click a picture,it causes a crash','2018-09-27 07:36:29','org.horaapps.leafpic.activities.MainActivity','2018-09-27 07:36:29','Crash','no exist','New','Function',2);

/*!40000 ALTER TABLE `app_bug_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table app_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_member`;

CREATE TABLE `app_member` (
  `app_key` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_key`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `app_member` WRITE;
/*!40000 ALTER TABLE `app_member` DISABLE KEYS */;

INSERT INTO `app_member` (`app_key`, `user_id`, `type`)
VALUES
	('8247de86d8864ebdb2553f7f779c5fd5',2,'创建者'),
	('a622bc855ced462cb3e22ca8d3dc4329',1,'创建者'),
	('a6291647a6de441892c7ec1b060efca9',1,'普通成员'),
	('a6291647a6de441892c7ec1b060efca9',2,'创建者'),
	('d1fa137bfab94687922a8571176531d8',1,'创建者'),
	('e9fa239446984055bc72426b49c4ea33',2,'创建者'),
	('efa4fceefc6a4927952290fff2f08a6b',2,'创建者');

/*!40000 ALTER TABLE `app_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table app_version_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_version_info`;

CREATE TABLE `app_version_info` (
  `app_key` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  PRIMARY KEY (`app_key`,`app_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `app_version_info` WRITE;
/*!40000 ALTER TABLE `app_version_info` DISABLE KEYS */;

INSERT INTO `app_version_info` (`app_key`, `app_version`)
VALUES
	('a622bc855ced462cb3e22ca8d3dc4329','1.0'),
	('a6291647a6de441892c7ec1b060efca9','v0.7-alpha-2'),
	('d1fa137bfab94687922a8571176531d8','1.0'),
	('e9fa239446984055bc72426b49c4ea33','1.0');

/*!40000 ALTER TABLE `app_version_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bug_console_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bug_console_log`;

CREATE TABLE `bug_console_log` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `log_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bug_console_log` WRITE;
/*!40000 ALTER TABLE `bug_console_log` DISABLE KEYS */;

INSERT INTO `bug_console_log` (`app_key`, `bug_id`, `log_string`)
VALUES
	('a6291647a6de441892c7ec1b060efca9','201835615179960105','  '),
	('a6291647a6de441892c7ec1b060efca9','201837226627272102','  '),
	('a6291647a6de441892c7ec1b060efca9','201837226868322103','  '),
	('a6291647a6de441892c7ec1b060efca9','201837234844334105','  '),
	('a6291647a6de441892c7ec1b060efca9','201837235301054106','  '),
	('a6291647a6de441892c7ec1b060efca9','201837235366694107','  '),
	('a6291647a6de441892c7ec1b060efca9','201837235426090108','  '),
	('a6291647a6de441892c7ec1b060efca9','201837320616765110','  '),
	('a6291647a6de441892c7ec1b060efca9','201837356993727112','  '),
	('a6291647a6de441892c7ec1b060efca9','201837357717473114','  '),
	('a6291647a6de441892c7ec1b060efca9','201837411859789101','  '),
	('a6291647a6de441892c7ec1b060efca9','201837839880580102','  '),
	('a6291647a6de441892c7ec1b060efca9','201837839899664103','  '),
	('a6291647a6de441892c7ec1b060efca9','201837926513522104','  '),
	('a6291647a6de441892c7ec1b060efca9','201837926662976105','  '),
	('a6291647a6de441892c7ec1b060efca9','201837926748061106','  '),
	('a6291647a6de441892c7ec1b060efca9','201837926771401107','  '),
	('a6291647a6de441892c7ec1b060efca9','201837927025110108','  '),
	('a6291647a6de441892c7ec1b060efca9','201837927130948109','  '),
	('a6291647a6de441892c7ec1b060efca9','201837927150900110','  '),
	('a6291647a6de441892c7ec1b060efca9','201837948558366111','  '),
	('a6291647a6de441892c7ec1b060efca9','201837948789110112','  '),
	('a6291647a6de441892c7ec1b060efca9','201837948848473113','  '),
	('a6291647a6de441892c7ec1b060efca9','201837950158927114','  '),
	('a6291647a6de441892c7ec1b060efca9','201837950228774115','  '),
	('a6291647a6de441892c7ec1b060efca9','201837950246731116','  '),
	('a6291647a6de441892c7ec1b060efca9','201838018347167117','  '),
	('a6291647a6de441892c7ec1b060efca9','201838031971957118','  '),
	('a6291647a6de441892c7ec1b060efca9','201838032489239119','  '),
	('a6291647a6de441892c7ec1b060efca9','201838033287945122','  '),
	('a6291647a6de441892c7ec1b060efca9','201838033384278123','  '),
	('a6291647a6de441892c7ec1b060efca9','201838033431735124','  '),
	('a6291647a6de441892c7ec1b060efca9','201838033753521125','  '),
	('a6291647a6de441892c7ec1b060efca9','201838033789369126','  '),
	('d1fa137bfab94687922a8571176531d8','201835551112719101','  '),
	('e9fa239446984055bc72426b49c4ea33','201835551373544102','  '),
	('e9fa239446984055bc72426b49c4ea33','201835551530603104','  ');

/*!40000 ALTER TABLE `bug_console_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bug_device_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bug_device_info`;

CREATE TABLE `bug_device_info` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `avail_memory` varchar(255) DEFAULT NULL,
  `device_brand` varchar(255) DEFAULT NULL,
  `network_type` varchar(255) DEFAULT NULL,
  `providers_name` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `system_language` varchar(255) DEFAULT NULL,
  `system_model` varchar(255) DEFAULT NULL,
  `system_version` varchar(255) DEFAULT NULL,
  `total_memory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bug_device_info` WRITE;
/*!40000 ALTER TABLE `bug_device_info` DISABLE KEYS */;

INSERT INTO `bug_device_info` (`app_key`, `bug_id`, `avail_memory`, `device_brand`, `network_type`, `providers_name`, `resolution`, `system_language`, `system_model`, `system_version`, `total_memory`)
VALUES
	('a6291647a6de441892c7ec1b060efca9','201835615179960105','2.14 GB','LeEco','WIFI','中国移动','1440*2560','zh','Le X822','6.0.1','-334729216.00 B'),
	('a6291647a6de441892c7ec1b060efca9','201837226627272102','1.93 GB','HUAWEI','WIFI','中国移动','1440*2434','zh','EDI-AL10','7.0','-372 MB'),
	('a6291647a6de441892c7ec1b060efca9','201837226868322103','2.09 GB','HUAWEI','WIFI','中国移动','1440*2434','zh','EDI-AL10','7.0','-372 MB'),
	('a6291647a6de441892c7ec1b060efca9','201837234844334105','2.18 GB','Xiaomi','4G','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837235301054106','2.00 GB','Xiaomi','4G','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837235366694107','3.01 GB','Xiaomi','4G','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837235426090108','2.97 GB','Xiaomi','4G','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837320616765110','2.88 GB','Xiaomi','WIFI','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837356993727112','1.26 GB','Xiaomi','WIFI','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837357717473114','1.84 GB','Xiaomi','WIFI','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837411859789101','2.76 GB','Xiaomi','WIFI','中国移动','1080*2030','zh','MIX 2','7.1.1','1.59 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837839880580102','551 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837839899664103','547 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837926513522104','610 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837926662976105','590 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837926748061106','607 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837926771401107','588 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837927025110108','588 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837927130948109','592 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837927150900110','578 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837948558366111','754 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837948789110112','741 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837948848473113','725 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837950158927114','563 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837950228774115','567 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201837950246731116','562 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838018347167117','604 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838031971957118','554 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838032489239119','530 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838033287945122','526 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838033384278123','510 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838033431735124','496 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838033753521125','534 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('a6291647a6de441892c7ec1b060efca9','201838033789369126','522 MB','HONOR','WIFI','中国移动','1080*1776','zh','ATH-CL00','5.1.1','1.77 GB'),
	('d1fa137bfab94687922a8571176531d8','201835551112719101','2.12 GB','HUAWEI','WIFI','中国移动','1440*2434','zh','EDI-AL10','7.0','-372 MB'),
	('e9fa239446984055bc72426b49c4ea33','201835551373544102','2.12 GB','HUAWEI','WIFI','中国移动','1440*2434','zh','EDI-AL10','7.0','-372 MB'),
	('e9fa239446984055bc72426b49c4ea33','201835551530603104','2.15 GB','HUAWEI','WIFI','中国移动','1440*2434','zh','EDI-AL10','7.0','-372 MB');

/*!40000 ALTER TABLE `bug_device_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bug_operate_step
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bug_operate_step`;

CREATE TABLE `bug_operate_step` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `operate_step` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bug_operate_step` WRITE;
/*!40000 ALTER TABLE `bug_operate_step` DISABLE KEYS */;

INSERT INTO `bug_operate_step` (`app_key`, `bug_id`, `operate_step`)
VALUES
	('a6291647a6de441892c7ec1b060efca9','201835615179960105',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837226627272102',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837226868322103',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837234844334105',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837235301054106',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837235366694107',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837235426090108',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837320616765110',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837356993727112',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837357717473114',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837411859789101','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837839880580102','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837839899664103',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837926513522104','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837926662976105','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837926748061106','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837926771401107',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837927025110108','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837927130948109','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837927150900110',' null'),
	('a6291647a6de441892c7ec1b060efca9','201837948558366111','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837948789110112','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837948848473113','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837950158927114','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837950228774115','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201837950246731116',' null'),
	('a6291647a6de441892c7ec1b060efca9','201838018347167117','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838031971957118','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838032489239119','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838033287945122','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838033384278123','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838033431735124',' null'),
	('a6291647a6de441892c7ec1b060efca9','201838033753521125','null null null null'),
	('a6291647a6de441892c7ec1b060efca9','201838033789369126',' null'),
	('d1fa137bfab94687922a8571176531d8','201835551112719101',' null'),
	('e9fa239446984055bc72426b49c4ea33','201835551373544102',' null'),
	('e9fa239446984055bc72426b49c4ea33','201835551530603104',' null');

/*!40000 ALTER TABLE `bug_operate_step` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table edge
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edge`;

CREATE TABLE `edge` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(1000) DEFAULT NULL,
  `type_exception` int(11) DEFAULT NULL,
  `source_node` varchar(255) DEFAULT NULL,
  `target_node` varchar(255) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `event_handlers` varchar(1000) DEFAULT NULL,
  `event_type` varchar(1000) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  `create_time` timestamp NULL DEFAULT NULL,
  `assist_time` bigint(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `edge` WRITE;
/*!40000 ALTER TABLE `edge` DISABLE KEYS */;

INSERT INTO `edge` (`id`, `message`, `type_exception`, `source_node`, `target_node`, `image_url`, `event_handlers`, `event_type`, `app_key`, `data_type`, `number`, `weight`, `create_time`, `assist_time`, `path`)
VALUES
	(97,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:25:54',885,NULL),
	(98,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because handled father components','click','JianDou',1,0,1,'2019-02-15 16:26:02',150,NULL),
	(99,'decrypterCbc Exceptionjava.lang.IllegalArgumentException: Bad arguments',5,'MainActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/99.png','Click widget com.lhr.jiandou:id/toolbar_menu_search, bounds: \'[912,84][1080,228]\'','click','JianDou',2,0,1,'2019-02-15 16:26:04',590,NULL),
	(100,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/spinner, bounds: \'[0,72][372,246]\'','click','JianDou',1,0,1,'2019-02-15 16:26:18',260,NULL),
	(101,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@index,\'0\')], bounds: \'[0,246][228,378]\'','click','JianDou',1,0,1,'2019-02-15 16:26:27',902,NULL),
	(102,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/102.png','Click widget com.lhr.jiandou:id/search_button, bounds: \'[372,87][516,231]\'','click','JianDou',2,0,1,'2019-02-15 16:26:35',207,NULL),
	(103,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/search_go_btn, bounds: \'[873,87][1041,228]\'','click','JianDou',1,0,1,'2019-02-15 16:26:43',783,NULL),
	(104,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@index,\'1\')], bounds: \'[0,378][228,510]\'','click','JianDou',1,0,1,'2019-02-15 16:26:53',446,NULL),
	(105,'java.net.SocketException: Socket is closed',3,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/105.png','Click widget com.lhr.jiandou:id/search_close_btn, bounds: \'[753,87][873,228]\'','click','JianDou',2,0,1,'2019-02-15 16:27:03',153,NULL),
	(106,NULL,NULL,'SearchActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:27:10',169,NULL),
	(107,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,396][348,977]\')]','click','JianDou',1,0,1,'2019-02-15 16:27:13',343,NULL),
	(108,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/108.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:27:27',720,NULL),
	(109,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'1\')], bounds: \'[372,396][708,977]\'','click','JianDou',1,0,1,'2019-02-15 16:27:38',612,NULL),
	(110,NULL,NULL,'MovieDetailsActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/action_collection, bounds: \'[912,84][1080,228]\'','click','JianDou',1,0,1,'2019-02-15 16:27:48',683,NULL),
	(111,NULL,NULL,'MovieDetailsActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/activity_md_summart_more, bounds: \'[15,1804][1065,1861]\'','click','JianDou',1,0,1,'2019-02-15 16:27:55',244,NULL),
	(112,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','WebViewActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/112.png','Click widget com.lhr.jiandou:id/activity_md_fab, bounds: \'[888,828][1032,972]\'\"','click','JianDou',2,0,1,'2019-02-15 16:28:02',958,NULL),
	(113,NULL,NULL,'WebViewActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:28:19',208,NULL),
	(114,'[ReceiverDispatcher-353]query package isInstalled failed, NameNotFoundException!(android/null:-1)',6,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/114.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:28:27',203,NULL),
	(115,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/115.png','Click widget //android.widget.FrameLayout[contains(@index,\'2\')], bounds: \'[732,396][1068,977]\'','click','JianDou',2,0,1,'2019-02-15 16:28:30',250,NULL),
	(116,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:28:39',422,NULL),
	(117,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/117.png','Click widget //android.widget.FrameLayout[contains(@index,\'3\')], bounds: \'[12,1001][348,1582]\'','click','JianDou',2,0,1,'2019-02-15 16:28:42',561,NULL),
	(118,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:28:53',391,NULL),
	(119,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/119.png','Click widget //android.widget.FrameLayout[contains(@index,\'4\')], bounds: \'[372,1001][708,1582]\'','click','JianDou',2,0,1,'2019-02-15 16:28:57',10,NULL),
	(120,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:07',642,NULL),
	(121,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'5\')], bounds: \'[732,1001][1068,1582]\'','click','JianDou',1,0,1,'2019-02-15 16:29:11',108,NULL),
	(122,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:21',768,NULL),
	(123,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'6\')], bounds: \'[12,1606][348,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:24',724,NULL),
	(124,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/124.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:29:33',724,NULL),
	(125,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'7\')], bounds: \'[372,1606][708,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:38',72,NULL),
	(126,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:47',187,NULL),
	(127,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'8\')], bounds: \'[732,1606][1068,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:49',863,NULL),
	(128,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/128.png','Click widget com.lhr.jiandou:id/pager_base_fab, bounds: \'[888,1728][1032,1872]\'','click','JianDou',2,0,1,'2019-02-15 16:30:00',125,NULL),
	(129,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:10',711,NULL),
	(130,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[372,396][708,977]\')]','click','JianDou',1,0,1,'2019-02-15 16:30:17',742,NULL),
	(131,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:26',908,NULL),
	(132,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/132.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[732,1001][1068,1582]\')]','click','JianDou',2,0,1,'2019-02-15 16:30:33',710,NULL),
	(133,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/133.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:30:40',769,NULL),
	(134,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'1\')], bounds: \'[0,684][840,828]\'','click','JianDou',1,0,1,'2019-02-15 16:30:47',284,NULL),
	(135,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:54',352,NULL),
	(136,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/136.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@bounds,\'[0,828][840,972]\')]','click','JianDou',2,0,1,'2019-02-15 16:31:00',887,NULL),
	(137,'java.io.FileNotFoundException: /data/user/0/com.lhr.jiandou/files/Cache_File_movie/Top250 (No such file or directory)',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/137.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:31:08',277,NULL),
	(138,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'3\')], bounds: \'[0,972][840,1116]\'','click','JianDou',1,0,1,'2019-02-15 16:31:15',90,NULL),
	(139,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,891][348,1472]\')]','click','JianDou',1,0,1,'2019-02-15 16:31:23',221,NULL),
	(140,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/140.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:31:33',306,NULL),
	(141,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:31:40',991,NULL),
	(142,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'4\')], bounds: \'[0,1116][840,1260]\'','click','JianDou',1,0,1,'2019-02-15 16:31:48',286,NULL),
	(143,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/143.png','Click widget com.lhr.jiandou:id/item_collection_card, bounds: \'[15,240][1065,645]\'','click','JianDou',2,0,1,'2019-02-15 16:31:59',57,NULL),
	(144,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:32:08',412,NULL),
	(145,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_movie, bounds: \'[0,1752][360,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:11',20,NULL),
	(146,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_book, bounds: \'[360,1752][720,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:17',837,NULL),
	(147,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_actor, bounds: \'[720,1752][1080,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:24',629,NULL),
	(148,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/148.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:32:32',140,NULL),
	(149,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/149.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'7\')], bounds: \'[0,1431][840,1575]\'','click','JianDou',2,0,1,'2019-02-15 16:32:38',613,NULL),
	(150,'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"android.taobao.windvane.jsbridge.WVApiPlugin\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/150.png','Click widget com.lhr.jiandou:id/tv_btn_edit, bounds: \'[864,435][1032,525]\'','click','JianDou',2,0,1,'2019-02-15 16:32:48',421,NULL),
	(151,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/151.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',2,0,1,'2019-02-15 16:32:58',354,NULL),
	(152,'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"com.taobao.orange.OrangeConfigListenerV1\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /data/user/0/com.alibaba.android.rimet/files/dso, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/152.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',2,0,1,'2019-02-15 16:33:07',906,NULL),
	(153,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:17',318,NULL),
	(154,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:26',586,NULL),
	(156,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[306,576][516,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:47',280,NULL),
	(157,'java.net.SocketException: Socket is closed',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/157.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',2,0,1,'2019-02-15 16:33:58',940,NULL),
	(158,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',1,0,1,'2019-02-15 16:34:06',653,NULL),
	(159,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',1,0,1,'2019-02-15 16:34:16',64,NULL),
	(160,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',1,0,1,'2019-02-15 16:34:23',864,NULL),
	(161,'java.net.SocketException: Socket is closed',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/161.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',2,0,1,'2019-02-15 16:34:31',639,NULL),
	(162,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/162.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',2,0,1,'2019-02-15 16:34:39',140,NULL),
	(163,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',1,0,1,'2019-02-15 16:34:47',383,NULL),
	(164,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'???\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:34:56',37,NULL),
	(165,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/165.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',2,0,1,'2019-02-15 16:35:04',903,NULL),
	(166,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:35:14',167,NULL),
	(167,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:35:22',979,NULL),
	(168,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/168.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',2,0,1,'2019-02-15 16:35:30',832,NULL),
	(169,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',1,0,1,'2019-02-15 16:35:38',753,NULL),
	(170,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',1,0,1,'2019-02-15 16:35:47',557,NULL),
	(172,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:06',139,NULL),
	(173,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:15',327,NULL),
	(174,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:24',635,NULL),
	(175,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/175.png','Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',2,0,1,'2019-02-15 16:36:33',959,NULL),
	(176,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/176.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',2,0,1,'2019-02-15 16:36:43',142,NULL),
	(177,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:36:52',377,NULL),
	(178,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/178.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',2,0,1,'2019-02-15 16:37:01',734,NULL),
	(179,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:37:11',70,NULL),
	(180,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:37:20',618,NULL),
	(181,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/181.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'8\')], bounds: \'[0,1575][840,1719]\'','click','JianDou',2,0,1,'2019-02-15 16:37:27',90,NULL),
	(182,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@bounds,\'[48,327][1032,519]\')]','click','JianDou',1,0,1,'2019-02-15 16:37:36',524,NULL),
	(183,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.CheckedTextView[contains(@text,\'??\')], bounds: \'[48,835][1032,979]\'','click','JianDou',1,0,1,'2019-02-15 16:37:48',711,NULL),
	(184,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:38:00',113,NULL),
	(185,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/185.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:38:03',221,NULL),
	(186,'DirectorySearchManager NameNotFoundException huawei.w3',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:38:06',682,NULL),
	(187,'[Connect] Failed to start set concurrent limit: ACException reason: (113) Exception: Refresh Interval cannot be less then 3600',1,'MainActivity','Launcher','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/187.png','Click Home button because has tried more than 3 times','click','JianDou',2,0,1,'2019-02-15 16:38:10',46,NULL),
	(188,NULL,NULL,'MainActivity','Launcher','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png','implicit_back_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1,NULL),
	(189,NULL,NULL,'BookDetailsActivity','BookDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/189.png','implicit_power_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1,NULL),
	(190,NULL,NULL,'ActorDetailsActivity','ActorDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/190.png','click','[<com.lhr.jiandou.activity.ActorDetailsActivity$3: void onClick(android.view.View)>]','JianDou',0,0,1,'2018-02-15 10:25:54',-1,NULL),
	(191,NULL,NULL,'Launcher','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/191.png','implicit_launch_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1,NULL),
	(192,NULL,NULL,'AlertDialog','AlertDialog','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','click','[<de.psdev.licensesdialog.LicensesDialog$3: void onShow(android.content.DialogInterface)>]','JianDou',0,0,1,'2018-02-15 10:25:54',-1,NULL),
	(193,NULL,NULL,'MainActivity','BookDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(194,NULL,NULL,'MainActivity','ActorDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(195,NULL,NULL,'MovieDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(196,NULL,NULL,'AlertDialog','MovieDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(198,NULL,NULL,'ActorDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(199,NULL,NULL,'AlertDialog','ActorDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(200,NULL,NULL,'BookDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL),
	(201,NULL,NULL,'AlertDialog','BookDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL,NULL);

/*!40000 ALTER TABLE `edge` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table edge_copy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edge_copy`;

CREATE TABLE `edge_copy` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(1000) DEFAULT NULL,
  `type_exception` int(11) DEFAULT NULL,
  `source_node` varchar(255) DEFAULT NULL,
  `target_node` varchar(255) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `event_handlers` varchar(1000) DEFAULT NULL,
  `event_type` varchar(1000) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  `create_time` timestamp NULL DEFAULT NULL,
  `assist_time` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `edge_copy` WRITE;
/*!40000 ALTER TABLE `edge_copy` DISABLE KEYS */;

INSERT INTO `edge_copy` (`id`, `message`, `type_exception`, `source_node`, `target_node`, `image_url`, `event_handlers`, `event_type`, `app_key`, `data_type`, `number`, `weight`, `create_time`, `assist_time`)
VALUES
	(97,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:25:54',885),
	(98,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because handled father components','click','JianDou',1,0,1,'2019-02-15 16:26:02',150),
	(99,'decrypterCbc Exceptionjava.lang.IllegalArgumentException: Bad arguments',5,'MainActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/99.png','Click widget com.lhr.jiandou:id/toolbar_menu_search, bounds: \'[912,84][1080,228]\'','click','JianDou',2,0,1,'2019-02-15 16:26:04',590),
	(100,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/spinner, bounds: \'[0,72][372,246]\'','click','JianDou',1,0,1,'2019-02-15 16:26:18',260),
	(101,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@index,\'0\')], bounds: \'[0,246][228,378]\'','click','JianDou',1,0,1,'2019-02-15 16:26:27',902),
	(102,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/102.png','Click widget com.lhr.jiandou:id/search_button, bounds: \'[372,87][516,231]\'','click','JianDou',2,0,1,'2019-02-15 16:26:35',207),
	(103,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/search_go_btn, bounds: \'[873,87][1041,228]\'','click','JianDou',1,0,1,'2019-02-15 16:26:43',783),
	(104,NULL,NULL,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@index,\'1\')], bounds: \'[0,378][228,510]\'','click','JianDou',1,0,1,'2019-02-15 16:26:53',446),
	(105,'java.net.SocketException: Socket is closed',3,'SearchActivity','SearchActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/105.png','Click widget com.lhr.jiandou:id/search_close_btn, bounds: \'[753,87][873,228]\'','click','JianDou',2,0,1,'2019-02-15 16:27:03',153),
	(106,NULL,NULL,'SearchActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:27:10',169),
	(107,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,396][348,977]\')]','click','JianDou',1,0,1,'2019-02-15 16:27:13',343),
	(108,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/108.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:27:27',720),
	(109,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'1\')], bounds: \'[372,396][708,977]\'','click','JianDou',1,0,1,'2019-02-15 16:27:38',612),
	(110,NULL,NULL,'MovieDetailsActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/action_collection, bounds: \'[912,84][1080,228]\'','click','JianDou',1,0,1,'2019-02-15 16:27:48',683),
	(111,NULL,NULL,'MovieDetailsActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/activity_md_summart_more, bounds: \'[15,1804][1065,1861]\'','click','JianDou',1,0,1,'2019-02-15 16:27:55',244),
	(112,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','WebViewActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/112.png','Click widget com.lhr.jiandou:id/activity_md_fab, bounds: \'[888,828][1032,972]\'\"','click','JianDou',2,0,1,'2019-02-15 16:28:02',958),
	(113,NULL,NULL,'WebViewActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:28:19',208),
	(114,'[ReceiverDispatcher-353]query package isInstalled failed, NameNotFoundException!(android/null:-1)',6,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/114.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:28:27',203),
	(115,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/115.png','Click widget //android.widget.FrameLayout[contains(@index,\'2\')], bounds: \'[732,396][1068,977]\'','click','JianDou',2,0,1,'2019-02-15 16:28:30',250),
	(116,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:28:39',422),
	(117,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/117.png','Click widget //android.widget.FrameLayout[contains(@index,\'3\')], bounds: \'[12,1001][348,1582]\'','click','JianDou',2,0,1,'2019-02-15 16:28:42',561),
	(118,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:28:53',391),
	(119,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/119.png','Click widget //android.widget.FrameLayout[contains(@index,\'4\')], bounds: \'[372,1001][708,1582]\'','click','JianDou',2,0,1,'2019-02-15 16:28:57',10),
	(120,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:07',642),
	(121,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'5\')], bounds: \'[732,1001][1068,1582]\'','click','JianDou',1,0,1,'2019-02-15 16:29:11',108),
	(122,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:21',768),
	(123,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'6\')], bounds: \'[12,1606][348,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:24',724),
	(124,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/124.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:29:33',724),
	(125,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'7\')], bounds: \'[372,1606][708,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:38',72),
	(126,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:29:47',187),
	(127,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@index,\'8\')], bounds: \'[732,1606][1068,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:29:49',863),
	(128,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/128.png','Click widget com.lhr.jiandou:id/pager_base_fab, bounds: \'[888,1728][1032,1872]\'','click','JianDou',2,0,1,'2019-02-15 16:30:00',125),
	(129,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:10',711),
	(130,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[372,396][708,977]\')]','click','JianDou',1,0,1,'2019-02-15 16:30:17',742),
	(131,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:26',908),
	(132,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/132.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[732,1001][1068,1582]\')]','click','JianDou',2,0,1,'2019-02-15 16:30:33',710),
	(133,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/133.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:30:40',769),
	(134,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'1\')], bounds: \'[0,684][840,828]\'','click','JianDou',1,0,1,'2019-02-15 16:30:47',284),
	(135,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:30:54',352),
	(136,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/136.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@bounds,\'[0,828][840,972]\')]','click','JianDou',2,0,1,'2019-02-15 16:31:00',887),
	(137,'java.io.FileNotFoundException: /data/user/0/com.lhr.jiandou/files/Cache_File_movie/Top250 (No such file or directory)',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/137.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:31:08',277),
	(138,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'3\')], bounds: \'[0,972][840,1116]\'','click','JianDou',1,0,1,'2019-02-15 16:31:15',90),
	(139,NULL,NULL,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,891][348,1472]\')]','click','JianDou',1,0,1,'2019-02-15 16:31:23',221),
	(140,'java.net.SocketException: Socket is closed',3,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/140.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:31:33',306),
	(141,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:31:40',991),
	(142,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'4\')], bounds: \'[0,1116][840,1260]\'','click','JianDou',1,0,1,'2019-02-15 16:31:48',286),
	(143,'java.net.SocketException: Socket is closed',3,'MainActivity','MovieDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/143.png','Click widget com.lhr.jiandou:id/item_collection_card, bounds: \'[15,240][1065,645]\'','click','JianDou',2,0,1,'2019-02-15 16:31:59',57),
	(144,NULL,NULL,'MovieDetailsActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:32:08',412),
	(145,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_movie, bounds: \'[0,1752][360,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:11',20),
	(146,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_book, bounds: \'[360,1752][720,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:17',837),
	(147,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget com.lhr.jiandou:id/tab_actor, bounds: \'[720,1752][1080,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:32:24',629),
	(148,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/148.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',2,0,1,'2019-02-15 16:32:32',140),
	(149,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/149.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'7\')], bounds: \'[0,1431][840,1575]\'','click','JianDou',2,0,1,'2019-02-15 16:32:38',613),
	(150,'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"android.taobao.windvane.jsbridge.WVApiPlugin\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/150.png','Click widget com.lhr.jiandou:id/tv_btn_edit, bounds: \'[864,435][1032,525]\'','click','JianDou',2,0,1,'2019-02-15 16:32:48',421),
	(151,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/151.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',2,0,1,'2019-02-15 16:32:58',354),
	(152,'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"com.taobao.orange.OrangeConfigListenerV1\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /data/user/0/com.alibaba.android.rimet/files/dso, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/152.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',2,0,1,'2019-02-15 16:33:07',906),
	(153,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:17',318),
	(154,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:26',586),
	(156,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[306,576][516,684]\'','click','JianDou',1,0,1,'2019-02-15 16:33:47',280),
	(157,'java.net.SocketException: Socket is closed',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/157.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',2,0,1,'2019-02-15 16:33:58',940),
	(158,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',1,0,1,'2019-02-15 16:34:06',653),
	(159,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'','click','JianDou',1,0,1,'2019-02-15 16:34:16',64),
	(160,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',1,0,1,'2019-02-15 16:34:23',864),
	(161,'java.net.SocketException: Socket is closed',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/161.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',2,0,1,'2019-02-15 16:34:31',639),
	(162,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/162.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',2,0,1,'2019-02-15 16:34:39',140),
	(163,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'','click','JianDou',1,0,1,'2019-02-15 16:34:47',383),
	(164,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'???\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:34:56',37),
	(165,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/165.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',2,0,1,'2019-02-15 16:35:04',903),
	(166,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:35:14',167),
	(167,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'','click','JianDou',1,0,1,'2019-02-15 16:35:22',979),
	(168,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/168.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',2,0,1,'2019-02-15 16:35:30',832),
	(169,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',1,0,1,'2019-02-15 16:35:38',753),
	(170,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'','click','JianDou',1,0,1,'2019-02-15 16:35:47',557),
	(172,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:06',139),
	(173,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:15',327),
	(174,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',1,0,1,'2019-02-15 16:36:24',635),
	(175,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/175.png','Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1656][258,1764]\'','click','JianDou',2,0,1,'2019-02-15 16:36:33',959),
	(176,'Network compressed POST connection error: java.net.ConnectException: Connection refused',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/176.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',2,0,1,'2019-02-15 16:36:43',142),
	(177,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:36:52',377),
	(178,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/178.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',2,0,1,'2019-02-15 16:37:01',734),
	(179,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'','click','JianDou',1,0,1,'2019-02-15 16:37:11',70),
	(180,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'','click','JianDou',1,0,1,'2019-02-15 16:37:20',618),
	(181,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/181.png','Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'8\')], bounds: \'[0,1575][840,1719]\'','click','JianDou',2,0,1,'2019-02-15 16:37:27',90),
	(182,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.LinearLayout[contains(@bounds,\'[48,327][1032,519]\')]','click','JianDou',1,0,1,'2019-02-15 16:37:36',524),
	(183,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click widget //android.widget.CheckedTextView[contains(@text,\'??\')], bounds: \'[48,835][1032,979]\'','click','JianDou',1,0,1,'2019-02-15 16:37:48',711),
	(184,NULL,NULL,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','Click Return button because this page has done','click','JianDou',1,0,1,'2019-02-15 16:38:00',113),
	(185,'java.net.SocketException: Socket is closed',3,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/185.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:38:03',221),
	(186,'DirectorySearchManager NameNotFoundException huawei.w3',6,'MainActivity','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png','Click Return button because this page has done','click','JianDou',2,0,1,'2019-02-15 16:38:06',682),
	(187,'[Connect] Failed to start set concurrent limit: ACException reason: (113) Exception: Refresh Interval cannot be less then 3600',1,'MainActivity','Launcher','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/187.png','Click Home button because has tried more than 3 times','click','JianDou',2,0,1,'2019-02-15 16:38:10',46),
	(188,NULL,NULL,'MainActivity','Launcher','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png','implicit_back_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1),
	(189,NULL,NULL,'BookDetailsActivity','BookDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/189.png','implicit_power_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1),
	(190,NULL,NULL,'ActorDetailsActivity','ActorDetailsActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/190.png','click','[<com.lhr.jiandou.activity.ActorDetailsActivity$3: void onClick(android.view.View)>]','JianDou',0,0,1,'2018-02-15 10:25:54',-1),
	(191,NULL,NULL,'Launcher','MainActivity','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/191.png','implicit_launch_event','[]','JianDou',0,0,1,'2018-02-15 10:25:54',-1),
	(192,NULL,NULL,'AlertDialog','AlertDialog','http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png','click','[<de.psdev.licensesdialog.LicensesDialog$3: void onShow(android.content.DialogInterface)>]','JianDou',0,0,1,'2018-02-15 10:25:54',-1),
	(193,NULL,NULL,'MainActivity','BookDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(194,NULL,NULL,'MainActivity','ActorDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(195,NULL,NULL,'MovieDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(196,NULL,NULL,'AlertDialog','MovieDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(198,NULL,NULL,'ActorDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(199,NULL,NULL,'AlertDialog','ActorDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(200,NULL,NULL,'BookDetailsActivity','AlertDialog',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL),
	(201,NULL,NULL,'AlertDialog','BookDetailsActivity',NULL,'Click',NULL,'JianDou',0,0,1,'2018-02-15 10:25:54',NULL);

/*!40000 ALTER TABLE `edge_copy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table edge_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edge_user`;

CREATE TABLE `edge_user` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `edge_id` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `edge_user` WRITE;
/*!40000 ALTER TABLE `edge_user` DISABLE KEYS */;

INSERT INTO `edge_user` (`id`, `user_id`, `edge_id`, `create_time`)
VALUES
	(1,3,112,'2019-05-06 18:22:50'),
	(2,3,105,'2019-05-06 18:24:18'),
	(3,3,137,'2019-05-06 18:25:25'),
	(4,3,190,'2019-05-06 18:27:30'),
	(5,3,188,'2019-05-06 18:29:23'),
	(6,3,189,'2019-05-06 18:32:45'),
	(7,3,132,'2019-05-06 18:34:52');

/*!40000 ALTER TABLE `edge_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table node
# ------------------------------------------------------------

DROP TABLE IF EXISTS `node`;

CREATE TABLE `node` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `window` varchar(255) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `known` int(1) DEFAULT '0',
  `adju_dist` bigint(255) DEFAULT '1000',
  `parent` varchar(255) DEFAULT NULL,
  `neighbors` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;

INSERT INTO `node` (`id`, `window`, `app_key`, `type`, `known`, `adju_dist`, `parent`, `neighbors`)
VALUES
	(37,'BookDetailsActivity','JianDou','ACT',1,1,'MainActivity',NULL),
	(40,'ActorDetailsActivity','JianDou','ACT',1,1,'MainActivity',NULL),
	(41,'MainActivity','JianDou','ACT',0,0,NULL,NULL),
	(42,'ProgressDialog','JianDou','DIALOG',0,1000,NULL,NULL),
	(45,'SearchActivity','JianDou','ACT',1,0,NULL,NULL),
	(46,'MovieDetailsActivity','JianDou','ACT',1,0,NULL,NULL),
	(47,'WebViewActivity','JianDou','ACT',1,0,NULL,NULL),
	(49,'Launcher','JianDou','LAUNCHER',1,1,'MainActivity',NULL),
	(50,'AlertDialog','JianDou','LAUNCHER',1,2,'BookDetailsActivity',NULL);

/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table old_app_bug_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `old_app_bug_info`;

CREATE TABLE `old_app_bug_info` (
  `old_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_key` varchar(255) DEFAULT NULL,
  `bug_describe` varchar(255) DEFAULT NULL,
  `bug_id` varchar(255) DEFAULT NULL,
  `c_time` datetime DEFAULT NULL,
  `current` varchar(255) DEFAULT NULL,
  `m_time` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`old_id`),
  KEY `FKgivo2vx80q6sll41yk23c13x5` (`user_id`),
  CONSTRAINT `FKgivo2vx80q6sll41yk23c13x5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `old_app_bug_info` WRITE;
/*!40000 ALTER TABLE `old_app_bug_info` DISABLE KEYS */;

INSERT INTO `old_app_bug_info` (`old_id`, `app_key`, `bug_describe`, `bug_id`, `c_time`, `current`, `m_time`, `priority`, `status`, `type`, `user_id`)
VALUES
	(1,'a6291647a6de441892c7ec1b060efca9','第一次测试','201835615179960105','2018-08-30 07:46:19','org.horaapps.leafpic.about.AboutActivity','2018-08-30 07:46:19','一般','新建','界面相关',2),
	(2,'a6291647a6de441892c7ec1b060efca9','bug one','201837356993727112','2018-09-19 11:36:33','org.horaapps.leafpic.activities.MainActivity','2018-09-19 11:36:33','General','New','Function',2),
	(3,'a6291647a6de441892c7ec1b060efca9','When I enter this Activity, the app crashes','201837356993727112','2018-09-19 11:36:33','org.horaapps.leafpic.activities.MainActivity','2018-09-26 07:48:07','General','New','Function',2),
	(4,'a6291647a6de441892c7ec1b060efca9','bug 1','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 07:55:58','Minor','New','Layout',2),
	(5,'a6291647a6de441892c7ec1b060efca9','When the user enters this Activity, the app crashes','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 07:56:32','Minor','New','Layout',2),
	(6,'a6291647a6de441892c7ec1b060efca9','1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes\n','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:41:04','Minor','New','Layout',2),
	(7,'a6291647a6de441892c7ec1b060efca9','\n1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes\n','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:41:16','Minor','New','Layout',2),
	(8,'a6291647a6de441892c7ec1b060efca9','\n1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:41:27','Minor','New','Layout',2),
	(9,'a6291647a6de441892c7ec1b060efca9','\n1、When users enter this Activity, the app crashes\n2、When users click a component, the app crashes','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-26 08:42:12','Minor','New','Layout',2),
	(10,'a6291647a6de441892c7ec1b060efca9','\n1、When users enter this Activity, the app crashes\n2、When users click a picture at this Activity , the app crashes','201837948558366111','2018-09-26 07:55:58','org.horaapps.leafpic.activities.MainActivity','2018-09-27 03:24:26','Minor','New','Layout',2);

/*!40000 ALTER TABLE `old_app_bug_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `tele_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `create_time`, `email`, `name`, `pwd`, `status`, `tele_number`)
VALUES
	(1,'2018-08-24 10:19:45','wzb19960208@outlook.com','weizb','123456',0,'17314899967'),
	(2,'2018-08-29 12:14:24','616298362@qq.com','lhy','123456',0,'13');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
