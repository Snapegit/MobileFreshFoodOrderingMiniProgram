-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl2058845
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl2058845`
--

/*!40000 DROP DATABASE IF EXISTS `cl2058845`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl2058845` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl2058845`;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-23 11:49:45','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\",\"销售额统计\",\"销售量统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common16\",\"menu\":\"商品资讯管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"骑手\",\"menuJump\":\"列表\",\"tableName\":\"qishou\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"审核\",\"删除\"],\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"}],\"fontClass\":\"icon-user6\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"配送完成\",\"menuJump\":\"列表\",\"tableName\":\"peisongwancheng\"}],\"fontClass\":\"icon-common25\",\"menu\":\"配送订单\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"删除\",\"查看\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品分类\",\"menuJump\":\"列表\",\"tableName\":\"shangpinfenlei\"}],\"fontClass\":\"icon-common25\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common40\",\"menu\":\"管理员管理\",\"unicode\":\"&#xeebb;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"配送\",\"接单\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"menu\":\"订单信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"fontClass\":\"icon-common4\",\"menu\":\"购物车管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common50\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\",\"支付\"],\"menu\":\"配送完成\",\"menuJump\":\"列表\",\"tableName\":\"peisongwancheng\"}],\"fontClass\":\"icon-common25\",\"menu\":\"配送订单\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"配送\",\"接单\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"menu\":\"订单信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"完成\",\"删除\",\"修改\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"配送完成\",\"menuJump\":\"列表\",\"tableName\":\"peisongwancheng\"}],\"fontClass\":\"icon-common25\",\"menu\":\"配送订单\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"配送\",\"接单\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"menu\":\"订单信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"骑手\",\"tableName\":\"qishou\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\",\"销售额统计\",\"销售量统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"核销\",\"查看\",\"删除\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common25\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\",\"支付\"],\"menu\":\"配送完成\",\"menuJump\":\"列表\",\"tableName\":\"peisongwancheng\"}],\"fontClass\":\"icon-common25\",\"menu\":\"配送订单\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"配送\",\"接单\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"menu\":\"订单信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2024-03-23 11:49:45','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(142,'2024-03-23 11:49:45','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(143,'2024-03-23 11:49:45','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(144,'2024-03-23 11:49:45','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(145,'2024-03-23 11:49:45','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(146,'2024-03-23 11:49:45','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1711196847469 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1711196843829,'2024-03-23 12:27:23','20243232027234115000','shangpinxinxi',101,'商品名称1','file/shangpinxinxiShangpintupian1.jpg',1,99.9,99.9,99.9,99.9,'1','已完成',NULL,NULL,NULL,'',NULL,31,'商家账号1','商品分类1'),(1711196847468,'2024-03-23 12:27:27','20243232027273161113','shangpinxinxi',101,'商品名称1','file/shangpinxinxiShangpintupian1.jpg',1,99.9,99.9,99.9,99.9,'1','已完成',NULL,NULL,NULL,'',NULL,31,'商家账号1','商品分类1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongdingdan`
--

DROP TABLE IF EXISTS `peisongdingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `peisongdizhi` varchar(200) DEFAULT NULL COMMENT '配送地址',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `peisongfei` double DEFAULT NULL COMMENT '配送费',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='配送订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongdingdan`
--

LOCK TABLES `peisongdingdan` WRITE;
/*!40000 ALTER TABLE `peisongdingdan` DISABLE KEYS */;
INSERT INTO `peisongdingdan` VALUES (51,'2024-03-23 11:49:45','1111111111','商品名称1','file/peisongdingdanShangpintupian1.jpg,file/peisongdingdanShangpintupian2.jpg,file/peisongdingdanShangpintupian3.jpg','用户账号1','用户姓名1','手机号码1','配送地址1','已接单',1,'商家账号1',91),(52,'2024-03-23 11:49:45','2222222222','商品名称2','file/peisongdingdanShangpintupian2.jpg,file/peisongdingdanShangpintupian3.jpg,file/peisongdingdanShangpintupian4.jpg','用户账号2','用户姓名2','手机号码2','配送地址2','已接单',2,'商家账号2',2),(53,'2024-03-23 11:49:45','3333333333','商品名称3','file/peisongdingdanShangpintupian3.jpg,file/peisongdingdanShangpintupian4.jpg,file/peisongdingdanShangpintupian5.jpg','用户账号3','用户姓名3','手机号码3','配送地址3','已接单',3,'商家账号3',3),(54,'2024-03-23 11:49:45','4444444444','商品名称4','file/peisongdingdanShangpintupian4.jpg,file/peisongdingdanShangpintupian5.jpg,file/peisongdingdanShangpintupian6.jpg','用户账号4','用户姓名4','手机号码4','配送地址4','已接单',4,'商家账号4',4),(55,'2024-03-23 11:49:45','5555555555','商品名称5','file/peisongdingdanShangpintupian5.jpg,file/peisongdingdanShangpintupian6.jpg,file/peisongdingdanShangpintupian7.jpg','用户账号5','用户姓名5','手机号码5','配送地址5','已接单',5,'商家账号5',5),(56,'2024-03-23 11:49:45','6666666666','商品名称6','file/peisongdingdanShangpintupian6.jpg,file/peisongdingdanShangpintupian7.jpg,file/peisongdingdanShangpintupian8.jpg','用户账号6','用户姓名6','手机号码6','配送地址6','已接单',6,'商家账号6',6);
/*!40000 ALTER TABLE `peisongdingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongjiedan`
--

DROP TABLE IF EXISTS `peisongjiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongjiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `peisongdizhi` varchar(200) DEFAULT NULL COMMENT '配送地址',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  `qishouzhanghao` varchar(200) DEFAULT NULL COMMENT '骑手账号',
  `qishouxingming` varchar(200) DEFAULT NULL COMMENT '骑手姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `peisongfei` varchar(200) DEFAULT NULL COMMENT '配送费',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711196934211 DEFAULT CHARSET=utf8 COMMENT='配送接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongjiedan`
--

LOCK TABLES `peisongjiedan` WRITE;
/*!40000 ALTER TABLE `peisongjiedan` DISABLE KEYS */;
INSERT INTO `peisongjiedan` VALUES (61,'2024-03-23 11:49:45','订单编号1','用户账号1','手机号码1','配送地址1','2024-03-23 19:49:45','配送完成','骑手账号1','骑手姓名1','联系电话1','配送费1','商家账号1'),(62,'2024-03-23 11:49:45','订单编号2','用户账号2','手机号码2','配送地址2','2024-03-23 19:49:45','配送完成','骑手账号2','骑手姓名2','联系电话2','配送费2','商家账号2'),(63,'2024-03-23 11:49:45','订单编号3','用户账号3','手机号码3','配送地址3','2024-03-23 19:49:45','配送完成','骑手账号3','骑手姓名3','联系电话3','配送费3','商家账号3'),(64,'2024-03-23 11:49:45','订单编号4','用户账号4','手机号码4','配送地址4','2024-03-23 19:49:45','配送完成','骑手账号4','骑手姓名4','联系电话4','配送费4','商家账号4'),(65,'2024-03-23 11:49:45','订单编号5','用户账号5','手机号码5','配送地址5','2024-03-23 19:49:45','配送完成','骑手账号5','骑手姓名5','联系电话5','配送费5','商家账号5'),(66,'2024-03-23 11:49:45','订单编号6','用户账号6','手机号码6','配送地址6','2024-03-23 19:49:45','配送完成','骑手账号6','骑手姓名6','联系电话6','配送费6','商家账号6'),(1711196934210,'2024-03-23 12:28:53','1111111111','用户账号1','手机号码1','配送地址1','2024-03-23 20:28:50','配送完成','骑手账号1','骑手姓名1','19819881111','1','商家账号1');
/*!40000 ALTER TABLE `peisongjiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongwancheng`
--

DROP TABLE IF EXISTS `peisongwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `peisongdizhi` varchar(200) DEFAULT NULL COMMENT '配送地址',
  `qishouzhanghao` varchar(200) DEFAULT NULL COMMENT '骑手账号',
  `qishouxingming` varchar(200) DEFAULT NULL COMMENT '骑手姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `songdashijian` datetime DEFAULT NULL COMMENT '送达时间',
  `peisongfei` varchar(200) DEFAULT NULL COMMENT '配送费',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711196951318 DEFAULT CHARSET=utf8 COMMENT='配送完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongwancheng`
--

LOCK TABLES `peisongwancheng` WRITE;
/*!40000 ALTER TABLE `peisongwancheng` DISABLE KEYS */;
INSERT INTO `peisongwancheng` VALUES (71,'2024-03-23 11:49:45','订单编号1','用户账号1','手机号码1','配送地址1','骑手账号1','骑手姓名1','联系电话1','2024-03-23 19:49:45','配送费1','已支付','商家账号1'),(72,'2024-03-23 11:49:45','订单编号2','用户账号2','手机号码2','配送地址2','骑手账号2','骑手姓名2','联系电话2','2024-03-23 19:49:45','配送费2','未支付','商家账号2'),(73,'2024-03-23 11:49:45','订单编号3','用户账号3','手机号码3','配送地址3','骑手账号3','骑手姓名3','联系电话3','2024-03-23 19:49:45','配送费3','未支付','商家账号3'),(74,'2024-03-23 11:49:45','订单编号4','用户账号4','手机号码4','配送地址4','骑手账号4','骑手姓名4','联系电话4','2024-03-23 19:49:45','配送费4','未支付','商家账号4'),(75,'2024-03-23 11:49:45','订单编号5','用户账号5','手机号码5','配送地址5','骑手账号5','骑手姓名5','联系电话5','2024-03-23 19:49:45','配送费5','未支付','商家账号5'),(76,'2024-03-23 11:49:45','订单编号6','用户账号6','手机号码6','配送地址6','骑手账号6','骑手姓名6','联系电话6','2024-03-23 19:49:45','配送费6','未支付','商家账号6'),(1711196951317,'2024-03-23 12:29:10','1111111111','用户账号1','手机号码1','配送地址1','骑手账号1','骑手姓名1','19819881111','2024-03-23 20:29:08','1','已支付','商家账号1');
/*!40000 ALTER TABLE `peisongwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qishou`
--

DROP TABLE IF EXISTS `qishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qishouzhanghao` varchar(200) NOT NULL COMMENT '骑手账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qishouxingming` varchar(200) NOT NULL COMMENT '骑手姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qishouzhanghao` (`qishouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='骑手';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qishou`
--

LOCK TABLES `qishou` WRITE;
/*!40000 ALTER TABLE `qishou` DISABLE KEYS */;
INSERT INTO `qishou` VALUES (41,'2024-03-23 11:49:45','骑手账号1','123456','骑手姓名1','file/qishouTouxiang1.jpg','男','19819881111','是','','密保问题1','密保答案1',200),(42,'2024-03-23 11:49:45','骑手账号2','123456','骑手姓名2','file/qishouTouxiang2.jpg','男','19819881112','是','','密保问题2','密保答案2',200),(43,'2024-03-23 11:49:45','骑手账号3','123456','骑手姓名3','file/qishouTouxiang3.jpg','男','19819881113','是','','密保问题3','密保答案3',200),(44,'2024-03-23 11:49:45','骑手账号4','123456','骑手姓名4','file/qishouTouxiang4.jpg','男','19819881114','是','','密保问题4','密保答案4',200),(45,'2024-03-23 11:49:45','骑手账号5','123456','骑手姓名5','file/qishouTouxiang5.jpg','男','19819881115','是','','密保问题5','密保答案5',200),(46,'2024-03-23 11:49:45','骑手账号6','123456','骑手姓名6','file/qishouTouxiang6.jpg','男','19819881116','是','','密保问题6','密保答案6',200);
/*!40000 ALTER TABLE `qishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) NOT NULL COMMENT '商家姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1711197100979 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (91,'2024-03-23 11:49:45','商家账号1','123456','商家姓名1','file/shangjiaTouxiang1.jpg','男','19819881111','地址1','是','','密保问题1','密保答案1'),(92,'2024-03-23 11:49:45','商家账号2','123456','商家姓名2','file/shangjiaTouxiang2.jpg','男','19819881112','地址2','是','','密保问题2','密保答案2'),(93,'2024-03-23 11:49:45','商家账号3','123456','商家姓名3','file/shangjiaTouxiang3.jpg','男','19819881113','地址3','是','','密保问题3','密保答案3'),(94,'2024-03-23 11:49:45','商家账号4','123456','商家姓名4','file/shangjiaTouxiang4.jpg','男','19819881114','地址4','是','','密保问题4','密保答案4'),(95,'2024-03-23 11:49:45','商家账号5','123456','商家姓名5','file/shangjiaTouxiang5.jpg','男','19819881115','地址5','是','','密保问题5','密保答案5'),(96,'2024-03-23 11:49:45','商家账号6','123456','商家姓名6','file/shangjiaTouxiang6.jpg','男','19819881116','地址6','是','','密保问题6','密保答案6'),(1711197100978,'2024-03-23 12:31:40','1111','11','11','file/1711197085350.png','女','13512312312','广州大道2号','是','用户  和骑手也是一样 要审核通过后才能登录','11','11');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (81,'2024-03-23 11:49:45','商品分类1'),(82,'2024-03-23 11:49:45','商品分类2'),(83,'2024-03-23 11:49:45','商品分类3'),(84,'2024-03-23 11:49:45','商品分类4'),(85,'2024-03-23 11:49:45','商品分类5'),(86,'2024-03-23 11:49:45','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `price` double DEFAULT NULL COMMENT '价格',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (101,'2024-03-23 11:49:45','商品名称1','file/shangpinxinxiShangpintupian1.jpg,file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg','商品分类1','规格1','保质期1','商品详情1',1,97,1,99.9,'商家账号1','商家姓名1','地址1','2024-03-23 19:49:45','2024-03-23 20:27:27',4),(102,'2024-03-23 11:49:45','商品名称2','file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg','商品分类2','规格2','保质期2','商品详情2',2,99,2,99.9,'商家账号2','商家姓名2','地址2','2024-03-23 19:49:45','2024-03-23 19:49:45',2),(103,'2024-03-23 11:49:45','商品名称3','file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg','商品分类3','规格3','保质期3','商品详情3',3,99,3,99.9,'商家账号3','商家姓名3','地址3','2024-03-23 19:49:45','2024-03-23 19:49:45',3),(104,'2024-03-23 11:49:45','商品名称4','file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg','商品分类4','规格4','保质期4','商品详情4',4,99,4,99.9,'商家账号4','商家姓名4','地址4','2024-03-23 19:49:45','2024-03-23 19:49:45',4),(105,'2024-03-23 11:49:45','商品名称5','file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg','商品分类5','规格5','保质期5','商品详情5',5,99,5,99.9,'商家账号5','商家姓名5','地址5','2024-03-23 19:49:45','2024-03-23 19:49:45',5),(106,'2024-03-23 11:49:45','商品名称6','file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg,file/shangpinxinxiShangpintupian8.jpg','商品分类6','规格6','保质期6','商品详情6',6,99,6,99.9,'商家账号6','商家姓名6','地址6','2024-03-23 19:49:45','2024-03-23 19:49:45',6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,91,'商家账号1','shangjia','管理员','20ctycllo89epk4bhsuwrhh9r5qmy8fb','2024-03-23 12:25:47','2024-03-23 13:33:30'),(2,31,'用户账号1','yonghu','用户','bz9b40iqtgturph71kfc6u6wwl098dc7','2024-03-23 12:27:16','2024-03-23 13:30:25'),(3,41,'骑手账号1','qishou','管理员','oh8yva30x98atitywqdlogijpl9sxpyk','2024-03-23 12:28:45','2024-03-23 13:30:09'),(4,1,'admin','users','管理员','xsyuboqmuuk0igxgs0fd09ahqrrivog1','2024-03-23 12:32:03','2024-03-23 13:32:38'),(5,1711197100978,'1111','shangjia','管理员','73wt5wvtuaceg7yaocfaht6fao65qiwi','2024-03-23 12:33:13','2024-03-23 13:33:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-23 11:49:45','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-23 11:49:45','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','密保问题1','密保答案1',0.2),(32,'2024-03-23 11:49:45','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','密保问题2','密保答案2',200),(33,'2024-03-23 11:49:45','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','密保问题3','密保答案3',200),(34,'2024-03-23 11:49:45','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','密保问题4','密保答案4',200),(35,'2024-03-23 11:49:45','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','密保问题5','密保答案5',200),(36,'2024-03-23 11:49:45','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','密保问题6','密保答案6',200);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26 21:36:35
