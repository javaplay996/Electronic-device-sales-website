/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmz75r2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmz75r2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmz75r2`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783660208 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-19 05:59:46',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-19 05:59:46',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-19 05:59:46',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-19 05:59:46',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-19 05:59:46',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-19 05:59:46',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618783660207,'2021-04-19 06:07:39',1618783606255,'广东省梅州市梅江区江南街道梅新路106-1号作新小学','李四','13800138000','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'dianzishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783739213 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1618783413578,'2021-04-19 06:03:33','rementuijian',1618783377836,31,'商品名称1','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian1.jpg',3,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783785924 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-04-19 05:59:46',1,1,'提问1','回复1',1),(72,'2021-04-19 05:59:46',2,2,'提问2','回复2',2),(73,'2021-04-19 05:59:46',3,3,'提问3','回复3',3),(74,'2021-04-19 05:59:46',4,4,'提问4','回复4',4),(75,'2021-04-19 05:59:46',5,5,'提问5','回复5',5),(76,'2021-04-19 05:59:46',6,6,'提问6','回复6',6),(1618783785923,'2021-04-19 06:09:45',1618783606255,NULL,'测试1',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmz75r2/upload/1618784278958.jpg'),(2,'picture2','http://localhost:8080/ssmz75r2/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmz75r2/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dianzishangcheng` */

DROP TABLE IF EXISTS `dianzishangcheng`;

CREATE TABLE `dianzishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinyanshi` varchar(200) DEFAULT NULL COMMENT '商品演示',
  `shangshishijian` date DEFAULT NULL COMMENT '上市时间',
  `xiangxicanshu` longtext COMMENT '详细参数',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618784159937 DEFAULT CHARSET=utf8 COMMENT='电子商城';

/*Data for the table `dianzishangcheng` */

insert  into `dianzishangcheng`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`shangpinpinpai`,`shangpintupian`,`shangpinyanshi`,`shangshishijian`,`xiangxicanshu`,`thumbsupnum`,`crazilynum`,`price`) values (51,'2021-04-19 05:59:46','商品编号1','商品名称1','商品类别1','商品品牌1','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian1.jpg','','2021-04-19','详细参数1',1,1,99.9),(52,'2021-04-19 05:59:46','商品编号2','商品名称2','商品类别2','商品品牌2','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian2.jpg','','2021-04-19','详细参数2',2,2,99.9),(53,'2021-04-19 05:59:46','商品编号3','商品名称3','商品类别3','商品品牌3','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian3.jpg','','2021-04-19','详细参数3',3,3,99.9),(54,'2021-04-19 05:59:46','商品编号4','商品名称4','商品类别4','商品品牌4','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian4.jpg','','2021-04-19','详细参数4',4,4,99.9),(55,'2021-04-19 05:59:46','商品编号5','商品名称5','商品类别5','商品品牌5','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian5.jpg','','2021-04-19','详细参数5',5,5,99.9),(56,'2021-04-19 05:59:46','商品编号6','商品名称6','商品类别6','商品品牌6','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian6.jpg','','2021-04-19','详细参数6',6,6,99.9);

/*Table structure for table `discussdianzishangcheng` */

DROP TABLE IF EXISTS `discussdianzishangcheng`;

CREATE TABLE `discussdianzishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='电子商城评论表';

/*Data for the table `discussdianzishangcheng` */

insert  into `discussdianzishangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-19 05:59:46',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-19 05:59:46',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-19 05:59:46',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-19 05:59:46',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-19 05:59:46',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-19 05:59:46',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjifenshangcheng` */

DROP TABLE IF EXISTS `discussjifenshangcheng`;

CREATE TABLE `discussjifenshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='积分商城评论表';

/*Data for the table `discussjifenshangcheng` */

insert  into `discussjifenshangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-19 05:59:46',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-19 05:59:46',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-19 05:59:46',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-19 05:59:46',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-19 05:59:46',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-19 05:59:46',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussrementuijian` */

DROP TABLE IF EXISTS `discussrementuijian`;

CREATE TABLE `discussrementuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783703033 DEFAULT CHARSET=utf8 COMMENT='热门推荐评论表';

/*Data for the table `discussrementuijian` */

insert  into `discussrementuijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-19 05:59:46',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-19 05:59:46',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-19 05:59:46',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-19 05:59:46',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-19 05:59:46',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-19 05:59:46',6,6,'用户名6','评论内容6','回复内容6'),(1618783703032,'2021-04-19 06:08:22',31,1618783606255,'1011','好',NULL);

/*Table structure for table `jifenshangcheng` */

DROP TABLE IF EXISTS `jifenshangcheng`;

CREATE TABLE `jifenshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangpinjiage` int(11) DEFAULT NULL COMMENT '商品价格',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618784106785 DEFAULT CHARSET=utf8 COMMENT='积分商城';

/*Data for the table `jifenshangcheng` */

insert  into `jifenshangcheng`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpintupian`,`shangpinleixing`,`shangpinpinpai`,`shangpinjiage`,`shangpinjianjie`,`thumbsupnum`,`crazilynum`,`jifen`) values (41,'2021-04-19 05:59:46','商品编号1','商品名称1','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian1.jpg','商品类型1','商品品牌1',1,'商品简介1',1,1,10000),(42,'2021-04-19 05:59:46','商品编号2','商品名称2','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian2.jpg','商品类型2','商品品牌2',2,'商品简介2',2,3,10000),(43,'2021-04-19 05:59:46','商品编号3','商品名称3','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian3.jpg','商品类型3','商品品牌3',3,'商品简介3',3,3,10000),(44,'2021-04-19 05:59:46','商品编号4','商品名称4','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian4.jpg','商品类型4','商品品牌4',4,'商品简介4',4,4,10000),(45,'2021-04-19 05:59:46','商品编号5','商品名称5','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian5.jpg','商品类型5','商品品牌5',5,'商品简介5',5,5,10000),(46,'2021-04-19 05:59:46','商品编号6','商品名称6','http://localhost:8080/ssmz75r2/upload/jifenshangcheng_shangpintupian6.jpg','商品类型6','商品品牌6',6,'商品简介6',6,6,10000);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianzishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783757029 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618783715470,'2021-04-19 06:08:35','20214196835996137','rementuijian',1618783606255,31,'商品名称1','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','广东省梅州市梅江区江南街道梅新路106-1号作新小学','13800138000','李四'),(1618783756798,'2021-04-19 06:09:16','2021419691670718482','rementuijian',1618783606255,31,'商品名称1','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian1.jpg',1,99.9,99.9,299.7,99.9,1,'已发货','广东省梅州市梅江区江南街道梅新路106-1号作新小学','13800138000','李四'),(1618783757028,'2021-04-19 06:09:16','2021419691671426452','dianzishangcheng',1618783606255,51,'商品名称1','http://localhost:8080/ssmz75r2/upload/dianzishangcheng_shangpintupian1.jpg',2,99.9,99.9,299.7,199.8,1,'已发货','广东省梅州市梅江区江南街道梅新路106-1号作新小学','13800138000','李四');

/*Table structure for table `rementuijian` */

DROP TABLE IF EXISTS `rementuijian`;

CREATE TABLE `rementuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinyanshi` varchar(200) DEFAULT NULL COMMENT '商品演示',
  `shangshishijian` date DEFAULT NULL COMMENT '上市时间',
  `xiangxicanshu` longtext COMMENT '详细参数',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618784057340 DEFAULT CHARSET=utf8 COMMENT='热门推荐';

/*Data for the table `rementuijian` */

insert  into `rementuijian`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`shangpinpinpai`,`shangpintupian`,`shangpinyanshi`,`shangshishijian`,`xiangxicanshu`,`thumbsupnum`,`crazilynum`,`price`) values (31,'2021-04-19 05:59:46','商品编号1','商品名称1','商品类别1','商品品牌1','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian1.jpg','','2021-04-19','详细参数1',3,2,99.9),(32,'2021-04-19 05:59:46','商品编号2','商品名称2','商品类别2','商品品牌2','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian2.jpg','','2021-04-19','详细参数2',2,2,99.9),(33,'2021-04-19 05:59:46','商品编号3','商品名称3','商品类别3','商品品牌3','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian3.jpg','','2021-04-19','详细参数3',3,3,99.9),(34,'2021-04-19 05:59:46','商品编号4','商品名称4','商品类别4','商品品牌4','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian4.jpg','','2021-04-19','详细参数4',4,4,99.9),(35,'2021-04-19 05:59:46','商品编号5','商品名称5','商品类别5','商品品牌5','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian5.jpg','','2021-04-19','详细参数5',5,5,99.9),(1618784057339,'2021-04-19 06:14:16','1213','1213','商品类型2','1213','http://localhost:8080/ssmz75r2/upload/1618784032999.jpg','http://localhost:8080/ssmz75r2/upload/1618784054975.mp4','2021-04-23','2113',0,0,12121);

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618784002829 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (21,'2021-04-19 05:59:46','商品类型1'),(22,'2021-04-19 05:59:46','商品类型2'),(23,'2021-04-19 05:59:46','商品类型3'),(24,'2021-04-19 05:59:46','商品类型4'),(25,'2021-04-19 05:59:46','商品类型5'),(26,'2021-04-19 05:59:46','商品类型6'),(1618784002828,'2021-04-19 06:13:22','电脑');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783622272 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618783401181,'2021-04-19 06:03:20',1618783377836,31,'rementuijian','商品名称1','http://localhost:8080/ssmz75r2/upload/rementuijian_shangpintupian1.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618783377836,'101','yonghu','用户','r20r0czizut2akt5ugkbeyqx6fjy5cbj','2021-04-19 06:03:07','2021-04-19 07:03:08'),(2,1618783606255,'1011','yonghu','用户','ajdhhwwt3lm9g04iu494a50w1pidw70t','2021-04-19 06:06:55','2021-04-19 07:06:55'),(3,1,'abo','users','管理员','e6bvrpx5n1x65xmc9e5oozpqogx40vvw','2021-04-19 06:11:07','2021-04-19 07:11:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 05:59:46');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `xiaoshoushuliang` int(11) DEFAULT NULL COMMENT '销售数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618784221451 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleibie`,`xiaoshoushuliang`) values (61,'2021-04-19 05:59:46','商品编号1','商品名称1','商品类别1',1),(62,'2021-04-19 05:59:46','商品编号2','商品名称2','商品类别2',2),(63,'2021-04-19 05:59:46','商品编号3','商品名称3','商品类别3',3),(64,'2021-04-19 05:59:46','商品编号4','商品名称4','商品类别4',4),(65,'2021-04-19 05:59:46','商品编号5','商品名称5','商品类别5',5),(66,'2021-04-19 05:59:46','商品编号6','商品名称6','商品类别6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618783964684 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`lianxidianhua`,`lianxiyouxiang`,`shenfenzhenghao`,`zhaopian`,`jifen`,`money`) values (11,'2021-04-19 05:59:46','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian1.jpg',10000,100),(12,'2021-04-19 05:59:46','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian2.jpg',10000,100),(13,'2021-04-19 05:59:46','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian3.jpg',10000,100),(14,'2021-04-19 05:59:46','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian4.jpg',10000,100),(15,'2021-04-19 05:59:46','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian5.jpg',10000,100),(16,'2021-04-19 05:59:46','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmz75r2/upload/yonghu_zhaopian6.jpg',10000,100),(1618783377836,'2021-04-19 06:02:57','101','123456','李四',NULL,'13800138000','213141@qq.com','123456789012345678',NULL,0,0),(1618783606255,'2021-04-19 06:06:46','1011','123456','李四','女','13800138000','1213141@qq.com','123456789012345678','http://localhost:8080/ssmz75r2/upload/1618783808720.jpg',0,121312000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
