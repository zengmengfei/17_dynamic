/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : avtp6.pro

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 20/12/2021 18:53:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avt_action_log_2021_12
-- ----------------------------
DROP TABLE IF EXISTS `pk_action_log_2021_12`;
CREATE TABLE `pk_action_log_2021_12`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人用户名',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作页面',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数(JSON格式)',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志标题',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '操作类型：1登录系统 2注销系统 3操作日志',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '内容',
  `ip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `ip_city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP所属城市',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `user_agent` varchar(360) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'User-Agent',
  `create_user` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '添加时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统行为日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_action_log_2021_12
-- ----------------------------
INSERT INTO `pk_action_log_2021_12` VALUES (1, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":2}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1638943051, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (2, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":1}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1638943053, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (3, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":2}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1638943055, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (4, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/exportExcel', '', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1638943060, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (5, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":1}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1638943192, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (6, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/edit', '{\"id\":1,\"name\":\"\\u8463\\u4e8b\\u957f\",\"status\":1,\"sort\":125,\"create_user\":1,\"create_time\":1621998864,\"update_user\":1,\"update_time\":1638943192,\"mark\":1,\"create_user_name\":\"\\u7ba1\\u7406\\u5458\",\"update_user_name\":\"\\u7ba1\\u7406\\u5458\"}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1639010871, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (7, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":2}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1639010873, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (8, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/status', '{\"id\":1,\"status\":1}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1639010879, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (9, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/level/delete', '{\"id\":[1,2]}', '职级管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 1, 1639011014, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (10, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/generate', '{\"name\":\"avt_example\",\"comment\":\"\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639723715, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (11, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/generate', '{\"name\":\"avt_example\",\"comment\":\"\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639723986, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (12, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/generate', '{\"name\":\"avt_example\",\"comment\":\"\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639723992, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (13, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/generate', '{\"name\":\"avt_example\",\"comment\":\"\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724246, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (14, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/generate', '{\"name\":\"avt_example2\",\"comment\":\"\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724266, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (15, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724469, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (16, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724590, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (17, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724714, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (18, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/example/edit', '{\"id\":5,\"name\":\"\\u4e3b\\u7ba12\",\"gender\":1,\"avatar\":\"http:\\/\\/images.avtp6.pro\\/images\\/example\\/20210923\\/dd1948eb1ce381a6468.jpg\",\"type\":5,\"status\":1,\"is_vip\":1,\"sort\":125,\"note\":\"\\u6682\\u65e0\",\"create_user\":1,\"create_time\":1970,\"update_user\":1,\"update_time\":1634197006,\"mark\":1,\"create_user_name\":\"\\u7ba1\\u7406\\u5458\",\"update_user_name\":\"\\u7ba1\\u7406\\u5458\"}', '演示案例一', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724733, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (19, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724823, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (20, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/example/edit', '{\"id\":5,\"name\":\"\\u4e3b\\u7ba12\",\"gender\":1,\"avatar\":\"http:\\/\\/images.avtp6.pro\\/images\\/example\\/20210923\\/dd1948eb1ce381a6468.jpg\",\"type\":5,\"status\":1,\"is_vip\":1,\"sort\":125,\"note\":\"\\u6682\\u65e0\",\"create_user\":1,\"create_time\":1970,\"update_user\":1,\"update_time\":1639724733,\"mark\":1,\"create_user_name\":\"\\u7ba1\\u7406\\u5458\",\"update_user_name\":\"\\u7ba1\\u7406\\u5458\"}', '演示案例一', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724837, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (21, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/example2/edit', '{\"id\":5,\"name\":\"\\u4e3b\\u7ba12\",\"gender\":1,\"avatar\":\"\\/images\\/example\\/20210923\\/dd1948eb1ce381a6468.jpg\",\"status\":1,\"sort\":125,\"note\":\"\\u6682\\u65e0\",\"create_user\":1,\"create_time\":1970,\"update_user\":1,\"update_time\":1632383507,\"mark\":1,\"create_user_name\":\"\\u7ba1\\u7406\\u5458\",\"update_user_name\":\"\\u7ba1\\u7406\\u5458\"}', '演示案例二', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724841, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (22, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724906, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (23, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639724935, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (24, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639725006, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (25, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639730075, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (26, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639730112, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (27, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/generate/batchGenerate', '{\"tables\":[\"avt_example,\\u6f14\\u793a\\u6848\\u4f8b\\u4e00\",\"avt_example2,\\u6f14\\u793a\\u6848\\u4f8b\\u4e8c\"]}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639730163, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (28, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/edit', '{\"id\":1,\"realname\":\"\\u7ba1\\u7406\\u5458\",\"nickname\":\"\\u7ba1\\u7406\\u5458\",\"gender\":1,\"avatar\":\"http:\\/\\/images.avtp6.pro\\/images\\/user\\/20211014\\/9c8bbb5372a0819b797.jpg\",\"mobile\":\"18000000001\",\"email\":\"rxthinkcmf@163.com\",\"birthday\":\"2021-09-23 00:00:00\",\"dept_id\":1,\"level_id\":3,\"position_id\":2,\"province_code\":\"320000\",\"city_code\":\"320100\",\"district_code\":\"320105\",\"address\":\"\\u6682\\u65e0\",\"city_name\":\"\",\"username\":\"admin\",\"password\":\"43286a86708820e38c333cdd4c496355\",\"salt\":\"\",\"intro\":\"\\u8c01\\u7684\\u4eba\\u751f\\u4e0d\\u662f\\u8346\\u68d8\\u524d\\u884c\\uff0c\\u4f60\\u8dcc\\u5012\\u7684\\u65f6\\u5019\\uff0c\\u61ca\\u607c\\u7684\\u65f6\\u5019\\uff0c\\u54c1\\u5c1d\\u773c\\u6cea\\u7684\\u65f6\\u5019\\uff0c\\u90fd\\u8bf7\\u4f60\\u4e0d\\u8981\\u8f7b\\u8a00\\u653e\\u5f03\\uff0c\\u56e0\\u4e3a\\u4ece\\u6765\\u6ca1\\u6709\\u4e00\\u79cd\\u575a\\u6301\\u4f1a\\u88ab\\u8f9c\\u8d1f\\u3002\\u8bf7\\u4f60\\u76f8\\u4fe1\\uff0c\\u4f60\\u7684\\u575a\\u6301\\uff0c\\u7ec8\\u5c06\\u7f8e\\u597d\\u3002\",\"status\":1,\"note\":\"\\u6682\\u65e0\\u5907\\u6ce8\",\"sort\":125,\"login_num\":0,\"login_ip\":null,\"login_time\":0,\"create_user\":1,\"create_time\":1621998864,\"update_user\":1,\"update_time\":1639717888,\"mark\":1,\"create_user_name\":\"\\u7ba1\\u7406\\u5458\",\"update_user_name\":\"\\u7ba1\\u7406\\u5458\",\"gender_name\":\"\\u7537\",\"city\":[\"320000\",\"320100\",\"320105\"],\"level_name\":\"\\u5e02\\u573a\\u603b\\u76d1\",\"position_name\":\"\\u6280\\u672f\\u7ecf\\u7406\",\"dept_name\":\"\\u5357\\u4eac\\u7814\\u53d1\\u4e2d\\u5fc3\",\"roles\":[{\"id\":1,\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"code\":\"super\",\"status\":1,\"note\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\\u62e5\\u6709\\u7edd\\u5bf9\\u6743\\u9650\",\"sort\":1,\"create_user\":1,\"create_time\":1621998864,\"update_user\":1,\"update_time\":1634197059,\"mark\":1}],\"role_ids\":[1]}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731313, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (29, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/status', '{\"id\":\"1\",\"status\":\"2\"}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731387, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (30, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/status', '{\"id\":\"1\",\"status\":\"1\"}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731388, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (31, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/resetPwd', '{\"id\":\"2\",\"password\":\"123456\"}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731391, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (32, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/resetPwd', '{\"id\":\"1\",\"password\":\"123456\"}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731398, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (33, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/login/login', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"520\",\"key\":\"a6c9c473-7581-4e10-bc23-a55f1a147ddd\",\"remember\":\"true\"}', '登录系统', 1, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 0, 1639731403, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (34, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/login/login', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"520\",\"key\":\"a2b077e3-4276-4c81-a7b7-f54df1d146f8\",\"remember\":\"true\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 0, 1639731586, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (35, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"key\":\"a2b077e3-4276-4c81-a7b7-f54df1d146f8\",\"remember\":\"true\"}', '登录系统', 1, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 0, 1639731591, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (36, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/user/resetPwd', '{\"id\":\"1\",\"password\":\"123456\"}', '用户管理', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731597, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (37, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/login/login', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"520\",\"key\":\"33e34cfa-6d25-4302-b6f9-9f2850ee4a0b\",\"remember\":\"true\"}', '登录系统', 1, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 0, 1639731603, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (38, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/configweb/edit', '{\"site_name\":\"\\u5357\\u4eacRXThinkCMF\\u7814\\u53d1\\u4e2d\\u5fc3\",\"site_nickname\":\"ThinkPhp6.x+Vue\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u6846\\u67b6\",\"site_logo\":\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/c953b1544a59c147234.jpg\",\"site_pic\":[\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/850899c09761635b779.jpg\",\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/c66577d6af75c3aa469.jpg\",\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/b174fbbfed2db203512.jpg\",\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/8b2b08ce30b1fb75305.jpg\",\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/7d411af94c0b6f6b805.jpg\",\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/743de4ce7685d9be620.jpg\"],\"site_tags\":[\"1\",\"3\"],\"site_seo_title\":\"ThinkPhp6.x+Vue\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u6846\\u67b6\",\"site_seo_desc\":\"\\u4e00\\u6b3e\\u4e13\\u4e3a\\u4f01\\u4e1a\\u548c\\u5f00\\u53d1\\u8005\\u7cbe\\u5fc3\\u6253\\u9020\\u7684\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u5e73\\u53f0\",\"site_platform\":\"4\",\"site_copyright\":\"Copyright \\u00a92021 www.rxthink.cn. All rights reserved.\",\"site_keywords\":\"ThinkPhp6\\u3001Vue\\u3001AntDesign\\u3001RXThinkCMF\",\"site_record\":\"http:\\/\\/www.rxthink.cn\\/\",\"site_url\":\"http:\\/\\/www.rxthink.cn\\/\",\"site_desc\":\"\\u4e00\\u6b3e\\u4e13\\u4e3a\\u4f01\\u4e1a\\u548c\\u5f00\\u53d1\\u8005\\u7cbe\\u5fc3\\u6253\\u9020\\u7684\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u5e73\\u53f0\",\"site_qq\":\"\\u6682\\u65e0\",\"site_address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u5efa\\u90ba\\u533a\",\"site_email\":\"rxthinkcmf@163.com\",\"site_phone\":\"\\u6682\\u65e0\",\"site_fax\":\"\\u6682\\u65e0\",\"site_tongji\":\"\\u6682\\u65e0\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731624, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (39, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/configweb/edit', '{\"wechat_appid\":\"wxae802963eb8a96cd\",\"wechat_appsecret\":\"57b8a986cae98659fhb4a3eeafgb567a\",\"wechat_name\":\"RXThinkCMF\",\"wechat_logo\":\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/9b588e20f2f0663d635.jpg\",\"wechat_code\":\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/fa23273d8185936b240.jpg\",\"wechat_share_title\":\"\\u8f6f\\u4ef6\\u5c0f\\u7a0b\\u5e8f\",\"wechat_share_desc\":\"ThinkPhp6.x+Vue\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u6846\\u67b6\\uff0c\\u4e00\\u6b3e\\u4e13\\u4e3a\\u4f01\\u4e1a\\u548c\\u5f00\\u53d1\\u8005\\u7cbe\\u5fc3\\u6253\\u9020\\u7684\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u5e73\\u53f0\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731640, 1);
INSERT INTO `pk_action_log_2021_12` VALUES (40, '管理员', 'POST', 'admin', 'http://admin.avtp6.pro/configweb/edit', '{\"wechat_appid\":\"wxae802963eb8a96cd\",\"wechat_appsecret\":\"57b8a986cae98659fhb4a3eeafgb567a\",\"wechat_name\":\"RXThinkCMF\",\"wechat_logo\":\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/9b588e20f2f0663d635.jpg\",\"wechat_code\":\"http:\\/\\/images.avtp6.pro\\/images\\/config\\/20210923\\/fa23273d8185936b240.jpg\",\"wechat_share_title\":\"RXThinkCMF\",\"wechat_share_desc\":\"ThinkPhp6.x+Vue\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u6846\\u67b6\\uff0c\\u4e00\\u6b3e\\u4e13\\u4e3a\\u4f01\\u4e1a\\u548c\\u5f00\\u53d1\\u8005\\u7cbe\\u5fc3\\u6253\\u9020\\u7684\\u524d\\u540e\\u7aef\\u5206\\u79bb\\u5f00\\u53d1\\u5e73\\u53f0\"}', '操作日志', 3, '', '127.0.0.1', NULL, 'Windows', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 1, 1639731644, 1);

-- ----------------------------
-- Table structure for avt_ad
-- ----------------------------
DROP TABLE IF EXISTS `pk_ad`;
CREATE TABLE `pk_ad`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '广告标题',
  `ad_sort_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告位ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '广告图片',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告格式：1图片 2文字 3视频 4推荐',
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '广告描述',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '广告内容',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '广告链接',
  `width` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告宽度',
  `height` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告高度',
  `start_time` int(11) UNSIGNED NOT NULL COMMENT '开始时间',
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `view_num` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告点击次数',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1在用 2停用',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `ad_sort_id`(`ad_sort_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_ad
-- ----------------------------
INSERT INTO `pk_ad` VALUES (1, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (2, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (3, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (4, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (5, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (6, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (7, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (8, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (9, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (10, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (11, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (12, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (13, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (14, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (15, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (16, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (17, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (18, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (19, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (20, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (21, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (22, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (23, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_ad` VALUES (24, '国庆假日专享优惠活动', 1, '/images/ad/20210923/cbc4c7984cfb0d85791.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381909, 1);
INSERT INTO `pk_ad` VALUES (25, '国庆假日专享优惠活动', 1, '/images/ad/20210923/07e043a0148025cd832.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381898, 1);
INSERT INTO `pk_ad` VALUES (26, '国庆假日专享优惠活动', 1, '/images/ad/20210923/9073b7f5ec0a4f89831.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381872, 1);
INSERT INTO `pk_ad` VALUES (27, '国庆假日专享优惠活动', 1, '/images/ad/20210923/75509c2edf2c7330190.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381883, 1);
INSERT INTO `pk_ad` VALUES (28, '国庆假日专享优惠活动', 1, '/images/ad/20210923/671f4d3ac109685b550.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381861, 1);
INSERT INTO `pk_ad` VALUES (29, '国庆假日专享优惠活动', 1, '/images/ad/20210923/c9c1de8d4448e28c114.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381852, 1);
INSERT INTO `pk_ad` VALUES (30, '国庆假日专享优惠活动', 1, '/images/ad/20210923/e616b593f3d1bd77918.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381827, 1);
INSERT INTO `pk_ad` VALUES (31, '国庆假日专享优惠活动', 1, '/images/ad/20210923/c25e8e097219d32e528.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381818, 1);
INSERT INTO `pk_ad` VALUES (32, '国庆假日专享优惠活动', 1, '/images/ad/20210923/4233f591655bc5a5260.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381804, 1);
INSERT INTO `pk_ad` VALUES (33, '国庆假日专享优惠活动', 1, '/images/ad/20210923/e72a0e9f4a675146393.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381791, 1);
INSERT INTO `pk_ad` VALUES (34, '国庆假日专享优惠活动', 1, '/images/ad/20210923/35d9d0715796d1bd103.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381760, 1);
INSERT INTO `pk_ad` VALUES (35, '国庆假日专享优惠活动', 1, '/images/ad/20210923/0be32ee8e1403c88326.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381749, 1);
INSERT INTO `pk_ad` VALUES (36, '国庆假日专享优惠活动', 1, '/images/ad/20210923/5582f1d7f69c86a5999.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381741, 1);
INSERT INTO `pk_ad` VALUES (37, '国庆假日专享优惠活动', 1, '/images/ad/20210923/49835f18d83046cf519.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381718, 1);
INSERT INTO `pk_ad` VALUES (38, '国庆假日专享优惠活动', 1, '/images/ad/20210923/ef7847c16198b829862.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381702, 1);
INSERT INTO `pk_ad` VALUES (39, '国庆假日专享优惠活动', 1, '/images/ad/20210923/5c21c8f619b0e223150.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381669, 1);
INSERT INTO `pk_ad` VALUES (40, '国庆假日专享优惠活动', 1, '/images/ad/20210923/a40012709cf3670c743.jpg', 4, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381659, 1);
INSERT INTO `pk_ad` VALUES (41, '国庆假日专享优惠活动', 1, '/images/ad/20210923/7dc62efe92c6ad5c356.jpg', 1, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381650, 1);
INSERT INTO `pk_ad` VALUES (42, '国庆假日专享优惠活动', 1, '/images/ad/20210923/033c8686c09ab652986.jpg', 3, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1605873362, 1606737364, 10000, 1, 1, 1, 1621998864, 1, 1632381643, 1);
INSERT INTO `pk_ad` VALUES (43, '国庆假日专享优惠活动', 1, '/images/ad/20210923/1bcb6ac446a50f5e183.jpg', 2, '国庆专题直播板块一', '国庆专题直播板块一', 'http://www.rxthink.cn/', 450, 750, 1632141372, 1632141374, 10000, 1, 1, 1, 1621998864, 2, 1632462576, 1);

-- ----------------------------
-- Table structure for avt_ad_sort
-- ----------------------------
DROP TABLE IF EXISTS `pk_ad_sort`;
CREATE TABLE `pk_ad_sort`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '广告位名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '广告位描述',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `cate_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目ID',
  `loc_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告页面位置',
  `platform` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '站点类型：1PC网站 2WAP手机站 3微信小程序 4APP移动端',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '广告位排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告位管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_ad_sort
-- ----------------------------
INSERT INTO `pk_ad_sort` VALUES (1, '国庆专题直播板块', '网站专题页推荐广告位', 1, 2, 1, 1, 10, 1, 1621998864, 1, 1634197805, 1);

-- ----------------------------
-- Table structure for avt_article
-- ----------------------------
DROP TABLE IF EXISTS `pk_article`;
CREATE TABLE `pk_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `cover` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '首张图片编号',
  `item_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `cate_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目ID',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1显示 2不显示',
  `browse` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览量',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序号',
  `create_user` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `item_id`(`item_id`) USING BTREE,
  INDEX `cate_id`(`cate_id`) USING BTREE,
  INDEX `mark`(`mark`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_article
-- ----------------------------
INSERT INTO `pk_article` VALUES (1, '原来长大结婚，不是自然而然的事', '/images/article/20210924/fb1f3c1aa23df1c0727.jpg', 0, 2, 1, 0, 125, 1, 1632461690, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_article_0
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_0`;
CREATE TABLE `pk_article_0`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_1
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_1`;
CREATE TABLE `pk_article_1`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_article_1
-- ----------------------------
INSERT INTO `pk_article_1` VALUES (1, NULL, NULL, NULL, '在科伦坡的一家酒吧，我看到一位歌手在唱歌，酒吧里零零散散坐着几个欧洲中年人，毫无兴致地喝着酒、聊着天。台上的歌手坚持地唱着，就好像所有人都在用心地听着。', 'a:6:{i:0;s:48:\"/images/article/20210924/6aa7a3f60f09f5a6638.jpg\";i:1;s:48:\"/images/article/20210924/20bc6d59fa545210770.jpg\";i:2;s:48:\"/images/article/20210924/14f6349ef682abfc882.jpg\";i:3;s:48:\"/images/article/20210924/eb92891214f4468f709.jpg\";i:4;s:48:\"/images/article/20210924/067f952fb66afb91779.jpg\";i:5;s:48:\"/images/article/20210924/495a6affbb32c613668.jpg\";}', '<div class=\"content\">\n<p>过客于尘世间，人生的浮华，繁华的都市街道穿行的人流，双眸中我看见了，人们在过着的日子里，似流水上漂浮，焦虑、徘徊、失意、喜悦、成功的心情挂在脸上，在期盼中等待，去追寻那人生的归宿和驿站。</p>\n<p>风中的青山绿了又黄了，雨中花开了不知何时又谢了。隆冬的季节，在寒风中摇曳枯竭的树枝在飞舞，呼啸的北风撕裂了大地，天寒地冻，路灯下你我匆匆赶往回家的路，天空中飘起了鹅毛大雪，风中的积雪覆盖了农庄，整座城市银装素裹，冰冷的城市在冷风中飘旋。在那遥远山村的木屋里，缝隙里冷风飕飕，油灯下我看见，穿针织衣的北方老妇，那满头银丝白发如雪，风中舞；山路上那猎人赶往回村的路，步履艰难往前行。</p>\n<p>一抹暖阳穿头云层，冰雪消融，寒气江水中升腾，那一江的春水呀往东流，地球自转，四季开始更替&hellip;&hellip;，你我走近了繁花似锦、春花烂漫的一季，慢慢地走下去，去品那酸甜苦辣。</p>\n<p>一路走过，五味的人生，雨中泥泞的小路留下沧桑的脚印，青草变的翠绿，在山的尽头疯长，一路走过弥漫着花香，鲜花开满了都市，青青绘绿了大山，溪流穿过了森林，浇灌着农田。这一生、一世，这一路笑过、哭过、摔过，用心的走过，从哑哑学语的稚嫩、雨中少年的羞涩，阳光雨露滋润的童年，图画里映着那成长的印迹，似青春如火的花样年华，依然荡漾在以后的日子。那春花秋实，黄昏暮色中的落日余晖，天地轮回，夜色笼罩着城市，灯火阑珊，万家灯火，天穹中月牙挂起，星星在天际中飘流，在银河中舞动，喧闹的城市在夜色中渐渐宁静，在梦里挂起，黑夜中等待着黎明的来临&hellip;&hellip;</p>\n<p>趟过了夏季清清的河水，那田埂的尽头，依然荡漾着牧童的歌声，农舍里飘着那农家香，紫桑的葡萄挂满了架，后山果园里，金黄色的香瓜金灿灿，扑鼻的香味飘千里，弥漫着农庄。晚霞中那轻轻的风吹过河面，山里的樵夫赶着下山的路，那风中荡起了凉凉的秋意，瞬间枫叶将山里染成了金色，一直延伸到乡里的坡上。这收获的季节，心里的那份牵挂在秋风中荡起，飘飞的思绪带我回到了，那段激情燃烧的岁月&hellip;&hellip;</p>\n<p><img style=\"width: 497px; height: 324px; display: block; margin-left: auto; margin-right: auto;\" src=\"[IMG_URL]/images/article/20210924/09a06598006cf7f2842.png\" alt=\"\" /></p>\n<p>锣鼓声中，晴空中飘旋着军乐曲，开往南方的军列上，响起了那激昂的军歌，&ldquo;我是一兵，来自老百姓，&rdquo;军歌嘹亮响彻在车厢。那年的秋天开始了难忘的军旅生涯，远离亲人，远离家乡，在绿色大山锤炼着钢铁般的革命意志。</p>\n<p>那南江的炮火在红土上燃起，那些我的同龄人，无数年轻的勇士跳出战壕，奋勇地扑向敌人的阵地，鲜血染红了山岗，军旗依旧飘扬在硝烟中，散去的硝烟弥漫着南江，那丰碑依然屹立在木棉花盛开的地方。</p>\n<p>许多年过去了，英烈的灵魂依然飘荡在那片红色的土地上，永远的激励后人奋斗！刻骨铭心激情燃烧的岁月，如今的日子里闲静中依然会响起&hellip;&hellip;.，风雨中走过的人生，凡人尘世，过眼的烟云，人生似流云匆匆于过客，人生需要努力、加油。</p>\n</div>', NULL);

-- ----------------------------
-- Table structure for avt_article_2
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_2`;
CREATE TABLE `pk_article_2`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_3
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_3`;
CREATE TABLE `pk_article_3`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_4
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_4`;
CREATE TABLE `pk_article_4`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_5
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_5`;
CREATE TABLE `pk_article_5`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_6
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_6`;
CREATE TABLE `pk_article_6`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_article_6
-- ----------------------------
INSERT INTO `pk_article_6` VALUES (6, NULL, NULL, NULL, '当年的一个不经意间产生了一个伟大的发明——计算机，在这之上又是一个不经意间产生了彻底的改变你我生活的-互联网；这些伟大的转折点，从来不是突然之间到来，就像大海都是由一滴滴水滴慢慢汇聚而成，而我们就像水消失在水中，看似微不足道，但却都不可或缺；', 'a:6:{i:0;s:48:\"/images/article/20210924/fe51ad097e6c8885292.jpg\";i:1;s:48:\"/images/article/20210924/0180653c6442935d188.jpg\";i:2;s:48:\"/images/article/20210924/6cb41c1246831931997.jpg\";i:3;s:48:\"/images/article/20210924/d3e5233d5569ba4c878.jpg\";i:4;s:48:\"/images/article/20210924/0ac1cf482f0c2872377.jpg\";i:5;s:48:\"/images/article/20210924/90cac8ec363acbb4701.jpg\";}', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"[IMG_URL]/images/article/20210924/39951ea051597a46466.jpeg\" /></p>\n<p>当年的一个不经意间产生了一个伟大的发明&mdash;&mdash;计算机，在这之上又是一个不经意间产生了彻底的改变你我生活的-互联网；这些伟大的转折点，从来不是突然之间到来，就像大海都是由一滴滴水滴慢慢汇聚而成，而我们就像水消失在水中，看似微不足道，但却都不可或缺；作为互联网技术发展的史上的一滴微不足道的水滴，让我们来回顾一下互联网后端应用的架构发展，以及对未来的一些思考和展望吧...</p>\n<p>本文是纯粹的思考和讨论，尽可能客观的讨论相关架构。主要对后端 api 应用，以一种事后诸葛亮式的视角进行分析。</p>\n<p>历史回顾</p>\n<p>随着业务复杂度以及开发团队规模的不断扩大，互联网后端部署架构也随之不断演进。</p>\n<p><img src=\"[IMG_URL]/images/article/20210605/2d86434e9c1a08c9804.png\" alt=\"\" width=\"1080\" height=\"626\" /></p>', NULL);

-- ----------------------------
-- Table structure for avt_article_7
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_7`;
CREATE TABLE `pk_article_7`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_8
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_8`;
CREATE TABLE `pk_article_8`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_article_9
-- ----------------------------
DROP TABLE IF EXISTS `pk_article_9`;
CREATE TABLE `pk_article_9`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '唯一性标识',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源名称',
  `source_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源链接',
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章导读',
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关键词序列化',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章管理附表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avt_city
-- ----------------------------
DROP TABLE IF EXISTS `pk_city`;
CREATE TABLE `pk_city`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级编号',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '城市级别：1省 2市 3区',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市名称',
  `citycode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市编号（区号）',
  `p_adcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父级地理编号',
  `adcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地理编号',
  `lng` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '城市坐标中心点经度（* 1e6）：如果是中国，此值是 1e7',
  `lat` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '城市坐标中心点纬度（* 1e6）',
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序号',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_name`(`name`) USING BTREE COMMENT '城市名称'
) ENGINE = InnoDB AUTO_INCREMENT = 3215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '行政区划表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_city
-- ----------------------------
INSERT INTO `pk_city` VALUES (1, 0, 1, '北京市', '110000', NULL, '0', 0, 0, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2, 1, 2, '北京市', '110100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3, 2, 3, '东城区', '110101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (4, 2, 3, '西城区', '110102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (5, 2, 3, '朝阳区', '110105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (6, 2, 3, '丰台区', '110106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (7, 2, 3, '石景山区', '110107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (8, 2, 3, '海淀区', '110108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (9, 2, 3, '门头沟区', '110109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (10, 2, 3, '房山区', '110111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (11, 2, 3, '通州区', '110112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (12, 2, 3, '顺义区', '110113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (13, 2, 3, '昌平区', '110114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (14, 2, 3, '大兴区', '110115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (15, 2, 3, '怀柔区', '110116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (16, 2, 3, '平谷区', '110117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (17, 2, 3, '密云区', '110118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (18, 2, 3, '延庆区', '110119', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (19, 0, 1, '天津市', '120000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (20, 19, 2, '天津市', '120100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (21, 20, 3, '和平区', '120101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (22, 20, 3, '河东区', '120102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (23, 20, 3, '河西区', '120103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (24, 20, 3, '南开区', '120104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (25, 20, 3, '河北区', '120105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (26, 20, 3, '红桥区', '120106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (27, 20, 3, '东丽区', '120110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (28, 20, 3, '西青区', '120111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (29, 20, 3, '津南区', '120112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (30, 20, 3, '北辰区', '120113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (31, 20, 3, '武清区', '120114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (32, 20, 3, '宝坻区', '120115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (33, 20, 3, '滨海新区', '120116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (34, 20, 3, '宁河区', '120117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (35, 20, 3, '静海区', '120118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (36, 20, 3, '蓟州区', '120119', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (37, 0, 1, '河北省', '130000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (38, 37, 2, '石家庄市', '130100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (39, 38, 3, '长安区', '130102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (40, 38, 3, '桥西区', '130104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (41, 38, 3, '新华区', '130105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (42, 38, 3, '井陉矿区', '130107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (43, 38, 3, '裕华区', '130108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (44, 38, 3, '藁城区', '130109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (45, 38, 3, '鹿泉区', '130110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (46, 38, 3, '栾城区', '130111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (47, 38, 3, '井陉县', '130121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (48, 38, 3, '正定县', '130123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (49, 38, 3, '行唐县', '130125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (50, 38, 3, '灵寿县', '130126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (51, 38, 3, '高邑县', '130127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (52, 38, 3, '深泽县', '130128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (53, 38, 3, '赞皇县', '130129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (54, 38, 3, '无极县', '130130', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (55, 38, 3, '平山县', '130131', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (56, 38, 3, '元氏县', '130132', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (57, 38, 3, '赵县', '130133', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (58, 38, 3, '辛集市', '130181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (59, 38, 3, '晋州市', '130183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (60, 38, 3, '新乐市', '130184', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (61, 37, 2, '唐山市', '130200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (62, 61, 3, '路南区', '130202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (63, 61, 3, '路北区', '130203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (64, 61, 3, '古冶区', '130204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (65, 61, 3, '开平区', '130205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (66, 61, 3, '丰南区', '130207', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (67, 61, 3, '丰润区', '130208', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (68, 61, 3, '曹妃甸区', '130209', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (69, 61, 3, '滦南县', '130224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (70, 61, 3, '乐亭县', '130225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (71, 61, 3, '迁西县', '130227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (72, 61, 3, '玉田县', '130229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (73, 61, 3, '遵化市', '130281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (74, 61, 3, '迁安市', '130283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (75, 61, 3, '滦州市', '130284', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (76, 37, 2, '秦皇岛市', '130300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (77, 76, 3, '海港区', '130302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (78, 76, 3, '山海关区', '130303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (79, 76, 3, '北戴河区', '130304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (80, 76, 3, '抚宁区', '130306', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (81, 76, 3, '青龙满族自治县', '130321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (82, 76, 3, '昌黎县', '130322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (83, 76, 3, '卢龙县', '130324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (84, 37, 2, '邯郸市', '130400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (85, 84, 3, '邯山区', '130402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (86, 84, 3, '丛台区', '130403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (87, 84, 3, '复兴区', '130404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (88, 84, 3, '峰峰矿区', '130406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (89, 84, 3, '肥乡区', '130407', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (90, 84, 3, '永年区', '130408', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (91, 84, 3, '临漳县', '130423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (92, 84, 3, '成安县', '130424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (93, 84, 3, '大名县', '130425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (94, 84, 3, '涉县', '130426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (95, 84, 3, '磁县', '130427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (96, 84, 3, '邱县', '130430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (97, 84, 3, '鸡泽县', '130431', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (98, 84, 3, '广平县', '130432', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (99, 84, 3, '馆陶县', '130433', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (100, 84, 3, '魏县', '130434', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (101, 84, 3, '曲周县', '130435', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (102, 84, 3, '武安市', '130481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (103, 37, 2, '邢台市', '130500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (104, 103, 3, '襄都区', '130502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (105, 103, 3, '信都区', '130503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (106, 103, 3, '任泽区', '130505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (107, 103, 3, '南和区', '130506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (108, 103, 3, '临城县', '130522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (109, 103, 3, '内丘县', '130523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (110, 103, 3, '柏乡县', '130524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (111, 103, 3, '隆尧县', '130525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (112, 103, 3, '宁晋县', '130528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (113, 103, 3, '巨鹿县', '130529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (114, 103, 3, '新河县', '130530', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (115, 103, 3, '广宗县', '130531', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (116, 103, 3, '平乡县', '130532', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (117, 103, 3, '威县', '130533', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (118, 103, 3, '清河县', '130534', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (119, 103, 3, '临西县', '130535', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (120, 103, 3, '南宫市', '130581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (121, 103, 3, '沙河市', '130582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (122, 37, 2, '保定市', '130600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (123, 122, 3, '竞秀区', '130602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (124, 122, 3, '莲池区', '130606', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (125, 122, 3, '满城区', '130607', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (126, 122, 3, '清苑区', '130608', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (127, 122, 3, '徐水区', '130609', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (128, 122, 3, '涞水县', '130623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (129, 122, 3, '阜平县', '130624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (130, 122, 3, '定兴县', '130626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (131, 122, 3, '唐县', '130627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (132, 122, 3, '高阳县', '130628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (133, 122, 3, '容城县', '130629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (134, 122, 3, '涞源县', '130630', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (135, 122, 3, '望都县', '130631', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (136, 122, 3, '安新县', '130632', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (137, 122, 3, '易县', '130633', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (138, 122, 3, '曲阳县', '130634', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (139, 122, 3, '蠡县', '130635', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (140, 122, 3, '顺平县', '130636', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (141, 122, 3, '博野县', '130637', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (142, 122, 3, '雄县', '130638', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (143, 122, 3, '涿州市', '130681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (144, 122, 3, '定州市', '130682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (145, 122, 3, '安国市', '130683', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (146, 122, 3, '高碑店市', '130684', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (147, 37, 2, '张家口市', '130700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (148, 147, 3, '桥东区', '130702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (149, 147, 3, '桥西区', '130703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (150, 147, 3, '宣化区', '130705', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (151, 147, 3, '下花园区', '130706', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (152, 147, 3, '万全区', '130708', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (153, 147, 3, '崇礼区', '130709', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (154, 147, 3, '张北县', '130722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (155, 147, 3, '康保县', '130723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (156, 147, 3, '沽源县', '130724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (157, 147, 3, '尚义县', '130725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (158, 147, 3, '蔚县', '130726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (159, 147, 3, '阳原县', '130727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (160, 147, 3, '怀安县', '130728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (161, 147, 3, '怀来县', '130730', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (162, 147, 3, '涿鹿县', '130731', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (163, 147, 3, '赤城县', '130732', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (164, 37, 2, '承德市', '130800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (165, 164, 3, '双桥区', '130802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (166, 164, 3, '双滦区', '130803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (167, 164, 3, '鹰手营子矿区', '130804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (168, 164, 3, '承德县', '130821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (169, 164, 3, '兴隆县', '130822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (170, 164, 3, '滦平县', '130824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (171, 164, 3, '隆化县', '130825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (172, 164, 3, '丰宁满族自治县', '130826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (173, 164, 3, '宽城满族自治县', '130827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (174, 164, 3, '围场满族蒙古族自治县', '130828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (175, 164, 3, '平泉市', '130881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (176, 37, 2, '沧州市', '130900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (177, 176, 3, '新华区', '130902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (178, 176, 3, '运河区', '130903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (179, 176, 3, '沧县', '130921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (180, 176, 3, '青县', '130922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (181, 176, 3, '东光县', '130923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (182, 176, 3, '海兴县', '130924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (183, 176, 3, '盐山县', '130925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (184, 176, 3, '肃宁县', '130926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (185, 176, 3, '南皮县', '130927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (186, 176, 3, '吴桥县', '130928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (187, 176, 3, '献县', '130929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (188, 176, 3, '孟村回族自治县', '130930', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (189, 176, 3, '泊头市', '130981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (190, 176, 3, '任丘市', '130982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (191, 176, 3, '黄骅市', '130983', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (192, 176, 3, '河间市', '130984', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (193, 37, 2, '廊坊市', '131000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (194, 193, 3, '安次区', '131002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (195, 193, 3, '广阳区', '131003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (196, 193, 3, '固安县', '131022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (197, 193, 3, '永清县', '131023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (198, 193, 3, '香河县', '131024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (199, 193, 3, '大城县', '131025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (200, 193, 3, '文安县', '131026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (201, 193, 3, '大厂回族自治县', '131028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (202, 193, 3, '霸州市', '131081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (203, 193, 3, '三河市', '131082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (204, 37, 2, '衡水市', '131100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (205, 204, 3, '桃城区', '131102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (206, 204, 3, '冀州区', '131103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (207, 204, 3, '枣强县', '131121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (208, 204, 3, '武邑县', '131122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (209, 204, 3, '武强县', '131123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (210, 204, 3, '饶阳县', '131124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (211, 204, 3, '安平县', '131125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (212, 204, 3, '故城县', '131126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (213, 204, 3, '景县', '131127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (214, 204, 3, '阜城县', '131128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (215, 204, 3, '深州市', '131182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (216, 0, 1, '山西省', '140000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (217, 216, 2, '太原市', '140100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (218, 217, 3, '小店区', '140105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (219, 217, 3, '迎泽区', '140106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (220, 217, 3, '杏花岭区', '140107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (221, 217, 3, '尖草坪区', '140108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (222, 217, 3, '万柏林区', '140109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (223, 217, 3, '晋源区', '140110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (224, 217, 3, '清徐县', '140121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (225, 217, 3, '阳曲县', '140122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (226, 217, 3, '娄烦县', '140123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (227, 217, 3, '古交市', '140181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (228, 216, 2, '大同市', '140200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (229, 228, 3, '新荣区', '140212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (230, 228, 3, '平城区', '140213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (231, 228, 3, '云冈区', '140214', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (232, 228, 3, '云州区', '140215', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (233, 228, 3, '阳高县', '140221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (234, 228, 3, '天镇县', '140222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (235, 228, 3, '广灵县', '140223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (236, 228, 3, '灵丘县', '140224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (237, 228, 3, '浑源县', '140225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (238, 228, 3, '左云县', '140226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (239, 216, 2, '阳泉市', '140300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (240, 239, 3, '城区', '140302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (241, 239, 3, '矿区', '140303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (242, 239, 3, '郊区', '140311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (243, 239, 3, '平定县', '140321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (244, 239, 3, '盂县', '140322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (245, 216, 2, '长治市', '140400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (246, 245, 3, '潞州区', '140403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (247, 245, 3, '上党区', '140404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (248, 245, 3, '屯留区', '140405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (249, 245, 3, '潞城区', '140406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (250, 245, 3, '襄垣县', '140423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (251, 245, 3, '平顺县', '140425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (252, 245, 3, '黎城县', '140426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (253, 245, 3, '壶关县', '140427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (254, 245, 3, '长子县', '140428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (255, 245, 3, '武乡县', '140429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (256, 245, 3, '沁县', '140430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (257, 245, 3, '沁源县', '140431', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (258, 216, 2, '晋城市', '140500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (259, 258, 3, '城区', '140502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (260, 258, 3, '沁水县', '140521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (261, 258, 3, '阳城县', '140522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (262, 258, 3, '陵川县', '140524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (263, 258, 3, '泽州县', '140525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (264, 258, 3, '高平市', '140581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (265, 216, 2, '朔州市', '140600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (266, 265, 3, '朔城区', '140602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (267, 265, 3, '平鲁区', '140603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (268, 265, 3, '山阴县', '140621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (269, 265, 3, '应县', '140622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (270, 265, 3, '右玉县', '140623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (271, 265, 3, '怀仁市', '140681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (272, 216, 2, '晋中市', '140700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (273, 272, 3, '榆次区', '140702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (274, 272, 3, '太谷区', '140703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (275, 272, 3, '榆社县', '140721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (276, 272, 3, '左权县', '140722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (277, 272, 3, '和顺县', '140723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (278, 272, 3, '昔阳县', '140724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (279, 272, 3, '寿阳县', '140725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (280, 272, 3, '祁县', '140727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (281, 272, 3, '平遥县', '140728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (282, 272, 3, '灵石县', '140729', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (283, 272, 3, '介休市', '140781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (284, 216, 2, '运城市', '140800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (285, 284, 3, '盐湖区', '140802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (286, 284, 3, '临猗县', '140821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (287, 284, 3, '万荣县', '140822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (288, 284, 3, '闻喜县', '140823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (289, 284, 3, '稷山县', '140824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (290, 284, 3, '新绛县', '140825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (291, 284, 3, '绛县', '140826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (292, 284, 3, '垣曲县', '140827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (293, 284, 3, '夏县', '140828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (294, 284, 3, '平陆县', '140829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (295, 284, 3, '芮城县', '140830', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (296, 284, 3, '永济市', '140881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (297, 284, 3, '河津市', '140882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (298, 216, 2, '忻州市', '140900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (299, 298, 3, '忻府区', '140902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (300, 298, 3, '定襄县', '140921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (301, 298, 3, '五台县', '140922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (302, 298, 3, '代县', '140923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (303, 298, 3, '繁峙县', '140924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (304, 298, 3, '宁武县', '140925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (305, 298, 3, '静乐县', '140926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (306, 298, 3, '神池县', '140927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (307, 298, 3, '五寨县', '140928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (308, 298, 3, '岢岚县', '140929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (309, 298, 3, '河曲县', '140930', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (310, 298, 3, '保德县', '140931', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (311, 298, 3, '偏关县', '140932', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (312, 298, 3, '原平市', '140981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (313, 216, 2, '临汾市', '141000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (314, 313, 3, '尧都区', '141002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (315, 313, 3, '曲沃县', '141021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (316, 313, 3, '翼城县', '141022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (317, 313, 3, '襄汾县', '141023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (318, 313, 3, '洪洞县', '141024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (319, 313, 3, '古县', '141025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (320, 313, 3, '安泽县', '141026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (321, 313, 3, '浮山县', '141027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (322, 313, 3, '吉县', '141028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (323, 313, 3, '乡宁县', '141029', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (324, 313, 3, '大宁县', '141030', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (325, 313, 3, '隰县', '141031', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (326, 313, 3, '永和县', '141032', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (327, 313, 3, '蒲县', '141033', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (328, 313, 3, '汾西县', '141034', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (329, 313, 3, '侯马市', '141081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (330, 313, 3, '霍州市', '141082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (331, 216, 2, '吕梁市', '141100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (332, 331, 3, '离石区', '141102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (333, 331, 3, '文水县', '141121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (334, 331, 3, '交城县', '141122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (335, 331, 3, '兴县', '141123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (336, 331, 3, '临县', '141124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (337, 331, 3, '柳林县', '141125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (338, 331, 3, '石楼县', '141126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (339, 331, 3, '岚县', '141127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (340, 331, 3, '方山县', '141128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (341, 331, 3, '中阳县', '141129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (342, 331, 3, '交口县', '141130', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (343, 331, 3, '孝义市', '141181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (344, 331, 3, '汾阳市', '141182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (345, 0, 1, '内蒙古自治区', '150000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (346, 345, 2, '呼和浩特市', '150100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (347, 346, 3, '新城区', '150102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (348, 346, 3, '回民区', '150103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (349, 346, 3, '玉泉区', '150104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (350, 346, 3, '赛罕区', '150105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (351, 346, 3, '土默特左旗', '150121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (352, 346, 3, '托克托县', '150122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (353, 346, 3, '和林格尔县', '150123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (354, 346, 3, '清水河县', '150124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (355, 346, 3, '武川县', '150125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (356, 345, 2, '包头市', '150200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (357, 356, 3, '东河区', '150202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (358, 356, 3, '昆都仑区', '150203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (359, 356, 3, '青山区', '150204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (360, 356, 3, '石拐区', '150205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (361, 356, 3, '白云鄂博矿区', '150206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (362, 356, 3, '九原区', '150207', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (363, 356, 3, '土默特右旗', '150221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (364, 356, 3, '固阳县', '150222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (365, 356, 3, '达尔罕茂明安联合旗', '150223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (366, 345, 2, '乌海市', '150300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (367, 366, 3, '海勃湾区', '150302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (368, 366, 3, '海南区', '150303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (369, 366, 3, '乌达区', '150304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (370, 345, 2, '赤峰市', '150400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (371, 370, 3, '红山区', '150402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (372, 370, 3, '元宝山区', '150403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (373, 370, 3, '松山区', '150404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (374, 370, 3, '阿鲁科尔沁旗', '150421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (375, 370, 3, '巴林左旗', '150422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (376, 370, 3, '巴林右旗', '150423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (377, 370, 3, '林西县', '150424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (378, 370, 3, '克什克腾旗', '150425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (379, 370, 3, '翁牛特旗', '150426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (380, 370, 3, '喀喇沁旗', '150428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (381, 370, 3, '宁城县', '150429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (382, 370, 3, '敖汉旗', '150430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (383, 345, 2, '通辽市', '150500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (384, 383, 3, '科尔沁区', '150502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (385, 383, 3, '科尔沁左翼中旗', '150521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (386, 383, 3, '科尔沁左翼后旗', '150522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (387, 383, 3, '开鲁县', '150523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (388, 383, 3, '库伦旗', '150524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (389, 383, 3, '奈曼旗', '150525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (390, 383, 3, '扎鲁特旗', '150526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (391, 383, 3, '霍林郭勒市', '150581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (392, 345, 2, '鄂尔多斯市', '150600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (393, 392, 3, '东胜区', '150602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (394, 392, 3, '康巴什区', '150603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (395, 392, 3, '达拉特旗', '150621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (396, 392, 3, '准格尔旗', '150622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (397, 392, 3, '鄂托克前旗', '150623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (398, 392, 3, '鄂托克旗', '150624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (399, 392, 3, '杭锦旗', '150625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (400, 392, 3, '乌审旗', '150626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (401, 392, 3, '伊金霍洛旗', '150627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (402, 345, 2, '呼伦贝尔市', '150700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (403, 402, 3, '海拉尔区', '150702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (404, 402, 3, '扎赉诺尔区', '150703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (405, 402, 3, '阿荣旗', '150721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (406, 402, 3, '莫力达瓦达斡尔族自治旗', '150722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (407, 402, 3, '鄂伦春自治旗', '150723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (408, 402, 3, '鄂温克族自治旗', '150724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (409, 402, 3, '陈巴尔虎旗', '150725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (410, 402, 3, '新巴尔虎左旗', '150726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (411, 402, 3, '新巴尔虎右旗', '150727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (412, 402, 3, '满洲里市', '150781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (413, 402, 3, '牙克石市', '150782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (414, 402, 3, '扎兰屯市', '150783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (415, 402, 3, '额尔古纳市', '150784', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (416, 402, 3, '根河市', '150785', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (417, 345, 2, '巴彦淖尔市', '150800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (418, 417, 3, '临河区', '150802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (419, 417, 3, '五原县', '150821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (420, 417, 3, '磴口县', '150822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (421, 417, 3, '乌拉特前旗', '150823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (422, 417, 3, '乌拉特中旗', '150824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (423, 417, 3, '乌拉特后旗', '150825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (424, 417, 3, '杭锦后旗', '150826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (425, 345, 2, '乌兰察布市', '150900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (426, 425, 3, '集宁区', '150902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (427, 425, 3, '卓资县', '150921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (428, 425, 3, '化德县', '150922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (429, 425, 3, '商都县', '150923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (430, 425, 3, '兴和县', '150924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (431, 425, 3, '凉城县', '150925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (432, 425, 3, '察哈尔右翼前旗', '150926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (433, 425, 3, '察哈尔右翼中旗', '150927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (434, 425, 3, '察哈尔右翼后旗', '150928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (435, 425, 3, '四子王旗', '150929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (436, 425, 3, '丰镇市', '150981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (437, 345, 2, '兴安盟', '152200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (438, 437, 3, '乌兰浩特市', '152201', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (439, 437, 3, '阿尔山市', '152202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (440, 437, 3, '科尔沁右翼前旗', '152221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (441, 437, 3, '科尔沁右翼中旗', '152222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (442, 437, 3, '扎赉特旗', '152223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (443, 437, 3, '突泉县', '152224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (444, 345, 2, '锡林郭勒盟', '152500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (445, 444, 3, '二连浩特市', '152501', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (446, 444, 3, '锡林浩特市', '152502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (447, 444, 3, '阿巴嘎旗', '152522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (448, 444, 3, '苏尼特左旗', '152523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (449, 444, 3, '苏尼特右旗', '152524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (450, 444, 3, '东乌珠穆沁旗', '152525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (451, 444, 3, '西乌珠穆沁旗', '152526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (452, 444, 3, '太仆寺旗', '152527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (453, 444, 3, '镶黄旗', '152528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (454, 444, 3, '正镶白旗', '152529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (455, 444, 3, '正蓝旗', '152530', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (456, 444, 3, '多伦县', '152531', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (457, 345, 2, '阿拉善盟', '152900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (458, 457, 3, '阿拉善左旗', '152921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (459, 457, 3, '阿拉善右旗', '152922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (460, 457, 3, '额济纳旗', '152923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (461, 0, 1, '辽宁省', '210000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (462, 461, 2, '沈阳市', '210100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (463, 462, 3, '和平区', '210102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (464, 462, 3, '沈河区', '210103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (465, 462, 3, '大东区', '210104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (466, 462, 3, '皇姑区', '210105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (467, 462, 3, '铁西区', '210106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (468, 462, 3, '苏家屯区', '210111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (469, 462, 3, '浑南区', '210112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (470, 462, 3, '沈北新区', '210113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (471, 462, 3, '于洪区', '210114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (472, 462, 3, '辽中区', '210115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (473, 462, 3, '康平县', '210123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (474, 462, 3, '法库县', '210124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (475, 462, 3, '新民市', '210181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (476, 461, 2, '大连市', '210200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (477, 476, 3, '中山区', '210202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (478, 476, 3, '西岗区', '210203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (479, 476, 3, '沙河口区', '210204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (480, 476, 3, '甘井子区', '210211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (481, 476, 3, '旅顺口区', '210212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (482, 476, 3, '金州区', '210213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (483, 476, 3, '普兰店区', '210214', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (484, 476, 3, '长海县', '210224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (485, 476, 3, '瓦房店市', '210281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (486, 476, 3, '庄河市', '210283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (487, 461, 2, '鞍山市', '210300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (488, 487, 3, '铁东区', '210302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (489, 487, 3, '铁西区', '210303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (490, 487, 3, '立山区', '210304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (491, 487, 3, '千山区', '210311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (492, 487, 3, '台安县', '210321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (493, 487, 3, '岫岩满族自治县', '210323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (494, 487, 3, '海城市', '210381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (495, 461, 2, '抚顺市', '210400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (496, 495, 3, '新抚区', '210402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (497, 495, 3, '东洲区', '210403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (498, 495, 3, '望花区', '210404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (499, 495, 3, '顺城区', '210411', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (500, 495, 3, '抚顺县', '210421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (501, 495, 3, '新宾满族自治县', '210422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (502, 495, 3, '清原满族自治县', '210423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (503, 461, 2, '本溪市', '210500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (504, 503, 3, '平山区', '210502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (505, 503, 3, '溪湖区', '210503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (506, 503, 3, '明山区', '210504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (507, 503, 3, '南芬区', '210505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (508, 503, 3, '本溪满族自治县', '210521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (509, 503, 3, '桓仁满族自治县', '210522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (510, 461, 2, '丹东市', '210600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (511, 510, 3, '元宝区', '210602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (512, 510, 3, '振兴区', '210603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (513, 510, 3, '振安区', '210604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (514, 510, 3, '宽甸满族自治县', '210624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (515, 510, 3, '东港市', '210681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (516, 510, 3, '凤城市', '210682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (517, 461, 2, '锦州市', '210700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (518, 517, 3, '古塔区', '210702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (519, 517, 3, '凌河区', '210703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (520, 517, 3, '太和区', '210711', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (521, 517, 3, '黑山县', '210726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (522, 517, 3, '义县', '210727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (523, 517, 3, '凌海市', '210781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (524, 517, 3, '北镇市', '210782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (525, 461, 2, '营口市', '210800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (526, 525, 3, '站前区', '210802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (527, 525, 3, '西市区', '210803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (528, 525, 3, '鲅鱼圈区', '210804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (529, 525, 3, '老边区', '210811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (530, 525, 3, '盖州市', '210881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (531, 525, 3, '大石桥市', '210882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (532, 461, 2, '阜新市', '210900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (533, 532, 3, '海州区', '210902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (534, 532, 3, '新邱区', '210903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (535, 532, 3, '太平区', '210904', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (536, 532, 3, '清河门区', '210905', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (537, 532, 3, '细河区', '210911', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (538, 532, 3, '阜新蒙古族自治县', '210921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (539, 532, 3, '彰武县', '210922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (540, 461, 2, '辽阳市', '211000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (541, 540, 3, '白塔区', '211002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (542, 540, 3, '文圣区', '211003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (543, 540, 3, '宏伟区', '211004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (544, 540, 3, '弓长岭区', '211005', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (545, 540, 3, '太子河区', '211011', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (546, 540, 3, '辽阳县', '211021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (547, 540, 3, '灯塔市', '211081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (548, 461, 2, '盘锦市', '211100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (549, 548, 3, '双台子区', '211102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (550, 548, 3, '兴隆台区', '211103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (551, 548, 3, '大洼区', '211104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (552, 548, 3, '盘山县', '211122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (553, 461, 2, '铁岭市', '211200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (554, 553, 3, '银州区', '211202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (555, 553, 3, '清河区', '211204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (556, 553, 3, '铁岭县', '211221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (557, 553, 3, '西丰县', '211223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (558, 553, 3, '昌图县', '211224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (559, 553, 3, '调兵山市', '211281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (560, 553, 3, '开原市', '211282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (561, 461, 2, '朝阳市', '211300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (562, 561, 3, '双塔区', '211302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (563, 561, 3, '龙城区', '211303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (564, 561, 3, '朝阳县', '211321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (565, 561, 3, '建平县', '211322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (566, 561, 3, '喀喇沁左翼蒙古族自治县', '211324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (567, 561, 3, '北票市', '211381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (568, 561, 3, '凌源市', '211382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (569, 461, 2, '葫芦岛市', '211400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (570, 569, 3, '连山区', '211402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (571, 569, 3, '龙港区', '211403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (572, 569, 3, '南票区', '211404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (573, 569, 3, '绥中县', '211421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (574, 569, 3, '建昌县', '211422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (575, 569, 3, '兴城市', '211481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (576, 0, 1, '吉林省', '220000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (577, 576, 2, '长春市', '220100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (578, 577, 3, '南关区', '220102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (579, 577, 3, '宽城区', '220103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (580, 577, 3, '朝阳区', '220104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (581, 577, 3, '二道区', '220105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (582, 577, 3, '绿园区', '220106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (583, 577, 3, '双阳区', '220112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (584, 577, 3, '九台区', '220113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (585, 577, 3, '农安县', '220122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (586, 577, 3, '榆树市', '220182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (587, 577, 3, '德惠市', '220183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (588, 577, 3, '公主岭市', '220184', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (589, 576, 2, '吉林市', '220200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (590, 589, 3, '昌邑区', '220202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (591, 589, 3, '龙潭区', '220203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (592, 589, 3, '船营区', '220204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (593, 589, 3, '丰满区', '220211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (594, 589, 3, '永吉县', '220221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (595, 589, 3, '蛟河市', '220281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (596, 589, 3, '桦甸市', '220282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (597, 589, 3, '舒兰市', '220283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (598, 589, 3, '磐石市', '220284', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (599, 576, 2, '四平市', '220300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (600, 599, 3, '铁西区', '220302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (601, 599, 3, '铁东区', '220303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (602, 599, 3, '梨树县', '220322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (603, 599, 3, '伊通满族自治县', '220323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (604, 599, 3, '双辽市', '220382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (605, 576, 2, '辽源市', '220400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (606, 605, 3, '龙山区', '220402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (607, 605, 3, '西安区', '220403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (608, 605, 3, '东丰县', '220421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (609, 605, 3, '东辽县', '220422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (610, 576, 2, '通化市', '220500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (611, 610, 3, '东昌区', '220502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (612, 610, 3, '二道江区', '220503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (613, 610, 3, '通化县', '220521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (614, 610, 3, '辉南县', '220523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (615, 610, 3, '柳河县', '220524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (616, 610, 3, '梅河口市', '220581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (617, 610, 3, '集安市', '220582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (618, 576, 2, '白山市', '220600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (619, 618, 3, '浑江区', '220602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (620, 618, 3, '江源区', '220605', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (621, 618, 3, '抚松县', '220621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (622, 618, 3, '靖宇县', '220622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (623, 618, 3, '长白朝鲜族自治县', '220623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (624, 618, 3, '临江市', '220681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (625, 576, 2, '松原市', '220700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (626, 625, 3, '宁江区', '220702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (627, 625, 3, '前郭尔罗斯蒙古族自治县', '220721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (628, 625, 3, '长岭县', '220722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (629, 625, 3, '乾安县', '220723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (630, 625, 3, '扶余市', '220781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (631, 576, 2, '白城市', '220800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (632, 631, 3, '洮北区', '220802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (633, 631, 3, '镇赉县', '220821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (634, 631, 3, '通榆县', '220822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (635, 631, 3, '洮南市', '220881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (636, 631, 3, '大安市', '220882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (637, 576, 2, '延边朝鲜族自治州', '222400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (638, 637, 3, '延吉市', '222401', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (639, 637, 3, '图们市', '222402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (640, 637, 3, '敦化市', '222403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (641, 637, 3, '珲春市', '222404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (642, 637, 3, '龙井市', '222405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (643, 637, 3, '和龙市', '222406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (644, 637, 3, '汪清县', '222424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (645, 637, 3, '安图县', '222426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (646, 0, 1, '黑龙江省', '230000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (647, 646, 2, '哈尔滨市', '230100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (648, 647, 3, '道里区', '230102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (649, 647, 3, '南岗区', '230103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (650, 647, 3, '道外区', '230104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (651, 647, 3, '平房区', '230108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (652, 647, 3, '松北区', '230109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (653, 647, 3, '香坊区', '230110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (654, 647, 3, '呼兰区', '230111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (655, 647, 3, '阿城区', '230112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (656, 647, 3, '双城区', '230113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (657, 647, 3, '依兰县', '230123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (658, 647, 3, '方正县', '230124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (659, 647, 3, '宾县', '230125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (660, 647, 3, '巴彦县', '230126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (661, 647, 3, '木兰县', '230127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (662, 647, 3, '通河县', '230128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (663, 647, 3, '延寿县', '230129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (664, 647, 3, '尚志市', '230183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (665, 647, 3, '五常市', '230184', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (666, 646, 2, '齐齐哈尔市', '230200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (667, 666, 3, '龙沙区', '230202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (668, 666, 3, '建华区', '230203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (669, 666, 3, '铁锋区', '230204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (670, 666, 3, '昂昂溪区', '230205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (671, 666, 3, '富拉尔基区', '230206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (672, 666, 3, '碾子山区', '230207', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (673, 666, 3, '梅里斯达斡尔族区', '230208', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (674, 666, 3, '龙江县', '230221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (675, 666, 3, '依安县', '230223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (676, 666, 3, '泰来县', '230224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (677, 666, 3, '甘南县', '230225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (678, 666, 3, '富裕县', '230227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (679, 666, 3, '克山县', '230229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (680, 666, 3, '克东县', '230230', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (681, 666, 3, '拜泉县', '230231', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (682, 666, 3, '讷河市', '230281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (683, 646, 2, '鸡西市', '230300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (684, 683, 3, '鸡冠区', '230302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (685, 683, 3, '恒山区', '230303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (686, 683, 3, '滴道区', '230304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (687, 683, 3, '梨树区', '230305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (688, 683, 3, '城子河区', '230306', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (689, 683, 3, '麻山区', '230307', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (690, 683, 3, '鸡东县', '230321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (691, 683, 3, '虎林市', '230381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (692, 683, 3, '密山市', '230382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (693, 646, 2, '鹤岗市', '230400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (694, 693, 3, '向阳区', '230402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (695, 693, 3, '工农区', '230403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (696, 693, 3, '南山区', '230404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (697, 693, 3, '兴安区', '230405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (698, 693, 3, '东山区', '230406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (699, 693, 3, '兴山区', '230407', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (700, 693, 3, '萝北县', '230421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (701, 693, 3, '绥滨县', '230422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (702, 646, 2, '双鸭山市', '230500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (703, 702, 3, '尖山区', '230502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (704, 702, 3, '岭东区', '230503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (705, 702, 3, '四方台区', '230505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (706, 702, 3, '宝山区', '230506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (707, 702, 3, '集贤县', '230521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (708, 702, 3, '友谊县', '230522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (709, 702, 3, '宝清县', '230523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (710, 702, 3, '饶河县', '230524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (711, 646, 2, '大庆市', '230600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (712, 711, 3, '萨尔图区', '230602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (713, 711, 3, '龙凤区', '230603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (714, 711, 3, '让胡路区', '230604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (715, 711, 3, '红岗区', '230605', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (716, 711, 3, '大同区', '230606', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (717, 711, 3, '肇州县', '230621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (718, 711, 3, '肇源县', '230622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (719, 711, 3, '林甸县', '230623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (720, 711, 3, '杜尔伯特蒙古族自治县', '230624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (721, 646, 2, '伊春市', '230700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (722, 721, 3, '伊美区', '230717', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (723, 721, 3, '乌翠区', '230718', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (724, 721, 3, '友好区', '230719', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (725, 721, 3, '嘉荫县', '230722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (726, 721, 3, '汤旺县', '230723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (727, 721, 3, '丰林县', '230724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (728, 721, 3, '大箐山县', '230725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (729, 721, 3, '南岔县', '230726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (730, 721, 3, '金林区', '230751', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (731, 721, 3, '铁力市', '230781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (732, 646, 2, '佳木斯市', '230800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (733, 732, 3, '向阳区', '230803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (734, 732, 3, '前进区', '230804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (735, 732, 3, '东风区', '230805', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (736, 732, 3, '郊区', '230811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (737, 732, 3, '桦南县', '230822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (738, 732, 3, '桦川县', '230826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (739, 732, 3, '汤原县', '230828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (740, 732, 3, '同江市', '230881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (741, 732, 3, '富锦市', '230882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (742, 732, 3, '抚远市', '230883', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (743, 646, 2, '七台河市', '230900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (744, 743, 3, '新兴区', '230902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (745, 743, 3, '桃山区', '230903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (746, 743, 3, '茄子河区', '230904', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (747, 743, 3, '勃利县', '230921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (748, 646, 2, '牡丹江市', '231000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (749, 748, 3, '东安区', '231002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (750, 748, 3, '阳明区', '231003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (751, 748, 3, '爱民区', '231004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (752, 748, 3, '西安区', '231005', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (753, 748, 3, '林口县', '231025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (754, 748, 3, '绥芬河市', '231081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (755, 748, 3, '海林市', '231083', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (756, 748, 3, '宁安市', '231084', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (757, 748, 3, '穆棱市', '231085', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (758, 748, 3, '东宁市', '231086', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (759, 646, 2, '黑河市', '231100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (760, 759, 3, '爱辉区', '231102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (761, 759, 3, '逊克县', '231123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (762, 759, 3, '孙吴县', '231124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (763, 759, 3, '北安市', '231181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (764, 759, 3, '五大连池市', '231182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (765, 759, 3, '嫩江市', '231183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (766, 646, 2, '绥化市', '231200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (767, 766, 3, '北林区', '231202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (768, 766, 3, '望奎县', '231221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (769, 766, 3, '兰西县', '231222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (770, 766, 3, '青冈县', '231223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (771, 766, 3, '庆安县', '231224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (772, 766, 3, '明水县', '231225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (773, 766, 3, '绥棱县', '231226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (774, 766, 3, '安达市', '231281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (775, 766, 3, '肇东市', '231282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (776, 766, 3, '海伦市', '231283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (777, 646, 2, '大兴安岭地区', '232700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (778, 777, 3, '漠河市', '232701', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (779, 777, 3, '呼玛县', '232721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (780, 777, 3, '塔河县', '232722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (781, 0, 1, '上海市', '310000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (782, 781, 2, '上海市', '310100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (783, 782, 3, '黄浦区', '310101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (784, 782, 3, '徐汇区', '310104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (785, 782, 3, '长宁区', '310105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (786, 782, 3, '静安区', '310106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (787, 782, 3, '普陀区', '310107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (788, 782, 3, '虹口区', '310109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (789, 782, 3, '杨浦区', '310110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (790, 782, 3, '闵行区', '310112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (791, 782, 3, '宝山区', '310113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (792, 782, 3, '嘉定区', '310114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (793, 782, 3, '浦东新区', '310115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (794, 782, 3, '金山区', '310116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (795, 782, 3, '松江区', '310117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (796, 782, 3, '青浦区', '310118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (797, 782, 3, '奉贤区', '310120', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (798, 782, 3, '崇明区', '310151', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (799, 0, 1, '江苏省', '320000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (800, 799, 2, '南京市', '320100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (801, 800, 3, '玄武区', '320102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (802, 800, 3, '秦淮区', '320104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (803, 800, 3, '建邺区', '320105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (804, 800, 3, '鼓楼区', '320106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (805, 800, 3, '浦口区', '320111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (806, 800, 3, '栖霞区', '320113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (807, 800, 3, '雨花台区', '320114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (808, 800, 3, '江宁区', '320115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (809, 800, 3, '六合区', '320116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (810, 800, 3, '溧水区', '320117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (811, 800, 3, '高淳区', '320118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (812, 799, 2, '无锡市', '320200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (813, 812, 3, '锡山区', '320205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (814, 812, 3, '惠山区', '320206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (815, 812, 3, '滨湖区', '320211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (816, 812, 3, '梁溪区', '320213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (817, 812, 3, '新吴区', '320214', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (818, 812, 3, '江阴市', '320281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (819, 812, 3, '宜兴市', '320282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (820, 799, 2, '徐州市', '320300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (821, 820, 3, '鼓楼区', '320302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (822, 820, 3, '云龙区', '320303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (823, 820, 3, '贾汪区', '320305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (824, 820, 3, '泉山区', '320311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (825, 820, 3, '铜山区', '320312', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (826, 820, 3, '丰县', '320321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (827, 820, 3, '沛县', '320322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (828, 820, 3, '睢宁县', '320324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (829, 820, 3, '新沂市', '320381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (830, 820, 3, '邳州市', '320382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (831, 799, 2, '常州市', '320400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (832, 831, 3, '天宁区', '320402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (833, 831, 3, '钟楼区', '320404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (834, 831, 3, '新北区', '320411', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (835, 831, 3, '武进区', '320412', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (836, 831, 3, '金坛区', '320413', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (837, 831, 3, '溧阳市', '320481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (838, 799, 2, '苏州市', '320500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (839, 838, 3, '虎丘区', '320505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (840, 838, 3, '吴中区', '320506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (841, 838, 3, '相城区', '320507', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (842, 838, 3, '姑苏区', '320508', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (843, 838, 3, '吴江区', '320509', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (844, 838, 3, '常熟市', '320581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (845, 838, 3, '张家港市', '320582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (846, 838, 3, '昆山市', '320583', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (847, 838, 3, '太仓市', '320585', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (848, 799, 2, '南通市', '320600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (849, 848, 3, '崇川区', '320602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (850, 848, 3, '港闸区', '320611', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (851, 848, 3, '通州区', '320612', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (852, 848, 3, '如东县', '320623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (853, 848, 3, '启东市', '320681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (854, 848, 3, '如皋市', '320682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (855, 848, 3, '海门市', '320684', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (856, 848, 3, '海安市', '320685', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (857, 799, 2, '连云港市', '320700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (858, 857, 3, '连云区', '320703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (859, 857, 3, '海州区', '320706', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (860, 857, 3, '赣榆区', '320707', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (861, 857, 3, '东海县', '320722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (862, 857, 3, '灌云县', '320723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (863, 857, 3, '灌南县', '320724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (864, 799, 2, '淮安市', '320800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (865, 864, 3, '淮安区', '320803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (866, 864, 3, '淮阴区', '320804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (867, 864, 3, '清江浦区', '320812', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (868, 864, 3, '洪泽区', '320813', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (869, 864, 3, '涟水县', '320826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (870, 864, 3, '盱眙县', '320830', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (871, 864, 3, '金湖县', '320831', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (872, 799, 2, '盐城市', '320900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (873, 872, 3, '亭湖区', '320902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (874, 872, 3, '盐都区', '320903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (875, 872, 3, '大丰区', '320904', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (876, 872, 3, '响水县', '320921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (877, 872, 3, '滨海县', '320922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (878, 872, 3, '阜宁县', '320923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (879, 872, 3, '射阳县', '320924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (880, 872, 3, '建湖县', '320925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (881, 872, 3, '东台市', '320981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (882, 799, 2, '扬州市', '321000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (883, 882, 3, '广陵区', '321002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (884, 882, 3, '邗江区', '321003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (885, 882, 3, '江都区', '321012', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (886, 882, 3, '宝应县', '321023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (887, 882, 3, '仪征市', '321081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (888, 882, 3, '高邮市', '321084', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (889, 799, 2, '镇江市', '321100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (890, 889, 3, '京口区', '321102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (891, 889, 3, '润州区', '321111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (892, 889, 3, '丹徒区', '321112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (893, 889, 3, '丹阳市', '321181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (894, 889, 3, '扬中市', '321182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (895, 889, 3, '句容市', '321183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (896, 799, 2, '泰州市', '321200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (897, 896, 3, '海陵区', '321202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (898, 896, 3, '高港区', '321203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (899, 896, 3, '姜堰区', '321204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (900, 896, 3, '兴化市', '321281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (901, 896, 3, '靖江市', '321282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (902, 896, 3, '泰兴市', '321283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (903, 799, 2, '宿迁市', '321300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (904, 903, 3, '宿城区', '321302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (905, 903, 3, '宿豫区', '321311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (906, 903, 3, '沭阳县', '321322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (907, 903, 3, '泗阳县', '321323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (908, 903, 3, '泗洪县', '321324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (909, 0, 1, '浙江省', '330000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (910, 909, 2, '杭州市', '330100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (911, 910, 3, '上城区', '330102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (912, 910, 3, '下城区', '330103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (913, 910, 3, '江干区', '330104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (914, 910, 3, '拱墅区', '330105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (915, 910, 3, '西湖区', '330106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (916, 910, 3, '滨江区', '330108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (917, 910, 3, '萧山区', '330109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (918, 910, 3, '余杭区', '330110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (919, 910, 3, '富阳区', '330111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (920, 910, 3, '临安区', '330112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (921, 910, 3, '桐庐县', '330122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (922, 910, 3, '淳安县', '330127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (923, 910, 3, '建德市', '330182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (924, 909, 2, '宁波市', '330200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (925, 924, 3, '海曙区', '330203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (926, 924, 3, '江北区', '330205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (927, 924, 3, '北仑区', '330206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (928, 924, 3, '镇海区', '330211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (929, 924, 3, '鄞州区', '330212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (930, 924, 3, '奉化区', '330213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (931, 924, 3, '象山县', '330225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (932, 924, 3, '宁海县', '330226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (933, 924, 3, '余姚市', '330281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (934, 924, 3, '慈溪市', '330282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (935, 909, 2, '温州市', '330300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (936, 935, 3, '鹿城区', '330302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (937, 935, 3, '龙湾区', '330303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (938, 935, 3, '瓯海区', '330304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (939, 935, 3, '洞头区', '330305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (940, 935, 3, '永嘉县', '330324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (941, 935, 3, '平阳县', '330326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (942, 935, 3, '苍南县', '330327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (943, 935, 3, '文成县', '330328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (944, 935, 3, '泰顺县', '330329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (945, 935, 3, '瑞安市', '330381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (946, 935, 3, '乐清市', '330382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (947, 935, 3, '龙港市', '330383', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (948, 909, 2, '嘉兴市', '330400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (949, 948, 3, '南湖区', '330402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (950, 948, 3, '秀洲区', '330411', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (951, 948, 3, '嘉善县', '330421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (952, 948, 3, '海盐县', '330424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (953, 948, 3, '海宁市', '330481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (954, 948, 3, '平湖市', '330482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (955, 948, 3, '桐乡市', '330483', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (956, 909, 2, '湖州市', '330500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (957, 956, 3, '吴兴区', '330502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (958, 956, 3, '南浔区', '330503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (959, 956, 3, '德清县', '330521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (960, 956, 3, '长兴县', '330522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (961, 956, 3, '安吉县', '330523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (962, 909, 2, '绍兴市', '330600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (963, 962, 3, '越城区', '330602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (964, 962, 3, '柯桥区', '330603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (965, 962, 3, '上虞区', '330604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (966, 962, 3, '新昌县', '330624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (967, 962, 3, '诸暨市', '330681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (968, 962, 3, '嵊州市', '330683', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (969, 909, 2, '金华市', '330700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (970, 969, 3, '婺城区', '330702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (971, 969, 3, '金东区', '330703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (972, 969, 3, '武义县', '330723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (973, 969, 3, '浦江县', '330726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (974, 969, 3, '磐安县', '330727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (975, 969, 3, '兰溪市', '330781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (976, 969, 3, '义乌市', '330782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (977, 969, 3, '东阳市', '330783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (978, 969, 3, '永康市', '330784', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (979, 909, 2, '衢州市', '330800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (980, 979, 3, '柯城区', '330802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (981, 979, 3, '衢江区', '330803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (982, 979, 3, '常山县', '330822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (983, 979, 3, '开化县', '330824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (984, 979, 3, '龙游县', '330825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (985, 979, 3, '江山市', '330881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (986, 909, 2, '舟山市', '330900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (987, 986, 3, '定海区', '330902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (988, 986, 3, '普陀区', '330903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (989, 986, 3, '岱山县', '330921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (990, 986, 3, '嵊泗县', '330922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (991, 909, 2, '台州市', '331000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (992, 991, 3, '椒江区', '331002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (993, 991, 3, '黄岩区', '331003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (994, 991, 3, '路桥区', '331004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (995, 991, 3, '三门县', '331022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (996, 991, 3, '天台县', '331023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (997, 991, 3, '仙居县', '331024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (998, 991, 3, '温岭市', '331081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (999, 991, 3, '临海市', '331082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1000, 991, 3, '玉环市', '331083', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1001, 909, 2, '丽水市', '331100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1002, 1001, 3, '莲都区', '331102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1003, 1001, 3, '青田县', '331121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1004, 1001, 3, '缙云县', '331122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1005, 1001, 3, '遂昌县', '331123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1006, 1001, 3, '松阳县', '331124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1007, 1001, 3, '云和县', '331125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1008, 1001, 3, '庆元县', '331126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1009, 1001, 3, '景宁畲族自治县', '331127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1010, 1001, 3, '龙泉市', '331181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1011, 0, 1, '安徽省', '340000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1012, 1011, 2, '合肥市', '340100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1013, 1012, 3, '瑶海区', '340102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1014, 1012, 3, '庐阳区', '340103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1015, 1012, 3, '蜀山区', '340104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1016, 1012, 3, '包河区', '340111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1017, 1012, 3, '长丰县', '340121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1018, 1012, 3, '肥东县', '340122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1019, 1012, 3, '肥西县', '340123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1020, 1012, 3, '庐江县', '340124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1021, 1012, 3, '巢湖市', '340181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1022, 1011, 2, '芜湖市', '340200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1023, 1022, 3, '镜湖区', '340202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1024, 1022, 3, '鸠江区', '340207', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1025, 1022, 3, '弋江区', '340209', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1026, 1022, 3, '湾沚区', '340210', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1027, 1022, 3, '繁昌区', '340211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1028, 1022, 3, '南陵县', '340223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1029, 1022, 3, '无为市', '340281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1030, 1011, 2, '蚌埠市', '340300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1031, 1030, 3, '龙子湖区', '340302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1032, 1030, 3, '蚌山区', '340303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1033, 1030, 3, '禹会区', '340304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1034, 1030, 3, '淮上区', '340311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1035, 1030, 3, '怀远县', '340321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1036, 1030, 3, '五河县', '340322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1037, 1030, 3, '固镇县', '340323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1038, 1011, 2, '淮南市', '340400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1039, 1038, 3, '大通区', '340402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1040, 1038, 3, '田家庵区', '340403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1041, 1038, 3, '谢家集区', '340404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1042, 1038, 3, '八公山区', '340405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1043, 1038, 3, '潘集区', '340406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1044, 1038, 3, '凤台县', '340421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1045, 1038, 3, '寿县', '340422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1046, 1011, 2, '马鞍山市', '340500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1047, 1046, 3, '花山区', '340503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1048, 1046, 3, '雨山区', '340504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1049, 1046, 3, '博望区', '340506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1050, 1046, 3, '当涂县', '340521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1051, 1046, 3, '含山县', '340522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1052, 1046, 3, '和县', '340523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1053, 1011, 2, '淮北市', '340600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1054, 1053, 3, '杜集区', '340602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1055, 1053, 3, '相山区', '340603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1056, 1053, 3, '烈山区', '340604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1057, 1053, 3, '濉溪县', '340621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1058, 1011, 2, '铜陵市', '340700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1059, 1058, 3, '铜官区', '340705', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1060, 1058, 3, '义安区', '340706', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1061, 1058, 3, '郊区', '340711', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1062, 1058, 3, '枞阳县', '340722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1063, 1011, 2, '安庆市', '340800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1064, 1063, 3, '迎江区', '340802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1065, 1063, 3, '大观区', '340803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1066, 1063, 3, '宜秀区', '340811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1067, 1063, 3, '怀宁县', '340822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1068, 1063, 3, '太湖县', '340825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1069, 1063, 3, '宿松县', '340826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1070, 1063, 3, '望江县', '340827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1071, 1063, 3, '岳西县', '340828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1072, 1063, 3, '桐城市', '340881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1073, 1063, 3, '潜山市', '340882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1074, 1011, 2, '黄山市', '341000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1075, 1074, 3, '屯溪区', '341002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1076, 1074, 3, '黄山区', '341003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1077, 1074, 3, '徽州区', '341004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1078, 1074, 3, '歙县', '341021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1079, 1074, 3, '休宁县', '341022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1080, 1074, 3, '黟县', '341023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1081, 1074, 3, '祁门县', '341024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1082, 1011, 2, '滁州市', '341100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1083, 1082, 3, '琅琊区', '341102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1084, 1082, 3, '南谯区', '341103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1085, 1082, 3, '来安县', '341122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1086, 1082, 3, '全椒县', '341124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1087, 1082, 3, '定远县', '341125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1088, 1082, 3, '凤阳县', '341126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1089, 1082, 3, '天长市', '341181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1090, 1082, 3, '明光市', '341182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1091, 1011, 2, '阜阳市', '341200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1092, 1091, 3, '颍州区', '341202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1093, 1091, 3, '颍东区', '341203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1094, 1091, 3, '颍泉区', '341204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1095, 1091, 3, '临泉县', '341221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1096, 1091, 3, '太和县', '341222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1097, 1091, 3, '阜南县', '341225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1098, 1091, 3, '颍上县', '341226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1099, 1091, 3, '界首市', '341282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1100, 1011, 2, '宿州市', '341300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1101, 1100, 3, '埇桥区', '341302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1102, 1100, 3, '砀山县', '341321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1103, 1100, 3, '萧县', '341322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1104, 1100, 3, '灵璧县', '341323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1105, 1100, 3, '泗县', '341324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1106, 1011, 2, '六安市', '341500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1107, 1106, 3, '金安区', '341502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1108, 1106, 3, '裕安区', '341503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1109, 1106, 3, '叶集区', '341504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1110, 1106, 3, '霍邱县', '341522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1111, 1106, 3, '舒城县', '341523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1112, 1106, 3, '金寨县', '341524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1113, 1106, 3, '霍山县', '341525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1114, 1011, 2, '亳州市', '341600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1115, 1114, 3, '谯城区', '341602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1116, 1114, 3, '涡阳县', '341621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1117, 1114, 3, '蒙城县', '341622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1118, 1114, 3, '利辛县', '341623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1119, 1011, 2, '池州市', '341700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1120, 1119, 3, '贵池区', '341702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1121, 1119, 3, '东至县', '341721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1122, 1119, 3, '石台县', '341722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1123, 1119, 3, '青阳县', '341723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1124, 1011, 2, '宣城市', '341800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1125, 1124, 3, '宣州区', '341802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1126, 1124, 3, '郎溪县', '341821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1127, 1124, 3, '泾县', '341823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1128, 1124, 3, '绩溪县', '341824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1129, 1124, 3, '旌德县', '341825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1130, 1124, 3, '宁国市', '341881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1131, 1124, 3, '广德市', '341882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1132, 0, 1, '福建省', '350000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1133, 1132, 2, '福州市', '350100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1134, 1133, 3, '鼓楼区', '350102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1135, 1133, 3, '台江区', '350103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1136, 1133, 3, '仓山区', '350104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1137, 1133, 3, '马尾区', '350105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1138, 1133, 3, '晋安区', '350111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1139, 1133, 3, '长乐区', '350112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1140, 1133, 3, '闽侯县', '350121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1141, 1133, 3, '连江县', '350122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1142, 1133, 3, '罗源县', '350123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1143, 1133, 3, '闽清县', '350124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1144, 1133, 3, '永泰县', '350125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1145, 1133, 3, '平潭县', '350128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1146, 1133, 3, '福清市', '350181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1147, 1132, 2, '厦门市', '350200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1148, 1147, 3, '思明区', '350203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1149, 1147, 3, '海沧区', '350205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1150, 1147, 3, '湖里区', '350206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1151, 1147, 3, '集美区', '350211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1152, 1147, 3, '同安区', '350212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1153, 1147, 3, '翔安区', '350213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1154, 1132, 2, '莆田市', '350300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1155, 1154, 3, '城厢区', '350302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1156, 1154, 3, '涵江区', '350303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1157, 1154, 3, '荔城区', '350304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1158, 1154, 3, '秀屿区', '350305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1159, 1154, 3, '仙游县', '350322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1160, 1132, 2, '三明市', '350400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1161, 1160, 3, '梅列区', '350402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1162, 1160, 3, '三元区', '350403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1163, 1160, 3, '明溪县', '350421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1164, 1160, 3, '清流县', '350423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1165, 1160, 3, '宁化县', '350424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1166, 1160, 3, '大田县', '350425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1167, 1160, 3, '尤溪县', '350426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1168, 1160, 3, '沙县', '350427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1169, 1160, 3, '将乐县', '350428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1170, 1160, 3, '泰宁县', '350429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1171, 1160, 3, '建宁县', '350430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1172, 1160, 3, '永安市', '350481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1173, 1132, 2, '泉州市', '350500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1174, 1173, 3, '鲤城区', '350502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1175, 1173, 3, '丰泽区', '350503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1176, 1173, 3, '洛江区', '350504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1177, 1173, 3, '泉港区', '350505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1178, 1173, 3, '惠安县', '350521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1179, 1173, 3, '安溪县', '350524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1180, 1173, 3, '永春县', '350525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1181, 1173, 3, '德化县', '350526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1182, 1173, 3, '金门县', '350527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1183, 1173, 3, '石狮市', '350581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1184, 1173, 3, '晋江市', '350582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1185, 1173, 3, '南安市', '350583', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1186, 1132, 2, '漳州市', '350600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1187, 1186, 3, '芗城区', '350602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1188, 1186, 3, '龙文区', '350603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1189, 1186, 3, '云霄县', '350622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1190, 1186, 3, '漳浦县', '350623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1191, 1186, 3, '诏安县', '350624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1192, 1186, 3, '长泰县', '350625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1193, 1186, 3, '东山县', '350626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1194, 1186, 3, '南靖县', '350627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1195, 1186, 3, '平和县', '350628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1196, 1186, 3, '华安县', '350629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1197, 1186, 3, '龙海市', '350681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1198, 1132, 2, '南平市', '350700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1199, 1198, 3, '延平区', '350702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1200, 1198, 3, '建阳区', '350703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1201, 1198, 3, '顺昌县', '350721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1202, 1198, 3, '浦城县', '350722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1203, 1198, 3, '光泽县', '350723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1204, 1198, 3, '松溪县', '350724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1205, 1198, 3, '政和县', '350725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1206, 1198, 3, '邵武市', '350781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1207, 1198, 3, '武夷山市', '350782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1208, 1198, 3, '建瓯市', '350783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1209, 1132, 2, '龙岩市', '350800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1210, 1209, 3, '新罗区', '350802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1211, 1209, 3, '永定区', '350803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1212, 1209, 3, '长汀县', '350821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1213, 1209, 3, '上杭县', '350823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1214, 1209, 3, '武平县', '350824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1215, 1209, 3, '连城县', '350825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1216, 1209, 3, '漳平市', '350881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1217, 1132, 2, '宁德市', '350900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1218, 1217, 3, '蕉城区', '350902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1219, 1217, 3, '霞浦县', '350921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1220, 1217, 3, '古田县', '350922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1221, 1217, 3, '屏南县', '350923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1222, 1217, 3, '寿宁县', '350924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1223, 1217, 3, '周宁县', '350925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1224, 1217, 3, '柘荣县', '350926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1225, 1217, 3, '福安市', '350981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1226, 1217, 3, '福鼎市', '350982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1227, 0, 1, '江西省', '360000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1228, 1227, 2, '南昌市', '360100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1229, 1228, 3, '东湖区', '360102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1230, 1228, 3, '西湖区', '360103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1231, 1228, 3, '青云谱区', '360104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1232, 1228, 3, '青山湖区', '360111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1233, 1228, 3, '新建区', '360112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1234, 1228, 3, '红谷滩区', '360113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1235, 1228, 3, '南昌县', '360121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1236, 1228, 3, '安义县', '360123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1237, 1228, 3, '进贤县', '360124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1238, 1227, 2, '景德镇市', '360200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1239, 1238, 3, '昌江区', '360202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1240, 1238, 3, '珠山区', '360203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1241, 1238, 3, '浮梁县', '360222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1242, 1238, 3, '乐平市', '360281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1243, 1227, 2, '萍乡市', '360300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1244, 1243, 3, '安源区', '360302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1245, 1243, 3, '湘东区', '360313', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1246, 1243, 3, '莲花县', '360321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1247, 1243, 3, '上栗县', '360322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1248, 1243, 3, '芦溪县', '360323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1249, 1227, 2, '九江市', '360400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1250, 1249, 3, '濂溪区', '360402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1251, 1249, 3, '浔阳区', '360403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1252, 1249, 3, '柴桑区', '360404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1253, 1249, 3, '武宁县', '360423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1254, 1249, 3, '修水县', '360424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1255, 1249, 3, '永修县', '360425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1256, 1249, 3, '德安县', '360426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1257, 1249, 3, '都昌县', '360428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1258, 1249, 3, '湖口县', '360429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1259, 1249, 3, '彭泽县', '360430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1260, 1249, 3, '瑞昌市', '360481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1261, 1249, 3, '共青城市', '360482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1262, 1249, 3, '庐山市', '360483', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1263, 1227, 2, '新余市', '360500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1264, 1263, 3, '渝水区', '360502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1265, 1263, 3, '分宜县', '360521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1266, 1227, 2, '鹰潭市', '360600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1267, 1266, 3, '月湖区', '360602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1268, 1266, 3, '余江区', '360603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1269, 1266, 3, '贵溪市', '360681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1270, 1227, 2, '赣州市', '360700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1271, 1270, 3, '章贡区', '360702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1272, 1270, 3, '南康区', '360703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1273, 1270, 3, '赣县区', '360704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1274, 1270, 3, '信丰县', '360722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1275, 1270, 3, '大余县', '360723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1276, 1270, 3, '上犹县', '360724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1277, 1270, 3, '崇义县', '360725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1278, 1270, 3, '安远县', '360726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1279, 1270, 3, '定南县', '360728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1280, 1270, 3, '全南县', '360729', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1281, 1270, 3, '宁都县', '360730', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1282, 1270, 3, '于都县', '360731', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1283, 1270, 3, '兴国县', '360732', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1284, 1270, 3, '会昌县', '360733', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1285, 1270, 3, '寻乌县', '360734', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1286, 1270, 3, '石城县', '360735', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1287, 1270, 3, '瑞金市', '360781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1288, 1270, 3, '龙南市', '360783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1289, 1227, 2, '吉安市', '360800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1290, 1289, 3, '吉州区', '360802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1291, 1289, 3, '青原区', '360803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1292, 1289, 3, '吉安县', '360821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1293, 1289, 3, '吉水县', '360822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1294, 1289, 3, '峡江县', '360823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1295, 1289, 3, '新干县', '360824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1296, 1289, 3, '永丰县', '360825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1297, 1289, 3, '泰和县', '360826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1298, 1289, 3, '遂川县', '360827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1299, 1289, 3, '万安县', '360828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1300, 1289, 3, '安福县', '360829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1301, 1289, 3, '永新县', '360830', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1302, 1289, 3, '井冈山市', '360881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1303, 1227, 2, '宜春市', '360900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1304, 1303, 3, '袁州区', '360902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1305, 1303, 3, '奉新县', '360921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1306, 1303, 3, '万载县', '360922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1307, 1303, 3, '上高县', '360923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1308, 1303, 3, '宜丰县', '360924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1309, 1303, 3, '靖安县', '360925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1310, 1303, 3, '铜鼓县', '360926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1311, 1303, 3, '丰城市', '360981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1312, 1303, 3, '樟树市', '360982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1313, 1303, 3, '高安市', '360983', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1314, 1227, 2, '抚州市', '361000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1315, 1314, 3, '临川区', '361002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1316, 1314, 3, '东乡区', '361003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1317, 1314, 3, '南城县', '361021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1318, 1314, 3, '黎川县', '361022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1319, 1314, 3, '南丰县', '361023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1320, 1314, 3, '崇仁县', '361024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1321, 1314, 3, '乐安县', '361025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1322, 1314, 3, '宜黄县', '361026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1323, 1314, 3, '金溪县', '361027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1324, 1314, 3, '资溪县', '361028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1325, 1314, 3, '广昌县', '361030', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1326, 1227, 2, '上饶市', '361100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1327, 1326, 3, '信州区', '361102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1328, 1326, 3, '广丰区', '361103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1329, 1326, 3, '广信区', '361104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1330, 1326, 3, '玉山县', '361123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1331, 1326, 3, '铅山县', '361124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1332, 1326, 3, '横峰县', '361125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1333, 1326, 3, '弋阳县', '361126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1334, 1326, 3, '余干县', '361127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1335, 1326, 3, '鄱阳县', '361128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1336, 1326, 3, '万年县', '361129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1337, 1326, 3, '婺源县', '361130', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1338, 1326, 3, '德兴市', '361181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1339, 0, 1, '山东省', '370000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1340, 1339, 2, '济南市', '370100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1341, 1340, 3, '历下区', '370102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1342, 1340, 3, '市中区', '370103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1343, 1340, 3, '槐荫区', '370104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1344, 1340, 3, '天桥区', '370105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1345, 1340, 3, '历城区', '370112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1346, 1340, 3, '长清区', '370113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1347, 1340, 3, '章丘区', '370114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1348, 1340, 3, '济阳区', '370115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1349, 1340, 3, '莱芜区', '370116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1350, 1340, 3, '钢城区', '370117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1351, 1340, 3, '平阴县', '370124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1352, 1340, 3, '商河县', '370126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1353, 1339, 2, '青岛市', '370200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1354, 1353, 3, '市南区', '370202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1355, 1353, 3, '市北区', '370203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1356, 1353, 3, '黄岛区', '370211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1357, 1353, 3, '崂山区', '370212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1358, 1353, 3, '李沧区', '370213', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1359, 1353, 3, '城阳区', '370214', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1360, 1353, 3, '即墨区', '370215', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1361, 1353, 3, '胶州市', '370281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1362, 1353, 3, '平度市', '370283', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1363, 1353, 3, '莱西市', '370285', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1364, 1339, 2, '淄博市', '370300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1365, 1364, 3, '淄川区', '370302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1366, 1364, 3, '张店区', '370303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1367, 1364, 3, '博山区', '370304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1368, 1364, 3, '临淄区', '370305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1369, 1364, 3, '周村区', '370306', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1370, 1364, 3, '桓台县', '370321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1371, 1364, 3, '高青县', '370322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1372, 1364, 3, '沂源县', '370323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1373, 1339, 2, '枣庄市', '370400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1374, 1373, 3, '市中区', '370402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1375, 1373, 3, '薛城区', '370403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1376, 1373, 3, '峄城区', '370404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1377, 1373, 3, '台儿庄区', '370405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1378, 1373, 3, '山亭区', '370406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1379, 1373, 3, '滕州市', '370481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1380, 1339, 2, '东营市', '370500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1381, 1380, 3, '东营区', '370502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1382, 1380, 3, '河口区', '370503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1383, 1380, 3, '垦利区', '370505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1384, 1380, 3, '利津县', '370522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1385, 1380, 3, '广饶县', '370523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1386, 1339, 2, '烟台市', '370600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1387, 1386, 3, '芝罘区', '370602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1388, 1386, 3, '福山区', '370611', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1389, 1386, 3, '牟平区', '370612', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1390, 1386, 3, '莱山区', '370613', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1391, 1386, 3, '蓬莱区', '370614', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1392, 1386, 3, '龙口市', '370681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1393, 1386, 3, '莱阳市', '370682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1394, 1386, 3, '莱州市', '370683', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1395, 1386, 3, '招远市', '370685', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1396, 1386, 3, '栖霞市', '370686', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1397, 1386, 3, '海阳市', '370687', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1398, 1339, 2, '潍坊市', '370700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1399, 1398, 3, '潍城区', '370702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1400, 1398, 3, '寒亭区', '370703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1401, 1398, 3, '坊子区', '370704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1402, 1398, 3, '奎文区', '370705', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1403, 1398, 3, '临朐县', '370724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1404, 1398, 3, '昌乐县', '370725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1405, 1398, 3, '青州市', '370781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1406, 1398, 3, '诸城市', '370782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1407, 1398, 3, '寿光市', '370783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1408, 1398, 3, '安丘市', '370784', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1409, 1398, 3, '高密市', '370785', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1410, 1398, 3, '昌邑市', '370786', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1411, 1339, 2, '济宁市', '370800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1412, 1411, 3, '任城区', '370811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1413, 1411, 3, '兖州区', '370812', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1414, 1411, 3, '微山县', '370826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1415, 1411, 3, '鱼台县', '370827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1416, 1411, 3, '金乡县', '370828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1417, 1411, 3, '嘉祥县', '370829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1418, 1411, 3, '汶上县', '370830', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1419, 1411, 3, '泗水县', '370831', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1420, 1411, 3, '梁山县', '370832', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1421, 1411, 3, '曲阜市', '370881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1422, 1411, 3, '邹城市', '370883', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1423, 1339, 2, '泰安市', '370900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1424, 1423, 3, '泰山区', '370902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1425, 1423, 3, '岱岳区', '370911', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1426, 1423, 3, '宁阳县', '370921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1427, 1423, 3, '东平县', '370923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1428, 1423, 3, '新泰市', '370982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1429, 1423, 3, '肥城市', '370983', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1430, 1339, 2, '威海市', '371000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1431, 1430, 3, '环翠区', '371002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1432, 1430, 3, '文登区', '371003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1433, 1430, 3, '荣成市', '371082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1434, 1430, 3, '乳山市', '371083', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1435, 1339, 2, '日照市', '371100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1436, 1435, 3, '东港区', '371102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1437, 1435, 3, '岚山区', '371103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1438, 1435, 3, '五莲县', '371121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1439, 1435, 3, '莒县', '371122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1440, 1339, 2, '临沂市', '371300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1441, 1440, 3, '兰山区', '371302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1442, 1440, 3, '罗庄区', '371311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1443, 1440, 3, '河东区', '371312', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1444, 1440, 3, '沂南县', '371321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1445, 1440, 3, '郯城县', '371322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1446, 1440, 3, '沂水县', '371323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1447, 1440, 3, '兰陵县', '371324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1448, 1440, 3, '费县', '371325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1449, 1440, 3, '平邑县', '371326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1450, 1440, 3, '莒南县', '371327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1451, 1440, 3, '蒙阴县', '371328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1452, 1440, 3, '临沭县', '371329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1453, 1339, 2, '德州市', '371400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1454, 1453, 3, '德城区', '371402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1455, 1453, 3, '陵城区', '371403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1456, 1453, 3, '宁津县', '371422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1457, 1453, 3, '庆云县', '371423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1458, 1453, 3, '临邑县', '371424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1459, 1453, 3, '齐河县', '371425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1460, 1453, 3, '平原县', '371426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1461, 1453, 3, '夏津县', '371427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1462, 1453, 3, '武城县', '371428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1463, 1453, 3, '乐陵市', '371481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1464, 1453, 3, '禹城市', '371482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1465, 1339, 2, '聊城市', '371500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1466, 1465, 3, '东昌府区', '371502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1467, 1465, 3, '茌平区', '371503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1468, 1465, 3, '阳谷县', '371521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1469, 1465, 3, '莘县', '371522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1470, 1465, 3, '东阿县', '371524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1471, 1465, 3, '冠县', '371525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1472, 1465, 3, '高唐县', '371526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1473, 1465, 3, '临清市', '371581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1474, 1339, 2, '滨州市', '371600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1475, 1474, 3, '滨城区', '371602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1476, 1474, 3, '沾化区', '371603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1477, 1474, 3, '惠民县', '371621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1478, 1474, 3, '阳信县', '371622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1479, 1474, 3, '无棣县', '371623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1480, 1474, 3, '博兴县', '371625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1481, 1474, 3, '邹平市', '371681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1482, 1339, 2, '菏泽市', '371700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1483, 1482, 3, '牡丹区', '371702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1484, 1482, 3, '定陶区', '371703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1485, 1482, 3, '曹县', '371721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1486, 1482, 3, '单县', '371722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1487, 1482, 3, '成武县', '371723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1488, 1482, 3, '巨野县', '371724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1489, 1482, 3, '郓城县', '371725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1490, 1482, 3, '鄄城县', '371726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1491, 1482, 3, '东明县', '371728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1492, 0, 1, '河南省', '410000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1493, 1492, 2, '郑州市', '410100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1494, 1493, 3, '中原区', '410102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1495, 1493, 3, '二七区', '410103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1496, 1493, 3, '管城回族区', '410104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1497, 1493, 3, '金水区', '410105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1498, 1493, 3, '上街区', '410106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1499, 1493, 3, '惠济区', '410108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1500, 1493, 3, '中牟县', '410122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1501, 1493, 3, '巩义市', '410181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1502, 1493, 3, '荥阳市', '410182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1503, 1493, 3, '新密市', '410183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1504, 1493, 3, '新郑市', '410184', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1505, 1493, 3, '登封市', '410185', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1506, 1492, 2, '开封市', '410200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1507, 1506, 3, '龙亭区', '410202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1508, 1506, 3, '顺河回族区', '410203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1509, 1506, 3, '鼓楼区', '410204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1510, 1506, 3, '禹王台区', '410205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1511, 1506, 3, '祥符区', '410212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1512, 1506, 3, '杞县', '410221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1513, 1506, 3, '通许县', '410222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1514, 1506, 3, '尉氏县', '410223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1515, 1506, 3, '兰考县', '410225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1516, 1492, 2, '洛阳市', '410300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1517, 1516, 3, '老城区', '410302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1518, 1516, 3, '西工区', '410303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1519, 1516, 3, '瀍河回族区', '410304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1520, 1516, 3, '涧西区', '410305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1521, 1516, 3, '吉利区', '410306', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1522, 1516, 3, '洛龙区', '410311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1523, 1516, 3, '孟津县', '410322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1524, 1516, 3, '新安县', '410323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1525, 1516, 3, '栾川县', '410324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1526, 1516, 3, '嵩县', '410325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1527, 1516, 3, '汝阳县', '410326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1528, 1516, 3, '宜阳县', '410327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1529, 1516, 3, '洛宁县', '410328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1530, 1516, 3, '伊川县', '410329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1531, 1516, 3, '偃师市', '410381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1532, 1492, 2, '平顶山市', '410400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1533, 1532, 3, '新华区', '410402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1534, 1532, 3, '卫东区', '410403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1535, 1532, 3, '石龙区', '410404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1536, 1532, 3, '湛河区', '410411', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1537, 1532, 3, '宝丰县', '410421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1538, 1532, 3, '叶县', '410422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1539, 1532, 3, '鲁山县', '410423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1540, 1532, 3, '郏县', '410425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1541, 1532, 3, '舞钢市', '410481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1542, 1532, 3, '汝州市', '410482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1543, 1492, 2, '安阳市', '410500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1544, 1543, 3, '文峰区', '410502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1545, 1543, 3, '北关区', '410503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1546, 1543, 3, '殷都区', '410505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1547, 1543, 3, '龙安区', '410506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1548, 1543, 3, '安阳县', '410522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1549, 1543, 3, '汤阴县', '410523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1550, 1543, 3, '滑县', '410526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1551, 1543, 3, '内黄县', '410527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1552, 1543, 3, '林州市', '410581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1553, 1492, 2, '鹤壁市', '410600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1554, 1553, 3, '鹤山区', '410602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1555, 1553, 3, '山城区', '410603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1556, 1553, 3, '淇滨区', '410611', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1557, 1553, 3, '浚县', '410621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1558, 1553, 3, '淇县', '410622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1559, 1492, 2, '新乡市', '410700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1560, 1559, 3, '红旗区', '410702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1561, 1559, 3, '卫滨区', '410703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1562, 1559, 3, '凤泉区', '410704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1563, 1559, 3, '牧野区', '410711', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1564, 1559, 3, '新乡县', '410721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1565, 1559, 3, '获嘉县', '410724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1566, 1559, 3, '原阳县', '410725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1567, 1559, 3, '延津县', '410726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1568, 1559, 3, '封丘县', '410727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1569, 1559, 3, '卫辉市', '410781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1570, 1559, 3, '辉县市', '410782', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1571, 1559, 3, '长垣市', '410783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1572, 1492, 2, '焦作市', '410800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1573, 1572, 3, '解放区', '410802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1574, 1572, 3, '中站区', '410803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1575, 1572, 3, '马村区', '410804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1576, 1572, 3, '山阳区', '410811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1577, 1572, 3, '修武县', '410821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1578, 1572, 3, '博爱县', '410822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1579, 1572, 3, '武陟县', '410823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1580, 1572, 3, '温县', '410825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1581, 1572, 3, '沁阳市', '410882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1582, 1572, 3, '孟州市', '410883', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1583, 1492, 2, '濮阳市', '410900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1584, 1583, 3, '华龙区', '410902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1585, 1583, 3, '清丰县', '410922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1586, 1583, 3, '南乐县', '410923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1587, 1583, 3, '范县', '410926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1588, 1583, 3, '台前县', '410927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1589, 1583, 3, '濮阳县', '410928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1590, 1492, 2, '许昌市', '411000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1591, 1590, 3, '魏都区', '411002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1592, 1590, 3, '建安区', '411003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1593, 1590, 3, '鄢陵县', '411024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1594, 1590, 3, '襄城县', '411025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1595, 1590, 3, '禹州市', '411081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1596, 1590, 3, '长葛市', '411082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1597, 1492, 2, '漯河市', '411100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1598, 1597, 3, '源汇区', '411102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1599, 1597, 3, '郾城区', '411103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1600, 1597, 3, '召陵区', '411104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1601, 1597, 3, '舞阳县', '411121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1602, 1597, 3, '临颍县', '411122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1603, 1492, 2, '三门峡市', '411200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1604, 1603, 3, '湖滨区', '411202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1605, 1603, 3, '陕州区', '411203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1606, 1603, 3, '渑池县', '411221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1607, 1603, 3, '卢氏县', '411224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1608, 1603, 3, '义马市', '411281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1609, 1603, 3, '灵宝市', '411282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1610, 1492, 2, '南阳市', '411300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1611, 1610, 3, '宛城区', '411302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1612, 1610, 3, '卧龙区', '411303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1613, 1610, 3, '南召县', '411321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1614, 1610, 3, '方城县', '411322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1615, 1610, 3, '西峡县', '411323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1616, 1610, 3, '镇平县', '411324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1617, 1610, 3, '内乡县', '411325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1618, 1610, 3, '淅川县', '411326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1619, 1610, 3, '社旗县', '411327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1620, 1610, 3, '唐河县', '411328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1621, 1610, 3, '新野县', '411329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1622, 1610, 3, '桐柏县', '411330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1623, 1610, 3, '邓州市', '411381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1624, 1492, 2, '商丘市', '411400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1625, 1624, 3, '梁园区', '411402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1626, 1624, 3, '睢阳区', '411403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1627, 1624, 3, '民权县', '411421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1628, 1624, 3, '睢县', '411422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1629, 1624, 3, '宁陵县', '411423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1630, 1624, 3, '柘城县', '411424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1631, 1624, 3, '虞城县', '411425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1632, 1624, 3, '夏邑县', '411426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1633, 1624, 3, '永城市', '411481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1634, 1492, 2, '信阳市', '411500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1635, 1634, 3, '浉河区', '411502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1636, 1634, 3, '平桥区', '411503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1637, 1634, 3, '罗山县', '411521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1638, 1634, 3, '光山县', '411522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1639, 1634, 3, '新县', '411523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1640, 1634, 3, '商城县', '411524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1641, 1634, 3, '固始县', '411525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1642, 1634, 3, '潢川县', '411526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1643, 1634, 3, '淮滨县', '411527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1644, 1634, 3, '息县', '411528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1645, 1492, 2, '周口市', '411600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1646, 1645, 3, '川汇区', '411602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1647, 1645, 3, '淮阳区', '411603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1648, 1645, 3, '扶沟县', '411621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1649, 1645, 3, '西华县', '411622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1650, 1645, 3, '商水县', '411623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1651, 1645, 3, '沈丘县', '411624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1652, 1645, 3, '郸城县', '411625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1653, 1645, 3, '太康县', '411627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1654, 1645, 3, '鹿邑县', '411628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1655, 1645, 3, '项城市', '411681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1656, 1492, 2, '驻马店市', '411700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1657, 1656, 3, '驿城区', '411702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1658, 1656, 3, '西平县', '411721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1659, 1656, 3, '上蔡县', '411722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1660, 1656, 3, '平舆县', '411723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1661, 1656, 3, '正阳县', '411724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1662, 1656, 3, '确山县', '411725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1663, 1656, 3, '泌阳县', '411726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1664, 1656, 3, '汝南县', '411727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1665, 1656, 3, '遂平县', '411728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1666, 1656, 3, '新蔡县', '411729', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1667, 1656, 3, '济源市', '419001', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1668, 0, 1, '湖北省', '420000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1669, 1668, 2, '武汉市', '420100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1670, 1669, 3, '江岸区', '420102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1671, 1669, 3, '江汉区', '420103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1672, 1669, 3, '硚口区', '420104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1673, 1669, 3, '汉阳区', '420105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1674, 1669, 3, '武昌区', '420106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1675, 1669, 3, '青山区', '420107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1676, 1669, 3, '洪山区', '420111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1677, 1669, 3, '东西湖区', '420112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1678, 1669, 3, '汉南区', '420113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1679, 1669, 3, '蔡甸区', '420114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1680, 1669, 3, '江夏区', '420115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1681, 1669, 3, '黄陂区', '420116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1682, 1669, 3, '新洲区', '420117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1683, 1668, 2, '黄石市', '420200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1684, 1683, 3, '黄石港区', '420202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1685, 1683, 3, '西塞山区', '420203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1686, 1683, 3, '下陆区', '420204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1687, 1683, 3, '铁山区', '420205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1688, 1683, 3, '阳新县', '420222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1689, 1683, 3, '大冶市', '420281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1690, 1668, 2, '十堰市', '420300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1691, 1690, 3, '茅箭区', '420302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1692, 1690, 3, '张湾区', '420303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1693, 1690, 3, '郧阳区', '420304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1694, 1690, 3, '郧西县', '420322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1695, 1690, 3, '竹山县', '420323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1696, 1690, 3, '竹溪县', '420324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1697, 1690, 3, '房县', '420325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1698, 1690, 3, '丹江口市', '420381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1699, 1668, 2, '宜昌市', '420500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1700, 1699, 3, '西陵区', '420502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1701, 1699, 3, '伍家岗区', '420503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1702, 1699, 3, '点军区', '420504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1703, 1699, 3, '猇亭区', '420505', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1704, 1699, 3, '夷陵区', '420506', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1705, 1699, 3, '远安县', '420525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1706, 1699, 3, '兴山县', '420526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1707, 1699, 3, '秭归县', '420527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1708, 1699, 3, '长阳土家族自治县', '420528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1709, 1699, 3, '五峰土家族自治县', '420529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1710, 1699, 3, '宜都市', '420581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1711, 1699, 3, '当阳市', '420582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1712, 1699, 3, '枝江市', '420583', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1713, 1668, 2, '襄阳市', '420600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1714, 1713, 3, '襄城区', '420602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1715, 1713, 3, '樊城区', '420606', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1716, 1713, 3, '襄州区', '420607', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1717, 1713, 3, '南漳县', '420624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1718, 1713, 3, '谷城县', '420625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1719, 1713, 3, '保康县', '420626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1720, 1713, 3, '老河口市', '420682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1721, 1713, 3, '枣阳市', '420683', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1722, 1713, 3, '宜城市', '420684', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1723, 1668, 2, '鄂州市', '420700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1724, 1723, 3, '梁子湖区', '420702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1725, 1723, 3, '华容区', '420703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1726, 1723, 3, '鄂城区', '420704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1727, 1668, 2, '荆门市', '420800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1728, 1727, 3, '东宝区', '420802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1729, 1727, 3, '掇刀区', '420804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1730, 1727, 3, '沙洋县', '420822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1731, 1727, 3, '钟祥市', '420881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1732, 1727, 3, '京山市', '420882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1733, 1668, 2, '孝感市', '420900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1734, 1733, 3, '孝南区', '420902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1735, 1733, 3, '孝昌县', '420921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1736, 1733, 3, '大悟县', '420922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1737, 1733, 3, '云梦县', '420923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1738, 1733, 3, '应城市', '420981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1739, 1733, 3, '安陆市', '420982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1740, 1733, 3, '汉川市', '420984', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1741, 1668, 2, '荆州市', '421000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1742, 1741, 3, '沙市区', '421002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1743, 1741, 3, '荆州区', '421003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1744, 1741, 3, '公安县', '421022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1745, 1741, 3, '监利县', '421023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1746, 1741, 3, '江陵县', '421024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1747, 1741, 3, '石首市', '421081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1748, 1741, 3, '洪湖市', '421083', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1749, 1741, 3, '松滋市', '421087', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1750, 1668, 2, '黄冈市', '421100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1751, 1750, 3, '黄州区', '421102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1752, 1750, 3, '团风县', '421121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1753, 1750, 3, '红安县', '421122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1754, 1750, 3, '罗田县', '421123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1755, 1750, 3, '英山县', '421124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1756, 1750, 3, '浠水县', '421125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1757, 1750, 3, '蕲春县', '421126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1758, 1750, 3, '黄梅县', '421127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1759, 1750, 3, '麻城市', '421181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1760, 1750, 3, '武穴市', '421182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1761, 1668, 2, '咸宁市', '421200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1762, 1761, 3, '咸安区', '421202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1763, 1761, 3, '嘉鱼县', '421221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1764, 1761, 3, '通城县', '421222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1765, 1761, 3, '崇阳县', '421223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1766, 1761, 3, '通山县', '421224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1767, 1761, 3, '赤壁市', '421281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1768, 1668, 2, '随州市', '421300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1769, 1768, 3, '曾都区', '421303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1770, 1768, 3, '随县', '421321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1771, 1768, 3, '广水市', '421381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1772, 1668, 2, '恩施土家族苗族自治州', '422800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1773, 1772, 3, '恩施市', '422801', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1774, 1772, 3, '利川市', '422802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1775, 1772, 3, '建始县', '422822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1776, 1772, 3, '巴东县', '422823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1777, 1772, 3, '宣恩县', '422825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1778, 1772, 3, '咸丰县', '422826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1779, 1772, 3, '来凤县', '422827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1780, 1772, 3, '鹤峰县', '422828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1781, 1772, 3, '仙桃市', '429004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1782, 1772, 3, '潜江市', '429005', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1783, 1772, 3, '天门市', '429006', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1784, 1772, 3, '神农架林区', '429021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1785, 0, 1, '湖南省', '430000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1786, 1785, 2, '长沙市', '430100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1787, 1786, 3, '芙蓉区', '430102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1788, 1786, 3, '天心区', '430103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1789, 1786, 3, '岳麓区', '430104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1790, 1786, 3, '开福区', '430105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1791, 1786, 3, '雨花区', '430111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1792, 1786, 3, '望城区', '430112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1793, 1786, 3, '长沙县', '430121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1794, 1786, 3, '浏阳市', '430181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1795, 1786, 3, '宁乡市', '430182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1796, 1785, 2, '株洲市', '430200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1797, 1796, 3, '荷塘区', '430202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1798, 1796, 3, '芦淞区', '430203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1799, 1796, 3, '石峰区', '430204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1800, 1796, 3, '天元区', '430211', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1801, 1796, 3, '渌口区', '430212', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1802, 1796, 3, '攸县', '430223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1803, 1796, 3, '茶陵县', '430224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1804, 1796, 3, '炎陵县', '430225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1805, 1796, 3, '醴陵市', '430281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1806, 1785, 2, '湘潭市', '430300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1807, 1806, 3, '雨湖区', '430302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1808, 1806, 3, '岳塘区', '430304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1809, 1806, 3, '湘潭县', '430321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1810, 1806, 3, '湘乡市', '430381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1811, 1806, 3, '韶山市', '430382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1812, 1785, 2, '衡阳市', '430400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1813, 1812, 3, '珠晖区', '430405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1814, 1812, 3, '雁峰区', '430406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1815, 1812, 3, '石鼓区', '430407', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1816, 1812, 3, '蒸湘区', '430408', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1817, 1812, 3, '南岳区', '430412', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1818, 1812, 3, '衡阳县', '430421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1819, 1812, 3, '衡南县', '430422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1820, 1812, 3, '衡山县', '430423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1821, 1812, 3, '衡东县', '430424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1822, 1812, 3, '祁东县', '430426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1823, 1812, 3, '耒阳市', '430481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1824, 1812, 3, '常宁市', '430482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1825, 1785, 2, '邵阳市', '430500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1826, 1825, 3, '双清区', '430502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1827, 1825, 3, '大祥区', '430503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1828, 1825, 3, '北塔区', '430511', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1829, 1825, 3, '新邵县', '430522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1830, 1825, 3, '邵阳县', '430523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1831, 1825, 3, '隆回县', '430524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1832, 1825, 3, '洞口县', '430525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1833, 1825, 3, '绥宁县', '430527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1834, 1825, 3, '新宁县', '430528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1835, 1825, 3, '城步苗族自治县', '430529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1836, 1825, 3, '武冈市', '430581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1837, 1825, 3, '邵东市', '430582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1838, 1785, 2, '岳阳市', '430600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1839, 1838, 3, '岳阳楼区', '430602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1840, 1838, 3, '云溪区', '430603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1841, 1838, 3, '君山区', '430611', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1842, 1838, 3, '岳阳县', '430621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1843, 1838, 3, '华容县', '430623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1844, 1838, 3, '湘阴县', '430624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1845, 1838, 3, '平江县', '430626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1846, 1838, 3, '汨罗市', '430681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1847, 1838, 3, '临湘市', '430682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1848, 1785, 2, '常德市', '430700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1849, 1848, 3, '武陵区', '430702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1850, 1848, 3, '鼎城区', '430703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1851, 1848, 3, '安乡县', '430721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1852, 1848, 3, '汉寿县', '430722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1853, 1848, 3, '澧县', '430723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1854, 1848, 3, '临澧县', '430724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1855, 1848, 3, '桃源县', '430725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1856, 1848, 3, '石门县', '430726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1857, 1848, 3, '津市市', '430781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1858, 1785, 2, '张家界市', '430800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1859, 1858, 3, '永定区', '430802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1860, 1858, 3, '武陵源区', '430811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1861, 1858, 3, '慈利县', '430821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1862, 1858, 3, '桑植县', '430822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1863, 1785, 2, '益阳市', '430900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1864, 1863, 3, '资阳区', '430902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1865, 1863, 3, '赫山区', '430903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1866, 1863, 3, '南县', '430921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1867, 1863, 3, '桃江县', '430922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1868, 1863, 3, '安化县', '430923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1869, 1863, 3, '沅江市', '430981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1870, 1785, 2, '郴州市', '431000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1871, 1870, 3, '北湖区', '431002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1872, 1870, 3, '苏仙区', '431003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1873, 1870, 3, '桂阳县', '431021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1874, 1870, 3, '宜章县', '431022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1875, 1870, 3, '永兴县', '431023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1876, 1870, 3, '嘉禾县', '431024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1877, 1870, 3, '临武县', '431025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1878, 1870, 3, '汝城县', '431026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1879, 1870, 3, '桂东县', '431027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1880, 1870, 3, '安仁县', '431028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1881, 1870, 3, '资兴市', '431081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1882, 1785, 2, '永州市', '431100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1883, 1882, 3, '零陵区', '431102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1884, 1882, 3, '冷水滩区', '431103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1885, 1882, 3, '祁阳县', '431121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1886, 1882, 3, '东安县', '431122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1887, 1882, 3, '双牌县', '431123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1888, 1882, 3, '道县', '431124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1889, 1882, 3, '江永县', '431125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1890, 1882, 3, '宁远县', '431126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1891, 1882, 3, '蓝山县', '431127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1892, 1882, 3, '新田县', '431128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1893, 1882, 3, '江华瑶族自治县', '431129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1894, 1785, 2, '怀化市', '431200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1895, 1894, 3, '鹤城区', '431202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1896, 1894, 3, '中方县', '431221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1897, 1894, 3, '沅陵县', '431222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1898, 1894, 3, '辰溪县', '431223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1899, 1894, 3, '溆浦县', '431224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1900, 1894, 3, '会同县', '431225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1901, 1894, 3, '麻阳苗族自治县', '431226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1902, 1894, 3, '新晃侗族自治县', '431227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1903, 1894, 3, '芷江侗族自治县', '431228', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1904, 1894, 3, '靖州苗族侗族自治县', '431229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1905, 1894, 3, '通道侗族自治县', '431230', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1906, 1894, 3, '洪江市', '431281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1907, 1785, 2, '娄底市', '431300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1908, 1907, 3, '娄星区', '431302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1909, 1907, 3, '双峰县', '431321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1910, 1907, 3, '新化县', '431322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1911, 1907, 3, '冷水江市', '431381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1912, 1907, 3, '涟源市', '431382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1913, 1785, 2, '湘西土家族苗族自治州', '433100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1914, 1913, 3, '吉首市', '433101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1915, 1913, 3, '泸溪县', '433122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1916, 1913, 3, '凤凰县', '433123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1917, 1913, 3, '花垣县', '433124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1918, 1913, 3, '保靖县', '433125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1919, 1913, 3, '古丈县', '433126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1920, 1913, 3, '永顺县', '433127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1921, 1913, 3, '龙山县', '433130', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1922, 0, 1, '广东省', '440000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1923, 1922, 2, '广州市', '440100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1924, 1923, 3, '荔湾区', '440103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1925, 1923, 3, '越秀区', '440104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1926, 1923, 3, '海珠区', '440105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1927, 1923, 3, '天河区', '440106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1928, 1923, 3, '白云区', '440111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1929, 1923, 3, '黄埔区', '440112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1930, 1923, 3, '番禺区', '440113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1931, 1923, 3, '花都区', '440114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1932, 1923, 3, '南沙区', '440115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1933, 1923, 3, '从化区', '440117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1934, 1923, 3, '增城区', '440118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1935, 1922, 2, '韶关市', '440200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1936, 1935, 3, '武江区', '440203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1937, 1935, 3, '浈江区', '440204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1938, 1935, 3, '曲江区', '440205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1939, 1935, 3, '始兴县', '440222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1940, 1935, 3, '仁化县', '440224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1941, 1935, 3, '翁源县', '440229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1942, 1935, 3, '乳源瑶族自治县', '440232', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1943, 1935, 3, '新丰县', '440233', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1944, 1935, 3, '乐昌市', '440281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1945, 1935, 3, '南雄市', '440282', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1946, 1922, 2, '深圳市', '440300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1947, 1946, 3, '罗湖区', '440303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1948, 1946, 3, '福田区', '440304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1949, 1946, 3, '南山区', '440305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1950, 1946, 3, '宝安区', '440306', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1951, 1946, 3, '龙岗区', '440307', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1952, 1946, 3, '盐田区', '440308', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1953, 1946, 3, '龙华区', '440309', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1954, 1946, 3, '坪山区', '440310', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1955, 1946, 3, '光明区', '440311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1956, 1922, 2, '珠海市', '440400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1957, 1956, 3, '香洲区', '440402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1958, 1956, 3, '斗门区', '440403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1959, 1956, 3, '金湾区', '440404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1960, 1922, 2, '汕头市', '440500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1961, 1960, 3, '龙湖区', '440507', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1962, 1960, 3, '金平区', '440511', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1963, 1960, 3, '濠江区', '440512', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1964, 1960, 3, '潮阳区', '440513', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1965, 1960, 3, '潮南区', '440514', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1966, 1960, 3, '澄海区', '440515', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1967, 1960, 3, '南澳县', '440523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1968, 1922, 2, '佛山市', '440600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1969, 1968, 3, '禅城区', '440604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1970, 1968, 3, '南海区', '440605', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1971, 1968, 3, '顺德区', '440606', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1972, 1968, 3, '三水区', '440607', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1973, 1968, 3, '高明区', '440608', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1974, 1922, 2, '江门市', '440700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1975, 1974, 3, '蓬江区', '440703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1976, 1974, 3, '江海区', '440704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1977, 1974, 3, '新会区', '440705', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1978, 1974, 3, '台山市', '440781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1979, 1974, 3, '开平市', '440783', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1980, 1974, 3, '鹤山市', '440784', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1981, 1974, 3, '恩平市', '440785', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1982, 1922, 2, '湛江市', '440800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1983, 1982, 3, '赤坎区', '440802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1984, 1982, 3, '霞山区', '440803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1985, 1982, 3, '坡头区', '440804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1986, 1982, 3, '麻章区', '440811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1987, 1982, 3, '遂溪县', '440823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1988, 1982, 3, '徐闻县', '440825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1989, 1982, 3, '廉江市', '440881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1990, 1982, 3, '雷州市', '440882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1991, 1982, 3, '吴川市', '440883', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1992, 1922, 2, '茂名市', '440900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1993, 1992, 3, '茂南区', '440902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1994, 1992, 3, '电白区', '440904', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1995, 1992, 3, '高州市', '440981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1996, 1992, 3, '化州市', '440982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1997, 1992, 3, '信宜市', '440983', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1998, 1922, 2, '肇庆市', '441200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (1999, 1998, 3, '端州区', '441202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2000, 1998, 3, '鼎湖区', '441203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2001, 1998, 3, '高要区', '441204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2002, 1998, 3, '广宁县', '441223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2003, 1998, 3, '怀集县', '441224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2004, 1998, 3, '封开县', '441225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2005, 1998, 3, '德庆县', '441226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2006, 1998, 3, '四会市', '441284', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2007, 1922, 2, '惠州市', '441300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2008, 2007, 3, '惠城区', '441302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2009, 2007, 3, '惠阳区', '441303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2010, 2007, 3, '博罗县', '441322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2011, 2007, 3, '惠东县', '441323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2012, 2007, 3, '龙门县', '441324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2013, 1922, 2, '梅州市', '441400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2014, 2013, 3, '梅江区', '441402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2015, 2013, 3, '梅县区', '441403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2016, 2013, 3, '大埔县', '441422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2017, 2013, 3, '丰顺县', '441423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2018, 2013, 3, '五华县', '441424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2019, 2013, 3, '平远县', '441426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2020, 2013, 3, '蕉岭县', '441427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2021, 2013, 3, '兴宁市', '441481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2022, 1922, 2, '汕尾市', '441500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2023, 2022, 3, '城区', '441502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2024, 2022, 3, '海丰县', '441521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2025, 2022, 3, '陆河县', '441523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2026, 2022, 3, '陆丰市', '441581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2027, 1922, 2, '河源市', '441600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2028, 2027, 3, '源城区', '441602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2029, 2027, 3, '紫金县', '441621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2030, 2027, 3, '龙川县', '441622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2031, 2027, 3, '连平县', '441623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2032, 2027, 3, '和平县', '441624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2033, 2027, 3, '东源县', '441625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2034, 1922, 2, '阳江市', '441700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2035, 2034, 3, '江城区', '441702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2036, 2034, 3, '阳东区', '441704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2037, 2034, 3, '阳西县', '441721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2038, 2034, 3, '阳春市', '441781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2039, 1922, 2, '清远市', '441800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2040, 2039, 3, '清城区', '441802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2041, 2039, 3, '清新区', '441803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2042, 2039, 3, '佛冈县', '441821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2043, 2039, 3, '阳山县', '441823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2044, 2039, 3, '连山壮族瑶族自治县', '441825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2045, 2039, 3, '连南瑶族自治县', '441826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2046, 2039, 3, '英德市', '441881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2047, 2039, 3, '连州市', '441882', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2048, 1922, 2, '东莞市', '441900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2049, 1922, 2, '中山市', '442000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2050, 1922, 2, '潮州市', '445100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2051, 2050, 3, '湘桥区', '445102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2052, 2050, 3, '潮安区', '445103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2053, 2050, 3, '饶平县', '445122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2054, 1922, 2, '揭阳市', '445200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2055, 2054, 3, '榕城区', '445202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2056, 2054, 3, '揭东区', '445203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2057, 2054, 3, '揭西县', '445222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2058, 2054, 3, '惠来县', '445224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2059, 2054, 3, '普宁市', '445281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2060, 1922, 2, '云浮市', '445300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2061, 2060, 3, '云城区', '445302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2062, 2060, 3, '云安区', '445303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2063, 2060, 3, '新兴县', '445321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2064, 2060, 3, '郁南县', '445322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2065, 2060, 3, '罗定市', '445381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2066, 0, 1, '广西壮族自治区', '450000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2067, 2066, 2, '南宁市', '450100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2068, 2067, 3, '兴宁区', '450102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2069, 2067, 3, '青秀区', '450103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2070, 2067, 3, '江南区', '450105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2071, 2067, 3, '西乡塘区', '450107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2072, 2067, 3, '良庆区', '450108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2073, 2067, 3, '邕宁区', '450109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2074, 2067, 3, '武鸣区', '450110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2075, 2067, 3, '隆安县', '450123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2076, 2067, 3, '马山县', '450124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2077, 2067, 3, '上林县', '450125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2078, 2067, 3, '宾阳县', '450126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2079, 2067, 3, '横县', '450127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2080, 2066, 2, '柳州市', '450200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2081, 2080, 3, '城中区', '450202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2082, 2080, 3, '鱼峰区', '450203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2083, 2080, 3, '柳南区', '450204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2084, 2080, 3, '柳北区', '450205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2085, 2080, 3, '柳江区', '450206', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2086, 2080, 3, '柳城县', '450222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2087, 2080, 3, '鹿寨县', '450223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2088, 2080, 3, '融安县', '450224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2089, 2080, 3, '融水苗族自治县', '450225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2090, 2080, 3, '三江侗族自治县', '450226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2091, 2066, 2, '桂林市', '450300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2092, 2091, 3, '秀峰区', '450302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2093, 2091, 3, '叠彩区', '450303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2094, 2091, 3, '象山区', '450304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2095, 2091, 3, '七星区', '450305', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2096, 2091, 3, '雁山区', '450311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2097, 2091, 3, '临桂区', '450312', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2098, 2091, 3, '阳朔县', '450321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2099, 2091, 3, '灵川县', '450323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2100, 2091, 3, '全州县', '450324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2101, 2091, 3, '兴安县', '450325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2102, 2091, 3, '永福县', '450326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2103, 2091, 3, '灌阳县', '450327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2104, 2091, 3, '龙胜各族自治县', '450328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2105, 2091, 3, '资源县', '450329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2106, 2091, 3, '平乐县', '450330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2107, 2091, 3, '荔浦市', '450381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2108, 2091, 3, '恭城瑶族自治县', '450332', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2109, 2066, 2, '梧州市', '450400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2110, 2109, 3, '万秀区', '450403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2111, 2109, 3, '长洲区', '450405', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2112, 2109, 3, '龙圩区', '450406', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2113, 2109, 3, '苍梧县', '450421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2114, 2109, 3, '藤县', '450422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2115, 2109, 3, '蒙山县', '450423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2116, 2109, 3, '岑溪市', '450481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2117, 2066, 2, '北海市', '450500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2118, 2117, 3, '海城区', '450502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2119, 2117, 3, '银海区', '450503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2120, 2117, 3, '铁山港区', '450512', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2121, 2117, 3, '合浦县', '450521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2122, 2066, 2, '防城港市', '450600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2123, 2122, 3, '港口区', '450602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2124, 2122, 3, '防城区', '450603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2125, 2122, 3, '上思县', '450621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2126, 2122, 3, '东兴市', '450681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2127, 2066, 2, '钦州市', '450700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2128, 2127, 3, '钦南区', '450702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2129, 2127, 3, '钦北区', '450703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2130, 2127, 3, '灵山县', '450721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2131, 2127, 3, '浦北县', '450722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2132, 2066, 2, '贵港市', '450800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2133, 2132, 3, '港北区', '450802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2134, 2132, 3, '港南区', '450803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2135, 2132, 3, '覃塘区', '450804', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2136, 2132, 3, '平南县', '450821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2137, 2132, 3, '桂平市', '450881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2138, 2066, 2, '玉林市', '450900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2139, 2138, 3, '玉州区', '450902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2140, 2138, 3, '福绵区', '450903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2141, 2138, 3, '容县', '450921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2142, 2138, 3, '陆川县', '450922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2143, 2138, 3, '博白县', '450923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2144, 2138, 3, '兴业县', '450924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2145, 2138, 3, '北流市', '450981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2146, 2066, 2, '百色市', '451000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2147, 2146, 3, '右江区', '451002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2148, 2146, 3, '田阳区', '451003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2149, 2146, 3, '田东县', '451022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2150, 2146, 3, '德保县', '451024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2151, 2146, 3, '那坡县', '451026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2152, 2146, 3, '凌云县', '451027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2153, 2146, 3, '乐业县', '451028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2154, 2146, 3, '田林县', '451029', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2155, 2146, 3, '西林县', '451030', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2156, 2146, 3, '隆林各族自治县', '451031', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2157, 2146, 3, '靖西市', '451081', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2158, 2146, 3, '平果市', '451082', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2159, 2066, 2, '贺州市', '451100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2160, 2159, 3, '八步区', '451102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2161, 2159, 3, '平桂区', '451103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2162, 2159, 3, '昭平县', '451121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2163, 2159, 3, '钟山县', '451122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2164, 2159, 3, '富川瑶族自治县', '451123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2165, 2066, 2, '河池市', '451200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2166, 2165, 3, '金城江区', '451202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2167, 2165, 3, '宜州区', '451203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2168, 2165, 3, '南丹县', '451221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2169, 2165, 3, '天峨县', '451222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2170, 2165, 3, '凤山县', '451223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2171, 2165, 3, '东兰县', '451224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2172, 2165, 3, '罗城仫佬族自治县', '451225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2173, 2165, 3, '环江毛南族自治县', '451226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2174, 2165, 3, '巴马瑶族自治县', '451227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2175, 2165, 3, '都安瑶族自治县', '451228', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2176, 2165, 3, '大化瑶族自治县', '451229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2177, 2066, 2, '来宾市', '451300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2178, 2177, 3, '兴宾区', '451302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2179, 2177, 3, '忻城县', '451321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2180, 2177, 3, '象州县', '451322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2181, 2177, 3, '武宣县', '451323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2182, 2177, 3, '金秀瑶族自治县', '451324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2183, 2177, 3, '合山市', '451381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2184, 2066, 2, '崇左市', '451400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2185, 2184, 3, '江州区', '451402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2186, 2184, 3, '扶绥县', '451421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2187, 2184, 3, '宁明县', '451422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2188, 2184, 3, '龙州县', '451423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2189, 2184, 3, '大新县', '451424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2190, 2184, 3, '天等县', '451425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2191, 2184, 3, '凭祥市', '451481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2192, 0, 1, '海南省', '460000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2193, 2192, 2, '海口市', '460100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2194, 2193, 3, '秀英区', '460105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2195, 2193, 3, '龙华区', '460106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2196, 2193, 3, '琼山区', '460107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2197, 2193, 3, '美兰区', '460108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2198, 2192, 2, '三亚市', '460200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2199, 2198, 3, '海棠区', '460202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2200, 2198, 3, '吉阳区', '460203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2201, 2198, 3, '天涯区', '460204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2202, 2198, 3, '崖州区', '460205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2203, 2198, 3, '三沙市', '460300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2204, 2192, 2, '儋州市', '460400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2205, 2204, 3, '五指山市', '469001', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2206, 2204, 3, '琼海市', '469002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2207, 2204, 3, '文昌市', '469005', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2208, 2204, 3, '万宁市', '469006', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2209, 2204, 3, '东方市', '469007', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2210, 2204, 3, '定安县', '469021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2211, 2204, 3, '屯昌县', '469022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2212, 2204, 3, '澄迈县', '469023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2213, 2204, 3, '临高县', '469024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2214, 2204, 3, '白沙黎族自治县', '469025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2215, 2204, 3, '昌江黎族自治县', '469026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2216, 2204, 3, '乐东黎族自治县', '469027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2217, 2204, 3, '陵水黎族自治县', '469028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2218, 2204, 3, '保亭黎族苗族自治县', '469029', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2219, 2204, 3, '琼中黎族苗族自治县', '469030', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2220, 0, 1, '重庆市', '500000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2221, 2220, 2, '重庆市', '500100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2222, 2221, 3, '万州区', '500101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2223, 2221, 3, '涪陵区', '500102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2224, 2221, 3, '渝中区', '500103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2225, 2221, 3, '大渡口区', '500104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2226, 2221, 3, '江北区', '500105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2227, 2221, 3, '沙坪坝区', '500106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2228, 2221, 3, '九龙坡区', '500107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2229, 2221, 3, '南岸区', '500108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2230, 2221, 3, '北碚区', '500109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2231, 2221, 3, '綦江区', '500110', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2232, 2221, 3, '大足区', '500111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2233, 2221, 3, '渝北区', '500112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2234, 2221, 3, '巴南区', '500113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2235, 2221, 3, '黔江区', '500114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2236, 2221, 3, '长寿区', '500115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2237, 2221, 3, '江津区', '500116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2238, 2221, 3, '合川区', '500117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2239, 2221, 3, '永川区', '500118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2240, 2221, 3, '南川区', '500119', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2241, 2221, 3, '璧山区', '500120', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2242, 2221, 3, '铜梁区', '500151', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2243, 2221, 3, '潼南区', '500152', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2244, 2221, 3, '荣昌区', '500153', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2245, 2221, 3, '开州区', '500154', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2246, 2221, 3, '梁平区', '500155', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2247, 2221, 3, '武隆区', '500156', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2248, 2221, 3, '城口县', '500229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2249, 2221, 3, '丰都县', '500230', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2250, 2221, 3, '垫江县', '500231', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2251, 2221, 3, '忠县', '500233', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2252, 2221, 3, '云阳县', '500235', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2253, 2221, 3, '奉节县', '500236', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2254, 2221, 3, '巫山县', '500237', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2255, 2221, 3, '巫溪县', '500238', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2256, 2221, 3, '石柱土家族自治县', '500240', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2257, 2221, 3, '秀山土家族苗族自治县', '500241', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2258, 2221, 3, '酉阳土家族苗族自治县', '500242', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2259, 2221, 3, '彭水苗族土家族自治县', '500243', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2260, 0, 1, '四川省', '510000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2261, 2260, 2, '成都市', '510100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2262, 2261, 3, '锦江区', '510104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2263, 2261, 3, '青羊区', '510105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2264, 2261, 3, '金牛区', '510106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2265, 2261, 3, '武侯区', '510107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2266, 2261, 3, '成华区', '510108', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2267, 2261, 3, '龙泉驿区', '510112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2268, 2261, 3, '青白江区', '510113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2269, 2261, 3, '新都区', '510114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2270, 2261, 3, '温江区', '510115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2271, 2261, 3, '双流区', '510116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2272, 2261, 3, '郫都区', '510117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2273, 2261, 3, '新津区', '510118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2274, 2261, 3, '金堂县', '510121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2275, 2261, 3, '大邑县', '510129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2276, 2261, 3, '蒲江县', '510131', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2277, 2261, 3, '都江堰市', '510181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2278, 2261, 3, '彭州市', '510182', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2279, 2261, 3, '邛崃市', '510183', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2280, 2261, 3, '崇州市', '510184', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2281, 2261, 3, '简阳市', '510185', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2282, 2260, 2, '自贡市', '510300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2283, 2282, 3, '自流井区', '510302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2284, 2282, 3, '贡井区', '510303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2285, 2282, 3, '大安区', '510304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2286, 2282, 3, '沿滩区', '510311', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2287, 2282, 3, '荣县', '510321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2288, 2282, 3, '富顺县', '510322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2289, 2260, 2, '攀枝花市', '510400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2290, 2289, 3, '东区', '510402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2291, 2289, 3, '西区', '510403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2292, 2289, 3, '仁和区', '510411', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2293, 2289, 3, '米易县', '510421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2294, 2289, 3, '盐边县', '510422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2295, 2260, 2, '泸州市', '510500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2296, 2295, 3, '江阳区', '510502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2297, 2295, 3, '纳溪区', '510503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2298, 2295, 3, '龙马潭区', '510504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2299, 2295, 3, '泸县', '510521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2300, 2295, 3, '合江县', '510522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2301, 2295, 3, '叙永县', '510524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2302, 2295, 3, '古蔺县', '510525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2303, 2260, 2, '德阳市', '510600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2304, 2303, 3, '旌阳区', '510603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2305, 2303, 3, '罗江区', '510604', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2306, 2303, 3, '中江县', '510623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2307, 2303, 3, '广汉市', '510681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2308, 2303, 3, '什邡市', '510682', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2309, 2303, 3, '绵竹市', '510683', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2310, 2260, 2, '绵阳市', '510700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2311, 2310, 3, '涪城区', '510703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2312, 2310, 3, '游仙区', '510704', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2313, 2310, 3, '安州区', '510705', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2314, 2310, 3, '三台县', '510722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2315, 2310, 3, '盐亭县', '510723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2316, 2310, 3, '梓潼县', '510725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2317, 2310, 3, '北川羌族自治县', '510726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2318, 2310, 3, '平武县', '510727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2319, 2310, 3, '江油市', '510781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2320, 2260, 2, '广元市', '510800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2321, 2320, 3, '利州区', '510802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2322, 2320, 3, '昭化区', '510811', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2323, 2320, 3, '朝天区', '510812', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2324, 2320, 3, '旺苍县', '510821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2325, 2320, 3, '青川县', '510822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2326, 2320, 3, '剑阁县', '510823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2327, 2320, 3, '苍溪县', '510824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2328, 2260, 2, '遂宁市', '510900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2329, 2328, 3, '船山区', '510903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2330, 2328, 3, '安居区', '510904', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2331, 2328, 3, '蓬溪县', '510921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2332, 2328, 3, '大英县', '510923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2333, 2328, 3, '射洪市', '510981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2334, 2260, 2, '内江市', '511000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2335, 2334, 3, '市中区', '511002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2336, 2334, 3, '东兴区', '511011', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2337, 2334, 3, '威远县', '511024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2338, 2334, 3, '资中县', '511025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2339, 2334, 3, '隆昌市', '511083', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2340, 2260, 2, '乐山市', '511100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2341, 2340, 3, '市中区', '511102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2342, 2340, 3, '沙湾区', '511111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2343, 2340, 3, '五通桥区', '511112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2344, 2340, 3, '金口河区', '511113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2345, 2340, 3, '犍为县', '511123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2346, 2340, 3, '井研县', '511124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2347, 2340, 3, '夹江县', '511126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2348, 2340, 3, '沐川县', '511129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2349, 2340, 3, '峨边彝族自治县', '511132', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2350, 2340, 3, '马边彝族自治县', '511133', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2351, 2340, 3, '峨眉山市', '511181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2352, 2260, 2, '南充市', '511300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2353, 2352, 3, '顺庆区', '511302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2354, 2352, 3, '高坪区', '511303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2355, 2352, 3, '嘉陵区', '511304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2356, 2352, 3, '南部县', '511321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2357, 2352, 3, '营山县', '511322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2358, 2352, 3, '蓬安县', '511323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2359, 2352, 3, '仪陇县', '511324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2360, 2352, 3, '西充县', '511325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2361, 2352, 3, '阆中市', '511381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2362, 2260, 2, '眉山市', '511400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2363, 2362, 3, '东坡区', '511402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2364, 2362, 3, '彭山区', '511403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2365, 2362, 3, '仁寿县', '511421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2366, 2362, 3, '洪雅县', '511423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2367, 2362, 3, '丹棱县', '511424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2368, 2362, 3, '青神县', '511425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2369, 2260, 2, '宜宾市', '511500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2370, 2369, 3, '翠屏区', '511502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2371, 2369, 3, '南溪区', '511503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2372, 2369, 3, '叙州区', '511504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2373, 2369, 3, '江安县', '511523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2374, 2369, 3, '长宁县', '511524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2375, 2369, 3, '高县', '511525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2376, 2369, 3, '珙县', '511526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2377, 2369, 3, '筠连县', '511527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2378, 2369, 3, '兴文县', '511528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2379, 2369, 3, '屏山县', '511529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2380, 2260, 2, '广安市', '511600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2381, 2380, 3, '广安区', '511602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2382, 2380, 3, '前锋区', '511603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2383, 2380, 3, '岳池县', '511621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2384, 2380, 3, '武胜县', '511622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2385, 2380, 3, '邻水县', '511623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2386, 2380, 3, '华蓥市', '511681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2387, 2260, 2, '达州市', '511700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2388, 2387, 3, '通川区', '511702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2389, 2387, 3, '达川区', '511703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2390, 2387, 3, '宣汉县', '511722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2391, 2387, 3, '开江县', '511723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2392, 2387, 3, '大竹县', '511724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2393, 2387, 3, '渠县', '511725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2394, 2387, 3, '万源市', '511781', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2395, 2260, 2, '雅安市', '511800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2396, 2395, 3, '雨城区', '511802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2397, 2395, 3, '名山区', '511803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2398, 2395, 3, '荥经县', '511822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2399, 2395, 3, '汉源县', '511823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2400, 2395, 3, '石棉县', '511824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2401, 2395, 3, '天全县', '511825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2402, 2395, 3, '芦山县', '511826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2403, 2395, 3, '宝兴县', '511827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2404, 2260, 2, '巴中市', '511900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2405, 2404, 3, '巴州区', '511902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2406, 2404, 3, '恩阳区', '511903', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2407, 2404, 3, '通江县', '511921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2408, 2404, 3, '南江县', '511922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2409, 2404, 3, '平昌县', '511923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2410, 2260, 2, '资阳市', '512000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2411, 2410, 3, '雁江区', '512002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2412, 2410, 3, '安岳县', '512021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2413, 2410, 3, '乐至县', '512022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2414, 2260, 2, '阿坝藏族羌族自治州', '513200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2415, 2414, 3, '马尔康市', '513201', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2416, 2414, 3, '汶川县', '513221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2417, 2414, 3, '理县', '513222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2418, 2414, 3, '茂县', '513223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2419, 2414, 3, '松潘县', '513224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2420, 2414, 3, '九寨沟县', '513225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2421, 2414, 3, '金川县', '513226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2422, 2414, 3, '小金县', '513227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2423, 2414, 3, '黑水县', '513228', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2424, 2414, 3, '壤塘县', '513230', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2425, 2414, 3, '阿坝县', '513231', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2426, 2414, 3, '若尔盖县', '513232', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2427, 2414, 3, '红原县', '513233', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2428, 2260, 2, '甘孜藏族自治州', '513300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2429, 2428, 3, '康定市', '513301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2430, 2428, 3, '泸定县', '513322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2431, 2428, 3, '丹巴县', '513323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2432, 2428, 3, '九龙县', '513324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2433, 2428, 3, '雅江县', '513325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2434, 2428, 3, '道孚县', '513326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2435, 2428, 3, '炉霍县', '513327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2436, 2428, 3, '甘孜县', '513328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2437, 2428, 3, '新龙县', '513329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2438, 2428, 3, '德格县', '513330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2439, 2428, 3, '白玉县', '513331', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2440, 2428, 3, '石渠县', '513332', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2441, 2428, 3, '色达县', '513333', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2442, 2428, 3, '理塘县', '513334', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2443, 2428, 3, '巴塘县', '513335', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2444, 2428, 3, '乡城县', '513336', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2445, 2428, 3, '稻城县', '513337', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2446, 2428, 3, '得荣县', '513338', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2447, 2260, 2, '凉山彝族自治州', '513400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2448, 2447, 3, '西昌市', '513401', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2449, 2447, 3, '木里藏族自治县', '513422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2450, 2447, 3, '盐源县', '513423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2451, 2447, 3, '德昌县', '513424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2452, 2447, 3, '会理县', '513425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2453, 2447, 3, '会东县', '513426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2454, 2447, 3, '宁南县', '513427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2455, 2447, 3, '普格县', '513428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2456, 2447, 3, '布拖县', '513429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2457, 2447, 3, '金阳县', '513430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2458, 2447, 3, '昭觉县', '513431', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2459, 2447, 3, '喜德县', '513432', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2460, 2447, 3, '冕宁县', '513433', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2461, 2447, 3, '越西县', '513434', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2462, 2447, 3, '甘洛县', '513435', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2463, 2447, 3, '美姑县', '513436', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2464, 2447, 3, '雷波县', '513437', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2465, 0, 1, '贵州省', '520000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2466, 2465, 2, '贵阳市', '520100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2467, 2466, 3, '南明区', '520102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2468, 2466, 3, '云岩区', '520103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2469, 2466, 3, '花溪区', '520111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2470, 2466, 3, '乌当区', '520112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2471, 2466, 3, '白云区', '520113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2472, 2466, 3, '观山湖区', '520115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2473, 2466, 3, '开阳县', '520121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2474, 2466, 3, '息烽县', '520122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2475, 2466, 3, '修文县', '520123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2476, 2466, 3, '清镇市', '520181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2477, 2465, 2, '六盘水市', '520200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2478, 2477, 3, '钟山区', '520201', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2479, 2477, 3, '六枝特区', '520203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2480, 2477, 3, '水城县', '520221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2481, 2477, 3, '盘州市', '520281', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2482, 2465, 2, '遵义市', '520300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2483, 2482, 3, '红花岗区', '520302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2484, 2482, 3, '汇川区', '520303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2485, 2482, 3, '播州区', '520304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2486, 2482, 3, '桐梓县', '520322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2487, 2482, 3, '绥阳县', '520323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2488, 2482, 3, '正安县', '520324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2489, 2482, 3, '道真仡佬族苗族自治县', '520325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2490, 2482, 3, '务川仡佬族苗族自治县', '520326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2491, 2482, 3, '凤冈县', '520327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2492, 2482, 3, '湄潭县', '520328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2493, 2482, 3, '余庆县', '520329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2494, 2482, 3, '习水县', '520330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2495, 2482, 3, '赤水市', '520381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2496, 2482, 3, '仁怀市', '520382', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2497, 2465, 2, '安顺市', '520400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2498, 2497, 3, '西秀区', '520402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2499, 2497, 3, '平坝区', '520403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2500, 2497, 3, '普定县', '520422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2501, 2497, 3, '镇宁布依族苗族自治县', '520423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2502, 2497, 3, '关岭布依族苗族自治县', '520424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2503, 2497, 3, '紫云苗族布依族自治县', '520425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2504, 2465, 2, '毕节市', '520500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2505, 2504, 3, '七星关区', '520502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2506, 2504, 3, '大方县', '520521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2507, 2504, 3, '黔西县', '520522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2508, 2504, 3, '金沙县', '520523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2509, 2504, 3, '织金县', '520524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2510, 2504, 3, '纳雍县', '520525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2511, 2504, 3, '威宁彝族回族苗族自治县', '520526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2512, 2504, 3, '赫章县', '520527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2513, 2465, 2, '铜仁市', '520600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2514, 2513, 3, '碧江区', '520602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2515, 2513, 3, '万山区', '520603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2516, 2513, 3, '江口县', '520621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2517, 2513, 3, '玉屏侗族自治县', '520622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2518, 2513, 3, '石阡县', '520623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2519, 2513, 3, '思南县', '520624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2520, 2513, 3, '印江土家族苗族自治县', '520625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2521, 2513, 3, '德江县', '520626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2522, 2513, 3, '沿河土家族自治县', '520627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2523, 2513, 3, '松桃苗族自治县', '520628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2524, 2465, 2, '黔西南布依族苗族自治州', '522300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2525, 2524, 3, '兴义市', '522301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2526, 2524, 3, '兴仁市', '522302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2527, 2524, 3, '普安县', '522323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2528, 2524, 3, '晴隆县', '522324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2529, 2524, 3, '贞丰县', '522325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2530, 2524, 3, '望谟县', '522326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2531, 2524, 3, '册亨县', '522327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2532, 2524, 3, '安龙县', '522328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2533, 2465, 2, '黔东南苗族侗族自治州', '522600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2534, 2533, 3, '凯里市', '522601', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2535, 2533, 3, '黄平县', '522622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2536, 2533, 3, '施秉县', '522623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2537, 2533, 3, '三穗县', '522624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2538, 2533, 3, '镇远县', '522625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2539, 2533, 3, '岑巩县', '522626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2540, 2533, 3, '天柱县', '522627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2541, 2533, 3, '锦屏县', '522628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2542, 2533, 3, '剑河县', '522629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2543, 2533, 3, '台江县', '522630', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2544, 2533, 3, '黎平县', '522631', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2545, 2533, 3, '榕江县', '522632', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2546, 2533, 3, '从江县', '522633', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2547, 2533, 3, '雷山县', '522634', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2548, 2533, 3, '麻江县', '522635', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2549, 2533, 3, '丹寨县', '522636', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2550, 2465, 2, '黔南布依族苗族自治州', '522700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2551, 2550, 3, '都匀市', '522701', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2552, 2550, 3, '福泉市', '522702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2553, 2550, 3, '荔波县', '522722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2554, 2550, 3, '贵定县', '522723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2555, 2550, 3, '瓮安县', '522725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2556, 2550, 3, '独山县', '522726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2557, 2550, 3, '平塘县', '522727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2558, 2550, 3, '罗甸县', '522728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2559, 2550, 3, '长顺县', '522729', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2560, 2550, 3, '龙里县', '522730', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2561, 2550, 3, '惠水县', '522731', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2562, 2550, 3, '三都水族自治县', '522732', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2563, 0, 1, '云南省', '530000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2564, 2563, 2, '昆明市', '530100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2565, 2564, 3, '五华区', '530102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2566, 2564, 3, '盘龙区', '530103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2567, 2564, 3, '官渡区', '530111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2568, 2564, 3, '西山区', '530112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2569, 2564, 3, '东川区', '530113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2570, 2564, 3, '呈贡区', '530114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2571, 2564, 3, '晋宁区', '530115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2572, 2564, 3, '富民县', '530124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2573, 2564, 3, '宜良县', '530125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2574, 2564, 3, '石林彝族自治县', '530126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2575, 2564, 3, '嵩明县', '530127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2576, 2564, 3, '禄劝彝族苗族自治县', '530128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2577, 2564, 3, '寻甸回族彝族自治县', '530129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2578, 2564, 3, '安宁市', '530181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2579, 2563, 2, '曲靖市', '530300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2580, 2579, 3, '麒麟区', '530302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2581, 2579, 3, '沾益区', '530303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2582, 2579, 3, '马龙区', '530304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2583, 2579, 3, '陆良县', '530322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2584, 2579, 3, '师宗县', '530323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2585, 2579, 3, '罗平县', '530324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2586, 2579, 3, '富源县', '530325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2587, 2579, 3, '会泽县', '530326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2588, 2579, 3, '宣威市', '530381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2589, 2563, 2, '玉溪市', '530400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2590, 2589, 3, '红塔区', '530402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2591, 2589, 3, '江川区', '530403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2592, 2589, 3, '通海县', '530423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2593, 2589, 3, '华宁县', '530424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2594, 2589, 3, '易门县', '530425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2595, 2589, 3, '峨山彝族自治县', '530426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2596, 2589, 3, '新平彝族傣族自治县', '530427', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2597, 2589, 3, '元江哈尼族彝族傣族自治县', '530428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2598, 2589, 3, '澄江市', '530481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2599, 2563, 2, '保山市', '530500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2600, 2599, 3, '隆阳区', '530502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2601, 2599, 3, '施甸县', '530521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2602, 2599, 3, '龙陵县', '530523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2603, 2599, 3, '昌宁县', '530524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2604, 2599, 3, '腾冲市', '530581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2605, 2563, 2, '昭通市', '530600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2606, 2605, 3, '昭阳区', '530602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2607, 2605, 3, '鲁甸县', '530621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2608, 2605, 3, '巧家县', '530622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2609, 2605, 3, '盐津县', '530623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2610, 2605, 3, '大关县', '530624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2611, 2605, 3, '永善县', '530625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2612, 2605, 3, '绥江县', '530626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2613, 2605, 3, '镇雄县', '530627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2614, 2605, 3, '彝良县', '530628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2615, 2605, 3, '威信县', '530629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2616, 2605, 3, '水富市', '530681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2617, 2563, 2, '丽江市', '530700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2618, 2617, 3, '古城区', '530702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2619, 2617, 3, '玉龙纳西族自治县', '530721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2620, 2617, 3, '永胜县', '530722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2621, 2617, 3, '华坪县', '530723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2622, 2617, 3, '宁蒗彝族自治县', '530724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2623, 2563, 2, '普洱市', '530800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2624, 2623, 3, '思茅区', '530802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2625, 2623, 3, '宁洱哈尼族彝族自治县', '530821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2626, 2623, 3, '墨江哈尼族自治县', '530822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2627, 2623, 3, '景东彝族自治县', '530823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2628, 2623, 3, '景谷傣族彝族自治县', '530824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2629, 2623, 3, '镇沅彝族哈尼族拉祜族自治县', '530825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2630, 2623, 3, '江城哈尼族彝族自治县', '530826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2631, 2623, 3, '孟连傣族拉祜族佤族自治县', '530827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2632, 2623, 3, '澜沧拉祜族自治县', '530828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2633, 2623, 3, '西盟佤族自治县', '530829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2634, 2563, 2, '临沧市', '530900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2635, 2634, 3, '临翔区', '530902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2636, 2634, 3, '凤庆县', '530921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2637, 2634, 3, '云县', '530922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2638, 2634, 3, '永德县', '530923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2639, 2634, 3, '镇康县', '530924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2640, 2634, 3, '双江拉祜族佤族布朗族傣族自治县', '530925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2641, 2634, 3, '耿马傣族佤族自治县', '530926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2642, 2634, 3, '沧源佤族自治县', '530927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2643, 2563, 2, '楚雄彝族自治州', '532300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2644, 2643, 3, '楚雄市', '532301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2645, 2643, 3, '双柏县', '532322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2646, 2643, 3, '牟定县', '532323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2647, 2643, 3, '南华县', '532324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2648, 2643, 3, '姚安县', '532325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2649, 2643, 3, '大姚县', '532326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2650, 2643, 3, '永仁县', '532327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2651, 2643, 3, '元谋县', '532328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2652, 2643, 3, '武定县', '532329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2653, 2643, 3, '禄丰县', '532331', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2654, 2563, 2, '红河哈尼族彝族自治州', '532500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2655, 2654, 3, '个旧市', '532501', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2656, 2654, 3, '开远市', '532502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2657, 2654, 3, '蒙自市', '532503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2658, 2654, 3, '弥勒市', '532504', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2659, 2654, 3, '屏边苗族自治县', '532523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2660, 2654, 3, '建水县', '532524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2661, 2654, 3, '石屏县', '532525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2662, 2654, 3, '泸西县', '532527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2663, 2654, 3, '元阳县', '532528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2664, 2654, 3, '红河县', '532529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2665, 2654, 3, '金平苗族瑶族傣族自治县', '532530', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2666, 2654, 3, '绿春县', '532531', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2667, 2654, 3, '河口瑶族自治县', '532532', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2668, 2563, 2, '文山壮族苗族自治州', '532600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2669, 2668, 3, '文山市', '532601', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2670, 2668, 3, '砚山县', '532622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2671, 2668, 3, '西畴县', '532623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2672, 2668, 3, '麻栗坡县', '532624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2673, 2668, 3, '马关县', '532625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2674, 2668, 3, '丘北县', '532626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2675, 2668, 3, '广南县', '532627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2676, 2668, 3, '富宁县', '532628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2677, 2563, 2, '西双版纳傣族自治州', '532800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2678, 2677, 3, '景洪市', '532801', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2679, 2677, 3, '勐海县', '532822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2680, 2677, 3, '勐腊县', '532823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2681, 2563, 2, '大理白族自治州', '532900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2682, 2681, 3, '大理市', '532901', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2683, 2681, 3, '漾濞彝族自治县', '532922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2684, 2681, 3, '祥云县', '532923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2685, 2681, 3, '宾川县', '532924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2686, 2681, 3, '弥渡县', '532925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2687, 2681, 3, '南涧彝族自治县', '532926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2688, 2681, 3, '巍山彝族回族自治县', '532927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2689, 2681, 3, '永平县', '532928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2690, 2681, 3, '云龙县', '532929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2691, 2681, 3, '洱源县', '532930', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2692, 2681, 3, '剑川县', '532931', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2693, 2681, 3, '鹤庆县', '532932', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2694, 2563, 2, '德宏傣族景颇族自治州', '533100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2695, 2694, 3, '瑞丽市', '533102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2696, 2694, 3, '芒市', '533103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2697, 2694, 3, '梁河县', '533122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2698, 2694, 3, '盈江县', '533123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2699, 2694, 3, '陇川县', '533124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2700, 2563, 2, '怒江傈僳族自治州', '533300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2701, 2700, 3, '泸水市', '533301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2702, 2700, 3, '福贡县', '533323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2703, 2700, 3, '贡山独龙族怒族自治县', '533324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2704, 2700, 3, '兰坪白族普米族自治县', '533325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2705, 2563, 2, '迪庆藏族自治州', '533400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2706, 2705, 3, '香格里拉市', '533401', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2707, 2705, 3, '德钦县', '533422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2708, 2705, 3, '维西傈僳族自治县', '533423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2709, 0, 1, '西藏自治区', '540000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2710, 2709, 2, '拉萨市', '540100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2711, 2710, 3, '城关区', '540102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2712, 2710, 3, '堆龙德庆区', '540103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2713, 2710, 3, '达孜区', '540104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2714, 2710, 3, '林周县', '540121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2715, 2710, 3, '当雄县', '540122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2716, 2710, 3, '尼木县', '540123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2717, 2710, 3, '曲水县', '540124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2718, 2710, 3, '墨竹工卡县', '540127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2719, 2709, 2, '日喀则市', '540200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2720, 2719, 3, '桑珠孜区', '540202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2721, 2719, 3, '南木林县', '540221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2722, 2719, 3, '江孜县', '540222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2723, 2719, 3, '定日县', '540223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2724, 2719, 3, '萨迦县', '540224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2725, 2719, 3, '拉孜县', '540225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2726, 2719, 3, '昂仁县', '540226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2727, 2719, 3, '谢通门县', '540227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2728, 2719, 3, '白朗县', '540228', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2729, 2719, 3, '仁布县', '540229', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2730, 2719, 3, '康马县', '540230', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2731, 2719, 3, '定结县', '540231', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2732, 2719, 3, '仲巴县', '540232', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2733, 2719, 3, '亚东县', '540233', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2734, 2719, 3, '吉隆县', '540234', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2735, 2719, 3, '聂拉木县', '540235', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2736, 2719, 3, '萨嘎县', '540236', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2737, 2719, 3, '岗巴县', '540237', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2738, 2709, 2, '昌都市', '540300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2739, 2738, 3, '卡若区', '540302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2740, 2738, 3, '江达县', '540321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2741, 2738, 3, '贡觉县', '540322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2742, 2738, 3, '类乌齐县', '540323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2743, 2738, 3, '丁青县', '540324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2744, 2738, 3, '察雅县', '540325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2745, 2738, 3, '八宿县', '540326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2746, 2738, 3, '左贡县', '540327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2747, 2738, 3, '芒康县', '540328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2748, 2738, 3, '洛隆县', '540329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2749, 2738, 3, '边坝县', '540330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2750, 2709, 2, '林芝市', '540400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2751, 2750, 3, '巴宜区', '540402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2752, 2750, 3, '工布江达县', '540421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2753, 2750, 3, '米林县', '540422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2754, 2750, 3, '墨脱县', '540423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2755, 2750, 3, '波密县', '540424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2756, 2750, 3, '察隅县', '540425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2757, 2750, 3, '朗县', '540426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2758, 2709, 2, '山南市', '540500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2759, 2758, 3, '乃东区', '540502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2760, 2758, 3, '扎囊县', '540521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2761, 2758, 3, '贡嘎县', '540522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2762, 2758, 3, '桑日县', '540523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2763, 2758, 3, '琼结县', '540524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2764, 2758, 3, '曲松县', '540525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2765, 2758, 3, '措美县', '540526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2766, 2758, 3, '洛扎县', '540527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2767, 2758, 3, '加查县', '540528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2768, 2758, 3, '隆子县', '540529', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2769, 2758, 3, '错那县', '540530', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2770, 2758, 3, '浪卡子县', '540531', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2771, 2709, 2, '那曲市', '540600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2772, 2771, 3, '色尼区', '540602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2773, 2771, 3, '嘉黎县', '540621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2774, 2771, 3, '比如县', '540622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2775, 2771, 3, '聂荣县', '540623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2776, 2771, 3, '安多县', '540624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2777, 2771, 3, '申扎县', '540625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2778, 2771, 3, '索县', '540626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2779, 2771, 3, '班戈县', '540627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2780, 2771, 3, '巴青县', '540628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2781, 2771, 3, '尼玛县', '540629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2782, 2771, 3, '双湖县', '540630', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2783, 2709, 2, '阿里地区', '542500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2784, 2783, 3, '普兰县', '542521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2785, 2783, 3, '札达县', '542522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2786, 2783, 3, '噶尔县', '542523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2787, 2783, 3, '日土县', '542524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2788, 2783, 3, '革吉县', '542525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2789, 2783, 3, '改则县', '542526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2790, 2783, 3, '措勤县', '542527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2791, 0, 1, '陕西省', '610000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2792, 2791, 2, '西安市', '610100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2793, 2792, 3, '新城区', '610102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2794, 2792, 3, '碑林区', '610103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2795, 2792, 3, '莲湖区', '610104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2796, 2792, 3, '灞桥区', '610111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2797, 2792, 3, '未央区', '610112', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2798, 2792, 3, '雁塔区', '610113', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2799, 2792, 3, '阎良区', '610114', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2800, 2792, 3, '临潼区', '610115', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2801, 2792, 3, '长安区', '610116', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2802, 2792, 3, '高陵区', '610117', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2803, 2792, 3, '鄠邑区', '610118', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2804, 2792, 3, '蓝田县', '610122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2805, 2792, 3, '周至县', '610124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2806, 2791, 2, '铜川市', '610200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2807, 2806, 3, '王益区', '610202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2808, 2806, 3, '印台区', '610203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2809, 2806, 3, '耀州区', '610204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2810, 2806, 3, '宜君县', '610222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2811, 2791, 2, '宝鸡市', '610300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2812, 2811, 3, '渭滨区', '610302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2813, 2811, 3, '金台区', '610303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2814, 2811, 3, '陈仓区', '610304', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2815, 2811, 3, '凤翔县', '610322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2816, 2811, 3, '岐山县', '610323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2817, 2811, 3, '扶风县', '610324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2818, 2811, 3, '眉县', '610326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2819, 2811, 3, '陇县', '610327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2820, 2811, 3, '千阳县', '610328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2821, 2811, 3, '麟游县', '610329', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2822, 2811, 3, '凤县', '610330', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2823, 2811, 3, '太白县', '610331', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2824, 2791, 2, '咸阳市', '610400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2825, 2824, 3, '秦都区', '610402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2826, 2824, 3, '杨陵区', '610403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2827, 2824, 3, '渭城区', '610404', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2828, 2824, 3, '三原县', '610422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2829, 2824, 3, '泾阳县', '610423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2830, 2824, 3, '乾县', '610424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2831, 2824, 3, '礼泉县', '610425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2832, 2824, 3, '永寿县', '610426', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2833, 2824, 3, '长武县', '610428', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2834, 2824, 3, '旬邑县', '610429', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2835, 2824, 3, '淳化县', '610430', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2836, 2824, 3, '武功县', '610431', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2837, 2824, 3, '兴平市', '610481', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2838, 2824, 3, '彬州市', '610482', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2839, 2791, 2, '渭南市', '610500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2840, 2839, 3, '临渭区', '610502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2841, 2839, 3, '华州区', '610503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2842, 2839, 3, '潼关县', '610522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2843, 2839, 3, '大荔县', '610523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2844, 2839, 3, '合阳县', '610524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2845, 2839, 3, '澄城县', '610525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2846, 2839, 3, '蒲城县', '610526', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2847, 2839, 3, '白水县', '610527', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2848, 2839, 3, '富平县', '610528', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2849, 2839, 3, '韩城市', '610581', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2850, 2839, 3, '华阴市', '610582', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2851, 2791, 2, '延安市', '610600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2852, 2851, 3, '宝塔区', '610602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2853, 2851, 3, '安塞区', '610603', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2854, 2851, 3, '延长县', '610621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2855, 2851, 3, '延川县', '610622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2856, 2851, 3, '志丹县', '610625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2857, 2851, 3, '吴起县', '610626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2858, 2851, 3, '甘泉县', '610627', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2859, 2851, 3, '富县', '610628', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2860, 2851, 3, '洛川县', '610629', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2861, 2851, 3, '宜川县', '610630', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2862, 2851, 3, '黄龙县', '610631', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2863, 2851, 3, '黄陵县', '610632', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2864, 2851, 3, '子长市', '610681', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2865, 2791, 2, '汉中市', '610700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2866, 2865, 3, '汉台区', '610702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2867, 2865, 3, '南郑区', '610703', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2868, 2865, 3, '城固县', '610722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2869, 2865, 3, '洋县', '610723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2870, 2865, 3, '西乡县', '610724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2871, 2865, 3, '勉县', '610725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2872, 2865, 3, '宁强县', '610726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2873, 2865, 3, '略阳县', '610727', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2874, 2865, 3, '镇巴县', '610728', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2875, 2865, 3, '留坝县', '610729', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2876, 2865, 3, '佛坪县', '610730', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2877, 2791, 2, '榆林市', '610800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2878, 2877, 3, '榆阳区', '610802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2879, 2877, 3, '横山区', '610803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2880, 2877, 3, '府谷县', '610822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2881, 2877, 3, '靖边县', '610824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2882, 2877, 3, '定边县', '610825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2883, 2877, 3, '绥德县', '610826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2884, 2877, 3, '米脂县', '610827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2885, 2877, 3, '佳县', '610828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2886, 2877, 3, '吴堡县', '610829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2887, 2877, 3, '清涧县', '610830', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2888, 2877, 3, '子洲县', '610831', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2889, 2877, 3, '神木市', '610881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2890, 2791, 2, '安康市', '610900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2891, 2890, 3, '汉滨区', '610902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2892, 2890, 3, '汉阴县', '610921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2893, 2890, 3, '石泉县', '610922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2894, 2890, 3, '宁陕县', '610923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2895, 2890, 3, '紫阳县', '610924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2896, 2890, 3, '岚皋县', '610925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2897, 2890, 3, '平利县', '610926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2898, 2890, 3, '镇坪县', '610927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2899, 2890, 3, '旬阳县', '610928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2900, 2890, 3, '白河县', '610929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2901, 2791, 2, '商洛市', '611000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2902, 2901, 3, '商州区', '611002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2903, 2901, 3, '洛南县', '611021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2904, 2901, 3, '丹凤县', '611022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2905, 2901, 3, '商南县', '611023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2906, 2901, 3, '山阳县', '611024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2907, 2901, 3, '镇安县', '611025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2908, 2901, 3, '柞水县', '611026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2909, 0, 1, '甘肃省', '620000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2910, 2909, 2, '兰州市', '620100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2911, 2910, 3, '城关区', '620102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2912, 2910, 3, '七里河区', '620103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2913, 2910, 3, '西固区', '620104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2914, 2910, 3, '安宁区', '620105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2915, 2910, 3, '红古区', '620111', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2916, 2910, 3, '永登县', '620121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2917, 2910, 3, '皋兰县', '620122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2918, 2910, 3, '榆中县', '620123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2919, 2909, 2, '嘉峪关市', '620200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2920, 2909, 2, '金昌市', '620300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2921, 2920, 3, '金川区', '620302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2922, 2920, 3, '永昌县', '620321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2923, 2909, 2, '白银市', '620400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2924, 2923, 3, '白银区', '620402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2925, 2923, 3, '平川区', '620403', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2926, 2923, 3, '靖远县', '620421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2927, 2923, 3, '会宁县', '620422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2928, 2923, 3, '景泰县', '620423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2929, 2909, 2, '天水市', '620500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2930, 2929, 3, '秦州区', '620502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2931, 2929, 3, '麦积区', '620503', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2932, 2929, 3, '清水县', '620521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2933, 2929, 3, '秦安县', '620522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2934, 2929, 3, '甘谷县', '620523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2935, 2929, 3, '武山县', '620524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2936, 2929, 3, '张家川回族自治县', '620525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2937, 2909, 2, '武威市', '620600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2938, 2937, 3, '凉州区', '620602', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2939, 2937, 3, '民勤县', '620621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2940, 2937, 3, '古浪县', '620622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2941, 2937, 3, '天祝藏族自治县', '620623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2942, 2909, 2, '张掖市', '620700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2943, 2942, 3, '甘州区', '620702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2944, 2942, 3, '肃南裕固族自治县', '620721', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2945, 2942, 3, '民乐县', '620722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2946, 2942, 3, '临泽县', '620723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2947, 2942, 3, '高台县', '620724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2948, 2942, 3, '山丹县', '620725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2949, 2942, 3, '平凉市', '620800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2950, 2942, 3, '崆峒区', '620802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2951, 2942, 3, '泾川县', '620821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2952, 2942, 3, '灵台县', '620822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2953, 2942, 3, '崇信县', '620823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2954, 2942, 3, '庄浪县', '620825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2955, 2942, 3, '静宁县', '620826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2956, 2942, 3, '华亭市', '620881', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2957, 2909, 2, '酒泉市', '620900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2958, 2957, 3, '肃州区', '620902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2959, 2957, 3, '金塔县', '620921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2960, 2957, 3, '瓜州县', '620922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2961, 2957, 3, '肃北蒙古族自治县', '620923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2962, 2957, 3, '阿克塞哈萨克族自治县', '620924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2963, 2957, 3, '玉门市', '620981', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2964, 2957, 3, '敦煌市', '620982', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2965, 2909, 2, '庆阳市', '621000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2966, 2965, 3, '西峰区', '621002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2967, 2965, 3, '庆城县', '621021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2968, 2965, 3, '环县', '621022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2969, 2965, 3, '华池县', '621023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2970, 2965, 3, '合水县', '621024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2971, 2965, 3, '正宁县', '621025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2972, 2965, 3, '宁县', '621026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2973, 2965, 3, '镇原县', '621027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2974, 2909, 2, '定西市', '621100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2975, 2974, 3, '安定区', '621102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2976, 2974, 3, '通渭县', '621121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2977, 2974, 3, '陇西县', '621122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2978, 2974, 3, '渭源县', '621123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2979, 2974, 3, '临洮县', '621124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2980, 2974, 3, '漳县', '621125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2981, 2974, 3, '岷县', '621126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2982, 2909, 2, '陇南市', '621200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2983, 2982, 3, '武都区', '621202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2984, 2982, 3, '成县', '621221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2985, 2982, 3, '文县', '621222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2986, 2982, 3, '宕昌县', '621223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2987, 2982, 3, '康县', '621224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2988, 2982, 3, '西和县', '621225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2989, 2982, 3, '礼县', '621226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2990, 2982, 3, '徽县', '621227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2991, 2982, 3, '两当县', '621228', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2992, 2909, 2, '临夏回族自治州', '622900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2993, 2992, 3, '临夏市', '622901', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2994, 2992, 3, '临夏县', '622921', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2995, 2992, 3, '康乐县', '622922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2996, 2992, 3, '永靖县', '622923', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2997, 2992, 3, '广河县', '622924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2998, 2992, 3, '和政县', '622925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (2999, 2992, 3, '东乡族自治县', '622926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3000, 2992, 3, '积石山保安族东乡族撒拉族自治县', '622927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3001, 2909, 2, '甘南藏族自治州', '623000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3002, 3001, 3, '合作市', '623001', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3003, 3001, 3, '临潭县', '623021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3004, 3001, 3, '卓尼县', '623022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3005, 3001, 3, '舟曲县', '623023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3006, 3001, 3, '迭部县', '623024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3007, 3001, 3, '玛曲县', '623025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3008, 3001, 3, '碌曲县', '623026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3009, 3001, 3, '夏河县', '623027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3010, 0, 1, '青海省', '630000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3011, 3010, 2, '西宁市', '630100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3012, 3011, 3, '城东区', '630102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3013, 3011, 3, '城中区', '630103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3014, 3011, 3, '城西区', '630104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3015, 3011, 3, '城北区', '630105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3016, 3011, 3, '湟中区', '630106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3017, 3011, 3, '大通回族土族自治县', '630121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3018, 3011, 3, '湟源县', '630123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3019, 3010, 2, '海东市', '630200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3020, 3019, 3, '乐都区', '630202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3021, 3019, 3, '平安区', '630203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3022, 3019, 3, '民和回族土族自治县', '630222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3023, 3019, 3, '互助土族自治县', '630223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3024, 3019, 3, '化隆回族自治县', '630224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3025, 3019, 3, '循化撒拉族自治县', '630225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3026, 3010, 2, '海北藏族自治州', '632200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3027, 3026, 3, '门源回族自治县', '632221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3028, 3026, 3, '祁连县', '632222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3029, 3026, 3, '海晏县', '632223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3030, 3026, 3, '刚察县', '632224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3031, 3010, 2, '黄南藏族自治州', '632300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3032, 3031, 3, '同仁市', '632301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3033, 3031, 3, '尖扎县', '632322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3034, 3031, 3, '泽库县', '632323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3035, 3031, 3, '河南蒙古族自治县', '632324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3036, 3010, 2, '海南藏族自治州', '632500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3037, 3036, 3, '共和县', '632521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3038, 3036, 3, '同德县', '632522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3039, 3036, 3, '贵德县', '632523', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3040, 3036, 3, '兴海县', '632524', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3041, 3036, 3, '贵南县', '632525', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3042, 3010, 2, '果洛藏族自治州', '632600', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3043, 3042, 3, '玛沁县', '632621', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3044, 3042, 3, '班玛县', '632622', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3045, 3042, 3, '甘德县', '632623', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3046, 3042, 3, '达日县', '632624', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3047, 3042, 3, '久治县', '632625', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3048, 3042, 3, '玛多县', '632626', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3049, 3010, 2, '玉树藏族自治州', '632700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3050, 3049, 3, '玉树市', '632701', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3051, 3049, 3, '杂多县', '632722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3052, 3049, 3, '称多县', '632723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3053, 3049, 3, '治多县', '632724', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3054, 3049, 3, '囊谦县', '632725', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3055, 3049, 3, '曲麻莱县', '632726', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3056, 3010, 2, '海西蒙古族藏族自治州', '632800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3057, 3056, 3, '格尔木市', '632801', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3058, 3056, 3, '德令哈市', '632802', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3059, 3056, 3, '茫崖市', '632803', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3060, 3056, 3, '乌兰县', '632821', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3061, 3056, 3, '都兰县', '632822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3062, 3056, 3, '天峻县', '632823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3063, 0, 1, '宁夏回族自治区', '640000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3064, 3063, 2, '银川市', '640100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3065, 3064, 3, '兴庆区', '640104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3066, 3064, 3, '西夏区', '640105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3067, 3064, 3, '金凤区', '640106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3068, 3064, 3, '永宁县', '640121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3069, 3064, 3, '贺兰县', '640122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3070, 3064, 3, '灵武市', '640181', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3071, 3063, 2, '石嘴山市', '640200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3072, 3071, 3, '大武口区', '640202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3073, 3071, 3, '惠农区', '640205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3074, 3071, 3, '平罗县', '640221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3075, 3071, 3, '吴忠市', '640300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3076, 3071, 3, '利通区', '640302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3077, 3071, 3, '红寺堡区', '640303', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3078, 3071, 3, '盐池县', '640323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3079, 3071, 3, '同心县', '640324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3080, 3071, 3, '青铜峡市', '640381', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3081, 3063, 2, '固原市', '640400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3082, 3081, 3, '原州区', '640402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3083, 3081, 3, '西吉县', '640422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3084, 3081, 3, '隆德县', '640423', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3085, 3081, 3, '泾源县', '640424', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3086, 3081, 3, '彭阳县', '640425', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3087, 3063, 2, '中卫市', '640500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3088, 3087, 3, '沙坡头区', '640502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3089, 3087, 3, '中宁县', '640521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3090, 3087, 3, '海原县', '640522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3091, 0, 1, '新疆维吾尔自治区', '650000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3092, 3091, 2, '乌鲁木齐市', '650100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3093, 3092, 3, '天山区', '650102', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3094, 3092, 3, '沙依巴克区', '650103', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3095, 3092, 3, '新市区', '650104', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3096, 3092, 3, '水磨沟区', '650105', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3097, 3092, 3, '头屯河区', '650106', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3098, 3092, 3, '达坂城区', '650107', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3099, 3092, 3, '米东区', '650109', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3100, 3092, 3, '乌鲁木齐县', '650121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3101, 3091, 2, '克拉玛依市', '650200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3102, 3101, 3, '独山子区', '650202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3103, 3101, 3, '克拉玛依区', '650203', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3104, 3101, 3, '白碱滩区', '650204', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3105, 3101, 3, '乌尔禾区', '650205', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3106, 3091, 2, '吐鲁番市', '650400', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3107, 3106, 3, '高昌区', '650402', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3108, 3106, 3, '鄯善县', '650421', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3109, 3106, 3, '托克逊县', '650422', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3110, 3091, 2, '哈密市', '650500', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3111, 3110, 3, '伊州区', '650502', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3112, 3110, 3, '巴里坤哈萨克自治县', '650521', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3113, 3110, 3, '伊吾县', '650522', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3114, 3091, 2, '昌吉回族自治州', '652300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3115, 3114, 3, '昌吉市', '652301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3116, 3114, 3, '阜康市', '652302', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3117, 3114, 3, '呼图壁县', '652323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3118, 3114, 3, '玛纳斯县', '652324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3119, 3114, 3, '奇台县', '652325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3120, 3114, 3, '吉木萨尔县', '652327', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3121, 3114, 3, '木垒哈萨克自治县', '652328', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3122, 3091, 2, '博尔塔拉蒙古自治州', '652700', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3123, 3122, 3, '博乐市', '652701', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3124, 3122, 3, '阿拉山口市', '652702', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3125, 3122, 3, '精河县', '652722', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3126, 3122, 3, '温泉县', '652723', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3127, 3091, 2, '巴音郭楞蒙古自治州', '652800', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3128, 3127, 3, '库尔勒市', '652801', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3129, 3127, 3, '轮台县', '652822', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3130, 3127, 3, '尉犁县', '652823', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3131, 3127, 3, '若羌县', '652824', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3132, 3127, 3, '且末县', '652825', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3133, 3127, 3, '焉耆回族自治县', '652826', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3134, 3127, 3, '和静县', '652827', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3135, 3127, 3, '和硕县', '652828', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3136, 3127, 3, '博湖县', '652829', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3137, 3091, 2, '阿克苏地区', '652900', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3138, 3137, 3, '阿克苏市', '652901', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3139, 3137, 3, '库车市', '652902', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3140, 3137, 3, '温宿县', '652922', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3141, 3137, 3, '沙雅县', '652924', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3142, 3137, 3, '新和县', '652925', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3143, 3137, 3, '拜城县', '652926', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3144, 3137, 3, '乌什县', '652927', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3145, 3137, 3, '阿瓦提县', '652928', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3146, 3137, 3, '柯坪县', '652929', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3147, 3091, 2, '克孜勒苏柯尔克孜自治州', '653000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3148, 3147, 3, '阿图什市', '653001', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3149, 3147, 3, '阿克陶县', '653022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3150, 3147, 3, '阿合奇县', '653023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3151, 3147, 3, '乌恰县', '653024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3152, 3091, 2, '喀什地区', '653100', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3153, 3152, 3, '喀什市', '653101', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3154, 3152, 3, '疏附县', '653121', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3155, 3152, 3, '疏勒县', '653122', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3156, 3152, 3, '英吉沙县', '653123', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3157, 3152, 3, '泽普县', '653124', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3158, 3152, 3, '莎车县', '653125', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3159, 3152, 3, '叶城县', '653126', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3160, 3152, 3, '麦盖提县', '653127', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3161, 3152, 3, '岳普湖县', '653128', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3162, 3152, 3, '伽师县', '653129', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3163, 3152, 3, '巴楚县', '653130', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3164, 3152, 3, '塔什库尔干塔吉克自治县', '653131', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3165, 3091, 2, '和田地区', '653200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3166, 3165, 3, '和田市', '653201', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3167, 3165, 3, '和田县', '653221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3168, 3165, 3, '墨玉县', '653222', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3169, 3165, 3, '皮山县', '653223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3170, 3165, 3, '洛浦县', '653224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3171, 3165, 3, '策勒县', '653225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3172, 3165, 3, '于田县', '653226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3173, 3165, 3, '民丰县', '653227', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3174, 3091, 2, '伊犁哈萨克自治州', '654000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3175, 3174, 3, '伊宁市', '654002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3176, 3174, 3, '奎屯市', '654003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3177, 3174, 3, '霍尔果斯市', '654004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3178, 3174, 3, '伊宁县', '654021', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3179, 3174, 3, '察布查尔锡伯自治县', '654022', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3180, 3174, 3, '霍城县', '654023', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3181, 3174, 3, '巩留县', '654024', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3182, 3174, 3, '新源县', '654025', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3183, 3174, 3, '昭苏县', '654026', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3184, 3174, 3, '特克斯县', '654027', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3185, 3174, 3, '尼勒克县', '654028', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3186, 3091, 2, '塔城地区', '654200', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3187, 3186, 3, '塔城市', '654201', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3188, 3186, 3, '乌苏市', '654202', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3189, 3186, 3, '额敏县', '654221', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3190, 3186, 3, '沙湾县', '654223', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3191, 3186, 3, '托里县', '654224', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3192, 3186, 3, '裕民县', '654225', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3193, 3186, 3, '和布克赛尔蒙古自治县', '654226', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3194, 3091, 2, '阿勒泰地区', '654300', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3195, 3194, 3, '阿勒泰市', '654301', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3196, 3194, 3, '布尔津县', '654321', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3197, 3194, 3, '富蕴县', '654322', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3198, 3194, 3, '福海县', '654323', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3199, 3194, 3, '哈巴河县', '654324', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3200, 3194, 3, '青河县', '654325', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3201, 3194, 3, '吉木乃县', '654326', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3202, 3194, 3, '石河子市', '659001', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3203, 3194, 3, '阿拉尔市', '659002', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3204, 3194, 3, '图木舒克市', '659003', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3205, 3194, 3, '五家渠市', '659004', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3206, 3194, 3, '北屯市', '659005', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3207, 3194, 3, '铁门关市', '659006', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3208, 3194, 3, '双河市', '659007', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3209, 3194, 3, '可克达拉市', '659008', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3210, 3194, 3, '昆玉市', '659009', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3211, 3194, 3, '胡杨河市', '659010', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3212, 0, 1, '台湾省', '710000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3213, 0, 1, '香港特别行政区', '810000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_city` VALUES (3214, 0, 1, '澳门特别行政区', '820000', NULL, NULL, NULL, NULL, 0, 1, 1634266096, 1, 1634266096, 1);

-- ----------------------------
-- Table structure for avt_config
-- ----------------------------
DROP TABLE IF EXISTS `pk_config`;
CREATE TABLE `pk_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分组名称',
  `sort` tinyint(2) NOT NULL COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_config
-- ----------------------------
INSERT INTO `pk_config` VALUES (1, '网站配置', 1, 1, 1624760995, 0, 0, 1);
INSERT INTO `pk_config` VALUES (2, '微信公众号', 5, 1, 1624764674, 0, 0, 1);
INSERT INTO `pk_config` VALUES (3, '微信小程序', 7, 1, 1624764684, 0, 0, 1);
INSERT INTO `pk_config` VALUES (4, '阿里短信', 9, 1, 1624764704, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_config_data
-- ----------------------------
DROP TABLE IF EXISTS `pk_config_data`;
CREATE TABLE `pk_config_data`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置标题',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置编码',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置值',
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置项',
  `config_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配置ID',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置类型',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 2停用',
  `sort` smallint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置说明',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_title`(`title`) USING BTREE,
  INDEX `index_code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_config_data
-- ----------------------------
INSERT INTO `pk_config_data` VALUES (1, '网站全称', 'site_name', '南京RXThinkCMF研发中心', '', 1, 'text', 1, 1, '暂无', 1, 1624761028, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (2, '网站LOGO', 'site_logo', '/images/config/20210923/c953b1544a59c147234.jpg', '', 1, 'image', 1, 5, '', 1, 1624761071, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (3, '网站关键词', 'site_keywords', 'ThinkPhp6、Vue、AntDesign、RXThinkCMF', '', 1, 'text', 1, 15, '', 1, 1624761820, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (4, '网站描述', 'site_desc', '一款专为企业和开发者精心打造的前后端分离开发平台', '', 1, 'textarea', 1, 19, '', 1, 1624761850, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (5, '网站简称', 'site_nickname', 'ThinkPhp6.x+Vue前后端分离开发框架', '', 1, 'text', 1, 3, '', 1, 1624761881, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (6, '网站网址', 'site_url', 'http://www.rxthink.cn/', '', 1, 'text', 1, 17, '', 1, 1624761907, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (7, '版权信息', 'site_copyright', 'Copyright ©2021 www.rxthink.cn. All rights reserved.', '', 1, 'text', 1, 13, '', 1, 1624761939, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (8, '备案号', 'site_record', 'http://www.rxthink.cn/', '', 1, 'text', 1, 15, '', 1, 1624762309, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (9, '网站QQ', 'site_qq', '暂无', '', 1, 'text', 1, 20, '', 1, 1624762334, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (10, '网站电话', 'site_phone', '暂无', '', 1, 'text', 1, 25, '', 1, 1624762397, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (11, '公司地址', 'site_address', '江苏省南京市建邺区', '', 1, 'text', 1, 21, '', 1, 1624762425, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (12, '网站邮箱', 'site_email', 'rxthinkcmf@163.com', '', 1, 'text', 1, 23, '', 1, 1624762447, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (13, '统计代码', 'site_tongji', '暂无', '', 1, 'textarea', 1, 30, '', 1, 1624762537, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (14, '网站宣传片', 'site_pic', '/images/config/20210923/850899c09761635b779.jpg,/images/config/20210923/c66577d6af75c3aa469.jpg,/images/config/20210923/b174fbbfed2db203512.jpg,/images/config/20210923/8b2b08ce30b1fb75305.jpg,/images/config/20210923/7d411af94c0b6f6b805.jpg,/images/config/20210923/743de4ce7685d9be620.jpg', '', 1, 'images', 1, 7, '', 1, 1624763080, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (15, 'SEO标题', 'site_seo_title', 'ThinkPhp6.x+Vue前后端分离开发框架', '', 1, 'text', 1, 9, '', 1, 1624764263, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (16, 'SEO描述', 'site_seo_desc', '一款专为企业和开发者精心打造的前后端分离开发平台', '', 1, 'textarea', 1, 11, '', 1, 1624764296, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (17, '传真', 'site_fax', '暂无', '', 1, 'text', 1, 27, '', 1, 1624764615, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (18, 'AppId', 'wx_appid', 'wxae802963eb8a96cd', '', 2, 'text', 1, 1, '', 1, 1624764765, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (19, 'AppSecret', 'wx_appsecret', '57b8a986cae98659fhb4a3eeafgb567a', '', 2, 'text', 1, 5, '', 1, 1624764783, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (20, '微信token', 'wx_token', '暂无', '', 2, 'text', 1, 7, '', 1, 1624764920, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (21, 'EncodingAESKey', 'wx_aeskey', '暂无', '', 2, 'text', 1, 9, '', 1, 1624764954, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (22, '消息加密方式', 'wx_encryption', '1', '1:测试一\n2:测试二\n3:测试三', 2, 'radio', 1, 11, '', 1, 1624765054, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (23, '公众号LOGO', 'wx_logo', '/images/config/20210923/ca01669f5d019ccf763.jpg', '', 2, 'image', 1, 13, '', 1, 1624765133, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (24, '微信分享图片', 'wx_share_pic', '/images/config/20210923/8f8602ca2aee1b1a445.jpg', '', 2, 'image', 1, 15, '', 1, 1624765170, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (25, '微信分享标题', 'wx_share_title', 'ThinkPhp6.x+Vue前后端分离开发框架', '', 2, 'text', 1, 17, '', 1, 1624765364, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (26, '微信分享描述', 'wx_share_desc', 'ThinkPhp6.x+Vue前后端分离开发框架，一款专为企业和开发者精心打造的前后端分离开发平台', '', 2, 'textarea', 1, 19, '', 1, 1624765395, 1, 1632383448, 1);
INSERT INTO `pk_config_data` VALUES (27, '小程序AppId', 'wechat_appid', 'wxae802963eb8a96cd', '', 3, 'text', 1, 1, '', 1, 1624768308, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (28, '小程序AppSecret', 'wechat_appsecret', '57b8a986cae98659fhb4a3eeafgb567a', '', 3, 'text', 1, 5, '', 1, 1624768327, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (29, '小程序名称', 'wechat_name', 'RXThinkCMF', '', 3, 'text', 1, 10, '', 1, 1624768343, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (30, '小程序LOGO', 'wechat_logo', '/images/config/20210923/9b588e20f2f0663d635.jpg', '', 3, 'image', 1, 15, '', 1, 1624768361, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (31, '小程序二维码', 'wechat_code', '/images/config/20210923/fa23273d8185936b240.jpg', '', 3, 'image', 1, 20, '', 1, 1624768402, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (32, '小程序分享标题', 'wechat_share_title', 'RXThinkCMF', '', 3, 'text', 1, 25, '', 1, 1624768425, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (33, '小程序分享描述', 'wechat_share_desc', 'ThinkPhp6.x+Vue前后端分离开发框架，一款专为企业和开发者精心打造的前后端分离开发平台', '', 3, 'textarea', 1, 30, '', 1, 1624768449, 1, 1639731644, 1);
INSERT INTO `pk_config_data` VALUES (34, 'accessKeyId', 'accessKeyId', 'wxae802963eb8a96cd', '', 4, 'text', 1, 1, '', 1, 1624769395, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (35, 'accessKeySecret', 'accessKeySecret', '57b8a986cae98659fhb4a3eeafgb567a', '', 4, 'text', 1, 5, '', 1, 1624769407, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (36, 'regionId', 'regionId', 'cn-hangzhou', '', 4, 'text', 1, 10, '', 1, 1624769419, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (37, '短信签名', 'signName', 'RXThinkCMF', '', 4, 'text', 1, 15, '', 1, 1624769437, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (38, '模板Code', 'templateCode', '暂无', '', 4, 'text', 1, 20, '', 1, 1624769455, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (39, '短信模板', 'sms_tpl', '暂无', '', 4, 'textarea', 1, 25, '', 1, 1624769688, 1, 1624769756, 1);
INSERT INTO `pk_config_data` VALUES (40, '网站标签', 'site_tags', '1,3', '1:复选框1\n2:复选框2\n3:复选框3\n4:复选框4', 1, 'checkbox', 1, 8, '', 1, 1625015744, 1, 1639731624, 1);
INSERT INTO `pk_config_data` VALUES (41, '投入平台', 'site_platform', '4', '1:下拉框1\n2:下拉框2\n3:下拉框3\n4:下拉框4\n5:下拉框5', 1, 'select', 1, 12, '', 1, 1625016270, 1, 1639731624, 1);

-- ----------------------------
-- Table structure for avt_dept
-- ----------------------------
DROP TABLE IF EXISTS `pk_dept`;
CREATE TABLE `pk_dept`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门编码',
  `fullname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门全称',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型：1公司 2子公司 3部门 4小组',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_pid`(`pid`) USING BTREE,
  INDEX `index_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_dept
-- ----------------------------
INSERT INTO `pk_dept` VALUES (1, '南京研发中心', 'NJ001', '南京研发中心', 1, 0, 1, '', 1, 1632380513, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (2, '研发一区', 'YF001', '研发一区', 3, 1, 1, '暂无', 1, 1632380532, 1, 1634268774, 1);
INSERT INTO `pk_dept` VALUES (3, '研发二区', 'YF002', '研发二区', 3, 1, 2, '', 1, 1632380552, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (4, '研发三区', 'TF003', '研发三区', 3, 1, 1, '', 1, 1632380614, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (5, '架构设计部', 'SJ001', '架构设计部', 4, 2, 1, '', 1, 1632380635, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (6, '架构研发部', 'YF001', ' 架构研发部', 4, 2, 2, '', 1, 1632380661, 1, 1632380707, 1);
INSERT INTO `pk_dept` VALUES (7, '软件测试部', 'CS001', '软件测试部', 4, 2, 3, '', 1, 1632380700, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (8, '架构设计部', 'SJ001', '架构设计部', 4, 4, 1, '', 1, 1632380730, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (9, '架构研发部', 'YF001', '架构研发部', 4, 4, 2, '', 1, 1632380740, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (10, '软件测试部', 'CS001', '软件测试部', 4, 4, 3, '', 1, 1632380754, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (11, '产品评审中心', 'PS001', '产品评审中心', 4, 3, 1, '', 1, 1632380788, 0, 0, 1);
INSERT INTO `pk_dept` VALUES (12, '产品体验中心', 'TY001', '产品体验中心', 4, 3, 2, '', 1, 1632380808, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_dict
-- ----------------------------
DROP TABLE IF EXISTS `pk_dict`;
CREATE TABLE `pk_dict`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典值',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典备注',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_dict
-- ----------------------------
INSERT INTO `pk_dict` VALUES (1, '机构类型', 'organization_type', 1, '', 1, 1625472423, 1, 1625473227, 1);

-- ----------------------------
-- Table structure for avt_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `pk_dict_data`;
CREATE TABLE `pk_dict_data`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典项值',
  `dict_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '字典ID',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1在用 2停用',
  `note` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典项管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_dict_data
-- ----------------------------
INSERT INTO `pk_dict_data` VALUES (1, '公司', 'company', 1, 1, '暂无', 1, 1, 1625472646, 1, 1634268796, 1);
INSERT INTO `pk_dict_data` VALUES (2, '子公司', 'subsidiary', 1, 1, '', 5, 1, 1625472777, 0, 0, 1);
INSERT INTO `pk_dict_data` VALUES (3, '部门', 'department', 1, 1, '', 10, 1, 1625472789, 0, 0, 1);
INSERT INTO `pk_dict_data` VALUES (4, '小组', 'group', 1, 1, '', 15, 1, 1625472799, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_example
-- ----------------------------
DROP TABLE IF EXISTS `pk_example`;
CREATE TABLE `pk_example`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测试名称',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '性别：1男 2女 3保密',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `type` int(10) UNSIGNED NULL DEFAULT 1 COMMENT '类型：1阿里云 2腾讯云 3华为云 4百度云 5亚马逊',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态：1正常 2停用',
  `is_vip` tinyint(1) UNSIGNED NULL DEFAULT 2 COMMENT '是否VIP：1是 2否',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 125 COMMENT '显示顺序',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '演示案例一' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_example
-- ----------------------------
INSERT INTO `pk_example` VALUES (1, '总经理', 1, '/images/example/20210923/7eebcc420a8f7777679.jpg', 1, 1, 1, 125, NULL, 1, 1577942890, 1, 1632383658, 1);
INSERT INTO `pk_example` VALUES (2, '副总经理', 1, '/images/example/20210923/624f625274d121c6816.jpg', 2, 1, 1, 125, NULL, 1, 1577942895, 1, 1632383648, 1);
INSERT INTO `pk_example` VALUES (3, '总监', 1, '/images/example/20210923/cb267bc44b6f9479944.jpg', 3, 1, 1, 125, NULL, 1, 1577942912, 1, 1632383532, 1);
INSERT INTO `pk_example` VALUES (4, '经理', 1, '/images/example/20210923/8c4dc639e5dfc340778.jpg', 4, 1, 1, 125, NULL, 1, 1577942916, 1, 1632383524, 1);
INSERT INTO `pk_example` VALUES (5, '主管2', 1, '/images/example/20210923/dd1948eb1ce381a6468.jpg', 5, 1, 1, 125, '暂无', 1, 1970, 1, 1639724837, 1);

-- ----------------------------
-- Table structure for avt_example2
-- ----------------------------
DROP TABLE IF EXISTS `pk_example2`;
CREATE TABLE `pk_example2`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测试名称',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '性别：1男 2女 3保密',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态：1正常 2停用',
  `sort` smallint(5) UNSIGNED NULL DEFAULT 125 COMMENT '显示顺序',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '演示案例二' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_example2
-- ----------------------------
INSERT INTO `pk_example2` VALUES (1, '总经理', 1, 1, 125, NULL, 1, 1577942890, 1, 1632383658, 1);
INSERT INTO `pk_example2` VALUES (2, '副总经理', 1, 1, 125, NULL, 1, 1577942895, 1, 1632383648, 1);
INSERT INTO `pk_example2` VALUES (3, '总监', 1, 1, 125, NULL, 1, 1577942912, 1, 1632383532, 1);
INSERT INTO `pk_example2` VALUES (4, '经理', 1, 1, 125, NULL, 1, 1577942916, 1, 1632383524, 1);
INSERT INTO `pk_example2` VALUES (5, '主管2', 1, 1, 125, '暂无', 1, 1970, 1, 1639724840, 1);

-- ----------------------------
-- Table structure for avt_file
-- ----------------------------
DROP TABLE IF EXISTS `pk_file`;
CREATE TABLE `pk_file`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名',
  `length` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小(KB)',
  `url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件地址',
  `directory` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否文件夹：0文件夹 1文件',
  `type` tinyint(255) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件类型：1图片 2文件',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_user` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '修改人',
  `update_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_file
-- ----------------------------
INSERT INTO `pk_file` VALUES (1, '公司档案', 0, '', 0, 0, 0, 0, 1, 1625905232, 0, 0, 1);
INSERT INTO `pk_file` VALUES (2, '人事资料', 0, '', 0, 0, 0, 0, 1, 1625905248, 0, 0, 1);
INSERT INTO `pk_file` VALUES (3, '财务资料', 0, '', 0, 0, 0, 0, 1, 1625905253, 0, 0, 1);
INSERT INTO `pk_file` VALUES (4, '采用事项', 0, '', 0, 0, 0, 0, 1, 1625905262, 0, 0, 1);
INSERT INTO `pk_file` VALUES (5, '流程审批', 0, '', 0, 0, 0, 0, 1, 1625905268, 0, 0, 1);
INSERT INTO `pk_file` VALUES (6, '公司活动', 0, '', 0, 0, 0, 0, 1, 1625905280, 0, 0, 1);
INSERT INTO `pk_file` VALUES (7, '团队活动', 0, '', 0, 0, 0, 0, 1, 1625905294, 0, 0, 1);
INSERT INTO `pk_file` VALUES (8, '项目跟踪', 0, '', 0, 0, 0, 0, 1, 1625905301, 0, 0, 1);
INSERT INTO `pk_file` VALUES (9, '外协资料', 0, '', 0, 0, 0, 0, 1, 1625905309, 0, 0, 1);
INSERT INTO `pk_file` VALUES (10, '用车管理', 0, '', 0, 0, 0, 0, 1, 1625905314, 0, 0, 1);
INSERT INTO `pk_file` VALUES (11, '生产资料', 0, '', 0, 0, 0, 0, 1, 1625905321, 0, 0, 1);
INSERT INTO `pk_file` VALUES (12, '报销管理', 0, '', 0, 0, 0, 0, 1, 1625905327, 0, 0, 1);
INSERT INTO `pk_file` VALUES (13, '4.png', 129861, '/file/20210710/7d978e8c54bd05f4529bd6dfd0237810.png', 1, 1, 0, 0, 1, 1625905335, 0, 0, 1);
INSERT INTO `pk_file` VALUES (14, '5.png', 105302, '/file/20210710/4234c008710818665ccd2f466e9519ea.png', 1, 1, 0, 0, 1, 1625905338, 0, 0, 1);
INSERT INTO `pk_file` VALUES (15, '6.png', 121149, '/file/20210710/441378abcabee98fead385bb822c65c3.png', 1, 1, 0, 0, 1, 1625905340, 0, 0, 1);
INSERT INTO `pk_file` VALUES (16, '111.png', 289730, '/file/20210710/561f16f061721dfeac1916185dc64f5e.png', 1, 1, 0, 0, 1, 1625905342, 0, 0, 1);
INSERT INTO `pk_file` VALUES (17, '222.png', 139338, '/file/20210710/bf92ee7b5596d150cd753965471c881d.png', 1, 1, 0, 0, 1, 1625905344, 0, 0, 1);
INSERT INTO `pk_file` VALUES (18, 'QQ截图20210706165543.png', 145857, '/file/20210710/96616019b5376d4f71566a0aecc8956d.png', 1, 1, 0, 0, 1, 1625905346, 0, 0, 1);
INSERT INTO `pk_file` VALUES (19, 'QQ截图20210706165726.png', 128380, '/file/20210710/62c68fdd2b3fa808b8c26038615cf7de.png', 1, 1, 0, 0, 1, 1625905349, 0, 0, 1);
INSERT INTO `pk_file` VALUES (20, 'QQ截图20210706165757.png', 196844, '/file/20210710/c845fe8b569579df0179129820b0ae8a.png', 1, 1, 0, 0, 1, 1625905350, 0, 0, 1);
INSERT INTO `pk_file` VALUES (21, '4.png', 129861, '/file/20210710/49ad2ca02efb16b2f448a4e363758ac4.png', 1, 1, 1, 0, 1, 1625905356, 0, 0, 1);
INSERT INTO `pk_file` VALUES (22, 'QQ截图20210706165543.png', 145857, '/file/20210710/d55bbbd2f2975c2cc0318deed750126c.png', 1, 1, 1, 0, 1, 1625905358, 0, 0, 1);
INSERT INTO `pk_file` VALUES (23, 'QQ截图20210706165726.png', 128380, '/file/20210710/e0006c63802de64ce4a58bbfc53e506e.png', 1, 1, 1, 0, 1, 1625905360, 0, 0, 1);
INSERT INTO `pk_file` VALUES (24, 'QQ截图20210706165757.png', 196844, '/file/20210710/63957cdfa0d99f4d8430fb1b4644ab8c.png', 1, 1, 1, 0, 1, 1625905362, 0, 0, 1);
INSERT INTO `pk_file` VALUES (25, 'level.xlsx', 9033, '/file/20210710/7c197258227ecc608e55fbba081cdd04.xlsx', 1, 2, 1, 0, 1, 1625905412, 0, 0, 1);
INSERT INTO `pk_file` VALUES (26, 'evt_file.sql', 1854, '/file/20210710/599a66d51b5f69cc90df3bf0cc92da91.sql', 1, 2, 1, 0, 1, 1625905449, 0, 0, 1);
INSERT INTO `pk_file` VALUES (27, '部门资料', 0, '', 0, 0, 1, 0, 1, 1625905477, 0, 0, 1);
INSERT INTO `pk_file` VALUES (28, '小组资料', 0, '', 0, 0, 1, 0, 1, 1625905489, 0, 0, 1);
INSERT INTO `pk_file` VALUES (29, 'QQ截图20210706165757.png', 196844, '/file/20210710/f22fb8ad6a7d4360debbd649334ad501.png', 1, 1, 27, 0, 1, 1625905496, 0, 0, 1);
INSERT INTO `pk_file` VALUES (30, 'QQ截图20210706165543.png', 145857, '/file/20210710/89b26e204fa71fa003a7bcc27cafe0bc.png', 1, 1, 27, 0, 1, 1625905499, 0, 0, 1);
INSERT INTO `pk_file` VALUES (31, 'QQ截图20210706165726.png', 128380, '/file/20210710/0c99e19089b5b59de7f9f0dbd8ae20d7.png', 1, 1, 27, 0, 1, 1625905501, 0, 0, 1);
INSERT INTO `pk_file` VALUES (32, '111.png', 289730, '/file/20210710/3a5b7fd1e564213e6d2fecd15b3a8f30.png', 1, 1, 27, 0, 1, 1625905503, 0, 0, 1);
INSERT INTO `pk_file` VALUES (33, '222.png', 139338, '/file/20210710/4f626b8f83f8c5273c31a9fbfba2532b.png', 1, 1, 27, 0, 1, 1625905505, 0, 0, 1);
INSERT INTO `pk_file` VALUES (34, '6.png', 121149, '/file/20210710/319980977d816645bafa27d187e54212.png', 1, 1, 27, 0, 1, 1625905508, 0, 0, 1);
INSERT INTO `pk_file` VALUES (35, '2021资料', 0, '', 0, 0, 27, 0, 1, 1625905525, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_item
-- ----------------------------
DROP TABLE IF EXISTS `pk_item`;
CREATE TABLE `pk_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点名称',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '站点类型:1普通站点 2其他',
  `url` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点地址',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点图片',
  `is_domain` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否二级域名:1是 2否',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1在用 2停用',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站点配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_item
-- ----------------------------
INSERT INTO `pk_item` VALUES (1, '网站主页', 1, 'http://www.rxthink.cn', '/images/item/20210923/52b0322f48353bb2690.jpg', 1, 1, '网站专题2', 1, 1, 1621998864, 1, 1632461717, 1);

-- ----------------------------
-- Table structure for avt_item_cate
-- ----------------------------
DROP TABLE IF EXISTS `pk_item_cate`;
CREATE TABLE `pk_item_cate`  (
  `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '栏目名称',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
  `item_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `pinyin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音(全)',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音(简)',
  `is_cover` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有封面：1是 2否',
  `cover` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1启用 2停用',
  `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_id`(`item_id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '栏目管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_item_cate
-- ----------------------------
INSERT INTO `pk_item_cate` VALUES (1, '网站集合页', 0, 1, 'guoqingzhuanti', 'gqzt', 1, '/images/itemcate/20210923/b4b0d891af4bf107763.jpg', 1, '国庆专题', 1, 1, 1621998864, 1, 1632461756, 1);
INSERT INTO `pk_item_cate` VALUES (2, '励志人生频道', 1, 1, 'guoqingzhibo', 'gqzb', 1, '/images/itemcate/20210923/b15ffb22db04230d439.jpg', 1, '国庆直播板块', 1, 1, 1621998864, 1, 1632461782, 1);

-- ----------------------------
-- Table structure for avt_layout
-- ----------------------------
DROP TABLE IF EXISTS `pk_layout`;
CREATE TABLE `pk_layout`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `loc_desc_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '页面位置描述ID',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型：1系统文章 2通知公告',
  `type_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '对应的类型编号',
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片路径',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '页面布局管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_layout
-- ----------------------------
INSERT INTO `pk_layout` VALUES (1, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (2, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (3, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (4, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (5, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (6, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (7, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (8, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (9, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (10, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (11, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (12, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (13, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (14, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (15, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (16, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (17, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (18, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (19, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (20, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (21, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (22, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (23, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (24, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (25, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (26, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);
INSERT INTO `pk_layout` VALUES (27, 1, 1, 1, 0, '/images/layout/20211014/d1f89c2b7d5c3fb9710.jpg', 1, 1, 1634198700, 1, 1634198858, 1);
INSERT INTO `pk_layout` VALUES (28, 1, 1, 1, 0, '/images/layout/20211014/aff0456f5b2af220722.jpg', 1, 1, 1634198700, 1, 1634198852, 1);
INSERT INTO `pk_layout` VALUES (29, 1, 1, 1, 0, '/images/layout/20211014/f0feab5c7eb0ede5541.jpg', 1, 1, 1634198700, 1, 1634198846, 1);
INSERT INTO `pk_layout` VALUES (30, 1, 1, 1, 0, '/images/layout/20211014/2518460ac88f86ac333.jpg', 1, 1, 1634198700, 1, 1634198838, 1);
INSERT INTO `pk_layout` VALUES (31, 1, 1, 1, 0, '/images/layout/20211014/232228fa0357083d625.jpg', 1, 1, 1634198700, 1, 1634198832, 1);
INSERT INTO `pk_layout` VALUES (32, 1, 1, 1, 0, '/images/layout/20211014/70831bc19286528c319.jpg', 1, 1, 1634198700, 1, 1634198825, 1);
INSERT INTO `pk_layout` VALUES (33, 1, 1, 1, 0, '/images/layout/20211014/ef5e3986b53baba3474.jpg', 1, 1, 1634198700, 1, 1634198818, 1);
INSERT INTO `pk_layout` VALUES (34, 1, 1, 1, 0, '/images/layout/20211014/95ff71e62f9f1332876.jpg', 1, 1, 1634198700, 1, 1634198812, 1);
INSERT INTO `pk_layout` VALUES (35, 1, 1, 1, 0, '/images/layout/20211014/9d6ec7abdc1b42ff186.jpg', 1, 1, 1634198700, 1, 1634198806, 1);
INSERT INTO `pk_layout` VALUES (36, 1, 1, 1, 0, '/images/layout/20211014/fb7a669e1c64f0a1349.jpg', 1, 1, 1634198700, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_layout_desc
-- ----------------------------
DROP TABLE IF EXISTS `pk_layout_desc`;
CREATE TABLE `pk_layout_desc`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `loc_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '页面位置描述',
  `loc_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '位置编号',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `sort` smallint(3) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '布局描述管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_layout_desc
-- ----------------------------
INSERT INTO `pk_layout_desc` VALUES (1, '网站首页今日推荐位', 1, 1, 1, 1, 1621998864, 2, 1632473311, 1);

-- ----------------------------
-- Table structure for avt_level
-- ----------------------------
DROP TABLE IF EXISTS `pk_level`;
CREATE TABLE `pk_level`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职级名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 2停用',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '职级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_level
-- ----------------------------
INSERT INTO `pk_level` VALUES (1, '董事长', 1, 125, 1, 1621998864, 1, 1639010879, 1);
INSERT INTO `pk_level` VALUES (2, '总裁办', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (3, '市场总监', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (4, '人事总监', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (5, '财务总监', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (6, '销售顾问', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (7, '技术总监', 1, 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_level` VALUES (8, '运营总监', 1, 125, 1, 1621998864, 1, 1632137996, 1);
INSERT INTO `pk_level` VALUES (9, '策划总监', 1, 125, 1, 1621998864, 1, 1632137991, 1);
INSERT INTO `pk_level` VALUES (10, '测试导入1', 1, 1, 1, 1634197618, 0, 0, 0);
INSERT INTO `pk_level` VALUES (11, '测试导入2', 1, 2, 1, 1634197618, 0, 0, 0);
INSERT INTO `pk_level` VALUES (12, '测试导入3', 1, 3, 1, 1634197618, 0, 0, 0);
INSERT INTO `pk_level` VALUES (13, '测试导入4', 1, 4, 1, 1634197618, 0, 0, 0);
INSERT INTO `pk_level` VALUES (14, '测试导入5', 1, 5, 1, 1634197618, 0, 0, 0);

-- ----------------------------
-- Table structure for avt_link
-- ----------------------------
DROP TABLE IF EXISTS `pk_link`;
CREATE TABLE `pk_link`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '友链名称',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型：1友情链接 2合作伙伴',
  `url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '友链地址',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '站点ID',
  `cate_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目ID',
  `platform` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '平台：1PC站 2WAP站 3微信小程序 4APP应用',
  `form` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '友链形式：1文字链接 2图片链接',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '友链图片',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1在用 2停用',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mark`(`mark`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友链管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_link
-- ----------------------------
INSERT INTO `pk_link` VALUES (1, '一场春雨,樱花初绽，盛华无双', 2, 'http://www.rxthink.cn/', 1, 2, 3, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (2, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 4, 1, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (3, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (4, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (5, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (6, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (7, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (8, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (9, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (10, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (11, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (12, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (13, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (14, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (15, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (16, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (17, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (18, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (19, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (20, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (21, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (22, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (23, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (24, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (25, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (26, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (27, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (28, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (29, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (30, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (31, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (32, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (33, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (34, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (35, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (36, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (37, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (38, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (39, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (40, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (41, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (42, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (43, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_link` VALUES (44, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/1b4713d07deb7f1a471.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381414, 1);
INSERT INTO `pk_link` VALUES (45, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/6263d112a4d66811345.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381403, 1);
INSERT INTO `pk_link` VALUES (46, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/cfff554b62bb27ca587.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381396, 1);
INSERT INTO `pk_link` VALUES (47, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/c494eda13fcda4ba312.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381386, 1);
INSERT INTO `pk_link` VALUES (48, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/c96165170689e7f7403.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381378, 1);
INSERT INTO `pk_link` VALUES (49, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/32b3aaff392819de690.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381370, 1);
INSERT INTO `pk_link` VALUES (50, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/47c436ba17ee43a4284.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381359, 1);
INSERT INTO `pk_link` VALUES (51, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/0eafd95c0c6dbd9a552.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381351, 1);
INSERT INTO `pk_link` VALUES (52, '一场春雨,樱花初绽，盛华无双', 2, 'http://www.rxthink.cn/', 1, 2, 1, 1, '/images/link/20210923/e67fd79294e64348527.jpg', 1, 1, NULL, 1, 1621998864, 1, 1632381342, 1);
INSERT INTO `pk_link` VALUES (53, '一场春雨,樱花初绽，盛华无双', 1, 'http://www.rxthink.cn/', 1, 2, 1, 2, '/images/link/20210923/bd45d0567b7415e9187.jpg', 1, 1, '暂无', 1, 1621998864, 1, 1632381332, 1);

-- ----------------------------
-- Table structure for avt_member
-- ----------------------------
DROP TABLE IF EXISTS `pk_member`;
CREATE TABLE `pk_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户唯一标识',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `member_level` smallint(3) NOT NULL DEFAULT 0 COMMENT '会员等级',
  `realname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `gender` tinyint(1) NOT NULL DEFAULT 3 COMMENT '性别（1男 2女 3未知）',
  `avatar` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户头像',
  `birthday` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '出生日期',
  `province_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '户籍省份编号',
  `city_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '户籍城市编号',
  `district_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '户籍区/县编号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '个人简介',
  `signature` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `device` tinyint(1) NOT NULL DEFAULT 0 COMMENT '设备类型：1苹果 2安卓 3WAP站 4PC站 5后台添加',
  `device_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推送的别名',
  `push_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '推送的别名',
  `source` tinyint(1) NOT NULL DEFAULT 1 COMMENT '来源：1、APP注册；2、后台添加；',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用 1、启用  2、停用',
  `app_version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '客户端版本号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '我的推广码',
  `login_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近登录IP',
  `login_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `login_region` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录地点',
  `login_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录总次数',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of avt_member
-- ----------------------------
INSERT INTO `pk_member` VALUES (1, '', 'test1', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (2, '', 'test2', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (3, '', 'test3', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (4, '', 'test4', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (5, '', 'test5', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (6, '', 'test6', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (7, '', 'test7', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (8, '', 'test8', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (9, '', 'test9', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (10, '', 'test10', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (11, '', 'test11', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (12, '', 'test12', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (13, '', 'test13', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (14, '', 'test14', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (15, '', 'test15', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/c41a9a4ed74bc708799.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632382622, 1);
INSERT INTO `pk_member` VALUES (16, '', 'test16', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/e2b5884793dabe6e326.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383172, 1);
INSERT INTO `pk_member` VALUES (17, '', 'test17', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/cea0d98124bc2929271.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383163, 1);
INSERT INTO `pk_member` VALUES (18, '', 'test18', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/d603147b4793f8c9414.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383152, 1);
INSERT INTO `pk_member` VALUES (19, '', 'test19', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/293e549313f23251833.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383138, 1);
INSERT INTO `pk_member` VALUES (20, '', 'test20', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/669ac216b08523c2379.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383127, 1);
INSERT INTO `pk_member` VALUES (21, '', 'test21', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/eac1cad1473b60af934.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383119, 1);
INSERT INTO `pk_member` VALUES (22, '', 'test22', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/f4952ba936c70670145.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383110, 1);
INSERT INTO `pk_member` VALUES (23, '', 'test23', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/3afc96dd92e8226f926.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383102, 1);
INSERT INTO `pk_member` VALUES (24, '', 'test24', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/032a6efa0f7902fd821.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1632383096, 1);
INSERT INTO `pk_member` VALUES (25, '', 'test25', '', 1, '测试会员1', '测试会员1', 1, '/images/member/20210923/9ae15fbc75d8f54e724.jpg', 631123200, '320000', '320100', '320105', '暂无', '暂无', '暂无', 5, '', '', 5, 1, '', '', '', 0, '', 0, 1, 1632382614, 1, 1634265281, 1);

-- ----------------------------
-- Table structure for avt_member_level
-- ----------------------------
DROP TABLE IF EXISTS `pk_member_level`;
CREATE TABLE `pk_member_level`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '级别名称',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员级别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_member_level
-- ----------------------------
INSERT INTO `pk_member_level` VALUES (1, '青铜', 1, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_member_level` VALUES (2, '钻石', 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_member_level` VALUES (3, '白银', 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_member_level` VALUES (4, '黄金', 125, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_member_level` VALUES (5, '黑金会员', 125, 1, 1621998864, 1, 1632141881, 1);

-- ----------------------------
-- Table structure for avt_menu
-- ----------------------------
DROP TABLE IF EXISTS `pk_menu`;
CREATE TABLE `pk_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级ID',
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单标题',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `component` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单组件',
  `target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打开方式：0组件 1内链 2外链',
  `permission` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型：0菜单 1节点',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态：1正常 2禁用',
  `hide` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否可见：0显示 1隐藏',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` smallint(5) NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_pid`(`pid`) USING BTREE,
  INDEX `index_name`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1991 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of avt_menu
-- ----------------------------
INSERT INTO `pk_menu` VALUES (1, 0, '面板主页', 'DesktopOutlined', '/dashboard', '', '_self', '', 0, 1, 0, '', 0, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (2, 1, '工作台', 'WindowsOutlined', '/dashboard/workplace', '/dashboard/workplace', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (3, 1, '数据分析', 'RadarChartOutlined', '/dashboard/analysis', '/dashboard/analysis', '_self', '', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (4, 0, '系统管理', 'SettingOutlined', '/system', '', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (5, 4, '用户管理', 'UsergroupAddOutlined', '/system/user', '/system/user', '_self', 'sys:user:view', 0, 1, 0, '暂无', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (13, 4, '角色管理', 'VerifiedOutlined', '/system/role', '/system/role', '_self', 'sys:role:view', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (20, 4, '菜单管理', 'InsertRowBelowOutlined', '/system/menu', '/system/menu', '_self', 'sys:menu:view', 0, 1, 0, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (28, 4, '职级管理', 'ControlOutlined', '/system/level', '/system/level', '_self', 'sys:level:view', 0, 1, 0, '', 15, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (36, 4, '岗位管理', 'MacCommandOutlined', '/system/position', '/system/position', '_self', 'sys:position:view', 0, 1, 0, '', 20, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (43, 4, '部门管理', 'ClusterOutlined', '/system/dept', '/system/dept', '_self', 'sys:dept:view', 0, 1, 0, '', 25, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (51, 4, '登录日志', 'AppstoreOutlined', '/system/loginlog', '/system/loginlog', '_self', 'sys:loginlog:view', 0, 1, 0, '', 30, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (56, 4, '操作日志', 'BarsOutlined', '/system/operlog', '/system/operlog', '_self', 'sys:operlog:view', 0, 1, 0, '', 35, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (61, 0, '数据中心', 'AreaChartOutlined', '/data', '', '_self', '', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (62, 61, '字典管理', 'AppstoreAddOutlined', '/data/dictionary', '/data/dictionary', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (68, 61, '城市管理', 'PartitionOutlined', '/data/city', '/data/city', '_self', '', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (76, 61, '配置管理', 'UngroupOutlined', '/data/config', '/data/config', '_self', '', 0, 1, 0, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (82, 61, '通知公告', 'FundProjectionScreenOutlined', '/message/notice', '/message/notice', '_self', '', 0, 1, 0, '', 15, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (89, 0, '个人中心', 'UserOutlined', '/user', '', '_self', '', 0, 1, 0, '', 8, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (90, 89, '个人资料', 'TeamOutlined', '/user/profile', '/user/profile', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (92, 0, '运营中心', 'UngroupOutlined', '/operate', '', '_self', '', 0, 1, 0, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (93, 170, '站点管理', 'SettingOutlined', '/content/item', '/content/item', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (100, 170, '栏目管理', 'GlobalOutlined', '/content/itemcate', '/content/itemcate', '_self', '', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (109, 92, '广告位管理', 'CommentOutlined', '/operate/adsort', '/operate/adsort', '_self', '', 0, 1, 0, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (115, 92, '广告管理', 'BgColorsOutlined', '/operate/ad', '/operate/ad', '_self', '', 0, 1, 0, '', 15, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (121, 92, '布局描述管理', 'SlidersOutlined', '/operate/layoutdesc', '/operate/layoutdesc', '_self', '', 0, 1, 0, '', 20, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (127, 92, '布局管理', 'CodeSandboxOutlined', '/operate/layout', '/operate/layout', '_self', '', 0, 1, 0, '', 25, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (133, 61, '友链管理', 'PaperClipOutlined', '/data/link', '/data/link', '_self', '', 0, 1, 0, '', 30, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (140, 0, '会员管理', 'UserSwitchOutlined', '/member', '', '_self', '', 0, 1, 0, '', 25, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (141, 140, '会员等级', 'SketchOutlined', '/member/memberlevel', '/member/memberlevel', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (147, 140, '会员管理', 'UserSwitchOutlined', '/member/member', '/member/member', '_self', '', 0, 1, 0, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (154, 0, '系统工具', 'AppstoreAddOutlined', '/tool', '', '_self', '', 0, 1, 0, '', 30, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (155, 154, '代码生成', 'SettingOutlined', '/tool/generate', '/tool/generate', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (162, 0, '获取授权', 'BgColorsOutlined', 'http://www.rxthink.cn/goods/detail/7', '', '_self', '', 0, 1, 0, '', 35, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (163, 0, '开发文档', 'BgColorsOutlined', '/document', 'http://docs.avtp6.pro.rxthink.cn', '_blank', '', 0, 1, 0, '', 40, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (164, 154, '案例演示', 'UngroupOutlined', '/tool/example', '', '_self', '', 0, 1, 0, '', 125, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (170, 0, 'CMS管理', 'AppstoreOutlined', '/content', '', '_self', '', 0, 1, 0, '', 15, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (177, 0, '系统设置', 'GlobalOutlined', '/setting', '', '_self', '', 0, 1, 0, '', 29, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (178, 177, '网站设置', 'GlobalOutlined', '/config/website', '/config/website', '_self', '', 0, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (262, 0, '官网地址', 'WindowsOutlined', 'http://www.rxthink.cn', '', '_blank', '', 0, 1, 0, '', 34, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1306, 90, '查询个人资料', '', '/profile/list', '', '_self', 'sys:profile:index', 1, 1, 0, '', 1, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1307, 90, '修改个人资料', '', '/profile/update', '', '_self', 'sys:profile:edit', 1, 1, 0, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1392, 4, '用户信息', 'UsergroupAddOutlined', '/system/user/info', '/system/user/info', '_self', '', 0, 1, 1, '', 40, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1420, 5, '查询用户', '', '/user/index', '', '_self', 'sys:user:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1421, 5, '添加用户', '', '/user/edit', '', '_self', 'sys:user:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1422, 5, '修改用户', '', '/user/edit', '', '_self', 'sys:user:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1423, 5, '删除用户', '', '/user/delete', '', '_self', 'sys:user:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1424, 5, '用户详情', '', '/user/detail', '', '_self', 'sys:user:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1425, 5, '设置状态', '', '/user/status', '', '_self', 'sys:user:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1426, 5, '批量删除', '', '/user/dall', '', '_self', 'sys:user:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1427, 5, '导出用户', '', '/user/export', '', '_self', 'sys:user:export', 1, 1, 1, '', 50, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1428, 5, '导入用户', '', '/user/import', '', '_self', 'sys:user:import', 1, 1, 1, '', 55, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1429, 5, '重置密码', '', '/user/resetPwd', '', '_self', 'sys:user:resetPwd', 1, 1, 1, '', 65, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1430, 13, '查询角色', '', '/role/index', '', '_self', 'sys:role:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1431, 13, '添加角色', '', '/role/edit', '', '_self', 'sys:role:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1432, 13, '修改角色', '', '/role/edit', '', '_self', 'sys:role:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1433, 13, '删除角色', '', '/role/delete', '', '_self', 'sys:role:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1434, 13, '角色详情', '', '/role/detail', '', '_self', 'sys:role:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1435, 13, '批量删除', '', '/role/dall', '', '_self', 'sys:role:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1436, 13, '分配权限', '', '/role/permission', '', '_self', 'sys:role:permission', 1, 1, 1, '', 60, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1437, 20, '查询菜单', '', '/menu/index', '', '_self', 'sys:menu:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1438, 20, '添加菜单', '', '/menu/edit', '', '_self', 'sys:menu:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1439, 20, '修改菜单', '', '/menu/edit', '', '_self', 'sys:menu:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1440, 20, '删除菜单', '', '/menu/delete', '', '_self', 'sys:menu:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1441, 20, '批量删除', '', '/menu/dall', '', '_self', 'sys:menu:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1442, 20, '添加子级', '', '/menu/addz', '', '_self', 'sys:menu:addz', 1, 1, 1, '', 35, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1443, 20, '全部展开', '', '/menu/expand', '', '_self', 'sys:menu:expand', 1, 1, 1, '', 40, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1444, 20, '菜单详情', '', '/menu/detail', '', '_self', 'sys:menu:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1445, 20, '全部折叠', '', '/menu/collapse', '', '_self', 'sys:menu:collapse', 1, 1, 1, '', 45, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1446, 28, '查询职级', '', '/level/index', '', '_self', 'sys:level:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1447, 28, '添加职级', '', '/level/edit', '', '_self', 'sys:level:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1448, 28, '修改职级', '', '/level/edit', '', '_self', 'sys:level:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1449, 28, '删除职级', '', '/level/delete', '', '_self', 'sys:level:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1450, 28, '职级详情', '', '/level/detail', '', '_self', 'sys:level:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1451, 28, '设置状态', '', '/level/status', '', '_self', 'sys:level:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1452, 28, '批量删除', '', '/level/dall', '', '_self', 'sys:level:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1453, 28, '导出职级', '', '/level/export', '', '_self', 'sys:level:export', 1, 1, 1, '', 50, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1454, 28, '导入职级', '', '/level/import', '', '_self', 'sys:level:import', 1, 1, 1, '', 55, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1455, 36, '查询岗位', '', '/position/index', '', '_self', 'sys:position:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1456, 36, '添加岗位', '', '/position/edit', '', '_self', 'sys:position:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1457, 36, '修改岗位', '', '/position/edit', '', '_self', 'sys:position:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1458, 36, '删除岗位', '', '/position/delete', '', '_self', 'sys:position:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1459, 36, '岗位详情', '', '/position/detail', '', '_self', 'sys:position:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1460, 36, '设置状态', '', '/position/status', '', '_self', 'sys:position:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1461, 36, '批量删除', '', '/position/dall', '', '_self', 'sys:position:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1462, 43, '查询部门', '', '/dept/index', '', '_self', 'sys:dept:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1463, 43, '添加部门', '', '/dept/edit', '', '_self', 'sys:dept:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1464, 43, '修改部门', '', '/dept/edit', '', '_self', 'sys:dept:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1465, 43, '删除部门', '', '/dept/delete', '', '_self', 'sys:dept:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1466, 43, '批量删除', '', '/dept/dall', '', '_self', 'sys:dept:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1467, 43, '添加子级', '', '/dept/addz', '', '_self', 'sys:dept:addz', 1, 1, 1, '', 35, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1468, 43, '全部展开', '', '/dept/expand', '', '_self', 'sys:dept:expand', 1, 1, 1, '', 40, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1469, 43, '部门详情', '', '/dept/detail', '', '_self', 'sys:dept:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1470, 43, '全部折叠', '', '/dept/collapse', '', '_self', 'sys:dept:collapse', 1, 1, 1, '', 45, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1471, 51, '查询登录日志', '', '/loginlog/index', '', '_self', 'sys:loginlog:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1472, 51, '删除登录日志', '', '/loginlog/delete', '', '_self', 'sys:loginlog:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1473, 51, '登录日志详情', '', '/loginlog/detail', '', '_self', 'sys:loginlog:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1474, 51, '批量删除', '', '/loginlog/dall', '', '_self', 'sys:loginlog:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1475, 51, '导出登录日志', '', '/loginlog/export', '', '_self', 'sys:loginlog:export', 1, 1, 1, '', 50, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1476, 56, '查询操作日志', '', '/operlog/index', '', '_self', 'sys:operlog:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1477, 56, '删除操作日志', '', '/operlog/delete', '', '_self', 'sys:operlog:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1478, 56, '操作日志详情', '', '/operlog/detail', '', '_self', 'sys:operlog:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1479, 56, '批量删除', '', '/operlog/dall', '', '_self', 'sys:operlog:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1480, 56, '导出操作日志', '', '/operlog/export', '', '_self', 'sys:operlog:export', 1, 1, 1, '', 50, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1481, 62, '查询字典', '', '/dictionary/index', '', '_self', 'sys:dictionary:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1482, 62, '添加字典', '', '/dictionary/edit', '', '_self', 'sys:dictionary:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1483, 62, '修改字典', '', '/dictionary/edit', '', '_self', 'sys:dictionary:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1484, 62, '删除字典', '', '/dictionary/delete', '', '_self', 'sys:dictionary:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1485, 62, '设置状态', '', '/dictionary/status', '', '_self', 'sys:dictionary:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1486, 62, '字典详情', '', '/dictionary/detail', '', '_self', 'sys:dictionary:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1487, 62, '批量删除', '', '/dictionary/dall', '', '_self', 'sys:dictionary:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1488, 68, '查询城市', '', '/city/index', '', '_self', 'sys:city:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1489, 68, '添加城市', '', '/city/edit', '', '_self', 'sys:city:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1490, 68, '修改城市', '', '/city/edit', '', '_self', 'sys:city:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1491, 68, '删除城市', '', '/city/delete', '', '_self', 'sys:city:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1492, 68, '添加子级', '', '/city/addz', '', '_self', 'sys:city:addz', 1, 1, 1, '', 35, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1493, 68, '全部展开', '', '/city/expand', '', '_self', 'sys:city:expand', 1, 1, 1, '', 40, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1494, 68, '城市详情', '', '/city/detail', '', '_self', 'sys:city:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1495, 68, '全部折叠', '', '/city/collapse', '', '_self', 'sys:city:collapse', 1, 1, 1, '', 45, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1496, 76, '查询配置', '', '/config/index', '', '_self', 'sys:config:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1497, 76, '添加配置', '', '/config/edit', '', '_self', 'sys:config:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1498, 76, '修改配置', '', '/config/edit', '', '_self', 'sys:config:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1499, 76, '删除配置', '', '/config/delete', '', '_self', 'sys:config:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1500, 76, '设置状态', '', '/config/status', '', '_self', 'sys:config:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1501, 76, '配置详情', '', '/config/detail', '', '_self', 'sys:config:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1502, 76, '批量删除', '', '/config/dall', '', '_self', 'sys:config:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1503, 82, '查询通知公告', '', '/notice/index', '', '_self', 'sys:notice:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1504, 82, '添加通知公告', '', '/notice/edit', '', '_self', 'sys:notice:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1505, 82, '修改通知公告', '', '/notice/edit', '', '_self', 'sys:notice:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1506, 82, '删除通知公告', '', '/notice/delete', '', '_self', 'sys:notice:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1507, 82, '通知公告详情', '', '/notice/detail', '', '_self', 'sys:notice:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1508, 82, '设置状态', '', '/notice/status', '', '_self', 'sys:notice:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1509, 82, '批量删除', '', '/notice/dall', '', '_self', 'sys:notice:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1510, 133, '查询友链', '', '/link/index', '', '_self', 'sys:link:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1511, 133, '添加友链', '', '/link/edit', '', '_self', 'sys:link:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1512, 133, '修改友链', '', '/link/edit', '', '_self', 'sys:link:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1513, 133, '删除友链', '', '/link/delete', '', '_self', 'sys:link:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1514, 133, '友链详情', '', '/link/detail', '', '_self', 'sys:link:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1515, 133, '设置状态', '', '/link/status', '', '_self', 'sys:link:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1516, 133, '批量删除', '', '/link/dall', '', '_self', 'sys:link:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1517, 109, '查询广告位', '', '/adsort/index', '', '_self', 'sys:adsort:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1518, 109, '添加广告位', '', '/adsort/edit', '', '_self', 'sys:adsort:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1519, 109, '修改广告位', '', '/adsort/edit', '', '_self', 'sys:adsort:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1520, 109, '删除广告位', '', '/adsort/delete', '', '_self', 'sys:adsort:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1521, 109, '广告位详情', '', '/adsort/detail', '', '_self', 'sys:adsort:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1522, 109, '批量删除', '', '/adsort/dall', '', '_self', 'sys:adsort:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1523, 115, '查询广告', '', '/ad/index', '', '_self', 'sys:ad:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1524, 115, '添加广告', '', '/ad/edit', '', '_self', 'sys:ad:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1525, 115, '修改广告', '', '/ad/edit', '', '_self', 'sys:ad:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1526, 115, '删除广告', '', '/ad/delete', '', '_self', 'sys:ad:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1527, 115, '设置状态', '', '/ad/status', '', '_self', 'sys:ad:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1528, 115, '广告详情', '', '/ad/detail', '', '_self', 'sys:ad:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1529, 115, '批量删除', '', '/ad/dall', '', '_self', 'sys:ad:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1530, 121, '查询布局描述', '', '/layoutdesc/index', '', '_self', 'sys:layoutdesc:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1531, 121, '添加布局描述', '', '/layoutdesc/edit', '', '_self', 'sys:layoutdesc:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1532, 121, '修改布局描述', '', '/layoutdesc/edit', '', '_self', 'sys:layoutdesc:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1533, 121, '删除布局描述', '', '/layoutdesc/delete', '', '_self', 'sys:layoutdesc:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1534, 121, '设置状态', '', '/layoutdesc/status', '', '_self', 'sys:layoutdesc:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1535, 121, '布局描述详情', '', '/layoutdesc/detail', '', '_self', 'sys:layoutdesc:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1536, 121, '批量删除', '', '/layoutdesc/dall', '', '_self', 'sys:layoutdesc:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1537, 127, '查询布局', '', '/layout/index', '', '_self', 'sys:layout:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1538, 127, '添加布局', '', '/layout/edit', '', '_self', 'sys:layout:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1539, 127, '修改布局', '', '/layout/edit', '', '_self', 'sys:layout:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1540, 127, '删除布局', '', '/layout/delete', '', '_self', 'sys:layout:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1541, 127, '设置状态', '', '/layout/status', '', '_self', 'sys:layout:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1542, 127, '布局详情', '', '/layout/detail', '', '_self', 'sys:layout:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1543, 127, '批量删除', '', '/layout/dall', '', '_self', 'sys:layout:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1544, 93, '查询站点', '', '/item/index', '', '_self', 'sys:item:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1545, 93, '添加站点', '', '/item/edit', '', '_self', 'sys:item:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1546, 93, '修改站点', '', '/item/edit', '', '_self', 'sys:item:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1547, 93, '删除站点', '', '/item/delete', '', '_self', 'sys:item:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1548, 93, '站点详情', '', '/item/detail', '', '_self', 'sys:item:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1549, 93, '设置状态', '', '/item/status', '', '_self', 'sys:item:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1550, 93, '批量删除', '', '/item/dall', '', '_self', 'sys:item:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1551, 100, '查询栏目', '', '/itemcate/index', '', '_self', 'sys:itemcate:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1552, 100, '添加栏目', '', '/itemcate/edit', '', '_self', 'sys:itemcate:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1553, 100, '修改栏目', '', '/itemcate/edit', '', '_self', 'sys:itemcate:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1554, 100, '删除栏目', '', '/itemcate/delete', '', '_self', 'sys:itemcate:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1555, 100, '栏目详情', '', '/itemcate/detail', '', '_self', 'sys:itemcate:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1556, 100, '添加子级', '', '/itemcate/addz', '', '_self', 'sys:itemcate:addz', 1, 1, 1, '', 35, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1557, 100, '全部展开', '', '/itemcate/expand', '', '_self', 'sys:itemcate:expand', 1, 1, 1, '', 40, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1558, 100, '全部折叠', '', '/itemcate/collapse', '', '_self', 'sys:itemcate:collapse', 1, 1, 1, '', 45, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1559, 141, '查询会员等级', '', '/memberlevel/index', '', '_self', 'sys:memberlevel:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1560, 141, '添加会员等级', '', '/memberlevel/edit', '', '_self', 'sys:memberlevel:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1561, 141, '修改会员等级', '', '/memberlevel/edit', '', '_self', 'sys:memberlevel:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1562, 141, '删除会员等级', '', '/memberlevel/delete', '', '_self', 'sys:memberlevel:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1563, 141, '设置状态', '', '/memberlevel/status', '', '_self', 'sys:memberlevel:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1564, 141, '会员等级详情', '', '/memberlevel/detail', '', '_self', 'sys:memberlevel:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1565, 141, '批量删除', '', '/memberlevel/dall', '', '_self', 'sys:memberlevel:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1566, 147, '查询会员', '', '/member/index', '', '_self', 'sys:member:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1567, 147, '添加会员', '', '/member/edit', '', '_self', 'sys:member:add', 1, 1, 1, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1568, 147, '修改会员', '', '/member/edit', '', '_self', 'sys:member:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1569, 147, '删除会员', '', '/member/delete', '', '_self', 'sys:member:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1570, 147, '会员详情', '', '/member/detail', '', '_self', 'sys:member:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1571, 147, '设置状态', '', '/member/status', '', '_self', 'sys:member:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1572, 147, '批量删除', '', '/member/dall', '', '_self', 'sys:member:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1573, 178, '查询网站设置', '', '/website/index', '', '_self', 'sys:website:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1574, 178, '修改网站设置', '', '/website/edit', '', '_self', 'sys:website:edit', 1, 1, 1, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1575, 155, '查询代码生成', '', '/generate/index', '', '_self', 'sys:generate:index', 1, 1, 1, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1576, 155, '一键生成', '', '/generate/edit', '', '_self', 'sys:generate:generate', 1, 1, 1, '', 5, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1577, 155, '批量生成', '', '/generate/edit', '', '_self', 'sys:generate:batchGenerate', 1, 1, 1, '', 10, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1578, 155, '删除代码生成', '', '/generate/delete', '', '_self', 'sys:generate:delete', 1, 1, 1, '', 15, 1, 1634266096, 0, 1634266096, 0);
INSERT INTO `pk_menu` VALUES (1579, 155, '代码生成详情', '', '/generate/detail', '', '_self', 'sys:generate:detail', 1, 1, 1, '', 20, 1, 1634266096, 0, 1634266096, 0);
INSERT INTO `pk_menu` VALUES (1580, 155, '设置状态', '', '/generate/status', '', '_self', 'sys:generate:status', 1, 1, 1, '', 25, 1, 1634266096, 0, 1634266096, 0);
INSERT INTO `pk_menu` VALUES (1581, 155, '批量删除', '', '/generate/dall', '', '_self', 'sys:generate:dall', 1, 1, 1, '', 30, 1, 1634266096, 0, 1634266096, 0);
INSERT INTO `pk_menu` VALUES (1622, 164, '演示案例一', 'UngroupOutlined', '/tool/example/example', '/tool/example/example', '', 'sys:example:view', 0, 1, 0, '', 125, 1, 1634266096, 1, 1639730162, 1);
INSERT INTO `pk_menu` VALUES (1785, 170, '文章管理', 'UngroupOutlined', '/content/article', '/content/article', '_self', '', 0, 1, 0, '', 15, 1, 1634266096, 1, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1814, 164, '演示案例二', 'UngroupOutlined', '/tool/example/example2', '/tool/example/example2', '', 'sys:example2:view', 0, 1, 0, '', 125, 1, 1634266096, 1, 1639730163, 1);
INSERT INTO `pk_menu` VALUES (1821, 1785, '查询文章', '', '/article/index', '', '_self', 'sys:article:index', 1, 1, 0, '', 1, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1822, 1785, '添加文章', '', '/article/edit', '', '_self', 'sys:article:add', 1, 1, 0, '', 5, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1823, 1785, '修改文章', '', '/article/edit', '', '_self', 'sys:article:edit', 1, 1, 0, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1824, 1785, '删除文章', '', '/article/delete', '', '_self', 'sys:article:delete', 1, 1, 0, '', 15, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1825, 1785, '文章详情', '', '/article/detail', '', '_self', 'sys:article:detail', 1, 1, 0, '', 20, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1826, 1785, '设置状态', '', '/article/status', '', '_self', 'sys:article:status', 1, 1, 0, '', 25, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1827, 1785, '批量删除', '', '/article/dall', '', '_self', 'sys:article:dall', 1, 1, 0, '', 30, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1828, 1, '大屏监控', 'UngroupOutlined', '/dashboard/monitor', '/dashboard/monitor', '_self', '', 0, 1, 0, '', 10, 1, 1634266096, 0, 1634266096, 1);
INSERT INTO `pk_menu` VALUES (1979, 1622, '查询演示案例一', '', '/example/index', '', '_self', 'sys:example:index', 1, 1, 0, '', 1, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1980, 1622, '添加演示案例一', '', '/example/edit', '', '_self', 'sys:example:add', 1, 1, 0, '', 5, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1981, 1622, '修改演示案例一', '', '/example/edit', '', '_self', 'sys:example:edit', 1, 1, 0, '', 10, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1982, 1622, '删除演示案例一', '', '/example/delete', '', '_self', 'sys:example:delete', 1, 1, 0, '', 15, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1983, 1622, '设置状态', '', '/example/status', '', '_self', 'sys:example:status', 1, 1, 0, '', 25, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1984, 1622, '批量删除', '', '/example/dall', '', '_self', 'sys:example:dall', 1, 1, 0, '', 30, 1, 1639730162, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1985, 1814, '查询演示案例二', '', '/example2/index', '', '_self', 'sys:example2:index', 1, 1, 0, '', 1, 1, 1639730163, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1986, 1814, '添加演示案例二', '', '/example2/edit', '', '_self', 'sys:example2:add', 1, 1, 0, '', 5, 1, 1639730163, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1987, 1814, '修改演示案例二', '', '/example2/edit', '', '_self', 'sys:example2:edit', 1, 1, 0, '', 10, 1, 1639730163, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1988, 1814, '删除演示案例二', '', '/example2/delete', '', '_self', 'sys:example2:delete', 1, 1, 0, '', 15, 1, 1639730163, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1989, 1814, '设置状态', '', '/example2/status', '', '_self', 'sys:example2:status', 1, 1, 0, '', 25, 1, 1639730163, 0, 0, 1);
INSERT INTO `pk_menu` VALUES (1990, 1814, '批量删除', '', '/example2/dall', '', '_self', 'sys:example2:dall', 1, 1, 0, '', 30, 1, 1639730163, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_notice
-- ----------------------------
DROP TABLE IF EXISTS `pk_notice`;
CREATE TABLE `pk_notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通知标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '通知内容',
  `source` tinyint(1) NOT NULL COMMENT '来源：1内部通知 2外部新闻',
  `is_top` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '是否置顶：1是 2否',
  `browse` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读量',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '状态：1已发布 2待发布',
  `create_user` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_notice
-- ----------------------------
INSERT INTO `pk_notice` VALUES (1, '2021春节节放假通知', '<p><span style=\"outline: 0px; max-width: 100%; letter-spacing: 0.5px; box-sizing: border-box !important; overflow-wrap: break-word !important;\">10月1日（星期五）至7日（星期四）放假调休，共7天。</span><span style=\"outline: 0px; max-width: 100%; letter-spacing: 0.5px; color: #7b0c00; box-sizing: border-box !important; overflow-wrap: break-word !important;\"><strong style=\"outline: 0px; max-width: 100%; box-sizing: border-box !important; overflow-wrap: break-word !important;\">9月26日（星期日）、10月9日（星期六）上班</strong></span>；</p>\n<p><img src=\"[IMG_URL]/images/notice/20210923/a665e7bb94b1f470915.jpeg\" /></p>', 1, 1, 0, 1, 1, 1621998864, 1, 1632381214, 1);
INSERT INTO `pk_notice` VALUES (2, '2021国庆节放假通知', '<p><span style=\"outline: 0px; max-width: 100%; letter-spacing: 0.5px; box-sizing: border-box !important; overflow-wrap: break-word !important;\">10月1日（星期五）至7日（星期四）放假调休，共7天。</span><span style=\"outline: 0px; max-width: 100%; letter-spacing: 0.5px; color: #7b0c00; box-sizing: border-box !important; overflow-wrap: break-word !important;\"><strong style=\"outline: 0px; max-width: 100%; box-sizing: border-box !important; overflow-wrap: break-word !important;\">9月26日（星期日）、10月9日（星期六）上班</strong></span>；</p>\n<p><img src=\"[IMG_URL]/images/notice/20210923/23a009b902f72f57536.jpeg\" /></p>', 1, 1, 0, 1, 1, 1621998864, 1, 1632381201, 1);

-- ----------------------------
-- Table structure for avt_position
-- ----------------------------
DROP TABLE IF EXISTS `pk_position`;
CREATE TABLE `pk_position`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 2停用',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_position
-- ----------------------------
INSERT INTO `pk_position` VALUES (1, '产品经理', 1, 1, 1, 1632380159, 1, 1634197054, 1);
INSERT INTO `pk_position` VALUES (2, '技术经理', 1, 2, 1, 1632380176, 0, 0, 1);
INSERT INTO `pk_position` VALUES (3, 'UI设计师', 1, 3, 1, 1632380182, 0, 0, 1);
INSERT INTO `pk_position` VALUES (4, '软件测试工程师', 1, 4, 1, 1632380189, 1, 1632380206, 1);
INSERT INTO `pk_position` VALUES (5, '软件研发工程师', 1, 5, 1, 1632380200, 0, 0, 1);

-- ----------------------------
-- Table structure for avt_role
-- ----------------------------
DROP TABLE IF EXISTS `pk_role`;
CREATE TABLE `pk_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色标签',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 2禁用',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '排序',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_role
-- ----------------------------
INSERT INTO `pk_role` VALUES (1, '超级管理员', 'super', 1, '超级管理员拥有绝对权限', 1, 1, 1621998864, 1, 1634197059, 1);
INSERT INTO `pk_role` VALUES (2, '管理员', 'admin', 1, NULL, 5, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_role` VALUES (3, '运营', 'yunying', 1, NULL, 10, 1, 1621998864, 1, 1621998864, 1);
INSERT INTO `pk_role` VALUES (4, '客服', 'kefu', 1, NULL, 15, 1, 1621998864, 1, 1621998864, 1);

-- ----------------------------
-- Table structure for avt_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `pk_role_menu`;
CREATE TABLE `pk_role_menu`  (
  `role_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  `menu_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单ID',
  INDEX `role_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_role_menu
-- ----------------------------
INSERT INTO `pk_role_menu` VALUES (3, 1);
INSERT INTO `pk_role_menu` VALUES (3, 2);
INSERT INTO `pk_role_menu` VALUES (3, 3);
INSERT INTO `pk_role_menu` VALUES (3, 89);
INSERT INTO `pk_role_menu` VALUES (3, 90);
INSERT INTO `pk_role_menu` VALUES (3, 1306);
INSERT INTO `pk_role_menu` VALUES (3, 1307);
INSERT INTO `pk_role_menu` VALUES (3, 92);
INSERT INTO `pk_role_menu` VALUES (3, 109);
INSERT INTO `pk_role_menu` VALUES (3, 1517);
INSERT INTO `pk_role_menu` VALUES (3, 1518);
INSERT INTO `pk_role_menu` VALUES (3, 1519);
INSERT INTO `pk_role_menu` VALUES (3, 1520);
INSERT INTO `pk_role_menu` VALUES (3, 1521);
INSERT INTO `pk_role_menu` VALUES (3, 1522);
INSERT INTO `pk_role_menu` VALUES (3, 115);
INSERT INTO `pk_role_menu` VALUES (3, 1523);
INSERT INTO `pk_role_menu` VALUES (3, 1524);
INSERT INTO `pk_role_menu` VALUES (3, 1525);
INSERT INTO `pk_role_menu` VALUES (3, 1526);
INSERT INTO `pk_role_menu` VALUES (3, 1528);
INSERT INTO `pk_role_menu` VALUES (3, 1527);
INSERT INTO `pk_role_menu` VALUES (3, 1529);
INSERT INTO `pk_role_menu` VALUES (3, 121);
INSERT INTO `pk_role_menu` VALUES (3, 1530);
INSERT INTO `pk_role_menu` VALUES (3, 1531);
INSERT INTO `pk_role_menu` VALUES (3, 1532);
INSERT INTO `pk_role_menu` VALUES (3, 1533);
INSERT INTO `pk_role_menu` VALUES (3, 1535);
INSERT INTO `pk_role_menu` VALUES (3, 1534);
INSERT INTO `pk_role_menu` VALUES (3, 1536);
INSERT INTO `pk_role_menu` VALUES (3, 127);
INSERT INTO `pk_role_menu` VALUES (3, 1537);
INSERT INTO `pk_role_menu` VALUES (3, 1538);
INSERT INTO `pk_role_menu` VALUES (3, 1539);
INSERT INTO `pk_role_menu` VALUES (3, 1540);
INSERT INTO `pk_role_menu` VALUES (3, 1542);
INSERT INTO `pk_role_menu` VALUES (3, 1541);
INSERT INTO `pk_role_menu` VALUES (3, 1543);
INSERT INTO `pk_role_menu` VALUES (4, 1);
INSERT INTO `pk_role_menu` VALUES (4, 2);
INSERT INTO `pk_role_menu` VALUES (4, 3);
INSERT INTO `pk_role_menu` VALUES (4, 4);
INSERT INTO `pk_role_menu` VALUES (4, 5);
INSERT INTO `pk_role_menu` VALUES (4, 1420);
INSERT INTO `pk_role_menu` VALUES (4, 1421);
INSERT INTO `pk_role_menu` VALUES (4, 1422);
INSERT INTO `pk_role_menu` VALUES (4, 1423);
INSERT INTO `pk_role_menu` VALUES (4, 1424);
INSERT INTO `pk_role_menu` VALUES (4, 1425);
INSERT INTO `pk_role_menu` VALUES (4, 1426);
INSERT INTO `pk_role_menu` VALUES (4, 1427);
INSERT INTO `pk_role_menu` VALUES (4, 1428);
INSERT INTO `pk_role_menu` VALUES (4, 1429);
INSERT INTO `pk_role_menu` VALUES (4, 13);
INSERT INTO `pk_role_menu` VALUES (4, 1430);
INSERT INTO `pk_role_menu` VALUES (4, 1431);
INSERT INTO `pk_role_menu` VALUES (4, 1432);
INSERT INTO `pk_role_menu` VALUES (4, 1433);
INSERT INTO `pk_role_menu` VALUES (4, 1434);
INSERT INTO `pk_role_menu` VALUES (4, 1435);
INSERT INTO `pk_role_menu` VALUES (4, 1436);
INSERT INTO `pk_role_menu` VALUES (4, 20);
INSERT INTO `pk_role_menu` VALUES (4, 1437);
INSERT INTO `pk_role_menu` VALUES (4, 1438);
INSERT INTO `pk_role_menu` VALUES (4, 1439);
INSERT INTO `pk_role_menu` VALUES (4, 1440);
INSERT INTO `pk_role_menu` VALUES (4, 1444);
INSERT INTO `pk_role_menu` VALUES (4, 1441);
INSERT INTO `pk_role_menu` VALUES (4, 1442);
INSERT INTO `pk_role_menu` VALUES (4, 1443);
INSERT INTO `pk_role_menu` VALUES (4, 1445);
INSERT INTO `pk_role_menu` VALUES (4, 28);
INSERT INTO `pk_role_menu` VALUES (4, 1446);
INSERT INTO `pk_role_menu` VALUES (4, 1447);
INSERT INTO `pk_role_menu` VALUES (4, 1448);
INSERT INTO `pk_role_menu` VALUES (4, 1449);
INSERT INTO `pk_role_menu` VALUES (4, 1450);
INSERT INTO `pk_role_menu` VALUES (4, 1451);
INSERT INTO `pk_role_menu` VALUES (4, 1452);
INSERT INTO `pk_role_menu` VALUES (4, 1453);
INSERT INTO `pk_role_menu` VALUES (4, 1454);
INSERT INTO `pk_role_menu` VALUES (4, 36);
INSERT INTO `pk_role_menu` VALUES (4, 1455);
INSERT INTO `pk_role_menu` VALUES (4, 1456);
INSERT INTO `pk_role_menu` VALUES (4, 1457);
INSERT INTO `pk_role_menu` VALUES (4, 1458);
INSERT INTO `pk_role_menu` VALUES (4, 1459);
INSERT INTO `pk_role_menu` VALUES (4, 1460);
INSERT INTO `pk_role_menu` VALUES (4, 1461);
INSERT INTO `pk_role_menu` VALUES (4, 43);
INSERT INTO `pk_role_menu` VALUES (4, 1462);
INSERT INTO `pk_role_menu` VALUES (4, 1463);
INSERT INTO `pk_role_menu` VALUES (4, 1464);
INSERT INTO `pk_role_menu` VALUES (4, 1465);
INSERT INTO `pk_role_menu` VALUES (4, 1469);
INSERT INTO `pk_role_menu` VALUES (4, 1466);
INSERT INTO `pk_role_menu` VALUES (4, 1467);
INSERT INTO `pk_role_menu` VALUES (4, 1468);
INSERT INTO `pk_role_menu` VALUES (4, 1470);
INSERT INTO `pk_role_menu` VALUES (4, 51);
INSERT INTO `pk_role_menu` VALUES (4, 1471);
INSERT INTO `pk_role_menu` VALUES (4, 1472);
INSERT INTO `pk_role_menu` VALUES (4, 1473);
INSERT INTO `pk_role_menu` VALUES (4, 1474);
INSERT INTO `pk_role_menu` VALUES (4, 1475);
INSERT INTO `pk_role_menu` VALUES (4, 56);
INSERT INTO `pk_role_menu` VALUES (4, 1476);
INSERT INTO `pk_role_menu` VALUES (4, 1477);
INSERT INTO `pk_role_menu` VALUES (4, 1478);
INSERT INTO `pk_role_menu` VALUES (4, 1479);
INSERT INTO `pk_role_menu` VALUES (4, 1480);
INSERT INTO `pk_role_menu` VALUES (4, 1392);
INSERT INTO `pk_role_menu` VALUES (2, 1);
INSERT INTO `pk_role_menu` VALUES (2, 2);
INSERT INTO `pk_role_menu` VALUES (2, 3);
INSERT INTO `pk_role_menu` VALUES (2, 4);
INSERT INTO `pk_role_menu` VALUES (2, 5);
INSERT INTO `pk_role_menu` VALUES (2, 1420);
INSERT INTO `pk_role_menu` VALUES (2, 1421);
INSERT INTO `pk_role_menu` VALUES (2, 1422);
INSERT INTO `pk_role_menu` VALUES (2, 1423);
INSERT INTO `pk_role_menu` VALUES (2, 1424);
INSERT INTO `pk_role_menu` VALUES (2, 1425);
INSERT INTO `pk_role_menu` VALUES (2, 1426);
INSERT INTO `pk_role_menu` VALUES (2, 1427);
INSERT INTO `pk_role_menu` VALUES (2, 1428);
INSERT INTO `pk_role_menu` VALUES (2, 1429);
INSERT INTO `pk_role_menu` VALUES (2, 13);
INSERT INTO `pk_role_menu` VALUES (2, 1430);
INSERT INTO `pk_role_menu` VALUES (2, 1431);
INSERT INTO `pk_role_menu` VALUES (2, 1432);
INSERT INTO `pk_role_menu` VALUES (2, 1433);
INSERT INTO `pk_role_menu` VALUES (2, 1434);
INSERT INTO `pk_role_menu` VALUES (2, 1435);
INSERT INTO `pk_role_menu` VALUES (2, 1436);
INSERT INTO `pk_role_menu` VALUES (2, 20);
INSERT INTO `pk_role_menu` VALUES (2, 1437);
INSERT INTO `pk_role_menu` VALUES (2, 1438);
INSERT INTO `pk_role_menu` VALUES (2, 1439);
INSERT INTO `pk_role_menu` VALUES (2, 1440);
INSERT INTO `pk_role_menu` VALUES (2, 1444);
INSERT INTO `pk_role_menu` VALUES (2, 1441);
INSERT INTO `pk_role_menu` VALUES (2, 1442);
INSERT INTO `pk_role_menu` VALUES (2, 1443);
INSERT INTO `pk_role_menu` VALUES (2, 1445);
INSERT INTO `pk_role_menu` VALUES (2, 28);
INSERT INTO `pk_role_menu` VALUES (2, 1446);
INSERT INTO `pk_role_menu` VALUES (2, 1447);
INSERT INTO `pk_role_menu` VALUES (2, 1448);
INSERT INTO `pk_role_menu` VALUES (2, 1449);
INSERT INTO `pk_role_menu` VALUES (2, 1450);
INSERT INTO `pk_role_menu` VALUES (2, 1451);
INSERT INTO `pk_role_menu` VALUES (2, 1452);
INSERT INTO `pk_role_menu` VALUES (2, 1453);
INSERT INTO `pk_role_menu` VALUES (2, 1454);
INSERT INTO `pk_role_menu` VALUES (2, 36);
INSERT INTO `pk_role_menu` VALUES (2, 1455);
INSERT INTO `pk_role_menu` VALUES (2, 1456);
INSERT INTO `pk_role_menu` VALUES (2, 1457);
INSERT INTO `pk_role_menu` VALUES (2, 1458);
INSERT INTO `pk_role_menu` VALUES (2, 1459);
INSERT INTO `pk_role_menu` VALUES (2, 1460);
INSERT INTO `pk_role_menu` VALUES (2, 1461);
INSERT INTO `pk_role_menu` VALUES (2, 43);
INSERT INTO `pk_role_menu` VALUES (2, 1462);
INSERT INTO `pk_role_menu` VALUES (2, 1463);
INSERT INTO `pk_role_menu` VALUES (2, 1464);
INSERT INTO `pk_role_menu` VALUES (2, 1465);
INSERT INTO `pk_role_menu` VALUES (2, 1469);
INSERT INTO `pk_role_menu` VALUES (2, 1466);
INSERT INTO `pk_role_menu` VALUES (2, 1467);
INSERT INTO `pk_role_menu` VALUES (2, 1468);
INSERT INTO `pk_role_menu` VALUES (2, 1470);
INSERT INTO `pk_role_menu` VALUES (2, 51);
INSERT INTO `pk_role_menu` VALUES (2, 1471);
INSERT INTO `pk_role_menu` VALUES (2, 1472);
INSERT INTO `pk_role_menu` VALUES (2, 1473);
INSERT INTO `pk_role_menu` VALUES (2, 1474);
INSERT INTO `pk_role_menu` VALUES (2, 1475);
INSERT INTO `pk_role_menu` VALUES (2, 56);
INSERT INTO `pk_role_menu` VALUES (2, 1476);
INSERT INTO `pk_role_menu` VALUES (2, 1477);
INSERT INTO `pk_role_menu` VALUES (2, 1478);
INSERT INTO `pk_role_menu` VALUES (2, 1479);
INSERT INTO `pk_role_menu` VALUES (2, 1480);
INSERT INTO `pk_role_menu` VALUES (2, 1392);
INSERT INTO `pk_role_menu` VALUES (2, 61);
INSERT INTO `pk_role_menu` VALUES (2, 62);
INSERT INTO `pk_role_menu` VALUES (2, 1481);
INSERT INTO `pk_role_menu` VALUES (2, 1482);
INSERT INTO `pk_role_menu` VALUES (2, 1483);
INSERT INTO `pk_role_menu` VALUES (2, 1484);
INSERT INTO `pk_role_menu` VALUES (2, 1486);
INSERT INTO `pk_role_menu` VALUES (2, 1485);
INSERT INTO `pk_role_menu` VALUES (2, 1487);
INSERT INTO `pk_role_menu` VALUES (2, 68);
INSERT INTO `pk_role_menu` VALUES (2, 1488);
INSERT INTO `pk_role_menu` VALUES (2, 1489);
INSERT INTO `pk_role_menu` VALUES (2, 1490);
INSERT INTO `pk_role_menu` VALUES (2, 1491);
INSERT INTO `pk_role_menu` VALUES (2, 1494);
INSERT INTO `pk_role_menu` VALUES (2, 1492);
INSERT INTO `pk_role_menu` VALUES (2, 1493);
INSERT INTO `pk_role_menu` VALUES (2, 1495);
INSERT INTO `pk_role_menu` VALUES (2, 76);
INSERT INTO `pk_role_menu` VALUES (2, 1496);
INSERT INTO `pk_role_menu` VALUES (2, 1497);
INSERT INTO `pk_role_menu` VALUES (2, 1498);
INSERT INTO `pk_role_menu` VALUES (2, 1499);
INSERT INTO `pk_role_menu` VALUES (2, 1501);
INSERT INTO `pk_role_menu` VALUES (2, 1500);
INSERT INTO `pk_role_menu` VALUES (2, 1502);
INSERT INTO `pk_role_menu` VALUES (2, 82);
INSERT INTO `pk_role_menu` VALUES (2, 1503);
INSERT INTO `pk_role_menu` VALUES (2, 1504);
INSERT INTO `pk_role_menu` VALUES (2, 1505);
INSERT INTO `pk_role_menu` VALUES (2, 1506);
INSERT INTO `pk_role_menu` VALUES (2, 1507);
INSERT INTO `pk_role_menu` VALUES (2, 1508);
INSERT INTO `pk_role_menu` VALUES (2, 1509);
INSERT INTO `pk_role_menu` VALUES (2, 133);
INSERT INTO `pk_role_menu` VALUES (2, 1510);
INSERT INTO `pk_role_menu` VALUES (2, 1511);
INSERT INTO `pk_role_menu` VALUES (2, 1512);
INSERT INTO `pk_role_menu` VALUES (2, 1513);
INSERT INTO `pk_role_menu` VALUES (2, 1514);
INSERT INTO `pk_role_menu` VALUES (2, 1515);
INSERT INTO `pk_role_menu` VALUES (2, 1516);
INSERT INTO `pk_role_menu` VALUES (2, 89);
INSERT INTO `pk_role_menu` VALUES (2, 90);
INSERT INTO `pk_role_menu` VALUES (2, 1306);
INSERT INTO `pk_role_menu` VALUES (2, 1307);
INSERT INTO `pk_role_menu` VALUES (2, 92);
INSERT INTO `pk_role_menu` VALUES (2, 109);
INSERT INTO `pk_role_menu` VALUES (2, 1517);
INSERT INTO `pk_role_menu` VALUES (2, 1518);
INSERT INTO `pk_role_menu` VALUES (2, 1519);
INSERT INTO `pk_role_menu` VALUES (2, 1520);
INSERT INTO `pk_role_menu` VALUES (2, 1521);
INSERT INTO `pk_role_menu` VALUES (2, 1522);
INSERT INTO `pk_role_menu` VALUES (2, 115);
INSERT INTO `pk_role_menu` VALUES (2, 1523);
INSERT INTO `pk_role_menu` VALUES (2, 1524);
INSERT INTO `pk_role_menu` VALUES (2, 1525);
INSERT INTO `pk_role_menu` VALUES (2, 1526);
INSERT INTO `pk_role_menu` VALUES (2, 1528);
INSERT INTO `pk_role_menu` VALUES (2, 1527);
INSERT INTO `pk_role_menu` VALUES (2, 1529);
INSERT INTO `pk_role_menu` VALUES (2, 121);
INSERT INTO `pk_role_menu` VALUES (2, 1530);
INSERT INTO `pk_role_menu` VALUES (2, 1531);
INSERT INTO `pk_role_menu` VALUES (2, 1532);
INSERT INTO `pk_role_menu` VALUES (2, 1533);
INSERT INTO `pk_role_menu` VALUES (2, 1535);
INSERT INTO `pk_role_menu` VALUES (2, 1534);
INSERT INTO `pk_role_menu` VALUES (2, 1536);
INSERT INTO `pk_role_menu` VALUES (2, 127);
INSERT INTO `pk_role_menu` VALUES (2, 1537);
INSERT INTO `pk_role_menu` VALUES (2, 1538);
INSERT INTO `pk_role_menu` VALUES (2, 1539);
INSERT INTO `pk_role_menu` VALUES (2, 1540);
INSERT INTO `pk_role_menu` VALUES (2, 1542);
INSERT INTO `pk_role_menu` VALUES (2, 1541);
INSERT INTO `pk_role_menu` VALUES (2, 1543);
INSERT INTO `pk_role_menu` VALUES (2, 170);
INSERT INTO `pk_role_menu` VALUES (2, 93);
INSERT INTO `pk_role_menu` VALUES (2, 1544);
INSERT INTO `pk_role_menu` VALUES (2, 1545);
INSERT INTO `pk_role_menu` VALUES (2, 1546);
INSERT INTO `pk_role_menu` VALUES (2, 1547);
INSERT INTO `pk_role_menu` VALUES (2, 1548);
INSERT INTO `pk_role_menu` VALUES (2, 1549);
INSERT INTO `pk_role_menu` VALUES (2, 1550);
INSERT INTO `pk_role_menu` VALUES (2, 100);
INSERT INTO `pk_role_menu` VALUES (2, 1551);
INSERT INTO `pk_role_menu` VALUES (2, 1552);
INSERT INTO `pk_role_menu` VALUES (2, 1553);
INSERT INTO `pk_role_menu` VALUES (2, 1554);
INSERT INTO `pk_role_menu` VALUES (2, 1555);
INSERT INTO `pk_role_menu` VALUES (2, 1556);
INSERT INTO `pk_role_menu` VALUES (2, 1557);
INSERT INTO `pk_role_menu` VALUES (2, 1558);
INSERT INTO `pk_role_menu` VALUES (2, 1785);
INSERT INTO `pk_role_menu` VALUES (2, 1821);
INSERT INTO `pk_role_menu` VALUES (2, 1822);
INSERT INTO `pk_role_menu` VALUES (2, 1823);
INSERT INTO `pk_role_menu` VALUES (2, 1824);
INSERT INTO `pk_role_menu` VALUES (2, 1825);
INSERT INTO `pk_role_menu` VALUES (2, 1826);
INSERT INTO `pk_role_menu` VALUES (2, 1827);
INSERT INTO `pk_role_menu` VALUES (2, 140);
INSERT INTO `pk_role_menu` VALUES (2, 141);
INSERT INTO `pk_role_menu` VALUES (2, 1559);
INSERT INTO `pk_role_menu` VALUES (2, 1560);
INSERT INTO `pk_role_menu` VALUES (2, 1561);
INSERT INTO `pk_role_menu` VALUES (2, 1562);
INSERT INTO `pk_role_menu` VALUES (2, 1564);
INSERT INTO `pk_role_menu` VALUES (2, 1563);
INSERT INTO `pk_role_menu` VALUES (2, 1565);
INSERT INTO `pk_role_menu` VALUES (2, 147);
INSERT INTO `pk_role_menu` VALUES (2, 1566);
INSERT INTO `pk_role_menu` VALUES (2, 1567);
INSERT INTO `pk_role_menu` VALUES (2, 1568);
INSERT INTO `pk_role_menu` VALUES (2, 1569);
INSERT INTO `pk_role_menu` VALUES (2, 1570);
INSERT INTO `pk_role_menu` VALUES (2, 1571);
INSERT INTO `pk_role_menu` VALUES (2, 1572);
INSERT INTO `pk_role_menu` VALUES (2, 177);
INSERT INTO `pk_role_menu` VALUES (2, 178);
INSERT INTO `pk_role_menu` VALUES (2, 1573);
INSERT INTO `pk_role_menu` VALUES (2, 1574);
INSERT INTO `pk_role_menu` VALUES (2, 154);
INSERT INTO `pk_role_menu` VALUES (2, 155);
INSERT INTO `pk_role_menu` VALUES (2, 1575);
INSERT INTO `pk_role_menu` VALUES (2, 1576);
INSERT INTO `pk_role_menu` VALUES (2, 1577);
INSERT INTO `pk_role_menu` VALUES (2, 164);
INSERT INTO `pk_role_menu` VALUES (2, 1814);
INSERT INTO `pk_role_menu` VALUES (2, 1815);
INSERT INTO `pk_role_menu` VALUES (2, 1816);
INSERT INTO `pk_role_menu` VALUES (2, 1817);
INSERT INTO `pk_role_menu` VALUES (2, 1818);
INSERT INTO `pk_role_menu` VALUES (2, 1819);
INSERT INTO `pk_role_menu` VALUES (2, 1820);
INSERT INTO `pk_role_menu` VALUES (2, 1622);
INSERT INTO `pk_role_menu` VALUES (2, 1779);
INSERT INTO `pk_role_menu` VALUES (2, 1780);
INSERT INTO `pk_role_menu` VALUES (2, 1781);
INSERT INTO `pk_role_menu` VALUES (2, 1782);
INSERT INTO `pk_role_menu` VALUES (2, 1783);
INSERT INTO `pk_role_menu` VALUES (2, 1784);
INSERT INTO `pk_role_menu` VALUES (2, 262);
INSERT INTO `pk_role_menu` VALUES (2, 162);
INSERT INTO `pk_role_menu` VALUES (2, 163);

-- ----------------------------
-- Table structure for avt_user
-- ----------------------------
DROP TABLE IF EXISTS `pk_user`;
CREATE TABLE `pk_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `realname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `nickname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 3 COMMENT '性别:1男 2女 3保密',
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `birthday` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '出生日期',
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '部门ID',
  `level_id` smallint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '职级ID',
  `position_id` smallint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '岗位ID',
  `province_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  `city_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市区编码',
  `district_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '区县编码',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `city_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属城市',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录用户名',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐加密',
  `intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 2禁用',
  `note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 125 COMMENT '显示顺序',
  `login_num` smallint(6) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `login_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近登录IP',
  `login_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最近登录时间',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新人',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识(1正常 0删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `realname`(`realname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台用户管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_user
-- ----------------------------
INSERT INTO `pk_user` VALUES (1, '管理员', '管理员', 1, '/images/user/20211014/9c8bbb5372a0819b797.jpg', '18000000001', 'rxthinkcmf@163.com', 1632326400, 1, 3, 2, '320000', '320100', '320105', '暂无', '', 'admin', '43286a86708820e38c333cdd4c496355', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1639731597, 1);
INSERT INTO `pk_user` VALUES (2, '平民路线', '平民路线', 1, '/images/user/20210923/44a4f12b47800f0e953.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 2, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin2', '39d1cde95c174577252ab3a629d232a7', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1639731390, 1);
INSERT INTO `pk_user` VALUES (3, '笑尽往事', '笑尽往事', 1, '/images/user/20210923/4f3cb3c210306c9a550.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin3', '19d0a2819700ac425d36c6a810a62895', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378758, 1);
INSERT INTO `pk_user` VALUES (4, '打碎面具', '打碎面具', 1, '/images/user/20210923/243ba76c2381a75b108.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin4', 'c38e2f63daab75fb5beacec4487fbc91', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378760, 1);
INSERT INTO `pk_user` VALUES (5, '暴雨柴舟', '暴雨柴舟', 1, '/images/user/20210923/d4c4ffeedb8a6f31780.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 3, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin5', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378737, 1);
INSERT INTO `pk_user` VALUES (6, '永远的过客', '永远的过客', 1, '/images/user/20210923/bb01265ba81b9e66413.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin6', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378750, 1);
INSERT INTO `pk_user` VALUES (7, '万佛朝宗', '万佛朝宗', 1, '/images/user/20210923/579d8f82b1c5ce11708.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 4, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin7', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378777, 1);
INSERT INTO `pk_user` VALUES (8, '千意染曲', '千意染曲', 1, '/images/user/20210923/5cf90e2be35a7626341.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 5, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin8', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378799, 1);
INSERT INTO `pk_user` VALUES (9, '轻云蔽月', '轻云蔽月', 1, '/images/user/20210923/d3d46696f72d9943864.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin9', '8e7af8c291ffa4715bf9efd15cdc7864', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378809, 1);
INSERT INTO `pk_user` VALUES (10, '北榭倾城', '北榭倾城', 1, '/images/user/20210923/c9423fa0db55e2f0964.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 6, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin10', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378820, 1);
INSERT INTO `pk_user` VALUES (11, '心如荒岛', '心如荒岛', 1, '/images/user/20210923/a84c8bf1f25cd232296.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin11', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378844, 1);
INSERT INTO `pk_user` VALUES (12, '叠岚云烟', '叠岚云烟', 1, '/images/user/20210923/5d40d9f629724095128.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin12', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378868, 1);
INSERT INTO `pk_user` VALUES (13, '七度空间', '七度空间', 1, '/images/user/20210923/caec7c9ed4a3d05b860.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin13', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378883, 1);
INSERT INTO `pk_user` VALUES (14, '荒城绝恋', '荒城绝恋', 1, '/images/user/20210923/aedb1f770a9d0ec9507.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin14', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378908, 1);
INSERT INTO `pk_user` VALUES (15, '杏漫瞳央', '杏漫瞳央', 1, '/images/user/20210923/04269091dabc413e622.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin15', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378921, 1);
INSERT INTO `pk_user` VALUES (16, '似血着泪', '似血着泪', 1, '/images/user/20210923/e98147ef76da0b47616.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 7, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin16', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378934, 1);
INSERT INTO `pk_user` VALUES (17, '弑魂力士', '弑魂力士', 1, '/images/user/20210923/97884d7bf81ed070962.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin17', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378947, 1);
INSERT INTO `pk_user` VALUES (18, '婉若花襄', '婉若花襄', 1, '/images/user/20210923/d6f4bd10cd042e8f885.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 3, '320000', '320100', '320105', '暂无', '', 'admin18', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378964, 1);
INSERT INTO `pk_user` VALUES (19, '染画酌望', '染画酌望', 1, '/images/user/20210923/0c85577460cb458c291.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 10, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin19', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632378990, 1);
INSERT INTO `pk_user` VALUES (20, '加布里埃', '加布里埃', 1, '/images/user/20210923/6b1b42c362d8a1f3486.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin20', 'ddd056e3116ef3c8972a11c62a770a31', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632379004, 1);
INSERT INTO `pk_user` VALUES (21, '孤城落日', '孤城落日', 1, '/images/user/20210923/4943959806867a6c714.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 1, '320000', '320100', '320105', '暂无', '', 'admin21', '', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632379023, 1);
INSERT INTO `pk_user` VALUES (22, '灰色年华', '灰色年华', 1, '/images/user/20210923/08f1f2f13bcb60c3679.jpg', '15295506278', 'rxthinkcmf@163.com', 1632326400, 1, 2, 3, '320000', '320100', '320105', '暂无', '', 'admin22', '', '', '谁的人生不是荆棘前行，你跌倒的时候，懊恼的时候，品尝眼泪的时候，都请你不要轻言放弃，因为从来没有一种坚持会被辜负。请你相信，你的坚持，终将美好。', 1, '暂无备注', 125, 0, NULL, 0, 1, 1621998864, 1, 1632379039, 1);

-- ----------------------------
-- Table structure for avt_user_role
-- ----------------------------
DROP TABLE IF EXISTS `pk_user_role`;
CREATE TABLE `pk_user_role`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '人员ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色ID',
  INDEX `admin_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '人员角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avt_user_role
-- ----------------------------
INSERT INTO `pk_user_role` VALUES (2, 2);
INSERT INTO `pk_user_role` VALUES (3, 3);
INSERT INTO `pk_user_role` VALUES (4, 4);
INSERT INTO `pk_user_role` VALUES (5, 3);
INSERT INTO `pk_user_role` VALUES (6, 4);
INSERT INTO `pk_user_role` VALUES (7, 4);
INSERT INTO `pk_user_role` VALUES (8, 3);
INSERT INTO `pk_user_role` VALUES (9, 3);
INSERT INTO `pk_user_role` VALUES (10, 4);
INSERT INTO `pk_user_role` VALUES (11, 4);
INSERT INTO `pk_user_role` VALUES (12, 4);
INSERT INTO `pk_user_role` VALUES (13, 4);
INSERT INTO `pk_user_role` VALUES (14, 4);
INSERT INTO `pk_user_role` VALUES (15, 4);
INSERT INTO `pk_user_role` VALUES (16, 4);
INSERT INTO `pk_user_role` VALUES (17, 4);
INSERT INTO `pk_user_role` VALUES (18, 4);
INSERT INTO `pk_user_role` VALUES (19, 4);
INSERT INTO `pk_user_role` VALUES (20, 4);
INSERT INTO `pk_user_role` VALUES (21, 4);
INSERT INTO `pk_user_role` VALUES (22, 3);
INSERT INTO `pk_user_role` VALUES (22, 4);
INSERT INTO `pk_user_role` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;
