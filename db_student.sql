/*
Navicat MySQL Data Transfer

Source Server         : mysql企业课
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : db_student

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2022-08-18 16:34:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES ('1', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '2018-03-17 14:24:09');

-- ----------------------------
-- Table structure for s_class
-- ----------------------------
DROP TABLE IF EXISTS `s_class`;
CREATE TABLE `s_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_class
-- ----------------------------
INSERT INTO `s_class` VALUES ('0', '无');
INSERT INTO `s_class` VALUES ('2', '软件一班');
INSERT INTO `s_class` VALUES ('6', '软件二班');
INSERT INTO `s_class` VALUES ('7', '软件三班');

-- ----------------------------
-- Table structure for s_collect
-- ----------------------------
DROP TABLE IF EXISTS `s_collect`;
CREATE TABLE `s_collect` (
  `user_id` int NOT NULL,
  `news_id` int NOT NULL,
  `user_select` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_collect
-- ----------------------------
INSERT INTO `s_collect` VALUES ('1', '1', 's_student');
INSERT INTO `s_collect` VALUES ('1', '2', 's_student');
INSERT INTO `s_collect` VALUES ('2', '1', 's_student');
INSERT INTO `s_collect` VALUES ('2', '2', 's_student');
INSERT INTO `s_collect` VALUES ('2', '3', 's_student');
INSERT INTO `s_collect` VALUES ('1', '5', 's_student');
INSERT INTO `s_collect` VALUES ('1', '6', 's_student');
INSERT INTO `s_collect` VALUES ('1', '4', 's_student');
INSERT INTO `s_collect` VALUES ('1', '3', 's_admin');
INSERT INTO `s_collect` VALUES ('1', '5', 's_admin');
INSERT INTO `s_collect` VALUES ('1', '23', 's_admin');
INSERT INTO `s_collect` VALUES ('1', '24', 's_admin');
INSERT INTO `s_collect` VALUES ('1', '25', 's_admin');
INSERT INTO `s_collect` VALUES ('1', '23', 's_student');
INSERT INTO `s_collect` VALUES ('1', '25', 's_teacher');
INSERT INTO `s_collect` VALUES ('4', '26', 's_teacher');
INSERT INTO `s_collect` VALUES ('4', '2', 's_teacher');
INSERT INTO `s_collect` VALUES ('4', '3', 's_teacher');

-- ----------------------------
-- Table structure for s_course
-- ----------------------------
DROP TABLE IF EXISTS `s_course`;
CREATE TABLE `s_course` (
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `student_num` int NOT NULL,
  `course_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_course
-- ----------------------------
INSERT INTO `s_course` VALUES ('高数', '1', '1', '33', '1-1');
INSERT INTO `s_course` VALUES ('计算机英语', '2', '2', '35', '2-1');
INSERT INTO `s_course` VALUES ('概率论', '3', '1', '32', '1-1');
INSERT INTO `s_course` VALUES ('算法', '4', '3', '32', '3-1');
INSERT INTO `s_course` VALUES ('Java', '5', '4', '36', '2-1');
INSERT INTO `s_course` VALUES ('html5', '6', '5', '37', '4-1');
INSERT INTO `s_course` VALUES ('JavaScript', '7', '5', '38', '5-1');
INSERT INTO `s_course` VALUES ('高数', '8', '1', '37', '2-2');
INSERT INTO `s_course` VALUES ('计算机英语', '9', '2', '37', '4-2');
INSERT INTO `s_course` VALUES ('概率论', '10', '1', '37', '3-2');
INSERT INTO `s_course` VALUES ('算法', '11', '3', '39', '1-2');
INSERT INTO `s_course` VALUES ('Java', '12', '4', '40', '5-2');
INSERT INTO `s_course` VALUES ('html5', '13', '5', '40', '2-2');
INSERT INTO `s_course` VALUES ('JavaScript', '14', '5', '40', '4-2');
INSERT INTO `s_course` VALUES ('高数', '15', '6', '40', '3-3');
INSERT INTO `s_course` VALUES ('计算机英语', '16', '7', '39', '1-3');
INSERT INTO `s_course` VALUES ('概率论', '17', '6', '40', '4-3');
INSERT INTO `s_course` VALUES ('算法', '18', '8', '40', '1-3');
INSERT INTO `s_course` VALUES ('Java', '19', '9', '40', '2-3');
INSERT INTO `s_course` VALUES ('html5', '20', '10', '40', '5-3');
INSERT INTO `s_course` VALUES ('JavaScript', '21', '10', '40', '4-3');
INSERT INTO `s_course` VALUES ('高数', '22', '6', '40', '2-4');
INSERT INTO `s_course` VALUES ('计算机英语', '23', '7', '40', '4-4');
INSERT INTO `s_course` VALUES ('概率论', '24', '6', '39', '4-4');
INSERT INTO `s_course` VALUES ('算法', '25', '8', '40', '3-4');
INSERT INTO `s_course` VALUES ('Java', '26', '9', '39', '1-4');
INSERT INTO `s_course` VALUES ('html5', '27', '10', '40', '5-4');
INSERT INTO `s_course` VALUES ('JavaScript', '28', '10', '40', '3-4');

-- ----------------------------
-- Table structure for s_curriculum
-- ----------------------------
DROP TABLE IF EXISTS `s_curriculum`;
CREATE TABLE `s_curriculum` (
  `student_id` int NOT NULL,
  `1-1` int DEFAULT NULL,
  `1-2` int DEFAULT NULL,
  `1-3` int DEFAULT NULL,
  `1-4` int DEFAULT NULL,
  `2-1` int DEFAULT NULL,
  `2-2` int DEFAULT NULL,
  `2-3` int DEFAULT NULL,
  `2-4` int DEFAULT NULL,
  `3-1` int DEFAULT NULL,
  `3-2` int DEFAULT NULL,
  `3-3` int DEFAULT NULL,
  `3-4` int DEFAULT NULL,
  `4-1` int DEFAULT NULL,
  `4-2` int DEFAULT NULL,
  `4-3` int DEFAULT NULL,
  `4-4` int DEFAULT NULL,
  `5-1` int DEFAULT NULL,
  `5-2` int DEFAULT NULL,
  `5-3` int DEFAULT NULL,
  `5-4` int DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_curriculum
-- ----------------------------
INSERT INTO `s_curriculum` VALUES ('1', '1', '11', '16', '26', '2', null, null, null, '4', '10', null, null, '6', '9', null, '24', null, null, null, null);
INSERT INTO `s_curriculum` VALUES ('2', '1', null, null, null, '2', '8', null, null, '4', null, null, null, '6', null, null, null, '7', null, null, null);
INSERT INTO `s_curriculum` VALUES ('3', null, null, null, null, null, null, null, null, null, '10', null, null, null, '9', null, null, null, null, null, null);
INSERT INTO `s_curriculum` VALUES ('4', null, null, null, null, '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for s_news
-- ----------------------------
DROP TABLE IF EXISTS `s_news`;
CREATE TABLE `s_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin NOT NULL,
  `temperature` int DEFAULT NULL,
  `collect` int DEFAULT NULL,
  `publish_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_news
-- ----------------------------
INSERT INTO `s_news` VALUES ('1', '标题一', '新闻一xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '234', '3', '2022-03-01');
INSERT INTO `s_news` VALUES ('2', '标题二', '新闻二xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '42', '3', '2022-03-02');
INSERT INTO `s_news` VALUES ('3', '标题三', '新闻三xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '48', '3', '2022-03-03');
INSERT INTO `s_news` VALUES ('4', '标题四', '新闻四xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '39', '2', '2022-03-04');
INSERT INTO `s_news` VALUES ('5', '标题五', '新闻五xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '45', '3', '2022-03-05');
INSERT INTO `s_news` VALUES ('6', '标题六', '新闻六xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '120', '2', '2022-03-06');
INSERT INTO `s_news` VALUES ('19', 'xxx', 'asd', '11', '1', '2022-07-19');
INSERT INTO `s_news` VALUES ('21', 'dslkfnk', 'dsfa', '5', null, '2022-07-19');
INSERT INTO `s_news` VALUES ('22', '1', '1', '0', null, '2022-07-20');
INSERT INTO `s_news` VALUES ('23', '2', '2', '6', '2', '2022-07-25');
INSERT INTO `s_news` VALUES ('24', '3', '3', '6', '1', '2022-07-27');
INSERT INTO `s_news` VALUES ('25', '4', '4', '7', '2', '2022-07-27');
INSERT INTO `s_news` VALUES ('26', '8', '8', '2', '1', '2022-07-28');
INSERT INTO `s_news` VALUES ('27', '9', '9\n', '2', null, '2022-07-28');

-- ----------------------------
-- Table structure for s_student
-- ----------------------------
DROP TABLE IF EXISTS `s_student`;
CREATE TABLE `s_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classId` int DEFAULT '0',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_foreign` (`classId`),
  CONSTRAINT `class_foreign` FOREIGN KEY (`classId`) REFERENCES `s_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1902210008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_student
-- ----------------------------
INSERT INTO `s_student` VALUES ('1', '张宇', '2', 'e10adc3949ba59abbe56e057f20f883e', null, '2022-03-06');
INSERT INTO `s_student` VALUES ('2', '张宇', '0', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `s_student` VALUES ('3', 'sb1', '2', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `s_student` VALUES ('4', 'sb', '6', 'e10adc3949ba59abbe56e057f20f883e', null, null);
INSERT INTO `s_student` VALUES ('9', 's1', '2', 'c4ca4238a0b923820dcc509a6f75849b', null, null);
INSERT INTO `s_student` VALUES ('10', 'zy', '0', 'c4ca4238a0b923820dcc509a6f75849b', null, null);
INSERT INTO `s_student` VALUES ('13', 'zy', '0', '1', null, null);
INSERT INTO `s_student` VALUES ('22', 'ads', '0', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', null, '2022-06-08');
INSERT INTO `s_student` VALUES ('777', '4', '2', 'c81e728d9d4c2f636f067f89cc14862c', null, '2020-01-01');
INSERT INTO `s_student` VALUES ('888', '1', '2', '1', '1', '2022-01-03');
INSERT INTO `s_student` VALUES ('999', '4', '0', '4', null, '2020-02-03');
INSERT INTO `s_student` VALUES ('1902210007', 'sb', '0', '1', '1', '2022-06-04');

-- ----------------------------
-- Table structure for s_student_select_course
-- ----------------------------
DROP TABLE IF EXISTS `s_student_select_course`;
CREATE TABLE `s_student_select_course` (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_student_select_course
-- ----------------------------
INSERT INTO `s_student_select_course` VALUES ('1', '1');
INSERT INTO `s_student_select_course` VALUES ('1', '2');
INSERT INTO `s_student_select_course` VALUES ('2', '1');
INSERT INTO `s_student_select_course` VALUES ('2', '2');
INSERT INTO `s_student_select_course` VALUES ('4', '1');
INSERT INTO `s_student_select_course` VALUES ('4', '2');
INSERT INTO `s_student_select_course` VALUES ('5', '4');
INSERT INTO `s_student_select_course` VALUES ('6', '1');
INSERT INTO `s_student_select_course` VALUES ('6', '2');
INSERT INTO `s_student_select_course` VALUES ('7', '2');
INSERT INTO `s_student_select_course` VALUES ('8', '2');
INSERT INTO `s_student_select_course` VALUES ('9', '1');
INSERT INTO `s_student_select_course` VALUES ('9', '3');
INSERT INTO `s_student_select_course` VALUES ('10', '1');
INSERT INTO `s_student_select_course` VALUES ('10', '3');
INSERT INTO `s_student_select_course` VALUES ('11', '1');
INSERT INTO `s_student_select_course` VALUES ('16', '1');
INSERT INTO `s_student_select_course` VALUES ('24', '1');
INSERT INTO `s_student_select_course` VALUES ('26', '1');

-- ----------------------------
-- Table structure for s_task
-- ----------------------------
DROP TABLE IF EXISTS `s_task`;
CREATE TABLE `s_task` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `task_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `task_file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_task
-- ----------------------------
INSERT INTO `s_task` VALUES ('3', '9', '3nginx操作.txt', 'http://127.0.0.1:8081/Desktop/taskFile/');
INSERT INTO `s_task` VALUES ('3', '10', '3nginx操作.txt', 'http://127.0.0.1:8081/Desktop/taskFile/');

-- ----------------------------
-- Table structure for s_task_score
-- ----------------------------
DROP TABLE IF EXISTS `s_task_score`;
CREATE TABLE `s_task_score` (
  `student_id` int NOT NULL,
  `task_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_id` int NOT NULL,
  `task_score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of s_task_score
-- ----------------------------
INSERT INTO `s_task_score` VALUES ('1', '概率论模拟作业.txt', '10', '11');
INSERT INTO `s_task_score` VALUES ('1', '算法模拟作业.txt', '4', '25');
INSERT INTO `s_task_score` VALUES ('1', 'java模拟作业.txt', '26', '55');
INSERT INTO `s_task_score` VALUES ('2', '高数模拟作业.txt', '1', '66');
INSERT INTO `s_task_score` VALUES ('4', 'java模拟作业.txt', '5', '55');
INSERT INTO `s_task_score` VALUES ('1', 'xx模拟作业.txt', '2', '23');
INSERT INTO `s_task_score` VALUES ('2', 'html5模拟作业.txt', '6', '33');
INSERT INTO `s_task_score` VALUES ('2', 'xx模拟作业.txt', '2', '66');

-- ----------------------------
-- Table structure for s_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_teacher`;
CREATE TABLE `s_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=651614 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_teacher
-- ----------------------------
INSERT INTO `s_teacher` VALUES ('1', '张一丰', '男', '23', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('2', '张二丰', '男', '58', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('3', '张三丰', '男', '200', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('4', '张四丰', '男', '200', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('5', '张五丰', '男', '2', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('6', '张六丰', '男', '21', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('7', '张七丰', '男', '21', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('8', '张八丰', '男', '21', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('9', '张九丰', '男', '23', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `s_teacher` VALUES ('10', '张十丰', '男', '21', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `select` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('1', '1', '1');
INSERT INTO `s_user` VALUES ('2', '2', '2');
INSERT INTO `s_user` VALUES ('3', '3', '4');
INSERT INTO `s_user` VALUES ('4', '4', '4');
