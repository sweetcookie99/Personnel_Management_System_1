/*
Navicat MySQL Data Transfer

Source Server         : new
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : management

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-05-21 16:22:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept_inf`
-- ----------------------------
DROP TABLE IF EXISTS `dept_inf`;
CREATE TABLE `dept_inf` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dept_inf
-- ----------------------------
INSERT INTO `dept_inf` VALUES ('CS', '测试部', null);
INSERT INTO `dept_inf` VALUES ('CW', '财务部', '企业的财务管理');
INSERT INTO `dept_inf` VALUES ('PP', '品牌部', null);
INSERT INTO `dept_inf` VALUES ('RLZY', '人力资源部', '为企业及时提供合格的人才和人力');
INSERT INTO `dept_inf` VALUES ('SJ', '设计部', '研发技术，处理产品技术问题');
INSERT INTO `dept_inf` VALUES ('WLGG', '网络公关部', null);
INSERT INTO `dept_inf` VALUES ('XS', '销售部', null);
INSERT INTO `dept_inf` VALUES ('XXCB', '信息采编部', '收集同业情况。线路产品销售服务');
INSERT INTO `dept_inf` VALUES ('XZ', '行政部', '企业的办公秩序以及行政事务管理');
INSERT INTO `dept_inf` VALUES ('YF', '研发部', '研发公司产品');
INSERT INTO `dept_inf` VALUES ('YXCH', '营销策划部', '树立企业形象和产品形象，……');
INSERT INTO `dept_inf` VALUES ('ZX', '咨询部', null);

-- ----------------------------
-- Table structure for `employee_inf`
-- ----------------------------
DROP TABLE IF EXISTS `employee_inf`;
CREATE TABLE `employee_inf` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `cred_id` varchar(100) DEFAULT NULL,
  `job_id` varchar(100) DEFAULT NULL,
  `dept_id` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  KEY `employee_inf_ibfk_1` (`job_id`,`dept_id`),
  CONSTRAINT `employee_inf_ibfk_1` FOREIGN KEY (`job_id`, `dept_id`) REFERENCES `job_inf` (`id`, `dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='_';

-- ----------------------------
-- Records of employee_inf
-- ----------------------------
INSERT INTO `employee_inf` VALUES ('1', '彭万里', '男', '1', '1156777828@qq.com', '研究生', '340822199905240211', 'CS02', 'CS', '1');
INSERT INTO `employee_inf` VALUES ('10', '李四光', '男', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('11', '甘铁生', '女', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('12', '张伍绍祖', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('13', '马继祖', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('14', '程孝先', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('15', '余克勤', '男', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('16', '吴克俭', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('17', '杨惟义', '女', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('18', '李文信', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('19', '王德茂', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('2', '高大山', '女', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('20', '李书诚', '女', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('21', '杨勇', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('22', '高尚德', '男', '18325657365', '18325657365', '研究生', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('23', '李开富', '男', '18325657365', '18325657365', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('24', '节振国', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('25', '关玉和', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('26', '王仁兴', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('27', '吴家栋', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('28', '孙书贤', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('29', '孙卫东', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('3', '谢大海', '男', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('30', '孙子函', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('31', '孙婉宛', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('32', '孙岑', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('33', '吕文达', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('34', '张国柱', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('35', '李际泰', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('36', '刘造时', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('37', '张石山', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', null, null);
INSERT INTO `employee_inf` VALUES ('4', '马宏宇', '女', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('5', '林莽', '女', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('6', '黄强辉', '男', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('7', '章汉夫', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('8', '范长江', '女', '18325657365', '1156777828@qq.com', '研究生', '340822199905240211', 'CS01', 'CS', null);
INSERT INTO `employee_inf` VALUES ('9', '林君雄', '男', '18325657365', '1156777828@qq.com', '本科', '340822199905240211', 'CS01', 'CS', null);

-- ----------------------------
-- Table structure for `job_inf`
-- ----------------------------
DROP TABLE IF EXISTS `job_inf`;
CREATE TABLE `job_inf` (
  `id` varchar(100) NOT NULL,
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  KEY `id` (`id`,`dept_id`),
  CONSTRAINT `job_inf_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept_inf` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_inf
-- ----------------------------
INSERT INTO `job_inf` VALUES ('CS01', 'CS', '测试经理', '指定部门年度发展规划，制定测试团队日常工作制度');
INSERT INTO `job_inf` VALUES ('CS02', 'CS', '测试组长', '根据部门年度发展规划制度小组年度计划，对整个测试项目进行管理，对最终的产品质量负责');
INSERT INTO `job_inf` VALUES ('CS03', 'CS', '高级测试工程师', '辅助测试组长完成小组年度计划并执行');
INSERT INTO `job_inf` VALUES ('CS04', 'CS', '测试工程师', '服从项目管理和组长管理，执行小组年度计划，并按计划汇报执行总结');
INSERT INTO `job_inf` VALUES ('CW01', 'CW', '财务经理', '负责公司的整个财务经营状况');
INSERT INTO `job_inf` VALUES ('CW02', 'CW', '财务副经理', '协助财务经理工作');
INSERT INTO `job_inf` VALUES ('CW03', 'CW', '财务主管', '负责总账等主要财务工作');
INSERT INTO `job_inf` VALUES ('CW04', 'CW', '一般会计', '日常记账');
INSERT INTO `job_inf` VALUES ('CW05', 'CW', '出纳', '负责现金和银行的日记账');
INSERT INTO `job_inf` VALUES ('PL01', 'RLZY', '人力资源部经理', '进行培训等人力资源开发方面的工作');
INSERT INTO `job_inf` VALUES ('PL02', 'RLZY', '人力资源主管', '全面负责招聘工作，协助部门经理进行培训等人力资源开发方面的工作。');
INSERT INTO `job_inf` VALUES ('PL03', 'RLZY', '招聘专员', '协助人力资源主管做好招聘工作及其他临时性工作');
INSERT INTO `job_inf` VALUES ('PP01', 'PP', '品牌部经理', '负责按照公司总体战略提炼.整合企业品牌资源,提升品牌价值');
INSERT INTO `job_inf` VALUES ('PP02', 'PP', '品牌策划主管', '负责企业品牌包装与形象策划，进行差异性品牌传播');
INSERT INTO `job_inf` VALUES ('PP03', 'PP', '品牌设计设计专员', '负责品牌设计和策划');
INSERT INTO `job_inf` VALUES ('XS01', 'XS', '销售总监\r\n\r\n销售总监', '负责整个销售部门');
INSERT INTO `job_inf` VALUES ('XS02', 'XS', '营销主管', '对销售类型的主要管事者·负责产品在当地的推广、执行、客户沟通、跟踪工作');
INSERT INTO `job_inf` VALUES ('XS03', 'XS', '营销专员', '策划销售，活动，调研市场动态，走向');
INSERT INTO `job_inf` VALUES ('XZ01', 'XZ', '行政主管', '负责公司整体的行政，管理行政文员');
INSERT INTO `job_inf` VALUES ('XZ02', 'XZ', '行政文员', '负责处理公司行政事务');
INSERT INTO `job_inf` VALUES ('YF01', 'YF', '研发总监', '根据公司发展战略，拟定公司中远期研发计划，把握研发方向；指导并监督研发部门执行公司研发战略和年度研发计划；控制产品开发进度，调整计划；组建优秀的产品研发团队，审核及培训考核有关技术人员。');
INSERT INTO `job_inf` VALUES ('YF02', 'YF', '研发经理', '制定新产品研发计划，论证计划可行性；监督管理研发工作进度及质量；研究新产品开发、根据不同领域的客户要求，提出有效的解决方案。');
INSERT INTO `job_inf` VALUES ('YF03', 'YF', '研发人员', '关键资料的收集整理；编制计算机程序；进行实验、测试和分析；为实验、测试和分析准备材料和设备；记录测量数据、进行计算和编制图表；从事统计调查。');

-- ----------------------------
-- Table structure for `notice_inf`
-- ----------------------------
DROP TABLE IF EXISTS `notice_inf`;
CREATE TABLE `notice_inf` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of notice_inf
-- ----------------------------
INSERT INTO `notice_inf` VALUES ('1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `user_inf`
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(11) NOT NULL,
  `loginname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', '001', '李涛', '2019.5.11', '123456');
INSERT INTO `user_inf` VALUES ('2', '111', '爵士', '2028.9.9', '！@#￥%&*（）');
INSERT INTO `user_inf` VALUES ('3', '005', '擎天柱', '2019.5.13', 'li1999524');
INSERT INTO `user_inf` VALUES ('122', 'admin', '李涛', '2019.5.13', 'admin');
