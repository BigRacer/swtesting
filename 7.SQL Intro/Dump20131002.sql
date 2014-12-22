CREATE DATABASE  IF NOT EXISTS `moodle` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `moodle`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `comments` smallint(4) NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT '0',
  `timeavailableto` bigint(10) NOT NULL DEFAULT '0',
  `timeviewfrom` bigint(10) NOT NULL DEFAULT '0',
  `timeviewto` bigint(10) NOT NULL DEFAULT '0',
  `requiredentries` int(8) NOT NULL DEFAULT '0',
  `requiredentriestoview` int(8) NOT NULL DEFAULT '0',
  `maxentries` int(8) NOT NULL DEFAULT '0',
  `rssarticles` smallint(4) NOT NULL DEFAULT '0',
  `singletemplate` longtext COLLATE utf8_unicode_ci,
  `listtemplate` longtext COLLATE utf8_unicode_ci,
  `listtemplateheader` longtext COLLATE utf8_unicode_ci,
  `listtemplatefooter` longtext COLLATE utf8_unicode_ci,
  `addtemplate` longtext COLLATE utf8_unicode_ci,
  `rsstemplate` longtext COLLATE utf8_unicode_ci,
  `rsstitletemplate` longtext COLLATE utf8_unicode_ci,
  `csstemplate` longtext COLLATE utf8_unicode_ci,
  `jstemplate` longtext COLLATE utf8_unicode_ci,
  `asearchtemplate` longtext COLLATE utf8_unicode_ci,
  `approval` smallint(4) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `defaultsort` bigint(10) NOT NULL DEFAULT '0',
  `defaultsortdir` smallint(4) NOT NULL DEFAULT '0',
  `editany` smallint(4) NOT NULL DEFAULT '0',
  `notification` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instances`
--

DROP TABLE IF EXISTS `mdl_repository_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `typeid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instances`
--

LOCK TABLES `mdl_repository_instances` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instances` DISABLE KEYS */;
INSERT INTO `mdl_repository_instances` VALUES (1,'',1,0,1,NULL,NULL,1380699044,1380699044,0),(2,'',2,0,1,NULL,NULL,1380699046,1380699046,0),(3,'',3,0,1,NULL,NULL,1380699047,1380699047,0),(4,'',4,0,1,NULL,NULL,1380699048,1380699048,0),(5,'',5,0,1,NULL,NULL,1380699049,1380699049,0),(6,'',6,0,1,NULL,NULL,1380699051,1380699051,0),(7,'',7,0,1,NULL,NULL,1380699051,1380699051,0);
/*!40000 ALTER TABLE `mdl_repository_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_essay_options`
--

DROP TABLE IF EXISTS `mdl_qtype_essay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_essay_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `responseformat` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'editor',
  `responsefieldlines` smallint(4) NOT NULL DEFAULT '15',
  `attachments` smallint(4) NOT NULL DEFAULT '0',
  `graderinfo` longtext COLLATE utf8_unicode_ci,
  `graderinfoformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypessaopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Extra options for essay questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_essay_options`
--

LOCK TABLES `mdl_qtype_essay_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_mahara_queue`
--

DROP TABLE IF EXISTS `mdl_portfolio_mahara_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_mahara_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `transferid` bigint(10) NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portmahaqueu_tok_ix` (`token`),
  KEY `mdl_portmahaqueu_tra_ix` (`transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='maps mahara tokens to transfer ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_mahara_queue`
--

LOCK TABLES `mdl_portfolio_mahara_queue` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `keepdays` bigint(11) NOT NULL DEFAULT '0',
  `studentlogs` smallint(4) NOT NULL DEFAULT '0',
  `chattime` bigint(10) NOT NULL DEFAULT '0',
  `schedule` smallint(4) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_comments`
--

DROP TABLE IF EXISTS `mdl_workshopform_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workcomm_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Comments strategy f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_comments`
--

LOCK TABLES `mdl_workshopform_comments` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_read`
--

DROP TABLE IF EXISTS `mdl_message_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT '0',
  `useridto` bigint(10) NOT NULL DEFAULT '0',
  `subject` longtext COLLATE utf8_unicode_ci,
  `fullmessage` longtext COLLATE utf8_unicode_ci,
  `fullmessageformat` smallint(4) DEFAULT '0',
  `fullmessagehtml` longtext COLLATE utf8_unicode_ci,
  `smallmessage` longtext COLLATE utf8_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext COLLATE utf8_unicode_ci,
  `contexturlname` longtext COLLATE utf8_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timeread` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_messread_use_ix` (`useridfrom`),
  KEY `mdl_messread_use2_ix` (`useridto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores all messages that have been read';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_read`
--

LOCK TABLES `mdl_message_read` WRITE;
/*!40000 ALTER TABLE `mdl_message_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_options`
--

DROP TABLE IF EXISTS `mdl_question_numerical_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `showunits` smallint(4) NOT NULL DEFAULT '0',
  `unitsleft` smallint(4) NOT NULL DEFAULT '0',
  `unitgradingtype` smallint(4) NOT NULL DEFAULT '0',
  `unitpenalty` decimal(12,7) NOT NULL DEFAULT '0.1000000',
  PRIMARY KEY (`id`),
  KEY `mdl_quesnumeopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for questions of type numerical This table is also u';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_options`
--

LOCK TABLES `mdl_question_numerical_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_question_instances`
--

DROP TABLE IF EXISTS `mdl_quiz_question_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_question_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `question` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`id`),
  KEY `mdl_quizquesinst_qui_ix` (`quiz`),
  KEY `mdl_quizquesinst_que_ix` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the maximum possible grade (weight) for each question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_question_instances`
--

LOCK TABLES `mdl_quiz_question_instances` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_question_instances` DISABLE KEYS */;
INSERT INTO `mdl_quiz_question_instances` VALUES (1,1,3,1.0000000),(2,1,4,1.0000000),(3,2,5,1.0000000),(4,2,6,1.0000000),(5,2,7,1.0000000),(6,2,8,1.0000000);
/*!40000 ALTER TABLE `mdl_quiz_question_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_page`
--

DROP TABLE IF EXISTS `mdl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_page` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `contentformat` smallint(4) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8_unicode_ci,
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_page_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each record is one page and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_page`
--

LOCK TABLES `mdl_page` WRITE;
/*!40000 ALTER TABLE `mdl_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_definitions`
--

DROP TABLE IF EXISTS `mdl_question_dataset_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` bigint(10) NOT NULL DEFAULT '0',
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemcount` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdatadefi_cat_ix` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Organises and stores properties for dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_definitions`
--

LOCK TABLES `mdl_question_dataset_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_queries`
--

DROP TABLE IF EXISTS `mdl_log_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_queries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `qtype` mediumint(5) NOT NULL,
  `sqltext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sqlparams` longtext COLLATE utf8_unicode_ci,
  `error` mediumint(5) NOT NULL DEFAULT '0',
  `info` longtext COLLATE utf8_unicode_ci,
  `backtrace` longtext COLLATE utf8_unicode_ci,
  `exectime` decimal(10,5) NOT NULL,
  `timelogged` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Logged database queries.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_queries`
--

LOCK TABLES `mdl_log_queries` WRITE;
/*!40000 ALTER TABLE `mdl_log_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_log_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_config`
--

DROP TABLE IF EXISTS `mdl_filter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl_filtconf_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores per-context configuration settings for filters which ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_config`
--

LOCK TABLES `mdl_filter_config` WRITE;
/*!40000 ALTER TABLE `mdl_filter_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_filter_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories`
--

DROP TABLE IF EXISTS `mdl_grade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table keeps information about categories, used for grou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories`
--

LOCK TABLES `mdl_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories` DISABLE KEYS */;
INSERT INTO `mdl_grade_categories` VALUES (1,2,NULL,1,'/1/','?',11,0,0,1,0,0,1380701339,1380702743,0);
/*!40000 ALTER TABLE `mdl_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items`
--

DROP TABLE IF EXISTS `mdl_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8_unicode_ci,
  `idnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculation` longtext COLLATE utf8_unicode_ci,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items`
--

LOCK TABLES `mdl_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items` DISABLE KEYS */;
INSERT INTO `mdl_grade_items` VALUES (1,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1,0,NULL,0,0,0,0,1380701339,1380702742),(2,2,1,'ttt','mod','quiz',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,2,0,NULL,0,0,0,0,1380701368,1380702390),(3,2,1,'yyyy','mod','quiz',2,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,3,0,NULL,0,0,0,0,1380702742,1380702742);
/*!40000 ALTER TABLE `mdl_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `sequence` longtext COLLATE utf8_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `availablefrom` bigint(10) NOT NULL DEFAULT '0',
  `availableuntil` bigint(10) NOT NULL DEFAULT '0',
  `showavailability` tinyint(1) NOT NULL DEFAULT '0',
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
INSERT INTO `mdl_course_sections` VALUES (1,2,0,NULL,NULL,1,'1',1,0,0,0,0),(2,2,1,NULL,'',1,'2,3',1,0,0,0,0),(3,2,2,NULL,'',1,'',1,0,0,0,0),(4,2,3,NULL,'',1,'',1,0,0,0,0),(5,2,4,NULL,'',1,'',1,0,0,0,0),(6,2,5,NULL,'',1,'',1,0,0,0,0),(7,2,6,NULL,'',1,'',1,0,0,0,0),(8,2,7,NULL,'',1,'',1,0,0,0,0),(9,2,8,NULL,'',1,'',1,0,0,0,0),(10,2,9,NULL,'',1,'',1,0,0,0,0),(11,2,10,NULL,'',1,'',1,0,0,0,0),(12,1,0,NULL,'',1,'',1,0,0,0,0);
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_alias`
--

DROP TABLE IF EXISTS `mdl_glossary_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='entries alias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_alias`
--

LOCK TABLES `mdl_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_tempdata`
--

DROP TABLE IF EXISTS `mdl_portfolio_tempdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_tempdata` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `data` longtext COLLATE utf8_unicode_ci,
  `expirytime` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_porttemp_use_ix` (`userid`),
  KEY `mdl_porttemp_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='stores temporary data for portfolio exports. the id of this ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_tempdata`
--

LOCK TABLES `mdl_portfolio_tempdata` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment`
--

DROP TABLE IF EXISTS `mdl_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `assignmenttype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resubmit` tinyint(2) NOT NULL DEFAULT '0',
  `preventlate` tinyint(2) NOT NULL DEFAULT '0',
  `emailteachers` tinyint(2) NOT NULL DEFAULT '0',
  `var1` bigint(10) DEFAULT '0',
  `var2` bigint(10) DEFAULT '0',
  `var3` bigint(10) DEFAULT '0',
  `var4` bigint(10) DEFAULT '0',
  `var5` bigint(10) DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '100000',
  `timedue` bigint(10) NOT NULL DEFAULT '0',
  `timeavailable` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou2_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment`
--

LOCK TABLES `mdl_assignment` WRITE;
/*!40000 ALTER TABLE `mdl_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completedtmp`
--

DROP TABLE IF EXISTS `mdl_feedback_completedtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completedtmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `guestid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `random_response` bigint(10) NOT NULL DEFAULT '0',
  `anonymous_response` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use2_ix` (`userid`),
  KEY `mdl_feedcomp_fee2_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completedtmp`
--

LOCK TABLES `mdl_feedback_completedtmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_notify`
--

DROP TABLE IF EXISTS `mdl_course_completion_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_notify` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `role` bigint(10) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timesent` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courcompnoti_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion notification emails';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_notify`
--

LOCK TABLES `mdl_course_completion_notify` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriaid` bigint(10) NOT NULL DEFAULT '0',
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_crit_compl`
--

LOCK TABLES `mdl_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_correlation`
--

DROP TABLE IF EXISTS `mdl_tag_correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_correlation` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `correlatedtags` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tagcorr_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The rationale for the ''tag_correlation'' table is performance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_correlation`
--

LOCK TABLES `mdl_tag_correlation` WRITE;
/*!40000 ALTER TABLE `mdl_tag_correlation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_old`
--

DROP TABLE IF EXISTS `mdl_workshop_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `wtype` smallint(3) NOT NULL DEFAULT '0',
  `nelements` smallint(3) NOT NULL DEFAULT '1',
  `nattachments` smallint(3) NOT NULL DEFAULT '0',
  `phase` tinyint(2) NOT NULL DEFAULT '0',
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `gradingstrategy` tinyint(2) NOT NULL DEFAULT '1',
  `resubmit` tinyint(2) NOT NULL DEFAULT '0',
  `agreeassessments` tinyint(2) NOT NULL DEFAULT '0',
  `hidegrades` tinyint(2) NOT NULL DEFAULT '0',
  `anonymous` tinyint(2) NOT NULL DEFAULT '0',
  `includeself` tinyint(2) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '100000',
  `submissionstart` bigint(10) NOT NULL DEFAULT '0',
  `assessmentstart` bigint(10) NOT NULL DEFAULT '0',
  `submissionend` bigint(10) NOT NULL DEFAULT '0',
  `assessmentend` bigint(10) NOT NULL DEFAULT '0',
  `releasegrades` bigint(10) NOT NULL DEFAULT '0',
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `ntassessments` smallint(3) NOT NULL DEFAULT '0',
  `assessmentcomps` smallint(3) NOT NULL DEFAULT '2',
  `nsassessments` smallint(3) NOT NULL DEFAULT '0',
  `overallocation` smallint(3) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `teacherweight` smallint(3) NOT NULL DEFAULT '1',
  `showleaguetable` smallint(3) NOT NULL DEFAULT '0',
  `usepassword` smallint(3) NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop table to be dropped later in Moodle 2.x';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_old`
--

LOCK TABLES `mdl_workshop_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_enrolments`
--

DROP TABLE IF EXISTS `mdl_user_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `enrolid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '2147483647',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userenro_enruse_uix` (`enrolid`,`userid`),
  KEY `mdl_userenro_enr_ix` (`enrolid`),
  KEY `mdl_userenro_use_ix` (`userid`),
  KEY `mdl_userenro_mod_ix` (`modifierid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Users participating in courses (aka enrolled users) - everyb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_enrolments`
--

LOCK TABLES `mdl_user_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_user_enrolments` DISABLE KEYS */;
INSERT INTO `mdl_user_enrolments` VALUES (1,0,1,3,1380661200,0,2,1380701576,1380701576);
/*!40000 ALTER TABLE `mdl_user_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale_history`
--

DROP TABLE IF EXISTS `mdl_scale_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scalhist_act_ix` (`action`),
  KEY `mdl_scalhist_old_ix` (`oldid`),
  KEY `mdl_scalhist_cou_ix` (`courseid`),
  KEY `mdl_scalhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale_history`
--

LOCK TABLES `mdl_scale_history` WRITE;
/*!40000 ALTER TABLE `mdl_scale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors_map`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `nonegative` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worknumemap_wornon_uix` (`workshopid`,`nonegative`),
  KEY `mdl_worknumemap_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This maps the number of errors to a percentual grade for sub';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors_map`
--

LOCK TABLES `mdl_workshopform_numerrors_map` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(20) NOT NULL DEFAULT '0',
  `module` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_criteria`
--

LOCK TABLES `mdl_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `rollupruleid` bigint(10) NOT NULL DEFAULT '0',
  `operator` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprulecond`
--

LOCK TABLES `mdl_scorm_seq_rolluprulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource`
--

DROP TABLE IF EXISTS `mdl_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `tobemigrated` smallint(4) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8_unicode_ci,
  `filterfiles` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_reso_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each record is one resource and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource`
--

LOCK TABLES `mdl_resource` WRITE;
/*!40000 ALTER TABLE `mdl_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_processors`
--

DROP TABLE IF EXISTS `mdl_message_processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_processors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(166) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List of message output plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_processors`
--

LOCK TABLES `mdl_message_processors` WRITE;
/*!40000 ALTER TABLE `mdl_message_processors` DISABLE KEYS */;
INSERT INTO `mdl_message_processors` VALUES (1,'email',1),(2,'jabber',1),(3,'popup',1);
/*!40000 ALTER TABLE `mdl_message_processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `showresults` tinyint(2) NOT NULL DEFAULT '0',
  `display` smallint(4) NOT NULL DEFAULT '0',
  `allowupdate` tinyint(2) NOT NULL DEFAULT '0',
  `showunanswered` tinyint(2) NOT NULL DEFAULT '0',
  `limitanswers` tinyint(2) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_attempts`
--

DROP TABLE IF EXISTS `mdl_lesson_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `answerid` bigint(10) NOT NULL DEFAULT '0',
  `retry` smallint(3) NOT NULL DEFAULT '0',
  `correct` bigint(10) NOT NULL DEFAULT '0',
  `useranswer` longtext COLLATE utf8_unicode_ci,
  `timeseen` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessatte_use_ix` (`userid`),
  KEY `mdl_lessatte_les_ix` (`lessonid`),
  KEY `mdl_lessatte_pag_ix` (`pageid`),
  KEY `mdl_lessatte_ans_ix` (`answerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines lesson_attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_attempts`
--

LOCK TABLES `mdl_lesson_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files_reference`
--

DROP TABLE IF EXISTS `mdl_files_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `lifetime` bigint(10) DEFAULT NULL,
  `reference` longtext COLLATE utf8_unicode_ci,
  `referencehash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filerefe_repref_uix` (`repositoryid`,`referencehash`),
  KEY `mdl_filerefe_rep_ix` (`repositoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Store files references';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files_reference`
--

LOCK TABLES `mdl_files_reference` WRITE;
/*!40000 ALTER TABLE `mdl_files_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_files_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'auth_pop3mailbox','INBOX'),(5,'enrol_plugins_enabled','manual,guest,self,cohort'),(6,'theme','standard'),(7,'filter_multilang_converted','1'),(8,'siteidentifier','FGvzgcNusV9EHwhi1oej7bskL1K4EzGNlocalhost'),(9,'backup_version','2008111700'),(10,'backup_release','2.0 dev'),(11,'mnet_dispatcher_mode','off'),(12,'sessiontimeout','7200'),(13,'stringfilters',''),(14,'filterall','0'),(15,'texteditors','tinymce,textarea'),(16,'mnet_localhost_id','1'),(17,'mnet_all_hosts_id','2'),(18,'siteguest','1'),(19,'siteadmins','2'),(20,'themerev','1380699236'),(21,'jsrev','1380699236'),(22,'licenses','unknown,allrightsreserved,public,cc,cc-nd,cc-nc-nd,cc-nc,cc-nc-sa,cc-sa'),(23,'version','2012062501'),(24,'enableoutcomes','0'),(25,'usecomments','1'),(26,'usetags','1'),(27,'enablenotes','1'),(28,'enableportfolios','0'),(29,'enablewebservices','0'),(30,'messaging','1'),(31,'messaginghidereadnotifications','0'),(32,'messagingdeletereadnotificationsdelay','604800'),(33,'messagingallowemailoverride','0'),(34,'enablestats','0'),(35,'enablerssfeeds','0'),(36,'bloglevel','4'),(37,'enablecompletion','0'),(38,'enableavailability','0'),(39,'enableplagiarism','0'),(40,'autologinguests','0'),(41,'hiddenuserfields',''),(42,'showuseridentity','email'),(43,'enablegravatar','0'),(44,'enablecourserequests','0'),(45,'defaultrequestcategory','1'),(46,'courserequestnotify',''),(47,'grade_profilereport','user'),(48,'grade_aggregationposition','1'),(49,'grade_includescalesinaggregation','1'),(50,'grade_hiddenasdate','0'),(51,'gradepublishing','0'),(52,'grade_export_displaytype','1'),(53,'grade_export_decimalpoints','2'),(54,'grade_navmethod','0'),(55,'recovergradesdefault','0'),(56,'gradeexport',''),(57,'unlimitedgrades','0'),(58,'grade_hideforcedsettings','1'),(59,'grade_aggregation','11'),(60,'grade_aggregation_flag','0'),(61,'grade_aggregations_visible','0,10,11,12,2,4,6,8,13'),(62,'grade_aggregateonlygraded','1'),(63,'grade_aggregateonlygraded_flag','2'),(64,'grade_aggregateoutcomes','0'),(65,'grade_aggregateoutcomes_flag','2'),(66,'grade_aggregatesubcats','0'),(67,'grade_aggregatesubcats_flag','2'),(68,'grade_keephigh','0'),(69,'grade_keephigh_flag','3'),(70,'grade_droplow','0'),(71,'grade_droplow_flag','2'),(72,'grade_displaytype','1'),(73,'grade_decimalpoints','2'),(74,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(75,'grade_report_studentsperpage','100'),(76,'grade_report_quickgrading','1'),(77,'grade_report_showquickfeedback','0'),(78,'grade_report_fixedstudents','0'),(79,'grade_report_meanselection','1'),(80,'grade_report_enableajax','0'),(81,'grade_report_showcalculations','0'),(82,'grade_report_showeyecons','0'),(83,'grade_report_showaverages','1'),(84,'grade_report_showlocks','0'),(85,'grade_report_showranges','0'),(86,'grade_report_showanalysisicon','1'),(87,'grade_report_showuserimage','1'),(88,'grade_report_showactivityicons','1'),(89,'grade_report_shownumberofgrades','0'),(90,'grade_report_averagesdisplaytype','inherit'),(91,'grade_report_rangesdisplaytype','inherit'),(92,'grade_report_averagesdecimalpoints','inherit'),(93,'grade_report_rangesdecimalpoints','inherit'),(94,'grade_report_overview_showrank','0'),(95,'grade_report_overview_showtotalsifcontainhidden','0'),(96,'grade_report_user_showrank','0'),(97,'grade_report_user_showpercentage','1'),(98,'grade_report_user_showgrade','1'),(99,'grade_report_user_showfeedback','1'),(100,'grade_report_user_showrange','1'),(101,'grade_report_user_showweight','0'),(102,'grade_report_user_showaverage','0'),(103,'grade_report_user_showlettergrade','0'),(104,'grade_report_user_rangedecimals','0'),(105,'grade_report_user_showhiddenitems','1'),(106,'grade_report_user_showtotalsifcontainhidden','0'),(107,'timezone','99'),(108,'forcetimezone','99'),(109,'country','0'),(110,'defaultcity',''),(111,'geoipfile','Z:\\home\\localhost\\moodle231_data\\moodledata/geoip/GeoLiteCity.dat'),(112,'googlemapkey',''),(113,'allcountrycodes',''),(114,'autolang','1'),(115,'lang','en'),(116,'langmenu','1'),(117,'langlist',''),(118,'langcache','1'),(119,'langstringcache','1'),(120,'locale',''),(121,'latinexcelexport','0'),(123,'authpreventaccountcreation','0'),(124,'loginpageautofocus','0'),(125,'guestloginbutton','1'),(126,'alternateloginurl',''),(127,'forgottenpasswordurl',''),(128,'auth_instructions',''),(129,'allowemailaddresses',''),(130,'denyemailaddresses',''),(131,'verifychangedemail','1'),(132,'recaptchapublickey',''),(133,'recaptchaprivatekey',''),(134,'sitedefaultlicense','allrightsreserved'),(135,'cachetext','60'),(136,'filteruploadedfiles','0'),(137,'filtermatchoneperpage','0'),(138,'filtermatchonepertext','0'),(139,'filter_multilang_force_old','0'),(140,'filter_tex_latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(141,'filter_tex_latexbackground','#FFFFFF'),(142,'filter_tex_density','120'),(143,'filter_tex_pathlatex','\"c:\\texmf\\miktex\\bin\\latex.exe\" '),(144,'filter_tex_pathdvips','\"c:\\texmf\\miktex\\bin\\dvips.exe\" '),(145,'filter_tex_pathconvert','\"c:\\imagemagick\\convert.exe\" '),(146,'filter_tex_convertformat','gif'),(147,'filter_censor_badwords',''),(148,'portfolio_moderate_filesize_threshold','1048576'),(149,'portfolio_high_filesize_threshold','5242880'),(150,'portfolio_moderate_db_threshold','20'),(151,'portfolio_high_db_threshold','50'),(152,'repositorycacheexpire','120'),(153,'repositoryallowexternallinks','1'),(154,'legacyfilesinnewcourses','0'),(155,'enablewsdocumentation','0'),(156,'allowbeforeblock','0'),(157,'allowedip',''),(158,'blockedip',''),(159,'protectusernames','1'),(160,'forcelogin','0'),(161,'forceloginforprofiles','1'),(162,'forceloginforprofileimage','0'),(163,'opentogoogle','0'),(164,'maxbytes','0'),(165,'userquota','104857600'),(166,'allowobjectembed','0'),(167,'enabletrusttext','0'),(168,'maxeditingtime','1800'),(169,'fullnamedisplay','language'),(170,'extendedusernamechars','0'),(171,'sitepolicy',''),(172,'sitepolicyguest',''),(173,'keeptagnamecase','1'),(174,'profilesforenrolledusersonly','1'),(175,'cronclionly','0'),(176,'cronremotepassword',''),(177,'passwordpolicy','0'),(178,'minpasswordlength','8'),(179,'minpassworddigits','1'),(180,'minpasswordlower','1'),(181,'minpasswordupper','1'),(182,'minpasswordnonalphanum','1'),(183,'maxconsecutiveidentchars','0'),(184,'groupenrolmentkeypolicy','1'),(185,'disableuserimages','0'),(186,'emailchangeconfirmation','1'),(187,'rememberusername','2'),(188,'strictformsrequired','0'),(189,'loginhttps','0'),(190,'cookiesecure','0'),(191,'cookiehttponly','0'),(192,'allowframembedding','0'),(193,'loginpasswordautocomplete','0'),(194,'displayloginfailures',''),(195,'notifyloginfailures',''),(196,'notifyloginthreshold','10'),(197,'runclamonupload','0'),(198,'pathtoclam',''),(199,'quarantinedir',''),(200,'clamfailureonupload','donothing'),(201,'themelist',''),(202,'themedesignermode','0'),(203,'allowuserthemes','0'),(204,'allowcoursethemes','0'),(205,'allowcategorythemes','0'),(206,'allowthemechangeonurl','0'),(207,'allowuserblockhiding','1'),(208,'allowblockstodock','1'),(209,'custommenuitems',''),(210,'enabledevicedetection','1'),(211,'devicedetectregex','[]'),(212,'calendar_adminseesall','0'),(213,'calendar_site_timeformat','0'),(214,'calendar_startwday','0'),(215,'calendar_weekend','65'),(216,'calendar_lookahead','21'),(217,'calendar_maxevents','10'),(218,'enablecalendarexport','1'),(219,'calendar_exportsalt','PMfhFHAl3OYRKCNn2DqDHvIvBoK5pcLM1GP2bbbP1ySP7whhH9DblV4dnKvN'),(220,'useblogassociations','1'),(221,'useexternalblogs','1'),(222,'externalblogcrontime','86400'),(223,'maxexternalblogsperuser','1'),(224,'blogusecomments','1'),(225,'blogshowcommentscount','1'),(226,'defaulthomepage','0'),(227,'navshowcategories','1'),(228,'navshowmycoursecategories','0'),(229,'navshowallcourses','0'),(230,'navcourselimit','20'),(231,'usesitenameforsitepages','0'),(232,'linkadmincategories','0'),(233,'navshowfrontpagemods','1'),(234,'navadduserpostslinks','1'),(235,'formatstringstriptags','1'),(236,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(237,'core_media_enable_youtube','1'),(238,'core_media_enable_vimeo','0'),(239,'core_media_enable_mp3','1'),(240,'core_media_enable_flv','1'),(241,'core_media_enable_swf','1'),(242,'core_media_enable_html5audio','1'),(243,'core_media_enable_html5video','1'),(244,'core_media_enable_qt','1'),(245,'core_media_enable_wmp','1'),(246,'core_media_enable_rm','1'),(247,'docroot','http://docs.moodle.org'),(248,'doctonewwindow','0'),(249,'courselistshortnames','0'),(250,'enableajax','1'),(251,'useexternalyui','0'),(252,'yuicomboloading','1'),(253,'cachejs','1'),(254,'additionalhtmlhead',''),(255,'additionalhtmltopofbody',''),(256,'additionalhtmlfooter',''),(257,'gdversion','2'),(258,'pathtodu',''),(259,'aspellpath',''),(260,'pathtodot',''),(261,'supportpage',''),(262,'dbsessions','1'),(263,'sessioncookie',''),(264,'sessioncookiepath',''),(265,'sessioncookiedomain',''),(266,'statsfirstrun','none'),(267,'statsmaxruntime','0'),(268,'statsruntimedays','31'),(269,'statsruntimestarthour','0'),(270,'statsruntimestartminute','0'),(271,'statsuserthreshold','0'),(272,'slasharguments','1'),(273,'getremoteaddrconf','0'),(274,'proxyhost',''),(275,'proxyport','0'),(276,'proxytype','HTTP'),(277,'proxyuser',''),(278,'proxypassword',''),(279,'proxybypass','localhost, 127.0.0.1'),(280,'maintenance_enabled','0'),(281,'maintenance_message',''),(282,'deleteunconfirmed','168'),(283,'deleteincompleteusers','0'),(284,'logguests','1'),(285,'loglifetime','0'),(286,'disablegradehistory','0'),(287,'gradehistorylifetime','0'),(288,'numcoursesincombo','500'),(289,'extramemorylimit','512M'),(290,'curlcache','120'),(291,'curltimeoutkbitrate','56'),(292,'updateautocheck','1'),(293,'updateminmaturity','200'),(294,'updatenotifybuilds','0'),(295,'enablesafebrowserintegration','0'),(296,'enablegroupmembersonly','0'),(297,'dndallowtextandlinks','0'),(298,'enablecssoptimiser','0'),(299,'debug','0'),(300,'debugdisplay','1'),(301,'xmlstrictheaders','0'),(302,'debugsmtp','0'),(303,'perfdebug','7'),(304,'debugstringids','0'),(305,'debugvalidators','0'),(306,'debugpageinfo','0'),(307,'release','2.3.1 (Build: 20120706)'),(308,'branch','23'),(310,'notloggedinroleid','6'),(311,'guestroleid','6'),(312,'defaultuserroleid','7'),(313,'creatornewroleid','3'),(314,'restorernewroleid','3'),(315,'gradebookroles','5'),(316,'assignment_maxbytes','1048576'),(317,'assignment_itemstocount','1'),(318,'assignment_showrecentsubmissions','1'),(319,'chat_method','ajax'),(320,'chat_refresh_userlist','10'),(321,'chat_old_ping','35'),(322,'chat_refresh_room','5'),(323,'chat_normal_updatemode','jsupdate'),(324,'chat_serverhost','localhost'),(325,'chat_serverip','127.0.0.1'),(326,'chat_serverport','9111'),(327,'chat_servermax','100'),(328,'data_enablerssfeeds','0'),(329,'feedback_allowfullanonymous','0'),(330,'forum_displaymode','3'),(331,'forum_replytouser','1'),(332,'forum_shortpost','300'),(333,'forum_longpost','600'),(334,'forum_manydiscussions','100'),(335,'forum_maxbytes','512000'),(336,'forum_maxattachments','9'),(337,'forum_trackreadposts','1'),(338,'forum_oldpostdays','14'),(339,'forum_usermarksread','0'),(340,'forum_cleanreadtime','2'),(341,'digestmailtime','17'),(342,'forum_enablerssfeeds','0'),(343,'forum_enabletimedposts','0'),(344,'glossary_entbypage','10'),(345,'glossary_dupentries','0'),(346,'glossary_allowcomments','0'),(347,'glossary_linkbydefault','1'),(348,'glossary_defaultapproval','1'),(349,'glossary_enablerssfeeds','0'),(350,'glossary_linkentries','0'),(351,'glossary_casesensitive','0'),(352,'glossary_fullmatch','0'),(353,'lesson_slideshowwidth','640'),(354,'lesson_slideshowheight','480'),(355,'lesson_slideshowbgcolor','#FFFFFF'),(356,'lesson_mediawidth','640'),(357,'lesson_mediaheight','480'),(358,'lesson_mediaclose','0'),(359,'lesson_maxhighscores','10'),(360,'lesson_maxanswers','4'),(361,'lesson_defaultnextpage','0'),(362,'block_course_list_adminview','all'),(363,'block_course_list_hideallcourseslink','0'),(364,'block_online_users_timetosee','5'),(365,'block_rss_client_num_entries','5'),(366,'block_rss_client_timeout','30'),(367,'block_tags_showcoursetags','0'),(368,'jabberhost',''),(369,'jabberserver',''),(370,'jabberusername',''),(371,'jabberpassword',''),(372,'jabberport','5222'),(373,'smtphosts',''),(374,'smtpsecure',''),(375,'smtpuser',''),(376,'smtppass',''),(377,'smtpmaxbulk','1'),(378,'noreplyaddress','noreply@localhost'),(379,'sitemailcharset','0'),(380,'allowusermailcharset','0'),(381,'mailnewline','LF'),(382,'profileroles','3,4,5'),(383,'coursecontact','3'),(384,'frontpage','1'),(385,'frontpageloggedin','1'),(386,'maxcategorydepth','0'),(387,'commentsperpage','15'),(388,'coursesperpage','20'),(389,'defaultfrontpageroleid','8'),(390,'supportname','Admin User'),(391,'supportemail','olma@isd.dp.ua'),(392,'registerauth','');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user`
--

DROP TABLE IF EXISTS `mdl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `icq` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aim` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msn` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `institution` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastlogin` bigint(10) NOT NULL DEFAULT '0',
  `currentlogin` bigint(10) NOT NULL DEFAULT '0',
  `lastip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) NOT NULL DEFAULT '2',
  `htmleditor` tinyint(1) NOT NULL DEFAULT '1',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `trustbitmask` bigint(10) NOT NULL DEFAULT '0',
  `imagealt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screenreader` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='One record for each person';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user`
--

LOCK TABLES `mdl_user` WRITE;
/*!40000 ALTER TABLE `mdl_user` DISABLE KEYS */;
INSERT INTO `mdl_user` VALUES (1,'manual',1,0,0,0,1,'guest','78971a983f855dedb30023efa9f2ca9c','','Guest user',' ','root@localhost',0,'','','','','','','','','','','','','en','','99',1380698826,1380714111,0,1380714108,'10.98.255.250','',0,'','This user is a special user that allows read-only access to some courses.',0,1,0,2,1,1,0,0,1380698826,0,NULL,0),(2,'manual',1,0,0,0,1,'admin','ca9a9636abfb7e4d731b649f9b1249c6','','Admin','User','olma@isd.dp.ua',0,'','','','','','','','','','','Dnepropetrovsk','UA','en','','99',1380699206,1380725160,1380702165,1380714129,'10.98.255.250','',0,'','',0,1,0,1,1,1,0,0,1380699897,0,'',0),(3,'manual',1,0,0,0,1,'olma','ca9a9636abfb7e4d731b649f9b1249c6','','olma','olma','olma1@isd.dp.ua',0,'','','','','','','','','','','Dnepropetrovsk','UA','en','','99',1380699541,1380714588,1380701609,1380714512,'10.98.3.19','',0,'','',1,1,0,2,1,1,0,1380699541,1380699541,0,'',0),(4,'manual',1,0,0,0,1,'test','ca9a9636abfb7e4d731b649f9b1249c6','','test','test','test@isd.dp.ua',0,'','','','','','','','','','','Dnepropetrovsk','UA','en','','99',0,0,0,0,'','',0,'','',1,1,0,2,1,1,0,1380699733,1380699733,0,'',0);
/*!40000 ALTER TABLE `mdl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `param1` longtext COLLATE utf8_unicode_ci,
  `param2` longtext COLLATE utf8_unicode_ci,
  `param3` longtext COLLATE utf8_unicode_ci,
  `param4` longtext COLLATE utf8_unicode_ci,
  `param5` longtext COLLATE utf8_unicode_ci,
  `param6` longtext COLLATE utf8_unicode_ci,
  `param7` longtext COLLATE utf8_unicode_ci,
  `param8` longtext COLLATE utf8_unicode_ci,
  `param9` longtext COLLATE utf8_unicode_ci,
  `param10` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_association`
--

DROP TABLE IF EXISTS `mdl_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_association` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `blogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blogasso_con_ix` (`contextid`),
  KEY `mdl_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_association`
--

LOCK TABLES `mdl_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_config`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `layout` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'list',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workrubrconf_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Configuration table for the Rubric grading strategy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_config`
--

LOCK TABLES `mdl_workshopform_rubric_config` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_accumulative`
--

DROP TABLE IF EXISTS `mdl_workshopform_accumulative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_accumulative` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  `grade` bigint(10) NOT NULL,
  `weight` mediumint(5) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_workaccu_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Accumulative gradin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_accumulative`
--

LOCK TABLES `mdl_workshopform_accumulative` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_label`
--

DROP TABLE IF EXISTS `mdl_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_label` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines labels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_label`
--

LOCK TABLES `mdl_label` WRITE;
/*!40000 ALTER TABLE `mdl_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_enrolments`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `remotecourseid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enroltime` bigint(10) NOT NULL DEFAULT '0',
  `enroltype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetenroenro_use_ix` (`userid`),
  KEY `mdl_mnetenroenro_hos_ix` (`hostid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Caches the information about enrolments of our local users i';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_enrolments`
--

LOCK TABLES `mdl_mnetservice_enrol_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_user`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstuser_ins_ix` (`instance`),
  KEY `mdl_portinstuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data for portfolio instances.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_user`
--

LOCK TABLES `mdl_portfolio_instance_user` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `remark` longtext COLLATE utf8_unicode_ci,
  `remarkformat` tinyint(2) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradguidfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradguidfill_ins_ix` (`instanceid`),
  KEY `mdl_gradguidfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the data of how the guide is filled by a particular r';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_fillings`
--

LOCK TABLES `mdl_gradingform_guide_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_truefalse`
--

DROP TABLE IF EXISTS `mdl_question_truefalse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_truefalse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `trueanswer` bigint(10) NOT NULL DEFAULT '0',
  `falseanswer` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_questrue_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for True-False questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_truefalse`
--

LOCK TABLES `mdl_question_truefalse` WRITE;
/*!40000 ALTER TABLE `mdl_question_truefalse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_truefalse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_authorize_refunds`
--

DROP TABLE IF EXISTS `mdl_enrol_authorize_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_authorize_refunds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transid` bigint(20) DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroauthrefu_tra_ix` (`transid`),
  KEY `mdl_enroauthrefu_ord_ix` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Authorize.net refunds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_authorize_refunds`
--

LOCK TABLES `mdl_enrol_authorize_refunds` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_authorize_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_authorize_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forum` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Keeps track of who is subscribed to what forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_subscriptions`
--

LOCK TABLES `mdl_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_override`
--

DROP TABLE IF EXISTS `mdl_role_allow_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_override` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowoverride` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='this defines what role can override what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_override`
--

LOCK TABLES `mdl_role_allow_override` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_override` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_override` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,4),(10,3,5),(11,3,6);
/*!40000 ALTER TABLE `mdl_role_allow_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `onlinetext` longtext COLLATE utf8_unicode_ci,
  `onlineformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_onlinetext`
--

LOCK TABLES `mdl_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `recordid` bigint(10) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `content1` longtext COLLATE utf8_unicode_ci,
  `content2` longtext COLLATE utf8_unicode_ci,
  `content3` longtext COLLATE utf8_unicode_ci,
  `content4` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_rubrics_old`
--

DROP TABLE IF EXISTS `mdl_workshop_rubrics_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_rubrics_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `rubricno` smallint(3) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubrold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_rubrics table to be dropped later in Moodle ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_rubrics_old`
--

LOCK TABLES `mdl_workshop_rubrics_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_rubrics_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_rubrics_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_context_levels`
--

DROP TABLE IF EXISTS `mdl_role_context_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_context_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  KEY `mdl_rolecontleve_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Lists which roles can be assigned at which context levels. T';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_context_levels`
--

LOCK TABLES `mdl_role_context_levels` WRITE;
/*!40000 ALTER TABLE `mdl_role_context_levels` DISABLE KEYS */;
INSERT INTO `mdl_role_context_levels` VALUES (1,1,10),(4,2,10),(2,1,40),(5,2,40),(3,1,50),(6,3,50),(8,4,50),(10,5,50),(7,3,70),(9,4,70),(11,5,70);
/*!40000 ALTER TABLE `mdl_role_context_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `criteriatype` bigint(20) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT '0',
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_aggr_methd`
--

LOCK TABLES `mdl_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_functions`
--

DROP TABLE IF EXISTS `mdl_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_functions`
--

LOCK TABLES `mdl_external_services_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_services_functions` VALUES (1,1,'moodle_enrol_get_users_courses'),(2,1,'moodle_enrol_get_enrolled_users'),(3,1,'moodle_user_get_users_by_id'),(4,1,'moodle_webservice_get_siteinfo'),(5,1,'moodle_notes_create_notes'),(6,1,'moodle_user_get_course_participants_by_id'),(7,1,'moodle_user_get_users_by_courseid'),(8,1,'moodle_message_send_instantmessages'),(9,1,'core_course_get_contents');
/*!40000 ALTER TABLE `mdl_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign`
--

DROP TABLE IF EXISTS `mdl_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT '0',
  `nosubmissions` tinyint(2) NOT NULL DEFAULT '0',
  `preventlatesubmissions` tinyint(2) NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT '0',
  `sendnotifications` tinyint(2) NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT '0',
  `duedate` bigint(10) NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign`
--

LOCK TABLES `mdl_assign` WRITE;
/*!40000 ALTER TABLE `mdl_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_community`
--

DROP TABLE IF EXISTS `mdl_block_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_community` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `coursename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `coursedescription` longtext COLLATE utf8_unicode_ci,
  `courseurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Community block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_community`
--

LOCK TABLES `mdl_block_community` WRITE;
/*!40000 ALTER TABLE `mdl_block_community` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_daily`
--

DROP TABLE IF EXISTS `mdl_stats_user_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserdail_cou_ix` (`courseid`),
  KEY `mdl_statuserdail_use_ix` (`userid`),
  KEY `mdl_statuserdail_rol_ix` (`roleid`),
  KEY `mdl_statuserdail_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To accumulate daily stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_daily`
--

LOCK TABLES `mdl_stats_user_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services`
--

DROP TABLE IF EXISTS `mdl_external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_exteserv_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='built in and custom external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services`
--

LOCK TABLES `mdl_external_services` WRITE;
/*!40000 ALTER TABLE `mdl_external_services` DISABLE KEYS */;
INSERT INTO `mdl_external_services` VALUES (1,'Moodle mobile web service',0,NULL,0,'moodle',1380698849,NULL,'moodle_mobile_app',1);
/*!40000 ALTER TABLE `mdl_external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti`
--

DROP TABLE IF EXISTS `mdl_lti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `typeid` bigint(10) DEFAULT NULL,
  `toolurl` longtext COLLATE utf8_unicode_ci NOT NULL,
  `securetoolurl` longtext COLLATE utf8_unicode_ci,
  `instructorchoicesendname` tinyint(1) DEFAULT NULL,
  `instructorchoicesendemailaddr` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowroster` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowsetting` tinyint(1) DEFAULT NULL,
  `instructorcustomparameters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructorchoiceacceptgrades` tinyint(1) DEFAULT NULL,
  `grade` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `launchcontainer` tinyint(2) NOT NULL DEFAULT '1',
  `resourcekey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debuglaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showtitlelaunch` tinyint(1) NOT NULL DEFAULT '0',
  `showdescriptionlaunch` tinyint(1) NOT NULL DEFAULT '0',
  `servicesalt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` longtext COLLATE utf8_unicode_ci,
  `secureicon` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_lti_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table contains Basic LTI activities instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti`
--

LOCK TABLES `mdl_lti` WRITE;
/*!40000 ALTER TABLE `mdl_lti` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `entryid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='categories of each glossary entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries_categories`
--

LOCK TABLES `mdl_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_versions`
--

DROP TABLE IF EXISTS `mdl_wiki_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contentformat` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'creole',
  `version` mediumint(5) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_wikivers_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores wiki page history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_versions`
--

LOCK TABLES `mdl_wiki_versions` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_answers`
--

DROP TABLE IF EXISTS `mdl_lesson_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `jumpto` bigint(11) NOT NULL DEFAULT '0',
  `grade` smallint(4) NOT NULL DEFAULT '0',
  `score` bigint(10) NOT NULL DEFAULT '0',
  `flags` smallint(3) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `answer` longtext COLLATE utf8_unicode_ci,
  `answerformat` tinyint(2) NOT NULL DEFAULT '0',
  `response` longtext COLLATE utf8_unicode_ci,
  `responseformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessansw_les_ix` (`lessonid`),
  KEY `mdl_lessansw_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines lesson_answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_answers`
--

LOCK TABLES `mdl_lesson_answers` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `levelid` bigint(10) DEFAULT NULL,
  `remark` longtext COLLATE utf8_unicode_ci,
  `remarkformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradrubrfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradrubrfill_lev_ix` (`levelid`),
  KEY `mdl_gradrubrfill_ins_ix` (`instanceid`),
  KEY `mdl_gradrubrfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the data of how the rubric is filled by a particular ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_fillings`
--

LOCK TABLES `mdl_gradingform_rubric_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workrubr_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Rubric grading stra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric`
--

LOCK TABLES `mdl_workshopform_rubric` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings_groups`
--

DROP TABLE IF EXISTS `mdl_groupings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Link a grouping to a group (note, groups can be in multiple ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings_groups`
--

LOCK TABLES `mdl_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groupings_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_capabilities`
--

DROP TABLE IF EXISTS `mdl_role_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `capability` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=InnoDB AUTO_INCREMENT=988 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='permission has to be signed, overriding a capability for a p';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_capabilities`
--

LOCK TABLES `mdl_role_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_role_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_role_capabilities` VALUES (1,1,1,'moodle/site:readallmessages',1,1380698827,0),(2,1,3,'moodle/site:readallmessages',1,1380698827,0),(3,1,1,'moodle/site:sendmessage',1,1380698827,0),(4,1,7,'moodle/site:sendmessage',1,1380698827,0),(5,1,1,'moodle/site:approvecourse',1,1380698827,0),(6,1,3,'moodle/backup:backupcourse',1,1380698827,0),(7,1,1,'moodle/backup:backupcourse',1,1380698827,0),(8,1,3,'moodle/backup:backupsection',1,1380698828,0),(9,1,1,'moodle/backup:backupsection',1,1380698828,0),(10,1,3,'moodle/backup:backupactivity',1,1380698828,0),(11,1,1,'moodle/backup:backupactivity',1,1380698828,0),(12,1,3,'moodle/backup:backuptargethub',1,1380698828,0),(13,1,1,'moodle/backup:backuptargethub',1,1380698828,0),(14,1,3,'moodle/backup:backuptargetimport',1,1380698828,0),(15,1,1,'moodle/backup:backuptargetimport',1,1380698828,0),(16,1,3,'moodle/backup:downloadfile',1,1380698828,0),(17,1,1,'moodle/backup:downloadfile',1,1380698828,0),(18,1,3,'moodle/backup:configure',1,1380698828,0),(19,1,1,'moodle/backup:configure',1,1380698828,0),(20,1,1,'moodle/backup:userinfo',1,1380698828,0),(21,1,1,'moodle/backup:anonymise',1,1380698828,0),(22,1,3,'moodle/restore:restorecourse',1,1380698828,0),(23,1,1,'moodle/restore:restorecourse',1,1380698828,0),(24,1,3,'moodle/restore:restoresection',1,1380698829,0),(25,1,1,'moodle/restore:restoresection',1,1380698829,0),(26,1,3,'moodle/restore:restoreactivity',1,1380698829,0),(27,1,1,'moodle/restore:restoreactivity',1,1380698829,0),(28,1,3,'moodle/restore:restoretargethub',1,1380698829,0),(29,1,1,'moodle/restore:restoretargethub',1,1380698829,0),(30,1,3,'moodle/restore:restoretargetimport',1,1380698829,0),(31,1,1,'moodle/restore:restoretargetimport',1,1380698829,0),(32,1,3,'moodle/restore:uploadfile',1,1380698829,0),(33,1,1,'moodle/restore:uploadfile',1,1380698829,0),(34,1,3,'moodle/restore:configure',1,1380698829,0),(35,1,1,'moodle/restore:configure',1,1380698829,0),(36,1,2,'moodle/restore:rolldates',1,1380698829,0),(37,1,1,'moodle/restore:rolldates',1,1380698829,0),(38,1,1,'moodle/restore:userinfo',1,1380698829,0),(39,1,1,'moodle/restore:createuser',1,1380698830,0),(40,1,3,'moodle/site:manageblocks',1,1380698830,0),(41,1,1,'moodle/site:manageblocks',1,1380698830,0),(42,1,4,'moodle/site:accessallgroups',1,1380698830,0),(43,1,3,'moodle/site:accessallgroups',1,1380698830,0),(44,1,1,'moodle/site:accessallgroups',1,1380698830,0),(45,1,4,'moodle/site:viewfullnames',1,1380698830,0),(46,1,3,'moodle/site:viewfullnames',1,1380698830,0),(47,1,1,'moodle/site:viewfullnames',1,1380698830,0),(48,1,4,'moodle/site:viewuseridentity',1,1380698830,0),(49,1,3,'moodle/site:viewuseridentity',1,1380698830,0),(50,1,1,'moodle/site:viewuseridentity',1,1380698830,0),(51,1,4,'moodle/site:viewreports',1,1380698830,0),(52,1,3,'moodle/site:viewreports',1,1380698830,0),(53,1,1,'moodle/site:viewreports',1,1380698830,0),(54,1,3,'moodle/site:trustcontent',1,1380698830,0),(55,1,1,'moodle/site:trustcontent',1,1380698830,0),(56,1,1,'moodle/site:uploadusers',1,1380698830,0),(57,1,3,'moodle/filter:manage',1,1380698830,0),(58,1,1,'moodle/filter:manage',1,1380698830,0),(59,1,1,'moodle/user:create',1,1380698830,0),(60,1,1,'moodle/user:delete',1,1380698830,0),(61,1,1,'moodle/user:update',1,1380698830,0),(62,1,6,'moodle/user:viewdetails',1,1380698831,0),(63,1,5,'moodle/user:viewdetails',1,1380698831,0),(64,1,4,'moodle/user:viewdetails',1,1380698831,0),(65,1,3,'moodle/user:viewdetails',1,1380698831,0),(66,1,1,'moodle/user:viewdetails',1,1380698831,0),(67,1,1,'moodle/user:viewalldetails',1,1380698831,0),(68,1,4,'moodle/user:viewhiddendetails',1,1380698831,0),(69,1,3,'moodle/user:viewhiddendetails',1,1380698831,0),(70,1,1,'moodle/user:viewhiddendetails',1,1380698831,0),(71,1,1,'moodle/user:loginas',1,1380698831,0),(72,1,1,'moodle/user:managesyspages',1,1380698831,0),(73,1,7,'moodle/user:manageownblocks',1,1380698831,0),(74,1,7,'moodle/user:manageownfiles',1,1380698831,0),(75,1,1,'moodle/my:configsyspages',1,1380698831,0),(76,1,3,'moodle/role:assign',1,1380698832,0),(77,1,1,'moodle/role:assign',1,1380698832,0),(78,1,4,'moodle/role:review',1,1380698832,0),(79,1,3,'moodle/role:review',1,1380698832,0),(80,1,1,'moodle/role:review',1,1380698832,0),(81,1,1,'moodle/role:override',1,1380698832,0),(82,1,3,'moodle/role:safeoverride',1,1380698832,0),(83,1,1,'moodle/role:manage',1,1380698832,0),(84,1,3,'moodle/role:switchroles',1,1380698832,0),(85,1,1,'moodle/role:switchroles',1,1380698832,0),(86,1,1,'moodle/category:manage',1,1380698832,0),(87,1,2,'moodle/category:viewhiddencategories',1,1380698832,0),(88,1,1,'moodle/category:viewhiddencategories',1,1380698832,0),(89,1,1,'moodle/cohort:manage',1,1380698832,0),(90,1,1,'moodle/cohort:assign',1,1380698832,0),(91,1,3,'moodle/cohort:view',1,1380698833,0),(92,1,1,'moodle/cohort:view',1,1380698833,0),(93,1,2,'moodle/course:create',1,1380698833,0),(94,1,1,'moodle/course:create',1,1380698833,0),(95,1,7,'moodle/course:request',1,1380698833,0),(96,1,1,'moodle/course:delete',1,1380698833,0),(97,1,3,'moodle/course:update',1,1380698833,0),(98,1,1,'moodle/course:update',1,1380698833,0),(99,1,1,'moodle/course:view',1,1380698833,0),(100,1,3,'moodle/course:enrolreview',1,1380698833,0),(101,1,1,'moodle/course:enrolreview',1,1380698833,0),(102,1,3,'moodle/course:enrolconfig',1,1380698833,0),(103,1,1,'moodle/course:enrolconfig',1,1380698833,0),(104,1,4,'moodle/course:bulkmessaging',1,1380698833,0),(105,1,3,'moodle/course:bulkmessaging',1,1380698833,0),(106,1,1,'moodle/course:bulkmessaging',1,1380698833,0),(107,1,4,'moodle/course:viewhiddenuserfields',1,1380698833,0),(108,1,3,'moodle/course:viewhiddenuserfields',1,1380698833,0),(109,1,1,'moodle/course:viewhiddenuserfields',1,1380698833,0),(110,1,2,'moodle/course:viewhiddencourses',1,1380698833,0),(111,1,4,'moodle/course:viewhiddencourses',1,1380698833,0),(112,1,3,'moodle/course:viewhiddencourses',1,1380698833,0),(113,1,1,'moodle/course:viewhiddencourses',1,1380698833,0),(114,1,3,'moodle/course:visibility',1,1380698833,0),(115,1,1,'moodle/course:visibility',1,1380698833,0),(116,1,3,'moodle/course:managefiles',1,1380698833,0),(117,1,1,'moodle/course:managefiles',1,1380698834,0),(118,1,3,'moodle/course:manageactivities',1,1380698834,0),(119,1,1,'moodle/course:manageactivities',1,1380698834,0),(120,1,3,'moodle/course:activityvisibility',1,1380698834,0),(121,1,1,'moodle/course:activityvisibility',1,1380698834,0),(122,1,4,'moodle/course:viewhiddenactivities',1,1380698834,0),(123,1,3,'moodle/course:viewhiddenactivities',1,1380698834,0),(124,1,1,'moodle/course:viewhiddenactivities',1,1380698834,0),(125,1,5,'moodle/course:viewparticipants',1,1380698834,0),(126,1,4,'moodle/course:viewparticipants',1,1380698834,0),(127,1,3,'moodle/course:viewparticipants',1,1380698834,0),(128,1,1,'moodle/course:viewparticipants',1,1380698834,0),(129,1,3,'moodle/course:changefullname',1,1380698834,0),(130,1,1,'moodle/course:changefullname',1,1380698834,0),(131,1,3,'moodle/course:changeshortname',1,1380698834,0),(132,1,1,'moodle/course:changeshortname',1,1380698834,0),(133,1,3,'moodle/course:changeidnumber',1,1380698834,0),(134,1,1,'moodle/course:changeidnumber',1,1380698834,0),(135,1,3,'moodle/course:changecategory',1,1380698834,0),(136,1,1,'moodle/course:changecategory',1,1380698834,0),(137,1,3,'moodle/course:changesummary',1,1380698834,0),(138,1,1,'moodle/course:changesummary',1,1380698834,0),(139,1,1,'moodle/site:viewparticipants',1,1380698834,0),(140,1,5,'moodle/course:viewscales',1,1380698834,0),(141,1,4,'moodle/course:viewscales',1,1380698834,0),(142,1,3,'moodle/course:viewscales',1,1380698834,0),(143,1,1,'moodle/course:viewscales',1,1380698834,0),(144,1,3,'moodle/course:managescales',1,1380698835,0),(145,1,1,'moodle/course:managescales',1,1380698835,0),(146,1,3,'moodle/course:managegroups',1,1380698835,0),(147,1,1,'moodle/course:managegroups',1,1380698835,0),(148,1,3,'moodle/course:reset',1,1380698835,0),(149,1,1,'moodle/course:reset',1,1380698835,0),(150,1,6,'moodle/blog:view',1,1380698835,0),(151,1,7,'moodle/blog:view',1,1380698835,0),(152,1,5,'moodle/blog:view',1,1380698835,0),(153,1,4,'moodle/blog:view',1,1380698835,0),(154,1,3,'moodle/blog:view',1,1380698835,0),(155,1,1,'moodle/blog:view',1,1380698835,0),(156,1,6,'moodle/blog:search',1,1380698835,0),(157,1,7,'moodle/blog:search',1,1380698835,0),(158,1,5,'moodle/blog:search',1,1380698835,0),(159,1,4,'moodle/blog:search',1,1380698835,0),(160,1,3,'moodle/blog:search',1,1380698835,0),(161,1,1,'moodle/blog:search',1,1380698835,0),(162,1,1,'moodle/blog:viewdrafts',1,1380698835,0),(163,1,7,'moodle/blog:create',1,1380698835,0),(164,1,1,'moodle/blog:create',1,1380698835,0),(165,1,4,'moodle/blog:manageentries',1,1380698835,0),(166,1,3,'moodle/blog:manageentries',1,1380698835,0),(167,1,1,'moodle/blog:manageentries',1,1380698835,0),(168,1,5,'moodle/blog:manageexternal',1,1380698836,0),(169,1,7,'moodle/blog:manageexternal',1,1380698836,0),(170,1,4,'moodle/blog:manageexternal',1,1380698836,0),(171,1,3,'moodle/blog:manageexternal',1,1380698836,0),(172,1,1,'moodle/blog:manageexternal',1,1380698836,0),(173,1,5,'moodle/blog:associatecourse',1,1380698836,0),(174,1,7,'moodle/blog:associatecourse',1,1380698836,0),(175,1,4,'moodle/blog:associatecourse',1,1380698836,0),(176,1,3,'moodle/blog:associatecourse',1,1380698836,0),(177,1,1,'moodle/blog:associatecourse',1,1380698836,0),(178,1,5,'moodle/blog:associatemodule',1,1380698836,0),(179,1,7,'moodle/blog:associatemodule',1,1380698836,0),(180,1,4,'moodle/blog:associatemodule',1,1380698836,0),(181,1,3,'moodle/blog:associatemodule',1,1380698836,0),(182,1,1,'moodle/blog:associatemodule',1,1380698836,0),(183,1,7,'moodle/calendar:manageownentries',1,1380698836,0),(184,1,1,'moodle/calendar:manageownentries',1,1380698836,0),(185,1,4,'moodle/calendar:managegroupentries',1,1380698837,0),(186,1,3,'moodle/calendar:managegroupentries',1,1380698837,0),(187,1,1,'moodle/calendar:managegroupentries',1,1380698837,0),(188,1,4,'moodle/calendar:manageentries',1,1380698837,0),(189,1,3,'moodle/calendar:manageentries',1,1380698837,0),(190,1,1,'moodle/calendar:manageentries',1,1380698837,0),(191,1,1,'moodle/user:editprofile',1,1380698837,0),(192,1,6,'moodle/user:editownprofile',-1000,1380698837,0),(193,1,7,'moodle/user:editownprofile',1,1380698837,0),(194,1,1,'moodle/user:editownprofile',1,1380698837,0),(195,1,6,'moodle/user:changeownpassword',-1000,1380698837,0),(196,1,7,'moodle/user:changeownpassword',1,1380698837,0),(197,1,1,'moodle/user:changeownpassword',1,1380698837,0),(198,1,5,'moodle/user:readuserposts',1,1380698837,0),(199,1,4,'moodle/user:readuserposts',1,1380698837,0),(200,1,3,'moodle/user:readuserposts',1,1380698837,0),(201,1,1,'moodle/user:readuserposts',1,1380698838,0),(202,1,5,'moodle/user:readuserblogs',1,1380698838,0),(203,1,4,'moodle/user:readuserblogs',1,1380698838,0),(204,1,3,'moodle/user:readuserblogs',1,1380698838,0),(205,1,1,'moodle/user:readuserblogs',1,1380698838,0),(206,1,1,'moodle/user:editmessageprofile',1,1380698838,0),(207,1,6,'moodle/user:editownmessageprofile',-1000,1380698838,0),(208,1,7,'moodle/user:editownmessageprofile',1,1380698838,0),(209,1,1,'moodle/user:editownmessageprofile',1,1380698838,0),(210,1,3,'moodle/question:managecategory',1,1380698838,0),(211,1,1,'moodle/question:managecategory',1,1380698838,0),(212,1,3,'moodle/question:add',1,1380698838,0),(213,1,1,'moodle/question:add',1,1380698838,0),(214,1,3,'moodle/question:editmine',1,1380698838,0),(215,1,1,'moodle/question:editmine',1,1380698838,0),(216,1,3,'moodle/question:editall',1,1380698838,0),(217,1,1,'moodle/question:editall',1,1380698838,0),(218,1,3,'moodle/question:viewmine',1,1380698839,0),(219,1,1,'moodle/question:viewmine',1,1380698839,0),(220,1,3,'moodle/question:viewall',1,1380698839,0),(221,1,1,'moodle/question:viewall',1,1380698839,0),(222,1,3,'moodle/question:usemine',1,1380698839,0),(223,1,1,'moodle/question:usemine',1,1380698839,0),(224,1,3,'moodle/question:useall',1,1380698839,0),(225,1,1,'moodle/question:useall',1,1380698839,0),(226,1,3,'moodle/question:movemine',1,1380698839,0),(227,1,1,'moodle/question:movemine',1,1380698839,0),(228,1,3,'moodle/question:moveall',1,1380698839,0),(229,1,1,'moodle/question:moveall',1,1380698839,0),(230,1,1,'moodle/question:config',1,1380698839,0),(231,1,5,'moodle/question:flag',1,1380698839,0),(232,1,4,'moodle/question:flag',1,1380698839,0),(233,1,3,'moodle/question:flag',1,1380698839,0),(234,1,1,'moodle/question:flag',1,1380698839,0),(235,1,4,'moodle/site:doclinks',1,1380698840,0),(236,1,3,'moodle/site:doclinks',1,1380698840,0),(237,1,1,'moodle/site:doclinks',1,1380698840,0),(238,1,3,'moodle/course:sectionvisibility',1,1380698840,0),(239,1,1,'moodle/course:sectionvisibility',1,1380698840,0),(240,1,3,'moodle/course:useremail',1,1380698840,0),(241,1,1,'moodle/course:useremail',1,1380698840,0),(242,1,3,'moodle/course:viewhiddensections',1,1380698840,0),(243,1,1,'moodle/course:viewhiddensections',1,1380698840,0),(244,1,3,'moodle/course:setcurrentsection',1,1380698840,0),(245,1,1,'moodle/course:setcurrentsection',1,1380698840,0),(246,1,4,'moodle/grade:viewall',1,1380698840,0),(247,1,3,'moodle/grade:viewall',1,1380698840,0),(248,1,1,'moodle/grade:viewall',1,1380698840,0),(249,1,5,'moodle/grade:view',1,1380698840,0),(250,1,4,'moodle/grade:viewhidden',1,1380698841,0),(251,1,3,'moodle/grade:viewhidden',1,1380698841,0),(252,1,1,'moodle/grade:viewhidden',1,1380698841,0),(253,1,3,'moodle/grade:import',1,1380698841,0),(254,1,1,'moodle/grade:import',1,1380698841,0),(255,1,4,'moodle/grade:export',1,1380698841,0),(256,1,3,'moodle/grade:export',1,1380698841,0),(257,1,1,'moodle/grade:export',1,1380698841,0),(258,1,3,'moodle/grade:manage',1,1380698841,0),(259,1,1,'moodle/grade:manage',1,1380698841,0),(260,1,3,'moodle/grade:edit',1,1380698841,0),(261,1,1,'moodle/grade:edit',1,1380698841,0),(262,1,3,'moodle/grade:managegradingforms',1,1380698841,0),(263,1,1,'moodle/grade:managegradingforms',1,1380698841,0),(264,1,1,'moodle/grade:sharegradingforms',1,1380698841,0),(265,1,1,'moodle/grade:managesharedforms',1,1380698841,0),(266,1,3,'moodle/grade:manageoutcomes',1,1380698841,0),(267,1,1,'moodle/grade:manageoutcomes',1,1380698841,0),(268,1,3,'moodle/grade:manageletters',1,1380698841,0),(269,1,1,'moodle/grade:manageletters',1,1380698841,0),(270,1,3,'moodle/grade:hide',1,1380698841,0),(271,1,1,'moodle/grade:hide',1,1380698841,0),(272,1,3,'moodle/grade:lock',1,1380698841,0),(273,1,1,'moodle/grade:lock',1,1380698841,0),(274,1,3,'moodle/grade:unlock',1,1380698841,0),(275,1,1,'moodle/grade:unlock',1,1380698842,0),(276,1,7,'moodle/my:manageblocks',1,1380698842,0),(277,1,4,'moodle/notes:view',1,1380698842,0),(278,1,3,'moodle/notes:view',1,1380698842,0),(279,1,1,'moodle/notes:view',1,1380698842,0),(280,1,4,'moodle/notes:manage',1,1380698842,0),(281,1,3,'moodle/notes:manage',1,1380698842,0),(282,1,1,'moodle/notes:manage',1,1380698842,0),(283,1,4,'moodle/tag:manage',1,1380698842,0),(284,1,3,'moodle/tag:manage',1,1380698842,0),(285,1,1,'moodle/tag:manage',1,1380698842,0),(286,1,1,'moodle/tag:create',1,1380698842,0),(287,1,7,'moodle/tag:create',1,1380698842,0),(288,1,1,'moodle/tag:edit',1,1380698843,0),(289,1,7,'moodle/tag:edit',1,1380698843,0),(290,1,4,'moodle/tag:editblocks',1,1380698843,0),(291,1,3,'moodle/tag:editblocks',1,1380698843,0),(292,1,1,'moodle/tag:editblocks',1,1380698843,0),(293,1,6,'moodle/block:view',1,1380698843,0),(294,1,7,'moodle/block:view',1,1380698843,0),(295,1,5,'moodle/block:view',1,1380698843,0),(296,1,4,'moodle/block:view',1,1380698843,0),(297,1,3,'moodle/block:view',1,1380698843,0),(298,1,3,'moodle/block:edit',1,1380698843,0),(299,1,1,'moodle/block:edit',1,1380698843,0),(300,1,7,'moodle/portfolio:export',1,1380698843,0),(301,1,5,'moodle/portfolio:export',1,1380698843,0),(302,1,4,'moodle/portfolio:export',1,1380698843,0),(303,1,3,'moodle/portfolio:export',1,1380698843,0),(304,1,8,'moodle/comment:view',1,1380698843,0),(305,1,6,'moodle/comment:view',1,1380698843,0),(306,1,7,'moodle/comment:view',1,1380698843,0),(307,1,5,'moodle/comment:view',1,1380698843,0),(308,1,4,'moodle/comment:view',1,1380698843,0),(309,1,3,'moodle/comment:view',1,1380698844,0),(310,1,1,'moodle/comment:view',1,1380698844,0),(311,1,7,'moodle/comment:post',1,1380698844,0),(312,1,5,'moodle/comment:post',1,1380698844,0),(313,1,4,'moodle/comment:post',1,1380698844,0),(314,1,3,'moodle/comment:post',1,1380698844,0),(315,1,1,'moodle/comment:post',1,1380698844,0),(316,1,3,'moodle/comment:delete',1,1380698844,0),(317,1,1,'moodle/comment:delete',1,1380698844,0),(318,1,1,'moodle/webservice:createtoken',1,1380698844,0),(319,1,7,'moodle/webservice:createmobiletoken',1,1380698844,0),(320,1,7,'moodle/rating:view',1,1380698844,0),(321,1,5,'moodle/rating:view',1,1380698844,0),(322,1,4,'moodle/rating:view',1,1380698844,0),(323,1,3,'moodle/rating:view',1,1380698844,0),(324,1,1,'moodle/rating:view',1,1380698844,0),(325,1,7,'moodle/rating:viewany',1,1380698845,0),(326,1,5,'moodle/rating:viewany',1,1380698845,0),(327,1,4,'moodle/rating:viewany',1,1380698845,0),(328,1,3,'moodle/rating:viewany',1,1380698845,0),(329,1,1,'moodle/rating:viewany',1,1380698845,0),(330,1,7,'moodle/rating:viewall',1,1380698845,0),(331,1,5,'moodle/rating:viewall',1,1380698845,0),(332,1,4,'moodle/rating:viewall',1,1380698845,0),(333,1,3,'moodle/rating:viewall',1,1380698845,0),(334,1,1,'moodle/rating:viewall',1,1380698845,0),(335,1,7,'moodle/rating:rate',1,1380698845,0),(336,1,5,'moodle/rating:rate',1,1380698845,0),(337,1,4,'moodle/rating:rate',1,1380698845,0),(338,1,3,'moodle/rating:rate',1,1380698845,0),(339,1,1,'moodle/rating:rate',1,1380698845,0),(340,1,1,'moodle/course:publish',1,1380698845,0),(341,1,4,'moodle/course:markcomplete',1,1380698845,0),(342,1,3,'moodle/course:markcomplete',1,1380698845,0),(343,1,1,'moodle/course:markcomplete',1,1380698845,0),(344,1,1,'moodle/community:add',1,1380698846,0),(345,1,4,'moodle/community:add',1,1380698846,0),(346,1,3,'moodle/community:add',1,1380698846,0),(347,1,1,'moodle/community:download',1,1380698846,0),(348,1,3,'moodle/community:download',1,1380698846,0),(349,1,6,'mod/assign:view',1,1380698892,0),(350,1,5,'mod/assign:view',1,1380698892,0),(351,1,4,'mod/assign:view',1,1380698892,0),(352,1,3,'mod/assign:view',1,1380698892,0),(353,1,1,'mod/assign:view',1,1380698892,0),(354,1,5,'mod/assign:submit',1,1380698893,0),(355,1,4,'mod/assign:grade',1,1380698893,0),(356,1,3,'mod/assign:grade',1,1380698893,0),(357,1,1,'mod/assign:grade',1,1380698893,0),(358,1,4,'mod/assign:exportownsubmission',1,1380698893,0),(359,1,3,'mod/assign:exportownsubmission',1,1380698893,0),(360,1,1,'mod/assign:exportownsubmission',1,1380698893,0),(361,1,5,'mod/assign:exportownsubmission',1,1380698893,0),(362,1,3,'mod/assign:addinstance',1,1380698893,0),(363,1,1,'mod/assign:addinstance',1,1380698893,0),(364,1,6,'mod/assignment:view',1,1380698895,0),(365,1,5,'mod/assignment:view',1,1380698895,0),(366,1,4,'mod/assignment:view',1,1380698895,0),(367,1,3,'mod/assignment:view',1,1380698895,0),(368,1,1,'mod/assignment:view',1,1380698895,0),(369,1,3,'mod/assignment:addinstance',1,1380698895,0),(370,1,1,'mod/assignment:addinstance',1,1380698895,0),(371,1,5,'mod/assignment:submit',1,1380698895,0),(372,1,4,'mod/assignment:grade',1,1380698896,0),(373,1,3,'mod/assignment:grade',1,1380698896,0),(374,1,1,'mod/assignment:grade',1,1380698896,0),(375,1,4,'mod/assignment:exportownsubmission',1,1380698896,0),(376,1,3,'mod/assignment:exportownsubmission',1,1380698896,0),(377,1,1,'mod/assignment:exportownsubmission',1,1380698896,0),(378,1,5,'mod/assignment:exportownsubmission',1,1380698896,0),(379,1,3,'mod/book:addinstance',1,1380698897,0),(380,1,1,'mod/book:addinstance',1,1380698897,0),(381,1,6,'mod/book:read',1,1380698897,0),(382,1,8,'mod/book:read',1,1380698897,0),(383,1,5,'mod/book:read',1,1380698898,0),(384,1,4,'mod/book:read',1,1380698898,0),(385,1,3,'mod/book:read',1,1380698898,0),(386,1,1,'mod/book:read',1,1380698898,0),(387,1,4,'mod/book:viewhiddenchapters',1,1380698898,0),(388,1,3,'mod/book:viewhiddenchapters',1,1380698898,0),(389,1,1,'mod/book:viewhiddenchapters',1,1380698898,0),(390,1,3,'mod/book:edit',1,1380698898,0),(391,1,1,'mod/book:edit',1,1380698898,0),(392,1,3,'mod/chat:addinstance',1,1380698901,0),(393,1,1,'mod/chat:addinstance',1,1380698901,0),(394,1,5,'mod/chat:chat',1,1380698901,0),(395,1,4,'mod/chat:chat',1,1380698901,0),(396,1,3,'mod/chat:chat',1,1380698901,0),(397,1,1,'mod/chat:chat',1,1380698901,0),(398,1,5,'mod/chat:readlog',1,1380698901,0),(399,1,4,'mod/chat:readlog',1,1380698901,0),(400,1,3,'mod/chat:readlog',1,1380698901,0),(401,1,1,'mod/chat:readlog',1,1380698902,0),(402,1,4,'mod/chat:deletelog',1,1380698902,0),(403,1,3,'mod/chat:deletelog',1,1380698902,0),(404,1,1,'mod/chat:deletelog',1,1380698902,0),(405,1,4,'mod/chat:exportparticipatedsession',1,1380698902,0),(406,1,3,'mod/chat:exportparticipatedsession',1,1380698902,0),(407,1,1,'mod/chat:exportparticipatedsession',1,1380698902,0),(408,1,4,'mod/chat:exportsession',1,1380698902,0),(409,1,3,'mod/chat:exportsession',1,1380698902,0),(410,1,1,'mod/chat:exportsession',1,1380698902,0),(411,1,3,'mod/choice:addinstance',1,1380698904,0),(412,1,1,'mod/choice:addinstance',1,1380698904,0),(413,1,5,'mod/choice:choose',1,1380698904,0),(414,1,4,'mod/choice:choose',1,1380698904,0),(415,1,3,'mod/choice:choose',1,1380698904,0),(416,1,4,'mod/choice:readresponses',1,1380698904,0),(417,1,3,'mod/choice:readresponses',1,1380698904,0),(418,1,1,'mod/choice:readresponses',1,1380698904,0),(419,1,4,'mod/choice:deleteresponses',1,1380698904,0),(420,1,3,'mod/choice:deleteresponses',1,1380698904,0),(421,1,1,'mod/choice:deleteresponses',1,1380698904,0),(422,1,4,'mod/choice:downloadresponses',1,1380698905,0),(423,1,3,'mod/choice:downloadresponses',1,1380698905,0),(424,1,1,'mod/choice:downloadresponses',1,1380698905,0),(425,1,3,'mod/data:addinstance',1,1380698906,0),(426,1,1,'mod/data:addinstance',1,1380698906,0),(427,1,8,'mod/data:viewentry',1,1380698906,0),(428,1,6,'mod/data:viewentry',1,1380698906,0),(429,1,5,'mod/data:viewentry',1,1380698906,0),(430,1,4,'mod/data:viewentry',1,1380698906,0),(431,1,3,'mod/data:viewentry',1,1380698906,0),(432,1,1,'mod/data:viewentry',1,1380698906,0),(433,1,5,'mod/data:writeentry',1,1380698906,0),(434,1,4,'mod/data:writeentry',1,1380698906,0),(435,1,3,'mod/data:writeentry',1,1380698906,0),(436,1,1,'mod/data:writeentry',1,1380698907,0),(437,1,5,'mod/data:comment',1,1380698907,0),(438,1,4,'mod/data:comment',1,1380698907,0),(439,1,3,'mod/data:comment',1,1380698907,0),(440,1,1,'mod/data:comment',1,1380698907,0),(441,1,4,'mod/data:rate',1,1380698907,0),(442,1,3,'mod/data:rate',1,1380698907,0),(443,1,1,'mod/data:rate',1,1380698907,0),(444,1,4,'mod/data:viewrating',1,1380698907,0),(445,1,3,'mod/data:viewrating',1,1380698908,0),(446,1,1,'mod/data:viewrating',1,1380698908,0),(447,1,4,'mod/data:viewanyrating',1,1380698908,0),(448,1,3,'mod/data:viewanyrating',1,1380698908,0),(449,1,1,'mod/data:viewanyrating',1,1380698908,0),(450,1,4,'mod/data:viewallratings',1,1380698908,0),(451,1,3,'mod/data:viewallratings',1,1380698908,0),(452,1,1,'mod/data:viewallratings',1,1380698908,0),(453,1,4,'mod/data:approve',1,1380698908,0),(454,1,3,'mod/data:approve',1,1380698908,0),(455,1,1,'mod/data:approve',1,1380698908,0),(456,1,4,'mod/data:manageentries',1,1380698908,0),(457,1,3,'mod/data:manageentries',1,1380698908,0),(458,1,1,'mod/data:manageentries',1,1380698908,0),(459,1,4,'mod/data:managecomments',1,1380698909,0),(460,1,3,'mod/data:managecomments',1,1380698909,0),(461,1,1,'mod/data:managecomments',1,1380698909,0),(462,1,3,'mod/data:managetemplates',1,1380698909,0),(463,1,1,'mod/data:managetemplates',1,1380698909,0),(464,1,4,'mod/data:viewalluserpresets',1,1380698909,0),(465,1,3,'mod/data:viewalluserpresets',1,1380698909,0),(466,1,1,'mod/data:viewalluserpresets',1,1380698909,0),(467,1,1,'mod/data:manageuserpresets',1,1380698909,0),(468,1,1,'mod/data:exportentry',1,1380698909,0),(469,1,4,'mod/data:exportentry',1,1380698909,0),(470,1,3,'mod/data:exportentry',1,1380698909,0),(471,1,1,'mod/data:exportownentry',1,1380698909,0),(472,1,4,'mod/data:exportownentry',1,1380698909,0),(473,1,3,'mod/data:exportownentry',1,1380698910,0),(474,1,5,'mod/data:exportownentry',1,1380698910,0),(475,1,1,'mod/data:exportallentries',1,1380698910,0),(476,1,4,'mod/data:exportallentries',1,1380698910,0),(477,1,3,'mod/data:exportallentries',1,1380698910,0),(478,1,3,'mod/feedback:addinstance',1,1380698914,0),(479,1,1,'mod/feedback:addinstance',1,1380698914,0),(480,1,6,'mod/feedback:view',1,1380698914,0),(481,1,5,'mod/feedback:view',1,1380698914,0),(482,1,4,'mod/feedback:view',1,1380698914,0),(483,1,3,'mod/feedback:view',1,1380698914,0),(484,1,1,'mod/feedback:view',1,1380698914,0),(485,1,5,'mod/feedback:complete',1,1380698914,0),(486,1,5,'mod/feedback:viewanalysepage',1,1380698914,0),(487,1,3,'mod/feedback:viewanalysepage',1,1380698914,0),(488,1,1,'mod/feedback:viewanalysepage',1,1380698914,0),(489,1,3,'mod/feedback:deletesubmissions',1,1380698914,0),(490,1,1,'mod/feedback:deletesubmissions',1,1380698914,0),(491,1,1,'mod/feedback:mapcourse',1,1380698914,0),(492,1,3,'mod/feedback:edititems',1,1380698914,0),(493,1,1,'mod/feedback:edititems',1,1380698914,0),(494,1,3,'mod/feedback:createprivatetemplate',1,1380698915,0),(495,1,1,'mod/feedback:createprivatetemplate',1,1380698915,0),(496,1,3,'mod/feedback:createpublictemplate',1,1380698915,0),(497,1,1,'mod/feedback:createpublictemplate',1,1380698915,0),(498,1,3,'mod/feedback:deletetemplate',1,1380698915,0),(499,1,1,'mod/feedback:deletetemplate',1,1380698915,0),(500,1,4,'mod/feedback:viewreports',1,1380698915,0),(501,1,3,'mod/feedback:viewreports',1,1380698915,0),(502,1,1,'mod/feedback:viewreports',1,1380698915,0),(503,1,4,'mod/feedback:receivemail',1,1380698915,0),(504,1,3,'mod/feedback:receivemail',1,1380698915,0),(505,1,3,'mod/folder:addinstance',1,1380698916,0),(506,1,1,'mod/folder:addinstance',1,1380698916,0),(507,1,6,'mod/folder:view',1,1380698916,0),(508,1,7,'mod/folder:view',1,1380698916,0),(509,1,3,'mod/folder:managefiles',1,1380698917,0),(510,1,3,'mod/forum:addinstance',1,1380698921,0),(511,1,1,'mod/forum:addinstance',1,1380698921,0),(512,1,8,'mod/forum:viewdiscussion',1,1380698921,0),(513,1,6,'mod/forum:viewdiscussion',1,1380698921,0),(514,1,5,'mod/forum:viewdiscussion',1,1380698921,0),(515,1,4,'mod/forum:viewdiscussion',1,1380698921,0),(516,1,3,'mod/forum:viewdiscussion',1,1380698922,0),(517,1,1,'mod/forum:viewdiscussion',1,1380698922,0),(518,1,4,'mod/forum:viewhiddentimedposts',1,1380698922,0),(519,1,3,'mod/forum:viewhiddentimedposts',1,1380698922,0),(520,1,1,'mod/forum:viewhiddentimedposts',1,1380698922,0),(521,1,5,'mod/forum:startdiscussion',1,1380698922,0),(522,1,4,'mod/forum:startdiscussion',1,1380698922,0),(523,1,3,'mod/forum:startdiscussion',1,1380698922,0),(524,1,1,'mod/forum:startdiscussion',1,1380698922,0),(525,1,5,'mod/forum:replypost',1,1380698922,0),(526,1,4,'mod/forum:replypost',1,1380698922,0),(527,1,3,'mod/forum:replypost',1,1380698922,0),(528,1,1,'mod/forum:replypost',1,1380698922,0),(529,1,4,'mod/forum:addnews',1,1380698922,0),(530,1,3,'mod/forum:addnews',1,1380698922,0),(531,1,1,'mod/forum:addnews',1,1380698922,0),(532,1,4,'mod/forum:replynews',1,1380698922,0),(533,1,3,'mod/forum:replynews',1,1380698922,0),(534,1,1,'mod/forum:replynews',1,1380698922,0),(535,1,5,'mod/forum:viewrating',1,1380698922,0),(536,1,4,'mod/forum:viewrating',1,1380698922,0),(537,1,3,'mod/forum:viewrating',1,1380698923,0),(538,1,1,'mod/forum:viewrating',1,1380698923,0),(539,1,4,'mod/forum:viewanyrating',1,1380698923,0),(540,1,3,'mod/forum:viewanyrating',1,1380698923,0),(541,1,1,'mod/forum:viewanyrating',1,1380698923,0),(542,1,4,'mod/forum:viewallratings',1,1380698923,0),(543,1,3,'mod/forum:viewallratings',1,1380698923,0),(544,1,1,'mod/forum:viewallratings',1,1380698923,0),(545,1,4,'mod/forum:rate',1,1380698923,0),(546,1,3,'mod/forum:rate',1,1380698923,0),(547,1,1,'mod/forum:rate',1,1380698923,0),(548,1,5,'mod/forum:createattachment',1,1380698923,0),(549,1,4,'mod/forum:createattachment',1,1380698923,0),(550,1,3,'mod/forum:createattachment',1,1380698923,0),(551,1,1,'mod/forum:createattachment',1,1380698923,0),(552,1,5,'mod/forum:deleteownpost',1,1380698923,0),(553,1,4,'mod/forum:deleteownpost',1,1380698923,0),(554,1,3,'mod/forum:deleteownpost',1,1380698923,0),(555,1,1,'mod/forum:deleteownpost',1,1380698923,0),(556,1,4,'mod/forum:deleteanypost',1,1380698923,0),(557,1,3,'mod/forum:deleteanypost',1,1380698924,0),(558,1,1,'mod/forum:deleteanypost',1,1380698924,0),(559,1,4,'mod/forum:splitdiscussions',1,1380698924,0),(560,1,3,'mod/forum:splitdiscussions',1,1380698924,0),(561,1,1,'mod/forum:splitdiscussions',1,1380698924,0),(562,1,4,'mod/forum:movediscussions',1,1380698924,0),(563,1,3,'mod/forum:movediscussions',1,1380698924,0),(564,1,1,'mod/forum:movediscussions',1,1380698924,0),(565,1,4,'mod/forum:editanypost',1,1380698924,0),(566,1,3,'mod/forum:editanypost',1,1380698924,0),(567,1,1,'mod/forum:editanypost',1,1380698924,0),(568,1,4,'mod/forum:viewqandawithoutposting',1,1380698924,0),(569,1,3,'mod/forum:viewqandawithoutposting',1,1380698924,0),(570,1,1,'mod/forum:viewqandawithoutposting',1,1380698924,0),(571,1,4,'mod/forum:viewsubscribers',1,1380698924,0),(572,1,3,'mod/forum:viewsubscribers',1,1380698924,0),(573,1,1,'mod/forum:viewsubscribers',1,1380698924,0),(574,1,4,'mod/forum:managesubscriptions',1,1380698924,0),(575,1,3,'mod/forum:managesubscriptions',1,1380698924,0),(576,1,1,'mod/forum:managesubscriptions',1,1380698924,0),(577,1,4,'mod/forum:postwithoutthrottling',1,1380698924,0),(578,1,3,'mod/forum:postwithoutthrottling',1,1380698924,0),(579,1,1,'mod/forum:postwithoutthrottling',1,1380698924,0),(580,1,4,'mod/forum:exportdiscussion',1,1380698924,0),(581,1,3,'mod/forum:exportdiscussion',1,1380698924,0),(582,1,1,'mod/forum:exportdiscussion',1,1380698924,0),(583,1,4,'mod/forum:exportpost',1,1380698924,0),(584,1,3,'mod/forum:exportpost',1,1380698924,0),(585,1,1,'mod/forum:exportpost',1,1380698924,0),(586,1,4,'mod/forum:exportownpost',1,1380698924,0),(587,1,3,'mod/forum:exportownpost',1,1380698924,0),(588,1,1,'mod/forum:exportownpost',1,1380698925,0),(589,1,5,'mod/forum:exportownpost',1,1380698925,0),(590,1,4,'mod/forum:addquestion',1,1380698925,0),(591,1,3,'mod/forum:addquestion',1,1380698925,0),(592,1,1,'mod/forum:addquestion',1,1380698925,0),(593,1,3,'mod/glossary:addinstance',1,1380698927,0),(594,1,1,'mod/glossary:addinstance',1,1380698927,0),(595,1,8,'mod/glossary:view',1,1380698927,0),(596,1,6,'mod/glossary:view',1,1380698927,0),(597,1,5,'mod/glossary:view',1,1380698927,0),(598,1,4,'mod/glossary:view',1,1380698928,0),(599,1,3,'mod/glossary:view',1,1380698928,0),(600,1,1,'mod/glossary:view',1,1380698928,0),(601,1,5,'mod/glossary:write',1,1380698928,0),(602,1,4,'mod/glossary:write',1,1380698928,0),(603,1,3,'mod/glossary:write',1,1380698928,0),(604,1,1,'mod/glossary:write',1,1380698928,0),(605,1,4,'mod/glossary:manageentries',1,1380698928,0),(606,1,3,'mod/glossary:manageentries',1,1380698928,0),(607,1,1,'mod/glossary:manageentries',1,1380698928,0),(608,1,4,'mod/glossary:managecategories',1,1380698928,0),(609,1,3,'mod/glossary:managecategories',1,1380698928,0),(610,1,1,'mod/glossary:managecategories',1,1380698928,0),(611,1,5,'mod/glossary:comment',1,1380698928,0),(612,1,4,'mod/glossary:comment',1,1380698928,0),(613,1,3,'mod/glossary:comment',1,1380698929,0),(614,1,1,'mod/glossary:comment',1,1380698929,0),(615,1,4,'mod/glossary:managecomments',1,1380698929,0),(616,1,3,'mod/glossary:managecomments',1,1380698929,0),(617,1,1,'mod/glossary:managecomments',1,1380698929,0),(618,1,4,'mod/glossary:import',1,1380698929,0),(619,1,3,'mod/glossary:import',1,1380698929,0),(620,1,1,'mod/glossary:import',1,1380698929,0),(621,1,4,'mod/glossary:export',1,1380698929,0),(622,1,3,'mod/glossary:export',1,1380698929,0),(623,1,1,'mod/glossary:export',1,1380698929,0),(624,1,4,'mod/glossary:approve',1,1380698930,0),(625,1,3,'mod/glossary:approve',1,1380698930,0),(626,1,1,'mod/glossary:approve',1,1380698930,0),(627,1,4,'mod/glossary:rate',1,1380698930,0),(628,1,3,'mod/glossary:rate',1,1380698930,0),(629,1,1,'mod/glossary:rate',1,1380698930,0),(630,1,4,'mod/glossary:viewrating',1,1380698930,0),(631,1,3,'mod/glossary:viewrating',1,1380698930,0),(632,1,1,'mod/glossary:viewrating',1,1380698930,0),(633,1,4,'mod/glossary:viewanyrating',1,1380698930,0),(634,1,3,'mod/glossary:viewanyrating',1,1380698930,0),(635,1,1,'mod/glossary:viewanyrating',1,1380698930,0),(636,1,4,'mod/glossary:viewallratings',1,1380698930,0),(637,1,3,'mod/glossary:viewallratings',1,1380698930,0),(638,1,1,'mod/glossary:viewallratings',1,1380698930,0),(639,1,4,'mod/glossary:exportentry',1,1380698930,0),(640,1,3,'mod/glossary:exportentry',1,1380698930,0),(641,1,1,'mod/glossary:exportentry',1,1380698930,0),(642,1,4,'mod/glossary:exportownentry',1,1380698930,0),(643,1,3,'mod/glossary:exportownentry',1,1380698931,0),(644,1,1,'mod/glossary:exportownentry',1,1380698931,0),(645,1,5,'mod/glossary:exportownentry',1,1380698931,0),(646,1,6,'mod/imscp:view',1,1380698932,0),(647,1,7,'mod/imscp:view',1,1380698932,0),(648,1,3,'mod/imscp:addinstance',1,1380698932,0),(649,1,1,'mod/imscp:addinstance',1,1380698932,0),(650,1,3,'mod/label:addinstance',1,1380698933,0),(651,1,1,'mod/label:addinstance',1,1380698933,0),(652,1,3,'mod/lesson:addinstance',1,1380698937,0),(653,1,1,'mod/lesson:addinstance',1,1380698937,0),(654,1,3,'mod/lesson:edit',1,1380698937,0),(655,1,1,'mod/lesson:edit',1,1380698937,0),(656,1,4,'mod/lesson:manage',1,1380698937,0),(657,1,3,'mod/lesson:manage',1,1380698937,0),(658,1,1,'mod/lesson:manage',1,1380698937,0),(659,1,6,'mod/lti:view',1,1380698939,0),(660,1,5,'mod/lti:view',1,1380698939,0),(661,1,4,'mod/lti:view',1,1380698939,0),(662,1,3,'mod/lti:view',1,1380698939,0),(663,1,1,'mod/lti:view',1,1380698940,0),(664,1,3,'mod/lti:addinstance',1,1380698940,0),(665,1,1,'mod/lti:addinstance',1,1380698940,0),(666,1,4,'mod/lti:grade',1,1380698940,0),(667,1,3,'mod/lti:grade',1,1380698940,0),(668,1,1,'mod/lti:grade',1,1380698940,0),(669,1,4,'mod/lti:manage',1,1380698940,0),(670,1,3,'mod/lti:manage',1,1380698940,0),(671,1,1,'mod/lti:manage',1,1380698940,0),(672,1,4,'mod/lti:addcoursetool',1,1380698940,0),(673,1,3,'mod/lti:addcoursetool',1,1380698940,0),(674,1,1,'mod/lti:addcoursetool',1,1380698940,0),(675,1,4,'mod/lti:requesttooladd',1,1380698940,0),(676,1,3,'mod/lti:requesttooladd',1,1380698940,0),(677,1,1,'mod/lti:requesttooladd',1,1380698940,0),(678,1,6,'mod/page:view',1,1380698941,0),(679,1,7,'mod/page:view',1,1380698941,0),(680,1,3,'mod/page:addinstance',1,1380698941,0),(681,1,1,'mod/page:addinstance',1,1380698941,0),(682,1,6,'mod/quiz:view',1,1380698945,0),(683,1,5,'mod/quiz:view',1,1380698945,0),(684,1,4,'mod/quiz:view',1,1380698945,0),(685,1,3,'mod/quiz:view',1,1380698945,0),(686,1,1,'mod/quiz:view',1,1380698945,0),(687,1,3,'mod/quiz:addinstance',1,1380698945,0),(688,1,1,'mod/quiz:addinstance',1,1380698945,0),(689,1,5,'mod/quiz:attempt',1,1380698945,0),(690,1,5,'mod/quiz:reviewmyattempts',1,1380698945,0),(691,1,3,'mod/quiz:manage',1,1380698945,0),(692,1,1,'mod/quiz:manage',1,1380698945,0),(693,1,3,'mod/quiz:manageoverrides',1,1380698945,0),(694,1,1,'mod/quiz:manageoverrides',1,1380698945,0),(695,1,4,'mod/quiz:preview',1,1380698945,0),(696,1,3,'mod/quiz:preview',1,1380698945,0),(697,1,1,'mod/quiz:preview',1,1380698946,0),(698,1,4,'mod/quiz:grade',1,1380698946,0),(699,1,3,'mod/quiz:grade',1,1380698946,0),(700,1,1,'mod/quiz:grade',1,1380698946,0),(701,1,4,'mod/quiz:regrade',1,1380698946,0),(702,1,3,'mod/quiz:regrade',1,1380698946,0),(703,1,1,'mod/quiz:regrade',1,1380698946,0),(704,1,4,'mod/quiz:viewreports',1,1380698946,0),(705,1,3,'mod/quiz:viewreports',1,1380698946,0),(706,1,1,'mod/quiz:viewreports',1,1380698946,0),(707,1,3,'mod/quiz:deleteattempts',1,1380698946,0),(708,1,1,'mod/quiz:deleteattempts',1,1380698946,0),(709,1,6,'mod/resource:view',1,1380698947,0),(710,1,7,'mod/resource:view',1,1380698947,0),(711,1,3,'mod/resource:addinstance',1,1380698947,0),(712,1,1,'mod/resource:addinstance',1,1380698947,0),(713,1,3,'mod/scorm:addinstance',1,1380698954,0),(714,1,1,'mod/scorm:addinstance',1,1380698954,0),(715,1,4,'mod/scorm:viewreport',1,1380698954,0),(716,1,3,'mod/scorm:viewreport',1,1380698954,0),(717,1,1,'mod/scorm:viewreport',1,1380698954,0),(718,1,5,'mod/scorm:skipview',1,1380698954,0),(719,1,5,'mod/scorm:savetrack',1,1380698954,0),(720,1,4,'mod/scorm:savetrack',1,1380698954,0),(721,1,3,'mod/scorm:savetrack',1,1380698954,0),(722,1,1,'mod/scorm:savetrack',1,1380698954,0),(723,1,5,'mod/scorm:viewscores',1,1380698954,0),(724,1,4,'mod/scorm:viewscores',1,1380698954,0),(725,1,3,'mod/scorm:viewscores',1,1380698954,0),(726,1,1,'mod/scorm:viewscores',1,1380698954,0),(727,1,4,'mod/scorm:deleteresponses',1,1380698955,0),(728,1,3,'mod/scorm:deleteresponses',1,1380698955,0),(729,1,1,'mod/scorm:deleteresponses',1,1380698955,0),(730,1,3,'mod/survey:addinstance',1,1380698958,0),(731,1,1,'mod/survey:addinstance',1,1380698958,0),(732,1,5,'mod/survey:participate',1,1380698958,0),(733,1,4,'mod/survey:participate',1,1380698958,0),(734,1,3,'mod/survey:participate',1,1380698958,0),(735,1,1,'mod/survey:participate',1,1380698958,0),(736,1,4,'mod/survey:readresponses',1,1380698958,0),(737,1,3,'mod/survey:readresponses',1,1380698959,0),(738,1,1,'mod/survey:readresponses',1,1380698959,0),(739,1,4,'mod/survey:download',1,1380698959,0),(740,1,3,'mod/survey:download',1,1380698959,0),(741,1,1,'mod/survey:download',1,1380698959,0),(742,1,6,'mod/url:view',1,1380698959,0),(743,1,7,'mod/url:view',1,1380698960,0),(744,1,3,'mod/url:addinstance',1,1380698960,0),(745,1,1,'mod/url:addinstance',1,1380698960,0),(746,1,3,'mod/wiki:addinstance',1,1380698963,0),(747,1,1,'mod/wiki:addinstance',1,1380698963,0),(748,1,6,'mod/wiki:viewpage',1,1380698963,0),(749,1,5,'mod/wiki:viewpage',1,1380698963,0),(750,1,4,'mod/wiki:viewpage',1,1380698963,0),(751,1,3,'mod/wiki:viewpage',1,1380698963,0),(752,1,1,'mod/wiki:viewpage',1,1380698963,0),(753,1,5,'mod/wiki:editpage',1,1380698963,0),(754,1,4,'mod/wiki:editpage',1,1380698963,0),(755,1,3,'mod/wiki:editpage',1,1380698963,0),(756,1,1,'mod/wiki:editpage',1,1380698963,0),(757,1,5,'mod/wiki:createpage',1,1380698963,0),(758,1,4,'mod/wiki:createpage',1,1380698963,0),(759,1,3,'mod/wiki:createpage',1,1380698963,0),(760,1,1,'mod/wiki:createpage',1,1380698963,0),(761,1,5,'mod/wiki:viewcomment',1,1380698963,0),(762,1,4,'mod/wiki:viewcomment',1,1380698964,0),(763,1,3,'mod/wiki:viewcomment',1,1380698964,0),(764,1,1,'mod/wiki:viewcomment',1,1380698964,0),(765,1,5,'mod/wiki:editcomment',1,1380698964,0),(766,1,4,'mod/wiki:editcomment',1,1380698964,0),(767,1,3,'mod/wiki:editcomment',1,1380698964,0),(768,1,1,'mod/wiki:editcomment',1,1380698964,0),(769,1,4,'mod/wiki:managecomment',1,1380698964,0),(770,1,3,'mod/wiki:managecomment',1,1380698964,0),(771,1,1,'mod/wiki:managecomment',1,1380698964,0),(772,1,4,'mod/wiki:managefiles',1,1380698964,0),(773,1,3,'mod/wiki:managefiles',1,1380698964,0),(774,1,1,'mod/wiki:managefiles',1,1380698964,0),(775,1,4,'mod/wiki:overridelock',1,1380698964,0),(776,1,3,'mod/wiki:overridelock',1,1380698964,0),(777,1,1,'mod/wiki:overridelock',1,1380698964,0),(778,1,4,'mod/wiki:managewiki',1,1380698964,0),(779,1,3,'mod/wiki:managewiki',1,1380698964,0),(780,1,1,'mod/wiki:managewiki',1,1380698964,0),(781,1,6,'mod/workshop:view',1,1380698971,0),(782,1,5,'mod/workshop:view',1,1380698971,0),(783,1,4,'mod/workshop:view',1,1380698972,0),(784,1,3,'mod/workshop:view',1,1380698972,0),(785,1,1,'mod/workshop:view',1,1380698972,0),(786,1,3,'mod/workshop:addinstance',1,1380698972,0),(787,1,1,'mod/workshop:addinstance',1,1380698972,0),(788,1,4,'mod/workshop:switchphase',1,1380698972,0),(789,1,3,'mod/workshop:switchphase',1,1380698972,0),(790,1,1,'mod/workshop:switchphase',1,1380698972,0),(791,1,3,'mod/workshop:editdimensions',1,1380698973,0),(792,1,1,'mod/workshop:editdimensions',1,1380698973,0),(793,1,5,'mod/workshop:submit',1,1380698973,0),(794,1,5,'mod/workshop:peerassess',1,1380698973,0),(795,1,4,'mod/workshop:manageexamples',1,1380698973,0),(796,1,3,'mod/workshop:manageexamples',1,1380698973,0),(797,1,1,'mod/workshop:manageexamples',1,1380698973,0),(798,1,4,'mod/workshop:allocate',1,1380698973,0),(799,1,3,'mod/workshop:allocate',1,1380698973,0),(800,1,1,'mod/workshop:allocate',1,1380698973,0),(801,1,4,'mod/workshop:publishsubmissions',1,1380698973,0),(802,1,3,'mod/workshop:publishsubmissions',1,1380698973,0),(803,1,1,'mod/workshop:publishsubmissions',1,1380698973,0),(804,1,5,'mod/workshop:viewauthornames',1,1380698973,0),(805,1,4,'mod/workshop:viewauthornames',1,1380698973,0),(806,1,3,'mod/workshop:viewauthornames',1,1380698973,0),(807,1,1,'mod/workshop:viewauthornames',1,1380698974,0),(808,1,4,'mod/workshop:viewreviewernames',1,1380698974,0),(809,1,3,'mod/workshop:viewreviewernames',1,1380698974,0),(810,1,1,'mod/workshop:viewreviewernames',1,1380698974,0),(811,1,4,'mod/workshop:viewallsubmissions',1,1380698974,0),(812,1,3,'mod/workshop:viewallsubmissions',1,1380698974,0),(813,1,1,'mod/workshop:viewallsubmissions',1,1380698974,0),(814,1,5,'mod/workshop:viewpublishedsubmissions',1,1380698974,0),(815,1,4,'mod/workshop:viewpublishedsubmissions',1,1380698974,0),(816,1,3,'mod/workshop:viewpublishedsubmissions',1,1380698974,0),(817,1,1,'mod/workshop:viewpublishedsubmissions',1,1380698974,0),(818,1,5,'mod/workshop:viewauthorpublished',1,1380698974,0),(819,1,4,'mod/workshop:viewauthorpublished',1,1380698974,0),(820,1,3,'mod/workshop:viewauthorpublished',1,1380698974,0),(821,1,1,'mod/workshop:viewauthorpublished',1,1380698974,0),(822,1,4,'mod/workshop:viewallassessments',1,1380698974,0),(823,1,3,'mod/workshop:viewallassessments',1,1380698974,0),(824,1,1,'mod/workshop:viewallassessments',1,1380698975,0),(825,1,4,'mod/workshop:overridegrades',1,1380698975,0),(826,1,3,'mod/workshop:overridegrades',1,1380698975,0),(827,1,1,'mod/workshop:overridegrades',1,1380698975,0),(828,1,4,'mod/workshop:ignoredeadlines',1,1380698975,0),(829,1,3,'mod/workshop:ignoredeadlines',1,1380698975,0),(830,1,1,'mod/workshop:ignoredeadlines',1,1380698975,0),(831,1,1,'enrol/authorize:config',1,1380698986,0),(832,1,1,'enrol/authorize:manage',1,1380698986,0),(833,1,3,'enrol/authorize:manage',1,1380698986,0),(834,1,1,'enrol/authorize:unenrol',1,1380698986,0),(835,1,1,'enrol/authorize:managepayments',1,1380698986,0),(836,1,1,'enrol/authorize:uploadcsv',1,1380698987,0),(837,1,3,'enrol/cohort:config',1,1380698988,0),(838,1,1,'enrol/cohort:config',1,1380698988,0),(839,1,1,'enrol/cohort:unenrol',1,1380698988,0),(840,1,1,'enrol/database:unenrol',1,1380698988,0),(841,1,1,'enrol/guest:config',1,1380698990,0),(842,1,3,'enrol/guest:config',1,1380698990,0),(843,1,1,'enrol/ldap:manage',1,1380698991,0),(844,1,1,'enrol/manual:config',1,1380698992,0),(845,1,1,'enrol/manual:enrol',1,1380698992,0),(846,1,3,'enrol/manual:enrol',1,1380698992,0),(847,1,1,'enrol/manual:manage',1,1380698992,0),(848,1,3,'enrol/manual:manage',1,1380698992,0),(849,1,1,'enrol/manual:unenrol',1,1380698992,0),(850,1,3,'enrol/manual:unenrol',1,1380698992,0),(851,1,1,'enrol/meta:config',1,1380698993,0),(852,1,3,'enrol/meta:config',1,1380698993,0),(853,1,1,'enrol/meta:selectaslinked',1,1380698993,0),(854,1,1,'enrol/meta:unenrol',1,1380698993,0),(855,1,1,'enrol/paypal:config',1,1380698995,0),(856,1,1,'enrol/paypal:manage',1,1380698995,0),(857,1,3,'enrol/paypal:manage',1,1380698995,0),(858,1,1,'enrol/paypal:unenrol',1,1380698995,0),(859,1,3,'enrol/self:config',1,1380698996,0),(860,1,1,'enrol/self:config',1,1380698996,0),(861,1,3,'enrol/self:manage',1,1380698996,0),(862,1,1,'enrol/self:manage',1,1380698996,0),(863,1,5,'enrol/self:unenrolself',1,1380698996,0),(864,1,3,'enrol/self:unenrol',1,1380698996,0),(865,1,1,'enrol/self:unenrol',1,1380698996,0),(866,1,7,'block/online_users:viewlist',1,1380699004,0),(867,1,6,'block/online_users:viewlist',1,1380699004,0),(868,1,5,'block/online_users:viewlist',1,1380699005,0),(869,1,4,'block/online_users:viewlist',1,1380699005,0),(870,1,3,'block/online_users:viewlist',1,1380699005,0),(871,1,1,'block/online_users:viewlist',1,1380699005,0),(872,1,4,'block/rss_client:manageownfeeds',1,1380699007,0),(873,1,3,'block/rss_client:manageownfeeds',1,1380699007,0),(874,1,1,'block/rss_client:manageownfeeds',1,1380699007,0),(875,1,1,'block/rss_client:manageanyfeeds',1,1380699007,0),(876,1,4,'report/completion:view',1,1380699021,0),(877,1,3,'report/completion:view',1,1380699021,0),(878,1,1,'report/completion:view',1,1380699021,0),(879,1,4,'report/courseoverview:view',1,1380699021,0),(880,1,3,'report/courseoverview:view',1,1380699022,0),(881,1,1,'report/courseoverview:view',1,1380699022,0),(882,1,4,'report/log:view',1,1380699022,0),(883,1,3,'report/log:view',1,1380699022,0),(884,1,1,'report/log:view',1,1380699022,0),(885,1,4,'report/log:viewtoday',1,1380699022,0),(886,1,3,'report/log:viewtoday',1,1380699022,0),(887,1,1,'report/log:viewtoday',1,1380699022,0),(888,1,4,'report/loglive:view',1,1380699023,0),(889,1,3,'report/loglive:view',1,1380699023,0),(890,1,1,'report/loglive:view',1,1380699023,0),(891,1,4,'report/outline:view',1,1380699023,0),(892,1,3,'report/outline:view',1,1380699024,0),(893,1,1,'report/outline:view',1,1380699024,0),(894,1,4,'report/participation:view',1,1380699024,0),(895,1,3,'report/participation:view',1,1380699024,0),(896,1,1,'report/participation:view',1,1380699024,0),(897,1,4,'report/progress:view',1,1380699025,0),(898,1,3,'report/progress:view',1,1380699025,0),(899,1,1,'report/progress:view',1,1380699025,0),(900,1,1,'report/security:view',1,1380699026,0),(901,1,4,'report/stats:view',1,1380699026,0),(902,1,3,'report/stats:view',1,1380699026,0),(903,1,1,'report/stats:view',1,1380699026,0),(904,1,4,'gradeexport/ods:view',1,1380699027,0),(905,1,3,'gradeexport/ods:view',1,1380699027,0),(906,1,1,'gradeexport/ods:view',1,1380699027,0),(907,1,1,'gradeexport/ods:publish',1,1380699028,0),(908,1,4,'gradeexport/txt:view',1,1380699028,0),(909,1,3,'gradeexport/txt:view',1,1380699028,0),(910,1,1,'gradeexport/txt:view',1,1380699028,0),(911,1,1,'gradeexport/txt:publish',1,1380699028,0),(912,1,4,'gradeexport/xls:view',1,1380699029,0),(913,1,3,'gradeexport/xls:view',1,1380699029,0),(914,1,1,'gradeexport/xls:view',1,1380699029,0),(915,1,1,'gradeexport/xls:publish',1,1380699029,0),(916,1,4,'gradeexport/xml:view',1,1380699029,0),(917,1,3,'gradeexport/xml:view',1,1380699029,0),(918,1,1,'gradeexport/xml:view',1,1380699029,0),(919,1,1,'gradeexport/xml:publish',1,1380699029,0),(920,1,3,'gradeimport/csv:view',1,1380699030,0),(921,1,1,'gradeimport/csv:view',1,1380699030,0),(922,1,3,'gradeimport/xml:view',1,1380699030,0),(923,1,1,'gradeimport/xml:view',1,1380699030,0),(924,1,1,'gradeimport/xml:publish',1,1380699030,0),(925,1,4,'gradereport/grader:view',1,1380699030,0),(926,1,3,'gradereport/grader:view',1,1380699030,0),(927,1,1,'gradereport/grader:view',1,1380699030,0),(928,1,4,'gradereport/outcomes:view',1,1380699031,0),(929,1,3,'gradereport/outcomes:view',1,1380699031,0),(930,1,1,'gradereport/outcomes:view',1,1380699031,0),(931,1,5,'gradereport/overview:view',1,1380699031,0),(932,1,1,'gradereport/overview:view',1,1380699031,0),(933,1,5,'gradereport/user:view',1,1380699032,0),(934,1,4,'gradereport/user:view',1,1380699032,0),(935,1,3,'gradereport/user:view',1,1380699032,0),(936,1,1,'gradereport/user:view',1,1380699032,0),(937,1,7,'repository/alfresco:view',1,1380699039,0),(938,1,7,'repository/boxnet:view',1,1380699040,0),(939,1,2,'repository/coursefiles:view',1,1380699040,0),(940,1,4,'repository/coursefiles:view',1,1380699040,0),(941,1,3,'repository/coursefiles:view',1,1380699040,0),(942,1,1,'repository/coursefiles:view',1,1380699040,0),(943,1,7,'repository/dropbox:view',1,1380699041,0),(944,1,7,'repository/equella:view',1,1380699041,0),(945,1,2,'repository/filesystem:view',1,1380699042,0),(946,1,4,'repository/filesystem:view',1,1380699042,0),(947,1,3,'repository/filesystem:view',1,1380699042,0),(948,1,1,'repository/filesystem:view',1,1380699042,0),(949,1,7,'repository/flickr:view',1,1380699043,0),(950,1,7,'repository/flickr_public:view',1,1380699043,0),(951,1,7,'repository/googledocs:view',1,1380699044,0),(952,1,2,'repository/local:view',1,1380699044,0),(953,1,4,'repository/local:view',1,1380699044,0),(954,1,3,'repository/local:view',1,1380699044,0),(955,1,1,'repository/local:view',1,1380699045,0),(956,1,7,'repository/merlot:view',1,1380699045,0),(957,1,7,'repository/picasa:view',1,1380699046,0),(958,1,7,'repository/recent:view',1,1380699046,0),(959,1,7,'repository/s3:view',1,1380699047,0),(960,1,7,'repository/upload:view',1,1380699047,0),(961,1,7,'repository/url:view',1,1380699048,0),(962,1,7,'repository/user:view',1,1380699050,0),(963,1,2,'repository/webdav:view',1,1380699050,0),(964,1,4,'repository/webdav:view',1,1380699050,0),(965,1,3,'repository/webdav:view',1,1380699050,0),(966,1,1,'repository/webdav:view',1,1380699050,0),(967,1,7,'repository/wikimedia:view',1,1380699051,0),(968,1,7,'repository/youtube:view',1,1380699052,0),(969,1,1,'tool/customlang:view',1,1380699065,0),(970,1,1,'tool/customlang:edit',1,1380699065,0),(971,1,3,'booktool/importhtml:import',1,1380699089,0),(972,1,1,'booktool/importhtml:import',1,1380699089,0),(973,1,6,'booktool/print:print',1,1380699090,0),(974,1,8,'booktool/print:print',1,1380699090,0),(975,1,5,'booktool/print:print',1,1380699090,0),(976,1,4,'booktool/print:print',1,1380699090,0),(977,1,3,'booktool/print:print',1,1380699090,0),(978,1,1,'booktool/print:print',1,1380699090,0),(979,1,4,'quiz/grading:viewstudentnames',1,1380699096,0),(980,1,3,'quiz/grading:viewstudentnames',1,1380699096,0),(981,1,1,'quiz/grading:viewstudentnames',1,1380699096,0),(982,1,4,'quiz/grading:viewidnumber',1,1380699096,0),(983,1,3,'quiz/grading:viewidnumber',1,1380699096,0),(984,1,1,'quiz/grading:viewidnumber',1,1380699096,0),(985,1,4,'quiz/statistics:view',1,1380699098,0),(986,1,3,'quiz/statistics:view',1,1380699098,0),(987,1,1,'quiz/statistics:view',1,1380699098,0);
/*!40000 ALTER TABLE `mdl_role_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `coursecount` bigint(10) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (1,'Miscellaneous',NULL,NULL,0,0,10000,1,1,1,1380698826,1,'/1',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_comments`
--

DROP TABLE IF EXISTS `mdl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `commentarea` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_comments`
--

LOCK TABLES `mdl_comments` WRITE;
/*!40000 ALTER TABLE `mdl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_question_response_stats`
--

DROP TABLE IF EXISTS `mdl_quiz_question_response_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_question_response_stats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizstatisticsid` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `subqid` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8_unicode_ci,
  `rcount` bigint(10) DEFAULT NULL,
  `credit` decimal(15,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Quiz question responses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_question_response_stats`
--

LOCK TABLES `mdl_quiz_question_response_stats` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_question_response_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_question_response_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_read`
--

DROP TABLE IF EXISTS `mdl_forum_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forumid` bigint(10) NOT NULL DEFAULT '0',
  `discussionid` bigint(10) NOT NULL DEFAULT '0',
  `postid` bigint(10) NOT NULL DEFAULT '0',
  `firstread` bigint(10) NOT NULL DEFAULT '0',
  `lastread` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl_foruread_usepos_ix` (`userid`,`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tracks each users read posts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_read`
--

LOCK TABLES `mdl_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_assessments`
--

DROP TABLE IF EXISTS `mdl_workshop_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_assessments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `reviewerid` bigint(10) NOT NULL,
  `weight` bigint(10) NOT NULL DEFAULT '1',
  `timecreated` bigint(10) DEFAULT '0',
  `timemodified` bigint(10) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `gradinggradeover` decimal(10,5) DEFAULT NULL,
  `gradinggradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8_unicode_ci,
  `feedbackauthorformat` smallint(3) DEFAULT '0',
  `feedbackreviewer` longtext COLLATE utf8_unicode_ci,
  `feedbackreviewerformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workasse_sub_ix` (`submissionid`),
  KEY `mdl_workasse_gra_ix` (`gradinggradeoverby`),
  KEY `mdl_workasse_rev_ix` (`reviewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about the made assessment and automatically calculated ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_assessments`
--

LOCK TABLES `mdl_workshop_assessments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statweek_cou_ix` (`courseid`),
  KEY `mdl_statweek_tim_ix` (`timeend`),
  KEY `mdl_statweek_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To accumulate weekly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_weekly`
--

LOCK TABLES `mdl_stats_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings`
--

DROP TABLE IF EXISTS `mdl_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `configdata` longtext COLLATE utf8_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn2_ix` (`idnumber`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings`
--

LOCK TABLES `mdl_groupings` WRITE;
/*!40000 ALTER TABLE `mdl_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multianswer`
--

DROP TABLE IF EXISTS `mdl_question_multianswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_multianswer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `sequence` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for multianswer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_multianswer`
--

LOCK TABLES `mdl_question_multianswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_multianswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_multianswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_config`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstconf_nam_ix` (`name`),
  KEY `mdl_portinstconf_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='config for portfolio plugin instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_config`
--

LOCK TABLES `mdl_portfolio_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_synonyms`
--

DROP TABLE IF EXISTS `mdl_wiki_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_synonyms` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `pagesynonym` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pagesynonym',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisyno_pagpag_uix` (`pageid`,`pagesynonym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores wiki pages synonyms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_synonyms`
--

LOCK TABLES `mdl_wiki_synonyms` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_letters`
--

DROP TABLE IF EXISTS `mdl_grade_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradlett_conlowlet_uix` (`contextid`,`lowerboundary`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Repository for grade letters, for courses and other moodle e';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_letters`
--

LOCK TABLES `mdl_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_feedback`
--

DROP TABLE IF EXISTS `mdl_quiz_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL DEFAULT '0',
  `feedbacktext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedbacktextformat` tinyint(2) NOT NULL DEFAULT '0',
  `mingrade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `maxgrade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`id`),
  KEY `mdl_quizfeed_qui_ix` (`quizid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Feedback given to students based on which grade band their o';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_feedback`
--

LOCK TABLES `mdl_quiz_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_feedback` DISABLE KEYS */;
INSERT INTO `mdl_quiz_feedback` VALUES (2,1,'',1,0.00000,101.00000),(3,2,'',1,0.00000,101.00000);
/*!40000 ALTER TABLE `mdl_quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_switch`
--

DROP TABLE IF EXISTS `mdl_role_allow_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_switch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowswitch` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  KEY `mdl_rolealloswit_rol_ix` (`roleid`),
  KEY `mdl_rolealloswit_all_ix` (`allowswitch`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_switch`
--

LOCK TABLES `mdl_role_allow_switch` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_switch` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_switch` VALUES (1,1,3),(2,1,4),(3,1,5),(4,1,6),(5,3,4),(6,3,5),(7,3,6),(8,4,5),(9,4,6);
/*!40000 ALTER TABLE `mdl_role_allow_switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT '0',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'activity_modules',2012061700,0,0,1),(2,'admin_bookmarks',2012061700,0,0,1),(3,'blog_menu',2012061700,0,0,1),(4,'blog_recent',2012061700,0,0,1),(5,'blog_tags',2012061700,0,0,1),(6,'calendar_month',2012061700,0,0,1),(7,'calendar_upcoming',2012061700,0,0,1),(8,'comments',2012061700,0,0,1),(9,'community',2012061700,0,0,1),(10,'completionstatus',2012061700,0,0,1),(11,'course_list',2012061700,0,0,1),(12,'course_overview',2012061700,0,0,1),(13,'course_summary',2012061700,0,0,1),(14,'feedback',2012061700,0,0,0),(15,'glossary_random',2012061700,0,0,1),(16,'html',2012061700,0,0,1),(17,'login',2012061700,0,0,1),(18,'mentees',2012061700,0,0,1),(19,'messages',2012061700,0,0,1),(20,'mnet_hosts',2012061700,0,0,1),(21,'myprofile',2012061700,0,0,1),(22,'navigation',2012061700,0,0,1),(23,'news_items',2012061700,0,0,1),(24,'online_users',2012061700,0,0,1),(25,'participants',2012061700,0,0,1),(26,'private_files',2012061700,0,0,1),(27,'quiz_results',2012061700,0,0,1),(28,'recent_activity',2012061700,0,0,1),(29,'rss_client',2012061700,300,0,1),(30,'search_forums',2012061700,0,0,1),(31,'section_links',2012061700,0,0,1),(32,'selfcompletion',2012061700,0,0,1),(33,'settings',2012061700,0,0,1),(34,'site_main_menu',2012061700,0,0,1),(35,'social_activities',2012061700,0,0,1),(36,'tag_flickr',2012061700,0,0,1),(37,'tag_youtube',2012061700,0,0,1),(38,'tags',2012061700,0,0,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table describes the outcomes used in the system. An out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes`
--

LOCK TABLES `mdl_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated`
--

DROP TABLE IF EXISTS `mdl_question_calculated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` bigint(10) NOT NULL DEFAULT '0',
  `tolerance` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0',
  `tolerancetype` bigint(10) NOT NULL DEFAULT '1',
  `correctanswerlength` bigint(10) NOT NULL DEFAULT '2',
  `correctanswerformat` bigint(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `mdl_quescalc_ans_ix` (`answer`),
  KEY `mdl_quescalc_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated`
--

LOCK TABLES `mdl_question_calculated` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_assign`
--

DROP TABLE IF EXISTS `mdl_role_allow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `allowassign` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='this defines what role can assign what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_assign`
--

LOCK TABLES `mdl_role_allow_assign` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_assign` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_assign` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,3,4),(7,3,5);
/*!40000 ALTER TABLE `mdl_role_allow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_comments`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcomm_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='frequently used comments used in marking guide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_comments`
--

LOCK TABLES `mdl_gradingform_guide_comments` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_formats`
--

DROP TABLE IF EXISTS `mdl_glossary_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `popupformatname` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(2) NOT NULL DEFAULT '1',
  `showgroup` tinyint(2) NOT NULL DEFAULT '1',
  `defaultmode` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defaulthook` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Setting of the display formats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_formats`
--

LOCK TABLES `mdl_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_formats` DISABLE KEYS */;
INSERT INTO `mdl_glossary_formats` VALUES (1,'continuous','continuous',1,1,'','','',''),(2,'dictionary','dictionary',1,1,'','','',''),(3,'encyclopedia','encyclopedia',1,1,'','','',''),(4,'entrylist','entrylist',1,1,'','','',''),(5,'faq','faq',1,1,'','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'','','','');
/*!40000 ALTER TABLE `mdl_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_private_key`
--

DROP TABLE IF EXISTS `mdl_user_private_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_private_key` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `script` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT NULL,
  `iprestriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl_userprivkey_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='access keys used in cookieless scripts - rss, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_private_key`
--

LOCK TABLES `mdl_user_private_key` WRITE;
/*!40000 ALTER TABLE `mdl_user_private_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_private_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_text`
--

DROP TABLE IF EXISTS `mdl_cache_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_text` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `md5key` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `formattedtext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cachtext_md5_ix` (`md5key`),
  KEY `mdl_cachtext_tim_ix` (`timemodified`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='For storing temporary copies of processed texts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_text`
--

LOCK TABLES `mdl_cache_text` WRITE;
/*!40000 ALTER TABLE `mdl_cache_text` DISABLE KEYS */;
INSERT INTO `mdl_cache_text` VALUES (1,'4351d00a1a0428201e17b7a595a0c95a','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380699879),(2,'7088784e04c075cc90016a72cf938cb2','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380702198),(3,'8d6d3d12a562c2bbec012713441740de','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380725161),(4,'095c8653214c00bf83ca89c7eb23e6eb','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380701152),(5,'dff645aba900368c75e6c5efa77ade6e','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380702689),(6,'1dea8cb82a7eac23286ddaafa2640ece','<p>The assignment activity module enables a teacher to communicate tasks, collect work and provide grades and feedback.</p>\n\n<p>Students can submit any digital content (files), such as word-processed documents, spreadsheets, images, or audio and video clips. Alternatively, or in addition, the assignment may require students to type text directly into the text editor. An assignment can also be used to remind students of \'real-world\' assignments they need to complete offline, such as art work, and thus not require any digital content.</p>\n\n<p>When reviewing assignments, teachers can leave feedback comments and upload files, such as marked-up student submissions, documents with comments or spoken audio feedback. Assignments can be graded using a numerical or custom scale or an advanced grading method such as a rubric. Final grades are recorded in the gradebook.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/assignment/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(7,'c6cd7c0178c27fb23891c28fd81d72bf','<p>The chat activity module enables participants to have text-based, real-time synchronous discussions.</p>\n\n<p>The chat may be a one-time activity or it may be repeated at the same time each day or each week. Chat sessions are saved and can be made available for everyone to view or restricted to users with the capability to view chat session logs.</p>\n\n<p>Chats are especially useful when the group chatting is not able to meet face-to-face, such as</p>\n\n<ul><li>Regular meetings of students participating in online courses to enable them to share experiences with others in the same course but in a different location</li>\n<li>A student temporarily unable to attend in person chatting with their teacher to catch up with work</li>\n<li>Students out on work experience getting together to discuss their experiences with each other and their teacher</li>\n<li>Younger children using chat at home in the evenings as a controlled (monitored) introduction to the world of social networking</li>\n<li>A question and answer session with an invited speaker in a different location</li>\n<li>Sessions to help students prepare for tests where the teacher, or other students, would pose sample questions</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/chat/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(8,'f3a47939d1419dda4b7ba26bfe0e62b3','<p>The choice activity module enables a teacher to ask a single question and offer a selection of possible responses.</p>\n\n<p>Choice results may be published after students have answered, after a certain date, or not at all. Results may be published with student names or anonymously.</p>\n\n<p>A choice activity may be used</p>\n\n<ul><li>As a quick poll to stimulate thinking about a topic</li>\n<li>To quickly test students\' understanding</li>\n<li>To facilitate student decision-making, for example allowing students to vote on a direction for the course</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/choice/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(9,'cc19d6b0a6f7df189e34aa38b1750d64','<p>The database activity module enables participants to create, maintain and search a collection of entries (i.e. records).  The structure of the entries is defined by the teacher as a number of fields. Field types include checkbox, radio buttons, dropdown menu, text area, URL, picture and uploaded file.</p>\n\n<p>The visual layout of information when listing, viewing or editing database entries may be controlled by database templates. Database activities may be shared between courses as presets and a teacher may also import and export database entries.</p>\n\n<p>If the database auto-linking filter is enabled, any entries in a database will be automatically linked where the words or phrases appear within the course.</p>\n\n<p>A teacher can allow comments on entries. Entries can also be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Database activities have many uses, such as</p>\n\n<ul><li>A collaborative collection of web links, books, book reviews, journal references etc</li>\n<li>For displaying student-created photos, posters, websites or poems for peer comment and review</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/data/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(10,'faa3c8588fa400fc30f049a8d111b8d3','<p>The external tool activity module enables students to interact with learning resources and activities on other web sites. For example, an external tool could provide access to a new activity type or learning materials from a publisher.</p>\n\n<p>To create an external tool activity, a tool provider which supports LTI (Learning Tools Interoperability) is required. A teacher can create an external tool activity or make use of a tool configured by the site administrator.</p>\n\n<p>External tool activities differ from URL resources in a few ways:</p>\n\n<ul><li>External tools are context aware i.e. they have access to information about the user who launched the tool, such as institution, course and name</li>\n<li>External tools support reading, updating, and deleting grades associated with the activity instance</li>\n<li>External tool configurations create a trust relationship between your site and the tool provider, allowing secure communication between them</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/lti/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(11,'199ddb9f25af23104640d76b0560cea3','<p>The forum activity module enables participants to have asynchronous discussions i.e. discussions that take place over an extended period of time.</p>\n\n<p>There are several forum types to choose from, such as a standard forum where anyone can start a new discussion at any time; a forum where each student can post exactly one discussion; or a question and answer forum where students must first post before being able to view other students\' posts. A teacher can allow files to be attached to forum posts. Attached images are displayed in the forum post.</p>\n\n<p>Participants can subscribe to a forum to receive notifications of new forum posts. A teacher can set the subscription mode to optional, forced or auto, or prevent subscription completely. If required, students can be blocked from posting more than a given number of posts in a given time period; this can prevent individuals from dominating discussions.</p>\n\n<p>Forum posts can be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Forums have many uses, such as</p>\n\n<ul><li>A social space for students to get to know each other</li>\n<li>For course announcements (using a news forum with forced subscription)</li>\n<li>For discussing course content or reading materials</li>\n<li>For continuing online an issue raised previously in a face-to-face session</li>\n<li>For teacher-only discussions (using a hidden forum)</li>\n<li>A help centre where tutors and students can give advice</li>\n<li>A one-on-one support area for private student-teacher communications (using a forum with separate groups and with one student per group)</li>\n<li>For extension activities, for example ‘brain teasers’ for students to ponder and suggest solutions to</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/forum/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(12,'938bc2971b9a0c870a3234cc7f43b4aa','<p>The glossary activity module enables participants to create and maintain a list of definitions, like a dictionary, or to collect and organise resources or information.</p>\n\n<p>A teacher can allow files to be attached to glossary entries. Attached images are displayed in the entry. Entries can be searched or browsed alphabetically or by category, date or author. Entries can be approved by default or require approval by a teacher before they are viewable by everyone.</p>\n\n<p>If the glossary auto-linking filter is enabled, entries will be automatically linked where the concept words and/or phrases appear within the course.</p>\n\n<p>A teacher can allow comments on entries. Entries can also be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Glossaries have many uses, such as</p>\n\n<ul><li>A collaborative bank of key terms</li>\n<li>A ‘getting to know you’ space where new students add their name and personal details</li>\n<li>A ‘handy tips’ resource of best practice in a practical subject</li>\n<li>A sharing area of useful videos, images or sound files</li>\n<li>A revision resource of facts to remember</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/glossary/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(13,'5343154ff5ecb4585a48e444c7d94418','<p>The lesson activity module enables a teacher to deliver content and/or practice activities in  interesting and flexible ways. A teacher can use the lesson to create a linear set of content pages or instructional activities that offer a variety of paths or options for the learner. In either case, teachers can choose to increase engagement and ensure understanding by including a variety of questions, such as multiple choice, matching and short answer. Depending on the student\'s choice of answer and how the teacher develops the lesson, students may progress to the next page, be taken back to a previous page or redirected down a different path entirely.</p>\n\n<p>A lesson may be graded, with the grade recorded in the gradebook.</p>\n\n<p>Lessons may be used</p>\n\n<ul><li>For self-directed learning of a new topic</li>\n<li>For  scenarios or simulations/decision-making exercises</li>\n<li>For differentiated revision, with different sets of revision questions depending upon answers given to initial questions</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/lesson/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(14,'15343ea248e9d53a17362d6dc3025e74','<p>The quiz activity enables a teacher to create quizzes comprising questions of various types, including multiple choice, matching, short-answer and numerical.</p>\n\n<p>The teacher can allow the quiz to be attempted multiple times, with the questions shuffled or randomly selected from the question bank. A time limit may be set.</p>\n\n<p>Each attempt is marked automatically, with the exception of essay questions, and the grade is recorded in the gradebook.</p>\n\n<p>The teacher can choose when and if hints, feedback and correct answers are shown to students.</p>\n\n<p>Quizzes may be used</p>\n\n<ul><li>As course exams</li>\n<li>As mini tests for reading assignments or at the end of a topic</li>\n<li>As exam practice using questions from past exams</li>\n<li>To deliver immediate feedback about performance</li>\n<li>For self-assessment</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/quiz/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702746),(15,'27fe961031250abc5a35f7384d57083e','<p>A SCORM package is a collection of files which are packaged according to an agreed standard for learning objects. The SCORM activity module enables SCORM or AICC packages to be uploaded as a zip file and added to a course.</p>\n\n<p>Content is usually displayed over several pages, with navigation between the pages. There are various options for displaying content in a pop-up window, with a table of contents, with navigation buttons etc. SCORM activities generally include questions, with grades being recorded in the gradebook.</p>\n\n<p>SCORM activities may be used</p>\n\n<ul><li>For presenting multimedia content and animations</li>\n<li>As an assessment tool</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/scorm/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(16,'1e56e545f2867c18f7dc32ed8f5b52df','<p>The survey activity module provides a number of verified survey instruments that have been found useful in assessing and stimulating learning in online environments. A teacher can use these to gather data from their students that will help them learn about their class and reflect on their own teaching.</p>\n\n<p>Note that these survey tools are pre-populated with questions. Teachers who wish to create their own survey should use the feedback activity module.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/survey/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(17,'f5d39ca7b66b2b020595a9904ad7558e','<p>The wiki activity module enables participants to add and edit a collection of web pages. A wiki can be collaborative, with everyone being able to edit it, or individual, where everyone has their own wiki which only they can edit.</p>\n\n<p>A history of previous versions of each page in the wiki is kept, listing the edits made by each participant.</p>\n\n<p>Wikis have many uses, such as</p>\n\n<ul><li>For group lecture notes or study guides</li>\n<li>For members of a faculty to plan a scheme of work or meeting agenda together</li>\n<li>For students to collaboratively author an online book, creating content on a topic set by their tutor</li>\n<li>For collaborative storytelling or poetry creation, where each participant writes a line or verse</li>\n<li>As a personal journal for examination notes or revision (using an individual wiki)</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/wiki/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(18,'ca4f2cee1df2c2cfd0b432fd5a69070c','<p>The workshop activity module enables the collection, review and peer assessment of students\' work.</p>\n\n<p>Students can submit any digital content (files), such as word-processed documents or spreadsheets and can also type text directly into a field using the text editor.</p>\n\n<p>Submissions are assessed using a multi-criteria assessment form defined by the teacher. The process of peer assessment and understanding the assessment form can be practised in advance with example submissions provided by the teacher, together with a reference assessment. Students are given the opportunity to assess one or more of their peers\' submissions. Submissions and reviewers may be anonymous if required.</p>\n\n<p>Students obtain two grades in a workshop activity - a grade for their submission and a grade for their assessment of their peers\' submissions. Both grades are recorded in the gradebook.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/workshop/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(19,'850fe700afe2655700c0f233880f8e51','<p>The book module enables a teacher to create a multi-page resource in a book-like format, with chapters and subchapters. Books can contain media files as well as text and are useful for displaying lengthy passages of information which can be broken down into sections.</p>\n\n<p>A book may be used</p>\n\n<ul><li>To display reading material for individual modules of study</li>\n<li>As a staff departmental handbook</li>\n<li>As a showcase portfolio of student work</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/book/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(20,'d1551a156ea30c6de700ce96a6628346','<p>The file module enables a teacher to provide a file as a course resource. Where possible, the file will be displayed within the course interface; otherwise students will be prompted to download it. The file may include supporting files, for example an HTML page may have embedded images or Flash objects.</p>\n\n<p>Note that students need to have the appropriate software on their computers in order to open the file.</p>\n\n<p>A file may be used</p>\n\n<ul><li>To share presentations given in class</li>\n<li>To include a mini website as a course resource</li>\n<li>To provide draft files of certain software programs (eg Photoshop .psd) so students can edit and submit them for assessment</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/resource/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(21,'a4bcac58bfb15b40492d5e5463a59199','<p>The folder module enables a teacher to display a number of related files inside a single folder, reducing scrolling on the course page. A zipped folder may be uploaded and unzipped for display, or an empty folder created and files uploaded into it.</p>\n\n<p>A folder may be used</p>\n\n<ul><li>For a series of files on one topic, for example a set of past examination papers in pdf format or a collection of image files for use in student projects</li>\n<li>To provide a shared uploading space for teachers on the course page (keeping the folder hidden so that only teachers can see it)</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/folder/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(22,'182cf06d2a1c5d25d77f107c9a904b94','<p>An IMS content package is a collection of files which are packaged according to an agreed standard so they can be reused in different systems. The IMS content package module enables such content packages to be uploaded as a zip file and added to a course as a resource.</p>\n\n<p>Content is usually displayed over several pages, with navigation between the pages. There are various options for displaying content in a pop-up window, with a navigation menu or buttons etc.</p>\n\n<p>An IMS content package may be used for presenting multimedia content and animations.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/imscp/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(23,'16cbb2f77543ebe486baa865a3c0f40e','<p>The label module enables text and multimedia to be inserted into the course page in between links to other resources and activities. Labels are very versatile and can help to improve the appearance of a course if used thoughtfully.</p>\n\n<p>Labels may be used</p>\n\n<ul><li>To split up a long list of activities with a subheading or an image</li>\n<li>To display an embedded sound file or video directly on the course page</li>\n<li>To add a short description to a course section</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/label/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(24,'c6d8fa3111d36280ae6802e57c11ace4','<p>The page module enables a teacher to create a web page resource using the text editor. A page can display text, images, sound, video, web links and embedded code, such as Google maps.</p>\n\n<p>Advantages of using the page module rather than the file module include the resource being more accessible (for example to users of mobile devices) and easier to update.</p>\n\n<p>For large amounts of content, it\'s recommended that a book is used rather than a page.</p>\n\n<p>A page may be used</p>\n\n<ul><li>To present the terms and conditions of a course or a summary of the course syllabus</li>\n<li>To embed several videos or sound files together with some explanatory text</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/page/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(25,'4fb8e941bc153b27a0fdb98e307568d4','<p>The URL module enables a teacher to provide a web link as a course resource. Anything that is freely available online, such as documents or images, can be linked to; the URL doesn’t have to be the home page of a website. The URL of a particular web page may be copied and pasted or a teacher can use the file picker and choose a link from a repository such as Flickr, YouTube or Wikimedia (depending upon which repositories are enabled for the site).</p>\n\n<p>There are a number of display options for the URL, such as embedded or opening in a new window and advanced options for passing information, such as a student\'s name, to the URL if required.</p>\n\n<p>Note that URLs can also be added to any other resource or activity type through the text editor.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/url/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380702747),(26,'73123cd455b6e9ac3c7a8c08ea95d301','<div class=\"text_to_html\">The default category for questions shared in context \'Testing\'.</div>',1380702762),(27,'7bafef2e4d76a55f17237e334d6a5821','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380702314),(28,'50bb90a4c9c2a4f49eee11c2916894c5','<p>hello</p>',1380702763),(29,'ea263f7096649bc1082e2910633278a9','<p>artasdf</p>',1380702763),(30,'9c167d75b98001915c0c83c1e49a6b47','<p>erew</p>',1380702763),(31,'3cd300180ed6b076d55bb7537ebe194c','<p>asdf</p>',1380702763),(32,'7368bc6dcff1bb41cbbceb8fc1f4129e','<p>erew</p>',1380701626),(33,'b977ec7b22b66aac8e76421ae5da8a3c','<p>wergwe</p>',1380701626),(34,'c3f5e8d6e0421cd378cc6128f16e6b76','<p>ergwerg</p>',1380701626),(35,'eaa7615fe07599f607060121689b87c3','<p>ewrg</p>',1380701626),(36,'fa02d7543007449dd74b38557ebdb5dc','<p>asdf</p>',1380701626),(37,'ab2651e8d77283f60cab419d7eaed64f','<p>asdfasd</p>',1380701626),(38,'46cbcf35a0fe8f8ddab9b8307c1a0013','<p>wergwe</p>',1380701628),(39,'32dff11306e7da555d5b73e49c43be5c','<p>ergwerg</p>',1380701628),(40,'0895ed032d099a3d8c463b91bb432873','<p>ewrg</p>',1380701628),(41,'66ea029d0440183f76297ffb5c9ea383','<p>erew</p>',1380701628),(42,'dba0603c74d19cec2f4f51c638b6dec3','<p>asdf</p>',1380701629),(43,'dac19944b88d4ce10cf353ea9cbed7b1','<p>asdfasd</p>',1380701629),(44,'7f6913c4cac619bb351b4abd2aaefa1d','<p>The assignment activity module enables a teacher to communicate tasks, collect work and provide grades and feedback.</p>\n\n<p>Students can submit any digital content (files), such as word-processed documents, spreadsheets, images, or audio and video clips. Alternatively, or in addition, the assignment may require students to type text directly into the text editor. An assignment can also be used to remind students of \'real-world\' assignments they need to complete offline, such as art work, and thus not require any digital content.</p>\n\n<p>When reviewing assignments, teachers can leave feedback comments and upload files, such as marked-up student submissions, documents with comments or spoken audio feedback. Assignments can be graded using a numerical or custom scale or an advanced grading method such as a rubric. Final grades are recorded in the gradebook.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/assignment/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703724),(45,'27dd8937c2348f42cb88b62cac72e8df','<p>The chat activity module enables participants to have text-based, real-time synchronous discussions.</p>\n\n<p>The chat may be a one-time activity or it may be repeated at the same time each day or each week. Chat sessions are saved and can be made available for everyone to view or restricted to users with the capability to view chat session logs.</p>\n\n<p>Chats are especially useful when the group chatting is not able to meet face-to-face, such as</p>\n\n<ul><li>Regular meetings of students participating in online courses to enable them to share experiences with others in the same course but in a different location</li>\n<li>A student temporarily unable to attend in person chatting with their teacher to catch up with work</li>\n<li>Students out on work experience getting together to discuss their experiences with each other and their teacher</li>\n<li>Younger children using chat at home in the evenings as a controlled (monitored) introduction to the world of social networking</li>\n<li>A question and answer session with an invited speaker in a different location</li>\n<li>Sessions to help students prepare for tests where the teacher, or other students, would pose sample questions</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/chat/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703724),(46,'516f76700c8b2cfc7900cc7dbb471cbc','<p>The choice activity module enables a teacher to ask a single question and offer a selection of possible responses.</p>\n\n<p>Choice results may be published after students have answered, after a certain date, or not at all. Results may be published with student names or anonymously.</p>\n\n<p>A choice activity may be used</p>\n\n<ul><li>As a quick poll to stimulate thinking about a topic</li>\n<li>To quickly test students\' understanding</li>\n<li>To facilitate student decision-making, for example allowing students to vote on a direction for the course</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/choice/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703724),(47,'906a9c31add0839e4d3e3699e3c1b91e','<p>The database activity module enables participants to create, maintain and search a collection of entries (i.e. records).  The structure of the entries is defined by the teacher as a number of fields. Field types include checkbox, radio buttons, dropdown menu, text area, URL, picture and uploaded file.</p>\n\n<p>The visual layout of information when listing, viewing or editing database entries may be controlled by database templates. Database activities may be shared between courses as presets and a teacher may also import and export database entries.</p>\n\n<p>If the database auto-linking filter is enabled, any entries in a database will be automatically linked where the words or phrases appear within the course.</p>\n\n<p>A teacher can allow comments on entries. Entries can also be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Database activities have many uses, such as</p>\n\n<ul><li>A collaborative collection of web links, books, book reviews, journal references etc</li>\n<li>For displaying student-created photos, posters, websites or poems for peer comment and review</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/data/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(48,'ee06ca5c6572b8683d737f3e3e987c96','<p>The external tool activity module enables students to interact with learning resources and activities on other web sites. For example, an external tool could provide access to a new activity type or learning materials from a publisher.</p>\n\n<p>To create an external tool activity, a tool provider which supports LTI (Learning Tools Interoperability) is required. A teacher can create an external tool activity or make use of a tool configured by the site administrator.</p>\n\n<p>External tool activities differ from URL resources in a few ways:</p>\n\n<ul><li>External tools are context aware i.e. they have access to information about the user who launched the tool, such as institution, course and name</li>\n<li>External tools support reading, updating, and deleting grades associated with the activity instance</li>\n<li>External tool configurations create a trust relationship between your site and the tool provider, allowing secure communication between them</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/lti/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(49,'eab73907bef22c4c2a6f5f9e270b7797','<p>The forum activity module enables participants to have asynchronous discussions i.e. discussions that take place over an extended period of time.</p>\n\n<p>There are several forum types to choose from, such as a standard forum where anyone can start a new discussion at any time; a forum where each student can post exactly one discussion; or a question and answer forum where students must first post before being able to view other students\' posts. A teacher can allow files to be attached to forum posts. Attached images are displayed in the forum post.</p>\n\n<p>Participants can subscribe to a forum to receive notifications of new forum posts. A teacher can set the subscription mode to optional, forced or auto, or prevent subscription completely. If required, students can be blocked from posting more than a given number of posts in a given time period; this can prevent individuals from dominating discussions.</p>\n\n<p>Forum posts can be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Forums have many uses, such as</p>\n\n<ul><li>A social space for students to get to know each other</li>\n<li>For course announcements (using a news forum with forced subscription)</li>\n<li>For discussing course content or reading materials</li>\n<li>For continuing online an issue raised previously in a face-to-face session</li>\n<li>For teacher-only discussions (using a hidden forum)</li>\n<li>A help centre where tutors and students can give advice</li>\n<li>A one-on-one support area for private student-teacher communications (using a forum with separate groups and with one student per group)</li>\n<li>For extension activities, for example ‘brain teasers’ for students to ponder and suggest solutions to</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/forum/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(50,'cde5f43049b24a8f4b8a550c1ed831d9','<p>The glossary activity module enables participants to create and maintain a list of definitions, like a dictionary, or to collect and organise resources or information.</p>\n\n<p>A teacher can allow files to be attached to glossary entries. Attached images are displayed in the entry. Entries can be searched or browsed alphabetically or by category, date or author. Entries can be approved by default or require approval by a teacher before they are viewable by everyone.</p>\n\n<p>If the glossary auto-linking filter is enabled, entries will be automatically linked where the concept words and/or phrases appear within the course.</p>\n\n<p>A teacher can allow comments on entries. Entries can also be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook.</p>\n\n<p>Glossaries have many uses, such as</p>\n\n<ul><li>A collaborative bank of key terms</li>\n<li>A ‘getting to know you’ space where new students add their name and personal details</li>\n<li>A ‘handy tips’ resource of best practice in a practical subject</li>\n<li>A sharing area of useful videos, images or sound files</li>\n<li>A revision resource of facts to remember</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/glossary/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(51,'d2d32d9e20004ebc54da549e4dc14b03','<p>The lesson activity module enables a teacher to deliver content and/or practice activities in  interesting and flexible ways. A teacher can use the lesson to create a linear set of content pages or instructional activities that offer a variety of paths or options for the learner. In either case, teachers can choose to increase engagement and ensure understanding by including a variety of questions, such as multiple choice, matching and short answer. Depending on the student\'s choice of answer and how the teacher develops the lesson, students may progress to the next page, be taken back to a previous page or redirected down a different path entirely.</p>\n\n<p>A lesson may be graded, with the grade recorded in the gradebook.</p>\n\n<p>Lessons may be used</p>\n\n<ul><li>For self-directed learning of a new topic</li>\n<li>For  scenarios or simulations/decision-making exercises</li>\n<li>For differentiated revision, with different sets of revision questions depending upon answers given to initial questions</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/lesson/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(52,'36d7fae581c5f8070fd3487d0c4ab70a','<p>The quiz activity enables a teacher to create quizzes comprising questions of various types, including multiple choice, matching, short-answer and numerical.</p>\n\n<p>The teacher can allow the quiz to be attempted multiple times, with the questions shuffled or randomly selected from the question bank. A time limit may be set.</p>\n\n<p>Each attempt is marked automatically, with the exception of essay questions, and the grade is recorded in the gradebook.</p>\n\n<p>The teacher can choose when and if hints, feedback and correct answers are shown to students.</p>\n\n<p>Quizzes may be used</p>\n\n<ul><li>As course exams</li>\n<li>As mini tests for reading assignments or at the end of a topic</li>\n<li>As exam practice using questions from past exams</li>\n<li>To deliver immediate feedback about performance</li>\n<li>For self-assessment</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/quiz/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(53,'2871416315b6f67648241df091ca61e7','<p>A SCORM package is a collection of files which are packaged according to an agreed standard for learning objects. The SCORM activity module enables SCORM or AICC packages to be uploaded as a zip file and added to a course.</p>\n\n<p>Content is usually displayed over several pages, with navigation between the pages. There are various options for displaying content in a pop-up window, with a table of contents, with navigation buttons etc. SCORM activities generally include questions, with grades being recorded in the gradebook.</p>\n\n<p>SCORM activities may be used</p>\n\n<ul><li>For presenting multimedia content and animations</li>\n<li>As an assessment tool</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/scorm/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(54,'abf4f28038f16388c9c1edf862471ccc','<p>The survey activity module provides a number of verified survey instruments that have been found useful in assessing and stimulating learning in online environments. A teacher can use these to gather data from their students that will help them learn about their class and reflect on their own teaching.</p>\n\n<p>Note that these survey tools are pre-populated with questions. Teachers who wish to create their own survey should use the feedback activity module.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/survey/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(55,'a5a88346c8b22271a064b43ad24a7f68','<p>The wiki activity module enables participants to add and edit a collection of web pages. A wiki can be collaborative, with everyone being able to edit it, or individual, where everyone has their own wiki which only they can edit.</p>\n\n<p>A history of previous versions of each page in the wiki is kept, listing the edits made by each participant.</p>\n\n<p>Wikis have many uses, such as</p>\n\n<ul><li>For group lecture notes or study guides</li>\n<li>For members of a faculty to plan a scheme of work or meeting agenda together</li>\n<li>For students to collaboratively author an online book, creating content on a topic set by their tutor</li>\n<li>For collaborative storytelling or poetry creation, where each participant writes a line or verse</li>\n<li>As a personal journal for examination notes or revision (using an individual wiki)</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/wiki/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(56,'16548b56d6d8a243023d5dbaaa42deaa','<p>The workshop activity module enables the collection, review and peer assessment of students\' work.</p>\n\n<p>Students can submit any digital content (files), such as word-processed documents or spreadsheets and can also type text directly into a field using the text editor.</p>\n\n<p>Submissions are assessed using a multi-criteria assessment form defined by the teacher. The process of peer assessment and understanding the assessment form can be practised in advance with example submissions provided by the teacher, together with a reference assessment. Students are given the opportunity to assess one or more of their peers\' submissions. Submissions and reviewers may be anonymous if required.</p>\n\n<p>Students obtain two grades in a workshop activity - a grade for their submission and a grade for their assessment of their peers\' submissions. Both grades are recorded in the gradebook.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/workshop/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(57,'fa24e27dea644647ad0dd2929e9b07bc','<p>The book module enables a teacher to create a multi-page resource in a book-like format, with chapters and subchapters. Books can contain media files as well as text and are useful for displaying lengthy passages of information which can be broken down into sections.</p>\n\n<p>A book may be used</p>\n\n<ul><li>To display reading material for individual modules of study</li>\n<li>As a staff departmental handbook</li>\n<li>As a showcase portfolio of student work</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/book/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(58,'51772b543db5b3809b462265fc39e3a7','<p>The file module enables a teacher to provide a file as a course resource. Where possible, the file will be displayed within the course interface; otherwise students will be prompted to download it. The file may include supporting files, for example an HTML page may have embedded images or Flash objects.</p>\n\n<p>Note that students need to have the appropriate software on their computers in order to open the file.</p>\n\n<p>A file may be used</p>\n\n<ul><li>To share presentations given in class</li>\n<li>To include a mini website as a course resource</li>\n<li>To provide draft files of certain software programs (eg Photoshop .psd) so students can edit and submit them for assessment</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/resource/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(59,'07921d0c36d82657452a0477f407dd0a','<p>The folder module enables a teacher to display a number of related files inside a single folder, reducing scrolling on the course page. A zipped folder may be uploaded and unzipped for display, or an empty folder created and files uploaded into it.</p>\n\n<p>A folder may be used</p>\n\n<ul><li>For a series of files on one topic, for example a set of past examination papers in pdf format or a collection of image files for use in student projects</li>\n<li>To provide a shared uploading space for teachers on the course page (keeping the folder hidden so that only teachers can see it)</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/folder/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(60,'6b64391281ec47e1fd383df193109d8d','<p>An IMS content package is a collection of files which are packaged according to an agreed standard so they can be reused in different systems. The IMS content package module enables such content packages to be uploaded as a zip file and added to a course as a resource.</p>\n\n<p>Content is usually displayed over several pages, with navigation between the pages. There are various options for displaying content in a pop-up window, with a navigation menu or buttons etc.</p>\n\n<p>An IMS content package may be used for presenting multimedia content and animations.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/imscp/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(61,'7d6c0f4cb84efd7515621bb2d5fb7150','<p>The label module enables text and multimedia to be inserted into the course page in between links to other resources and activities. Labels are very versatile and can help to improve the appearance of a course if used thoughtfully.</p>\n\n<p>Labels may be used</p>\n\n<ul><li>To split up a long list of activities with a subheading or an image</li>\n<li>To display an embedded sound file or video directly on the course page</li>\n<li>To add a short description to a course section</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/label/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(62,'1071454795d2548d00e843bbef0562d2','<p>The page module enables a teacher to create a web page resource using the text editor. A page can display text, images, sound, video, web links and embedded code, such as Google maps.</p>\n\n<p>Advantages of using the page module rather than the file module include the resource being more accessible (for example to users of mobile devices) and easier to update.</p>\n\n<p>For large amounts of content, it\'s recommended that a book is used rather than a page.</p>\n\n<p>A page may be used</p>\n\n<ul><li>To present the terms and conditions of a course or a summary of the course syllabus</li>\n<li>To embed several videos or sound files together with some explanatory text</li>\n</ul><div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/page/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(63,'56226e7f9185a91370137eb8ee8a3cb2','<p>The URL module enables a teacher to provide a web link as a course resource. Anything that is freely available online, such as documents or images, can be linked to; the URL doesn’t have to be the home page of a website. The URL of a particular web page may be copied and pasted or a teacher can use the file picker and choose a link from a repository such as Flickr, YouTube or Wikimedia (depending upon which repositories are enabled for the site).</p>\n\n<p>There are a number of display options for the URL, such as embedded or opening in a new window and advanced options for passing information, such as a student\'s name, to the URL if required.</p>\n\n<p>Note that URLs can also be added to any other resource or activity type through the text editor.</p>\n\n<div class=\"helpdoclink\"><a href=\"http://docs.moodle.org/23/en/mod/url/view\"><img class=\"iconhelp\" alt=\"More help\" title=\"More help\" src=\"http://localhost/moodle231/theme/image.php/standard/core/1380699236/docs\" />More help</a></div>\n',1380703725),(64,'f9d96c769a61cb94c15d306d6cf7cb0d','<p>hello</p>',1380702603),(65,'c93d5ff8505502da7bbc44bd31781f71','<p>artasdf</p>',1380702604),(66,'156e1005df8488267b6e1bc86a4fb010','<p>erew</p>',1380702604),(67,'6992d3d19c3330acf152aa230197fd41','<p>asdf</p>',1380702604),(68,'bcd2d79f338802c5541bff362f0cbcca','<p>When players are enabled in these settings, files can be embedded using the media filter (if enabled) or using a File or URL resources with the Embed option. When not enabled, these formats are not embedded and users can manually download or follow links to these resources.</p>\n\n<p>Where two players support the same format, enabling both increases compatibility across different devices such as mobile phones. It is possible to increase compatibility further by providing multiple files in different formats for a single audio or video clip.</p>\n',1380702826),(69,'6ffe241cb903bd23c86c95402ef51743','<div class=\"no-overflow\"><div class=\"text_to_html\">The default category for questions shared in context \'Front page\'.</div></div>',1380725161),(70,'0135429d39d0403b586a46b962f6c6fd','<p>hello</p>',1380714525),(71,'1d5736f478927c3a9d4d7f172697466c','<p>125</p>',1380714588),(72,'82731795fbde2e9458e8dec9b4aaa667','<p>123</p>',1380714525),(73,'81b4aac41dc61954eb5fccf22127e10f','<p>124</p>',1380714525),(74,'33f9480c2000711ace3804f3424673b9','<p>artasdf</p>',1380714525),(75,'984d988daa14fde205ada8dc511e0e36','<p>asdf</p>',1380714588),(76,'37264e9c898f2411b4a12543715aaf33','<p>erew</p>',1380714525),(77,'31326557a57b454dff864891bbb5440d','<p>ergwerg</p>',1380714526),(78,'99fb3161e322987768db3571b800043c','<p>wergwe</p>',1380714588),(79,'22bdd4a617ded571ac352f02dce4b5c9','<p>ewrg</p>',1380714526),(80,'d9120efbd89c60083fc529785a6edbf3','<p>asdfasd</p>',1380714526),(81,'f0eb4be40cc3b6bddc7dbbb58c626c3b','<p>125</p>',1380714590),(82,'e3428e287997f1878bddabb1926172cd','<p>123</p>',1380714590),(83,'c81b9a0a578ad607602bc3d6c15e8c07','<p>124</p>',1380714590),(84,'14b2a74ca4ef745b5d520823b3130f40','<p>hello</p>',1380714590),(85,'dc913924ff0dbab59931c182ece4007c','<p>asdf</p>',1380714600),(86,'e1030874bb1c3a5f636238381b2dd4ed','<p>artasdf</p>',1380714600),(87,'789d56b77ef5c0afe7ec263231d22f18','<p>ergwerg</p>',1380714543),(88,'5f61bb4c2158986ef8d4f10b9fd27023','<p>wergwe</p>',1380714543),(89,'8ac671b9e17c6ee75976e38c12ed4ee5','<p>ewrg</p>',1380714543),(90,'f375de869fad9164a9c82efd9e07c721','<p>erew</p>',1380714543),(91,'a82c4b0cfbec73aac6d60d5d3af6030a','<p>asdfasd</p>',1380714551);
/*!40000 ALTER TABLE `mdl_cache_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_post`
--

DROP TABLE IF EXISTS `mdl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_post` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `moduleid` bigint(10) NOT NULL DEFAULT '0',
  `coursemoduleid` bigint(10) NOT NULL DEFAULT '0',
  `subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `uniquehash` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rating` bigint(10) NOT NULL DEFAULT '0',
  `format` bigint(10) NOT NULL DEFAULT '0',
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publishstate` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Generic post table to hold data blog entries etc in differen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_post`
--

LOCK TABLES `mdl_post` WRITE;
/*!40000 ALTER TABLE `mdl_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `preferredtitle` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `shared` tinyint(2) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT '0',
  `text` longtext COLLATE utf8_unicode_ci,
  `maxanswers` bigint(10) DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_valuetmp`
--

DROP TABLE IF EXISTS `mdl_feedback_valuetmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_valuetmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT '0',
  `item` bigint(10) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  `tmp_completed` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_feedvalu_cou2_ix` (`course_id`),
  KEY `mdl_feedvalu_ite2_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='values of the completedstmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_valuetmp`
--

LOCK TABLES `mdl_feedback_valuetmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types`
--

DROP TABLE IF EXISTS `mdl_lti_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'basiclti Activity',
  `baseurl` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tooldomain` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(2) NOT NULL DEFAULT '2',
  `course` bigint(10) NOT NULL,
  `coursevisible` tinyint(1) NOT NULL DEFAULT '0',
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitype_cou_ix` (`course`),
  KEY `mdl_ltitype_too_ix` (`tooldomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Basic LTI pre-configured activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types`
--

LOCK TABLES `mdl_lti_types` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_sortorder`
--

DROP TABLE IF EXISTS `mdl_role_sortorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_sortorder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='sort order of course managers in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_sortorder`
--

LOCK TABLES `mdl_role_sortorder` WRITE;
/*!40000 ALTER TABLE `mdl_role_sortorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_sortorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_folder`
--

DROP TABLE IF EXISTS `mdl_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_fold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each record is one folder resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_folder`
--

LOCK TABLES `mdl_folder` WRITE;
/*!40000 ALTER TABLE `mdl_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_lastaccess`
--

DROP TABLE IF EXISTS `mdl_user_lastaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_lastaccess` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeaccess` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To keep track of course page access times, used in online pa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_lastaccess`
--

LOCK TABLES `mdl_user_lastaccess` WRITE;
/*!40000 ALTER TABLE `mdl_user_lastaccess` DISABLE KEYS */;
INSERT INTO `mdl_user_lastaccess` VALUES (1,2,2,1380702826),(2,3,2,1380714588);
/*!40000 ALTER TABLE `mdl_user_lastaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_external`
--

DROP TABLE IF EXISTS `mdl_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `filtertags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) DEFAULT NULL,
  `timefetched` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_external`
--

LOCK TABLES `mdl_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_data`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoedata_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains variable data get from packages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_data`
--

LOCK TABLES `mdl_scorm_scoes_data` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question`
--

DROP TABLE IF EXISTS `mdl_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `questiontext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `generalfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `generalfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `defaultmark` decimal(12,7) NOT NULL DEFAULT '1.0000000',
  `penalty` decimal(12,7) NOT NULL DEFAULT '0.3333333',
  `qtype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `length` bigint(10) NOT NULL DEFAULT '1',
  `stamp` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `createdby` bigint(10) DEFAULT NULL,
  `modifiedby` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ques_cat_ix` (`category`),
  KEY `mdl_ques_par_ix` (`parent`),
  KEY `mdl_ques_cre_ix` (`createdby`),
  KEY `mdl_ques_mod_ix` (`modifiedby`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The questions themselves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question`
--

LOCK TABLES `mdl_question` WRITE;
/*!40000 ALTER TABLE `mdl_question` DISABLE KEYS */;
INSERT INTO `mdl_question` VALUES (1,1,0,'hhow','<p>hello</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002080423+LWiZDt','localhost+131002080423+n83lzF',0,1380701063,1380701063,2,2),(2,1,0,'oo','<p>artasdf</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002080511+0oxeui','localhost+131002080511+xjnYjP',0,1380701111,1380701111,2,2),(3,1,0,'q1','<p>erew</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002081023+KGzqx3','localhost+131002081024+P6KAs0',0,1380701423,1380701423,2,2),(4,1,0,'q2','<p>asdf</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002081133+8L81yn','localhost+131002081133+qSStqQ',0,1380701493,1380701493,2,2),(5,5,0,'hhow','<p>hello</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002083003+PlXF7p','localhost+131002083004+rzFQtZ',0,1380702603,1380702603,2,2),(6,5,0,'oo','<p>artasdf</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002083004+qNnAVx','localhost+131002083004+LOyZib',0,1380702604,1380702604,2,2),(7,5,0,'q1','<p>erew</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002083004+ln9lW9','localhost+131002083004+Gsh6BY',0,1380702604,1380702604,2,2),(8,5,0,'q2','<p>asdf</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+131002083004+W3NhYr','localhost+131002083005+BC7pPc',0,1380702604,1380702604,2,2),(9,9,0,'q1','<p>Что такое Functional Testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002115543+VDboPr','10.98.2.214+131002115543+SJDAHf',0,1380714943,1380714943,2,2),(10,9,0,'q2','<p>Что такое Change testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002115932+crxeqh','10.98.2.214+131002115932+oodUaw',0,1380715172,1380715172,2,2),(11,9,0,'q3','<p>Что такое Regression testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002120221+E4ds7r','10.98.2.214+131002120222+ENcA7E',0,1380715341,1380715341,2,2),(12,9,0,'q4','<p>Что такое Exploratory testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002133750+5rYwgo','10.98.2.214+131002133750+zeoEtp',0,1380721070,1380721070,2,2),(13,9,0,'q5','<p>Относится ли Usability testing к Нефункциональному тестированию</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002134003+Vadz1b','10.98.2.214+131002134003+1mhdqA',0,1380721203,1380721203,2,2),(14,9,0,'q6','<p>Чем Load Testing отличается от Stress testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002134824+zlfEWP','10.98.2.214+131002134825+maXJvG',0,1380721704,1380721704,2,2),(15,9,0,'q7','<p>Укажите правильный пример Boundary testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002134936+IK75Qv','10.98.2.214+131002134937+FAknEM',0,1380721776,1380721776,2,2),(16,9,0,'q8','<p>Что такое Installation testing</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135210+QvAhq7','10.98.2.214+131002135210+p0Ivu2',0,1380721930,1380721930,2,2),(17,9,0,'q9','<p>В каком порядку по возрастанию количества тестируемых компонентов располагаются виды тестирования</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135334+W26UnF','10.98.2.214+131002135334+4pJPPa',0,1380722014,1380722014,2,2),(18,9,0,'q10','<p>Какие виды интерфейсов вы знаете</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135427+iXb4Bn','10.98.2.214+131002135428+IGkk9U',0,1380722067,1380722067,2,2),(19,9,0,'q11','<p>Выберите правильный список операционных систем</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135540+4m4rEu','10.98.2.214+131002135540+kPgm25',0,1380722140,1380722140,2,2),(20,9,0,'q12','<p>Что такое двух-звенная архитектура приложений</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135701+GKjkLE','10.98.2.214+131002135702+20uYWW',0,1380722221,1380722221,2,2),(21,9,0,'q13','<p>Может ли приложение открыть файл без участия операционной системы</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135757+RQ7hh7','10.98.2.214+131002135757+G5T1FR',0,1380722277,1380722277,2,2),(22,9,0,'q14','<p>Что такое вэб-сервисы</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002135845+lbyDyb','10.98.2.214+131002135845+LfQMT8',0,1380722325,1380722325,2,2),(23,9,0,'q15','<p>Что нужно чтобы пользователь мог просматривать интернет-сайт</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002140022+khF0eg','10.98.2.214+131002140022+Lqbj5n',0,1380722422,1380722422,2,2),(24,9,0,'q10','<p>Что такое баг</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002144001+LibmTv','10.98.2.214+131002144002+UOEvFQ',0,1380724801,1380724801,2,2),(25,9,0,'q17','<p>Что такое SQL</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002144242+WyTJ65','10.98.2.214+131002144242+9JAXWS',0,1380724962,1380724962,2,2),(26,9,0,'q18','<p>Как должен выглядеть запрос который выбирает из базы всех пациентов имя которых начинаются на букву m</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'10.98.2.214+131002144458+GSNp8C','10.98.2.214+131002144458+Vc76CM',0,1380725098,1380725098,2,2);
/*!40000 ALTER TABLE `mdl_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki`
--

DROP TABLE IF EXISTS `mdl_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Wiki',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `firstpagetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'First Page',
  `wikimode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'collaborative',
  `defaultformat` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'creole',
  `forceformat` tinyint(1) NOT NULL DEFAULT '1',
  `editbegin` bigint(10) NOT NULL DEFAULT '0',
  `editend` bigint(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_wiki_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores Wiki activity configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki`
--

LOCK TABLES `mdl_wiki` WRITE;
/*!40000 ALTER TABLE `mdl_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort`
--

DROP TABLE IF EXISTS `mdl_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort`
--

LOCK TABLES `mdl_cohort` WRITE;
/*!40000 ALTER TABLE `mdl_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_daily`
--

DROP TABLE IF EXISTS `mdl_stats_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statdail_cou_ix` (`courseid`),
  KEY `mdl_statdail_tim_ix` (`timeend`),
  KEY `mdl_statdail_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='to accumulate daily stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_daily`
--

LOCK TABLES `mdl_stats_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_settings`
--

DROP TABLE IF EXISTS `mdl_grade_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='gradebook settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_settings`
--

LOCK TABLES `mdl_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_states`
--

DROP TABLE IF EXISTS `mdl_question_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_states` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attempt` bigint(10) NOT NULL DEFAULT '0',
  `question` bigint(10) NOT NULL DEFAULT '0',
  `seq_number` mediumint(6) NOT NULL DEFAULT '0',
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT '0',
  `event` smallint(4) NOT NULL DEFAULT '0',
  `grade` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `raw_grade` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `penalty` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`id`),
  KEY `mdl_quesstat_att_ix` (`attempt`),
  KEY `mdl_quesstat_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores user responses to an attempt, and percentage grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_states`
--

LOCK TABLES `mdl_question_states` WRITE;
/*!40000 ALTER TABLE `mdl_question_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `optionid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_modules`
--

DROP TABLE IF EXISTS `mdl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT '0',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='modules available in the site';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_modules`
--

LOCK TABLES `mdl_modules` WRITE;
/*!40000 ALTER TABLE `mdl_modules` DISABLE KEYS */;
INSERT INTO `mdl_modules` VALUES (1,'assign',2012061700,60,0,'',1),(2,'assignment',2012061701,60,0,'',0),(3,'book',2012061700,0,0,'',1),(4,'chat',2012061700,300,0,'',1),(5,'choice',2012061700,0,0,'',1),(6,'data',2012061700,0,0,'',1),(7,'feedback',2012061700,0,0,'',0),(8,'folder',2012061700,0,0,'',1),(9,'forum',2012061700,60,0,'',1),(10,'glossary',2012061700,0,0,'',1),(11,'imscp',2012061700,0,0,'',1),(12,'label',2012061700,0,0,'',1),(13,'lesson',2012061700,0,0,'',1),(14,'lti',2012061700,0,0,'',1),(15,'page',2012061700,0,0,'',1),(16,'quiz',2012061700,60,0,'',1),(17,'resource',2012061700,0,0,'',1),(18,'scorm',2012061701,300,0,'',1),(19,'survey',2012061700,0,0,'',1),(20,'url',2012061700,0,0,'',1),(21,'wiki',2012061700,0,0,'',1),(22,'workshop',2012061700,60,0,'',1);
/*!40000 ALTER TABLE `mdl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz`
--

DROP TABLE IF EXISTS `mdl_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timelimit` bigint(10) NOT NULL DEFAULT '0',
  `overduehandling` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'autoabandon',
  `graceperiod` bigint(10) NOT NULL DEFAULT '0',
  `preferredbehaviour` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attempts` mediumint(6) NOT NULL DEFAULT '0',
  `attemptonlast` smallint(4) NOT NULL DEFAULT '0',
  `grademethod` smallint(4) NOT NULL DEFAULT '1',
  `decimalpoints` smallint(4) NOT NULL DEFAULT '2',
  `questiondecimalpoints` smallint(4) NOT NULL DEFAULT '-2',
  `reviewattempt` mediumint(6) NOT NULL DEFAULT '0',
  `reviewcorrectness` mediumint(6) NOT NULL DEFAULT '0',
  `reviewmarks` mediumint(6) NOT NULL DEFAULT '0',
  `reviewspecificfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `reviewgeneralfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `reviewrightanswer` mediumint(6) NOT NULL DEFAULT '0',
  `reviewoverallfeedback` mediumint(6) NOT NULL DEFAULT '0',
  `questionsperpage` bigint(10) NOT NULL DEFAULT '0',
  `navmethod` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'free',
  `shufflequestions` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '0',
  `questions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sumgrades` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `grade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `browsersecurity` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delay1` bigint(10) NOT NULL DEFAULT '0',
  `delay2` bigint(10) NOT NULL DEFAULT '0',
  `showuserpicture` smallint(4) NOT NULL DEFAULT '0',
  `showblocks` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quiz_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The settings for each quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz`
--

LOCK TABLES `mdl_quiz` WRITE;
/*!40000 ALTER TABLE `mdl_quiz` DISABLE KEYS */;
INSERT INTO `mdl_quiz` VALUES (1,2,'ttt','',1,0,0,0,'autoabandon',0,'deferredfeedback',0,0,1,2,-1,69904,4368,4368,4368,4368,4368,4368,1,'free',0,1,'3,4,0,0',2.00000,100.00000,0,1380702389,'','','-',0,0,0,0),(2,2,'yyyy','',1,0,0,0,'autoabandon',0,'deferredfeedback',0,0,1,2,-1,69904,4368,4368,4368,4368,4368,4368,1,'free',0,1,'5,0,6,0,7,0,8,0',4.00000,100.00000,0,1380702742,'','','-',0,0,0,0);
/*!40000 ALTER TABLE `mdl_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_rating`
--

DROP TABLE IF EXISTS `mdl_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_rating` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ratingarea` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `scaleid` bigint(10) NOT NULL,
  `rating` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_rati_comratconite_ix` (`component`,`ratingarea`,`contextid`,`itemid`),
  KEY `mdl_rati_con_ix` (`contextid`),
  KEY `mdl_rati_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='moodle ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_rating`
--

LOCK TABLES `mdl_rating` WRITE;
/*!40000 ALTER TABLE `mdl_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='all categories for glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_categories`
--

LOCK TABLES `mdl_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_grades`
--

DROP TABLE IF EXISTS `mdl_quiz_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quizgrad_use_ix` (`userid`),
  KEY `mdl_quizgrad_qui_ix` (`quiz`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the overall grade for each user on the quiz, based on';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_grades`
--

LOCK TABLES `mdl_quiz_grades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_grades` DISABLE KEYS */;
INSERT INTO `mdl_quiz_grades` VALUES (1,1,3,50.00000,1380701672),(2,2,3,25.00000,1380714588);
/*!40000 ALTER TABLE `mdl_quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag`
--

DROP TABLE IF EXISTS `mdl_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rawname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tagtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `flag` smallint(4) DEFAULT '0',
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tag_nam_uix` (`name`),
  KEY `mdl_tag_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tag table - this generic table will replace the old "tags" t';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag`
--

LOCK TABLES `mdl_tag` WRITE;
/*!40000 ALTER TABLE `mdl_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role`
--

DROP TABLE IF EXISTS `mdl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `archetype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`),
  UNIQUE KEY `mdl_role_nam_uix` (`name`),
  UNIQUE KEY `mdl_role_sho_uix` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='moodle roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role`
--

LOCK TABLES `mdl_role` WRITE;
/*!40000 ALTER TABLE `mdl_role` DISABLE KEYS */;
INSERT INTO `mdl_role` VALUES (1,'Manager','manager','Managers can access course and modify them, they usually do not participate in courses.',1,'manager'),(2,'Course creator','coursecreator','Course creators can create new courses.',2,'coursecreator'),(3,'Teacher','editingteacher','Teachers can do anything within a course, including changing the activities and grading students.',3,'editingteacher'),(4,'Non-editing teacher','teacher','Non-editing teachers can teach in courses and grade students, but may not alter activities.',4,'teacher'),(5,'Student','student','Students generally have fewer privileges within a course.',5,'student'),(6,'Guest','guest','Guests have minimal privileges and usually can not enter text anywhere.',6,'guest'),(7,'Authenticated user','user','All logged in users.',7,'user'),(8,'Authenticated user on frontpage','frontpage','All logged in users in the frontpage course.',8,'frontpage');
/*!40000 ALTER TABLE `mdl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `forumid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tracks each users untracked forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_track_prefs`
--

LOCK TABLES `mdl_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_aggregations`
--

DROP TABLE IF EXISTS `mdl_workshop_aggregations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_aggregations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `timegraded` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workaggr_woruse_uix` (`workshopid`,`userid`),
  KEY `mdl_workaggr_wor_ix` (`workshopid`),
  KEY `mdl_workaggr_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Aggregated grades for assessment are stored here. The aggreg';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_aggregations`
--

LOCK TABLES `mdl_workshop_aggregations` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_categories`
--

DROP TABLE IF EXISTS `mdl_question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `info` longtext COLLATE utf8_unicode_ci NOT NULL,
  `infoformat` tinyint(2) NOT NULL DEFAULT '0',
  `stamp` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  KEY `mdl_quescate_con_ix` (`contextid`),
  KEY `mdl_quescate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Categories are for grouping questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_categories`
--

LOCK TABLES `mdl_question_categories` WRITE;
/*!40000 ALTER TABLE `mdl_question_categories` DISABLE KEYS */;
INSERT INTO `mdl_question_categories` VALUES (1,'Default for Testing',17,'The default category for questions shared in context \'Testing\'.',0,'localhost+131002075738+xlsCjP',0,999),(2,'Default for Miscellaneous',3,'The default category for questions shared in context \'Miscellaneous\'.',0,'localhost+131002075738+Q51PAs',0,999),(3,'Default for System',1,'The default category for questions shared in context \'System\'.',0,'localhost+131002075738+2GpSrt',0,999),(4,'Default for ttt',23,'The default category for questions shared in context \'ttt\'.',0,'localhost+131002080945+rRw8oN',0,999),(5,'Hello',17,'',0,'localhost+131002083003+kKwGMT',0,999),(6,'Default for yyyy',24,'The default category for questions shared in context \'yyyy\'.',0,'localhost+131002083241+WIQqSF',0,999),(7,'Default for Front page',2,'The default category for questions shared in context \'Front page\'.',0,'10.98.2.214+131002114229+GU8q6j',0,999),(9,'step_testing',2,'',0,'10.98.2.214+131002114352+p6XF3u',0,999);
/*!40000 ALTER TABLE `mdl_question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_positions`
--

DROP TABLE IF EXISTS `mdl_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_positions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `pagetype` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subpage` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` smallint(4) NOT NULL,
  `region` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocposi_bloconpagsub_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_positions`
--

LOCK TABLES `mdl_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_tracking`
--

DROP TABLE IF EXISTS `mdl_feedback_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_tracking` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  `tmp_completed` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_feedtrac_use_ix` (`userid`),
  KEY `mdl_feedtrac_fee_ix` (`feedback`),
  KEY `mdl_feedtrac_com_ix` (`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='feedback trackingdata';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_tracking`
--

LOCK TABLES `mdl_feedback_tracking` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussions`
--

DROP TABLE IF EXISTS `mdl_forum_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `forum` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstpost` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '-1',
  `assessed` tinyint(1) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `usermodified` bigint(10) NOT NULL DEFAULT '0',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Forums are composed of discussions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussions`
--

LOCK TABLES `mdl_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_logs`
--

DROP TABLE IF EXISTS `mdl_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loglevel` smallint(4) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_logs`
--

LOCK TABLES `mdl_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_stockcomments_old`
--

DROP TABLE IF EXISTS `mdl_workshop_stockcomments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_stockcomments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `comments` longtext COLLATE utf8_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workstocold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_stockcomments table to be dropped later in M';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_stockcomments_old`
--

LOCK TABLES `mdl_workshop_stockcomments_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_stockcomments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_stockcomments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang`
--

DROP TABLE IF EXISTS `mdl_tool_customlang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `componentid` bigint(10) NOT NULL,
  `stringid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `original` longtext COLLATE utf8_unicode_ci NOT NULL,
  `master` longtext COLLATE utf8_unicode_ci,
  `local` longtext COLLATE utf8_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  `timecustomized` bigint(10) DEFAULT NULL,
  `outdated` smallint(3) DEFAULT '0',
  `modified` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolcust_lancomstr_uix` (`lang`,`componentid`,`stringid`),
  KEY `mdl_toolcust_com_ix` (`componentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains the working checkout of all strings and their custo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang`
--

LOCK TABLES `mdl_tool_customlang` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop`
--

DROP TABLE IF EXISTS `mdl_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(3) NOT NULL DEFAULT '0',
  `instructauthors` longtext COLLATE utf8_unicode_ci,
  `instructauthorsformat` smallint(3) NOT NULL DEFAULT '0',
  `instructreviewers` longtext COLLATE utf8_unicode_ci,
  `instructreviewersformat` smallint(3) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL,
  `phase` smallint(3) DEFAULT '0',
  `useexamples` tinyint(2) DEFAULT '0',
  `usepeerassessment` tinyint(2) DEFAULT '0',
  `useselfassessment` tinyint(2) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '80.00000',
  `gradinggrade` decimal(10,5) DEFAULT '20.00000',
  `strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `evaluation` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gradedecimals` smallint(3) DEFAULT '0',
  `nattachments` smallint(3) DEFAULT '0',
  `latesubmissions` tinyint(2) DEFAULT '0',
  `maxbytes` bigint(10) DEFAULT '100000',
  `examplesmode` smallint(3) DEFAULT '0',
  `submissionstart` bigint(10) DEFAULT '0',
  `submissionend` bigint(10) DEFAULT '0',
  `assessmentstart` bigint(10) DEFAULT '0',
  `assessmentend` bigint(10) DEFAULT '0',
  `phaseswitchassessment` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_work_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table keeps information about the module instances and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop`
--

LOCK TABLES `mdl_workshop` WRITE;
/*!40000 ALTER TABLE `mdl_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `criterionid` bigint(10) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `definitionformat` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrleve_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the columns of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_levels`
--

LOCK TABLES `mdl_gradingform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_courses`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `remoteid` bigint(10) NOT NULL,
  `categoryid` bigint(10) NOT NULL,
  `categoryname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `summaryformat` smallint(3) DEFAULT '0',
  `startdate` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Caches the information fetched via XML-RPC about courses on ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_courses`
--

LOCK TABLES `mdl_mnetservice_enrol_courses` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_sessions`
--

DROP TABLE IF EXISTS `mdl_question_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attemptid` bigint(10) NOT NULL DEFAULT '0',
  `questionid` bigint(10) NOT NULL DEFAULT '0',
  `newest` bigint(10) NOT NULL DEFAULT '0',
  `newgraded` bigint(10) NOT NULL DEFAULT '0',
  `sumpenalty` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `manualcomment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `manualcommentformat` tinyint(2) NOT NULL DEFAULT '0',
  `flagged` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quessess_attque_uix` (`attemptid`,`questionid`),
  KEY `mdl_quessess_att_ix` (`attemptid`),
  KEY `mdl_quessess_que_ix` (`questionid`),
  KEY `mdl_quessess_new_ix` (`newest`),
  KEY `mdl_quessess_new2_ix` (`newgraded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gives ids of the newest open and newest graded states';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_sessions`
--

LOCK TABLES `mdl_question_sessions` WRITE;
/*!40000 ALTER TABLE `mdl_question_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_log`
--

DROP TABLE IF EXISTS `mdl_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  `oldvalue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_conflog_tim_ix` (`timemodified`),
  KEY `mdl_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=772 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_log`
--

LOCK TABLES `mdl_config_log` WRITE;
/*!40000 ALTER TABLE `mdl_config_log` DISABLE KEYS */;
INSERT INTO `mdl_config_log` VALUES (1,0,1380698851,NULL,'enableoutcomes','0',NULL),(2,0,1380698851,NULL,'usecomments','1',NULL),(3,0,1380698851,NULL,'usetags','1',NULL),(4,0,1380698851,NULL,'enablenotes','1',NULL),(5,0,1380698851,NULL,'enableportfolios','0',NULL),(6,0,1380698851,NULL,'enablewebservices','0',NULL),(7,0,1380698851,NULL,'messaging','1',NULL),(8,0,1380698851,NULL,'messaginghidereadnotifications','0',NULL),(9,0,1380698851,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(10,0,1380698851,NULL,'messagingallowemailoverride','0',NULL),(11,0,1380698851,NULL,'enablestats','0',NULL),(12,0,1380698851,NULL,'enablerssfeeds','0',NULL),(13,0,1380698851,NULL,'bloglevel','4',NULL),(14,0,1380698851,NULL,'enablecompletion','0',NULL),(15,0,1380698851,NULL,'enableavailability','0',NULL),(16,0,1380698851,NULL,'enableplagiarism','0',NULL),(17,0,1380698851,NULL,'autologinguests','0',NULL),(18,0,1380698852,NULL,'hiddenuserfields','',NULL),(19,0,1380698852,NULL,'showuseridentity','email',NULL),(20,0,1380698852,NULL,'enablegravatar','0',NULL),(21,0,1380698852,'moodlecourse','format','weeks',NULL),(22,0,1380698852,'moodlecourse','maxsections','52',NULL),(23,0,1380698852,'moodlecourse','numsections','10',NULL),(24,0,1380698852,'moodlecourse','hiddensections','0',NULL),(25,0,1380698852,'moodlecourse','newsitems','5',NULL),(26,0,1380698852,'moodlecourse','showgrades','1',NULL),(27,0,1380698852,'moodlecourse','showreports','0',NULL),(28,0,1380698852,'moodlecourse','maxbytes','2097152',NULL),(29,0,1380698852,'moodlecourse','groupmode','0',NULL),(30,0,1380698852,'moodlecourse','groupmodeforce','0',NULL),(31,0,1380698852,'moodlecourse','visible','1',NULL),(32,0,1380698852,'moodlecourse','lang','',NULL),(33,0,1380698852,'moodlecourse','enablecompletion','0',NULL),(34,0,1380698852,'moodlecourse','completionstartonenrol','0',NULL),(35,0,1380698852,NULL,'enablecourserequests','0',NULL),(36,0,1380698853,NULL,'defaultrequestcategory','1',NULL),(37,0,1380698853,NULL,'courserequestnotify','',NULL),(38,0,1380698853,'backup','loglifetime','30',NULL),(39,0,1380698853,'backup','backup_general_users','1',NULL),(40,0,1380698853,'backup','backup_general_users_locked','0',NULL),(41,0,1380698853,'backup','backup_general_anonymize','0',NULL),(42,0,1380698853,'backup','backup_general_anonymize_locked','0',NULL),(43,0,1380698854,'backup','backup_general_role_assignments','1',NULL),(44,0,1380698854,'backup','backup_general_role_assignments_locked','0',NULL),(45,0,1380698854,'backup','backup_general_activities','1',NULL),(46,0,1380698854,'backup','backup_general_activities_locked','0',NULL),(47,0,1380698854,'backup','backup_general_blocks','1',NULL),(48,0,1380698854,'backup','backup_general_blocks_locked','0',NULL),(49,0,1380698854,'backup','backup_general_filters','1',NULL),(50,0,1380698854,'backup','backup_general_filters_locked','0',NULL),(51,0,1380698854,'backup','backup_general_comments','1',NULL),(52,0,1380698854,'backup','backup_general_comments_locked','0',NULL),(53,0,1380698854,'backup','backup_general_userscompletion','1',NULL),(54,0,1380698854,'backup','backup_general_userscompletion_locked','0',NULL),(55,0,1380698854,'backup','backup_general_logs','0',NULL),(56,0,1380698854,'backup','backup_general_logs_locked','0',NULL),(57,0,1380698854,'backup','backup_general_histories','0',NULL),(58,0,1380698854,'backup','backup_general_histories_locked','0',NULL),(59,0,1380698854,'backup','backup_auto_active','0',NULL),(60,0,1380698854,'backup','backup_auto_weekdays','0000000',NULL),(61,0,1380698854,'backup','backup_auto_hour','0',NULL),(62,0,1380698854,'backup','backup_auto_minute','0',NULL),(63,0,1380698854,'backup','backup_auto_storage','0',NULL),(64,0,1380698854,'backup','backup_auto_destination','',NULL),(65,0,1380698855,'backup','backup_auto_keep','1',NULL),(66,0,1380698855,'backup','backup_shortname','0',NULL),(67,0,1380698855,'backup','backup_auto_users','1',NULL),(68,0,1380698855,'backup','backup_auto_role_assignments','1',NULL),(69,0,1380698855,'backup','backup_auto_activities','1',NULL),(70,0,1380698855,'backup','backup_auto_blocks','1',NULL),(71,0,1380698855,'backup','backup_auto_filters','1',NULL),(72,0,1380698855,'backup','backup_auto_comments','1',NULL),(73,0,1380698855,'backup','backup_auto_userscompletion','1',NULL),(74,0,1380698855,'backup','backup_auto_logs','0',NULL),(75,0,1380698855,'backup','backup_auto_histories','0',NULL),(76,0,1380698855,NULL,'grade_profilereport','user',NULL),(77,0,1380698855,NULL,'grade_aggregationposition','1',NULL),(78,0,1380698855,NULL,'grade_includescalesinaggregation','1',NULL),(79,0,1380698855,NULL,'grade_hiddenasdate','0',NULL),(80,0,1380698855,NULL,'gradepublishing','0',NULL),(81,0,1380698855,NULL,'grade_export_displaytype','1',NULL),(82,0,1380698855,NULL,'grade_export_decimalpoints','2',NULL),(83,0,1380698855,NULL,'grade_navmethod','0',NULL),(84,0,1380698856,NULL,'recovergradesdefault','0',NULL),(85,0,1380698856,NULL,'gradeexport','',NULL),(86,0,1380698856,NULL,'unlimitedgrades','0',NULL),(87,0,1380698856,NULL,'grade_hideforcedsettings','1',NULL),(88,0,1380698856,NULL,'grade_aggregation','11',NULL),(89,0,1380698856,NULL,'grade_aggregation_flag','0',NULL),(90,0,1380698856,NULL,'grade_aggregations_visible','0,10,11,12,2,4,6,8,13',NULL),(91,0,1380698856,NULL,'grade_aggregateonlygraded','1',NULL),(92,0,1380698856,NULL,'grade_aggregateonlygraded_flag','2',NULL),(93,0,1380698856,NULL,'grade_aggregateoutcomes','0',NULL),(94,0,1380698856,NULL,'grade_aggregateoutcomes_flag','2',NULL),(95,0,1380698856,NULL,'grade_aggregatesubcats','0',NULL),(96,0,1380698856,NULL,'grade_aggregatesubcats_flag','2',NULL),(97,0,1380698856,NULL,'grade_keephigh','0',NULL),(98,0,1380698856,NULL,'grade_keephigh_flag','3',NULL),(99,0,1380698856,NULL,'grade_droplow','0',NULL),(100,0,1380698856,NULL,'grade_droplow_flag','2',NULL),(101,0,1380698856,NULL,'grade_displaytype','1',NULL),(102,0,1380698856,NULL,'grade_decimalpoints','2',NULL),(103,0,1380698857,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(104,0,1380698857,NULL,'grade_report_studentsperpage','100',NULL),(105,0,1380698857,NULL,'grade_report_quickgrading','1',NULL),(106,0,1380698857,NULL,'grade_report_showquickfeedback','0',NULL),(107,0,1380698857,NULL,'grade_report_fixedstudents','0',NULL),(108,0,1380698857,NULL,'grade_report_meanselection','1',NULL),(109,0,1380698857,NULL,'grade_report_enableajax','0',NULL),(110,0,1380698857,NULL,'grade_report_showcalculations','0',NULL),(111,0,1380698857,NULL,'grade_report_showeyecons','0',NULL),(112,0,1380698857,NULL,'grade_report_showaverages','1',NULL),(113,0,1380698857,NULL,'grade_report_showlocks','0',NULL),(114,0,1380698857,NULL,'grade_report_showranges','0',NULL),(115,0,1380698857,NULL,'grade_report_showanalysisicon','1',NULL),(116,0,1380698857,NULL,'grade_report_showuserimage','1',NULL),(117,0,1380698857,NULL,'grade_report_showactivityicons','1',NULL),(118,0,1380698857,NULL,'grade_report_shownumberofgrades','0',NULL),(119,0,1380698857,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(120,0,1380698858,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(121,0,1380698858,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(122,0,1380698858,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(123,0,1380698858,NULL,'grade_report_overview_showrank','0',NULL),(124,0,1380698858,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(125,0,1380698858,NULL,'grade_report_user_showrank','0',NULL),(126,0,1380698858,NULL,'grade_report_user_showpercentage','1',NULL),(127,0,1380698858,NULL,'grade_report_user_showgrade','1',NULL),(128,0,1380698858,NULL,'grade_report_user_showfeedback','1',NULL),(129,0,1380698858,NULL,'grade_report_user_showrange','1',NULL),(130,0,1380698858,NULL,'grade_report_user_showweight','0',NULL),(131,0,1380698858,NULL,'grade_report_user_showaverage','0',NULL),(132,0,1380698858,NULL,'grade_report_user_showlettergrade','0',NULL),(133,0,1380698858,NULL,'grade_report_user_rangedecimals','0',NULL),(134,0,1380698858,NULL,'grade_report_user_showhiddenitems','1',NULL),(135,0,1380698858,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(136,0,1380698858,NULL,'timezone','99',NULL),(137,0,1380698858,NULL,'forcetimezone','99',NULL),(138,0,1380698859,NULL,'country','0',NULL),(139,0,1380698859,NULL,'defaultcity','',NULL),(140,0,1380698859,NULL,'geoipfile','Z:\\home\\localhost\\moodle231_data\\moodledata/geoip/GeoLiteCity.dat',NULL),(141,0,1380698859,NULL,'googlemapkey','',NULL),(142,0,1380698859,NULL,'allcountrycodes','',NULL),(143,0,1380698859,NULL,'autolang','1',NULL),(144,0,1380698859,NULL,'lang','en',NULL),(145,0,1380698859,NULL,'langmenu','1',NULL),(146,0,1380698859,NULL,'langlist','',NULL),(147,0,1380698859,NULL,'langcache','1',NULL),(148,0,1380698859,NULL,'langstringcache','1',NULL),(149,0,1380698859,NULL,'locale','',NULL),(150,0,1380698859,NULL,'latinexcelexport','0',NULL),(151,0,1380698859,NULL,'registerauth','',NULL),(152,0,1380698859,NULL,'authpreventaccountcreation','0',NULL),(153,0,1380698859,NULL,'loginpageautofocus','0',NULL),(154,0,1380698859,NULL,'guestloginbutton','1',NULL),(155,0,1380698859,NULL,'alternateloginurl','',NULL),(156,0,1380698859,NULL,'forgottenpasswordurl','',NULL),(157,0,1380698859,NULL,'auth_instructions','',NULL),(158,0,1380698859,NULL,'allowemailaddresses','',NULL),(159,0,1380698860,NULL,'denyemailaddresses','',NULL),(160,0,1380698860,NULL,'verifychangedemail','1',NULL),(161,0,1380698860,NULL,'recaptchapublickey','',NULL),(162,0,1380698860,NULL,'recaptchaprivatekey','',NULL),(163,0,1380698860,'enrol_database','dbtype','',NULL),(164,0,1380698860,'enrol_database','dbhost','localhost',NULL),(165,0,1380698860,'enrol_database','dbuser','',NULL),(166,0,1380698860,'enrol_database','dbpass','',NULL),(167,0,1380698860,'enrol_database','dbname','',NULL),(168,0,1380698860,'enrol_database','dbencoding','utf-8',NULL),(169,0,1380698860,'enrol_database','dbsetupsql','',NULL),(170,0,1380698860,'enrol_database','dbsybasequoting','0',NULL),(171,0,1380698860,'enrol_database','debugdb','0',NULL),(172,0,1380698860,'enrol_database','localcoursefield','idnumber',NULL),(173,0,1380698860,'enrol_database','localuserfield','idnumber',NULL),(174,0,1380698860,'enrol_database','localrolefield','shortname',NULL),(175,0,1380698860,'enrol_database','localcategoryfield','id',NULL),(176,0,1380698860,'enrol_database','remoteenroltable','',NULL),(177,0,1380698860,'enrol_database','remotecoursefield','',NULL),(178,0,1380698860,'enrol_database','remoteuserfield','',NULL),(179,0,1380698860,'enrol_database','remoterolefield','',NULL),(180,0,1380698860,'enrol_database','ignorehiddencourses','0',NULL),(181,0,1380698861,'enrol_database','unenrolaction','0',NULL),(182,0,1380698861,'enrol_database','newcoursetable','',NULL),(183,0,1380698861,'enrol_database','newcoursefullname','fullname',NULL),(184,0,1380698861,'enrol_database','newcourseshortname','shortname',NULL),(185,0,1380698861,'enrol_database','newcourseidnumber','idnumber',NULL),(186,0,1380698861,'enrol_database','newcoursecategory','',NULL),(187,0,1380698861,'enrol_database','templatecourse','',NULL),(188,0,1380698861,'enrol_flatfile','location','',NULL),(189,0,1380698861,'enrol_flatfile','mailstudents','0',NULL),(190,0,1380698861,'enrol_flatfile','mailteachers','0',NULL),(191,0,1380698861,'enrol_flatfile','mailadmins','0',NULL),(192,0,1380698861,'enrol_guest','requirepassword','0',NULL),(193,0,1380698861,'enrol_guest','usepasswordpolicy','0',NULL),(194,0,1380698861,'enrol_guest','showhint','0',NULL),(195,0,1380698861,'enrol_guest','defaultenrol','1',NULL),(196,0,1380698861,'enrol_guest','status','1',NULL),(197,0,1380698861,'enrol_guest','status_adv','0',NULL),(198,0,1380698861,'enrol_imsenterprise','imsfilelocation','',NULL),(199,0,1380698861,'enrol_imsenterprise','logtolocation','',NULL),(200,0,1380698861,'enrol_imsenterprise','mailadmins','0',NULL),(201,0,1380698861,'enrol_imsenterprise','createnewusers','0',NULL),(202,0,1380698861,'enrol_imsenterprise','imsdeleteusers','0',NULL),(203,0,1380698862,'enrol_imsenterprise','fixcaseusernames','0',NULL),(204,0,1380698862,'enrol_imsenterprise','fixcasepersonalnames','0',NULL),(205,0,1380698862,'enrol_imsenterprise','imssourcedidfallback','0',NULL),(206,0,1380698862,'enrol_imsenterprise','truncatecoursecodes','0',NULL),(207,0,1380698862,'enrol_imsenterprise','createnewcourses','0',NULL),(208,0,1380698862,'enrol_imsenterprise','createnewcategories','0',NULL),(209,0,1380698862,'enrol_imsenterprise','imsunenrol','0',NULL),(210,0,1380698862,'enrol_imsenterprise','imsrestricttarget','',NULL),(211,0,1380698862,'enrol_imsenterprise','imscapitafix','0',NULL),(212,0,1380698862,'enrol_manual','defaultenrol','1',NULL),(213,0,1380698862,'enrol_manual','status','0',NULL),(214,0,1380698862,'enrol_manual','enrolperiod','0',NULL),(215,0,1380698862,'enrol_paypal','paypalbusiness','',NULL),(216,0,1380698862,'enrol_paypal','mailstudents','0',NULL),(217,0,1380698862,'enrol_paypal','mailteachers','0',NULL),(218,0,1380698862,'enrol_paypal','mailadmins','0',NULL),(219,0,1380698862,'enrol_paypal','status','1',NULL),(220,0,1380698862,'enrol_paypal','cost','0',NULL),(221,0,1380698862,'enrol_paypal','currency','USD',NULL),(222,0,1380698863,'enrol_paypal','enrolperiod','0',NULL),(223,0,1380698863,'enrol_self','requirepassword','0',NULL),(224,0,1380698863,'enrol_self','usepasswordpolicy','0',NULL),(225,0,1380698863,'enrol_self','showhint','0',NULL),(226,0,1380698863,'enrol_self','defaultenrol','1',NULL),(227,0,1380698863,'enrol_self','status','1',NULL),(228,0,1380698863,'enrol_self','groupkey','0',NULL),(229,0,1380698863,'enrol_self','enrolperiod','0',NULL),(230,0,1380698863,'enrol_self','longtimenosee','0',NULL),(231,0,1380698863,'enrol_self','maxenrolled','0',NULL),(232,0,1380698863,'enrol_self','sendcoursewelcomemessage','1',NULL),(233,0,1380698863,'editor_tinymce','spellengine','GoogleSpell',NULL),(234,0,1380698863,'editor_tinymce','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv',NULL),(235,0,1380698863,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings',NULL),(236,0,1380698864,NULL,'sitedefaultlicense','allrightsreserved',NULL),(237,0,1380698864,NULL,'cachetext','60',NULL),(238,0,1380698864,NULL,'filteruploadedfiles','0',NULL),(239,0,1380698864,NULL,'filtermatchoneperpage','0',NULL),(240,0,1380698864,NULL,'filtermatchonepertext','0',NULL),(241,0,1380698864,'filter_urltolink','formats','0',NULL),(242,0,1380698864,'filter_urltolink','embedimages','1',NULL),(243,0,1380698864,'filter_emoticon','formats','1,4,0',NULL),(244,0,1380698864,NULL,'filter_multilang_force_old','0',NULL),(245,0,1380698864,NULL,'filter_tex_latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n',NULL),(246,0,1380698865,NULL,'filter_tex_latexbackground','#FFFFFF',NULL),(247,0,1380698865,NULL,'filter_tex_density','120',NULL),(248,0,1380698865,NULL,'filter_tex_pathlatex','\"c:\\texmf\\miktex\\bin\\latex.exe\" ',NULL),(249,0,1380698865,NULL,'filter_tex_pathdvips','\"c:\\texmf\\miktex\\bin\\dvips.exe\" ',NULL),(250,0,1380698865,NULL,'filter_tex_pathconvert','\"c:\\imagemagick\\convert.exe\" ',NULL),(251,0,1380698865,NULL,'filter_tex_convertformat','gif',NULL),(252,0,1380698865,NULL,'filter_censor_badwords','',NULL),(253,0,1380698865,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(254,0,1380698865,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(255,0,1380698865,NULL,'portfolio_moderate_db_threshold','20',NULL),(256,0,1380698865,NULL,'portfolio_high_db_threshold','50',NULL),(257,0,1380698865,NULL,'repositorycacheexpire','120',NULL),(258,0,1380698865,NULL,'repositoryallowexternallinks','1',NULL),(259,0,1380698865,NULL,'legacyfilesinnewcourses','0',NULL),(260,0,1380698865,NULL,'enablewsdocumentation','0',NULL),(261,0,1380698865,NULL,'allowbeforeblock','0',NULL),(262,0,1380698865,NULL,'allowedip','',NULL),(263,0,1380698865,NULL,'blockedip','',NULL),(264,0,1380698865,NULL,'protectusernames','1',NULL),(265,0,1380698865,NULL,'forcelogin','0',NULL),(266,0,1380698865,NULL,'forceloginforprofiles','1',NULL),(267,0,1380698865,NULL,'forceloginforprofileimage','0',NULL),(268,0,1380698866,NULL,'opentogoogle','0',NULL),(269,0,1380698866,NULL,'maxbytes','0',NULL),(270,0,1380698866,NULL,'userquota','104857600',NULL),(271,0,1380698866,NULL,'allowobjectembed','0',NULL),(272,0,1380698866,NULL,'enabletrusttext','0',NULL),(273,0,1380698866,NULL,'maxeditingtime','1800',NULL),(274,0,1380698866,NULL,'fullnamedisplay','language',NULL),(275,0,1380698866,NULL,'extendedusernamechars','0',NULL),(276,0,1380698866,NULL,'sitepolicy','',NULL),(277,0,1380698866,NULL,'sitepolicyguest','',NULL),(278,0,1380698866,NULL,'keeptagnamecase','1',NULL),(279,0,1380698866,NULL,'profilesforenrolledusersonly','1',NULL),(280,0,1380698866,NULL,'cronclionly','0',NULL),(281,0,1380698866,NULL,'cronremotepassword','',NULL),(282,0,1380698866,NULL,'passwordpolicy','1',NULL),(283,0,1380698866,NULL,'minpasswordlength','8',NULL),(284,0,1380698866,NULL,'minpassworddigits','1',NULL),(285,0,1380698866,NULL,'minpasswordlower','1',NULL),(286,0,1380698866,NULL,'minpasswordupper','1',NULL),(287,0,1380698866,NULL,'minpasswordnonalphanum','1',NULL),(288,0,1380698866,NULL,'maxconsecutiveidentchars','0',NULL),(289,0,1380698866,NULL,'groupenrolmentkeypolicy','1',NULL),(290,0,1380698867,NULL,'disableuserimages','0',NULL),(291,0,1380698867,NULL,'emailchangeconfirmation','1',NULL),(292,0,1380698867,NULL,'rememberusername','2',NULL),(293,0,1380698867,NULL,'strictformsrequired','0',NULL),(294,0,1380698867,NULL,'loginhttps','0',NULL),(295,0,1380698867,NULL,'cookiesecure','0',NULL),(296,0,1380698867,NULL,'cookiehttponly','0',NULL),(297,0,1380698867,NULL,'allowframembedding','0',NULL),(298,0,1380698867,NULL,'loginpasswordautocomplete','0',NULL),(299,0,1380698867,NULL,'displayloginfailures','',NULL),(300,0,1380698867,NULL,'notifyloginfailures','',NULL),(301,0,1380698867,NULL,'notifyloginthreshold','10',NULL),(302,0,1380698867,NULL,'runclamonupload','0',NULL),(303,0,1380698867,NULL,'pathtoclam','',NULL),(304,0,1380698867,NULL,'quarantinedir','',NULL),(305,0,1380698867,NULL,'clamfailureonupload','donothing',NULL),(306,0,1380698867,NULL,'themelist','',NULL),(307,0,1380698867,NULL,'themedesignermode','0',NULL),(308,0,1380698867,NULL,'allowuserthemes','0',NULL),(309,0,1380698868,NULL,'allowcoursethemes','0',NULL),(310,0,1380698868,NULL,'allowcategorythemes','0',NULL),(311,0,1380698868,NULL,'allowthemechangeonurl','0',NULL),(312,0,1380698868,NULL,'allowuserblockhiding','1',NULL),(313,0,1380698868,NULL,'allowblockstodock','1',NULL),(314,0,1380698868,NULL,'custommenuitems','',NULL),(315,0,1380698868,NULL,'enabledevicedetection','1',NULL),(316,0,1380698868,NULL,'devicedetectregex','[]',NULL),(317,0,1380698868,'theme_afterburner','logo','',NULL),(318,0,1380698868,'theme_afterburner','footnote','',NULL),(319,0,1380698868,'theme_afterburner','customcss','',NULL),(320,0,1380698868,'theme_arialist','logo','',NULL),(321,0,1380698868,'theme_arialist','tagline','',NULL),(322,0,1380698868,'theme_arialist','linkcolor','#f25f0f',NULL),(323,0,1380698868,'theme_arialist','regionwidth','250',NULL),(324,0,1380698868,'theme_arialist','customcss','',NULL),(325,0,1380698868,'theme_brick','logo','',NULL),(326,0,1380698869,'theme_brick','linkcolor','#06365b',NULL),(327,0,1380698869,'theme_brick','linkhover','#5487ad',NULL),(328,0,1380698869,'theme_brick','maincolor','#8e2800',NULL),(329,0,1380698869,'theme_brick','maincolorlink','#fff0a5',NULL),(330,0,1380698869,'theme_brick','headingcolor','#5c3500',NULL),(331,0,1380698869,'theme_formal_white','fontsizereference','13',NULL),(332,0,1380698869,'theme_formal_white','noframe','0',NULL),(333,0,1380698869,'theme_formal_white','framemargin','15',NULL),(334,0,1380698869,'theme_formal_white','headercontent','1',NULL),(335,0,1380698869,'theme_formal_white','customlogourl','',NULL),(336,0,1380698869,'theme_formal_white','frontpagelogourl','',NULL),(337,0,1380698869,'theme_formal_white','headerbgc','#E3DFD4',NULL),(338,0,1380698869,'theme_formal_white','creditstomoodleorg','2',NULL),(339,0,1380698869,'theme_formal_white','blockcolumnwidth','200',NULL),(340,0,1380698869,'theme_formal_white','blockpadding','8',NULL),(341,0,1380698869,'theme_formal_white','blockcontentbgc','#F6F6F6',NULL),(342,0,1380698870,'theme_formal_white','lblockcolumnbgc','#E3DFD4',NULL),(343,0,1380698870,'theme_formal_white','rblockcolumnbgc','',NULL),(344,0,1380698870,'theme_formal_white','footnote','',NULL),(345,0,1380698870,'theme_formal_white','customcss','',NULL),(346,0,1380698870,'theme_fusion','linkcolor','#2d83d5',NULL),(347,0,1380698870,'theme_fusion','tagline','',NULL),(348,0,1380698870,'theme_fusion','footertext','',NULL),(349,0,1380698870,'theme_fusion','customcss','',NULL),(350,0,1380698870,'theme_magazine','background','',NULL),(351,0,1380698870,'theme_magazine','logo','',NULL),(352,0,1380698870,'theme_magazine','linkcolor','#32529a',NULL),(353,0,1380698870,'theme_magazine','linkhover','#4e2300',NULL),(354,0,1380698870,'theme_magazine','maincolor','#002f2f',NULL),(355,0,1380698870,'theme_magazine','maincoloraccent','#092323',NULL),(356,0,1380698870,'theme_magazine','headingcolor','#4e0000',NULL),(357,0,1380698870,'theme_magazine','blockcolor','#002f2f',NULL),(358,0,1380698870,'theme_magazine','forumback','#e6e2af',NULL),(359,0,1380698870,'theme_mymobile','colourswatch','light',NULL),(360,0,1380698870,'theme_mymobile','showmobileintro','',NULL),(361,0,1380698870,'theme_mymobile','showsitetopic','topicshow',NULL),(362,0,1380698871,'theme_mymobile','showfullsizeimages','ithumb',NULL),(363,0,1380698871,'theme_mymobile','usetableview','tabshow',NULL),(364,0,1380698871,'theme_mymobile','customcss','',NULL),(365,0,1380698871,'theme_nimble','tagline','',NULL),(366,0,1380698871,'theme_nimble','footerline','',NULL),(367,0,1380698871,'theme_nimble','backgroundcolor','#454545',NULL),(368,0,1380698871,'theme_nimble','linkcolor','#2a65b1',NULL),(369,0,1380698871,'theme_nimble','linkhover','#222222',NULL),(370,0,1380698871,'theme_nonzero','regionprewidth','200',NULL),(371,0,1380698871,'theme_nonzero','regionpostwidth','200',NULL),(372,0,1380698871,'theme_nonzero','customcss','',NULL),(373,0,1380698871,'theme_overlay','linkcolor','#428ab5',NULL),(374,0,1380698871,'theme_overlay','headercolor','#2a4c7b',NULL),(375,0,1380698871,'theme_overlay','footertext','',NULL),(376,0,1380698871,'theme_overlay','customcss','',NULL),(377,0,1380698871,'theme_sky_high','logo','',NULL),(378,0,1380698871,'theme_sky_high','regionwidth','240',NULL),(379,0,1380698871,'theme_sky_high','footnote','',NULL),(380,0,1380698871,'theme_sky_high','customcss','',NULL),(381,0,1380698871,'theme_splash','logo','',NULL),(382,0,1380698871,'theme_splash','tagline','Virtual learning center',NULL),(383,0,1380698872,'theme_splash','hide_tagline','0',NULL),(384,0,1380698872,'theme_splash','footnote','',NULL),(385,0,1380698872,'theme_splash','customcss','',NULL),(386,0,1380698872,NULL,'calendar_adminseesall','0',NULL),(387,0,1380698872,NULL,'calendar_site_timeformat','0',NULL),(388,0,1380698872,NULL,'calendar_startwday','0',NULL),(389,0,1380698872,NULL,'calendar_weekend','65',NULL),(390,0,1380698872,NULL,'calendar_lookahead','21',NULL),(391,0,1380698872,NULL,'calendar_maxevents','10',NULL),(392,0,1380698872,NULL,'enablecalendarexport','1',NULL),(393,0,1380698872,NULL,'calendar_exportsalt','PMfhFHAl3OYRKCNn2DqDHvIvBoK5pcLM1GP2bbbP1ySP7whhH9DblV4dnKvN',NULL),(394,0,1380698872,NULL,'useblogassociations','1',NULL),(395,0,1380698872,NULL,'useexternalblogs','1',NULL),(396,0,1380698872,NULL,'externalblogcrontime','86400',NULL),(397,0,1380698872,NULL,'maxexternalblogsperuser','1',NULL),(398,0,1380698872,NULL,'blogusecomments','1',NULL),(399,0,1380698872,NULL,'blogshowcommentscount','1',NULL),(400,0,1380698872,NULL,'defaulthomepage','0',NULL),(401,0,1380698872,NULL,'navshowcategories','1',NULL),(402,0,1380698872,NULL,'navshowmycoursecategories','0',NULL),(403,0,1380698872,NULL,'navshowallcourses','0',NULL),(404,0,1380698872,NULL,'navcourselimit','20',NULL),(405,0,1380698873,NULL,'usesitenameforsitepages','0',NULL),(406,0,1380698873,NULL,'linkadmincategories','0',NULL),(407,0,1380698873,NULL,'navshowfrontpagemods','1',NULL),(408,0,1380698873,NULL,'navadduserpostslinks','1',NULL),(409,0,1380698873,NULL,'formatstringstriptags','1',NULL),(410,0,1380698873,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(411,0,1380698873,NULL,'core_media_enable_youtube','1',NULL),(412,0,1380698873,NULL,'core_media_enable_vimeo','0',NULL),(413,0,1380698873,NULL,'core_media_enable_mp3','1',NULL),(414,0,1380698873,NULL,'core_media_enable_flv','1',NULL),(415,0,1380698873,NULL,'core_media_enable_swf','1',NULL),(416,0,1380698873,NULL,'core_media_enable_html5audio','1',NULL),(417,0,1380698873,NULL,'core_media_enable_html5video','1',NULL),(418,0,1380698873,NULL,'core_media_enable_qt','1',NULL),(419,0,1380698873,NULL,'core_media_enable_wmp','1',NULL),(420,0,1380698873,NULL,'core_media_enable_rm','1',NULL),(421,0,1380698874,NULL,'docroot','http://docs.moodle.org',NULL),(422,0,1380698874,NULL,'doctonewwindow','0',NULL),(423,0,1380698874,NULL,'courselistshortnames','0',NULL),(424,0,1380698874,NULL,'enableajax','1',NULL),(425,0,1380698874,NULL,'useexternalyui','0',NULL),(426,0,1380698874,NULL,'yuicomboloading','1',NULL),(427,0,1380698874,NULL,'cachejs','1',NULL),(428,0,1380698874,NULL,'additionalhtmlhead','',NULL),(429,0,1380698874,NULL,'additionalhtmltopofbody','',NULL),(430,0,1380698874,NULL,'additionalhtmlfooter','',NULL),(431,0,1380698874,NULL,'gdversion','2',NULL),(432,0,1380698874,NULL,'pathtodu','',NULL),(433,0,1380698874,NULL,'aspellpath','',NULL),(434,0,1380698875,NULL,'pathtodot','',NULL),(435,0,1380698875,NULL,'supportpage','',NULL),(436,0,1380698875,NULL,'dbsessions','1',NULL),(437,0,1380698875,NULL,'sessioncookie','',NULL),(438,0,1380698875,NULL,'sessioncookiepath','',NULL),(439,0,1380698875,NULL,'sessioncookiedomain','',NULL),(440,0,1380698875,NULL,'statsfirstrun','none',NULL),(441,0,1380698875,NULL,'statsmaxruntime','0',NULL),(442,0,1380698875,NULL,'statsruntimedays','31',NULL),(443,0,1380698875,NULL,'statsruntimestarthour','0',NULL),(444,0,1380698875,NULL,'statsruntimestartminute','0',NULL),(445,0,1380698875,NULL,'statsuserthreshold','0',NULL),(446,0,1380698875,NULL,'slasharguments','1',NULL),(447,0,1380698876,NULL,'getremoteaddrconf','0',NULL),(448,0,1380698876,NULL,'proxyhost','',NULL),(449,0,1380698876,NULL,'proxyport','0',NULL),(450,0,1380698876,NULL,'proxytype','HTTP',NULL),(451,0,1380698876,NULL,'proxyuser','',NULL),(452,0,1380698876,NULL,'proxypassword','',NULL),(453,0,1380698876,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(454,0,1380698876,NULL,'maintenance_enabled','0',NULL),(455,0,1380698876,NULL,'maintenance_message','',NULL),(456,0,1380698876,NULL,'deleteunconfirmed','168',NULL),(457,0,1380698876,NULL,'deleteincompleteusers','0',NULL),(458,0,1380698876,NULL,'logguests','1',NULL),(459,0,1380698876,NULL,'loglifetime','0',NULL),(460,0,1380698876,NULL,'disablegradehistory','0',NULL),(461,0,1380698876,NULL,'gradehistorylifetime','0',NULL),(462,0,1380698876,NULL,'numcoursesincombo','500',NULL),(463,0,1380698876,NULL,'extramemorylimit','512M',NULL),(464,0,1380698877,NULL,'curlcache','120',NULL),(465,0,1380698877,NULL,'curltimeoutkbitrate','56',NULL),(466,0,1380698877,NULL,'updateautocheck','1',NULL),(467,0,1380698877,NULL,'updateminmaturity','200',NULL),(468,0,1380698877,NULL,'updatenotifybuilds','0',NULL),(469,0,1380698877,NULL,'enablesafebrowserintegration','0',NULL),(470,0,1380698877,NULL,'enablegroupmembersonly','0',NULL),(471,0,1380698877,NULL,'dndallowtextandlinks','0',NULL),(472,0,1380698877,NULL,'enablecssoptimiser','0',NULL),(473,0,1380698877,NULL,'debug','0',NULL),(474,0,1380698877,NULL,'debugdisplay','1',NULL),(475,0,1380698877,NULL,'xmlstrictheaders','0',NULL),(476,0,1380698877,NULL,'debugsmtp','0',NULL),(477,0,1380698877,NULL,'perfdebug','7',NULL),(478,0,1380698877,NULL,'debugstringids','0',NULL),(479,0,1380698877,NULL,'debugvalidators','0',NULL),(480,0,1380698877,NULL,'debugpageinfo','0',NULL),(481,2,1380699208,NULL,'notloggedinroleid','6',NULL),(482,2,1380699208,NULL,'guestroleid','6',NULL),(483,2,1380699208,NULL,'defaultuserroleid','7',NULL),(484,2,1380699208,NULL,'creatornewroleid','3',NULL),(485,2,1380699208,NULL,'restorernewroleid','3',NULL),(486,2,1380699208,NULL,'gradebookroles','5',NULL),(487,2,1380699208,'assign','feedback_plugin_for_gradebook','assignfeedback_comments',NULL),(488,2,1380699208,'assign','showrecentsubmissions','0',NULL),(489,2,1380699209,'assign','submissionreceipts','1',NULL),(490,2,1380699209,NULL,'assignment_maxbytes','1048576',NULL),(491,2,1380699209,NULL,'assignment_itemstocount','1',NULL),(492,2,1380699209,NULL,'assignment_showrecentsubmissions','1',NULL),(493,2,1380699209,'book','requiremodintro','1',NULL),(494,2,1380699209,'book','numberingoptions','0,1,2,3',NULL),(495,2,1380699209,'book','numbering','1',NULL),(496,2,1380699209,NULL,'chat_method','ajax',NULL),(497,2,1380699209,NULL,'chat_refresh_userlist','10',NULL),(498,2,1380699209,NULL,'chat_old_ping','35',NULL),(499,2,1380699209,NULL,'chat_refresh_room','5',NULL),(500,2,1380699209,NULL,'chat_normal_updatemode','jsupdate',NULL),(501,2,1380699209,NULL,'chat_serverhost','localhost',NULL),(502,2,1380699209,NULL,'chat_serverip','127.0.0.1',NULL),(503,2,1380699209,NULL,'chat_serverport','9111',NULL),(504,2,1380699209,NULL,'chat_servermax','100',NULL),(505,2,1380699210,NULL,'data_enablerssfeeds','0',NULL),(506,2,1380699210,NULL,'feedback_allowfullanonymous','0',NULL),(507,2,1380699210,'folder','requiremodintro','1',NULL),(508,2,1380699210,NULL,'forum_displaymode','3',NULL),(509,2,1380699210,NULL,'forum_replytouser','1',NULL),(510,2,1380699210,NULL,'forum_shortpost','300',NULL),(511,2,1380699210,NULL,'forum_longpost','600',NULL),(512,2,1380699210,NULL,'forum_manydiscussions','100',NULL),(513,2,1380699210,NULL,'forum_maxbytes','512000',NULL),(514,2,1380699210,NULL,'forum_maxattachments','9',NULL),(515,2,1380699210,NULL,'forum_trackreadposts','1',NULL),(516,2,1380699211,NULL,'forum_oldpostdays','14',NULL),(517,2,1380699211,NULL,'forum_usermarksread','0',NULL),(518,2,1380699211,NULL,'forum_cleanreadtime','2',NULL),(519,2,1380699211,NULL,'digestmailtime','17',NULL),(520,2,1380699211,NULL,'forum_enablerssfeeds','0',NULL),(521,2,1380699211,NULL,'forum_enabletimedposts','0',NULL),(522,2,1380699211,NULL,'glossary_entbypage','10',NULL),(523,2,1380699211,NULL,'glossary_dupentries','0',NULL),(524,2,1380699211,NULL,'glossary_allowcomments','0',NULL),(525,2,1380699211,NULL,'glossary_linkbydefault','1',NULL),(526,2,1380699211,NULL,'glossary_defaultapproval','1',NULL),(527,2,1380699212,NULL,'glossary_enablerssfeeds','0',NULL),(528,2,1380699212,NULL,'glossary_linkentries','0',NULL),(529,2,1380699212,NULL,'glossary_casesensitive','0',NULL),(530,2,1380699212,NULL,'glossary_fullmatch','0',NULL),(531,2,1380699212,'imscp','requiremodintro','1',NULL),(532,2,1380699212,'imscp','keepold','1',NULL),(533,2,1380699212,'imscp','keepold_adv','0',NULL),(534,2,1380699212,NULL,'lesson_slideshowwidth','640',NULL),(535,2,1380699212,NULL,'lesson_slideshowheight','480',NULL),(536,2,1380699212,NULL,'lesson_slideshowbgcolor','#FFFFFF',NULL),(537,2,1380699213,NULL,'lesson_mediawidth','640',NULL),(538,2,1380699213,NULL,'lesson_mediaheight','480',NULL),(539,2,1380699213,NULL,'lesson_mediaclose','0',NULL),(540,2,1380699213,NULL,'lesson_maxhighscores','10',NULL),(541,2,1380699213,NULL,'lesson_maxanswers','4',NULL),(542,2,1380699213,NULL,'lesson_defaultnextpage','0',NULL),(543,2,1380699213,'page','requiremodintro','1',NULL),(544,2,1380699213,'page','displayoptions','5',NULL),(545,2,1380699213,'page','printheading','1',NULL),(546,2,1380699213,'page','printheading_adv','0',NULL),(547,2,1380699213,'page','printintro','0',NULL),(548,2,1380699213,'page','printintro_adv','0',NULL),(549,2,1380699213,'page','display','5',NULL),(550,2,1380699214,'page','display_adv','1',NULL),(551,2,1380699214,'page','popupwidth','620',NULL),(552,2,1380699214,'page','popupwidth_adv','1',NULL),(553,2,1380699214,'page','popupheight','450',NULL),(554,2,1380699214,'page','popupheight_adv','1',NULL),(555,2,1380699214,'quiz','timelimit','0',NULL),(556,2,1380699214,'quiz','timelimit_adv','0',NULL),(557,2,1380699214,'quiz','overduehandling','autoabandon',NULL),(558,2,1380699214,'quiz','overduehandling_adv','0',NULL),(559,2,1380699215,'quiz','graceperiod','86400',NULL),(560,2,1380699215,'quiz','graceperiod_adv','0',NULL),(561,2,1380699215,'quiz','graceperiodmin','60',NULL),(562,2,1380699215,'quiz','attempts','0',NULL),(563,2,1380699215,'quiz','attempts_adv','0',NULL),(564,2,1380699215,'quiz','grademethod','1',NULL),(565,2,1380699215,'quiz','grademethod_adv','0',NULL),(566,2,1380699215,'quiz','maximumgrade','10',NULL),(567,2,1380699215,'quiz','shufflequestions','0',NULL),(568,2,1380699215,'quiz','shufflequestions_adv','0',NULL),(569,2,1380699215,'quiz','questionsperpage','1',NULL),(570,2,1380699216,'quiz','questionsperpage_adv','0',NULL),(571,2,1380699216,'quiz','navmethod','free',NULL),(572,2,1380699216,'quiz','navmethod_adv','1',NULL),(573,2,1380699216,'quiz','shuffleanswers','1',NULL),(574,2,1380699216,'quiz','shuffleanswers_adv','0',NULL),(575,2,1380699217,'quiz','preferredbehaviour','deferredfeedback',NULL),(576,2,1380699217,'quiz','attemptonlast','0',NULL),(577,2,1380699217,'quiz','attemptonlast_adv','1',NULL),(578,2,1380699217,'quiz','reviewattempt','69904',NULL),(579,2,1380699217,'quiz','reviewcorrectness','69904',NULL),(580,2,1380699217,'quiz','reviewmarks','69904',NULL),(581,2,1380699217,'quiz','reviewspecificfeedback','69904',NULL),(582,2,1380699217,'quiz','reviewgeneralfeedback','69904',NULL),(583,2,1380699217,'quiz','reviewrightanswer','69904',NULL),(584,2,1380699217,'quiz','reviewoverallfeedback','4368',NULL),(585,2,1380699217,'quiz','showuserpicture','0',NULL),(586,2,1380699217,'quiz','showuserpicture_adv','0',NULL),(587,2,1380699217,'quiz','decimalpoints','2',NULL),(588,2,1380699217,'quiz','decimalpoints_adv','0',NULL),(589,2,1380699217,'quiz','questiondecimalpoints','-1',NULL),(590,2,1380699217,'quiz','questiondecimalpoints_adv','0',NULL),(591,2,1380699218,'quiz','showblocks','0',NULL),(592,2,1380699218,'quiz','showblocks_adv','1',NULL),(593,2,1380699218,'quiz','password','',NULL),(594,2,1380699218,'quiz','password_adv','0',NULL),(595,2,1380699218,'quiz','subnet','',NULL),(596,2,1380699218,'quiz','subnet_adv','0',NULL),(597,2,1380699218,'quiz','delay1','0',NULL),(598,2,1380699218,'quiz','delay1_adv','0',NULL),(599,2,1380699218,'quiz','delay2','0',NULL),(600,2,1380699218,'quiz','delay2_adv','0',NULL),(601,2,1380699218,'quiz','browsersecurity','-',NULL),(602,2,1380699218,'quiz','browsersecurity_adv','1',NULL),(603,2,1380699218,'resource','framesize','130',NULL),(604,2,1380699219,'resource','requiremodintro','1',NULL),(605,2,1380699219,'resource','displayoptions','0,1,4,5,6',NULL),(606,2,1380699219,'resource','printheading','0',NULL),(607,2,1380699219,'resource','printheading_adv','0',NULL),(608,2,1380699219,'resource','printintro','1',NULL),(609,2,1380699219,'resource','printintro_adv','0',NULL),(610,2,1380699219,'resource','display','0',NULL),(611,2,1380699219,'resource','display_adv','0',NULL),(612,2,1380699219,'resource','showsize','0',NULL),(613,2,1380699219,'resource','showsize_adv','0',NULL),(614,2,1380699219,'resource','showtype','0',NULL),(615,2,1380699219,'resource','showtype_adv','0',NULL),(616,2,1380699219,'resource','popupwidth','620',NULL),(617,2,1380699219,'resource','popupwidth_adv','1',NULL),(618,2,1380699220,'resource','popupheight','450',NULL),(619,2,1380699220,'resource','popupheight_adv','1',NULL),(620,2,1380699220,'resource','filterfiles','0',NULL),(621,2,1380699220,'resource','filterfiles_adv','1',NULL),(622,2,1380699220,'scorm','displaycoursestructure','0',NULL),(623,2,1380699220,'scorm','displaycoursestructure_adv','0',NULL),(624,2,1380699220,'scorm','popup','0',NULL),(625,2,1380699220,'scorm','popup_adv','0',NULL),(626,2,1380699220,'scorm','framewidth','100',NULL),(627,2,1380699220,'scorm','framewidth_adv','1',NULL),(628,2,1380699220,'scorm','frameheight','500',NULL),(629,2,1380699220,'scorm','frameheight_adv','1',NULL),(630,2,1380699220,'scorm','winoptgrp_adv','1',NULL),(631,2,1380699220,'scorm','resizable','0',NULL),(632,2,1380699220,'scorm','scrollbars','0',NULL),(633,2,1380699221,'scorm','directories','0',NULL),(634,2,1380699221,'scorm','location','0',NULL),(635,2,1380699221,'scorm','menubar','0',NULL),(636,2,1380699221,'scorm','toolbar','0',NULL),(637,2,1380699221,'scorm','status','0',NULL),(638,2,1380699221,'scorm','skipview','0',NULL),(639,2,1380699221,'scorm','skipview_adv','1',NULL),(640,2,1380699221,'scorm','hidebrowse','0',NULL),(641,2,1380699221,'scorm','hidebrowse_adv','1',NULL),(642,2,1380699221,'scorm','hidetoc','0',NULL),(643,2,1380699221,'scorm','hidetoc_adv','1',NULL),(644,2,1380699221,'scorm','hidenav','0',NULL),(645,2,1380699221,'scorm','hidenav_adv','0',NULL),(646,2,1380699221,'scorm','grademethod','1',NULL),(647,2,1380699221,'scorm','grademethod_adv','0',NULL),(648,2,1380699222,'scorm','maxgrade','100',NULL),(649,2,1380699222,'scorm','maxgrade_adv','0',NULL),(650,2,1380699222,'scorm','maxattempt','0',NULL),(651,2,1380699222,'scorm','maxattempt_adv','0',NULL),(652,2,1380699222,'scorm','whatgrade','0',NULL),(653,2,1380699222,'scorm','whatgrade_adv','0',NULL),(654,2,1380699222,'scorm','displayattemptstatus','1',NULL),(655,2,1380699222,'scorm','displayattemptstatus_adv','0',NULL),(656,2,1380699222,'scorm','forcecompleted','0',NULL),(657,2,1380699222,'scorm','forcecompleted_adv','1',NULL),(658,2,1380699222,'scorm','forcenewattempt','0',NULL),(659,2,1380699222,'scorm','forcenewattempt_adv','1',NULL),(660,2,1380699222,'scorm','lastattemptlock','0',NULL),(661,2,1380699223,'scorm','lastattemptlock_adv','1',NULL),(662,2,1380699223,'scorm','auto','0',NULL),(663,2,1380699223,'scorm','auto_adv','1',NULL),(664,2,1380699223,'scorm','updatefreq','0',NULL),(665,2,1380699223,'scorm','updatefreq_adv','1',NULL),(666,2,1380699223,'scorm','allowtypeexternal','0',NULL),(667,2,1380699223,'scorm','allowtypelocalsync','0',NULL),(668,2,1380699223,'scorm','allowtypeimsrepository','0',NULL),(669,2,1380699223,'scorm','allowtypeexternalaicc','0',NULL),(670,2,1380699223,'scorm','allowaicchacp','0',NULL),(671,2,1380699223,'scorm','aicchacptimeout','30',NULL),(672,2,1380699223,'scorm','aicchacpkeepsessiondata','1',NULL),(673,2,1380699223,'scorm','forcejavascript','1',NULL),(674,2,1380699223,'scorm','allowapidebug','0',NULL),(675,2,1380699223,'scorm','apidebugmask','.*',NULL),(676,2,1380699224,'url','framesize','130',NULL),(677,2,1380699224,'url','requiremodintro','1',NULL),(678,2,1380699224,'url','secretphrase','',NULL),(679,2,1380699224,'url','rolesinparams','0',NULL),(680,2,1380699224,'url','displayoptions','0,1,5,6',NULL),(681,2,1380699224,'url','printheading','0',NULL),(682,2,1380699224,'url','printheading_adv','0',NULL),(683,2,1380699224,'url','printintro','1',NULL),(684,2,1380699224,'url','printintro_adv','0',NULL),(685,2,1380699224,'url','display','0',NULL),(686,2,1380699225,'url','display_adv','0',NULL),(687,2,1380699225,'url','popupwidth','620',NULL),(688,2,1380699225,'url','popupwidth_adv','1',NULL),(689,2,1380699225,'url','popupheight','450',NULL),(690,2,1380699225,'url','popupheight_adv','1',NULL),(691,2,1380699225,'workshop','grade','80',NULL),(692,2,1380699225,'workshop','gradinggrade','20',NULL),(693,2,1380699225,'workshop','gradedecimals','0',NULL),(694,2,1380699225,'workshop','maxbytes','0',NULL),(695,2,1380699225,'workshop','strategy','accumulative',NULL),(696,2,1380699225,'workshop','examplesmode','0',NULL),(697,2,1380699225,'workshopallocation_random','numofreviews','5',NULL),(698,2,1380699225,'workshopform_numerrors','grade0','No',NULL),(699,2,1380699225,'workshopform_numerrors','grade1','Yes',NULL),(700,2,1380699226,'workshopeval_best','comparison','5',NULL),(701,2,1380699226,'assignsubmission_file','default','1',NULL),(702,2,1380699226,'assignsubmission_file','maxbytes','1048576',NULL),(703,2,1380699226,'assignsubmission_onlinetext','default','0',NULL),(704,2,1380699226,'assignsubmission_comments','default','0',NULL),(705,2,1380699226,'assignfeedback_comments','default','0',NULL),(706,2,1380699226,'assignfeedback_file','default','0',NULL),(707,2,1380699226,NULL,'block_course_list_adminview','all',NULL),(708,2,1380699226,NULL,'block_course_list_hideallcourseslink','0',NULL),(709,2,1380699226,NULL,'block_online_users_timetosee','5',NULL),(710,2,1380699227,NULL,'block_rss_client_num_entries','5',NULL),(711,2,1380699227,NULL,'block_rss_client_timeout','30',NULL),(712,2,1380699227,'blocks/section_links','numsections1','22',NULL),(713,2,1380699227,'blocks/section_links','incby1','2',NULL),(714,2,1380699227,'blocks/section_links','numsections2','40',NULL),(715,2,1380699227,'blocks/section_links','incby2','5',NULL),(716,2,1380699227,NULL,'block_tags_showcoursetags','0',NULL),(717,2,1380699227,NULL,'jabberhost','',NULL),(718,2,1380699227,NULL,'jabberserver','',NULL),(719,2,1380699227,NULL,'jabberusername','',NULL),(720,2,1380699227,NULL,'jabberpassword','',NULL),(721,2,1380699227,NULL,'jabberport','5222',NULL),(722,2,1380699228,NULL,'smtphosts','',NULL),(723,2,1380699228,NULL,'smtpsecure','',NULL),(724,2,1380699228,NULL,'smtpuser','',NULL),(725,2,1380699228,NULL,'smtppass','',NULL),(726,2,1380699228,NULL,'smtpmaxbulk','1',NULL),(727,2,1380699228,NULL,'noreplyaddress','noreply@localhost',NULL),(728,2,1380699228,NULL,'sitemailcharset','0',NULL),(729,2,1380699228,NULL,'allowusermailcharset','0',NULL),(730,2,1380699228,NULL,'mailnewline','LF',NULL),(731,2,1380699228,'enrol_cohort','roleid','5',NULL),(732,2,1380699228,'enrol_cohort','unenrolaction','0',NULL),(733,2,1380699228,'enrol_database','defaultrole','5',NULL),(734,2,1380699228,'enrol_database','defaultcategory','1',NULL),(735,2,1380699228,'enrol_flatfile','map_1','manager',NULL),(736,2,1380699228,'enrol_flatfile','map_2','coursecreator',NULL),(737,2,1380699228,'enrol_flatfile','map_3','editingteacher',NULL),(738,2,1380699229,'enrol_flatfile','map_4','teacher',NULL),(739,2,1380699229,'enrol_flatfile','map_5','student',NULL),(740,2,1380699229,'enrol_flatfile','map_6','guest',NULL),(741,2,1380699229,'enrol_flatfile','map_7','user',NULL),(742,2,1380699229,'enrol_flatfile','map_8','frontpage',NULL),(743,2,1380699229,'enrol_imsenterprise','imsrolemap01','5',NULL),(744,2,1380699229,'enrol_imsenterprise','imsrolemap02','3',NULL),(745,2,1380699229,'enrol_imsenterprise','imsrolemap03','3',NULL),(746,2,1380699229,'enrol_imsenterprise','imsrolemap04','5',NULL),(747,2,1380699229,'enrol_imsenterprise','imsrolemap05','0',NULL),(748,2,1380699229,'enrol_imsenterprise','imsrolemap06','4',NULL),(749,2,1380699229,'enrol_imsenterprise','imsrolemap07','0',NULL),(750,2,1380699230,'enrol_imsenterprise','imsrolemap08','4',NULL),(751,2,1380699230,'enrol_manual','roleid','5',NULL),(752,2,1380699230,'enrol_meta','nosyncroleids','',NULL),(753,2,1380699230,'enrol_meta','syncall','1',NULL),(754,2,1380699230,'enrol_meta','unenrolaction','0',NULL),(755,2,1380699230,'enrol_mnet','roleid','5',NULL),(756,2,1380699230,'enrol_mnet','roleid_adv','1',NULL),(757,2,1380699230,'enrol_paypal','roleid','5',NULL),(758,2,1380699230,'enrol_self','roleid','5',NULL),(759,2,1380699230,NULL,'profileroles','5,4,3',NULL),(760,2,1380699230,NULL,'coursecontact','3',NULL),(761,2,1380699231,NULL,'frontpage','1',NULL),(762,2,1380699231,NULL,'frontpageloggedin','1',NULL),(763,2,1380699231,NULL,'maxcategorydepth','0',NULL),(764,2,1380699231,NULL,'commentsperpage','15',NULL),(765,2,1380699231,NULL,'coursesperpage','20',NULL),(766,2,1380699231,NULL,'defaultfrontpageroleid','8',NULL),(767,2,1380699231,NULL,'supportname','Admin User',NULL),(768,2,1380699231,NULL,'supportemail','olma@isd.dp.ua',NULL),(769,2,1380699255,NULL,'registerauth','',NULL),(770,2,1380699641,NULL,'profileroles','3,4,5','5,4,3'),(771,2,1380699641,NULL,'passwordpolicy','0','1');
/*!40000 ALTER TABLE `mdl_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_question_statistics`
--

DROP TABLE IF EXISTS `mdl_quiz_question_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_question_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizstatisticsid` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `slot` bigint(10) DEFAULT NULL,
  `subquestion` smallint(4) NOT NULL,
  `s` bigint(10) NOT NULL DEFAULT '0',
  `effectiveweight` decimal(15,5) DEFAULT NULL,
  `negcovar` tinyint(2) NOT NULL DEFAULT '0',
  `discriminationindex` decimal(15,5) DEFAULT NULL,
  `discriminativeefficiency` decimal(15,5) DEFAULT NULL,
  `sd` decimal(15,10) DEFAULT NULL,
  `facility` decimal(15,10) DEFAULT NULL,
  `subquestions` longtext COLLATE utf8_unicode_ci,
  `maxmark` decimal(12,7) DEFAULT NULL,
  `positions` longtext COLLATE utf8_unicode_ci,
  `randomguessscore` decimal(12,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_question_statistics`
--

LOCK TABLES `mdl_quiz_question_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_question_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_question_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log`
--

DROP TABLE IF EXISTS `mdl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `time` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `module` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl_log_tim_ix` (`time`),
  KEY `mdl_log_act_ix` (`action`),
  KEY `mdl_log_usecou_ix` (`userid`,`course`),
  KEY `mdl_log_cmi_ix` (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Every action is logged as far as possible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log`
--

LOCK TABLES `mdl_log` WRITE;
/*!40000 ALTER TABLE `mdl_log` DISABLE KEYS */;
INSERT INTO `mdl_log` VALUES (1,1380699206,2,'127.0.0.1',1,'user',0,'update','view.php?id=2&course=1',''),(2,1380699258,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(3,1380699541,2,'127.0.0.1',1,'user',0,'add','view.php?id=3&course=1',''),(4,1380699549,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(5,1380699564,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(6,1380699569,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(7,1380699733,2,'127.0.0.1',1,'user',0,'add','view.php?id=4&course=1',''),(8,1380699754,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(9,1380699771,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(10,1380699774,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(11,1380699777,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(12,1380699814,0,'127.0.0.1',1,'login',0,'error','index.php','olma'),(13,1380699820,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(14,1380699822,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(15,1380699842,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(16,1380699855,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(17,1380699859,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(18,1380699897,2,'127.0.0.1',1,'user',0,'update','view.php?id=2&course=1',''),(19,1380699906,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(20,1380699914,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(21,1380699918,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(22,1380700011,2,'127.0.0.1',1,'course',0,'new','view.php?id=2','Testing (ID 2)'),(23,1380700040,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(24,1380700045,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(25,1380700387,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(26,1380700490,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(27,1380700600,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(28,1380700601,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(29,1380700685,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(30,1380700727,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(31,1380701141,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(32,1380701219,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(33,1380701310,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(34,1380701312,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(35,1380701369,2,'127.0.0.1',2,'course',0,'add mod','../mod/quiz/view.php?id=2','quiz 1'),(36,1380701369,2,'127.0.0.1',2,'quiz',2,'add','view.php?id=2','1'),(37,1380701371,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(38,1380701380,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(39,1380701385,2,'127.0.0.1',2,'quiz',2,'editquestions','view.php?id=2','1'),(40,1380701425,2,'127.0.0.1',2,'quiz',2,'editquestions','view.php?id=2','1'),(41,1380701427,2,'127.0.0.1',2,'quiz',2,'editquestions','view.php?id=2','1'),(42,1380701495,2,'127.0.0.1',2,'quiz',2,'editquestions','view.php?id=2','1'),(43,1380701496,2,'127.0.0.1',2,'quiz',2,'editquestions','view.php?id=2','1'),(44,1380701534,2,'127.0.0.1',2,'user',0,'view all','index.php?id=2',''),(45,1380701597,2,'127.0.0.1',1,'user',0,'logout','view.php?id=2&course=1','2'),(46,1380701609,3,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','3'),(47,1380701612,3,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(48,1380701617,3,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(49,1380701622,3,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(50,1380701626,3,'127.0.0.1',2,'quiz',2,'attempt','review.php?attempt=1','1'),(51,1380701628,3,'127.0.0.1',2,'quiz',2,'continue attempt','review.php?attempt=1','1'),(52,1380701654,3,'127.0.0.1',2,'quiz',2,'view summary','summary.php?attempt=1','1'),(53,1380701672,3,'127.0.0.1',2,'quiz',2,'close attempt','review.php?attempt=1','1'),(54,1380701674,3,'127.0.0.1',2,'quiz',2,'review','review.php?attempt=1','1'),(55,1380702125,3,'127.0.0.1',1,'user',0,'logout','view.php?id=3&course=1','3'),(56,1380702165,2,'127.0.0.1',1,'user',0,'login','view.php?id=0&course=1','2'),(57,1380702168,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(58,1380702186,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(59,1380702188,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(60,1380702199,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(61,1380702205,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(62,1380702218,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(63,1380702223,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(64,1380702313,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(65,1380702326,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(66,1380702341,2,'127.0.0.1',2,'quiz',2,'view','view.php?id=2','1'),(67,1380702349,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(68,1380702390,2,'127.0.0.1',2,'course',0,'update mod','../mod/quiz/view.php?id=2','quiz 1'),(69,1380702390,2,'127.0.0.1',2,'quiz',2,'update','view.php?id=2','1'),(70,1380702391,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(71,1380702663,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(72,1380702743,2,'127.0.0.1',2,'course',0,'add mod','../mod/quiz/view.php?id=3','quiz 2'),(73,1380702743,2,'127.0.0.1',2,'quiz',3,'add','view.php?id=3','2'),(74,1380702744,2,'127.0.0.1',2,'course',0,'view','view.php?id=2','2'),(75,1380702754,2,'127.0.0.1',2,'quiz',3,'view','view.php?id=3','2'),(76,1380702761,2,'127.0.0.1',2,'quiz',3,'editquestions','view.php?id=3','2'),(77,1380702776,2,'127.0.0.1',2,'quiz',3,'editquestions','view.php?id=3','2'),(78,1380702784,2,'127.0.0.1',2,'quiz',3,'editquestions','view.php?id=3','2'),(79,1380702798,2,'127.0.0.1',2,'quiz',3,'editquestions','view.php?id=3','2'),(80,1380702800,2,'127.0.0.1',2,'quiz',3,'editquestions','view.php?id=3','2'),(81,1380702826,2,'127.0.0.1',2,'quiz',3,'view','view.php?id=3','2'),(82,1380703722,2,'127.0.0.1',1,'course',0,'view','view.php?id=1','1'),(83,1380714108,1,'10.98.255.250',1,'user',0,'login','view.php?id=0&course=1','1'),(84,1380714111,1,'10.98.255.250',1,'course',0,'view','view.php?id=1','1'),(85,1380714129,2,'10.98.255.250',1,'user',0,'login','view.php?id=1&course=1','2'),(86,1380714133,2,'10.98.255.250',1,'course',0,'view','view.php?id=1','1'),(87,1380714512,3,'10.98.3.19',1,'user',0,'login','view.php?id=0&course=1','3'),(88,1380714515,3,'10.98.3.19',2,'course',0,'view','view.php?id=2','2'),(89,1380714522,3,'10.98.3.19',2,'quiz',3,'view','view.php?id=3','2'),(90,1380714526,3,'10.98.3.19',2,'quiz',3,'attempt','review.php?attempt=2','2'),(91,1380714527,3,'10.98.3.19',2,'quiz',3,'continue attempt','review.php?attempt=2','2'),(92,1380714537,3,'10.98.3.19',2,'quiz',3,'continue attempt','review.php?attempt=2','2'),(93,1380714543,3,'10.98.3.19',2,'quiz',3,'continue attempt','review.php?attempt=2','2'),(94,1380714551,3,'10.98.3.19',2,'quiz',3,'continue attempt','review.php?attempt=2','2'),(95,1380714561,3,'10.98.3.19',2,'quiz',3,'view summary','summary.php?attempt=2','2'),(96,1380714588,3,'10.98.3.19',2,'quiz',3,'close attempt','review.php?attempt=2','2'),(97,1380714590,3,'10.98.3.19',2,'quiz',3,'review','review.php?attempt=2','2'),(98,1380714600,3,'10.98.3.19',2,'quiz',3,'review','review.php?attempt=2','2'),(99,1380714603,3,'10.98.3.19',2,'quiz',3,'review','review.php?attempt=2','2'),(100,1380714606,3,'10.98.3.19',2,'quiz',3,'review','review.php?attempt=2','2');
/*!40000 ALTER TABLE `mdl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_sessions`
--

DROP TABLE IF EXISTS `mdl_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `state` bigint(10) NOT NULL DEFAULT '0',
  `sid` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `sessdata` longtext COLLATE utf8_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_sess_sid_uix` (`sid`),
  KEY `mdl_sess_sta_ix` (`state`),
  KEY `mdl_sess_tim_ix` (`timecreated`),
  KEY `mdl_sess_tim2_ix` (`timemodified`),
  KEY `mdl_sess_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Database based session storage - now recommended';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_sessions`
--

LOCK TABLES `mdl_sessions` WRITE;
/*!40000 ALTER TABLE `mdl_sessions` DISABLE KEYS */;
INSERT INTO `mdl_sessions` VALUES (16,0,'35r2ipu1ccmhroom9oqgegukn4',2,'U0VTU0lPTnxPOjg6InN0ZENsYXNzIjo2OntzOjIxOiJjYWxlbmRhcnNob3dldmVudHR5cGUiO2k6MTU7czoxMDoibG9naW5jb3VudCI7aTowO3M6MjI6ImFkbWluX2NyaXRpY2FsX3dhcm5pbmciO2k6MDtzOjIxOiJsb2FkX25hdmlnYXRpb25fYWRtaW4iO2I6MTtzOjE0OiJmcm9tZGlzY3Vzc2lvbiI7czo0NzoiaHR0cDovL2xvY2FsaG9zdC9tb29kbGUyMzEvY291cnNlL3ZpZXcucGhwP2lkPTIiO3M6ODoibmF2Y2FjaGUiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6Im5hdmlnYXRpb24iO2E6Mzp7czoxNjoidXNlcmJsb2dvcHRpb25zMiI7YTozOntpOjA7aToxMzgwNzAyNzQ0O2k6MTtzOjE6IjIiO2k6MjtzOjcwMzoiYToyOntzOjQ6InZpZXciO2E6Mjp7czo2OiJzdHJpbmciO3M6MjI6IlZpZXcgYWxsIG9mIG15IGVudHJpZXMiO3M6NDoibGluayI7TzoxMDoibW9vZGxlX3VybCI6OTp7czo5OiIAKgBzY2hlbWUiO3M6NDoiaHR0cCI7czo3OiIAKgBob3N0IjtzOjk6ImxvY2FsaG9zdCI7czo3OiIAKgBwb3J0IjtzOjA6IiI7czo3OiIAKgB1c2VyIjtzOjA6IiI7czo3OiIAKgBwYXNzIjtzOjA6IiI7czo3OiIAKgBwYXRoIjtzOjI1OiIvbW9vZGxlMjMxL2Jsb2cvaW5kZXgucGhwIjtzOjE2OiIAKgBzbGFzaGFyZ3VtZW50IjtzOjA6IiI7czo5OiIAKgBhbmNob3IiO047czo5OiIAKgBwYXJhbXMiO2E6MTp7czo2OiJ1c2VyaWQiO3M6MToiMiI7fX19czozOiJhZGQiO2E6Mjp7czo2OiJzdHJpbmciO3M6MTU6IkFkZCBhIG5ldyBlbnRyeSI7czo0OiJsaW5rIjtPOjEwOiJtb29kbGVfdXJsIjo5OntzOjk6IgAqAHNjaGVtZSI7czo0OiJodHRwIjtzOjc6IgAqAGhvc3QiO3M6OToibG9jYWxob3N0IjtzOjc6IgAqAHBvcnQiO3M6MDoiIjtzOjc6IgAqAHVzZXIiO3M6MDoiIjtzOjc6IgAqAHBhc3MiO3M6MDoiIjtzOjc6IgAqAHBhdGgiO3M6MjQ6Ii9tb29kbGUyMzEvYmxvZy9lZGl0LnBocCI7czoxNjoiACoAc2xhc2hhcmd1bWVudCI7czowOiIiO3M6OToiACoAYW5jaG9yIjtOO3M6OToiACoAcGFyYW1zIjthOjE6e3M6NjoiYWN0aW9uIjtzOjM6ImFkZCI7fX19fSI7fXM6MTY6ImNvbnRleHRoYXNyZXBvczUiO2E6Mzp7aTowO2k6MTM4MDcwMjc0NDtpOjE7czoxOiIyIjtpOjI7czo0OiJiOjA7Ijt9czoxNzoiY29udGV4dGhhc3JlcG9zMTciO2E6Mzp7aTowO2k6MTM4MDcwMjc0NTtpOjE7czoxOiIyIjtpOjI7czo0OiJiOjA7Ijt9fX19VVNFUnxPOjg6InN0ZENsYXNzIjo2MDp7czoyOiJpZCI7czoxOiIyIjtzOjQ6ImF1dGgiO3M6NjoibWFudWFsIjtzOjk6ImNvbmZpcm1lZCI7czoxOiIxIjtzOjEyOiJwb2xpY3lhZ3JlZWQiO3M6MToiMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6OToic3VzcGVuZGVkIjtzOjE6IjAiO3M6MTA6Im1uZXRob3N0aWQiO3M6MToiMSI7czo4OiJ1c2VybmFtZSI7czo1OiJhZG1pbiI7czo4OiJwYXNzd29yZCI7czozMjoiY2E5YTk2MzZhYmZiN2U0ZDczMWI2NDlmOWIxMjQ5YzYiO3M6ODoiaWRudW1iZXIiO3M6MDoiIjtzOjk6ImZpcnN0bmFtZSI7czo1OiJBZG1pbiI7czo4OiJsYXN0bmFtZSI7czo0OiJVc2VyIjtzOjU6ImVtYWlsIjtzOjE0OiJvbG1hQGlzZC5kcC51YSI7czo5OiJlbWFpbHN0b3AiO3M6MToiMCI7czozOiJpY3EiO3M6MDoiIjtzOjU6InNreXBlIjtzOjA6IiI7czo1OiJ5YWhvbyI7czowOiIiO3M6MzoiYWltIjtzOjA6IiI7czozOiJtc24iO3M6MDoiIjtzOjY6InBob25lMSI7czowOiIiO3M6NjoicGhvbmUyIjtzOjA6IiI7czoxMToiaW5zdGl0dXRpb24iO3M6MDoiIjtzOjEwOiJkZXBhcnRtZW50IjtzOjA6IiI7czo3OiJhZGRyZXNzIjtzOjA6IiI7czo0OiJjaXR5IjtzOjE0OiJEbmVwcm9wZXRyb3ZzayI7czo3OiJjb3VudHJ5IjtzOjI6IlVBIjtzOjQ6ImxhbmciO3M6MjoiZW4iO3M6NToidGhlbWUiO3M6MDoiIjtzOjg6InRpbWV6b25lIjtzOjI6Ijk5IjtzOjExOiJmaXJzdGFjY2VzcyI7czoxMDoiMTM4MDY5OTIwNiI7czoxMDoibGFzdGFjY2VzcyI7aToxMzgwNzAzNzIyO3M6OToibGFzdGxvZ2luIjtzOjEwOiIxMzgwNjk5OTE0IjtzOjEyOiJjdXJyZW50bG9naW4iO2k6MTM4MDcwMjE2NTtzOjY6Imxhc3RpcCI7czo5OiIxMjcuMC4wLjEiO3M6Njoic2VjcmV0IjtzOjA6IiI7czo3OiJwaWN0dXJlIjtzOjE6IjAiO3M6MzoidXJsIjtzOjA6IiI7czoxNzoiZGVzY3JpcHRpb25mb3JtYXQiO3M6MToiMCI7czoxMDoibWFpbGZvcm1hdCI7czoxOiIxIjtzOjEwOiJtYWlsZGlnZXN0IjtzOjE6IjAiO3M6MTE6Im1haWxkaXNwbGF5IjtzOjE6IjEiO3M6MTA6Imh0bWxlZGl0b3IiO3M6MToiMSI7czoxMzoiYXV0b3N1YnNjcmliZSI7czoxOiIxIjtzOjExOiJ0cmFja2ZvcnVtcyI7czoxOiIwIjtzOjExOiJ0aW1lY3JlYXRlZCI7czoxOiIwIjtzOjEyOiJ0aW1lbW9kaWZpZWQiO3M6MTA6IjEzODA2OTk4OTciO3M6MTI6InRydXN0Yml0bWFzayI7czoxOiIwIjtzOjg6ImltYWdlYWx0IjtzOjA6IiI7czoxMjoic2NyZWVucmVhZGVyIjtzOjE6IjAiO3M6MTY6Imxhc3Rjb3Vyc2VhY2Nlc3MiO2E6MTp7aToyO3M6MTA6IjEzODA3MDE1MzQiO31zOjE5OiJjdXJyZW50Y291cnNlYWNjZXNzIjthOjE6e2k6MjtpOjEzODA3MDI4MjY7fXM6MTE6Imdyb3VwbWVtYmVyIjthOjA6e31zOjc6InByb2ZpbGUiO2E6MDp7fXM6Nzoic2Vzc2tleSI7czoxMDoiTTlVRFR1UDJMNCI7czoxMDoicHJlZmVyZW5jZSI7YTo3OntzOjI0OiJhdXRoX2ZvcmNlcGFzc3dvcmRjaGFuZ2UiO3M6MToiMCI7czoxODoiZW1haWxfYm91bmNlX2NvdW50IjtzOjE6IjEiO3M6MTY6ImVtYWlsX3NlbmRfY291bnQiO3M6MToiMSI7czoyNDoiZmlsZXBpY2tlcl9yZWNlbnRsaWNlbnNlIjtzOjE3OiJhbGxyaWdodHNyZXNlcnZlZCI7czoyNzoiZmlsZXBpY2tlcl9yZWNlbnRyZXBvc2l0b3J5IjtzOjE6IjMiO3M6MTk6InF1aXpfcWJhbmt0b29sX29wZW4iO3M6MToiMSI7czoxMToiX2xhc3Rsb2FkZWQiO2k6MTM4MDcwMzcyMzt9czoxNzoibWVzc2FnZV9sYXN0cG9wdXAiO2k6MDtzOjI1OiJhamF4X3VwZGF0YWJsZV91c2VyX3ByZWZzIjthOjIyOntzOjIzOiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMSI7czozOiJpbnQiO3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV80IjtzOjM6ImludCI7czoyMzoiZG9ja2VkX2Jsb2NrX2luc3RhbmNlXzUiO3M6MzoiaW50IjtzOjIzOiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMyI7czozOiJpbnQiO3M6MTI6ImJsb2NrNGhpZGRlbiI7czo0OiJib29sIjtzOjEyOiJibG9jazVoaWRkZW4iO3M6NDoiYm9vbCI7czoxMjoiYmxvY2szaGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTI6ImJsb2NrMWhpZGRlbiI7czo0OiJib29sIjtzOjIzOiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfNiI7czozOiJpbnQiO3M6MTI6ImJsb2NrNmhpZGRlbiI7czo0OiJib29sIjtzOjEzOiJ1c2Vtb2RjaG9vc2VyIjtzOjQ6ImJvb2wiO3M6MjQ6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xMCI7czozOiJpbnQiO3M6MjQ6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xMSI7czozOiJpbnQiO3M6MjQ6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xMiI7czozOiJpbnQiO3M6MjQ6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xMyI7czozOiJpbnQiO3M6MTM6ImJsb2NrMTBoaWRkZW4iO3M6NDoiYm9vbCI7czoxMzoiYmxvY2sxMWhpZGRlbiI7czo0OiJib29sIjtzOjEzOiJibG9jazEyaGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTM6ImJsb2NrMTNoaWRkZW4iO3M6NDoiYm9vbCI7czoyNzoiZmlsZXBpY2tlcl9yZWNlbnRyZXBvc2l0b3J5IjtzOjM6ImludCI7czoyNDoiZmlsZXBpY2tlcl9yZWNlbnRsaWNlbnNlIjtzOjc6InNhZmVkaXIiO3M6MjU6ImZpbGVwaWNrZXJfcmVjZW50dmlld21vZGUiO3M6MzoiaW50Ijt9czo3OiJlZGl0aW5nIjtpOjE7czo2OiJhY2Nlc3MiO2E6Nzp7czoyOiJyYSI7YToyOntzOjI6Ii8xIjthOjE6e2k6NztpOjc7fXM6NDoiLzEvMiI7YToxOntpOjg7aTo4O319czo0OiJyZGVmIjthOjI6e3M6NDoiLzE6NyI7YTo0ODp7czoyNzoiYmxvY2svb25saW5lX3VzZXJzOnZpZXdsaXN0IjtpOjE7czoxNToibW9kL2ZvbGRlcjp2aWV3IjtpOjE7czoxNDoibW9kL2ltc2NwOnZpZXciO2k6MTtzOjEzOiJtb2QvcGFnZTp2aWV3IjtpOjE7czoxNzoibW9kL3Jlc291cmNlOnZpZXciO2k6MTtzOjEyOiJtb2QvdXJsOnZpZXciO2k6MTtzOjE3OiJtb29kbGUvYmxvY2s6dmlldyI7aToxO3M6Mjc6Im1vb2RsZS9ibG9nOmFzc29jaWF0ZWNvdXJzZSI7aToxO3M6Mjc6Im1vb2RsZS9ibG9nOmFzc29jaWF0ZW1vZHVsZSI7aToxO3M6MTg6Im1vb2RsZS9ibG9nOmNyZWF0ZSI7aToxO3M6MjY6Im1vb2RsZS9ibG9nOm1hbmFnZWV4dGVybmFsIjtpOjE7czoxODoibW9vZGxlL2Jsb2c6c2VhcmNoIjtpOjE7czoxNjoibW9vZGxlL2Jsb2c6dmlldyI7aToxO3M6MzI6Im1vb2RsZS9jYWxlbmRhcjptYW5hZ2Vvd25lbnRyaWVzIjtpOjE7czoxOToibW9vZGxlL2NvbW1lbnQ6cG9zdCI7aToxO3M6MTk6Im1vb2RsZS9jb21tZW50OnZpZXciO2k6MTtzOjIxOiJtb29kbGUvY291cnNlOnJlcXVlc3QiO2k6MTtzOjIyOiJtb29kbGUvbXk6bWFuYWdlYmxvY2tzIjtpOjE7czoyMzoibW9vZGxlL3BvcnRmb2xpbzpleHBvcnQiO2k6MTtzOjE4OiJtb29kbGUvcmF0aW5nOnJhdGUiO2k6MTtzOjE4OiJtb29kbGUvcmF0aW5nOnZpZXciO2k6MTtzOjIxOiJtb29kbGUvcmF0aW5nOnZpZXdhbGwiO2k6MTtzOjIxOiJtb29kbGUvcmF0aW5nOnZpZXdhbnkiO2k6MTtzOjIzOiJtb29kbGUvc2l0ZTpzZW5kbWVzc2FnZSI7aToxO3M6MTc6Im1vb2RsZS90YWc6Y3JlYXRlIjtpOjE7czoxNToibW9vZGxlL3RhZzplZGl0IjtpOjE7czoyOToibW9vZGxlL3VzZXI6Y2hhbmdlb3ducGFzc3dvcmQiO2k6MTtzOjMzOiJtb29kbGUvdXNlcjplZGl0b3dubWVzc2FnZXByb2ZpbGUiO2k6MTtzOjI2OiJtb29kbGUvdXNlcjplZGl0b3ducHJvZmlsZSI7aToxO3M6Mjc6Im1vb2RsZS91c2VyOm1hbmFnZW93bmJsb2NrcyI7aToxO3M6MjY6Im1vb2RsZS91c2VyOm1hbmFnZW93bmZpbGVzIjtpOjE7czozNToibW9vZGxlL3dlYnNlcnZpY2U6Y3JlYXRlbW9iaWxldG9rZW4iO2k6MTtzOjI0OiJyZXBvc2l0b3J5L2FsZnJlc2NvOnZpZXciO2k6MTtzOjIyOiJyZXBvc2l0b3J5L2JveG5ldDp2aWV3IjtpOjE7czoyMzoicmVwb3NpdG9yeS9kcm9wYm94OnZpZXciO2k6MTtzOjIzOiJyZXBvc2l0b3J5L2VxdWVsbGE6dmlldyI7aToxO3M6Mjk6InJlcG9zaXRvcnkvZmxpY2tyX3B1YmxpYzp2aWV3IjtpOjE7czoyMjoicmVwb3NpdG9yeS9mbGlja3I6dmlldyI7aToxO3M6MjY6InJlcG9zaXRvcnkvZ29vZ2xlZG9jczp2aWV3IjtpOjE7czoyMjoicmVwb3NpdG9yeS9tZXJsb3Q6dmlldyI7aToxO3M6MjI6InJlcG9zaXRvcnkvcGljYXNhOnZpZXciO2k6MTtzOjIyOiJyZXBvc2l0b3J5L3JlY2VudDp2aWV3IjtpOjE7czoxODoicmVwb3NpdG9yeS9zMzp2aWV3IjtpOjE7czoyMjoicmVwb3NpdG9yeS91cGxvYWQ6dmlldyI7aToxO3M6MTk6InJlcG9zaXRvcnkvdXJsOnZpZXciO2k6MTtzOjIwOiJyZXBvc2l0b3J5L3VzZXI6dmlldyI7aToxO3M6MjU6InJlcG9zaXRvcnkvd2lraW1lZGlhOnZpZXciO2k6MTtzOjIzOiJyZXBvc2l0b3J5L3lvdXR1YmU6dmlldyI7aToxO31zOjQ6Ii8xOjgiO2E6Njp7czoyMDoiYm9va3Rvb2wvcHJpbnQ6cHJpbnQiO2k6MTtzOjEzOiJtb2QvYm9vazpyZWFkIjtpOjE7czoxODoibW9kL2RhdGE6dmlld2VudHJ5IjtpOjE7czoyNDoibW9kL2ZvcnVtOnZpZXdkaXNjdXNzaW9uIjtpOjE7czoxNzoibW9kL2dsb3NzYXJ5OnZpZXciO2k6MTtzOjE5OiJtb29kbGUvY29tbWVudDp2aWV3IjtpOjE7fX1zOjEwOiJyZGVmX2NvdW50IjtpOjI7czo4OiJyZGVmX2xjYyI7aToyO3M6NjoibG9hZGVkIjthOjE6e2k6MjtpOjE7fXM6NDoidGltZSI7aToxMzgwNzAyMTg5O3M6MzoicnN3IjthOjA6e319czo1OiJlbnJvbCI7YToyOntzOjg6ImVucm9sbGVkIjthOjA6e31zOjk6InRlbXBndWVzdCI7YTowOnt9fX0=',1380702165,1380703725,'127.0.0.1','127.0.0.1'),(18,0,'ckbk1j0nk9vbj5u15p0ccese56',0,'U0VTU0lPTnxPOjg6InN0ZENsYXNzIjoxOntzOjIxOiJjYWxlbmRhcnNob3dldmVudHR5cGUiO2k6MTU7fVVTRVJ8Tzo4OiJzdGRDbGFzcyI6Nzp7czoyOiJpZCI7aTowO3M6MTA6Im1uZXRob3N0aWQiO3M6MToiMSI7czo3OiJzZXNza2V5IjtzOjEwOiJNd2xXQnpBbGd3IjtzOjEwOiJwcmVmZXJlbmNlIjthOjA6e31zOjI1OiJhamF4X3VwZGF0YWJsZV91c2VyX3ByZWZzIjthOjY6e3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xIjtzOjM6ImludCI7czoyMzoiZG9ja2VkX2Jsb2NrX2luc3RhbmNlXzQiO3M6MzoiaW50IjtzOjIzOiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfNSI7czozOiJpbnQiO3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8zIjtzOjM6ImludCI7czoxMjoiYmxvY2s0aGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTI6ImJsb2NrM2hpZGRlbiI7czo0OiJib29sIjt9czo2OiJhY2Nlc3MiO2E6Nzp7czoyOiJyYSI7YToxOntzOjI6Ii8xIjthOjE6e2k6NjtpOjY7fX1zOjQ6InJkZWYiO2E6MTp7czo0OiIvMTo2IjthOjI2OntzOjI3OiJibG9jay9vbmxpbmVfdXNlcnM6dmlld2xpc3QiO2k6MTtzOjIwOiJib29rdG9vbC9wcmludDpwcmludCI7aToxO3M6MTU6Im1vZC9hc3NpZ246dmlldyI7aToxO3M6MTk6Im1vZC9hc3NpZ25tZW50OnZpZXciO2k6MTtzOjEzOiJtb2QvYm9vazpyZWFkIjtpOjE7czoxODoibW9kL2RhdGE6dmlld2VudHJ5IjtpOjE7czoxNzoibW9kL2ZlZWRiYWNrOnZpZXciO2k6MTtzOjE1OiJtb2QvZm9sZGVyOnZpZXciO2k6MTtzOjI0OiJtb2QvZm9ydW06dmlld2Rpc2N1c3Npb24iO2k6MTtzOjE3OiJtb2QvZ2xvc3Nhcnk6dmlldyI7aToxO3M6MTQ6Im1vZC9pbXNjcDp2aWV3IjtpOjE7czoxMjoibW9kL2x0aTp2aWV3IjtpOjE7czoxMzoibW9kL3BhZ2U6dmlldyI7aToxO3M6MTM6Im1vZC9xdWl6OnZpZXciO2k6MTtzOjE3OiJtb2QvcmVzb3VyY2U6dmlldyI7aToxO3M6MTI6Im1vZC91cmw6dmlldyI7aToxO3M6MTc6Im1vZC93aWtpOnZpZXdwYWdlIjtpOjE7czoxNzoibW9kL3dvcmtzaG9wOnZpZXciO2k6MTtzOjE3OiJtb29kbGUvYmxvY2s6dmlldyI7aToxO3M6MTg6Im1vb2RsZS9ibG9nOnNlYXJjaCI7aToxO3M6MTY6Im1vb2RsZS9ibG9nOnZpZXciO2k6MTtzOjE5OiJtb29kbGUvY29tbWVudDp2aWV3IjtpOjE7czoyOToibW9vZGxlL3VzZXI6Y2hhbmdlb3ducGFzc3dvcmQiO2k6LTEwMDA7czozMzoibW9vZGxlL3VzZXI6ZWRpdG93bm1lc3NhZ2Vwcm9maWxlIjtpOi0xMDAwO3M6MjY6Im1vb2RsZS91c2VyOmVkaXRvd25wcm9maWxlIjtpOi0xMDAwO3M6MjM6Im1vb2RsZS91c2VyOnZpZXdkZXRhaWxzIjtpOjE7fX1zOjEwOiJyZGVmX2NvdW50IjtpOjE7czo4OiJyZGVmX2xjYyI7aToxO3M6NjoibG9hZGVkIjthOjE6e2k6MTtpOjE7fXM6NDoidGltZSI7aToxMzgwNzE0MDM1O3M6MzoicnN3IjthOjA6e319czo1OiJlbnJvbCI7YToyOntzOjg6ImVucm9sbGVkIjthOjA6e31zOjk6InRlbXBndWVzdCI7YTowOnt9fX0=',1380714034,1380714035,'10.98.2.252','10.98.2.252'),(20,0,'2rl0krrmoam3vcb4n1m1a19hu1',2,'U0VTU0lPTnxPOjg6InN0ZENsYXNzIjo1OntzOjIxOiJjYWxlbmRhcnNob3dldmVudHR5cGUiO2k6MTU7czoxMDoibG9naW5jb3VudCI7aTowO3M6ODoibmF2Y2FjaGUiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6Im5hdmlnYXRpb24iO2E6Mjp7czoxNjoidXNlcmJsb2dvcHRpb25zMiI7YTozOntpOjA7aToxMzgwNzI0NzM3O2k6MTtzOjE6IjIiO2k6MjtzOjcwOToiYToyOntzOjQ6InZpZXciO2E6Mjp7czo2OiJzdHJpbmciO3M6MjI6IlZpZXcgYWxsIG9mIG15IGVudHJpZXMiO3M6NDoibGluayI7TzoxMDoibW9vZGxlX3VybCI6OTp7czo5OiIAKgBzY2hlbWUiO3M6NDoiaHR0cCI7czo3OiIAKgBob3N0IjtzOjExOiIxMC45OC4yLjIxNCI7czo3OiIAKgBwb3J0IjtzOjA6IiI7czo3OiIAKgB1c2VyIjtzOjA6IiI7czo3OiIAKgBwYXNzIjtzOjA6IiI7czo3OiIAKgBwYXRoIjtzOjI1OiIvbW9vZGxlMjMxL2Jsb2cvaW5kZXgucGhwIjtzOjE2OiIAKgBzbGFzaGFyZ3VtZW50IjtzOjA6IiI7czo5OiIAKgBhbmNob3IiO047czo5OiIAKgBwYXJhbXMiO2E6MTp7czo2OiJ1c2VyaWQiO3M6MToiMiI7fX19czozOiJhZGQiO2E6Mjp7czo2OiJzdHJpbmciO3M6MTU6IkFkZCBhIG5ldyBlbnRyeSI7czo0OiJsaW5rIjtPOjEwOiJtb29kbGVfdXJsIjo5OntzOjk6IgAqAHNjaGVtZSI7czo0OiJodHRwIjtzOjc6IgAqAGhvc3QiO3M6MTE6IjEwLjk4LjIuMjE0IjtzOjc6IgAqAHBvcnQiO3M6MDoiIjtzOjc6IgAqAHVzZXIiO3M6MDoiIjtzOjc6IgAqAHBhc3MiO3M6MDoiIjtzOjc6IgAqAHBhdGgiO3M6MjQ6Ii9tb29kbGUyMzEvYmxvZy9lZGl0LnBocCI7czoxNjoiACoAc2xhc2hhcmd1bWVudCI7czowOiIiO3M6OToiACoAYW5jaG9yIjtOO3M6OToiACoAcGFyYW1zIjthOjE6e3M6NjoiYWN0aW9uIjtzOjM6ImFkZCI7fX19fSI7fXM6MTY6ImNvbnRleHRoYXNyZXBvczUiO2E6Mzp7aTowO2k6MTM4MDcyNDczNztpOjE7czoxOiIyIjtpOjI7czo0OiJiOjA7Ijt9fX1zOjIyOiJhZG1pbl9jcml0aWNhbF93YXJuaW5nIjtpOjA7czoyMToibG9hZF9uYXZpZ2F0aW9uX2FkbWluIjtiOjE7fVVTRVJ8Tzo4OiJzdGRDbGFzcyI6NTc6e3M6MjoiaWQiO3M6MToiMiI7czo0OiJhdXRoIjtzOjY6Im1hbnVhbCI7czo5OiJjb25maXJtZWQiO3M6MToiMSI7czoxMjoicG9saWN5YWdyZWVkIjtzOjE6IjAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjk6InN1c3BlbmRlZCI7czoxOiIwIjtzOjEwOiJtbmV0aG9zdGlkIjtzOjE6IjEiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6ODoicGFzc3dvcmQiO3M6MzI6ImNhOWE5NjM2YWJmYjdlNGQ3MzFiNjQ5ZjliMTI0OWM2IjtzOjg6ImlkbnVtYmVyIjtzOjA6IiI7czo5OiJmaXJzdG5hbWUiO3M6NToiQWRtaW4iO3M6ODoibGFzdG5hbWUiO3M6NDoiVXNlciI7czo1OiJlbWFpbCI7czoxNDoib2xtYUBpc2QuZHAudWEiO3M6OToiZW1haWxzdG9wIjtzOjE6IjAiO3M6MzoiaWNxIjtzOjA6IiI7czo1OiJza3lwZSI7czowOiIiO3M6NToieWFob28iO3M6MDoiIjtzOjM6ImFpbSI7czowOiIiO3M6MzoibXNuIjtzOjA6IiI7czo2OiJwaG9uZTEiO3M6MDoiIjtzOjY6InBob25lMiI7czowOiIiO3M6MTE6Imluc3RpdHV0aW9uIjtzOjA6IiI7czoxMDoiZGVwYXJ0bWVudCI7czowOiIiO3M6NzoiYWRkcmVzcyI7czowOiIiO3M6NDoiY2l0eSI7czoxNDoiRG5lcHJvcGV0cm92c2siO3M6NzoiY291bnRyeSI7czoyOiJVQSI7czo0OiJsYW5nIjtzOjI6ImVuIjtzOjU6InRoZW1lIjtzOjA6IiI7czo4OiJ0aW1lem9uZSI7czoyOiI5OSI7czoxMToiZmlyc3RhY2Nlc3MiO3M6MTA6IjEzODA2OTkyMDYiO3M6MTA6Imxhc3RhY2Nlc3MiO2k6MTM4MDcyNTE2MDtzOjk6Imxhc3Rsb2dpbiI7czoxMDoiMTM4MDcwMjE2NSI7czoxMjoiY3VycmVudGxvZ2luIjtpOjEzODA3MTQxMjk7czo2OiJsYXN0aXAiO3M6OToiMTI3LjAuMC4xIjtzOjY6InNlY3JldCI7czowOiIiO3M6NzoicGljdHVyZSI7czoxOiIwIjtzOjM6InVybCI7czowOiIiO3M6MTc6ImRlc2NyaXB0aW9uZm9ybWF0IjtzOjE6IjAiO3M6MTA6Im1haWxmb3JtYXQiO3M6MToiMSI7czoxMDoibWFpbGRpZ2VzdCI7czoxOiIwIjtzOjExOiJtYWlsZGlzcGxheSI7czoxOiIxIjtzOjEwOiJodG1sZWRpdG9yIjtzOjE6IjEiO3M6MTM6ImF1dG9zdWJzY3JpYmUiO3M6MToiMSI7czoxMToidHJhY2tmb3J1bXMiO3M6MToiMCI7czoxMToidGltZWNyZWF0ZWQiO3M6MToiMCI7czoxMjoidGltZW1vZGlmaWVkIjtzOjEwOiIxMzgwNjk5ODk3IjtzOjEyOiJ0cnVzdGJpdG1hc2siO3M6MToiMCI7czo4OiJpbWFnZWFsdCI7czowOiIiO3M6MTI6InNjcmVlbnJlYWRlciI7czoxOiIwIjtzOjE2OiJsYXN0Y291cnNlYWNjZXNzIjthOjE6e2k6MjtzOjEwOiIxMzgwNzAyODI2Ijt9czoxOToiY3VycmVudGNvdXJzZWFjY2VzcyI7YTowOnt9czoxMToiZ3JvdXBtZW1iZXIiO2E6MDp7fXM6NzoicHJvZmlsZSI7YTowOnt9czo3OiJzZXNza2V5IjtzOjEwOiJCeGNMRFQzTEhOIjtzOjEwOiJwcmVmZXJlbmNlIjthOjc6e3M6MjQ6ImF1dGhfZm9yY2VwYXNzd29yZGNoYW5nZSI7czoxOiIwIjtzOjE4OiJlbWFpbF9ib3VuY2VfY291bnQiO3M6MToiMSI7czoxNjoiZW1haWxfc2VuZF9jb3VudCI7czoxOiIxIjtzOjI0OiJmaWxlcGlja2VyX3JlY2VudGxpY2Vuc2UiO3M6MTc6ImFsbHJpZ2h0c3Jlc2VydmVkIjtzOjI3OiJmaWxlcGlja2VyX3JlY2VudHJlcG9zaXRvcnkiO3M6MToiMyI7czoxOToicXVpel9xYmFua3Rvb2xfb3BlbiI7czoxOiIxIjtzOjExOiJfbGFzdGxvYWRlZCI7aToxMzgwNzI1MjA1O31zOjE3OiJtZXNzYWdlX2xhc3Rwb3B1cCI7aTowO3M6MjU6ImFqYXhfdXBkYXRhYmxlX3VzZXJfcHJlZnMiO2E6MTA6e3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8xIjtzOjM6ImludCI7czoyMzoiZG9ja2VkX2Jsb2NrX2luc3RhbmNlXzQiO3M6MzoiaW50IjtzOjIzOiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfNSI7czozOiJpbnQiO3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV8zIjtzOjM6ImludCI7czoxMjoiYmxvY2s0aGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTI6ImJsb2NrNWhpZGRlbiI7czo0OiJib29sIjtzOjEyOiJibG9jazNoaWRkZW4iO3M6NDoiYm9vbCI7czoyNzoiZmlsZXBpY2tlcl9yZWNlbnRyZXBvc2l0b3J5IjtzOjM6ImludCI7czoyNDoiZmlsZXBpY2tlcl9yZWNlbnRsaWNlbnNlIjtzOjc6InNhZmVkaXIiO3M6MjU6ImZpbGVwaWNrZXJfcmVjZW50dmlld21vZGUiO3M6MzoiaW50Ijt9fQ==',1380714129,1380725205,'10.98.255.250','10.98.255.250'),(22,0,'arf0h95ocbvpk6oem9qiohvo54',3,'U0VTU0lPTnxPOjg6InN0ZENsYXNzIjo3OntzOjIxOiJjYWxlbmRhcnNob3dldmVudHR5cGUiO2k6MTU7czo3OiJmcm9tdXJsIjtzOjI5OiJodHRwOi8vMTAuOTguMi4yMTQvbW9vZGxlMjMxLyI7czoxMDoibG9naW5jb3VudCI7aTowO3M6MTQ6ImZyb21kaXNjdXNzaW9uIjtzOjQ5OiJodHRwOi8vMTAuOTguMi4yMTQvbW9vZGxlMjMxL2NvdXJzZS92aWV3LnBocD9pZD0yIjtzOjg6Im5hdmNhY2hlIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJuYXZpZ2F0aW9uIjthOjI6e3M6MTY6InVzZXJibG9nb3B0aW9uczMiO2E6Mzp7aTowO2k6MTM4MDcxNDUxNTtpOjE7czoxOiIzIjtpOjI7czo3MDk6ImE6Mjp7czo0OiJ2aWV3IjthOjI6e3M6Njoic3RyaW5nIjtzOjIyOiJWaWV3IGFsbCBvZiBteSBlbnRyaWVzIjtzOjQ6ImxpbmsiO086MTA6Im1vb2RsZV91cmwiOjk6e3M6OToiACoAc2NoZW1lIjtzOjQ6Imh0dHAiO3M6NzoiACoAaG9zdCI7czoxMToiMTAuOTguMi4yMTQiO3M6NzoiACoAcG9ydCI7czowOiIiO3M6NzoiACoAdXNlciI7czowOiIiO3M6NzoiACoAcGFzcyI7czowOiIiO3M6NzoiACoAcGF0aCI7czoyNToiL21vb2RsZTIzMS9ibG9nL2luZGV4LnBocCI7czoxNjoiACoAc2xhc2hhcmd1bWVudCI7czowOiIiO3M6OToiACoAYW5jaG9yIjtOO3M6OToiACoAcGFyYW1zIjthOjE6e3M6NjoidXNlcmlkIjtzOjE6IjMiO319fXM6MzoiYWRkIjthOjI6e3M6Njoic3RyaW5nIjtzOjE1OiJBZGQgYSBuZXcgZW50cnkiO3M6NDoibGluayI7TzoxMDoibW9vZGxlX3VybCI6OTp7czo5OiIAKgBzY2hlbWUiO3M6NDoiaHR0cCI7czo3OiIAKgBob3N0IjtzOjExOiIxMC45OC4yLjIxNCI7czo3OiIAKgBwb3J0IjtzOjA6IiI7czo3OiIAKgB1c2VyIjtzOjA6IiI7czo3OiIAKgBwYXNzIjtzOjA6IiI7czo3OiIAKgBwYXRoIjtzOjI0OiIvbW9vZGxlMjMxL2Jsb2cvZWRpdC5waHAiO3M6MTY6IgAqAHNsYXNoYXJndW1lbnQiO3M6MDoiIjtzOjk6IgAqAGFuY2hvciI7TjtzOjk6IgAqAHBhcmFtcyI7YToxOntzOjY6ImFjdGlvbiI7czozOiJhZGQiO319fX0iO31zOjE3OiJjb250ZXh0aGFzcmVwb3MxNSI7YTozOntpOjA7aToxMzgwNzE0NTE1O2k6MTtzOjE6IjMiO2k6MjtzOjQ6ImI6MDsiO319fXM6MjE6ImxvYWRfbmF2aWdhdGlvbl9hZG1pbiI7YjowO3M6MTU6ImdyYWRlc2NvcmVjYWNoZSI7Tjt9VVNFUnxPOjg6InN0ZENsYXNzIjo2MDp7czoyOiJpZCI7czoxOiIzIjtzOjQ6ImF1dGgiO3M6NjoibWFudWFsIjtzOjk6ImNvbmZpcm1lZCI7czoxOiIxIjtzOjEyOiJwb2xpY3lhZ3JlZWQiO3M6MToiMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6OToic3VzcGVuZGVkIjtzOjE6IjAiO3M6MTA6Im1uZXRob3N0aWQiO3M6MToiMSI7czo4OiJ1c2VybmFtZSI7czo0OiJvbG1hIjtzOjg6InBhc3N3b3JkIjtzOjMyOiJjYTlhOTYzNmFiZmI3ZTRkNzMxYjY0OWY5YjEyNDljNiI7czo4OiJpZG51bWJlciI7czowOiIiO3M6OToiZmlyc3RuYW1lIjtzOjQ6Im9sbWEiO3M6ODoibGFzdG5hbWUiO3M6NDoib2xtYSI7czo1OiJlbWFpbCI7czoxNToib2xtYTFAaXNkLmRwLnVhIjtzOjk6ImVtYWlsc3RvcCI7czoxOiIwIjtzOjM6ImljcSI7czowOiIiO3M6NToic2t5cGUiO3M6MDoiIjtzOjU6InlhaG9vIjtzOjA6IiI7czozOiJhaW0iO3M6MDoiIjtzOjM6Im1zbiI7czowOiIiO3M6NjoicGhvbmUxIjtzOjA6IiI7czo2OiJwaG9uZTIiO3M6MDoiIjtzOjExOiJpbnN0aXR1dGlvbiI7czowOiIiO3M6MTA6ImRlcGFydG1lbnQiO3M6MDoiIjtzOjc6ImFkZHJlc3MiO3M6MDoiIjtzOjQ6ImNpdHkiO3M6MTQ6IkRuZXByb3BldHJvdnNrIjtzOjc6ImNvdW50cnkiO3M6MjoiVUEiO3M6NDoibGFuZyI7czoyOiJlbiI7czo1OiJ0aGVtZSI7czowOiIiO3M6ODoidGltZXpvbmUiO3M6MjoiOTkiO3M6MTE6ImZpcnN0YWNjZXNzIjtzOjEwOiIxMzgwNjk5NTQxIjtzOjEwOiJsYXN0YWNjZXNzIjtpOjEzODA3MTQ1ODg7czo5OiJsYXN0bG9naW4iO3M6MTA6IjEzODA3MDE2MDkiO3M6MTI6ImN1cnJlbnRsb2dpbiI7aToxMzgwNzE0NTEyO3M6NjoibGFzdGlwIjtzOjk6IjEyNy4wLjAuMSI7czo2OiJzZWNyZXQiO3M6MDoiIjtzOjc6InBpY3R1cmUiO3M6MToiMCI7czozOiJ1cmwiO3M6MDoiIjtzOjE3OiJkZXNjcmlwdGlvbmZvcm1hdCI7czoxOiIxIjtzOjEwOiJtYWlsZm9ybWF0IjtzOjE6IjEiO3M6MTA6Im1haWxkaWdlc3QiO3M6MToiMCI7czoxMToibWFpbGRpc3BsYXkiO3M6MToiMiI7czoxMDoiaHRtbGVkaXRvciI7czoxOiIxIjtzOjEzOiJhdXRvc3Vic2NyaWJlIjtzOjE6IjEiO3M6MTE6InRyYWNrZm9ydW1zIjtzOjE6IjAiO3M6MTE6InRpbWVjcmVhdGVkIjtzOjEwOiIxMzgwNjk5NTQxIjtzOjEyOiJ0aW1lbW9kaWZpZWQiO3M6MTA6IjEzODA2OTk1NDEiO3M6MTI6InRydXN0Yml0bWFzayI7czoxOiIwIjtzOjg6ImltYWdlYWx0IjtzOjA6IiI7czoxMjoic2NyZWVucmVhZGVyIjtzOjE6IjAiO3M6MTY6Imxhc3Rjb3Vyc2VhY2Nlc3MiO2E6MTp7aToyO3M6MTA6IjEzODA3MDE2MTciO31zOjE5OiJjdXJyZW50Y291cnNlYWNjZXNzIjthOjE6e2k6MjtpOjEzODA3MTQ1ODg7fXM6MTE6Imdyb3VwbWVtYmVyIjthOjA6e31zOjc6InByb2ZpbGUiO2E6MDp7fXM6Nzoic2Vzc2tleSI7czoxMDoiQjJxcFBzVXV1ZiI7czoxMDoicHJlZmVyZW5jZSI7YTo0OntzOjI0OiJhdXRoX2ZvcmNlcGFzc3dvcmRjaGFuZ2UiO3M6MToiMCI7czoxODoiZW1haWxfYm91bmNlX2NvdW50IjtzOjE6IjEiO3M6MTY6ImVtYWlsX3NlbmRfY291bnQiO3M6MToiMSI7czoxMToiX2xhc3Rsb2FkZWQiO2k6MTM4MDcxNDYwNjt9czo2OiJhY2Nlc3MiO2E6Nzp7czoyOiJyYSI7YTozOntzOjI6Ii8xIjthOjE6e2k6NztpOjc7fXM6NDoiLzEvMiI7YToxOntpOjg7aTo4O31zOjc6Ii8xLzMvMTciO2E6MTp7aTo1O2k6NTt9fXM6NDoicmRlZiI7YTozOntzOjQ6Ii8xOjciO2E6NDg6e3M6Mjc6ImJsb2NrL29ubGluZV91c2Vyczp2aWV3bGlzdCI7aToxO3M6MTU6Im1vZC9mb2xkZXI6dmlldyI7aToxO3M6MTQ6Im1vZC9pbXNjcDp2aWV3IjtpOjE7czoxMzoibW9kL3BhZ2U6dmlldyI7aToxO3M6MTc6Im1vZC9yZXNvdXJjZTp2aWV3IjtpOjE7czoxMjoibW9kL3VybDp2aWV3IjtpOjE7czoxNzoibW9vZGxlL2Jsb2NrOnZpZXciO2k6MTtzOjI3OiJtb29kbGUvYmxvZzphc3NvY2lhdGVjb3Vyc2UiO2k6MTtzOjI3OiJtb29kbGUvYmxvZzphc3NvY2lhdGVtb2R1bGUiO2k6MTtzOjE4OiJtb29kbGUvYmxvZzpjcmVhdGUiO2k6MTtzOjI2OiJtb29kbGUvYmxvZzptYW5hZ2VleHRlcm5hbCI7aToxO3M6MTg6Im1vb2RsZS9ibG9nOnNlYXJjaCI7aToxO3M6MTY6Im1vb2RsZS9ibG9nOnZpZXciO2k6MTtzOjMyOiJtb29kbGUvY2FsZW5kYXI6bWFuYWdlb3duZW50cmllcyI7aToxO3M6MTk6Im1vb2RsZS9jb21tZW50OnBvc3QiO2k6MTtzOjE5OiJtb29kbGUvY29tbWVudDp2aWV3IjtpOjE7czoyMToibW9vZGxlL2NvdXJzZTpyZXF1ZXN0IjtpOjE7czoyMjoibW9vZGxlL215Om1hbmFnZWJsb2NrcyI7aToxO3M6MjM6Im1vb2RsZS9wb3J0Zm9saW86ZXhwb3J0IjtpOjE7czoxODoibW9vZGxlL3JhdGluZzpyYXRlIjtpOjE7czoxODoibW9vZGxlL3JhdGluZzp2aWV3IjtpOjE7czoyMToibW9vZGxlL3JhdGluZzp2aWV3YWxsIjtpOjE7czoyMToibW9vZGxlL3JhdGluZzp2aWV3YW55IjtpOjE7czoyMzoibW9vZGxlL3NpdGU6c2VuZG1lc3NhZ2UiO2k6MTtzOjE3OiJtb29kbGUvdGFnOmNyZWF0ZSI7aToxO3M6MTU6Im1vb2RsZS90YWc6ZWRpdCI7aToxO3M6Mjk6Im1vb2RsZS91c2VyOmNoYW5nZW93bnBhc3N3b3JkIjtpOjE7czozMzoibW9vZGxlL3VzZXI6ZWRpdG93bm1lc3NhZ2Vwcm9maWxlIjtpOjE7czoyNjoibW9vZGxlL3VzZXI6ZWRpdG93bnByb2ZpbGUiO2k6MTtzOjI3OiJtb29kbGUvdXNlcjptYW5hZ2Vvd25ibG9ja3MiO2k6MTtzOjI2OiJtb29kbGUvdXNlcjptYW5hZ2Vvd25maWxlcyI7aToxO3M6MzU6Im1vb2RsZS93ZWJzZXJ2aWNlOmNyZWF0ZW1vYmlsZXRva2VuIjtpOjE7czoyNDoicmVwb3NpdG9yeS9hbGZyZXNjbzp2aWV3IjtpOjE7czoyMjoicmVwb3NpdG9yeS9ib3huZXQ6dmlldyI7aToxO3M6MjM6InJlcG9zaXRvcnkvZHJvcGJveDp2aWV3IjtpOjE7czoyMzoicmVwb3NpdG9yeS9lcXVlbGxhOnZpZXciO2k6MTtzOjI5OiJyZXBvc2l0b3J5L2ZsaWNrcl9wdWJsaWM6dmlldyI7aToxO3M6MjI6InJlcG9zaXRvcnkvZmxpY2tyOnZpZXciO2k6MTtzOjI2OiJyZXBvc2l0b3J5L2dvb2dsZWRvY3M6dmlldyI7aToxO3M6MjI6InJlcG9zaXRvcnkvbWVybG90OnZpZXciO2k6MTtzOjIyOiJyZXBvc2l0b3J5L3BpY2FzYTp2aWV3IjtpOjE7czoyMjoicmVwb3NpdG9yeS9yZWNlbnQ6dmlldyI7aToxO3M6MTg6InJlcG9zaXRvcnkvczM6dmlldyI7aToxO3M6MjI6InJlcG9zaXRvcnkvdXBsb2FkOnZpZXciO2k6MTtzOjE5OiJyZXBvc2l0b3J5L3VybDp2aWV3IjtpOjE7czoyMDoicmVwb3NpdG9yeS91c2VyOnZpZXciO2k6MTtzOjI1OiJyZXBvc2l0b3J5L3dpa2ltZWRpYTp2aWV3IjtpOjE7czoyMzoicmVwb3NpdG9yeS95b3V0dWJlOnZpZXciO2k6MTt9czo0OiIvMTo1IjthOjcyOntzOjI3OiJibG9jay9vbmxpbmVfdXNlcnM6dmlld2xpc3QiO2k6MTtzOjIwOiJib29rdG9vbC9wcmludDpwcmludCI7aToxO3M6MjI6ImVucm9sL3NlbGY6dW5lbnJvbHNlbGYiO2k6MTtzOjI1OiJncmFkZXJlcG9ydC9vdmVydmlldzp2aWV3IjtpOjE7czoyMToiZ3JhZGVyZXBvcnQvdXNlcjp2aWV3IjtpOjE7czozMDoibW9kL2Fzc2lnbjpleHBvcnRvd25zdWJtaXNzaW9uIjtpOjE7czoxNzoibW9kL2Fzc2lnbjpzdWJtaXQiO2k6MTtzOjE1OiJtb2QvYXNzaWduOnZpZXciO2k6MTtzOjM0OiJtb2QvYXNzaWdubWVudDpleHBvcnRvd25zdWJtaXNzaW9uIjtpOjE7czoyMToibW9kL2Fzc2lnbm1lbnQ6c3VibWl0IjtpOjE7czoxOToibW9kL2Fzc2lnbm1lbnQ6dmlldyI7aToxO3M6MTM6Im1vZC9ib29rOnJlYWQiO2k6MTtzOjEzOiJtb2QvY2hhdDpjaGF0IjtpOjE7czoxNjoibW9kL2NoYXQ6cmVhZGxvZyI7aToxO3M6MTc6Im1vZC9jaG9pY2U6Y2hvb3NlIjtpOjE7czoxNjoibW9kL2RhdGE6Y29tbWVudCI7aToxO3M6MjM6Im1vZC9kYXRhOmV4cG9ydG93bmVudHJ5IjtpOjE7czoxODoibW9kL2RhdGE6dmlld2VudHJ5IjtpOjE7czoxOToibW9kL2RhdGE6d3JpdGVlbnRyeSI7aToxO3M6MjE6Im1vZC9mZWVkYmFjazpjb21wbGV0ZSI7aToxO3M6MTc6Im1vZC9mZWVkYmFjazp2aWV3IjtpOjE7czoyODoibW9kL2ZlZWRiYWNrOnZpZXdhbmFseXNlcGFnZSI7aToxO3M6MjY6Im1vZC9mb3J1bTpjcmVhdGVhdHRhY2htZW50IjtpOjE7czoyMzoibW9kL2ZvcnVtOmRlbGV0ZW93bnBvc3QiO2k6MTtzOjIzOiJtb2QvZm9ydW06ZXhwb3J0b3ducG9zdCI7aToxO3M6MTk6Im1vZC9mb3J1bTpyZXBseXBvc3QiO2k6MTtzOjI1OiJtb2QvZm9ydW06c3RhcnRkaXNjdXNzaW9uIjtpOjE7czoyNDoibW9kL2ZvcnVtOnZpZXdkaXNjdXNzaW9uIjtpOjE7czoyMDoibW9kL2ZvcnVtOnZpZXdyYXRpbmciO2k6MTtzOjIwOiJtb2QvZ2xvc3Nhcnk6Y29tbWVudCI7aToxO3M6Mjc6Im1vZC9nbG9zc2FyeTpleHBvcnRvd25lbnRyeSI7aToxO3M6MTc6Im1vZC9nbG9zc2FyeTp2aWV3IjtpOjE7czoxODoibW9kL2dsb3NzYXJ5OndyaXRlIjtpOjE7czoxMjoibW9kL2x0aTp2aWV3IjtpOjE7czoxNjoibW9kL3F1aXo6YXR0ZW1wdCI7aToxO3M6MjU6Im1vZC9xdWl6OnJldmlld215YXR0ZW1wdHMiO2k6MTtzOjEzOiJtb2QvcXVpejp2aWV3IjtpOjE7czoxOToibW9kL3Njb3JtOnNhdmV0cmFjayI7aToxO3M6MTg6Im1vZC9zY29ybTpza2lwdmlldyI7aToxO3M6MjA6Im1vZC9zY29ybTp2aWV3c2NvcmVzIjtpOjE7czoyMjoibW9kL3N1cnZleTpwYXJ0aWNpcGF0ZSI7aToxO3M6MTk6Im1vZC93aWtpOmNyZWF0ZXBhZ2UiO2k6MTtzOjIwOiJtb2Qvd2lraTplZGl0Y29tbWVudCI7aToxO3M6MTc6Im1vZC93aWtpOmVkaXRwYWdlIjtpOjE7czoyMDoibW9kL3dpa2k6dmlld2NvbW1lbnQiO2k6MTtzOjE3OiJtb2Qvd2lraTp2aWV3cGFnZSI7aToxO3M6MjM6Im1vZC93b3Jrc2hvcDpwZWVyYXNzZXNzIjtpOjE7czoxOToibW9kL3dvcmtzaG9wOnN1Ym1pdCI7aToxO3M6MTc6Im1vZC93b3Jrc2hvcDp2aWV3IjtpOjE7czoyODoibW9kL3dvcmtzaG9wOnZpZXdhdXRob3JuYW1lcyI7aToxO3M6MzI6Im1vZC93b3Jrc2hvcDp2aWV3YXV0aG9ycHVibGlzaGVkIjtpOjE7czozNzoibW9kL3dvcmtzaG9wOnZpZXdwdWJsaXNoZWRzdWJtaXNzaW9ucyI7aToxO3M6MTc6Im1vb2RsZS9ibG9jazp2aWV3IjtpOjE7czoyNzoibW9vZGxlL2Jsb2c6YXNzb2NpYXRlY291cnNlIjtpOjE7czoyNzoibW9vZGxlL2Jsb2c6YXNzb2NpYXRlbW9kdWxlIjtpOjE7czoyNjoibW9vZGxlL2Jsb2c6bWFuYWdlZXh0ZXJuYWwiO2k6MTtzOjE4OiJtb29kbGUvYmxvZzpzZWFyY2giO2k6MTtzOjE2OiJtb29kbGUvYmxvZzp2aWV3IjtpOjE7czoxOToibW9vZGxlL2NvbW1lbnQ6cG9zdCI7aToxO3M6MTk6Im1vb2RsZS9jb21tZW50OnZpZXciO2k6MTtzOjMwOiJtb29kbGUvY291cnNlOnZpZXdwYXJ0aWNpcGFudHMiO2k6MTtzOjI0OiJtb29kbGUvY291cnNlOnZpZXdzY2FsZXMiO2k6MTtzOjE3OiJtb29kbGUvZ3JhZGU6dmlldyI7aToxO3M6MjM6Im1vb2RsZS9wb3J0Zm9saW86ZXhwb3J0IjtpOjE7czoyMDoibW9vZGxlL3F1ZXN0aW9uOmZsYWciO2k6MTtzOjE4OiJtb29kbGUvcmF0aW5nOnJhdGUiO2k6MTtzOjE4OiJtb29kbGUvcmF0aW5nOnZpZXciO2k6MTtzOjIxOiJtb29kbGUvcmF0aW5nOnZpZXdhbGwiO2k6MTtzOjIxOiJtb29kbGUvcmF0aW5nOnZpZXdhbnkiO2k6MTtzOjI1OiJtb29kbGUvdXNlcjpyZWFkdXNlcmJsb2dzIjtpOjE7czoyNToibW9vZGxlL3VzZXI6cmVhZHVzZXJwb3N0cyI7aToxO3M6MjM6Im1vb2RsZS91c2VyOnZpZXdkZXRhaWxzIjtpOjE7fXM6NDoiLzE6OCI7YTo2OntzOjIwOiJib29rdG9vbC9wcmludDpwcmludCI7aToxO3M6MTM6Im1vZC9ib29rOnJlYWQiO2k6MTtzOjE4OiJtb2QvZGF0YTp2aWV3ZW50cnkiO2k6MTtzOjI0OiJtb2QvZm9ydW06dmlld2Rpc2N1c3Npb24iO2k6MTtzOjE3OiJtb2QvZ2xvc3Nhcnk6dmlldyI7aToxO3M6MTk6Im1vb2RsZS9jb21tZW50OnZpZXciO2k6MTt9fXM6MTA6InJkZWZfY291bnQiO2k6MztzOjg6InJkZWZfbGNjIjtpOjM7czo2OiJsb2FkZWQiO2E6MTp7aToyO2k6MTt9czo0OiJ0aW1lIjtpOjEzODA3MTQ1MTU7czozOiJyc3ciO2E6MDp7fX1zOjU6ImVucm9sIjthOjI6e3M6ODoiZW5yb2xsZWQiO2E6MTp7aToyO2k6MjE0NzQ4MzY0Nzt9czo5OiJ0ZW1wZ3Vlc3QiO2E6MDp7fX1zOjc6ImVkaXRpbmciO2k6MDtzOjE3OiJtZXNzYWdlX2xhc3Rwb3B1cCI7aTowO3M6MjU6ImFqYXhfdXBkYXRhYmxlX3VzZXJfcHJlZnMiO2E6MTI6e3M6MjM6ImRvY2tlZF9ibG9ja19pbnN0YW5jZV80IjtzOjM6ImludCI7czoyMzoiZG9ja2VkX2Jsb2NrX2luc3RhbmNlXzUiO3M6MzoiaW50IjtzOjI0OiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMTAiO3M6MzoiaW50IjtzOjI0OiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMTEiO3M6MzoiaW50IjtzOjI0OiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMTIiO3M6MzoiaW50IjtzOjI0OiJkb2NrZWRfYmxvY2tfaW5zdGFuY2VfMTMiO3M6MzoiaW50IjtzOjEyOiJibG9jazRoaWRkZW4iO3M6NDoiYm9vbCI7czoxMjoiYmxvY2s1aGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTM6ImJsb2NrMTBoaWRkZW4iO3M6NDoiYm9vbCI7czoxMzoiYmxvY2sxMWhpZGRlbiI7czo0OiJib29sIjtzOjEzOiJibG9jazEyaGlkZGVuIjtzOjQ6ImJvb2wiO3M6MTM6ImJsb2NrMTNoaWRkZW4iO3M6NDoiYm9vbCI7fX0=',1380714512,1380714606,'10.98.3.19','10.98.3.19');
/*!40000 ALTER TABLE `mdl_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_high_scores`
--

DROP TABLE IF EXISTS `mdl_lesson_high_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_high_scores` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `gradeid` bigint(10) NOT NULL DEFAULT '0',
  `nickname` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_lesshighscor_use_ix` (`userid`),
  KEY `mdl_lesshighscor_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='high scores for each lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_high_scores`
--

LOCK TABLES `mdl_lesson_high_scores` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_high_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_high_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_assignments`
--

DROP TABLE IF EXISTS `mdl_role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `mdl_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='assigning roles in different context';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_assignments`
--

LOCK TABLES `mdl_role_assignments` WRITE;
/*!40000 ALTER TABLE `mdl_role_assignments` DISABLE KEYS */;
INSERT INTO `mdl_role_assignments` VALUES (1,5,17,3,1380701576,2,'',0,0);
/*!40000 ALTER TABLE `mdl_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instance_config`
--

DROP TABLE IF EXISTS `mdl_repository_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The config for intances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instance_config`
--

LOCK TABLES `mdl_repository_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_repository_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm`
--

DROP TABLE IF EXISTS `mdl_scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scormtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `version` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT '0',
  `grademethod` tinyint(2) NOT NULL DEFAULT '0',
  `whatgrade` bigint(10) NOT NULL DEFAULT '0',
  `maxattempt` bigint(10) NOT NULL DEFAULT '1',
  `forcecompleted` tinyint(1) NOT NULL DEFAULT '1',
  `forcenewattempt` tinyint(1) NOT NULL DEFAULT '0',
  `lastattemptlock` tinyint(1) NOT NULL DEFAULT '0',
  `displayattemptstatus` tinyint(1) NOT NULL DEFAULT '1',
  `displaycoursestructure` tinyint(1) NOT NULL DEFAULT '1',
  `updatefreq` tinyint(1) NOT NULL DEFAULT '0',
  `sha1hash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `launch` bigint(10) NOT NULL DEFAULT '0',
  `skipview` tinyint(1) NOT NULL DEFAULT '1',
  `hidebrowse` tinyint(1) NOT NULL DEFAULT '0',
  `hidetoc` tinyint(1) NOT NULL DEFAULT '0',
  `hidenav` tinyint(1) NOT NULL DEFAULT '0',
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `popup` tinyint(1) NOT NULL DEFAULT '0',
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` bigint(10) NOT NULL DEFAULT '100',
  `height` bigint(10) NOT NULL DEFAULT '600',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionstatusrequired` tinyint(1) DEFAULT NULL,
  `completionscorerequired` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scor_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each table is one SCORM module and its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm`
--

LOCK TABLES `mdl_scorm` WRITE;
/*!40000 ALTER TABLE `mdl_scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_ruleconds`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_ruleconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_ruleconds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `conditioncombination` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `ruletype` tinyint(2) NOT NULL DEFAULT '0',
  `action` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqrule_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 rule conditions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_ruleconds`
--

LOCK TABLES `mdl_scorm_seq_ruleconds` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_timer`
--

DROP TABLE IF EXISTS `mdl_lesson_timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_timer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `starttime` bigint(10) NOT NULL DEFAULT '0',
  `lessontime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lesstime_use_ix` (`userid`),
  KEY `mdl_lesstime_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='lesson timer for each lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_timer`
--

LOCK TABLES `mdl_lesson_timer` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `laststarttime` bigint(10) NOT NULL DEFAULT '0',
  `lastendtime` bigint(10) NOT NULL DEFAULT '0',
  `laststatus` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `nextstarttime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_questions`
--

DROP TABLE IF EXISTS `mdl_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_questions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shorttext` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `multi` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='the questions conforming one survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_questions`
--

LOCK TABLES `mdl_survey_questions` WRITE;
/*!40000 ALTER TABLE `mdl_survey_questions` DISABLE KEYS */;
INSERT INTO `mdl_survey_questions` VALUES (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);
/*!40000 ALTER TABLE `mdl_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_units`
--

DROP TABLE IF EXISTS `mdl_question_numerical_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_units` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `multiplier` decimal(40,20) NOT NULL DEFAULT '1.00000000000000000000',
  `unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl_quesnumeunit_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Optional unit options for numerical questions. This table is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_units`
--

LOCK TABLES `mdl_question_numerical_units` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_submissions`
--

DROP TABLE IF EXISTS `mdl_workshop_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `example` tinyint(2) DEFAULT '0',
  `authorid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8_unicode_ci,
  `contentformat` smallint(3) NOT NULL DEFAULT '0',
  `contenttrust` smallint(3) NOT NULL DEFAULT '0',
  `attachment` tinyint(2) DEFAULT '0',
  `grade` decimal(10,5) DEFAULT NULL,
  `gradeover` decimal(10,5) DEFAULT NULL,
  `gradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8_unicode_ci,
  `feedbackauthorformat` smallint(3) DEFAULT '0',
  `timegraded` bigint(10) DEFAULT NULL,
  `published` tinyint(2) DEFAULT '0',
  `late` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_worksubm_wor_ix` (`workshopid`),
  KEY `mdl_worksubm_gra_ix` (`gradeoverby`),
  KEY `mdl_worksubm_aut_ix` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about the submission and the aggregation of the grade f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_submissions`
--

LOCK TABLES `mdl_workshop_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `dataid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `approved` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_session`
--

DROP TABLE IF EXISTS `mdl_mnet_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `useragent` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) NOT NULL DEFAULT '0',
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_session`
--

LOCK TABLES `mdl_mnet_session` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_attempts`
--

DROP TABLE IF EXISTS `mdl_quiz_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `attempt` mediumint(6) NOT NULL DEFAULT '0',
  `uniqueid` bigint(10) NOT NULL DEFAULT '0',
  `layout` longtext COLLATE utf8_unicode_ci NOT NULL,
  `currentpage` bigint(10) NOT NULL DEFAULT '0',
  `preview` smallint(3) NOT NULL DEFAULT '0',
  `state` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inprogress',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timefinish` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `sumgrades` decimal(10,5) DEFAULT NULL,
  `needsupgradetonewqe` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizatte_quiuseatt_uix` (`quiz`,`userid`,`attempt`),
  UNIQUE KEY `mdl_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl_quizatte_qui_ix` (`quiz`),
  KEY `mdl_quizatte_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores users attempts at quizzes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_attempts`
--

LOCK TABLES `mdl_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_attempts` DISABLE KEYS */;
INSERT INTO `mdl_quiz_attempts` VALUES (1,1,3,1,1,'1,2,0',3,0,'finished',1380701626,1380701672,1380701672,1.00000,0),(2,2,3,1,2,'1,0,2,0,3,0,4,0',3,0,'finished',1380714525,1380714588,1380714588,1.00000,0);
/*!40000 ALTER TABLE `mdl_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multichoice`
--

DROP TABLE IF EXISTS `mdl_question_multichoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_multichoice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `layout` smallint(4) NOT NULL DEFAULT '0',
  `answers` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `answernumbering` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que2_ix` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for multiple choice questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_multichoice`
--

LOCK TABLES `mdl_question_multichoice` WRITE;
/*!40000 ALTER TABLE `mdl_question_multichoice` DISABLE KEYS */;
INSERT INTO `mdl_question_multichoice` VALUES (1,1,0,'1,2,3',1,1,'',1,'',1,'',1,'abc',0),(2,2,0,'4,5,6',1,1,'',1,'',1,'',1,'abc',0),(3,3,0,'7,8,9',1,1,'',1,'',1,'',1,'abc',0),(4,4,0,'10,11,12',1,1,'',1,'',1,'',1,'abc',0),(5,5,0,'13,14,15',1,1,'',1,'',1,'',1,'abc',0),(6,6,0,'16,17,18',1,1,'',1,'',1,'',1,'abc',0),(7,7,0,'19,20,21',1,1,'',1,'',1,'',1,'abc',0),(8,8,0,'22,23,24',1,1,'',1,'',1,'',1,'abc',0),(9,9,0,'25,26,27,28',1,1,'',1,'',1,'',1,'abc',0),(10,10,0,'29,30,31,32',1,1,'',1,'',1,'',1,'abc',0),(11,11,0,'33,34,35',1,1,'',1,'',1,'',1,'abc',0),(12,12,0,'36,37,38,39',1,1,'',1,'',1,'',1,'abc',0),(13,13,0,'40,41',1,1,'',1,'',1,'',1,'abc',0),(14,14,0,'42,43,44',1,1,'',1,'',1,'',1,'abc',0),(15,15,0,'45,46,47,48',1,1,'',1,'',1,'',1,'abc',0),(16,16,0,'49,50',1,1,'',1,'',1,'',1,'abc',0),(17,17,0,'51,52,53,54',1,1,'',1,'',1,'',1,'abc',0),(18,18,0,'55,56,57',1,1,'',1,'',1,'',1,'abc',0),(19,19,0,'58,59,60',1,1,'',1,'',1,'',1,'abc',0),(20,20,0,'61,62,63',1,1,'',1,'',1,'',1,'abc',0),(21,21,0,'64,65',1,1,'',1,'',1,'',1,'abc',0),(22,22,0,'66,67,68',1,1,'',1,'',1,'',1,'abc',0),(23,23,0,'69,70,71',1,1,'',1,'',1,'',1,'abc',0),(24,24,0,'72,73,74',1,1,'',1,'',1,'',1,'abc',0),(25,25,0,'75,76,77',1,1,'',1,'',1,'',1,'abc',0),(26,26,0,'78,79',1,1,'',1,'',1,'',1,'abc',0);
/*!40000 ALTER TABLE `mdl_question_multichoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `commenttext` longtext COLLATE utf8_unicode_ci,
  `commentformat` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_comments`
--

LOCK TABLES `mdl_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_grades`
--

DROP TABLE IF EXISTS `mdl_workshop_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assessmentid` bigint(10) NOT NULL,
  `strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `peercomment` longtext COLLATE utf8_unicode_ci,
  `peercommentformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workgrad_assstrdim_uix` (`assessmentid`,`strategy`,`dimensionid`),
  KEY `mdl_workgrad_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='How the reviewers filled-up the grading forms, given grades ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_grades`
--

LOCK TABLES `mdl_workshop_grades` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `reason` longtext COLLATE utf8_unicode_ci NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_pages`
--

DROP TABLE IF EXISTS `mdl_wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'title',
  `cachedcontent` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `timerendered` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `pageviews` bigint(10) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikipage_subtituse_uix` (`subwikiid`,`title`,`userid`),
  KEY `mdl_wikipage_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores wiki pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_pages`
--

LOCK TABLES `mdl_wiki_pages` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_imscp`
--

DROP TABLE IF EXISTS `mdl_imscp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_imscp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `keepold` bigint(10) NOT NULL DEFAULT '-1',
  `structure` longtext COLLATE utf8_unicode_ci,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_imsc_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each record is one imscp resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_imscp`
--

LOCK TABLES `mdl_imscp` WRITE;
/*!40000 ALTER TABLE `mdl_imscp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_imscp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book_chapters`
--

DROP TABLE IF EXISTS `mdl_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book_chapters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(10) NOT NULL DEFAULT '0',
  `pagenum` bigint(10) NOT NULL DEFAULT '0',
  `subchapter` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(2) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `importsrc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book_chapters`
--

LOCK TABLES `mdl_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service2rpc`
--

LOCK TABLES `mdl_mnet_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15);
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_sitecourse_map`
--

DROP TABLE IF EXISTS `mdl_feedback_sitecourse_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_sitecourse_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedbackid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_feedsitemap_cou_ix` (`courseid`),
  KEY `mdl_feedsitemap_fee_ix` (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='feedback sitecourse map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_sitecourse_map`
--

LOCK TABLES `mdl_feedback_sitecourse_map` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files`
--

DROP TABLE IF EXISTS `mdl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filearea` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `source` longtext COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `referencefileid` bigint(10) DEFAULT NULL,
  `referencelastsync` bigint(10) DEFAULT NULL,
  `referencelifetime` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_file_pat_uix` (`pathnamehash`),
  KEY `mdl_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl_file_con_ix` (`contenthash`),
  KEY `mdl_file_con2_ix` (`contextid`),
  KEY `mdl_file_use_ix` (`userid`),
  KEY `mdl_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files`
--

LOCK TABLES `mdl_files` WRITE;
/*!40000 ALTER TABLE `mdl_files` DISABLE KEYS */;
INSERT INTO `mdl_files` VALUES (1,'798384301691ccf046629f782a358aa0be14a534','6ba45e8b6c28b88ed74b14441611c3f8362e400f',5,'user','draft',575378418,'/','questions-Testing-Default for Testing-20131002-1128.xml',2,5254,'application/xml',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:55:\"questions-Testing-Default for Testing-20131002-1128.xml\";}','Admin User','allrightsreserved',1380702564,1380702564,0,NULL,NULL,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','a3159080db9a010f93305fef36a230ee8efece7b',5,'user','draft',575378418,'/','.',2,0,NULL,0,NULL,NULL,NULL,1380702564,1380702564,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mdl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_files_template`
--

DROP TABLE IF EXISTS `mdl_backup_files_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_files_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filearea` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `info` longtext COLLATE utf8_unicode_ci,
  `newcontextid` bigint(10) DEFAULT NULL,
  `newitemid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_backfiletemp_bacconcomf_ix` (`backupid`,`contextid`,`component`,`filearea`,`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To store files along the backup process. Note this table isn';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_files_template`
--

LOCK TABLES `mdl_backup_files_template` WRITE;
/*!40000 ALTER TABLE `mdl_backup_files_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_files_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_license`
--

DROP TABLE IF EXISTS `mdl_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_license` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` longtext COLLATE utf8_unicode_ci,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='store licenses used by moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_license`
--

LOCK TABLES `mdl_license` WRITE;
/*!40000 ALTER TABLE `mdl_license` DISABLE KEYS */;
INSERT INTO `mdl_license` VALUES (1,'unknown','Unknown license','',1,2010033100),(2,'allrightsreserved','All rights reserved','http://en.wikipedia.org/wiki/All_rights_reserved',1,2010033100),(3,'public','Public Domain','http://creativecommons.org/licenses/publicdomain/',1,2010033100),(4,'cc','Creative Commons','http://creativecommons.org/licenses/by/3.0/',1,2010033100),(5,'cc-nd','Creative Commons - NoDerivs','http://creativecommons.org/licenses/by-nd/3.0/',1,2010033100),(6,'cc-nc-nd','Creative Commons - No Commercial NoDerivs','http://creativecommons.org/licenses/by-nc-nd/3.0/',1,2010033100),(7,'cc-nc','Creative Commons - No Commercial','http://creativecommons.org/licenses/by-nd/3.0/',1,2010033100),(8,'cc-nc-sa','Creative Commons - No Commercial ShareAlike','http://creativecommons.org/licenses/by-nc-sa/3.0/',1,2010033100),(9,'cc-sa','Creative Commons - ShareAlike','http://creativecommons.org/licenses/by-sa/3.0/',1,2010033100);
/*!40000 ALTER TABLE `mdl_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `rpcid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_service2rpc`
--

LOCK TABLES `mdl_mnet_remote_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15),(16,4,16);
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `captype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextlevel` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:readallmessages','read',10,'moodle',8),(3,'moodle/site:sendmessage','write',10,'moodle',16),(4,'moodle/site:approvecourse','write',10,'moodle',4),(5,'moodle/backup:backupcourse','write',50,'moodle',28),(6,'moodle/backup:backupsection','write',50,'moodle',28),(7,'moodle/backup:backupactivity','write',70,'moodle',28),(8,'moodle/backup:backuptargethub','write',50,'moodle',28),(9,'moodle/backup:backuptargetimport','write',50,'moodle',28),(10,'moodle/backup:downloadfile','write',50,'moodle',28),(11,'moodle/backup:configure','write',50,'moodle',28),(12,'moodle/backup:userinfo','read',50,'moodle',8),(13,'moodle/backup:anonymise','read',50,'moodle',8),(14,'moodle/restore:restorecourse','write',50,'moodle',28),(15,'moodle/restore:restoresection','write',50,'moodle',28),(16,'moodle/restore:restoreactivity','write',50,'moodle',28),(17,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(18,'moodle/restore:restoretargethub','write',50,'moodle',28),(19,'moodle/restore:restoretargetimport','write',50,'moodle',28),(20,'moodle/restore:uploadfile','write',50,'moodle',28),(21,'moodle/restore:configure','write',50,'moodle',28),(22,'moodle/restore:rolldates','write',50,'moodle',0),(23,'moodle/restore:userinfo','write',50,'moodle',30),(24,'moodle/restore:createuser','write',10,'moodle',24),(25,'moodle/site:manageblocks','write',80,'moodle',20),(26,'moodle/site:accessallgroups','read',50,'moodle',0),(27,'moodle/site:viewfullnames','read',50,'moodle',0),(28,'moodle/site:viewuseridentity','read',50,'moodle',0),(29,'moodle/site:viewreports','read',50,'moodle',8),(30,'moodle/site:trustcontent','write',50,'moodle',4),(31,'moodle/site:uploadusers','write',10,'moodle',24),(32,'moodle/filter:manage','write',50,'moodle',0),(33,'moodle/user:create','write',10,'moodle',24),(34,'moodle/user:delete','write',10,'moodle',8),(35,'moodle/user:update','write',10,'moodle',24),(36,'moodle/user:viewdetails','read',50,'moodle',0),(37,'moodle/user:viewalldetails','read',30,'moodle',8),(38,'moodle/user:viewhiddendetails','read',50,'moodle',8),(39,'moodle/user:loginas','write',50,'moodle',30),(40,'moodle/user:managesyspages','write',10,'moodle',0),(41,'moodle/user:manageblocks','write',30,'moodle',0),(42,'moodle/user:manageownblocks','write',10,'moodle',0),(43,'moodle/user:manageownfiles','write',10,'moodle',0),(44,'moodle/my:configsyspages','write',10,'moodle',0),(45,'moodle/role:assign','write',50,'moodle',28),(46,'moodle/role:review','read',50,'moodle',8),(47,'moodle/role:override','write',50,'moodle',28),(48,'moodle/role:safeoverride','write',50,'moodle',16),(49,'moodle/role:manage','write',10,'moodle',28),(50,'moodle/role:switchroles','read',50,'moodle',12),(51,'moodle/category:manage','write',40,'moodle',4),(52,'moodle/category:viewhiddencategories','read',40,'moodle',0),(53,'moodle/cohort:manage','write',40,'moodle',0),(54,'moodle/cohort:assign','write',40,'moodle',0),(55,'moodle/cohort:view','read',50,'moodle',0),(56,'moodle/course:create','write',40,'moodle',4),(57,'moodle/course:request','write',10,'moodle',0),(58,'moodle/course:delete','write',50,'moodle',32),(59,'moodle/course:update','write',50,'moodle',4),(60,'moodle/course:view','read',50,'moodle',0),(61,'moodle/course:enrolreview','read',50,'moodle',8),(62,'moodle/course:enrolconfig','write',50,'moodle',8),(63,'moodle/course:bulkmessaging','write',50,'moodle',16),(64,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(65,'moodle/course:viewhiddencourses','read',50,'moodle',0),(66,'moodle/course:visibility','write',50,'moodle',0),(67,'moodle/course:managefiles','write',50,'moodle',4),(68,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(69,'moodle/course:manageactivities','write',70,'moodle',4),(70,'moodle/course:activityvisibility','write',70,'moodle',0),(71,'moodle/course:viewhiddenactivities','write',70,'moodle',0),(72,'moodle/course:viewparticipants','read',50,'moodle',0),(73,'moodle/course:changefullname','write',50,'moodle',4),(74,'moodle/course:changeshortname','write',50,'moodle',4),(75,'moodle/course:changeidnumber','write',50,'moodle',4),(76,'moodle/course:changecategory','write',50,'moodle',4),(77,'moodle/course:changesummary','write',50,'moodle',4),(78,'moodle/site:viewparticipants','read',10,'moodle',0),(79,'moodle/course:viewscales','read',50,'moodle',0),(80,'moodle/course:managescales','write',50,'moodle',0),(81,'moodle/course:managegroups','write',50,'moodle',0),(82,'moodle/course:reset','write',50,'moodle',32),(83,'moodle/blog:view','read',10,'moodle',0),(84,'moodle/blog:search','read',10,'moodle',0),(85,'moodle/blog:viewdrafts','read',10,'moodle',8),(86,'moodle/blog:create','write',10,'moodle',16),(87,'moodle/blog:manageentries','write',10,'moodle',16),(88,'moodle/blog:manageexternal','write',10,'moodle',16),(89,'moodle/blog:associatecourse','write',50,'moodle',0),(90,'moodle/blog:associatemodule','write',70,'moodle',0),(91,'moodle/calendar:manageownentries','write',50,'moodle',16),(92,'moodle/calendar:managegroupentries','write',50,'moodle',16),(93,'moodle/calendar:manageentries','write',50,'moodle',16),(94,'moodle/user:editprofile','write',30,'moodle',24),(95,'moodle/user:editownprofile','write',10,'moodle',16),(96,'moodle/user:changeownpassword','write',10,'moodle',0),(97,'moodle/user:readuserposts','read',30,'moodle',0),(98,'moodle/user:readuserblogs','read',30,'moodle',0),(99,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(100,'moodle/user:editmessageprofile','write',30,'moodle',16),(101,'moodle/user:editownmessageprofile','write',10,'moodle',0),(102,'moodle/question:managecategory','write',50,'moodle',20),(103,'moodle/question:add','write',50,'moodle',20),(104,'moodle/question:editmine','write',50,'moodle',20),(105,'moodle/question:editall','write',50,'moodle',20),(106,'moodle/question:viewmine','read',50,'moodle',0),(107,'moodle/question:viewall','read',50,'moodle',0),(108,'moodle/question:usemine','read',50,'moodle',0),(109,'moodle/question:useall','read',50,'moodle',0),(110,'moodle/question:movemine','write',50,'moodle',0),(111,'moodle/question:moveall','write',50,'moodle',0),(112,'moodle/question:config','write',10,'moodle',2),(113,'moodle/question:flag','write',50,'moodle',0),(114,'moodle/site:doclinks','read',10,'moodle',0),(115,'moodle/course:sectionvisibility','write',50,'moodle',0),(116,'moodle/course:useremail','write',50,'moodle',0),(117,'moodle/course:viewhiddensections','write',50,'moodle',0),(118,'moodle/course:setcurrentsection','write',50,'moodle',0),(119,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(120,'moodle/grade:viewall','read',50,'moodle',8),(121,'moodle/grade:view','read',50,'moodle',0),(122,'moodle/grade:viewhidden','read',50,'moodle',8),(123,'moodle/grade:import','write',50,'moodle',12),(124,'moodle/grade:export','read',50,'moodle',8),(125,'moodle/grade:manage','write',50,'moodle',12),(126,'moodle/grade:edit','write',50,'moodle',12),(127,'moodle/grade:managegradingforms','write',50,'moodle',12),(128,'moodle/grade:sharegradingforms','write',10,'moodle',4),(129,'moodle/grade:managesharedforms','write',10,'moodle',4),(130,'moodle/grade:manageoutcomes','write',50,'moodle',0),(131,'moodle/grade:manageletters','write',50,'moodle',0),(132,'moodle/grade:hide','write',50,'moodle',0),(133,'moodle/grade:lock','write',50,'moodle',0),(134,'moodle/grade:unlock','write',50,'moodle',0),(135,'moodle/my:manageblocks','write',10,'moodle',0),(136,'moodle/notes:view','read',50,'moodle',0),(137,'moodle/notes:manage','write',50,'moodle',16),(138,'moodle/tag:manage','write',10,'moodle',16),(139,'moodle/tag:create','write',10,'moodle',16),(140,'moodle/tag:edit','write',10,'moodle',16),(141,'moodle/tag:editblocks','write',10,'moodle',0),(142,'moodle/block:view','read',80,'moodle',0),(143,'moodle/block:edit','write',80,'moodle',20),(144,'moodle/portfolio:export','read',10,'moodle',0),(145,'moodle/comment:view','read',50,'moodle',0),(146,'moodle/comment:post','write',50,'moodle',24),(147,'moodle/comment:delete','write',50,'moodle',32),(148,'moodle/webservice:createtoken','write',10,'moodle',62),(149,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(150,'moodle/rating:view','read',50,'moodle',0),(151,'moodle/rating:viewany','read',50,'moodle',8),(152,'moodle/rating:viewall','read',50,'moodle',8),(153,'moodle/rating:rate','write',50,'moodle',0),(154,'moodle/course:publish','write',10,'moodle',24),(155,'moodle/course:markcomplete','write',50,'moodle',0),(156,'moodle/community:add','write',10,'moodle',0),(157,'moodle/community:download','write',10,'moodle',0),(158,'mod/assign:view','read',70,'mod_assign',0),(159,'mod/assign:submit','write',70,'mod_assign',0),(160,'mod/assign:grade','write',70,'mod_assign',4),(161,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(162,'mod/assign:addinstance','write',50,'mod_assign',4),(163,'mod/assignment:view','read',70,'mod_assignment',0),(164,'mod/assignment:addinstance','write',50,'mod_assignment',4),(165,'mod/assignment:submit','write',70,'mod_assignment',0),(166,'mod/assignment:grade','write',70,'mod_assignment',4),(167,'mod/assignment:exportownsubmission','read',70,'mod_assignment',0),(168,'mod/book:addinstance','write',50,'mod_book',4),(169,'mod/book:read','read',70,'mod_book',0),(170,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(171,'mod/book:edit','write',70,'mod_book',4),(172,'mod/chat:addinstance','write',50,'mod_chat',4),(173,'mod/chat:chat','write',70,'mod_chat',16),(174,'mod/chat:readlog','read',70,'mod_chat',0),(175,'mod/chat:deletelog','write',70,'mod_chat',0),(176,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(177,'mod/chat:exportsession','read',70,'mod_chat',8),(178,'mod/choice:addinstance','write',50,'mod_choice',4),(179,'mod/choice:choose','write',70,'mod_choice',0),(180,'mod/choice:readresponses','read',70,'mod_choice',0),(181,'mod/choice:deleteresponses','write',70,'mod_choice',0),(182,'mod/choice:downloadresponses','read',70,'mod_choice',0),(183,'mod/data:addinstance','write',50,'mod_data',4),(184,'mod/data:viewentry','read',70,'mod_data',0),(185,'mod/data:writeentry','write',70,'mod_data',16),(186,'mod/data:comment','write',70,'mod_data',16),(187,'mod/data:rate','write',70,'mod_data',0),(188,'mod/data:viewrating','read',70,'mod_data',0),(189,'mod/data:viewanyrating','read',70,'mod_data',8),(190,'mod/data:viewallratings','read',70,'mod_data',8),(191,'mod/data:approve','write',70,'mod_data',16),(192,'mod/data:manageentries','write',70,'mod_data',16),(193,'mod/data:managecomments','write',70,'mod_data',16),(194,'mod/data:managetemplates','write',70,'mod_data',20),(195,'mod/data:viewalluserpresets','read',70,'mod_data',0),(196,'mod/data:manageuserpresets','write',70,'mod_data',20),(197,'mod/data:exportentry','read',70,'mod_data',8),(198,'mod/data:exportownentry','read',70,'mod_data',0),(199,'mod/data:exportallentries','read',70,'mod_data',8),(200,'mod/feedback:addinstance','write',50,'mod_feedback',4),(201,'mod/feedback:view','read',70,'mod_feedback',0),(202,'mod/feedback:complete','write',70,'mod_feedback',16),(203,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(204,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(205,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(206,'mod/feedback:edititems','write',70,'mod_feedback',20),(207,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(208,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(209,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(210,'mod/feedback:viewreports','read',70,'mod_feedback',8),(211,'mod/feedback:receivemail','read',70,'mod_feedback',8),(212,'mod/folder:addinstance','write',50,'mod_folder',4),(213,'mod/folder:view','read',70,'mod_folder',0),(214,'mod/folder:managefiles','write',70,'mod_folder',16),(215,'mod/forum:addinstance','write',50,'mod_forum',4),(216,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(217,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(218,'mod/forum:startdiscussion','write',70,'mod_forum',16),(219,'mod/forum:replypost','write',70,'mod_forum',16),(220,'mod/forum:addnews','write',70,'mod_forum',16),(221,'mod/forum:replynews','write',70,'mod_forum',16),(222,'mod/forum:viewrating','read',70,'mod_forum',0),(223,'mod/forum:viewanyrating','read',70,'mod_forum',8),(224,'mod/forum:viewallratings','read',70,'mod_forum',8),(225,'mod/forum:rate','write',70,'mod_forum',0),(226,'mod/forum:createattachment','write',70,'mod_forum',16),(227,'mod/forum:deleteownpost','read',70,'mod_forum',0),(228,'mod/forum:deleteanypost','read',70,'mod_forum',0),(229,'mod/forum:splitdiscussions','read',70,'mod_forum',0),(230,'mod/forum:movediscussions','read',70,'mod_forum',0),(231,'mod/forum:editanypost','write',70,'mod_forum',16),(232,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(233,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(234,'mod/forum:managesubscriptions','read',70,'mod_forum',16),(235,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(236,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(237,'mod/forum:exportpost','read',70,'mod_forum',8),(238,'mod/forum:exportownpost','read',70,'mod_forum',8),(239,'mod/forum:addquestion','write',70,'mod_forum',16),(240,'mod/glossary:addinstance','write',50,'mod_glossary',4),(241,'mod/glossary:view','read',70,'mod_glossary',0),(242,'mod/glossary:write','write',70,'mod_glossary',16),(243,'mod/glossary:manageentries','write',70,'mod_glossary',16),(244,'mod/glossary:managecategories','write',70,'mod_glossary',16),(245,'mod/glossary:comment','write',70,'mod_glossary',16),(246,'mod/glossary:managecomments','write',70,'mod_glossary',16),(247,'mod/glossary:import','write',70,'mod_glossary',16),(248,'mod/glossary:export','read',70,'mod_glossary',0),(249,'mod/glossary:approve','write',70,'mod_glossary',16),(250,'mod/glossary:rate','write',70,'mod_glossary',0),(251,'mod/glossary:viewrating','read',70,'mod_glossary',0),(252,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(253,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(254,'mod/glossary:exportentry','read',70,'mod_glossary',8),(255,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(256,'mod/imscp:view','read',70,'mod_imscp',0),(257,'mod/imscp:addinstance','write',50,'mod_imscp',4),(258,'mod/label:addinstance','write',50,'mod_label',4),(259,'mod/lesson:addinstance','write',50,'mod_lesson',4),(260,'mod/lesson:edit','write',70,'mod_lesson',4),(261,'mod/lesson:manage','write',70,'mod_lesson',0),(262,'mod/lti:view','read',70,'mod_lti',0),(263,'mod/lti:addinstance','write',50,'mod_lti',4),(264,'mod/lti:grade','write',70,'mod_lti',4),(265,'mod/lti:manage','write',70,'mod_lti',4),(266,'mod/lti:addcoursetool','write',50,'mod_lti',0),(267,'mod/lti:requesttooladd','write',50,'mod_lti',0),(268,'mod/page:view','read',70,'mod_page',0),(269,'mod/page:addinstance','write',50,'mod_page',4),(270,'mod/quiz:view','read',70,'mod_quiz',0),(271,'mod/quiz:addinstance','write',50,'mod_quiz',4),(272,'mod/quiz:attempt','write',70,'mod_quiz',16),(273,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(274,'mod/quiz:manage','write',70,'mod_quiz',16),(275,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(276,'mod/quiz:preview','write',70,'mod_quiz',0),(277,'mod/quiz:grade','write',70,'mod_quiz',16),(278,'mod/quiz:regrade','write',70,'mod_quiz',16),(279,'mod/quiz:viewreports','read',70,'mod_quiz',8),(280,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(281,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(282,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(283,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(284,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(285,'mod/resource:view','read',70,'mod_resource',0),(286,'mod/resource:addinstance','write',50,'mod_resource',4),(287,'mod/scorm:addinstance','write',50,'mod_scorm',4),(288,'mod/scorm:viewreport','read',70,'mod_scorm',0),(289,'mod/scorm:skipview','write',70,'mod_scorm',0),(290,'mod/scorm:savetrack','write',70,'mod_scorm',0),(291,'mod/scorm:viewscores','read',70,'mod_scorm',0),(292,'mod/scorm:deleteresponses','read',70,'mod_scorm',0),(293,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(294,'mod/survey:addinstance','write',50,'mod_survey',4),(295,'mod/survey:participate','read',70,'mod_survey',0),(296,'mod/survey:readresponses','read',70,'mod_survey',0),(297,'mod/survey:download','read',70,'mod_survey',0),(298,'mod/url:view','read',70,'mod_url',0),(299,'mod/url:addinstance','write',50,'mod_url',4),(300,'mod/wiki:addinstance','write',50,'mod_wiki',4),(301,'mod/wiki:viewpage','read',70,'mod_wiki',0),(302,'mod/wiki:editpage','write',70,'mod_wiki',16),(303,'mod/wiki:createpage','write',70,'mod_wiki',16),(304,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(305,'mod/wiki:editcomment','write',70,'mod_wiki',16),(306,'mod/wiki:managecomment','write',70,'mod_wiki',0),(307,'mod/wiki:managefiles','write',70,'mod_wiki',0),(308,'mod/wiki:overridelock','write',70,'mod_wiki',0),(309,'mod/wiki:managewiki','write',70,'mod_wiki',0),(310,'mod/workshop:view','read',70,'mod_workshop',0),(311,'mod/workshop:addinstance','write',50,'mod_workshop',4),(312,'mod/workshop:switchphase','write',70,'mod_workshop',0),(313,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(314,'mod/workshop:submit','write',70,'mod_workshop',0),(315,'mod/workshop:peerassess','write',70,'mod_workshop',0),(316,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(317,'mod/workshop:allocate','write',70,'mod_workshop',0),(318,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(319,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(320,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(321,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(322,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(323,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(324,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(325,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(326,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(327,'enrol/authorize:config','write',50,'enrol_authorize',0),(328,'enrol/authorize:manage','write',50,'enrol_authorize',0),(329,'enrol/authorize:unenrol','write',50,'enrol_authorize',0),(330,'enrol/authorize:unenrolself','write',50,'enrol_authorize',0),(331,'enrol/authorize:managepayments','write',10,'enrol_authorize',8),(332,'enrol/authorize:uploadcsv','write',10,'enrol_authorize',4),(333,'enrol/category:synchronised','write',10,'enrol_category',0),(334,'enrol/cohort:config','write',50,'enrol_cohort',0),(335,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(336,'enrol/database:unenrol','write',50,'enrol_database',0),(337,'enrol/guest:config','write',50,'enrol_guest',0),(338,'enrol/ldap:manage','write',50,'enrol_ldap',0),(339,'enrol/manual:config','write',50,'enrol_manual',0),(340,'enrol/manual:enrol','write',50,'enrol_manual',0),(341,'enrol/manual:manage','write',50,'enrol_manual',0),(342,'enrol/manual:unenrol','write',50,'enrol_manual',0),(343,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(344,'enrol/meta:config','write',50,'enrol_meta',0),(345,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(346,'enrol/meta:unenrol','write',50,'enrol_meta',0),(347,'enrol/paypal:config','write',50,'enrol_paypal',0),(348,'enrol/paypal:manage','write',50,'enrol_paypal',0),(349,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(350,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(351,'enrol/self:config','write',50,'enrol_self',0),(352,'enrol/self:manage','write',50,'enrol_self',0),(353,'enrol/self:unenrolself','write',50,'enrol_self',0),(354,'enrol/self:unenrol','write',50,'enrol_self',0),(355,'block/online_users:viewlist','read',80,'block_online_users',0),(356,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(357,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(358,'report/completion:view','read',50,'report_completion',8),(359,'report/courseoverview:view','read',10,'report_courseoverview',8),(360,'report/log:view','read',50,'report_log',8),(361,'report/log:viewtoday','read',50,'report_log',8),(362,'report/loglive:view','read',50,'report_loglive',8),(363,'report/outline:view','read',50,'report_outline',8),(364,'report/participation:view','read',50,'report_participation',8),(365,'report/progress:view','read',50,'report_progress',8),(366,'report/questioninstances:view','read',10,'report_questioninstances',0),(367,'report/security:view','read',10,'report_security',2),(368,'report/stats:view','read',50,'report_stats',8),(369,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(370,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(371,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(372,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(373,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(374,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(375,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(376,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(377,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(378,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(379,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(380,'gradereport/grader:view','read',50,'gradereport_grader',8),(381,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(382,'gradereport/overview:view','read',50,'gradereport_overview',8),(383,'gradereport/user:view','read',50,'gradereport_user',8),(384,'webservice/amf:use','read',50,'webservice_amf',62),(385,'webservice/rest:use','read',50,'webservice_rest',62),(386,'webservice/soap:use','read',50,'webservice_soap',62),(387,'webservice/xmlrpc:use','read',50,'webservice_xmlrpc',62),(388,'repository/alfresco:view','read',70,'repository_alfresco',0),(389,'repository/boxnet:view','read',70,'repository_boxnet',0),(390,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(391,'repository/dropbox:view','read',70,'repository_dropbox',0),(392,'repository/equella:view','read',70,'repository_equella',0),(393,'repository/filesystem:view','read',70,'repository_filesystem',0),(394,'repository/flickr:view','read',70,'repository_flickr',0),(395,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(396,'repository/googledocs:view','read',70,'repository_googledocs',0),(397,'repository/local:view','read',70,'repository_local',0),(398,'repository/merlot:view','read',70,'repository_merlot',0),(399,'repository/picasa:view','read',70,'repository_picasa',0),(400,'repository/recent:view','read',70,'repository_recent',0),(401,'repository/s3:view','read',70,'repository_s3',0),(402,'repository/upload:view','read',70,'repository_upload',0),(403,'repository/url:view','read',70,'repository_url',0),(404,'repository/user:view','read',70,'repository_user',0),(405,'repository/webdav:view','read',70,'repository_webdav',0),(406,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(407,'repository/youtube:view','read',70,'repository_youtube',0),(408,'tool/customlang:view','read',10,'tool_customlang',2),(409,'tool/customlang:edit','write',10,'tool_customlang',6),(410,'tool/unittest:execute','write',10,'tool_unittest',32),(411,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(412,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(413,'booktool/print:print','read',70,'booktool_print',0),(414,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(415,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(416,'quiz/statistics:view','read',70,'quiz_statistics',0);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_randomsamatch`
--

DROP TABLE IF EXISTS `mdl_question_randomsamatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_randomsamatch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `choose` bigint(10) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `mdl_quesrand_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about a random short-answer matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_randomsamatch`
--

LOCK TABLES `mdl_question_randomsamatch` WRITE;
/*!40000 ALTER TABLE `mdl_question_randomsamatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_randomsamatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_user_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserweek_cou_ix` (`courseid`),
  KEY `mdl_statuserweek_use_ix` (`userid`),
  KEY `mdl_statuserweek_rol_ix` (`roleid`),
  KEY `mdl_statuserweek_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To accumulate weekly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_weekly`
--

LOCK TABLES `mdl_stats_user_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempts`
--

DROP TABLE IF EXISTS `mdl_question_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `behaviour` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) NOT NULL DEFAULT '1',
  `maxmark` decimal(12,7) NOT NULL,
  `minfraction` decimal(12,7) NOT NULL,
  `flagged` tinyint(1) NOT NULL DEFAULT '0',
  `questionsummary` longtext COLLATE utf8_unicode_ci,
  `rightanswer` longtext COLLATE utf8_unicode_ci,
  `responsesummary` longtext COLLATE utf8_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesatte_queslo_uix` (`questionusageid`,`slot`),
  KEY `mdl_quesatte_que_ix` (`questionid`),
  KEY `mdl_quesatte_que2_ix` (`questionusageid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each row here corresponds to an attempt at one question, as ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempts`
--

LOCK TABLES `mdl_question_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempts` DISABLE KEYS */;
INSERT INTO `mdl_question_attempts` VALUES (1,1,1,'deferredfeedback',3,1,1.0000000,0.0000000,0,'erew: wergwe; ergwerg; ewrg','ergwerg','ergwerg',1380701672),(2,1,2,'deferredfeedback',4,1,1.0000000,0.0000000,0,'asdf: asdf; asdf; asdfasd','asdfasd','asdf',1380701672),(3,2,1,'deferredfeedback',5,1,1.0000000,0.0000000,0,'hello: 125; 123; 124','124','125',1380714588),(4,2,2,'deferredfeedback',6,1,1.0000000,0.0000000,0,'artasdf: asdf; asdf; asdf','asdf','asdf',1380714588),(5,2,3,'deferredfeedback',7,1,1.0000000,0.0000000,0,'erew: ergwerg; wergwe; ewrg','ergwerg','wergwe',1380714588),(6,2,4,'deferredfeedback',8,1,1.0000000,0.0000000,0,'asdf: asdf; asdf; asdfasd','asdfasd','asdf',1380714588);
/*!40000 ALTER TABLE `mdl_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort_members`
--

DROP TABLE IF EXISTS `mdl_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort_members`
--

LOCK TABLES `mdl_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_display`
--

DROP TABLE IF EXISTS `mdl_log_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_display` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mtable` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_logdisp_modact_uix` (`module`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='For a particular module/action, specifies a moodle table/fie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_display`
--

LOCK TABLES `mdl_log_display` WRITE;
/*!40000 ALTER TABLE `mdl_log_display` DISABLE KEYS */;
INSERT INTO `mdl_log_display` VALUES (1,'course','user report','user','CONCAT(firstname, \' \', lastname)','moodle'),(2,'course','view','course','fullname','moodle'),(3,'course','view section','course_sections','name','moodle'),(4,'course','update','course','fullname','moodle'),(5,'course','enrol','course','fullname','moodle'),(6,'course','unenrol','course','fullname','moodle'),(7,'course','report log','course','fullname','moodle'),(8,'course','report live','course','fullname','moodle'),(9,'course','report outline','course','fullname','moodle'),(10,'course','report participation','course','fullname','moodle'),(11,'course','report stats','course','fullname','moodle'),(12,'message','write','user','CONCAT(firstname, \' \', lastname)','moodle'),(13,'message','read','user','CONCAT(firstname, \' \', lastname)','moodle'),(14,'message','add contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(15,'message','remove contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(16,'message','block contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(17,'message','unblock contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(18,'group','view','groups','name','moodle'),(19,'tag','update','tag','name','moodle'),(20,'tag','flag','tag','name','moodle'),(21,'user','view','user','CONCAT(firstname, \' \', lastname)','moodle'),(22,'assign','view','assign','name','mod_assign'),(23,'assign','add','assign','name','mod_assign'),(24,'assign','update','assign','name','mod_assign'),(25,'assign','view submission','assign','name','mod_assign'),(26,'assign','view feedback','assign','name','mod_assign'),(27,'assign','upload','assign','name','mod_assign'),(28,'assign','download all submissions','assign','name','mod_assign'),(29,'assign','view grading form','assign','name','mod_assign'),(30,'assign','delete mod','assign','name','mod_assign'),(31,'assign','view submission grading table','assign','name','mod_assign'),(32,'assign','view submit assignment form','assign','name','mod_assign'),(33,'assign','submit for grading','assign','name','mod_assign'),(34,'assign','submit','assign','name','mod_assign'),(35,'assign','revert submission to draft','assign','name','mod_assign'),(36,'assign','lock submission','assign','name','mod_assign'),(37,'assign','unlock submission','assign','name','mod_assign'),(38,'assign','grade submission','assign','name','mod_assign'),(39,'assign','view all','course','fullname','mod_assign'),(40,'assignment','view','assignment','name','mod_assignment'),(41,'assignment','add','assignment','name','mod_assignment'),(42,'assignment','update','assignment','name','mod_assignment'),(43,'assignment','view submission','assignment','name','mod_assignment'),(44,'assignment','upload','assignment','name','mod_assignment'),(45,'book','add','book','name','mod_book'),(46,'book','update','book','name','mod_book'),(47,'book','view','book','name','mod_book'),(48,'chat','view','chat','name','mod_chat'),(49,'chat','add','chat','name','mod_chat'),(50,'chat','update','chat','name','mod_chat'),(51,'chat','report','chat','name','mod_chat'),(52,'chat','talk','chat','name','mod_chat'),(53,'choice','view','choice','name','mod_choice'),(54,'choice','update','choice','name','mod_choice'),(55,'choice','add','choice','name','mod_choice'),(56,'choice','report','choice','name','mod_choice'),(57,'choice','choose','choice','name','mod_choice'),(58,'choice','choose again','choice','name','mod_choice'),(59,'data','view','data','name','mod_data'),(60,'data','add','data','name','mod_data'),(61,'data','update','data','name','mod_data'),(62,'data','record delete','data','name','mod_data'),(63,'data','fields add','data_fields','name','mod_data'),(64,'data','fields update','data_fields','name','mod_data'),(65,'data','templates saved','data','name','mod_data'),(66,'data','templates def','data','name','mod_data'),(67,'feedback','startcomplete','feedback','name','mod_feedback'),(68,'feedback','submit','feedback','name','mod_feedback'),(69,'feedback','delete','feedback','name','mod_feedback'),(70,'feedback','view','feedback','name','mod_feedback'),(71,'feedback','view all','course','shortname','mod_feedback'),(72,'folder','view','folder','name','mod_folder'),(73,'folder','view all','folder','name','mod_folder'),(74,'folder','update','folder','name','mod_folder'),(75,'folder','add','folder','name','mod_folder'),(76,'forum','add','forum','name','mod_forum'),(77,'forum','update','forum','name','mod_forum'),(78,'forum','add discussion','forum_discussions','name','mod_forum'),(79,'forum','add post','forum_posts','subject','mod_forum'),(80,'forum','update post','forum_posts','subject','mod_forum'),(81,'forum','user report','user','CONCAT(firstname, \' \', lastname)','mod_forum'),(82,'forum','move discussion','forum_discussions','name','mod_forum'),(83,'forum','view subscribers','forum','name','mod_forum'),(84,'forum','view discussion','forum_discussions','name','mod_forum'),(85,'forum','view forum','forum','name','mod_forum'),(86,'forum','subscribe','forum','name','mod_forum'),(87,'forum','unsubscribe','forum','name','mod_forum'),(88,'glossary','add','glossary','name','mod_glossary'),(89,'glossary','update','glossary','name','mod_glossary'),(90,'glossary','view','glossary','name','mod_glossary'),(91,'glossary','view all','glossary','name','mod_glossary'),(92,'glossary','add entry','glossary','name','mod_glossary'),(93,'glossary','update entry','glossary','name','mod_glossary'),(94,'glossary','add category','glossary','name','mod_glossary'),(95,'glossary','update category','glossary','name','mod_glossary'),(96,'glossary','delete category','glossary','name','mod_glossary'),(97,'glossary','approve entry','glossary','name','mod_glossary'),(98,'glossary','view entry','glossary_entries','concept','mod_glossary'),(99,'imscp','view','imscp','name','mod_imscp'),(100,'imscp','view all','imscp','name','mod_imscp'),(101,'imscp','update','imscp','name','mod_imscp'),(102,'imscp','add','imscp','name','mod_imscp'),(103,'label','add','label','name','mod_label'),(104,'label','update','label','name','mod_label'),(105,'lesson','start','lesson','name','mod_lesson'),(106,'lesson','end','lesson','name','mod_lesson'),(107,'lesson','view','lesson_pages','title','mod_lesson'),(108,'lti','view','lti','name','mod_lti'),(109,'lti','launch','lti','name','mod_lti'),(110,'lti','view all','lti','name','mod_lti'),(111,'page','view','page','name','mod_page'),(112,'page','view all','page','name','mod_page'),(113,'page','update','page','name','mod_page'),(114,'page','add','page','name','mod_page'),(115,'quiz','add','quiz','name','mod_quiz'),(116,'quiz','update','quiz','name','mod_quiz'),(117,'quiz','view','quiz','name','mod_quiz'),(118,'quiz','report','quiz','name','mod_quiz'),(119,'quiz','attempt','quiz','name','mod_quiz'),(120,'quiz','submit','quiz','name','mod_quiz'),(121,'quiz','review','quiz','name','mod_quiz'),(122,'quiz','editquestions','quiz','name','mod_quiz'),(123,'quiz','preview','quiz','name','mod_quiz'),(124,'quiz','start attempt','quiz','name','mod_quiz'),(125,'quiz','close attempt','quiz','name','mod_quiz'),(126,'quiz','continue attempt','quiz','name','mod_quiz'),(127,'quiz','edit override','quiz','name','mod_quiz'),(128,'quiz','delete override','quiz','name','mod_quiz'),(129,'resource','view','resource','name','mod_resource'),(130,'resource','view all','resource','name','mod_resource'),(131,'resource','update','resource','name','mod_resource'),(132,'resource','add','resource','name','mod_resource'),(133,'scorm','view','scorm','name','mod_scorm'),(134,'scorm','review','scorm','name','mod_scorm'),(135,'scorm','update','scorm','name','mod_scorm'),(136,'scorm','add','scorm','name','mod_scorm'),(137,'survey','add','survey','name','mod_survey'),(138,'survey','update','survey','name','mod_survey'),(139,'survey','download','survey','name','mod_survey'),(140,'survey','view form','survey','name','mod_survey'),(141,'survey','view graph','survey','name','mod_survey'),(142,'survey','view report','survey','name','mod_survey'),(143,'survey','submit','survey','name','mod_survey'),(144,'url','view','url','name','mod_url'),(145,'url','view all','url','name','mod_url'),(146,'url','update','url','name','mod_url'),(147,'url','add','url','name','mod_url'),(148,'workshop','add','workshop','name','mod_workshop'),(149,'workshop','update','workshop','name','mod_workshop'),(150,'workshop','view','workshop','name','mod_workshop'),(151,'workshop','view all','workshop','name','mod_workshop'),(152,'workshop','add submission','workshop_submissions','title','mod_workshop'),(153,'workshop','update submission','workshop_submissions','title','mod_workshop'),(154,'workshop','view submission','workshop_submissions','title','mod_workshop'),(155,'workshop','add assessment','workshop_submissions','title','mod_workshop'),(156,'workshop','update assessment','workshop_submissions','title','mod_workshop'),(157,'workshop','add example','workshop_submissions','title','mod_workshop'),(158,'workshop','update example','workshop_submissions','title','mod_workshop'),(159,'workshop','view example','workshop_submissions','title','mod_workshop'),(160,'workshop','add reference assessment','workshop_submissions','title','mod_workshop'),(161,'workshop','update reference assessment','workshop_submissions','title','mod_workshop'),(162,'workshop','add example assessment','workshop_submissions','title','mod_workshop'),(163,'workshop','update example assessment','workshop_submissions','title','mod_workshop'),(164,'workshop','update aggregate grades','workshop','name','mod_workshop'),(165,'workshop','update clear aggregated grades','workshop','name','mod_workshop'),(166,'workshop','update clear assessments','workshop','name','mod_workshop'),(167,'book','exportimscp','book','name','booktool_exportimscp'),(168,'book','print','book','name','booktool_print');
/*!40000 ALTER TABLE `mdl_log_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_submissions_old`
--

DROP TABLE IF EXISTS `mdl_workshop_submissions_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_submissions_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `finalgrade` smallint(3) NOT NULL DEFAULT '0',
  `late` smallint(3) NOT NULL DEFAULT '0',
  `nassessments` bigint(10) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_worksubmold_use_ix` (`userid`),
  KEY `mdl_worksubmold_mai_ix` (`mailed`),
  KEY `mdl_worksubmold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_submissions table to be dropped later in Moo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_submissions_old`
--

LOCK TABLES `mdl_workshop_submissions_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_submissions_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_submissions_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `fullname` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8_unicode_ci,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `format` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT '1',
  `sectioncache` longtext COLLATE utf8_unicode_ci,
  `modinfo` longtext COLLATE utf8_unicode_ci,
  `newsitems` mediumint(5) NOT NULL DEFAULT '1',
  `startdate` bigint(10) NOT NULL DEFAULT '0',
  `numsections` mediumint(5) NOT NULL DEFAULT '1',
  `marker` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '0',
  `legacyfiles` smallint(4) NOT NULL DEFAULT '0',
  `showreports` smallint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `hiddensections` tinyint(2) NOT NULL DEFAULT '0',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupmodeforce` smallint(4) NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `requested` tinyint(1) NOT NULL DEFAULT '0',
  `enablecompletion` tinyint(1) NOT NULL DEFAULT '0',
  `completionstartonenrol` tinyint(1) NOT NULL DEFAULT '0',
  `completionnotify` tinyint(1) NOT NULL DEFAULT '0',
  `coursedisplay` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,1,'moodle','moodle','','',0,'site',1,'a:1:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";s:2:\"12\";s:4:\"name\";N;}}','a:0:{}',3,0,0,0,0,0,0,1,1,0,0,0,0,'','',1380698825,1380699255,0,0,0,0,0),(2,1,10001,'Testing','Testing','','',1,'weeks',1,'a:11:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"1\";s:4:\"name\";N;s:7:\"summary\";N;}i:1;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"2\";s:4:\"name\";N;}i:2;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"3\";s:4:\"name\";N;}i:3;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"4\";s:4:\"name\";N;}i:4;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"5\";s:4:\"name\";N;}i:5;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"6\";s:4:\"name\";N;}i:6;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"7\";s:4:\"name\";N;}i:7;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"8\";s:4:\"name\";N;}i:8;O:8:\"stdClass\":2:{s:2:\"id\";s:1:\"9\";s:4:\"name\";N;}i:9;O:8:\"stdClass\":2:{s:2:\"id\";s:2:\"10\";s:4:\"name\";N;}i:10;O:8:\"stdClass\":2:{s:2:\"id\";s:2:\"11\";s:4:\"name\";N;}}','a:3:{i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"1\";s:2:\"cm\";s:1:\"1\";s:3:\"mod\";s:5:\"forum\";s:7:\"section\";s:1:\"0\";s:9:\"sectionid\";s:1:\"1\";s:6:\"module\";s:1:\"9\";s:5:\"added\";s:10:\"1380700041\";s:7:\"visible\";s:1:\"1\";s:10:\"visibleold\";s:1:\"1\";s:4:\"name\";s:10:\"News forum\";}i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"1\";s:2:\"cm\";s:1:\"2\";s:3:\"mod\";s:4:\"quiz\";s:7:\"section\";s:1:\"1\";s:9:\"sectionid\";s:1:\"2\";s:6:\"module\";s:2:\"16\";s:5:\"added\";s:10:\"1380701368\";s:7:\"visible\";s:1:\"1\";s:10:\"visibleold\";s:1:\"1\";s:4:\"name\";s:3:\"ttt\";}i:3;O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"2\";s:2:\"cm\";s:1:\"3\";s:3:\"mod\";s:4:\"quiz\";s:7:\"section\";s:1:\"1\";s:9:\"sectionid\";s:1:\"2\";s:6:\"module\";s:2:\"16\";s:5:\"added\";s:10:\"1380702742\";s:7:\"visible\";s:1:\"1\";s:10:\"visibleold\";s:1:\"1\";s:4:\"name\";s:4:\"yyyy\";}}',5,1380661200,10,0,2097152,0,0,1,1,0,0,0,0,'','',1380700010,1380700010,0,0,0,0,0);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback`
--

DROP TABLE IF EXISTS `mdl_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '1',
  `email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `multiple_submit` tinyint(1) NOT NULL DEFAULT '1',
  `autonumbering` tinyint(1) NOT NULL DEFAULT '1',
  `site_after_submit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_after_submit` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_after_submitformat` tinyint(2) NOT NULL DEFAULT '0',
  `publish_stats` tinyint(1) NOT NULL DEFAULT '0',
  `timeopen` bigint(10) NOT NULL DEFAULT '0',
  `timeclose` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_feed_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='all feedbacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback`
--

LOCK TABLES `mdl_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overview_regrades`
--

DROP TABLE IF EXISTS `mdl_quiz_overview_regrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overview_regrades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `newfraction` decimal(12,7) DEFAULT NULL,
  `oldfraction` decimal(12,7) DEFAULT NULL,
  `regraded` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table records which question attempts need regrading an';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overview_regrades`
--

LOCK TABLES `mdl_quiz_overview_regrades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_grades`
--

DROP TABLE IF EXISTS `mdl_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `grader` bigint(10) NOT NULL DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '0.00000',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `mailed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_mai_ix` (`mailed`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_grades`
--

LOCK TABLES `mdl_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_answers`
--

DROP TABLE IF EXISTS `mdl_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT '0',
  `fraction` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `feedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesansw_que_ix` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Answers, with a fractional grade (0-1) and feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_answers`
--

LOCK TABLES `mdl_question_answers` WRITE;
/*!40000 ALTER TABLE `mdl_question_answers` DISABLE KEYS */;
INSERT INTO `mdl_question_answers` VALUES (1,1,'<p>123</p>',1,0.0000000,'',1),(2,1,'<p>124</p>',1,1.0000000,'',1),(3,1,'<p>125</p>',1,0.0000000,'',1),(4,2,'<p>asdf</p>',1,0.0000000,'',1),(5,2,'<p>asdf</p>',1,0.0000000,'',1),(6,2,'<p>asdf</p>',1,1.0000000,'',1),(7,3,'<p>ewrg</p>',1,0.0000000,'',1),(8,3,'<p>ergwerg</p>',1,1.0000000,'',1),(9,3,'<p>wergwe</p>',1,0.0000000,'',1),(10,4,'<p>asdf</p>',1,0.0000000,'',1),(11,4,'<p>asdf</p>',1,0.0000000,'',1),(12,4,'<p>asdfasd</p>',1,1.0000000,'',1),(13,5,'<p>123</p>',1,0.0000000,'',1),(14,5,'<p>124</p>',1,1.0000000,'',1),(15,5,'<p>125</p>',1,0.0000000,'',1),(16,6,'<p>asdf</p>',1,0.0000000,'',1),(17,6,'<p>asdf</p>',1,0.0000000,'',1),(18,6,'<p>asdf</p>',1,1.0000000,'',1),(19,7,'<p>ewrg</p>',1,0.0000000,'',1),(20,7,'<p>ergwerg</p>',1,1.0000000,'',1),(21,7,'<p>wergwe</p>',1,0.0000000,'',1),(22,8,'<p>asdf</p>',1,0.0000000,'',1),(23,8,'<p>asdf</p>',1,0.0000000,'',1),(24,8,'<p>asdfasd</p>',1,1.0000000,'',1),(25,9,'<p>Тестирование внешнего вида приложения</p>',1,0.0000000,'',1),(26,9,'<p>Тестирование Функциональности приложения</p>',1,1.0000000,'',1),(27,9,'<p>Тестирование приложения под большими нагрузками</p>',1,0.0000000,'',1),(28,9,'<p>Тестирование уже работающего кода на предмет нарушения наличия ошибок после добавления новой функциональности или багфикса</p>',1,0.0000000,'',1),(29,10,'<p>Тестирование приложения на разных операционных системах</p>',1,0.0000000,'',1),(30,10,'<p>Тестирование разных версий приложения</p>',1,0.0000000,'',1),(31,10,'<p>Тестирование изменений которые произошли в коде приложения (добавление нового функционала и исправления ошибки)</p>',1,1.0000000,'',1),(32,10,'<p>Тестирование приложения при изменённых параметрах конфигурации</p>',1,0.0000000,'',1),(33,11,'<p>Тестирование уже работающего кода на предмет наличия ошибок после добавления новой функциональности или багфикса</p>',1,1.0000000,'',1),(34,11,'<p>Тестирование старых версий приложения</p>',1,0.0000000,'',1),(35,11,'<p>Тестирование приложений на совместимость с предидущими версиями операционных систем</p>',1,0.0000000,'',1),(36,12,'<p>Тестирование программы \"проводник\" (Explorer).</p>',1,0.0000000,'',1),(37,12,'<p>Тестирование приложения и одновременно исследование его функциональности без каких то формальных сценариев</p>',1,1.0000000,'',1),(38,12,'<p>Тистирование приложения \"Методом тыка\"</p>',1,0.0000000,'',1),(39,12,'<p>Тестирование правильности написания текста в окнах приложения и правильности перевода</p>',1,0.0000000,'',1),(40,13,'<p>Да</p>',1,1.0000000,'',1),(41,13,'<p>Нет</p>',1,0.0000000,'',1),(42,14,'<p>Load Testing это тестирование приложения при обычных нагрузках а Stress testing это тестирование при необычно высоких нагрузках</p>',1,1.0000000,'',1),(43,14,'<p>Load Testing это тестирование GUI приложений а Stress testing это тестирование Web приложений.</p>',1,0.0000000,'',1),(44,14,'<p>Load Testing это тестирование когда тестировщик загружен какими-то дополнительными задачами а Load Testing это когда тестеровщик тестирует приложение очень быстро т. К. Скоро сдача проекта</p>',1,0.0000000,'',1),(45,15,'<p>В поле Name ввыести неправильное имя</p>',1,0.0000000,'',1),(46,15,'<p>В поле Email ввести email адрес без собаки (@)</p>',1,0.0000000,'',1),(47,15,'<p>В поле Age (возраст) ввести 1000</p>',1,1.0000000,'',1),(48,15,'<p>В поле Date ввести дату меньше текущей</p>',1,0.0000000,'',1),(49,16,'<p>Тестирование инсталятора (установщика) приложения</p>',1,1.0000000,'',1),(50,16,'<p>Тестирование приложения после установки</p>',1,0.0000000,'',1),(51,17,'<p>Acceptance, System, Integration, Unit</p>',1,0.0000000,'',1),(52,17,'<p>Unit, Integration, System, Acceptance</p>',1,1.0000000,'',1),(53,17,'<p>Integration, Unit, Acceptance, System</p>',1,0.0000000,'',1),(54,17,'<p>Integration, System, Acceptance, Unit</p>',1,0.0000000,'',1),(55,18,'<p>NotePad, Word, Windows, Control Panle</p>',1,0.0000000,'',1),(56,18,'<p>Двух уровневые и трёхуровневые</p>',1,0.0000000,'',1),(57,18,'<p>Console, Gui, Web</p>',1,1.0000000,'',1),(58,19,'<p>Windows, FireFox, Google OS</p>',1,0.0000000,'',1),(59,19,'<p>Windows, Linux, MS DOS, Mac OS</p>',1,1.0000000,'',1),(60,19,'<p>Microsoft, Macintosh, Google, Chrome</p>',1,0.0000000,'',1),(61,20,'<p>Архитектура в которой есть клиентское приложение которое взаимодействует с сервером или СУБД</p>',1,1.0000000,'',1),(62,20,'<p>Архитектура в которой используется база данных</p>',1,0.0000000,'',1),(63,20,'<p>Архитектура в которой приложение взаимодействует с операционной системой</p>',1,0.0000000,'',1),(64,21,'<p>Да</p>',1,0.0000000,'',1),(65,21,'<p>Нет</p>',1,1.0000000,'',1),(66,22,'<p>Услуги которые предлагаются в интернете за деньги</p>',1,0.0000000,'',1),(67,22,'<p>Вэб-сайты которые предоставляют пользователю полезные данные</p>',1,0.0000000,'',1),(68,22,'<p>Набор функций для обработки данных (поиск, добавление, удаление, обновление и т. д.) которые клиентское приложение может вызвать по сети</p>',1,1.0000000,'',1),(69,23,'<p>Сам сайт</p>',1,0.0000000,'',1),(70,23,'<p>Браузер</p>',1,0.0000000,'',1),(71,23,'<p>Компьютер с вэб-сервером на котором установлен сайт и браузер на стороне клиента</p>',1,1.0000000,'',1),(72,24,'<p>Несоответствие ожидаемого результата фактическому</p>',1,1.0000000,'',1),(73,24,'<p>Это когда приложение неправильно работает</p>',1,0.0000000,'',1),(74,24,'<p>Это когда приложение неправильно зависает</p>',1,0.0000000,'',1),(75,25,'<p>Язык структурированых запросов к базе данных</p>',1,1.0000000,'',1),(76,25,'<p>Язык разметки гипертекста</p>',1,0.0000000,'',1),(77,25,'<p>Язык программирования</p>',1,0.0000000,'',1),(78,26,'<p>select * from patients where name = \'m\'</p>',1,0.0000000,'',1),(79,26,'<p>select * from patients where name like \'m\'</p>',1,1.0000000,'',1);
/*!40000 ALTER TABLE `mdl_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopallocation_scheduled`
--

DROP TABLE IF EXISTS `mdl_workshopallocation_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopallocation_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT '0',
  `submissionend` bigint(10) NOT NULL,
  `timeallocated` bigint(10) DEFAULT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `resultstatus` bigint(10) DEFAULT NULL,
  `resultmessage` varchar(1333) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultlog` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worksche_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the allocation settings for the scheduled allocator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopallocation_scheduled`
--

LOCK TABLES `mdl_workshopallocation_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `plugin` varchar(28) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subtype` varchar(28) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(28) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_plugin_config`
--

LOCK TABLES `mdl_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_value`
--

DROP TABLE IF EXISTS `mdl_feedback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_value` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT '0',
  `item` bigint(10) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  `tmp_completed` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_feedvalu_cou_ix` (`course_id`),
  KEY `mdl_feedvalu_ite_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='values of the completeds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_value`
--

LOCK TABLES `mdl_feedback_value` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_registration_hubs`
--

DROP TABLE IF EXISTS `mdl_registration_hubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_registration_hubs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hubname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `huburl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='hub where the site is registered on with their associated to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_registration_hubs`
--

LOCK TABLES `mdl_registration_hubs` WRITE;
/*!40000 ALTER TABLE `mdl_registration_hubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_registration_hubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_tokens`
--

DROP TABLE IF EXISTS `mdl_external_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(20) NOT NULL DEFAULT '1',
  `iprestriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_extetoke_use_ix` (`userid`),
  KEY `mdl_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl_extetoke_con_ix` (`contextid`),
  KEY `mdl_extetoke_cre_ix` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Security tokens for accessing of external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_tokens`
--

LOCK TABLES `mdl_external_tokens` WRITE;
/*!40000 ALTER TABLE `mdl_external_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_external_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl_enrol_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receiver_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receiver_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `memo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_name1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_name2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pending_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reason_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Holds all known information about PayPal transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_paypal`
--

LOCK TABLES `mdl_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_objective`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_objective` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `primaryobj` tinyint(1) NOT NULL DEFAULT '0',
  `objectiveid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT '1',
  `minnormalizedmeasure` float(11,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqobje_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 objective description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_objective`
--

LOCK TABLES `mdl_scorm_seq_objective` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_posts`
--

DROP TABLE IF EXISTS `mdl_forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) NOT NULL DEFAULT '0',
  `parent` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `modified` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `messageformat` tinyint(2) NOT NULL DEFAULT '0',
  `messagetrust` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT '0',
  `mailnow` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='All posts are stored in this table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_posts`
--

LOCK TABLES `mdl_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl_forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `exported` bigint(10) NOT NULL DEFAULT '0',
  `overridden` bigint(10) NOT NULL DEFAULT '0',
  `excluded` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8_unicode_ci,
  `feedbackformat` bigint(10) NOT NULL DEFAULT '0',
  `information` longtext COLLATE utf8_unicode_ci,
  `informationformat` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades_history`
--

LOCK TABLES `mdl_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades_history` DISABLE KEYS */;
INSERT INTO `mdl_grade_grades_history` VALUES (1,1,1,'mod/quiz',1380701672,3,2,3,50.00000,100.00000,0.00000,NULL,3,50.00000,0,0,0,0,0,0,NULL,0,NULL,0),(2,1,2,'system',1380701672,3,1,3,NULL,100.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(3,2,2,'aggregation',1380701672,3,1,3,NULL,100.00000,0.00000,NULL,NULL,50.00000,0,0,0,0,0,0,NULL,0,NULL,0),(4,1,3,'mod/quiz',1380714588,3,3,3,25.00000,100.00000,0.00000,NULL,3,25.00000,0,0,0,0,0,0,NULL,0,NULL,0),(5,2,2,'aggregation',1380714588,3,1,3,NULL,100.00000,0.00000,NULL,NULL,37.50000,0,0,0,0,0,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `mdl_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated_options`
--

DROP TABLE IF EXISTS `mdl_question_calculated_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `synchronize` tinyint(2) NOT NULL DEFAULT '0',
  `single` smallint(4) NOT NULL DEFAULT '0',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '0',
  `correctfeedback` longtext COLLATE utf8_unicode_ci,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8_unicode_ci,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8_unicode_ci,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `answernumbering` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quescalcopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated_options`
--

LOCK TABLES `mdl_question_calculated_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` smallint(3) DEFAULT '0',
  `descriptiontrust` bigint(10) DEFAULT NULL,
  `grade0` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` mediumint(5) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_worknume_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The assessment dimensions definitions of Number of errors gr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors`
--

LOCK TABLES `mdl_workshopform_numerrors` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_application`
--

DROP TABLE IF EXISTS `mdl_mnet_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_application` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Information about applications on remote hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_application`
--

LOCK TABLES `mdl_mnet_application` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_application` DISABLE KEYS */;
INSERT INTO `mdl_mnet_application` VALUES (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php','/auth/mnet/jump.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php','/auth/xmlrpc/jump.php');
/*!40000 ALTER TABLE `mdl_mnet_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host`
--

DROP TABLE IF EXISTS `mdl_mnet_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `wwwroot` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `public_key_expires` bigint(10) NOT NULL DEFAULT '0',
  `transport` tinyint(2) NOT NULL DEFAULT '0',
  `portno` mediumint(5) NOT NULL DEFAULT '0',
  `last_connect_time` bigint(10) NOT NULL DEFAULT '0',
  `last_log_id` bigint(10) NOT NULL DEFAULT '0',
  `force_theme` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicationid` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Information about the local and remote hosts for RPC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host`
--

LOCK TABLES `mdl_mnet_host` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host` DISABLE KEYS */;
INSERT INTO `mdl_mnet_host` VALUES (1,0,'http://localhost/moodle231','127.0.0.1','','',0,0,0,0,0,0,NULL,1),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1);
/*!40000 ALTER TABLE `mdl_mnet_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_submissions`
--

DROP TABLE IF EXISTS `mdl_assignment_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  `data1` longtext COLLATE utf8_unicode_ci,
  `data2` longtext COLLATE utf8_unicode_ci,
  `grade` bigint(11) NOT NULL DEFAULT '0',
  `submissioncomment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `teacher` bigint(10) NOT NULL DEFAULT '0',
  `timemarked` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use2_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass2_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment_submissions`
--

LOCK TABLES `mdl_assignment_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT '0',
  `stat2` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_statmont_cou_ix` (`courseid`),
  KEY `mdl_statmont_tim_ix` (`timeend`),
  KEY `mdl_statmont_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To accumulate monthly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_monthly`
--

LOCK TABLES `mdl_stats_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scorm` bigint(10) NOT NULL DEFAULT '0',
  `manifest` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `launch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scormtype` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoe_sco_ix` (`scorm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each SCO part of the SCORM module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes`
--

LOCK TABLES `mdl_scorm_scoes` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `outcomeid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='stores what outcomes are used in what courses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_courses`
--

LOCK TABLES `mdl_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_providers`
--

DROP TABLE IF EXISTS `mdl_message_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_providers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `capability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messprov_comnam_uix` (`component`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores the message providers (modules and core sy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_providers`
--

LOCK TABLES `mdl_message_providers` WRITE;
/*!40000 ALTER TABLE `mdl_message_providers` DISABLE KEYS */;
INSERT INTO `mdl_message_providers` VALUES (1,'notices','moodle','moodle/site:config'),(2,'errors','moodle','moodle/site:config'),(3,'availableupdate','moodle','moodle/site:config'),(4,'instantmessage','moodle',NULL),(5,'backup','moodle','moodle/site:config'),(6,'courserequested','moodle','moodle/site:approvecourse'),(7,'courserequestapproved','moodle','moodle/course:request'),(8,'courserequestrejected','moodle','moodle/course:request'),(9,'assign_notification','mod_assign',NULL),(10,'assignment_updates','mod_assignment',NULL),(11,'submission','mod_feedback',NULL),(12,'message','mod_feedback',NULL),(13,'posts','mod_forum',NULL),(14,'graded_essay','mod_lesson',NULL),(15,'submission','mod_quiz','mod/quiz:emailnotifysubmission'),(16,'confirmation','mod_quiz','mod/quiz:emailconfirmsubmission'),(17,'attempt_overdue','mod_quiz','mod/quiz:emailwarnoverdue'),(18,'authorize_enrolment','enrol_authorize',NULL),(19,'flatfile_enrolment','enrol_flatfile',NULL),(20,'imsenterprise_enrolment','enrol_imsenterprise',NULL),(21,'paypal_enrolment','enrol_paypal',NULL);
/*!40000 ALTER TABLE `mdl_message_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_sso_access_control`
--

DROP TABLE IF EXISTS `mdl_mnet_sso_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_sso_access_control` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) NOT NULL DEFAULT '0',
  `accessctrl` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Users by host permitted (or not) to login from a remote prov';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_sso_access_control`
--

LOCK TABLES `mdl_mnet_sso_access_control` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_pages`
--

DROP TABLE IF EXISTS `mdl_lesson_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `prevpageid` bigint(10) NOT NULL DEFAULT '0',
  `nextpageid` bigint(10) NOT NULL DEFAULT '0',
  `qtype` smallint(3) NOT NULL DEFAULT '0',
  `qoption` smallint(3) NOT NULL DEFAULT '0',
  `layout` smallint(3) NOT NULL DEFAULT '1',
  `display` smallint(3) NOT NULL DEFAULT '1',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contentsformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lesspage_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines lesson_pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_pages`
--

LOCK TABLES `mdl_lesson_pages` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_upgrade_log`
--

DROP TABLE IF EXISTS `mdl_upgrade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_upgrade_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetversion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `details` longtext COLLATE utf8_unicode_ci,
  `backtrace` longtext COLLATE utf8_unicode_ci,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_upgrlog_tim_ix` (`timemodified`),
  KEY `mdl_upgrlog_typtim_ix` (`type`,`timemodified`),
  KEY `mdl_upgrlog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Upgrade logging';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_upgrade_log`
--

LOCK TABLES `mdl_upgrade_log` WRITE;
/*!40000 ALTER TABLE `mdl_upgrade_log` DISABLE KEYS */;
INSERT INTO `mdl_upgrade_log` VALUES (1,0,'core','2012062501','2012062501','Upgrade savepoint reached',NULL,'',0,1380698847),(2,0,'core','2012062501','2012062501','Core installed',NULL,'',0,1380698877),(3,0,'qtype_calculated',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698878),(4,0,'qtype_calculated','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698880),(5,0,'qtype_calculated','2012061700','2012061700','Plugin installed',NULL,'',0,1380698880),(6,0,'qtype_calculatedmulti',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698880),(7,0,'qtype_calculatedmulti','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698880),(8,0,'qtype_calculatedmulti','2012061700','2012061700','Plugin installed',NULL,'',0,1380698880),(9,0,'qtype_calculatedsimple',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698881),(10,0,'qtype_calculatedsimple','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698881),(11,0,'qtype_calculatedsimple','2012061700','2012061700','Plugin installed',NULL,'',0,1380698881),(12,0,'qtype_description',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698881),(13,0,'qtype_description','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698881),(14,0,'qtype_description','2012061700','2012061700','Plugin installed',NULL,'',0,1380698881),(15,0,'qtype_essay',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698881),(16,0,'qtype_essay','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698882),(17,0,'qtype_essay','2012061700','2012061700','Plugin installed',NULL,'',0,1380698882),(18,0,'qtype_match',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698882),(19,0,'qtype_match','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698883),(20,0,'qtype_match','2012061700','2012061700','Plugin installed',NULL,'',0,1380698883),(21,0,'qtype_missingtype',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698883),(22,0,'qtype_missingtype','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698883),(23,0,'qtype_missingtype','2012061700','2012061700','Plugin installed',NULL,'',0,1380698884),(24,0,'qtype_multianswer',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698884),(25,0,'qtype_multianswer','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698884),(26,0,'qtype_multianswer','2012061700','2012061700','Plugin installed',NULL,'',0,1380698884),(27,0,'qtype_multichoice',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698884),(28,0,'qtype_multichoice','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698885),(29,0,'qtype_multichoice','2012061700','2012061700','Plugin installed',NULL,'',0,1380698885),(30,0,'qtype_numerical',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698886),(31,0,'qtype_numerical','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698887),(32,0,'qtype_numerical','2012061700','2012061700','Plugin installed',NULL,'',0,1380698887),(33,0,'qtype_random',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698887),(34,0,'qtype_random','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698887),(35,0,'qtype_random','2012061700','2012061700','Plugin installed',NULL,'',0,1380698888),(36,0,'qtype_randomsamatch',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698888),(37,0,'qtype_randomsamatch','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698888),(38,0,'qtype_randomsamatch','2012061700','2012061700','Plugin installed',NULL,'',0,1380698888),(39,0,'qtype_shortanswer',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698888),(40,0,'qtype_shortanswer','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698889),(41,0,'qtype_shortanswer','2012061700','2012061700','Plugin installed',NULL,'',0,1380698889),(42,0,'qtype_truefalse',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698889),(43,0,'qtype_truefalse','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698890),(44,0,'qtype_truefalse','2012061700','2012061700','Plugin installed',NULL,'',0,1380698890),(45,0,'mod_assign',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698890),(46,0,'mod_assign','2012061700','2012061700','Plugin installed',NULL,'',0,1380698894),(47,0,'mod_assignment',NULL,'2012061701','Starting plugin installation',NULL,'',0,1380698894),(48,0,'mod_assignment','2012061701','2012061701','Plugin installed',NULL,'',0,1380698897),(49,0,'mod_book',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698897),(50,0,'mod_book','2012061700','2012061700','Plugin installed',NULL,'',0,1380698898),(51,0,'mod_chat',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698898),(52,0,'mod_chat','2012061700','2012061700','Plugin installed',NULL,'',0,1380698903),(53,0,'mod_choice',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698903),(54,0,'mod_choice','2012061700','2012061700','Plugin installed',NULL,'',0,1380698905),(55,0,'mod_data',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698905),(56,0,'mod_data','2012061700','2012061700','Plugin installed',NULL,'',0,1380698910),(57,0,'mod_feedback',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698910),(58,0,'mod_feedback','2012061700','2012061700','Plugin installed',NULL,'',0,1380698916),(59,0,'mod_folder',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698916),(60,0,'mod_folder','2012061700','2012061700','Plugin installed',NULL,'',0,1380698917),(61,0,'mod_forum',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698917),(62,0,'mod_forum','2012061700','2012061700','Plugin installed',NULL,'',0,1380698925),(63,0,'mod_glossary',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698925),(64,0,'mod_glossary','2012061700','2012061700','Plugin installed',NULL,'',0,1380698931),(65,0,'mod_imscp',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698931),(66,0,'mod_imscp','2012061700','2012061700','Plugin installed',NULL,'',0,1380698932),(67,0,'mod_label',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698932),(68,0,'mod_label','2012061700','2012061700','Plugin installed',NULL,'',0,1380698933),(69,0,'mod_lesson',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698933),(70,0,'mod_lesson','2012061700','2012061700','Plugin installed',NULL,'',0,1380698937),(71,0,'mod_lti',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698938),(72,0,'mod_lti','2012061700','2012061700','Plugin installed',NULL,'',0,1380698941),(73,0,'mod_page',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698941),(74,0,'mod_page','2012061700','2012061700','Plugin installed',NULL,'',0,1380698942),(75,0,'mod_quiz',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698942),(76,0,'mod_quiz','2012061700','2012061700','Plugin installed',NULL,'',0,1380698947),(77,0,'mod_resource',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698947),(78,0,'mod_resource','2012061700','2012061700','Plugin installed',NULL,'',0,1380698948),(79,0,'mod_scorm',NULL,'2012061701','Starting plugin installation',NULL,'',0,1380698948),(80,0,'mod_scorm','2012061701','2012061701','Plugin installed',NULL,'',0,1380698955),(81,0,'mod_survey',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698955),(82,0,'mod_survey','2012061700','2012061700','Plugin installed',NULL,'',0,1380698959),(83,0,'mod_url',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698959),(84,0,'mod_url','2012061700','2012061700','Plugin installed',NULL,'',0,1380698960),(85,0,'mod_wiki',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698960),(86,0,'mod_wiki','2012061700','2012061700','Plugin installed',NULL,'',0,1380698965),(87,0,'mod_workshop',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698965),(88,0,'mod_workshop','2012061700','2012061700','Plugin installed',NULL,'',0,1380698976),(89,0,'auth_cas',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698976),(90,0,'auth_cas','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698976),(91,0,'auth_cas','2012061700','2012061700','Plugin installed',NULL,'',0,1380698976),(92,0,'auth_db',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698976),(93,0,'auth_db','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698977),(94,0,'auth_db','2012061700','2012061700','Plugin installed',NULL,'',0,1380698977),(95,0,'auth_email',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698977),(96,0,'auth_email','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698977),(97,0,'auth_email','2012061700','2012061700','Plugin installed',NULL,'',0,1380698977),(98,0,'auth_fc',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698977),(99,0,'auth_fc','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698977),(100,0,'auth_fc','2012061700','2012061700','Plugin installed',NULL,'',0,1380698978),(101,0,'auth_imap',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698978),(102,0,'auth_imap','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698978),(103,0,'auth_imap','2012061700','2012061700','Plugin installed',NULL,'',0,1380698978),(104,0,'auth_ldap',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698978),(105,0,'auth_ldap','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698978),(106,0,'auth_ldap','2012061700','2012061700','Plugin installed',NULL,'',0,1380698978),(107,0,'auth_manual',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698978),(108,0,'auth_manual','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698979),(109,0,'auth_manual','2012061700','2012061700','Plugin installed',NULL,'',0,1380698979),(110,0,'auth_mnet',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698979),(111,0,'auth_mnet','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698979),(112,0,'auth_mnet','2012061700','2012061700','Plugin installed',NULL,'',0,1380698981),(113,0,'auth_nntp',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698981),(114,0,'auth_nntp','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698981),(115,0,'auth_nntp','2012061700','2012061700','Plugin installed',NULL,'',0,1380698981),(116,0,'auth_nologin',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698981),(117,0,'auth_nologin','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698981),(118,0,'auth_nologin','2012061700','2012061700','Plugin installed',NULL,'',0,1380698982),(119,0,'auth_none',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698982),(120,0,'auth_none','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698982),(121,0,'auth_none','2012061700','2012061700','Plugin installed',NULL,'',0,1380698982),(122,0,'auth_pam',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698982),(123,0,'auth_pam','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698982),(124,0,'auth_pam','2012061700','2012061700','Plugin installed',NULL,'',0,1380698982),(125,0,'auth_pop3',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698982),(126,0,'auth_pop3','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698983),(127,0,'auth_pop3','2012061700','2012061700','Plugin installed',NULL,'',0,1380698983),(128,0,'auth_radius',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698983),(129,0,'auth_radius','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698983),(130,0,'auth_radius','2012061700','2012061700','Plugin installed',NULL,'',0,1380698984),(131,0,'auth_shibboleth',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698984),(132,0,'auth_shibboleth','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698984),(133,0,'auth_shibboleth','2012061700','2012061700','Plugin installed',NULL,'',0,1380698984),(134,0,'auth_webservice',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698984),(135,0,'auth_webservice','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698984),(136,0,'auth_webservice','2012061700','2012061700','Plugin installed',NULL,'',0,1380698985),(137,0,'enrol_authorize',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698985),(138,0,'enrol_authorize','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698986),(139,0,'enrol_authorize','2012061700','2012061700','Plugin installed',NULL,'',0,1380698987),(140,0,'enrol_category',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698987),(141,0,'enrol_category','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698987),(142,0,'enrol_category','2012061700','2012061700','Plugin installed',NULL,'',0,1380698987),(143,0,'enrol_cohort',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698987),(144,0,'enrol_cohort','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698988),(145,0,'enrol_cohort','2012061700','2012061700','Plugin installed',NULL,'',0,1380698988),(146,0,'enrol_database',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698988),(147,0,'enrol_database','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698988),(148,0,'enrol_database','2012061700','2012061700','Plugin installed',NULL,'',0,1380698989),(149,0,'enrol_flatfile',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698989),(150,0,'enrol_flatfile','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698990),(151,0,'enrol_flatfile','2012061700','2012061700','Plugin installed',NULL,'',0,1380698990),(152,0,'enrol_guest',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698990),(153,0,'enrol_guest','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698990),(154,0,'enrol_guest','2012061700','2012061700','Plugin installed',NULL,'',0,1380698990),(155,0,'enrol_imsenterprise',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698990),(156,0,'enrol_imsenterprise','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698991),(157,0,'enrol_imsenterprise','2012061700','2012061700','Plugin installed',NULL,'',0,1380698991),(158,0,'enrol_ldap',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698991),(159,0,'enrol_ldap','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698991),(160,0,'enrol_ldap','2012061700','2012061700','Plugin installed',NULL,'',0,1380698991),(161,0,'enrol_manual',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698991),(162,0,'enrol_manual','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698992),(163,0,'enrol_manual','2012061700','2012061700','Plugin installed',NULL,'',0,1380698992),(164,0,'enrol_meta',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698992),(165,0,'enrol_meta','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698992),(166,0,'enrol_meta','2012061700','2012061700','Plugin installed',NULL,'',0,1380698993),(167,0,'enrol_mnet',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698993),(168,0,'enrol_mnet','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698993),(169,0,'enrol_mnet','2012061700','2012061700','Plugin installed',NULL,'',0,1380698995),(170,0,'enrol_paypal',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698995),(171,0,'enrol_paypal','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698995),(172,0,'enrol_paypal','2012061700','2012061700','Plugin installed',NULL,'',0,1380698996),(173,0,'enrol_self',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698996),(174,0,'enrol_self','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698996),(175,0,'enrol_self','2012061700','2012061700','Plugin installed',NULL,'',0,1380698996),(176,0,'message_email',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698996),(177,0,'message_email','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698996),(178,0,'message_email','2012061700','2012061700','Plugin installed',NULL,'',0,1380698997),(179,0,'message_jabber',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698997),(180,0,'message_jabber','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698997),(181,0,'message_jabber','2012061700','2012061700','Plugin installed',NULL,'',0,1380698997),(182,0,'message_popup',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698997),(183,0,'message_popup','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380698997),(184,0,'message_popup','2012061700','2012061700','Plugin installed',NULL,'',0,1380698998),(185,0,'block_activity_modules',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698998),(186,0,'block_activity_modules','2012061700','2012061700','Plugin installed',NULL,'',0,1380698998),(187,0,'block_admin_bookmarks',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698998),(188,0,'block_admin_bookmarks','2012061700','2012061700','Plugin installed',NULL,'',0,1380698998),(189,0,'block_blog_menu',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698999),(190,0,'block_blog_menu','2012061700','2012061700','Plugin installed',NULL,'',0,1380698999),(191,0,'block_blog_recent',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698999),(192,0,'block_blog_recent','2012061700','2012061700','Plugin installed',NULL,'',0,1380698999),(193,0,'block_blog_tags',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698999),(194,0,'block_blog_tags','2012061700','2012061700','Plugin installed',NULL,'',0,1380698999),(195,0,'block_calendar_month',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380698999),(196,0,'block_calendar_month','2012061700','2012061700','Plugin installed',NULL,'',0,1380698999),(197,0,'block_calendar_upcoming',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699000),(198,0,'block_calendar_upcoming','2012061700','2012061700','Plugin installed',NULL,'',0,1380699000),(199,0,'block_comments',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699000),(200,0,'block_comments','2012061700','2012061700','Plugin installed',NULL,'',0,1380699000),(201,0,'block_community',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699000),(202,0,'block_community','2012061700','2012061700','Plugin installed',NULL,'',0,1380699001),(203,0,'block_completionstatus',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699001),(204,0,'block_completionstatus','2012061700','2012061700','Plugin installed',NULL,'',0,1380699001),(205,0,'block_course_list',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699001),(206,0,'block_course_list','2012061700','2012061700','Plugin installed',NULL,'',0,1380699001),(207,0,'block_course_overview',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699001),(208,0,'block_course_overview','2012061700','2012061700','Plugin installed',NULL,'',0,1380699001),(209,0,'block_course_summary',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699001),(210,0,'block_course_summary','2012061700','2012061700','Plugin installed',NULL,'',0,1380699002),(211,0,'block_feedback',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699002),(212,0,'block_feedback','2012061700','2012061700','Plugin installed',NULL,'',0,1380699002),(213,0,'block_glossary_random',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699002),(214,0,'block_glossary_random','2012061700','2012061700','Plugin installed',NULL,'',0,1380699002),(215,0,'block_html',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699002),(216,0,'block_html','2012061700','2012061700','Plugin installed',NULL,'',0,1380699003),(217,0,'block_login',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699003),(218,0,'block_login','2012061700','2012061700','Plugin installed',NULL,'',0,1380699003),(219,0,'block_mentees',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699003),(220,0,'block_mentees','2012061700','2012061700','Plugin installed',NULL,'',0,1380699003),(221,0,'block_messages',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699003),(222,0,'block_messages','2012061700','2012061700','Plugin installed',NULL,'',0,1380699003),(223,0,'block_mnet_hosts',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699003),(224,0,'block_mnet_hosts','2012061700','2012061700','Plugin installed',NULL,'',0,1380699004),(225,0,'block_myprofile',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699004),(226,0,'block_myprofile','2012061700','2012061700','Plugin installed',NULL,'',0,1380699004),(227,0,'block_navigation',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699004),(228,0,'block_navigation','2012061700','2012061700','Plugin installed',NULL,'',0,1380699004),(229,0,'block_news_items',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699004),(230,0,'block_news_items','2012061700','2012061700','Plugin installed',NULL,'',0,1380699004),(231,0,'block_online_users',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699004),(232,0,'block_online_users','2012061700','2012061700','Plugin installed',NULL,'',0,1380699005),(233,0,'block_participants',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699005),(234,0,'block_participants','2012061700','2012061700','Plugin installed',NULL,'',0,1380699006),(235,0,'block_private_files',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699006),(236,0,'block_private_files','2012061700','2012061700','Plugin installed',NULL,'',0,1380699006),(237,0,'block_quiz_results',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699006),(238,0,'block_quiz_results','2012061700','2012061700','Plugin installed',NULL,'',0,1380699006),(239,0,'block_recent_activity',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699006),(240,0,'block_recent_activity','2012061700','2012061700','Plugin installed',NULL,'',0,1380699006),(241,0,'block_rss_client',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699006),(242,0,'block_rss_client','2012061700','2012061700','Plugin installed',NULL,'',0,1380699007),(243,0,'block_search_forums',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699007),(244,0,'block_search_forums','2012061700','2012061700','Plugin installed',NULL,'',0,1380699007),(245,0,'block_section_links',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699007),(246,0,'block_section_links','2012061700','2012061700','Plugin installed',NULL,'',0,1380699008),(247,0,'block_selfcompletion',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699008),(248,0,'block_selfcompletion','2012061700','2012061700','Plugin installed',NULL,'',0,1380699008),(249,0,'block_settings',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699008),(250,0,'block_settings','2012061700','2012061700','Plugin installed',NULL,'',0,1380699008),(251,0,'block_site_main_menu',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699008),(252,0,'block_site_main_menu','2012061700','2012061700','Plugin installed',NULL,'',0,1380699008),(253,0,'block_social_activities',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699008),(254,0,'block_social_activities','2012061700','2012061700','Plugin installed',NULL,'',0,1380699009),(255,0,'block_tag_flickr',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699009),(256,0,'block_tag_flickr','2012061700','2012061700','Plugin installed',NULL,'',0,1380699009),(257,0,'block_tag_youtube',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699009),(258,0,'block_tag_youtube','2012061700','2012061700','Plugin installed',NULL,'',0,1380699009),(259,0,'block_tags',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699009),(260,0,'block_tags','2012061700','2012061700','Plugin installed',NULL,'',0,1380699009),(261,0,'filter_activitynames',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699010),(262,0,'filter_activitynames','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699010),(263,0,'filter_activitynames','2012061700','2012061700','Plugin installed',NULL,'',0,1380699011),(264,0,'filter_algebra',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699011),(265,0,'filter_algebra','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699011),(266,0,'filter_algebra','2012061700','2012061700','Plugin installed',NULL,'',0,1380699011),(267,0,'filter_censor',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699011),(268,0,'filter_censor','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699011),(269,0,'filter_censor','2012061700','2012061700','Plugin installed',NULL,'',0,1380699011),(270,0,'filter_data',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699011),(271,0,'filter_data','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699011),(272,0,'filter_data','2012061700','2012061700','Plugin installed',NULL,'',0,1380699012),(273,0,'filter_emailprotect',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699012),(274,0,'filter_emailprotect','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699012),(275,0,'filter_emailprotect','2012061700','2012061700','Plugin installed',NULL,'',0,1380699012),(276,0,'filter_emoticon',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699012),(277,0,'filter_emoticon','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699012),(278,0,'filter_emoticon','2012061700','2012061700','Plugin installed',NULL,'',0,1380699012),(279,0,'filter_glossary',NULL,'2012061701','Starting plugin installation',NULL,'',0,1380699012),(280,0,'filter_glossary','2012061701','2012061701','Upgrade savepoint reached',NULL,'',0,1380699013),(281,0,'filter_glossary','2012061701','2012061701','Plugin installed',NULL,'',0,1380699013),(282,0,'filter_mediaplugin',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699013),(283,0,'filter_mediaplugin','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699013),(284,0,'filter_mediaplugin','2012061700','2012061700','Plugin installed',NULL,'',0,1380699013),(285,0,'filter_multilang',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699013),(286,0,'filter_multilang','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699013),(287,0,'filter_multilang','2012061700','2012061700','Plugin installed',NULL,'',0,1380699014),(288,0,'filter_tex',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699014),(289,0,'filter_tex','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699014),(290,0,'filter_tex','2012061700','2012061700','Plugin installed',NULL,'',0,1380699014),(291,0,'filter_tidy',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699014),(292,0,'filter_tidy','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699014),(293,0,'filter_tidy','2012061700','2012061700','Plugin installed',NULL,'',0,1380699015),(294,0,'filter_urltolink',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699015),(295,0,'filter_urltolink','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699015),(296,0,'filter_urltolink','2012061700','2012061700','Plugin installed',NULL,'',0,1380699015),(297,0,'editor_textarea',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699015),(298,0,'editor_textarea','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699015),(299,0,'editor_textarea','2012061700','2012061700','Plugin installed',NULL,'',0,1380699016),(300,0,'editor_tinymce',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699016),(301,0,'editor_tinymce','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699016),(302,0,'editor_tinymce','2012061700','2012061700','Plugin installed',NULL,'',0,1380699016),(303,0,'format_scorm',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699016),(304,0,'format_scorm','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699016),(305,0,'format_scorm','2012061700','2012061700','Plugin installed',NULL,'',0,1380699017),(306,0,'format_social',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699017),(307,0,'format_social','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699017),(308,0,'format_social','2012061700','2012061700','Plugin installed',NULL,'',0,1380699017),(309,0,'format_topics',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699017),(310,0,'format_topics','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699017),(311,0,'format_topics','2012061700','2012061700','Plugin installed',NULL,'',0,1380699018),(312,0,'format_weeks',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699018),(313,0,'format_weeks','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699018),(314,0,'format_weeks','2012061700','2012061700','Plugin installed',NULL,'',0,1380699018),(315,0,'profilefield_checkbox',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699018),(316,0,'profilefield_checkbox','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699018),(317,0,'profilefield_checkbox','2012061700','2012061700','Plugin installed',NULL,'',0,1380699018),(318,0,'profilefield_datetime',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699018),(319,0,'profilefield_datetime','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699018),(320,0,'profilefield_datetime','2012061700','2012061700','Plugin installed',NULL,'',0,1380699019),(321,0,'profilefield_menu',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699019),(322,0,'profilefield_menu','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699019),(323,0,'profilefield_menu','2012061700','2012061700','Plugin installed',NULL,'',0,1380699019),(324,0,'profilefield_text',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699019),(325,0,'profilefield_text','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699019),(326,0,'profilefield_text','2012061700','2012061700','Plugin installed',NULL,'',0,1380699019),(327,0,'profilefield_textarea',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699019),(328,0,'profilefield_textarea','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699020),(329,0,'profilefield_textarea','2012061700','2012061700','Plugin installed',NULL,'',0,1380699020),(330,0,'report_backups',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699020),(331,0,'report_backups','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699020),(332,0,'report_backups','2012061700','2012061700','Plugin installed',NULL,'',0,1380699020),(333,0,'report_completion',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699020),(334,0,'report_completion','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699020),(335,0,'report_completion','2012061700','2012061700','Plugin installed',NULL,'',0,1380699021),(336,0,'report_configlog',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699021),(337,0,'report_configlog','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699021),(338,0,'report_configlog','2012061700','2012061700','Plugin installed',NULL,'',0,1380699021),(339,0,'report_courseoverview',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699021),(340,0,'report_courseoverview','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699021),(341,0,'report_courseoverview','2012061700','2012061700','Plugin installed',NULL,'',0,1380699022),(342,0,'report_log',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699022),(343,0,'report_log','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699022),(344,0,'report_log','2012061700','2012061700','Plugin installed',NULL,'',0,1380699023),(345,0,'report_loglive',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699023),(346,0,'report_loglive','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699023),(347,0,'report_loglive','2012061700','2012061700','Plugin installed',NULL,'',0,1380699023),(348,0,'report_outline',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699023),(349,0,'report_outline','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699023),(350,0,'report_outline','2012061700','2012061700','Plugin installed',NULL,'',0,1380699024),(351,0,'report_participation',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699024),(352,0,'report_participation','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699024),(353,0,'report_participation','2012061700','2012061700','Plugin installed',NULL,'',0,1380699024),(354,0,'report_progress',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699024),(355,0,'report_progress','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699025),(356,0,'report_progress','2012061700','2012061700','Plugin installed',NULL,'',0,1380699025),(357,0,'report_questioninstances',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699025),(358,0,'report_questioninstances','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699025),(359,0,'report_questioninstances','2012061700','2012061700','Plugin installed',NULL,'',0,1380699025),(360,0,'report_security',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699026),(361,0,'report_security','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699026),(362,0,'report_security','2012061700','2012061700','Plugin installed',NULL,'',0,1380699026),(363,0,'report_stats',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699026),(364,0,'report_stats','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699026),(365,0,'report_stats','2012061700','2012061700','Plugin installed',NULL,'',0,1380699027),(366,0,'gradeexport_ods',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699027),(367,0,'gradeexport_ods','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699027),(368,0,'gradeexport_ods','2012061700','2012061700','Plugin installed',NULL,'',0,1380699028),(369,0,'gradeexport_txt',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699028),(370,0,'gradeexport_txt','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699028),(371,0,'gradeexport_txt','2012061700','2012061700','Plugin installed',NULL,'',0,1380699028),(372,0,'gradeexport_xls',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699028),(373,0,'gradeexport_xls','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699029),(374,0,'gradeexport_xls','2012061700','2012061700','Plugin installed',NULL,'',0,1380699029),(375,0,'gradeexport_xml',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699029),(376,0,'gradeexport_xml','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699029),(377,0,'gradeexport_xml','2012061700','2012061700','Plugin installed',NULL,'',0,1380699029),(378,0,'gradeimport_csv',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699029),(379,0,'gradeimport_csv','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699030),(380,0,'gradeimport_csv','2012061700','2012061700','Plugin installed',NULL,'',0,1380699030),(381,0,'gradeimport_xml',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699030),(382,0,'gradeimport_xml','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699030),(383,0,'gradeimport_xml','2012061700','2012061700','Plugin installed',NULL,'',0,1380699030),(384,0,'gradereport_grader',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699030),(385,0,'gradereport_grader','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699030),(386,0,'gradereport_grader','2012061700','2012061700','Plugin installed',NULL,'',0,1380699031),(387,0,'gradereport_outcomes',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699031),(388,0,'gradereport_outcomes','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699031),(389,0,'gradereport_outcomes','2012061700','2012061700','Plugin installed',NULL,'',0,1380699031),(390,0,'gradereport_overview',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699031),(391,0,'gradereport_overview','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699031),(392,0,'gradereport_overview','2012061700','2012061700','Plugin installed',NULL,'',0,1380699031),(393,0,'gradereport_user',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699031),(394,0,'gradereport_user','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699031),(395,0,'gradereport_user','2012061700','2012061700','Plugin installed',NULL,'',0,1380699032),(396,0,'gradingform_guide',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699032),(397,0,'gradingform_guide','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699033),(398,0,'gradingform_guide','2012061700','2012061700','Plugin installed',NULL,'',0,1380699034),(399,0,'gradingform_rubric',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699034),(400,0,'gradingform_rubric','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699035),(401,0,'gradingform_rubric','2012061700','2012061700','Plugin installed',NULL,'',0,1380699035),(402,0,'mnetservice_enrol',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699036),(403,0,'mnetservice_enrol','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699036),(404,0,'mnetservice_enrol','2012061700','2012061700','Plugin installed',NULL,'',0,1380699037),(405,0,'webservice_amf',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699037),(406,0,'webservice_amf','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699037),(407,0,'webservice_amf','2012061700','2012061700','Plugin installed',NULL,'',0,1380699037),(408,0,'webservice_rest',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699037),(409,0,'webservice_rest','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699038),(410,0,'webservice_rest','2012061700','2012061700','Plugin installed',NULL,'',0,1380699038),(411,0,'webservice_soap',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699038),(412,0,'webservice_soap','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699038),(413,0,'webservice_soap','2012061700','2012061700','Plugin installed',NULL,'',0,1380699039),(414,0,'webservice_xmlrpc',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699039),(415,0,'webservice_xmlrpc','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699039),(416,0,'webservice_xmlrpc','2012061700','2012061700','Plugin installed',NULL,'',0,1380699039),(417,0,'repository_alfresco',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699039),(418,0,'repository_alfresco','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699039),(419,0,'repository_alfresco','2012061700','2012061700','Plugin installed',NULL,'',0,1380699040),(420,0,'repository_boxnet',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699040),(421,0,'repository_boxnet','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699040),(422,0,'repository_boxnet','2012061700','2012061700','Plugin installed',NULL,'',0,1380699040),(423,0,'repository_coursefiles',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699040),(424,0,'repository_coursefiles','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699040),(425,0,'repository_coursefiles','2012061700','2012061700','Plugin installed',NULL,'',0,1380699041),(426,0,'repository_dropbox',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699041),(427,0,'repository_dropbox','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699041),(428,0,'repository_dropbox','2012061700','2012061700','Plugin installed',NULL,'',0,1380699041),(429,0,'repository_equella',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699041),(430,0,'repository_equella','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699041),(431,0,'repository_equella','2012061700','2012061700','Plugin installed',NULL,'',0,1380699042),(432,0,'repository_filesystem',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699042),(433,0,'repository_filesystem','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699042),(434,0,'repository_filesystem','2012061700','2012061700','Plugin installed',NULL,'',0,1380699042),(435,0,'repository_flickr',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699042),(436,0,'repository_flickr','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699042),(437,0,'repository_flickr','2012061700','2012061700','Plugin installed',NULL,'',0,1380699043),(438,0,'repository_flickr_public',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699043),(439,0,'repository_flickr_public','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699043),(440,0,'repository_flickr_public','2012061700','2012061700','Plugin installed',NULL,'',0,1380699043),(441,0,'repository_googledocs',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699043),(442,0,'repository_googledocs','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699043),(443,0,'repository_googledocs','2012061700','2012061700','Plugin installed',NULL,'',0,1380699044),(444,0,'repository_local',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699044),(445,0,'repository_local','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699044),(446,0,'repository_local','2012061700','2012061700','Plugin installed',NULL,'',0,1380699045),(447,0,'repository_merlot',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699045),(448,0,'repository_merlot','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699045),(449,0,'repository_merlot','2012061700','2012061700','Plugin installed',NULL,'',0,1380699045),(450,0,'repository_picasa',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699045),(451,0,'repository_picasa','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699045),(452,0,'repository_picasa','2012061700','2012061700','Plugin installed',NULL,'',0,1380699046),(453,0,'repository_recent',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699046),(454,0,'repository_recent','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699046),(455,0,'repository_recent','2012061700','2012061700','Plugin installed',NULL,'',0,1380699046),(456,0,'repository_s3',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699047),(457,0,'repository_s3','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699047),(458,0,'repository_s3','2012061700','2012061700','Plugin installed',NULL,'',0,1380699047),(459,0,'repository_upload',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699047),(460,0,'repository_upload','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699047),(461,0,'repository_upload','2012061700','2012061700','Plugin installed',NULL,'',0,1380699048),(462,0,'repository_url',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699048),(463,0,'repository_url','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699048),(464,0,'repository_url','2012061700','2012061700','Plugin installed',NULL,'',0,1380699049),(465,0,'repository_user',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699049),(466,0,'repository_user','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699049),(467,0,'repository_user','2012061700','2012061700','Plugin installed',NULL,'',0,1380699050),(468,0,'repository_webdav',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699050),(469,0,'repository_webdav','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699050),(470,0,'repository_webdav','2012061700','2012061700','Plugin installed',NULL,'',0,1380699050),(471,0,'repository_wikimedia',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699050),(472,0,'repository_wikimedia','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699051),(473,0,'repository_wikimedia','2012061700','2012061700','Plugin installed',NULL,'',0,1380699051),(474,0,'repository_youtube',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699051),(475,0,'repository_youtube','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699051),(476,0,'repository_youtube','2012061700','2012061700','Plugin installed',NULL,'',0,1380699052),(477,0,'portfolio_boxnet',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699052),(478,0,'portfolio_boxnet','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699052),(479,0,'portfolio_boxnet','2012061700','2012061700','Plugin installed',NULL,'',0,1380699052),(480,0,'portfolio_download',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699052),(481,0,'portfolio_download','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699052),(482,0,'portfolio_download','2012061700','2012061700','Plugin installed',NULL,'',0,1380699053),(483,0,'portfolio_flickr',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699053),(484,0,'portfolio_flickr','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699053),(485,0,'portfolio_flickr','2012061700','2012061700','Plugin installed',NULL,'',0,1380699053),(486,0,'portfolio_googledocs',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699053),(487,0,'portfolio_googledocs','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699053),(488,0,'portfolio_googledocs','2012061700','2012061700','Plugin installed',NULL,'',0,1380699053),(489,0,'portfolio_mahara',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699053),(490,0,'portfolio_mahara','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699054),(491,0,'portfolio_mahara','2012061700','2012061700','Plugin installed',NULL,'',0,1380699054),(492,0,'portfolio_picasa',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699054),(493,0,'portfolio_picasa','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699054),(494,0,'portfolio_picasa','2012061700','2012061700','Plugin installed',NULL,'',0,1380699055),(495,0,'qbehaviour_adaptive',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699055),(496,0,'qbehaviour_adaptive','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699055),(497,0,'qbehaviour_adaptive','2012061700','2012061700','Plugin installed',NULL,'',0,1380699055),(498,0,'qbehaviour_adaptivenopenalty',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699055),(499,0,'qbehaviour_adaptivenopenalty','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699055),(500,0,'qbehaviour_adaptivenopenalty','2012061700','2012061700','Plugin installed',NULL,'',0,1380699055),(501,0,'qbehaviour_deferredcbm',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699055),(502,0,'qbehaviour_deferredcbm','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699055),(503,0,'qbehaviour_deferredcbm','2012061700','2012061700','Plugin installed',NULL,'',0,1380699055),(504,0,'qbehaviour_deferredfeedback',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699055),(505,0,'qbehaviour_deferredfeedback','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699055),(506,0,'qbehaviour_deferredfeedback','2012061700','2012061700','Plugin installed',NULL,'',0,1380699056),(507,0,'qbehaviour_immediatecbm',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699056),(508,0,'qbehaviour_immediatecbm','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699056),(509,0,'qbehaviour_immediatecbm','2012061700','2012061700','Plugin installed',NULL,'',0,1380699056),(510,0,'qbehaviour_immediatefeedback',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699056),(511,0,'qbehaviour_immediatefeedback','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699056),(512,0,'qbehaviour_immediatefeedback','2012061700','2012061700','Plugin installed',NULL,'',0,1380699056),(513,0,'qbehaviour_informationitem',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699056),(514,0,'qbehaviour_informationitem','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699056),(515,0,'qbehaviour_informationitem','2012061700','2012061700','Plugin installed',NULL,'',0,1380699057),(516,0,'qbehaviour_interactive',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699057),(517,0,'qbehaviour_interactive','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699057),(518,0,'qbehaviour_interactive','2012061700','2012061700','Plugin installed',NULL,'',0,1380699057),(519,0,'qbehaviour_interactivecountback',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699057),(520,0,'qbehaviour_interactivecountback','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699057),(521,0,'qbehaviour_interactivecountback','2012061700','2012061700','Plugin installed',NULL,'',0,1380699057),(522,0,'qbehaviour_manualgraded',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699058),(523,0,'qbehaviour_manualgraded','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699058),(524,0,'qbehaviour_manualgraded','2012061700','2012061700','Plugin installed',NULL,'',0,1380699058),(525,0,'qbehaviour_missing',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699058),(526,0,'qbehaviour_missing','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699058),(527,0,'qbehaviour_missing','2012061700','2012061700','Plugin installed',NULL,'',0,1380699058),(528,0,'qformat_aiken',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699058),(529,0,'qformat_aiken','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699058),(530,0,'qformat_aiken','2012061700','2012061700','Plugin installed',NULL,'',0,1380699059),(531,0,'qformat_blackboard',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699059),(532,0,'qformat_blackboard','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699059),(533,0,'qformat_blackboard','2012061700','2012061700','Plugin installed',NULL,'',0,1380699059),(534,0,'qformat_blackboard_six',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699059),(535,0,'qformat_blackboard_six','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699059),(536,0,'qformat_blackboard_six','2012061700','2012061700','Plugin installed',NULL,'',0,1380699060),(537,0,'qformat_examview',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699060),(538,0,'qformat_examview','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699060),(539,0,'qformat_examview','2012061700','2012061700','Plugin installed',NULL,'',0,1380699060),(540,0,'qformat_gift',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699060),(541,0,'qformat_gift','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699060),(542,0,'qformat_gift','2012061700','2012061700','Plugin installed',NULL,'',0,1380699061),(543,0,'qformat_learnwise',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699061),(544,0,'qformat_learnwise','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699061),(545,0,'qformat_learnwise','2012061700','2012061700','Plugin installed',NULL,'',0,1380699061),(546,0,'qformat_missingword',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699061),(547,0,'qformat_missingword','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699061),(548,0,'qformat_missingword','2012061700','2012061700','Plugin installed',NULL,'',0,1380699061),(549,0,'qformat_multianswer',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699062),(550,0,'qformat_multianswer','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699062),(551,0,'qformat_multianswer','2012061700','2012061700','Plugin installed',NULL,'',0,1380699062),(552,0,'qformat_webct',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699062),(553,0,'qformat_webct','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699062),(554,0,'qformat_webct','2012061700','2012061700','Plugin installed',NULL,'',0,1380699062),(555,0,'qformat_xhtml',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699062),(556,0,'qformat_xhtml','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699062),(557,0,'qformat_xhtml','2012061700','2012061700','Plugin installed',NULL,'',0,1380699063),(558,0,'qformat_xml',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699063),(559,0,'qformat_xml','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699063),(560,0,'qformat_xml','2012061700','2012061700','Plugin installed',NULL,'',0,1380699063),(561,0,'tool_assignmentupgrade',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699063),(562,0,'tool_assignmentupgrade','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699063),(563,0,'tool_assignmentupgrade','2012061700','2012061700','Plugin installed',NULL,'',0,1380699063),(564,0,'tool_bloglevelupgrade',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699063),(565,0,'tool_bloglevelupgrade','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699063),(566,0,'tool_bloglevelupgrade','2012061700','2012061700','Plugin installed',NULL,'',0,1380699064),(567,0,'tool_capability',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699064),(568,0,'tool_capability','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699064),(569,0,'tool_capability','2012061700','2012061700','Plugin installed',NULL,'',0,1380699064),(570,0,'tool_customlang',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699064),(571,0,'tool_customlang','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699065),(572,0,'tool_customlang','2012061700','2012061700','Plugin installed',NULL,'',0,1380699066),(573,0,'tool_dbtransfer',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699066),(574,0,'tool_dbtransfer','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699066),(575,0,'tool_dbtransfer','2012061700','2012061700','Plugin installed',NULL,'',0,1380699066),(576,0,'tool_generator',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699066),(577,0,'tool_generator','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699066),(578,0,'tool_generator','2012061700','2012061700','Plugin installed',NULL,'',0,1380699066),(579,0,'tool_health',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699067),(580,0,'tool_health','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699067),(581,0,'tool_health','2012061700','2012061700','Plugin installed',NULL,'',0,1380699067),(582,0,'tool_innodb',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699067),(583,0,'tool_innodb','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699067),(584,0,'tool_innodb','2012061700','2012061700','Plugin installed',NULL,'',0,1380699067),(585,0,'tool_langimport',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699067),(586,0,'tool_langimport','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699067),(587,0,'tool_langimport','2012061700','2012061700','Plugin installed',NULL,'',0,1380699068),(588,0,'tool_multilangupgrade',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699068),(589,0,'tool_multilangupgrade','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699068),(590,0,'tool_multilangupgrade','2012061700','2012061700','Plugin installed',NULL,'',0,1380699068),(591,0,'tool_phpunit',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699068),(592,0,'tool_phpunit','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699068),(593,0,'tool_phpunit','2012061700','2012061700','Plugin installed',NULL,'',0,1380699068),(594,0,'tool_profiling',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699068),(595,0,'tool_profiling','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699069),(596,0,'tool_profiling','2012061700','2012061700','Plugin installed',NULL,'',0,1380699069),(597,0,'tool_qeupgradehelper',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699069),(598,0,'tool_qeupgradehelper','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699069),(599,0,'tool_qeupgradehelper','2012061700','2012061700','Plugin installed',NULL,'',0,1380699069),(600,0,'tool_replace',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699069),(601,0,'tool_replace','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699070),(602,0,'tool_replace','2012061700','2012061700','Plugin installed',NULL,'',0,1380699070),(603,0,'tool_spamcleaner',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699070),(604,0,'tool_spamcleaner','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699070),(605,0,'tool_spamcleaner','2012061700','2012061700','Plugin installed',NULL,'',0,1380699071),(606,0,'tool_timezoneimport',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699071),(607,0,'tool_timezoneimport','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699071),(608,0,'tool_timezoneimport','2012061700','2012061700','Plugin installed',NULL,'',0,1380699071),(609,0,'tool_unittest',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699071),(610,0,'tool_unittest','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699071),(611,0,'tool_unittest','2012061700','2012061700','Plugin installed',NULL,'',0,1380699072),(612,0,'tool_unsuproles',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699072),(613,0,'tool_unsuproles','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699072),(614,0,'tool_unsuproles','2012061700','2012061700','Plugin installed',NULL,'',0,1380699072),(615,0,'tool_uploaduser',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699072),(616,0,'tool_uploaduser','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699072),(617,0,'tool_uploaduser','2012061700','2012061700','Plugin installed',NULL,'',0,1380699073),(618,0,'tool_xmldb',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699073),(619,0,'tool_xmldb','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699073),(620,0,'tool_xmldb','2012061700','2012061700','Plugin installed',NULL,'',0,1380699073),(621,0,'theme_afterburner',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699073),(622,0,'theme_afterburner','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699073),(623,0,'theme_afterburner','2012061700','2012061700','Plugin installed',NULL,'',0,1380699073),(624,0,'theme_anomaly',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699073),(625,0,'theme_anomaly','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699073),(626,0,'theme_anomaly','2012061700','2012061700','Plugin installed',NULL,'',0,1380699074),(627,0,'theme_arialist',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699074),(628,0,'theme_arialist','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699074),(629,0,'theme_arialist','2012061700','2012061700','Plugin installed',NULL,'',0,1380699074),(630,0,'theme_base',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699074),(631,0,'theme_base','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699074),(632,0,'theme_base','2012061700','2012061700','Plugin installed',NULL,'',0,1380699074),(633,0,'theme_binarius',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699074),(634,0,'theme_binarius','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699075),(635,0,'theme_binarius','2012061700','2012061700','Plugin installed',NULL,'',0,1380699075),(636,0,'theme_boxxie',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699075),(637,0,'theme_boxxie','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699075),(638,0,'theme_boxxie','2012061700','2012061700','Plugin installed',NULL,'',0,1380699075),(639,0,'theme_brick',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699075),(640,0,'theme_brick','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699075),(641,0,'theme_brick','2012061700','2012061700','Plugin installed',NULL,'',0,1380699076),(642,0,'theme_canvas',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699076),(643,0,'theme_canvas','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699076),(644,0,'theme_canvas','2012061700','2012061700','Plugin installed',NULL,'',0,1380699076),(645,0,'theme_formal_white',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699076),(646,0,'theme_formal_white','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699076),(647,0,'theme_formal_white','2012061700','2012061700','Plugin installed',NULL,'',0,1380699077),(648,0,'theme_formfactor',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699077),(649,0,'theme_formfactor','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699077),(650,0,'theme_formfactor','2012061700','2012061700','Plugin installed',NULL,'',0,1380699077),(651,0,'theme_fusion',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699077),(652,0,'theme_fusion','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699077),(653,0,'theme_fusion','2012061700','2012061700','Plugin installed',NULL,'',0,1380699077),(654,0,'theme_leatherbound',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699077),(655,0,'theme_leatherbound','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699077),(656,0,'theme_leatherbound','2012061700','2012061700','Plugin installed',NULL,'',0,1380699078),(657,0,'theme_magazine',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699078),(658,0,'theme_magazine','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699078),(659,0,'theme_magazine','2012061700','2012061700','Plugin installed',NULL,'',0,1380699078),(660,0,'theme_mymobile',NULL,'2012061901','Starting plugin installation',NULL,'',0,1380699078),(661,0,'theme_mymobile','2012061901','2012061901','Upgrade savepoint reached',NULL,'',0,1380699078),(662,0,'theme_mymobile','2012061901','2012061901','Plugin installed',NULL,'',0,1380699078),(663,0,'theme_nimble',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699078),(664,0,'theme_nimble','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699079),(665,0,'theme_nimble','2012061700','2012061700','Plugin installed',NULL,'',0,1380699079),(666,0,'theme_nonzero',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699079),(667,0,'theme_nonzero','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699079),(668,0,'theme_nonzero','2012061700','2012061700','Plugin installed',NULL,'',0,1380699079),(669,0,'theme_overlay',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699079),(670,0,'theme_overlay','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699079),(671,0,'theme_overlay','2012061700','2012061700','Plugin installed',NULL,'',0,1380699080),(672,0,'theme_serenity',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699080),(673,0,'theme_serenity','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699080),(674,0,'theme_serenity','2012061700','2012061700','Plugin installed',NULL,'',0,1380699080),(675,0,'theme_sky_high',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699080),(676,0,'theme_sky_high','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699080),(677,0,'theme_sky_high','2012061700','2012061700','Plugin installed',NULL,'',0,1380699080),(678,0,'theme_splash',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699080),(679,0,'theme_splash','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699080),(680,0,'theme_splash','2012061700','2012061700','Plugin installed',NULL,'',0,1380699081),(681,0,'theme_standard',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699081),(682,0,'theme_standard','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699081),(683,0,'theme_standard','2012061700','2012061700','Plugin installed',NULL,'',0,1380699082),(684,0,'theme_standardold',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699082),(685,0,'theme_standardold','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699082),(686,0,'theme_standardold','2012061700','2012061700','Plugin installed',NULL,'',0,1380699082),(687,0,'assignsubmission_comments',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699082),(688,0,'assignsubmission_comments','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699082),(689,0,'assignsubmission_comments','2012061700','2012061700','Plugin installed',NULL,'',0,1380699083),(690,0,'assignsubmission_file',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699083),(691,0,'assignsubmission_file','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699083),(692,0,'assignsubmission_file','2012061700','2012061700','Plugin installed',NULL,'',0,1380699084),(693,0,'assignsubmission_onlinetext',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699084),(694,0,'assignsubmission_onlinetext','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699084),(695,0,'assignsubmission_onlinetext','2012061700','2012061700','Plugin installed',NULL,'',0,1380699085),(696,0,'assignfeedback_comments',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699085),(697,0,'assignfeedback_comments','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699085),(698,0,'assignfeedback_comments','2012061700','2012061700','Plugin installed',NULL,'',0,1380699086),(699,0,'assignfeedback_file',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699086),(700,0,'assignfeedback_file','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699086),(701,0,'assignfeedback_file','2012061700','2012061700','Plugin installed',NULL,'',0,1380699087),(702,0,'assignment_offline',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699087),(703,0,'assignment_offline','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699087),(704,0,'assignment_offline','2012061700','2012061700','Plugin installed',NULL,'',0,1380699087),(705,0,'assignment_online',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699087),(706,0,'assignment_online','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699087),(707,0,'assignment_online','2012061700','2012061700','Plugin installed',NULL,'',0,1380699088),(708,0,'assignment_upload',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699088),(709,0,'assignment_upload','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699088),(710,0,'assignment_upload','2012061700','2012061700','Plugin installed',NULL,'',0,1380699088),(711,0,'assignment_uploadsingle',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699088),(712,0,'assignment_uploadsingle','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699088),(713,0,'assignment_uploadsingle','2012061700','2012061700','Plugin installed',NULL,'',0,1380699088),(714,0,'booktool_exportimscp',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699089),(715,0,'booktool_exportimscp','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699089),(716,0,'booktool_exportimscp','2012061700','2012061700','Plugin installed',NULL,'',0,1380699089),(717,0,'booktool_importhtml',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699089),(718,0,'booktool_importhtml','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699089),(719,0,'booktool_importhtml','2012061700','2012061700','Plugin installed',NULL,'',0,1380699090),(720,0,'booktool_print',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699090),(721,0,'booktool_print','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699090),(722,0,'booktool_print','2012061700','2012061700','Plugin installed',NULL,'',0,1380699090),(723,0,'datafield_checkbox',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699090),(724,0,'datafield_checkbox','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699091),(725,0,'datafield_checkbox','2012061700','2012061700','Plugin installed',NULL,'',0,1380699091),(726,0,'datafield_date',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699091),(727,0,'datafield_date','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699091),(728,0,'datafield_date','2012061700','2012061700','Plugin installed',NULL,'',0,1380699091),(729,0,'datafield_file',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699091),(730,0,'datafield_file','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699091),(731,0,'datafield_file','2012061700','2012061700','Plugin installed',NULL,'',0,1380699091),(732,0,'datafield_latlong',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699092),(733,0,'datafield_latlong','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699092),(734,0,'datafield_latlong','2012061700','2012061700','Plugin installed',NULL,'',0,1380699092),(735,0,'datafield_menu',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699092),(736,0,'datafield_menu','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699093),(737,0,'datafield_menu','2012061700','2012061700','Plugin installed',NULL,'',0,1380699093),(738,0,'datafield_multimenu',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699093),(739,0,'datafield_multimenu','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699093),(740,0,'datafield_multimenu','2012061700','2012061700','Plugin installed',NULL,'',0,1380699093),(741,0,'datafield_number',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699093),(742,0,'datafield_number','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699093),(743,0,'datafield_number','2012061700','2012061700','Plugin installed',NULL,'',0,1380699093),(744,0,'datafield_picture',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699093),(745,0,'datafield_picture','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699093),(746,0,'datafield_picture','2012061700','2012061700','Plugin installed',NULL,'',0,1380699094),(747,0,'datafield_radiobutton',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699094),(748,0,'datafield_radiobutton','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699094),(749,0,'datafield_radiobutton','2012061700','2012061700','Plugin installed',NULL,'',0,1380699094),(750,0,'datafield_text',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699094),(751,0,'datafield_text','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699094),(752,0,'datafield_text','2012061700','2012061700','Plugin installed',NULL,'',0,1380699094),(753,0,'datafield_textarea',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699094),(754,0,'datafield_textarea','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699094),(755,0,'datafield_textarea','2012061700','2012061700','Plugin installed',NULL,'',0,1380699095),(756,0,'datafield_url',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699095),(757,0,'datafield_url','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699095),(758,0,'datafield_url','2012061700','2012061700','Plugin installed',NULL,'',0,1380699095),(759,0,'datapreset_imagegallery',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699095),(760,0,'datapreset_imagegallery','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699095),(761,0,'datapreset_imagegallery','2012061700','2012061700','Plugin installed',NULL,'',0,1380699095),(762,0,'quiz_grading',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699095),(763,0,'quiz_grading','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699096),(764,0,'quiz_grading','2012061700','2012061700','Plugin installed',NULL,'',0,1380699096),(765,0,'quiz_overview',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699096),(766,0,'quiz_overview','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699096),(767,0,'quiz_overview','2012061700','2012061700','Plugin installed',NULL,'',0,1380699097),(768,0,'quiz_responses',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699097),(769,0,'quiz_responses','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699097),(770,0,'quiz_responses','2012061700','2012061700','Plugin installed',NULL,'',0,1380699097),(771,0,'quiz_statistics',NULL,'2012061801','Starting plugin installation',NULL,'',0,1380699097),(772,0,'quiz_statistics','2012061801','2012061801','Upgrade savepoint reached',NULL,'',0,1380699098),(773,0,'quiz_statistics','2012061801','2012061801','Plugin installed',NULL,'',0,1380699098),(774,0,'quizaccess_delaybetweenattempts',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699098),(775,0,'quizaccess_delaybetweenattempts','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699098),(776,0,'quizaccess_delaybetweenattempts','2012061700','2012061700','Plugin installed',NULL,'',0,1380699099),(777,0,'quizaccess_ipaddress',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699099),(778,0,'quizaccess_ipaddress','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699099),(779,0,'quizaccess_ipaddress','2012061700','2012061700','Plugin installed',NULL,'',0,1380699099),(780,0,'quizaccess_numattempts',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699099),(781,0,'quizaccess_numattempts','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699099),(782,0,'quizaccess_numattempts','2012061700','2012061700','Plugin installed',NULL,'',0,1380699100),(783,0,'quizaccess_openclosedate',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699100),(784,0,'quizaccess_openclosedate','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699100),(785,0,'quizaccess_openclosedate','2012061700','2012061700','Plugin installed',NULL,'',0,1380699100),(786,0,'quizaccess_password',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699100),(787,0,'quizaccess_password','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699100),(788,0,'quizaccess_password','2012061700','2012061700','Plugin installed',NULL,'',0,1380699100),(789,0,'quizaccess_safebrowser',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699100),(790,0,'quizaccess_safebrowser','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699101),(791,0,'quizaccess_safebrowser','2012061700','2012061700','Plugin installed',NULL,'',0,1380699101),(792,0,'quizaccess_securewindow',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699101),(793,0,'quizaccess_securewindow','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699101),(794,0,'quizaccess_securewindow','2012061700','2012061700','Plugin installed',NULL,'',0,1380699101),(795,0,'quizaccess_timelimit',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699101),(796,0,'quizaccess_timelimit','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699101),(797,0,'quizaccess_timelimit','2012061700','2012061700','Plugin installed',NULL,'',0,1380699102),(798,0,'scormreport_basic',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699102),(799,0,'scormreport_basic','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699102),(800,0,'scormreport_basic','2012061700','2012061700','Plugin installed',NULL,'',0,1380699102),(801,0,'scormreport_graphs',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699102),(802,0,'scormreport_graphs','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699102),(803,0,'scormreport_graphs','2012061700','2012061700','Plugin installed',NULL,'',0,1380699102),(804,0,'scormreport_interactions',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699102),(805,0,'scormreport_interactions','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699103),(806,0,'scormreport_interactions','2012061700','2012061700','Plugin installed',NULL,'',0,1380699103),(807,0,'workshopform_accumulative',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699103),(808,0,'workshopform_accumulative','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699104),(809,0,'workshopform_accumulative','2012061700','2012061700','Plugin installed',NULL,'',0,1380699104),(810,0,'workshopform_comments',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699104),(811,0,'workshopform_comments','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699105),(812,0,'workshopform_comments','2012061700','2012061700','Plugin installed',NULL,'',0,1380699105),(813,0,'workshopform_numerrors',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699105),(814,0,'workshopform_numerrors','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699106),(815,0,'workshopform_numerrors','2012061700','2012061700','Plugin installed',NULL,'',0,1380699106),(816,0,'workshopform_rubric',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699106),(817,0,'workshopform_rubric','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699107),(818,0,'workshopform_rubric','2012061700','2012061700','Plugin installed',NULL,'',0,1380699107),(819,0,'workshopallocation_manual',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699107),(820,0,'workshopallocation_manual','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699108),(821,0,'workshopallocation_manual','2012061700','2012061700','Plugin installed',NULL,'',0,1380699108),(822,0,'workshopallocation_random',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699108),(823,0,'workshopallocation_random','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699108),(824,0,'workshopallocation_random','2012061700','2012061700','Plugin installed',NULL,'',0,1380699108),(825,0,'workshopallocation_scheduled',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699108),(826,0,'workshopallocation_scheduled','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699109),(827,0,'workshopallocation_scheduled','2012061700','2012061700','Plugin installed',NULL,'',0,1380699109),(828,0,'workshopeval_best',NULL,'2012061700','Starting plugin installation',NULL,'',0,1380699109),(829,0,'workshopeval_best','2012061700','2012061700','Upgrade savepoint reached',NULL,'',0,1380699109),(830,0,'workshopeval_best','2012061700','2012061700','Plugin installed',NULL,'',0,1380699110);
/*!40000 ALTER TABLE `mdl_upgrade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_controllers`
--

DROP TABLE IF EXISTS `mdl_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_controllers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `operation` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'backup',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `format` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `interactive` smallint(4) NOT NULL,
  `purpose` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` smallint(4) NOT NULL,
  `execution` smallint(4) NOT NULL,
  `executiontime` bigint(10) NOT NULL,
  `checksum` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `controller` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcont_bac_uix` (`backupid`),
  KEY `mdl_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl_backcont_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_controllers`
--

LOCK TABLES `mdl_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl_backup_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_profiling`
--

DROP TABLE IF EXISTS `mdl_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_profiling` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `runid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `totalexecutiontime` bigint(10) NOT NULL,
  `totalcputime` bigint(10) NOT NULL,
  `totalcalls` bigint(10) NOT NULL,
  `totalmemory` bigint(10) NOT NULL,
  `runreference` tinyint(2) NOT NULL DEFAULT '0',
  `runcomment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_prof_run_uix` (`runid`),
  KEY `mdl_prof_urlrun_ix` (`url`,`runreference`),
  KEY `mdl_prof_timrun_ix` (`timecreated`,`runreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the results of all the profiling runs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_profiling`
--

LOCK TABLES `mdl_profiling` WRITE;
/*!40000 ALTER TABLE `mdl_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_published`
--

DROP TABLE IF EXISTS `mdl_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT '1',
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_published`
--

LOCK TABLES `mdl_course_published` WRITE;
/*!40000 ALTER TABLE `mdl_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_locks`
--

DROP TABLE IF EXISTS `mdl_wiki_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_locks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `sectionname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `lockedat` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manages page locks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_locks`
--

LOCK TABLES `mdl_wiki_locks` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext COLLATE utf8_unicode_ci,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This is the list of queued handlers for processing. The even';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue_handlers`
--

LOCK TABLES `mdl_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` DISABLE KEYS */;
INSERT INTO `mdl_events_queue_handlers` VALUES (1,1,5,0,'',1380701672),(2,2,5,0,'',1380714588);
/*!40000 ALTER TABLE `mdl_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_mapinfo`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_mapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_mapinfo` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `objectiveid` bigint(10) NOT NULL DEFAULT '0',
  `targetobjectiveid` bigint(10) NOT NULL DEFAULT '0',
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT '1',
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT '1',
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT '0',
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 objective mapinfo description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_mapinfo`
--

LOCK TABLES `mdl_scorm_seq_mapinfo` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message`
--

DROP TABLE IF EXISTS `mdl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT '0',
  `useridto` bigint(10) NOT NULL DEFAULT '0',
  `subject` longtext COLLATE utf8_unicode_ci,
  `fullmessage` longtext COLLATE utf8_unicode_ci,
  `fullmessageformat` smallint(4) DEFAULT '0',
  `fullmessagehtml` longtext COLLATE utf8_unicode_ci,
  `smallmessage` longtext COLLATE utf8_unicode_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext COLLATE utf8_unicode_ci,
  `contexturlname` longtext COLLATE utf8_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_mess_use_ix` (`useridfrom`),
  KEY `mdl_mess_use2_ix` (`useridto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores all unread messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message`
--

LOCK TABLES `mdl_message` WRITE;
/*!40000 ALTER TABLE `mdl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries`
--

DROP TABLE IF EXISTS `mdl_glossary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `concept` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `definition` longtext COLLATE utf8_unicode_ci NOT NULL,
  `definitionformat` tinyint(2) NOT NULL DEFAULT '0',
  `definitiontrust` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `teacherentry` tinyint(2) NOT NULL DEFAULT '0',
  `sourceglossaryid` bigint(10) NOT NULL DEFAULT '0',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  `casesensitive` tinyint(2) NOT NULL DEFAULT '0',
  `fullmatch` tinyint(2) NOT NULL DEFAULT '1',
  `approved` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='all glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries`
--

LOCK TABLES `mdl_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_field`
--

DROP TABLE IF EXISTS `mdl_user_info_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'shortname',
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `categoryid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `required` tinyint(2) NOT NULL DEFAULT '0',
  `locked` tinyint(2) NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '0',
  `forceunique` tinyint(2) NOT NULL DEFAULT '0',
  `signup` tinyint(2) NOT NULL DEFAULT '0',
  `defaultdata` longtext COLLATE utf8_unicode_ci,
  `defaultdataformat` tinyint(2) NOT NULL DEFAULT '0',
  `param1` longtext COLLATE utf8_unicode_ci,
  `param2` longtext COLLATE utf8_unicode_ci,
  `param3` longtext COLLATE utf8_unicode_ci,
  `param4` longtext COLLATE utf8_unicode_ci,
  `param5` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Customisable user profile fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_field`
--

LOCK TABLES `mdl_user_info_field` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages_current` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_chatmesscurr_use_ix` (`userid`),
  KEY `mdl_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages_current`
--

LOCK TABLES `mdl_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_template`
--

DROP TABLE IF EXISTS `mdl_feedback_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `ispublic` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feedtemp_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='templates of feedbackstructures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_template`
--

LOCK TABLES `mdl_feedback_template` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_step_data`
--

DROP TABLE IF EXISTS `mdl_question_attempt_step_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_step_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attemptstepid` bigint(10) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesattestepdata_attna_uix` (`attemptstepid`,`name`),
  KEY `mdl_quesattestepdata_att_ix` (`attemptstepid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each question_attempt_step has an associative array of the d';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_step_data`
--

LOCK TABLES `mdl_question_attempt_step_data` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` DISABLE KEYS */;
INSERT INTO `mdl_question_attempt_step_data` VALUES (1,1,'_order','9,8,7'),(2,2,'_order','11,10,12'),(3,3,'answer','1'),(4,4,'answer','1'),(5,5,'-finish','1'),(6,6,'-finish','1'),(7,7,'_order','15,13,14'),(8,8,'_order','17,18,16'),(9,9,'_order','20,21,19'),(10,10,'_order','23,22,24'),(11,11,'answer','0'),(12,12,'answer','1'),(13,13,'answer','1'),(14,14,'answer','0'),(15,15,'-finish','1'),(16,16,'-finish','1'),(17,17,'-finish','1'),(18,18,'-finish','1');
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instances`
--

DROP TABLE IF EXISTS `mdl_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parentcontextid` bigint(10) NOT NULL,
  `showinsubcontexts` smallint(4) NOT NULL,
  `pagetypepattern` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultregion` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defaultweight` bigint(10) NOT NULL,
  `configdata` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_instances`
--

LOCK TABLES `mdl_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl_block_instances` DISABLE KEYS */;
INSERT INTO `mdl_block_instances` VALUES (1,'site_main_menu',2,0,'site-index',NULL,'side-pre',0,''),(2,'course_summary',2,0,'site-index',NULL,'side-post',0,''),(3,'calendar_month',2,0,'site-index',NULL,'side-post',1,''),(4,'navigation',1,1,'*',NULL,'side-pre',0,''),(5,'settings',1,1,'*',NULL,'side-pre',1,''),(6,'admin_bookmarks',1,0,'admin-*',NULL,'side-pre',0,''),(7,'private_files',1,0,'my-index','2','side-post',0,''),(8,'online_users',1,0,'my-index','2','side-post',1,''),(9,'course_overview',1,0,'my-index','2','content',0,''),(10,'search_forums',17,0,'course-view-*',NULL,'side-post',0,''),(11,'news_items',17,0,'course-view-*',NULL,'side-post',1,''),(12,'calendar_upcoming',17,0,'course-view-*',NULL,'side-post',2,''),(13,'recent_activity',17,0,'course-view-*',NULL,'side-post',3,'');
/*!40000 ALTER TABLE `mdl_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_grades_old`
--

DROP TABLE IF EXISTS `mdl_workshop_grades_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_grades_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workgradold_wor_ix` (`workshopid`),
  KEY `mdl_workgradold_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_grades table to be dropped later in Moodle 2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_grades_old`
--

LOCK TABLES `mdl_workshop_grades_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_grades_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_grades_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum`
--

DROP TABLE IF EXISTS `mdl_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'general',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `maxbytes` bigint(10) NOT NULL DEFAULT '0',
  `maxattachments` bigint(10) NOT NULL DEFAULT '1',
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT '0',
  `trackingtype` tinyint(2) NOT NULL DEFAULT '1',
  `rsstype` tinyint(2) NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `warnafter` bigint(10) NOT NULL DEFAULT '0',
  `blockafter` bigint(10) NOT NULL DEFAULT '0',
  `blockperiod` bigint(10) NOT NULL DEFAULT '0',
  `completiondiscussions` int(9) NOT NULL DEFAULT '0',
  `completionreplies` int(9) NOT NULL DEFAULT '0',
  `completionposts` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum`
--

LOCK TABLES `mdl_forum` WRITE;
/*!40000 ALTER TABLE `mdl_forum` DISABLE KEYS */;
INSERT INTO `mdl_forum` VALUES (1,2,'news','News forum','General news and announcements',0,0,0,0,1,0,1,1,1,0,0,1380700040,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mdl_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT '0',
  `md5key` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rawtext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types_config`
--

DROP TABLE IF EXISTS `mdl_lti_types_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `typeid` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_ltitypeconf_typ_ix` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Basic LTI types configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types_config`
--

LOCK TABLES `mdl_lti_types_config` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT '0',
  `keephigh` bigint(10) NOT NULL DEFAULT '0',
  `droplow` bigint(10) NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories_history`
--

LOCK TABLES `mdl_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories_history` DISABLE KEYS */;
INSERT INTO `mdl_grade_categories_history` VALUES (1,1,1,'system',1380701339,2,2,NULL,0,NULL,'?',11,0,0,1,0,0,0),(2,2,1,'system',1380701339,2,2,NULL,1,'/1/','?',11,0,0,1,0,0,0),(3,2,1,NULL,1380701369,2,2,NULL,1,'/1/','?',11,0,0,1,0,0,0),(4,2,1,NULL,1380702390,2,2,NULL,1,'/1/','?',11,0,0,1,0,0,0),(5,2,1,NULL,1380702743,2,2,NULL,1,'/1/','?',11,0,0,1,0,0,0);
/*!40000 ALTER TABLE `mdl_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_handlers`
--

DROP TABLE IF EXISTS `mdl_events_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(166) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handlerfile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handlerfunction` longtext COLLATE utf8_unicode_ci,
  `schedule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `internal` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table is for storing which components requests what typ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_handlers`
--

LOCK TABLES `mdl_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_handlers` DISABLE KEYS */;
INSERT INTO `mdl_events_handlers` VALUES (1,'portfolio_send','moodle','/lib/portfolio.php','s:22:\"portfolio_handle_event\";','cron',0,0),(2,'user_logout','mod_chat','/mod/chat/lib.php','s:16:\"chat_user_logout\";','instant',0,1),(3,'user_enrolled','mod_forum','/mod/forum/lib.php','s:19:\"forum_user_enrolled\";','instant',0,1),(4,'user_unenrolled','mod_forum','/mod/forum/lib.php','s:21:\"forum_user_unenrolled\";','instant',0,1),(5,'quiz_attempt_submitted','mod_quiz','/mod/quiz/locallib.php','s:30:\"quiz_attempt_submitted_handler\";','cron',0,1),(6,'quiz_attempt_overdue','mod_quiz','/mod/quiz/locallib.php','s:28:\"quiz_attempt_overdue_handler\";','cron',0,1),(7,'role_assigned','enrol_category','/enrol/category/locallib.php','a:2:{i:0;s:22:\"enrol_category_handler\";i:1;s:13:\"role_assigned\";}','instant',0,1),(8,'role_unassigned','enrol_category','/enrol/category/locallib.php','a:2:{i:0;s:22:\"enrol_category_handler\";i:1;s:15:\"role_unassigned\";}','instant',0,1),(9,'cohort_member_added','enrol_cohort','/enrol/cohort/locallib.php','a:2:{i:0;s:20:\"enrol_cohort_handler\";i:1;s:12:\"member_added\";}','instant',0,1),(10,'cohort_member_removed','enrol_cohort','/enrol/cohort/locallib.php','a:2:{i:0;s:20:\"enrol_cohort_handler\";i:1;s:14:\"member_removed\";}','instant',0,1),(11,'cohort_deleted','enrol_cohort','/enrol/cohort/locallib.php','a:2:{i:0;s:20:\"enrol_cohort_handler\";i:1;s:7:\"deleted\";}','instant',0,1),(12,'role_assigned','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:13:\"role_assigned\";}','instant',0,1),(13,'role_unassigned','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:15:\"role_unassigned\";}','instant',0,1),(14,'user_enrolled','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:13:\"user_enrolled\";}','instant',0,1),(15,'user_unenrolled','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:15:\"user_unenrolled\";}','instant',0,1),(16,'user_enrol_modified','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:19:\"user_enrol_modified\";}','instant',0,1),(17,'course_deleted','enrol_meta','/enrol/meta/locallib.php','a:2:{i:0;s:18:\"enrol_meta_handler\";i:1;s:14:\"course_deleted\";}','instant',0,1);
/*!40000 ALTER TABLE `mdl_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical`
--

DROP TABLE IF EXISTS `mdl_question_numerical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answer` bigint(10) NOT NULL DEFAULT '0',
  `tolerance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesnume_ans_ix` (`answer`),
  KEY `mdl_quesnume_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for numerical questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical`
--

LOCK TABLES `mdl_question_numerical` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey`
--

DROP TABLE IF EXISTS `mdl_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `template` bigint(10) NOT NULL DEFAULT '0',
  `days` mediumint(6) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `questions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_surv_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each record is one SURVEY module with its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey`
--

LOCK TABLES `mdl_survey` WRITE;
/*!40000 ALTER TABLE `mdl_survey` DISABLE KEYS */;
INSERT INTO `mdl_survey` VALUES (1,0,0,0,985017600,985017600,'collesaname','collesaintro',0,'25,26,27,28,29,30,43,44'),(2,0,0,0,985017600,985017600,'collespname','collespintro',0,'31,32,33,34,35,36,43,44'),(3,0,0,0,985017600,985017600,'collesapname','collesapintro',0,'37,38,39,40,41,42,43,44'),(4,0,0,0,985017600,985017600,'attlsname','attlsintro',0,'65,67,68'),(5,0,0,0,985017600,985017600,'ciqname','ciqintro',0,'69,70,71,72,73');
/*!40000 ALTER TABLE `mdl_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_users`
--

DROP TABLE IF EXISTS `mdl_external_services_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl_exteservuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='users allowed to use services with restricted users flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_users`
--

LOCK TABLES `mdl_external_services_users` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_external_services_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `module` bigint(10) NOT NULL DEFAULT '0',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `idnumber` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT '0',
  `score` smallint(4) NOT NULL DEFAULT '0',
  `indent` mediumint(5) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint(4) NOT NULL DEFAULT '0',
  `groupingid` bigint(10) NOT NULL DEFAULT '0',
  `groupmembersonly` smallint(4) NOT NULL DEFAULT '0',
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint(10) NOT NULL DEFAULT '0',
  `availablefrom` bigint(10) NOT NULL DEFAULT '0',
  `availableuntil` bigint(10) NOT NULL DEFAULT '0',
  `showavailability` tinyint(1) NOT NULL DEFAULT '0',
  `showdescription` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
INSERT INTO `mdl_course_modules` VALUES (1,2,9,1,1,NULL,1380700041,0,0,1,1,0,0,0,0,NULL,0,0,0,0,0,0),(2,2,16,1,2,'',1380701368,0,0,1,1,0,0,0,0,NULL,0,0,0,0,0,0),(3,2,16,2,2,'',1380702742,0,0,1,1,0,0,0,0,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `definitionformat` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_workrubrleve_dim_ix` (`dimensionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The definition of rubric rating scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_levels`
--

LOCK TABLES `mdl_workshopform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_url`
--

DROP TABLE IF EXISTS `mdl_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_url` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `externalurl` longtext COLLATE utf8_unicode_ci NOT NULL,
  `display` smallint(4) NOT NULL DEFAULT '0',
  `displayoptions` longtext COLLATE utf8_unicode_ci,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_url_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each record is one url resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_url`
--

LOCK TABLES `mdl_url` WRITE;
/*!40000 ALTER TABLE `mdl_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang_components`
--

DROP TABLE IF EXISTS `mdl_tool_customlang_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang_components` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains the list of all installed plugins that provide thei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang_components`
--

LOCK TABLES `mdl_tool_customlang_components` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'core',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'moodlecourse','format','weeks'),(2,'moodlecourse','maxsections','52'),(3,'moodlecourse','numsections','10'),(4,'moodlecourse','hiddensections','0'),(5,'moodlecourse','newsitems','5'),(6,'moodlecourse','showgrades','1'),(7,'moodlecourse','showreports','0'),(8,'moodlecourse','maxbytes','2097152'),(9,'moodlecourse','groupmode','0'),(10,'moodlecourse','groupmodeforce','0'),(11,'moodlecourse','visible','1'),(12,'moodlecourse','lang',''),(13,'moodlecourse','enablecompletion','0'),(14,'moodlecourse','completionstartonenrol','0'),(15,'backup','loglifetime','30'),(16,'backup','backup_general_users','1'),(17,'backup','backup_general_users_locked','0'),(18,'backup','backup_general_anonymize','0'),(19,'backup','backup_general_anonymize_locked','0'),(20,'backup','backup_general_role_assignments','1'),(21,'backup','backup_general_role_assignments_locked','0'),(22,'backup','backup_general_activities','1'),(23,'backup','backup_general_activities_locked','0'),(24,'backup','backup_general_blocks','1'),(25,'backup','backup_general_blocks_locked','0'),(26,'backup','backup_general_filters','1'),(27,'backup','backup_general_filters_locked','0'),(28,'backup','backup_general_comments','1'),(29,'backup','backup_general_comments_locked','0'),(30,'backup','backup_general_userscompletion','1'),(31,'backup','backup_general_userscompletion_locked','0'),(32,'backup','backup_general_logs','0'),(33,'backup','backup_general_logs_locked','0'),(34,'backup','backup_general_histories','0'),(35,'backup','backup_general_histories_locked','0'),(36,'backup','backup_auto_active','0'),(37,'backup','backup_auto_weekdays','0000000'),(38,'backup','backup_auto_hour','0'),(39,'backup','backup_auto_minute','0'),(40,'backup','backup_auto_storage','0'),(41,'backup','backup_auto_destination',''),(42,'backup','backup_auto_keep','1'),(43,'backup','backup_shortname','0'),(44,'backup','backup_auto_users','1'),(45,'backup','backup_auto_role_assignments','1'),(46,'backup','backup_auto_activities','1'),(47,'backup','backup_auto_blocks','1'),(48,'backup','backup_auto_filters','1'),(49,'backup','backup_auto_comments','1'),(50,'backup','backup_auto_userscompletion','1'),(51,'backup','backup_auto_logs','0'),(52,'backup','backup_auto_histories','0'),(53,'enrol_database','dbtype',''),(54,'enrol_database','dbhost','localhost'),(55,'enrol_database','dbuser',''),(56,'enrol_database','dbpass',''),(57,'enrol_database','dbname',''),(58,'enrol_database','dbencoding','utf-8'),(59,'enrol_database','dbsetupsql',''),(60,'enrol_database','dbsybasequoting','0'),(61,'enrol_database','debugdb','0'),(62,'enrol_database','localcoursefield','idnumber'),(63,'enrol_database','localuserfield','idnumber'),(64,'enrol_database','localrolefield','shortname'),(65,'enrol_database','localcategoryfield','id'),(66,'enrol_database','remoteenroltable',''),(67,'enrol_database','remotecoursefield',''),(68,'enrol_database','remoteuserfield',''),(69,'enrol_database','remoterolefield',''),(70,'enrol_database','ignorehiddencourses','0'),(71,'enrol_database','unenrolaction','0'),(72,'enrol_database','newcoursetable',''),(73,'enrol_database','newcoursefullname','fullname'),(74,'enrol_database','newcourseshortname','shortname'),(75,'enrol_database','newcourseidnumber','idnumber'),(76,'enrol_database','newcoursecategory',''),(77,'enrol_database','templatecourse',''),(78,'enrol_flatfile','location',''),(79,'enrol_flatfile','mailstudents','0'),(80,'enrol_flatfile','mailteachers','0'),(81,'enrol_flatfile','mailadmins','0'),(82,'enrol_guest','requirepassword','0'),(83,'enrol_guest','usepasswordpolicy','0'),(84,'enrol_guest','showhint','0'),(85,'enrol_guest','defaultenrol','1'),(86,'enrol_guest','status','1'),(87,'enrol_guest','status_adv','0'),(88,'enrol_imsenterprise','imsfilelocation',''),(89,'enrol_imsenterprise','logtolocation',''),(90,'enrol_imsenterprise','mailadmins','0'),(91,'enrol_imsenterprise','createnewusers','0'),(92,'enrol_imsenterprise','imsdeleteusers','0'),(93,'enrol_imsenterprise','fixcaseusernames','0'),(94,'enrol_imsenterprise','fixcasepersonalnames','0'),(95,'enrol_imsenterprise','imssourcedidfallback','0'),(96,'enrol_imsenterprise','truncatecoursecodes','0'),(97,'enrol_imsenterprise','createnewcourses','0'),(98,'enrol_imsenterprise','createnewcategories','0'),(99,'enrol_imsenterprise','imsunenrol','0'),(100,'enrol_imsenterprise','imsrestricttarget',''),(101,'enrol_imsenterprise','imscapitafix','0'),(102,'enrol_manual','defaultenrol','1'),(103,'enrol_manual','status','0'),(104,'enrol_manual','enrolperiod','0'),(105,'enrol_paypal','paypalbusiness',''),(106,'enrol_paypal','mailstudents','0'),(107,'enrol_paypal','mailteachers','0'),(108,'enrol_paypal','mailadmins','0'),(109,'enrol_paypal','status','1'),(110,'enrol_paypal','cost','0'),(111,'enrol_paypal','currency','USD'),(112,'enrol_paypal','enrolperiod','0'),(113,'enrol_self','requirepassword','0'),(114,'enrol_self','usepasswordpolicy','0'),(115,'enrol_self','showhint','0'),(116,'enrol_self','defaultenrol','1'),(117,'enrol_self','status','1'),(118,'enrol_self','groupkey','0'),(119,'enrol_self','enrolperiod','0'),(120,'enrol_self','longtimenosee','0'),(121,'enrol_self','maxenrolled','0'),(122,'enrol_self','sendcoursewelcomemessage','1'),(123,'editor_tinymce','spellengine','GoogleSpell'),(124,'editor_tinymce','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv'),(125,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings'),(126,'filter_urltolink','formats','0'),(127,'filter_urltolink','embedimages','1'),(128,'filter_emoticon','formats','1,4,0'),(129,'theme_afterburner','logo',''),(130,'theme_afterburner','footnote',''),(131,'theme_afterburner','customcss',''),(132,'theme_arialist','logo',''),(133,'theme_arialist','tagline',''),(134,'theme_arialist','linkcolor','#f25f0f'),(135,'theme_arialist','regionwidth','250'),(136,'theme_arialist','customcss',''),(137,'theme_brick','logo',''),(138,'theme_brick','linkcolor','#06365b'),(139,'theme_brick','linkhover','#5487ad'),(140,'theme_brick','maincolor','#8e2800'),(141,'theme_brick','maincolorlink','#fff0a5'),(142,'theme_brick','headingcolor','#5c3500'),(143,'theme_formal_white','fontsizereference','13'),(144,'theme_formal_white','noframe','0'),(145,'theme_formal_white','framemargin','15'),(146,'theme_formal_white','headercontent','1'),(147,'theme_formal_white','customlogourl',''),(148,'theme_formal_white','frontpagelogourl',''),(149,'theme_formal_white','headerbgc','#E3DFD4'),(150,'theme_formal_white','creditstomoodleorg','2'),(151,'theme_formal_white','blockcolumnwidth','200'),(152,'theme_formal_white','blockpadding','8'),(153,'theme_formal_white','blockcontentbgc','#F6F6F6'),(154,'theme_formal_white','lblockcolumnbgc','#E3DFD4'),(155,'theme_formal_white','rblockcolumnbgc',''),(156,'theme_formal_white','footnote',''),(157,'theme_formal_white','customcss',''),(158,'theme_fusion','linkcolor','#2d83d5'),(159,'theme_fusion','tagline',''),(160,'theme_fusion','footertext',''),(161,'theme_fusion','customcss',''),(162,'theme_magazine','background',''),(163,'theme_magazine','logo',''),(164,'theme_magazine','linkcolor','#32529a'),(165,'theme_magazine','linkhover','#4e2300'),(166,'theme_magazine','maincolor','#002f2f'),(167,'theme_magazine','maincoloraccent','#092323'),(168,'theme_magazine','headingcolor','#4e0000'),(169,'theme_magazine','blockcolor','#002f2f'),(170,'theme_magazine','forumback','#e6e2af'),(171,'theme_mymobile','colourswatch','light'),(172,'theme_mymobile','showmobileintro',''),(173,'theme_mymobile','showsitetopic','topicshow'),(174,'theme_mymobile','showfullsizeimages','ithumb'),(175,'theme_mymobile','usetableview','tabshow'),(176,'theme_mymobile','customcss',''),(177,'theme_nimble','tagline',''),(178,'theme_nimble','footerline',''),(179,'theme_nimble','backgroundcolor','#454545'),(180,'theme_nimble','linkcolor','#2a65b1'),(181,'theme_nimble','linkhover','#222222'),(182,'theme_nonzero','regionprewidth','200'),(183,'theme_nonzero','regionpostwidth','200'),(184,'theme_nonzero','customcss',''),(185,'theme_overlay','linkcolor','#428ab5'),(186,'theme_overlay','headercolor','#2a4c7b'),(187,'theme_overlay','footertext',''),(188,'theme_overlay','customcss',''),(189,'theme_sky_high','logo',''),(190,'theme_sky_high','regionwidth','240'),(191,'theme_sky_high','footnote',''),(192,'theme_sky_high','customcss',''),(193,'theme_splash','logo',''),(194,'theme_splash','tagline','Virtual learning center'),(195,'theme_splash','hide_tagline','0'),(196,'theme_splash','footnote',''),(197,'theme_splash','customcss',''),(198,'qtype_calculated','version','2012061700'),(199,'qtype_calculatedmulti','version','2012061700'),(200,'qtype_calculatedsimple','version','2012061700'),(201,'qtype_description','version','2012061700'),(202,'qtype_essay','version','2012061700'),(203,'qtype_match','version','2012061700'),(204,'qtype_missingtype','version','2012061700'),(205,'qtype_multianswer','version','2012061700'),(206,'qtype_multichoice','version','2012061700'),(207,'qtype_numerical','version','2012061700'),(208,'qtype_random','version','2012061700'),(209,'qtype_randomsamatch','version','2012061700'),(210,'qtype_shortanswer','version','2012061700'),(211,'qtype_truefalse','version','2012061700'),(221,'auth_cas','version','2012061700'),(223,'auth_db','version','2012061700'),(225,'auth_email','version','2012061700'),(226,'auth_fc','version','2012061700'),(228,'auth_imap','version','2012061700'),(230,'auth_ldap','version','2012061700'),(232,'auth_manual','version','2012061700'),(233,'auth_mnet','version','2012061700'),(235,'auth_nntp','version','2012061700'),(237,'auth_nologin','version','2012061700'),(238,'auth_none','version','2012061700'),(239,'auth_pam','version','2012061700'),(241,'auth_pop3','version','2012061700'),(243,'auth_radius','version','2012061700'),(245,'auth_shibboleth','version','2012061700'),(247,'auth_webservice','version','2012061700'),(248,'enrol_authorize','version','2012061700'),(249,'enrol_category','version','2012061700'),(251,'enrol_cohort','version','2012061700'),(252,'enrol_database','version','2012061700'),(254,'enrol_flatfile','version','2012061700'),(255,'enrol_guest','version','2012061700'),(256,'enrol_imsenterprise','version','2012061700'),(258,'enrol_ldap','version','2012061700'),(260,'enrol_manual','version','2012061700'),(262,'enrol_meta','version','2012061700'),(264,'enrol_mnet','version','2012061700'),(265,'enrol_paypal','version','2012061700'),(266,'enrol_self','version','2012061700'),(268,'message_email','version','2012061700'),(270,'message','email_provider_enrol_authorize_authorize_enrolment_permitted','permitted'),(271,'message','message_provider_enrol_authorize_authorize_enrolment_loggedin','email'),(272,'message','message_provider_enrol_authorize_authorize_enrolment_loggedoff','email'),(273,'message','email_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(274,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedin','email'),(275,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedoff','email'),(276,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(277,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedin','email'),(278,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedoff','email'),(279,'message','email_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(280,'message','message_provider_enrol_paypal_paypal_enrolment_loggedin','email'),(281,'message','message_provider_enrol_paypal_paypal_enrolment_loggedoff','email'),(282,'message','email_provider_mod_assign_assign_notification_permitted','permitted'),(283,'message','message_provider_mod_assign_assign_notification_loggedin','email'),(284,'message','message_provider_mod_assign_assign_notification_loggedoff','email'),(285,'message','email_provider_mod_assignment_assignment_updates_permitted','permitted'),(286,'message','message_provider_mod_assignment_assignment_updates_loggedin','email'),(287,'message','message_provider_mod_assignment_assignment_updates_loggedoff','email'),(288,'message','email_provider_mod_feedback_submission_permitted','permitted'),(289,'message','message_provider_mod_feedback_submission_loggedin','email'),(290,'message','message_provider_mod_feedback_submission_loggedoff','email'),(291,'message','email_provider_mod_feedback_message_permitted','permitted'),(292,'message','message_provider_mod_feedback_message_loggedin','email'),(293,'message','message_provider_mod_feedback_message_loggedoff','email'),(294,'message','email_provider_mod_forum_posts_permitted','permitted'),(295,'message','message_provider_mod_forum_posts_loggedin','email'),(296,'message','message_provider_mod_forum_posts_loggedoff','email'),(297,'message','email_provider_mod_lesson_graded_essay_permitted','permitted'),(298,'message','message_provider_mod_lesson_graded_essay_loggedin','email'),(299,'message','message_provider_mod_lesson_graded_essay_loggedoff','email'),(300,'message','email_provider_mod_quiz_submission_permitted','permitted'),(301,'message','message_provider_mod_quiz_submission_loggedin','email'),(302,'message','message_provider_mod_quiz_submission_loggedoff','email'),(303,'message','email_provider_mod_quiz_confirmation_permitted','permitted'),(304,'message','message_provider_mod_quiz_confirmation_loggedin','email'),(305,'message','message_provider_mod_quiz_confirmation_loggedoff','email'),(306,'message','email_provider_mod_quiz_attempt_overdue_permitted','permitted'),(307,'message','message_provider_mod_quiz_attempt_overdue_loggedin','email'),(308,'message','message_provider_mod_quiz_attempt_overdue_loggedoff','email'),(309,'message','email_provider_moodle_notices_permitted','permitted'),(310,'message','message_provider_moodle_notices_loggedin','email'),(311,'message','message_provider_moodle_notices_loggedoff','email'),(312,'message','email_provider_moodle_errors_permitted','permitted'),(313,'message','message_provider_moodle_errors_loggedin','email'),(314,'message','message_provider_moodle_errors_loggedoff','email'),(315,'message','email_provider_moodle_availableupdate_permitted','permitted'),(316,'message','message_provider_moodle_availableupdate_loggedin','email'),(317,'message','message_provider_moodle_availableupdate_loggedoff','email'),(318,'message','email_provider_moodle_instantmessage_permitted','permitted'),(319,'message','message_provider_moodle_instantmessage_loggedoff','popup,email'),(320,'message','email_provider_moodle_backup_permitted','permitted'),(321,'message','message_provider_moodle_backup_loggedin','email'),(322,'message','message_provider_moodle_backup_loggedoff','email'),(323,'message','email_provider_moodle_courserequested_permitted','permitted'),(324,'message','message_provider_moodle_courserequested_loggedin','email'),(325,'message','message_provider_moodle_courserequested_loggedoff','email'),(326,'message','email_provider_moodle_courserequestapproved_permitted','permitted'),(327,'message','message_provider_moodle_courserequestapproved_loggedin','email'),(328,'message','message_provider_moodle_courserequestapproved_loggedoff','email'),(329,'message','email_provider_moodle_courserequestrejected_permitted','permitted'),(330,'message','message_provider_moodle_courserequestrejected_loggedin','email'),(331,'message','message_provider_moodle_courserequestrejected_loggedoff','email'),(332,'message_jabber','version','2012061700'),(334,'message','jabber_provider_enrol_authorize_authorize_enrolment_permitted','permitted'),(335,'message','jabber_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(336,'message','jabber_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(337,'message','jabber_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(338,'message','jabber_provider_mod_assign_assign_notification_permitted','permitted'),(339,'message','jabber_provider_mod_assignment_assignment_updates_permitted','permitted'),(340,'message','jabber_provider_mod_feedback_submission_permitted','permitted'),(341,'message','jabber_provider_mod_feedback_message_permitted','permitted'),(342,'message','jabber_provider_mod_forum_posts_permitted','permitted'),(343,'message','jabber_provider_mod_lesson_graded_essay_permitted','permitted'),(344,'message','jabber_provider_mod_quiz_submission_permitted','permitted'),(345,'message','jabber_provider_mod_quiz_confirmation_permitted','permitted'),(346,'message','jabber_provider_mod_quiz_attempt_overdue_permitted','permitted'),(347,'message','jabber_provider_moodle_notices_permitted','permitted'),(348,'message','jabber_provider_moodle_errors_permitted','permitted'),(349,'message','jabber_provider_moodle_availableupdate_permitted','permitted'),(350,'message','jabber_provider_moodle_instantmessage_permitted','permitted'),(351,'message','jabber_provider_moodle_backup_permitted','permitted'),(352,'message','jabber_provider_moodle_courserequested_permitted','permitted'),(353,'message','jabber_provider_moodle_courserequestapproved_permitted','permitted'),(354,'message','jabber_provider_moodle_courserequestrejected_permitted','permitted'),(355,'message_popup','version','2012061700'),(357,'message','popup_provider_enrol_authorize_authorize_enrolment_permitted','permitted'),(358,'message','popup_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(359,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(360,'message','popup_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(361,'message','popup_provider_mod_assign_assign_notification_permitted','permitted'),(362,'message','popup_provider_mod_assignment_assignment_updates_permitted','permitted'),(363,'message','popup_provider_mod_feedback_submission_permitted','permitted'),(364,'message','popup_provider_mod_feedback_message_permitted','permitted'),(365,'message','popup_provider_mod_forum_posts_permitted','permitted'),(366,'message','popup_provider_mod_lesson_graded_essay_permitted','permitted'),(367,'message','popup_provider_mod_quiz_submission_permitted','permitted'),(368,'message','popup_provider_mod_quiz_confirmation_permitted','permitted'),(369,'message','popup_provider_mod_quiz_attempt_overdue_permitted','permitted'),(370,'message','popup_provider_moodle_notices_permitted','permitted'),(371,'message','popup_provider_moodle_errors_permitted','permitted'),(372,'message','popup_provider_moodle_availableupdate_permitted','permitted'),(373,'message','popup_provider_moodle_instantmessage_permitted','permitted'),(374,'message','message_provider_moodle_instantmessage_loggedin','popup'),(375,'message','popup_provider_moodle_backup_permitted','permitted'),(376,'message','popup_provider_moodle_courserequested_permitted','permitted'),(377,'message','popup_provider_moodle_courserequestapproved_permitted','permitted'),(378,'message','popup_provider_moodle_courserequestrejected_permitted','permitted'),(380,'filter_activitynames','version','2012061700'),(382,'filter_algebra','version','2012061700'),(383,'filter_censor','version','2012061700'),(384,'filter_data','version','2012061700'),(386,'filter_emailprotect','version','2012061700'),(387,'filter_emoticon','version','2012061700'),(388,'filter_glossary','version','2012061701'),(390,'filter_mediaplugin','version','2012061700'),(392,'filter_multilang','version','2012061700'),(393,'filter_tex','version','2012061700'),(395,'filter_tidy','version','2012061700'),(396,'filter_urltolink','version','2012061700'),(397,'editor_textarea','version','2012061700'),(398,'editor_tinymce','version','2012061700'),(399,'format_scorm','version','2012061700'),(400,'format_social','version','2012061700'),(401,'format_topics','version','2012061700'),(402,'format_weeks','version','2012061700'),(403,'profilefield_checkbox','version','2012061700'),(404,'profilefield_datetime','version','2012061700'),(405,'profilefield_menu','version','2012061700'),(406,'profilefield_text','version','2012061700'),(407,'profilefield_textarea','version','2012061700'),(408,'report_backups','version','2012061700'),(409,'report_completion','version','2012061700'),(411,'report_configlog','version','2012061700'),(412,'report_courseoverview','version','2012061700'),(413,'report_log','version','2012061700'),(415,'report_loglive','version','2012061700'),(416,'report_outline','version','2012061700'),(418,'report_participation','version','2012061700'),(420,'report_progress','version','2012061700'),(422,'report_questioninstances','version','2012061700'),(423,'report_security','version','2012061700'),(424,'report_stats','version','2012061700'),(426,'gradeexport_ods','version','2012061700'),(427,'gradeexport_txt','version','2012061700'),(428,'gradeexport_xls','version','2012061700'),(429,'gradeexport_xml','version','2012061700'),(430,'gradeimport_csv','version','2012061700'),(431,'gradeimport_xml','version','2012061700'),(432,'gradereport_grader','version','2012061700'),(433,'gradereport_outcomes','version','2012061700'),(434,'gradereport_overview','version','2012061700'),(435,'gradereport_user','version','2012061700'),(436,'gradingform_guide','version','2012061700'),(437,'gradingform_rubric','version','2012061700'),(438,'mnetservice_enrol','version','2012061700'),(439,'webservice_amf','version','2012061700'),(440,'webservice_rest','version','2012061700'),(441,'webservice_soap','version','2012061700'),(442,'webservice_xmlrpc','version','2012061700'),(443,'repository_alfresco','version','2012061700'),(444,'repository_boxnet','version','2012061700'),(445,'repository_coursefiles','version','2012061700'),(446,'repository_dropbox','version','2012061700'),(447,'repository_equella','version','2012061700'),(448,'repository_filesystem','version','2012061700'),(449,'repository_flickr','version','2012061700'),(450,'repository_flickr_public','version','2012061700'),(451,'repository_googledocs','version','2012061700'),(452,'repository_local','version','2012061700'),(454,'local','enablecourseinstances','0'),(455,'local','enableuserinstances','0'),(456,'repository_merlot','version','2012061700'),(457,'repository_picasa','version','2012061700'),(458,'repository_recent','version','2012061700'),(460,'recent','enablecourseinstances','0'),(461,'recent','enableuserinstances','0'),(462,'repository_s3','version','2012061700'),(463,'repository_upload','version','2012061700'),(465,'upload','enablecourseinstances','0'),(466,'upload','enableuserinstances','0'),(467,'repository_url','version','2012061700'),(469,'url','enablecourseinstances','0'),(470,'url','enableuserinstances','0'),(471,'repository_user','version','2012061700'),(473,'user','enablecourseinstances','0'),(474,'user','enableuserinstances','0'),(475,'repository_webdav','version','2012061700'),(476,'repository_wikimedia','version','2012061700'),(478,'wikimedia','enablecourseinstances','0'),(479,'wikimedia','enableuserinstances','0'),(480,'repository_youtube','version','2012061700'),(482,'youtube','enablecourseinstances','0'),(483,'youtube','enableuserinstances','0'),(484,'portfolio_boxnet','version','2012061700'),(485,'portfolio_download','version','2012061700'),(486,'portfolio_flickr','version','2012061700'),(487,'portfolio_googledocs','version','2012061700'),(488,'portfolio_mahara','version','2012061700'),(489,'portfolio_picasa','version','2012061700'),(490,'qbehaviour_adaptive','version','2012061700'),(491,'qbehaviour_adaptivenopenalty','version','2012061700'),(492,'qbehaviour_deferredcbm','version','2012061700'),(493,'qbehaviour_deferredfeedback','version','2012061700'),(494,'qbehaviour_immediatecbm','version','2012061700'),(495,'qbehaviour_immediatefeedback','version','2012061700'),(496,'qbehaviour_informationitem','version','2012061700'),(497,'qbehaviour_interactive','version','2012061700'),(498,'qbehaviour_interactivecountback','version','2012061700'),(499,'qbehaviour_manualgraded','version','2012061700'),(500,'qbehaviour_missing','version','2012061700'),(501,'qformat_aiken','version','2012061700'),(502,'qformat_blackboard','version','2012061700'),(503,'qformat_blackboard_six','version','2012061700'),(504,'qformat_examview','version','2012061700'),(505,'qformat_gift','version','2012061700'),(506,'qformat_learnwise','version','2012061700'),(507,'qformat_missingword','version','2012061700'),(508,'qformat_multianswer','version','2012061700'),(509,'qformat_webct','version','2012061700'),(510,'qformat_xhtml','version','2012061700'),(511,'qformat_xml','version','2012061700'),(512,'tool_assignmentupgrade','version','2012061700'),(513,'tool_bloglevelupgrade','version','2012061700'),(515,'tool_capability','version','2012061700'),(516,'tool_customlang','version','2012061700'),(518,'tool_dbtransfer','version','2012061700'),(519,'tool_generator','version','2012061700'),(520,'tool_health','version','2012061700'),(521,'tool_innodb','version','2012061700'),(522,'tool_langimport','version','2012061700'),(523,'tool_multilangupgrade','version','2012061700'),(524,'tool_phpunit','version','2012061700'),(525,'tool_profiling','version','2012061700'),(526,'tool_qeupgradehelper','version','2012061700'),(528,'tool_replace','version','2012061700'),(529,'tool_spamcleaner','version','2012061700'),(530,'tool_timezoneimport','version','2012061700'),(531,'tool_unittest','version','2012061700'),(533,'tool_unsuproles','version','2012061700'),(535,'tool_uploaduser','version','2012061700'),(536,'tool_xmldb','version','2012061700'),(537,'theme_afterburner','version','2012061700'),(538,'theme_anomaly','version','2012061700'),(539,'theme_arialist','version','2012061700'),(540,'theme_base','version','2012061700'),(541,'theme_binarius','version','2012061700'),(542,'theme_boxxie','version','2012061700'),(543,'theme_brick','version','2012061700'),(544,'theme_canvas','version','2012061700'),(545,'theme_formal_white','version','2012061700'),(547,'theme_formfactor','version','2012061700'),(548,'theme_fusion','version','2012061700'),(549,'theme_leatherbound','version','2012061700'),(550,'theme_magazine','version','2012061700'),(551,'theme_mymobile','version','2012061901'),(552,'theme_nimble','version','2012061700'),(553,'theme_nonzero','version','2012061700'),(554,'theme_overlay','version','2012061700'),(555,'theme_serenity','version','2012061700'),(556,'theme_sky_high','version','2012061700'),(557,'theme_splash','version','2012061700'),(558,'theme_standard','version','2012061700'),(559,'theme_standardold','version','2012061700'),(560,'assignsubmission_comments','version','2012061700'),(562,'assignsubmission_file','sortorder','1'),(563,'assignsubmission_comments','sortorder','2'),(564,'assignsubmission_onlinetext','sortorder','0'),(565,'assignsubmission_file','version','2012061700'),(566,'assignsubmission_onlinetext','version','2012061700'),(568,'assignfeedback_comments','version','2012061700'),(570,'assignfeedback_comments','sortorder','0'),(571,'assignfeedback_file','sortorder','1'),(572,'assignfeedback_file','version','2012061700'),(574,'assignment_offline','version','2012061700'),(575,'assignment_online','version','2012061700'),(576,'assignment_upload','version','2012061700'),(577,'assignment_uploadsingle','version','2012061700'),(578,'booktool_exportimscp','version','2012061700'),(579,'booktool_importhtml','version','2012061700'),(580,'booktool_print','version','2012061700'),(581,'datafield_checkbox','version','2012061700'),(582,'datafield_date','version','2012061700'),(583,'datafield_file','version','2012061700'),(584,'datafield_latlong','version','2012061700'),(585,'datafield_menu','version','2012061700'),(586,'datafield_multimenu','version','2012061700'),(587,'datafield_number','version','2012061700'),(588,'datafield_picture','version','2012061700'),(589,'datafield_radiobutton','version','2012061700'),(590,'datafield_text','version','2012061700'),(591,'datafield_textarea','version','2012061700'),(592,'datafield_url','version','2012061700'),(593,'datapreset_imagegallery','version','2012061700'),(594,'quiz_grading','version','2012061700'),(595,'quiz_overview','version','2012061700'),(596,'quiz_responses','version','2012061700'),(597,'quiz_statistics','version','2012061801'),(599,'quizaccess_delaybetweenattempts','version','2012061700'),(600,'quizaccess_ipaddress','version','2012061700'),(601,'quizaccess_numattempts','version','2012061700'),(602,'quizaccess_openclosedate','version','2012061700'),(603,'quizaccess_password','version','2012061700'),(604,'quizaccess_safebrowser','version','2012061700'),(605,'quizaccess_securewindow','version','2012061700'),(606,'quizaccess_timelimit','version','2012061700'),(607,'scormreport_basic','version','2012061700'),(608,'scormreport_graphs','version','2012061700'),(609,'scormreport_interactions','version','2012061700'),(610,'workshopform_accumulative','version','2012061700'),(612,'workshopform_comments','version','2012061700'),(614,'workshopform_numerrors','version','2012061700'),(616,'workshopform_rubric','version','2012061700'),(618,'workshopallocation_manual','version','2012061700'),(619,'workshopallocation_random','version','2012061700'),(620,'workshopallocation_scheduled','version','2012061700'),(621,'workshopeval_best','version','2012061700'),(622,'assign','feedback_plugin_for_gradebook','assignfeedback_comments'),(623,'assign','showrecentsubmissions','0'),(624,'assign','submissionreceipts','1'),(625,'book','requiremodintro','1'),(626,'book','numberingoptions','0,1,2,3'),(627,'book','numbering','1'),(628,'folder','requiremodintro','1'),(629,'imscp','requiremodintro','1'),(630,'imscp','keepold','1'),(631,'imscp','keepold_adv','0'),(632,'page','requiremodintro','1'),(633,'page','displayoptions','5'),(634,'page','printheading','1'),(635,'page','printheading_adv','0'),(636,'page','printintro','0'),(637,'page','printintro_adv','0'),(638,'page','display','5'),(639,'page','display_adv','1'),(640,'page','popupwidth','620'),(641,'page','popupwidth_adv','1'),(642,'page','popupheight','450'),(643,'page','popupheight_adv','1'),(644,'quiz','timelimit','0'),(645,'quiz','timelimit_adv','0'),(646,'quiz','overduehandling','autoabandon'),(647,'quiz','overduehandling_adv','0'),(648,'quiz','graceperiod','86400'),(649,'quiz','graceperiod_adv','0'),(650,'quiz','graceperiodmin','60'),(651,'quiz','attempts','0'),(652,'quiz','attempts_adv','0'),(653,'quiz','grademethod','1'),(654,'quiz','grademethod_adv','0'),(655,'quiz','maximumgrade','10'),(656,'quiz','shufflequestions','0'),(657,'quiz','shufflequestions_adv','0'),(658,'quiz','questionsperpage','1'),(659,'quiz','questionsperpage_adv','0'),(660,'quiz','navmethod','free'),(661,'quiz','navmethod_adv','1'),(662,'quiz','shuffleanswers','1'),(663,'quiz','shuffleanswers_adv','0'),(664,'quiz','preferredbehaviour','deferredfeedback'),(665,'quiz','attemptonlast','0'),(666,'quiz','attemptonlast_adv','1'),(667,'quiz','reviewattempt','69904'),(668,'quiz','reviewcorrectness','69904'),(669,'quiz','reviewmarks','69904'),(670,'quiz','reviewspecificfeedback','69904'),(671,'quiz','reviewgeneralfeedback','69904'),(672,'quiz','reviewrightanswer','69904'),(673,'quiz','reviewoverallfeedback','4368'),(674,'quiz','showuserpicture','0'),(675,'quiz','showuserpicture_adv','0'),(676,'quiz','decimalpoints','2'),(677,'quiz','decimalpoints_adv','0'),(678,'quiz','questiondecimalpoints','-1'),(679,'quiz','questiondecimalpoints_adv','0'),(680,'quiz','showblocks','0'),(681,'quiz','showblocks_adv','1'),(682,'quiz','password',''),(683,'quiz','password_adv','0'),(684,'quiz','subnet',''),(685,'quiz','subnet_adv','0'),(686,'quiz','delay1','0'),(687,'quiz','delay1_adv','0'),(688,'quiz','delay2','0'),(689,'quiz','delay2_adv','0'),(690,'quiz','browsersecurity','-'),(691,'quiz','browsersecurity_adv','1'),(692,'resource','framesize','130'),(693,'resource','requiremodintro','1'),(694,'resource','displayoptions','0,1,4,5,6'),(695,'resource','printheading','0'),(696,'resource','printheading_adv','0'),(697,'resource','printintro','1'),(698,'resource','printintro_adv','0'),(699,'resource','display','0'),(700,'resource','display_adv','0'),(701,'resource','showsize','0'),(702,'resource','showsize_adv','0'),(703,'resource','showtype','0'),(704,'resource','showtype_adv','0'),(705,'resource','popupwidth','620'),(706,'resource','popupwidth_adv','1'),(707,'resource','popupheight','450'),(708,'resource','popupheight_adv','1'),(709,'resource','filterfiles','0'),(710,'resource','filterfiles_adv','1'),(711,'scorm','displaycoursestructure','0'),(712,'scorm','displaycoursestructure_adv','0'),(713,'scorm','popup','0'),(714,'scorm','popup_adv','0'),(715,'scorm','framewidth','100'),(716,'scorm','framewidth_adv','1'),(717,'scorm','frameheight','500'),(718,'scorm','frameheight_adv','1'),(719,'scorm','winoptgrp_adv','1'),(720,'scorm','resizable','0'),(721,'scorm','scrollbars','0'),(722,'scorm','directories','0'),(723,'scorm','location','0'),(724,'scorm','menubar','0'),(725,'scorm','toolbar','0'),(726,'scorm','status','0'),(727,'scorm','skipview','0'),(728,'scorm','skipview_adv','1'),(729,'scorm','hidebrowse','0'),(730,'scorm','hidebrowse_adv','1'),(731,'scorm','hidetoc','0'),(732,'scorm','hidetoc_adv','1'),(733,'scorm','hidenav','0'),(734,'scorm','hidenav_adv','0'),(735,'scorm','grademethod','1'),(736,'scorm','grademethod_adv','0'),(737,'scorm','maxgrade','100'),(738,'scorm','maxgrade_adv','0'),(739,'scorm','maxattempt','0'),(740,'scorm','maxattempt_adv','0'),(741,'scorm','whatgrade','0'),(742,'scorm','whatgrade_adv','0'),(743,'scorm','displayattemptstatus','1'),(744,'scorm','displayattemptstatus_adv','0'),(745,'scorm','forcecompleted','0'),(746,'scorm','forcecompleted_adv','1'),(747,'scorm','forcenewattempt','0'),(748,'scorm','forcenewattempt_adv','1'),(749,'scorm','lastattemptlock','0'),(750,'scorm','lastattemptlock_adv','1'),(751,'scorm','auto','0'),(752,'scorm','auto_adv','1'),(753,'scorm','updatefreq','0'),(754,'scorm','updatefreq_adv','1'),(755,'scorm','allowtypeexternal','0'),(756,'scorm','allowtypelocalsync','0'),(757,'scorm','allowtypeimsrepository','0'),(758,'scorm','allowtypeexternalaicc','0'),(759,'scorm','allowaicchacp','0'),(760,'scorm','aicchacptimeout','30'),(761,'scorm','aicchacpkeepsessiondata','1'),(762,'scorm','forcejavascript','1'),(763,'scorm','allowapidebug','0'),(764,'scorm','apidebugmask','.*'),(765,'url','framesize','130'),(766,'url','requiremodintro','1'),(767,'url','secretphrase',''),(768,'url','rolesinparams','0'),(769,'url','displayoptions','0,1,5,6'),(770,'url','printheading','0'),(771,'url','printheading_adv','0'),(772,'url','printintro','1'),(773,'url','printintro_adv','0'),(774,'url','display','0'),(775,'url','display_adv','0'),(776,'url','popupwidth','620'),(777,'url','popupwidth_adv','1'),(778,'url','popupheight','450'),(779,'url','popupheight_adv','1'),(780,'workshop','grade','80'),(781,'workshop','gradinggrade','20'),(782,'workshop','gradedecimals','0'),(783,'workshop','maxbytes','0'),(784,'workshop','strategy','accumulative'),(785,'workshop','examplesmode','0'),(786,'workshopallocation_random','numofreviews','5'),(787,'workshopform_numerrors','grade0','No'),(788,'workshopform_numerrors','grade1','Yes'),(789,'workshopeval_best','comparison','5'),(790,'assignsubmission_file','default','1'),(791,'assignsubmission_file','maxbytes','1048576'),(792,'assignsubmission_onlinetext','default','0'),(793,'assignsubmission_comments','default','0'),(794,'assignfeedback_comments','default','0'),(795,'assignfeedback_file','default','0'),(796,'blocks/section_links','numsections1','22'),(797,'blocks/section_links','incby1','2'),(798,'blocks/section_links','numsections2','40'),(799,'blocks/section_links','incby2','5'),(800,'enrol_cohort','roleid','5'),(801,'enrol_cohort','unenrolaction','0'),(802,'enrol_database','defaultrole','5'),(803,'enrol_database','defaultcategory','1'),(804,'enrol_flatfile','map_1','manager'),(805,'enrol_flatfile','map_2','coursecreator'),(806,'enrol_flatfile','map_3','editingteacher'),(807,'enrol_flatfile','map_4','teacher'),(808,'enrol_flatfile','map_5','student'),(809,'enrol_flatfile','map_6','guest'),(810,'enrol_flatfile','map_7','user'),(811,'enrol_flatfile','map_8','frontpage'),(812,'enrol_imsenterprise','imsrolemap01','5'),(813,'enrol_imsenterprise','imsrolemap02','3'),(814,'enrol_imsenterprise','imsrolemap03','3'),(815,'enrol_imsenterprise','imsrolemap04','5'),(816,'enrol_imsenterprise','imsrolemap05','0'),(817,'enrol_imsenterprise','imsrolemap06','4'),(818,'enrol_imsenterprise','imsrolemap07','0'),(819,'enrol_imsenterprise','imsrolemap08','4'),(820,'enrol_manual','roleid','5'),(821,'enrol_meta','nosyncroleids',''),(822,'enrol_meta','syncall','1'),(823,'enrol_meta','unenrolaction','0'),(824,'enrol_mnet','roleid','5'),(825,'enrol_mnet','roleid_adv','1'),(826,'enrol_paypal','roleid','5'),(827,'enrol_self','roleid','5');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_aicc_session`
--

DROP TABLE IF EXISTS `mdl_scorm_aicc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_aicc_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `scormid` bigint(10) NOT NULL DEFAULT '0',
  `hacpsession` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scoid` bigint(10) DEFAULT '0',
  `scormmode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scormstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` bigint(10) DEFAULT NULL,
  `lessonstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessiontime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_scoraiccsess_sco_ix` (`scormid`),
  KEY `mdl_scoraiccsess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Used by AICC HACP to store session information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_aicc_session`
--

LOCK TABLES `mdl_scorm_aicc_session` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_my_pages`
--

DROP TABLE IF EXISTS `mdl_my_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_my_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) DEFAULT '0',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '1',
  `sortorder` mediumint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_mypage_usepri_ix` (`userid`,`private`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Extra user pages for the My Moodle system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_my_pages`
--

LOCK TABLES `mdl_my_pages` WRITE;
/*!40000 ALTER TABLE `mdl_my_pages` DISABLE KEYS */;
INSERT INTO `mdl_my_pages` VALUES (1,NULL,'__default',0,0),(2,NULL,'__default',1,0);
/*!40000 ALTER TABLE `mdl_my_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_grades`
--

DROP TABLE IF EXISTS `mdl_lesson_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `late` smallint(3) NOT NULL DEFAULT '0',
  `completed` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessgrad_use_ix` (`userid`),
  KEY `mdl_lessgrad_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines lesson_grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_grades`
--

LOCK TABLES `mdl_lesson_grades` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1),(2,50,1,'/1/2',2),(3,40,1,'/1/3',2),(4,30,1,'/1/4',2),(5,30,2,'/1/5',2),(6,80,1,'/1/2/6',3),(7,80,2,'/1/2/7',3),(8,80,3,'/1/2/8',3),(9,80,4,'/1/9',2),(10,80,5,'/1/10',2),(11,80,6,'/1/11',2),(12,80,7,'/1/12',2),(13,80,8,'/1/13',2),(14,80,9,'/1/14',2),(15,30,3,'/1/15',2),(16,30,4,'/1/16',2),(17,50,2,'/1/3/17',3),(18,80,10,'/1/3/17/18',4),(19,80,11,'/1/3/17/19',4),(20,80,12,'/1/3/17/20',4),(21,80,13,'/1/3/17/21',4),(22,70,1,'/1/3/17/22',4),(23,70,2,'/1/3/17/23',4),(24,70,3,'/1/3/17/24',4);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades`
--

DROP TABLE IF EXISTS `mdl_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `exported` bigint(10) NOT NULL DEFAULT '0',
  `overridden` bigint(10) NOT NULL DEFAULT '0',
  `excluded` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8_unicode_ci,
  `feedbackformat` bigint(10) NOT NULL DEFAULT '0',
  `information` longtext COLLATE utf8_unicode_ci,
  `informationformat` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades`
--

LOCK TABLES `mdl_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades` DISABLE KEYS */;
INSERT INTO `mdl_grade_grades` VALUES (1,2,3,50.00000,100.00000,0.00000,NULL,3,50.00000,0,0,0,0,0,0,NULL,0,NULL,0,1380701672,1380701672),(2,1,3,NULL,100.00000,0.00000,NULL,NULL,37.50000,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL),(3,3,3,25.00000,100.00000,0.00000,NULL,3,25.00000,0,0,0,0,0,0,NULL,0,NULL,0,1380714588,1380714588);
/*!40000 ALTER TABLE `mdl_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprule`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprule` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `childactivityset` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `minimumcount` bigint(10) NOT NULL DEFAULT '0',
  `minimumpercent` float(11,4) NOT NULL DEFAULT '0.0000',
  `conditioncombination` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `action` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqroll_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprule`
--

LOCK TABLES `mdl_scorm_seq_rolluprule` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_match_sub`
--

DROP TABLE IF EXISTS `mdl_question_match_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_match_sub` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `code` bigint(10) NOT NULL DEFAULT '0',
  `question` bigint(10) NOT NULL DEFAULT '0',
  `questiontext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT '0',
  `answertext` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmatcsub_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines the subquestions that make up a matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_match_sub`
--

LOCK TABLES `mdl_question_match_sub` WRITE;
/*!40000 ALTER TABLE `mdl_question_match_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_match_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `submission` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_file`
--

LOCK TABLES `mdl_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expiry` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
INSERT INTO `mdl_cache_flags` VALUES (1,'userpreferenceschanged','2',1380702776,'1',1380709976),(2,'userpreferenceschanged','3',1380699541,'1',1380706741),(3,'userpreferenceschanged','4',1380699733,'1',1380706933),(4,'accesslib/dirtycontexts','/1/3/17',1380701576,'1',1380708776);
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_links`
--

DROP TABLE IF EXISTS `mdl_wiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_links` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT '0',
  `frompageid` bigint(10) NOT NULL DEFAULT '0',
  `topageid` bigint(10) NOT NULL DEFAULT '0',
  `tomissingpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_wikilink_fro_ix` (`frompageid`),
  KEY `mdl_wikilink_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Page wiki links';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_links`
--

LOCK TABLES `mdl_wiki_links` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_branch`
--

DROP TABLE IF EXISTS `mdl_lesson_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_branch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `pageid` bigint(10) NOT NULL DEFAULT '0',
  `retry` bigint(10) NOT NULL DEFAULT '0',
  `flag` smallint(3) NOT NULL DEFAULT '0',
  `timeseen` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_lessbran_use_ix` (`userid`),
  KEY `mdl_lessbran_les_ix` (`lessonid`),
  KEY `mdl_lessbran_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='branches for each lesson/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_branch`
--

LOCK TABLES `mdl_lesson_branch` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_items`
--

DROP TABLE IF EXISTS `mdl_question_dataset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definition` bigint(10) NOT NULL DEFAULT '0',
  `itemnumber` bigint(10) NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdataitem_def_ix` (`definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Individual dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_items`
--

LOCK TABLES `mdl_question_dataset_items` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_definitions`
--

DROP TABLE IF EXISTS `mdl_grading_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT '0',
  `options` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl_graddefi_are_ix` (`areaid`),
  KEY `mdl_graddefi_use_ix` (`usermodified`),
  KEY `mdl_graddefi_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains the basic information about an advanced grading for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_definitions`
--

LOCK TABLES `mdl_grading_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_grading_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_data`
--

DROP TABLE IF EXISTS `mdl_user_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_userinfodata_usefie_ix` (`userid`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Data for the customisable user fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_data`
--

LOCK TABLES `mdl_user_info_data` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event`
--

DROP TABLE IF EXISTS `mdl_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `repeatid` bigint(10) NOT NULL DEFAULT '0',
  `modulename` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT '0',
  `eventtype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeduration` bigint(10) NOT NULL DEFAULT '0',
  `visible` smallint(4) NOT NULL DEFAULT '1',
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT '1',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_grocouvisuse_ix` (`groupid`,`courseid`,`visible`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event`
--

LOCK TABLES `mdl_event` WRITE;
/*!40000 ALTER TABLE `mdl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overrides`
--

DROP TABLE IF EXISTS `mdl_quiz_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timeopen` bigint(10) DEFAULT NULL,
  `timeclose` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `attempts` mediumint(6) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizover_qui_ix` (`quiz`),
  KEY `mdl_quizover_gro_ix` (`groupid`),
  KEY `mdl_quizover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='The overrides to quiz settings on a per-user and per-group b';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overrides`
--

LOCK TABLES `mdl_quiz_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections_availability`
--

DROP TABLE IF EXISTS `mdl_course_sections_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_sections_availability` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursesectionid` bigint(10) NOT NULL,
  `sourcecmid` bigint(10) DEFAULT NULL,
  `requiredcompletion` tinyint(1) DEFAULT NULL,
  `gradeitemid` bigint(10) DEFAULT NULL,
  `grademin` decimal(10,5) DEFAULT NULL,
  `grademax` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coursectavai_cou_ix` (`coursesectionid`),
  KEY `mdl_coursectavai_sou_ix` (`sourcecmid`),
  KEY `mdl_coursectavai_gra_ix` (`gradeitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Completion or grade conditions that affect if a section is c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections_availability`
--

LOCK TABLES `mdl_course_sections_availability` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_sections_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_functions`
--

DROP TABLE IF EXISTS `mdl_external_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `methodname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `classpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `capabilities` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_extefunc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='list of all external functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_functions`
--

LOCK TABLES `mdl_external_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_functions` VALUES (1,'moodle_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups'),(2,'core_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups'),(3,'moodle_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups'),(4,'core_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups'),(5,'moodle_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups'),(6,'core_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups'),(7,'moodle_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups'),(8,'core_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups'),(9,'moodle_group_get_groupmembers','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(10,'core_group_get_group_members','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(11,'moodle_group_add_groupmembers','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(12,'core_group_add_group_members','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(13,'moodle_group_delete_groupmembers','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(14,'core_group_delete_group_members','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups'),(15,'core_group_create_groupings','core_group_external','create_groupings','group/externallib.php','moodle',''),(16,'core_group_update_groupings','core_group_external','update_groupings','group/externallib.php','moodle',''),(17,'core_group_get_groupings','core_group_external','get_groupings','group/externallib.php','moodle',''),(18,'core_group_get_course_groupings','core_group_external','get_course_groupings','group/externallib.php','moodle',''),(19,'core_group_delete_groupings','core_group_external','delete_groupings','group/externallib.php','moodle',''),(20,'core_group_assign_grouping','core_group_external','assign_grouping','group/externallib.php','moodle',''),(21,'core_group_unassign_grouping','core_group_external','unassign_grouping','group/externallib.php','moodle',''),(22,'moodle_file_get_files','core_files_external','get_files','files/externallib.php','moodle',''),(23,'core_files_get_files','core_files_external','get_files','files/externallib.php','moodle',''),(24,'moodle_file_upload','core_files_external','upload','files/externallib.php','moodle',''),(25,'core_files_upload','core_files_external','upload','files/externallib.php','moodle',''),(26,'moodle_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create'),(27,'core_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create'),(28,'moodle_user_get_users_by_id','core_user_external','get_users_by_id','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),(29,'core_user_get_users_by_id','core_user_external','get_users_by_id','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update'),(30,'moodle_user_get_users_by_courseid','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),(31,'moodle_user_get_course_participants_by_id','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),(32,'core_user_get_course_user_profiles','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),(33,'moodle_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete'),(34,'core_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete'),(35,'moodle_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update'),(36,'core_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update'),(37,'moodle_enrol_get_enrolled_users','moodle_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/site:viewparticipants, moodle/course:viewparticipants,\n            moodle/role:review, moodle/site:accessallgroups, moodle/course:enrolreview'),(38,'core_enrol_get_enrolled_users','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups'),(39,'moodle_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants'),(40,'core_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants'),(41,'moodle_role_assign','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign'),(42,'core_role_assign_roles','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign'),(43,'moodle_role_unassign','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign'),(44,'core_role_unassign_roles','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign'),(45,'core_course_get_contents','core_course_external','get_course_contents','course/externallib.php','moodle','moodle/course:update,moodle/course:viewhiddencourses'),(46,'moodle_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view,moodle/course:update,moodle/course:viewhiddencourses'),(47,'core_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view,moodle/course:update,moodle/course:viewhiddencourses'),(48,'moodle_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create,moodle/course:visibility'),(49,'core_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create,moodle/course:visibility'),(50,'core_course_delete_courses','core_course_external','delete_courses','course/externallib.php','moodle','moodle/course:delete'),(51,'core_course_duplicate_course','core_course_external','duplicate_course','course/externallib.php','moodle','moodle/backup:backupcourse,moodle/restore:restorecourse,moodle/course:create'),(52,'core_course_get_categories','core_course_external','get_categories','course/externallib.php','moodle','moodle/category:viewhiddencategories'),(53,'core_course_create_categories','core_course_external','create_categories','course/externallib.php','moodle','moodle/category:manage'),(54,'core_course_update_categories','core_course_external','update_categories','course/externallib.php','moodle','moodle:category/manage'),(55,'core_course_delete_categories','core_course_external','delete_categories','course/externallib.php','moodle','moodle/category:manage'),(56,'moodle_message_send_instantmessages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage'),(57,'core_message_send_instant_messages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage'),(58,'moodle_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage'),(59,'core_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage'),(60,'moodle_webservice_get_siteinfo','core_webservice_external','get_site_info','webservice/externallib.php','moodle',''),(61,'core_webservice_get_site_info','core_webservice_external','get_site_info','webservice/externallib.php','moodle',''),(62,'moodle_enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol'),(63,'enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol');
/*!40000 ALTER TABLE `mdl_external_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `descriptionmarkers` longtext COLLATE utf8_unicode_ci,
  `descriptionmarkersformat` tinyint(2) DEFAULT NULL,
  `maxscore` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the rows of the criteria grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_criteria`
--

LOCK TABLES `mdl_gradingform_guide_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_item`
--

DROP TABLE IF EXISTS `mdl_feedback_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_item` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `template` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `presentation` longtext COLLATE utf8_unicode_ci NOT NULL,
  `typ` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hasvalue` tinyint(1) NOT NULL DEFAULT '0',
  `position` smallint(3) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `dependitem` bigint(10) NOT NULL DEFAULT '0',
  `dependvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feeditem_fee_ix` (`feedback`),
  KEY `mdl_feeditem_tem_ix` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='feedback_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_item`
--

LOCK TABLES `mdl_feedback_item` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book`
--

DROP TABLE IF EXISTS `mdl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `numbering` smallint(4) NOT NULL DEFAULT '0',
  `customtitles` tinyint(2) NOT NULL DEFAULT '0',
  `revision` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book`
--

LOCK TABLES `mdl_book` WRITE;
/*!40000 ALTER TABLE `mdl_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_active`
--

DROP TABLE IF EXISTS `mdl_filter_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl_filtacti_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores information about which filters are active in which c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_active`
--

LOCK TABLES `mdl_filter_active` WRITE;
/*!40000 ALTER TABLE `mdl_filter_active` DISABLE KEYS */;
INSERT INTO `mdl_filter_active` VALUES (1,'filter/activitynames',1,1,1),(2,'filter/mediaplugin',1,1,2);
/*!40000 ALTER TABLE `mdl_filter_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_submission`
--

DROP TABLE IF EXISTS `mdl_lti_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datesubmitted` bigint(10) NOT NULL,
  `dateupdated` bigint(10) NOT NULL,
  `gradepercent` decimal(10,5) NOT NULL,
  `originalgrade` decimal(10,5) NOT NULL,
  `launchid` bigint(10) NOT NULL,
  `state` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisubm_lti_ix` (`ltiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Keeps track of individual submissions for LTI activities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_submission`
--

LOCK TABLES `mdl_lti_submission` WRITE;
/*!40000 ALTER TABLE `mdl_lti_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_preferences`
--

DROP TABLE IF EXISTS `mdl_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_preferences` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(1333) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Allows modules to store arbitrary user preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_preferences`
--

LOCK TABLES `mdl_user_preferences` WRITE;
/*!40000 ALTER TABLE `mdl_user_preferences` DISABLE KEYS */;
INSERT INTO `mdl_user_preferences` VALUES (1,2,'auth_forcepasswordchange','0'),(2,2,'email_bounce_count','1'),(3,2,'email_send_count','1'),(4,2,'filepicker_recentrepository','3'),(5,3,'auth_forcepasswordchange','0'),(6,3,'email_bounce_count','1'),(7,3,'email_send_count','1'),(8,4,'auth_forcepasswordchange','0'),(9,4,'email_bounce_count','1'),(10,4,'email_send_count','1'),(11,2,'filepicker_recentlicense','allrightsreserved'),(12,2,'quiz_qbanktool_open','1');
/*!40000 ALTER TABLE `mdl_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completed`
--

DROP TABLE IF EXISTS `mdl_feedback_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `random_response` bigint(10) NOT NULL DEFAULT '0',
  `anonymous_response` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use_ix` (`userid`),
  KEY `mdl_feedcomp_fee_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completed`
--

LOCK TABLES `mdl_feedback_completed` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_elements_old`
--

DROP TABLE IF EXISTS `mdl_workshop_elements_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_elements_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `elementno` smallint(3) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scale` smallint(3) NOT NULL DEFAULT '0',
  `maxscore` smallint(3) NOT NULL DEFAULT '1',
  `weight` smallint(3) NOT NULL DEFAULT '11',
  `stddev` double NOT NULL DEFAULT '0',
  `totalassessments` bigint(10) NOT NULL DEFAULT '0',
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workelemold_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_elements table to be dropped later in Moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_elements_old`
--

LOCK TABLES `mdl_workshop_elements_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_elements_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_elements_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_analysis`
--

DROP TABLE IF EXISTS `mdl_survey_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `survey` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survanal_use_ix` (`userid`),
  KEY `mdl_survanal_sur_ix` (`survey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='text about each survey submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_analysis`
--

LOCK TABLES `mdl_survey_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_survey_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the rows of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_criteria`
--

LOCK TABLES `mdl_gradingform_rubric_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT '0',
  `userid` bigint(11) NOT NULL DEFAULT '0',
  `groupid` bigint(11) NOT NULL DEFAULT '0',
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstping` bigint(10) NOT NULL DEFAULT '0',
  `lastping` bigint(10) NOT NULL DEFAULT '0',
  `lastmessageping` bigint(10) NOT NULL DEFAULT '0',
  `sid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson`
--

DROP TABLE IF EXISTS `mdl_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `practice` smallint(3) NOT NULL DEFAULT '0',
  `modattempts` smallint(3) NOT NULL DEFAULT '0',
  `usepassword` smallint(3) NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dependency` bigint(10) NOT NULL DEFAULT '0',
  `conditions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade` smallint(3) NOT NULL DEFAULT '0',
  `custom` smallint(3) NOT NULL DEFAULT '0',
  `ongoing` smallint(3) NOT NULL DEFAULT '0',
  `usemaxgrade` smallint(3) NOT NULL DEFAULT '0',
  `maxanswers` smallint(3) NOT NULL DEFAULT '4',
  `maxattempts` smallint(3) NOT NULL DEFAULT '5',
  `review` smallint(3) NOT NULL DEFAULT '0',
  `nextpagedefault` smallint(3) NOT NULL DEFAULT '0',
  `feedback` smallint(3) NOT NULL DEFAULT '1',
  `minquestions` smallint(3) NOT NULL DEFAULT '0',
  `maxpages` smallint(3) NOT NULL DEFAULT '0',
  `timed` smallint(3) NOT NULL DEFAULT '0',
  `maxtime` bigint(10) NOT NULL DEFAULT '0',
  `retake` smallint(3) NOT NULL DEFAULT '1',
  `activitylink` bigint(10) NOT NULL DEFAULT '0',
  `mediafile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mediaheight` bigint(10) NOT NULL DEFAULT '100',
  `mediawidth` bigint(10) NOT NULL DEFAULT '650',
  `mediaclose` smallint(3) NOT NULL DEFAULT '0',
  `slideshow` smallint(3) NOT NULL DEFAULT '0',
  `width` bigint(10) NOT NULL DEFAULT '640',
  `height` bigint(10) NOT NULL DEFAULT '480',
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint(3) NOT NULL DEFAULT '0',
  `displayleftif` smallint(3) NOT NULL DEFAULT '0',
  `progressbar` smallint(3) NOT NULL DEFAULT '0',
  `highscores` smallint(3) NOT NULL DEFAULT '0',
  `maxhighscores` bigint(10) NOT NULL DEFAULT '0',
  `available` bigint(10) NOT NULL DEFAULT '0',
  `deadline` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_less_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson`
--

LOCK TABLES `mdl_lesson` WRITE;
/*!40000 ALTER TABLE `mdl_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups`
--

DROP TABLE IF EXISTS `mdl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `idnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `enrolmentkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `hidepicture` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn_ix` (`idnumber`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Each record represents a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups`
--

LOCK TABLES `mdl_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_subwikis`
--

DROP TABLE IF EXISTS `mdl_wiki_subwikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_subwikis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) NOT NULL DEFAULT '0',
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisubw_wikgrouse_uix` (`wikiid`,`groupid`,`userid`),
  KEY `mdl_wikisubw_wik_ix` (`wikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores subwiki instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_subwikis`
--

LOCK TABLES `mdl_wiki_subwikis` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_ids_template`
--

DROP TABLE IF EXISTS `mdl_backup_ids_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_ids_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemname` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `newitemid` bigint(10) NOT NULL DEFAULT '0',
  `parentitemid` bigint(10) DEFAULT NULL,
  `info` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backidstemp_baciteite_uix` (`backupid`,`itemname`,`itemid`),
  KEY `mdl_backidstemp_bacitepar_ix` (`backupid`,`itemname`,`parentitemid`),
  KEY `mdl_backidstemp_bacitenew_ix` (`backupid`,`itemname`,`newitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To store all sort of ids along the backup process. Note this';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_ids_template`
--

LOCK TABLES `mdl_backup_ids_template` WRITE;
/*!40000 ALTER TABLE `mdl_backup_ids_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_ids_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_reports`
--

DROP TABLE IF EXISTS `mdl_quiz_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_reports` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayorder` bigint(10) NOT NULL,
  `capability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizrepo_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Lists all the installed quiz reports and their display order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_reports`
--

LOCK TABLES `mdl_quiz_reports` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_reports` DISABLE KEYS */;
INSERT INTO `mdl_quiz_reports` VALUES (1,'overview',10000,NULL),(2,'responses',9000,NULL),(3,'grading',6000,NULL),(4,'statistics',8000,'quiz/statistics:view');
/*!40000 ALTER TABLE `mdl_quiz_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_flatfile`
--

LOCK TABLES `mdl_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_shortanswer`
--

DROP TABLE IF EXISTS `mdl_question_shortanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_shortanswer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `answers` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usecase` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesshor_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Options for short answer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_shortanswer`
--

LOCK TABLES `mdl_question_shortanswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_shortanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_shortanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_log`
--

DROP TABLE IF EXISTS `mdl_mnet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `remoteid` bigint(10) NOT NULL DEFAULT '0',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `coursename` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT '0',
  `action` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_log`
--

LOCK TABLES `mdl_mnet_log` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `help` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profile` longtext COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `classname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Functions or methods that we may publish or subscribe to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_rpc`
--

LOCK TABLES `mdl_mnet_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1,'Return user data for the provided token, compare with user_agent string.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"The unique ID provided by remotehost.\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}}','auth.php','auth_plugin_mnet',0),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1,'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1,'The IdP uses this function to kill child sessions on other hosts','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}}','auth.php','auth_plugin_mnet',0),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1,'Receives an array of log entries from an SP and adds them to the mnet_log\ntable','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1,'Returns the user\'s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\n f1          - the content of the default 100x100px image\n f1_mimetype - the mimetype of the f1 file\n f2          - the content of the 35x35px variant of the image\n f2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:18:\"The id of the user\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:84:\"false if user not found, empty array if no picture exists, array with data otherwise\";}}','auth.php','auth_plugin_mnet',0),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1,'Returns the theme information and logo url as strings.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}','auth.php','auth_plugin_mnet',0),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1,'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:12:\"The username\";}i:1;a:3:{s:4:\"name\";s:7:\"courses\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1,'Poll the IdP server to let it know that a user it has authenticated is still\nonline','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1,'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:15:\"True on success\";}}','auth.php','auth_plugin_mnet',0),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1,'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for \'All hosts\', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1,'This method has never been implemented in Moodle MNet API','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:11:\"empty array\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1,'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"userdata\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:14:\"user details {\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"our local course id\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:69:\"true if the enrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1,'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can\'t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"of the remote user\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:71:\"true if the unenrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1,'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:16:\"ID of our course\";}i:1;a:3:{s:4:\"name\";s:5:\"roles\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(15,'fetch_file','portfolio/mahara/lib.php/fetch_file','portfolio','mahara',1,'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:56:\"the token recieved previously during send_content_intent\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','lib.php','portfolio_plugin_mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_instances`
--

DROP TABLE IF EXISTS `mdl_grading_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `feedback` longtext COLLATE utf8_unicode_ci,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradinst_def_ix` (`definitionid`),
  KEY `mdl_gradinst_rat_ix` (`raterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Grading form instance is an assessment record for one gradab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_instances`
--

LOCK TABLES `mdl_grading_instances` WRITE;
/*!40000 ALTER TABLE `mdl_grading_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_category`
--

DROP TABLE IF EXISTS `mdl_user_info_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Customisable fields categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_category`
--

LOCK TABLES `mdl_user_info_category` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completions`
--

DROP TABLE IF EXISTS `mdl_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `course` bigint(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) DEFAULT NULL,
  `timenotified` bigint(10) DEFAULT NULL,
  `timeenrolled` bigint(10) NOT NULL DEFAULT '0',
  `timestarted` bigint(10) NOT NULL DEFAULT '0',
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completions`
--

LOCK TABLES `mdl_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_answers`
--

DROP TABLE IF EXISTS `mdl_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `survey` bigint(10) NOT NULL DEFAULT '0',
  `question` bigint(10) NOT NULL DEFAULT '0',
  `time` bigint(10) NOT NULL DEFAULT '0',
  `answer1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answer2` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survansw_use_ix` (`userid`),
  KEY `mdl_survansw_sur_ix` (`survey`),
  KEY `mdl_survansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='the answers to each questions filled by the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_answers`
--

LOCK TABLES `mdl_survey_answers` WRITE;
/*!40000 ALTER TABLE `mdl_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items_history`
--

DROP TABLE IF EXISTS `mdl_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8_unicode_ci,
  `idnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculation` longtext COLLATE utf8_unicode_ci,
  `gradetype` smallint(4) NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `hidden` bigint(10) NOT NULL DEFAULT '0',
  `locked` bigint(10) NOT NULL DEFAULT '0',
  `locktime` bigint(10) NOT NULL DEFAULT '0',
  `needsupdate` bigint(10) NOT NULL DEFAULT '0',
  `display` bigint(10) NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items_history`
--

LOCK TABLES `mdl_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items_history` DISABLE KEYS */;
INSERT INTO `mdl_grade_items_history` VALUES (1,1,1,'system',1380701339,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1,0,0,0,1,0,NULL),(2,1,2,NULL,1380701369,2,2,1,'ttt','mod','quiz',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,2,0,0,0,1,0,NULL),(3,2,2,NULL,1380701369,2,2,1,'ttt','mod','quiz',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,2,0,0,0,1,0,NULL),(4,2,1,NULL,1380701369,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1,0,0,0,1,0,NULL),(5,2,2,NULL,1380702390,2,2,1,'ttt','mod','quiz',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,2,0,0,0,0,0,NULL),(6,2,1,NULL,1380702390,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1,0,0,0,0,0,NULL),(7,1,3,NULL,1380702742,2,2,1,'yyyy','mod','quiz',2,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,3,0,0,0,1,0,NULL),(8,2,3,NULL,1380702742,2,2,1,'yyyy','mod','quiz',2,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,3,0,0,0,1,0,NULL),(9,2,1,NULL,1380702742,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1,0,0,0,1,0,NULL);
/*!40000 ALTER TABLE `mdl_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_comments_old`
--

DROP TABLE IF EXISTS `mdl_workshop_comments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_comments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `assessmentid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `mailed` tinyint(2) NOT NULL DEFAULT '0',
  `comments` longtext COLLATE utf8_unicode_ci NOT NULL,
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workcommold_use_ix` (`userid`),
  KEY `mdl_workcommold_mai_ix` (`mailed`),
  KEY `mdl_workcommold_wor_ix` (`workshopid`),
  KEY `mdl_workcommold_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_comments table to be dropped later in Moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_comments_old`
--

LOCK TABLES `mdl_workshop_comments_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_comments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_comments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_areas`
--

DROP TABLE IF EXISTS `mdl_grading_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `areaname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activemethod` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl_gradarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Identifies gradable areas where advanced grading can happen.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_areas`
--

LOCK TABLES `mdl_grading_areas` WRITE;
/*!40000 ALTER TABLE `mdl_grading_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_steps`
--

DROP TABLE IF EXISTS `mdl_question_attempt_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionattemptid` bigint(10) NOT NULL,
  `sequencenumber` bigint(10) NOT NULL,
  `state` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fraction` decimal(12,7) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesattestep_queseq_uix` (`questionattemptid`,`sequencenumber`),
  KEY `mdl_quesattestep_que_ix` (`questionattemptid`),
  KEY `mdl_quesattestep_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores one step in in a question attempt. As well as the dat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_steps`
--

LOCK TABLES `mdl_question_attempt_steps` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_steps` DISABLE KEYS */;
INSERT INTO `mdl_question_attempt_steps` VALUES (1,1,0,'todo',NULL,1380701626,3),(2,2,0,'todo',NULL,1380701626,3),(3,1,1,'complete',NULL,1380701652,3),(4,2,1,'complete',NULL,1380701652,3),(5,1,2,'gradedright',1.0000000,1380701672,3),(6,2,2,'gradedwrong',0.0000000,1380701672,3),(7,3,0,'todo',NULL,1380714525,3),(8,4,0,'todo',NULL,1380714525,3),(9,5,0,'todo',NULL,1380714525,3),(10,6,0,'todo',NULL,1380714526,3),(11,3,1,'complete',NULL,1380714535,3),(12,4,1,'complete',NULL,1380714541,3),(13,5,1,'complete',NULL,1380714549,3),(14,6,1,'complete',NULL,1380714559,3),(15,3,2,'gradedwrong',0.0000000,1380714588,3),(16,4,2,'gradedright',1.0000000,1380714588,3),(17,5,2,'gradedwrong',0.0000000,1380714588,3),(18,6,2,'gradedwrong',0.0000000,1380714588,3);
/*!40000 ALTER TABLE `mdl_question_attempt_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol`
--

DROP TABLE IF EXISTS `mdl_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT '0',
  `enrolstartdate` bigint(10) DEFAULT '0',
  `enrolenddate` bigint(10) DEFAULT '0',
  `expirynotify` tinyint(1) DEFAULT '0',
  `expirythreshold` bigint(10) DEFAULT '0',
  `notifyall` tinyint(1) DEFAULT '0',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roleid` bigint(10) DEFAULT '0',
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customchar2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext COLLATE utf8_unicode_ci,
  `customtext2` longtext COLLATE utf8_unicode_ci,
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol`
--

LOCK TABLES `mdl_enrol` WRITE;
/*!40000 ALTER TABLE `mdl_enrol` DISABLE KEYS */;
INSERT INTO `mdl_enrol` VALUES (1,'manual',0,2,0,NULL,0,0,0,0,0,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1380700010,1380700010),(2,'guest',1,2,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1380700011,1380700011),(3,'self',1,2,2,NULL,0,0,0,0,0,0,NULL,NULL,NULL,5,0,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,1380700011,1380700011);
/*!40000 ALTER TABLE `mdl_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table describes functions that might be called remotely';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_rpc`
--

LOCK TABLES `mdl_mnet_remote_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1),(15,'send_content_intent','portfolio/mahara/lib.php/send_content_intent','portfolio','mahara',1),(16,'send_content_ready','portfolio/mahara/lib.php/send_content_ready','portfolio','mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_assessments_old`
--

DROP TABLE IF EXISTS `mdl_workshop_assessments_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_assessments_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL DEFAULT '0',
  `submissionid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timegraded` bigint(10) NOT NULL DEFAULT '0',
  `timeagreed` bigint(10) NOT NULL DEFAULT '0',
  `grade` double NOT NULL DEFAULT '0',
  `gradinggrade` smallint(3) NOT NULL DEFAULT '0',
  `teachergraded` smallint(3) NOT NULL DEFAULT '0',
  `mailed` smallint(3) NOT NULL DEFAULT '0',
  `resubmission` smallint(3) NOT NULL DEFAULT '0',
  `donotuse` smallint(3) NOT NULL DEFAULT '0',
  `generalcomment` longtext COLLATE utf8_unicode_ci,
  `teachercomment` longtext COLLATE utf8_unicode_ci,
  `newplugin` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_workasseold_use_ix` (`userid`),
  KEY `mdl_workasseold_mai_ix` (`mailed`),
  KEY `mdl_workasseold_wor_ix` (`workshopid`),
  KEY `mdl_workasseold_sub_ix` (`submissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Legacy workshop_assessments table to be dropped later in Moo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_assessments_old`
--

LOCK TABLES `mdl_workshop_assessments_old` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_assessments_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_assessments_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_timezone`
--

DROP TABLE IF EXISTS `mdl_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_timezone` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `year` bigint(11) NOT NULL DEFAULT '0',
  `tzrule` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gmtoff` bigint(11) NOT NULL DEFAULT '0',
  `dstoff` bigint(11) NOT NULL DEFAULT '0',
  `dst_month` tinyint(2) NOT NULL DEFAULT '0',
  `dst_startday` smallint(3) NOT NULL DEFAULT '0',
  `dst_weekday` smallint(3) NOT NULL DEFAULT '0',
  `dst_skipweeks` smallint(3) NOT NULL DEFAULT '0',
  `dst_time` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00:00',
  `std_month` tinyint(2) NOT NULL DEFAULT '0',
  `std_startday` smallint(3) NOT NULL DEFAULT '0',
  `std_weekday` smallint(3) NOT NULL DEFAULT '0',
  `std_skipweeks` smallint(3) NOT NULL DEFAULT '0',
  `std_time` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Rules for calculating local wall clock time for users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_timezone`
--

LOCK TABLES `mdl_timezone` WRITE;
/*!40000 ALTER TABLE `mdl_timezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_user_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '0',
  `statsreads` bigint(10) NOT NULL DEFAULT '0',
  `statswrites` bigint(10) NOT NULL DEFAULT '0',
  `stattype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statusermont_cou_ix` (`courseid`),
  KEY `mdl_statusermont_use_ix` (`userid`),
  KEY `mdl_statusermont_rol_ix` (`roleid`),
  KEY `mdl_statusermont_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='To accumulate monthly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_monthly`
--

LOCK TABLES `mdl_stats_user_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_contacts`
--

DROP TABLE IF EXISTS `mdl_message_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_contacts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `contactid` bigint(10) NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messcont_usecon_uix` (`userid`,`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Maintains lists of relationships between users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_contacts`
--

LOCK TABLES `mdl_message_contacts` WRITE;
/*!40000 ALTER TABLE `mdl_message_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_match`
--

DROP TABLE IF EXISTS `mdl_question_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_match` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `subquestions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT '1',
  `correctfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `partiallycorrectfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `incorrectfeedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesmatc_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines fixed matching questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_match`
--

LOCK TABLES `mdl_question_match` WRITE;
/*!40000 ALTER TABLE `mdl_question_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary`
--

DROP TABLE IF EXISTS `mdl_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `allowduplicatedentries` tinyint(2) NOT NULL DEFAULT '0',
  `displayformat` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) NOT NULL DEFAULT '0',
  `showspecial` tinyint(2) NOT NULL DEFAULT '1',
  `showalphabet` tinyint(2) NOT NULL DEFAULT '1',
  `showall` tinyint(2) NOT NULL DEFAULT '1',
  `allowcomments` tinyint(2) NOT NULL DEFAULT '0',
  `allowprintview` tinyint(2) NOT NULL DEFAULT '1',
  `usedynalink` tinyint(2) NOT NULL DEFAULT '1',
  `defaultapproval` tinyint(2) NOT NULL DEFAULT '1',
  `approvaldisplayformat` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `globalglossary` tinyint(2) NOT NULL DEFAULT '0',
  `entbypage` smallint(3) NOT NULL DEFAULT '10',
  `editalways` tinyint(2) NOT NULL DEFAULT '0',
  `rsstype` tinyint(2) NOT NULL DEFAULT '0',
  `rssarticles` tinyint(2) NOT NULL DEFAULT '0',
  `assessed` bigint(10) NOT NULL DEFAULT '0',
  `assesstimestart` bigint(10) NOT NULL DEFAULT '0',
  `assesstimefinish` bigint(10) NOT NULL DEFAULT '0',
  `scale` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `completionentries` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary`
--

LOCK TABLES `mdl_glossary` WRITE;
/*!40000 ALTER TABLE `mdl_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_webdav_locks`
--

DROP TABLE IF EXISTS `mdl_webdav_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_webdav_locks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `recursive` tinyint(1) NOT NULL DEFAULT '0',
  `exclusivelock` tinyint(1) NOT NULL DEFAULT '0',
  `created` bigint(10) NOT NULL DEFAULT '0',
  `modified` bigint(10) NOT NULL DEFAULT '0',
  `owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_webdlock_tok_uix` (`token`),
  KEY `mdl_webdlock_pat_ix` (`path`),
  KEY `mdl_webdlock_exp_ix` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Resource locks for WebDAV users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_webdav_locks`
--

LOCK TABLES `mdl_webdav_locks` WRITE;
/*!40000 ALTER TABLE `mdl_webdav_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_webdav_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale`
--

DROP TABLE IF EXISTS `mdl_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_scal_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Defines grading scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale`
--

LOCK TABLES `mdl_scale` WRITE;
/*!40000 ALTER TABLE `mdl_scale` DISABLE KEYS */;
INSERT INTO `mdl_scale` VALUES (1,0,0,'Separate and Connected ways of knowing','Mostly separate knowing,Separate and connected,Mostly connected knowing','The scale based on the theory of separate and connected knowing. This theory describes two different ways that we can evaluate and learn about the things we see and hear.<ul><li><strong>Separate knowers</strong> remain as objective as possible without including feelings and emotions. In a discussion with other people, they like to defend their own ideas, using logic to find holes in opponent\'s ideas.</li><li><strong>Connected knowers</strong> are more sensitive to other people. They are skilled at empathy and tends to listen and ask questions until they feel they can connect and \"understand things from their point of view\". They learn by trying to share the experiences that led to the knowledge they find in other people.</li></ul>',0,1380701339);
/*!40000 ALTER TABLE `mdl_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopeval_best_settings`
--

DROP TABLE IF EXISTS `mdl_workshopeval_best_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopeval_best_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `comparison` smallint(3) DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workbestsett_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Settings for the grading evaluation subplugin Comparison wit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopeval_best_settings`
--

LOCK TABLES `mdl_workshopeval_best_settings` WRITE;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource_old`
--

DROP TABLE IF EXISTS `mdl_resource_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8_unicode_ci,
  `introformat` smallint(4) NOT NULL DEFAULT '0',
  `alltext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `popup` longtext COLLATE utf8_unicode_ci NOT NULL,
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `cmid` bigint(10) DEFAULT NULL,
  `newmodule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  `migrated` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_resoold_old_uix` (`oldid`),
  KEY `mdl_resoold_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='backup of all old resource instances from 1.9';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource_old`
--

LOCK TABLES `mdl_resource_old` WRITE;
/*!40000 ALTER TABLE `mdl_resource_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_datasets`
--

DROP TABLE IF EXISTS `mdl_question_datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_datasets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT '0',
  `datasetdefinition` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl_quesdata_que_ix` (`question`),
  KEY `mdl_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Many-many relation between questions and dataset definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_datasets`
--

LOCK TABLES `mdl_question_datasets` WRITE;
/*!40000 ALTER TABLE `mdl_question_datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups_members`
--

DROP TABLE IF EXISTS `mdl_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Link a user to a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups_members`
--

LOCK TABLES `mdl_groups_members` WRITE;
/*!40000 ALTER TABLE `mdl_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_completion`
--

LOCK TABLES `mdl_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_hints`
--

DROP TABLE IF EXISTS `mdl_question_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_hints` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `hint` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hintformat` smallint(4) NOT NULL DEFAULT '0',
  `shownumcorrect` tinyint(1) DEFAULT NULL,
  `clearwrong` tinyint(1) DEFAULT NULL,
  `options` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_queshint_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores the the part of the question definition that gives di';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_hints`
--

LOCK TABLES `mdl_question_hints` WRITE;
/*!40000 ALTER TABLE `mdl_question_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_queue`
--

DROP TABLE IF EXISTS `mdl_forum_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `discussionid` bigint(10) NOT NULL DEFAULT '0',
  `postid` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='For keeping track of posts that will be mailed in digest for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_queue`
--

LOCK TABLES `mdl_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository`
--

DROP TABLE IF EXISTS `mdl_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) DEFAULT '1',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository`
--

LOCK TABLES `mdl_repository` WRITE;
/*!40000 ALTER TABLE `mdl_repository` DISABLE KEYS */;
INSERT INTO `mdl_repository` VALUES (1,'local',1,1),(2,'recent',1,2),(3,'upload',1,3),(4,'url',1,4),(5,'user',1,5),(6,'wikimedia',1,6),(7,'youtube',1,7);
/*!40000 ALTER TABLE `mdl_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_names`
--

DROP TABLE IF EXISTS `mdl_role_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_names` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT '0',
  `contextid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='role names in native strings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_names`
--

LOCK TABLES `mdl_role_names` WRITE;
/*!40000 ALTER TABLE `mdl_role_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host2service`
--

DROP TABLE IF EXISTS `mdl_mnet_host2service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host2service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT '0',
  `serviceid` bigint(10) NOT NULL DEFAULT '0',
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Information about the services for a given host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host2service`
--

LOCK TABLES `mdl_mnet_host2service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_host2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='base table (not including config data) for instances of port';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance`
--

LOCK TABLES `mdl_portfolio_instance` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_availability`
--

DROP TABLE IF EXISTS `mdl_course_modules_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules_availability` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `sourcecmid` bigint(10) DEFAULT NULL,
  `requiredcompletion` tinyint(1) DEFAULT NULL,
  `gradeitemid` bigint(10) DEFAULT NULL,
  `grademin` decimal(10,5) DEFAULT NULL,
  `grademax` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courmoduavai_cou_ix` (`coursemoduleid`),
  KEY `mdl_courmoduavai_sou_ix` (`sourcecmid`),
  KEY `mdl_courmoduavai_gra_ix` (`gradeitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table stores conditions that affect whether a module/activit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_availability`
--

LOCK TABLES `mdl_course_modules_availability` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_values`
--

DROP TABLE IF EXISTS `mdl_grade_import_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) DEFAULT NULL,
  `newgradeitem` bigint(10) DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` longtext COLLATE utf8_unicode_ci,
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Temporary table for importing grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_values`
--

LOCK TABLES `mdl_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_usages`
--

DROP TABLE IF EXISTS `mdl_question_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_usages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `preferredbehaviour` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesusag_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table''s main purpose it to assign a unique id to each a';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_usages`
--

LOCK TABLES `mdl_question_usages` WRITE;
/*!40000 ALTER TABLE `mdl_question_usages` DISABLE KEYS */;
INSERT INTO `mdl_question_usages` VALUES (1,23,'mod_quiz','deferredfeedback'),(2,24,'mod_quiz','deferredfeedback');
/*!40000 ALTER TABLE `mdl_question_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_instance`
--

DROP TABLE IF EXISTS `mdl_tag_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `tiuserid` bigint(10) NOT NULL DEFAULT '0',
  `ordering` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_taginst_iteitetagtiu_uix` (`itemtype`,`itemid`,`tagid`,`tiuserid`),
  KEY `mdl_taginst_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tag_instance table holds the information of associations bet';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_instance`
--

LOCK TABLES `mdl_tag_instance` WRITE;
/*!40000 ALTER TABLE `mdl_tag_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT '0',
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_history`
--

LOCK TABLES `mdl_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_authorize`
--

DROP TABLE IF EXISTS `mdl_enrol_authorize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_authorize` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `paymentmethod` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cc',
  `refundinfo` smallint(4) NOT NULL DEFAULT '0',
  `ccname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `transid` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  `amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  PRIMARY KEY (`id`),
  KEY `mdl_enroauth_cou_ix` (`courseid`),
  KEY `mdl_enroauth_use_ix` (`userid`),
  KEY `mdl_enroauth_sta_ix` (`status`),
  KEY `mdl_enroauth_tra_ix` (`transid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Holds all known information about authorize.net transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_authorize`
--

LOCK TABLES `mdl_enrol_authorize` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_authorize` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_authorize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_log`
--

DROP TABLE IF EXISTS `mdl_portfolio_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `time` bigint(10) NOT NULL,
  `portfolio` bigint(10) NOT NULL,
  `caller_class` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_sha1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tempdataid` bigint(10) NOT NULL DEFAULT '0',
  `returnurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `continueurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portlog_use_ix` (`userid`),
  KEY `mdl_portlog_por_ix` (`portfolio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='log of portfolio transfers (used to later check for duplicat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_log`
--

LOCK TABLES `mdl_portfolio_log` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `grade` bigint(10) NOT NULL DEFAULT '0',
  `numfiles` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_file`
--

LOCK TABLES `mdl_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_submission`
--

DROP TABLE IF EXISTS `mdl_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_submission`
--

LOCK TABLES `mdl_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl_assign_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_statistics`
--

DROP TABLE IF EXISTS `mdl_quiz_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL,
  `groupid` bigint(10) NOT NULL,
  `allattempts` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstattemptscount` bigint(10) NOT NULL,
  `allattemptscount` bigint(10) NOT NULL,
  `firstattemptsavg` decimal(15,5) DEFAULT NULL,
  `allattemptsavg` decimal(15,5) DEFAULT NULL,
  `median` decimal(15,5) DEFAULT NULL,
  `standarddeviation` decimal(15,5) DEFAULT NULL,
  `skewness` decimal(15,10) DEFAULT NULL,
  `kurtosis` decimal(15,5) DEFAULT NULL,
  `cic` decimal(15,10) DEFAULT NULL,
  `errorratio` decimal(15,10) DEFAULT NULL,
  `standarderror` decimal(15,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table to cache results from analysis done in statistics repo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_statistics`
--

LOCK TABLES `mdl_quiz_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue`
--

DROP TABLE IF EXISTS `mdl_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext COLLATE utf8_unicode_ci NOT NULL,
  `stackdump` longtext COLLATE utf8_unicode_ci,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table is for storing queued events. It stores only one ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue`
--

LOCK TABLES `mdl_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue` DISABLE KEYS */;
INSERT INTO `mdl_events_queue` VALUES (1,'Tzo4OiJzdGRDbGFzcyI6OTp7czo5OiJjb21wb25lbnQiO3M6ODoibW9kX3F1aXoiO3M6OToiYXR0ZW1wdGlkIjtzOjE6IjEiO3M6OToidGltZXN0YW1wIjtpOjEzODA3MDE2NzI7czo2OiJ1c2VyaWQiO3M6MToiMyI7czo2OiJxdWl6aWQiO3M6MToiMSI7czo0OiJjbWlkIjtzOjE6IjIiO3M6ODoiY291cnNlaWQiO3M6MToiMiI7czoxMToic3VibWl0dGVyaWQiO3M6MToiMyI7czoxMDoidGltZWZpbmlzaCI7aToxMzgwNzAxNjcyO30=','',3,1380701672),(2,'Tzo4OiJzdGRDbGFzcyI6OTp7czo5OiJjb21wb25lbnQiO3M6ODoibW9kX3F1aXoiO3M6OToiYXR0ZW1wdGlkIjtzOjE6IjIiO3M6OToidGltZXN0YW1wIjtpOjEzODA3MTQ1ODg7czo2OiJ1c2VyaWQiO3M6MToiMyI7czo2OiJxdWl6aWQiO3M6MToiMiI7czo0OiJjbWlkIjtzOjE6IjMiO3M6ODoiY291cnNlaWQiO3M6MToiMiI7czoxMToic3VibWl0dGVyaWQiO3M6MToiMyI7czoxMDoidGltZWZpbmlzaCI7aToxMzgwNzE0NTg4O30=','',3,1380714588);
/*!40000 ALTER TABLE `mdl_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='temporary table for storing new grade_item names from grade ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_newitem`
--

LOCK TABLES `mdl_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service`
--

DROP TABLE IF EXISTS `mdl_mnet_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `apiversion` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='A service is a group of functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service`
--

LOCK TABLES `mdl_mnet_service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service` VALUES (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1),(4,'pf','','1',1);
/*!40000 ALTER TABLE `mdl_mnet_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `ruleconditionsid` bigint(10) NOT NULL DEFAULT '0',
  `refrencedobjective` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT '0.0000',
  `operator` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'always',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='SCORM2004 rule condition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rulecond`
--

LOCK TABLES `mdl_scorm_seq_rulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_working`
--

DROP TABLE IF EXISTS `mdl_message_working`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_working` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `unreadmessageid` bigint(10) NOT NULL,
  `processorid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Lists all the messages and processors that need to be proces';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_working`
--

LOCK TABLES `mdl_message_working` WRITE;
/*!40000 ALTER TABLE `mdl_message_working` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_working` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_track`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_track` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `scormid` bigint(10) NOT NULL DEFAULT '0',
  `scoid` bigint(10) NOT NULL DEFAULT '0',
  `attempt` bigint(10) NOT NULL DEFAULT '1',
  `element` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorscoetrac_usescosco_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl_scorscoetrac_use_ix` (`userid`),
  KEY `mdl_scorscoetrac_ele_ix` (`element`),
  KEY `mdl_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='to track SCOes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_track`
--

LOCK TABLES `mdl_scorm_scoes_track` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-02 17:49:46
