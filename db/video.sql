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

 Date: 15/05/2022 20:42:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES (1, '新歌mv', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/b9838472fc070dda8c1af3a05a314023/334aeac0389e9fa77fa21c02b9c9c04c.mp4?wsSecret=d47ce65b4628f4059bdfc037cefb528d&wsTime=1651839843', NULL, NULL, NULL);
INSERT INTO `video` VALUES (2, '莫文蔚', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MTE1NDU5MDAz/59d78af770a55a226487dfde9c5b2338/c3e2f1eb1f2f49542a1285bacaff542b.mp4?wsSecret=2c6c7fe77640d5ba31cbd396097d64ec&wsTime=1651839892', NULL, NULL, NULL);
INSERT INTO `video` VALUES (3, '小学', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/89a6a279dc2acfcd068b45ce72b1f560/533e4183a709699d566180ed0cd9abe9.mp4?wsSecret=c5b4439efef8aa96c3c353d715b85fd5&wsTime=1651840054', NULL, NULL, NULL);
INSERT INTO `video` VALUES (4, '行啊伤心', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/89a6a279dc2acfcd068b45ce72b1f560/533e4183a709699d566180ed0cd9abe9.mp4?wsSecret=c5b4439efef8aa96c3c353d715b85fd5&wsTime=1651840054', NULL, NULL, NULL);
INSERT INTO `video` VALUES (5, '除非啊', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/89a6a279dc2acfcd068b45ce72b1f560/533e4183a709699d566180ed0cd9abe9.mp4?wsSecret=c5b4439efef8aa96c3c353d715b85fd5&wsTime=1651840054', NULL, NULL, NULL);
INSERT INTO `video` VALUES (6, 'fsf', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/b9838472fc070dda8c1af3a05a314023/334aeac0389e9fa77fa21c02b9c9c04c.mp4?wsSecret=d47ce65b4628f4059bdfc037cefb528d&wsTime=1651839843', NULL, NULL, NULL);
INSERT INTO `video` VALUES (7, 'fsdf', 'https://vodkgeyttp8.vod.126.net/cloudmusic/MjQ3NDQ3MjUw/b9838472fc070dda8c1af3a05a314023/334aeac0389e9fa77fa21c02b9c9c04c.mp4?wsSecret=d47ce65b4628f4059bdfc037cefb528d&wsTime=1651839843', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
