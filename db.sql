/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangyuekejigongshi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangyuekejigongshi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangyuekejigongshi`;

/*Table structure for table `chanpin` */

DROP TABLE IF EXISTS `chanpin`;

CREATE TABLE `chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chanpin_name` varchar(200) DEFAULT NULL COMMENT '产品名称 Search111',
  `chanpin_types` int(255) DEFAULT NULL COMMENT '产品类型 Search111',
  `chanpin_photo` varchar(200) DEFAULT NULL COMMENT '产品图片',
  `chanpin_content` text COMMENT '产品介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品';

/*Data for the table `chanpin` */

insert  into `chanpin`(`id`,`chanpin_name`,`chanpin_types`,`chanpin_photo`,`chanpin_content`,`insert_time`,`create_time`) values (1,'产品名称1',1,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752746966.jpg','产品介绍1\r\n','2021-04-30 11:19:10','2021-04-30 11:19:10'),(2,'产品名称2',2,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752759484.jpg','产品介绍2\r\n','2021-04-30 11:19:22','2021-04-30 11:19:22'),(3,'产品名称3',3,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619753398396.jpg','产品介绍产品介绍产品介绍\r\n','2021-04-30 11:30:01','2021-04-30 11:30:01');

/*Table structure for table `chanpin_collection` */

DROP TABLE IF EXISTS `chanpin_collection`;

CREATE TABLE `chanpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chanpin_id` int(11) DEFAULT NULL COMMENT '产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品收藏';

/*Data for the table `chanpin_collection` */

/*Table structure for table `chanpin_liuyan` */

DROP TABLE IF EXISTS `chanpin_liuyan`;

CREATE TABLE `chanpin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chanpin_id` int(11) DEFAULT NULL COMMENT '产品id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chanpin_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品留言';

/*Data for the table `chanpin_liuyan` */

insert  into `chanpin_liuyan`(`id`,`chanpin_id`,`yonghu_id`,`chanpin_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,1,'123123412312',NULL,'2021-04-30 11:33:46','2021-04-30 11:33:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/wangyuekejigongshi/upload/1619753546769.jpg'),(2,'picture2','http://localhost:8080/wangyuekejigongshi/upload/1619753553427.jpg'),(3,'picture3','http://localhost:8080/wangyuekejigongshi/upload/1619753559381.jpg'),(6,'homepage','http://localhost:8080/wangyuekejigongshi/upload/1619753566581.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-30 10:55:38'),(2,'sex_types','性别',2,'女',NULL,'2021-04-30 10:55:38'),(3,'news_types','新闻类型名称',1,'新闻类型1',NULL,'2021-04-30 10:55:38'),(4,'news_types','新闻类型名称',2,'新闻类型2',NULL,'2021-04-30 10:55:38'),(5,'chanpin_types','产品类型名称',1,'产品类型1',NULL,'2021-04-30 10:55:38'),(6,'chanpin_types','产品类型名称',2,'产品类型2',NULL,'2021-04-30 10:55:38'),(7,'chanpin_types','产品类型名称',3,'产品类型3',NULL,'2021-04-30 10:55:38'),(8,'single_seach_types','单页数据类型',1,'公司介绍',NULL,'2021-04-30 11:41:28'),(9,'single_seach_types','单页数据类型',2,'联系我们',NULL,'2021-04-30 11:41:44');

/*Table structure for table `gongshijianjie_seach` */

DROP TABLE IF EXISTS `gongshijianjie_seach`;

CREATE TABLE `gongshijianjie_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongshijianjie_seach_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111 ',
  `gongshijianjie_seach_content` text COMMENT '简介内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司简介';

/*Data for the table `gongshijianjie_seach` */

insert  into `gongshijianjie_seach`(`id`,`gongshijianjie_seach_name`,`gongshijianjie_seach_content`,`create_time`) values (1,'公司名称1','简介内容1\r\n','2021-04-30 11:19:53');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1',1,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752807258.jpg','2021-04-30 11:20:10','新闻详情1\r\n','2021-04-30 11:20:10'),(2,'新闻2',2,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752816659.jpg','2021-04-30 11:20:18','新闻详情2\r\n','2021-04-30 11:20:18');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'网月科技公司',1,'网月科技公司介绍','2021-04-30 11:42:33'),(2,'联系人',2,'联系信息',NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5jcywmpiuymq8mdc08d03wfc8b0oahp0','2021-04-30 11:06:47','2021-04-30 13:16:00'),(2,1,'111','yonghu','用户','j63921vtvzrjycvdvsm2kh3imsrh801h','2021-04-30 11:33:14','2021-04-30 12:33:15');

/*Table structure for table `tuandui` */

DROP TABLE IF EXISTS `tuandui`;

CREATE TABLE `tuandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuandui_name` varchar(200) DEFAULT NULL COMMENT '团队名称 Search111',
  `tuandui_number` int(255) DEFAULT NULL COMMENT '团队人数',
  `tuandui_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `tuandui_fuzeren` varchar(200) DEFAULT NULL COMMENT '团队负责人',
  `tuandui_zuoyong` varchar(200) DEFAULT NULL COMMENT '团队作用',
  `fangdong_id` int(200) DEFAULT NULL COMMENT '团队详情',
  `tuandui_content` text COMMENT '详细信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='团队';

/*Data for the table `tuandui` */

insert  into `tuandui`(`id`,`tuandui_name`,`tuandui_number`,`tuandui_photo`,`tuandui_fuzeren`,`tuandui_zuoyong`,`fangdong_id`,`tuandui_content`,`insert_time`,`create_time`) values (1,'团队名称1',10,'http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619753521721.jpg','团队负责人1','团队作用1',NULL,'详细信息1\r\n','2021-04-30 11:32:06','2021-04-30 11:32:06');

/*Table structure for table `tuandui_liuyan` */

DROP TABLE IF EXISTS `tuandui_liuyan`;

CREATE TABLE `tuandui_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuandui_id` int(11) DEFAULT NULL COMMENT '团队id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `tuandui_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='团队留言';

/*Data for the table `tuandui_liuyan` */

insert  into `tuandui_liuyan`(`id`,`tuandui_id`,`yonghu_id`,`tuandui_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'131231',NULL,'2021-04-30 11:33:25','2021-04-30 11:33:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_time` timestamp NULL DEFAULT NULL COMMENT '出生日期',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_time`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'2021-04-30 00:00:00','410882200111112221','17711111111','http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752706060.jpg','2021-04-30 11:18:27'),(2,'222','123456','用户2',2,'2021-04-30 00:00:00','410882200111111112','17711111112','http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619752726007.jpg','2021-04-30 11:18:47'),(3,'123','123456','123',1,'2021-04-22 00:00:00','410882200111112222','17711111121','http://localhost:8080/wangyuekejigongshi/file/download?fileName=1619753334798.jpg','2021-04-30 11:28:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
