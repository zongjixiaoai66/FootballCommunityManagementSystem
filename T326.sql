/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t326`;
CREATE DATABASE IF NOT EXISTS `t326` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t326`;

DROP TABLE IF EXISTS `changdi`;
CREATE TABLE IF NOT EXISTS `changdi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `changdi_name` varchar(200) DEFAULT NULL COMMENT '场地名称  Search111 ',
  `changdi_uuid_number` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdi_photo` varchar(200) DEFAULT NULL COMMENT '场地照片',
  `changdi_address` varchar(200) DEFAULT NULL COMMENT '场地位置',
  `changdi_types` int DEFAULT NULL COMMENT '场地类型 Search111',
  `changdi_clicknum` int DEFAULT NULL COMMENT '场地热度',
  `changdi_content` longtext COMMENT '场地介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `changdi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='场地';

DELETE FROM `changdi`;
INSERT INTO `changdi` (`id`, `changdi_name`, `changdi_uuid_number`, `changdi_photo`, `changdi_address`, `changdi_types`, `changdi_clicknum`, `changdi_content`, `shangxia_types`, `changdi_delete`, `insert_time`, `create_time`) VALUES
	(1, '场地名称1', '1679123030384', 'upload/changdi1.jpg', '场地位置1', 2, 312, '场地介绍1', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, '场地名称2', '1679123030357', 'upload/changdi2.jpg', '场地位置2', 4, 171, '场地介绍2', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, '场地名称3', '1679123030398', 'upload/changdi3.jpg', '场地位置3', 1, 448, '场地介绍3', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, '场地名称4', '1679123030373', 'upload/changdi4.jpg', '场地位置4', 1, 225, '场地介绍4', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, '场地名称5', '1679123030387', 'upload/changdi5.jpg', '场地位置5', 1, 436, '场地介绍5', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, '场地名称6', '1679123030363', 'upload/changdi6.jpg', '场地位置6', 1, 18, '场地介绍6', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, '场地名称7', '1679123030376', 'upload/changdi7.jpg', '场地位置7', 1, 12, '场地介绍7', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, '场地名称8', '1679123030327', 'upload/changdi8.jpg', '场地位置8', 4, 94, '场地介绍8', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, '场地名称9', '1679123030356', 'upload/changdi9.jpg', '场地位置9', 3, 204, '场地介绍9', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, '场地名称10', '1679123030388', 'upload/changdi10.jpg', '场地位置10', 3, 147, '场地介绍10', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, '场地名称11', '1679123030354', 'upload/changdi11.jpg', '场地位置11', 2, 468, '场地介绍11', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, '场地名称12', '1679123030345', 'upload/changdi12.jpg', '场地位置12', 4, 35, '场地介绍12', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, '场地名称13', '1679123030327', 'upload/changdi13.jpg', '场地位置13', 3, 202, '场地介绍13', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, '场地名称14', '1679123030370', 'upload/changdi14.jpg', '场地位置14', 4, 157, '场地介绍14', 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50');

DROP TABLE IF EXISTS `changdi_collection`;
CREATE TABLE IF NOT EXISTS `changdi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int DEFAULT NULL COMMENT '场地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `changdi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='场地收藏';

DELETE FROM `changdi_collection`;
INSERT INTO `changdi_collection` (`id`, `changdi_id`, `yonghu_id`, `changdi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, 2, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, 3, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, 4, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, 5, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, 6, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, 7, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, 8, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, 9, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, 10, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, 11, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, 12, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, 13, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, 14, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(15, 3, 4, 1, '2023-03-18 07:57:35', '2023-03-18 07:57:35'),
	(16, 3, 1, 1, '2024-08-04 02:02:00', '2024-08-04 02:02:00');

DROP TABLE IF EXISTS `changdi_liuyan`;
CREATE TABLE IF NOT EXISTS `changdi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int DEFAULT NULL COMMENT '场地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `changdi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='场地留言';

DELETE FROM `changdi_liuyan`;
INSERT INTO `changdi_liuyan` (`id`, `changdi_id`, `yonghu_id`, `changdi_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-03-18 07:03:50', '回复信息1', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, 2, 3, '留言内容2', '2023-03-18 07:03:50', '回复信息2', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, 3, 2, '留言内容3', '2023-03-18 07:03:50', '回复信息3', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, 4, 3, '留言内容4', '2023-03-18 07:03:50', '回复信息4', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, 5, 2, '留言内容5', '2023-03-18 07:03:50', '回复信息5', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, 6, 3, '留言内容6', '2023-03-18 07:03:50', '回复信息6', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, 7, 1, '留言内容7', '2023-03-18 07:03:50', '回复信息7', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, 8, 1, '留言内容8', '2023-03-18 07:03:50', '回复信息8', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, 9, 2, '留言内容9', '2023-03-18 07:03:50', '回复信息9', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, 10, 3, '留言内容10', '2023-03-18 07:03:50', '回复信息10', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, 11, 3, '留言内容11', '2023-03-18 07:03:50', '回复信息11', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, 12, 2, '留言内容12', '2023-03-18 07:03:50', '回复信息12', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, 13, 1, '留言内容13', '2023-03-18 07:03:50', '回复信息13', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, 14, 2, '留言内容14', '2023-03-18 07:03:50', '回复信息14', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(15, 3, 4, '哈哈哈哈', '2023-03-18 07:57:40', NULL, NULL, '2023-03-18 07:57:40');

DROP TABLE IF EXISTS `changdi_yuyue`;
CREATE TABLE IF NOT EXISTS `changdi_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `changdi_id` int DEFAULT NULL COMMENT '场地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `changdi_yuyue_text` longtext COMMENT '预约理由',
  `changdi_yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `changdi_yuyue_yesno_types` int DEFAULT NULL COMMENT '预约状态 Search111 ',
  `changdi_yuyue_yesno_text` longtext COMMENT '审核回复',
  `changdi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='场地预约';

DELETE FROM `changdi_yuyue`;
INSERT INTO `changdi_yuyue` (`id`, `changdi_yuyue_uuid_number`, `changdi_id`, `yonghu_id`, `changdi_yuyue_text`, `changdi_yuyue_time`, `insert_time`, `changdi_yuyue_yesno_types`, `changdi_yuyue_yesno_text`, `changdi_yuyue_shenhe_time`, `create_time`) VALUES
	(1, '1679123030320', 1, 1, '预约理由1', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(2, '1679123030330', 2, 1, '预约理由2', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(3, '1679123030363', 3, 3, '预约理由3', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(4, '1679123030403', 4, 1, '预约理由4', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(5, '1679123030363', 5, 1, '预约理由5', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(6, '1679123030329', 6, 1, '预约理由6', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(7, '1679123030371', 7, 2, '预约理由7', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(8, '1679123030326', 8, 2, '预约理由8', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(9, '1679123030325', 9, 1, '预约理由9', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(10, '1679123030404', 10, 2, '预约理由10', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(11, '1679123030389', 11, 1, '预约理由11', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(12, '1679123030411', 12, 2, '预约理由12', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(13, '1679123030325', 13, 1, '预约理由13', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(14, '1679123030378', 14, 2, '预约理由14', '2023-03-18', '2023-03-18 07:03:50', 1, NULL, NULL, '2023-03-18 07:03:50'),
	(15, '1679123357713', 3, 1, '他发的固定的', '2023-03-18', '2023-03-18 07:09:19', 2, '通过该', '2023-03-18 07:09:19', '2023-03-18 07:09:19'),
	(16, '1679123506450', 3, 1, '烦都烦死', '2023-03-19', '2023-03-18 07:11:46', 1, NULL, NULL, '2023-03-18 07:11:46'),
	(17, '1679126236518', 3, 4, '广东省归属感是', '2023-03-19', '2023-03-18 07:57:17', 2, '个大傻阿斯蒂芬沙发', '2023-03-18 08:01:52', '2023-03-18 07:57:17'),
	(18, '1722736924651', 3, 1, '11', '2024-08-04', '2024-08-04 02:02:05', 1, NULL, NULL, '2024-08-04 02:02:05');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-18 07:03:05'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-18 07:03:05'),
	(3, 'qiudui_types', '球队类型', 1, '球队类型1', NULL, NULL, '2023-03-18 07:03:05'),
	(4, 'qiudui_types', '球队类型', 2, '球队类型2', NULL, NULL, '2023-03-18 07:03:05'),
	(5, 'qiudui_types', '球队类型', 3, '球队类型3', NULL, NULL, '2023-03-18 07:03:05'),
	(6, 'qiudui_types', '球队类型', 4, '球队类型4', NULL, NULL, '2023-03-18 07:03:05'),
	(7, 'fenqu_types', '分区', 1, '分区1', NULL, NULL, '2023-03-18 07:03:06'),
	(8, 'fenqu_types', '分区', 2, '分区2', NULL, NULL, '2023-03-18 07:03:06'),
	(9, 'fenqu_types', '分区', 3, '分区3', NULL, NULL, '2023-03-18 07:03:06'),
	(10, 'fenqu_types', '分区', 4, '分区4', NULL, NULL, '2023-03-18 07:03:06'),
	(11, 'qiudui_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-18 07:03:06'),
	(12, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-18 07:03:06'),
	(13, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-18 07:03:06'),
	(14, 'changdi_types', '场地类型', 1, '场地类型1', NULL, NULL, '2023-03-18 07:03:06'),
	(15, 'changdi_types', '场地类型', 2, '场地类型2', NULL, NULL, '2023-03-18 07:03:06'),
	(16, 'changdi_types', '场地类型', 3, '场地类型3', NULL, NULL, '2023-03-18 07:03:06'),
	(17, 'changdi_types', '场地类型', 4, '场地类型4', NULL, NULL, '2023-03-18 07:03:06'),
	(18, 'changdi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-18 07:03:06'),
	(19, 'changdi_yuyue_yesno_types', '预约状态', 1, '待审核', NULL, NULL, '2023-03-18 07:03:06'),
	(20, 'changdi_yuyue_yesno_types', '预约状态', 2, '同意', NULL, NULL, '2023-03-18 07:03:06'),
	(21, 'changdi_yuyue_yesno_types', '预约状态', 3, '拒绝', NULL, NULL, '2023-03-18 07:03:06'),
	(22, 'daka_types', '是否打卡', 1, '未打卡', NULL, NULL, '2023-03-18 07:03:06'),
	(23, 'daka_types', '是否打卡', 2, '已打卡', NULL, NULL, '2023-03-18 07:03:06'),
	(24, 'xunliandaka_types', '训练类型', 1, '训练类型1', NULL, NULL, '2023-03-18 07:03:06'),
	(25, 'xunliandaka_types', '训练类型', 2, '训练类型2', NULL, NULL, '2023-03-18 07:03:06'),
	(26, 'xunliandaka_types', '训练类型', 3, '训练类型3', NULL, NULL, '2023-03-18 07:03:06'),
	(27, 'xunliandaka_types', '训练类型', 4, '训练类型4', NULL, NULL, '2023-03-18 07:03:06'),
	(28, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2023-03-18 07:03:06'),
	(29, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2023-03-18 07:03:06'),
	(30, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-03-18 07:03:06'),
	(31, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-03-18 07:03:06'),
	(32, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-03-18 07:03:06'),
	(33, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-18 07:03:06'),
	(34, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-18 07:03:06'),
	(35, 'qiudui_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-18 07:46:38'),
	(36, 'qiudui_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-18 07:46:38'),
	(37, 'xunliandaka_types', '训练类型', 5, '训练类型5', NULL, '', '2023-03-18 08:01:18');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiaolian_id` int DEFAULT NULL COMMENT '教练',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaolian_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 86, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 70, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', 205, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', 382, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', 61, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, '帖子标题6', 2, NULL, NULL, '发布内容6', 257, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, '帖子标题7', 1, NULL, NULL, '发布内容7', 499, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, '帖子标题8', 1, NULL, NULL, '发布内容8', 74, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, '帖子标题9', 2, NULL, NULL, '发布内容9', 55, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', 475, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 17, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, '帖子标题12', 3, NULL, NULL, '发布内容12', 232, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, '帖子标题13', 2, NULL, NULL, '发布内容13', 364, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, '帖子标题14', 2, NULL, NULL, '发布内容14', 82, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(15, NULL, 4, NULL, NULL, '灌灌灌灌', 14, NULL, 2, '2023-03-18 07:57:49', NULL, '2023-03-18 07:57:49'),
	(16, '标题1 12131', 4, NULL, NULL, '<p>固定死广东省广东省固定事故</p>', NULL, 2, 1, '2023-03-18 07:58:21', NULL, '2023-03-18 07:58:21'),
	(17, NULL, NULL, NULL, 1, '沟沟壑壑', 16, NULL, 2, '2023-03-18 08:01:24', NULL, '2023-03-18 08:01:24'),
	(18, NULL, 1, NULL, NULL, '223', 12, NULL, 2, '2024-08-04 02:02:10', NULL, '2024-08-04 02:02:10');

DROP TABLE IF EXISTS `jiaolian`;
CREATE TABLE IF NOT EXISTS `jiaolian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_id_number` varchar(200) DEFAULT NULL COMMENT '教练身份证号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教练';

DELETE FROM `jiaolian`;
INSERT INTO `jiaolian` (`id`, `qiudui_id`, `username`, `password`, `jiaolian_name`, `jiaolian_phone`, `jiaolian_id_number`, `jiaolian_photo`, `sex_types`, `jiaolian_email`, `create_time`) VALUES
	(1, 1, '教练1', '123456', '教练姓名1', '17703786901', '410224199010102001', 'upload/jiaolian1.jpg', 2, '1@qq.com', '2023-03-18 07:03:50'),
	(2, 2, '教练2', '123456', '教练姓名2', '17703786902', '410224199010102002', 'upload/jiaolian2.jpg', 2, '2@qq.com', '2023-03-18 07:03:50'),
	(3, 3, '教练3', '123456', '教练姓名3', '17703786903', '410224199010102003', 'upload/jiaolian3.jpg', 2, '3@qq.com', '2023-03-18 07:03:50');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int NOT NULL COMMENT '资讯类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `news_content` longtext COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='足球资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯名称1', 'upload/news1.jpg', 1, '2023-03-18 07:03:50', '资讯详情1', '2023-03-18 07:03:50'),
	(2, '资讯名称2', 'upload/news2.jpg', 1, '2023-03-18 07:03:50', '资讯详情2', '2023-03-18 07:03:50'),
	(3, '资讯名称3', 'upload/news3.jpg', 2, '2023-03-18 07:03:50', '资讯详情3', '2023-03-18 07:03:50'),
	(4, '资讯名称4', 'upload/news4.jpg', 1, '2023-03-18 07:03:50', '资讯详情4', '2023-03-18 07:03:50'),
	(5, '资讯名称5', 'upload/news5.jpg', 2, '2023-03-18 07:03:50', '资讯详情5', '2023-03-18 07:03:50'),
	(6, '资讯名称6', 'upload/news6.jpg', 2, '2023-03-18 07:03:50', '资讯详情6', '2023-03-18 07:03:50'),
	(7, '资讯名称7', 'upload/news7.jpg', 2, '2023-03-18 07:03:50', '资讯详情7', '2023-03-18 07:03:50'),
	(8, '资讯名称8', 'upload/news8.jpg', 2, '2023-03-18 07:03:50', '资讯详情8', '2023-03-18 07:03:50'),
	(9, '资讯名称9', 'upload/news9.jpg', 1, '2023-03-18 07:03:50', '资讯详情9', '2023-03-18 07:03:50'),
	(10, '资讯名称10', 'upload/news10.jpg', 1, '2023-03-18 07:03:50', '资讯详情10', '2023-03-18 07:03:50'),
	(11, '资讯名称11', 'upload/news11.jpg', 2, '2023-03-18 07:03:50', '资讯详情11', '2023-03-18 07:03:50'),
	(12, '资讯名称12', 'upload/news12.jpg', 2, '2023-03-18 07:03:50', '资讯详情12', '2023-03-18 07:03:50'),
	(13, '资讯名称13', 'upload/news13.jpg', 2, '2023-03-18 07:03:50', '资讯详情13', '2023-03-18 07:03:50'),
	(14, '资讯名称14', 'upload/news14.jpg', 2, '2023-03-18 07:03:50', '资讯详情14', '2023-03-18 07:03:50');

DROP TABLE IF EXISTS `qiudui`;
CREATE TABLE IF NOT EXISTS `qiudui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiudui_name` varchar(200) DEFAULT NULL COMMENT '球队名称  Search111 ',
  `qiudui_uuid_number` varchar(200) DEFAULT NULL COMMENT '球队编号',
  `qiudui_photo` varchar(200) DEFAULT NULL COMMENT '球队照片',
  `qiudui_address` varchar(200) DEFAULT NULL COMMENT '主场 Search111 ',
  `qiudui_types` int DEFAULT NULL COMMENT '球队类型 Search111',
  `fenqu_types` int DEFAULT NULL COMMENT '分区 Search111',
  `qiudui_clicknum` int DEFAULT NULL COMMENT '球队热度',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `qiudui_content` longtext COMMENT '球队介绍 ',
  `qiudui_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='球队';

DELETE FROM `qiudui`;
INSERT INTO `qiudui` (`id`, `qiudui_name`, `qiudui_uuid_number`, `qiudui_photo`, `qiudui_address`, `qiudui_types`, `fenqu_types`, `qiudui_clicknum`, `cai_number`, `zan_number`, `qiudui_content`, `qiudui_delete`, `insert_time`, `create_time`) VALUES
	(1, '球队名称1', '1679123030343', 'upload/qiudui1.jpg', '主场1', 3, 2, 331, 2, 4, '球队介绍1', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, '球队名称2', '1679123030410', 'upload/qiudui2.jpg', '主场2', 4, 2, 42, 2, 3, '球队介绍2', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, '球队名称3', '1679123030348', 'upload/qiudui3.jpg', '主场3', 1, 2, 479, 2, 3, '球队介绍3', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, '球队名称4', '1679123030342', 'upload/qiudui4.jpg', '主场4', 3, 2, 61, 2, 4, '球队介绍4', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, '球队名称5', '1679123030335', 'upload/qiudui5.jpg', '主场5', 1, 3, 192, 2, 4, '球队介绍5', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, '球队名称6', '1679123030344', 'upload/qiudui6.jpg', '主场6', 4, 2, 33, 2, 4, '球队介绍6', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, '球队名称7', '1679123030338', 'upload/qiudui7.jpg', '主场7', 1, 1, 290, 5, 4, '球队介绍7', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, '球队名称8', '1679123030330', 'upload/qiudui8.jpg', '主场8', 3, 1, 18, 5, 4, '球队介绍8', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, '球队名称9', '1679123030350', 'upload/qiudui9.jpg', '主场9', 3, 3, 141, 5, 4, '球队介绍9', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, '球队名称10', '1679123030381', 'upload/qiudui10.jpg', '主场10', 4, 3, 451, 6, 3, '球队介绍10', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, '球队名称11', '1679123030355', 'upload/qiudui11.jpg', '主场11', 1, 4, 385, 2, 3, '球队介绍11', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, '球队名称12', '1679123030407', 'upload/qiudui12.jpg', '主场12', 1, 2, 134, 2, 3, '球队介绍12', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, '球队名称13', '1679123030364', 'upload/qiudui13.jpg', '主场13', 1, 1, 364, 2, 3, '球队介绍13', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, '球队名称14', '1679123030368', 'upload/qiudui14.jpg', '主场14', 3, 2, 39, 2, 3, '球队介绍14', 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50');

DROP TABLE IF EXISTS `qiudui_collection`;
CREATE TABLE IF NOT EXISTS `qiudui_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiudui_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='球队收藏';

DELETE FROM `qiudui_collection`;
INSERT INTO `qiudui_collection` (`id`, `qiudui_id`, `yonghu_id`, `qiudui_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, 2, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, 3, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, 4, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, 5, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, 6, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, 7, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, 8, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, 9, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, 10, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, 11, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, 12, 2, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, 13, 3, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, 14, 1, 1, '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(16, 10, 1, 3, '2023-03-18 07:48:53', '2023-03-18 07:48:53'),
	(17, 11, 1, 1, '2023-03-18 07:49:04', '2023-03-18 07:49:04'),
	(19, 11, 4, 1, '2023-03-18 07:59:02', '2023-03-18 07:59:02'),
	(20, 1, 4, 1, '2023-03-18 07:59:06', '2023-03-18 07:59:06'),
	(22, 1, 4, 2, '2023-03-18 07:59:15', '2023-03-18 07:59:15'),
	(23, 7, 1, 1, '2024-08-04 02:02:22', '2024-08-04 02:02:22');

DROP TABLE IF EXISTS `qiudui_liuyan`;
CREATE TABLE IF NOT EXISTS `qiudui_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiudui_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='球队留言';

DELETE FROM `qiudui_liuyan`;
INSERT INTO `qiudui_liuyan` (`id`, `qiudui_id`, `yonghu_id`, `qiudui_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-03-18 07:03:50', '回复信息1', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(2, 2, 2, '留言内容2', '2023-03-18 07:03:50', '回复信息2', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(3, 3, 1, '留言内容3', '2023-03-18 07:03:50', '回复信息3', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(4, 4, 1, '留言内容4', '2023-03-18 07:03:50', '回复信息4', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(5, 5, 2, '留言内容5', '2023-03-18 07:03:50', '回复信息5', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(6, 6, 3, '留言内容6', '2023-03-18 07:03:50', '回复信息6', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(7, 7, 2, '留言内容7', '2023-03-18 07:03:50', '回复信息7', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(8, 8, 3, '留言内容8', '2023-03-18 07:03:50', '回复信息8', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(9, 9, 2, '留言内容9', '2023-03-18 07:03:50', '回复信息9', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(10, 10, 3, '留言内容10', '2023-03-18 07:03:50', '回复信息10', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(11, 11, 2, '留言内容11', '2023-03-18 07:03:50', '回复信息11', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(12, 12, 3, '留言内容12', '2023-03-18 07:03:50', '回复信息12', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(13, 13, 3, '留言内容13', '2023-03-18 07:03:50', '回复信息13', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(14, 14, 3, '留言内容14', '2023-03-18 07:03:50', '回复信息14', '2023-03-18 07:03:50', '2023-03-18 07:03:50'),
	(15, 1, 4, '该好好干', '2023-03-18 07:58:43', '刚刚好很好或', '2023-03-18 08:00:46', '2023-03-18 07:58:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'lerjwaookayy1hb0v2gti2nh3vi00837', '2023-03-18 07:06:17', '2024-08-04 03:01:50'),
	(2, 1, 'admin', 'users', '管理员', 'jwn8p9qwdr7jguv9q9r48zzfmfbtyqn4', '2023-03-18 07:26:51', '2024-08-04 03:00:18'),
	(3, 1, 'a1', 'jiaolian', '教练', 'e957zj7q109syb724htwiec4716pi6nn', '2023-03-18 07:51:34', '2024-08-04 03:01:36'),
	(4, 4, 'a5', 'yonghu', '用户', 'ch7xn69v9yepa6i62shlobloqebh5yag', '2023-03-18 07:56:52', '2023-03-18 08:59:33');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-18 07:03:05');

DROP TABLE IF EXISTS `xunliandaka`;
CREATE TABLE IF NOT EXISTS `xunliandaka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaolian_id` int DEFAULT NULL COMMENT '教练',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xunliandaka_uuid_number` varchar(200) DEFAULT NULL COMMENT '训练打卡编号',
  `xunliandaka_name` varchar(200) DEFAULT NULL COMMENT '训练标题  Search111 ',
  `xunliandaka_address` varchar(200) DEFAULT NULL COMMENT '训练地点',
  `xunliandaka_types` int DEFAULT NULL COMMENT '训练类型 Search111',
  `xunlian_time` date DEFAULT NULL COMMENT '训练日期',
  `xunliandaka_content` longtext COMMENT '训练内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `daka_types` int DEFAULT NULL COMMENT '是否打卡 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='训练打卡';

DELETE FROM `xunliandaka`;
INSERT INTO `xunliandaka` (`id`, `jiaolian_id`, `yonghu_id`, `xunliandaka_uuid_number`, `xunliandaka_name`, `xunliandaka_address`, `xunliandaka_types`, `xunlian_time`, `xunliandaka_content`, `insert_time`, `daka_types`, `create_time`) VALUES
	(1, 1, 1, '1679123030396', '训练标题1', '训练地点1', 2, '2023-03-18', '训练内容1', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(2, 2, 3, '1679123030390', '训练标题2', '训练地点2', 3, '2023-03-18', '训练内容2', '2023-03-18 07:03:50', 1, '2023-03-18 07:03:50'),
	(3, 1, 1, '1679123030361', '训练标题3', '训练地点3', 2, '2023-03-18', '训练内容3', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(4, 2, 3, '1679123030407', '训练标题4', '训练地点4', 3, '2023-03-18', '训练内容4', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(5, 1, 1, '1679123030420', '训练标题5', '训练地点5', 4, '2023-03-18', '训练内容5', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(6, 1, 1, '1679123030398', '训练标题6', '训练地点6', 3, '2023-03-18', '训练内容6', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(7, 1, 1, '1679123030398', '训练标题7', '训练地点7', 3, '2023-03-18', '训练内容7', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(8, 1, 1, '1679123030363', '训练标题8', '训练地点8', 2, '2023-03-18', '训练内容8', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(9, 2, 2, '1679123030375', '训练标题9', '训练地点9', 2, '2023-03-18', '训练内容9', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(10, 1, 1, '1679123030341', '训练标题10', '训练地点10', 2, '2023-03-18', '训练内容10', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(11, 2, 1, '1679123030426', '训练标题11', '训练地点11', 1, '2023-03-18', '训练内容11', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(12, 3, 2, '1679123030352', '训练标题12', '训练地点12', 2, '2023-03-18', '训练内容12', '2023-03-18 07:03:50', 1, '2023-03-18 07:03:50'),
	(13, 2, 2, '1679123030424', '训练标题13', '训练地点13', 1, '2023-03-18', '训练内容13', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(14, 1, 3, '1679123030397', '训练标题14', '训练地点14', 4, '2023-03-18', '训练内容14', '2023-03-18 07:03:50', 2, '2023-03-18 07:03:50'),
	(15, 1, 1, '1679126394965', '沙发神鼎飞丹砂', '标题i11fsa', 3, '2023-03-19', '<p>固定死发的是方式的</p>', '2023-03-18 08:00:11', 2, '2023-03-18 08:00:11');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiudui_id` int DEFAULT NULL COMMENT '球队',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `qiudui_id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, 1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-03-18 07:03:50'),
	(2, 2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', '2023-03-18 07:03:50'),
	(3, 1, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-03-18 07:03:50'),
	(4, 14, '用户4', '123456', '张5', '17788889999', '455555444477778888', 'upload/1679126278172.jpg', 1, '5@qq.com', '2023-03-18 07:56:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
