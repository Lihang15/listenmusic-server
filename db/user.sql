/*
 Navicat Premium Data Transfer

 Source Server         : banco_local
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : listenmusic

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 15/05/2022 20:41:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'wanglihang', '123456', NULL, NULL, NULL, 'https://img0.baidu.com/it/u=2829340581,2051850842&fm=253&fmt=auto&app=138&f=JPEG?w=658&h=468');
INSERT INTO `user` VALUES (2, 'user123456', '123456', NULL, NULL, NULL, 'https://img2.baidu.com/it/u=2049304473,560336778&fm=253&fmt=auto&app=138&f=JPEG?w=695&h=500');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
