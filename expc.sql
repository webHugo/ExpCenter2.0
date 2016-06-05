/*
Navicat MySQL Data Transfer

Source Server         : minic
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : expc

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-06-03 18:17:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', '', null, 'a');
INSERT INTO `admin` VALUES ('b', null, null, null);
INSERT INTO `admin` VALUES ('c', null, null, null);

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(255) DEFAULT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `_content` varchar(255) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  `imgUri` varchar(255) DEFAULT NULL,
  `keyWords` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `refSource` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rollLevel` int(11) NOT NULL,
  `stickieLevel` int(11) NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `_time` datetime DEFAULT NULL,
  `_title` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of board
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `fileDir` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tId` int(11) NOT NULL,
  PRIMARY KEY (`fileDir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for navgroup
-- ----------------------------
DROP TABLE IF EXISTS `navgroup`;
CREATE TABLE `navgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navgroup
-- ----------------------------

-- ----------------------------
-- Table structure for navitem
-- ----------------------------
DROP TABLE IF EXISTS `navitem`;
CREATE TABLE `navitem` (
  `id` char(255) NOT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `_content` mediumtext,
  `createPerson` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `reqUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navitem
-- ----------------------------
INSERT INTO `navitem` VALUES ('010100', null, null, '<p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>\r\n          <img src=\"images/news.png\">\r\n          <p>\r\n            5月7日下午，“第六届榜样大工”颁奖典礼于山上礼堂召开。\r\n            青年校友成就奖钟英武，31岁，北京趣加科技有限公司（FunPlus）首席执行官和联合创始人。软件学院2006届毕业生，2007年获得美国Maharishi大学计算机硕士学位。先后担任贝尔实验室搜索工程师、RockYou公司技术产品总监、TheGameNet.com公司技术及产品副总裁。早在2007年就已致力于社交应用程序和游戏的研发，2010年5月创办FunPlus（北京趣加科技有限公司），目前是Facebook上排名前6的游戏开发商，手机游戏方面在欧洲处于领先位置，在中东地区排名第一，支持完全本地化的12种语言，拥有超过20个国家的员工。经过A、B两轮融资，FunPlus总的融资金额超过8700万美元。目前，世纪华通以人民币69.39亿元拟收购Funplus旗下点点互动100%股权。\r\n            </p>\r\n            <h2>（一）榜样大工团队成员之一</h2>\r\n            <h3>1.1榜样大工团队之二</h3>\r\n            <p>\r\n            榜样大工社会实践奖获奖人顾银，现任软件学院团委副书记及大连市青年义工服务中心大学分委会主席。实践经验丰富，敢为人先，共获得包括4个国家级奖项在内的38个奖项，组织和参与各类实践活动80余次，其中寒暑假社会实践11次。担任多项社会工作，认真负责，职务包括校外NGO助理、级队委、班委、副会长、副部长、班导生等。他积极引领实践，服务同学，曾参与组建多个精品团队如橙梦先锋、橙梦企航、求索行、创业先锋、甘露支教等团队，均取得优异成绩。 \r\n            </p>\r\n            <p>\r\n            榜样大工创业先锋奖“茵迪维德科技”团队，创建于2015年5月。茵迪维德科技团队是一支拥有多项独立知识产权的大学生创业团队，利用计算机技术为患者提供个性化定制最适合的假体模型服务，团队指导老师为刘斌老师。本着以赛代练的原则，团队积极参加各类大型创新创业比赛，获得首届中国“互联网+”大学生创新创业大赛全国铜奖，省级金奖；获第四届中国创新创业大赛暨第三届辽宁创新创业大赛团队组第一名，并入围全国20强；获第十七届高交会“创客之夜”大型路演全国三等奖。\r\n            </p>\r\n            <p>\r\n            “榜样大工”每年评选一次，象征大工最高荣誉，旨在深入挖掘我校大学生锐意进取、拼搏向上的先进事迹，引导大学生向榜样学习，树立敢于有梦、勇于追梦、勤于圆梦的精神。我院长期以来，致力于培养在校生动手实践，勇于创新的品质，大力鼓励学生参加社会实践、参加创新创业，力图将学生培养为全面发展、求真求实的新时代人才。此次我院顾银同学、“茵迪维德科技”团队获此殊荣，是学校对我院社会实践工作和科创工作的极大支持与肯定。希望我院学子能以此为契机发奋努力，不负青春，有梦、追梦、圆梦。 \r\n          </p>', null, null, '中心简介', '', null, null, null);
INSERT INTO `navitem` VALUES ('010200', null, null, '', null, null, '师资力量', null, null, null, null);
INSERT INTO `navitem` VALUES ('010300', null, null, '', null, null, '实验室简介', null, null, null, null);
INSERT INTO `navitem` VALUES ('010400', null, null, '', null, null, '自我评价', null, null, null, null);
INSERT INTO `navitem` VALUES ('010500', null, null, '', null, null, '发展规划', null, null, null, null);
INSERT INTO `navitem` VALUES ('010600', null, null, '', null, null, '中心特色', null, null, null, null);
INSERT INTO `navitem` VALUES ('010700', null, null, '', null, null, '中心视频', null, null, null, '/cVideo.jsp');
INSERT INTO `navitem` VALUES ('030100', null, null, '', null, null, '教学理念', null, null, null, null);
INSERT INTO `navitem` VALUES ('030200', null, null, '', null, null, '实验队伍', null, null, null, null);
INSERT INTO `navitem` VALUES ('030301', null, null, '', null, null, '实验环境', null, null, null, null);
INSERT INTO `navitem` VALUES ('030302', null, null, null, null, null, '仪器设备', null, null, null, null);
INSERT INTO `navitem` VALUES ('030303', null, null, null, null, null, '维护运行', null, null, null, null);
INSERT INTO `navitem` VALUES ('030304', null, null, null, null, null, '环境安全', null, null, null, null);
INSERT INTO `navitem` VALUES ('030400', null, null, '', null, null, '实验课程', null, null, null, null);
INSERT INTO `navitem` VALUES ('030401', null, null, null, null, null, '基础实验课程', null, null, null, null);
INSERT INTO `navitem` VALUES ('030402', null, null, null, null, null, '专业实验课程', null, null, null, null);
INSERT INTO `navitem` VALUES ('030500', null, null, '', null, null, '开放实验', null, null, null, null);
INSERT INTO `navitem` VALUES ('030600', null, null, '<p>惊天今天啦啦啦啦啦了</p>\r\n', null, null, '创新班教学', '', null, null, null);
INSERT INTO `navitem` VALUES ('030601', null, null, null, null, null, '软件实验班', null, null, null, null);
INSERT INTO `navitem` VALUES ('030602', null, null, null, null, null, '嵌入式实验班', null, null, null, null);
INSERT INTO `navitem` VALUES ('030700', null, null, '', null, null, '信息管理系统', null, null, null, null);
INSERT INTO `navitem` VALUES ('040100', null, null, '', null, null, '教学实验', null, null, null, null);
INSERT INTO `navitem` VALUES ('040200', null, null, '', null, null, '虚拟仿真实验', null, null, null, null);
INSERT INTO `navitem` VALUES ('050100', null, null, '', null, null, '教学成果', null, null, null, null);
INSERT INTO `navitem` VALUES ('050101', null, null, null, null, null, '教学获奖', null, null, null, null);
INSERT INTO `navitem` VALUES ('050102', null, null, null, null, null, '教学论文', null, null, null, null);
INSERT INTO `navitem` VALUES ('050200', null, null, '', null, null, '科研成果', null, null, null, null);
INSERT INTO `navitem` VALUES ('050300', null, null, '', null, null, '实验教材', null, null, null, null);
INSERT INTO `navitem` VALUES ('050400', null, null, '', null, null, '教改项目', null, null, null, null);
INSERT INTO `navitem` VALUES ('050500', null, null, '', null, null, '教学成果', null, null, null, null);
INSERT INTO `navitem` VALUES ('050501', null, null, null, null, null, '竞赛获奖', null, null, null, null);
INSERT INTO `navitem` VALUES ('050502', null, null, null, null, null, '发表论文', null, null, null, null);
INSERT INTO `navitem` VALUES ('050503', null, null, null, null, null, '申请专利', null, null, null, null);
INSERT INTO `navitem` VALUES ('050504', null, null, null, null, null, '软件著作权', null, null, null, null);
INSERT INTO `navitem` VALUES ('050600', null, null, '', null, null, '创新作品', null, null, null, null);
INSERT INTO `navitem` VALUES ('060100', null, null, '', null, null, '中心制度', null, null, null, null);
INSERT INTO `navitem` VALUES ('060200', null, null, '', null, null, '学院制度', null, null, null, null);
INSERT INTO `navitem` VALUES ('060300', null, null, '', null, null, '中心值班表', null, null, null, null);
INSERT INTO `navitem` VALUES ('070100', null, null, '', null, null, '学生指南', null, null, null, null);
INSERT INTO `navitem` VALUES ('070200', null, null, '', null, null, '教师指南', null, null, null, null);
INSERT INTO `navitem` VALUES ('070300', null, null, '', null, null, '联系我们', null, null, null, null);
INSERT INTO `navitem` VALUES ('080100', null, null, '', null, null, '文档文件', null, null, null, null);
INSERT INTO `navitem` VALUES ('080200', null, null, '', null, null, '教学资源', null, null, null, null);
INSERT INTO `navitem` VALUES ('080300', null, null, '', null, null, '软件工具', null, null, null, null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_content` longtext,
  `publishRole` int(11) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `_time` datetime DEFAULT NULL,
  `_title` varchar(255) DEFAULT NULL,
  `cate` varchar(255) DEFAULT NULL,
  `checkPerson` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL,
  `imgUri` varchar(255) DEFAULT NULL,
  `keyWords` varchar(255) DEFAULT NULL,
  `refSource` varchar(255) DEFAULT NULL,
  `rollLevel` int(11) NOT NULL,
  `stickieLevel` int(11) NOT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `updatePerson` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '李丽丽', '2016-05-16 21:48:11', '15级线性代数与解析几何上机安排', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('2', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '李白', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('3', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('4', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('5', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('6', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('7', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('8', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('9', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('10', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('11', ' <p>\r\n            我校举行的“第六届榜样大工”颁奖典礼，用来宣传表彰我校优秀校友和大学生先进典型，共有13名校友（校友团队）和16名个人及团队获得表彰。其中，我院钟英武校友、顾银同学、“茵迪维德科技”团队分别获得青年校友成就奖、社会实践奖和创业先锋奖。\r\n          </p>', '1', '杜甫', '2016-05-16 21:48:11', '我中心获批国家虚拟仿真实验', null, null, null, null, null, null, null, '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
