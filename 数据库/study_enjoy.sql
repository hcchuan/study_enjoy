/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : study_enjoy

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 21/09/2020 10:24:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(0) NOT NULL DEFAULT 0,
  `order` int(0) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '面板', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, '系统管理', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, '用户', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, '课程管理', 'fa-bars', NULL, '*', '2020-09-17 07:06:21', '2020-09-18 03:58:07');
INSERT INTO `admin_menu` VALUES (9, 8, 0, '课程类型', 'fa-align-right', '/lesson_type', '*', '2020-09-18 03:57:50', '2020-09-18 05:46:41');
INSERT INTO `admin_menu` VALUES (10, 8, 0, '课程列表', 'fa-columns', '/lesson', NULL, '2020-09-18 03:59:37', '2020-09-18 03:59:37');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-23 10:24:12', '2020-04-23 10:24:12');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 01:00:51', '2020-04-24 01:00:51');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:00:56', '2020-04-24 01:00:56');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:01:05', '2020-04-24 01:01:05');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:35:08', '2020-04-24 09:35:08');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:35:11', '2020-04-24 09:35:11');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:36:04', '2020-04-24 09:36:04');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:36:06', '2020-04-24 09:36:06');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:30', '2020-04-24 09:36:30');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:30', '2020-04-24 09:36:30');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:31', '2020-04-24 09:36:31');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:33', '2020-04-24 09:36:33');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:35', '2020-04-24 09:36:35');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:36', '2020-04-24 09:36:36');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:36', '2020-04-24 09:36:36');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-24 09:37:47', '2020-04-24 09:37:47');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-24 09:37:50', '2020-04-24 09:37:50');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:37:52', '2020-04-24 09:37:52');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:37:53', '2020-04-24 09:37:53');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:38:05', '2020-04-24 09:38:05');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:45:54', '2020-04-24 09:45:54');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:45:58', '2020-04-24 09:45:58');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:46:02', '2020-04-24 09:46:02');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:50:47', '2020-04-24 09:50:47');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:51:35', '2020-04-24 09:51:35');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:51:47', '2020-04-24 09:51:47');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:13:24', '2020-05-27 02:13:24');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:33', '2020-05-27 02:13:33');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:34', '2020-05-27 02:13:34');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:39', '2020-05-27 02:13:39');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:39', '2020-05-27 02:13:39');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:19:42', '2020-05-27 02:19:42');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:20:54', '2020-05-27 02:20:54');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 03:17:46', '2020-05-27 03:17:46');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-14 02:45:09', '2020-09-14 02:45:09');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 02:45:18', '2020-09-14 02:45:18');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-14 06:10:57', '2020-09-14 06:10:57');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-14 06:10:58', '2020-09-14 06:10:58');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:03', '2020-09-14 06:11:03');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:04', '2020-09-14 06:11:04');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:04', '2020-09-14 06:11:04');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:11', '2020-09-14 06:11:11');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:31', '2020-09-14 06:11:31');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:32', '2020-09-14 06:11:32');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:32', '2020-09-14 06:11:32');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:33', '2020-09-14 06:11:33');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:37', '2020-09-14 06:11:37');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:46', '2020-09-14 06:11:46');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:48', '2020-09-14 06:11:48');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 06:11:49', '2020-09-14 06:11:49');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 07:16:51', '2020-09-14 07:16:51');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 07:16:52', '2020-09-14 07:16:52');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 07:16:52', '2020-09-14 07:16:52');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 07:16:58', '2020-09-14 07:16:58');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-09-14 07:31:58', '2020-09-14 07:31:58');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-09-14 07:32:01', '2020-09-14 07:32:01');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-09-14 07:32:03', '2020-09-14 07:32:03');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"1\",\"name\":\"1\",\"password\":\"1\",\"password_confirmation\":\"1\",\"roles\":[null],\"permissions\":[null],\"_token\":\"QRjnPaCpisObTRcP8ud9AzSPM6ETaLa80oQDLqWl\"}', '2020-09-14 07:32:41', '2020-09-14 07:32:41');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-14 07:32:41', '2020-09-14 07:32:41');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 10:31:25', '2020-09-16 10:31:25');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:31:32', '2020-09-16 10:31:32');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:32:56', '2020-09-16 10:32:56');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:32:57', '2020-09-16 10:32:57');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:32:58', '2020-09-16 10:32:58');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:32:59', '2020-09-16 10:32:59');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:34:08', '2020-09-16 10:34:08');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:41:24', '2020-09-16 10:41:24');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-16 10:51:13', '2020-09-16 10:51:13');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:24', '2020-09-16 10:51:24');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:25', '2020-09-16 10:51:25');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:26', '2020-09-16 10:51:26');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:27', '2020-09-16 10:51:27');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:28', '2020-09-16 10:51:28');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-09-16 10:51:33', '2020-09-16 10:51:33');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:38', '2020-09-16 10:51:38');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-09-16 10:51:40', '2020-09-16 10:51:40');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:51:49', '2020-09-16 10:51:49');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 10:51:52', '2020-09-16 10:51:52');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 10:52:50', '2020-09-16 10:52:50');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:52:58', '2020-09-16 10:52:58');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:53:04', '2020-09-16 10:53:04');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:53:05', '2020-09-16 10:53:05');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:53:08', '2020-09-16 10:53:08');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:53:11', '2020-09-16 10:53:11');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:53:12', '2020-09-16 10:53:12');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:54:31', '2020-09-16 10:54:31');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:54:34', '2020-09-16 10:54:34');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:54:36', '2020-09-16 10:54:36');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"2\",\"name\":\"2\",\"password\":\"2\",\"password_confirmation\":\"2\",\"roles\":[\"1\",null],\"permissions\":[\"3\",null],\"_token\":\"D2wITS2qMVMFsAWLvSlrtHmk60OIstJ2er516QH1\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/auth\\/users\"}', '2020-09-16 10:55:06', '2020-09-16 10:55:06');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-16 10:55:07', '2020-09-16 10:55:07');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 10:55:13', '2020-09-16 10:55:13');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-16 10:56:28', '2020-09-16 10:56:28');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 11:01:32', '2020-09-16 11:01:32');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:01:34', '2020-09-16 11:01:34');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:01:39', '2020-09-16 11:01:39');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:02:01', '2020-09-16 11:02:01');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:02:05', '2020-09-16 11:02:05');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:02:57', '2020-09-16 11:02:57');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 11:03:02', '2020-09-16 11:03:02');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-16 11:03:02', '2020-09-16 11:03:02');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-16 11:03:40', '2020-09-16 11:03:40');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 06:22:36', '2020-09-17 06:22:36');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 06:22:39', '2020-09-17 06:22:39');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 06:22:40', '2020-09-17 06:22:40');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:02:51', '2020-09-17 07:02:51');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/course-class\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 07:06:21', '2020-09-17 07:06:21');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-17 07:06:21', '2020-09-17 07:06:21');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-17 07:06:27', '2020-09-17 07:06:27');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:06:50', '2020-09-17 07:06:50');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:06:52', '2020-09-17 07:06:52');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:06:55', '2020-09-17 07:06:55');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/course-class\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/auth\\/menu\"}', '2020-09-17 07:07:05', '2020-09-17 07:07:05');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-17 07:07:05', '2020-09-17 07:07:05');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-17 07:07:08', '2020-09-17 07:07:08');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:07:11', '2020-09-17 07:07:11');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 07:07:59', '2020-09-17 07:07:59');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 07:09:48', '2020-09-17 07:09:48');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:09:50', '2020-09-17 07:09:50');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:10:29', '2020-09-17 07:10:29');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:10:34', '2020-09-17 07:10:34');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/course-class/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:10:40', '2020-09-17 07:10:40');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/course-class/1', 'GET', '127.0.0.1', '[]', '2020-09-17 07:11:17', '2020-09-17 07:11:17');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/course-class/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:11:22', '2020-09-17 07:11:22');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/course-class/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:11:25', '2020-09-17 07:11:25');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:11:27', '2020-09-17 07:11:27');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/course-class/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:11:32', '2020-09-17 07:11:32');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:13:07', '2020-09-17 07:13:07');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,id,node_deep,title,updated_at\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:13:37', '2020-09-17 07:13:37');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,id,node_deep,title,updated_at\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:13:38', '2020-09-17 07:13:38');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:13:42', '2020-09-17 07:13:42');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-09-17 07:13:47', '2020-09-17 07:13:47');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:15:50', '2020-09-17 07:15:50');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:16:46', '2020-09-17 07:16:46');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:43:25', '2020-09-17 07:43:25');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:44:03', '2020-09-17 07:44:03');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:44:53', '2020-09-17 07:44:53');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:45:38', '2020-09-17 07:45:38');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"\\u94b3\\u5de5\",\"sort\":\"111\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"after-save\":\"2\"}', '2020-09-17 07:45:54', '2020-09-17 07:45:54');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:45:57', '2020-09-17 07:45:57');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"\\u94b3\\u5de5\",\"sort\":\"111\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"after-save\":\"2\"}', '2020-09-17 07:47:05', '2020-09-17 07:47:05');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:47:07', '2020-09-17 07:47:07');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:47:15', '2020-09-17 07:47:15');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2020-09-17 07:47:20', '2020-09-17 07:47:20');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:47:29', '2020-09-17 07:47:29');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"q\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class?&per_page=50\"}', '2020-09-17 07:47:37', '2020-09-17 07:47:37');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:47:40', '2020-09-17 07:47:40');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"q\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 07:48:20', '2020-09-17 07:48:20');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:48:23', '2020-09-17 07:48:23');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:49:04', '2020-09-17 07:49:04');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"a\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 07:49:12', '2020-09-17 07:49:12');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 07:49:15', '2020-09-17 07:49:15');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"a\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 07:57:22', '2020-09-17 07:57:22');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 07:57:23', '2020-09-17 07:57:23');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:57:29', '2020-09-17 07:57:29');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/course-class/348/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:57:33', '2020-09-17 07:57:33');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/course-class/348', 'PUT', '127.0.0.1', '{\"title\":\"a1\",\"sort\":\"11\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class?per_page=50\"}', '2020-09-17 07:57:38', '2020-09-17 07:57:38');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-09-17 07:57:38', '2020-09-17 07:57:38');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"348\",\"_model\":\"App_Models_CourseClass\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-09-17 07:57:44', '2020-09-17 07:57:44');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:57:44', '2020-09-17 07:57:44');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/course-class/347', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:57:52', '2020-09-17 07:57:52');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/course-class/347', 'GET', '127.0.0.1', '[]', '2020-09-17 07:58:18', '2020-09-17 07:58:18');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:58:26', '2020-09-17 07:58:26');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:58:28', '2020-09-17 07:58:28');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"a\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class?per_page=50\"}', '2020-09-17 07:58:37', '2020-09-17 07:58:37');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-09-17 07:58:37', '2020-09-17 07:58:37');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/course-class/349/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:58:41', '2020-09-17 07:58:41');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/course-class/349', 'PUT', '127.0.0.1', '{\"title\":\"a\",\"sort\":\"1\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class?per_page=50\"}', '2020-09-17 07:59:21', '2020-09-17 07:59:21');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-09-17 07:59:22', '2020-09-17 07:59:22');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:59:33', '2020-09-17 07:59:33');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"b\",\"sort\":\"2\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class?per_page=50\"}', '2020-09-17 07:59:37', '2020-09-17 07:59:37');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-09-17 07:59:38', '2020-09-17 07:59:38');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/course-class/349/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 07:59:42', '2020-09-17 07:59:42');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:00:36', '2020-09-17 08:00:36');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-09-17 08:00:38', '2020-09-17 08:00:38');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:00:46', '2020-09-17 08:00:46');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2020-09-17 08:00:51', '2020-09-17 08:00:51');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"2\"}', '2020-09-17 08:00:58', '2020-09-17 08:00:58');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:01:06', '2020-09-17 08:01:06');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2020-09-17 08:01:19', '2020-09-17 08:01:19');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:02:54', '2020-09-17 08:02:54');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"c\",\"sort\":\"3\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class\"}', '2020-09-17 08:02:59', '2020-09-17 08:02:59');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 08:03:01', '2020-09-17 08:03:01');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"c\",\"sort\":\"3\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 08:07:40', '2020-09-17 08:07:40');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 08:07:43', '2020-09-17 08:07:43');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"c\",\"sort\":\"3\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 08:08:25', '2020-09-17 08:08:25');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 08:08:27', '2020-09-17 08:08:27');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"c\",\"sort\":\"3\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 08:08:45', '2020-09-17 08:08:45');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 08:08:46', '2020-09-17 08:08:46');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:08:51', '2020-09-17 08:08:51');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:08:56', '2020-09-17 08:08:56');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:09:06', '2020-09-17 08:09:06');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:09:10', '2020-09-17 08:09:10');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:09:47', '2020-09-17 08:09:47');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:10:26', '2020-09-17 08:10:26');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:10:29', '2020-09-17 08:10:29');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:11:21', '2020-09-17 08:11:21');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:13:19', '2020-09-17 08:13:19');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:13:39', '2020-09-17 08:13:39');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:13:57', '2020-09-17 08:13:57');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:17:49', '2020-09-17 08:17:49');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/course-class/351', 'PUT', '127.0.0.1', '{\"title\":\"c1\",\"sort\":\"31\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class\\/351\"}', '2020-09-17 08:17:53', '2020-09-17 08:17:53');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '[]', '2020-09-17 08:17:54', '2020-09-17 08:17:54');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:17:58', '2020-09-17 08:17:58');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-09-17 08:18:04', '2020-09-17 08:18:04');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:18:07', '2020-09-17 08:18:07');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:18:12', '2020-09-17 08:18:12');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:19:32', '2020-09-17 08:19:32');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '[]', '2020-09-17 08:19:35', '2020-09-17 08:19:35');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/course-class/351/edit', 'GET', '127.0.0.1', '[]', '2020-09-17 08:24:24', '2020-09-17 08:24:24');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/course-class/351', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:24:31', '2020-09-17 08:24:31');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:24:34', '2020-09-17 08:24:34');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:24:36', '2020-09-17 08:24:36');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"d\",\"sort\":\"6\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class\"}', '2020-09-17 08:24:45', '2020-09-17 08:24:45');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/course-class/create', 'GET', '127.0.0.1', '[]', '2020-09-17 08:24:48', '2020-09-17 08:24:48');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/course-class', 'POST', '127.0.0.1', '{\"title\":\"d\",\"sort\":\"6\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 08:25:14', '2020-09-17 08:25:14');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 08:25:15', '2020-09-17 08:25:15');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:25:19', '2020-09-17 08:25:19');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/course-class/352', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:25:25', '2020-09-17 08:25:25');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/course-class/352/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:25:29', '2020-09-17 08:25:29');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/course-class/352', 'PUT', '127.0.0.1', '{\"title\":\"d1\",\"sort\":\"61\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/course-class\\/352\"}', '2020-09-17 08:25:38', '2020-09-17 08:25:38');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/course-class/352', 'GET', '127.0.0.1', '[]', '2020-09-17 08:25:38', '2020-09-17 08:25:38');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/course-class/352', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ZgzcZiIOwISxNXhHBDFIRFZJP2cX5zuszXVMIM3x\"}', '2020-09-17 08:45:35', '2020-09-17 08:45:35');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/course-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:45:35', '2020-09-17 08:45:35');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/course-class', 'GET', '127.0.0.1', '[]', '2020-09-17 08:46:56', '2020-09-17 08:46:56');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:47:04', '2020-09-17 08:47:04');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:51:28', '2020-09-17 08:51:28');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:51:31', '2020-09-17 08:51:31');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:52:27', '2020-09-17 08:52:27');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:52:30', '2020-09-17 08:52:30');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:52:32', '2020-09-17 08:52:32');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:52:35', '2020-09-17 08:52:35');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:52:41', '2020-09-17 08:52:41');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-17 08:52:43', '2020-09-17 08:52:43');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:52:44', '2020-09-17 08:52:44');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:23', '2020-09-17 08:53:23');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:26', '2020-09-17 08:53:26');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:31', '2020-09-17 08:53:31');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:40', '2020-09-17 08:53:40');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:43', '2020-09-17 08:53:43');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:53:47', '2020-09-17 08:53:47');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:54:14', '2020-09-17 08:54:14');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 08:54:28', '2020-09-17 08:54:28');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 09:02:30', '2020-09-17 09:02:30');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-17 10:36:08', '2020-09-17 10:36:08');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 02:29:12', '2020-09-18 02:29:12');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:29:23', '2020-09-18 02:29:23');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:29:32', '2020-09-18 02:29:32');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/lesson\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/auth\\/menu\"}', '2020-09-18 02:29:44', '2020-09-18 02:29:44');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 02:29:45', '2020-09-18 02:29:45');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 02:29:51', '2020-09-18 02:29:51');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:29:54', '2020-09-18 02:29:54');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:29:56', '2020-09-18 02:29:56');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:29:58', '2020-09-18 02:29:58');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:02', '2020-09-18 02:30:02');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:05', '2020-09-18 02:30:05');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:09', '2020-09-18 02:30:09');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:12', '2020-09-18 02:30:12');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:15', '2020-09-18 02:30:15');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:19', '2020-09-18 02:30:19');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:22', '2020-09-18 02:30:22');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:25', '2020-09-18 02:30:25');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:28', '2020-09-18 02:30:28');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:32', '2020-09-18 02:30:32');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:35', '2020-09-18 02:30:35');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:38', '2020-09-18 02:30:38');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:41', '2020-09-18 02:30:41');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:30:44', '2020-09-18 02:30:44');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:47', '2020-09-18 02:30:47');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:51', '2020-09-18 02:30:51');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:54', '2020-09-18 02:30:54');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:30:57', '2020-09-18 02:30:57');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:01', '2020-09-18 02:31:01');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:04', '2020-09-18 02:31:04');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:07', '2020-09-18 02:31:07');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:11', '2020-09-18 02:31:11');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:14', '2020-09-18 02:31:14');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:17', '2020-09-18 02:31:17');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:21', '2020-09-18 02:31:21');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:24', '2020-09-18 02:31:24');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:27', '2020-09-18 02:31:27');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:30', '2020-09-18 02:31:30');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:34', '2020-09-18 02:31:34');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:37', '2020-09-18 02:31:37');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:40', '2020-09-18 02:31:40');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:43', '2020-09-18 02:31:43');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:47', '2020-09-18 02:31:47');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:31:48', '2020-09-18 02:31:48');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:51', '2020-09-18 02:31:51');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:55', '2020-09-18 02:31:55');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:31:58', '2020-09-18 02:31:58');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:02', '2020-09-18 02:32:02');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:05', '2020-09-18 02:32:05');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:08', '2020-09-18 02:32:08');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:12', '2020-09-18 02:32:12');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:15', '2020-09-18 02:32:15');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:18', '2020-09-18 02:32:18');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:21', '2020-09-18 02:32:21');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:25', '2020-09-18 02:32:25');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:28', '2020-09-18 02:32:28');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:31', '2020-09-18 02:32:31');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:34', '2020-09-18 02:32:34');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:38', '2020-09-18 02:32:38');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:41', '2020-09-18 02:32:41');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:44', '2020-09-18 02:32:44');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:47', '2020-09-18 02:32:47');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:51', '2020-09-18 02:32:51');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:54', '2020-09-18 02:32:54');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:32:58', '2020-09-18 02:32:58');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:36:57', '2020-09-18 02:36:57');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:37:37', '2020-09-18 02:37:37');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 02:38:03', '2020-09-18 02:38:03');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-09-18 02:38:09', '2020-09-18 02:38:09');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:41:45', '2020-09-18 02:41:45');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:43:08', '2020-09-18 02:43:08');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:43:31', '2020-09-18 02:43:31');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:44:11', '2020-09-18 02:44:11');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:20', '2020-09-18 02:48:20');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:21', '2020-09-18 02:48:21');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:21', '2020-09-18 02:48:21');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:22', '2020-09-18 02:48:22');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:22', '2020-09-18 02:48:22');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:23', '2020-09-18 02:48:23');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:24', '2020-09-18 02:48:24');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:24', '2020-09-18 02:48:24');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:25', '2020-09-18 02:48:25');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:25', '2020-09-18 02:48:25');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:26', '2020-09-18 02:48:26');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:26', '2020-09-18 02:48:26');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:27', '2020-09-18 02:48:27');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:28', '2020-09-18 02:48:28');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:28', '2020-09-18 02:48:28');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:29', '2020-09-18 02:48:29');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:29', '2020-09-18 02:48:29');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:30', '2020-09-18 02:48:30');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:31', '2020-09-18 02:48:31');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:31', '2020-09-18 02:48:31');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:32', '2020-09-18 02:48:32');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:33', '2020-09-18 02:48:33');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:33', '2020-09-18 02:48:33');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:34', '2020-09-18 02:48:34');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:34', '2020-09-18 02:48:34');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:35', '2020-09-18 02:48:35');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:36', '2020-09-18 02:48:36');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:36', '2020-09-18 02:48:36');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:37', '2020-09-18 02:48:37');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:38', '2020-09-18 02:48:38');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:38', '2020-09-18 02:48:38');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:39', '2020-09-18 02:48:39');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:39', '2020-09-18 02:48:39');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:40', '2020-09-18 02:48:40');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:41', '2020-09-18 02:48:41');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:41', '2020-09-18 02:48:41');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:42', '2020-09-18 02:48:42');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:43', '2020-09-18 02:48:43');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:43', '2020-09-18 02:48:43');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:44', '2020-09-18 02:48:44');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:49', '2020-09-18 02:48:49');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:50', '2020-09-18 02:48:50');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:51', '2020-09-18 02:48:51');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:51', '2020-09-18 02:48:51');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:52', '2020-09-18 02:48:52');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:52', '2020-09-18 02:48:52');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:53', '2020-09-18 02:48:53');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:54', '2020-09-18 02:48:54');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:54', '2020-09-18 02:48:54');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:55', '2020-09-18 02:48:55');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:55', '2020-09-18 02:48:55');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:56', '2020-09-18 02:48:56');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:57', '2020-09-18 02:48:57');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:57', '2020-09-18 02:48:57');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:58', '2020-09-18 02:48:58');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:58', '2020-09-18 02:48:58');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:59', '2020-09-18 02:48:59');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:48:59', '2020-09-18 02:48:59');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:00', '2020-09-18 02:49:00');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:01', '2020-09-18 02:49:01');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:12', '2020-09-18 02:49:12');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:19', '2020-09-18 02:49:19');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:35', '2020-09-18 02:49:35');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/clear_cache', 'GET', '127.0.0.1', '[]', '2020-09-18 02:49:52', '2020-09-18 02:49:52');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 03:55:11', '2020-09-18 03:55:11');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:55:14', '2020-09-18 03:55:14');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:55:29', '2020-09-18 03:55:29');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:55:31', '2020-09-18 03:55:31');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:55:43', '2020-09-18 03:55:43');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:56:22', '2020-09-18 03:56:22');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:56:33', '2020-09-18 03:56:33');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\",\"icon\":\"fa-align-right\",\"uri\":\"\\/lesson-class\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 03:57:50', '2020-09-18 03:57:50');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:57:51', '2020-09-18 03:57:51');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:57:54', '2020-09-18 03:57:54');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:57:59', '2020-09-18 03:57:59');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bfe\\u7a0b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/auth\\/menu\"}', '2020-09-18 03:58:06', '2020-09-18 03:58:06');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:58:07', '2020-09-18 03:58:07');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8bfe\\u7a0b\\u5217\\u8868\",\"icon\":\"fa-columns\",\"uri\":\"\\/lesson\",\"roles\":[null],\"permission\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 03:59:36', '2020-09-18 03:59:36');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:59:37', '2020-09-18 03:59:37');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:59:39', '2020-09-18 03:59:39');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:59:44', '2020-09-18 03:59:44');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:59:48', '2020-09-18 03:59:48');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:59:49', '2020-09-18 03:59:49');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 03:59:52', '2020-09-18 03:59:52');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:59:54', '2020-09-18 03:59:54');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 03:59:57', '2020-09-18 03:59:57');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:00:02', '2020-09-18 04:00:02');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 04:00:06', '2020-09-18 04:00:06');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 04:01:09', '2020-09-18 04:01:09');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:01:17', '2020-09-18 04:01:17');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 04:01:18', '2020-09-18 04:01:18');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 04:01:47', '2020-09-18 04:01:47');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:01:51', '2020-09-18 04:01:51');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/lesson-class/349/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:02:31', '2020-09-18 04:02:31');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/lesson-class/349', 'PUT', '127.0.0.1', '{\"pid\":\"347\",\"title\":\"a\",\"sort\":\"1\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson-class\"}', '2020-09-18 04:02:48', '2020-09-18 04:02:48');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '[]', '2020-09-18 04:02:49', '2020-09-18 04:02:49');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/lesson-class', 'POST', '127.0.0.1', '{\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_order\":\"[{\\\"id\\\":350},{\\\"id\\\":351},{\\\"id\\\":2},{\\\"id\\\":156,\\\"children\\\":[{\\\"id\\\":336,\\\"children\\\":[{\\\"id\\\":343,\\\"children\\\":[{\\\"id\\\":347,\\\"children\\\":[{\\\"id\\\":349}]}]},{\\\"id\\\":342,\\\"children\\\":[{\\\"id\\\":346}]},{\\\"id\\\":341,\\\"children\\\":[{\\\"id\\\":345}]},{\\\"id\\\":340,\\\"children\\\":[{\\\"id\\\":344}]}]}]},{\\\"id\\\":3},{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":321,\\\"children\\\":[{\\\"id\\\":326,\\\"children\\\":[{\\\"id\\\":327}]},{\\\"id\\\":324,\\\"children\\\":[{\\\"id\\\":325}]},{\\\"id\\\":323,\\\"children\\\":[{\\\"id\\\":339}]},{\\\"id\\\":322,\\\"children\\\":[{\\\"id\\\":338}]}]}]}]\"}', '2020-09-18 04:03:08', '2020-09-18 04:03:08');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:03:09', '2020-09-18 04:03:09');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/lesson-class/342/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:03:13', '2020-09-18 04:03:13');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 04:03:15', '2020-09-18 04:03:15');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '[]', '2020-09-18 05:40:00', '2020-09-18 05:40:00');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/lesson-class', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"title\":\"ggg\",\"sort\":\"99\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 05:40:27', '2020-09-18 05:40:27');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '[]', '2020-09-18 05:40:27', '2020-09-18 05:40:27');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/lesson-class', 'POST', '127.0.0.1', '{\"pid\":\"353\",\"title\":\"g2\",\"sort\":\"1\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 05:41:26', '2020-09-18 05:41:26');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/lesson-class', 'GET', '127.0.0.1', '[]', '2020-09-18 05:41:26', '2020-09-18 05:41:26');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 05:46:13', '2020-09-18 05:46:13');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 05:46:16', '2020-09-18 05:46:16');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 05:46:31', '2020-09-18 05:46:31');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8bfe\\u7a0b\\u7c7b\\u578b\",\"icon\":\"fa-align-right\",\"uri\":\"\\/lesson_type\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/auth\\/menu\"}', '2020-09-18 05:46:41', '2020-09-18 05:46:41');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 05:46:41', '2020-09-18 05:46:41');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-18 05:46:45', '2020-09-18 05:46:45');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/lesson_type', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 05:46:50', '2020-09-18 05:46:50');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/lesson_type', 'POST', '127.0.0.1', '{\"pid\":\"354\",\"title\":\"g3\",\"sort\":\"99\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 05:47:02', '2020-09-18 05:47:02');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/lesson_type', 'GET', '127.0.0.1', '[]', '2020-09-18 05:47:02', '2020-09-18 05:47:02');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 05:54:23', '2020-09-18 05:54:23');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 05:54:26', '2020-09-18 05:54:26');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 05:56:38', '2020-09-18 05:56:38');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 05:57:53', '2020-09-18 05:57:53');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:05:04', '2020-09-18 06:05:04');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:08:25', '2020-09-18 06:08:25');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/lesson_type/grid', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:08:36', '2020-09-18 06:08:36');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/lesson_type/grid', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:08:37', '2020-09-18 06:08:37');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/lesson_type/grid', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:08:37', '2020-09-18 06:08:37');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/lesson_type/grid', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:08:38', '2020-09-18 06:08:38');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/lesson_type/grid', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:08:48', '2020-09-18 06:08:48');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:08:49', '2020-09-18 06:08:49');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:09:07', '2020-09-18 06:09:07');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:15:29', '2020-09-18 06:15:29');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:39', '2020-09-18 06:15:39');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:40', '2020-09-18 06:15:40');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:40', '2020-09-18 06:15:40');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:41', '2020-09-18 06:15:41');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:41', '2020-09-18 06:15:41');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:41', '2020-09-18 06:15:41');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:42', '2020-09-18 06:15:42');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/lesson/activityList', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 06:15:42', '2020-09-18 06:15:42');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:24:11', '2020-09-18 06:24:11');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:24:12', '2020-09-18 06:24:12');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 06:25:17', '2020-09-18 06:25:17');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:25:17', '2020-09-18 06:25:17');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:25:50', '2020-09-18 06:25:50');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:26:33', '2020-09-18 06:26:33');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:26:48', '2020-09-18 06:26:48');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:33:51', '2020-09-18 06:33:51');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:34:18', '2020-09-18 06:34:18');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:43:08', '2020-09-18 06:43:08');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:46:28', '2020-09-18 06:46:28');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:54:35', '2020-09-18 06:54:35');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:55:21', '2020-09-18 06:55:21');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 06:58:13', '2020-09-18 06:58:13');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:00:51', '2020-09-18 07:00:51');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:01:16', '2020-09-18 07:01:16');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:02:25', '2020-09-18 07:02:25');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:04:12', '2020-09-18 07:04:12');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:05:02', '2020-09-18 07:05:02');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:05:12', '2020-09-18 07:05:12');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:05:37', '2020-09-18 07:05:37');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:06:38', '2020-09-18 07:06:38');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:08:24', '2020-09-18 07:08:24');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:08:36', '2020-09-18 07:08:36');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:08:46', '2020-09-18 07:08:46');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:08:47', '2020-09-18 07:08:47');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:10:48', '2020-09-18 07:10:48');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:13:43', '2020-09-18 07:13:43');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:13:43', '2020-09-18 07:13:43');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:14:16', '2020-09-18 07:14:16');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:14:17', '2020-09-18 07:14:17');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:15:10', '2020-09-18 07:15:10');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:15:10', '2020-09-18 07:15:10');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:18:40', '2020-09-18 07:18:40');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"undefined\",\"name\":\"11\",\"short_name\":\"11\",\"paper_title\":\"11\",\"teacher_id\":null,\"teacher_name\":null,\"channel_id\":\"off\",\"small_img\":null,\"big_img\":null,\"synopsis\":null,\"price\":\"0\",\"market_price\":\"0\",\"sale_num\":null,\"tag\":null,\"lesson_desc\":null,\"is_recommend\":\"off\",\"problem_num\":\"off\",\"lesson_num\":\"off\",\"status\":\"on\",\"sort\":null,\"preknowledge\":null,\"video_duration\":null,\"video_duration_num\":null,\"video_url\":null,\"lesson_type_name\":null,\"pid\":null,\"node_deep\":\"1\",\"sort_txt\":null,\"video_file_size\":null,\"video_file_name\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 07:21:20', '2020-09-18 07:21:20');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:21:22', '2020-09-18 07:21:22');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:21:23', '2020-09-18 07:21:23');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:23:34', '2020-09-18 07:23:34');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:23:35', '2020-09-18 07:23:35');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"undefined\",\"name\":\"1\",\"short_name\":\"1\",\"paper_title\":null,\"teacher_id\":null,\"teacher_name\":null,\"channel_id\":\"off\",\"small_img\":null,\"big_img\":null,\"synopsis\":null,\"price\":\"0\",\"market_price\":\"0\",\"sale_num\":null,\"tag\":null,\"lesson_desc\":null,\"is_recommend\":\"off\",\"problem_num\":\"off\",\"lesson_num\":\"off\",\"status\":\"on\",\"sort\":null,\"preknowledge\":null,\"video_duration\":null,\"video_duration_num\":null,\"video_url\":null,\"lesson_type_name\":null,\"pid\":null,\"node_deep\":\"1\",\"sort_txt\":null,\"video_file_size\":null,\"video_file_name\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson_type\\/get_tree\"}', '2020-09-18 07:23:50', '2020-09-18 07:23:50');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:23:52', '2020-09-18 07:23:52');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:23:52', '2020-09-18 07:23:52');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:27:56', '2020-09-18 07:27:56');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:27:56', '2020-09-18 07:27:56');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:29:35', '2020-09-18 07:29:35');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:29:36', '2020-09-18 07:29:36');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:29:58', '2020-09-18 07:29:58');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:30:16', '2020-09-18 07:30:16');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:30:17', '2020-09-18 07:30:17');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:30:51', '2020-09-18 07:30:51');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:30:52', '2020-09-18 07:30:52');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:31:14', '2020-09-18 07:31:14');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:31:15', '2020-09-18 07:31:15');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:34:42', '2020-09-18 07:34:42');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:34:54', '2020-09-18 07:34:54');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:34:55', '2020-09-18 07:34:55');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:35:16', '2020-09-18 07:35:16');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:35:50', '2020-09-18 07:35:50');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:39:58', '2020-09-18 07:39:58');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:40:43', '2020-09-18 07:40:43');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:44:13', '2020-09-18 07:44:13');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:44:29', '2020-09-18 07:44:29');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:44:48', '2020-09-18 07:44:48');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:47:03', '2020-09-18 07:47:03');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:47:56', '2020-09-18 07:47:56');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:48:27', '2020-09-18 07:48:27');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:48:50', '2020-09-18 07:48:50');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:50:07', '2020-09-18 07:50:07');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:50:39', '2020-09-18 07:50:39');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:50:52', '2020-09-18 07:50:52');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:52:37', '2020-09-18 07:52:37');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:52:46', '2020-09-18 07:52:46');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"version\":\"0\",\"lesson_type\":\"2\",\"name\":\"1\",\"short_name\":\"1\",\"paper_title\":null,\"teacher_id\":null,\"teacher_name\":null,\"channel_id\":\"off\",\"small_img\":null,\"big_img\":null,\"synopsis\":null,\"price\":\"0\",\"market_price\":\"0\",\"sale_num\":null,\"tag\":null,\"lesson_desc\":null,\"is_recommend\":\"off\",\"problem_num\":\"off\",\"lesson_num\":\"off\",\"status\":\"on\",\"sort\":null,\"preknowledge\":null,\"video_duration\":null,\"video_duration_num\":null,\"video_url\":null,\"lesson_type_name\":null,\"pid\":null,\"node_deep\":\"1\",\"sort_txt\":null,\"video_file_size\":null,\"video_file_name\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 07:52:57', '2020-09-18 07:52:57');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:52:59', '2020-09-18 07:52:59');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:53:29', '2020-09-18 07:53:29');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 07:53:29', '2020-09-18 07:53:29');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:59:38', '2020-09-18 07:59:38');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"short_name\":\"1\",\"paper_title\":null,\"teacher_id\":null,\"teacher_name\":null,\"channel_id\":\"off\",\"small_img\":null,\"big_img\":null,\"synopsis\":null,\"price\":\"0\",\"market_price\":\"0\",\"sale_num\":null,\"tag\":null,\"lesson_desc\":null,\"is_recommend\":\"off\",\"problem_num\":\"off\",\"lesson_num\":\"off\",\"status\":\"on\",\"sort\":null,\"preknowledge\":null,\"video_duration\":null,\"video_duration_num\":null,\"video_url\":null,\"lesson_type_name\":null,\"pid\":null,\"node_deep\":\"1\",\"sort_txt\":null,\"video_file_size\":null,\"video_file_name\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 07:59:52', '2020-09-18 07:59:52');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 07:59:54', '2020-09-18 07:59:54');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"short_name\":\"1\",\"paper_title\":\"1\",\"teacher_id\":null,\"teacher_name\":null,\"channel_id\":\"off\",\"small_img\":null,\"big_img\":null,\"synopsis\":null,\"price\":\"0\",\"market_price\":\"0\",\"sale_num\":null,\"tag\":null,\"lesson_desc\":null,\"is_recommend\":\"off\",\"problem_num\":\"off\",\"lesson_num\":\"off\",\"status\":\"on\",\"sort\":null,\"preknowledge\":null,\"video_duration\":null,\"video_duration_num\":null,\"video_url\":null,\"lesson_type_name\":null,\"pid\":null,\"node_deep\":\"1\",\"sort_txt\":null,\"video_file_size\":null,\"video_file_name\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:00:02', '2020-09-18 08:00:02');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:00:03', '2020-09-18 08:00:03');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:00:43', '2020-09-18 08:00:43');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:00:49', '2020-09-18 08:00:49');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:00:51', '2020-09-18 08:00:51');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:04:08', '2020-09-18 08:04:08');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:04:10', '2020-09-18 08:04:10');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:08:33', '2020-09-18 08:08:33');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"lesson_desc\":\"111\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:08:40', '2020-09-18 08:08:40');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:08:42', '2020-09-18 08:08:42');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:09:22', '2020-09-18 08:09:22');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"111\",\"lesson_desc\":\"111\",\"preknowledge\":\"111\",\"video_duration\":\"111\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:09:30', '2020-09-18 08:09:30');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:09:30', '2020-09-18 08:09:30');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:10:51', '2020-09-18 08:10:51');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:11:01', '2020-09-18 08:11:01');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 08:11:33', '2020-09-18 08:11:33');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:12:37', '2020-09-18 08:12:37');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 08:12:39', '2020-09-18 08:12:39');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/lesson_type/get_tree', 'GET', '127.0.0.1', '[]', '2020-09-18 08:12:39', '2020-09-18 08:12:39');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"156\",\"name\":\"222\",\"lesson_desc\":\"222\",\"preknowledge\":\"222\",\"video_duration\":\"222\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson\"}', '2020-09-18 08:12:48', '2020-09-18 08:12:48');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:12:48', '2020-09-18 08:12:48');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:13:42', '2020-09-18 08:13:42');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:13:45', '2020-09-18 08:13:45');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:14:33', '2020-09-18 08:14:33');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:15:26', '2020-09-18 08:15:26');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:16:25', '2020-09-18 08:16:25');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 08:18:29', '2020-09-18 08:18:29');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":[\"2\",\"3\",null],\"name\":null,\"lesson_desc\":null,\"preknowledge\":null,\"video_duration\":null,\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson\"}', '2020-09-18 08:18:36', '2020-09-18 08:18:36');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:18:38', '2020-09-18 08:18:38');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:19:07', '2020-09-18 08:19:07');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:19:27', '2020-09-18 08:19:27');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:19:42', '2020-09-18 08:19:42');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 08:21:42', '2020-09-18 08:21:42');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"lesson_type\":\"3\",\"name\":\"333\",\"lesson_desc\":\"333\",\"preknowledge\":\"333\",\"video_duration\":\"333\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 08:21:51', '2020-09-18 08:21:51');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:21:51', '2020-09-18 08:21:51');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 08:21:58', '2020-09-18 08:21:58');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/lesson/163', 'PUT', '127.0.0.1', '{\"lesson_type\":\"2\",\"name\":\"333222\",\"lesson_desc\":\"333222\",\"preknowledge\":\"333222\",\"video_duration\":\"333222\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson\"}', '2020-09-18 08:22:11', '2020-09-18 08:22:11');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 08:22:12', '2020-09-18 08:22:12');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/lesson/163', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 08:22:16', '2020-09-18 08:22:16');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 08:22:19', '2020-09-18 08:22:19');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '[]', '2020-09-18 08:40:49', '2020-09-18 08:40:49');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '[]', '2020-09-18 08:41:18', '2020-09-18 08:41:18');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '[]', '2020-09-18 08:41:57', '2020-09-18 08:41:57');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '[]', '2020-09-18 08:42:31', '2020-09-18 08:42:31');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/lesson/163/edit', 'GET', '127.0.0.1', '[]', '2020-09-18 09:07:55', '2020-09-18 09:07:55');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/lesson/163', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 09:08:13', '2020-09-18 09:08:13');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/lesson', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 09:08:18', '2020-09-18 09:08:18');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 09:08:20', '2020-09-18 09:08:20');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:08:20', '2020-09-18 09:08:20');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:09:07', '2020-09-18 09:09:07');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:09:08', '2020-09-18 09:09:08');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:09:34', '2020-09-18 09:09:34');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:09:35', '2020-09-18 09:09:35');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:09:40', '2020-09-18 09:09:40');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:09:42', '2020-09-18 09:09:42');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:09:50', '2020-09-18 09:09:50');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:12:39', '2020-09-18 09:12:39');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:12:40', '2020-09-18 09:12:40');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:12:42', '2020-09-18 09:12:42');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:12:47', '2020-09-18 09:12:47');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/lesson_type/156/district', 'GET', '127.0.0.1', '[]', '2020-09-18 09:12:53', '2020-09-18 09:12:53');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/lesson_type/156/district', 'GET', '127.0.0.1', '[]', '2020-09-18 09:13:27', '2020-09-18 09:13:27');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/lesson_type/156/district', 'GET', '127.0.0.1', '[]', '2020-09-18 09:13:51', '2020-09-18 09:13:51');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/lesson_type/156/district', 'GET', '127.0.0.1', '[]', '2020-09-18 09:15:26', '2020-09-18 09:15:26');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:15:37', '2020-09-18 09:15:37');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:15:39', '2020-09-18 09:15:39');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:15:50', '2020-09-18 09:15:50');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:17:00', '2020-09-18 09:17:00');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:17:47', '2020-09-18 09:17:47');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"pid\":null}', '2020-09-18 09:17:49', '2020-09-18 09:17:49');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:17:50', '2020-09-18 09:17:50');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:19:30', '2020-09-18 09:19:30');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:19:31', '2020-09-18 09:19:31');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:19:36', '2020-09-18 09:19:36');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/lesson_type/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:21:17', '2020-09-18 09:21:17');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/lesson_type/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:21:28', '2020-09-18 09:21:28');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/lesson_type/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:21:33', '2020-09-18 09:21:33');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/lesson_type/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:21:37', '2020-09-18 09:21:37');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:23:02', '2020-09-18 09:23:02');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:23:30', '2020-09-18 09:23:30');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:24:35', '2020-09-18 09:24:35');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:25:17', '2020-09-18 09:25:17');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:25:40', '2020-09-18 09:25:40');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:25:44', '2020-09-18 09:25:44');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:25:45', '2020-09-18 09:25:45');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:25:46', '2020-09-18 09:25:46');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:25:51', '2020-09-18 09:25:51');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:25:57', '2020-09-18 09:25:57');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:26:01', '2020-09-18 09:26:01');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:28:17', '2020-09-18 09:28:17');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"undefined\"}', '2020-09-18 09:28:19', '2020-09-18 09:28:19');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:28:48', '2020-09-18 09:28:48');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"undefined\"}', '2020-09-18 09:28:49', '2020-09-18 09:28:49');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:29:00', '2020-09-18 09:29:00');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"undefined\"}', '2020-09-18 09:29:00', '2020-09-18 09:29:00');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:33:45', '2020-09-18 09:33:45');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"undefined\"}', '2020-09-18 09:33:46', '2020-09-18 09:33:46');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:37:19', '2020-09-18 09:37:19');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:37:21', '2020-09-18 09:37:21');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:37:22', '2020-09-18 09:37:22');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:37:29', '2020-09-18 09:37:29');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:37:31', '2020-09-18 09:37:31');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:37:53', '2020-09-18 09:37:53');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:37:54', '2020-09-18 09:37:54');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-18 09:37:55', '2020-09-18 09:37:55');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:37:59', '2020-09-18 09:37:59');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:38:21', '2020-09-18 09:38:21');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"undefined\"}', '2020-09-18 09:38:23', '2020-09-18 09:38:23');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:38:33', '2020-09-18 09:38:33');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:35', '2020-09-18 09:38:35');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:38:37', '2020-09-18 09:38:37');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"336\"}', '2020-09-18 09:38:37', '2020-09-18 09:38:37');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"336\"}', '2020-09-18 09:38:38', '2020-09-18 09:38:38');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"340\"}', '2020-09-18 09:38:39', '2020-09-18 09:38:39');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"340\"}', '2020-09-18 09:38:39', '2020-09-18 09:38:39');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"340\"}', '2020-09-18 09:38:39', '2020-09-18 09:38:39');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"340\"}', '2020-09-18 09:38:40', '2020-09-18 09:38:40');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:40', '2020-09-18 09:38:40');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:40', '2020-09-18 09:38:40');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:41', '2020-09-18 09:38:41');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:41', '2020-09-18 09:38:41');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:41', '2020-09-18 09:38:41');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:38:42', '2020-09-18 09:38:42');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:43', '2020-09-18 09:38:43');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:43', '2020-09-18 09:38:43');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:43', '2020-09-18 09:38:43');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:43', '2020-09-18 09:38:43');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:43', '2020-09-18 09:38:43');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:44', '2020-09-18 09:38:44');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:45', '2020-09-18 09:38:45');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:46', '2020-09-18 09:38:46');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:47', '2020-09-18 09:38:47');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:48', '2020-09-18 09:38:48');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:49', '2020-09-18 09:38:49');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:50', '2020-09-18 09:38:50');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:51', '2020-09-18 09:38:51');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:52', '2020-09-18 09:38:52');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:53', '2020-09-18 09:38:53');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:54', '2020-09-18 09:38:54');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:55', '2020-09-18 09:38:55');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:56', '2020-09-18 09:38:56');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (804, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (805, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (806, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (807, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (808, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (809, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (810, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (811, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:57', '2020-09-18 09:38:57');
INSERT INTO `admin_operation_log` VALUES (812, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (813, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (814, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (815, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (816, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (817, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (818, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (819, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (820, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (821, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:58', '2020-09-18 09:38:58');
INSERT INTO `admin_operation_log` VALUES (822, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (823, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (824, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (825, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (826, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (827, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (828, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (829, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (830, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (831, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:38:59', '2020-09-18 09:38:59');
INSERT INTO `admin_operation_log` VALUES (832, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (833, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (834, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (835, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (836, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (837, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (838, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (839, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (840, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (841, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:00', '2020-09-18 09:39:00');
INSERT INTO `admin_operation_log` VALUES (842, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (843, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (844, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (845, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (846, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (847, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (848, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (849, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (850, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (851, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:01', '2020-09-18 09:39:01');
INSERT INTO `admin_operation_log` VALUES (852, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (853, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (854, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (855, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (856, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (857, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (858, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (859, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (860, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (861, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:02', '2020-09-18 09:39:02');
INSERT INTO `admin_operation_log` VALUES (862, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (863, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (864, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (865, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (866, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (867, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:03', '2020-09-18 09:39:03');
INSERT INTO `admin_operation_log` VALUES (868, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (869, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (870, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (871, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"338\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (872, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (873, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"322\"}', '2020-09-18 09:39:04', '2020-09-18 09:39:04');
INSERT INTO `admin_operation_log` VALUES (874, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:39:05', '2020-09-18 09:39:05');
INSERT INTO `admin_operation_log` VALUES (875, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:39:05', '2020-09-18 09:39:05');
INSERT INTO `admin_operation_log` VALUES (876, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-18 09:39:07', '2020-09-18 09:39:07');
INSERT INTO `admin_operation_log` VALUES (877, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:39:10', '2020-09-18 09:39:10');
INSERT INTO `admin_operation_log` VALUES (878, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:40:00', '2020-09-18 09:40:00');
INSERT INTO `admin_operation_log` VALUES (879, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:40:00', '2020-09-18 09:40:00');
INSERT INTO `admin_operation_log` VALUES (880, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-18 09:40:04', '2020-09-18 09:40:04');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:40:09', '2020-09-18 09:40:09');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:40:12', '2020-09-18 09:40:12');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:40:23', '2020-09-18 09:40:23');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:40:24', '2020-09-18 09:40:24');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:40:26', '2020-09-18 09:40:26');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:40:29', '2020-09-18 09:40:29');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:42:00', '2020-09-18 09:42:00');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:42:01', '2020-09-18 09:42:01');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:42:30', '2020-09-18 09:42:30');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:42:30', '2020-09-18 09:42:30');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-18 09:42:45', '2020-09-18 09:42:45');
INSERT INTO `admin_operation_log` VALUES (892, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:43:30', '2020-09-18 09:43:30');
INSERT INTO `admin_operation_log` VALUES (893, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:43:31', '2020-09-18 09:43:31');
INSERT INTO `admin_operation_log` VALUES (894, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:43:38', '2020-09-18 09:43:38');
INSERT INTO `admin_operation_log` VALUES (895, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:43:39', '2020-09-18 09:43:39');
INSERT INTO `admin_operation_log` VALUES (896, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:43:49', '2020-09-18 09:43:49');
INSERT INTO `admin_operation_log` VALUES (897, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:43:53', '2020-09-18 09:43:53');
INSERT INTO `admin_operation_log` VALUES (898, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:43:56', '2020-09-18 09:43:56');
INSERT INTO `admin_operation_log` VALUES (899, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:45:53', '2020-09-18 09:45:53');
INSERT INTO `admin_operation_log` VALUES (900, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:45:54', '2020-09-18 09:45:54');
INSERT INTO `admin_operation_log` VALUES (901, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:45:54', '2020-09-18 09:45:54');
INSERT INTO `admin_operation_log` VALUES (902, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:45:54', '2020-09-18 09:45:54');
INSERT INTO `admin_operation_log` VALUES (903, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:45:59', '2020-09-18 09:45:59');
INSERT INTO `admin_operation_log` VALUES (904, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:46:02', '2020-09-18 09:46:02');
INSERT INTO `admin_operation_log` VALUES (905, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:46:12', '2020-09-18 09:46:12');
INSERT INTO `admin_operation_log` VALUES (906, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:46:42', '2020-09-18 09:46:42');
INSERT INTO `admin_operation_log` VALUES (907, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:49:01', '2020-09-18 09:49:01');
INSERT INTO `admin_operation_log` VALUES (908, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:49:48', '2020-09-18 09:49:48');
INSERT INTO `admin_operation_log` VALUES (909, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:49', '2020-09-18 09:49:49');
INSERT INTO `admin_operation_log` VALUES (910, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:49:50', '2020-09-18 09:49:50');
INSERT INTO `admin_operation_log` VALUES (911, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:49:50', '2020-09-18 09:49:50');
INSERT INTO `admin_operation_log` VALUES (912, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:49:54', '2020-09-18 09:49:54');
INSERT INTO `admin_operation_log` VALUES (913, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"336\"}', '2020-09-18 09:49:55', '2020-09-18 09:49:55');
INSERT INTO `admin_operation_log` VALUES (914, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"340\"}', '2020-09-18 09:49:55', '2020-09-18 09:49:55');
INSERT INTO `admin_operation_log` VALUES (915, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"344\"}', '2020-09-18 09:49:55', '2020-09-18 09:49:55');
INSERT INTO `admin_operation_log` VALUES (916, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:56', '2020-09-18 09:49:56');
INSERT INTO `admin_operation_log` VALUES (917, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:56', '2020-09-18 09:49:56');
INSERT INTO `admin_operation_log` VALUES (918, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:56', '2020-09-18 09:49:56');
INSERT INTO `admin_operation_log` VALUES (919, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:57', '2020-09-18 09:49:57');
INSERT INTO `admin_operation_log` VALUES (920, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:57', '2020-09-18 09:49:57');
INSERT INTO `admin_operation_log` VALUES (921, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:57', '2020-09-18 09:49:57');
INSERT INTO `admin_operation_log` VALUES (922, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:57', '2020-09-18 09:49:57');
INSERT INTO `admin_operation_log` VALUES (923, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:58', '2020-09-18 09:49:58');
INSERT INTO `admin_operation_log` VALUES (924, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:58', '2020-09-18 09:49:58');
INSERT INTO `admin_operation_log` VALUES (925, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:58', '2020-09-18 09:49:58');
INSERT INTO `admin_operation_log` VALUES (926, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:59', '2020-09-18 09:49:59');
INSERT INTO `admin_operation_log` VALUES (927, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:59', '2020-09-18 09:49:59');
INSERT INTO `admin_operation_log` VALUES (928, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:49:59', '2020-09-18 09:49:59');
INSERT INTO `admin_operation_log` VALUES (929, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:00', '2020-09-18 09:50:00');
INSERT INTO `admin_operation_log` VALUES (930, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:00', '2020-09-18 09:50:00');
INSERT INTO `admin_operation_log` VALUES (931, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:00', '2020-09-18 09:50:00');
INSERT INTO `admin_operation_log` VALUES (932, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:01', '2020-09-18 09:50:01');
INSERT INTO `admin_operation_log` VALUES (933, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:01', '2020-09-18 09:50:01');
INSERT INTO `admin_operation_log` VALUES (934, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:01', '2020-09-18 09:50:01');
INSERT INTO `admin_operation_log` VALUES (935, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:01', '2020-09-18 09:50:01');
INSERT INTO `admin_operation_log` VALUES (936, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:02', '2020-09-18 09:50:02');
INSERT INTO `admin_operation_log` VALUES (937, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:02', '2020-09-18 09:50:02');
INSERT INTO `admin_operation_log` VALUES (938, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:02', '2020-09-18 09:50:02');
INSERT INTO `admin_operation_log` VALUES (939, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:03', '2020-09-18 09:50:03');
INSERT INTO `admin_operation_log` VALUES (940, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:03', '2020-09-18 09:50:03');
INSERT INTO `admin_operation_log` VALUES (941, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:03', '2020-09-18 09:50:03');
INSERT INTO `admin_operation_log` VALUES (942, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:04', '2020-09-18 09:50:04');
INSERT INTO `admin_operation_log` VALUES (943, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:04', '2020-09-18 09:50:04');
INSERT INTO `admin_operation_log` VALUES (944, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:04', '2020-09-18 09:50:04');
INSERT INTO `admin_operation_log` VALUES (945, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:05', '2020-09-18 09:50:05');
INSERT INTO `admin_operation_log` VALUES (946, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:05', '2020-09-18 09:50:05');
INSERT INTO `admin_operation_log` VALUES (947, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:05', '2020-09-18 09:50:05');
INSERT INTO `admin_operation_log` VALUES (948, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:06', '2020-09-18 09:50:06');
INSERT INTO `admin_operation_log` VALUES (949, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:06', '2020-09-18 09:50:06');
INSERT INTO `admin_operation_log` VALUES (950, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:06', '2020-09-18 09:50:06');
INSERT INTO `admin_operation_log` VALUES (951, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:07', '2020-09-18 09:50:07');
INSERT INTO `admin_operation_log` VALUES (952, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:07', '2020-09-18 09:50:07');
INSERT INTO `admin_operation_log` VALUES (953, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:07', '2020-09-18 09:50:07');
INSERT INTO `admin_operation_log` VALUES (954, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:07', '2020-09-18 09:50:07');
INSERT INTO `admin_operation_log` VALUES (955, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:08', '2020-09-18 09:50:08');
INSERT INTO `admin_operation_log` VALUES (956, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:08', '2020-09-18 09:50:08');
INSERT INTO `admin_operation_log` VALUES (957, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:08', '2020-09-18 09:50:08');
INSERT INTO `admin_operation_log` VALUES (958, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:09', '2020-09-18 09:50:09');
INSERT INTO `admin_operation_log` VALUES (959, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:09', '2020-09-18 09:50:09');
INSERT INTO `admin_operation_log` VALUES (960, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:50:09', '2020-09-18 09:50:09');
INSERT INTO `admin_operation_log` VALUES (961, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:09', '2020-09-18 09:50:09');
INSERT INTO `admin_operation_log` VALUES (962, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:10', '2020-09-18 09:50:10');
INSERT INTO `admin_operation_log` VALUES (963, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:10', '2020-09-18 09:50:10');
INSERT INTO `admin_operation_log` VALUES (964, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:10', '2020-09-18 09:50:10');
INSERT INTO `admin_operation_log` VALUES (965, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:11', '2020-09-18 09:50:11');
INSERT INTO `admin_operation_log` VALUES (966, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:11', '2020-09-18 09:50:11');
INSERT INTO `admin_operation_log` VALUES (967, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:11', '2020-09-18 09:50:11');
INSERT INTO `admin_operation_log` VALUES (968, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:12', '2020-09-18 09:50:12');
INSERT INTO `admin_operation_log` VALUES (969, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:12', '2020-09-18 09:50:12');
INSERT INTO `admin_operation_log` VALUES (970, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:12', '2020-09-18 09:50:12');
INSERT INTO `admin_operation_log` VALUES (971, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:13', '2020-09-18 09:50:13');
INSERT INTO `admin_operation_log` VALUES (972, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:13', '2020-09-18 09:50:13');
INSERT INTO `admin_operation_log` VALUES (973, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:13', '2020-09-18 09:50:13');
INSERT INTO `admin_operation_log` VALUES (974, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:14', '2020-09-18 09:50:14');
INSERT INTO `admin_operation_log` VALUES (975, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:14', '2020-09-18 09:50:14');
INSERT INTO `admin_operation_log` VALUES (976, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:14', '2020-09-18 09:50:14');
INSERT INTO `admin_operation_log` VALUES (977, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:14', '2020-09-18 09:50:14');
INSERT INTO `admin_operation_log` VALUES (978, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:15', '2020-09-18 09:50:15');
INSERT INTO `admin_operation_log` VALUES (979, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:15', '2020-09-18 09:50:15');
INSERT INTO `admin_operation_log` VALUES (980, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:15', '2020-09-18 09:50:15');
INSERT INTO `admin_operation_log` VALUES (981, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:16', '2020-09-18 09:50:16');
INSERT INTO `admin_operation_log` VALUES (982, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:16', '2020-09-18 09:50:16');
INSERT INTO `admin_operation_log` VALUES (983, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:16', '2020-09-18 09:50:16');
INSERT INTO `admin_operation_log` VALUES (984, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:17', '2020-09-18 09:50:17');
INSERT INTO `admin_operation_log` VALUES (985, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:17', '2020-09-18 09:50:17');
INSERT INTO `admin_operation_log` VALUES (986, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:17', '2020-09-18 09:50:17');
INSERT INTO `admin_operation_log` VALUES (987, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:17', '2020-09-18 09:50:17');
INSERT INTO `admin_operation_log` VALUES (988, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:18', '2020-09-18 09:50:18');
INSERT INTO `admin_operation_log` VALUES (989, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:18', '2020-09-18 09:50:18');
INSERT INTO `admin_operation_log` VALUES (990, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:18', '2020-09-18 09:50:18');
INSERT INTO `admin_operation_log` VALUES (991, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:19', '2020-09-18 09:50:19');
INSERT INTO `admin_operation_log` VALUES (992, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:19', '2020-09-18 09:50:19');
INSERT INTO `admin_operation_log` VALUES (993, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:19', '2020-09-18 09:50:19');
INSERT INTO `admin_operation_log` VALUES (994, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:20', '2020-09-18 09:50:20');
INSERT INTO `admin_operation_log` VALUES (995, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:20', '2020-09-18 09:50:20');
INSERT INTO `admin_operation_log` VALUES (996, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:20', '2020-09-18 09:50:20');
INSERT INTO `admin_operation_log` VALUES (997, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:21', '2020-09-18 09:50:21');
INSERT INTO `admin_operation_log` VALUES (998, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:21', '2020-09-18 09:50:21');
INSERT INTO `admin_operation_log` VALUES (999, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:21', '2020-09-18 09:50:21');
INSERT INTO `admin_operation_log` VALUES (1000, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:21', '2020-09-18 09:50:21');
INSERT INTO `admin_operation_log` VALUES (1001, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:22', '2020-09-18 09:50:22');
INSERT INTO `admin_operation_log` VALUES (1002, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:22', '2020-09-18 09:50:22');
INSERT INTO `admin_operation_log` VALUES (1003, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:22', '2020-09-18 09:50:22');
INSERT INTO `admin_operation_log` VALUES (1004, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:23', '2020-09-18 09:50:23');
INSERT INTO `admin_operation_log` VALUES (1005, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:23', '2020-09-18 09:50:23');
INSERT INTO `admin_operation_log` VALUES (1006, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:23', '2020-09-18 09:50:23');
INSERT INTO `admin_operation_log` VALUES (1007, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:24', '2020-09-18 09:50:24');
INSERT INTO `admin_operation_log` VALUES (1008, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:24', '2020-09-18 09:50:24');
INSERT INTO `admin_operation_log` VALUES (1009, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:24', '2020-09-18 09:50:24');
INSERT INTO `admin_operation_log` VALUES (1010, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:25', '2020-09-18 09:50:25');
INSERT INTO `admin_operation_log` VALUES (1011, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:25', '2020-09-18 09:50:25');
INSERT INTO `admin_operation_log` VALUES (1012, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:25', '2020-09-18 09:50:25');
INSERT INTO `admin_operation_log` VALUES (1013, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:25', '2020-09-18 09:50:25');
INSERT INTO `admin_operation_log` VALUES (1014, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:26', '2020-09-18 09:50:26');
INSERT INTO `admin_operation_log` VALUES (1015, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:26', '2020-09-18 09:50:26');
INSERT INTO `admin_operation_log` VALUES (1016, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:26', '2020-09-18 09:50:26');
INSERT INTO `admin_operation_log` VALUES (1017, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:27', '2020-09-18 09:50:27');
INSERT INTO `admin_operation_log` VALUES (1018, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:27', '2020-09-18 09:50:27');
INSERT INTO `admin_operation_log` VALUES (1019, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:27', '2020-09-18 09:50:27');
INSERT INTO `admin_operation_log` VALUES (1020, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:28', '2020-09-18 09:50:28');
INSERT INTO `admin_operation_log` VALUES (1021, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:28', '2020-09-18 09:50:28');
INSERT INTO `admin_operation_log` VALUES (1022, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:28', '2020-09-18 09:50:28');
INSERT INTO `admin_operation_log` VALUES (1023, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:28', '2020-09-18 09:50:28');
INSERT INTO `admin_operation_log` VALUES (1024, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:29', '2020-09-18 09:50:29');
INSERT INTO `admin_operation_log` VALUES (1025, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:29', '2020-09-18 09:50:29');
INSERT INTO `admin_operation_log` VALUES (1026, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:29', '2020-09-18 09:50:29');
INSERT INTO `admin_operation_log` VALUES (1027, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:30', '2020-09-18 09:50:30');
INSERT INTO `admin_operation_log` VALUES (1028, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:30', '2020-09-18 09:50:30');
INSERT INTO `admin_operation_log` VALUES (1029, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:30', '2020-09-18 09:50:30');
INSERT INTO `admin_operation_log` VALUES (1030, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:31', '2020-09-18 09:50:31');
INSERT INTO `admin_operation_log` VALUES (1031, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:31', '2020-09-18 09:50:31');
INSERT INTO `admin_operation_log` VALUES (1032, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:31', '2020-09-18 09:50:31');
INSERT INTO `admin_operation_log` VALUES (1033, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:32', '2020-09-18 09:50:32');
INSERT INTO `admin_operation_log` VALUES (1034, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:32', '2020-09-18 09:50:32');
INSERT INTO `admin_operation_log` VALUES (1035, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:32', '2020-09-18 09:50:32');
INSERT INTO `admin_operation_log` VALUES (1036, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:33', '2020-09-18 09:50:33');
INSERT INTO `admin_operation_log` VALUES (1037, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:33', '2020-09-18 09:50:33');
INSERT INTO `admin_operation_log` VALUES (1038, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:33', '2020-09-18 09:50:33');
INSERT INTO `admin_operation_log` VALUES (1039, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:33', '2020-09-18 09:50:33');
INSERT INTO `admin_operation_log` VALUES (1040, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:34', '2020-09-18 09:50:34');
INSERT INTO `admin_operation_log` VALUES (1041, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:34', '2020-09-18 09:50:34');
INSERT INTO `admin_operation_log` VALUES (1042, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:34', '2020-09-18 09:50:34');
INSERT INTO `admin_operation_log` VALUES (1043, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:35', '2020-09-18 09:50:35');
INSERT INTO `admin_operation_log` VALUES (1044, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:35', '2020-09-18 09:50:35');
INSERT INTO `admin_operation_log` VALUES (1045, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:35', '2020-09-18 09:50:35');
INSERT INTO `admin_operation_log` VALUES (1046, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:36', '2020-09-18 09:50:36');
INSERT INTO `admin_operation_log` VALUES (1047, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:50:36', '2020-09-18 09:50:36');
INSERT INTO `admin_operation_log` VALUES (1048, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:36', '2020-09-18 09:50:36');
INSERT INTO `admin_operation_log` VALUES (1049, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:37', '2020-09-18 09:50:37');
INSERT INTO `admin_operation_log` VALUES (1050, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:50:37', '2020-09-18 09:50:37');
INSERT INTO `admin_operation_log` VALUES (1051, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:50:41', '2020-09-18 09:50:41');
INSERT INTO `admin_operation_log` VALUES (1052, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:50:53', '2020-09-18 09:50:53');
INSERT INTO `admin_operation_log` VALUES (1053, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:50:54', '2020-09-18 09:50:54');
INSERT INTO `admin_operation_log` VALUES (1054, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:50:55', '2020-09-18 09:50:55');
INSERT INTO `admin_operation_log` VALUES (1055, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:50:58', '2020-09-18 09:50:58');
INSERT INTO `admin_operation_log` VALUES (1056, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:51:03', '2020-09-18 09:51:03');
INSERT INTO `admin_operation_log` VALUES (1057, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:52:27', '2020-09-18 09:52:27');
INSERT INTO `admin_operation_log` VALUES (1058, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:52:28', '2020-09-18 09:52:28');
INSERT INTO `admin_operation_log` VALUES (1059, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:52:29', '2020-09-18 09:52:29');
INSERT INTO `admin_operation_log` VALUES (1060, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:52:32', '2020-09-18 09:52:32');
INSERT INTO `admin_operation_log` VALUES (1061, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"5\",\"lesson_desc\":\"5\",\"preknowledge\":\"5\",\"video_duration\":\"5\",\"lesson_type\":\"156\",\"pid\":\"336\",\"lesson_type_3\":\"0\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 09:52:42', '2020-09-18 09:52:42');
INSERT INTO `admin_operation_log` VALUES (1062, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:52:44', '2020-09-18 09:52:44');
INSERT INTO `admin_operation_log` VALUES (1063, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"0\"}', '2020-09-18 09:52:45', '2020-09-18 09:52:45');
INSERT INTO `admin_operation_log` VALUES (1064, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:52:45', '2020-09-18 09:52:45');
INSERT INTO `admin_operation_log` VALUES (1065, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"5\",\"lesson_desc\":\"5\",\"preknowledge\":\"5\",\"video_duration\":\"5\",\"lesson_type\":\"156\",\"pid\":\"336\",\"lesson_type_3\":\"0\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 09:53:02', '2020-09-18 09:53:02');
INSERT INTO `admin_operation_log` VALUES (1066, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 09:53:03', '2020-09-18 09:53:03');
INSERT INTO `admin_operation_log` VALUES (1067, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 09:54:12', '2020-09-18 09:54:12');
INSERT INTO `admin_operation_log` VALUES (1068, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:54:12', '2020-09-18 09:54:12');
INSERT INTO `admin_operation_log` VALUES (1069, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 09:54:23', '2020-09-18 09:54:23');
INSERT INTO `admin_operation_log` VALUES (1070, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:54:27', '2020-09-18 09:54:27');
INSERT INTO `admin_operation_log` VALUES (1071, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:56:10', '2020-09-18 09:56:10');
INSERT INTO `admin_operation_log` VALUES (1072, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:56:10', '2020-09-18 09:56:10');
INSERT INTO `admin_operation_log` VALUES (1073, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:56:15', '2020-09-18 09:56:15');
INSERT INTO `admin_operation_log` VALUES (1074, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:56:18', '2020-09-18 09:56:18');
INSERT INTO `admin_operation_log` VALUES (1075, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"350\"}', '2020-09-18 09:56:21', '2020-09-18 09:56:21');
INSERT INTO `admin_operation_log` VALUES (1076, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:56:24', '2020-09-18 09:56:24');
INSERT INTO `admin_operation_log` VALUES (1077, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:56:24', '2020-09-18 09:56:24');
INSERT INTO `admin_operation_log` VALUES (1078, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:56:46', '2020-09-18 09:56:46');
INSERT INTO `admin_operation_log` VALUES (1079, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"6\",\"lesson_desc\":\"6\",\"preknowledge\":\"6\",\"video_duration\":\"6\",\"lesson_type_1\":\"156\",\"lesson_type\":\"336\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 09:56:48', '2020-09-18 09:56:48');
INSERT INTO `admin_operation_log` VALUES (1080, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:56:50', '2020-09-18 09:56:50');
INSERT INTO `admin_operation_log` VALUES (1081, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:56:50', '2020-09-18 09:56:50');
INSERT INTO `admin_operation_log` VALUES (1082, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:58:45', '2020-09-18 09:58:45');
INSERT INTO `admin_operation_log` VALUES (1083, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:58:47', '2020-09-18 09:58:47');
INSERT INTO `admin_operation_log` VALUES (1084, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:58:47', '2020-09-18 09:58:47');
INSERT INTO `admin_operation_log` VALUES (1085, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 09:58:49', '2020-09-18 09:58:49');
INSERT INTO `admin_operation_log` VALUES (1086, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"336\"}', '2020-09-18 09:58:49', '2020-09-18 09:58:49');
INSERT INTO `admin_operation_log` VALUES (1087, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-18 09:58:55', '2020-09-18 09:58:55');
INSERT INTO `admin_operation_log` VALUES (1088, 1, 'admin/lesson_type', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 09:58:58', '2020-09-18 09:58:58');
INSERT INTO `admin_operation_log` VALUES (1089, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '[]', '2020-09-18 09:59:46', '2020-09-18 09:59:46');
INSERT INTO `admin_operation_log` VALUES (1090, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:59:48', '2020-09-18 09:59:48');
INSERT INTO `admin_operation_log` VALUES (1091, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 09:59:48', '2020-09-18 09:59:48');
INSERT INTO `admin_operation_log` VALUES (1092, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 09:59:50', '2020-09-18 09:59:50');
INSERT INTO `admin_operation_log` VALUES (1093, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"321\"}', '2020-09-18 09:59:50', '2020-09-18 09:59:50');
INSERT INTO `admin_operation_log` VALUES (1094, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"7\",\"lesson_desc\":\"7\",\"preknowledge\":\"7\",\"video_duration\":\"7\",\"lesson_type_1\":\"1\",\"lesson_type_2\":\"321\",\"lesson_type\":\"324\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\"}', '2020-09-18 10:00:14', '2020-09-18 10:00:14');
INSERT INTO `admin_operation_log` VALUES (1095, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 10:00:15', '2020-09-18 10:00:15');
INSERT INTO `admin_operation_log` VALUES (1096, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 10:41:52', '2020-09-18 10:41:52');
INSERT INTO `admin_operation_log` VALUES (1097, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 10:41:53', '2020-09-18 10:41:53');
INSERT INTO `admin_operation_log` VALUES (1098, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-18 10:42:01', '2020-09-18 10:42:01');
INSERT INTO `admin_operation_log` VALUES (1099, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 10:42:05', '2020-09-18 10:42:05');
INSERT INTO `admin_operation_log` VALUES (1100, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-18 10:42:10', '2020-09-18 10:42:10');
INSERT INTO `admin_operation_log` VALUES (1101, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"9\",\"lesson_desc\":\"9\",\"preknowledge\":\"9\",\"video_duration\":\"9\",\"lesson_type_1\":\"1\",\"lesson_type\":\"321\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson\"}', '2020-09-18 10:42:12', '2020-09-18 10:42:12');
INSERT INTO `admin_operation_log` VALUES (1102, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 10:42:12', '2020-09-18 10:42:12');
INSERT INTO `admin_operation_log` VALUES (1103, 1, 'admin/lesson/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 10:49:05', '2020-09-18 10:49:05');
INSERT INTO `admin_operation_log` VALUES (1104, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 10:49:05', '2020-09-18 10:49:05');
INSERT INTO `admin_operation_log` VALUES (1105, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-18 10:49:05', '2020-09-18 10:49:05');
INSERT INTO `admin_operation_log` VALUES (1106, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"156\"}', '2020-09-18 10:49:10', '2020-09-18 10:49:10');
INSERT INTO `admin_operation_log` VALUES (1107, 1, 'admin/lesson/district', 'GET', '127.0.0.1', '{\"q\":\"336\"}', '2020-09-18 10:49:10', '2020-09-18 10:49:10');
INSERT INTO `admin_operation_log` VALUES (1108, 1, 'admin/lesson', 'POST', '127.0.0.1', '{\"name\":\"11\",\"lesson_desc\":\"11\",\"preknowledge\":\"11\",\"video_duration\":\"11\",\"lesson_type_1\":\"156\",\"lesson_type_2\":\"336\",\"lesson_type\":\"340\",\"_token\":\"0hBkDNcapFv2erQjOMgzpTLQr7QIGfOIra3aiOYd\",\"_previous_\":\"http:\\/\\/study_enjoy.local.com\\/admin\\/lesson\"}', '2020-09-18 10:49:23', '2020-09-18 10:49:23');
INSERT INTO `admin_operation_log` VALUES (1109, 1, 'admin/lesson', 'GET', '127.0.0.1', '[]', '2020-09-18 10:49:23', '2020-09-18 10:49:23');
INSERT INTO `admin_operation_log` VALUES (1110, 1, 'admin/lesson/167/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-18 10:49:38', '2020-09-18 10:49:38');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(0) NOT NULL,
  `menu_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (1, 3, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-04-23 10:15:26', '2020-04-23 10:15:26');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
INSERT INTO `admin_user_permissions` VALUES (3, 3, NULL, NULL);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$SBVpof2a76O.jm5yIIU9tuNYsmr2Pvwz9qcOVzGOc6XbPkVTMRORW', 'Administrator', NULL, '24QAgYoJpOuC4aBZg6UFOJnsVh70SL6pLeGaPr6qAmw3kyfGFo1TrOYTYOQ5', '2020-04-23 10:15:26', '2020-04-23 10:15:26');
INSERT INTO `admin_users` VALUES (2, '1', '$2y$10$SYpve6zH1djIqvzVnLKXPODWat/8yW7aBUn0RrcnQlLS9MdjDIRMa', '1', 'images/220x165_0_2013082200534749738.jpg', NULL, '2020-09-14 07:32:41', '2020-09-14 07:32:41');
INSERT INTO `admin_users` VALUES (3, '2', '$2y$10$DkhB7T7Lv2TvEbdkJ6TCOu0VsBU2fGalTCtvmNf1OFz2R6kwgZqSi', '2', 'images/32b901201b4ce6b8e6c8b96453ab0b26.jpg', NULL, '2020-09-16 10:55:06', '2020-09-16 10:55:06');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `uid` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `ipAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `articles_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `articles_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 'Nolan Schiller4IMel', 'CwwFRIuTuX@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (2, 'Dr. Eveline Steuber Jr.IdKmn', 'zBrX9Qki8b@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (3, 'Virginia Hillbb2pj', 'DmtsSFxGUw@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (4, 'Allen RunteZNpfU', 'Cx5Buk1YmZ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (5, 'Russell Fahey PhDLaGvK', 'dLk1Cfhbef@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (6, 'Prof. Remington MoorelnWRi', 'WoAUDnk37N@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (7, 'Mrs. Lizeth Auerp2kWJ', '8gDiZhrPB4@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (8, 'Mariah Kuvalisf13vO', 'D7LkubujHl@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (9, 'Dr. Lisa EmardCc5Ba', 'GGuE8FXLJQ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (10, 'Dr. Salvador DibbertbW2Bk', '7twTicHVgv@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (11, 'Mr. Norris Schmidt Jr.72gps', 'MBG7r8AgqJ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (12, 'Karina GutmannLIGrV', 'dIxKL2VoIk@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (13, 'Marley Barton6CSqf', 'FEgemz7vtr@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (14, 'Rodolfo GutmanngnZBM', 'rb3MtSHYJ5@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (15, 'Zena Farrell88tKr', 'YfaAp155MJ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (16, 'Vilma Hettinger4Oq0X', 'jmaHXHX7n8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (17, 'Nakia KohlerO1F4k', 'E6mcXWGaLK@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (18, 'Miss Esta Friesen PhDmw4Tn', 'xdTD31rba9@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (19, 'Murphy Hartmann DVMcexAE', 'nlPU5WCUWm@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (20, 'Kali DenesikmRVLS', '3Fj1nqmaG8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (21, 'Dr. Brooke Kunze IIImPVBO', 'F6ie7LJ0MN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (22, 'Eliza HerzogfQ6Sg', 'djNpjzx5T6@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (23, 'Nat Gloverq0v7y', 'HFFbbBnauF@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (24, 'Keith Reichel1DZ0i', 'RH2YbIo1xs@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (25, 'Mia KesslerqbjOK', 'GJpCLqhrRE@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (26, 'Mia RolfsoncaRMl', 'Mxl8TYyo6X@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (27, 'Juanita O\'ConnerEqEEe', '5a7e4qg03f@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (28, 'Callie Thielx0src', 'RqBCXSkPvp@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (29, 'Avis Jacobs6D3vl', 'LUTdD2DJYN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (30, 'Emmalee MosciskizFVDV', 'Ci7YYci7QP@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (31, 'Sabryna KesslerKsH3e', 'kKUfnmj1Sp@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (32, 'Arnulfo PollichyR9nd', 'hgh9MdoBeC@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (33, 'Corene Rogahn I4t1Yd', 'JRAHMm8162@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (34, 'Daija Cormier VTGO5q', 'h0wlI9SVtG@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (35, 'Jarrell SchmelerNgIi0', 'zGwnrQBLbE@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (36, 'Dr. Terrance Grimes IIP4vlt', 'NHSD64Kjkq@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (37, 'Orlo RosenbaumIJJrl', 'jYWn15xark@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (38, 'Keyon Cormier IIIKm7Gb', 'zwU1LqQafk@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (39, 'Isaias Rodriguez IIp4v8B', 'fTqFWHTEFV@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (40, 'Salvador MuellerBdPHh', '5SIt8IOzyl@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (41, 'Dameon Breitenberg IVYO4aO', 'VApFbguLrM@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (42, 'Montana RogahnIGqQ6', 'CRVRPDwOsW@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (43, 'Prof. Carolyne Schmidt IIIOnYRa', 'OROL7fB4n4@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (44, 'Earnest WolfflmZgd', 'BV1eXFLMIZ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (45, 'Eda Kerluke IIIHNTcn', 'x2gW6CKME1@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (46, 'Miss Leila Christiansenm34we', '2NcoTNbUsL@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (47, 'Anibal Mann MD4usON', 'SQa7IwyZAu@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (48, 'Prof. Trevion White46CAo', 'HjI8dMimQQ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (49, 'Jason Macejkovicf6Dtx', 'T1jocaLrfN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (50, 'Prof. Rashawn TowneG1k5u', '8B6LZT4bC8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (51, 'aaa', 'aaa@baidu.com', '127.0.0.2', '2020-09-11 08:02:04', '2020-09-11 08:02:04');
INSERT INTO `articles` VALUES (54, 'aaa22', 'aaa22@baidu.com', '127.0.0.2', '2020-09-11 08:06:17', '2020-09-11 08:06:17');
INSERT INTO `articles` VALUES (57, 'aaa2231', 'aaa2231@baidu.com', '127.0.0.2', '2020-09-11 08:09:37', '2020-09-11 08:09:37');
INSERT INTO `articles` VALUES (58, 'aaa22311', 'aaa22311@baidu.com', '127.0.0.2', '2020-09-11 08:10:00', '2020-09-11 08:10:00');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ifar_admin_slider
-- ----------------------------
DROP TABLE IF EXISTS `ifar_admin_slider`;
CREATE TABLE `ifar_admin_slider`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `title` char(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '封面ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '点击链接',
  `create_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类型',
  `link_id` int(0) NOT NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型(1人物、2艺术种类)',
  `begin_time` int(0) NOT NULL DEFAULT 1546300800 COMMENT '开始时间',
  `end_time` int(0) NOT NULL DEFAULT 2145916800 COMMENT '结束时间',
  `art_type` int(0) NOT NULL DEFAULT 0 COMMENT '对应的艺术编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '幻灯切换表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ifar_admin_slider
-- ----------------------------
INSERT INTO `ifar_admin_slider` VALUES (193, '', 0, '', 1592821015, 1592882619, 0, 1, 2, 311, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (200, '', 0, '', 1592882593, 1592882593, 0, 1, 1, 58, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (201, '', 0, '', 1592882597, 1592882597, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (202, '', 0, '', 1592882618, 1592882618, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (203, '', 0, '', 1592888116, 1592888116, 0, 1, 1, 49, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (204, '', 0, '', 1592888131, 1592888131, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (205, '', 0, '', 1592901957, 1592901957, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (206, '', 0, '', 1592902331, 1592902991, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (207, '', 0, '', 1592902334, 1592902992, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (208, '', 0, '', 1592902348, 1592902348, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (209, '', 0, '', 1592902350, 1592902350, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (210, '', 0, '', 1592904182, 1592904182, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (211, '', 0, '', 1592904218, 1592904218, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (212, '', 0, '', 1592904313, 1592904313, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (213, '', 0, '', 1592905561, 1592922536, 0, 1, 2, 348, 2, 1546300800, 2145916800, 2);
INSERT INTO `ifar_admin_slider` VALUES (214, '', 0, '', 1592905594, 1592905594, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (215, '', 0, '', 1592905596, 1592905596, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (216, '', 0, '', 1592905600, 1592905600, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (217, '', 0, '', 1592905970, 1592905970, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (218, '', 0, '', 1592905991, 1592905991, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (219, '', 0, '', 1592906055, 1592906055, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (220, '', 0, '', 1592908858, 1592908858, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (221, '', 0, '', 1592908911, 1592908911, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (222, '', 0, '', 1592909357, 1592909357, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (223, '', 0, '', 1592909375, 1592909375, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (224, '', 0, '', 1592909433, 1592909433, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (225, '', 0, '', 1592909702, 1592909702, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (226, '', 0, '', 1592909720, 1592909720, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (227, '', 0, '', 1592909789, 1592909789, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (228, '', 0, '', 1592909842, 1592909842, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (229, '', 0, '', 1592910061, 1592910061, 0, 1, 1, 55, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (230, '', 0, '', 1592910622, 1592910622, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (231, '', 0, '', 1592911252, 1592911252, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (232, '', 0, '', 1592911387, 1592911387, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (233, '', 0, '', 1592911431, 1592911431, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (234, '', 0, '', 1592912067, 1592912067, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (235, '', 0, '', 1592912144, 1592912144, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (236, '', 0, '', 1592912148, 1592912148, 0, 1, 2, 311, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (237, '', 0, '', 1592912983, 1592912983, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (238, '', 0, '', 1592913075, 1592913075, 0, 1, 1, 57, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (239, '', 0, '', 1592913913, 1592913913, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (240, '', 0, '', 1592913915, 1592913915, 0, 1, 1, 55, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (241, '', 0, '', 1592913916, 1592913916, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (242, '', 0, '', 1592913918, 1592913918, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (243, '', 0, '', 1592913989, 1592913989, 0, 1, 1, 53, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (244, '', 0, '', 1592914029, 1592914029, 0, 1, 1, 56, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (246, '', 0, '', 1592921658, 1592921658, 0, 1, 2, 311, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (247, '', 0, '', 1592922148, 1592922148, 0, 1, 2, 6, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (248, '', 0, '', 1592922480, 1592922480, 0, 1, 2, 348, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (249, '', 0, '', 1592922490, 1592922490, 0, 1, 2, 348, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (250, '', 0, '', 1592923034, 1592923034, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (251, '', 0, '', 1592923411, 1592923411, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (252, '', 0, '', 1592923416, 1592923416, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (253, '', 0, '', 1592923421, 1592923421, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (256, '', 0, '', 1592923445, 1592925131, 0, 1, 2, 336, 2, 1546300800, 2145916800, 156);
INSERT INTO `ifar_admin_slider` VALUES (257, '', 0, '', 1592923459, 1592923459, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (258, '', 0, '', 1592923487, 1592923487, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (259, '', 0, '', 1592923506, 1592923506, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (263, '', 0, '', 1592923644, 1592923644, 0, 1, 1, 59, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (265, '', 0, '', 1592923652, 1592923652, 0, 1, 2, 348, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (267, '', 0, '', 1592923926, 1592987268, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (268, '', 0, '', 1592924677, 1592924677, 0, 1, 1, 61, 1, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (271, '', 0, '', 1592924811, 1592987267, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (272, '', 0, '', 1592924813, 1592962850, 0, 1, 2, 321, 2, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (273, '', 0, '', 1592925016, 1592925016, 0, 1, 2, 348, 2, 1546300800, 2145916800, 2);
INSERT INTO `ifar_admin_slider` VALUES (274, '', 0, '', 1592966258, 1592966258, 0, 1, 1, 66, 1, 1546300800, 2145916800, 156);
INSERT INTO `ifar_admin_slider` VALUES (275, '', 0, '', 1592966260, 1592966260, 0, 1, 1, 64, 1, 1546300800, 2145916800, 156);
INSERT INTO `ifar_admin_slider` VALUES (276, '', 0, '', 1592966263, 1592966263, 0, 1, 1, 62, 1, 1546300800, 2145916800, 156);
INSERT INTO `ifar_admin_slider` VALUES (278, '马山民歌', 0, '/uploads/2020-06-24/20200624_164528_90255.jpg', 1592984118, 1592988328, 0, 1, 3, 0, 0, 1546300800, 2145916800, 1);
INSERT INTO `ifar_admin_slider` VALUES (279, '肉连响', 0, '/uploads/2020-06-24/20200624_162809_37217.jpg', 1592987289, 1592987289, 0, 1, 3, 0, 0, 1546300800, 2145916800, 156);

-- ----------------------------
-- Table structure for ifar_admin_upload
-- ----------------------------
DROP TABLE IF EXISTS `ifar_admin_upload`;
CREATE TABLE `ifar_admin_upload`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `uid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户编号',
  `save_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件存储名称',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件原名',
  `file_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件标题(小图、大图、视频等)',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件类型(txt、image、file、video)',
  `file_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件大小',
  `file_size_num` int(0) NOT NULL DEFAULT 0 COMMENT '文件大小(单位，字节)',
  `duration` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频总时长(如1小时5分30秒)',
  `duration_num` int(0) NOT NULL DEFAULT 0 COMMENT '视频总时长(单位:秒)',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件链接',
  `file_ext` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `file_md5` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件sha1编码',
  `location` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `create_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `update_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态',
  `link_id` int(0) NOT NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '关联类型（1课程、2章、3节）',
  `synopsis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `save_name`(`save_name`(255)) USING BTREE,
  INDEX `link_type`(`link_type`, `link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 970 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ifar_admin_upload
-- ----------------------------
INSERT INTO `ifar_admin_upload` VALUES (1, 0, '', '666', '', 'file', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (3, 0, '', '汉剧图片', '', 'image', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (4, 0, '', '666', '', 'video', '10M', 1024000, '10分钟', 600, '', '/uploads/2020_01_13/1.mp4', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (6, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (7, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (9, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (10, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (12, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (14, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (16, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (17, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (19, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (20, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (22, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (23, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (25, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (29, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (31, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (32, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (34, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (35, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (37, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (38, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (40, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (41, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (43, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (44, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (46, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (47, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (49, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (50, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (52, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (60, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (62, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (63, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (65, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (66, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (68, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (69, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (71, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (72, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (74, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (75, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (77, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (78, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (80, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (81, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (83, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (84, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (86, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (87, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (89, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (90, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (92, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (93, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (95, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (96, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (98, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (99, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (101, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (102, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (104, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (105, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (107, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (123, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (125, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (126, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (128, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (129, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (131, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (132, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (134, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (135, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (137, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (138, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (140, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (141, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (143, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (144, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (146, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (147, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (149, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (150, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (152, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (153, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (155, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (156, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (158, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (159, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (161, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (162, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (164, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (165, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (167, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (168, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (170, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (171, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (173, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (174, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (176, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (177, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (179, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (180, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (182, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (183, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (185, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (186, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (188, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (189, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (191, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (192, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (194, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (195, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (197, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (198, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (200, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (201, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (203, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (204, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (206, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (207, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (209, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (210, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (212, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (213, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (215, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (216, 0, '', '666', '', '', '10M', 1024000, '0', 0, '', '/uploads/2020_01_13/1.pdf', '', '', '', '', 0, 1577846925, 1578883726, 0, 0, 1, 2, '');
INSERT INTO `ifar_admin_upload` VALUES (218, 0, '', '汉剧图片', '', '', '10K', 10240, '0', 0, '', '/uploads/2020_01_13/1.jpg', '', '', '', '', 0, 1577846925, 1577846925, 0, 0, 1, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (250, 0, '06324283547562633.png', '', '', 'image', '3.33K', 3407, '', 0, '', '/uploads/2020-01-15/06324283547562633.png', 'png', '', '', '', 0, 1579084354, 1579084354, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (251, 0, '06324294937699837.png', '', '', 'image', '3.38K', 3456, '', 0, '', '/uploads/2020-01-15SLASH06324294937699837.png', 'png', '', '', '', 0, 1579085493, 1579085493, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (252, 0, '06324297156771370.png', '', '', 'image', '3.38K', 3456, '', 0, '', '/uploads/2020-01-15SLASH06324297156771370.png', 'png', '', '', '', 0, 1579085715, 1579085715, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (253, 0, '', '', '', 'file', '0字节', 0, '', 0, '', '/uploads/2020-01-16SLASH', '', '', '', '', 0, 1579142470, 1579142470, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (254, 0, '', '', '', 'file', '0字节', 0, '', 0, '', '/uploads/2020-01-16SLASH', '', '', '', '', 0, 1579142669, 1579142669, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (255, 0, '', '', '', 'file', '0字节', 0, '', 0, '', '/uploads/2020-01-16SLASH', '', '', '', '', 0, 1579142700, 1579142700, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (256, 0, '06324873125106055.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16SLASH06324873125106055.png', 'png', '', '', '', 0, 1579143312, 1579143312, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (257, 0, '06324874656140172.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16SLASH06324874656140172.png', 'png', '', '', '', 0, 1579143465, 1579143465, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (258, 0, '06324875980699831.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16SLASH06324875980699831.png', 'png', '', '', '', 0, 1579143598, 1579143598, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (259, 0, '06324876233498828.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16SLASH06324876233498828.png', 'png', 'e0267da86a8951287ff7932523e549e3', '', '', 0, 1579143623, 1579143623, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (260, 0, '20200116_110023_93591.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-16SLASH20200116_110023_93591.mp4', 'mp4', '', '', '', 0, 1579143623, 1579143623, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (261, 0, '06324880350365307.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16/06324880350365307.png', 'png', 'e0267da86a8951287ff7932523e549e3', '', '', 0, 1579144035, 1579144035, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (262, 0, '20200116_110715_93519.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-16/20200116_110715_93519.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579144035, 1579144035, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (263, 0, '06324880914701703.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-16/06324880914701703.png', 'png', 'e0267da86a8951287ff7932523e549e3', '', '', 0, 1579144091, 1579144091, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (264, 0, '20200116_110811_27419.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-16/20200116_110811_27419.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579144091, 1579144091, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (265, 0, '20200120_140957_62268.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_140957_62268.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500597, 1579500597, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (266, 0, '20200120_140957_61898.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_140957_61898.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500597, 1579500597, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (267, 0, '20200120_141055_61329.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141055_61329.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500655, 1579500655, 0, 0, 517, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (268, 0, '20200120_141055_49631.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141055_49631.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500655, 1579500655, 0, 0, 517, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (269, 0, '20200120_141413_88182.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141413_88182.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500853, 1579500853, 0, 0, 518, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (270, 0, '20200120_141413_63553.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141413_63553.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500853, 1579500853, 0, 0, 518, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (271, 0, '20200120_141451_78711.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141451_78711.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500891, 1579500891, 0, 0, 519, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (272, 0, '20200120_141451_73575.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141451_73575.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500891, 1579500891, 0, 0, 519, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (273, 0, '20200120_141524_72079.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141524_72079.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500924, 1579500924, 0, 0, 519, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (274, 0, '20200120_141524_75709.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141524_75709.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500924, 1579500924, 0, 0, 519, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (275, 0, '20200120_141541_24891.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141541_24891.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500941, 1579500941, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (276, 0, '20200120_141541_53886.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_141541_53886.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579500941, 1579500941, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (277, 0, '20200120_142650_47638.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142650_47638.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501610, 1579501610, 0, 0, 520, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (278, 0, '20200120_142650_26707.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142650_26707.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501610, 1579501610, 0, 0, 520, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (279, 0, '20200120_142716_87936.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142716_87936.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501636, 1579501636, 0, 0, 521, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (280, 0, '20200120_142716_70839.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142716_70839.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501636, 1579501636, 0, 0, 521, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (281, 0, '20200120_142736_70589.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142736_70589.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501656, 1579501656, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (282, 0, '20200120_142736_95207.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142736_95207.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501656, 1579501656, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (283, 0, '20200120_142755_87301.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142755_87301.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501675, 1579501675, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (284, 0, '20200120_142755_87442.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_142755_87442.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501675, 1579501675, 0, 0, 515, 3, '');
INSERT INTO `ifar_admin_upload` VALUES (285, 0, '06328458218607298.png', '', '', 'file', '3.38K', 3456, '', 0, '', '/uploads/2020-01-20/06328458218607298.png', 'png', 'e0267da86a8951287ff7932523e549e3', '', '', 0, 1579501821, 1579501821, 0, 0, 2028, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (286, 0, '20200120_143021_27970.mp4', '', '', 'file', '6.56M', 6881173, '', 0, '', '/uploads/2020-01-20/20200120_143021_27970.mp4', 'mp4', '129c65ff5072b7b475d63507ee57a64c', '', '', 0, 1579501821, 1579501821, 0, 0, 2028, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (304, 1, '5e60e55529775.png', '5e60e55529775.png', '', '', '', 371649, '', 0, '/uploads/admin/image/2020-03-05/5e60e55529775.png', '/uploads/admin/image/2020-03-05/5e60e55529775.png', '', 'a1d2da3ce91317f42097d096b2b3cf3f', '62fc144d97b603163e99268ffdc76d908d343cd0', 'Local', 0, 1583408471, 1583408471, 0, 1, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (305, 1, '5e60e572253b7.png', '5e60e572253b7.png', '', '', '', 495108, '', 0, '/uploads/admin/image/2020-03-05/5e60e572253b7.png', '/uploads/admin/image/2020-03-05/5e60e572253b7.png', '', '39b270f7f8f0e979cd6f2c5ecd125c1f', 'b87a10450e515e0bc12f8664950a3f4a7b2c3d67', 'Local', 0, 1583408499, 1583408499, 0, 1, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (306, 1, '5e60e586b9f52.png', '5e60e586b9f52.png', '', '', '', 273811, '', 0, '/uploads/admin/image/2020-03-05/5e60e586b9f52.png', '/uploads/admin/image/2020-03-05/5e60e586b9f52.png', '', '3eb87a910e7845208dd59631b922b441', '359847bf3ba041462e48ea8072372c334b0ff3f3', 'Local', 0, 1583408520, 1583408520, 0, 1, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (307, 0, '20200307_203841_16480.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-07/20200307_203841_16480.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1583584721, 1583584721, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (308, 0, '20200307_203841_87495.jpg', '', '', 'file', '21.49K', 22010, '', 0, '', '/uploads/2020-03-07/20200307_203841_87495.jpg', 'jpg', '3234e2b1814d8dad01025970b7e2c376', '', '', 0, 1583584721, 1583584721, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (309, 0, '20200307_205029_29264.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-07/20200307_205029_29264.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1583585429, 1583585429, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (310, 0, '20200307_205029_75267.jpg', '', '', 'file', '21.49K', 22010, '', 0, '', '/uploads/2020-03-07/20200307_205029_75267.jpg', 'jpg', '3234e2b1814d8dad01025970b7e2c376', '', '', 0, 1583585429, 1583585429, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (311, 0, '20200307_205040_40723.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-07/20200307_205040_40723.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1583585440, 1583585440, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (312, 0, '20200307_205040_91731.jpg', '', '', 'file', '21.49K', 22010, '', 0, '', '/uploads/2020-03-07/20200307_205040_91731.jpg', 'jpg', '3234e2b1814d8dad01025970b7e2c376', '', '', 0, 1583585440, 1583585440, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (313, 0, '20200317_210740_75641.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_210740_75641.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584450460, 1584450460, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (314, 0, '20200317_211022_38201.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_211022_38201.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584450622, 1584450622, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (315, 0, '20200317_213821_10702.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_213821_10702.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584452301, 1584452301, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (316, 0, '20200317_213836_42262.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_213836_42262.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584452317, 1584452317, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (317, 0, '20200317_213856_64232.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_213856_64232.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584452336, 1584452336, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (318, 0, '20200317_213859_73912.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_213859_73912.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584452339, 1584452339, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (319, 0, '20200317_213923_11096.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-17/20200317_213923_11096.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584452363, 1584452363, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (320, 0, '20200318_101645_22602.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_101645_22602.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584497805, 1584497805, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (321, 0, '20200318_102856_65162.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_102856_65162.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584498536, 1584498536, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (322, 0, '20200318_104241_48969.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_104241_48969.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584499361, 1584499361, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (323, 0, '20200318_110204_57363.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110204_57363.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500524, 1584500524, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (324, 0, '20200318_110259_28372.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110259_28372.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500579, 1584500579, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (325, 0, '20200318_110320_88206.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110320_88206.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500600, 1584500600, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (326, 0, '20200318_110334_69578.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110334_69578.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500614, 1584500614, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (327, 0, '20200318_110415_20030.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110415_20030.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500655, 1584500655, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (328, 0, '20200318_110441_44388.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110441_44388.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500681, 1584500681, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (329, 0, '20200318_110451_47558.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110451_47558.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500691, 1584500691, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (330, 0, '20200318_110530_41112.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110530_41112.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500730, 1584500730, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (331, 0, '20200318_110544_12152.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110544_12152.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500744, 1584500744, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (332, 0, '20200318_110608_93934.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110608_93934.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500768, 1584500768, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (333, 0, '20200318_110657_8945.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_110657_8945.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584500817, 1584500817, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (334, 0, '20200318_160617_43912.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_160617_43912.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584518777, 1584518777, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (335, 0, '20200318_160752_79204.jpg', '', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-03-18/20200318_160752_79204.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1584518872, 1584518872, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (336, 0, '20200318_161625_32597.jpg', '', '', 'file', '34.66K', 35491, '', 0, '', '/uploads/2020-03-18/20200318_161625_32597.jpg', 'jpg', 'c5b67df6a9472ade1d4178ea4984fd4b', '', '', 0, 1584519385, 1584519385, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (337, 0, '20200318_165544_75020.jpg', '', '', 'file', '34.66K', 35491, '', 0, '', '/uploads/2020-03-18/20200318_165544_75020.jpg', 'jpg', 'c5b67df6a9472ade1d4178ea4984fd4b', '', '', 0, 1584521744, 1584521744, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (357, 0, '20200321_100618_93111.jpg', '', '', 'file', '21.49K', 22010, '', 0, '', '/uploads/2020-03-21/20200321_100618_93111.jpg', 'jpg', '3234e2b1814d8dad01025970b7e2c376', '', '', 0, 1584756378, 1584756378, 0, 0, 2031, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (358, 0, '20200321_100618_26233.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-21/20200321_100618_26233.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1584756378, 1584756378, 0, 0, 2031, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (369, 0, '20200323_204749_82652.xlsx', '', '', 'file', '10.17K', 10416, '', 0, '', '/uploads/2020-03-23/20200323_204749_82652.xlsx', 'xlsx', 'b55d9b293a6e3ed933cc1d6ef8579000', '', '', 0, 1584967669, 1584967669, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (370, 0, '20200323_205029_53159.xlsx', '', '', 'file', '10.17K', 10416, '', 0, '', '/uploads/2020-03-23/20200323_205029_53159.xlsx', 'xlsx', 'b55d9b293a6e3ed933cc1d6ef8579000', '', '', 0, 1584967829, 1584967829, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (371, 0, '20200323_221349_32551.xlsx', '', '', 'file', '10.17K', 10416, '', 0, '', '/uploads/2020-03-23/20200323_221349_32551.xlsx', 'xlsx', 'b55d9b293a6e3ed933cc1d6ef8579000', '', '', 0, 1584972829, 1584972829, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (372, 0, '20200323_222003_62962.xlsx', '', '', 'file', '10.17K', 10416, '', 0, '', '/uploads/2020-03-23/20200323_222003_62962.xlsx', 'xlsx', 'b55d9b293a6e3ed933cc1d6ef8579000', '', '', 0, 1584973203, 1584973203, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (373, 0, '20200323_222402_81272.xlsx', '', '', 'file', '10.18K', 10422, '', 0, '', '/uploads/2020-03-23/20200323_222402_81272.xlsx', 'xlsx', 'b39b4649154e47c8a61f715ecc58ff95', '', '', 0, 1584973442, 1584973442, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (374, 0, '20200323_222410_89333.xlsx', '', '', 'file', '10.18K', 10422, '', 0, '', '/uploads/2020-03-23/20200323_222410_89333.xlsx', 'xlsx', 'b39b4649154e47c8a61f715ecc58ff95', '', '', 0, 1584973450, 1584973450, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (375, 0, '20200323_222449_71714.xlsx', '', '', 'file', '10.18K', 10429, '', 0, '', '/uploads/2020-03-23/20200323_222449_71714.xlsx', 'xlsx', '45c9fbbcdbda168a5b1d4806940ccda4', '', '', 0, 1584973489, 1584973489, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (376, 0, '20200323_224616_27236.xlsx', '', '', 'file', '10.18K', 10426, '', 0, '', '/uploads/2020-03-23/20200323_224616_27236.xlsx', 'xlsx', 'decf4499e45d33fd30e012b055134b1a', '', '', 0, 1584974776, 1584974776, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (384, 0, '20200325_181033_37264.jpg', '', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-03-25/20200325_181033_37264.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1585131033, 1585131033, 0, 0, 19, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (385, 0, '20200325_181033_67807.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-25/20200325_181033_67807.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1585131033, 1585131033, 0, 0, 19, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (386, 0, '20200325_194127_57696.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-25/20200325_194127_57696.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1585136487, 1585136487, 0, 0, 20, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (387, 0, '20200325_195243_23276.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-25/20200325_195243_23276.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1585137163, 1585137163, 0, 0, 21, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (388, 0, '20200325_205636_14397.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-25/20200325_205636_14397.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1585140997, 1585140997, 0, 0, 20, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (389, 0, '20200325_212217_18716.jpg', '', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-03-25/20200325_212217_18716.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1585142537, 1585142537, 0, 0, 20, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (390, 0, '20200326_111743_40683.mp4', '', '', 'file', '6.11M', 6409267, '', 0, '', '/uploads/2020-03-26/20200326_111743_40683.mp4', 'mp4', 'bfc541a298281fbb578fc773e0b92225', '', '', 0, 1585192663, 1585192663, 0, 0, 22, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (400, 0, '20200327_142725_61247.jpg', '', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-03-27/20200327_142725_61247.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1585290445, 1585290445, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (401, 0, '20200327_143402_40743.jpg', '', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-03-27/20200327_143402_40743.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1585290842, 1585290842, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (402, 0, '20200327_143713_26925.jpg', '', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-03-27/20200327_143713_26925.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1585291033, 1585291033, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (403, 0, '20200327_143913_23052.jpg', '', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-03-27/20200327_143913_23052.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1585291153, 1585291153, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (420, 0, '20200330_165842_92189.xls', '', '', 'file', '61K', 62464, '', 0, '', '/uploads/2020-03-30/20200330_165842_92189.xls', 'xls', '790635dedd6efffc36ee4aae56d153ed', '', '', 0, 1585558722, 1585558722, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (421, 0, '20200330_171304_63394.xls', '', '', 'file', '61K', 62464, '', 0, '', '/uploads/2020-03-30/20200330_171304_63394.xls', 'xls', '790635dedd6efffc36ee4aae56d153ed', '', '', 0, 1585559584, 1585559584, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (422, 0, '20200402_011414_98593.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_011414_98593.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585761254, 1585761254, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (423, 0, '20200402_011953_82880.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_011953_82880.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585761593, 1585761593, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (424, 0, '20200402_012258_44277.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_012258_44277.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585761778, 1585761778, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (425, 0, '20200402_012420_99941.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_012420_99941.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585761860, 1585761860, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (426, 0, '20200402_012552_89802.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_012552_89802.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585761952, 1585761952, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (427, 0, '20200402_012649_83925.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_012649_83925.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762009, 1585762009, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (428, 0, '20200402_012802_6702.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_012802_6702.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762082, 1585762082, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (429, 0, '20200402_013053_31843.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_013053_31843.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762253, 1585762253, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (430, 0, '20200402_013150_32771.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_013150_32771.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762310, 1585762310, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (431, 0, '20200402_013516_71749.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_013516_71749.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762516, 1585762516, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (432, 0, '20200402_013544_340.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_013544_340.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585762544, 1585762544, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (433, 0, '20200402_014341_35623.jpg', '', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-02/20200402_014341_35623.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1585763021, 1585763021, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (434, 0, '20200402_153020_3634.jpg', '', '', 'file', '9.11K', 9332, '', 0, '', '/uploads/2020-04-02/20200402_153020_3634.jpg', 'jpg', '1b8e17decb876cc05ed25ebd16e34712', '', '', 0, 1585812620, 1585812620, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (439, 0, '20200403_145129_74457.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-03/20200403_145129_74457.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1585896689, 1585896689, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (440, 0, '20200403_151400_40556.jpg', '1.jpg', '', 'file', '366.84K', 375641, '', 0, '', '/uploads/2020-04-03/20200403_151400_40556.jpg', 'jpg', 'f5aa478a973392a1a5f280b30602b443', '', '', 0, 1585898040, 1585898040, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (441, 0, '20200403_151802_3246.jpg', '19.jpg', '', 'file', '120.66K', 123557, '', 0, '', '/uploads/2020-04-03/20200403_151802_3246.jpg', 'jpg', '47b312de2e7909d9293b48809f8e6cfd', '', '', 0, 1585898282, 1585898282, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (442, 0, '20200403_152227_61371.jpg', '10.jpg', '', 'file', '413.34K', 423258, '', 0, '', '/uploads/2020-04-03/20200403_152227_61371.jpg', 'jpg', '6ffa1aecb33c3f5a60727cb20493a247', '', '', 0, 1585898547, 1585898547, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (449, 0, '20200403_164040_34479.jpg', '8.jpg', '', 'file', '469.88K', 481159, '', 0, '', '/uploads/2020-04-03/20200403_164040_34479.jpg', 'jpg', 'd3724863190e22b4476c0b1878acbccd', '', '', 0, 1585903240, 1585903240, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (450, 0, '20200403_164136_99396.jpg', '3.jpg', '', 'file', '203.14K', 208020, '', 0, '', '/uploads/2020-04-03/20200403_164136_99396.jpg', 'jpg', '5c41759b329222b33df8977281ef473a', '', '', 0, 1585903296, 1585903296, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (451, 0, '20200403_175715_65468.jpg', '18.jpg', '', 'file', '1.05M', 1097858, '', 0, '', '/uploads/2020-04-03/20200403_175715_65468.jpg', 'jpg', '176c7eb70c19bedc274cf4261dbc3046', '', '', 0, 1585907835, 1585907835, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (452, 0, '20200403_180728_42912.jpg', '1.jpg', '', 'file', '366.84K', 375641, '', 0, '', '/uploads/2020-04-03/20200403_180728_42912.jpg', 'jpg', 'f5aa478a973392a1a5f280b30602b443', '', '', 0, 1585908448, 1585908448, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (453, 0, '20200407_043835_58033.jpg', '1900护甲.jpg', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-07/20200407_043835_58033.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1586205515, 1586205515, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (454, 0, '20200407_053600_34865.jpg', '1900护甲.jpg', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-07/20200407_053600_34865.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1586208960, 1586208960, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (455, 0, '20200407_053924_64735.jpg', '1900护甲.jpg', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-07/20200407_053924_64735.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1586209164, 1586209164, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (456, 0, '20200407_054224_85614.jpg', '1900护甲.jpg', '', 'file', '228.7K', 234186, '', 0, '', '/uploads/2020-04-07/20200407_054224_85614.jpg', 'jpg', '64d567f28cd1051364dde09da93d7a3a', '', '', 0, 1586209344, 1586209344, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (457, 0, '20200407_115559_9270.jpg', 'jeep.jpg', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-04-07/20200407_115559_9270.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1586231759, 1586231759, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (458, 0, '20200407_115854_96878.png', 'history-version.png', '', 'file', '1.01K', 1039, '', 0, '', '/uploads/2020-04-07/20200407_115854_96878.png', 'png', '5348eb575464cb6d93220a093f87d1ea', '', '', 0, 1586231934, 1586231934, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (459, 0, '20200407_165151_87679.jpg', 'jeep.jpg', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-04-07/20200407_165151_87679.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1586249511, 1586249511, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (460, 0, '20200407_182358_70242.jpg', 'jeep.jpg', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-04-07/20200407_182358_70242.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1586255038, 1586255038, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (461, 0, '20200407_182426_5876.png', 'history-version.png', '', 'file', '1.01K', 1039, '', 0, '', '/uploads/2020-04-07/20200407_182426_5876.png', 'png', '5348eb575464cb6d93220a093f87d1ea', '', '', 0, 1586255066, 1586255066, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (462, 0, '20200408_092215_32235.jpg', 'jeep.jpg', '', 'file', '30.9K', 31646, '', 0, '', '/uploads/2020-04-08/20200408_092215_32235.jpg', 'jpg', '63959c0129f4c76b8f29e300f6ae1e1d', '', '', 0, 1586308935, 1586308935, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (463, 0, '20200408_092246_51008.png', 'history-version.png', '', 'file', '1.01K', 1039, '', 0, '', '/uploads/2020-04-08/20200408_092246_51008.png', 'png', '5348eb575464cb6d93220a093f87d1ea', '', '', 0, 1586308966, 1586308966, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (464, 0, '20200409_191513_84094.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-09/20200409_191513_84094.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1586430913, 1586430913, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (465, 0, '20200409_191658_46754.jpg', 'u=1197020714,1349645173&fm=11&gp=0.jpg', '', 'file', '32.53K', 33315, '', 0, '', '/uploads/2020-04-09/20200409_191658_46754.jpg', 'jpg', '320478b67fa9fbc3f0c530bc2b1c151b', '', '', 0, 1586431018, 1586431018, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (466, 0, '20200409_191704_19428.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-09/20200409_191704_19428.jpg', 'jpg', 'e3d24a4b59eb80d4aab5507178017ac3', '', '', 0, 1586431024, 1586431024, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (467, 0, '20200410_164843_3849.png', '微信截图_20200322191144.png', '', 'file', '194.21K', 198875, '', 0, '', '/uploads/2020-04-10/20200410_164843_3849.png', 'png', '8565f51de6b5f05add18afc00ab784f8', '', '', 0, 1586508523, 1586508523, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (468, 0, '20200412_101945_4385.jpg', '20.jpg', '', 'file', '4.45M', 4670151, '', 0, '', '/uploads/2020-04-12/20200412_101945_4385.jpg', 'jpg', 'b8c9e3723d6cf9acfa723402c0030fca', '', '', 0, 1586657985, 1586657985, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (469, 0, '20200412_102612_66738.jpg', '20.jpg', '', 'file', '4.45M', 4670151, '', 0, '', '/uploads/2020-04-12/20200412_102612_66738.jpg', 'jpg', 'b8c9e3723d6cf9acfa723402c0030fca', '', '', 0, 1586658372, 1586658372, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (470, 0, '20200412_103244_69368.jpg', '20.jpg', '', 'file', '4.45M', 4670151, '', 0, '', '/uploads/2020-04-12/20200412_103244_69368.jpg', 'jpg', 'b8c9e3723d6cf9acfa723402c0030fca', '', '', 0, 1586658764, 1586658764, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (471, 0, '20200412_103459_39566.jpg', '20.jpg', '', 'file', '4.45M', 4670151, '', 0, '', '/uploads/2020-04-12/20200412_103459_39566.jpg', 'jpg', 'b8c9e3723d6cf9acfa723402c0030fca', '', '', 0, 1586658899, 1586658899, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (472, 0, '20200412_103501_90991.jpg', '20.jpg', '', 'file', '4.45M', 4670151, '', 0, '', '/uploads/2020-04-12/20200412_103501_90991.jpg', 'jpg', 'b8c9e3723d6cf9acfa723402c0030fca', '', '', 0, 1586658901, 1586658901, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (473, 0, '20200413_175605_16819.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_175605_16819.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586771765, 1586771765, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (474, 0, '20200413_175610_55470.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_175610_55470.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586771770, 1586771770, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (475, 0, '20200413_175621_40216.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_175621_40216.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586771781, 1586771781, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (476, 0, '20200413_213315_54794.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_213315_54794.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586784795, 1586784795, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (477, 0, '20200413_213407_83800.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_213407_83800.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586784847, 1586784847, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (478, 0, '20200413_214112_62553.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_214112_62553.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586785272, 1586785272, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (479, 0, '20200413_214906_80523.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_214906_80523.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586785746, 1586785746, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (480, 0, '20200413_215313_22937.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_215313_22937.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586785993, 1586785993, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (481, 0, '20200413_215335_80762.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_215335_80762.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586786015, 1586786015, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (482, 0, '20200413_215427_63515.xlsx', 'problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_215427_63515.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586786067, 1586786067, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (483, 0, '20200413_215539_56354.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_215539_56354.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586786139, 1586786139, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (484, 0, '20200413_225122_42422.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_225122_42422.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586789482, 1586789482, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (485, 0, '20200413_230200_31668.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_230200_31668.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586790120, 1586790120, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (486, 0, '20200413_232054_78057.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_232054_78057.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586791254, 1586791254, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (487, 0, '20200413_232708_23375.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_232708_23375.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586791628, 1586791628, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (488, 0, '20200413_232729_58152.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-13/20200413_232729_58152.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586791649, 1586791649, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (489, 0, '20200414_000243_19182.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-14/20200414_000243_19182.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586793763, 1586793763, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (490, 0, '20200414_170248_86588.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-14/20200414_170248_86588.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586854968, 1586854968, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (491, 0, '20200414_204659_75511.jpg', 'u=2364540342,149925456&fm=11&gp=0.jpg', '', 'file', '47.92K', 49068, '', 0, '', '/uploads/2020-04-14/20200414_204659_75511.jpg', 'jpg', 'fe11f685482ef840d8ebd94af9c0ac5c', '', '', 0, 1586868419, 1586868419, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (496, 0, '20200415_171411_840.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_171411_840.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586942051, 1586942051, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (497, 0, '20200415_174604_60933.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_174604_60933.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586943964, 1586943964, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (498, 0, '20200415_174950_21132.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_174950_21132.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586944190, 1586944190, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (499, 0, '20200415_175650_89575.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_175650_89575.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586944610, 1586944610, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (500, 0, '20200415_175846_21076.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_175846_21076.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586944726, 1586944726, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (501, 0, '20200415_175939_54310.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_175939_54310.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586944779, 1586944779, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (502, 0, '20200415_180232_49502.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-15/20200415_180232_49502.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1586944952, 1586944952, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (513, 0, '20200417_135829_8239.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-17/20200417_135829_8239.jpg', 'jpg', 'f1f48faa115911a4523525fef5368bc9', '', '', 0, 1587103109, 1587103109, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (514, 0, '20200417_140008_99611.png', '1.png', '', 'file', '3.21M', 3363677, '', 0, '', '/uploads/2020-04-17/20200417_140008_99611.png', 'png', 'ffb6b46d7e05ea81bdb754a9f43813bf', '', '', 0, 1587103208, 1587103208, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (515, 0, '20200417_140019_12860.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-17/20200417_140019_12860.jpg', 'jpg', 'f1f48faa115911a4523525fef5368bc9', '', '', 0, 1587103219, 1587103219, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (516, 0, '20200417_154323_44023.jpg', '2426_s1230p0226_l_compo_render_0143r.jpg', '', 'file', '355.79K', 364327, '', 0, '', '/uploads/2020-04-17/20200417_154323_44023.jpg', 'jpg', 'f1f48faa115911a4523525fef5368bc9', '', '', 0, 1587109403, 1587109403, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (517, 0, '20200417_164246_72173.png', '微信截图_20200417164229.png', '', 'file', '1.65M', 1729220, '', 0, '', '/uploads/2020-04-17/20200417_164246_72173.png', 'png', 'fdc2cc37945aba3aa07d543eb206d667', '', '', 0, 1587112966, 1587112966, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (518, 0, '20200417_164312_99873.png', '微信截图_20200417164229.png', '', 'file', '1.65M', 1729220, '', 0, '', '/uploads/2020-04-17/20200417_164312_99873.png', 'png', 'fdc2cc37945aba3aa07d543eb206d667', '', '', 0, 1587112992, 1587112992, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (519, 0, '20200417_174024_30580.jpg', '2.jpg', '', 'file', '14.42K', 14763, '', 0, '', '/uploads/2020-04-17/20200417_174024_30580.jpg', 'jpg', '6862ada4a2eba7e83f37dd2a5d0c91dd', '', '', 0, 1587116424, 1587116424, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (520, 0, '20200417_174909_12870.jpg', 'u=277810154,3995211728&fm=11&gp=0.jpg', '', 'file', '29.43K', 30136, '', 0, '', '/uploads/2020-04-17/20200417_174909_12870.jpg', 'jpg', '88e8cfa33a40236d449cbf64edbab823', '', '', 0, 1587116949, 1587116949, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (521, 0, '20200420_095123_7916.png', 'KinectManager.png', '', 'file', '466.17K', 477357, '', 0, '', '/uploads/2020-04-20/20200420_095123_7916.png', 'png', '8214e9f9b3f850b9be8537683719584d', '', '', 0, 1587347483, 1587347483, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (522, 0, '20200420_103707_81148.png', '0B457A79BE3A7262B2C350BDD5F0CBE8.png', '', 'file', '121.51K', 124428, '', 0, '', '/uploads/2020-04-20/20200420_103707_81148.png', 'png', '0b457a79be3a7262b2c350bdd5f0cbe8', '', '', 0, 1587350227, 1587350227, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (523, 0, '20200420_103717_4512.png', 'Hololens2图形优化.png', '', 'file', '250.07K', 256070, '', 0, '', '/uploads/2020-04-20/20200420_103717_4512.png', 'png', '9dc70f01eae7b9d966404e6495166a58', '', '', 0, 1587350237, 1587350237, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (524, 0, '20200420_104104_20816.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-20/20200420_104104_20816.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1587350464, 1587350464, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (525, 0, '20200420_104822_28840.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-20/20200420_104822_28840.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1587350902, 1587350902, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (526, 0, '20200420_105359_66420.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-20/20200420_105359_66420.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1587351239, 1587351239, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (527, 0, '20200420_144324_7076.png', '719-02.png', '', 'file', '2.19M', 2296489, '', 0, '', '/uploads/2020-04-20/20200420_144324_7076.png', 'png', 'caa4a87e2efc959fc2546e39f2b9c3d1', '', '', 0, 1587365004, 1587365004, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (528, 0, '20200420_144342_6995.png', '武汉建工-01.png', '', 'file', '3.12M', 3274526, '', 0, '', '/uploads/2020-04-20/20200420_144342_6995.png', 'png', '51a9f9305dffbea272118de8bda946be', '', '', 0, 1587365022, 1587365022, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (529, 0, '20200420_144434_92609.png', '中烟-03.png', '', 'file', '1.03M', 1080526, '', 0, '', '/uploads/2020-04-20/20200420_144434_92609.png', 'png', '8a19cc9fe7d87225f68f7197d8e1efa5', '', '', 0, 1587365075, 1587365075, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (530, 0, '20200420_155853_91266.png', '航达-04.png', '', 'file', '663.02K', 678929, '', 0, '', '/uploads/2020-04-20/20200420_155853_91266.png', 'png', '089901d8f9beacddfb6df5b34dddee51', '', '', 0, 1587369533, 1587369533, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (537, 0, '20200421_103807_9300.png', '中烟-04.png', '', 'file', '2.54M', 2665701, '', 0, '', '/uploads/2020-04-21/20200421_103807_9300.png', 'png', 'ddd516e23673a6a208d8bb4c21f0e814', '', '', 0, 1587436687, 1587436687, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (538, 0, '20200421_114434_40917.jpg', '12.9.4.jpg', '', 'file', '468.64K', 479883, '', 0, '', '/uploads/2020-04-21/20200421_114434_40917.jpg', 'jpg', 'b46a698e47a8ca78032eac480096237e', '', '', 0, 1587440674, 1587440674, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (539, 0, '20200421_114544_26478.png', '4685caab-0c54-4693-80ae-c49dbcbd65db.png', '', 'file', '15.66K', 16033, '', 0, '', '/uploads/2020-04-21/20200421_114544_26478.png', 'png', '6779690285af11e23c3c321567a9ed85', '', '', 0, 1587440744, 1587440744, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (540, 0, '20200421_114553_96844.gif', '5e63fcad-0cbb-4bed-a850-e95a42fe467b.gif', '', 'file', '307.61K', 314994, '', 0, '', '/uploads/2020-04-21/20200421_114553_96844.gif', 'gif', 'ffabb13c80e69948f9ddae6600e89cd8', '', '', 0, 1587440753, 1587440753, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (541, 0, '20200421_114615_77568.png', 'c8ea95a9-168b-42aa-a7f3-3c831cf3a03b.png', '', 'file', '8.21K', 8410, '', 0, '', '/uploads/2020-04-21/20200421_114615_77568.png', 'png', 'dd64fa454116e5f89a4c788b66c6aae8', '', '', 0, 1587440775, 1587440775, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (542, 0, '20200421_114631_33068.png', '921749f1-e060-4260-9a7c-8d49bafc7bde.png', '', 'file', '73.62K', 75382, '', 0, '', '/uploads/2020-04-21/20200421_114631_33068.png', 'png', '8b310dfb72f73eb19834ce928e5f5301', '', '', 0, 1587440791, 1587440791, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (543, 0, '20200421_115347_59476.png', '0B457A79BE3A7262B2C350BDD5F0CBE8.png', '', 'file', '121.51K', 124428, '', 0, '', '/uploads/2020-04-21/20200421_115347_59476.png', 'png', '0b457a79be3a7262b2c350bdd5f0cbe8', '', '', 0, 1587441227, 1587441227, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (544, 0, '20200421_125805_24737.xlsx', '1problem.xlsx', '', 'file', '10.27K', 10518, '', 0, '', '/uploads/2020-04-21/20200421_125805_24737.xlsx', 'xlsx', '75c24957a7ddd70782c1705c65ad86c2', '', '', 0, 1587445085, 1587445085, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (546, 0, '20200422_102103_55090.png', 't01493cf0954f26376a.png', '', 'file', '382.85K', 392035, '', 0, '', '/uploads/2020-04-22/20200422_102103_55090.png', 'png', '892966a3ce8f25e1cbb4c821b9684a20', '', '', 0, 1587522063, 1587522063, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (547, 0, '20200422_102214_74156.jpg', '1935年，梅兰芳在苏联001.jpg', '', 'file', '351.63K', 360064, '', 0, '', '/uploads/2020-04-22/20200422_102214_74156.jpg', 'jpg', '94efc929812714cb1fa5ae8d7e5f522b', '', '', 0, 1587522135, 1587522135, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (551, 0, '20200422_111442_97001.jpg', '1935年，梅兰芳在苏联001.jpg', '', 'file', '351.63K', 360064, '', 0, '', '/uploads/2020-04-22/20200422_111442_97001.jpg', 'jpg', '94efc929812714cb1fa5ae8d7e5f522b', '', '', 0, 1587525282, 1587525282, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (552, 0, '20200422_141015_68350.jpg', '7.jpg', '', 'file', '27.52K', 28181, '', 0, '', '/uploads/2020-04-22/20200422_141015_68350.jpg', 'jpg', '82cdc48b0ff27358637c871f336408cc', '', '', 0, 1587535815, 1587535815, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (553, 0, '20200422_141135_92222.jpg', '3.jpg', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-04-22/20200422_141135_92222.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1587535895, 1587535895, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (554, 0, '20200422_141703_37645.jpg', '3.jpg', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-04-22/20200422_141703_37645.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1587536223, 1587536223, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (555, 0, '20200422_141721_72980.jpg', '3.jpg', '', 'file', '30.41K', 31142, '', 0, '', '/uploads/2020-04-22/20200422_141721_72980.jpg', 'jpg', '547a393aa242580582ee8b46cbe9fac7', '', '', 0, 1587536241, 1587536241, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (556, 0, '20200422_142221_15232.jpg', 'u=1197020714,1349645173&fm=11&gp=0.jpg', '', 'file', '32.53K', 33315, '', 0, '', '/uploads/2020-04-22/20200422_142221_15232.jpg', 'jpg', '320478b67fa9fbc3f0c530bc2b1c151b', '', '', 0, 1587536541, 1587536541, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (557, 0, '20200422_143235_51205.jpg', '1935年，梅兰芳在苏联001.jpg', '', 'file', '351.63K', 360064, '', 0, '', '/uploads/2020-04-22/20200422_143235_51205.jpg', 'jpg', '94efc929812714cb1fa5ae8d7e5f522b', '', '', 0, 1587537155, 1587537155, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (558, 0, '20200423_100017_38598.jpg', '1935年，梅兰芳在苏联001.jpg', '', 'file', '351.63K', 360064, '', 0, '', '/uploads/2020-04-23/20200423_100017_38598.jpg', 'jpg', '94efc929812714cb1fa5ae8d7e5f522b', '', '', 0, 1587607217, 1587607217, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (559, 0, '20200423_100623_44040.png', '袁雪芬.png', '', 'file', '156.16K', 159907, '', 0, '', '/uploads/2020-04-23/20200423_100623_44040.png', 'png', '7de0c234abff600158ec9a8fbaf02d83', '', '', 0, 1587607583, 1587607583, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (560, 0, '20200423_100754_73621.png', '尹桂芳.png', '', 'file', '106.44K', 108994, '', 0, '', '/uploads/2020-04-23/20200423_100754_73621.png', 'png', '53b5c8cb5a705686540d93d932e6cb91', '', '', 0, 1587607674, 1587607674, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (561, 0, '20200423_100958_68194.png', '范瑞娟.png', '', 'file', '139.82K', 143180, '', 0, '', '/uploads/2020-04-23/20200423_100958_68194.png', 'png', '0373df144806bd53cff93306bcb2707c', '', '', 0, 1587607798, 1587607798, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (562, 0, '20200423_101140_42477.png', '汪桂芬.png', '', 'file', '103.23K', 105704, '', 0, '', '/uploads/2020-04-23/20200423_101140_42477.png', 'png', 'bd6b7bb8a7f5eb1a2537c9e403535cf1', '', '', 0, 1587607900, 1587607900, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (563, 0, '20200423_101328_80824.png', '金少山.png', '', 'file', '83.48K', 85481, '', 0, '', '/uploads/2020-04-23/20200423_101328_80824.png', 'png', 'a3b2432a3a09d2e85650a919ff0ab699', '', '', 0, 1587608008, 1587608008, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (564, 0, '20200423_101447_12659.png', '程继先.png', '', 'file', '32.14K', 32912, '', 0, '', '/uploads/2020-04-23/20200423_101447_12659.png', 'png', '25b399ea5c774d0efaad91ec24dcb178', '', '', 0, 1587608087, 1587608087, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (565, 0, '20200423_101752_77991.png', '汪玲陔.png', '', 'file', '87.91K', 90023, '', 0, '', '/uploads/2020-04-23/20200423_101752_77991.png', 'png', '2e2aa2f29ef5947a1c513fdae0c082f8', '', '', 0, 1587608272, 1587608272, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (566, 0, '20200423_101907_86477.png', '吴昭娣.png', '', 'file', '46.64K', 47764, '', 0, '', '/uploads/2020-04-23/20200423_101907_86477.png', 'png', '923870d845d4e5ffc5853c64dec14b03', '', '', 0, 1587608347, 1587608347, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (567, 0, '20200423_102036_58872.png', '沈云陔.png', '', 'file', '105.59K', 108120, '', 0, '', '/uploads/2020-04-23/20200423_102036_58872.png', 'png', 'd8d7cf8781ae7865f698789f5f4fe7cd', '', '', 0, 1587608436, 1587608436, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (568, 0, '20200423_102431_61312.png', '越剧.png', '', 'file', '111.96K', 114646, '', 0, '', '/uploads/2020-04-23/20200423_102431_61312.png', 'png', '3cf52cb51c3364f670e0681769667dc0', '', '', 0, 1587608671, 1587608671, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (569, 0, '20200423_102811_26938.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102811_26938.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608891, 1587608891, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (570, 0, '20200423_102844_70247.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102844_70247.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608924, 1587608924, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (571, 0, '20200423_102855_37673.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102855_37673.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608935, 1587608935, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (572, 0, '20200423_102912_71449.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102912_71449.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608952, 1587608952, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (573, 0, '20200423_102913_39209.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102913_39209.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608953, 1587608953, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (574, 0, '20200423_102914_3894.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102914_3894.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608954, 1587608954, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (575, 0, '20200423_102936_29102.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_102936_29102.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587608976, 1587608976, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (576, 0, '20200423_103054_643.png', '楚剧.png', '', 'file', '133.43K', 136628, '', 0, '', '/uploads/2020-04-23/20200423_103054_643.png', 'png', '830028cbe0b0d5c797000a5343e549b9', '', '', 0, 1587609054, 1587609054, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (577, 0, '20200423_103217_87778.png', '楚剧.png', '', 'file', '133.43K', 136628, '', 0, '', '/uploads/2020-04-23/20200423_103217_87778.png', 'png', '830028cbe0b0d5c797000a5343e549b9', '', '', 0, 1587609137, 1587609137, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (578, 0, '20200423_103236_35458.png', '越剧.png', '', 'file', '111.96K', 114646, '', 0, '', '/uploads/2020-04-23/20200423_103236_35458.png', 'png', '3cf52cb51c3364f670e0681769667dc0', '', '', 0, 1587609156, 1587609156, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (579, 0, '20200423_103254_42624.png', '京剧.png', '', 'file', '111.62K', 114300, '', 0, '', '/uploads/2020-04-23/20200423_103254_42624.png', 'png', 'eea9858ae04929207ab18aff28a59607', '', '', 0, 1587609174, 1587609174, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (602, 0, '20200423_192209_68599.jpg', '220x165_0_2013082608552885566.jpg', '', 'file', '16.33K', 16720, '', 0, '', '/uploads/2020-04-23/20200423_192209_68599.jpg', 'jpg', 'ceaa3b5b1cc766ee060e21ca80878ea7', '', '', 0, 1587640929, 1587640929, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (604, 0, '20200427_115328_36681.jpg', '楚剧.jpg', '', 'file', '166.88K', 170880, '', 0, '', '/uploads/2020-04-27/20200427_115328_36681.jpg', 'jpg', 'be7a15175cb8f36e4ee604555d086b19', '', '', 0, 1587959608, 1587959608, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (605, 0, '20200427_115346_13301.jpg', '越剧.jpg', '', 'file', '64.47K', 66016, '', 0, '', '/uploads/2020-04-27/20200427_115346_13301.jpg', 'jpg', '42db9563bbe88ef6865d392b29cba7e5', '', '', 0, 1587959626, 1587959626, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (606, 0, '20200427_115442_38931.jpg', '京剧.jpg', '', 'file', '126K', 129026, '', 0, '', '/uploads/2020-04-27/20200427_115442_38931.jpg', 'jpg', 'fb6a3d2c1c2d49aa2f015b3b3872fff0', '', '', 0, 1587959682, 1587959682, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (607, 0, '20200427_115514_90679.jpg', '楚剧.jpg', '', 'file', '166.88K', 170880, '', 0, '', '/uploads/2020-04-27/20200427_115514_90679.jpg', 'jpg', 'be7a15175cb8f36e4ee604555d086b19', '', '', 0, 1587959714, 1587959714, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (608, 0, '20200427_122950_14809.png', '1.png', '', 'file', '48.52K', 49682, '', 0, '', '/uploads/2020-04-27/20200427_122950_14809.png', 'png', 'c3b40406a6735f13005832fad43c1ec5', '', '', 0, 1587961790, 1587961790, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (609, 0, '20200427_141729_26694.png', 'QQ图片20190612114617.png', '', 'file', '269.1K', 275556, '', 0, '', '/uploads/2020-04-27/20200427_141729_26694.png', 'png', '310df2ce20e390fb0baa09bb6b251f8a', '', '', 0, 1587968249, 1587968249, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (610, 0, '20200427_141746_22130.png', '1.png', '', 'file', '48.52K', 49682, '', 0, '', '/uploads/2020-04-27/20200427_141746_22130.png', 'png', 'c3b40406a6735f13005832fad43c1ec5', '', '', 0, 1587968266, 1587968266, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (611, 0, '20200427_142016_58942.png', '范瑞娟.png', '', 'file', '139.82K', 143180, '', 0, '', '/uploads/2020-04-27/20200427_142016_58942.png', 'png', '0373df144806bd53cff93306bcb2707c', '', '', 0, 1587968416, 1587968416, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (612, 0, '20200427_142026_85644.png', '袁雪芬.png', '', 'file', '156.16K', 159907, '', 0, '', '/uploads/2020-04-27/20200427_142026_85644.png', 'png', '7de0c234abff600158ec9a8fbaf02d83', '', '', 0, 1587968426, 1587968426, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (613, 0, '20200427_144054_33379.png', 'QQ图片20190612114617.png', '', 'file', '269.1K', 275556, '', 0, '', '/uploads/2020-04-27/20200427_144054_33379.png', 'png', '310df2ce20e390fb0baa09bb6b251f8a', '', '', 0, 1587969654, 1587969654, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (614, 0, '20200427_144656_2057.png', 'b1 (2).png', '', 'file', '483.5K', 495108, '', 0, '', '/uploads/2020-04-27/20200427_144656_2057.png', 'png', '614da8f576af4f1216abcea6f895b146', '', '', 0, 1587970016, 1587970016, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (615, 0, '20200427_151141_77772.png', 'b1 (3).png', '', 'file', '267.39K', 273811, '', 0, '', '/uploads/2020-04-27/20200427_151141_77772.png', 'png', '149b097cbcbf786fbf3d843e67cd06b7', '', '', 0, 1587971501, 1587971501, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (616, 0, '20200429_141337_66900.jpg', '18d8bc3eb13533fab46dd4d5afd3fd1f40345b75.jpg', '', 'file', '21.38K', 21894, '', 0, '', '/uploads/2020-04-29/20200429_141337_66900.jpg', 'jpg', '92357e81df084276253994581d5924da', '', '', 0, 1588140817, 1588140817, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (617, 0, '20200429_141839_66580.jpg', '0b55b319ebc4b745061d2d8ec6fc1e178b821598.jpg', '', 'file', '25.31K', 25922, '', 0, '', '/uploads/2020-04-29/20200429_141839_66580.jpg', 'jpg', 'a95679fb69f03ded26a965e5d737bd48', '', '', 0, 1588141119, 1588141119, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (618, 0, '20200429_155732_46849.png', '微信截图_20200429155724.png', '', 'file', '301.08K', 308302, '', 0, '', '/uploads/2020-04-29/20200429_155732_46849.png', 'png', '406dd4e96eab42fa1d58d82b54750409', '', '', 0, 1588147052, 1588147052, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (619, 0, '20200430_103740_85870.jpeg', '546def8a57b14a2f93dc4fec9eb814de.jpeg', '', 'file', '12.61K', 12914, '', 0, '', '/uploads/2020-04-30/20200430_103740_85870.jpeg', 'jpeg', '6f07d6313dc735f398120385f9a990d5', '', '', 0, 1588214260, 1588214260, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (620, 0, '20200430_110312_36234.jpg', '220x165_0_2013082308563768771.jpg', '', 'file', '10.61K', 10868, '', 0, '', '/uploads/2020-04-30/20200430_110312_36234.jpg', 'jpg', '2a9c9b390fa823ac7a71780efcd9c6b2', '', '', 0, 1588215792, 1588215792, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (621, 0, '20200430_110634_6121.jpg', '220x165_0_2013082200534749738.jpg', '', 'file', '9.11K', 9332, '', 0, '', '/uploads/2020-04-30/20200430_110634_6121.jpg', 'jpg', '1b8e17decb876cc05ed25ebd16e34712', '', '', 0, 1588215994, 1588215994, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (622, 0, '20200430_110708_3067.jpg', '220x165_0_2013091306414455139.jpg', '', 'file', '14.43K', 14781, '', 0, '', '/uploads/2020-04-30/20200430_110708_3067.jpg', 'jpg', 'bad1dd0cf08da9227631e6bf6b31c035', '', '', 0, 1588216028, 1588216028, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (623, 0, '20200430_110736_5012.jpg', '220x165_0_2013091105023733144.jpg', '', 'file', '17.17K', 17583, '', 0, '', '/uploads/2020-04-30/20200430_110736_5012.jpg', 'jpg', '9826dd9521fab422997dc71f201f5244', '', '', 0, 1588216056, 1588216056, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (624, 0, '20200430_113112_1139.jpg', '220x165_0_2013082608552885566.jpg', '', 'file', '16.33K', 16720, '', 0, '', '/uploads/2020-04-30/20200430_113112_1139.jpg', 'jpg', 'ceaa3b5b1cc766ee060e21ca80878ea7', '', '', 0, 1588217472, 1588217472, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (625, 0, '20200430_113756_95295.jpg', '220x165_0_2013091306443585529.jpg', '', 'file', '14.41K', 14756, '', 0, '', '/uploads/2020-04-30/20200430_113756_95295.jpg', 'jpg', 'a74b3f7cb767b221cab3a53bb1c80aea', '', '', 0, 1588217876, 1588217876, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (626, 0, '20200430_120717_98597.jpg', '220x165_0_2013082708584935603.jpg', '', 'file', '15.12K', 15484, '', 0, '', '/uploads/2020-04-30/20200430_120717_98597.jpg', 'jpg', '74d60547053d2e8b51c1fae1499740ff', '', '', 0, 1588219637, 1588219637, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (627, 0, '20200430_122003_19749.png', '微信截图_20200429155724.png', '', 'file', '301.08K', 308302, '', 0, '', '/uploads/2020-04-30/20200430_122003_19749.png', 'png', '406dd4e96eab42fa1d58d82b54750409', '', '', 0, 1588220403, 1588220403, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (628, 0, '20200618_150007_32796.jpg', '王文华.jpg', '', 'file', '40.16K', 41127, '', 0, '', '/uploads/2020-06-18/20200618_150007_32796.jpg', 'jpg', '6fbc8b651594c63e84e7087b0bf7a958', '', '', 0, 1592463607, 1592463607, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (634, 0, '20200622_093519_8658.jpg', '邓家琪.jpg', '', 'file', '4.74M', 4967385, '', 0, '', '/uploads/2020-06-22/20200622_093519_8658.jpg', 'jpg', 'd5dc9f2f4bc41c2f15e8aac5a1d54136', '', '', 0, 1592789720, 1592789720, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (635, 0, '20200622_093628_76729.jpg', '李金钊.jpg', '', 'file', '169.36K', 173426, '', 0, '', '/uploads/2020-06-22/20200622_093628_76729.jpg', 'jpg', '8d266da8dba79990aa7486641a632f71', '', '', 0, 1592789788, 1592789788, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (636, 0, '20200622_094252_11405.png', '1592789984(1).png', '', 'file', '600.65K', 615064, '', 0, '', '/uploads/2020-06-22/20200622_094252_11405.png', 'png', '98adf53b1a084d874a5c691e829430db', '', '', 0, 1592790172, 1592790172, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (637, 0, '20200622_101120_57637.png', '楚剧.png', '', 'file', '533.06K', 545854, '', 0, '', '/uploads/2020-06-22/20200622_101120_57637.png', 'png', 'cbeae578c097775c14c6ad3f67189540', '', '', 0, 1592791880, 1592791880, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (638, 0, '20200622_101635_25011.jpg', '《王昭君》剧照 王荔饰王昭君 (2).jpg', '', 'file', '156.64K', 160402, '', 0, '', '/uploads/2020-06-22/20200622_101635_25011.jpg', 'jpg', '7b0e07e43551b220064e6c69d0f9a80b', '', '', 0, 1592792195, 1592792195, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (639, 0, '20200622_101817_57943.jpg', '肉连响.jpg', '', 'file', '12.55M', 13158801, '', 0, '', '/uploads/2020-06-22/20200622_101817_57943.jpg', 'jpg', 'b92d4eb08a8087b9c94c0e0ac1812a5b', '', '', 0, 1592792297, 1592792297, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (640, 0, '20200622_101925_6889.jpg', '马山民歌-王兆珍.jpg', '', 'file', '8.03M', 8421883, '', 0, '', '/uploads/2020-06-22/20200622_101925_6889.jpg', 'jpg', '57117e49e42d76b67e8738093342b643', '', '', 0, 1592792365, 1592792365, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (641, 0, '20200622_102211_4907.jpg', '王文华.jpg', '', 'file', '221.65K', 226966, '', 0, '', '/uploads/2020-06-22/20200622_102211_4907.jpg', 'jpg', '0d56db14b77167cefdc3b4acf9af5a20', '', '', 0, 1592792531, 1592792531, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (655, 0, '20200622_110800_48746.png', '胡曼-头图.png', '', 'file', '238.14K', 243852, '', 0, '', '/uploads/2020-06-22/20200622_110800_48746.png', 'png', '384b04db04ddaadcd65708a58c9c3135', '', '', 0, 1592795280, 1592795280, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (656, 0, '20200622_110914_48917.png', '20191209155713_57145.png', '', 'file', '22.83K', 23378, '', 0, '', '/uploads/2020-06-22/20200622_110914_48917.png', 'png', '3813f659fe1d4cb1b1917df459b44a35', '', '', 0, 1592795354, 1592795354, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (657, 0, '20200622_110925_30310.jpg', '邓家琪.jpg', '', 'file', '33.5K', 34303, '', 0, '', '/uploads/2020-06-22/20200622_110925_30310.jpg', 'jpg', '166bb53bf2346477e898a8cb9bc80d04', '', '', 0, 1592795365, 1592795365, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (658, 0, '20200622_111251_29474.png', '微信截图_20200622110957.png', '', 'file', '66.73K', 68329, '', 0, '', '/uploads/2020-06-22/20200622_111251_29474.png', 'png', '393203b63672623860b8fd70d3f53574', '', '', 0, 1592795571, 1592795571, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (659, 0, '20200622_111456_89179.png', '2.png', '', 'file', '116.32K', 119109, '', 0, '', '/uploads/2020-06-22/20200622_111456_89179.png', 'png', '9fa2b6d4ca0433da5861752f4db24228', '', '', 0, 1592795696, 1592795696, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (672, 0, '20200622_130245_25050.jpg', '大封面-楚剧.jpg', '', 'file', '855.35K', 875883, '', 0, '', '/uploads/2020-06-22/20200622_130245_25050.jpg', 'jpg', '0254d47305cf12dd23eb5b873c614c58', '', '', 0, 1592802165, 1592802165, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (673, 0, '20200622_131610_54057.png', '微信截图_20200622131330.png', '', 'file', '191.34K', 195929, '', 0, '', '/uploads/2020-06-22/20200622_131610_54057.png', 'png', 'b5382513288d08c708f706a4307d142b', '', '', 0, 1592802970, 1592802970, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (676, 0, '20200622_133345_45972.png', '微信截图_20200622133055.png', '', 'file', '184.37K', 188794, '', 0, '', '/uploads/2020-06-22/20200622_133345_45972.png', 'png', '5b66bc77556f758f1310d59ebc4e5fdd', '', '', 0, 1592804025, 1592804025, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (677, 0, '20200622_133424_62134.png', '微信截图_20200622133142.png', '', 'file', '328.76K', 336646, '', 0, '', '/uploads/2020-06-22/20200622_133424_62134.png', 'png', 'cdbe70ed4e56a479a587f82cdbba53ce', '', '', 0, 1592804064, 1592804064, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (678, 0, '20200622_133540_15046.png', '微信截图_20200622133258.png', '', 'file', '311.08K', 318548, '', 0, '', '/uploads/2020-06-22/20200622_133540_15046.png', 'png', 'f01fdc65c2ac6496df72b7efe63d55f4', '', '', 0, 1592804140, 1592804140, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (691, 0, '20200622_140950_49732.jpg', '4c5e0d5188a4f695dabad56f5c595b72_65624cc4-9129-41d3-a03a-714dc3a0b98e.jpg', '', 'file', '34.22K', 35045, '', 0, '', '/uploads/2020-06-22/20200622_140950_49732.jpg', 'jpg', 'ec42d3e7277285a682c8758b28d0afd7', '', '', 0, 1592806190, 1592806190, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (692, 0, '20200622_141710_12048.jpg', '8bc4a37e9742d38badaa67add7673064_4f263e32-8d62-44bc-8e90-2f40c573a83e.jpg', '', 'file', '21.39K', 21900, '', 0, '', '/uploads/2020-06-22/20200622_141710_12048.jpg', 'jpg', 'ab30cca98406cdd014ad1f8752f55a90', '', '', 0, 1592806630, 1592806630, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (693, 0, '20200622_144540_32009.jpg', 'u=3988026455,4048472486&fm=15&gp=0.jpg', '', 'file', '16.17K', 16557, '', 0, '', '/uploads/2020-06-22/20200622_144540_32009.jpg', 'jpg', 'f2a7f2f9076742d520bb3e3a9180b6bf', '', '', 0, 1592808340, 1592808340, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (694, 0, '20200622_144644_13701.jpg', '1592808218(1).jpg', '', 'file', '187.91K', 192419, '', 0, '', '/uploads/2020-06-22/20200622_144644_13701.jpg', 'jpg', '9dce12dac8a71f368f715b4f98878357', '', '', 0, 1592808404, 1592808404, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (695, 0, '20200622_144901_33050.png', '999c1275-ac21-4481-b9f5-eaa8c562ff36.png', '', 'file', '76.69K', 78529, '', 0, '', '/uploads/2020-06-22/20200622_144901_33050.png', 'png', 'e465933b09721856a74c45599aae99d6', '', '', 0, 1592808541, 1592808541, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (696, 0, '20200622_144948_790.jpg', 'bcc65a50-93bd-47bc-ad95-046e5b432aad.jpg', '', 'file', '22.77K', 23318, '', 0, '', '/uploads/2020-06-22/20200622_144948_790.jpg', 'jpg', '3102042d0c9442c3f2c221beb9f18919', '', '', 0, 1592808588, 1592808588, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (697, 0, '20200622_145041_37382.png', 'f0ac995c-ac26-403b-be04-908eaac55d7a.png', '', 'file', '88.1K', 90213, '', 0, '', '/uploads/2020-06-22/20200622_145041_37382.png', 'png', 'dae11c3f974af07e364119cd0e7c409a', '', '', 0, 1592808641, 1592808641, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (698, 0, '20200622_150017_69336.png', '1.png', '', 'file', '193.02K', 197648, '', 0, '', '/uploads/2020-06-22/20200622_150017_69336.png', 'png', '9b459f09718faec63614016f7d219441', '', '', 0, 1592809217, 1592809217, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (699, 0, '20200622_150234_37975.png', '微信截图_20200622145949.png', '', 'file', '504.83K', 516948, '', 0, '', '/uploads/2020-06-22/20200622_150234_37975.png', 'png', '9eba841558facd40b0b7d1cb850866e0', '', '', 0, 1592809354, 1592809354, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (700, 0, '20200622_150309_61762.jpg', '《宇宙锋》剧照  陈伯华饰赵艳容（1980年代）  (3).jpg', '', 'file', '188.14K', 192659, '', 0, '', '/uploads/2020-06-22/20200622_150309_61762.jpg', 'jpg', 'a7d2e1ff218a901bcd1d5fd965b66338', '', '', 0, 1592809389, 1592809389, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (703, 0, '20200622_155734_27164.png', '微信截图_20200622155432.png', '', 'file', '448.88K', 459657, '', 0, '', '/uploads/2020-06-22/20200622_155734_27164.png', 'png', '5cf0c64c44e3380bc8d317a566649b15', '', '', 0, 1592812654, 1592812654, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (704, 0, '20200622_160047_91124.png', '微信截图_20200622155746.png', '', 'file', '335.41K', 343458, '', 0, '', '/uploads/2020-06-22/20200622_160047_91124.png', 'png', 'af3237004fe10c7e5f78031c9bb6c5f5', '', '', 0, 1592812847, 1592812847, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (705, 0, '20200622_160255_30058.png', '微信截图_20200622155944.png', '', 'file', '298.99K', 306169, '', 0, '', '/uploads/2020-06-22/20200622_160255_30058.png', 'png', 'e8808dc6ad7afb53f7af6c1fe89c687f', '', '', 0, 1592812975, 1592812975, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (706, 0, '20200622_160417_98384.png', '微信截图_20200622160118.png', '', 'file', '344.27K', 352534, '', 0, '', '/uploads/2020-06-22/20200622_160417_98384.png', 'png', '65f69978aa250bf328600d751d5856a3', '', '', 0, 1592813057, 1592813057, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (707, 0, '20200622_160516_1506.png', '1.png', '', 'file', '455.42K', 466345, '', 0, '', '/uploads/2020-06-22/20200622_160516_1506.png', 'png', 'd278515323ce9a5ae49fd12a4adbf8b8', '', '', 0, 1592813116, 1592813116, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (743, 0, '20200622_174817_97199.png', '微信截图_20200622174536.png', '', 'file', '436.3K', 446773, '', 0, '', '/uploads/2020-06-22/20200622_174817_97199.png', 'png', 'a7b130041ae2cb598c50b0425c15f0f9', '', '', 0, 1592819297, 1592819297, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (754, 0, '20200622_181522_49945.jpg', '肉连响.jpg', '', 'file', '12.55M', 13158801, '', 0, '', '/uploads/2020-06-22/20200622_181522_49945.jpg', 'jpg', 'b92d4eb08a8087b9c94c0e0ac1812a5b', '', '', 0, 1592820923, 1592820923, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (755, 0, '20200622_181535_69157.jpg', '马山民歌-王兆珍.jpg', '', 'file', '8.03M', 8421883, '', 0, '', '/uploads/2020-06-22/20200622_181535_69157.jpg', 'jpg', '57117e49e42d76b67e8738093342b643', '', '', 0, 1592820935, 1592820935, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (756, 0, '20200622_181550_63120.jpg', '2.jpg', '', 'file', '91.46K', 93657, '', 0, '', '/uploads/2020-06-22/20200622_181550_63120.jpg', 'jpg', 'fb78cd67ed90e46c56f8b21ed9aa19ba', '', '', 0, 1592820950, 1592820950, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (757, 0, '20200622_181727_35516.jpg', '2.jpg', '', 'file', '91.46K', 93657, '', 0, '', '/uploads/2020-06-22/20200622_181727_35516.jpg', 'jpg', 'fb78cd67ed90e46c56f8b21ed9aa19ba', '', '', 0, 1592821047, 1592821047, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (758, 0, '20200622_182551_5964.png', 'QQ截图20200622182311.png', '', 'file', '146.2K', 149709, '', 0, '', '/uploads/2020-06-22/20200622_182551_5964.png', 'png', '28dcfd0b6ea483db74e3849fb20a06c3', '', '', 0, 1592821551, 1592821551, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (759, 0, '20200622_182920_95918.png', 'QQ截图20200622182311.png', '', 'file', '146.2K', 149709, '', 0, '', '/uploads/2020-06-22/20200622_182920_95918.png', 'png', '28dcfd0b6ea483db74e3849fb20a06c3', '', '', 0, 1592821760, 1592821760, 0, 0, 113, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (760, 0, '20200622_182920_56959.mp4', '慕课-马山民歌_7.mp4', '', 'file', '167.94M', 176101820, '', 0, '', '/uploads/2020-06-22/20200622_182920_56959.mp4', 'mp4', '45af0b576cebbaa6845016e4fe22f47d', '', '', 0, 1592821761, 1592821761, 0, 0, 113, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (761, 0, '20200622_183116_54363.png', 'Hololens2硬件规格.png', '', 'file', '356.02K', 364565, '', 0, '', '/uploads/2020-06-22/20200622_183116_54363.png', 'png', '3d16a9421d4c6ef6a9b2886445cd3105', '', '', 0, 1592821876, 1592821876, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (762, 0, '20200622_183148_81318.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-22/20200622_183148_81318.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592821908, 1592821908, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (763, 0, '20200622_183148_26869.mp4', '慕课-马山民歌_9.mp4', '', 'file', '107.2M', 112412198, '', 0, '', '/uploads/2020-06-22/20200622_183148_26869.mp4', 'mp4', '1e4d34d807f1fba1395aee2f042afea2', '', '', 0, 1592821908, 1592821908, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (766, 0, '20200622_184655_7146.png', '微信截图_20200622184327.png', '', 'file', '317.97K', 325601, '', 0, '', '/uploads/2020-06-22/20200622_184655_7146.png', 'png', 'fb7c0e49edd8236864866e90e4fae16a', '', '', 0, 1592822815, 1592822815, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (767, 0, '20200622_185336_76229.png', 'QQ截图20200622185057.png', '', 'file', '282.14K', 288913, '', 0, '', '/uploads/2020-06-22/20200622_185336_76229.png', 'png', 'bafa61b1c8e4b50f0f2246db161a22c9', '', '', 0, 1592823216, 1592823216, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (771, 0, '20200622_185702_51824.png', 'QQ截图20200622185426.png', '', 'file', '248.06K', 254012, '', 0, '', '/uploads/2020-06-22/20200622_185702_51824.png', 'png', 'e0bb99543fef512f2c649e1caa4ee345', '', '', 0, 1592823422, 1592823422, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (779, 0, '20200622_191522_77723.jpg', 'cafa2579f8b466d7a820df85289a314c_u=1894181379,1241536551&fm=26&gp=0.jpg', '', 'file', '29.91K', 30626, '', 0, '', '/uploads/2020-06-22/20200622_191522_77723.jpg', 'jpg', '5096c99c1d0ef2708bbb6730700d8a0f', '', '', 0, 1592824522, 1592824522, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (780, 0, '20200622_191830_99855.jpg', '10.非遗二期-土家摆手舞（190814）.mpg_snapshot_08.12.376.jpg', '', 'file', '470.21K', 481491, '', 0, '', '/uploads/2020-06-22/20200622_191830_99855.jpg', 'jpg', 'b22c108ddb929195fe6c16a050552de3', '', '', 0, 1592824710, 1592824710, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (781, 0, '20200622_191843_49000.jpg', '10.非遗二期-土家摆手舞（190814）.mpg_snapshot_08.12.376.jpg', '', 'file', '470.21K', 481491, '', 0, '', '/uploads/2020-06-22/20200622_191843_49000.jpg', 'jpg', 'b22c108ddb929195fe6c16a050552de3', '', '', 0, 1592824723, 1592824723, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (782, 0, '20200622_191850_70818.jpg', '10.非遗二期-土家摆手舞（190814）.mpg_snapshot_08.12.376.jpg', '', 'file', '470.21K', 481491, '', 0, '', '/uploads/2020-06-22/20200622_191850_70818.jpg', 'jpg', 'b22c108ddb929195fe6c16a050552de3', '', '', 0, 1592824730, 1592824730, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (783, 0, '20200623_092227_88613.jpg', '未标题-1.jpg', '', 'file', '69.68K', 71355, '', 0, '', '/uploads/2020-06-23/20200623_092227_88613.jpg', 'jpg', '2cd7945e846991745035e3b98ea959a0', '', '', 0, 1592875347, 1592875347, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (784, 0, '20200623_092559_57263.jpg', '1cccdfc232e09e9b1a33fe27219866c9_20191209174209_67652.jpg', '', 'file', '653.69K', 669381, '', 0, '', '/uploads/2020-06-23/20200623_092559_57263.jpg', 'jpg', '60c96db614a9dd71bd937e3ae36f9dc5', '', '', 0, 1592875560, 1592875560, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (785, 0, '20200623_093326_36738.jpg', '未标题-1.jpg', '', 'file', '124.68K', 127669, '', 0, '', '/uploads/2020-06-23/20200623_093326_36738.jpg', 'jpg', '6375e0f67612e29e1c97c92d7810f72d', '', '', 0, 1592876006, 1592876006, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (786, 0, '20200623_093710_52881.jpg', 'liumengde2.jpg', '', 'file', '135.03K', 138268, '', 0, '', '/uploads/2020-06-23/20200623_093710_52881.jpg', 'jpg', '9114d66b5a1fc6c7bd7dbcae96c3a649', '', '', 0, 1592876230, 1592876230, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (787, 0, '20200623_094018_57230.jpg', 'zhouzhuojie2.jpg', '', 'file', '129.44K', 132549, '', 0, '', '/uploads/2020-06-23/20200623_094018_57230.jpg', 'jpg', 'c5157bc1b151ce1a318b843abf80b76f', '', '', 0, 1592876418, 1592876418, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (788, 0, '20200623_094038_11919.jpg', 'zhouzhenjiang2.jpg', '', 'file', '115.63K', 118402, '', 0, '', '/uploads/2020-06-23/20200623_094038_11919.jpg', 'jpg', '68dfc39da54b853941ae6878b835d634', '', '', 0, 1592876438, 1592876438, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (789, 0, '20200623_094447_71925.jpg', '廖开富1.jpg', '', 'file', '82.61K', 84592, '', 0, '', '/uploads/2020-06-23/20200623_094447_71925.jpg', 'jpg', '2591dd97a32f0027b13b2f163061b01a', '', '', 0, 1592876687, 1592876687, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (824, 0, '20200623_112922_98048.png', 'dw.png', '', 'file', '111.03K', 113690, '', 0, '', '/uploads/2020-06-23/20200623_112922_98048.png', 'png', 'a3a3ec33d5ab1012590d07c5f81369b7', '', '', 0, 1592882962, 1592882962, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (825, 0, '20200623_112937_41707.jpg', '周濯街.JPG', '', 'file', '8.91M', 9338880, '', 0, '', '/uploads/2020-06-23/20200623_112937_41707.jpg', 'jpg', 'f2d6efeed64e8024f98a90bbb385aa71', '', '', 0, 1592882977, 1592882977, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (828, 0, '20200623_113117_53685.jpg', '肉连响.jpg', '', 'file', '12.55M', 13158801, '', 0, '', '/uploads/2020-06-23/20200623_113117_53685.jpg', 'jpg', 'b92d4eb08a8087b9c94c0e0ac1812a5b', '', '', 0, 1592883078, 1592883078, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (829, 0, '20200623_115422_3956.jpg', 'liuhui2.jpg', '', 'file', '84.59K', 86617, '', 0, '', '/uploads/2020-06-23/20200623_115422_3956.jpg', 'jpg', 'b23cd97410250420acc7373fc9c918e1', '', '', 0, 1592884462, 1592884462, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (830, 0, '20200623_134716_25495.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-23/20200623_134716_25495.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592891236, 1592891236, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (831, 0, '20200623_134716_95352.mp4', '慕课-马山民歌_1.mp4', '', 'file', '161.63M', 169476564, '', 0, '', '/uploads/2020-06-23/20200623_134716_95352.mp4', 'mp4', 'fdf67747cedb765e137f485d1540fdaa', '', '', 0, 1592891237, 1592891237, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (832, 0, '20200623_135004_53855.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-23/20200623_135004_53855.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592891404, 1592891404, 0, 0, 132, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (833, 0, '20200623_135004_85228.mp4', '慕课-马山民歌_2.mp4', '', 'file', '85.83M', 90003155, '', 0, '', '/uploads/2020-06-23/20200623_135004_85228.mp4', 'mp4', '23cb5390adcb3078883bd34cac1604c7', '', '', 0, 1592891404, 1592891404, 0, 0, 132, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (834, 0, '20200623_135142_84578.mp4', '慕课-马山民歌_3.mp4', '', 'file', '134.05M', 140565484, '', 0, '', '/uploads/2020-06-23/20200623_135142_84578.mp4', 'mp4', '0e7462059f3e9742dd06a64e59425d98', '', '', 0, 1592891502, 1592891502, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (835, 0, '20200623_135228_79746.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-23/20200623_135228_79746.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592891548, 1592891548, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (836, 0, '20200623_135228_69292.mp4', '慕课-马山民歌_3.mp4', '', 'file', '134.05M', 140565484, '', 0, '', '/uploads/2020-06-23/20200623_135228_69292.mp4', 'mp4', '0e7462059f3e9742dd06a64e59425d98', '', '', 0, 1592891548, 1592891548, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (837, 0, '20200623_135349_40193.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-23/20200623_135349_40193.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592891629, 1592891629, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (838, 0, '20200623_135349_92537.mp4', '慕课-马山民歌_4.mp4', '', 'file', '76.74M', 80466604, '', 0, '', '/uploads/2020-06-23/20200623_135349_92537.mp4', 'mp4', 'c173054eef6a9f7e52f71c829c626cac', '', '', 0, 1592891630, 1592891630, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (839, 0, '20200623_135555_50384.png', ']BUD_ZBPOYZ6Q_TP$ZV(H_P.png', '', 'file', '324.49K', 332275, '', 0, '', '/uploads/2020-06-23/20200623_135555_50384.png', 'png', '91ff05afbb65ae42ee8d2e6de08f5887', '', '', 0, 1592891755, 1592891755, 0, 0, 135, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (840, 0, '20200623_135555_49742.mp4', '慕课-马山民歌_5.mp4', '', 'file', '324.79M', 340567140, '', 0, '', '/uploads/2020-06-23/20200623_135555_49742.mp4', 'mp4', '4b3bb90417cea5bcb01d14a2c980a9b2', '', '', 0, 1592891755, 1592891755, 0, 0, 135, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (841, 0, '20200623_140035_95383.jpg', '慕课-马山民歌_6_185.960.jpg', '', 'file', '156.32K', 160068, '', 0, '', '/uploads/2020-06-23/20200623_140035_95383.jpg', 'jpg', '7370b6dfe0006e7a1723ec256dd6bc31', '', '', 0, 1592892035, 1592892035, 0, 0, 136, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (842, 0, '20200623_140035_86311.mp4', '慕课-马山民歌_6_1.mp4', '', 'file', '51.01M', 53486017, '', 0, '', '/uploads/2020-06-23/20200623_140035_86311.mp4', 'mp4', '0780716f25b30613727dcebc8111eb32', '', '', 0, 1592892035, 1592892035, 0, 0, 136, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (843, 0, '20200623_140137_55571.jpg', '慕课-马山民歌_7_180.160.jpg', '', 'file', '186.85K', 191331, '', 0, '', '/uploads/2020-06-23/20200623_140137_55571.jpg', 'jpg', '1eebfedd156f4be787b02f121894ad0a', '', '', 0, 1592892097, 1592892097, 0, 0, 137, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (844, 0, '20200623_140137_98505.mp4', '慕课-马山民歌_7_1.mp4', '', 'file', '81.09M', 85023833, '', 0, '', '/uploads/2020-06-23/20200623_140137_98505.mp4', 'mp4', 'a5070bfcfac1bd9a8475d13bf43f92a6', '', '', 0, 1592892097, 1592892097, 0, 0, 137, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (845, 0, '20200623_140421_3638.jpg', '慕课-马山民歌_1_1141.400.jpg', '', 'file', '122.38K', 125315, '', 0, '', '/uploads/2020-06-23/20200623_140421_3638.jpg', 'jpg', '9783fd660dbe501094bad23f4bc0838f', '', '', 0, 1592892261, 1592892261, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (846, 0, '20200623_140437_67424.jpg', '慕课-马山民歌_3_180.840.jpg', '', 'file', '108.72K', 111330, '', 0, '', '/uploads/2020-06-23/20200623_140437_67424.jpg', 'jpg', '6fddf5e1773cbbd5e1ebf1d58c7749d2', '', '', 0, 1592892277, 1592892277, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (847, 0, '20200623_140452_93709.jpg', '慕课-马山民歌_4_194.480.jpg', '', 'file', '186.08K', 190543, '', 0, '', '/uploads/2020-06-23/20200623_140452_93709.jpg', 'jpg', 'e13a00c5e706b32f701c780c9dea6c10', '', '', 0, 1592892292, 1592892292, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (848, 0, '20200623_140659_85321.jpg', '慕课-马山民歌_5_1108.560.jpg', '', 'file', '119.21K', 122076, '', 0, '', '/uploads/2020-06-23/20200623_140659_85321.jpg', 'jpg', '444b19b45e99b5d8aca32807874feae4', '', '', 0, 1592892419, 1592892419, 0, 0, 135, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (849, 0, '20200623_140747_11767.jpg', '慕课-马山民歌_9_174.800.jpg', '', 'file', '122.12K', 125049, '', 0, '', '/uploads/2020-06-23/20200623_140747_11767.jpg', 'jpg', 'cca2c5bf3145873bb755b43a79a98cee', '', '', 0, 1592892467, 1592892467, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (850, 0, '20200623_140817_241.jpg', '慕课-马山民歌_2_156.480.jpg', '', 'file', '173.24K', 177402, '', 0, '', '/uploads/2020-06-23/20200623_140817_241.jpg', 'jpg', 'fd931383cfbeb09022b118595fbdc797', '', '', 0, 1592892497, 1592892497, 0, 0, 132, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (851, 0, '20200623_143123_84576.jpg', '未标题-1.jpg', '', 'file', '378.17K', 387248, '', 0, '', '/uploads/2020-06-23/20200623_143123_84576.jpg', 'jpg', 'ae4badabf731093eb7755c2b243ad966', '', '', 0, 1592893883, 1592893883, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (852, 0, '20200623_144643_16181.jpg', '慕课-马山民歌_7_180.160.jpg', '', 'file', '1.07M', 1122824, '', 0, '', '/uploads/2020-06-23/20200623_144643_16181.jpg', 'jpg', '5202353e7872b3bf86f80417d35cbf1e', '', '', 0, 1592894803, 1592894803, 0, 0, 113, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (853, 0, '20200623_144656_65149.jpg', '慕课-马山民歌_9_174.800.jpg', '', 'file', '720.83K', 738130, '', 0, '', '/uploads/2020-06-23/20200623_144656_65149.jpg', 'jpg', '8217eae03d0e6cc4e540d111c98231f2', '', '', 0, 1592894816, 1592894816, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (854, 0, '20200623_144707_71706.jpg', '慕课-马山民歌_1_1141.400.jpg', '', 'file', '725.25K', 742660, '', 0, '', '/uploads/2020-06-23/20200623_144707_71706.jpg', 'jpg', '33254b3be21f0b21b9670c672645c67a', '', '', 0, 1592894827, 1592894827, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (855, 0, '20200623_144719_64444.jpg', '慕课-马山民歌_3_180.840.jpg', '', 'file', '578.3K', 592181, '', 0, '', '/uploads/2020-06-23/20200623_144719_64444.jpg', 'jpg', 'd67440d1895fdab97a8b97f228edb56e', '', '', 0, 1592894839, 1592894839, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (856, 0, '20200623_144741_59912.jpg', '慕课-马山民歌_2_156.480.jpg', '', 'file', '989.99K', 1013746, '', 0, '', '/uploads/2020-06-23/20200623_144741_59912.jpg', 'jpg', '2e2b0899a6e5815502753d195ca1fbe4', '', '', 0, 1592894861, 1592894861, 0, 0, 132, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (857, 0, '20200623_144753_39282.jpg', '慕课-马山民歌_4_194.480.jpg', '', 'file', '1.07M', 1117335, '', 0, '', '/uploads/2020-06-23/20200623_144753_39282.jpg', 'jpg', '9d2e3224e53f482fa0285fad2e81bfb4', '', '', 0, 1592894873, 1592894873, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (858, 0, '20200623_144822_33360.jpg', '慕课-马山民歌_5_1108.560.jpg', '', 'file', '692.07K', 708680, '', 0, '', '/uploads/2020-06-23/20200623_144822_33360.jpg', 'jpg', '858e1e4400f3ffb10a2e0e4d42062503', '', '', 0, 1592894902, 1592894902, 0, 0, 135, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (859, 0, '20200623_144843_15639.jpg', '慕课-马山民歌_6_185.960.jpg', '', 'file', '850.36K', 870764, '', 0, '', '/uploads/2020-06-23/20200623_144843_15639.jpg', 'jpg', 'f543e5d11cc0ef80361b38585f632145', '', '', 0, 1592894923, 1592894923, 0, 0, 136, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (860, 0, '20200623_144900_92144.jpg', '慕课-马山民歌_7_180.160.jpg', '', 'file', '1.07M', 1122824, '', 0, '', '/uploads/2020-06-23/20200623_144900_92144.jpg', 'jpg', '5202353e7872b3bf86f80417d35cbf1e', '', '', 0, 1592894940, 1592894940, 0, 0, 137, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (861, 0, '20200623_145200_87220.jpg', '慕课-马山民歌_10_1222.040.jpg', '', 'file', '843.25K', 863489, '', 0, '', '/uploads/2020-06-23/20200623_145200_87220.jpg', 'jpg', 'a1fa8b52bcc266cb90dcd3037d55e1e2', '', '', 0, 1592895120, 1592895120, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (863, 0, '20200623_150420_34807.jpg', '慕课-马山民歌_7_180.160.jpg', '', 'file', '936.57K', 959052, '', 0, '', '/uploads/2020-06-23/20200623_150420_34807.jpg', 'jpg', 'aba45cbd604a5caa3ff685049e7b48af', '', '', 0, 1592895860, 1592895860, 0, 0, 113, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (864, 0, '20200623_150441_95899.jpg', '慕课-马山民歌_9_174.800.jpg', '', 'file', '636.57K', 651850, '', 0, '', '/uploads/2020-06-23/20200623_150441_95899.jpg', 'jpg', '4af5927a325851ea6efae8cc0676768d', '', '', 0, 1592895881, 1592895881, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (865, 0, '20200623_150524_33373.jpg', '慕课-马山民歌_1_1141.400.jpg', '', 'file', '639.09K', 654431, '', 0, '', '/uploads/2020-06-23/20200623_150524_33373.jpg', 'jpg', '95d8620e8447a45e93750da6d5f7cbd6', '', '', 0, 1592895924, 1592895924, 0, 0, 131, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (866, 0, '20200623_150652_7515.jpg', '慕课-马山民歌_3_180.840.jpg', '', 'file', '495.01K', 506894, '', 0, '', '/uploads/2020-06-23/20200623_150652_7515.jpg', 'jpg', 'e23038118f2914bc7ea3e136e6200f48', '', '', 0, 1592896012, 1592896012, 0, 0, 133, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (867, 0, '20200623_150712_21925.jpg', '慕课-马山民歌_2_156.480.jpg', '', 'file', '877.66K', 898723, '', 0, '', '/uploads/2020-06-23/20200623_150712_21925.jpg', 'jpg', '20de3c7b32c2a66595ff656efc4f16b4', '', '', 0, 1592896032, 1592896032, 0, 0, 132, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (868, 0, '20200623_150741_93969.jpg', '慕课-马山民歌_5_1108.560.jpg', '', 'file', '616.55K', 631350, '', 0, '', '/uploads/2020-06-23/20200623_150741_93969.jpg', 'jpg', '0c2ad51601a8da2c594e6229208e31dd', '', '', 0, 1592896061, 1592896061, 0, 0, 135, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (869, 0, '20200623_150803_15902.jpg', '慕课-马山民歌_6_185.960.jpg', '', 'file', '758.76K', 776972, '', 0, '', '/uploads/2020-06-23/20200623_150803_15902.jpg', 'jpg', '4de6e8131b990e3bfcc3435002ff8d4a', '', '', 0, 1592896083, 1592896083, 0, 0, 136, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (870, 0, '20200623_150818_78343.jpg', '慕课-马山民歌_7_180.160.jpg', '', 'file', '936.57K', 959052, '', 0, '', '/uploads/2020-06-23/20200623_150818_78343.jpg', 'jpg', 'aba45cbd604a5caa3ff685049e7b48af', '', '', 0, 1592896098, 1592896098, 0, 0, 137, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (871, 0, '20200623_150902_53841.jpg', '慕课-马山民歌_4_194.480.jpg', '', 'file', '933.67K', 956073, '', 0, '', '/uploads/2020-06-23/20200623_150902_53841.jpg', 'jpg', '5eaf2c6da01bf0ce97bbe68c31e79b67', '', '', 0, 1592896142, 1592896142, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (878, 0, '20200623_163154_60857.png', 'QQ截图20200623162742.png', '', 'file', '355.3K', 363827, '', 0, '', '/uploads/2020-06-23/20200623_163154_60857.png', 'png', 'c37ab21d82996669332b32c3c03d4a09', '', '', 0, 1592901114, 1592901114, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (879, 0, '20200623_163344_89977.png', 'QQ截图20200623163004.png', '', 'file', '242.63K', 248449, '', 0, '', '/uploads/2020-06-23/20200623_163344_89977.png', 'png', 'c13d87d4a845dbdb25aafa554157ab0c', '', '', 0, 1592901224, 1592901224, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (880, 0, '20200623_163426_98699.png', 'QQ截图20200623163004.png', '', 'file', '217.34K', 222554, '', 0, '', '/uploads/2020-06-23/20200623_163426_98699.png', 'png', '8e4c35bbc73d20bab193d2bb10f3cf85', '', '', 0, 1592901266, 1592901266, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (885, 0, '20200623_164219_24611.jpg', 'IMG_7480.jpg', '', 'file', '6.34M', 6644843, '', 0, '', '/uploads/2020-06-23/20200623_164219_24611.jpg', 'jpg', '71180a03cd893b7ff3de982cc84d00d0', '', '', 0, 1592901740, 1592901740, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (886, 0, '20200623_164732_31607.jpg', '1.jpg', '', 'file', '51.31K', 52538, '', 0, '', '/uploads/2020-06-23/20200623_164732_31607.jpg', 'jpg', '1bd17f403314ec029f7560a8e65c5bab', '', '', 0, 1592902052, 1592902052, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (887, 0, '20200623_164801_77500.jpg', 'IMG_7480.jpg', '', 'file', '5.58M', 5851601, '', 0, '', '/uploads/2020-06-23/20200623_164801_77500.jpg', 'jpg', '9f5683e0e23a29e7e899d01fa7097d86', '', '', 0, 1592902082, 1592902082, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (888, 0, '20200623_172256_69257.png', '微信截图_20200622174536.png', '', 'file', '436.3K', 446773, '', 0, '', '/uploads/2020-06-23/20200623_172256_69257.png', 'png', 'a7b130041ae2cb598c50b0425c15f0f9', '', '', 0, 1592904176, 1592904176, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (889, 0, '20200624_101751_80138.png', '微信截图_20200622174536.png', '', 'file', '436.3K', 446773, '', 0, '', '/uploads/2020-06-24/20200624_101751_80138.png', 'png', 'a7b130041ae2cb598c50b0425c15f0f9', '', '', 0, 1592965071, 1592965071, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (890, 0, '20200624_102236_6324.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_102236_6324.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965356, 1592965356, 0, 0, 138, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (891, 0, '20200624_102236_47384.mp4', '02.3服装特点_1_1.mp4', '', 'file', '104.4M', 109469774, '', 0, '', '/uploads/2020-06-24/20200624_102236_47384.mp4', 'mp4', '428a67b2c852d4cbd5fe16629b2e8477', '', '', 0, 1592965357, 1592965357, 0, 0, 138, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (892, 0, '20200624_102427_27972.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_102427_27972.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965467, 1592965467, 0, 0, 139, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (893, 0, '20200624_102427_98741.mp4', '02.4.00招式特点及技巧特点_1_1.mp4', '', 'file', '276.54M', 289973710, '', 0, '', '/uploads/2020-06-24/20200624_102427_98741.mp4', 'mp4', '0fdc44a1a1663d74d1e07b3219a4c559', '', '', 0, 1592965468, 1592965468, 0, 0, 139, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (894, 0, '20200624_102848_26126.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_102848_26126.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965728, 1592965728, 0, 0, 140, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (895, 0, '20200624_102848_13019.mp4', '03.1肉连响全套_1_1.mp4', '', 'file', '110.94M', 116330960, '', 0, '', '/uploads/2020-06-24/20200624_102848_13019.mp4', 'mp4', '4d9458f16ac46d80d38375abdd60b1e8', '', '', 0, 1592965728, 1592965728, 0, 0, 140, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (896, 0, '20200624_102955_25959.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_102955_25959.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965795, 1592965795, 0, 0, 141, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (897, 0, '20200624_102955_6295.mp4', '03.mp4', '', 'file', '60.57M', 63516566, '', 0, '', '/uploads/2020-06-24/20200624_102955_6295.mp4', 'mp4', 'b00fd79fea4790449df6fcce715845c1', '', '', 0, 1592965795, 1592965795, 0, 0, 141, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (898, 0, '20200624_103104_78286.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_103104_78286.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965864, 1592965864, 0, 0, 142, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (899, 0, '20200624_103104_29500.mp4', '03.2女生单打_1.mp4', '', 'file', '40.97M', 42962332, '', 0, '', '/uploads/2020-06-24/20200624_103104_29500.mp4', 'mp4', 'b4fcb6798039d8a40727aecb3c60e98c', '', '', 0, 1592965864, 1592965864, 0, 0, 142, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (900, 0, '20200624_103301_63698.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_103301_63698.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592965982, 1592965982, 0, 0, 143, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (901, 0, '20200624_103302_65319.mp4', '03.4无配乐多人_1.mp4', '', 'file', '61.14M', 64114981, '', 0, '', '/uploads/2020-06-24/20200624_103302_65319.mp4', 'mp4', 'f403e2d1486cf9588ace869b8bf260f5', '', '', 0, 1592965982, 1592965982, 0, 0, 143, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (902, 0, '20200624_103402_1603.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_103402_1603.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966042, 1592966042, 0, 0, 144, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (903, 0, '20200624_103402_33158.mp4', '03.5击鼓多人_1.mp4', '', 'file', '109.38M', 114696072, '', 0, '', '/uploads/2020-06-24/20200624_103402_33158.mp4', 'mp4', 'c16bb57b8f63f74d64bbfd505e9e63f7', '', '', 0, 1592966043, 1592966043, 0, 0, 144, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (904, 0, '20200624_103648_4814.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_103648_4814.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966208, 1592966208, 0, 0, 145, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (905, 0, '20200624_103648_11721.mp4', '04.1十打_1.mp4', '', 'file', '157.9M', 165574846, '', 0, '', '/uploads/2020-06-24/20200624_103648_11721.mp4', 'mp4', '624e631c188a8b3e9d0e9811bfddc808', '', '', 0, 1592966209, 1592966209, 0, 0, 145, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (906, 0, '20200624_103804_293.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_103804_293.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966284, 1592966284, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (907, 0, '20200624_104016_42019.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104016_42019.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966416, 1592966416, 0, 0, 146, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (908, 0, '20200624_104016_9572.mp4', '04.2颤步拍身_1.mp4', '', 'file', '119.39M', 125188178, '', 0, '', '/uploads/2020-06-24/20200624_104016_9572.mp4', 'mp4', 'b2e1486a436621667f50ad3746971446', '', '', 0, 1592966416, 1592966416, 0, 0, 146, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (909, 0, '20200624_104219_38730.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104219_38730.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966539, 1592966539, 0, 0, 147, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (910, 0, '20200624_104219_70102.mp4', '04.3弹指弹舌及秧歌步_1.mp4', '', 'file', '94.39M', 98979467, '', 0, '', '/uploads/2020-06-24/20200624_104219_70102.mp4', 'mp4', '4d048459f0dc5d009375553bcee76d96', '', '', 0, 1592966539, 1592966539, 0, 0, 147, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (911, 0, '20200624_104309_45971.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104309_45971.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966590, 1592966590, 0, 0, 148, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (912, 0, '20200624_104310_1151.mp4', '04.4十六响_1.mp4', '', 'file', '59.17M', 62043030, '', 0, '', '/uploads/2020-06-24/20200624_104310_1151.mp4', 'mp4', '2e4ce2ae265c010aab6d6e4ce7fb427c', '', '', 0, 1592966590, 1592966590, 0, 0, 148, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (913, 0, '20200624_104421_81790.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104421_81790.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966661, 1592966661, 0, 0, 149, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (914, 0, '20200624_104421_60649.mp4', '04.5三响_1.mp4', '', 'file', '163.82M', 171781416, '', 0, '', '/uploads/2020-06-24/20200624_104421_60649.mp4', 'mp4', '4bff5eb7aa2719aac726a4dbd60706be', '', '', 0, 1592966661, 1592966661, 0, 0, 149, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (915, 0, '20200624_104530_91479.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104530_91479.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966730, 1592966730, 0, 0, 150, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (916, 0, '20200624_104530_94802.mp4', '04.6七响_1.mp4', '', 'file', '130.77M', 137125810, '', 0, '', '/uploads/2020-06-24/20200624_104530_94802.mp4', 'mp4', '874d59ae70cc23fd16a5f8a1b88193d7', '', '', 0, 1592966730, 1592966730, 0, 0, 150, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (917, 0, '20200624_104708_95792.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104708_95792.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966828, 1592966828, 0, 0, 151, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (918, 0, '20200624_104708_79907.mp4', '04.7穿掌吸腿跳_1.mp4', '', 'file', '144.9M', 151936293, '', 0, '', '/uploads/2020-06-24/20200624_104708_79907.mp4', 'mp4', 'b1764771232754c1458f9ef33d36d83b', '', '', 0, 1592966828, 1592966828, 0, 0, 151, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (919, 0, '20200624_104801_12263.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104801_12263.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966882, 1592966882, 0, 0, 152, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (920, 0, '20200624_104802_4934.mp4', '04.8 对打_1.mp4', '', 'file', '104.92M', 110016301, '', 0, '', '/uploads/2020-06-24/20200624_104802_4934.mp4', 'mp4', 'd7f95a3dafca526c3dfa95ef88d0892c', '', '', 0, 1592966882, 1592966882, 0, 0, 152, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (921, 0, '20200624_104843_35536.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_104843_35536.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592966923, 1592966923, 0, 0, 153, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (922, 0, '20200624_104843_955.mp4', '04.9双打单面_1.mp4', '', 'file', '103.97M', 109020675, '', 0, '', '/uploads/2020-06-24/20200624_104843_955.mp4', 'mp4', '4ba0951358d3b78b59bd8e8e178c5326', '', '', 0, 1592966923, 1592966923, 0, 0, 153, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (923, 0, '20200624_105006_5394.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_105006_5394.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592967006, 1592967006, 0, 0, 154, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (924, 0, '20200624_105006_78796.mp4', '01.1泥神道与巴人舞_1_1.mp4', '', 'file', '169.81M', 178057256, '', 0, '', '/uploads/2020-06-24/20200624_105006_78796.mp4', 'mp4', '83555089c13e62a2f1dc488c92b14f76', '', '', 0, 1592967007, 1592967007, 0, 0, 154, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (925, 0, '20200624_105052_22880.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_105052_22880.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592967052, 1592967052, 0, 0, 155, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (926, 0, '20200624_105052_16766.mp4', '01.2肉连响的定名_1_1.mp4', '', 'file', '103.89M', 108938890, '', 0, '', '/uploads/2020-06-24/20200624_105052_16766.mp4', 'mp4', 'd68ebb061cd2d73d2d59230de706b8c7', '', '', 0, 1592967052, 1592967052, 0, 0, 155, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (927, 0, '20200624_105407_94432.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_105407_94432.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592967247, 1592967247, 0, 0, 156, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (928, 0, '20200624_105407_86563.mp4', '02.1艺术特征_1_1.mp4', '', 'file', '135.27M', 141840364, '', 0, '', '/uploads/2020-06-24/20200624_105407_86563.mp4', 'mp4', '866b8eea6e612364aa401bb47041c322', '', '', 0, 1592967248, 1592967248, 0, 0, 156, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (929, 0, '20200624_110209_34279.jpg', '00前言_1_119.400.jpg', '', 'file', '670.1K', 686185, '', 0, '', '/uploads/2020-06-24/20200624_110209_34279.jpg', 'jpg', '1716ccaa75eb8fb08849de4acd38ad5f', '', '', 0, 1592967729, 1592967729, 0, 0, 157, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (930, 0, '20200624_110209_55047.mp4', '02.2.文化内涵mp4_1_1.mp4', '', 'file', '231.69M', 242939991, '', 0, '', '/uploads/2020-06-24/20200624_110209_55047.mp4', 'mp4', 'f9c70bae10ac7d8ea7ceadec21291e9e', '', '', 0, 1592967729, 1592967729, 0, 0, 157, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (931, 0, '20200624_110733_73323.png', '2.1SUNHUI.png', '', 'file', '607.22K', 621791, '', 0, '', '/uploads/2020-06-24/20200624_110733_73323.png', 'png', '4089282eaf10cf7ad7eb13a8dd002a1d', '', '', 0, 1592968053, 1592968053, 0, 0, 138, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (932, 0, '20200624_110748_66156.jpg', '3.4.jpg', '', 'file', '572.6K', 586339, '', 0, '', '/uploads/2020-06-24/20200624_110748_66156.jpg', 'jpg', '2b6c2567d941ba246897a0f62aa4e1ed', '', '', 0, 1592968068, 1592968068, 0, 0, 140, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (933, 0, '20200624_110810_82336.jpg', '4.1.jpg', '', 'file', '423.82K', 433988, '', 0, '', '/uploads/2020-06-24/20200624_110810_82336.jpg', 'jpg', 'd05011799f0cd6d445198d41fdf9d226', '', '', 0, 1592968090, 1592968090, 0, 0, 145, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (934, 0, '20200624_110827_26255.jpg', '4.2.jpg', '', 'file', '399.99K', 409589, '', 0, '', '/uploads/2020-06-24/20200624_110827_26255.jpg', 'jpg', '7dbdec9acba58b18c904afce8272cccc', '', '', 0, 1592968107, 1592968107, 0, 0, 146, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (935, 0, '20200624_110852_90388.jpg', '1tan.jpg', '', 'file', '498.96K', 510936, '', 0, '', '/uploads/2020-06-24/20200624_110852_90388.jpg', 'jpg', 'd751480ee191e6ed0a2c7424b97b070d', '', '', 0, 1592968132, 1592968132, 0, 0, 154, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (936, 0, '20200624_110918_4434.jpg', '2.4.jpg', '', 'file', '335.96K', 344021, '', 0, '', '/uploads/2020-06-24/20200624_110918_4434.jpg', 'jpg', 'a4cf3785ac1ab6077f325b87eec09767', '', '', 0, 1592968158, 1592968158, 0, 0, 139, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (937, 0, '20200624_110944_21874.jpg', '3男生单打.jpg', '', 'file', '334.55K', 342577, '', 0, '', '/uploads/2020-06-24/20200624_110944_21874.jpg', 'jpg', 'd41ea624bcdb9ab6e49ff7ac557e96e4', '', '', 0, 1592968184, 1592968184, 0, 0, 141, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (938, 0, '20200624_111003_63002.png', '1.png', '', 'file', '684.58K', 701011, '', 0, '', '/uploads/2020-06-24/20200624_111003_63002.png', 'png', '854ee04ada73aa1e432b463eb5be17b3', '', '', 0, 1592968204, 1592968204, 0, 0, 155, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (939, 0, '20200624_111018_11800.jpg', '4.3.jpg', '', 'file', '395.63K', 405130, '', 0, '', '/uploads/2020-06-24/20200624_111018_11800.jpg', 'jpg', '08fb3f29681b7e253d6776c50564c0d7', '', '', 0, 1592968218, 1592968218, 0, 0, 147, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (940, 0, '20200624_111035_96902.jpg', '3.2.jpg', '', 'file', '402.07K', 411716, '', 0, '', '/uploads/2020-06-24/20200624_111035_96902.jpg', 'jpg', '08f8ec0c11448380b1ec2c0104174344', '', '', 0, 1592968235, 1592968235, 0, 0, 142, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (941, 0, '20200624_111107_89899.jpg', '3.5.jpg', '', 'file', '565.31K', 578874, '', 0, '', '/uploads/2020-06-24/20200624_111107_89899.jpg', 'jpg', '0253f53b1a8305d3f20b9f1bceeb02ea', '', '', 0, 1592968267, 1592968267, 0, 0, 156, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (942, 0, '20200624_111120_50343.jpg', '4.4.jpg', '', 'file', '410.65K', 420510, '', 0, '', '/uploads/2020-06-24/20200624_111120_50343.jpg', 'jpg', '2c15eddfab127ad90d80e20a8660db72', '', '', 0, 1592968280, 1592968280, 0, 0, 148, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (943, 0, '20200624_111132_30286.jpg', '4.5.jpg', '', 'file', '407.49K', 417265, '', 0, '', '/uploads/2020-06-24/20200624_111132_30286.jpg', 'jpg', 'b99b73a1db96c74bd8ab0b48f26a2476', '', '', 0, 1592968292, 1592968292, 0, 0, 149, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (944, 0, '20200624_111148_6820.jpg', '3.4.jpg', '', 'file', '572.6K', 586339, '', 0, '', '/uploads/2020-06-24/20200624_111148_6820.jpg', 'jpg', '2b6c2567d941ba246897a0f62aa4e1ed', '', '', 0, 1592968308, 1592968308, 0, 0, 143, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (945, 0, '20200624_111206_73953.jpg', '3.5.jpg', '', 'file', '565.31K', 578874, '', 0, '', '/uploads/2020-06-24/20200624_111206_73953.jpg', 'jpg', '0253f53b1a8305d3f20b9f1bceeb02ea', '', '', 0, 1592968326, 1592968326, 0, 0, 144, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (946, 0, '20200624_111218_95281.jpg', '4.6.jpg', '', 'file', '328.88K', 336771, '', 0, '', '/uploads/2020-06-24/20200624_111218_95281.jpg', 'jpg', '8d42aec55df5bd2984c8652be5465351', '', '', 0, 1592968338, 1592968338, 0, 0, 150, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (947, 0, '20200624_111230_13123.jpg', '1.1tan.jpg', '', 'file', '330.82K', 338756, '', 0, '', '/uploads/2020-06-24/20200624_111230_13123.jpg', 'jpg', 'fc61b37b1467f8f09ebac8210a582789', '', '', 0, 1592968350, 1592968350, 0, 0, 157, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (948, 0, '20200624_111244_96245.png', '4.7.png', '', 'file', '392.14K', 401548, '', 0, '', '/uploads/2020-06-24/20200624_111244_96245.png', 'png', '544a7f266e234a20c4440c7381da4ec2', '', '', 0, 1592968364, 1592968364, 0, 0, 151, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (949, 0, '20200624_111258_66074.jpg', '4.8.jpg', '', 'file', '322.42K', 330162, '', 0, '', '/uploads/2020-06-24/20200624_111258_66074.jpg', 'jpg', 'e28ae4621ca8e0bb76b64e9247a066a3', '', '', 0, 1592968378, 1592968378, 0, 0, 152, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (950, 0, '20200624_111309_11880.jpg', '4.9.jpg', '', 'file', '327.18K', 335037, '', 0, '', '/uploads/2020-06-24/20200624_111309_11880.jpg', 'jpg', '2b300161305d8e8f553787f334d0914d', '', '', 0, 1592968389, 1592968389, 0, 0, 153, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (951, 0, '20200624_133719_52815.jpg', 'liuhui2.jpg', '', 'file', '84.59K', 86617, '', 0, '', '/uploads/2020-06-24/20200624_133719_52815.jpg', 'jpg', 'b23cd97410250420acc7373fc9c918e1', '', '', 0, 1592977039, 1592977039, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (954, 0, '20200624_140108_11285.png', '微信截图_20200623094039.png', '', 'file', '595.24K', 609525, '', 0, '', '/uploads/2020-06-24/20200624_140108_11285.png', 'png', 'd34f5eaab9f4e199df9f9e5223581455', '', '', 0, 1592978468, 1592978468, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (956, 0, '20200624_140632_46999.png', '微信截图_20200622174536.png', '', 'file', '320.06K', 327738, '', 0, '', '/uploads/2020-06-24/20200624_140632_46999.png', 'png', '5b424ec93592e8fa5dd389989b47c743', '', '', 0, 1592978792, 1592978792, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (957, 0, '20200624_141343_96729.png', '微信截图_20200624140955.png', '', 'file', '560.63K', 574080, '', 0, '', '/uploads/2020-06-24/20200624_141343_96729.png', 'png', '0953fb7b27dfb842c08bb78811435e0e', '', '', 0, 1592979224, 1592979224, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (958, 0, '20200624_153341_85046.jpg', '慕课-马山民歌_9_174.800.jpg', '', 'file', '636.57K', 651850, '', 0, '', '/uploads/2020-06-24/20200624_153341_85046.jpg', 'jpg', '4af5927a325851ea6efae8cc0676768d', '', '', 0, 1592984021, 1592984021, 0, 0, 159, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (959, 0, '20200624_153341_16919.mp4', '慕课-马山民歌_9_1.mp4', '', 'file', '53M', 55570972, '', 0, '', '/uploads/2020-06-24/20200624_153341_16919.mp4', 'mp4', '88ce9ed0da19ebf7e81031c741219f99', '', '', 0, 1592984021, 1592984021, 0, 0, 159, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (960, 0, '20200624_153518_5489.jpg', '慕课-马山民歌_2_156.480.jpg', '', 'file', '877.66K', 898723, '', 0, '', '/uploads/2020-06-24/20200624_153518_5489.jpg', 'jpg', '20de3c7b32c2a66595ff656efc4f16b4', '', '', 0, 1592984118, 1592984118, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (961, 0, '20200624_154922_34105.jpg', '2017年10月23日_9413 (14).JPG', '', 'file', '7.16M', 7503456, '', 0, '', '/uploads/2020-06-24/20200624_154922_34105.jpg', 'jpg', 'c964c3beb50daf03033ebc9d8b71a579', '', '', 0, 1592984962, 1592984962, 0, 0, 159, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (962, 0, '20200624_155255_31080.jpg', '5.jpg', '', 'file', '98.69K', 101061, '', 0, '', '/uploads/2020-06-24/20200624_155255_31080.jpg', 'jpg', '73a9930729f1d225b6b33d306a9fcf6a', '', '', 0, 1592985175, 1592985175, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (963, 0, '20200624_155513_5922.jpg', '慕课-马山民歌_2_156.480.jpg', '', 'file', '877.66K', 898723, '', 0, '', '/uploads/2020-06-24/20200624_155513_5922.jpg', 'jpg', '20de3c7b32c2a66595ff656efc4f16b4', '', '', 0, 1592985313, 1592985313, 0, 0, 134, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (964, 0, '20200624_160944_94241.jpg', '2017年10月23日_9413 (14).JPG', '', 'file', '7.16M', 7503456, '', 0, '', '/uploads/2020-06-24/20200624_160944_94241.jpg', 'jpg', 'c964c3beb50daf03033ebc9d8b71a579', '', '', 0, 1592986184, 1592986184, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (965, 0, '20200624_162809_37217.jpg', 'a9ee4115b47b0c2472dc483f506c073.jpg', '', 'file', '134.69K', 137921, '', 0, '', '/uploads/2020-06-24/20200624_162809_37217.jpg', 'jpg', '43406fcb2a846be6c7d03c57cc5aef93', '', '', 0, 1592987289, 1592987289, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (966, 0, '20200624_164528_90255.jpg', 'cecdefe5e881ef022e14ce2b6ac0c0d.jpg', '', 'file', '161.31K', 165186, '', 0, '', '/uploads/2020-06-24/20200624_164528_90255.jpg', 'jpg', 'b52414d5f92dec95cb971c380ab01db2', '', '', 0, 1592988328, 1592988328, 0, 0, 0, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (967, 0, '20200624_174846_33168.mp4', '慕课-马山民歌_10_1.mp4', '', 'file', '78.21M', 82011702, '', 0, '', '/uploads/2020-06-24/20200624_174846_33168.mp4', 'mp4', '6f97b6839d4ddde65c06352707e87ba1', '', '', 0, 1592992126, 1592992126, 0, 0, 114, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (968, 0, '20200624_175335_31512.mp4', '慕课-马山民歌_8_1.mp4', '', 'file', '224.63M', 235538345, '', 0, '', '/uploads/2020-06-24/20200624_175335_31512.mp4', 'mp4', 'd495b8e2e77ffc879bfcc9d2923f2294', '', '', 0, 1592992415, 1592992415, 0, 0, 113, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (969, 0, '20200624_180223_34393.jpg', '慕课-马山民歌_9_174.800.jpg', '', 'file', '122.12K', 125049, '', 0, '', '/uploads/2020-06-24/20200624_180223_34393.jpg', 'jpg', 'cca2c5bf3145873bb755b43a79a98cee', '', '', 0, 1592992943, 1592992943, 0, 0, 160, 1, '');
INSERT INTO `ifar_admin_upload` VALUES (970, 0, '20200624_180223_76011.mp4', '慕课-马山民歌_9_1.mp4', '', 'file', '53M', 55570972, '', 0, '', '/uploads/2020-06-24/20200624_180223_76011.mp4', 'mp4', '88ce9ed0da19ebf7e81031c741219f99', '', '', 0, 1592992944, 1592992944, 0, 0, 160, 1, '');

-- ----------------------------
-- Table structure for ifar_article
-- ----------------------------
DROP TABLE IF EXISTS `ifar_article`;
CREATE TABLE `ifar_article`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `cover` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `article_type` tinyint(1) NULL DEFAULT 0 COMMENT '文章类型（1公告、2新闻）',
  `create_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（0禁用、1可用）',
  `update_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `admin_id` int(0) NULL DEFAULT 0 COMMENT '管理员ID',
  `admin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '管理员姓名',
  `source` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '本站' COMMENT '文章来源',
  `catch_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '采集来源链接',
  `catch_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '采集来源图片',
  `is_top` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否置顶：1是、0否',
  `is_top_index` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '置顶到首页',
  `praise_num` int(0) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `view_num` int(0) NOT NULL DEFAULT 0 COMMENT '浏览数',
  `comment_num` int(0) NOT NULL DEFAULT 0 COMMENT '评论数',
  `brand_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '品牌id（car_brand表主键）',
  `series_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '车系ID',
  `mode_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '车型ID',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文章标签',
  `release_time` date NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ifar_exam_detail
-- ----------------------------
DROP TABLE IF EXISTS `ifar_exam_detail`;
CREATE TABLE `ifar_exam_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `problem_id` int(0) NOT NULL DEFAULT 0 COMMENT '题目编号',
  `is_right` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否正确(1是0否)',
  `score` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '得分',
  `right_answer` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '正确答案',
  `my_answer` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自己提交的答案',
  `link_id` int(0) NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型（1课程、2课时）',
  `member_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `exam_score_id` int(0) NOT NULL DEFAULT 0 COMMENT '考试成绩编号(exam_score表主键)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `link_id`(`link_id`, `link_type`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考试成绩明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_exam_detail
-- ----------------------------
INSERT INTO `ifar_exam_detail` VALUES (1, 1, 1, 3.00, '1912', '1912', 515, 3, 100, 1583587051, 1583587051, 0);

-- ----------------------------
-- Table structure for ifar_exam_score
-- ----------------------------
DROP TABLE IF EXISTS `ifar_exam_score`;
CREATE TABLE `ifar_exam_score`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `score` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '得分',
  `link_id` int(0) NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型（1课程、2课时）',
  `member_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `link_id`(`link_id`, `link_type`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考试结果表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_exam_score
-- ----------------------------
INSERT INTO `ifar_exam_score` VALUES (1, 3.00, 515, 3, 100, 1583587051, 1583587051);
INSERT INTO `ifar_exam_score` VALUES (2, 0.00, 174, 1, 4, 1587437648, 1587437648);
INSERT INTO `ifar_exam_score` VALUES (3, 100.00, 202, 1, 16, 1587454743, 1587454743);
INSERT INTO `ifar_exam_score` VALUES (4, 0.00, 202, 1, 4, 1587554585, 1587554585);
INSERT INTO `ifar_exam_score` VALUES (5, 100.00, 205, 1, 28, 1588057155, 1588057155);
INSERT INTO `ifar_exam_score` VALUES (6, 25.00, 205, 1, 29, 1592791390, 1592791390);

-- ----------------------------
-- Table structure for ifar_lesson
-- ----------------------------
DROP TABLE IF EXISTS `ifar_lesson`;
CREATE TABLE `ifar_lesson`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课时名称',
  `short_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '短名称',
  `paper_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程考试标题',
  `teacher_id` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '讲师编号',
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `channel_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目编号',
  `small_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程缩略图',
  `big_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程封面图',
  `synopsis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程简介',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '课程价格',
  `market_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价格',
  `sale_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销量',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标签',
  `lesson_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细描述',
  `is_recommend` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐(1是0否)',
  `problem_num` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '题目总数',
  `lesson_num` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '课程节数',
  `created_at` datetime(0) NOT NULL COMMENT '发布时间',
  `updated_at` datetime(0) NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（0禁用、1可用）',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `preknowledge` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预备知识',
  `video_duration` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频总时长(如1小时5分30秒)',
  `video_duration_num` int(0) NOT NULL DEFAULT 0 COMMENT '视频总时长(单位:秒)',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频文件链接',
  `lesson_type_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程类型名称',
  `lesson_type` int(0) NOT NULL DEFAULT 0 COMMENT '课程类型编号',
  `pid` bigint(0) NOT NULL DEFAULT 0 COMMENT '父编号',
  `node_deep` int(0) NOT NULL DEFAULT 1 COMMENT '节点深度',
  `sort_txt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '序号文本',
  `video_file_size` int(0) NOT NULL DEFAULT 0 COMMENT '视频文件大小(字节)',
  `video_file_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频文件名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_lesson
-- ----------------------------
INSERT INTO `ifar_lesson` VALUES (149, '三响', '三响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111132_30286.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5, '', '6分54秒', 414, '/uploads/2020-06-24/20200624_104421_60649.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第5课', 171781416, '04.5三响_1.mp4');
INSERT INTO `ifar_lesson` VALUES (146, '颤步拍身', '颤步拍身', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110827_26255.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '5分1秒', 301, '/uploads/2020-06-24/20200624_104016_9572.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第2课', 125188178, '04.2颤步拍身_1.mp4');
INSERT INTO `ifar_lesson` VALUES (147, '弹指弹舌及秧歌步', '弹指弹舌及秧歌步', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111018_11800.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, '', '3分58秒', 238, '/uploads/2020-06-24/20200624_104219_70102.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第3课', 98979467, '04.3弹指弹舌及秧歌步_1.mp4');
INSERT INTO `ifar_lesson` VALUES (144, '击鼓配乐多人表演', '击鼓配乐多人表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111206_73953.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 6, '', '4分36秒', 276, '/uploads/2020-06-24/20200624_103402_33158.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第6课', 114696072, '03.5击鼓多人_1.mp4');
INSERT INTO `ifar_lesson` VALUES (143, '无配乐多人表演', '无配乐多人表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111148_6820.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5, '', '2分34秒', 154, '/uploads/2020-06-24/20200624_103302_65319.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第5课', 64114981, '03.4无配乐多人_1.mp4');
INSERT INTO `ifar_lesson` VALUES (148, '十六响', '十六响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111120_50343.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 4, '', '2分29秒', 149, '/uploads/2020-06-24/20200624_104310_1151.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第4课', 62043030, '04.4十六响_1.mp4');
INSERT INTO `ifar_lesson` VALUES (145, '十响', '十响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110810_82336.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '6分39秒', 399, '/uploads/2020-06-24/20200624_103648_11721.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第1课', 165574846, '04.1十打_1.mp4');
INSERT INTO `ifar_lesson` VALUES (142, '女生单打表演', '女生单打表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111035_96902.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, '', '1分43秒', 103, '/uploads/2020-06-24/20200624_103104_29500.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第3课', 42962332, '03.2女生单打_1.mp4');
INSERT INTO `ifar_lesson` VALUES (138, '服装特点', '服装特点', '', 64, '孙绘', 0, '', '/uploads/2020-06-24/20200624_110733_73323.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '4分23秒', 263, '/uploads/2020-06-24/20200624_102236_47384.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第1课', 109469774, '02.3服装特点_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (139, '招式特点及技巧特点', '招式特点及技巧特点', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110918_4434.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '16分40秒', 1000, '/uploads/2020-06-24/20200624_102427_98741.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第2课', 289973710, '02.4.00招式特点及技巧特点_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (140, '肉连响全套', '肉连响全套', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110748_66156.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '4分41秒', 281, '/uploads/2020-06-24/20200624_102848_13019.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第1课', 116330960, '03.1肉连响全套_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (113, '马山民歌“五大调”', '马山民歌“五大调”', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150420_34807.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '13分32秒', 812, '/uploads/2020-06-24/20200624_175335_31512.mp4', '戏曲-马山民歌-中级-代表曲目', 325, 0, 1, '第1课', 235538345, '慕课-马山民歌_8_1.mp4');
INSERT INTO `ifar_lesson` VALUES (114, '方言演唱', '方言演唱', '', 59, '廖开富', 0, '', '/uploads/2020-06-24/20200624_140108_11285.png', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '4分42秒', 282, '/uploads/2020-06-24/20200624_174846_33168.mp4', '戏曲-马山民歌-高级-演唱方法', 327, 0, 1, '第1课', 82011702, '慕课-马山民歌_10_1.mp4');
INSERT INTO `ifar_lesson` VALUES (160, '语言特色', '语言特色', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_180223_34393.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '2分46秒', 166, '/uploads/2020-06-24/20200624_180223_76011.mp4', '戏曲-马山民歌-高级-演唱方法', 327, 0, 1, '第2课', 55570972, '慕课-马山民歌_9_1.mp4');
INSERT INTO `ifar_lesson` VALUES (159, '语言特色', '语言特色', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_154922_34105.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 8, '', '2分46秒', 166, '/uploads/2020-06-24/20200624_153341_16919.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第8课', 55570972, '慕课-马山民歌_9_1.mp4');
INSERT INTO `ifar_lesson` VALUES (141, '男生单打表演', '男生单打表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110944_21874.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '2分33秒', 153, '/uploads/2020-06-24/20200624_102955_6295.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第2课', 63516566, '03.mp4');
INSERT INTO `ifar_lesson` VALUES (131, '悠久历史', '悠久历史', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150524_33373.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '4分8秒', 248, '/uploads/2020-06-23/20200623_134716_95352.mp4', '戏曲-马山民歌-入门-历史溯源', 338, 0, 1, '第1课', 169476564, '慕课-马山民歌_1.mp4');
INSERT INTO `ifar_lesson` VALUES (132, '历史大事记', '历史大事记', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150712_21925.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '2分15秒', 135, '/uploads/2020-06-23/20200623_135004_85228.mp4', '戏曲-马山民歌-入门-历史溯源', 338, 0, 1, '第2课', 90003155, '慕课-马山民歌_2.mp4');
INSERT INTO `ifar_lesson` VALUES (133, '体裁形式', '体裁形式', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150652_7515.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '3分31秒', 211, '/uploads/2020-06-23/20200623_135228_69292.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第1课', 140565484, '慕课-马山民歌_3.mp4');
INSERT INTO `ifar_lesson` VALUES (134, '曲调特点', '曲调特点', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_155513_5922.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '1分59秒', 119, '/uploads/2020-06-23/20200623_135349_92537.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第2课', 80466604, '慕课-马山民歌_4.mp4');
INSERT INTO `ifar_lesson` VALUES (135, '结构特点', '结构特点', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150741_93969.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 4, '', '8分35秒', 515, '/uploads/2020-06-23/20200623_135555_49742.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第4课', 340567140, '慕课-马山民歌_5.mp4');
INSERT INTO `ifar_lesson` VALUES (136, '音调特点', '音调特点', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150803_15902.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5, '', '3分4秒', 184, '/uploads/2020-06-23/20200623_140035_86311.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第5课', 53486017, '慕课-马山民歌_6_1.mp4');
INSERT INTO `ifar_lesson` VALUES (137, '歌词押韵', '歌词押韵', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150818_78343.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 7, '', '4分24秒', 264, '/uploads/2020-06-23/20200623_140137_98505.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第7课', 85023833, '慕课-马山民歌_7_1.mp4');
INSERT INTO `ifar_lesson` VALUES (150, '七响', '七响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111218_95281.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 6, '', '5分30秒', 330, '/uploads/2020-06-24/20200624_104530_94802.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第6课', 137125810, '04.6七响_1.mp4');
INSERT INTO `ifar_lesson` VALUES (151, '穿掌吸腿跳', '穿掌吸腿跳', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111244_96245.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 7, '', '6分6秒', 366, '/uploads/2020-06-24/20200624_104708_79907.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第7课', 151936293, '04.7穿掌吸腿跳_1.mp4');
INSERT INTO `ifar_lesson` VALUES (152, '对打（单面）', '对打（单面）', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111258_66074.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 8, '', '4分25秒', 265, '/uploads/2020-06-24/20200624_104802_4934.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第8课', 110016301, '04.8 对打_1.mp4');
INSERT INTO `ifar_lesson` VALUES (153, '六合臂对打（单面）', '六合臂对打（单面）', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111309_11880.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 9, '', '4分22秒', 262, '/uploads/2020-06-24/20200624_104843_955.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第9课', 109020675, '04.9双打单面_1.mp4');
INSERT INTO `ifar_lesson` VALUES (154, '泥神道与巴人舞', '泥神道与巴人舞', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_110852_90388.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '7分9秒', 429, '/uploads/2020-06-24/20200624_105006_78796.mp4', '舞蹈-肉连响-入门-历史溯源', 344, 0, 1, '第1课', 178057256, '01.1泥神道与巴人舞_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (155, '肉连响的定名', '肉连响的定名', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_111003_63002.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '', '4分22秒', 262, '/uploads/2020-06-24/20200624_105052_16766.mp4', '舞蹈-肉连响-入门-历史溯源', 344, 0, 1, '第2课', 108938890, '01.2肉连响的定名_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (156, '艺术特征', '艺术特征', '', 64, '孙绘', 0, '', '/uploads/2020-06-24/20200624_111107_89899.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, '', '5分41秒', 341, '/uploads/2020-06-24/20200624_105407_86563.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第3课', 141840364, '02.1艺术特征_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (157, '文化内涵', '文化内涵', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_111230_13123.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 6, '', '9分45秒', 585, '/uploads/2020-06-24/20200624_110209_55047.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第6课', 242939991, '02.2.文化内涵mp4_1_1.mp4');
INSERT INTO `ifar_lesson` VALUES (161, '111', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '111', 0, 0, 0, '2020-09-18 08:09:30', '2020-09-18 08:09:30', 1, 0, '111', '111', 0, '', '', 2, 0, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (162, '222', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '222', 0, 0, 0, '2020-09-18 08:12:48', '2020-09-18 08:12:48', 1, 0, '222', '222', 0, '', '', 156, 0, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (163, '333222', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '333222', 0, 0, 0, '2020-09-18 08:21:51', '2020-09-18 08:22:11', 1, 0, '333222', '333222', 0, '', '', 2, 0, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (164, '5', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '5', 0, 0, 0, '2020-09-18 09:53:02', '2020-09-18 09:53:02', 1, 0, '5', '5', 0, '', '', 156, 336, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (165, '7', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '7', 0, 0, 0, '2020-09-18 10:00:15', '2020-09-18 10:00:15', 1, 0, '7', '7', 0, '', '', 324, 0, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (166, '9', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '9', 0, 0, 0, '2020-09-18 10:42:12', '2020-09-18 10:42:12', 1, 0, '9', '9', 0, '', '', 321, 0, 1, '', 0, '');
INSERT INTO `ifar_lesson` VALUES (167, '11', '', '', 0, '', 0, '', '', '', 0.00, 0.00, 0, '', '11', 0, 0, 0, '2020-09-18 10:49:23', '2020-09-18 10:49:23', 1, 0, '11', '11', 0, '', '', 340, 0, 1, '', 0, '');

-- ----------------------------
-- Table structure for ifar_lesson_type
-- ----------------------------
DROP TABLE IF EXISTS `ifar_lesson_type`;
CREATE TABLE `ifar_lesson_type`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型标题',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `value` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置值',
  `tip` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置说明',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `pid` int(0) NOT NULL DEFAULT 0 COMMENT '父编号',
  `pid_list` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '父节点编号列表(以英文逗号分隔，如0,1,2,3)',
  `sid_list` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '子节点编号列表(英文逗号分隔，如1,2,3)',
  `node_deep` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '节点深度',
  `small_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `synopsis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细描述',
  `origin_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '起源时间',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主要流行地',
  `cultural_level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文化遗产级别',
  `legacy_level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '遗产级别',
  `big_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `paragraph_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '段落标题',
  `progeny_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '后代元素(包含本身，如1,2,3)',
  `ancestry_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '祖先元素(包含本身，如1,2,3)',
  `whole_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '全名称',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1显示、0不显示',
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 356 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程种类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ifar_lesson_type
-- ----------------------------
INSERT INTO `ifar_lesson_type` VALUES (1, '戏曲', '', '', '类型描述', 16, 0, '0', '321,322,323,324,325,326,327,338,339', 1, '', '综合性、虚拟性、程式性，是中国戏曲的主要艺术特征。这些特征，凝聚着中国传统文化的美学思想精髓，构成了独特的戏剧观，使中国戏曲在世界戏曲文化的大舞台上闪耀着它的独特的艺术光辉。', '', '', '', '', '', '/public/files/art_img/xq.jpg', '详细描述', '1,321,322,323,324,325,326,327,338,339', '0,1', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (2, '技艺', '', '', '类型描述', 3, 0, '0', '0,2,1,321,322,323,324,325,326,327,338,339', 1, '', '技艺是工具和材料使用中的才智、技术或品质性手艺。富于技巧性、难以掌握的武艺、工艺。也指从事某一技术工种的人。', '', '', '', '', '', '/public/files/art_img/jy.jpg', '详细描述', '2,0,2,1,321,322,323,324,325,326,327,338,339', '0,2', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (3, '声乐', '', '', '类型描述', 15, 0, '0', '0,2,1,321,322,323,324,325,326,327,338,339', 1, '', '声乐是人声演唱的音乐形式。声乐是以人的声带为主，配合口腔、舌头、鼻腔作用于气息，发出的悦耳的、连续性、有节奏的声音。按音域的高低和音色的差异，可以分为女高音、女中音、女低音和男高音、男中音、男低音。每一种人声的音域，大约为二个八度。', '', '', '', '', '', '/public/files/art_img/sy.jpg', '详细描述', '3,0,2,1,321,322,323,324,325,326,327,338,339', '0,3', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (156, '舞蹈', '', '', '类型描述', 4, 0, '0', '0,2,1,321,322,323,324,325,326,327,336,338,339,340,341,342,343,344,345,346,347', 1, '', '舞蹈是一种表演艺术，使用身体来完成各种优雅或高难度的动作，一般有音乐伴奏，以有节奏的动作为主要表现手段的艺术形式。', '', '', '', '', '', '/public/files/art_img/wd.jpg', '详细描述', '156,0,2,1,321,322,323,324,325,326,327,336,338,339,340,341,342,343,344,345,346,347', '0,156', '舞蹈', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (321, '马山民歌', '', '', '', 17, 1, '0,1', '0,322,323,324,325,326,327,338,339', 2, '', '马山民歌是流传于湖北省荆州市荆州区马山镇一带的传统民歌形式。中国国家级非物质文化遗产名录之一。悠久的历史、特定的地理环境，形成了自己独特的民歌风格，被誉为荆州民歌的摇篮，在整个湖北民歌音乐宝库中占有十分重要的位置。2008年6月7日，湖北省荆州市荆州区申报的“马山民歌”经国务院批准列入第二批国家级非物质文化遗产名录。遗产序号：580Ⅱ-81。', '【历史渊源】湖北省荆州市荆州区马山镇，素以民歌之乡著称。这里曾经出土稀世文物越王勾践剑。悠久的历史、特定的地理环境，形成了自己独特的传统民歌风格，被誉为荆州民歌的摇篮，在整个湖北民歌音乐宝库中占有十分重要的位置。马山民歌地域文化特色鲜明、流传久远，其历史可以追溯到公元1世纪前后楚地的“扬歌”、“田歌”。公元前298—前263年（战国楚襄王时期），宋玉在《对楚王问》中说：“客有歌于郢中者，其始曰《下里》、《巴人》，国中属而和者数千人……”。其后，从公元7世纪到20世纪初的唐、宋、明、清各个时期都有关于“郢中田歌”的记载。马山民歌代表了江汉平原民歌的总体形态特征和音乐特色，具有浓郁的原生态风味。其旋律流畅动听，节奏鲜活明快，歌词凝炼精辞，通俗易学上口。它奇特的五句成歌、句尾点题的唱词结构，是荆楚文化的一块瑰宝。“喇叭调”、“伙计调”、“嘚嘚调”、“叮口当调”、“哦嗬调”五大调和五句子歌更是闻名遐迩，久唱不衰，在民间广为流传。马山民歌内容涵盖历史朝代故事、生产生活知识、四季花鸟虫鱼、婚丧习俗礼仪、节日玩灯贺彩等各个方面。种类有田歌、号子、小调、灯歌、儿歌、风俗歌、宗教歌等数十种。田歌中的“五句子歌”在马山民歌中占有极其重要的地位。“五句子歌”又有“喊五句”、“赶五句”、“穿五句”之分，曲体结构差别较大，基本旋律大同小异。【类别】荆州马山民歌品种多样，主要有田歌、小调、灯歌、儿歌、风俗歌、号子、宗教歌。\n1．田歌\n马山镇属于长江流域城市，是水稻产区，以稻作为主的马山人民，由于劳动强度大，田事繁忙，需要农民们相互协作，从而形成了农民劳作时插秧唱歌的习俗，因而创作的田歌成为马山最丰富的民歌体裁。农民在插秧，打水、薅草、收割等田间劳作时，喜欢用歌曲来放松、提神、解闷、宣泄等，为无聊辛苦的农耕生活增添色彩，这样能激起劳动热情，提高劳动效率。例如马山民歌《翻一个荷花对牡丹》在新填的稻场上，一边打稻谷，一边歌唱，还有唢呐伴奏，传达了马山人民在田间丰收时内心无比喜悦的心情，展现了丰收时的热闹场景。\n2．号子\n号子是劳动人民在从事体力劳动时而歌唱的小曲，大多采用一领众和的形式，无固定的唱词，且多用衬词，是农民进行劳动时即兴发挥出来的，可用于缓解压力，释放情绪，提高集体协作能力。例如马山民歌《抬号子》，歌词几乎全是方言语气助词，反复出现其中，无固定歌词，且旋律短小、精悍、有力，展现了马山人民劳动时的精神面貌。\n3．小调\n小调亦可称作“小曲”“俚曲”。马山属于江南水乡，鱼米之乡，气候温和，自然条件优越，使得这里的人们心思细腻，情感丰富。劳动之余，日常生活、习俗中，马山人民喜欢用歌曲来抒发自己的情怀。这类歌曲，旋律优美，情感精炼，例如马山民歌《姻缘配错哒》，这首歌旋律柔和，歌词内容表达了新娘担心新郎年小不能当家的惆怅情怀。\n4．二灯歌\n二灯歌是百姓在灯节玩灯时唱的歌。每年正月十五，会有玩龙灯、划采莲船、闹莲花、骑马射箭等活动，现场热热闹闹，喜气洋洋。这是马山及整个荆州人民延续了千年的习俗，因此灯歌也是非常的丰富，这类民歌曲调欢快，演唱时还有锣鼓、唢呐弦乐器的伴奏，百姓们载歌载舞，这一景象是无不展示着荆楚人民极具特色的节日文化。例如马山民歌《九莲灯》《划龙船》《划采莲船》表达了马山人民欢天喜地闹花灯是的热闹景象。\n5．儿歌\n儿歌是大人唱给小孩听，小孩也跟着学唱的旋律简单、结构简练的歌曲。这些歌曲朗朗上口，通俗易懂。儿歌反映一个民族对后代的关注，也反映儿童天真质朴的形象和他们的幸福生活。例如马山民歌《蛤蟆调》。大人在田里劳作，小孩在一旁玩耍，看着活蹦乱跳的蛤蟆，小朋友情不自禁的数来数去，为他们的田野生活带来了乐趣。\n6．风俗歌\n风俗歌亦称“习俗歌”，是节日或者重要日子、场合时唱的歌曲，包括送嫁歌、哭嫁歌、哭丧歌、祝寿歌等。例如马山民歌《猜新娘》，放映了当地迎娶新娘时喜庆的热闹点场面。\n7．宗教歌\n反映社会现实的歌。旧社会的马山人民的日子是非常艰苦的，他们常年忍受统治阶级的剥削，为了抑郁心中的不平，他们只能用歌曲来表达内心的感受，宗教歌就是他们生活的真实写照。如马山民歌《我说老板是条牛》。就表达了马山当地的农民对地主剥削阶级的憎恨与不满。【曲调】 马山民歌的旋律特色鲜明，民族五声音阶调试丰富，曲调简单，朗朗上口，易于传唱。如《火烧粑》这首歌在旋律音调方面，起部和落部强调五声羽调式，平部具有强调音的徵类色彩特点，相互之间形成较为鲜明的色彩对比。其旋律简捷流畅，节奏活泼明。', '', '', '', '', '/uploads/2020-06-24/20200624_160944_94241.jpg', '详细描述', '321,0,322,323,324,325,326,327,338,339', '0,1,321', '戏曲-马山民歌', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (322, '入门', '', '', '类型描述', 24, 321, '0,1,321', '0,338', 3, '', '', '', '', '', '', '', '', '详细描述', '322,0,338', '0,1,321,322', '戏曲-马山民歌-入门', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (323, '初级', '', '', '', 22, 321, '0,1,321', '0,339', 3, '', '', '', '', '', '', '', '', '详细描述', '323,0,339', '0,1,321,323', '戏曲-马山民歌-初级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (324, '中级', '', '', '', 20, 321, '0,1,321', '0,325', 3, '', '', '', '', '', '', '', '', '详细描述', '324,0,325', '0,1,321,324', '戏曲-马山民歌-中级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (325, '代表曲目', '', '', '', 21, 324, '0,1,321,324', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '325,0', '0,1,321,324,325', '戏曲-马山民歌-中级-代表曲目', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (326, '高级', '', '', '', 18, 321, '0,1,321', '0,327', 3, '', '', '', '', '', '', '', '', '详细描述', '326,0,327', '0,1,321,326', '戏曲-马山民歌-高级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (327, '演唱方法', '', '', '', 19, 326, '0,1,321,326', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '327,0', '0,1,321,326,327', '戏曲-马山民歌-高级-演唱方法', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (336, '肉连响', '', '', '类型描述', 5, 156, '0,156', '0,340,341,342,343,344,345,346,347', 2, '', '肉连响是湖北省利川市土生土长的、以独特的肢体表演为主要形式的少数民族地方舞蹈品种，流行在该市的都亭、柏杨、汪营一带，舞蹈主要以手掌击额、肩、脸、臂、肘、腰、腿等部位发出有节奏的响声而得名。肉连响以其独特的表演形式成为土家族的“绝舞”，对于研究土家族人文传统具有重要价值。2008年6月7日，湖北省利川市申报的“肉连响”经国务院批准列入第二批国家级非物质文化遗产名录。', '“肉连响”是指湖北省 利川市土生土长的、以独特的肢体表演为主要形式的少数民族地方舞蹈品种，流行在该市的都亭、柏杨、汪营一带，舞蹈主要以手掌击额、肩、脸、臂、肘、腰、腿等部位发出有节奏的响声而得名。“肉连响”以往曾称“肉莲湘”，动作与民间传统舞蹈“打莲湘”相仿。因舞蹈以其肉体碰击发出响声为其突出特色，乡民习惯称之为“肉连响”。“肉连响”舞蹈动作诙谐、明快，深受群众欢迎，但因表演难度大，动作要求高而使习艺者不多。2008年6月7日，湖北省利川市申报的“肉连响”经国务院批准列入第二批国家级非物质文化遗产名录。遗产序号：649 Ⅲ-52。【文化起源】“肉连响”的起源尚无文字记载。据湖北省利川市土生土长的老人潘招成（1918年生）、牟来群（1912年生）等回忆，二、三十年代，在利川人口比较集中的乡镇上，经常可以看到一些人在头上、手上、脸上涂满泥巴，双手活泼地拍打身体，沿街行乞，被人们称之为“泥神道”。【艺术发展】解放前，“肉连响”只是一种行乞手段，表演的目的是为赢得主人的欢欣和同情，希望得到施舍。解放后，根据已有78岁高龄的“民间艺术大师”吴修富对一群年轻师傅的言传身教，“肉莲响”逐渐成为土家族乡民欢庆丰收和活跃市场的民族民间舞蹈品类之一。“肉莲响”在传承发展过程中，揉进了秧歌舞、耍耍、跳丧舞、竹莲湘等民间舞蹈动作与韵味，并相应配上了“莲花落”的音乐曲调，唱词则由舞蹈者根据需要“见子打子”（即见什么唱什么）既编既唱，使之更加充满情趣和观赏者的现场互动情绪，逐渐发展成为独具特色的普及和植根于人民群众中间的民族民间舞蹈。【表演形式】舞者赤裸上身，以手掌拍打自己身体，发出有节奏的响声，并配以口技或鼓声，呈现出自由奔放、怡然自得的姿态。这种民间舞蹈，有着粗犷、潇洒、古朴、诙谐的舞风，人们称之为“肉连响”。“肉连响”多为男子表演，表演场地不限大小均可，由于动作和声响关系密切，表演时只穿背心、短裤或者干脆赤膊上阵，既不需要道具，也不需要更多服装，所以极易为大多群众接受。它的主要动作有“秧歌步”、“穿掌吸腿跳”、“颤步绕头转身”、“双打”、“十响”、“七响”、“四响”、“三响”等十几种。“肉连响”的表演生动、诙谐、活泼、自由。在动律上，讲究“圆转”，顺着相击的部位不断改变身体倾斜角度，柔美协调。 “肉连响”虽无唱腔、无伴奏，但口读简谱短而有特点，艺人根据演唱的需要，加上舌头弹动的声响伴奏，更增添了舞蹈的欢乐气氛。', '', '', '', '', '/uploads/2020-06-23/20200623_113117_53685.jpg', '详细描述', '336,0,340,341,342,343,344,345,346,347', '0,156,336', '舞蹈-肉连响', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (338, '历史溯源', '', '', '', 25, 322, '0,1,321,322', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '338,0', '0,1,321,322,338', '戏曲-马山民歌-入门-历史溯源', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (339, '艺术特征', '', '', '', 23, 323, '0,1,321,323', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '339,0', '0,1,321,323,339', '戏曲-马山民歌-初级-艺术特征', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (340, '入门', '', '', '', 13, 336, '0,156,336', '0,344', 3, '', '', '', '', '', '', '', '', '详细描述', '340,0,344', '0,156,336,340', '舞蹈-肉连响-入门', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (341, '初级', '', '', '', 11, 336, '0,156,336', '0,345', 3, '', '', '', '', '', '', '', '', '详细描述', '341,0,345', '0,156,336,341', '舞蹈-肉连响-初级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (342, '中级', '', '', '', 9, 336, '0,156,336', '0,346', 3, '', '', '', '', '', '', '', '', '详细描述', '342,0,346', '0,156,336,342', '舞蹈-肉连响-中级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (343, '高级', '', '', '', 6, 336, '0,156,336', '0,347', 3, '', '', '', '', '', '', '', '', '详细描述', '343,0,347', '0,156,336,343', '舞蹈-肉连响-高级', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (344, '历史溯源', '', '', '', 14, 340, '0,156,336,340', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '344,0', '0,156,336,340,344', '舞蹈-肉连响-入门-历史溯源', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (345, '项目特色', '', '', '', 12, 341, '0,156,336,341', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '345,0', '0,156,336,341,345', '舞蹈-肉连响-初级-项目特色', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (346, '舞台赏析', '', '', '', 10, 342, '0,156,336,342', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '346,0', '0,156,336,342,346', '舞蹈-肉连响-中级-舞台赏析', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (347, '舞蹈教学', '', '', '', 7, 343, '0,156,336,343', '0', 4, '', '', '', '', '', '', '', '', '详细描述', '347,0', '0,156,336,343,347', '舞蹈-肉连响-高级-舞蹈教学', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (349, 'a', '', '', '', 8, 347, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (350, 'b', '', '', '', 1, 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (351, 'c1', '', '', '', 2, 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2020-09-18 04:03:09');
INSERT INTO `ifar_lesson_type` VALUES (353, 'ggg', '', '', '', 99, 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-09-18 05:40:27', '2020-09-18 05:40:27');
INSERT INTO `ifar_lesson_type` VALUES (354, 'g2', '', '', '', 1, 353, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-09-18 05:41:26', '2020-09-18 05:41:26');
INSERT INTO `ifar_lesson_type` VALUES (355, 'g3', '', '', '', 99, 354, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, '2020-09-18 05:47:02', '2020-09-18 05:47:02');

-- ----------------------------
-- Table structure for ifar_member
-- ----------------------------
DROP TABLE IF EXISTS `ifar_member`;
CREATE TABLE `ifar_member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '真实姓名',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称',
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号',
  `weixin_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '微信唯一标识',
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像',
  `money` float(10, 2) NULL DEFAULT 0.00 COMMENT '乐知币',
  `score` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（0禁用、1可用）',
  `member_type` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型（1个人、2店铺）',
  `ewm_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '推广二维码',
  `register_time` int(0) NULL DEFAULT 0 COMMENT '注册时间',
  `login_time` int(0) NULL DEFAULT 0 COMMENT '登录时间',
  `inviter` int(0) NULL DEFAULT 0 COMMENT '邀请人用户编号',
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付宝帐号',
  `weixin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '微信号',
  `shop_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户所属代理商id',
  `shop_grade` tinyint(1) NOT NULL DEFAULT 0 COMMENT '店铺级别：1、品牌经理（一万），2、品牌合伙人（五万），3、城市创始人（二十万）',
  `upgrade_money` float(10, 2) NULL DEFAULT 0.00 COMMENT '升级金额',
  `upgrade_remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '升级备注',
  `upgrade_time` int(0) NULL DEFAULT 0 COMMENT '升级时间',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否显示（1显示、0不显示）',
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '所在城市名称',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男' COMMENT '性别（男、女）',
  `birthday` date NOT NULL COMMENT '生日',
  `card_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `pwd_answer1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密保答案1',
  `pwd_answer2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密保答案2',
  `pwd_answer3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密保答案3',
  `create_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `org` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '工作单位',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inviter`(`inviter`) USING BTREE,
  INDEX `member_type`(`member_type`) USING BTREE,
  INDEX `shop_grade`(`shop_grade`) USING BTREE,
  INDEX `shop_id`(`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前台用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ifar_member
-- ----------------------------
INSERT INTO `ifar_member` VALUES (1, 'aaaaaa', '670b14728ad9902aecba32e22fa4f6bd', '海川', '海川', '15172697199', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '420621199901010231', '1', '2', '3', 1583394563, 1592964515, '');
INSERT INTO `ifar_member` VALUES (2, 'xxxxxx', 'e10adc3949ba59abbe56e057f20f883e', 'xxx', '张三', '', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '420621199901010231', '1', '2', '3', 1583394563, 1585126548, '');
INSERT INTO `ifar_member` VALUES (3, 'zzzzzz', 'e10adc3949ba59abbe56e057f20f883e', 'xxx', '', '13022222222', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1584590143, 1584590143, '冰河');
INSERT INTO `ifar_member` VALUES (4, 'xp', 'e10adc3949ba59abbe56e057f20f883e', 'pi', 'pi', '15926295540', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '412222198807131218', '111', '111', '111', 0, 0, '');
INSERT INTO `ifar_member` VALUES (5, 'xpdai', 'e10adc3949ba59abbe56e057f20f883e', 'pi', 'pi', '15926295548', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '123456789132456784', '111', '111', '111', 0, 0, '');
INSERT INTO `ifar_member` VALUES (6, 'test', 'e10adc3949ba59abbe56e057f20f883e', '111', '', '13555555555', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585118957, 1585205815, '222');
INSERT INTO `ifar_member` VALUES (7, 'test1', 'e10adc3949ba59abbe56e057f20f883e', '111', '', '13888888888', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585119111, 1585204237, '222');
INSERT INTO `ifar_member` VALUES (8, 'yyyyyy', 'e10adc3949ba59abbe56e057f20f883e', 'xxx', '', '13022222223', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585120087, 1585120087, '冰河');
INSERT INTO `ifar_member` VALUES (9, 'test2', '', '12345', '', '13999999999', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585120535, 1585204213, '1233');
INSERT INTO `ifar_member` VALUES (10, 'xx', '670b14728ad9902aecba32e22fa4f6bd', 'pi', 'pi', '15926295541', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '123456789123456789', '111', '111', '111', 0, 1586854869, 'sad');
INSERT INTO `ifar_member` VALUES (11, '撒', '', '撒大苏打', '', '13797041513', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585899321, 1586941754, '撒旦阿迪斯');
INSERT INTO `ifar_member` VALUES (12, '撒旦', 'e10adc3949ba59abbe56e057f20f883e', '阿松大', '', '15643354286', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585899455, 1585899502, '阿松大');
INSERT INTO `ifar_member` VALUES (13, '888888', '', '武三', '', '13548965785', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1585903449, 1586508863, '白');
INSERT INTO `ifar_member` VALUES (14, '123', '670b14728ad9902aecba32e22fa4f6bd', '321', '', '13797041531', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '', '', '', 1586659014, 1586940838, '132');
INSERT INTO `ifar_member` VALUES (15, 'zfh', '670b14728ad9902aecba32e22fa4f6bd', 'zfh', 'zfh', '18986070000', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '123456', 'zdf', 'fxc', 'bzd', 0, 1587362872, '123');
INSERT INTO `ifar_member` VALUES (16, '1', '670b14728ad9902aecba32e22fa4f6bd', '1', '1', '13011111111', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '1', '1', '1', '1', 0, 1587610551, '');
INSERT INTO `ifar_member` VALUES (17, '2', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '13011111112', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '1', '1', '1', '1', 0, 0, '');
INSERT INTO `ifar_member` VALUES (18, 'ssj', '3691308f2a4c2f6983f2880d32e29c84', 'zs', 'zs', '15513121516', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', 'sjsjssj', 'q', 'q', 'q', 0, 1587350049, '');
INSERT INTO `ifar_member` VALUES (19, 'sgsgshah', '9f465077e29bdc2ec92a6170ca9611a1', '中学生', '中学生', '13437195771', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '嗯', '我想', '嗯额', 0, 0, '');
INSERT INTO `ifar_member` VALUES (20, 'hhhhhh', '96e79218965eb72c92a549dd5a330112', '海川', '海川', '15172697100', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '111', '111', '111', 0, 0, '');
INSERT INTO `ifar_member` VALUES (21, 'lhw1975', '2f226a307306148c0e7c4cf2f08e9be6', '骆红武', '骆红武', '13871247185', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '1', '2', '3', 0, 0, '');
INSERT INTO `ifar_member` VALUES (22, '123456', 'e10adc3949ba59abbe56e057f20f883e', '皮', '皮', '15545678912', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '123', '123', '123', 0, 0, '');
INSERT INTO `ifar_member` VALUES (23, 'youyou', 'dc6061e963916749dc5fc79499ce3533', '叶蓓', '叶蓓', '18717110114', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '1', '1', '1', 0, 0, '1');
INSERT INTO `ifar_member` VALUES (24, 'dddddd', '980ac217c6b51e7dc41040bec1edfec8', 'dddddd', 'dddddd', '15111111111', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '111', '111', '111', 0, 0, 'ddd');
INSERT INTO `ifar_member` VALUES (25, '111222', '00b7691d86d96aebd21dd9e138f90840', '预习', '预习', '13011111569', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '爸爸', '妈妈', '班', 0, 0, '孤独和v');
INSERT INTO `ifar_member` VALUES (26, 'haliluya', '51711b2b7559327ae39774c47af5c9b9', 'cxx', 'cxx', '13817979960', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', 'cxx', 'cxx', 'cxx', 0, 0, 'cxx');
INSERT INTO `ifar_member` VALUES (27, '111111', '96e79218965eb72c92a549dd5a330112', '嗯ヽ(○^㉨^)ﾉ♪', '嗯ヽ(○^㉨^)ﾉ♪', '13264953311', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '1', '1', '1', 0, 0, '1');
INSERT INTO `ifar_member` VALUES (28, '441564', 'dc6061e963916749dc5fc79499ce3533', '叶蓓', '叶蓓', '18717110111', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '1', '1', '1', 0, 1592461183, '壹凡');
INSERT INTO `ifar_member` VALUES (29, 'wgsj001', '051eb965a28a2a05db5371550d4ef3ab', '陈笛春', '陈笛春', '13377890051', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '老陈', '老李', '武汉', 0, 1592448042, '微观视界');
INSERT INTO `ifar_member` VALUES (30, '15972087606', 'ef1e0cfe2ac1755e60eaace9e3c3770d', '陈小小', '陈丽丽', '15972087606', '', '', 0.00, 0, 1, 1, '', 0, 0, 0, '', '', 0, 0, 0.00, '', 0, 1, '', '男', '0000-00-00', '', '陈', '刘', '宜昌', 0, 1592984835, '微观视界');

-- ----------------------------
-- Table structure for ifar_member_collect
-- ----------------------------
DROP TABLE IF EXISTS `ifar_member_collect`;
CREATE TABLE `ifar_member_collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `link_id` int(0) NULL DEFAULT 0 COMMENT '关联ID',
  `member_id` int(0) NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` int(0) NULL DEFAULT 0 COMMENT '创建时间',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型（1--文章、2--课程）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `link_type`(`link_type`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收藏记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ifar_member_comment
-- ----------------------------
DROP TABLE IF EXISTS `ifar_member_comment`;
CREATE TABLE `ifar_member_comment`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `article_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章编号',
  `comment_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论编号',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `create_time` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论时间',
  `member_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `member_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户姓名',
  `praise_num` int(0) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `portrait` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `link_id` int(0) NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型（1--文章、2--课程）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ifar_member_praise
-- ----------------------------
DROP TABLE IF EXISTS `ifar_member_praise`;
CREATE TABLE `ifar_member_praise`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `member_id` int(0) NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` int(0) NULL DEFAULT 0 COMMENT '创建时间',
  `link_id` int(0) NULL DEFAULT 0 COMMENT '关联ID',
  `link_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '关联类型（1--文章、2--课程）',
  `comment_id` int(0) NOT NULL DEFAULT 0 COMMENT '父ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `link_type`(`link_type`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户点赞记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ifar_paper
-- ----------------------------
DROP TABLE IF EXISTS `ifar_paper`;
CREATE TABLE `ifar_paper`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '题干',
  `paper_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '试卷描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ifar_paper_problem
-- ----------------------------
DROP TABLE IF EXISTS `ifar_paper_problem`;
CREATE TABLE `ifar_paper_problem`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `problem_id` int(0) NOT NULL DEFAULT 0 COMMENT '题目编号',
  `paper_id` int(0) NOT NULL DEFAULT 0 COMMENT '试卷编号',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷和题目对应关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ifar_play_progress
-- ----------------------------
DROP TABLE IF EXISTS `ifar_play_progress`;
CREATE TABLE `ifar_play_progress`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '播放记录ID',
  `member_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `play_rate` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '播放进度(百分比，如0.1，表示10%)',
  `link_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '关联编号',
  `link_type` bigint(0) NOT NULL DEFAULT 0 COMMENT '关联类型(1课程、2课时)',
  `pid` bigint(0) NOT NULL DEFAULT 0 COMMENT '父编号',
  `study_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '学习时间',
  `create_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '班级名称',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已学习完成(1是0否)',
  `sort_txt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '课时序号描述(如：第1课)',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '课程名称或课时名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE,
  INDEX `link_id`(`link_type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 245 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '播放进度表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ifar_play_progress
-- ----------------------------
INSERT INTO `ifar_play_progress` VALUES (1, 16, 0.00, 204, 0, 0, 1588039260, 1588044481, 1588044481, 'a', 0, '', '楚剧-入门-《秦雪梅吊孝》');
INSERT INTO `ifar_play_progress` VALUES (2, 16, 0.00, 73, 0, 204, 1588039260, 1588044481, 1588044481, 'a', 0, '第1课', '戏曲-楚剧-入门-《秦雪梅吊孝》-时代背景讲述');
INSERT INTO `ifar_play_progress` VALUES (3, 16, 0.00, 74, 0, 204, 1588039260, 1588044481, 1588044481, 'a', 0, '第2课', '戏曲-楚剧-入门-《秦雪梅吊孝》-唱法解析');
INSERT INTO `ifar_play_progress` VALUES (4, 16, 0.00, 75, 0, 204, 1588039260, 1588044481, 1588044481, 'a', 0, '第3课', '戏曲-《秦雪梅吊孝》-原理解析');
INSERT INTO `ifar_play_progress` VALUES (5, 15, 0.00, 204, 0, 0, 1588044474, 1588045245, 1588045245, 'dd', 0, '', '楚剧-入门-《秦雪梅吊孝》');
INSERT INTO `ifar_play_progress` VALUES (6, 15, 0.00, 73, 0, 204, 1588044474, 1588045245, 1588045245, 'dd', 0, '第1课', '戏曲-楚剧-入门-《秦雪梅吊孝》-时代背景讲述');
INSERT INTO `ifar_play_progress` VALUES (7, 15, 0.00, 74, 0, 204, 1588044474, 1588045245, 1588045245, 'dd', 0, '第2课', '戏曲-楚剧-入门-《秦雪梅吊孝》-唱法解析');
INSERT INTO `ifar_play_progress` VALUES (8, 15, 0.00, 75, 0, 204, 1588044474, 1588045245, 1588045245, 'dd', 0, '第3课', '戏曲-《秦雪梅吊孝》-原理解析');
INSERT INTO `ifar_play_progress` VALUES (9, 15, 0.00, 205, 0, 0, 1588044564, 1588045245, 1588045245, 'dd', 0, '', '楚剧-入门-《银屏公主》');
INSERT INTO `ifar_play_progress` VALUES (10, 15, 0.00, 76, 0, 205, 1588044564, 1588045245, 1588045245, 'dd', 0, '第1课', '戏曲-《银屏公主》-背景介绍');
INSERT INTO `ifar_play_progress` VALUES (11, 15, 0.00, 77, 0, 205, 1588044564, 1588045245, 1588045245, 'dd', 0, '第2课', '戏曲-楚剧-入门-《银屏公主》-第二课');
INSERT INTO `ifar_play_progress` VALUES (12, 15, 0.00, 78, 0, 205, 1588044564, 1588045245, 1588045245, 'dd', 0, '第3课', '戏曲-楚剧-入门-《银屏公主》-第三课');
INSERT INTO `ifar_play_progress` VALUES (13, 28, 0.00, 206, 0, 0, 1588056944, 1588057155, 1588057155, '', 0, '', '楚剧-入门-《赶斋》');
INSERT INTO `ifar_play_progress` VALUES (14, 28, 0.00, 205, 0, 0, 1588056996, 1588057155, 1588057155, '三年二班', 0, '', '楚剧-入门-《银屏公主》');
INSERT INTO `ifar_play_progress` VALUES (15, 28, 0.00, 76, 0, 205, 1588056996, 1588057155, 1588057155, '三年二班', 0, '第1课', '戏曲-《银屏公主》-背景介绍');
INSERT INTO `ifar_play_progress` VALUES (16, 28, 0.00, 77, 0, 205, 1588056996, 1588057155, 1588057155, '三年二班', 0, '第2课', '戏曲-楚剧-入门-《银屏公主》-第二课');
INSERT INTO `ifar_play_progress` VALUES (17, 28, 0.00, 78, 0, 205, 1588056996, 1588057155, 1588057155, '三年二班', 0, '第3课', '戏曲-楚剧-入门-《银屏公主》-第三课');
INSERT INTO `ifar_play_progress` VALUES (18, 28, 0.00, 204, 0, 0, 1588057961, 1588058427, 1588058427, '1', 0, '', '楚剧-入门-《秦雪梅吊孝》');
INSERT INTO `ifar_play_progress` VALUES (19, 28, 0.00, 73, 0, 204, 1588057961, 1588058427, 1588058427, '1', 0, '第1课', '戏曲-楚剧-入门-《秦雪梅吊孝》-时代背景讲述');
INSERT INTO `ifar_play_progress` VALUES (20, 28, 0.00, 74, 0, 204, 1588057961, 1588058427, 1588058427, '1', 0, '第2课', '戏曲-楚剧-入门-《秦雪梅吊孝》-唱法解析');
INSERT INTO `ifar_play_progress` VALUES (21, 28, 0.00, 75, 0, 204, 1588057961, 1588058427, 1588058427, '1', 0, '第3课', '戏曲-《秦雪梅吊孝》-原理解析');
INSERT INTO `ifar_play_progress` VALUES (22, 4, 0.00, 204, 0, 0, 1588045352, 1588062796, 1588062796, 'ms', 0, '', '楚剧-入门-《秦雪梅吊孝》');
INSERT INTO `ifar_play_progress` VALUES (23, 4, 0.00, 73, 0, 204, 1588045352, 1588062796, 1588062796, 'ms', 0, '第1课', '戏曲-楚剧-入门-《秦雪梅吊孝》-时代背景讲述');
INSERT INTO `ifar_play_progress` VALUES (24, 4, 0.00, 74, 0, 204, 1588045352, 1588062796, 1588062796, 'ms', 0, '第2课', '戏曲-楚剧-入门-《秦雪梅吊孝》-唱法解析');
INSERT INTO `ifar_play_progress` VALUES (25, 4, 0.00, 75, 0, 204, 1588045352, 1588062796, 1588062796, 'ms', 0, '第3课', '戏曲-《秦雪梅吊孝》-原理解析');
INSERT INTO `ifar_play_progress` VALUES (26, 16, 0.00, 204, 0, 0, 1588056811, 1588127714, 1588127714, 'gad', 0, '', '楚剧-入门-《秦雪梅吊孝》');
INSERT INTO `ifar_play_progress` VALUES (27, 16, 0.00, 73, 0, 204, 1588056811, 1588127714, 1588127714, 'gad', 0, '第1课', '戏曲-楚剧-入门-《秦雪梅吊孝》-时代背景讲述');
INSERT INTO `ifar_play_progress` VALUES (28, 16, 0.00, 74, 0, 204, 1588056811, 1588127714, 1588127714, 'gad', 0, '第2课', '戏曲-楚剧-入门-《秦雪梅吊孝》-唱法解析');
INSERT INTO `ifar_play_progress` VALUES (29, 16, 0.00, 75, 0, 204, 1588056811, 1588127714, 1588127714, 'gad', 0, '第3课', '戏曲-《秦雪梅吊孝》-原理解析');
INSERT INTO `ifar_play_progress` VALUES (30, 16, 0.00, 237, 0, 0, 1588056826, 1588127714, 1588127714, 'sysfg', 0, '', '越剧-初级-《祥林嫂》');
INSERT INTO `ifar_play_progress` VALUES (31, 15, 0.00, 205, 0, 0, 1588140961, 1588141135, 1588141135, 'ddd', 0, '', '楚剧-入门-《银屏公主》');
INSERT INTO `ifar_play_progress` VALUES (32, 15, 0.00, 76, 0, 205, 1588140961, 1588141135, 1588141135, 'ddd', 0, '第1课', '戏曲-《银屏公主》-背景介绍');
INSERT INTO `ifar_play_progress` VALUES (33, 15, 0.00, 77, 0, 205, 1588140961, 1588141135, 1588141135, 'ddd', 0, '第2课', '戏曲-楚剧-入门-《银屏公主》-第二课');
INSERT INTO `ifar_play_progress` VALUES (34, 15, 0.00, 78, 0, 205, 1588140961, 1588141135, 1588141135, 'ddd', 0, '第3课', '戏曲-楚剧-入门-《银屏公主》-第三课');
INSERT INTO `ifar_play_progress` VALUES (35, 15, 0.00, 205, 0, 0, 1588153476, 1588214380, 1588214380, 'qoosMX', 0, '', '楚剧-入门-《银屏公主》');
INSERT INTO `ifar_play_progress` VALUES (36, 15, 0.00, 76, 0, 205, 1588153476, 1588214380, 1588214380, 'qoosMX', 0, '第1课', '戏曲-黄梅戏-《银屏公主》-背景介绍');
INSERT INTO `ifar_play_progress` VALUES (37, 15, 0.00, 77, 0, 205, 1588153476, 1588214380, 1588214380, 'qoosMX', 0, '第2课', '戏曲-楚剧-入门-《银屏公主》-第二课');
INSERT INTO `ifar_play_progress` VALUES (38, 15, 0.00, 78, 0, 205, 1588153476, 1588214380, 1588214380, 'qoosMX', 0, '第3课', '戏曲-楚剧-入门-《银屏公主》-第三课');
INSERT INTO `ifar_play_progress` VALUES (39, 16, 0.00, 225, 0, 0, 1588220255, 1588927794, 1588927794, '272727', 0, '', '京剧-初级-《打渔杀家》');
INSERT INTO `ifar_play_progress` VALUES (40, 16, 0.00, 229, 0, 0, 1588220463, 1588927794, 1588927794, 'ywuwuw', 0, '', '京剧-中级-《拾玉镯》');
INSERT INTO `ifar_play_progress` VALUES (41, 16, 0.00, 239, 0, 0, 1588925485, 1588927794, 1588927794, 'aaa', 0, '', '越剧-初级-《碧玉簪》');
INSERT INTO `ifar_play_progress` VALUES (42, 16, 0.00, 205, 0, 0, 1588925566, 1588927794, 1588927794, 'www', 0, '', '楚剧-入门-《银屏公主》');
INSERT INTO `ifar_play_progress` VALUES (43, 16, 0.00, 76, 0, 205, 1588925566, 1588927794, 1588927794, 'www', 0, '第1课', '戏曲-《银屏公主》-背景介绍');
INSERT INTO `ifar_play_progress` VALUES (44, 16, 0.00, 77, 0, 205, 1588925566, 1588927794, 1588927794, 'www', 0, '第2课', '戏曲-楚剧-入门-《银屏公主》-第二课');
INSERT INTO `ifar_play_progress` VALUES (45, 16, 0.00, 78, 0, 205, 1588925566, 1588927794, 1588927794, 'www', 0, '第3课', '戏曲-楚剧-入门-《银屏公主》-第三课');
INSERT INTO `ifar_play_progress` VALUES (46, 29, 0.00, 285, 0, 0, 1592793306, 1592793985, 1592793985, '1', 0, '', '汉剧-入门-源流·沿革');
INSERT INTO `ifar_play_progress` VALUES (47, 29, 0.00, 307, 0, 0, 1592823871, 1592824204, 1592824204, '啊', 0, '', '黄梅民歌-入门-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (48, 29, 0.00, 96, 0, 307, 1592823871, 1592824204, 1592824204, '啊', 0, '第1课', '戏曲-黄梅民歌-入门-民歌概念-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (49, 29, 0.00, 288, 0, 0, 1592875189, 1592875353, 1592875353, '1', 0, '', '汉剧-入门-源流沿革');
INSERT INTO `ifar_play_progress` VALUES (50, 29, 0.00, 115, 0, 288, 1592875189, 1592875353, 1592875353, '1', 0, '第85课', '戏曲-汉剧-入门-源流沿革-测试');
INSERT INTO `ifar_play_progress` VALUES (51, 29, 0.00, 86, 0, 288, 1592875189, 1592875353, 1592875353, '1', 0, '第1课', '戏曲-汉剧-入门-汉剧源流沿革-汉剧的前世今生');
INSERT INTO `ifar_play_progress` VALUES (52, 29, 0.00, 87, 0, 288, 1592875189, 1592875353, 1592875353, '1', 0, '第2课', '戏曲-汉剧-入门-汉剧源流沿革-论汉剧在清末的繁盛');
INSERT INTO `ifar_play_progress` VALUES (53, 29, 0.00, 88, 0, 288, 1592875189, 1592875353, 1592875353, '1', 0, '第3课', '戏曲-汉剧-入门-汉剧源流沿革-乱世革命汉剧人');
INSERT INTO `ifar_play_progress` VALUES (54, 29, 0.00, 307, 0, 0, 1592878070, 1592879220, 1592879220, '1', 0, '', '黄梅民歌-入门-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (55, 29, 0.00, 96, 0, 307, 1592878070, 1592879220, 1592879220, '1', 0, '第1课', '戏曲-黄梅民歌-入门-民歌概念-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (56, 25, 0.00, 331, 0, 0, 1592882598, 1592883111, 1592883111, '皮皮', 0, '', '空竹-初级-玩法入门');
INSERT INTO `ifar_play_progress` VALUES (57, 29, 0.00, 310, 0, 0, 1592883278, 1592884732, 1592884732, '1', 0, '', '黄梅民歌-高级-发展建议');
INSERT INTO `ifar_play_progress` VALUES (58, 29, 0.00, 124, 0, 310, 1592883278, 1592884732, 1592884732, '1', 0, '第1课', '戏曲-黄梅民歌-高级-发展建议-建议将黄梅民歌双创任务列入发展道路');
INSERT INTO `ifar_play_progress` VALUES (59, 29, 0.00, 125, 0, 310, 1592883278, 1592884732, 1592884732, '1', 0, '第2课', '戏曲-黄梅民歌-高级-发展建议-建议实现黄梅民歌的创造性转化和创新性发展');
INSERT INTO `ifar_play_progress` VALUES (60, 29, 0.00, 126, 0, 310, 1592883278, 1592884732, 1592884732, '1', 0, '第3课', '戏曲-黄梅民歌-高级-发展建议-推进实现黄梅民歌的文化产业开发');
INSERT INTO `ifar_play_progress` VALUES (61, 29, 0.00, 309, 0, 0, 1592884816, 1592888137, 1592888137, '1', 0, '', '黄梅民歌-中级-音乐理论');
INSERT INTO `ifar_play_progress` VALUES (62, 29, 0.00, 103, 0, 309, 1592884816, 1592888137, 1592888137, '1', 0, '第1课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐理论：边缘遗存');
INSERT INTO `ifar_play_progress` VALUES (63, 29, 0.00, 104, 0, 309, 1592884816, 1592888137, 1592888137, '1', 0, '第2课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展1：保存');
INSERT INTO `ifar_play_progress` VALUES (64, 29, 0.00, 105, 0, 309, 1592884816, 1592888137, 1592888137, '1', 0, '第3课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展2：发展与时代需要');
INSERT INTO `ifar_play_progress` VALUES (65, 29, 0.00, 106, 0, 309, 1592884816, 1592888137, 1592888137, '1', 0, '第4课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展3：组织机构');
INSERT INTO `ifar_play_progress` VALUES (66, 29, 0.00, 310, 0, 0, 1592888888, 1592891219, 1592891219, '1', 0, '', '黄梅民歌-高级-发展建议');
INSERT INTO `ifar_play_progress` VALUES (67, 29, 0.00, 124, 0, 310, 1592888888, 1592891219, 1592891219, '1', 0, '第1课', '戏曲-黄梅民歌-高级-发展建议-建议将黄梅民歌双创任务列入发展道路');
INSERT INTO `ifar_play_progress` VALUES (68, 29, 0.00, 125, 0, 310, 1592888888, 1592891219, 1592891219, '1', 0, '第2课', '戏曲-黄梅民歌-高级-发展建议-建议实现黄梅民歌的创造性转化和创新性发展');
INSERT INTO `ifar_play_progress` VALUES (69, 29, 0.00, 126, 0, 310, 1592888888, 1592891219, 1592891219, '1', 0, '第3课', '戏曲-黄梅民歌-高级-发展建议-推进实现黄梅民歌的文化产业开发');
INSERT INTO `ifar_play_progress` VALUES (70, 29, 0.00, 309, 0, 0, 1592888968, 1592891219, 1592891219, '1', 0, '', '黄梅民歌-中级-音乐理论');
INSERT INTO `ifar_play_progress` VALUES (71, 29, 0.00, 103, 0, 309, 1592888968, 1592891219, 1592891219, '1', 0, '第1课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐理论：边缘遗存');
INSERT INTO `ifar_play_progress` VALUES (72, 29, 0.00, 104, 0, 309, 1592888968, 1592891219, 1592891219, '1', 0, '第2课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展1：保存');
INSERT INTO `ifar_play_progress` VALUES (73, 29, 0.00, 105, 0, 309, 1592888968, 1592891219, 1592891219, '1', 0, '第3课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展2：发展与时代需要');
INSERT INTO `ifar_play_progress` VALUES (74, 29, 0.00, 106, 0, 309, 1592888968, 1592891219, 1592891219, '1', 0, '第4课', '戏曲-黄梅民歌-中级-音乐理论-民族音乐保存与发展3：组织机构');
INSERT INTO `ifar_play_progress` VALUES (75, 29, 0.00, 288, 0, 0, 1592889442, 1592891219, 1592891219, '1', 0, '', '汉剧-入门-源流沿革');
INSERT INTO `ifar_play_progress` VALUES (76, 29, 0.00, 115, 0, 288, 1592889442, 1592891219, 1592891219, '1', 0, '第85课', '戏曲-汉剧-入门-源流沿革-测试');
INSERT INTO `ifar_play_progress` VALUES (77, 29, 0.00, 86, 0, 288, 1592889442, 1592891219, 1592891219, '1', 0, '第1课', '戏曲-汉剧-入门-汉剧源流沿革-汉剧的前世今生');
INSERT INTO `ifar_play_progress` VALUES (78, 29, 0.00, 87, 0, 288, 1592889442, 1592891219, 1592891219, '1', 0, '第2课', '戏曲-汉剧-入门-汉剧源流沿革-论汉剧在清末的繁盛');
INSERT INTO `ifar_play_progress` VALUES (79, 29, 0.00, 88, 0, 288, 1592889442, 1592891219, 1592891219, '1', 0, '第3课', '戏曲-汉剧-入门-汉剧源流沿革-乱世革命汉剧人');
INSERT INTO `ifar_play_progress` VALUES (80, 29, 0.00, 310, 0, 0, 1592893097, 1592893886, 1592893886, '1', 0, '', '黄梅民歌-高级-发展建议');
INSERT INTO `ifar_play_progress` VALUES (81, 29, 0.00, 124, 0, 310, 1592893097, 1592893886, 1592893886, '1', 0, '第1课', '戏曲-黄梅民歌-高级-发展建议-建议将黄梅民歌双创任务列入发展道路');
INSERT INTO `ifar_play_progress` VALUES (82, 29, 0.00, 125, 0, 310, 1592893097, 1592893886, 1592893886, '1', 0, '第2课', '戏曲-黄梅民歌-高级-发展建议-建议实现黄梅民歌的创造性转化和创新性发展');
INSERT INTO `ifar_play_progress` VALUES (83, 29, 0.00, 126, 0, 310, 1592893097, 1592893886, 1592893886, '1', 0, '第3课', '戏曲-黄梅民歌-高级-发展建议-推进实现黄梅民歌的文化产业开发');
INSERT INTO `ifar_play_progress` VALUES (84, 29, 0.00, 327, 0, 0, 1592893375, 1592893886, 1592893886, '2', 0, '', '马山民歌-高级-演唱方法');
INSERT INTO `ifar_play_progress` VALUES (85, 29, 0.00, 114, 0, 327, 1592893375, 1592893886, 1592893886, '2', 0, '第1课', '戏曲-马山民歌-高级-演唱方法-方言演唱');
INSERT INTO `ifar_play_progress` VALUES (86, 30, 0.00, 338, 0, 0, 1592895139, 1592895982, 1592895982, '1', 0, '', '马山民歌-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (87, 30, 0.00, 131, 0, 338, 1592895139, 1592895982, 1592895982, '1', 0, '第1课', '戏曲-马山民歌-入门-历史溯源-悠久历史');
INSERT INTO `ifar_play_progress` VALUES (88, 30, 0.00, 132, 0, 338, 1592895139, 1592895982, 1592895982, '1', 0, '第2课', '戏曲-马山民歌-入门-历史溯源-历史大事记');
INSERT INTO `ifar_play_progress` VALUES (89, 30, 0.00, 319, 0, 0, 1592895623, 1592895982, 1592895982, '1', 0, '', '肉连响-中级-舞台赏析');
INSERT INTO `ifar_play_progress` VALUES (90, 30, 0.00, 109, 0, 319, 1592895623, 1592895982, 1592895982, '1', 0, '第2课', '戏曲-肉连响-中级-舞台赏析-肉连响全套表演');
INSERT INTO `ifar_play_progress` VALUES (91, 30, 0.00, 110, 0, 319, 1592895623, 1592895982, 1592895982, '1', 0, '第3课', '戏曲-肉连响-中级-舞台赏析-女生单打表演');
INSERT INTO `ifar_play_progress` VALUES (92, 30, 0.00, 111, 0, 319, 1592895623, 1592895982, 1592895982, '1', 0, '第4课', '戏曲-肉连响-中级-舞台赏析-男生单打');
INSERT INTO `ifar_play_progress` VALUES (93, 30, 0.00, 112, 0, 319, 1592895623, 1592895982, 1592895982, '1', 0, '第6课', '戏曲-肉连响-中级-舞台赏析-击鼓配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (94, 30, 0.00, 339, 0, 0, 1592896215, 1592897428, 1592897428, '1', 0, '', '马山民歌-初级-艺术特征');
INSERT INTO `ifar_play_progress` VALUES (95, 30, 0.00, 133, 0, 339, 1592896215, 1592897428, 1592897428, '1', 0, '第1课', '戏曲-马山民歌-初级-艺术特征-体裁形式');
INSERT INTO `ifar_play_progress` VALUES (96, 30, 0.00, 134, 0, 339, 1592896215, 1592897428, 1592897428, '1', 0, '第2课', '戏曲-马山民歌-初级-艺术特征-曲调特点');
INSERT INTO `ifar_play_progress` VALUES (97, 30, 0.00, 135, 0, 339, 1592896215, 1592897428, 1592897428, '1', 0, '第4课', '戏曲-马山民歌-初级-艺术特征-结构特点');
INSERT INTO `ifar_play_progress` VALUES (98, 30, 0.00, 136, 0, 339, 1592896215, 1592897428, 1592897428, '1', 0, '第5课', '戏曲-马山民歌-初级-艺术特征-音调特点');
INSERT INTO `ifar_play_progress` VALUES (99, 30, 0.00, 137, 0, 339, 1592896215, 1592897428, 1592897428, '1', 0, '第7课', '戏曲-马山民歌-初级-艺术特征-歌词押韵');
INSERT INTO `ifar_play_progress` VALUES (100, 30, 0.00, 307, 0, 0, 1592902954, 1592904774, 1592904774, '1', 0, '', '黄梅民歌-入门-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (101, 30, 0.00, 96, 0, 307, 1592902954, 1592904774, 1592904774, '1', 0, '第1课', '戏曲-黄梅民歌-入门-民歌概念-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (102, 30, 0.00, 308, 0, 0, 1592903427, 1592904774, 1592904774, '1', 0, '', '黄梅民歌-初级-风格特点');
INSERT INTO `ifar_play_progress` VALUES (103, 30, 0.00, 100, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第4课', '戏曲-黄梅民歌-初级-风格特点-特点3：衬词衬腔多、演唱有特点');
INSERT INTO `ifar_play_progress` VALUES (104, 30, 0.00, 101, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第5课', '戏曲-黄梅民歌-初级-风格特点-特点4：声调音韵多、语言有特点');
INSERT INTO `ifar_play_progress` VALUES (105, 30, 0.00, 102, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第6课', '戏曲-黄梅民歌-初级-风格特点-特点5：数字命名多、歌名有特点');
INSERT INTO `ifar_play_progress` VALUES (106, 30, 0.00, 107, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第7课', '戏曲-黄梅民歌-初级-风格特点-如何从宏观方面把握黄梅民歌的主要风格特点');
INSERT INTO `ifar_play_progress` VALUES (107, 30, 0.00, 97, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第1课', '戏曲-黄梅民歌-初级-风格特点-黄梅民歌五大特点');
INSERT INTO `ifar_play_progress` VALUES (108, 30, 0.00, 98, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第2课', '戏曲-黄梅民歌-初级-风格特点-特点1：题材种类多、风格有特点');
INSERT INTO `ifar_play_progress` VALUES (109, 30, 0.00, 99, 0, 308, 1592903427, 1592904774, 1592904774, '1', 0, '第3课', '戏曲-黄梅民歌-初级-风格特点-特点2：曲牌调式多、音乐有特点');
INSERT INTO `ifar_play_progress` VALUES (110, 4, 0.00, 307, 0, 0, 1592905759, 1592910283, 1592910283, 'Zjz', 0, '', '黄梅民歌-入门-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (111, 4, 0.00, 96, 0, 307, 1592905759, 1592910283, 1592910283, 'Zjz', 0, '第1课', '戏曲-黄梅民歌-入门-民歌概念-民歌概念');
INSERT INTO `ifar_play_progress` VALUES (112, 30, 0.00, 347, 0, 0, 1592963117, 1592964888, 1592964888, '1', 0, '', '肉连响-高级-舞蹈教学');
INSERT INTO `ifar_play_progress` VALUES (113, 30, 0.00, 346, 0, 0, 1592969118, 1592969199, 1592969199, '1', 0, '', '肉连响-中级-舞台赏析');
INSERT INTO `ifar_play_progress` VALUES (114, 30, 0.00, 140, 0, 346, 1592969118, 1592969199, 1592969199, '1', 0, '第1课', '舞蹈-肉连响-中级-舞台赏析-肉连响全套');
INSERT INTO `ifar_play_progress` VALUES (115, 30, 0.00, 141, 0, 346, 1592969118, 1592969199, 1592969199, '1', 0, '第2课', '舞蹈-肉连响-中级-舞台赏析-男生单打');
INSERT INTO `ifar_play_progress` VALUES (116, 30, 0.00, 142, 0, 346, 1592969118, 1592969199, 1592969199, '1', 0, '第3课', '舞蹈-肉连响-中级-舞台赏析-女生单打表演');
INSERT INTO `ifar_play_progress` VALUES (117, 30, 0.00, 143, 0, 346, 1592969118, 1592969199, 1592969199, '1', 0, '第5课', '舞蹈-肉连响-中级-舞台赏析-无配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (118, 30, 0.00, 144, 0, 346, 1592969118, 1592969199, 1592969199, '1', 0, '第6课', '舞蹈-肉连响-中级-舞台赏析-击鼓配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (119, 30, 0.00, 346, 0, 0, 1592969235, 1592969408, 1592969408, '1', 0, '', '肉连响-中级-舞台赏析');
INSERT INTO `ifar_play_progress` VALUES (120, 30, 0.00, 140, 0, 346, 1592969235, 1592969408, 1592969408, '1', 0, '第1课', '舞蹈-肉连响-中级-舞台赏析-肉连响全套');
INSERT INTO `ifar_play_progress` VALUES (121, 30, 0.00, 141, 0, 346, 1592969235, 1592969408, 1592969408, '1', 0, '第2课', '舞蹈-肉连响-中级-舞台赏析-男生单打表演');
INSERT INTO `ifar_play_progress` VALUES (122, 30, 0.00, 142, 0, 346, 1592969235, 1592969408, 1592969408, '1', 0, '第3课', '舞蹈-肉连响-中级-舞台赏析-女生单打表演');
INSERT INTO `ifar_play_progress` VALUES (123, 30, 0.00, 143, 0, 346, 1592969235, 1592969408, 1592969408, '1', 0, '第5课', '舞蹈-肉连响-中级-舞台赏析-无配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (124, 30, 0.00, 144, 0, 346, 1592969235, 1592969408, 1592969408, '1', 0, '第6课', '舞蹈-肉连响-中级-舞台赏析-击鼓配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (125, 30, 0.00, 346, 0, 0, 1592969607, 1592969949, 1592969949, '1', 0, '', '肉连响-中级-舞台赏析');
INSERT INTO `ifar_play_progress` VALUES (126, 30, 0.00, 140, 0, 346, 1592969607, 1592969949, 1592969949, '1', 0, '第1课', '舞蹈-肉连响-中级-舞台赏析-肉连响全套');
INSERT INTO `ifar_play_progress` VALUES (127, 30, 0.00, 141, 0, 346, 1592969607, 1592969949, 1592969949, '1', 0, '第2课', '舞蹈-肉连响-中级-舞台赏析-男生单打表演');
INSERT INTO `ifar_play_progress` VALUES (128, 30, 0.00, 142, 0, 346, 1592969607, 1592969949, 1592969949, '1', 0, '第3课', '舞蹈-肉连响-中级-舞台赏析-女生单打表演');
INSERT INTO `ifar_play_progress` VALUES (129, 30, 0.00, 143, 0, 346, 1592969607, 1592969949, 1592969949, '1', 0, '第5课', '舞蹈-肉连响-中级-舞台赏析-无配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (130, 30, 0.00, 144, 0, 346, 1592969607, 1592969949, 1592969949, '1', 0, '第6课', '舞蹈-肉连响-中级-舞台赏析-击鼓配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (131, 30, 0.00, 347, 0, 0, 1592970012, 1592970081, 1592970081, '1', 0, '', '肉连响-高级-舞蹈教学');
INSERT INTO `ifar_play_progress` VALUES (132, 30, 0.00, 145, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第1课', '舞蹈-肉连响-高级-舞蹈教学-十打');
INSERT INTO `ifar_play_progress` VALUES (133, 30, 0.00, 146, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第2课', '舞蹈-肉连响-高级-舞蹈教学-颤步拍身');
INSERT INTO `ifar_play_progress` VALUES (134, 30, 0.00, 147, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第3课', '舞蹈-肉连响-高级-舞蹈教学-弹指弹舌及秧歌步');
INSERT INTO `ifar_play_progress` VALUES (135, 30, 0.00, 148, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第4课', '舞蹈-肉连响-高级-舞蹈教学-十六响');
INSERT INTO `ifar_play_progress` VALUES (136, 30, 0.00, 149, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第5课', '舞蹈-肉连响-高级-舞蹈教学-三响');
INSERT INTO `ifar_play_progress` VALUES (137, 30, 0.00, 150, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第6课', '舞蹈-肉连响-高级-舞蹈教学-七响');
INSERT INTO `ifar_play_progress` VALUES (138, 30, 0.00, 151, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第7课', '舞蹈-肉连响-高级-舞蹈教学-穿掌吸腿跳');
INSERT INTO `ifar_play_progress` VALUES (139, 30, 0.00, 152, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第8课', '舞蹈-肉连响-高级-舞蹈教学-对打');
INSERT INTO `ifar_play_progress` VALUES (140, 30, 0.00, 153, 0, 347, 1592970012, 1592970081, 1592970081, '1', 0, '第9课', '舞蹈-肉连响-高级-舞蹈教学-双打单面');
INSERT INTO `ifar_play_progress` VALUES (141, 30, 0.00, 344, 0, 0, 1592970150, 1592970703, 1592970703, '1', 0, '', '肉连响-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (142, 30, 0.00, 154, 0, 344, 1592970150, 1592970703, 1592970703, '1', 0, '第1课', '舞蹈-肉连响-入门-历史溯源-泥神道与巴人舞');
INSERT INTO `ifar_play_progress` VALUES (143, 30, 0.00, 155, 0, 344, 1592970150, 1592970703, 1592970703, '1', 0, '第2课', '舞蹈-肉连响-入门-历史溯源-肉连响的定名');
INSERT INTO `ifar_play_progress` VALUES (144, 23, 0.00, 338, 0, 0, 1592972193, 1592972205, 1592972205, 'ttt', 0, '', '马山民歌-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (145, 23, 0.00, 131, 0, 338, 1592972193, 1592972205, 1592972205, 'ttt', 0, '第1课', '戏曲-马山民歌-入门-历史溯源-悠久历史');
INSERT INTO `ifar_play_progress` VALUES (146, 23, 0.00, 132, 0, 338, 1592972193, 1592972205, 1592972205, 'ttt', 0, '第2课', '戏曲-马山民歌-入门-历史溯源-历史大事记');
INSERT INTO `ifar_play_progress` VALUES (147, 30, 0.00, 345, 0, 0, 1592970842, 1592976580, 1592976580, '1', 0, '', '肉连响-初级-项目特色');
INSERT INTO `ifar_play_progress` VALUES (148, 30, 0.00, 138, 0, 345, 1592970842, 1592976580, 1592976580, '1', 0, '第1课', '舞蹈-肉连响-初级-项目特色-服装特点');
INSERT INTO `ifar_play_progress` VALUES (149, 30, 0.00, 139, 0, 345, 1592970842, 1592976580, 1592976580, '1', 0, '第2课', '舞蹈-肉连响-初级-项目特色-招式特点及技巧特点');
INSERT INTO `ifar_play_progress` VALUES (150, 30, 0.00, 156, 0, 345, 1592970842, 1592976580, 1592976580, '1', 0, '第3课', '舞蹈-肉连响-初级-项目特色-艺术特征');
INSERT INTO `ifar_play_progress` VALUES (151, 30, 0.00, 347, 0, 0, 1592976721, 1592976876, 1592976876, '1', 0, '', '肉连响-高级-舞蹈教学');
INSERT INTO `ifar_play_progress` VALUES (152, 30, 0.00, 145, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第1课', '舞蹈-肉连响-高级-舞蹈教学-十打');
INSERT INTO `ifar_play_progress` VALUES (153, 30, 0.00, 146, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第2课', '舞蹈-肉连响-高级-舞蹈教学-颤步拍身');
INSERT INTO `ifar_play_progress` VALUES (154, 30, 0.00, 147, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第3课', '舞蹈-肉连响-高级-舞蹈教学-弹指弹舌及秧歌步');
INSERT INTO `ifar_play_progress` VALUES (155, 30, 0.00, 148, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第4课', '舞蹈-肉连响-高级-舞蹈教学-十六响');
INSERT INTO `ifar_play_progress` VALUES (156, 30, 0.00, 149, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第5课', '舞蹈-肉连响-高级-舞蹈教学-三响');
INSERT INTO `ifar_play_progress` VALUES (157, 30, 0.00, 150, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第6课', '舞蹈-肉连响-高级-舞蹈教学-七响');
INSERT INTO `ifar_play_progress` VALUES (158, 30, 0.00, 151, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第7课', '舞蹈-肉连响-高级-舞蹈教学-穿掌吸腿跳');
INSERT INTO `ifar_play_progress` VALUES (159, 30, 0.00, 152, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第8课', '舞蹈-肉连响-高级-舞蹈教学-对打');
INSERT INTO `ifar_play_progress` VALUES (160, 30, 0.00, 153, 0, 347, 1592976721, 1592976876, 1592976876, '1', 0, '第9课', '舞蹈-肉连响-高级-舞蹈教学-双打单面');
INSERT INTO `ifar_play_progress` VALUES (161, 30, 0.00, 351, 0, 0, 1592977189, 1592977217, 1592977217, '1', 0, '', '测试-1-11111');
INSERT INTO `ifar_play_progress` VALUES (162, 30, 0.00, 158, 0, 351, 1592977189, 1592977217, 1592977217, '1', 0, '第1课', '舞蹈-测试-1-11111-11');
INSERT INTO `ifar_play_progress` VALUES (163, 23, 0.00, 338, 1, 0, 1592979897, 1592980346, 1592980346, '哭了', 0, '', '马山民歌-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (164, 23, 0.00, 131, 2, 338, 1592979897, 1592980346, 1592980346, '哭了', 0, '第1课', '戏曲-马山民歌-入门-历史溯源-悠久历史');
INSERT INTO `ifar_play_progress` VALUES (165, 23, 0.00, 132, 2, 338, 1592979897, 1592980346, 1592980346, '哭了', 0, '第2课', '戏曲-马山民歌-入门-历史溯源-历史大事记');
INSERT INTO `ifar_play_progress` VALUES (166, 1, 0.00, 325, 1, 0, 1592980802, 1592980810, 1592980810, '好了', 0, '', '马山民歌-中级-代表曲目');
INSERT INTO `ifar_play_progress` VALUES (167, 1, 0.00, 113, 2, 325, 1592980802, 1592980810, 1592980810, '好了', 0, '第1课', '戏曲-马山民歌-中级-代表曲目-马山民歌“五大调”');
INSERT INTO `ifar_play_progress` VALUES (215, 30, 0.22, 146, 2, 347, 1592989416, 1593266748, 1593266748, '1', 0, '第2课', '舞蹈-肉连响-高级-舞蹈教学-颤步拍身');
INSERT INTO `ifar_play_progress` VALUES (214, 30, 0.10, 145, 2, 347, 1592989416, 1593266748, 1593266748, '1', 0, '第1课', '舞蹈-肉连响-高级-舞蹈教学-十响');
INSERT INTO `ifar_play_progress` VALUES (213, 30, 0.00, 347, 1, 0, 1592989416, 1592992131, 1592992131, '1', 0, '', '肉连响-高级-舞蹈教学');
INSERT INTO `ifar_play_progress` VALUES (212, 30, 0.00, 144, 2, 346, 1592988714, 1592992131, 1592992131, '1', 0, '第6课', '舞蹈-肉连响-中级-舞台赏析-击鼓配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (211, 30, 0.00, 143, 2, 346, 1592988714, 1592992131, 1592992131, '1', 0, '第5课', '舞蹈-肉连响-中级-舞台赏析-无配乐多人表演');
INSERT INTO `ifar_play_progress` VALUES (210, 30, 0.00, 142, 2, 346, 1592988714, 1592992131, 1592992131, '1', 0, '第3课', '舞蹈-肉连响-中级-舞台赏析-女生单打表演');
INSERT INTO `ifar_play_progress` VALUES (209, 30, 0.00, 141, 2, 346, 1592988714, 1592992131, 1592992131, '1', 0, '第2课', '舞蹈-肉连响-中级-舞台赏析-男生单打表演');
INSERT INTO `ifar_play_progress` VALUES (208, 30, 0.00, 140, 2, 346, 1592988714, 1592992131, 1592992131, '1', 0, '第1课', '舞蹈-肉连响-中级-舞台赏析-肉连响全套');
INSERT INTO `ifar_play_progress` VALUES (207, 30, 0.00, 346, 1, 0, 1592988714, 1592992131, 1592992131, '1', 0, '', '肉连响-中级-舞台赏析');
INSERT INTO `ifar_play_progress` VALUES (217, 30, 0.32, 148, 2, 347, 1592989416, 1593266748, 1593266748, '1', 0, '第4课', '舞蹈-肉连响-高级-舞蹈教学-十六响');
INSERT INTO `ifar_play_progress` VALUES (219, 30, 0.00, 150, 2, 347, 1592989416, 1592992131, 1592992131, '1', 0, '第6课', '舞蹈-肉连响-高级-舞蹈教学-七响');
INSERT INTO `ifar_play_progress` VALUES (221, 30, 0.17, 152, 2, 347, 1592989416, 1593266748, 1593266748, '1', 0, '第8课', '舞蹈-肉连响-高级-舞蹈教学-对打（单面）');
INSERT INTO `ifar_play_progress` VALUES (223, 30, 0.00, 345, 1, 0, 1592989756, 1592992131, 1592992131, '1', 0, '', '肉连响-初级-项目特色');
INSERT INTO `ifar_play_progress` VALUES (225, 30, 0.12, 139, 2, 345, 1592989756, 1595554748, 1595554748, '1', 0, '第2课', '舞蹈-肉连响-初级-项目特色-招式特点及技巧特点');
INSERT INTO `ifar_play_progress` VALUES (227, 30, 0.00, 344, 1, 0, 1592989784, 1592992131, 1592992131, '1', 0, '', '肉连响-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (229, 30, 0.00, 155, 2, 344, 1592989784, 1592992131, 1592992131, '1', 0, '第2课', '舞蹈-肉连响-入门-历史溯源-肉连响的定名');
INSERT INTO `ifar_play_progress` VALUES (231, 30, 0.70, 114, 2, 327, 1592989811, 1592994115, 1592994115, '1', 0, '第1课', '戏曲-马山民歌-高级-演唱方法-方言演唱');
INSERT INTO `ifar_play_progress` VALUES (233, 30, 0.09, 113, 2, 325, 1592989833, 1592994115, 1592994115, '1', 0, '第1课', '戏曲-马山民歌-中级-代表曲目-马山民歌“五大调”');
INSERT INTO `ifar_play_progress` VALUES (216, 30, 0.29, 147, 2, 347, 1592989416, 1593266748, 1593266748, '1', 0, '第3课', '舞蹈-肉连响-高级-舞蹈教学-弹指弹舌及秧歌步');
INSERT INTO `ifar_play_progress` VALUES (235, 30, 0.00, 133, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第1课', '戏曲-马山民歌-初级-艺术特征-体裁形式');
INSERT INTO `ifar_play_progress` VALUES (234, 30, 0.00, 339, 1, 0, 1592989849, 1592993321, 1592993321, '1', 0, '', '马山民歌-初级-艺术特征');
INSERT INTO `ifar_play_progress` VALUES (232, 30, 0.00, 325, 1, 0, 1592989833, 1592992950, 1592992950, '1', 0, '', '马山民歌-中级-代表曲目');
INSERT INTO `ifar_play_progress` VALUES (230, 30, 0.00, 327, 1, 0, 1592989811, 1592993321, 1592993321, '1', 0, '', '马山民歌-高级-演唱方法');
INSERT INTO `ifar_play_progress` VALUES (228, 30, 0.41, 154, 2, 344, 1592989784, 1593266748, 1593266748, '1', 0, '第1课', '舞蹈-肉连响-入门-历史溯源-泥神道与巴人舞');
INSERT INTO `ifar_play_progress` VALUES (226, 30, 0.46, 156, 2, 345, 1592989756, 1595554748, 1595554748, '1', 0, '第3课', '舞蹈-肉连响-初级-项目特色-艺术特征');
INSERT INTO `ifar_play_progress` VALUES (224, 30, 0.67, 138, 2, 345, 1592989756, 1595554748, 1595554748, '1', 0, '第1课', '舞蹈-肉连响-初级-项目特色-服装特点');
INSERT INTO `ifar_play_progress` VALUES (222, 30, 0.00, 153, 2, 347, 1592989416, 1592992131, 1592992131, '1', 0, '第9课', '舞蹈-肉连响-高级-舞蹈教学-六合臂对打（单面）');
INSERT INTO `ifar_play_progress` VALUES (220, 30, 0.00, 151, 2, 347, 1592989416, 1592992131, 1592992131, '1', 0, '第7课', '舞蹈-肉连响-高级-舞蹈教学-穿掌吸腿跳');
INSERT INTO `ifar_play_progress` VALUES (218, 30, 0.00, 149, 2, 347, 1592989416, 1592992131, 1592992131, '1', 0, '第5课', '舞蹈-肉连响-高级-舞蹈教学-三响');
INSERT INTO `ifar_play_progress` VALUES (236, 30, 0.00, 134, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第2课', '戏曲-马山民歌-初级-艺术特征-曲调特点');
INSERT INTO `ifar_play_progress` VALUES (237, 30, 0.00, 135, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第4课', '戏曲-马山民歌-初级-艺术特征-结构特点');
INSERT INTO `ifar_play_progress` VALUES (238, 30, 0.00, 136, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第5课', '戏曲-马山民歌-初级-艺术特征-音调特点');
INSERT INTO `ifar_play_progress` VALUES (239, 30, 0.00, 137, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第7课', '戏曲-马山民歌-初级-艺术特征-歌词押韵');
INSERT INTO `ifar_play_progress` VALUES (240, 30, 0.00, 157, 2, 339, 1592989849, 1592993321, 1592993321, '1', 0, '第6课', '戏曲-马山民歌-初级-艺术特征-文化内涵');
INSERT INTO `ifar_play_progress` VALUES (241, 30, 0.26, 159, 2, 339, 1592989849, 1592994115, 1592994115, '1', 0, '第8课', '戏曲-马山民歌-初级-艺术特征-语言特色');
INSERT INTO `ifar_play_progress` VALUES (242, 30, 0.00, 338, 1, 0, 1592989868, 1592992131, 1592992131, '1', 0, '', '马山民歌-入门-历史溯源');
INSERT INTO `ifar_play_progress` VALUES (243, 30, 0.38, 131, 2, 338, 1592989868, 1595554748, 1595554748, '1', 0, '第1课', '戏曲-马山民歌-入门-历史溯源-悠久历史');
INSERT INTO `ifar_play_progress` VALUES (244, 30, 0.35, 132, 2, 338, 1592989868, 1593266748, 1593266748, '1', 0, '第2课', '戏曲-马山民歌-入门-历史溯源-历史大事记');

-- ----------------------------
-- Table structure for ifar_problem
-- ----------------------------
DROP TABLE IF EXISTS `ifar_problem`;
CREATE TABLE `ifar_problem`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题干',
  `problem_type` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '题型(1单选题;2多选题;3判断题)',
  `difficulty` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '难度(1易;2中;3难)',
  `answer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案(如A、D)',
  `answer_txt` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案文本(答案的真实内容)',
  `sort` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `resolution` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '解析',
  `lesson_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属课程编号',
  `chapter_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '章编号',
  `section_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '节编号',
  `score` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '分数',
  `create_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `update_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `option_a` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项A',
  `option_b` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项B',
  `option_c` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项C',
  `option_d` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项D',
  `option_e` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项E',
  `option_f` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项F',
  `option_g` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项G',
  `exam_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '考试类型(1期末考试、2随堂测试)',
  `option_a_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项A纯文本',
  `option_b_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项B纯文本',
  `option_c_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项C纯文本',
  `option_d_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项D纯文本',
  `option_e_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项E纯文本',
  `option_f_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项F纯文本',
  `option_g_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项G纯文本',
  `option_a_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项A图片列表',
  `option_b_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项B图片列表',
  `option_c_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项C图片列表',
  `option_d_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项D图片列表',
  `option_e_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项E图片列表',
  `option_f_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项F图片列表',
  `option_g_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '答案选项G图片列表',
  `title_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '题干纯文本',
  `title_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '题干图片列表',
  `answer_option_num` tinyint(1) NOT NULL DEFAULT 4 COMMENT '答案选项个数',
  `lesson_period_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课时编号(关联lesson表主键)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lesson_id`(`lesson_id`) USING BTREE,
  INDEX `problem_type`(`problem_type`) USING BTREE,
  INDEX `lesson_period_id`(`lesson_period_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '题目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_problem
-- ----------------------------
INSERT INTO `ifar_problem` VALUES (5, '京剧的最基本的两种声腔是2', 2, 0, 'AB', '', 0, '', 0, 0, 0, 0.00, 1584974777, 1585145002, '西皮<img src=\"http://opera.if-ar.com/uploads/image/20200325/20200325204105_84220.jpg\" alt=\"\" />不错\n<pre></pre>', '二黄', '吹腔', '高拨子', '', '', '', 1, '西皮不错\n', '二黄', '吹腔', '高拨子', '', '', '', 'http://opera.if-ar.com/uploads/image/20200325/20200325204105_84220.jpg', 'http://opera.if-ar.com/uploads/2020-03-25/20200325_170003_50181.jpg,http://opera.if-ar.com/uploads/2020-03-25/20200325_170003_50181.jpg', '', '', '', '', '', '', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (30, '京剧的最基本的两种声腔是', 2, 0, 'AB', '', 0, '', 23, 0, 0, 32.00, 1586854968, 1586854968, '西皮', '二黄', '吹腔', '高拨子', '', '', '', 2, '西皮', '二黄', '吹腔', '高拨子', '', '', '', '', '', '', '', '', '', '', '京剧的最基本的两种声腔是', '', 4, 2);
INSERT INTO `ifar_problem` VALUES (16, '<p>我的哦</p>', 2, 0, 'AD', '', 1585903372, '', 24, 0, 0, 100.00, 1585903372, 1585903382, '<p>231</p>', '<p>222</p>', '<p>2323</p>', '<p>2321</p>', '', '', '', 2, '231', '222', '2323', '2321', '', '', '', '', '', '', '', '', '', '', '我的哦', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (28, '戏剧中角色一个人在场时的自言自语是', 1, 0, 'A', '', 0, '', 23, 0, 0, 16.00, 1586854968, 1586854968, '独白', '旁白', '打背供', '对话', '', '', '', 2, '独白', '旁白', '打背供', '对话', '', '', '', '', '', '', '', '', '', '', '戏剧中角色一个人在场时的自言自语是', '', 4, 2);
INSERT INTO `ifar_problem` VALUES (29, '要写好戏剧冲突，首先要写好', 1, 0, 'D', '', 0, '', 23, 0, 0, 16.00, 1586854968, 1586854968, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', 2, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', '', '', '', '', '', '', '', '要写好戏剧冲突，首先要写好', '', 4, 2);
INSERT INTO `ifar_problem` VALUES (54, '戏剧中角色一个人在场时的自言自语是', 1, 0, 'A', '', 0, '', 172, 0, 0, 25.00, 1586944779, 1586944779, '独白', '旁白', '打背供', '对话', '', '', '', 2, '独白', '旁白', '打背供', '对话', '', '', '', '', '', '', '', '', '', '', '戏剧中角色一个人在场时的自言自语是', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (55, '要写好戏剧冲突，首先要写好', 1, 0, 'D', '', 0, '', 172, 0, 0, 25.00, 1586944779, 1586944779, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', 2, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', '', '', '', '', '', '', '', '要写好戏剧冲突，首先要写好', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (36, '<p>12313</p>', 1, 0, 'A', '', 1586938314, '', 169, 0, 0, 16.00, 1586938314, 1586938314, '<p>123132</p>', '<p>22</p>', '<p>22</p>', '<p>22</p>', '', '', '', 1, '123132', '22', '22', '22', '', '', '', '', '', '', '', '', '', '', '12313', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (61, '<p>a</p>', 2, 0, 'A', '', 1587030455, '', 23, 0, 0, 32.00, 1587030455, 1587030455, '<p>aa</p>', '<p>a</p>', '<p>a</p>', '<p>a</p>', '', '', '', 2, 'aa', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', 'a', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (38, '<p>12312</p>', 2, 0, 'AC', '', 1586938599, '', 169, 0, 0, 32.00, 1586938599, 1586938599, '<p>22</p>', '<p>21</p>', '<p>2</p>', '<p>1</p>', '', '', '', 1, '22', '21', '2', '1', '', '', '', '', '', '', '', '', '', '', '12312', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (82, '<p>a\'s\'da\'s\'da\'s</p>', 1, 0, 'C', '', 1587437246, '', 202, 0, 0, 25.00, 1587437246, 1587437246, '<p>asdasdasa\'s\'da\'s\'da\'s</p>', '<p>\'s\'da\'s\'da\'s\'da\'sa\'s</p>', '<p>asdasasda\'s\'da</p>', '<p>dasdaa\'s\'da\'s\'d</p>', '', '', '', 2, 'asdasdasa\'s\'da\'s\'da\'s', '\'s\'da\'s\'da\'s\'da\'sa\'s', 'asdasasda\'s\'da', 'dasdaa\'s\'da\'s\'d', '', '', '', '', '', '', '', '', '', '', 'a\'s\'da\'s\'da\'s', '', 4, 69);
INSERT INTO `ifar_problem` VALUES (32, '<p>12313131</p>', 1, 0, 'A', '', 1586938006, '', 169, 0, 0, 16.00, 1586938006, 1586938006, '<p>2</p>', '<p>2</p>', '<p>1</p>', '<p>1</p>', '', '', '', 1, '2', '2', '1', '1', '', '', '', '', '', '', '', '', '', '', '12313131', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (69, '戏剧中角色一个人在场时的自言自语是', 1, 0, 'A', '', 0, '', 174, 0, 0, 12.00, 1587351239, 1587351239, '独白', '旁白', '打背供', '对话', '', '', '', 2, '独白', '旁白', '打背供', '对话', '', '', '', '', '', '', '', '', '', '', '戏剧中角色一个人在场时的自言自语是', '', 4, 59);
INSERT INTO `ifar_problem` VALUES (60, '<p>1 2=?</p>', 1, 0, 'A', '', 1586947152, '', 169, 0, 0, 16.00, 1586947152, 1586947160, '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '', '', '', 1, '3', '4', '5', '6', '', '', '', '', '', '', '', '', '', '', '1 2=?', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (81, '<p>2</p>', 1, 0, 'B', '', 1587437038, '', 174, 0, 0, 12.00, 1587437038, 1587437038, '<p>2</p>', '<p>2</p>', '<p>2</p>', '<p>2</p>', '', '', '', 2, '2', '2', '2', '2', '', '', '', '', '', '', '', '', '', '', '2', '', 4, 59);
INSERT INTO `ifar_problem` VALUES (43, '<p>aasdasd</p>', 1, 0, 'A', '', 1586942589, '', 169, 0, 0, 16.00, 1586942589, 1586942589, '<p>asda</p>', '<p>asdasd</p>', '', '', '', '', '', 1, 'asda', 'asdasd', '', '', '', '', '', '', '', '', '', '', '', '', 'aasdasd', '', 2, 0);
INSERT INTO `ifar_problem` VALUES (56, '京剧的最基本的两种声腔是', 2, 0, 'AB', '', 0, '', 172, 0, 0, 50.00, 1586944779, 1586944779, '西皮', '二黄', '吹腔', '高拨子', '', '', '', 2, '西皮', '二黄', '吹腔', '高拨子', '', '', '', '', '', '', '', '', '', '', '京剧的最基本的两种声腔是', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (70, '要写好戏剧冲突，首先要写好', 1, 0, 'D', '', 0, '', 174, 0, 0, 12.00, 1587351239, 1587351239, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', 2, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', '', '', '', '', '', '', '', '要写好戏剧冲突，首先要写好', '', 4, 59);
INSERT INTO `ifar_problem` VALUES (80, '<p>1</p>', 1, 0, 'A', '', 1587436999, '', 177, 0, 0, 16.00, 1587436999, 1587436999, '<p>1</p>', '<p>1</p>', '<p>1</p>', '<p>1</p>', '', '', '', 2, '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '1', '', 4, 62);
INSERT INTO `ifar_problem` VALUES (78, '<p>232</p>', 2, 0, 'AC', '', 1587435862, '', 159, 0, 0, 12.00, 1587435862, 1587435862, '<p>1</p>', '<p>1</p>', '<p>1</p>', '<p>1</p>', '', '', '', 2, '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '232', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (79, '<p>飞雷神是谁的招数</p>', 1, 0, 'D', '', 1587436764, '', 202, 0, 0, 25.00, 1587436764, 1587436764, '<p>鸣人</p>', '<p>阿飞</p>', '<p>路飞</p>', '<p>水门</p>', '', '', '', 2, '鸣人', '阿飞', '路飞', '水门', '', '', '', '', '', '', '', '', '', '', '飞雷神是谁的招数', '', 4, 67);
INSERT INTO `ifar_problem` VALUES (57, '戏剧中角色一个人在场时的自言自语是', 1, 0, 'A', '', 0, '', 174, 0, 0, 25.00, 1586944952, 1586944952, '独白', '旁白', '打背供', '对话', '', '', '', 1, '独白', '旁白', '打背供', '对话', '', '', '', '', '', '', '', '', '', '', '戏剧中角色一个人在场时的自言自语是', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (58, '要写好戏剧冲突，首先要写好', 1, 0, 'D', '', 0, '', 174, 0, 0, 25.00, 1586944952, 1586944952, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', 1, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', '', '', '', '', '', '', '', '要写好戏剧冲突，首先要写好', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (59, '京剧的最基本的两种声腔是', 2, 0, 'AB', '', 0, '', 174, 0, 0, 50.00, 1586944952, 1586944952, '西皮', '二黄', '吹腔', '高拨子', '', '', '', 1, '西皮', '二黄', '吹腔', '高拨子', '', '', '', '', '', '', '', '', '', '', '京剧的最基本的两种声腔是', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (71, '京剧的最基本的两种声腔是', 2, 0, 'AB', '', 0, '', 174, 0, 0, 24.00, 1587351239, 1587351239, '西皮', '二黄', '吹腔', '高拨子', '', '', '', 2, '西皮', '二黄', '吹腔', '高拨子', '', '', '', '', '', '', '', '', '', '', '京剧的最基本的两种声腔是', '', 4, 59);
INSERT INTO `ifar_problem` VALUES (72, '<p>你喜欢戏曲吗</p>', 1, 0, 'D', '', 1587367557, '', 170, 0, 0, 20.00, 1587367557, 1587367557, '<p>喜欢</p>', '<p>热爱</p>', '<p>为之奋斗一生</p>', '<p>还行吧,勉强算个爱好</p>', '', '', '', 1, '喜欢', '热爱', '为之奋斗一生', '还行吧,勉强算个爱好', '', '', '', '', '', '', '', '', '', '', '你喜欢戏曲吗', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (73, '<p>你最喜欢哪个戏曲名家</p>', 2, 0, 'ABCD', '', 1587367636, '', 170, 0, 0, 40.00, 1587367636, 1587367636, '<p>余老师</p>', '<p>小武老师</p>', '<p>肆武忌惮</p>', '<p>武儿老师</p>', '', '', '', 1, '余老师', '小武老师', '肆武忌惮', '武儿老师', '', '', '', '', '', '', '', '', '', '', '你最喜欢哪个戏曲名家', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (74, '<p>假如你和小武老师进行赛跑,小武老师以每秒3m的速度先跑出10秒,你的速度是每秒30m,请问你需要花多长时间可以追上小武老师</p>', 1, 0, 'D', '', 1587367959, '', 170, 0, 0, 20.00, 1587367959, 1587374004, '<p><img class=\"wscnph\" src=\"http://opera.if-ar.com/uploads/image/20200420/20200420171315_43248.png\" />1秒</p>', '<p>3秒</p>', '<p>5秒</p>', '<p>站在原地不动,并在心里告诉自己我永远也无法追上小武老师</p>', '', '', '', 1, '1秒', '3秒', '5秒', '站在原地不动,并在心里告诉自己我永远也无法追上小武老师', '', '', '', 'http://opera.if-ar.com/uploads/image/20200420/20200420171315_43248.png', '', '', '', '', '', '', '假如你和小武老师进行赛跑,小武老师以每秒3m的速度先跑出10秒,你的速度是每秒30m,请问你需要花多长时间可以追上小武老师', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (75, '<p>找出下列图片中,老大经常使用的一张表情包</p>', 1, 0, 'A', '', 1587368453, '', 170, 0, 0, 20.00, 1587368453, 1587368453, '<p><img class=\"wscnph\" src=\"http://opera.if-ar.com/uploads/image/20200420/20200420154018_87968.png\" /></p>', '<p><img class=\"wscnph\" src=\"http://opera.if-ar.com/uploads/image/20200420/20200420154027_39438.gif\" /></p>', '<p><img class=\"wscnph\" src=\"http://opera.if-ar.com/uploads/image/20200420/20200420154039_22069.png\" /></p>', '<p><img class=\"wscnph\" src=\"http://opera.if-ar.com/uploads/image/20200420/20200420154047_26209.png\" /></p>', '', '', '', 1, '', '', '', '', '', '', '', 'http://opera.if-ar.com/uploads/image/20200420/20200420154018_87968.png', 'http://opera.if-ar.com/uploads/image/20200420/20200420154027_39438.gif', 'http://opera.if-ar.com/uploads/image/20200420/20200420154039_22069.png', 'http://opera.if-ar.com/uploads/image/20200420/20200420154047_26209.png', '', '', '', '找出下列图片中,老大经常使用的一张表情包', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (77, '<p>1231</p>', 1, 0, 'A', '', 1587435833, '', 159, 0, 0, 6.00, 1587435833, 1587435833, '<p>2</p>', '<p>2</p>', '<p>2</p>', '<p>2</p>', '', '', '', 2, '2', '2', '2', '2', '', '', '', '', '', '', '', '', '', '', '1231', '', 4, 55);
INSERT INTO `ifar_problem` VALUES (83, '<p>3</p>', 1, 0, 'D', '', 1587440868, '', 159, 0, 0, 6.00, 1587440868, 1587440868, '<p>3</p>', '<p>3</p>', '<p>3</p>', '<p>3</p>', '', '', '', 2, '3', '3', '3', '3', '', '', '', '', '', '', '', '', '', '', '3', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (84, '<p>4</p>', 1, 0, 'D', '', 1587441173, '', 159, 0, 0, 6.00, 1587441173, 1587441173, '<p>4</p>', '<p>4</p>', '<p>4</p>', '<p>4</p>', '', '', '', 2, '4', '4', '4', '4', '', '', '', '', '', '', '', '', '', '', '4', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (85, '<p>5</p>', 1, 0, 'D', '', 1587441211, '', 159, 0, 0, 6.00, 1587441211, 1587441211, '<p>5</p>', '<p>5</p>', '<p>5</p>', '<p>5</p>', '', '', '', 2, '5', '5', '5', '5', '', '', '', '', '', '', '', '', '', '', '5', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (86, '<p>a\'s\'da\'s\'d</p>', 1, 0, 'A', '', 1587441304, '', 202, 0, 0, 25.00, 1587441304, 1587441304, '<p>asdasda\'s\'da\'s\'d</p>', '<p>asdasda\'s\'d</p>', '<p>asdasd</p>', '<p>asd</p>', '', '', '', 2, 'asdasda\'s\'da\'s\'d', 'asdasda\'s\'d', 'asdasd', 'asd', '', '', '', '', '', '', '', '', '', '', 'a\'s\'da\'s\'d', '', 4, 69);
INSERT INTO `ifar_problem` VALUES (87, '<p>6</p>', 1, 0, 'A', '', 1587441369, '', 159, 0, 0, 6.00, 1587441369, 1587441369, '<p>6</p>', '<p>6</p>', '<p>6</p>', '<p>6</p>', '', '', '', 2, '6', '6', '6', '6', '', '', '', '', '', '', '', '', '', '', '6', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (88, '<p>asdas</p>', 1, 0, 'A', '', 1587441455, '', 202, 0, 0, 25.00, 1587441455, 1587441455, '<p>asdasd</p>', '<p>asd</p>', '<p>asdasd</p>', '<p>asd</p>', '', '', '', 2, 'asdasd', 'asd', 'asdasd', 'asd', '', '', '', '', '', '', '', '', '', '', 'asdas', '', 4, 69);
INSERT INTO `ifar_problem` VALUES (89, '<p>8</p>', 1, 0, 'A', '', 1587441461, '', 159, 0, 0, 6.00, 1587441461, 1587441461, '<p>8</p>', '<p>8</p>', '<p>8</p>', '<p>8</p>', '', '', '', 2, '8', '8', '8', '8', '', '', '', '', '', '', '', '', '', '', '8', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (90, '<p>3</p>', 1, 0, 'C', '', 1587443295, '', 177, 0, 0, 16.00, 1587443295, 1587443295, '<p>3</p>', '<p>3</p>', '<p>3</p>', '<p>3</p>', '', '', '', 2, '3', '3', '3', '3', '', '', '', '', '', '', '', '', '', '', '3', '', 4, 62);
INSERT INTO `ifar_problem` VALUES (91, '<p>d</p>', 1, 0, 'D', '', 1587444548, '', 159, 0, 0, 6.00, 1587444548, 1587444548, '<p>d</p>', '<p>d</p>', '<p>d</p>', '<p>d</p>', '', '', '', 2, 'd', 'd', 'd', 'd', '', '', '', '', '', '', '', '', '', '', 'd', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (92, '<p>s</p>', 1, 0, 'D', '', 1587444648, '', 159, 0, 0, 6.00, 1587444648, 1587444648, '<p>s</p>', '<p>s</p>', '<p>s</p>', '<p>s</p>', '', '', '', 2, 's', 's', 's', 's', '', '', '', '', '', '', '', '', '', '', 's', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (93, '<p>1222</p>', 1, 0, 'D', '', 1587444992, '', 174, 0, 0, 12.00, 1587444992, 1587444992, '<p>3</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', '', '', '', 2, '3', '3', '4', '5', '', '', '', '', '', '', '', '', '', '', '1222', '', 4, 3);
INSERT INTO `ifar_problem` VALUES (94, '戏剧中角色一个人在场时的自言自语是', 1, 0, 'A', '', 0, '', 177, 0, 0, 16.00, 1587445085, 1587445085, '独白', '旁白', '打背供', '对话', '', '', '', 2, '独白', '旁白', '打背供', '对话', '', '', '', '', '', '', '', '', '', '', '戏剧中角色一个人在场时的自言自语是', '', 4, 63);
INSERT INTO `ifar_problem` VALUES (95, '要写好戏剧冲突，首先要写好', 1, 0, 'D', '', 0, '', 177, 0, 0, 16.00, 1587445085, 1587445085, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', 2, '人物对话', '舞台提示', '戏剧场景', '戏剧场景', '', '', '', '', '', '', '', '', '', '', '要写好戏剧冲突，首先要写好', '', 4, 63);
INSERT INTO `ifar_problem` VALUES (96, '京剧的最基本的两种声腔是', 2, 0, 'AB', '', 0, '', 177, 0, 0, 32.00, 1587445085, 1587445085, '西皮', '二黄', '吹腔', '高拨子', '', '', '', 2, '西皮', '二黄', '吹腔', '高拨子', '', '', '', '', '', '', '', '', '', '', '京剧的最基本的两种声腔是', '', 4, 63);
INSERT INTO `ifar_problem` VALUES (97, '<p>g</p>', 1, 0, 'C', '', 1587446051, '', 159, 0, 0, 6.00, 1587446051, 1587446051, '<p>g</p>', '<p>g</p>', '<p>g</p>', '<p>g</p>', '', '', '', 2, 'g', 'g', 'g', 'g', '', '', '', '', '', '', '', '', '', '', 'g', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (98, '<p>f</p>', 1, 0, 'C', '', 1587446131, '', 159, 0, 0, 6.00, 1587446131, 1587446131, '<p>f</p>', '<p>f</p>', '<p>f</p>', '<p>f</p>', '', '', '', 2, 'f', 'f', 'f', 'f', '', '', '', '', '', '', '', '', '', '', 'f', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (99, '<p>x</p>', 1, 0, 'B', '', 1587446813, '', 159, 0, 0, 6.00, 1587446813, 1587446813, '<p>x</p>', '<p>x</p>', '<p>x</p>', '<p>x</p>', '', '', '', 2, 'x', 'x', 'x', 'x', '', '', '', '', '', '', '', '', '', '', 'x', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (100, '<p>333</p>', 1, 0, 'D', '', 1587450721, '', 159, 0, 0, 6.00, 1587450721, 1587450721, '<p>3</p>', '<p>3</p>', '<p>3</p>', '<p>3</p>', '', '', '', 2, '3', '3', '3', '3', '', '', '', '', '', '', '', '', '', '', '333', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (101, '<p>h</p>', 1, 0, 'D', '', 1587451014, '', 159, 0, 0, 6.00, 1587451014, 1587451014, '<p>h</p>', '<p>h</p>', '<p>h</p>', '<p>h</p>', '', '', '', 2, 'h', 'h', 'h', 'h', '', '', '', '', '', '', '', '', '', '', 'h', '', 4, 5);
INSERT INTO `ifar_problem` VALUES (102, '<p>1</p>', 1, 0, 'A', '', 1587451750, '', 174, 0, 0, 12.00, 1587451750, 1587451750, '<p>1</p>', '<p>a</p>', '<p>1</p>', '<p>1</p>', '', '', '', 2, '1', 'a', '1', '1', '', '', '', '', '', '', '', '', '', '', '1', '', 4, 3);
INSERT INTO `ifar_problem` VALUES (103, '<p>6</p>', 1, 0, 'C', '', 1587451776, '', 174, 0, 0, 12.00, 1587451776, 1587451776, '<p>6</p>', '<p>6</p>', '<p>6</p>', '<p>6</p>', '', '', '', 2, '6', '6', '6', '6', '', '', '', '', '', '', '', '', '', '', '6', '', 4, 3);
INSERT INTO `ifar_problem` VALUES (104, '<p>&lt;卖水&gt;出自哪部作品()</p>', 1, 0, 'D', '', 1587454214, '', 202, 0, 0, 50.00, 1587454214, 1587454214, '<p>&lt;五典坡&gt;</p>', '<p>&lt;蝴蝶杯&gt;</p>', '<p>&lt;三滴血&gt;</p>', '<p>&lt;火焰驹&gt;</p>', '', '', '', 1, '<五典坡>', '<蝴蝶杯>', '<三滴血>', '<火焰驹>', '', '', '', '', '', '', '', '', '', '', '<卖水>出自哪部作品()', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (105, '<p>下列属于清宫戏台的是()</p>', 1, 0, 'B', '', 1587454552, '', 202, 0, 0, 50.00, 1587454552, 1587454552, '<p>广和楼</p>', '<p>畅音阁</p>', '<p>满庭芳</p>', '<p>天仙茶园</p>', '', '', '', 1, '广和楼', '畅音阁', '满庭芳', '天仙茶园', '', '', '', '', '', '', '', '', '', '', '下列属于清宫戏台的是()', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (106, '<p>秦雪梅吊孝属于什么剧种</p>', 1, 0, 'D', '', 1587611047, '', 204, 0, 0, 25.00, 1587611047, 1587611047, '<p>京剧</p>', '<p>楚剧</p>', '<p>越剧</p>', '<p>豫剧</p>', '', '', '', 1, '京剧', '楚剧', '越剧', '豫剧', '', '', '', '', '', '', '', '', '', '', '秦雪梅吊孝属于什么剧种', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (107, '<p>&lt;秦雪梅吊孝&gt;中的秦雪梅是一个什么样的姑娘&nbsp;</p>', 1, 0, 'B', '', 1587611149, '', 204, 0, 0, 25.00, 1587611149, 1587611149, '<p>好吃懒做</p>', '<p>温和善良、对爱情忠贞不渝</p>', '<p>尖酸刻薄</p>', '<p>外强中干</p>', '', '', '', 1, '好吃懒做', '温和善良、对爱情忠贞不渝', '尖酸刻薄', '外强中干', '', '', '', '', '', '', '', '', '', '', '<秦雪梅吊孝>中的秦雪梅是一个什么样的姑娘 ', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (108, '<p>&lt;秦雪梅吊孝&gt;秦雪梅的青梅竹马是谁</p>', 1, 0, 'A', '', 1587611244, '', 204, 0, 0, 25.00, 1587611244, 1587611244, '<p>商林</p>', '<p>上林</p>', '<p>商琳</p>', '<p>觞霖</p>', '', '', '', 1, '商林', '上林', '商琳', '觞霖', '', '', '', '', '', '', '', '', '', '', '<秦雪梅吊孝>秦雪梅的青梅竹马是谁', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (109, '<p>一加一等于几</p>', 1, 0, 'B', '', 1587611321, '', 204, 0, 0, 14.00, 1587611321, 1587611351, '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '', '', '', 2, '1', '2', '3', '4', '', '', '', '', '', '', '', '', '', '', '一加一等于几', '', 4, 73);
INSERT INTO `ifar_problem` VALUES (110, '<p>二加二等于几</p>', 1, 0, 'B', '', 1587611373, '', 204, 0, 0, 14.00, 1587611373, 1587611373, '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '', '', '', 2, '3', '4', '5', '6', '', '', '', '', '', '', '', '', '', '', '二加二等于几', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (111, '<p>三加三等于几</p>', 2, 0, 'ABC', '', 1587611418, '', 204, 0, 0, 28.00, 1587611418, 1587611418, '<p>6</p>', '<p>6</p>', '<p>6</p>', '<p>9</p>', '', '', '', 2, '6', '6', '6', '9', '', '', '', '', '', '', '', '', '', '', '三加三等于几', '', 4, 0);
INSERT INTO `ifar_problem` VALUES (112, '<p>一加二等于几</p>', 1, 0, 'C', '', 1587611462, '', 204, 0, 0, 14.00, 1587611462, 1587611462, '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '', '', '', 2, '1', '2', '3', '4', '', '', '', '', '', '', '', '', '', '', '一加二等于几', '', 4, 74);
INSERT INTO `ifar_problem` VALUES (115, '<p>测试2</p>', 1, 0, 'C', '', 1587624553, '', 204, 0, 0, 14.00, 1587624553, 1587624553, '<p>1</p>', '<p>1</p>', '<p>2</p>', '<p>2</p>', '', '', '', 2, '1', '1', '2', '2', '', '', '', '', '', '', '', '', '', '', '测试2', '', 4, 73);
INSERT INTO `ifar_problem` VALUES (116, '<p>asdasdasdasdasddad<img class=\"wscnph\" src=\"../uploads/image/20200423/20200423163522_84548.png\" /><img class=\"wscnph\" src=\"../uploads/image/20200423/20200423163531_96000.png\" /><img class=\"wscnph\" src=\"../uploads/image/20200423/20200423163543_25207.png\" /></p>', 1, 0, 'A', '', 1587630875, '', 204, 0, 0, 25.00, 1587630875, 1587630958, '<p>asdasdasdasd</p>', '<p>asdasda</p>', '<p>asdasdsa</p>', '<p>asdasdasd</p>', '', '', '', 1, 'asdasdasdasd', 'asdasda', 'asdasdsa', 'asdasdasd', '', '', '', '', '', '', '', '', '', '', 'asdasdasdasdasddad', '../uploads/image/20200423/20200423163543_25207.png', 4, 0);
INSERT INTO `ifar_problem` VALUES (117, '<p>这是随堂测试，是否会显示到期末考试列表？</p>', 1, 0, 'A', '', 1588066951, '', 205, 0, 0, 50.00, 1588066951, 1588066951, '<p>测试</p>', '<p>测试</p>', '<p>测</p>', '<p>测试</p>', '', '', '', 2, '测试', '测试', '测', '测试', '', '', '', '', '', '', '', '', '', '', '这是随堂测试，是否会显示到期末考试列表？', '', 4, 76);
INSERT INTO `ifar_problem` VALUES (120, '<p>这是随堂测试，是否会显示到期末考试列表2？</p>', 1, 0, 'A', '', 1588145321, '', 205, 0, 0, 50.00, 1588145321, 1588145321, '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '', '', '', 2, '1', '2', '3', '4', '', '', '', '', '', '', '', '', '', '', '这是随堂测试，是否会显示到期末考试列表2？', '', 4, 76);
INSERT INTO `ifar_problem` VALUES (121, '<p>这是随堂测试，是否会显示到期末考试列表？</p>', 1, 0, 'A', '', 1588145356, '', 204, 0, 0, 14.00, 1588145356, 1588145356, '<p>1</p>', '<p>1</p>', '<p>1</p>', '<p>1</p>', '', '', '', 2, '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '这是随堂测试，是否会显示到期末考试列表？', '', 4, 73);

-- ----------------------------
-- Table structure for ifar_section
-- ----------------------------
DROP TABLE IF EXISTS `ifar_section`;
CREATE TABLE `ifar_section`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课时名称',
  `short_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '短名称',
  `paper_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程考试标题',
  `teacher_id` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '讲师编号',
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `channel_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目编号',
  `small_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程缩略图',
  `big_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程封面图',
  `synopsis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程简介',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '课程价格',
  `market_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价格',
  `sale_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销量',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标签',
  `lesson_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细描述',
  `is_recommend` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐(1是0否)',
  `problem_num` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '题目总数',
  `lesson_num` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '课程节数',
  `create_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `update_time` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（0禁用、1可用）',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `preknowledge` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预备知识',
  `video_duration` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频总时长(如1小时5分30秒)',
  `video_duration_num` int(0) NOT NULL DEFAULT 0 COMMENT '视频总时长(单位:秒)',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频文件链接',
  `lesson_type_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程类型名称',
  `lesson_type` int(0) NOT NULL DEFAULT 0 COMMENT '课程类型编号',
  `pid` bigint(0) NOT NULL DEFAULT 0 COMMENT '父编号',
  `node_deep` int(0) NOT NULL DEFAULT 1 COMMENT '节点深度',
  `sort_txt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '序号文本',
  `video_file_size` int(0) NOT NULL DEFAULT 0 COMMENT '视频文件大小(字节)',
  `video_file_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频文件名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sort`(`sort`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节（课程中的第几节课）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_section
-- ----------------------------
INSERT INTO `ifar_section` VALUES (149, '三响', '三响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111132_30286.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966661, 1592968292, 1, 5, '', '6分54秒', 414, '/uploads/2020-06-24/20200624_104421_60649.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第5课', 171781416, '04.5三响_1.mp4');
INSERT INTO `ifar_section` VALUES (146, '颤步拍身', '颤步拍身', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110827_26255.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966416, 1592968107, 1, 2, '', '5分1秒', 301, '/uploads/2020-06-24/20200624_104016_9572.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第2课', 125188178, '04.2颤步拍身_1.mp4');
INSERT INTO `ifar_section` VALUES (147, '弹指弹舌及秧歌步', '弹指弹舌及秧歌步', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111018_11800.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966539, 1592968218, 1, 3, '', '3分58秒', 238, '/uploads/2020-06-24/20200624_104219_70102.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第3课', 98979467, '04.3弹指弹舌及秧歌步_1.mp4');
INSERT INTO `ifar_section` VALUES (144, '击鼓配乐多人表演', '击鼓配乐多人表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111206_73953.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966043, 1592968326, 1, 6, '', '4分36秒', 276, '/uploads/2020-06-24/20200624_103402_33158.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第6课', 114696072, '03.5击鼓多人_1.mp4');
INSERT INTO `ifar_section` VALUES (143, '无配乐多人表演', '无配乐多人表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111148_6820.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965982, 1592968308, 1, 5, '', '2分34秒', 154, '/uploads/2020-06-24/20200624_103302_65319.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第5课', 64114981, '03.4无配乐多人_1.mp4');
INSERT INTO `ifar_section` VALUES (148, '十六响', '十六响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111120_50343.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966590, 1592968280, 1, 4, '', '2分29秒', 149, '/uploads/2020-06-24/20200624_104310_1151.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第4课', 62043030, '04.4十六响_1.mp4');
INSERT INTO `ifar_section` VALUES (145, '十响', '十响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110810_82336.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966209, 1592979580, 1, 1, '', '6分39秒', 399, '/uploads/2020-06-24/20200624_103648_11721.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第1课', 165574846, '04.1十打_1.mp4');
INSERT INTO `ifar_section` VALUES (142, '女生单打表演', '女生单打表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111035_96902.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965864, 1592968235, 1, 3, '', '1分43秒', 103, '/uploads/2020-06-24/20200624_103104_29500.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第3课', 42962332, '03.2女生单打_1.mp4');
INSERT INTO `ifar_section` VALUES (138, '服装特点', '服装特点', '', 64, '孙绘', 0, '', '/uploads/2020-06-24/20200624_110733_73323.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965357, 1592968053, 1, 1, '', '4分23秒', 263, '/uploads/2020-06-24/20200624_102236_47384.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第1课', 109469774, '02.3服装特点_1_1.mp4');
INSERT INTO `ifar_section` VALUES (139, '招式特点及技巧特点', '招式特点及技巧特点', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110918_4434.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965468, 1592968158, 1, 2, '', '16分40秒', 1000, '/uploads/2020-06-24/20200624_102427_98741.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第2课', 289973710, '02.4.00招式特点及技巧特点_1_1.mp4');
INSERT INTO `ifar_section` VALUES (140, '肉连响全套', '肉连响全套', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110748_66156.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965728, 1592968068, 1, 1, '', '4分41秒', 281, '/uploads/2020-06-24/20200624_102848_13019.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第1课', 116330960, '03.1肉连响全套_1_1.mp4');
INSERT INTO `ifar_section` VALUES (113, '马山民歌“五大调”', '马山民歌“五大调”', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150420_34807.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592821761, 1592992415, 1, 1, '', '13分32秒', 812, '/uploads/2020-06-24/20200624_175335_31512.mp4', '戏曲-马山民歌-中级-代表曲目', 325, 0, 1, '第1课', 235538345, '慕课-马山民歌_8_1.mp4');
INSERT INTO `ifar_section` VALUES (114, '方言演唱', '方言演唱', '', 59, '廖开富', 0, '', '/uploads/2020-06-24/20200624_140108_11285.png', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592821908, 1592992126, 1, 1, '', '4分42秒', 282, '/uploads/2020-06-24/20200624_174846_33168.mp4', '戏曲-马山民歌-高级-演唱方法', 327, 0, 1, '第1课', 82011702, '慕课-马山民歌_10_1.mp4');
INSERT INTO `ifar_section` VALUES (160, '语言特色', '语言特色', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_180223_34393.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592992944, 1592992944, 1, 2, '', '2分46秒', 166, '/uploads/2020-06-24/20200624_180223_76011.mp4', '戏曲-马山民歌-高级-演唱方法', 327, 0, 1, '第2课', 55570972, '慕课-马山民歌_9_1.mp4');
INSERT INTO `ifar_section` VALUES (159, '语言特色', '语言特色', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_154922_34105.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592984021, 1592984962, 1, 8, '', '2分46秒', 166, '/uploads/2020-06-24/20200624_153341_16919.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第8课', 55570972, '慕课-马山民歌_9_1.mp4');
INSERT INTO `ifar_section` VALUES (141, '男生单打表演', '男生单打表演', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_110944_21874.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592965795, 1592969145, 1, 2, '', '2分33秒', 153, '/uploads/2020-06-24/20200624_102955_6295.mp4', '舞蹈-肉连响-中级-舞台赏析', 346, 0, 1, '第2课', 63516566, '03.mp4');
INSERT INTO `ifar_section` VALUES (131, '悠久历史', '悠久历史', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150524_33373.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592891237, 1592895924, 1, 1, '', '4分8秒', 248, '/uploads/2020-06-23/20200623_134716_95352.mp4', '戏曲-马山民歌-入门-历史溯源', 338, 0, 1, '第1课', 169476564, '慕课-马山民歌_1.mp4');
INSERT INTO `ifar_section` VALUES (132, '历史大事记', '历史大事记', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150712_21925.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592891404, 1592896032, 1, 2, '', '2分15秒', 135, '/uploads/2020-06-23/20200623_135004_85228.mp4', '戏曲-马山民歌-入门-历史溯源', 338, 0, 1, '第2课', 90003155, '慕课-马山民歌_2.mp4');
INSERT INTO `ifar_section` VALUES (133, '体裁形式', '体裁形式', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150652_7515.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592891549, 1592896012, 1, 1, '', '3分31秒', 211, '/uploads/2020-06-23/20200623_135228_69292.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第1课', 140565484, '慕课-马山民歌_3.mp4');
INSERT INTO `ifar_section` VALUES (134, '曲调特点', '曲调特点', '', 61, '胡曼', 0, '', '/uploads/2020-06-24/20200624_155513_5922.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592891630, 1592985313, 1, 2, '', '1分59秒', 119, '/uploads/2020-06-23/20200623_135349_92537.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第2课', 80466604, '慕课-马山民歌_4.mp4');
INSERT INTO `ifar_section` VALUES (135, '结构特点', '结构特点', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150741_93969.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592891755, 1592896061, 1, 4, '', '8分35秒', 515, '/uploads/2020-06-23/20200623_135555_49742.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第4课', 340567140, '慕课-马山民歌_5.mp4');
INSERT INTO `ifar_section` VALUES (136, '音调特点', '音调特点', '', 59, '廖开富', 0, '', '/uploads/2020-06-23/20200623_150803_15902.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592892035, 1592896083, 1, 5, '', '3分4秒', 184, '/uploads/2020-06-23/20200623_140035_86311.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第5课', 53486017, '慕课-马山民歌_6_1.mp4');
INSERT INTO `ifar_section` VALUES (137, '歌词押韵', '歌词押韵', '', 61, '胡曼', 0, '', '/uploads/2020-06-23/20200623_150818_78343.jpg', '本课程旨在通过讲、唱、演结合的表现形式，对马山民歌的历史溯源、基本特征、演唱方法及特点等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到马山民歌的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592892097, 1592896098, 1, 7, '', '4分24秒', 264, '/uploads/2020-06-23/20200623_140137_98505.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第7课', 85023833, '慕课-马山民歌_7_1.mp4');
INSERT INTO `ifar_section` VALUES (150, '七响', '七响', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111218_95281.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966730, 1592968338, 1, 6, '', '5分30秒', 330, '/uploads/2020-06-24/20200624_104530_94802.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第6课', 137125810, '04.6七响_1.mp4');
INSERT INTO `ifar_section` VALUES (151, '穿掌吸腿跳', '穿掌吸腿跳', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111244_96245.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966828, 1592968364, 1, 7, '', '6分6秒', 366, '/uploads/2020-06-24/20200624_104708_79907.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第7课', 151936293, '04.7穿掌吸腿跳_1.mp4');
INSERT INTO `ifar_section` VALUES (152, '对打（单面）', '对打（单面）', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111258_66074.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966882, 1592988005, 1, 8, '', '4分25秒', 265, '/uploads/2020-06-24/20200624_104802_4934.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第8课', 110016301, '04.8 对打_1.mp4');
INSERT INTO `ifar_section` VALUES (153, '六合臂对打（单面）', '六合臂对打（单面）', '', 66, '刘守红', 0, '', '/uploads/2020-06-24/20200624_111309_11880.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592966923, 1592987922, 1, 9, '', '4分22秒', 262, '/uploads/2020-06-24/20200624_104843_955.mp4', '舞蹈-肉连响-高级-舞蹈教学', 347, 0, 1, '第9课', 109020675, '04.9双打单面_1.mp4');
INSERT INTO `ifar_section` VALUES (154, '泥神道与巴人舞', '泥神道与巴人舞', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_110852_90388.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592967007, 1592968132, 1, 1, '', '7分9秒', 429, '/uploads/2020-06-24/20200624_105006_78796.mp4', '舞蹈-肉连响-入门-历史溯源', 344, 0, 1, '第1课', 178057256, '01.1泥神道与巴人舞_1_1.mp4');
INSERT INTO `ifar_section` VALUES (155, '肉连响的定名', '肉连响的定名', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_111003_63002.png', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592967053, 1592968204, 1, 2, '', '4分22秒', 262, '/uploads/2020-06-24/20200624_105052_16766.mp4', '舞蹈-肉连响-入门-历史溯源', 344, 0, 1, '第2课', 108938890, '01.2肉连响的定名_1_1.mp4');
INSERT INTO `ifar_section` VALUES (156, '艺术特征', '艺术特征', '', 64, '孙绘', 0, '', '/uploads/2020-06-24/20200624_111107_89899.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592967248, 1592968267, 1, 3, '', '5分41秒', 341, '/uploads/2020-06-24/20200624_105407_86563.mp4', '舞蹈-肉连响-初级-项目特色', 345, 0, 1, '第3课', 141840364, '02.1艺术特征_1_1.mp4');
INSERT INTO `ifar_section` VALUES (157, '文化内涵', '文化内涵', '', 62, '谭宗派', 0, '', '/uploads/2020-06-24/20200624_111230_13123.jpg', '本课程旨在通过讲、跳、演结合的表现形式，对肉连响的历史溯源、项目特色、舞台赏析及舞蹈教学等方面进行讲解和示范，力求使参与到课程的观者能够深入体会到肉连响的独特魅力，成为这项艺术的欣赏者、传播者。', 0.00, 0.00, 0, '', '', 0, 0, 0, 1592967729, 1592968350, 1, 6, '', '9分45秒', 585, '/uploads/2020-06-24/20200624_110209_55047.mp4', '戏曲-马山民歌-初级-艺术特征', 339, 0, 1, '第6课', 242939991, '02.2.文化内涵mp4_1_1.mp4');

-- ----------------------------
-- Table structure for ifar_teacher
-- ----------------------------
DROP TABLE IF EXISTS `ifar_teacher`;
CREATE TABLE `ifar_teacher`  (
  `id` smallint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '讲师编号',
  `teacher_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '讲师名称',
  `sex` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '讲师性别（1男2女）',
  `headpic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '讲师头像',
  `rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '讲师头衔',
  `signature` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `weixin` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '讲师微信',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '讲师电话',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细描述',
  `level` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '讲师级别(1初级2中级3高级4特级)',
  `star` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '讲师星级(1-5级)',
  `status` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(0禁用；1可用)',
  `create_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(0) NOT NULL DEFAULT 0 COMMENT '修改时间',
  `lesson_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '擅长的课程类型',
  `lesson_type_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '讲师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ifar_teacher
-- ----------------------------
INSERT INTO `ifar_teacher` VALUES (66, '刘守红', 0, '/uploads/2020-06-24/20200624_140632_46999.png', '', '男，汉族，1987年8月生，2010年被评为第二批省级\"非遗\"代表性传承人， 成为湖北省最年轻的\"非遗\"项目代表性传承人。', '', '0', '刘守红，男，汉族，1987年8月生，2010年，被湖北省文化厅公布为第二批省级\"非遗\"代表性传承人，成为湖北省最年轻的\"非遗\"项目代表性传承人。8岁开始跟随国家级非物质文化遗产传承人、恩施土家族苗族自治州\"民间艺术大师\"吴修富学习肉连响，深得真传，在对肉连响舞蹈的长期学习、实践中，将肉连响的“秧歌步”、“穿掌吸腿跳、 “颤步绕头转身”、“双打”、“十响”、“七响、“四响”、“三响”等主要动作表现得淋漓尽致和运用自如。肉连响本无唱腔和伴奏，本人在表演中利用独奏和合奏鼓乐，利用拇指与 中指用力弹搓和用舌头顶上腭发出的响声相配合，组成十分悦耳动听的和谐交响，给人以热烈、活泼、诙谐、粗犷的感受。其为肉连响的发扬光大作出了杰出的贡献。', 0, 0, 1, 1592965071, 1592978792, '336', '舞蹈-肉连响');
INSERT INTO `ifar_teacher` VALUES (59, '廖开富', 0, '/uploads/2020-06-24/20200624_141343_96729.png', '', '男，笔名晓章，1953年生，祖籍河南许昌，现为湖北作家协会会员，国际炎黄文化研究会理事、国际炎黄文化出版社特邀编审。', '', '0', '廖开富，男，笔名晓章，1953年生，祖籍河南许昌，七十年代末调入文化战线工作。七十年代末调入文化战线工作。现为湖北作家协会会员，国际炎黄文化研究会理事、国际炎黄文化出版社特邀编审，中国写作学会会员、湖北省写作学会理事，湖北荆州作家协会常务副主席。九十年代初开始从事文学创作，师从中国当代著名作家刘绍棠先生、著名作家苏群先生、著名作家文艺理论家涂怀章先生。曾有长篇小说《野湖滩》、《两个女人的影子》.《黑风魔影》、《非常人生》等，由国家级出版社出版发行。八十余篇〔部', 0, 0, 1, 1592821551, 1592979224, '321', '戏曲-马山民歌');
INSERT INTO `ifar_teacher` VALUES (61, '胡曼', 0, '/uploads/2020-06-22/20200622_185336_76229.png', '', '男，1939年生，一级作曲，荆州市艺术研究所原所长，从事音乐研究及创作的时间长达60年之久,共创作了各类音乐作品200余件。', '', '0', '胡曼，男，1939年生，一级作曲，从事音乐研究及创作的时间长达60年之久,共创作了各类音乐作品200余件。曾参加湖北民歌集成的编辑工作,走遍湖北30多个县市收集民歌。他创作的音乐作品《割早稻》,曾参加首届羊城音乐花会演出及全国职工汇演。在“第四届湖北音乐金编钟奖”评选活动中喜获终身成就奖。', 0, 0, 1, 1592823216, 1592981089, '321', '戏曲-马山民歌');
INSERT INTO `ifar_teacher` VALUES (62, '谭宗派', 0, '/uploads/2020-06-22/20200622_185702_51824.png', '', '男，1935年生，利川人，土家族，中国民俗文化专家，湖北文博研究副馆员，湖北省民俗学会会员，原利川市文物管理所所长。', '', '0', '谭宗派，男，1935年生，利川人，土家族，中国民俗文化专家，湖北文博研究副馆员，湖北省民俗学会会员，原利川市文物管理所所长。1956年参加工作，毕生都以挖掘、传承和保护土家民族文化为己任，先后在省、国家级刊物发表学术性文章30余篇，其《大水井古建筑群》一文已由国家统计局存入国家信息中心，2002年他主编《鱼木寨研究》，被评为湖北省民族学会1998至2002年度优秀著作一等奖。在任市文管所所长期间，他实地考察发现野外文物300余处。作为资深权威土家民俗专家，他先后承担了鱼木寨、大水井申报国家级文物保护单位的工作。', 0, 0, 1, 1592823422, 1592978301, '336', '舞蹈-肉连响');
INSERT INTO `ifar_teacher` VALUES (64, '孙绘', 0, '/uploads/2020-06-23/20200623_163426_98699.png', '', '男，汉族，1949年生，利川市凉雾乡人，长期从事文化工作。曾主持主编《利川故事》、《夷水歌谣》、《利川谚语谜语歇后语》等。', '', '0', '孙绘，男，汉族，1949年生，利川市凉雾乡人，共产党员。长期从事文化工作，多次到武汉大学、中央民族大学、湖北美院、湖北省文艺干校专修文物、美术、图书、文艺创作等专业，是中国群众文化学会会员、湖北省考古学会会员、湖北省社会科学联合会会员、《中国文化报》特约通讯员、利川市民族民间文化保护工程专家委员会主任，曾任利川市文化局副局长。2009年5月退休留用，负责全市非物质文化遗产方面工作。其主持主编《利川故事》、《夷水歌谣》、《利川谚语谜语歇后语》、《肉连响》等丛书。', 0, 0, 1, 1592882977, 1592978293, '336', '舞蹈-肉连响');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_09_11_033424_create_articles_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `uid` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `ipAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `articles_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `articles_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
