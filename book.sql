/*
 Navicat Premium Data Transfer

 Source Server         : my
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 20/10/2022 14:22:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart`  (
  `userId` int(0) NOT NULL,
  `bookId` int(0) NOT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'false',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES (2, 1, 1, 1, 'false');
INSERT INTO `tb_cart` VALUES (3, 1, 2, 2, 'false');
INSERT INTO `tb_cart` VALUES (3, 1, 2, 3, 'false');

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `userid` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '顾客名',
  `headimage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `userpwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住址',
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `cardnum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号',
  `cardtype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件类型',
  `Grade` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员等级',
  `amount` decimal(10, 0) NULL DEFAULT 0 COMMENT '购买金额',
  `Tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `freeze` int(0) NULL DEFAULT NULL COMMENT '是否冻结',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (2, 'Tom', 'aaa1', '1234561', 'beijing1', 'beijingshichaoyangqu1', '0462221', '21', '11', '11', 11, '1234561', '11@ss.com1', 1);
INSERT INTO `tb_customer` VALUES (3, 'a', 'http://localhost:9090/static/headImg/1.jpg', 'a', 'aa', 'add', 'asd', 'card', 'cardt', 'http://localhost:9090/static/level/level1.png', 7303, 'tea', 'eath', 1);

-- ----------------------------
-- Table structure for tb_infbook
-- ----------------------------
DROP TABLE IF EXISTS `tb_infbook`;
CREATE TABLE `tb_infbook`  (
  `bookid` int(0) NOT NULL AUTO_INCREMENT,
  `booknum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书号',
  `bookname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `bookconcern` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `publishtime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版日期',
  `bookprice` decimal(20, 0) NULL DEFAULT NULL COMMENT '价格',
  `infbook` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容简介',
  `infauthor` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者简介',
  `bookimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书照片',
  PRIMARY KEY (`bookid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_infbook
-- ----------------------------
INSERT INTO `tb_infbook` VALUES (1, '9780441478125e', 'The Left Hand of Darknesse', 'Ursula K. Le Guine', 'Acee', '1996-4e', 8, 'Winner of the Hugo and Nebula Awards.\r\n\r\nA groundbreaking work of science fiction, The Left Hand of Darkness tells the story of a lone human emissary to Winter, an alien world whose inhabitants can change their gender. His goal is to facilitate Winter\'s inclusion in a growing intergalactic civilization. But to do so he must bridge the gulf between his own views and those of the completely dissimilar culture that he encounters. Embracing the aspects of psychology, society, and human emotion on an alien world, The Left Hand of Darkness stands as a landmark achievement in the annals of intellectual science fiction.e', 'Ursula Kroeber Le Guin (US /ˈɜːrsələ ˈkroʊbər ləˈɡwɪn/; born October 21, 1929) is an American author of novels, children\'s books, and short stories, mainly in the genres of fantasy and science fiction. She has also written poetry and essays. First published in the 1960s, her work has often depicted futuristic or imaginary alternative worlds in politics, the natural environment, gender, religion, sexuality and ethnography.\r\n\r\nShe influenced such Booker Prize winners and other writers as Salman Rushdie and David Mitchell - and notable science fiction and fantasy writers including Neil Gaiman and Iain Banks. She has won the Hugo Award, Nebula Award, Locus Award, and World Fantasy Award, each more than once. In 2014, she was awarded the National Book Foundation Medal for Distinguished Contribution to American Letters. Le Guin has resided in Portland, Oregon since 1959.\r\n\r\nBio from Wikipedia, the free encyclopedia.e', 'http://localhost:9090/static/bookPic/LeftHand.jpg');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager`  (
  `managerid` int(0) NOT NULL AUTO_INCREMENT,
  `mng_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员名称',
  `mng_pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`managerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES (1, 'admin1', 'admin1');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `orderid` int(0) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '顾客名',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '送货地址',
  `postcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮政编码',
  `Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱地址',
  `payment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '付款方式',
  `transportmode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运送方式',
  `rebate` float(8, 0) NOT NULL COMMENT '折扣',
  `orderdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单时间',
  `Bz` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `enforce` int(0) NULL DEFAULT NULL COMMENT '标识是否被执行',
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (2, 'The Left Hand of Darknesse1', 'Tom1', 'beijing1', '1234561', '1151161171', '111@aa.com1', '101', '1231', 11, '2022-10-181', 'wu1', 11);

-- ----------------------------
-- Table structure for tb_replyvaluation
-- ----------------------------
DROP TABLE IF EXISTS `tb_replyvaluation`;
CREATE TABLE `tb_replyvaluation`  (
  `rvid` int(0) NOT NULL AUTO_INCREMENT,
  `valuationid` int(0) NOT NULL COMMENT '图书序列号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '顾客名',
  `replycontent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复信息',
  `replytime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`rvid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_replyvaluation
-- ----------------------------
INSERT INTO `tb_replyvaluation` VALUES (2, 11, '11', '11', '11');

-- ----------------------------
-- Table structure for tb_valuation
-- ----------------------------
DROP TABLE IF EXISTS `tb_valuation`;
CREATE TABLE `tb_valuation`  (
  `valuationid` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '顾客名',
  `bookname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `appraisesubject` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价主题',
  `appraisecontent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价内容',
  `appraisetime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价时间',
  `bookconcern` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价等级',
  PRIMARY KEY (`valuationid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_valuation
-- ----------------------------
INSERT INTO `tb_valuation` VALUES (2, 'q1', 'q1', '1', 'q1', 'q1', 'q1');

-- ----------------------------
-- View structure for view_cart
-- ----------------------------
DROP VIEW IF EXISTS `view_cart`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_cart` AS select `tb_cart`.`checked` AS `checked`,`tb_cart`.`id` AS `id`,`tb_customer`.`userid` AS `userid`,`tb_infbook`.`bookimage` AS `image`,`tb_infbook`.`bookname` AS `productName`,`tb_infbook`.`bookprice` AS `price`,`tb_cart`.`quantity` AS `num` from ((`tb_customer` join `tb_infbook`) join `tb_cart`) where ((`tb_customer`.`userid` = `tb_cart`.`userId`) and (`tb_infbook`.`bookid` = `tb_cart`.`bookId`));

SET FOREIGN_KEY_CHECKS = 1;
