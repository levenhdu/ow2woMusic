/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : ow2wo

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-11-02 16:25:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `album`
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `logoAddress` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('1', 'jay', '周杰伦第一张演唱会', 'jay.jpg', '2015-09-02 14:43:31');
INSERT INTO `album` VALUES ('2', ' BIGBANG - ALIVE', 'bigbang alive专辑', 'bigbang.jpg', '2015-09-06 13:21:48');
INSERT INTO `album` VALUES ('3', '후아유 - 학교 2015 OST Part 1', '2015电视剧原声', 'reset.jpg', '2015-09-06 13:24:16');

-- ----------------------------
-- Table structure for `favoritemusic`
-- ----------------------------
DROP TABLE IF EXISTS `favoritemusic`;
CREATE TABLE `favoritemusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FavoriteListName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCABBD5E92FDBDD82` (`userId`),
  CONSTRAINT `FKCABBD5E92FDBDD82` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favoritemusic
-- ----------------------------

-- ----------------------------
-- Table structure for `favoritemusic_music`
-- ----------------------------
DROP TABLE IF EXISTS `favoritemusic_music`;
CREATE TABLE `favoritemusic_music` (
  `favoriteMusicId` int(11) NOT NULL,
  `musicId` int(11) NOT NULL,
  PRIMARY KEY (`musicId`,`favoriteMusicId`),
  KEY `FKEFA7544F282926B4` (`musicId`),
  KEY `FKEFA7544FD2477E5C` (`favoriteMusicId`),
  CONSTRAINT `FKEFA7544F282926B4` FOREIGN KEY (`musicId`) REFERENCES `music` (`id`),
  CONSTRAINT `FKEFA7544FD2477E5C` FOREIGN KEY (`favoriteMusicId`) REFERENCES `favoritemusic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favoritemusic_music
-- ----------------------------

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicName` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `recommend` bit(1) NOT NULL,
  `singerId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK636EE25D2664464` (`singerId`),
  KEY `FK636EE259C6B5CC8` (`albumId`),
  CONSTRAINT `FK636EE259C6B5CC8` FOREIGN KEY (`albumId`) REFERENCES `album` (`id`),
  CONSTRAINT `FK636EE25D2664464` FOREIGN KEY (`singerId`) REFERENCES `singer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', 'alive', '198', '7.64', '', '2', '2');
INSERT INTO `music` VALUES ('2', '星晴', '259', '10.3', '', '1', '1');
INSERT INTO `music` VALUES ('3', 'reset', '242', '9.3', '', '3', '3');
INSERT INTO `music` VALUES ('4', '1', '11', '1', '', '1', '1');
INSERT INTO `music` VALUES ('5', '6', '12', '1', '', '1', '1');
INSERT INTO `music` VALUES ('6', '7', '1', '1', '', '1', '1');
INSERT INTO `music` VALUES ('7', '56', '78', '7', '', '1', '1');
INSERT INTO `music` VALUES ('8', '6', '5', '5', '', '1', '1');
INSERT INTO `music` VALUES ('9', '112', '0', '1', '', '1', '1');
INSERT INTO `music` VALUES ('10', '55', '1', '1', '', '1', '1');
INSERT INTO `music` VALUES ('11', '54', '1', '1', '', '1', '1');
INSERT INTO `music` VALUES ('12', 'alive2', '1', '1', '', '2', '2');

-- ----------------------------
-- Table structure for `musicdetail`
-- ----------------------------
DROP TABLE IF EXISTS `musicdetail`;
CREATE TABLE `musicdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `composer` varchar(255) DEFAULT NULL,
  `lyricist` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `musicId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `musicId` (`musicId`),
  KEY `FK2FE202D6282926B4` (`musicId`),
  CONSTRAINT `FK2FE202D6282926B4` FOREIGN KEY (`musicId`) REFERENCES `music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `musiclink`
-- ----------------------------
DROP TABLE IF EXISTS `musiclink`;
CREATE TABLE `musiclink` (
  `music_id` int(11) NOT NULL,
  `localAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`music_id`),
  KEY `FK173D77BF641B629` (`music_id`),
  CONSTRAINT `FK173D77BF641B629` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musiclink
-- ----------------------------
INSERT INTO `musiclink` VALUES ('1', '2.mp3');
INSERT INTO `musiclink` VALUES ('2', '1.mp3');
INSERT INTO `musiclink` VALUES ('3', '3.mp3');
INSERT INTO `musiclink` VALUES ('12', '2.mp3');

-- ----------------------------
-- Table structure for `musicplaycount`
-- ----------------------------
DROP TABLE IF EXISTS `musicplaycount`;
CREATE TABLE `musicplaycount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mount` int(11) NOT NULL,
  `musicId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `musicId` (`musicId`),
  KEY `FK324F0196282926B4` (`musicId`),
  CONSTRAINT `FK324F0196282926B4` FOREIGN KEY (`musicId`) REFERENCES `music` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicplaycount
-- ----------------------------
INSERT INTO `musicplaycount` VALUES ('1', '12', '1');
INSERT INTO `musicplaycount` VALUES ('2', '100', '2');
INSERT INTO `musicplaycount` VALUES ('3', '1300', '3');
INSERT INTO `musicplaycount` VALUES ('4', '45', '4');
INSERT INTO `musicplaycount` VALUES ('5', '48', '5');
INSERT INTO `musicplaycount` VALUES ('6', '78', '6');
INSERT INTO `musicplaycount` VALUES ('7', '89', '7');
INSERT INTO `musicplaycount` VALUES ('8', '100', '8');
INSERT INTO `musicplaycount` VALUES ('9', '56', '9');
INSERT INTO `musicplaycount` VALUES ('10', '78', '10');
INSERT INTO `musicplaycount` VALUES ('11', '145', '11');
INSERT INTO `musicplaycount` VALUES ('12', '78', '12');

-- ----------------------------
-- Table structure for `singer`
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerName` varchar(255) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '周杰伦', '21', '周董', 'MALE');
INSERT INTO `singer` VALUES ('2', 'bigbang', '6', '韩国bigbang', 'MALE');
INSERT INTO `singer` VALUES ('3', 'jinsil', '20', '韩国歌手', 'FEMALE');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
