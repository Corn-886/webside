/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : webside

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-11-27 14:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_activityname` varchar(64) DEFAULT NULL,
  `a_participation` int(16) DEFAULT NULL,
  `a_startDate` datetime DEFAULT NULL,
  `a_endDate` datetime DEFAULT NULL,
  `a_leader` varchar(64) DEFAULT NULL,
  `a_remark` varchar(255) DEFAULT NULL,
  `a_shareflag` varchar(2) DEFAULT NULL,
  `v_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `v_idtovid` (`v_id`),
  CONSTRAINT `v_idtovid` FOREIGN KEY (`v_id`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES ('1', 'q', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_activitydetail
-- ----------------------------
DROP TABLE IF EXISTS `tb_activitydetail`;
CREATE TABLE `tb_activitydetail` (
  `a_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `a_detail_type` varchar(2) DEFAULT NULL,
  `a_detail_file` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_activitydetail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(16) NOT NULL,
  `d_introduce` text,
  `v_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`),
  KEY `dep_vill` (`v_id`),
  CONSTRAINT `dep_vill` FOREIGN KEY (`v_id`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('1', '2', '3', '3');
INSERT INTO `tb_department` VALUES ('2', '', null, null);
INSERT INTO `tb_department` VALUES ('3', '', null, null);
INSERT INTO `tb_department` VALUES ('4', '123', '123', null);
INSERT INTO `tb_department` VALUES ('5', '133', '123', null);
INSERT INTO `tb_department` VALUES ('6', '123', '123', null);
INSERT INTO `tb_department` VALUES ('7', '123', '123', null);

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_createDate` datetime DEFAULT NULL,
  `f_createPersion` varchar(64) DEFAULT NULL,
  `f_url` varchar(64) NOT NULL,
  `f_size` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_file
-- ----------------------------

-- ----------------------------
-- Table structure for tb_login_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_info`;
CREATE TABLE `tb_login_info` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `u_account_name` varchar(255) DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_login_info
-- ----------------------------
INSERT INTO `tb_login_info` VALUES ('1', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-29 20:28:38');
INSERT INTO `tb_login_info` VALUES ('2', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-29 21:27:08');
INSERT INTO `tb_login_info` VALUES ('3', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-30 10:35:46');
INSERT INTO `tb_login_info` VALUES ('4', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-30 10:48:16');
INSERT INTO `tb_login_info` VALUES ('5', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-30 11:26:03');
INSERT INTO `tb_login_info` VALUES ('6', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-30 11:31:51');
INSERT INTO `tb_login_info` VALUES ('7', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-30 11:44:03');
INSERT INTO `tb_login_info` VALUES ('8', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-31 21:08:12');
INSERT INTO `tb_login_info` VALUES ('9', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-31 21:51:52');
INSERT INTO `tb_login_info` VALUES ('10', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-31 21:53:28');
INSERT INTO `tb_login_info` VALUES ('11', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-31 22:11:30');
INSERT INTO `tb_login_info` VALUES ('12', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-08-31 22:21:34');
INSERT INTO `tb_login_info` VALUES ('13', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 10:48:28');
INSERT INTO `tb_login_info` VALUES ('14', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 14:03:37');
INSERT INTO `tb_login_info` VALUES ('15', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 14:05:30');
INSERT INTO `tb_login_info` VALUES ('16', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 17:31:27');
INSERT INTO `tb_login_info` VALUES ('17', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 17:33:27');
INSERT INTO `tb_login_info` VALUES ('18', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 17:36:24');
INSERT INTO `tb_login_info` VALUES ('19', '4', 'admin@webside.com', '127.0.0.1', '2016-09-01 17:45:58');
INSERT INTO `tb_login_info` VALUES ('20', '23', '123@qq.com', '0:0:0:0:0:0:0:1', '2016-09-01 17:51:02');
INSERT INTO `tb_login_info` VALUES ('21', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 17:52:24');
INSERT INTO `tb_login_info` VALUES ('22', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 18:00:07');
INSERT INTO `tb_login_info` VALUES ('23', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 18:07:12');
INSERT INTO `tb_login_info` VALUES ('24', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 19:14:57');
INSERT INTO `tb_login_info` VALUES ('25', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 19:20:15');
INSERT INTO `tb_login_info` VALUES ('26', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 19:24:21');
INSERT INTO `tb_login_info` VALUES ('27', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 23:34:07');
INSERT INTO `tb_login_info` VALUES ('28', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 23:56:02');
INSERT INTO `tb_login_info` VALUES ('29', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-01 23:59:42');
INSERT INTO `tb_login_info` VALUES ('30', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 00:03:28');
INSERT INTO `tb_login_info` VALUES ('31', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 00:05:26');
INSERT INTO `tb_login_info` VALUES ('32', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 00:18:44');
INSERT INTO `tb_login_info` VALUES ('33', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 00:29:05');
INSERT INTO `tb_login_info` VALUES ('34', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 10:41:55');
INSERT INTO `tb_login_info` VALUES ('35', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 10:54:27');
INSERT INTO `tb_login_info` VALUES ('36', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 11:30:16');
INSERT INTO `tb_login_info` VALUES ('37', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 11:38:46');
INSERT INTO `tb_login_info` VALUES ('38', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-02 12:02:54');
INSERT INTO `tb_login_info` VALUES ('39', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-04 10:41:51');
INSERT INTO `tb_login_info` VALUES ('40', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-04 11:38:37');
INSERT INTO `tb_login_info` VALUES ('41', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-04 11:44:13');
INSERT INTO `tb_login_info` VALUES ('42', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-04 11:49:09');
INSERT INTO `tb_login_info` VALUES ('43', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-04 14:00:19');
INSERT INTO `tb_login_info` VALUES ('44', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-06 11:52:10');
INSERT INTO `tb_login_info` VALUES ('45', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-06 13:44:00');
INSERT INTO `tb_login_info` VALUES ('46', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-06 21:05:15');
INSERT INTO `tb_login_info` VALUES ('47', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-09 15:43:57');
INSERT INTO `tb_login_info` VALUES ('48', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-09 16:17:11');
INSERT INTO `tb_login_info` VALUES ('49', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-09 16:18:43');
INSERT INTO `tb_login_info` VALUES ('50', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-23 10:28:25');
INSERT INTO `tb_login_info` VALUES ('51', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-09-27 12:06:04');
INSERT INTO `tb_login_info` VALUES ('52', '4', 'admin@webside.com', '10.20.54.243', '2016-09-27 12:09:22');
INSERT INTO `tb_login_info` VALUES ('53', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-08 20:02:57');
INSERT INTO `tb_login_info` VALUES ('54', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-08 20:06:55');
INSERT INTO `tb_login_info` VALUES ('55', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-08 20:10:06');
INSERT INTO `tb_login_info` VALUES ('56', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-08 21:38:40');
INSERT INTO `tb_login_info` VALUES ('57', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 10:42:51');
INSERT INTO `tb_login_info` VALUES ('58', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 10:53:35');
INSERT INTO `tb_login_info` VALUES ('59', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:00:33');
INSERT INTO `tb_login_info` VALUES ('60', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:05:53');
INSERT INTO `tb_login_info` VALUES ('61', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:17:25');
INSERT INTO `tb_login_info` VALUES ('62', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:23:28');
INSERT INTO `tb_login_info` VALUES ('63', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:26:45');
INSERT INTO `tb_login_info` VALUES ('64', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 11:40:43');
INSERT INTO `tb_login_info` VALUES ('65', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 12:03:46');
INSERT INTO `tb_login_info` VALUES ('66', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 12:07:48');
INSERT INTO `tb_login_info` VALUES ('67', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 12:10:11');
INSERT INTO `tb_login_info` VALUES ('68', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 12:11:47');
INSERT INTO `tb_login_info` VALUES ('69', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 17:35:45');
INSERT INTO `tb_login_info` VALUES ('70', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 17:42:11');
INSERT INTO `tb_login_info` VALUES ('71', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 17:48:41');
INSERT INTO `tb_login_info` VALUES ('72', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 17:52:46');
INSERT INTO `tb_login_info` VALUES ('73', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 17:56:24');
INSERT INTO `tb_login_info` VALUES ('74', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 18:02:25');
INSERT INTO `tb_login_info` VALUES ('75', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 18:06:12');
INSERT INTO `tb_login_info` VALUES ('76', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 18:08:34');
INSERT INTO `tb_login_info` VALUES ('77', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-09 23:53:11');
INSERT INTO `tb_login_info` VALUES ('78', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 09:21:30');
INSERT INTO `tb_login_info` VALUES ('79', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 10:05:04');
INSERT INTO `tb_login_info` VALUES ('80', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 21:49:21');
INSERT INTO `tb_login_info` VALUES ('81', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:11:12');
INSERT INTO `tb_login_info` VALUES ('82', '26', '123@qq.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:12:09');
INSERT INTO `tb_login_info` VALUES ('83', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:33:04');
INSERT INTO `tb_login_info` VALUES ('84', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:51:36');
INSERT INTO `tb_login_info` VALUES ('85', '26', '123@qq.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:52:21');
INSERT INTO `tb_login_info` VALUES ('86', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-12 22:58:21');
INSERT INTO `tb_login_info` VALUES ('87', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-13 00:04:08');
INSERT INTO `tb_login_info` VALUES ('88', '26', '123@qq.com', '0:0:0:0:0:0:0:1', '2016-10-13 00:08:59');
INSERT INTO `tb_login_info` VALUES ('89', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-13 10:56:14');
INSERT INTO `tb_login_info` VALUES ('90', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 09:24:37');
INSERT INTO `tb_login_info` VALUES ('91', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 09:48:07');
INSERT INTO `tb_login_info` VALUES ('92', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 09:56:38');
INSERT INTO `tb_login_info` VALUES ('93', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 09:58:31');
INSERT INTO `tb_login_info` VALUES ('94', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 10:03:56');
INSERT INTO `tb_login_info` VALUES ('95', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-17 10:06:09');
INSERT INTO `tb_login_info` VALUES ('96', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 16:37:09');
INSERT INTO `tb_login_info` VALUES ('97', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 16:46:04');
INSERT INTO `tb_login_info` VALUES ('98', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 16:47:53');
INSERT INTO `tb_login_info` VALUES ('99', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 17:00:24');
INSERT INTO `tb_login_info` VALUES ('100', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 17:07:30');
INSERT INTO `tb_login_info` VALUES ('101', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 21:51:07');
INSERT INTO `tb_login_info` VALUES ('102', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 22:01:36');
INSERT INTO `tb_login_info` VALUES ('103', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-18 22:34:56');
INSERT INTO `tb_login_info` VALUES ('104', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-20 22:11:38');
INSERT INTO `tb_login_info` VALUES ('105', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-20 22:12:07');
INSERT INTO `tb_login_info` VALUES ('106', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 18:32:21');
INSERT INTO `tb_login_info` VALUES ('107', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 22:37:07');
INSERT INTO `tb_login_info` VALUES ('108', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 22:37:24');
INSERT INTO `tb_login_info` VALUES ('109', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 22:43:15');
INSERT INTO `tb_login_info` VALUES ('110', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 23:10:26');
INSERT INTO `tb_login_info` VALUES ('111', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-24 23:59:06');
INSERT INTO `tb_login_info` VALUES ('112', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-25 00:35:07');
INSERT INTO `tb_login_info` VALUES ('113', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-31 00:28:00');
INSERT INTO `tb_login_info` VALUES ('114', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-31 00:29:38');
INSERT INTO `tb_login_info` VALUES ('115', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-31 00:32:48');
INSERT INTO `tb_login_info` VALUES ('116', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-10-31 00:41:22');
INSERT INTO `tb_login_info` VALUES ('117', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-03 10:34:51');
INSERT INTO `tb_login_info` VALUES ('118', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-03 12:17:54');
INSERT INTO `tb_login_info` VALUES ('119', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 10:47:46');
INSERT INTO `tb_login_info` VALUES ('120', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 11:47:53');
INSERT INTO `tb_login_info` VALUES ('121', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 14:38:27');
INSERT INTO `tb_login_info` VALUES ('122', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:09:07');
INSERT INTO `tb_login_info` VALUES ('123', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:15:47');
INSERT INTO `tb_login_info` VALUES ('124', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:21:36');
INSERT INTO `tb_login_info` VALUES ('125', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:35:52');
INSERT INTO `tb_login_info` VALUES ('126', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:43:34');
INSERT INTO `tb_login_info` VALUES ('127', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 15:56:26');
INSERT INTO `tb_login_info` VALUES ('128', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 16:00:04');
INSERT INTO `tb_login_info` VALUES ('129', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 16:03:44');
INSERT INTO `tb_login_info` VALUES ('130', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 16:35:51');
INSERT INTO `tb_login_info` VALUES ('131', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-22 16:40:02');
INSERT INTO `tb_login_info` VALUES ('132', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-24 16:58:49');
INSERT INTO `tb_login_info` VALUES ('133', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 09:09:10');
INSERT INTO `tb_login_info` VALUES ('134', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 12:11:04');
INSERT INTO `tb_login_info` VALUES ('135', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 12:11:29');
INSERT INTO `tb_login_info` VALUES ('136', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 14:30:53');
INSERT INTO `tb_login_info` VALUES ('137', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 14:38:20');
INSERT INTO `tb_login_info` VALUES ('138', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 14:39:30');
INSERT INTO `tb_login_info` VALUES ('139', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 14:43:20');
INSERT INTO `tb_login_info` VALUES ('140', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 14:44:40');
INSERT INTO `tb_login_info` VALUES ('141', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:00:45');
INSERT INTO `tb_login_info` VALUES ('142', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:06:39');
INSERT INTO `tb_login_info` VALUES ('143', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:11:40');
INSERT INTO `tb_login_info` VALUES ('144', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:37:14');
INSERT INTO `tb_login_info` VALUES ('145', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:39:26');
INSERT INTO `tb_login_info` VALUES ('146', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 15:41:28');
INSERT INTO `tb_login_info` VALUES ('147', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 16:01:46');
INSERT INTO `tb_login_info` VALUES ('148', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 16:51:47');
INSERT INTO `tb_login_info` VALUES ('149', '4', 'admin@webside.com', '0:0:0:0:0:0:0:1', '2016-11-25 16:54:11');

-- ----------------------------
-- Table structure for tb_log_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_log_info`;
CREATE TABLE `tb_log_info` (
  `l_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `u_id` bigint(20) NOT NULL,
  `l_account_name` varchar(100) DEFAULT NULL,
  `l_operation` varchar(255) DEFAULT NULL COMMENT '用户所做的操作',
  `l_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `l_create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_num` varchar(16) DEFAULT NULL,
  `m_name` varchar(16) NOT NULL,
  `m_sex` int(2) DEFAULT NULL,
  `m_QQ` varchar(16) DEFAULT NULL,
  `m_entrDate` date DEFAULT NULL,
  `m_vill` varchar(16) DEFAULT NULL,
  `m_school` varchar(32) DEFAULT NULL,
  `m_major` varchar(32) DEFAULT NULL,
  `m_garDate` date DEFAULT NULL,
  `m_eduSYStime` int(2) DEFAULT NULL,
  `m_iniDate` date DEFAULT NULL,
  `m_phone` varchar(32) DEFAULT NULL,
  `m_adress` varchar(64) DEFAULT NULL,
  `m_special` varchar(64) DEFAULT NULL,
  `m_vid` int(11) NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `fk_member_vill` (`m_vid`),
  CONSTRAINT `fk_member_vill` FOREIGN KEY (`m_vid`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('1', '1', '1ww', null, '', '2016-10-19', '2w', 'w', '', null, null, null, 'w', '', '', '3');
INSERT INTO `tb_member` VALUES ('3', '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, '4');
INSERT INTO `tb_member` VALUES ('7', '12', '23', '1', '', null, '123', '123', '', null, null, null, '123', '', '', '3');
INSERT INTO `tb_member` VALUES ('8', '123', 'qwe', '1', 'qwe', null, 'qwe', 'qwe', 'qwe', null, '3', '2016-05-06', 'sdf', '', '', '3');
INSERT INTO `tb_member` VALUES ('9', '123', '123', '1', '123', '2016-09-28', '123', '123', '123', '2016-10-29', '3', '2016-10-27', '123', '123', '123', '3');

-- ----------------------------
-- Table structure for tb_position
-- ----------------------------
DROP TABLE IF EXISTS `tb_position`;
CREATE TABLE `tb_position` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(32) NOT NULL,
  `p_vid` int(11) DEFAULT NULL,
  `p_introduce` text,
  PRIMARY KEY (`p_id`),
  KEY `poidtovid` (`p_vid`),
  CONSTRAINT `poidtovid` FOREIGN KEY (`p_vid`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_position
-- ----------------------------
INSERT INTO `tb_position` VALUES ('1', 'qe', null, 'qew');

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `s_parent_id` int(11) DEFAULT NULL COMMENT '资源父id',
  `s_name` varchar(100) NOT NULL COMMENT '资源名称',
  `s_source_key` varchar(100) NOT NULL COMMENT '资源唯一标识',
  `s_type` int(11) NOT NULL COMMENT '资源类型,0:目录;1:菜单;2:按钮',
  `s_source_url` varchar(500) DEFAULT NULL COMMENT '资源url',
  `s_level` int(11) DEFAULT NULL COMMENT '层级',
  `s_icon` varchar(100) DEFAULT '' COMMENT '图标',
  `s_is_hide` int(11) DEFAULT '0' COMMENT '是否隐藏',
  `s_description` varchar(100) DEFAULT NULL COMMENT '描述',
  `s_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `s_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', null, '控制台', 'desktop', '0', '/welcome.jsp', '1', 'fa fa-tachometer', '0', '控制台', '2016-01-12 17:08:55', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('2', null, '系统基础管理', 'system', '0', '', '1', 'fa fa-list', '0', '系统基础管理', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('3', '2', '用户管理', 'system:user', '0', '/user/listUI.html', '2', '', '0', '用户管理', '2016-01-08 12:37:10', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('4', '2', '角色管理', 'system:role', '0', '/role/listUI.html', '2', '', '0', '角色管理', '2016-01-11 22:51:07', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('5', '2', '资源管理', 'system:resource', '0', '/resource/listUI.html', '2', '', '0', '资源管理', '2016-01-11 22:51:55', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('6', null, '系统监控管理', 'monitor', '0', '', '1', 'fa fa-pencil-square-o', '0', '系统监控管理', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('7', '6', 'Sirona监控', 'monitor:sirona', '0', '/sirona', '2', '', '0', 'Sirona监控', '2016-01-05 12:11:12', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('8', '6', 'Druid监控', 'monitor:druid', '0', '/druid', '2', '', '0', 'Druid监控', '2016-01-11 22:45:27', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('9', null, '日志信息管理', 'logininfo', '0', '', '1', 'fa fa-tag', '0', '日志信息管理', '2016-01-11 22:46:39', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('10', '9', '用户登录信息', 'logininfo:userLogin', '0', '/loginInfo/listUI.html', '2', '', '0', '用户登录信息', '2016-01-11 22:47:41', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('11', '3', '添加', 'user:add', '1', '/user/add.html', '3', '', '0', '添加用户', '2016-01-22 00:18:40', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('12', '3', '编辑', 'user:edit', '1', '/user/edit.html', '3', '', '0', '编辑用户', '2016-01-22 00:18:40', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('13', '3', '删除', 'user:deleteBatch', '1', '/user/deleteBatch.html', null, null, '0', '删除用户', '2016-02-05 15:26:32', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('14', '3', '重置密码', 'user:resetPassword', '1', '/user/resetPassword.html', null, null, '0', '重置密码', '2016-02-27 23:55:13', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('15', '4', '添加', 'role:add', '1', '/role/add.html', null, null, '0', '添加', '2016-02-27 23:56:52', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('16', '4', '编辑', 'role:edit', '1', '/role/edit.html', null, null, '0', '编辑', '2016-02-27 23:57:35', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('17', '4', '删除', 'role:deleteBatch', '1', '/role/deleteBatch.html ', null, null, '0', '删除', '2016-02-27 23:58:02', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('18', '4', '分配权限', 'role:permission', '1', '/role/permission.html', null, null, '0', '分配权限', '2016-02-27 23:59:20', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('19', '5', '添加', 'resource:add', '1', '/resource/add.html', null, null, '0', '添加', '2016-02-28 00:01:15', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('20', '5', '编辑', 'resource:edit', '1', '/resource/edit.html', null, null, '0', '编辑', '2016-02-28 00:02:01', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('21', '5', '删除', 'resource:deleteBatch', '1', '/resource/deleteBatch.html', null, null, '0', '删除', '2016-02-28 00:03:03', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('22', '9', '用户操作信息', 'loginfo:userOperation', '0', '/logInfo/listUI.html', null, '', '0', '用户操作信息', '2016-03-08 22:00:36', '2016-02-25 14:07:48');
INSERT INTO `tb_resource` VALUES ('23', null, '村居/组织管理', 'village', '0', '', null, 'fa  fa-institution', '0', '', '2016-08-29 21:28:19', '2016-09-06 21:57:36');
INSERT INTO `tb_resource` VALUES ('24', '23', '组织列表', 'village:list', '0', '/village/listUI.html', null, null, '0', '所有组织列表信息', '2016-09-02 10:52:30', '2016-09-02 11:29:40');
INSERT INTO `tb_resource` VALUES ('25', '23', '添加', 'village:add', '1', '/village/add.html', null, '', '0', '添加村居信息', '2016-09-02 11:35:05', '2016-09-02 11:35:12');
INSERT INTO `tb_resource` VALUES ('26', '23', '修改', 'village:edit', '1', '/village/edit.html', null, '', '0', '修改组织信息', '2016-09-02 11:36:26', '2016-09-02 11:36:29');
INSERT INTO `tb_resource` VALUES ('27', '23', '删除', 'village:deleteBatch', '1', '/village/deleteBatch.html', null, '', '0', '删除组织信息', '2016-09-02 11:38:04', '2016-09-02 11:38:17');
INSERT INTO `tb_resource` VALUES ('28', null, '会员信息管理', 'member', '0', '', null, 'fa  fa-male', '0', '会员信息管理', '2016-09-06 21:56:04', '2016-10-08 20:10:39');
INSERT INTO `tb_resource` VALUES ('29', '28', '会员信息', 'member:list', '0', '/member/listUI.html', null, '', '0', '管理会员信息', '2016-09-06 22:05:28', '2016-10-08 20:10:45');
INSERT INTO `tb_resource` VALUES ('30', '28', '添加', 'member:add', '1', '/member/add.html', null, '', '0', '添加会员信息', '2016-09-09 16:08:31', '2016-09-09 16:08:36');
INSERT INTO `tb_resource` VALUES ('31', '28', '修改', 'member:edit', '1', '/member/edit.html', null, '', '0', '修改会员信息', '2016-09-09 16:10:12', '2016-09-09 16:10:15');
INSERT INTO `tb_resource` VALUES ('32', '28', '删除', 'member:deleteBatch', '1', '/member/deleteBatch.html', null, '', '0', '删除会员信息', '2016-09-09 16:11:06', '2016-09-09 16:11:10');
INSERT INTO `tb_resource` VALUES ('33', '28', '批量导入', 'member:excuteBatch', '1', '/member/excuteBatch.html', null, '', '0', '批量导入会员信息', '2016-09-09 16:13:38', '2016-09-09 16:13:41');
INSERT INTO `tb_resource` VALUES ('35', '28', '高级搜索', 'member:search', '0', '/member/search.html', null, '', '0', '会员信息高级搜索', '2016-09-09 16:21:06', '2016-09-09 16:21:33');
INSERT INTO `tb_resource` VALUES ('36', null, '部门管理', 'department', '0', '', null, 'fa  fa-users', '0', '部门内部管理，包括职称，干事管理', '2016-10-24 22:13:17', '2016-10-24 22:40:19');
INSERT INTO `tb_resource` VALUES ('37', '36', '部门设置', 'department:list', '0', '/department/listUI.html', null, '', '0', '部门信息', '2016-10-24 22:15:31', '2016-10-24 22:44:54');
INSERT INTO `tb_resource` VALUES ('38', '36', '添加', 'department:add ', '1', '/department/add.html', null, '', '0', '添加部门', '2016-10-24 22:16:57', '2016-10-24 22:16:58');
INSERT INTO `tb_resource` VALUES ('39', '36', '删除', 'department:deleteBatch', '1', '/department/deleteBatch.html', null, '', '0', '删除部门', '2016-10-24 22:18:09', '2016-10-24 22:18:12');
INSERT INTO `tb_resource` VALUES ('40', '36', '修改', 'department:edit', '1', '/department/edit.html', null, '', '0', '修改部门', '2016-10-24 22:19:04', '2016-10-24 22:19:06');
INSERT INTO `tb_resource` VALUES ('41', '36', '职位设置', 'position', '0', '/position/listUI.html', null, '', '0', '职称管理', '2016-10-24 22:20:42', '2016-10-24 22:45:35');
INSERT INTO `tb_resource` VALUES ('42', '41', '添加', 'position:add', '1', '/position/add.html', null, '', '0', '添加职称', '2016-10-24 22:22:06', '2016-10-24 22:44:23');
INSERT INTO `tb_resource` VALUES ('43', '41', '删除', 'position:deleteBatch', '1', '/position/deleteBatch.html', null, '', '0', '删除职称', '2016-10-24 22:23:18', '2016-10-24 22:23:20');
INSERT INTO `tb_resource` VALUES ('44', '41', '修改', 'position:edit', '1', '/position/edit.html', null, '', '0', '编辑职称', '2016-10-24 22:24:16', '2016-10-24 22:24:18');
INSERT INTO `tb_resource` VALUES ('45', '36', '干事信息管理', 'secretary', '0', '/secretary/listUI.html', null, '', '0', '干事管理', '2016-10-24 22:25:43', '2016-10-24 22:45:18');
INSERT INTO `tb_resource` VALUES ('46', '45', '添加', 'secretary:add', '1', '/secretary/add.html', null, '', '0', '添加干事', '2016-10-24 22:33:12', '2016-10-24 22:33:14');
INSERT INTO `tb_resource` VALUES ('47', '45', '删除', 'secretary:deleteBatch', '1', '/secretary/deleteBatch.html', null, '', '0', '删除干事', '2016-10-24 22:35:29', '2016-10-24 22:35:32');
INSERT INTO `tb_resource` VALUES ('48', '45', '修改', 'secretary:edit', '1', '/secretary/edit.html', null, '', '0', '编辑干事', '2016-10-24 22:36:27', '2016-10-24 22:36:29');
INSERT INTO `tb_resource` VALUES ('49', null, '活动管理', 'activity', '0', '', null, 'fa  fa-futbol-o', '0', '活动详情', '2016-11-25 11:26:41', '2016-11-25 14:34:00');
INSERT INTO `tb_resource` VALUES ('50', '49', '新建活动', 'activity:add', '1', '/activity/add.html', null, '', '0', '增加活动', '2016-11-25 11:37:28', '2016-11-25 11:49:38');
INSERT INTO `tb_resource` VALUES ('51', '50', '删除活动', 'activity:deleteBatch', '1', '/activity/deleteBatch.html', null, '', '0', '删除活动', '2016-11-25 11:49:17', '2016-11-25 11:50:41');
INSERT INTO `tb_resource` VALUES ('52', '50', '编辑活动', 'activity:edit', '1', '/activity/edit.html', null, '', '0', '编辑活动', '2016-11-25 11:51:54', '2016-11-25 11:51:56');
INSERT INTO `tb_resource` VALUES ('53', '49', '活动管理', 'activity:list', '0', '/activity/listUI.html', null, '', '0', '活动管理', '2016-11-25 14:35:43', '2016-11-25 14:40:25');
INSERT INTO `tb_resource` VALUES ('54', '49', '活动明细', 'activitydetail', '0', '/activitydetail/listUI.html', null, '', '0', '活动明细', '2016-11-25 17:03:42', '2016-11-25 17:03:43');

-- ----------------------------
-- Table structure for tb_resources_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_resources_role`;
CREATE TABLE `tb_resources_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL COMMENT '资源id',
  `r_id` int(11) DEFAULT NULL COMMENT '角色id',
  `t_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_r_resource_role` (`s_id`),
  KEY `FK_r_role_resource` (`r_id`),
  CONSTRAINT `FK_r_resource_role` FOREIGN KEY (`s_id`) REFERENCES `tb_resource` (`s_id`),
  CONSTRAINT `FK_r_role_resource` FOREIGN KEY (`r_id`) REFERENCES `tb_role` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8 COMMENT='角色权限映射表';

-- ----------------------------
-- Records of tb_resources_role
-- ----------------------------
INSERT INTO `tb_resources_role` VALUES ('173', '1', '3', '2016-02-28 17:11:47');
INSERT INTO `tb_resources_role` VALUES ('342', '3', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('343', '2', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('344', '9', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('345', '23', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('346', '28', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('347', '36', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('348', '41', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('349', '45', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('350', '1', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('351', '11', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('352', '12', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('353', '13', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('354', '14', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('355', '10', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('356', '22', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('357', '24', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('358', '25', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('359', '26', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('360', '27', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('361', '29', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('362', '30', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('363', '31', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('364', '32', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('365', '33', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('366', '35', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('367', '37', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('368', '38', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('369', '39', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('370', '40', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('371', '42', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('372', '43', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('373', '44', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('374', '46', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('375', '47', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('376', '48', '2', '2016-10-24 22:42:16');
INSERT INTO `tb_resources_role` VALUES ('527', '3', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('528', '2', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('529', '4', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('530', '5', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('531', '6', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('532', '9', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('533', '23', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('534', '28', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('535', '36', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('536', '41', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('537', '45', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('538', '50', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('539', '49', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('540', '1', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('541', '11', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('542', '12', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('543', '13', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('544', '14', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('545', '15', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('546', '16', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('547', '17', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('548', '18', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('549', '19', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('550', '20', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('551', '21', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('552', '7', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('553', '8', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('554', '10', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('555', '22', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('556', '24', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('557', '25', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('558', '26', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('559', '27', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('560', '29', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('561', '30', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('562', '31', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('563', '32', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('564', '33', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('565', '35', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('566', '37', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('567', '38', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('568', '39', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('569', '40', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('570', '42', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('571', '43', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('572', '44', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('573', '46', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('574', '47', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('575', '48', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('576', '51', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('577', '52', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('578', '53', '1', '2016-11-25 17:04:05');
INSERT INTO `tb_resources_role` VALUES ('579', '54', '1', '2016-11-25 17:04:05');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `r_name` varchar(50) NOT NULL COMMENT '角色名称',
  `r_key` varchar(50) NOT NULL COMMENT '角色key',
  `r_status` int(11) DEFAULT '0' COMMENT '角色状态,0：正常；1：删除',
  `r_description` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `r_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `r_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', 'administrator', '0', '超级管理员', '2016-01-05 12:07:42', '2016-02-27 22:30:15');
INSERT INTO `tb_role` VALUES ('2', '管理员', 'admin', '0', '管理员', '2016-01-05 12:07:42', '2016-02-27 22:30:22');
INSERT INTO `tb_role` VALUES ('3', '普通用户', 'customer', '0', '普通用户', '2016-02-28 17:09:40', '2016-03-08 22:55:36');

-- ----------------------------
-- Table structure for tb_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_user`;
CREATE TABLE `tb_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL COMMENT '角色id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `t_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_r_role_user` (`r_id`),
  KEY `FK_r_user_role` (`u_id`),
  CONSTRAINT `FK_r_role_user` FOREIGN KEY (`r_id`) REFERENCES `tb_role` (`r_id`),
  CONSTRAINT `FK_r_user_role` FOREIGN KEY (`u_id`) REFERENCES `tb_user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户角色映射表';

-- ----------------------------
-- Records of tb_role_user
-- ----------------------------
INSERT INTO `tb_role_user` VALUES ('1', '1', '4', '2016-01-05 12:07:15');
INSERT INTO `tb_role_user` VALUES ('5', '2', '9', '2016-02-28 17:40:08');
INSERT INTO `tb_role_user` VALUES ('6', '3', '10', '2016-02-28 20:10:05');
INSERT INTO `tb_role_user` VALUES ('12', '3', '16', '2016-04-01 16:50:45');
INSERT INTO `tb_role_user` VALUES ('20', '3', '24', '2016-09-04 11:11:26');
INSERT INTO `tb_role_user` VALUES ('21', '2', '25', '2016-09-04 11:44:30');

-- ----------------------------
-- Table structure for tb_secretary
-- ----------------------------
DROP TABLE IF EXISTS `tb_secretary`;
CREATE TABLE `tb_secretary` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(16) DEFAULT NULL,
  `s_vill` varchar(16) DEFAULT NULL,
  `s_sex` int(2) DEFAULT NULL,
  `s_birthday` date DEFAULT NULL,
  `s_political` varchar(16) DEFAULT NULL,
  `s_school` varchar(32) DEFAULT NULL,
  `s_grade` varchar(16) DEFAULT NULL,
  `s_major` varchar(16) DEFAULT NULL,
  `s_qq` varchar(32) DEFAULT NULL,
  `s_email` varchar(32) DEFAULT NULL,
  `s_picurl` varchar(64) DEFAULT NULL,
  `s_phone` varchar(32) DEFAULT NULL,
  `s_landline` varchar(32) DEFAULT NULL,
  `s_address` varchar(32) DEFAULT NULL,
  `s_experience` text,
  `d_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `v_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `sid_vid` (`v_id`),
  KEY `sdid_ddid` (`d_id`),
  KEY `sid_pid` (`p_id`),
  CONSTRAINT `sdid_ddid` FOREIGN KEY (`d_id`) REFERENCES `tb_department` (`d_id`),
  CONSTRAINT `sid_pid` FOREIGN KEY (`p_id`) REFERENCES `tb_position` (`p_id`),
  CONSTRAINT `sid_vid` FOREIGN KEY (`v_id`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_secretary
-- ----------------------------
INSERT INTO `tb_secretary` VALUES ('1', 'q', 'e', '1', '1995-01-04', '1', 'qe', 'qwe', 'qwe', 'qwe', 'sad', null, 'asd', 'asd', 'asd', 'asd', '1', '1', null);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_name` varchar(100) NOT NULL COMMENT '真实姓名',
  `u_account_name` varchar(100) NOT NULL COMMENT '账户名称',
  `u_password` varchar(100) NOT NULL COMMENT '用户密码',
  `u_delete_status` int(11) DEFAULT '0' COMMENT '逻辑删除状态',
  `u_locked` int(11) DEFAULT '0' COMMENT '是否锁定',
  `u_description` varchar(200) DEFAULT NULL COMMENT '用户描述',
  `u_credentials_salt` varchar(500) NOT NULL COMMENT '加密盐',
  `u_creator_name` varchar(100) NOT NULL COMMENT '创建者',
  `u_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `u_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_account_name_unique` (`u_account_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='用户账户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'admin', 'admin@webside.com', 'VaNoSnm8zZFL6eIckR9nkQ==', '0', '0', '超级管理员', '6b8c008bd7d242f1b60d713f8e3b7422', 'admin', '2016-02-15 17:17:26', '2016-02-25 14:07:48');
INSERT INTO `tb_user` VALUES ('9', '管理员', '254813870@qq.com', 'UcsN9eTNVUpNuWqA4FZ9Ng==', '0', '0', ' 管理员', '563f0ff44bbd15b70daec5355701f363', 'admin', '2016-02-28 17:39:31', '2016-02-25 14:07:48');
INSERT INTO `tb_user` VALUES ('10', '普通用户', '381543724@qq.com', 'zqLDpU33V6HHO2PbLOpOUA==', '0', '0', '普通用户', '499e7f3582d0fa5f6e17826df39df3d9', 'admin', '2016-02-28 20:10:05', '2016-02-25 14:07:48');
INSERT INTO `tb_user` VALUES ('16', '1050428834', '1050428834@qq.com', 'HAA8lx6IVfupjgQgvrblLg==', '0', '0', null, '7644c95d2359c991da8abafdc4f8317a', '1050428834', '2016-04-01 16:50:45', '2016-02-25 14:07:48');
INSERT INTO `tb_user` VALUES ('24', '123123', 'admin@webside.com12', 'Z2nDZbLZ0ab8ygnsNDTLcQ==', '0', '0', '123123', '89583da26dabdaed67de6b8ad27463f4', 'admin@webside.com', '2016-09-04 11:11:27', '2016-09-04 11:11:26');
INSERT INTO `tb_user` VALUES ('25', '123123', 'admin@webside.com123', 'af0nV9cWnOySZEu7cdMfYQ==', '0', '0', '123123', 'aaf49ce26df5cd3bee69e7665ba48cb6', 'admin@webside.com', '2016-09-04 11:44:30', '2016-09-04 11:44:30');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info` (
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `u_sex` int(11) DEFAULT NULL COMMENT '性别',
  `u_birthday` date DEFAULT NULL COMMENT '出生日期',
  `u_telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `u_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `u_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `u_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `u_village_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  KEY `FK_r_user_info_village` (`u_village_id`),
  CONSTRAINT `FK_r_user_info` FOREIGN KEY (`u_id`) REFERENCES `tb_user` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_r_user_info_village` FOREIGN KEY (`u_village_id`) REFERENCES `tb_village` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户扩展信息表';

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES ('4', '2', '2016-02-10', '15361427685', 'admin@webside.com', '江苏省无锡市国家软件园', '2016-02-18 16:43:28', '3');
INSERT INTO `tb_user_info` VALUES ('9', null, null, null, null, null, null, null);
INSERT INTO `tb_user_info` VALUES ('10', null, null, null, null, null, null, null);
INSERT INTO `tb_user_info` VALUES ('16', null, null, null, null, null, null, null);
INSERT INTO `tb_user_info` VALUES ('24', null, null, null, null, null, null, '3');
INSERT INTO `tb_user_info` VALUES ('25', null, null, null, null, null, null, '4');

-- ----------------------------
-- Table structure for tb_village
-- ----------------------------
DROP TABLE IF EXISTS `tb_village`;
CREATE TABLE `tb_village` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(16) DEFAULT NULL,
  `v_phone` varchar(32) DEFAULT NULL,
  `v_address` varchar(32) DEFAULT NULL,
  `v_desc` text,
  `v_logo` varchar(255) DEFAULT NULL,
  `v_create_time` datetime DEFAULT NULL,
  `v_inuse_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_village
-- ----------------------------
INSERT INTO `tb_village` VALUES ('3', '名称', '电话', '地址', '描述', 'logo', '2016-08-30 11:56:44', '1');
INSERT INTO `tb_village` VALUES ('4', '名称', '电话', '地址', '描述', 'logo', '2016-08-30 11:56:46', '1');
INSERT INTO `tb_village` VALUES ('8', '名称', '电话', '地址', '描述', 'logo', '2016-08-31 21:51:57', '1');
INSERT INTO `tb_village` VALUES ('9', '名称', '电话', '地址', '描述', 'logo', '2016-09-01 17:49:02', '1');
INSERT INTO `tb_village` VALUES ('10', '123', '123', '123', '123', null, '2016-09-06 21:09:39', '1');
INSERT INTO `tb_village` VALUES ('11', 'sb苏裕茗', '123', '123', '123', null, '2016-10-13 00:04:49', null);
