/*
Navicat MySQL Data Transfer

Source Server         : student
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : sport

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-08-07 16:28:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_content` text COLLATE utf8_bin NOT NULL,
  `c_date` datetime NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for enter
-- ----------------------------
DROP TABLE IF EXISTS `enter`;
CREATE TABLE `enter` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `e_sex` varchar(255) COLLATE utf8_bin NOT NULL,
  `e_dep` varchar(255) COLLATE utf8_bin NOT NULL,
  `e_class` varchar(255) COLLATE utf8_bin NOT NULL,
  `e_date` date NOT NULL,
  `e_item` varchar(255) COLLATE utf8_bin NOT NULL,
  `e_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of enter
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_item` varchar(255) COLLATE utf8_bin NOT NULL,
  `i_num` int(11) NOT NULL,
  `i_date` datetime NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for out
-- ----------------------------
DROP TABLE IF EXISTS `out`;
CREATE TABLE `out` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `o_reason` varchar(255) COLLATE utf8_bin NOT NULL,
  `o_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `e_id` int(11) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of out
-- ----------------------------

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `r_item` varchar(255) COLLATE utf8_bin NOT NULL,
  `r_grade` varchar(255) COLLATE utf8_bin NOT NULL,
  `rank` int(11) NOT NULL,
  `r_date` datetime NOT NULL,
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of result
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `u_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `u_tel` int(11) NOT NULL,
  `u_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
