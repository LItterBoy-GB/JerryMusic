/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-04-25 11:50:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `music_id` int(11) NOT NULL,
  `time` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `time` varchar(13) NOT NULL,
  `new` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `singer` varchar(30) NOT NULL,
  `time` varchar(13) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('2', '一半', '薛之谦', '2018-4-3', 'yiban.mp3', '1');
INSERT INTO `music` VALUES ('3', '成全', '林宥嘉', '2018-4-3', 'chengquan.mp3', '1');
INSERT INTO `music` VALUES ('4', '棠梨煎雪', '慕寒', '2018-4-3', 'tangli.mp3', '2');
INSERT INTO `music` VALUES ('5', '落霞云归', '慕寒', '2018-4-3', 'luoxia.mp3', '1');
INSERT INTO `music` VALUES ('6', '敢Roleplay', '鹿晗', '2018-4-3', 'gan.mp3', '3');
INSERT INTO `music` VALUES ('7', '浮生未歇', '音频怪物', '2018-4-3', 'fusheng.mp3', '2');
INSERT INTO `music` VALUES ('8', '喜欢喜欢', 'exo', '2018-4-3', 'xihuan.mp3', '3');
INSERT INTO `music` VALUES ('9', '红装', '徐良', '2018-04-24', '红装.mp3', '4');
INSERT INTO `music` VALUES ('11', '红装', '徐良', '2018-04-24', '红装 (1).mp3', '1');

-- ----------------------------
-- Table structure for `musicbox`
-- ----------------------------
DROP TABLE IF EXISTS `musicbox`;
CREATE TABLE `musicbox` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `songid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicbox
-- ----------------------------

-- ----------------------------
-- Table structure for `tip`
-- ----------------------------
DROP TABLE IF EXISTS `tip`;
CREATE TABLE `tip` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tip
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `music_box` varchar(1000) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jerry', 'zeila666', '空', '女', '疯兔子');
INSERT INTO `user` VALUES ('2', '123', '123', '空', '女', 'exo');
INSERT INTO `user` VALUES ('3', '321', '321', '空', '女', '203');
INSERT INTO `user` VALUES ('4', '456', '456', '空', '男', '傻子');
INSERT INTO `user` VALUES ('6', 'dfghg', '123456', '空', '男', '梦梦');
