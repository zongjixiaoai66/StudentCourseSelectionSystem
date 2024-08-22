/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t376`;
CREATE DATABASE IF NOT EXISTS `t376` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t376`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'kecheng_types', '课程类型', 1, '课程类型1', NULL, NULL, '2023-04-11 02:42:33'),
	(2, 'kecheng_types', '课程类型', 2, '课程类型2', NULL, NULL, '2023-04-11 02:42:33'),
	(3, 'kecheng_types', '课程类型', 3, '课程类型3', NULL, NULL, '2023-04-11 02:42:33'),
	(4, 'shangxia_types', '上下架', 1, '开启', NULL, NULL, '2023-04-11 02:42:33'),
	(5, 'shangxia_types', '上下架', 2, '关闭', NULL, NULL, '2023-04-11 02:42:33'),
	(6, 'kecheng_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-11 02:42:33'),
	(7, 'kecheng_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-11 02:42:33'),
	(8, 'kecheng_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-11 02:42:33'),
	(9, 'kecheng_yuyue_yesno_types', '选课状态', 1, '待审核', NULL, NULL, '2023-04-11 02:42:34'),
	(10, 'kecheng_yuyue_yesno_types', '选课状态', 2, '同意', NULL, NULL, '2023-04-11 02:42:34'),
	(11, 'kecheng_yuyue_yesno_types', '选课状态', 3, '拒绝', NULL, NULL, '2023-04-11 02:42:34'),
	(12, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-11 02:42:34'),
	(13, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-11 02:42:34'),
	(14, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-11 02:42:34'),
	(15, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-11 02:42:34'),
	(16, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-11 02:42:34'),
	(17, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-11 02:42:34'),
	(18, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-11 02:42:34');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, NULL, '发布内容1', 356, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(2, '帖子标题2', 3, NULL, NULL, '发布内容2', 436, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', 221, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', 483, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(5, '帖子标题5', 2, NULL, NULL, '发布内容5', 97, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(6, '帖子标题6', 2, NULL, NULL, '发布内容6', 439, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', 233, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(9, '帖子标题9', 3, NULL, NULL, '发布内容9', 363, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(10, '帖子标题10', 2, NULL, NULL, '发布内容10', 227, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 459, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 388, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(14, '帖子标题14', 1, NULL, NULL, '发布内容14', 349, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(18, NULL, NULL, 1, NULL, '22222222222', 14, 2, '2023-04-11 03:23:24', NULL, '2023-04-11 03:23:24'),
	(19, NULL, 1, NULL, NULL, '登录后才能进入数据详情页进行评论、点赞、收藏等操作', 14, 2, '2023-04-11 03:24:35', NULL, '2023-04-11 03:24:35'),
	(22, NULL, NULL, NULL, 1, '333333333333333333333333333333333333333333', 14, 2, '2023-04-11 03:27:42', NULL, '2023-04-11 03:27:42'),
	(23, NULL, 1, NULL, NULL, '666', 14, 2, '2024-08-12 07:22:46', NULL, '2024-08-12 07:22:46');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `jiaoshi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `jiaoshi_delete`, `insert_time`, `create_time`) VALUES
	(1, '教师1', '123456', '教师名称1', '17703786901', '410224199010102001', 'upload/jiaoshi1.jpg', 2, '1@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(2, '教师2', '123456', '教师名称2', '17703786902', '410224199010102002', 'upload/jiaoshi2.jpg', 1, '2@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, '教师3', '123456', '教师名称3', '17703786903', '410224199010102003', 'upload/jiaoshi3.jpg', 1, '3@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(4, '教师4', '123456', '导入名称33', '17703786933', '410224199010102011', '', 1, '23@qq.com', 2, '2023-04-12 06:18:26', '2023-04-12 06:18:26'),
	(5, '教师5', '123456', '导入名称22', '17703786922', '410224199010102022', '', 2, '22@qq.com', 2, '2023-04-12 06:18:26', '2023-04-12 06:18:26');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_clicknum` int DEFAULT NULL COMMENT '课程热度',
  `kecheng_content` longtext COMMENT '课程介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `kecheng_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_name`, `kecheng_photo`, `jiaoshi_id`, `zan_number`, `cai_number`, `kecheng_types`, `kecheng_clicknum`, `kecheng_content`, `shangxia_types`, `kecheng_delete`, `insert_time`, `create_time`) VALUES
	(1, '课程标题1', 'upload/kecheng1.jpg', 2, 117, 496, 2, 287, '课程介绍1', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(2, '课程标题2', 'upload/kecheng2.jpg', 2, 156, 98, 1, 457, '课程介绍2', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, '课程标题3', 'upload/kecheng3.jpg', 2, 266, 340, 2, 143, '课程介绍3', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(4, '课程标题4', 'upload/kecheng4.jpg', 3, 38, 99, 3, 197, '课程介绍4', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(5, '课程标题5', 'upload/kecheng5.jpg', 2, 333, 461, 2, 87, '课程介绍5', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(6, '课程标题6', 'upload/kecheng6.jpg', 1, 137, 305, 2, 276, '课程介绍6', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(7, '课程标题7', 'upload/kecheng7.jpg', 1, 345, 307, 3, 186, '课程介绍7', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(8, '课程标题8', 'upload/kecheng8.jpg', 1, 81, 336, 1, 450, '课程介绍8', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(9, '课程标题9', 'upload/kecheng9.jpg', 1, 116, 407, 1, 156, '课程介绍9', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(10, '课程标题10', 'upload/kecheng10.jpg', 1, 106, 451, 1, 307, '课程介绍10', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(11, '课程标题11', 'upload/kecheng11.jpg', 3, 336, 96, 1, 162, '课程介绍11', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(12, '课程标题12', 'upload/kecheng12.jpg', 2, 385, 60, 3, 347, '课程介绍12', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(13, '课程标题13', 'upload/kecheng13.jpg', 3, 51, 457, 2, 350, '课程介绍13', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(14, '课程标题14', 'upload/kecheng14.jpg', 2, 219, 492, 1, 4, '课程介绍14', 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58');

DROP TABLE IF EXISTS `kecheng_collection`;
CREATE TABLE IF NOT EXISTS `kecheng_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='课程收藏';

DELETE FROM `kecheng_collection`;
INSERT INTO `kecheng_collection` (`id`, `kecheng_id`, `yonghu_id`, `kecheng_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, 3, 1, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(4, 4, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(6, 6, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(7, 7, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(8, 8, 3, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(9, 9, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(10, 10, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(11, 11, 2, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(14, 14, 3, 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(16, 12, 1, 2, '2023-04-11 03:20:56', '2023-04-11 03:20:56'),
	(17, 13, 1, 3, '2023-04-11 03:21:41', '2023-04-11 03:21:41'),
	(18, 10, 1, 2, '2023-04-11 03:25:25', '2023-04-11 03:25:25');

DROP TABLE IF EXISTS `kecheng_liuyan`;
CREATE TABLE IF NOT EXISTS `kecheng_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='课程留言';

DELETE FROM `kecheng_liuyan`;
INSERT INTO `kecheng_liuyan` (`id`, `kecheng_id`, `yonghu_id`, `kecheng_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-11 02:42:58', '回复信息1', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(2, 2, 2, '留言内容2', '2023-04-11 02:42:58', '回复信息2', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, 3, 1, '留言内容3', '2023-04-11 02:42:58', '回复信息3', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(4, 4, 3, '留言内容4', '2023-04-11 02:42:58', '回复信息4', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(5, 5, 2, '留言内容5', '2023-04-11 02:42:58', '回复信息5', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(6, 6, 2, '留言内容6', '2023-04-11 02:42:58', '回复信息6', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(7, 7, 3, '留言内容7', '2023-04-11 02:42:58', '回复信息7', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(8, 8, 3, '留言内容8', '2023-04-11 02:42:58', '回复信息8', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(9, 9, 1, '留言内容9', '2023-04-11 02:42:58', '回复信息9', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(10, 10, 3, '留言内容10', '2023-04-11 02:42:58', '回复信息10', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(11, 11, 1, '留言内容11', '2023-04-11 02:42:58', '回复信息11', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(12, 12, 1, '留言内容12', '2023-04-11 02:42:58', '回复信息12', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(13, 13, 2, '留言内容13', '2023-04-11 02:42:58', '回复信息13', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(14, 14, 3, '留言内容14', '2023-04-11 02:42:58', '回复信息14', '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(15, 13, 1, '234243', '2023-04-11 03:21:44', NULL, NULL, '2023-04-11 03:21:44');

DROP TABLE IF EXISTS `kecheng_yuyue`;
CREATE TABLE IF NOT EXISTS `kecheng_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kecheng_yuyue_yesno_types` int DEFAULT NULL COMMENT '选课状态 Search111 ',
  `kecheng_yuyue_yesno_text` longtext COMMENT '审核结果',
  `kecheng_yuyue_number` int DEFAULT NULL COMMENT '打分',
  `kecheng_yuyue_text` longtext COMMENT '评论',
  `kecheng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='课程报名';

DELETE FROM `kecheng_yuyue`;
INSERT INTO `kecheng_yuyue` (`id`, `kecheng_id`, `yonghu_id`, `kecheng_yuyue_yesno_types`, `kecheng_yuyue_yesno_text`, `kecheng_yuyue_number`, `kecheng_yuyue_text`, `kecheng_yuyue_shenhe_time`, `create_time`) VALUES
	(1, 1, 3, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(3, 3, 2, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(4, 4, 3, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(6, 6, 2, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(7, 7, 2, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(9, 9, 1, 2, '12312', 111111, '123', '2023-04-11 03:16:15', '2023-04-11 02:42:58'),
	(10, 10, 3, 2, '123', 123, '123', '2023-04-11 03:13:49', '2023-04-11 02:42:58'),
	(11, 11, 3, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(12, 12, 3, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(13, 13, 3, 1, NULL, NULL, NULL, NULL, '2023-04-11 02:42:58'),
	(17, 10, 1, 2, '123', 10, '评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容评论内容', '2023-04-11 03:22:28', '2023-04-11 03:22:19'),
	(18, 10, 1, 2, 'shenhe1同意', 100, '打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论打分评论', '2023-04-11 03:26:36', '2023-04-11 03:25:24');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告课程';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-04-11 02:42:58', '公告详情1', '2023-04-11 02:42:58'),
	(2, '公告标题2', 2, 'upload/news2.jpg', '2023-04-11 02:42:58', '公告详情2', '2023-04-11 02:42:58'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-04-11 02:42:58', '公告详情3', '2023-04-11 02:42:58'),
	(4, '公告标题4', 3, 'upload/news4.jpg', '2023-04-11 02:42:58', '公告详情4', '2023-04-11 02:42:58'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-04-11 02:42:58', '公告详情5', '2023-04-11 02:42:58'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-04-11 02:42:58', '公告详情6', '2023-04-11 02:42:58'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-04-11 02:42:58', '公告详情7', '2023-04-11 02:42:58'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-04-11 02:42:58', '公告详情8', '2023-04-11 02:42:58'),
	(9, '公告标题9', 3, 'upload/news9.jpg', '2023-04-11 02:42:58', '公告详情9', '2023-04-11 02:42:58'),
	(10, '公告标题10', 3, 'upload/news10.jpg', '2023-04-11 02:42:58', '公告详情10', '2023-04-11 02:42:58'),
	(11, '公告标题11', 3, 'upload/news11.jpg', '2023-04-11 02:42:58', '公告详情11', '2023-04-11 02:42:58'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-04-11 02:42:58', '公告详情12', '2023-04-11 02:42:58'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-04-11 02:42:58', '公告详情13', '2023-04-11 02:42:58'),
	(14, '公告标题14', 3, 'upload/news14.jpg', '2023-04-11 02:42:58', '公告详情14', '2023-04-11 02:42:58');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'x7zwp24ndlzfmn0gxhntg5px3v0f8uud', '2023-04-11 02:45:29', '2024-08-12 08:21:10'),
	(2, 1, 'a1', 'yonghu', '用户', 'i5pts7i5bcc35urpseb6qfgq5nmrhsxr', '2023-04-11 02:48:27', '2024-08-12 08:22:35'),
	(3, 1, 'a1', 'jiaoshi', '教师', 'a9pbftanzkhoe1af2e2foq546w9cg6t2', '2023-04-11 03:13:42', '2024-08-12 08:22:23');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-11 02:42:33');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 1, '2023-04-11 02:42:58', '2023-04-11 02:42:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
