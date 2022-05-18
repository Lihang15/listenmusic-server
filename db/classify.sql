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

 Date: 15/05/2022 20:40:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `classify` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of classify
-- ----------------------------
BEGIN;
INSERT INTO `classify` VALUES (1, '头条', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (2, '动漫', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (3, '电影', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (4, '广播', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (5, '精品', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (6, '直播', '推荐', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (7, '历史', '知识', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (8, '财经', '知识', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (9, '基金', '知识', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (10, '动物', '知识', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (11, '理财', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (12, '股票', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (13, '买菜', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (14, '运动', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (15, '旅游', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (16, '健康', '生活', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (17, '唱', '放松', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (18, '跳', '放松', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (19, 'rap', '放松', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (20, '篮球', '放松', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (21, '游戏', '兴趣', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (22, '玩乐', '兴趣', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (23, '汽车', '兴趣', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (24, '英语', '外语', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (25, '日语', '外语', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (26, '西语', '外语', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (27, '汉语', '外语', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (28, '俄语', '外语', NULL, NULL, NULL, 'Home');
INSERT INTO `classify` VALUES (29, '德语', '外语', NULL, NULL, NULL, 'Home');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
