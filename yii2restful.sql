/*
 Navicat Premium Data Transfer

 Source Server         : 本地开发
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.1.123:3306
 Source Schema         : crontab

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 08/04/2020 14:16:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yii2_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_assignment`;
CREATE TABLE `yii2_auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  INDEX `auth_assignment_user_id_idx`(`user_id`) USING BTREE,
  CONSTRAINT `yii2_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_auth_assignment
-- ----------------------------
INSERT INTO `yii2_auth_assignment` VALUES ('ordinaryUser', '2', 1543913735);
INSERT INTO `yii2_auth_assignment` VALUES ('ordinaryUser', '39', 1530783401);
INSERT INTO `yii2_auth_assignment` VALUES ('root', '1', 1522555776);

-- ----------------------------
-- Table structure for yii2_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item`;
CREATE TABLE `yii2_auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  CONSTRAINT `yii2_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `yii2_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_auth_item
-- ----------------------------
INSERT INTO `yii2_auth_item` VALUES ('/*', 2, '/*', NULL, NULL, 1543285939, 1543285939);
INSERT INTO `yii2_auth_item` VALUES ('/v1/*', 2, 'V1模块', NULL, NULL, 1521525747, 1521619641);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/*', 2, '权限管理', NULL, NULL, 1521525747, 1521619650);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-permissions', 2, '添加权限', NULL, NULL, 1520165332, 1520236587);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-role', 2, '添加角色', NULL, NULL, 1521808974, 1522052471);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-role-permissions', 2, '添加角色权限', NULL, NULL, 1521808974, 1522052489);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-role-role', 2, '为角色分配角色', NULL, NULL, 1578301003, 1578301036);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-user', 2, '添加用户', NULL, NULL, 1530780543, 1530780588);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/add-user-role', 2, '为用户分配角色', NULL, NULL, 1522503205, 1522504084);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/all-lists', 2, '获取所有权限', NULL, NULL, 1520215567, 1521619697);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/all-lists-with-level', 2, '获取有层次结构的权限', NULL, NULL, 1521007674, 1521619678);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/all-lists-with-role', 2, '获取角色拥有的权限', NULL, NULL, 1521007674, 1521619716);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/all-role-with-role', 2, '返回角色下的所有角色列表数据', NULL, NULL, 1578301003, 1578301082);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/all-role-with-user', 2, '获取指定用户的所有角色', NULL, NULL, 1522503264, 1522504160);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/delete-role-permissions', 2, '删除角色权限', NULL, NULL, 1521808974, 1522052501);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/delete-role-role', 2, '删除为角色分配的角色', NULL, NULL, 1578301003, 1578301090);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/delete-user-role', 2, '删除指定用户的某个角色', NULL, NULL, 1522503258, 1522504142);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/index', 2, '权限列表', NULL, NULL, 1520215567, 1520236625);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/project-directory', 2, '项目结构', NULL, NULL, 1520165332, 1520236637);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/remove-permissions', 2, '移除权限', NULL, NULL, 1520165332, 1520236664);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/reset-psw-user', 2, '密码重置', NULL, NULL, 1543913588, 1543913607);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/update-permissions', 2, '修改权限', NULL, NULL, 1520165332, 1520423740);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/update-user', 2, '修改用户', NULL, NULL, 1586313335, 1586313353);
INSERT INTO `yii2_auth_item` VALUES ('/v1/auth-item/user-lists', 2, '获取用户列表', NULL, NULL, 1522503205, 1522504171);
INSERT INTO `yii2_auth_item` VALUES ('/v1/execute-task/*', 2, '执行任务', NULL, NULL, 1542943133, 1543913617);
INSERT INTO `yii2_auth_item` VALUES ('/v1/execute-task/index', 2, '任务列表', NULL, NULL, 1542943133, 1543913635);
INSERT INTO `yii2_auth_item` VALUES ('/v1/execute-task/view', 2, '任务详情', NULL, NULL, 1542943133, 1543913626);
INSERT INTO `yii2_auth_item` VALUES ('/v1/site/*', 2, '基本操作', NULL, NULL, 1521525747, 1521619728);
INSERT INTO `yii2_auth_item` VALUES ('/v1/site/all-permissions', 2, '获取当前用户已有权限', NULL, NULL, 1522066042, 1530775704);
INSERT INTO `yii2_auth_item` VALUES ('/v1/site/captcha', 2, '获取验证码', NULL, NULL, 1521007674, 1521619742);
INSERT INTO `yii2_auth_item` VALUES ('/v1/site/login', 2, '用户登录', NULL, NULL, 1521007674, 1521619750);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/*', 2, '任务管理', NULL, NULL, 1541054856, 1541055008);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/client', 2, '客户端列表', NULL, NULL, 1579423628, 1579423644);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/create', 2, '任务添加', NULL, NULL, 1541054856, 1541055017);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/delete', 2, '删除任务', NULL, NULL, 1542943133, 1543913646);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/index', 2, '任务列表', NULL, NULL, 1541054856, 1541054995);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/update', 2, '任务修改', NULL, NULL, 1541054856, 1541054986);
INSERT INTO `yii2_auth_item` VALUES ('/v1/task/view', 2, '任务详情', NULL, NULL, 1541054856, 1541054972);
INSERT INTO `yii2_auth_item` VALUES ('ordinaryUser', 1, '普通用户', NULL, NULL, 1519288590, 1530860464);
INSERT INTO `yii2_auth_item` VALUES ('root', 1, '超级管理员', NULL, 0x733A32373A22E89299E5A49AE683B3E58EBBE593AAE5B0B1E58EBBE593AA2E2E2E223B, 1522066042, 1530860469);

-- ----------------------------
-- Table structure for yii2_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_item_child`;
CREATE TABLE `yii2_auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `yii2_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yii2_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `yii2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_auth_item_child
-- ----------------------------
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-role');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-role-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-role-role');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-user');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/add-user-role');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/all-lists');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/all-lists');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/all-lists-with-level');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/all-lists-with-level');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/all-lists-with-role');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/all-lists-with-role');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/all-role-with-role');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/all-role-with-user');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/all-role-with-user');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/delete-role-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/delete-role-role');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/delete-user-role');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/index');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/index');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/project-directory');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/project-directory');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/remove-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/reset-psw-user');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/reset-psw-user');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/update-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/update-user');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/auth-item/user-lists');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/auth-item/user-lists');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/execute-task/index');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/execute-task/index');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/execute-task/view');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/execute-task/view');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/site/*');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/site/all-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/site/all-permissions');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/site/captcha');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/site/captcha');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/site/login');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/site/login');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/task/client');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/client');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/create');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/delete');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/task/index');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/index');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/update');
INSERT INTO `yii2_auth_item_child` VALUES ('ordinaryUser', '/v1/task/view');
INSERT INTO `yii2_auth_item_child` VALUES ('root', '/v1/task/view');

-- ----------------------------
-- Table structure for yii2_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yii2_auth_rule`;
CREATE TABLE `yii2_auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_auth_rule
-- ----------------------------
INSERT INTO `yii2_auth_rule` VALUES ('\\v1\\rules\\AuthorRule', 0x4F3A31393A2276315C72756C65735C417574686F7252756C65223A333A7B733A343A226E616D65223B733A32303A225C76315C72756C65735C417574686F7252756C65223B733A393A22637265617465644174223B693A313532303231373038303B733A393A22757064617465644174223B693A313532303231373038303B7D, 1520217080, 1520217080);

-- ----------------------------
-- Table structure for yii2_execute_task
-- ----------------------------
DROP TABLE IF EXISTS `yii2_execute_task`;
CREATE TABLE `yii2_execute_task`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '类型  1\\shell 2\\python',
  `command` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需要执行的命令',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '任务计划执行时间',
  `execute_time` datetime(0) NULL DEFAULT NULL COMMENT '任务实际执行时间',
  `complete_time` datetime(0) NULL DEFAULT NULL COMMENT '任务实际完成时间',
  `status` enum('1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '执行状态 1/准备中 2/执行中 3/任务失败 4/已完成',
  `result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务输出',
  `warning` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '预警通知是否已发送 1/是 2/否',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '数据修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `asfapf17g12yguyf1g11gf12`(`start_time`, `status`) USING BTREE,
  FULLTEXT INDEX `2141221xd12f12f1f12gv1g21`(`command`)
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_execute_task
-- ----------------------------
INSERT INTO `yii2_execute_task` VALUES (1, '1', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 11:44:32', '2020-04-08 11:44:35', '2020-04-08 11:44:38', '3', NULL, '2', '2020-04-08 11:44:42', '2020-04-08 05:56:11');
INSERT INTO `yii2_execute_task` VALUES (2, '1', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 11:44:32', '2020-04-08 11:44:35', '2020-04-08 11:44:38', '3', NULL, '2', '2020-04-08 11:44:42', '2020-04-08 05:56:12');
INSERT INTO `yii2_execute_task` VALUES (3, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:00', '2020-04-08 05:51:00', '2020-04-08 05:51:00', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:28', '2020-04-08 05:51:00');
INSERT INTO `yii2_execute_task` VALUES (4, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:05', '2020-04-08 05:51:05', '2020-04-08 05:51:05', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:05');
INSERT INTO `yii2_execute_task` VALUES (5, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:10', '2020-04-08 05:51:10', '2020-04-08 05:51:10', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:10');
INSERT INTO `yii2_execute_task` VALUES (6, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:15', '2020-04-08 05:51:15', '2020-04-08 05:51:15', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:15');
INSERT INTO `yii2_execute_task` VALUES (7, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:20', '2020-04-08 05:51:20', '2020-04-08 05:51:20', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:20');
INSERT INTO `yii2_execute_task` VALUES (8, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:25', '2020-04-08 05:51:25', '2020-04-08 05:51:25', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:25');
INSERT INTO `yii2_execute_task` VALUES (9, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:30', '2020-04-08 05:51:30', '2020-04-08 05:51:30', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:30');
INSERT INTO `yii2_execute_task` VALUES (10, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:35', '2020-04-08 05:51:35', '2020-04-08 05:51:35', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:35');
INSERT INTO `yii2_execute_task` VALUES (11, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:40', '2020-04-08 05:51:40', '2020-04-08 05:51:40', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:40');
INSERT INTO `yii2_execute_task` VALUES (12, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:45', '2020-04-08 05:51:45', '2020-04-08 05:51:45', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:45');
INSERT INTO `yii2_execute_task` VALUES (13, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:50', '2020-04-08 05:51:50', '2020-04-08 05:51:50', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:50');
INSERT INTO `yii2_execute_task` VALUES (14, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:51:55', '2020-04-08 05:51:55', '2020-04-08 05:51:55', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:49:29', '2020-04-08 05:51:55');
INSERT INTO `yii2_execute_task` VALUES (15, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:00', '2020-04-08 05:52:00', '2020-04-08 05:52:00', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:00');
INSERT INTO `yii2_execute_task` VALUES (16, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:05', '2020-04-08 05:52:05', '2020-04-08 05:52:05', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:05');
INSERT INTO `yii2_execute_task` VALUES (17, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:10', '2020-04-08 05:52:10', '2020-04-08 05:52:10', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:10');
INSERT INTO `yii2_execute_task` VALUES (18, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:15', '2020-04-08 05:52:15', '2020-04-08 05:52:15', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:15');
INSERT INTO `yii2_execute_task` VALUES (19, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:20', '2020-04-08 05:52:20', '2020-04-08 05:52:20', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:20');
INSERT INTO `yii2_execute_task` VALUES (20, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:25', '2020-04-08 05:52:25', '2020-04-08 05:52:25', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:25');
INSERT INTO `yii2_execute_task` VALUES (21, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:30', '2020-04-08 05:52:30', '2020-04-08 05:52:30', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:30');
INSERT INTO `yii2_execute_task` VALUES (22, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:35', '2020-04-08 05:52:35', '2020-04-08 05:52:35', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:35');
INSERT INTO `yii2_execute_task` VALUES (23, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:40', '2020-04-08 05:52:40', '2020-04-08 05:52:40', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:40');
INSERT INTO `yii2_execute_task` VALUES (24, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:45', '2020-04-08 05:52:45', '2020-04-08 05:52:45', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:45');
INSERT INTO `yii2_execute_task` VALUES (25, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:50', '2020-04-08 05:52:50', '2020-04-08 05:52:50', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:50');
INSERT INTO `yii2_execute_task` VALUES (26, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:52:55', '2020-04-08 05:52:55', '2020-04-08 05:52:55', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:50:29', '2020-04-08 05:52:55');
INSERT INTO `yii2_execute_task` VALUES (27, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:00', '2020-04-08 05:53:00', '2020-04-08 05:53:00', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:00');
INSERT INTO `yii2_execute_task` VALUES (28, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:05', '2020-04-08 05:53:05', '2020-04-08 05:53:05', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:05');
INSERT INTO `yii2_execute_task` VALUES (29, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:10', '2020-04-08 05:53:10', '2020-04-08 05:53:10', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:10');
INSERT INTO `yii2_execute_task` VALUES (30, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:15', '2020-04-08 05:53:15', '2020-04-08 05:53:15', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:15');
INSERT INTO `yii2_execute_task` VALUES (31, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:20', '2020-04-08 05:53:20', '2020-04-08 05:53:20', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:20');
INSERT INTO `yii2_execute_task` VALUES (32, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:25', '2020-04-08 05:53:25', '2020-04-08 05:53:25', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:25');
INSERT INTO `yii2_execute_task` VALUES (33, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:30', '2020-04-08 05:53:30', '2020-04-08 05:53:30', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:30');
INSERT INTO `yii2_execute_task` VALUES (34, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:35', '2020-04-08 05:53:35', '2020-04-08 05:53:35', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:35');
INSERT INTO `yii2_execute_task` VALUES (35, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:40', '2020-04-08 05:53:40', '2020-04-08 05:53:40', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:40');
INSERT INTO `yii2_execute_task` VALUES (36, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:45', '2020-04-08 05:53:45', '2020-04-08 05:53:45', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:45');
INSERT INTO `yii2_execute_task` VALUES (37, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:50', '2020-04-08 05:53:50', '2020-04-08 05:53:50', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:50');
INSERT INTO `yii2_execute_task` VALUES (38, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:53:55', '2020-04-08 05:53:55', '2020-04-08 05:53:55', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:51:29', '2020-04-08 05:53:55');
INSERT INTO `yii2_execute_task` VALUES (39, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:00', '2020-04-08 05:54:00', '2020-04-08 05:54:00', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:00');
INSERT INTO `yii2_execute_task` VALUES (40, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:05', '2020-04-08 05:54:05', '2020-04-08 05:54:05', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:05');
INSERT INTO `yii2_execute_task` VALUES (41, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:10', '2020-04-08 05:54:10', '2020-04-08 05:54:10', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:10');
INSERT INTO `yii2_execute_task` VALUES (42, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:15', '2020-04-08 05:54:15', '2020-04-08 05:54:15', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:15');
INSERT INTO `yii2_execute_task` VALUES (43, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:20', '2020-04-08 05:54:20', '2020-04-08 05:54:20', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:20');
INSERT INTO `yii2_execute_task` VALUES (44, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:25', '2020-04-08 05:54:25', '2020-04-08 05:54:25', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:25');
INSERT INTO `yii2_execute_task` VALUES (45, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:30', '2020-04-08 05:54:30', '2020-04-08 05:54:30', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:30');
INSERT INTO `yii2_execute_task` VALUES (46, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:35', '2020-04-08 05:54:35', '2020-04-08 05:54:35', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:35');
INSERT INTO `yii2_execute_task` VALUES (47, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:40', '2020-04-08 05:54:40', '2020-04-08 05:54:40', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:40');
INSERT INTO `yii2_execute_task` VALUES (48, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:45', '2020-04-08 05:54:45', '2020-04-08 05:54:45', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:45');
INSERT INTO `yii2_execute_task` VALUES (49, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:50', '2020-04-08 05:54:50', '2020-04-08 05:54:50', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:50');
INSERT INTO `yii2_execute_task` VALUES (50, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:54:55', '2020-04-08 05:54:55', '2020-04-08 05:54:55', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:52:29', '2020-04-08 05:54:55');
INSERT INTO `yii2_execute_task` VALUES (51, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:00', '2020-04-08 05:55:00', '2020-04-08 05:55:00', '4', '当前字母 : P\n当前字母 : y\n当前字母 : t\n当前字母 : h\n当前字母 : o\n当前字母 : n\n当前水果 : banana\n当前水果 : apple\n当前水果 : mango\nGood bye!\n', '2', '2020-04-08 05:53:29', '2020-04-08 05:55:00');
INSERT INTO `yii2_execute_task` VALUES (52, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:05', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (53, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:10', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (54, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:15', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (55, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:20', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (56, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:25', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (57, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:30', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (58, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:35', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (59, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:40', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (60, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:45', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (61, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:50', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (62, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:55:55', NULL, NULL, '1', NULL, '2', '2020-04-08 05:53:29', '2020-04-08 05:53:29');
INSERT INTO `yii2_execute_task` VALUES (63, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:00', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (64, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:05', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (65, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:10', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (66, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:15', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (67, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:20', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (68, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:25', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (69, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:30', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (70, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:35', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (71, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:40', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (72, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:45', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (73, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:50', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');
INSERT INTO `yii2_execute_task` VALUES (74, '2', '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '2020-04-08 05:56:55', NULL, NULL, '1', NULL, '2', '2020-04-08 05:54:29', '2020-04-08 05:54:29');

-- ----------------------------
-- Table structure for yii2_task
-- ----------------------------
DROP TABLE IF EXISTS `yii2_task`;
CREATE TABLE `yii2_task`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `command` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需要执行的命令',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `rule` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则',
  `switch` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '开关 1/开 2/关',
  `type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '类型 1/shell 2/python',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '数据修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `2141212fc1vgv13311g13`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_task
-- ----------------------------
INSERT INTO `yii2_task` VALUES (14, '# 时间查询\n\ndate', '时间查询', '*/5 * * * * *', '2', '1', '2020-01-07 11:23:21', '2020-03-06 06:00:11');
INSERT INTO `yii2_task` VALUES (15, '# 23333333333333333\n# -*- coding: UTF-8 -*-\n\nfor letter in \"Python\":     # 第一个实例\n   print \"当前字母 :\", letter\n \nfruits = [\"banana\", \"apple\",  \"mango\"]\nfor fruit in fruits:        # 第二个实例\n   print \"当前水果 :\", fruit\n \nprint \"Good bye!\"', '213', '*/5 * * * * *', '1', '2', '2020-03-03 10:51:59', '2020-03-06 06:00:02');

-- ----------------------------
-- Table structure for yii2_user
-- ----------------------------
DROP TABLE IF EXISTS `yii2_user`;
CREATE TABLE `yii2_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `phone` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'access-token',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加密密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `warning` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '是否接受预警信息 1/是 2/否',
  `created_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `last_login_ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近登录ip',
  `last_login_at` int(11) NULL DEFAULT NULL COMMENT '最近登陆时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yii2restful_yii2_user_username`(`username`) USING BTREE,
  UNIQUE INDEX `yii2restful_yii2_user_access_token`(`access_token`) USING BTREE COMMENT 'access_token',
  UNIQUE INDEX `yii2restful_yii2_user_phone`(`phone`) USING BTREE,
  UNIQUE INDEX `yii2restful_yii2_user_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yii2_user
-- ----------------------------
INSERT INTO `yii2_user` VALUES (1, '15918793994', 'root', NULL, 'XtXthloFqZP5qllg42HahvaFlJTDqAvt', '$2y$13$ywa27Yqe8MA.BCCjqfcgh.yDRNkTbazwF704lfWcv2NB7.7SqKfwm', '1533356676@qq.com', '1', 1479371680, 1586315111, '192.168.1.197', 1586312087);
INSERT INTO `yii2_user` VALUES (2, NULL, 'admin', NULL, 'lD3nnOjCqALB3dkDvN40UaxrmZzcLrbk', '$2y$13$CPOoVtkOvJYgMvimV/AkxOQ0M5tJOnIOJVpf/D4HOONb6Q/2ysZ1K', '3095764452@qq.com', '1', 1479371663, 1586315459, '192.168.1.254', 1578906568);
INSERT INTO `yii2_user` VALUES (39, NULL, 'test', NULL, '9MYR7KpG3Mkc-ZFckWv_T-oIDiOQeqZL', '$2y$13$CPOoVtkOvJYgMvimV/AkxOQ0M5tJOnIOJVpf/D4HOONb6Q/2ysZ1K', '1@qq.com', '2', 1530780629, 1586315249, '120.85.87.197', 1543286683);

SET FOREIGN_KEY_CHECKS = 1;
