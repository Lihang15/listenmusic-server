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

 Date: 15/05/2022 20:41:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(255) NOT NULL,
  `play_volume` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `sound_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of music
-- ----------------------------
BEGIN;
INSERT INTO `music` VALUES (1, 12, '泡沫', '05:04', '2022-01-02 00:00:00', NULL, NULL, 1, 'https://m801.music.126.net/20220513111618/1a5daa2d642ae2bdeaed281eaca5c1ba/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/8696373754/766d/ed97/78e2/20f74a2020a287a88c4c274c4cacca87.mp3');
INSERT INTO `music` VALUES (2, 15, '光年', '03:34', '2022-05-09 00:00:00', NULL, NULL, 1, 'https://m701.music.126.net/20220513112835/5f7b810cc0e19102be063913d587aa2f/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/8696377981/c04b/8853/26b4/e633691489a70bc3c9c7e74edd950b9a.mp3');
INSERT INTO `music` VALUES (3, 44, 'iu1', '03:20', '2022-05-09 00:00:00', NULL, NULL, 2, 'https://m801.music.126.net/20220510101003/b39c6690af257f5f4023894ee2518048/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/8696377981/c04b/8853/26b4/e633691489a70bc3c9c7e74edd950b9a.mp3');
INSERT INTO `music` VALUES (4, 56, 'iu2', '05:10', '2022-05-09 00:00:00', NULL, NULL, 2, 'https://m801.music.126.net/20220510101003/b39c6690af257f5f4023894ee2518048/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/8696377981/c04b/8853/26b4/e633691489a70bc3c9c7e74edd950b9a.mp3');
INSERT INTO `music` VALUES (5, 45, '爱是一道光', '02:03', '2022-05-09 00:00:00', NULL, NULL, 1, 'https://m801.music.126.net/20220510213154/4d3795e72a740859e7b37605e605cc97/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/8696373754/766d/ed97/78e2/20f74a2020a287a88c4c274c4cacca87.mp3');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
