/*
Navicat MySQL Data Transfer

Source Server         : Field
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : field

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-10 16:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apply_course`
-- ----------------------------
DROP TABLE IF EXISTS `apply_course`;
CREATE TABLE `apply_course` (
  `id` int(11) NOT NULL,
  `apply_info` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply_course
-- ----------------------------
INSERT INTO `apply_course` VALUES ('5179', '我是刘旭东', '5177', '-1', '15130140362');
INSERT INTO `apply_course` VALUES ('5180', '我是丁琪', '5177', '-1', '15130140368');
INSERT INTO `apply_course` VALUES ('5191', '丁琪', '5189', '-1', '15130140368');
INSERT INTO `apply_course` VALUES ('5192', '刘旭东', '5189', '-1', '15130140362');
INSERT INTO `apply_course` VALUES ('5216', '我叫刘旭东申请加入您的课程', '123', '-1', '5211');

-- ----------------------------
-- Table structure for `class_and_question`
-- ----------------------------
DROP TABLE IF EXISTS `class_and_question`;
CREATE TABLE `class_and_question` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_and_question
-- ----------------------------
INSERT INTO `class_and_question` VALUES ('5184', '5177', '5183');
INSERT INTO `class_and_question` VALUES ('5200', '5189', '5199');

-- ----------------------------
-- Table structure for `class_and_stutents`
-- ----------------------------
DROP TABLE IF EXISTS `class_and_stutents`;
CREATE TABLE `class_and_stutents` (
  `id` int(255) NOT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `stutents_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_and_stutents
-- ----------------------------
INSERT INTO `class_and_stutents` VALUES ('5178', '5177', '152');
INSERT INTO `class_and_stutents` VALUES ('5194', '5189', '15130140362');
INSERT INTO `class_and_stutents` VALUES ('5182', '5177', '15130140368');
INSERT INTO `class_and_stutents` VALUES ('5190', '5189', '152');
INSERT INTO `class_and_stutents` VALUES ('5193', '5189', '15130140368');
INSERT INTO `class_and_stutents` VALUES ('5217', '123', '5211');
INSERT INTO `class_and_stutents` VALUES ('5195', '5177', '15130140362');

-- ----------------------------
-- Table structure for `class_info`
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('5110', 'cloud', '云计算', '158');
INSERT INTO `class_info` VALUES ('123', 'WENG', 'web工程', '152');
INSERT INTO `class_info` VALUES ('5177', 'SA_!', '软件体系结构', '152');
INSERT INTO `class_info` VALUES ('5189', 'TY_1', '体育', '152');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('5219');
INSERT INTO `hibernate_sequence` VALUES ('5219');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageid` int(20) NOT NULL,
  `questionid` int(20) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `own` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('5097', '5118', '阿斯顿', '2018-6-23  9:54', 'lxd');
INSERT INTO `message` VALUES ('5098', '5118', '阿斯顿', '2018-6-23  9:54', 'qq');
INSERT INTO `message` VALUES ('5099', '5118', '你好', '2018-6-23  9:58', 'qq');
INSERT INTO `message` VALUES ('5101', '5118', '使用zookeeper配置kafka\n', '2018-6-23  11:11', 'lxd');
INSERT INTO `message` VALUES ('5102', '5118', '嗯嗯', '2018-6-23  11:21', 'qq');
INSERT INTO `message` VALUES ('5103', '5118', '这个是kafka的', '2018-6-23  11:21', 'qq');
INSERT INTO `message` VALUES ('5104', '5118', '这个是hadoop', '2018-6-23  11:29', 'qq');
INSERT INTO `message` VALUES ('5105', '5118', '不是kafka的', '2018-6-23  11:29', 'lxd');
INSERT INTO `message` VALUES ('5111', '5118', '在', '2018-7-5  9:57', 'lxd');
INSERT INTO `message` VALUES ('5120', '5118', '你好', '2018-7-8 21:53', 'lxd');
INSERT INTO `message` VALUES ('5121', '5118', '这个问题好难\n', '2018-7-8 21:55', 'lxd');
INSERT INTO `message` VALUES ('5122', '5118', '啊', '2018-7-8 21:55', 'lxd');
INSERT INTO `message` VALUES ('5123', '5118', '大苏打', '2018-7-8 21:59', 'lxd');
INSERT INTO `message` VALUES ('5124', '5118', '前面你问神魔', '2018-7-8 22:0', 'lxd');
INSERT INTO `message` VALUES ('5125', '5118', '啊', '2018-7-8 22:1', 'qq');
INSERT INTO `message` VALUES ('5126', '5118', '；\n12121', '2018-7-8 22:2', 'qq');
INSERT INTO `message` VALUES ('5127', '5118', '你收到消息了吗', '2018-7-8 22:12', 'lxd');
INSERT INTO `message` VALUES ('5128', '5118', '收到了\n', '2018-7-8 22:14', 'qq');
INSERT INTO `message` VALUES ('5129', '5118', '嗯嗯', '2018-7-8 22:14', 'lxd');
INSERT INTO `message` VALUES ('5132', '5130', '我用了一个小时', '2018-7-8 22:17', 'lxd');
INSERT INTO `message` VALUES ('5133', '5130', '撒旦', '2018-7-8 22:18', 'qhy');
INSERT INTO `message` VALUES ('5134', '5130', '啊哈哈', '2018-7-8 22:18', 'lxd');
INSERT INTO `message` VALUES ('5135', '5130', '阿三', '2018-7-8 22:19', 'qhy');
INSERT INTO `message` VALUES ('5138', '5136', '嗯嗯', '2018-7-8 22:23', 'qhy');
INSERT INTO `message` VALUES ('5139', '5136', '啊', '2018-7-8 22:23', 'lxd');
INSERT INTO `message` VALUES ('5140', '5136', '你好', '2018-7-8 22:33', 'qhy');
INSERT INTO `message` VALUES ('5143', '5141', '阿斯顿', '2018-7-8 22:35', 'lxd');
INSERT INTO `message` VALUES ('5144', '5141', '撒旦', '2018-7-8 22:35', 'lxd');
INSERT INTO `message` VALUES ('5145', '5141', '阿斯顿', '2018-7-8 22:35', 'qhy');
INSERT INTO `message` VALUES ('5148', '5146', '你知道不', '2018-7-8 22:38', 'lxd');
INSERT INTO `message` VALUES ('5149', '5130', 'spark\n', '2018-7-8 23:18', 'lxd');
INSERT INTO `message` VALUES ('5150', '5141', '阿斯顿', '2018-7-8 23:36', 'qhy');
INSERT INTO `message` VALUES ('5151', '5146', '撒旦', '2018-7-8 23:36', 'lxd');
INSERT INTO `message` VALUES ('5152', '5141', 'asd ', '2018-7-9 0:53', 'lxd');
INSERT INTO `message` VALUES ('5153', '5141', 'asd ', '2018-7-9 0:53', 'qhy');
INSERT INTO `message` VALUES ('5172', '5168', '我是丁琪，我知道', '2018-7-9 14:29', '15130140368');
INSERT INTO `message` VALUES ('5175', '5173', '我是丁琪我知道', '2018-7-9 14:31', '15130140368');
INSERT INTO `message` VALUES ('5176', '5173', '我是老师', '2018-7-9 14:33', 'lxd');
INSERT INTO `message` VALUES ('5185', '5183', '我不知道', '2018-7-9 14:49', '15130140368');
INSERT INTO `message` VALUES ('5186', '5183', '我知道', '2018-7-9 14:50', '15130140362');
INSERT INTO `message` VALUES ('5187', '5183', '我是老师我说了算', '2018-7-9 14:53', 'lxd');
INSERT INTO `message` VALUES ('5188', '5183', '好吧', '2018-7-9 14:54', '15130140368');
INSERT INTO `message` VALUES ('5197', '5195', '你们好', '2018-7-9 15:4', 'lxd');
INSERT INTO `message` VALUES ('5198', '5195', '老师您好\n', '2018-7-9 15:4', '15130140362');
INSERT INTO `message` VALUES ('5201', '5199', '100mi ', '2018-7-9 15:5', 'lxd');
INSERT INTO `message` VALUES ('5202', '5195', '啥时候考\n', '2018-7-9 15:6', '15130140362');
INSERT INTO `message` VALUES ('5203', '5199', '你好', '2018-7-9 21:12', '15130140368');
INSERT INTO `message` VALUES ('5204', '5199', '哈哈', '2018-7-9 21:13', '15130140362');
INSERT INTO `message` VALUES ('5205', '5199', '阿斯顿', '2018-7-9 21:13', '15130140362');
INSERT INTO `message` VALUES ('5206', '5199', '阿斯顿', '2018-7-9 21:14', '15130140368');
INSERT INTO `message` VALUES ('5207', '5199', '你好', '2018-7-9 21:14', '15130140362');
INSERT INTO `message` VALUES ('5208', '5199', '体育', '2018-7-9 21:15', '15130140368');
INSERT INTO `message` VALUES ('5209', '5199', '1100米吗', '2018-7-9 23:55', '15130140362');
INSERT INTO `message` VALUES ('5218', '5199', '你说', '2018-7-10 15:49', 'lxd');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `questionid` int(20) NOT NULL AUTO_INCREMENT,
  `questionkeyword` varchar(100) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `own` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=5200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('5109', '阿斯顿撒', '是阿德 ', 'lxd');
INSERT INTO `question` VALUES ('5113', 'zookeeper', 'zookeeper是如何进行选举操作的？？', 'lxd');
INSERT INTO `question` VALUES ('5114', 'kafka', 'kafka配置为什莫折磨难', 'lxd');
INSERT INTO `question` VALUES ('5115', 'hadoop', 'hadoop的安装的时候无核分发ssh', 'lxd');
INSERT INTO `question` VALUES ('5116', 'kafka连接', 'kafka连接的时候弹出网络错误', 'lxd');
INSERT INTO `question` VALUES ('5118', 'hadoop', 'hadoop的多个文件系统的都可以用于hadoop系统吗', 'lxd');
INSERT INTO `question` VALUES ('5130', 'spark', 'spark处理数据要多长时间', 'qhy');
INSERT INTO `question` VALUES ('5136', 'zookeerer', 'hadoop安装的时候使用自带的zookeeper可以吗？', 'lxd');
INSERT INTO `question` VALUES ('5141', 'kafka', 'kafka连接的时候出现问题', 'qhy');
INSERT INTO `question` VALUES ('5146', '考试', '啥时候考试', 'lxd');
INSERT INTO `question` VALUES ('5173', '流程图', '流程图画的时候要注意些什么', '15130140362');
INSERT INTO `question` VALUES ('5183', '考试', '啥时候考试呀', '15130140362');
INSERT INTO `question` VALUES ('5199', '1000米', '1000米很累吗', '15130140362');

-- ----------------------------
-- Table structure for `resource_list`
-- ----------------------------
DROP TABLE IF EXISTS `resource_list`;
CREATE TABLE `resource_list` (
  `resource_name` varchar(255) DEFAULT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) NOT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `resource_owner` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_list
-- ----------------------------
INSERT INTO `resource_list` VALUES ('3组_15130140362_刘旭东.zip', 'D:\\服务器上传的文件\\c9c4f735-9120-47bf-a29b-f72cc5babcc8.zip', 'c9c4f735-9120-47bf-a29b-f72cc5babcc8', '123', 'qhy', 'Tue Jul 03 17:46:39 CST 2018');
INSERT INTO `resource_list` VALUES ('SA大作业.docx', 'D:\\服务器上传的文件\\55e7793c-08c5-4f06-a7bc-2a2d3aaa0d63.docx', '55e7793c-08c5-4f06-a7bc-2a2d3aaa0d63', '123', 'qhy', 'Tue Jul 03 18:19:08 CST 2018');
INSERT INTO `resource_list` VALUES ('bookmarks_2018_5_29.html', 'D:\\服务器上传的文件\\1d4cff8d-cc14-4b2c-9d64-3c7ec43126c0.html', '1d4cff8d-cc14-4b2c-9d64-3c7ec43126c0', '123', 'qhy', 'Tue Jul 03 21:41:18 CST 2018');
INSERT INTO `resource_list` VALUES ('商业履历 2.docx', 'D:\\服务器上传的文件\\5455f3f5-5329-4497-9c56-25a4141b83a6.docx', '5455f3f5-5329-4497-9c56-25a4141b83a6', '123', 'lxd', 'Sun Jul 08 10:57:17 CST 2018');
INSERT INTO `resource_list` VALUES ('bookmarks_2018_5_29.html', 'D:\\服务器上传的文件\\a83fe4b9-4ccc-4a23-9ad0-68df7b63a536.html', 'a83fe4b9-4ccc-4a23-9ad0-68df7b63a536', '5110', 'lxd', 'Wed Jul 04 09:35:38 CST 2018');
INSERT INTO `resource_list` VALUES ('粗体类型履历.docx', 'D:\\服务器上传的文件\\926ecc53-7068-483d-b11a-1b00d16f7f19.docx', '926ecc53-7068-483d-b11a-1b00d16f7f19', '123', 'lxd', 'Sun Jul 08 11:02:39 CST 2018');
INSERT INTO `resource_list` VALUES ('西电-软件学院-刘旭东-应聘.pdf', 'D:\\服务器上传的文件\\e5436ffe-32d0-4458-81b6-2728a96e7fce.pdf', 'e5436ffe-32d0-4458-81b6-2728a96e7fce', '123', 'lxd', 'Sun Jul 08 10:55:53 CST 2018');
INSERT INTO `resource_list` VALUES ('刘旭东.docx', 'D:\\服务器上传的文件\\82472d3f-5fce-4c68-957a-2eb0abb63f7d.docx', '82472d3f-5fce-4c68-957a-2eb0abb63f7d', '123', 'lxd', 'Sun Jul 08 11:03:08 CST 2018');
INSERT INTO `resource_list` VALUES ('商业履历 2.docx', 'D:\\服务器上传的文件\\ae80a8ae-2ed0-4523-9128-0eb91eb08540.docx', 'ae80a8ae-2ed0-4523-9128-0eb91eb08540', '123', 'lxd', 'Sun Jul 08 11:04:35 CST 2018');
INSERT INTO `resource_list` VALUES ('商业履历 2.docx', 'D:\\服务器上传的文件\\d0007803-879f-4a72-94a0-c7ae1fbb9d26.docx', 'd0007803-879f-4a72-94a0-c7ae1fbb9d26', '123', 'lxd', 'Mon Jul 09 00:59:20 CST 2018');
INSERT INTO `resource_list` VALUES ('西电-软件学院-刘旭东-应聘.pdf', 'D:\\服务器上传的文件\\d33c87f5-8e1c-492e-bf49-c0c3d75349d9.pdf', 'd33c87f5-8e1c-492e-bf49-c0c3d75349d9', '123', 'qhy', 'Mon Jul 09 01:02:00 CST 2018');
INSERT INTO `resource_list` VALUES ('西电-软件学院-刘旭东-应聘.pdf', 'D:\\服务器上传的文件\\4d3fc042-dd2a-4ade-b91c-da2a9e6d149d.pdf', '4d3fc042-dd2a-4ade-b91c-da2a9e6d149d', '5165', '15130140362', 'Mon Jul 09 14:26:42 CST 2018');
INSERT INTO `resource_list` VALUES ('粗体类型履历.docx', 'D:\\服务器上传的文件\\1f0fa323-a134-4411-b0d2-a53efd1efd66.docx', '1f0fa323-a134-4411-b0d2-a53efd1efd66', '5165', '15130140368', 'Mon Jul 09 14:30:45 CST 2018');
INSERT INTO `resource_list` VALUES ('西电-软件学院-刘旭东-应聘.docx', 'D:\\服务器上传的文件\\2aaf4079-2d1b-4b9d-b6a2-d91f558b92fa.docx', '2aaf4079-2d1b-4b9d-b6a2-d91f558b92fa', '5177', '15130140368', 'Mon Jul 09 14:48:33 CST 2018');
INSERT INTO `resource_list` VALUES ('web应用架构设计.png', 'D:\\服务器上传的文件\\57efbc45-4d83-4025-9ed1-3d869a30093b.png', '57efbc45-4d83-4025-9ed1-3d869a30093b', '5189', 'lxd', 'Tue Jul 10 12:40:30 CST 2018');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15140220025 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('153', 'ROLE_teacher');
INSERT INTO `sys_role` VALUES ('159', 'ROLE_teacher');
INSERT INTO `sys_role` VALUES ('165', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('168', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130234', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130236', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130248', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130251', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130255', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130257', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130263', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130268', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130270', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130271', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130273', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130289', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130309', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130130331', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140337', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140348', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140352', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140353', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140362', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140368', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140375', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140376', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140384', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140397', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140398', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15130140400', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('15140220024', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('5212', 'ROLE_student');
INSERT INTO `sys_role` VALUES ('5215', 'ROLE_student');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15140220025 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('152', 'lxd', 'lxd');
INSERT INTO `sys_user` VALUES ('158', 'q', 'dq');
INSERT INTO `sys_user` VALUES ('164', '1', 'qhy');
INSERT INTO `sys_user` VALUES ('167', 'qq', 'qq');
INSERT INTO `sys_user` VALUES ('5211', '1', 'lxd_xd');
INSERT INTO `sys_user` VALUES ('15130130234', '15130130234', '15130130234');
INSERT INTO `sys_user` VALUES ('15130130236', '15130130236', '15130130236');
INSERT INTO `sys_user` VALUES ('15130130248', '15130130248', '15130130248');
INSERT INTO `sys_user` VALUES ('15130130251', '15130130251', '15130130251');
INSERT INTO `sys_user` VALUES ('15130130255', '15130130255', '15130130255');
INSERT INTO `sys_user` VALUES ('15130130257', '15130130257', '15130130257');
INSERT INTO `sys_user` VALUES ('15130130263', '15130130263', '15130130263');
INSERT INTO `sys_user` VALUES ('15130130268', '15130130268', '15130130268');
INSERT INTO `sys_user` VALUES ('15130130270', '15130130270', '15130130270');
INSERT INTO `sys_user` VALUES ('15130130271', '15130130271', '15130130271');
INSERT INTO `sys_user` VALUES ('15130130273', '15130130273', '15130130273');
INSERT INTO `sys_user` VALUES ('15130130289', '15130130289', '15130130289');
INSERT INTO `sys_user` VALUES ('15130130309', '15130130309', '15130130309');
INSERT INTO `sys_user` VALUES ('15130130331', '15130130331', '15130130331');
INSERT INTO `sys_user` VALUES ('15130140337', '15130140337', '15130140337');
INSERT INTO `sys_user` VALUES ('15130140348', '15130140348', '15130140348');
INSERT INTO `sys_user` VALUES ('15130140352', '15130140352', '15130140352');
INSERT INTO `sys_user` VALUES ('15130140353', '15130140353', '15130140353');
INSERT INTO `sys_user` VALUES ('15130140362', '15130140362', '15130140362');
INSERT INTO `sys_user` VALUES ('15130140368', '15130140368', '15130140368');
INSERT INTO `sys_user` VALUES ('15130140375', '15130140375', '15130140375');
INSERT INTO `sys_user` VALUES ('15130140376', '15130140376', '15130140376');
INSERT INTO `sys_user` VALUES ('15130140384', '15130140384', '15130140384');
INSERT INTO `sys_user` VALUES ('15130140397', '15130140397', '15130140397');
INSERT INTO `sys_user` VALUES ('15130140398', '15130140398', '15130140398');
INSERT INTO `sys_user` VALUES ('15130140400', '15130140400', '15130140400');
INSERT INTO `sys_user` VALUES ('15140220024', '15140220024', '15140220024');

-- ----------------------------
-- Table structure for `sys_user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles` (
  `sys_user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sys_user_id`,`roles_id`),
  KEY `FKdpvc6d7xqpqr43dfuk1s27cqh` (`roles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('152', '153');
INSERT INTO `sys_user_roles` VALUES ('158', '159');
INSERT INTO `sys_user_roles` VALUES ('164', '165');
INSERT INTO `sys_user_roles` VALUES ('167', '168');
INSERT INTO `sys_user_roles` VALUES ('5211', '5212');
INSERT INTO `sys_user_roles` VALUES ('5214', '5215');
INSERT INTO `sys_user_roles` VALUES ('15130130234', '15130130234');
INSERT INTO `sys_user_roles` VALUES ('15130130236', '15130130236');
INSERT INTO `sys_user_roles` VALUES ('15130130248', '15130130248');
INSERT INTO `sys_user_roles` VALUES ('15130130251', '15130130251');
INSERT INTO `sys_user_roles` VALUES ('15130130255', '15130130255');
INSERT INTO `sys_user_roles` VALUES ('15130130257', '15130130257');
INSERT INTO `sys_user_roles` VALUES ('15130130263', '15130130263');
INSERT INTO `sys_user_roles` VALUES ('15130130268', '15130130268');
INSERT INTO `sys_user_roles` VALUES ('15130130270', '15130130270');
INSERT INTO `sys_user_roles` VALUES ('15130130271', '15130130271');
INSERT INTO `sys_user_roles` VALUES ('15130130273', '15130130273');
INSERT INTO `sys_user_roles` VALUES ('15130130289', '15130130289');
INSERT INTO `sys_user_roles` VALUES ('15130130309', '15130130309');
INSERT INTO `sys_user_roles` VALUES ('15130130331', '15130130331');
INSERT INTO `sys_user_roles` VALUES ('15130140337', '15130140337');
INSERT INTO `sys_user_roles` VALUES ('15130140348', '15130140348');
INSERT INTO `sys_user_roles` VALUES ('15130140352', '15130140352');
INSERT INTO `sys_user_roles` VALUES ('15130140353', '15130140353');
INSERT INTO `sys_user_roles` VALUES ('15130140362', '15130140362');
INSERT INTO `sys_user_roles` VALUES ('15130140368', '15130140368');
INSERT INTO `sys_user_roles` VALUES ('15130140375', '15130140375');
INSERT INTO `sys_user_roles` VALUES ('15130140376', '15130140376');
INSERT INTO `sys_user_roles` VALUES ('15130140384', '15130140384');
INSERT INTO `sys_user_roles` VALUES ('15130140397', '15130140397');
INSERT INTO `sys_user_roles` VALUES ('15130140398', '15130140398');
INSERT INTO `sys_user_roles` VALUES ('15130140400', '15130140400');
INSERT INTO `sys_user_roles` VALUES ('15140220024', '15140220024');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('154', '747562669@qq.com', 'dq', 'teacher', 'dq');
INSERT INTO `user` VALUES ('157', '747562669@qq.com', 'q', 'teacher', 'dq');
INSERT INTO `user` VALUES ('160', '354641536@qq.com', '111', 'student', 'qhy');
INSERT INTO `user` VALUES ('163', '354641536@qq.com', '1', 'ROLE_student', 'qhy');
INSERT INTO `user` VALUES ('166', '1521949504@qq.com', 'qq', 'ROLE_student', 'qq');
INSERT INTO `user` VALUES ('169', '1521949504@qq.com', 'lxd', 'ROLE_student', 'lxd');
INSERT INTO `user` VALUES ('5210', '1521949504@qq.com', '1', 'ROLE_student', 'lxd_xd');
INSERT INTO `user` VALUES ('5213', '1521949504@qq.com', '1', 'ROLE_student', 'lxd_xd');
