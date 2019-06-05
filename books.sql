/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2019-06-05 08:01:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `lend_num` int(11) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123', '赵某', '123', '123456@163.com', '18800000000', '1', '0', '3');
INSERT INTO `admin` VALUES ('2', '123456', '管理员', '123456', '123457@163.com', '17800000000', '2', '13', '13');
INSERT INTO `admin` VALUES ('4', '456', '张三', '456', '123458@163.com', '15500000000', '1', '30', '5');
INSERT INTO `admin` VALUES ('5', '543', '李斯', '5', '123459@163.com', '13800000000', '1', '5', '5');
INSERT INTO `admin` VALUES ('6', '789', '王五', '789', '789@163.com', '12300000000', '1', '60', '3');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(205) NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 NOT NULL,
  `autho` varchar(205) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `press` varchar(205) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `ISBN` (`card`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('4', 'java核心技术', '3', '凯S.霍斯特曼', '1', '机械工业出版社', '技术');
INSERT INTO `book` VALUES ('2', '机器学习', '5', '周志华', '0', '清华大学出版社', '技术');
INSERT INTO `book` VALUES ('3', '数据结构', '6', '4', '0', '机械工业出版社', '技术');
INSERT INTO `book` VALUES ('5', '四世同堂', '9', '老舍', '0', '东方出版中心', '文学');
INSERT INTO `book` VALUES ('6', '邦查女孩', '2', '甘耀明', '1', '文化发展出版社', '文学');

-- ----------------------------
-- Table structure for `booktype`
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES ('1', '技术');
INSERT INTO `booktype` VALUES ('2', '文学');
INSERT INTO `booktype` VALUES ('4', '考试');

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `card` char(255) DEFAULT NULL,
  `bookname` char(255) DEFAULT NULL,
  `adminname` char(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `begintime` char(255) DEFAULT NULL,
  `endtime` char(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('36', '1', '4', '3', 'java核心技术', '123', '赵某', '2019-06-04', '2019-06-04', '0');
INSERT INTO `history` VALUES ('37', '1', '2', '5', '机器学习', '123', '赵某', '2019-03-04', '2019-05-04', '1');
INSERT INTO `history` VALUES ('38', '1', '3', '6', '数据结构', '123', '赵某', '2019-03-04', '2019-05-04', '1');
INSERT INTO `history` VALUES ('39', '1', '5', '9', '四世同堂', '123', '赵某', '2019-06-04', '2019-08-04', '1');
