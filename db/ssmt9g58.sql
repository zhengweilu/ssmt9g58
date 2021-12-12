-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmt9g58
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
-- Table structure for table `chengjipingding`
--

DROP TABLE IF EXISTS `chengjipingding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjipingding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `lunwenchengji` int(11) DEFAULT NULL COMMENT '论文成绩',
  `dabianshijian` date DEFAULT NULL COMMENT '答辩时间',
  `dabianchengji` int(11) DEFAULT NULL COMMENT '答辩成绩',
  `pingyu` longtext COMMENT '评语',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800415116 DEFAULT CHARSET=utf8 COMMENT='成绩评定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjipingding`
--

LOCK TABLES `chengjipingding` WRITE;
/*!40000 ALTER TABLE `chengjipingding` DISABLE KEYS */;
INSERT INTO `chengjipingding` VALUES (81,'2021-02-20 05:39:35','课题名称1',1,'2021-02-20',1,'评语1','2021-02-20','教师工号1','学籍号1'),(82,'2021-02-20 05:39:35','课题名称2',2,'2021-02-20',2,'评语2','2021-02-20','教师工号2','学籍号2'),(83,'2021-02-20 05:39:35','课题名称3',3,'2021-02-20',3,'评语3','2021-02-20','教师工号3','学籍号3'),(84,'2021-02-20 05:39:35','课题名称4',4,'2021-02-20',4,'评语4','2021-02-20','教师工号4','学籍号4'),(85,'2021-02-20 05:39:35','课题名称5',5,'2021-02-20',5,'评语5','2021-02-20','教师工号5','学籍号5'),(86,'2021-02-20 05:39:35','课题名称6',6,'2021-02-20',6,'评语6','2021-02-20','教师工号6','学籍号6'),(1613800415115,'2021-02-20 05:53:34','流浪宠物',85,'2021-02-27',96,'很好','2021-02-27','123','147');
/*!40000 ALTER TABLE `chengjipingding` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmt9g58/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmt9g58/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmt9g58/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/ssmt9g58/upload/1613799963899.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dabiantongzhi`
--

DROP TABLE IF EXISTS `dabiantongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dabiantongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dabianshijian` datetime DEFAULT NULL COMMENT '答辩时间',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `dabianxuzhi` longtext COMMENT '答辩须知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800103083 DEFAULT CHARSET=utf8 COMMENT='答辩通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dabiantongzhi`
--

LOCK TABLES `dabiantongzhi` WRITE;
/*!40000 ALTER TABLE `dabiantongzhi` DISABLE KEYS */;
INSERT INTO `dabiantongzhi` VALUES (71,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级1','班级1','专业1','教师工号1','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian1.jpg','答辩须知1'),(72,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级2','班级2','专业2','教师工号2','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian2.jpg','答辩须知2'),(73,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级3','班级3','专业3','教师工号3','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian3.jpg','答辩须知3'),(74,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级4','班级4','专业4','教师工号4','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian4.jpg','答辩须知4'),(75,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级5','班级5','专业5','教师工号5','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian5.jpg','答辩须知5'),(76,'2021-02-20 05:39:35','2021-02-20 13:39:35','年级6','班级6','专业6','教师工号6','http://localhost:8080/ssmt9g58/upload/dabiantongzhi_fengmian6.jpg','答辩须知6'),(1613800103082,'2021-02-20 05:48:22','2021-02-27 00:00:00','大四','405','计算机','123','http://localhost:8080/ssmt9g58/upload/1613800098761.jpg','<p><strong>学习方式的变化——自主学习</strong></p><p>大学学习是一种“自主学习”，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大吃一惊</a>。</p><p><strong>重新认识自己——多元发展</strong></p><p>在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做“大学生的平庸化”，说的是有的学生在上<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大学</a>之前都是<a href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p><p>当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p><p><strong>生活环境的变化——互相适应</strong></p><p>在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p><p>还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p><p><strong>新型人际交往观念——追求和谐</strong></p><p>大学生来自全国各地，每个人的生活方式，每个人的<a href=\"https://baike.baidu.com/item/%E8%A1%8C%E4%B8%BA%E6%96%B9%E5%BC%8F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">行为方式</a>都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人<a href=\"https://baike.baidu.com/item/%E5%92%8C%E5%B9%B3%E5%85%B1%E5%A4%84\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">和平共处</a>。一个人要想发展，必须有一个良好的人际环境，这个良好的人际环境就是能够跟周围的人有一种和谐的<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E9%99%85%E5%85%B3%E7%B3%BB\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人际关系</a>。步入大学之后，就面临着这样一种新型的人际关系，建立和保持跟周围的同学、老师、朋友的一种良好人际关系，而成年人处理人际关系最主要靠自己。</p><p><br></p>');
/*!40000 ALTER TABLE `dabiantongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613799911343 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-02-20 05:39:35','教师1','教师姓名1','123456','男','职称1','13823888881','773890001@qq.com'),(22,'2021-02-20 05:39:35','教师2','教师姓名2','123456','男','职称2','13823888882','773890002@qq.com'),(23,'2021-02-20 05:39:35','教师3','教师姓名3','123456','男','职称3','13823888883','773890003@qq.com'),(24,'2021-02-20 05:39:35','教师4','教师姓名4','123456','男','职称4','13823888884','773890004@qq.com'),(25,'2021-02-20 05:39:35','教师5','教师姓名5','123456','男','职称5','13823888885','773890005@qq.com'),(26,'2021-02-20 05:39:35','教师6','教师姓名6','123456','男','职称6','13823888886','773890006@qq.com'),(1613799911342,'2021-02-20 05:45:11','123','胡月','123','女','班主任','13513513525','1524545@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketixinxi`
--

DROP TABLE IF EXISTS `ketixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ketixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `ketiwenjian` varchar(200) DEFAULT NULL COMMENT '课题文件',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `ketineirong` longtext COMMENT '课题内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ketibianhao` (`ketibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800067701 DEFAULT CHARSET=utf8 COMMENT='课题信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketixinxi`
--

LOCK TABLES `ketixinxi` WRITE;
/*!40000 ALTER TABLE `ketixinxi` DISABLE KEYS */;
INSERT INTO `ketixinxi` VALUES (31,'2021-02-20 05:39:35','课题编号1','教师姓名1','课题名称1','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian1.jpg','教师工号1','2021-02-20','课题内容1'),(32,'2021-02-20 05:39:35','课题编号2','教师姓名2','课题名称2','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian2.jpg','教师工号2','2021-02-20','课题内容2'),(33,'2021-02-20 05:39:35','课题编号3','教师姓名3','课题名称3','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian3.jpg','教师工号3','2021-02-20','课题内容3'),(34,'2021-02-20 05:39:35','课题编号4','教师姓名4','课题名称4','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian4.jpg','教师工号4','2021-02-20','课题内容4'),(35,'2021-02-20 05:39:35','课题编号5','教师姓名5','课题名称5','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian5.jpg','教师工号5','2021-02-20','课题内容5'),(36,'2021-02-20 05:39:35','课题编号6','教师姓名6','课题名称6','','http://localhost:8080/ssmt9g58/upload/ketixinxi_fengmian6.jpg','教师工号6','2021-02-20','课题内容6'),(1613800067700,'2021-02-20 05:47:46','1613800482105','胡月','流浪宠物','http://localhost:8080/ssmt9g58/upload/1613800045874.doc','http://localhost:8080/ssmt9g58/upload/1613800054485.jpg','123','2021-02-20','<p><strong>学习方式的变化——自主学习</strong></p><p>大学学习是一种“自主学习”，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大吃一惊</a>。</p><p><strong>重新认识自己——多元发展</strong></p><p>在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做“大学生的平庸化”，说的是有的学生在上<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大学</a>之前都是<a href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p><p>当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p><p><strong>生活环境的变化——互相适应</strong></p><p>在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p><p>还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p><p><strong>新型人际交往观念——追求和谐</strong></p><p>大学生来自全国各地，每个人的生活方式，每个人的<a href=\"https://baike.baidu.com/item/%E8%A1%8C%E4%B8%BA%E6%96%B9%E5%BC%8F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">行为方式</a>都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人<a href=\"https://baike.baidu.com/item/%E5%92%8C%E5%B9%B3%E5%85%B1%E5%A4%84\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">和平共处</a>。一个人要想发展，必须有一个良好的人际环境，这个良好的人际环境就是能够跟周围的人有一种和谐的<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E9%99%85%E5%85%B3%E7%B3%BB\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人际关系</a>。步入大学之后，就面临着这样一种新型的人际关系，建立和保持跟周围的同学、老师、朋友的一种良好人际关系，而成年人处理人际关系最主要靠自己。</p><p><strong>学习方式的变化——自主学习</strong></p><p>大学学习是一种“自主学习”，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大吃一惊</a>。</p><p><strong>重新认识自己——多元发展</strong></p><p>在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做“大学生的平庸化”，说的是有的学生在上<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大学</a>之前都是<a href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p><p>当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p><p><strong>生活环境的变化——互相适应</strong></p><p>在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p><p>还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p><p><strong>新型人际交往观念——追求和谐</strong></p><p>大学生来自全国各地，每个人的生活方式，每个人的<a href=\"https://baike.baidu.com/item/%E8%A1%8C%E4%B8%BA%E6%96%B9%E5%BC%8F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">行为方式</a>都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人<a href=\"https://baike.baidu.com/item/%E5%92%8C%E5%B9%B3%E5%85%B1%E5%A4%84\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">和平共处</a>。一个人要想发展，必须有一个良好的人际环境，这个良好的人际环境就是能够跟周围的人有一种和谐的<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E9%99%85%E5%85%B3%E7%B3%BB\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人际关系</a>。步入大学之后，就面临着这样一种新型的人际关系，建立和保持跟周围的同学、老师、朋友的一种良好人际关系，而成年人处理人际关系最主要靠自己。</p><p><br></p>');
/*!40000 ALTER TABLE `ketixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunwenpingfen`
--

DROP TABLE IF EXISTS `lunwenpingfen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunwenpingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `lunwenchengji` int(11) DEFAULT NULL COMMENT '论文成绩',
  `pingyu` longtext COMMENT '评语',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800389246 DEFAULT CHARSET=utf8 COMMENT='论文评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunwenpingfen`
--

LOCK TABLES `lunwenpingfen` WRITE;
/*!40000 ALTER TABLE `lunwenpingfen` DISABLE KEYS */;
INSERT INTO `lunwenpingfen` VALUES (61,'2021-02-20 05:39:35','课题名称1',1,'评语1','2021-02-20','教师工号1','学籍号1'),(62,'2021-02-20 05:39:35','课题名称2',2,'评语2','2021-02-20','教师工号2','学籍号2'),(63,'2021-02-20 05:39:35','课题名称3',3,'评语3','2021-02-20','教师工号3','学籍号3'),(64,'2021-02-20 05:39:35','课题名称4',4,'评语4','2021-02-20','教师工号4','学籍号4'),(65,'2021-02-20 05:39:35','课题名称5',5,'评语5','2021-02-20','教师工号5','学籍号5'),(66,'2021-02-20 05:39:35','课题名称6',6,'评语6','2021-02-20','教师工号6','学籍号6'),(1613800389245,'2021-02-20 05:53:09','流浪宠物',85,'很好','2021-02-20','123','147');
/*!40000 ALTER TABLE `lunwenpingfen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunwenxinxi`
--

DROP TABLE IF EXISTS `lunwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lunwenwendang` varchar(200) DEFAULT NULL COMMENT '论文文档',
  `shangjiaoshijian` date DEFAULT NULL COMMENT '上交时间',
  `beizhu` longtext COMMENT '备注',
  `lunwenneirong` longtext COMMENT '论文内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800287951 DEFAULT CHARSET=utf8 COMMENT='论文信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunwenxinxi`
--

LOCK TABLES `lunwenxinxi` WRITE;
/*!40000 ALTER TABLE `lunwenxinxi` DISABLE KEYS */;
INSERT INTO `lunwenxinxi` VALUES (51,'2021-02-20 05:39:35','课题名称1','教师工号1','学籍号1','学生姓名1','','2021-02-20','备注1','论文内容1','是',''),(52,'2021-02-20 05:39:35','课题名称2','教师工号2','学籍号2','学生姓名2','','2021-02-20','备注2','论文内容2','是',''),(53,'2021-02-20 05:39:35','课题名称3','教师工号3','学籍号3','学生姓名3','','2021-02-20','备注3','论文内容3','是',''),(54,'2021-02-20 05:39:35','课题名称4','教师工号4','学籍号4','学生姓名4','','2021-02-20','备注4','论文内容4','是',''),(55,'2021-02-20 05:39:35','课题名称5','教师工号5','学籍号5','学生姓名5','','2021-02-20','备注5','论文内容5','是',''),(56,'2021-02-20 05:39:35','课题名称6','教师工号6','学籍号6','学生姓名6','','2021-02-20','备注6','论文内容6','是',''),(1613800287950,'2021-02-20 05:51:27','流浪宠物','123','147','李月','http://localhost:8080/ssmt9g58/upload/1613800278748.doc','2021-02-20','13123','<p><strong>学习方式的变化——自主学习</strong></p><p>大学学习是一种“自主学习”，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大吃一惊</a>。</p><p><strong>重新认识自己——多元发展</strong></p><p>在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做“大学生的平庸化”，说的是有的学生在上<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大学</a>之前都是<a href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p><p>当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p><p><strong>生活环境的变化——互相适应</strong></p><p>在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p><p>还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p><p><strong>新型人际交往观念——追求和谐</strong></p><p>大学生来自全国各地，每个人的生活方式，每个人的<a href=\"https://baike.baidu.com/item/%E8%A1%8C%E4%B8%BA%E6%96%B9%E5%BC%8F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">行为方式</a>都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人<a href=\"https://baike.baidu.com/item/%E5%92%8C%E5%B9%B3%E5%85%B1%E5%A4%84\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">和平共处</a>。一个人要想发展，必须有一个良好的人际环境，这个良好的人际环境就是能够跟周围的人有一种和谐的<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E9%99%85%E5%85%B3%E7%B3%BB\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人际关系</a>。步入大学之后，就面临着这样一种新型的人际关系，建立和保持跟周围的同学、老师、朋友的一种良好人际关系，而成年人处理人际关系最主要靠自己。</p><p><br></p><p><br></p><h2>其它相关</h2><p><br></p>','是','通过');
/*!40000 ALTER TABLE `lunwenxinxi` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800013956 DEFAULT CHARSET=utf8 COMMENT='校园公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-02-20 05:39:35','标题1','简介1','http://localhost:8080/ssmt9g58/upload/news_picture1.jpg','内容1'),(92,'2021-02-20 05:39:35','标题2','简介2','http://localhost:8080/ssmt9g58/upload/news_picture2.jpg','内容2'),(93,'2021-02-20 05:39:35','标题3','简介3','http://localhost:8080/ssmt9g58/upload/news_picture3.jpg','内容3'),(94,'2021-02-20 05:39:35','标题4','简介4','http://localhost:8080/ssmt9g58/upload/news_picture4.jpg','内容4'),(95,'2021-02-20 05:39:35','标题5','简介5','http://localhost:8080/ssmt9g58/upload/news_picture5.jpg','内容5'),(96,'2021-02-20 05:39:35','标题6','简介6','http://localhost:8080/ssmt9g58/upload/news_picture6.jpg','内容6'),(1613800013955,'2021-02-20 05:46:53','校园公告','	大学生来自全国各地，每个人的生活方式，每个人的行为方式都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人和平共处','http://localhost:8080/ssmt9g58/upload/1613799978975.jpg','<p>	<strong>学习方式的变化——自主学习</strong></p><p>	大学学习是一种“自主学习”，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大吃一惊</a>。</p><p>	<strong>重新认识自己——多元发展</strong></p><p>	在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做“大学生的平庸化”，说的是有的学生在上<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大学</a>之前都是<a href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p><p>	当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p><p>	<strong>生活环境的变化——互相适应</strong></p><p>	在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p><p>	还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p><p>	<strong>新型人际交往观念——追求和谐</strong></p><p>	大学生来自全国各地，每个人的生活方式，每个人的<a href=\"https://baike.baidu.com/item/%E8%A1%8C%E4%B8%BA%E6%96%B9%E5%BC%8F\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">行为方式</a>都有所不同，这样多的人在一个屋顶下生活，不可避免地要面临各种各样人际间的纠纷。成年人的人际关系是生存和发展的必要条件，不是喜不喜欢的问题。在很多情况下，我们必须跟很多我们看不惯的人<a href=\"https://baike.baidu.com/item/%E5%92%8C%E5%B9%B3%E5%85%B1%E5%A4%84\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">和平共处</a>。一个人要想发展，必须有一个良好的人际环境，这个良好的人际环境就是能够跟周围的人有一种和谐的<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E9%99%85%E5%85%B3%E7%B3%BB\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人际关系</a>。步入大学之后，就面临着这样一种新型的人际关系，建立和保持跟周围的同学、老师、朋友的一种良好人际关系，而成年人处理人际关系最主要靠自己。</p><p><br></p><p><br></p><h2>其它相关</h2><p><br></p><p><br></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','p64p26lpexo3fqp3ncg3qdsdr2pjg26f','2021-02-20 05:44:41','2021-02-20 06:54:17'),(2,1613799911342,'123','jiaoshi','教师','efoc1y0lli47yjo2bknlr6kkyinliirz','2021-02-20 05:47:03','2021-02-20 06:52:37'),(3,1613800158442,'147','xuesheng','学生','ra5vosah2jevruxt2e2toj2hjenvp3ka','2021-02-20 05:49:27','2021-02-20 06:53:56');
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-20 05:39:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuantixinxi`
--

DROP TABLE IF EXISTS `xuantixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuantixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketibianhao` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `ketimingcheng` varchar(200) DEFAULT NULL COMMENT '课题名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xuantishijian` date DEFAULT NULL COMMENT '选题时间',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuejihao` (`xuejihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800201902 DEFAULT CHARSET=utf8 COMMENT='选题信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuantixinxi`
--

LOCK TABLES `xuantixinxi` WRITE;
/*!40000 ALTER TABLE `xuantixinxi` DISABLE KEYS */;
INSERT INTO `xuantixinxi` VALUES (41,'2021-02-20 05:39:35','课题编号1','课题名称1','教师工号1','教师姓名1','学籍号1','学生姓名1','2021-02-20','备注1','是','',1),(42,'2021-02-20 05:39:35','课题编号2','课题名称2','教师工号2','教师姓名2','学籍号2','学生姓名2','2021-02-20','备注2','是','',2),(43,'2021-02-20 05:39:35','课题编号3','课题名称3','教师工号3','教师姓名3','学籍号3','学生姓名3','2021-02-20','备注3','是','',3),(44,'2021-02-20 05:39:35','课题编号4','课题名称4','教师工号4','教师姓名4','学籍号4','学生姓名4','2021-02-20','备注4','是','',4),(45,'2021-02-20 05:39:35','课题编号5','课题名称5','教师工号5','教师姓名5','学籍号5','学生姓名5','2021-02-20','备注5','是','',5),(46,'2021-02-20 05:39:35','课题编号6','课题名称6','教师工号6','教师姓名6','学籍号6','学生姓名6','2021-02-20','备注6','是','',6),(1613800201901,'2021-02-20 05:50:01','1613800482105','流浪宠物','123','胡月','147','李月','2021-02-20','<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\"><strong style=\"padding: 0px; margin: 0px; box-sizing: border-box;\">学习方式的变化&mdash;&mdash;自主学习</strong></p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">大学学习是一种&ldquo;自主学习&rdquo;，学什么、怎么学、学到什么程度基本上都由自己决定，学校和老师的要求只是辅助性的。学习的方式也发生了变化，虽然也有老师的督导，但这种<a style=\"padding: 0px; margin: 0px; box-sizing: border-box; color: #136ec2;\" href=\"https://baike.baidu.com/item/%E7%9D%A3%E5%AF%BC\" target=\"_blank\" rel=\"noopener noreferrer\">督导</a>大大减弱了。从中学到大学，对学生的外界督导减少了，学生的自由增加了。自由度变大了，责任也变大了，很多学生往往意识不到这一点，第一学期就出现不及格现象，这时才<a style=\"padding: 0px; margin: 0px; box-sizing: border-box; color: #136ec2;\" href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%90%83%E4%B8%80%E6%83%8A\" target=\"_blank\" rel=\"noopener noreferrer\">大吃一惊</a>。</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\"><strong style=\"padding: 0px; margin: 0px; box-sizing: border-box;\">重新认识自己&mdash;&mdash;多元发展</strong></p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">在大学里，每个同学都要面临一个非常严峻的挑战，就是如何客观地认识和评价自己及所面临的处境。有一个词叫做&ldquo;大学生的平庸化&rdquo;，说的是有的学生在上<a style=\"padding: 0px; margin: 0px; box-sizing: border-box; color: #136ec2;\" href=\"https://baike.baidu.com/item/%E5%A4%A7%E5%AD%A6/5579\" target=\"_blank\" rel=\"noopener noreferrer\">大学</a>之前都是<a style=\"padding: 0px; margin: 0px; box-sizing: border-box; color: #136ec2;\" href=\"https://baike.baidu.com/item/%E5%87%BA%E7%B1%BB%E6%8B%94%E8%90%83/82485\" target=\"_blank\" rel=\"noopener noreferrer\">出类拔萃</a>的、优秀的，但上了大学之后却发现自己变得很平庸，没有那么突出了。记者的一位朋友在上大学之前，从来都是班里、年级里的第一名，毫无悬念地考上了<a style=\"padding: 0px; margin: 0px; box-sizing: border-box; color: #136ec2;\" href=\"https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%A4%A7%E5%AD%A6\" target=\"_blank\" rel=\"noopener noreferrer\">重点大学</a>，然而在大一期间因为班里的同学都是来自全国各地的优等生，他再也不是佼佼者了，他在期末考试时居然破天荒地出现了不及格现象。</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">当发现差距后，要对自己做客观的分析。自我评价时感到困惑的一个很重要的原因就是进入大学后与别人可比较的方面越来越广泛，已不仅仅是学习成绩。因此在大学期间，多参加学校的选修课、社团，发掘自己的特长，并与学长沟通，吸取经验，提高自身修养和综合素质才是大学生活中最有价值的收获。</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\"><strong style=\"padding: 0px; margin: 0px; box-sizing: border-box;\">生活环境的变化&mdash;&mdash;互相适应</strong></p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">在大学，必须要学会生活自理，上了大学之后首先要学习生活自理，自己照顾好自己。</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">还有生活习惯的改变和互相适应问题，包括口音、就寝时间、睡眠习惯等。有的同学必须把录音机开得很响，才能睡得着；有的人有一点动静，都不能睡觉。新生来到一个新的环境，住集体宿舍，就必须学会相互适应，通过交流和协商找到一种大家都能接受的解决方案。</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\"><strong style=\"padding: 0px; margin: 0px; box-sizing: border-box;\">新型人际交往观念&mdash;&mdash;追求和谐</strong></p>\n<h2 style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">&nbsp;</h2>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">&nbsp;</p>\n<p style=\"padding: 0px; margin: 0px; box-sizing: border-box; cursor: text; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0;\">&nbsp;</p>','是','通过',1613800158442);
/*!40000 ALTER TABLE `xuantixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuejihao` (`xuejihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613800158443 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-20 05:39:34','学生1','学生姓名1','123456','年级1','班级1','男','专业1','13823888881'),(12,'2021-02-20 05:39:34','学生2','学生姓名2','123456','年级2','班级2','男','专业2','13823888882'),(13,'2021-02-20 05:39:34','学生3','学生姓名3','123456','年级3','班级3','男','专业3','13823888883'),(14,'2021-02-20 05:39:35','学生4','学生姓名4','123456','年级4','班级4','男','专业4','13823888884'),(15,'2021-02-20 05:39:35','学生5','学生姓名5','123456','年级5','班级5','男','专业5','13823888885'),(16,'2021-02-20 05:39:35','学生6','学生姓名6','123456','年级6','班级6','男','专业6','13823888886'),(1613799942694,'2021-02-20 05:45:42','456','顾红','456','大四','405','女','计算机','13513513525'),(1613800158442,'2021-02-20 05:49:18','147','李月','147','大四','405','女','计算机','13513513525');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 16:57:06
