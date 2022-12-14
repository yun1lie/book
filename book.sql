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

 Date: 20/10/2022 15:26:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `tb_customer` VALUES (3, 'a', 'http://localhost:9090/static/headImg/1.jpg', 'a', NULL, NULL, NULL, NULL, NULL, 'http://localhost:9090/static/level/level1.png', 3303, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_infbook
-- ----------------------------
DROP TABLE IF EXISTS `tb_infbook`;
CREATE TABLE `tb_infbook`  (
  `bookid` int(0) NOT NULL AUTO_INCREMENT,
  `booknum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书号',
  `bookname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `bookconcern` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `publishtime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版日期',
  `bookprice` decimal(20, 0) NULL DEFAULT NULL COMMENT '价格',
  `infbook` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容简介',
  `infauthor` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者简介',
  `bookimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书照片',
  PRIMARY KEY (`bookid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_infbook
-- ----------------------------
INSERT INTO `tb_infbook` VALUES (1, '9780441478125e', 'The Left Hand of Darknesse', 'Ursula K. Le Guine', 'Acee', '1996-4', 80, 'Winner of the Hugo and Nebula Awards.\r\n\r\nA groundbreaking work of science fiction, The Left Hand of Darkness tells the story of a lone human emissary to Winter, an alien world whose inhabitants can change their gender. His goal is to facilitate Winter\'s inclusion in a growing intergalactic civilization. But to do so he must bridge the gulf between his own views and those of the completely dissimilar culture that he encounters. Embracing the aspects of psychology, society, and human emotion on an alien world, The Left Hand of Darkness stands as a landmark achievement in the annals of intellectual science fiction.e', 'Ursula Kroeber Le Guin (US /ˈɜːrsələ ˈkroʊbər ləˈɡwɪn/; born October 21, 1929) is an American author of novels, children\'s books, and short stories, mainly in the genres of fantasy and science fiction. She has also written poetry and essays. First published in the 1960s, her work has often depicted futuristic or imaginary alternative worlds in politics, the natural environment, gender, religion, sexuality and ethnography.\r\n\r\nShe influenced such Booker Prize winners and other writers as Salman Rushdie and David Mitchell - and notable science fiction and fantasy writers including Neil Gaiman and Iain Banks. She has won the Hugo Award, Nebula Award, Locus Award, and World Fantasy Award, each more than once. In 2014, she was awarded the National Book Foundation Medal for Distinguished Contribution to American Letters. Le Guin has resided in Portland, Oregon since 1959.\r\n\r\nBio from Wikipedia, the free encyclopedia.e', 'http://localhost:9090/static/bookPic/LeftHand.jpg');
INSERT INTO `tb_infbook` VALUES (2, '9787542677761', 'The bottom billion people', 'Paul Collier', 'Ideal Republic', '2022-9', 75, 'It is common knowledge that Africa is poor. To illustrate poverty, author Paul Collier has coined the concept of the \"bottom billion,\" most of whom live in countries in sub-Saharan Africa, where socioeconomic stagnation is chronically stagnant and with no hope of improvement. In this book, Collier combines solid data and concise rationale to analyze four types of pitfalls that constrain the sustainable development of these poor countries: conflict, natural resources, deep inland and surrounded by bad neighbors, and poor governance; Whether we can properly deal with these traps will determine the future fate of the bottom billion.\r\n\r\nIt has been more than ten years since the publication of this book. According to the World Bank, nine of the bottom ten countries in the global per capita GDP in 2021 were from Africa; If you turn the clock back to 2007, when the world was written, Africa accounted for seven of the world\'s ten poorest countries. At the same time, the problems of conflict, governance, and natural resources remain unresolved, and population growth means that far more than a billion people live at the bottom – and Africa is not only poor, but getting poorer. Everything suggests that reading Collier\'s book is not only far-reaching and relevant to the world today, but also more urgent than ever.', 'Paul Collier, a renowned British economist, professor of economics and public policy at the University of Oxford, former director of the World Bank\'s development research department, and adviser to the British government, has won the Lionel Gilber Prize, the Klingner International Book Award, the Arthur Ross Book Award, and the Estoril Award for Outstanding Books in Global Affairs. He is the author of \"The Bottom Billion\", \"War, Guns and Votes\", \"The Future of Capitalism\", \"Greed is Dead\" and so on. In 2010 and 2011, he was named one of the \"Top 100 Global Thinkers\" by Foreign Policy magazine.', 'http://localhost:9090/static/bookPic/Thebottombillionpeople.jpg');
INSERT INTO `tb_infbook` VALUES (3, '9787574000131', 'Odyssey with father', 'Daniel Mendelssohn', ' Century Wenjing', '2022-9', 85, 'Mendelssohn\'s 81-year-old mathematician father sat in on his son\'s \"Odyssey\" study class for undergraduates, perusing the 12,110-line epic about \"wandering and coming home\", and then the father and son went on an \"Odyssey\" themed cruise together. In the \"Odyssey Journey\" of text and space, he is able to understand his father again and again.\r\n\r\n\"Odyssey\" is the story of the hero who has been adrift for many years and has been able to return home after thousands of hardships; It is also a childish child who grows up and gradually learns his father\'s story in the process of finding his father.\r\n\r\n\"Odyssey with Father\" juxtaposes the legendary epic of the ancient Greek hero father and son in \"The Odyssey\" with the ordinary life of contemporary father and son, and in the overlap of text and reality, the two pairs of father and son reflect each other.\r\n\r\nIn the intertwined roundabout of time and space, the story of father, son and epic slowly unfolds.', 'Daniel Mendelsohn (1960—) is an American writer, literary critic, translator, and professor of literature, and a Ph.D. in classics from Princeton University.', 'http://localhost:9090/static/bookPic/Odysseywithfather.jpg');
INSERT INTO `tb_infbook` VALUES (5, '9787533969608', 'destiny', 'Tsai Chongda', ' Guangzhou Publishing House', '2022-9', 60, 'After selling four million copies of non-fiction \"Skin\", after eight years, Cai Chongda returns with his new novel \"Destiny\"!\r\n\r\nDedicated to you who want to change your destiny: \"As long as you live, fate will not win us.\" ”', 'Tsai Chongda, writer\r\n\r\nBorn in 1982 in Dongshi Town, Quanzhou City, Fujian Province. He has published a non-fiction work \"Skin\", which has been translated into English, Russian, Korean, Portuguese and other languages, and distributed in many countries and regions around the world. \"Destiny\" is his first novel.', 'http://localhost:9090/static/bookPic/destiny.jpg');
INSERT INTO `tb_infbook` VALUES (6, '9787506365437', '\r\nalive', 'Yu Hua', 'Writers Press', '2015-11', 45, '\"Alive\" tells the tragic life experience of rural people. Fugui was originally a young master, but he was addicted to gambling, and finally gambled all his family business, and he was destitute. His father was angry with him, and his mother fell seriously ill in poverty, and Fugui went to seek medicine, but on the way was captured by the Kuomintang and taken to work as a Zhuangding. After several twists and turns, I returned home to learn that my mother had long died, and my wife\'s family had painstakingly raised two children. After that, more tragic fate befell Fugui again and again, his wife, children and grandchildren died one after another, and finally only Fugui and an old cow were left to rely on each other, but the old man was still alive, as if more free and strong than before.', 'Yu Hua, born in 1960, began writing in 1983. So far, he has published 4 novels, 6 short and medium story collections, and 4 essay collections. The main works include \"Brother\", \"Alive\", \"Xu Sanguan Selling Blood\", \"Shouting in the Drizzle\" and so on. His works have been translated into more than 20 languages and published in the United States, the United Kingdom, France, Germany, Italy, Spain, the Netherlands, Sweden, Norway, Greece, Russia, Bulgaria, Hungary, the Czech Republic, Serbia, Slovakia, Poland, Brazil, Israel, Japan, South Korea, Vietnam, Thailand and India. He is the recipient of the Grinzana Carver Literary Prize (1998), the Chevalier de l\'Ordre des Arts et des Arts et des Arts (2004), the Special Contribution Award for Chinese Books (2005), and the French International Courier Award for Foreign Fiction (2008).', 'http://localhost:9090/static/bookPic/alive.jpg');
INSERT INTO `tb_infbook` VALUES (7, '9787533936020', 'The Moon and Sixpence', 'Maugham', 'Zhejiang Literature and Art Publishing House ', '2017-5', 50, 'The banker Charles, middle-aged and successful in his career, suddenly abandoned his wife and other children and ran away from home in order to pursue his inner dream of painting. He knows that every identity of man is a kind of self-abduction, and only loss is the way to freedom. In a foreign country, he was poor and sick, but he became more and more determined and persistent in his dreams. He said: \"I have to draw, like a drowning person has to struggle.\r\n\r\nAfter experiencing all kinds of bizarre encounters, he came to an isolated island in the South Pacific, married a local girl, had children, and successfully created a series of amazing masterpieces. At this moment, he was struck down by a terminal illness and blindness, and before he died, he made a decision that shocked everyone...', 'William Somerset Maugham, English novelist and playwright, is known as the \"Holy Hand of Storytelling\". Born in Paris, his parents died before the age of ten, and he was taken back to England by his uncle to raise, because of his short stature, stuttering, he was always bullied by his peers, and his personality was withdrawn and sensitive. In the literary world, Maugham was an elegant, sophisticated, aloof observer of human nature, and almost everyone could see himself in his stories, which made Maugham one of the most sought-after writers of the twentieth century.', 'http://localhost:9090/static/bookPic/moon.jpg');
INSERT INTO `tb_infbook` VALUES (8, '9787544766500', 'Kill a mockingbird', 'Harper Lee', 'Yilin Translation Publishing House', '2017-2', 35, 'To Kill a Mockingbird is recognized as a classic of American literature, but its significance in the field of education has made it break through national boundaries and become one of the most famous initiation stories in the world. \"Kill a Mockingbird\" has a great influence in the western world. It is a required reading list for American primary and secondary schools, the most frequently borrowed books in the library, and the favorite books of British teenagers. In the latest poll, it even overtook the Bible and became the \"most enlightening book\".', 'Harper Lee was born in Monroeville, Alabama in 1926. He studied in a local school as a child, and then studied law at the University of Alabama. He was a close friend with the famous writer Truman Capote when he was young. Deere in To Kill a Mockingbird is based on him.', 'http://localhost:9090/static/bookPic/kill.jpg');
INSERT INTO `tb_infbook` VALUES (9, '9787544754644', 'The Dream of Red Mansion', 'Cao Xueqin', 'People\'s Literature Publishing House', '1735-1744', 60, 'A Dream of Red Mansions, one of the four masterpieces of ancient China, is also the peak of ancient Chinese novels. The book centers on the daily life of Rongguo Mansion, focuses on the love and marriage tragedies of Baoyu, Daiyu and Baochai, and the trifles in the Grand View Garden, and shows the decline of the family and society in the feudal era with the hidden line of the history of the four noble families of Jinling, namely, Jia, Shi, Wang and Xue, from prosperity to decline.', 'Cao Xueqin (from May 28, 1715 to February 12, 1763), the author of the Chinese classic Dream of Red Mansions', 'http://localhost:9090/static/bookPic/hlm.jpg');
INSERT INTO `tb_infbook` VALUES (10, '9787302566625', 'Use JavaScript to become immortal', 'Yang Yifei', 'tsinghua university press', '2018-8', 46, 'This is a technical book about JavaScript programming language, but it adopts a new writing method. If you are tired of thick, dictionary like programming books, you might as well try a new taste! Through this book, you can understand the seven key scripts of JavaScript functions; Through this book, you can easily learn to use jQuery to operate DOM objects; Through this book, you can learn the current popular Vue basic grammar; Through this book, you can also learn the latest ES6 common grammar. This book can be used as an interesting reading material for beginners of JavaScript.', 'Yang Yifei, a bachelor, graduated from Jincheng College of Nanjing University of Aeronautics and Astronautics, and worked in IT industry for many years after graduation. I am familiar with Java Web, JavaScript, and SQL language, especially the front-end technology. He once worked in a listed software company, involving IT finance, government software and other fields. Love to share knowledge. I have written a lot of technical blogs in Jane Book and Blog Park. The tutorials are clear, profound and simple, and friendly to beginners.', 'http://localhost:9090/static/bookPic/java.jpg');

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
