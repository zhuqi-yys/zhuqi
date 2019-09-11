/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : new

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2019-09-11 09:05:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_base_info
-- ----------------------------
DROP TABLE IF EXISTS `app_base_info`;
CREATE TABLE `app_base_info` (
  `app_key` varchar(255) NOT NULL,
  `sdkversion` double NOT NULL,
  `app_secret` varchar(255) default NULL,
  `c_time` date default NULL,
  `m_time` date default NULL,
  `name` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`app_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_base_info
-- ----------------------------
INSERT INTO `app_base_info` VALUES ('8247de86d8864ebdb2553f7f779c5fd5', '26', 'fdcab986d1e44a9a864ca951f22b9026', '2018-09-25', '2018-09-25', 'MOOCTEST', 'other');
INSERT INTO `app_base_info` VALUES ('a622bc855ced462cb3e22ca8d3dc4329', '1', '8e72d0f9a33f480fa456dce0b81e0ea4', '2018-08-27', '2018-08-27', '慕测2', '摄影');
INSERT INTO `app_base_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '27', 'c590025f4f934dddb17169161c5b5617', '2018-08-30', '2018-08-30', 'LeafPic2.0', 'life');
INSERT INTO `app_base_info` VALUES ('d1fa137bfab94687922a8571176531d8', '1', '1c15ef48b83e4668a2a87b1d1dd41f8f', '2018-08-24', '2018-08-24', '慕测', '娱乐');
INSERT INTO `app_base_info` VALUES ('e9fa239446984055bc72426b49c4ea33', '27', 'f77a6ba25e2645c7893796f0787e35ea', '2018-08-29', '2018-08-29', 'LeafPic', '生活');
INSERT INTO `app_base_info` VALUES ('efa4fceefc6a4927952290fff2f08a6b', '23', 'b9a5df77baa04265afc3be6e587a44bb', '2018-09-11', '2018-09-11', 'Mooctest', '娱乐');

-- ----------------------------
-- Table structure for app_bug_info
-- ----------------------------
DROP TABLE IF EXISTS `app_bug_info`;
CREATE TABLE `app_bug_info` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `edge_id` bigint(100) default '0',
  `app_version` varchar(255) default NULL,
  `bug_describe` varchar(255) default NULL,
  `c_time` datetime default NULL,
  `current` varchar(255) default NULL,
  `m_time` datetime default NULL,
  `priority` varchar(255) default NULL,
  `screenshot_adr` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `user_id` int(11) NOT NULL,
  `info_flag` int(1) default '0',
  PRIMARY KEY  (`app_key`,`bug_id`),
  KEY `FK2ligj63trutj00wnf5mqlllv5` (`user_id`),
  CONSTRAINT `FK2ligj63trutj00wnf5mqlllv5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_bug_info
-- ----------------------------
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948558366111', '98', 'v0.7-alpha-2', '\n1、When users enter this Activity, the app crashes\n2、When users click a picture at this Activity , the app crashes', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-12-18 04:52:21', 'Minor', 'head_image', 'New', 'Layout', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948789110112', '98', 'v0.7-alpha-2', 'bug 2', '2018-09-26 07:59:49', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 07:59:49', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948848473113', '98', 'v0.7-alpha-2', 'bug 444', '2018-09-26 08:00:48', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:00:48', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950158927114', '98', 'v0.7-alpha-2', 'bug 1', '2018-09-26 08:22:38', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:22:38', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950228774115', '98', 'v0.7-alpha-2', 'crash', '2018-09-26 08:23:48', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:23:48', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950246731116', '98', 'v0.7-alpha-2', 'crash', '2018-09-26 08:24:06', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:24:06', 'Minor', 'no exist', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838018347167117', '98', 'v0.7-alpha-2', 'this layout have some error', '2018-09-27 03:19:07', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 03:19:07', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838031971957118', '98', 'v0.7-alpha-2', 'when i enter this activity,it causes a crash', '2018-09-27 07:06:11', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:06:11', 'Minor', 'head_image', 'New', 'Layout', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838032489239119', '98', 'v0.7-alpha-2', 'when i enter this activity,it causes a crash', '2018-09-27 07:14:49', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:14:49', 'Crash', 'head_image', 'New', 'Layout', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033287945122', '98', 'v0.7-alpha-2', 'when I enter this activity,it causes a crash', '2018-09-27 07:28:07', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:28:07', 'Crash', 'head_image', 'New', 'Layout', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033384278123', '98', 'v0.7-alpha-2', 'when I enter this activity,it causes a crash', '2018-09-27 07:29:44', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:29:44', 'Crash', 'head_image', 'New', 'Layout', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033431735124', '98', 'v0.7-alpha-2', 'when I click a picture,it crash a crash', '2018-09-27 07:30:31', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:30:31', 'Crash', 'no exist', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033753521125', '98', 'v0.7-alpha-2', 'When I enter this activity,it causes a crash', '2018-09-27 07:35:53', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:35:53', 'Minor', 'head_image', 'New', 'Function', '2', '0');
INSERT INTO `app_bug_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033789369126', '98', 'v0.7-alpha-2', 'When I click a picture,it causes a crash', '2018-09-27 07:36:29', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 07:36:29', 'Crash', 'no exist', 'New', 'Function', '2', '0');

-- ----------------------------
-- Table structure for app_member
-- ----------------------------
DROP TABLE IF EXISTS `app_member`;
CREATE TABLE `app_member` (
  `app_key` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`app_key`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_member
-- ----------------------------
INSERT INTO `app_member` VALUES ('8247de86d8864ebdb2553f7f779c5fd5', '2', '创建者');
INSERT INTO `app_member` VALUES ('a622bc855ced462cb3e22ca8d3dc4329', '1', '创建者');
INSERT INTO `app_member` VALUES ('a6291647a6de441892c7ec1b060efca9', '1', '普通成员');
INSERT INTO `app_member` VALUES ('a6291647a6de441892c7ec1b060efca9', '2', '创建者');
INSERT INTO `app_member` VALUES ('d1fa137bfab94687922a8571176531d8', '1', '创建者');
INSERT INTO `app_member` VALUES ('e9fa239446984055bc72426b49c4ea33', '2', '创建者');
INSERT INTO `app_member` VALUES ('efa4fceefc6a4927952290fff2f08a6b', '2', '创建者');

-- ----------------------------
-- Table structure for app_version_info
-- ----------------------------
DROP TABLE IF EXISTS `app_version_info`;
CREATE TABLE `app_version_info` (
  `app_key` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  PRIMARY KEY  (`app_key`,`app_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_version_info
-- ----------------------------
INSERT INTO `app_version_info` VALUES ('a622bc855ced462cb3e22ca8d3dc4329', '1.0');
INSERT INTO `app_version_info` VALUES ('a6291647a6de441892c7ec1b060efca9', 'v0.7-alpha-2');
INSERT INTO `app_version_info` VALUES ('d1fa137bfab94687922a8571176531d8', '1.0');
INSERT INTO `app_version_info` VALUES ('e9fa239446984055bc72426b49c4ea33', '1.0');

-- ----------------------------
-- Table structure for bug_console_log
-- ----------------------------
DROP TABLE IF EXISTS `bug_console_log`;
CREATE TABLE `bug_console_log` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `log_string` varchar(255) default NULL,
  PRIMARY KEY  (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bug_console_log
-- ----------------------------
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201835615179960105', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226627272102', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226868322103', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837234844334105', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235301054106', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235366694107', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235426090108', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837320616765110', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837356993727112', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837357717473114', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837411859789101', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839880580102', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839899664103', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926513522104', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926662976105', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926748061106', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926771401107', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927025110108', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927130948109', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927150900110', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948558366111', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948789110112', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948848473113', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950158927114', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950228774115', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950246731116', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838018347167117', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838031971957118', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838032489239119', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033287945122', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033384278123', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033431735124', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033753521125', '  ');
INSERT INTO `bug_console_log` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033789369126', '  ');
INSERT INTO `bug_console_log` VALUES ('d1fa137bfab94687922a8571176531d8', '201835551112719101', '  ');
INSERT INTO `bug_console_log` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551373544102', '  ');
INSERT INTO `bug_console_log` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551530603104', '  ');

-- ----------------------------
-- Table structure for bug_device_info
-- ----------------------------
DROP TABLE IF EXISTS `bug_device_info`;
CREATE TABLE `bug_device_info` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `avail_memory` varchar(255) default NULL,
  `device_brand` varchar(255) default NULL,
  `network_type` varchar(255) default NULL,
  `providers_name` varchar(255) default NULL,
  `resolution` varchar(255) default NULL,
  `system_language` varchar(255) default NULL,
  `system_model` varchar(255) default NULL,
  `system_version` varchar(255) default NULL,
  `total_memory` varchar(255) default NULL,
  PRIMARY KEY  (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bug_device_info
-- ----------------------------
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201835615179960105', '2.14 GB', 'LeEco', 'WIFI', '中国移动', '1440*2560', 'zh', 'Le X822', '6.0.1', '-334729216.00 B');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226627272102', '1.93 GB', 'HUAWEI', 'WIFI', '中国移动', '1440*2434', 'zh', 'EDI-AL10', '7.0', '-372 MB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226868322103', '2.09 GB', 'HUAWEI', 'WIFI', '中国移动', '1440*2434', 'zh', 'EDI-AL10', '7.0', '-372 MB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837234844334105', '2.18 GB', 'Xiaomi', '4G', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235301054106', '2.00 GB', 'Xiaomi', '4G', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235366694107', '3.01 GB', 'Xiaomi', '4G', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235426090108', '2.97 GB', 'Xiaomi', '4G', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837320616765110', '2.88 GB', 'Xiaomi', 'WIFI', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837356993727112', '1.26 GB', 'Xiaomi', 'WIFI', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837357717473114', '1.84 GB', 'Xiaomi', 'WIFI', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837411859789101', '2.76 GB', 'Xiaomi', 'WIFI', '中国移动', '1080*2030', 'zh', 'MIX 2', '7.1.1', '1.59 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839880580102', '551 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839899664103', '547 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926513522104', '610 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926662976105', '590 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926748061106', '607 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926771401107', '588 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927025110108', '588 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927130948109', '592 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927150900110', '578 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948558366111', '754 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948789110112', '741 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948848473113', '725 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950158927114', '563 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950228774115', '567 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950246731116', '562 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838018347167117', '604 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838031971957118', '554 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838032489239119', '530 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033287945122', '526 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033384278123', '510 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033431735124', '496 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033753521125', '534 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033789369126', '522 MB', 'HONOR', 'WIFI', '中国移动', '1080*1776', 'zh', 'ATH-CL00', '5.1.1', '1.77 GB');
INSERT INTO `bug_device_info` VALUES ('d1fa137bfab94687922a8571176531d8', '201835551112719101', '2.12 GB', 'HUAWEI', 'WIFI', '中国移动', '1440*2434', 'zh', 'EDI-AL10', '7.0', '-372 MB');
INSERT INTO `bug_device_info` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551373544102', '2.12 GB', 'HUAWEI', 'WIFI', '中国移动', '1440*2434', 'zh', 'EDI-AL10', '7.0', '-372 MB');
INSERT INTO `bug_device_info` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551530603104', '2.15 GB', 'HUAWEI', 'WIFI', '中国移动', '1440*2434', 'zh', 'EDI-AL10', '7.0', '-372 MB');

-- ----------------------------
-- Table structure for bug_operate_step
-- ----------------------------
DROP TABLE IF EXISTS `bug_operate_step`;
CREATE TABLE `bug_operate_step` (
  `app_key` varchar(255) NOT NULL,
  `bug_id` varchar(255) NOT NULL,
  `operate_step` varchar(255) default NULL,
  PRIMARY KEY  (`app_key`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bug_operate_step
-- ----------------------------
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201835615179960105', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226627272102', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837226868322103', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837234844334105', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235301054106', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235366694107', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837235426090108', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837320616765110', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837356993727112', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837357717473114', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837411859789101', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839880580102', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837839899664103', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926513522104', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926662976105', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926748061106', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837926771401107', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927025110108', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927130948109', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837927150900110', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948558366111', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948789110112', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837948848473113', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950158927114', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950228774115', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201837950246731116', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838018347167117', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838031971957118', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838032489239119', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033287945122', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033384278123', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033431735124', ' null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033753521125', 'null null null null');
INSERT INTO `bug_operate_step` VALUES ('a6291647a6de441892c7ec1b060efca9', '201838033789369126', ' null');
INSERT INTO `bug_operate_step` VALUES ('d1fa137bfab94687922a8571176531d8', '201835551112719101', ' null');
INSERT INTO `bug_operate_step` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551373544102', ' null');
INSERT INTO `bug_operate_step` VALUES ('e9fa239446984055bc72426b49c4ea33', '201835551530603104', ' null');

-- ----------------------------
-- Table structure for edge
-- ----------------------------
DROP TABLE IF EXISTS `edge`;
CREATE TABLE `edge` (
  `id` bigint(100) unsigned NOT NULL auto_increment,
  `message` varchar(1000) default NULL,
  `type_exception` int(11) default NULL,
  `source_node` varchar(255) default NULL,
  `target_node` varchar(255) default NULL,
  `image_url` varchar(1000) default NULL,
  `event_handlers` varchar(1000) default NULL,
  `event_type` varchar(1000) default NULL,
  `app_key` varchar(255) default NULL,
  `data_type` int(11) default NULL,
  `number` int(11) default '0',
  `weight` int(11) default '1',
  `create_time` timestamp NULL default NULL,
  `assist_time` bigint(255) default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edge
-- ----------------------------
INSERT INTO `edge` VALUES ('97', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:25:54', '885', null);
INSERT INTO `edge` VALUES ('98', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because handled father components', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:02', '150', null);
INSERT INTO `edge` VALUES ('99', 'decrypterCbc Exceptionjava.lang.IllegalArgumentException: Bad arguments', '5', 'MainActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/99.png', 'Click widget com.lhr.jiandou:id/toolbar_menu_search, bounds: \'[912,84][1080,228]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:26:04', '590', null);
INSERT INTO `edge` VALUES ('100', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/spinner, bounds: \'[0,72][372,246]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:18', '260', null);
INSERT INTO `edge` VALUES ('101', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@index,\'0\')], bounds: \'[0,246][228,378]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:27', '902', null);
INSERT INTO `edge` VALUES ('102', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/102.png', 'Click widget com.lhr.jiandou:id/search_button, bounds: \'[372,87][516,231]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:26:35', '207', null);
INSERT INTO `edge` VALUES ('103', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/search_go_btn, bounds: \'[873,87][1041,228]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:43', '783', null);
INSERT INTO `edge` VALUES ('104', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@index,\'1\')], bounds: \'[0,378][228,510]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:53', '446', null);
INSERT INTO `edge` VALUES ('105', 'java.net.SocketException: Socket is closed', '3', 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/105.png', 'Click widget com.lhr.jiandou:id/search_close_btn, bounds: \'[753,87][873,228]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:27:03', '153', null);
INSERT INTO `edge` VALUES ('106', null, null, 'SearchActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:10', '169', null);
INSERT INTO `edge` VALUES ('107', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,396][348,977]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:13', '343', null);
INSERT INTO `edge` VALUES ('108', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/108.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:27:27', '720', null);
INSERT INTO `edge` VALUES ('109', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'1\')], bounds: \'[372,396][708,977]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:38', '612', null);
INSERT INTO `edge` VALUES ('110', null, null, 'MovieDetailsActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/action_collection, bounds: \'[912,84][1080,228]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:48', '683', null);
INSERT INTO `edge` VALUES ('111', null, null, 'MovieDetailsActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/activity_md_summart_more, bounds: \'[15,1804][1065,1861]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:55', '244', null);
INSERT INTO `edge` VALUES ('112', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'WebViewActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/112.png', 'Click widget com.lhr.jiandou:id/activity_md_fab, bounds: \'[888,828][1032,972]\'\"', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:02', '958', null);
INSERT INTO `edge` VALUES ('113', null, null, 'WebViewActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:19', '208', null);
INSERT INTO `edge` VALUES ('114', '[ReceiverDispatcher-353]query package isInstalled failed, NameNotFoundException!(android/null:-1)', '6', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/114.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:27', '203', null);
INSERT INTO `edge` VALUES ('115', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/115.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'2\')], bounds: \'[732,396][1068,977]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:30', '250', null);
INSERT INTO `edge` VALUES ('116', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:39', '422', null);
INSERT INTO `edge` VALUES ('117', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/117.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'3\')], bounds: \'[12,1001][348,1582]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:42', '561', null);
INSERT INTO `edge` VALUES ('118', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:53', '391', null);
INSERT INTO `edge` VALUES ('119', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/119.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'4\')], bounds: \'[372,1001][708,1582]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:57', '10', null);
INSERT INTO `edge` VALUES ('120', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:07', '642', null);
INSERT INTO `edge` VALUES ('121', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'5\')], bounds: \'[732,1001][1068,1582]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:11', '108', null);
INSERT INTO `edge` VALUES ('122', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:21', '768', null);
INSERT INTO `edge` VALUES ('123', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'6\')], bounds: \'[12,1606][348,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:24', '724', null);
INSERT INTO `edge` VALUES ('124', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/124.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:29:33', '724', null);
INSERT INTO `edge` VALUES ('125', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'7\')], bounds: \'[372,1606][708,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:38', '72', null);
INSERT INTO `edge` VALUES ('126', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:47', '187', null);
INSERT INTO `edge` VALUES ('127', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'8\')], bounds: \'[732,1606][1068,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:49', '863', null);
INSERT INTO `edge` VALUES ('128', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/128.png', 'Click widget com.lhr.jiandou:id/pager_base_fab, bounds: \'[888,1728][1032,1872]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:00', '125', null);
INSERT INTO `edge` VALUES ('129', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:10', '711', null);
INSERT INTO `edge` VALUES ('130', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[372,396][708,977]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:17', '742', null);
INSERT INTO `edge` VALUES ('131', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:26', '908', null);
INSERT INTO `edge` VALUES ('132', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/132.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[732,1001][1068,1582]\')]', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:33', '710', null);
INSERT INTO `edge` VALUES ('133', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/133.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:40', '769', null);
INSERT INTO `edge` VALUES ('134', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'1\')], bounds: \'[0,684][840,828]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:47', '284', null);
INSERT INTO `edge` VALUES ('135', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:54', '352', null);
INSERT INTO `edge` VALUES ('136', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/136.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@bounds,\'[0,828][840,972]\')]', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:00', '887', null);
INSERT INTO `edge` VALUES ('137', 'java.io.FileNotFoundException: /data/user/0/com.lhr.jiandou/files/Cache_File_movie/Top250 (No such file or directory)', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/137.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:08', '277', null);
INSERT INTO `edge` VALUES ('138', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'3\')], bounds: \'[0,972][840,1116]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:15', '90', null);
INSERT INTO `edge` VALUES ('139', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,891][348,1472]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:23', '221', null);
INSERT INTO `edge` VALUES ('140', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/140.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:33', '306', null);
INSERT INTO `edge` VALUES ('141', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:40', '991', null);
INSERT INTO `edge` VALUES ('142', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'4\')], bounds: \'[0,1116][840,1260]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:48', '286', null);
INSERT INTO `edge` VALUES ('143', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/143.png', 'Click widget com.lhr.jiandou:id/item_collection_card, bounds: \'[15,240][1065,645]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:59', '57', null);
INSERT INTO `edge` VALUES ('144', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:08', '412', null);
INSERT INTO `edge` VALUES ('145', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_movie, bounds: \'[0,1752][360,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:11', '20', null);
INSERT INTO `edge` VALUES ('146', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_book, bounds: \'[360,1752][720,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:17', '837', null);
INSERT INTO `edge` VALUES ('147', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_actor, bounds: \'[720,1752][1080,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:24', '629', null);
INSERT INTO `edge` VALUES ('148', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/148.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:32', '140', null);
INSERT INTO `edge` VALUES ('149', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/149.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'7\')], bounds: \'[0,1431][840,1575]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:38', '613', null);
INSERT INTO `edge` VALUES ('150', 'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"android.taobao.windvane.jsbridge.WVApiPlugin\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/150.png', 'Click widget com.lhr.jiandou:id/tv_btn_edit, bounds: \'[864,435][1032,525]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:48', '421', null);
INSERT INTO `edge` VALUES ('151', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/151.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:58', '354', null);
INSERT INTO `edge` VALUES ('152', 'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"com.taobao.orange.OrangeConfigListenerV1\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /data/user/0/com.alibaba.android.rimet/files/dso, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/152.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:33:07', '906', null);
INSERT INTO `edge` VALUES ('153', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:17', '318', null);
INSERT INTO `edge` VALUES ('154', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:26', '586', null);
INSERT INTO `edge` VALUES ('156', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[306,576][516,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:47', '280', null);
INSERT INTO `edge` VALUES ('157', 'java.net.SocketException: Socket is closed', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/157.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:33:58', '940', null);
INSERT INTO `edge` VALUES ('158', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:06', '653', null);
INSERT INTO `edge` VALUES ('159', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:16', '64', null);
INSERT INTO `edge` VALUES ('160', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:23', '864', null);
INSERT INTO `edge` VALUES ('161', 'java.net.SocketException: Socket is closed', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/161.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:34:31', '639', null);
INSERT INTO `edge` VALUES ('162', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/162.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:34:39', '140', null);
INSERT INTO `edge` VALUES ('163', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:47', '383', null);
INSERT INTO `edge` VALUES ('164', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'???\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:56', '37', null);
INSERT INTO `edge` VALUES ('165', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/165.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:35:04', '903', null);
INSERT INTO `edge` VALUES ('166', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:14', '167', null);
INSERT INTO `edge` VALUES ('167', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:22', '979', null);
INSERT INTO `edge` VALUES ('168', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/168.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:35:30', '832', null);
INSERT INTO `edge` VALUES ('169', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:38', '753', null);
INSERT INTO `edge` VALUES ('170', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:47', '557', null);
INSERT INTO `edge` VALUES ('172', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:06', '139', null);
INSERT INTO `edge` VALUES ('173', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:15', '327', null);
INSERT INTO `edge` VALUES ('174', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:24', '635', null);
INSERT INTO `edge` VALUES ('175', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/175.png', 'Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:36:33', '959', null);
INSERT INTO `edge` VALUES ('176', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/176.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:36:43', '142', null);
INSERT INTO `edge` VALUES ('177', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:52', '377', null);
INSERT INTO `edge` VALUES ('178', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/178.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:37:01', '734', null);
INSERT INTO `edge` VALUES ('179', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:11', '70', null);
INSERT INTO `edge` VALUES ('180', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:20', '618', null);
INSERT INTO `edge` VALUES ('181', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/181.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'8\')], bounds: \'[0,1575][840,1719]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:37:27', '90', null);
INSERT INTO `edge` VALUES ('182', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@bounds,\'[48,327][1032,519]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:36', '524', null);
INSERT INTO `edge` VALUES ('183', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.CheckedTextView[contains(@text,\'??\')], bounds: \'[48,835][1032,979]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:48', '711', null);
INSERT INTO `edge` VALUES ('184', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:38:00', '113', null);
INSERT INTO `edge` VALUES ('185', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/185.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:03', '221', null);
INSERT INTO `edge` VALUES ('186', 'DirectorySearchManager NameNotFoundException huawei.w3', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:06', '682', null);
INSERT INTO `edge` VALUES ('187', '[Connect] Failed to start set concurrent limit: ACException reason: (113) Exception: Refresh Interval cannot be less then 3600', '1', 'MainActivity', 'Launcher', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/187.png', 'Click Home button because has tried more than 3 times', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:10', '46', null);
INSERT INTO `edge` VALUES ('188', null, null, 'MainActivity', 'Launcher', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png', 'implicit_back_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1', null);
INSERT INTO `edge` VALUES ('189', null, null, 'BookDetailsActivity', 'BookDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/189.png', 'implicit_power_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1', null);
INSERT INTO `edge` VALUES ('190', null, null, 'ActorDetailsActivity', 'ActorDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/190.png', 'click', '[<com.lhr.jiandou.activity.ActorDetailsActivity$3: void onClick(android.view.View)>]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1', null);
INSERT INTO `edge` VALUES ('191', null, null, 'Launcher', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/191.png', 'implicit_launch_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1', null);
INSERT INTO `edge` VALUES ('192', null, null, 'AlertDialog', 'AlertDialog', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'click', '[<de.psdev.licensesdialog.LicensesDialog$3: void onShow(android.content.DialogInterface)>]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1', null);
INSERT INTO `edge` VALUES ('193', null, null, 'MainActivity', 'BookDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('194', null, null, 'MainActivity', 'ActorDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('195', null, null, 'MovieDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('196', null, null, 'AlertDialog', 'MovieDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('198', null, null, 'ActorDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('199', null, null, 'AlertDialog', 'ActorDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('200', null, null, 'BookDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);
INSERT INTO `edge` VALUES ('201', null, null, 'AlertDialog', 'BookDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null, null);

-- ----------------------------
-- Table structure for edge_copy
-- ----------------------------
DROP TABLE IF EXISTS `edge_copy`;
CREATE TABLE `edge_copy` (
  `id` bigint(100) unsigned NOT NULL auto_increment,
  `message` varchar(1000) default NULL,
  `type_exception` int(11) default NULL,
  `source_node` varchar(255) default NULL,
  `target_node` varchar(255) default NULL,
  `image_url` varchar(1000) default NULL,
  `event_handlers` varchar(1000) default NULL,
  `event_type` varchar(1000) default NULL,
  `app_key` varchar(255) default NULL,
  `data_type` int(11) default NULL,
  `number` int(11) default '0',
  `weight` int(11) default '1',
  `create_time` timestamp NULL default NULL,
  `assist_time` bigint(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edge_copy
-- ----------------------------
INSERT INTO `edge_copy` VALUES ('97', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:25:54', '885');
INSERT INTO `edge_copy` VALUES ('98', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because handled father components', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:02', '150');
INSERT INTO `edge_copy` VALUES ('99', 'decrypterCbc Exceptionjava.lang.IllegalArgumentException: Bad arguments', '5', 'MainActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/99.png', 'Click widget com.lhr.jiandou:id/toolbar_menu_search, bounds: \'[912,84][1080,228]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:26:04', '590');
INSERT INTO `edge_copy` VALUES ('100', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/spinner, bounds: \'[0,72][372,246]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:18', '260');
INSERT INTO `edge_copy` VALUES ('101', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@index,\'0\')], bounds: \'[0,246][228,378]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:27', '902');
INSERT INTO `edge_copy` VALUES ('102', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/102.png', 'Click widget com.lhr.jiandou:id/search_button, bounds: \'[372,87][516,231]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:26:35', '207');
INSERT INTO `edge_copy` VALUES ('103', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/search_go_btn, bounds: \'[873,87][1041,228]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:43', '783');
INSERT INTO `edge_copy` VALUES ('104', null, null, 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@index,\'1\')], bounds: \'[0,378][228,510]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:26:53', '446');
INSERT INTO `edge_copy` VALUES ('105', 'java.net.SocketException: Socket is closed', '3', 'SearchActivity', 'SearchActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/105.png', 'Click widget com.lhr.jiandou:id/search_close_btn, bounds: \'[753,87][873,228]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:27:03', '153');
INSERT INTO `edge_copy` VALUES ('106', null, null, 'SearchActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:10', '169');
INSERT INTO `edge_copy` VALUES ('107', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,396][348,977]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:13', '343');
INSERT INTO `edge_copy` VALUES ('108', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/108.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:27:27', '720');
INSERT INTO `edge_copy` VALUES ('109', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'1\')], bounds: \'[372,396][708,977]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:38', '612');
INSERT INTO `edge_copy` VALUES ('110', null, null, 'MovieDetailsActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/action_collection, bounds: \'[912,84][1080,228]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:48', '683');
INSERT INTO `edge_copy` VALUES ('111', null, null, 'MovieDetailsActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/activity_md_summart_more, bounds: \'[15,1804][1065,1861]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:27:55', '244');
INSERT INTO `edge_copy` VALUES ('112', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'WebViewActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/112.png', 'Click widget com.lhr.jiandou:id/activity_md_fab, bounds: \'[888,828][1032,972]\'\"', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:02', '958');
INSERT INTO `edge_copy` VALUES ('113', null, null, 'WebViewActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:19', '208');
INSERT INTO `edge_copy` VALUES ('114', '[ReceiverDispatcher-353]query package isInstalled failed, NameNotFoundException!(android/null:-1)', '6', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/114.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:27', '203');
INSERT INTO `edge_copy` VALUES ('115', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/115.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'2\')], bounds: \'[732,396][1068,977]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:30', '250');
INSERT INTO `edge_copy` VALUES ('116', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:39', '422');
INSERT INTO `edge_copy` VALUES ('117', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/117.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'3\')], bounds: \'[12,1001][348,1582]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:42', '561');
INSERT INTO `edge_copy` VALUES ('118', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:28:53', '391');
INSERT INTO `edge_copy` VALUES ('119', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/119.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'4\')], bounds: \'[372,1001][708,1582]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:28:57', '10');
INSERT INTO `edge_copy` VALUES ('120', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:07', '642');
INSERT INTO `edge_copy` VALUES ('121', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'5\')], bounds: \'[732,1001][1068,1582]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:11', '108');
INSERT INTO `edge_copy` VALUES ('122', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:21', '768');
INSERT INTO `edge_copy` VALUES ('123', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'6\')], bounds: \'[12,1606][348,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:24', '724');
INSERT INTO `edge_copy` VALUES ('124', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/124.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:29:33', '724');
INSERT INTO `edge_copy` VALUES ('125', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'7\')], bounds: \'[372,1606][708,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:38', '72');
INSERT INTO `edge_copy` VALUES ('126', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:47', '187');
INSERT INTO `edge_copy` VALUES ('127', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@index,\'8\')], bounds: \'[732,1606][1068,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:29:49', '863');
INSERT INTO `edge_copy` VALUES ('128', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/128.png', 'Click widget com.lhr.jiandou:id/pager_base_fab, bounds: \'[888,1728][1032,1872]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:00', '125');
INSERT INTO `edge_copy` VALUES ('129', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:10', '711');
INSERT INTO `edge_copy` VALUES ('130', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[372,396][708,977]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:17', '742');
INSERT INTO `edge_copy` VALUES ('131', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:26', '908');
INSERT INTO `edge_copy` VALUES ('132', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/132.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[732,1001][1068,1582]\')]', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:33', '710');
INSERT INTO `edge_copy` VALUES ('133', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/133.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:30:40', '769');
INSERT INTO `edge_copy` VALUES ('134', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'1\')], bounds: \'[0,684][840,828]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:47', '284');
INSERT INTO `edge_copy` VALUES ('135', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:30:54', '352');
INSERT INTO `edge_copy` VALUES ('136', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/136.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@bounds,\'[0,828][840,972]\')]', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:00', '887');
INSERT INTO `edge_copy` VALUES ('137', 'java.io.FileNotFoundException: /data/user/0/com.lhr.jiandou/files/Cache_File_movie/Top250 (No such file or directory)', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/137.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:08', '277');
INSERT INTO `edge_copy` VALUES ('138', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'3\')], bounds: \'[0,972][840,1116]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:15', '90');
INSERT INTO `edge_copy` VALUES ('139', null, null, 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.FrameLayout[contains(@bounds,\'[12,891][348,1472]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:23', '221');
INSERT INTO `edge_copy` VALUES ('140', 'java.net.SocketException: Socket is closed', '3', 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/140.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:33', '306');
INSERT INTO `edge_copy` VALUES ('141', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:40', '991');
INSERT INTO `edge_copy` VALUES ('142', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'4\')], bounds: \'[0,1116][840,1260]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:31:48', '286');
INSERT INTO `edge_copy` VALUES ('143', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MovieDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/143.png', 'Click widget com.lhr.jiandou:id/item_collection_card, bounds: \'[15,240][1065,645]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:31:59', '57');
INSERT INTO `edge_copy` VALUES ('144', null, null, 'MovieDetailsActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:08', '412');
INSERT INTO `edge_copy` VALUES ('145', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_movie, bounds: \'[0,1752][360,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:11', '20');
INSERT INTO `edge_copy` VALUES ('146', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_book, bounds: \'[360,1752][720,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:17', '837');
INSERT INTO `edge_copy` VALUES ('147', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget com.lhr.jiandou:id/tab_actor, bounds: \'[720,1752][1080,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:32:24', '629');
INSERT INTO `edge_copy` VALUES ('148', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/148.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:32', '140');
INSERT INTO `edge_copy` VALUES ('149', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/149.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'7\')], bounds: \'[0,1431][840,1575]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:38', '613');
INSERT INTO `edge_copy` VALUES ('150', 'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"android.taobao.windvane.jsbridge.WVApiPlugin\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/150.png', 'Click widget com.lhr.jiandou:id/tv_btn_edit, bounds: \'[864,435][1032,525]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:48', '421');
INSERT INTO `edge_copy` VALUES ('151', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/151.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:32:58', '354');
INSERT INTO `edge_copy` VALUES ('152', 'Caused by: java.lang.ClassNotFoundException: Didn\'t find class \"com.taobao.orange.OrangeConfigListenerV1\" on path: DexPathList[[zip file \"/data/app/com.alibaba.android.rimet-1/base.apk\"],nativeLibraryDirectories=[/data/app/com.alibaba.android.rimet-1/lib/arm, /system/fake-libs, /data/app/com.alibaba.android.rimet-1/base.apk!/lib/armeabi, /data/user/0/com.alibaba.android.rimet/files/dso, /system/lib, /vendor/lib, /system/vendor/lib, /product/lib]]', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/152.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:33:07', '906');
INSERT INTO `edge_copy` VALUES ('153', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:17', '318');
INSERT INTO `edge_copy` VALUES ('154', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,576][258,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:26', '586');
INSERT INTO `edge_copy` VALUES ('156', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[306,576][516,684]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:33:47', '280');
INSERT INTO `edge_copy` VALUES ('157', 'java.net.SocketException: Socket is closed', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/157.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:33:58', '940');
INSERT INTO `edge_copy` VALUES ('158', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:06', '653');
INSERT INTO `edge_copy` VALUES ('159', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1032][258,1140]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:16', '64');
INSERT INTO `edge_copy` VALUES ('160', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:23', '864');
INSERT INTO `edge_copy` VALUES ('161', 'java.net.SocketException: Socket is closed', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/161.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:34:31', '639');
INSERT INTO `edge_copy` VALUES ('162', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/162.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:34:39', '140');
INSERT INTO `edge_copy` VALUES ('163', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1188][258,1296]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:47', '383');
INSERT INTO `edge_copy` VALUES ('164', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'???\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:34:56', '37');
INSERT INTO `edge_copy` VALUES ('165', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/165.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:35:04', '903');
INSERT INTO `edge_copy` VALUES ('166', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:14', '167');
INSERT INTO `edge_copy` VALUES ('167', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1344][258,1452]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:22', '979');
INSERT INTO `edge_copy` VALUES ('168', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/168.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:35:30', '832');
INSERT INTO `edge_copy` VALUES ('169', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:38', '753');
INSERT INTO `edge_copy` VALUES ('170', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1500][258,1608]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:35:47', '557');
INSERT INTO `edge_copy` VALUES ('172', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:06', '139');
INSERT INTO `edge_copy` VALUES ('173', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:15', '327');
INSERT INTO `edge_copy` VALUES ('174', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:24', '635');
INSERT INTO `edge_copy` VALUES ('175', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/175.png', 'Click widget //android.widget.TextView[contains(@text,\'????\')], bounds: \'[48,1656][258,1764]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:36:33', '959');
INSERT INTO `edge_copy` VALUES ('176', 'Network compressed POST connection error: java.net.ConnectException: Connection refused', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/176.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:36:43', '142');
INSERT INTO `edge_copy` VALUES ('177', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:36:52', '377');
INSERT INTO `edge_copy` VALUES ('178', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/178.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:37:01', '734');
INSERT INTO `edge_copy` VALUES ('179', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.TextView[contains(@text,\'??\')], bounds: \'[48,1812][258,1920]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:11', '70');
INSERT INTO `edge_copy` VALUES ('180', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.ImageButton[contains(@index,\'0\')], bounds: \'[0,72][168,240]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:20', '618');
INSERT INTO `edge_copy` VALUES ('181', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/181.png', 'Click widget //android.support.v7.widget.LinearLayoutCompat[contains(@index,\'8\')], bounds: \'[0,1575][840,1719]\'', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:37:27', '90');
INSERT INTO `edge_copy` VALUES ('182', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.LinearLayout[contains(@bounds,\'[48,327][1032,519]\')]', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:36', '524');
INSERT INTO `edge_copy` VALUES ('183', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click widget //android.widget.CheckedTextView[contains(@text,\'??\')], bounds: \'[48,835][1032,979]\'', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:37:48', '711');
INSERT INTO `edge_copy` VALUES ('184', null, null, 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'Click Return button because this page has done', 'click', 'JianDou', '1', '0', '1', '2019-02-15 16:38:00', '113');
INSERT INTO `edge_copy` VALUES ('185', 'java.net.SocketException: Socket is closed', '3', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/185.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:03', '221');
INSERT INTO `edge_copy` VALUES ('186', 'DirectorySearchManager NameNotFoundException huawei.w3', '6', 'MainActivity', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png', 'Click Return button because this page has done', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:06', '682');
INSERT INTO `edge_copy` VALUES ('187', '[Connect] Failed to start set concurrent limit: ACException reason: (113) Exception: Refresh Interval cannot be less then 3600', '1', 'MainActivity', 'Launcher', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/187.png', 'Click Home button because has tried more than 3 times', 'click', 'JianDou', '2', '0', '1', '2019-02-15 16:38:10', '46');
INSERT INTO `edge_copy` VALUES ('188', null, null, 'MainActivity', 'Launcher', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/186.png', 'implicit_back_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1');
INSERT INTO `edge_copy` VALUES ('189', null, null, 'BookDetailsActivity', 'BookDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/189.png', 'implicit_power_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1');
INSERT INTO `edge_copy` VALUES ('190', null, null, 'ActorDetailsActivity', 'ActorDetailsActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/190.png', 'click', '[<com.lhr.jiandou.activity.ActorDetailsActivity$3: void onClick(android.view.View)>]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1');
INSERT INTO `edge_copy` VALUES ('191', null, null, 'Launcher', 'MainActivity', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/191.png', 'implicit_launch_event', '[]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1');
INSERT INTO `edge_copy` VALUES ('192', null, null, 'AlertDialog', 'AlertDialog', 'http://bughunter-guidance.oss-cn-beijing.aliyuncs.com/return.png', 'click', '[<de.psdev.licensesdialog.LicensesDialog$3: void onShow(android.content.DialogInterface)>]', 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', '-1');
INSERT INTO `edge_copy` VALUES ('193', null, null, 'MainActivity', 'BookDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('194', null, null, 'MainActivity', 'ActorDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('195', null, null, 'MovieDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('196', null, null, 'AlertDialog', 'MovieDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('198', null, null, 'ActorDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('199', null, null, 'AlertDialog', 'ActorDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('200', null, null, 'BookDetailsActivity', 'AlertDialog', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);
INSERT INTO `edge_copy` VALUES ('201', null, null, 'AlertDialog', 'BookDetailsActivity', null, 'Click', null, 'JianDou', '0', '0', '1', '2018-02-15 10:25:54', null);

-- ----------------------------
-- Table structure for edge_user
-- ----------------------------
DROP TABLE IF EXISTS `edge_user`;
CREATE TABLE `edge_user` (
  `id` bigint(100) unsigned NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `edge_id` int(11) default NULL,
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edge_user
-- ----------------------------
INSERT INTO `edge_user` VALUES ('1', '3', '112', '2019-05-06 18:22:50');
INSERT INTO `edge_user` VALUES ('2', '3', '105', '2019-05-06 18:24:18');
INSERT INTO `edge_user` VALUES ('3', '3', '137', '2019-05-06 18:25:25');
INSERT INTO `edge_user` VALUES ('4', '3', '190', '2019-05-06 18:27:30');
INSERT INTO `edge_user` VALUES ('5', '3', '188', '2019-05-06 18:29:23');
INSERT INTO `edge_user` VALUES ('6', '3', '189', '2019-05-06 18:32:45');
INSERT INTO `edge_user` VALUES ('7', '3', '132', '2019-05-06 18:34:52');

-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` bigint(100) unsigned NOT NULL auto_increment,
  `window` varchar(255) default NULL,
  `app_key` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `known` int(1) default '0',
  `adju_dist` bigint(255) default '1000',
  `parent` varchar(255) default NULL,
  `neighbors` tinyblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('37', 'BookDetailsActivity', 'JianDou', 'ACT', '1', '1', 'MainActivity', null);
INSERT INTO `node` VALUES ('40', 'ActorDetailsActivity', 'JianDou', 'ACT', '1', '1', 'MainActivity', null);
INSERT INTO `node` VALUES ('41', 'MainActivity', 'JianDou', 'ACT', '0', '0', null, null);
INSERT INTO `node` VALUES ('42', 'ProgressDialog', 'JianDou', 'DIALOG', '0', '1000', null, null);
INSERT INTO `node` VALUES ('45', 'SearchActivity', 'JianDou', 'ACT', '1', '0', null, null);
INSERT INTO `node` VALUES ('46', 'MovieDetailsActivity', 'JianDou', 'ACT', '1', '0', null, null);
INSERT INTO `node` VALUES ('47', 'WebViewActivity', 'JianDou', 'ACT', '1', '0', null, null);
INSERT INTO `node` VALUES ('49', 'Launcher', 'JianDou', 'LAUNCHER', '1', '1', 'MainActivity', null);
INSERT INTO `node` VALUES ('50', 'AlertDialog', 'JianDou', 'LAUNCHER', '1', '2', 'BookDetailsActivity', null);

-- ----------------------------
-- Table structure for old_app_bug_info
-- ----------------------------
DROP TABLE IF EXISTS `old_app_bug_info`;
CREATE TABLE `old_app_bug_info` (
  `old_id` int(11) NOT NULL auto_increment,
  `app_key` varchar(255) default NULL,
  `bug_describe` varchar(255) default NULL,
  `bug_id` varchar(255) default NULL,
  `c_time` datetime default NULL,
  `current` varchar(255) default NULL,
  `m_time` datetime default NULL,
  `priority` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`old_id`),
  KEY `FKgivo2vx80q6sll41yk23c13x5` (`user_id`),
  CONSTRAINT `FKgivo2vx80q6sll41yk23c13x5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of old_app_bug_info
-- ----------------------------
INSERT INTO `old_app_bug_info` VALUES ('1', 'a6291647a6de441892c7ec1b060efca9', '第一次测试', '201835615179960105', '2018-08-30 07:46:19', 'org.horaapps.leafpic.about.AboutActivity', '2018-08-30 07:46:19', '一般', '新建', '界面相关', '2');
INSERT INTO `old_app_bug_info` VALUES ('2', 'a6291647a6de441892c7ec1b060efca9', 'bug one', '201837356993727112', '2018-09-19 11:36:33', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-19 11:36:33', 'General', 'New', 'Function', '2');
INSERT INTO `old_app_bug_info` VALUES ('3', 'a6291647a6de441892c7ec1b060efca9', 'When I enter this Activity, the app crashes', '201837356993727112', '2018-09-19 11:36:33', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 07:48:07', 'General', 'New', 'Function', '2');
INSERT INTO `old_app_bug_info` VALUES ('4', 'a6291647a6de441892c7ec1b060efca9', 'bug 1', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 07:55:58', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('5', 'a6291647a6de441892c7ec1b060efca9', 'When the user enters this Activity, the app crashes', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 07:56:32', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('6', 'a6291647a6de441892c7ec1b060efca9', '1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes\n', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:41:04', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('7', 'a6291647a6de441892c7ec1b060efca9', '\n1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes\n', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:41:16', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('8', 'a6291647a6de441892c7ec1b060efca9', '\n1、When the user enters this Activity, the app crashes\n2、When the user clicks a component, the app crashes', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:41:27', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('9', 'a6291647a6de441892c7ec1b060efca9', '\n1、When users enter this Activity, the app crashes\n2、When users click a component, the app crashes', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-26 08:42:12', 'Minor', 'New', 'Layout', '2');
INSERT INTO `old_app_bug_info` VALUES ('10', 'a6291647a6de441892c7ec1b060efca9', '\n1、When users enter this Activity, the app crashes\n2、When users click a picture at this Activity , the app crashes', '201837948558366111', '2018-09-26 07:55:58', 'org.horaapps.leafpic.activities.MainActivity', '2018-09-27 03:24:26', 'Minor', 'New', 'Layout', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime default NULL,
  `email` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `pwd` varchar(255) default NULL,
  `status` int(11) NOT NULL,
  `tele_number` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2018-08-24 10:19:45', 'wzb19960208@outlook.com', 'weizb', '123456', '0', '17314899967');
INSERT INTO `user` VALUES ('2', '2018-08-29 12:14:24', '616298362@qq.com', 'lhy', '123456', '0', '13');
