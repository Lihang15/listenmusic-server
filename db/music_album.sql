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

 Date: 15/05/2022 20:41:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for music_album
-- ----------------------------
DROP TABLE IF EXISTS `music_album`;
CREATE TABLE `music_album` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  `played` int(11) DEFAULT NULL,
  `playing` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `author` json DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of music_album
-- ----------------------------
BEGIN;
INSERT INTO `music_album` VALUES (1, '立航哥真心推荐', 'https://img0.baidu.com/it/u=1119558131,887693468&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '全都是泡沫是一刹那的花火', 100, 56, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', 'iii');
INSERT INTO `music_album` VALUES (2, 'iu李知恩', 'https://img1.baidu.com/it/u=2982830715,2764172812&fm=253&fmt=auto&app=138&f=JPEG?w=100&h=100', NULL, NULL, NULL, '人美歌甜', 15, 2, '韩国女歌手', 'https://img2.baidu.com/it/u=4255594644,2100522121&fm=253&fmt=auto&app=138&f=JPEG?w=486&h=500', '{\"name\": \"iu\", \"avatar\": \"https://img1.baidu.com/it/u=2751550821,3026666648&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500\"}', 'dd');
INSERT INTO `music_album` VALUES (3, '天上天下', 'https://img1.baidu.com/it/u=573723771,397079795&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '不会唱跳rap篮球', 94, 18, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (4, '华晨宇', 'https://img2.baidu.com/it/u=1540299065,1537628242&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=566', NULL, NULL, NULL, '是的我们有一个孩子', 55, 10, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (5, '周杰伦', 'https://img0.baidu.com/it/u=3293490222,1755759486&fm=253&fmt=auto&app=138&f=JPEG?w=490&h=323', NULL, NULL, NULL, 'jay', 22, 25, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (6, '蔡徐坤', 'https://img2.baidu.com/it/u=3523059332,64173709&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 57, 25, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (7, '孙燕姿', 'https://img2.baidu.com/it/u=2724284774,120298334&fm=253&fmt=auto&app=138&f=JPEG?w=443&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 353, 3, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (8, 'beyond', 'https://img1.baidu.com/it/u=870080929,980199664&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 587, 8, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (9, '许嵩', 'https://img2.baidu.com/it/u=862350559,3076951142&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 25, 4, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (10, '声色', 'https://img1.baidu.com/it/u=1542726172,3314413892&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 40, 8, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (11, '阿兰', 'https://img1.baidu.com/it/u=1101575524,3805381106&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=502', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 56, 88, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (12, '王菲', 'https://img0.baidu.com/it/u=2456281336,3325215665&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 25, 85, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (13, '田馥甄', 'https://img2.baidu.com/it/u=2820921425,2475562695&fm=253&fmt=auto&app=138&f=JPEG?w=520&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 78, 58, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (14, '韩国歌手', 'https://img0.baidu.com/it/u=2661758148,1177341281&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889', NULL, NULL, NULL, '韩国美女歌手', 45, 4, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (15, '扑彩英', 'https://img1.baidu.com/it/u=2019117675,2745951815&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500', NULL, NULL, NULL, '扑彩英rosesolo', 788, 1, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (16, '刘德华', 'https://img2.baidu.com/it/u=4171756209,1499220199&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666', NULL, NULL, NULL, '回味经典', 7999, 56, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (17, '周笔畅', 'https://img2.baidu.com/it/u=310582885,3061107529&fm=253&fmt=auto&app=138&f=JPEG?w=654&h=500', NULL, NULL, NULL, '快乐女声', 45, 7, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (18, '张国荣', 'https://img0.baidu.com/it/u=161460353,2841666653&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=406', NULL, NULL, NULL, '张国荣', 8888, 9, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (19, '优质男模', 'https://img0.baidu.com/it/u=3671160452,2528487367&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=866', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 231, 4, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (20, '王嘉尔', 'https://img2.baidu.com/it/u=2485627626,1049605446&fm=253&fmt=auto&app=138&f=JPEG?w=334&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 434, 474, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (21, '樱花专辑', 'https://img0.baidu.com/it/u=1065575577,806677414&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 4324, 57, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (22, '金泰妍', 'https://img2.baidu.com/it/u=3405837821,3377982498&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 5435, 575, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (23, '动漫主题', 'https://img2.baidu.com/it/u=720092266,3802024967&fm=253&fmt=auto&app=138&f=JPEG?w=282&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 4324, 2852, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (24, '蔡徐坤', 'https://img1.baidu.com/it/u=2903378600,969815905&fm=253&fmt=auto&app=120&f=JPEG?w=690&h=1035', NULL, NULL, NULL, '坤坤', 55234, 585, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
INSERT INTO `music_album` VALUES (25, '周杰伦', 'https://img1.baidu.com/it/u=1083308636,158681570&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, '鸡哥鸡你太美会唱跳rap篮球，会唱跳rap篮球', 434, 858, '中国歌手', 'https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504', '{\"name\": \"邓紫棋\", \"avatar\": \"https://img1.baidu.com/it/u=1083689095,1785873391&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504\"}', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
