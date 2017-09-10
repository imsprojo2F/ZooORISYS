/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : zooori

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-12-28 21:55:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `zan_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'test01', '123456', '8');
INSERT INTO `admin` VALUES ('2', 'test02', '123456', '5');
INSERT INTO `admin` VALUES ('3', 'test03', '236456', '6');
INSERT INTO `admin` VALUES ('4', 'test04', '123456', '2');

-- ----------------------------
-- Table structure for `ip_list`
-- ----------------------------
DROP TABLE IF EXISTS `ip_list`;
CREATE TABLE `ip_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `ip` varchar(25) DEFAULT NULL COMMENT '用户ip地址',
  `datetime` datetime DEFAULT NULL,
  `isvalid` int(2) NOT NULL DEFAULT '0' COMMENT '是否生效 0 失效 1 生效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ip_list
-- ----------------------------
INSERT INTO `ip_list` VALUES ('11', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('13', '4', '127.0.0.1', '2016-12-15 16:10:24', '0');
INSERT INTO `ip_list` VALUES ('25', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('26', '3', '127.0.0.1', '2016-12-22 12:28:38', '1');
INSERT INTO `ip_list` VALUES ('27', '4', '127.0.0.1', '2016-12-15 16:10:24', '0');
INSERT INTO `ip_list` VALUES ('29', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('31', '4', '127.0.0.1', '2016-12-15 16:10:24', '0');
INSERT INTO `ip_list` VALUES ('33', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('35', '4', '127.0.0.1', '2016-12-15 16:10:24', '0');
INSERT INTO `ip_list` VALUES ('37', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('39', '4', '127.0.0.1', '2016-12-16 09:46:40', '0');
INSERT INTO `ip_list` VALUES ('45', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('46', '3', '127.0.0.1', '2016-12-22 12:28:38', '1');
INSERT INTO `ip_list` VALUES ('47', '4', '127.0.0.1', '2016-12-20 16:18:55', '0');
INSERT INTO `ip_list` VALUES ('52', '1', '127.0.0.1', '2016-12-26 11:02:36', '1');
INSERT INTO `ip_list` VALUES ('53', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('54', '3', '127.0.0.1', '2016-12-22 12:28:38', '1');
INSERT INTO `ip_list` VALUES ('55', '4', '127.0.0.1', '2016-12-22 11:53:26', '0');
INSERT INTO `ip_list` VALUES ('56', '1', '127.0.0.1', '2016-12-26 11:02:36', '1');
INSERT INTO `ip_list` VALUES ('57', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('58', '3', '127.0.0.1', '2016-12-23 15:39:04', '0');
INSERT INTO `ip_list` VALUES ('59', '4', '127.0.0.1', '2016-12-23 15:39:04', '0');
INSERT INTO `ip_list` VALUES ('60', '1', '127.0.0.1', '2016-12-26 11:02:36', '1');
INSERT INTO `ip_list` VALUES ('61', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('62', '3', '127.0.0.1', '2016-12-26 11:02:21', '0');
INSERT INTO `ip_list` VALUES ('63', '4', '127.0.0.1', '2016-12-26 11:02:21', '0');
INSERT INTO `ip_list` VALUES ('64', '1', '127.0.0.1', '2016-12-27 09:26:55', '0');
INSERT INTO `ip_list` VALUES ('65', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('66', '3', '127.0.0.1', '2016-12-27 09:26:55', '0');
INSERT INTO `ip_list` VALUES ('67', '4', '127.0.0.1', '2016-12-27 09:26:55', '0');
INSERT INTO `ip_list` VALUES ('68', '1', '127.0.0.1', '2016-12-28 09:31:28', '0');
INSERT INTO `ip_list` VALUES ('69', '2', '127.0.0.1', '2016-12-28 20:45:42', '1');
INSERT INTO `ip_list` VALUES ('70', '3', '127.0.0.1', '2016-12-28 09:31:28', '0');
INSERT INTO `ip_list` VALUES ('71', '4', '127.0.0.1', '2016-12-28 09:31:28', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(25) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(25) DEFAULT NULL COMMENT '密码',
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(4) DEFAULT '' COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `age` int(4) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(55) DEFAULT NULL COMMENT '手机号',
  `mail` varchar(55) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(55) DEFAULT '' COMMENT '地址',
  `avatar` varchar(55) DEFAULT NULL COMMENT '头像存储路径',
  `sign_from` int(4) DEFAULT NULL COMMENT '注册方式 0前端注册 1后台添加',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `login_count` int(11) DEFAULT '0' COMMENT '登录次数',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
