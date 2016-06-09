/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : expc

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-06-09 19:23:54
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
  `text` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navitem
-- ----------------------------
INSERT INTO `navitem` VALUES ('010100', null, null, '<h2>中心简介</h2>\r\n\r\n<p>大连理工大学软件工程实验中心成立于2006年1月，由原来的软件学院信息中心和软件机房合并而成。2013年，获批辽宁省省级实验教学示范中心建设单位，2015年获得辽宁省省级虚拟仿真实验教学示范中心建设单位。</p>\r\n\r\n<p>实验中心共有专任教师17人，兼职教师65人。下设12个软件机房和10个专业基础实验室和2个大学生创新实践班，面向软件学院6个专业（方向）开设电子技术、计算机和软件工程等方向的实验课程 。共开设实验课程22门，独立开课10门，每年完成的教学工作量约为26万人时。中心建筑面积9000余平方米，实验设备总资产为2200万元，3580台套，可同时容纳1200余名学生开展实验教学活动。</p>\r\n\r\n<p>中心始终坚持以学生为本，知识传授、能力培养、素质提高、协调发展的教育理念，坚持&ldquo;以夯实基础为前提，以能力培养为核心，以综合素质提高为目标&rdquo;的指导思想指导实验教学改革与建设，立足卓越软件工程师培养目标，建设&ldquo;实验教学理念先进、实验教学体系科学、软硬件环境精良、资源开放共享、管理机制高效的国内一流精英人才培养基地&rdquo;。在软硬件环境方面制定了明确的建设方案和思路。以师资队伍建设带动整个实验教学的建设，建立以教学团队为组织形式的教师队伍，提高师资队伍的整体水平。在此基础上，全面开展实验教学改革，包括实验教学体系建设、教学内容改革、教学方法和教学手段改革、教学环境建设、信息化平台建设、MOOC共享资源建设、科学管理的制度化建设等，将中心真正建设成为环境精良、全面开放、气氛活跃、积极向上、教学科研融为一体的软件工程人才培养基地。</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>大连理工大学软件工程实验中心成立于2006年1月，由原来的软件学院信息中心和软件机房合并而成。2013年，获批辽宁省省级实验教学示范中心建设单位，2015年获得辽宁省省级虚拟仿真实验教学示范中心建设单位。</p>\r\n\r\n<p>实验中心共有专任教师17人，兼职教师65人。下设12个软件机房和10个专业基础实验室和2个大学生创新实践班，面向软件学院6个专业（方向）开设电子技术、计算机和软件工程等方向的实验课程 。共开设实验课程22门，独立开课10门，每年完成的教学工作量约为26万人时。中心建筑面积9000余平方米，实验设备总资产为2200万元，3580台套，可同时容纳1200余名学生开展实验教学活动。</p>\r\n\r\n<p>中心始终坚持以学生为本，知识传授、能力培养、素质提高、协调发展的教育理念，坚持&ldquo;以夯实基础为前提，以能力培养为核心，以综合素质提高为目标&rdquo;的指导思想指导实验教学改革与建设，立足卓越软件工程师培养目标，建设&ldquo;实验教学理念先进、实验教学体系科学、软硬件环境精良、资源开放共享、管理机制高效的国内一流精英人才培养基地&rdquo;。在软硬件环境方面制定了明确的建设方案和思路。以师资队伍建设带动整个实验教学的建设，建立以教学团队为组织形式的教师队伍，提高师资队伍的整体水平。在此基础上，全面开展实验教学改革，包括实验教学体系建设、教学内容改革、教学方法和教学手段改革、教学环境建设、信息化平台建设、MOOC共享资源建设、科学管理的制度化建设等，将中心真正建设成为环境精良、全面开放、气氛活跃、积极向上、教学科研融为一体的软件工程人才培养基地。</p>\r\n', null, null, '中心简介', '', null, null, null, '中心简介大连理工大学软件工程实验中心成立于2006年1月，由原来的软件学院信息中心和软件机房合并而成。2013年，获批辽宁省省级实验教学示范中心建设单位，2015年获得辽宁省省级虚拟仿真实验教学示范中心建设单位。实验中心共有专任教师17人，兼职教师65人。下设12个软件机房和10个专业基础实验室和2个大学生创新实践班，面向软件学院6个专业（方向）开设电子技术、计算机和软件工程等方向的实验课程 。共开设实验课程22门，独立开课10门，每年完成的教学工作量约为26万人时。中心建筑面积9000余平方米，实验设备总资产为2200万元，3580台套，可同时容纳1200余名学生开展实验教学活动。中心始终坚持以学生为本，知识传授、能力培养、素质提高、协调发展的教育理念，坚持“以夯实基础为前提，以能力培养为核心，以综合素质提高为目标”的指导思想指导实验教学改革与建设，立足卓越软件工程师培养目标，建设“实验教学理念先进、实验教学体系科学、软硬件环境精良、资源开放共享、管理机制高效的国内一流精英人才培养基地”。在软硬件环境方面制定了明确的建设方案和思路。以师资队伍建设带动整个实验教学的建设，建立以教学团队为组织形式的教师队伍，提高师资队伍的整体水平。在此基础上，全面开展实验教学改革，包括实验教学体系建设、教学内容改革、教学方法和教学手段改革、教学环境建设、信息化平台建设、MOOC共享资源建设、科学管理的制度化建设等，将中心真正建设成为环境精良、全面开放、气氛活跃、积极向上、教学科研融为一体的软件工程人才培养基地。大连理工大学软件工程实验中心成立于2006年1月，由原来的软件学院信息中心和软件机房合并而成。2013年，获批辽宁省省级实验教学示范中心建设单位，2015年获得辽宁省省级虚拟仿真实验教学示范中心建设单位。实验中心共有专任教师17人，兼职教师65人。下设12个软件机房和10个专业基础实验室和2个大学生创新实践班，面向软件学院6个专业（方向）开设电子技术、计算机和软件工程等方向的实验课程 。共开设实验课程22门，独立开课10门，每年完成的教学工作量约为26万人时。中心建筑面积9000余平方米，实验设备总资产为2200万元，3580台套，可同时容纳1200余名学生开展实验教学活动。中心始终坚持以学生为本，知识传授、能力培养、素质提高、协调发展的教育理念，坚持“以夯实基础为前提，以能力培养为核心，以综合素质提高为目标”的指导思想指导实验教学改革与建设，立足卓越软件工程师培养目标，建设“实验教学理念先进、实验教学体系科学、软硬件环境精良、资源开放共享、管理机制高效的国内一流精英人才培养基地”。在软硬件环境方面制定了明确的建设方案和思路。以师资队伍建设带动整个实验教学的建设，建立以教学团队为组织形式的教师队伍，提高师资队伍的整体水平。在此基础上，全面开展实验教学改革，包括实验教学体系建设、教学内容改革、教学方法和教学手段改革、教学环境建设、信息化平台建设、MOOC共享资源建设、科学管理的制度化建设等，将中心真正建设成为环境精良、全面开放、气氛活跃、积极向上、教学科研融为一体的软件工程人才培养基地。');
INSERT INTO `navitem` VALUES ('010200', null, null, '<h2>师资力量</h2>\r\n\r\n<p>软件工程综合实验中心目前有教师82人，其中专职教师17人，兼职教师65人。特别是在这支队伍里有多位学术水平高、教学科研实践经验丰富、热爱实验教学的学术带头人。中心队伍职称结构、知识结构、年龄结构合理，其中教授17人，副教授37人，高级工程师4人。具有博士学位的有35人，硕士学位的有39人，在读博士9人。</p>\r\n\r\n<h3>1.学校重视实验教学队伍建设，出台的各项政策有利于实验教师队伍的稳定与发展</h3>\r\n\r\n<p>学校出台的多项政策对实验教师队伍的建设起到了积极作用。实验中心实行中心主任负责制，由教育部新世纪优秀人才获得者江贺教授担任中心主任，领导中心的建设与改革。职称评定向实验教学倾斜，对实验教学系列单设正高职岗位，单独评审，吸引高水平的教师走入实验教师队伍。学校加大实验教学研究经费支持力度，已获得资助经费总额近40万元。设备经费投入制度化，保障实验设备的先进性；实验教学岗位设置合理，职责明确，有利于调动实验教师的积极性。&nbsp;</p>\r\n\r\n<h3>2.建立以教学团队为组织形式的教师队伍，带动实验教师业务水平提高</h3>\r\n\r\n<p>以理论教学团队为核心，构建理论与实验互通桥梁，以学科建设带动实验教学整体水平提高的实验教师队伍建设模式。目前，中心已建立教学团队6个，学科带头人作为教学团队的负责人，组织团队教师共同制定实验教学大纲，开展实验教学改革，进行实验教材建设等工作。近年来，获得教育部精品课程8门、校优秀课程4门，承担教学研究项目42项，承担科学研究项目52项，出版教材37本，其中实验教材10本。发表教学研究论文110篇。</p>\r\n\r\n<h3>3.建立了专职实验教师培养制度</h3>\r\n\r\n<p>加强实验技术队伍的建设，制定与理论课教师相应的教学质量考核标准，严格考核制度。对于首次上课的实验教师，实行试做试讲制度，把好实验教学的第一关。规定专职实验教师必须参加教学团队的教学研究和学术活动，提高实验教师的业务水平。减少50%的工作量为年轻教师在职攻读博士学位创造条件。目前中心有5位专职实验教师在职攻读博士学位，为今后高水平的实验教学积蓄力量。定期派送实验教师参加各类教学研讨会，技术交流会等，五年来，共派出教师100余人次参加各类实验教学研讨会和技术培训。通过多项培养措施，年轻教师迅速成长，由他们主讲的新开实验课程6门。</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, null, '师资力量', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('010300', null, null, '', null, null, '实验室简介', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('010400', null, null, '', null, null, '自我评价', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('010500', null, null, '', null, null, '发展规划', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('010600', null, null, '', null, null, '中心特色', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('010700', null, null, '', null, null, '中心视频', null, null, null, '/cVideo.jsp', null);
INSERT INTO `navitem` VALUES ('030100', null, null, '', null, null, '教学理念', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('030200', null, null, '', null, null, '实验队伍', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030301', null, null, '', null, null, '实验环境', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('030302', null, null, null, null, null, '仪器设备', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030303', null, null, '', null, null, '维护运行', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('030304', null, null, null, null, null, '环境安全', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030400', null, null, '', null, null, '实验课程', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030401', null, null, null, null, null, '基础实验课程', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030402', null, null, null, null, null, '专业实验课程', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030500', null, null, '', null, null, '开放实验', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030600', null, null, '<p>惊天今天啦啦啦啦啦了</p>\r\n', null, null, '创新班教学', '', null, null, null, null);
INSERT INTO `navitem` VALUES ('030601', null, null, null, null, null, '软件实验班', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030602', null, null, null, null, null, '嵌入式实验班', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('030700', null, null, '', null, null, '信息管理系统', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('040100', null, null, '', null, null, '教学实验', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('040200', null, null, '', null, null, '虚拟仿真实验', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050100', null, null, '', null, null, '教学成果', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050101', null, null, null, null, null, '教学获奖', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050102', null, null, null, null, null, '教学论文', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050200', null, null, '', null, null, '科研成果', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050300', null, null, '', null, null, '实验教材', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050400', null, null, '', null, null, '教改项目', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050500', null, null, '', null, null, '教学成果', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050501', null, null, null, null, null, '竞赛获奖', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050502', null, null, null, null, null, '发表论文', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050503', null, null, null, null, null, '申请专利', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050504', null, null, null, null, null, '软件著作权', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('050600', null, null, '', null, null, '创新作品', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('060100', null, null, '', null, null, '中心制度', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('060200', null, null, '', null, null, '学院制度', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('060300', null, null, '', null, null, '中心值班表', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('070100', null, null, '', null, null, '学生指南', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('070200', null, null, '', null, null, '教师指南', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('070300', null, null, '', null, null, '联系我们', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('080100', null, null, '', null, null, '文档文件', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('080200', null, null, '', null, null, '教学资源', null, null, null, null, null);
INSERT INTO `navitem` VALUES ('080300', null, null, '', null, null, '软件工具', null, null, null, null, null);

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
INSERT INTO `student` VALUES ('0000', '', '樊姐', '222');
INSERT INTO `student` VALUES ('222333', '', '邱莹莹', '565656');
INSERT INTO `student` VALUES ('langlang', '', '王伟', '888');

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
INSERT INTO `teacher` VALUES ('119LOD', '', '119LOD', '53579', '哈哈');
INSERT INTO `teacher` VALUES ('12121', '', '兰兰', '9999', '');
INSERT INTO `teacher` VALUES ('lulu', '', '小曲', '333', '333');
