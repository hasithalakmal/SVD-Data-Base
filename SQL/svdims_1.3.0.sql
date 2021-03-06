CREATE DATABASE  IF NOT EXISTS `svdims` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `svdims`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: svdims
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `art_topic` varchar(45) DEFAULT NULL,
  `art_discription` varchar(45) DEFAULT NULL,
  `art_qulity` int(11) DEFAULT NULL,
  `art_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  KEY `stude_id_idx` (`stu_id`),
  CONSTRAINT `stude_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `articles_vidusarana`
--

DROP TABLE IF EXISTS `articles_vidusarana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_vidusarana` (
  `art_id` int(11) NOT NULL,
  `vid_id` int(11) NOT NULL,
  `page number` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`art_id`,`vid_id`),
  KEY `vidu_id_idx` (`vid_id`),
  CONSTRAINT `art_id` FOREIGN KEY (`art_id`) REFERENCES `articles` (`art_id`),
  CONSTRAINT `vidu_id` FOREIGN KEY (`vid_id`) REFERENCES `vidusarana` (`vid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `book_publisher` varchar(45) DEFAULT NULL,
  `book_author` varchar(45) DEFAULT NULL,
  `book_discription` varchar(45) DEFAULT NULL,
  `book_ISBN` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status_copy1` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`,`cat_id`),
  KEY `cat_id_idx` (`cat_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `cat_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) DEFAULT NULL,
  `cat_description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `clz_id` int(11) NOT NULL AUTO_INCREMENT,
  `clz_grade` int(11) DEFAULT NULL,
  `clz_class` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `class_report`
--

DROP TABLE IF EXISTS `class_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_report` (
  `clz_repo_id` int(11) NOT NULL AUTO_INCREMENT,
  `clz_evaluation_cri_1` int(11) DEFAULT NULL,
  `clz_evaluation_cri_2` int(11) DEFAULT NULL,
  `clz_evaluation_cri_3` int(11) DEFAULT NULL,
  `clz_evaluation_cri_4` int(11) DEFAULT NULL,
  `clz_evaluation_cri_5` int(11) DEFAULT NULL,
  `clz_evaluation_cri_6` int(11) DEFAULT NULL,
  `clz_evaluation_cri_7` int(11) DEFAULT NULL,
  `clz_evaluation_cri_8` int(11) DEFAULT NULL,
  `clz_evaluation_cri_9` int(11) DEFAULT NULL,
  `clz_evaluation_cri_10` int(11) DEFAULT NULL,
  `clz_evaluation_cri_11` int(11) DEFAULT NULL,
  `clz_evaluation_cri_12` int(11) DEFAULT NULL,
  `clz_evaluation_cri_13` int(11) DEFAULT NULL,
  `clz_evaluation_cri_14` int(11) DEFAULT NULL,
  `clz_evaluation_cri_15` int(11) DEFAULT NULL,
  `clz_evaluation_cri_16` int(11) DEFAULT NULL,
  `clz_evaluation_cri_17` int(11) DEFAULT NULL,
  `clz_evaluation_cri_18` int(11) DEFAULT NULL,
  `clz_evaluation_cri_19` int(11) DEFAULT NULL,
  `clz_evaluation_cri_20` int(11) DEFAULT NULL,
  `clz_evaluation_cri_21` int(11) DEFAULT NULL,
  `clz_evaluation_cri_22` int(11) DEFAULT NULL,
  `clz_evaluation_cri_23` int(11) DEFAULT NULL,
  `clz_evaluation_cri_24` int(11) DEFAULT NULL,
  `clz_evaluation_cri_25` int(11) DEFAULT NULL,
  `clz_evaluation_cri_26` int(11) DEFAULT NULL,
  `clz_evaluation_cri_27` int(11) DEFAULT NULL,
  `clz_evaluation_cri_29` int(11) DEFAULT NULL,
  `clz_evaluation_cri_30` int(11) DEFAULT NULL,
  `clz_evaluation_cri_31` int(11) DEFAULT NULL,
  `clz_evaluation_cri_32` int(11) DEFAULT NULL,
  `clz_evaluation_cri_33` int(11) DEFAULT NULL,
  `clz_evaluation_cri_34` int(11) DEFAULT NULL,
  `clz_evaluation_cri_35` int(11) DEFAULT NULL,
  `clz_evaluation_cri_36` int(11) DEFAULT NULL,
  `clz_evaluation_cri_37` int(11) DEFAULT NULL,
  `clz_evaluation_cri_39` int(11) DEFAULT NULL,
  `clz_evaluation_cri_40` int(11) DEFAULT NULL,
  `clz_evaluation_cri_41` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_42` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_43` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_44` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_45` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_46` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_47` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_48` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_49` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_50` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_51` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_52` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_53` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_54` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_55` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_56` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_57` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_58` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_59` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_60` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_61` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_62` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_63` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_64` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_65` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_66` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_67` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_68` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_69` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_70` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_71` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_72` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_73` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_74` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_75` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_76` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_77` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_78` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_79` varchar(45) DEFAULT NULL,
  `clz_evaluation_cri_80` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`clz_repo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copy`
--

DROP TABLE IF EXISTS `copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy` (
  `copy_id` int(11) NOT NULL AUTO_INCREMENT,
  `copy_book_id` int(11) NOT NULL,
  `copy_publish_year` int(11) DEFAULT NULL,
  `copy_place` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`copy_id`),
  KEY `pla_id_idx` (`copy_place`),
  KEY `book_idnew_idx` (`copy_book_id`),
  CONSTRAINT `book_idnew` FOREIGN KEY (`copy_book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `pla_id` FOREIGN KEY (`copy_place`) REFERENCES `place` (`pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseases` (
  `dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_name` varchar(45) DEFAULT NULL,
  `dis_explanation` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donation_reason`
--

DROP TABLE IF EXISTS `donation_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation_reason` (
  `don_rea_id` int(11) NOT NULL AUTO_INCREMENT,
  `don_rea_name` varchar(45) DEFAULT NULL,
  `don_rea_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`don_rea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `don_id` int(11) NOT NULL AUTO_INCREMENT,
  `don_amount` double DEFAULT NULL,
  `don_receipt_id` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `purpose` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`don_id`),
  KEY `don_rea_id_idx` (`purpose`),
  CONSTRAINT `don_rea_id` FOREIGN KEY (`purpose`) REFERENCES `donation_reason` (`don_rea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `exm_id` int(11) NOT NULL AUTO_INCREMENT,
  `exm_name` varchar(45) DEFAULT NULL,
  `exm_discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`exm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `exam_result_view`
--

DROP TABLE IF EXISTS `exam_result_view`;
/*!50001 DROP VIEW IF EXISTS `exam_result_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `exam_result_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `res_exm_id`,
 1 AS `year`,
 1 AS `result`,
 1 AS `stu_exm_index_number`,
 1 AS `res_status`,
 1 AS `res_recode_added_at`,
 1 AS `res_recode_added_by`,
 1 AS `exm_exm_id`,
 1 AS `exm_name`,
 1 AS `exm_discription`,
 1 AS `exm_status`,
 1 AS `exm_recode_added_at`,
 1 AS `exm_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `farther_view`
--

DROP TABLE IF EXISTS `farther_view`;
/*!50001 DROP VIEW IF EXISTS `farther_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `farther_view` AS SELECT 
 1 AS `far_id`,
 1 AS `far_name`,
 1 AS `far_phone_number`,
 1 AS `far_adress`,
 1 AS `far_email_address`,
 1 AS `far_occupation`,
 1 AS `far_occupation _type`,
 1 AS `far_office_address`,
 1 AS `far_office_phone_number`,
 1 AS `far_stu_addmision_number`,
 1 AS `far_old_student_number`,
 1 AS `far_other_interactions_with_dp`,
 1 AS `far_status`,
 1 AS `far_recode_added_at`,
 1 AS `far_recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `father`
--

DROP TABLE IF EXISTS `father`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `father` (
  `far_id` int(11) NOT NULL AUTO_INCREMENT,
  `far_name` varchar(45) NOT NULL,
  `far_phone_number` varchar(45) DEFAULT NULL,
  `far_adress` varchar(45) DEFAULT NULL,
  `far_email_address` varchar(45) DEFAULT NULL,
  `far_occupation` varchar(45) DEFAULT NULL,
  `far_occupation_type` int(11) DEFAULT NULL,
  `far_office_address` varchar(45) DEFAULT NULL,
  `far_office_phone_number` varchar(45) DEFAULT NULL,
  `far_stu_addmision_number` varchar(45) DEFAULT NULL,
  `far_old_student_number` varchar(45) DEFAULT NULL,
  `far_other_interactions_with_dp` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`far_id`),
  KEY `occ_type_id_idx` (`far_occupation_type`),
  CONSTRAINT `occ_type_id` FOREIGN KEY (`far_occupation_type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `gr11_thurunusaviya_view`
--

DROP TABLE IF EXISTS `gr11_thurunusaviya_view`;
/*!50001 DROP VIEW IF EXISTS `gr11_thurunusaviya_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gr11_thurunusaviya_view` AS SELECT 
 1 AS `ts11_id`,
 1 AS `year`,
 1 AS `ts11_pro_id`,
 1 AS `ts11_pro_supervisor_id`,
 1 AS `ts11_daily_attendance`,
 1 AS `ts11_poya_attendance`,
 1 AS `ts11_recomendation`,
 1 AS `ts11_evaluation_cri_1`,
 1 AS `ts11_evaluation_cri_2`,
 1 AS `ts11_evaluation_cri_3`,
 1 AS `ts11_evaluation_cri_4`,
 1 AS `ts11_evaluation_cri_5`,
 1 AS `ts11_evaluation_cri_6`,
 1 AS `ts11_evaluation_cri_7`,
 1 AS `ts11_evaluation_cri_8`,
 1 AS `ts11_evaluation_cri_9`,
 1 AS `ts11_evaluation_cri_10`,
 1 AS `ts11_evaluation_cri_11`,
 1 AS `ts11_evaluation_cri_12`,
 1 AS `ts11_evaluation_cri_13`,
 1 AS `ts11_evaluation_cri_14`,
 1 AS `ts11_evaluation_cri_15`,
 1 AS `ts11_evaluation_cri_16`,
 1 AS `ts11_evaluation_cri_17`,
 1 AS `ts11_evaluation_cri_18`,
 1 AS `ts11_evaluation_cri_19`,
 1 AS `ts11_evaluation_cri_20`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `11proj_pro_id`,
 1 AS `11proj_pro_name`,
 1 AS `11proj_pro_discription`,
 1 AS `11proj_pro_PDF_path`,
 1 AS `11proj_pro_supervisor_id`,
 1 AS `11proj_status`,
 1 AS `11proj_recode_added_at`,
 1 AS `11proj_recode_added_by`,
 1 AS `ts11_tea_id`,
 1 AS `ts11_tea_full_name`,
 1 AS `ts11_tea_name_with_initials`,
 1 AS `ts11_tea_land_phone_number`,
 1 AS `ts11_tea_mobile_phone_number`,
 1 AS `ts11_tea_address`,
 1 AS `ts11_tea_city`,
 1 AS `ts11_lib_mem_id`,
 1 AS `ts11_status`,
 1 AS `ts11_recode_added_at`,
 1 AS `ts11_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grade_9_thurunu_saviya`
--

DROP TABLE IF EXISTS `grade_9_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_9_thurunu_saviya` (
  `ts9_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts9_group` varchar(45) DEFAULT NULL,
  `ts9_daily_attendance` int(11) DEFAULT NULL,
  `ts9_poya_attendance` int(11) DEFAULT NULL,
  `ts9_recomendation` varchar(45) DEFAULT NULL,
  `ts9_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_20` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_21` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_22` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_23` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_24` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_25` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_26` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_27` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_28` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_29` int(11) DEFAULT NULL,
  `ts9_evaluation_cri_30` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts9_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gread_10_thurunu_saviya`
--

DROP TABLE IF EXISTS `gread_10_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gread_10_thurunu_saviya` (
  `ts10_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts10_group` varchar(45) DEFAULT NULL,
  `ts10_daily_attendance` int(11) DEFAULT NULL,
  `ts10_poya_attendance` int(11) DEFAULT NULL,
  `ts10_recomendation` varchar(45) DEFAULT NULL,
  `ts10_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_20` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_21` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_22` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_23` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_24` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_25` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_26` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_27` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_28` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_29` int(11) DEFAULT NULL,
  `ts10_evaluation_cri_30` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts10_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gread_11_thurunu_saviya`
--

DROP TABLE IF EXISTS `gread_11_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gread_11_thurunu_saviya` (
  `ts11_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `ts11_pro_id` int(11) DEFAULT NULL,
  `ts11_pro_supervisor_id` int(11) DEFAULT NULL,
  `ts11_daily_attendance` int(11) DEFAULT NULL,
  `ts11_poya_attendance` int(11) DEFAULT NULL,
  `ts11_recomendation` varchar(45) DEFAULT NULL,
  `ts11_evaluation_cri_1` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_2` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_3` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_4` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_5` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_6` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_7` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_8` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_9` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_10` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_11` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_12` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_13` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_14` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_15` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_16` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_17` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_18` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_19` int(11) DEFAULT NULL,
  `ts11_evaluation_cri_20` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts11_id`),
  KEY `tss_project_idx` (`ts11_pro_id`),
  CONSTRAINT `tss_project` FOREIGN KEY (`ts11_pro_id`) REFERENCES `project` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guardian`
--

DROP TABLE IF EXISTS `guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian` (
  `gur_id` int(11) NOT NULL AUTO_INCREMENT,
  `gur_name` varchar(45) NOT NULL,
  `gur_phone_number` varchar(45) DEFAULT NULL,
  `gur_adress` varchar(45) DEFAULT NULL,
  `gur_email_address` varchar(45) DEFAULT NULL,
  `gur_occupation` varchar(45) DEFAULT NULL,
  `gur_occupation _type` int(11) DEFAULT NULL,
  `gur_office_address` varchar(45) DEFAULT NULL,
  `gur_office_phone_number` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`gur_id`),
  KEY `ocu_id_idx` (`gur_occupation _type`),
  CONSTRAINT `ocu_id` FOREIGN KEY (`gur_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `guardian_view`
--

DROP TABLE IF EXISTS `guardian_view`;
/*!50001 DROP VIEW IF EXISTS `guardian_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guardian_view` AS SELECT 
 1 AS `gur_id`,
 1 AS `gur_name`,
 1 AS `gur_phone_number`,
 1 AS `gur_adress`,
 1 AS `gur_email_address`,
 1 AS `gur_occupation`,
 1 AS `gur_occupation _type`,
 1 AS `gur_office_address`,
 1 AS `gur_office_phone_number`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lending`
--

DROP TABLE IF EXISTS `lending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lending` (
  `len_id` int(11) NOT NULL AUTO_INCREMENT,
  `len_mem_id` int(11) NOT NULL,
  `len_copy_id` int(11) NOT NULL,
  `len_borrow_date` date DEFAULT NULL,
  `len_due_date` date DEFAULT NULL,
  `len_retuen_date` date DEFAULT NULL,
  `len_fine` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`len_id`),
  KEY `cop_id_idx` (`len_copy_id`),
  KEY `lib_mem_id_idx` (`len_mem_id`),
  CONSTRAINT `cop_id` FOREIGN KEY (`len_copy_id`) REFERENCES `copy` (`copy_id`),
  CONSTRAINT `lib_mem_id` FOREIGN KEY (`len_mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_cat` varchar(45) DEFAULT NULL,
  `mem_reg_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mother`
--

DROP TABLE IF EXISTS `mother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mother` (
  `mot_id` int(11) NOT NULL AUTO_INCREMENT,
  `mot_name` varchar(45) NOT NULL,
  `mot_phone_number` varchar(45) DEFAULT NULL,
  `mot_adress` varchar(45) DEFAULT NULL,
  `mot_email_address` varchar(45) DEFAULT NULL,
  `mot_occupation` varchar(45) DEFAULT NULL,
  `mot_occupation _type` int(11) DEFAULT NULL,
  `mot_office_address` varchar(45) DEFAULT NULL,
  `mot_office_phone_number` varchar(45) DEFAULT NULL,
  `mot_stu_addmision_number` varchar(45) DEFAULT NULL,
  `mot_old_student_number` varchar(45) DEFAULT NULL,
  `mot_other_interactions_with_dp` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mot_id`),
  KEY `occ_type_detail_idx` (`mot_occupation _type`),
  CONSTRAINT `occ_type_detail` FOREIGN KEY (`mot_occupation _type`) REFERENCES `occupation_type` (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `mother_view`
--

DROP TABLE IF EXISTS `mother_view`;
/*!50001 DROP VIEW IF EXISTS `mother_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mother_view` AS SELECT 
 1 AS `mot_id`,
 1 AS `mot_name`,
 1 AS `mot_phone_number`,
 1 AS `mot_adress`,
 1 AS `mot_email_address`,
 1 AS `mot_occupation`,
 1 AS `mot_occupation _type`,
 1 AS `mot_office_address`,
 1 AS `mot_office_phone_number`,
 1 AS `mot_stu_addmision_number`,
 1 AS `mot_old_student_number`,
 1 AS `mot_other_interactions_with_dp`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `occ_type_id`,
 1 AS `occ_type_name`,
 1 AS `occ_type_description`,
 1 AS `ot_status`,
 1 AS `ot_recode_added_at`,
 1 AS `ot_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nirmathru_pranama_thurunu_saviya`
--

DROP TABLE IF EXISTS `nirmathru_pranama_thurunu_saviya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nirmathru_pranama_thurunu_saviya` (
  `np_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `np_pro1_id` int(11) DEFAULT NULL,
  `np_pro2_id` int(11) DEFAULT NULL,
  `np_pro3_id` int(11) DEFAULT NULL,
  `np_pro4_id` int(11) DEFAULT NULL,
  `np_daily_attendance` int(11) DEFAULT NULL,
  `np_poya_attendance` int(11) DEFAULT NULL,
  `np_recomendation` varchar(45) DEFAULT NULL,
  `np_evaluation_cri_1` int(11) DEFAULT NULL,
  `np_evaluation_cri_2` int(11) DEFAULT NULL,
  `np_evaluation_cri_3` int(11) DEFAULT NULL,
  `np_evaluation_cri_4` int(11) DEFAULT NULL,
  `np_evaluation_cri_5` int(11) DEFAULT NULL,
  `np_evaluation_cri_6` int(11) DEFAULT NULL,
  `np_evaluation_cri_7` int(11) DEFAULT NULL,
  `np_evaluation_cri_8` int(11) DEFAULT NULL,
  `np_evaluation_cri_9` int(11) DEFAULT NULL,
  `np_evaluation_cri_10` int(11) DEFAULT NULL,
  `np_evaluation_cri_11` int(11) DEFAULT NULL,
  `np_evaluation_cri_12` int(11) DEFAULT NULL,
  `np_evaluation_cri_13` int(11) DEFAULT NULL,
  `np_evaluation_cri_14` int(11) DEFAULT NULL,
  `np_evaluation_cri_15` int(11) DEFAULT NULL,
  `np_evaluation_cri_16` int(11) DEFAULT NULL,
  `np_evaluation_cri_17` int(11) DEFAULT NULL,
  `np_evaluation_cri_18` int(11) DEFAULT NULL,
  `np_evaluation_cri_19` int(11) DEFAULT NULL,
  `np_evaluation_cri_20` int(11) DEFAULT NULL,
  `np_evaluation_cri_21` int(11) DEFAULT NULL,
  `np_evaluation_cri_22` int(11) DEFAULT NULL,
  `np_evaluation_cri_23` int(11) DEFAULT NULL,
  `np_evaluation_cri_24` int(11) DEFAULT NULL,
  `np_evaluation_cri_25` int(11) DEFAULT NULL,
  `np_evaluation_cri_26` int(11) DEFAULT NULL,
  `np_evaluation_cri_27` int(11) DEFAULT NULL,
  `np_evaluation_cri_28` int(11) DEFAULT NULL,
  `np_evaluation_cri_29` int(11) DEFAULT NULL,
  `np_evaluation_cri_30` int(11) DEFAULT NULL,
  `np_evaluation_cri_31` int(11) DEFAULT NULL,
  `np_evaluation_cri_32` int(11) DEFAULT NULL,
  `np_evaluation_cri_33` int(11) DEFAULT NULL,
  `np_evaluation_cri_34` int(11) DEFAULT NULL,
  `np_evaluation_cri_35` int(11) DEFAULT NULL,
  `np_evaluation_cri_36` int(11) DEFAULT NULL,
  `np_evaluation_cri_37` int(11) DEFAULT NULL,
  `np_evaluation_cri_38` int(11) DEFAULT NULL,
  `np_evaluation_cri_39` int(11) DEFAULT NULL,
  `np_evaluation_cri_40` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`np_id`),
  KEY `pro1_idx` (`np_pro1_id`),
  KEY `pro2_idx` (`np_pro2_id`),
  KEY `pro3_idx` (`np_pro3_id`),
  KEY `pro4_idx` (`np_pro4_id`),
  CONSTRAINT `pro1` FOREIGN KEY (`np_pro1_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro2` FOREIGN KEY (`np_pro2_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro3` FOREIGN KEY (`np_pro3_id`) REFERENCES `project` (`pro_id`),
  CONSTRAINT `pro4` FOREIGN KEY (`np_pro4_id`) REFERENCES `project` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `np_ts_view`
--

DROP TABLE IF EXISTS `np_ts_view`;
/*!50001 DROP VIEW IF EXISTS `np_ts_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `np_ts_view` AS SELECT 
 1 AS `np_id`,
 1 AS `npts_year`,
 1 AS `np_pro1_id`,
 1 AS `np_pro2_id`,
 1 AS `np_pro3_id`,
 1 AS `np_pro4_id`,
 1 AS `np_daily_attendance`,
 1 AS `np_poya_attendance`,
 1 AS `np_recomendation`,
 1 AS `np_evaluation_cri_1`,
 1 AS `np_evaluation_cri_2`,
 1 AS `np_evaluation_cri_3`,
 1 AS `np_evaluation_cri_4`,
 1 AS `np_evaluation_cri_5`,
 1 AS `np_evaluation_cri_6`,
 1 AS `np_evaluation_cri_7`,
 1 AS `np_evaluation_cri_8`,
 1 AS `np_evaluation_cri_9`,
 1 AS `np_evaluation_cri_10`,
 1 AS `np_evaluation_cri_11`,
 1 AS `np_evaluation_cri_12`,
 1 AS `np_evaluation_cri_13`,
 1 AS `np_evaluation_cri_14`,
 1 AS `np_evaluation_cri_15`,
 1 AS `np_evaluation_cri_16`,
 1 AS `np_evaluation_cri_17`,
 1 AS `np_evaluation_cri_18`,
 1 AS `np_evaluation_cri_19`,
 1 AS `np_evaluation_cri_20`,
 1 AS `np_evaluation_cri_21`,
 1 AS `np_evaluation_cri_22`,
 1 AS `np_evaluation_cri_23`,
 1 AS `np_evaluation_cri_24`,
 1 AS `np_evaluation_cri_25`,
 1 AS `np_evaluation_cri_26`,
 1 AS `np_evaluation_cri_27`,
 1 AS `np_evaluation_cri_28`,
 1 AS `np_evaluation_cri_29`,
 1 AS `np_evaluation_cri_30`,
 1 AS `np_evaluation_cri_31`,
 1 AS `np_evaluation_cri_32`,
 1 AS `np_evaluation_cri_33`,
 1 AS `np_evaluation_cri_34`,
 1 AS `np_evaluation_cri_35`,
 1 AS `np_evaluation_cri_36`,
 1 AS `np_evaluation_cri_37`,
 1 AS `np_evaluation_cri_38`,
 1 AS `np_evaluation_cri_39`,
 1 AS `np_evaluation_cri_40`,
 1 AS `npts_status`,
 1 AS `npts_recode_added_at`,
 1 AS `npts_recode_added_by`,
 1 AS `pro_id1`,
 1 AS `pro_name1`,
 1 AS `pro_discription1`,
 1 AS `pro_PDF_path1`,
 1 AS `pro_supervisor_id1`,
 1 AS `pro_status1`,
 1 AS `pro_recode_added_at1`,
 1 AS `pro_recode_added_by1`,
 1 AS `tea_id1`,
 1 AS `tea_full_name1`,
 1 AS `tea_name_with_initials1`,
 1 AS `tea_land_phone_number1`,
 1 AS `tea_mobile_phone_number1`,
 1 AS `tea_address1`,
 1 AS `tea_city1`,
 1 AS `tea_lib_mem_id1`,
 1 AS `tea_status1`,
 1 AS `tea_recode_added_at1`,
 1 AS `tea_recode_added_by1`,
 1 AS `pro_id2`,
 1 AS `pro_name2`,
 1 AS `pro_discription2`,
 1 AS `pro_PDF_path2`,
 1 AS `pro_supervisor_id2`,
 1 AS `pro_status2`,
 1 AS `pro_recode_added_at2`,
 1 AS `pro_recode_added_by2`,
 1 AS `tea_id2`,
 1 AS `tea_full_name2`,
 1 AS `tea_name_with_initials2`,
 1 AS `tea_land_phone_number2`,
 1 AS `tea_mobile_phone_number2`,
 1 AS `tea_address2`,
 1 AS `tea_city2`,
 1 AS `tea_lib_mem_id2`,
 1 AS `tea_status2`,
 1 AS `tea_recode_added_at2`,
 1 AS `tea_recode_added_by2`,
 1 AS `pro_id3`,
 1 AS `pro_name3`,
 1 AS `pro_discription3`,
 1 AS `pro_PDF_path3`,
 1 AS `pro_supervisor_id3`,
 1 AS `pro_status3`,
 1 AS `pro_recode_added_at3`,
 1 AS `pro_recode_added_by3`,
 1 AS `tea_id3`,
 1 AS `tea_full_name3`,
 1 AS `tea_name_with_initials3`,
 1 AS `tea_land_phone_number3`,
 1 AS `tea_mobile_phone_number3`,
 1 AS `tea_address3`,
 1 AS `tea_city3`,
 1 AS `tea_lib_mem_id3`,
 1 AS `tea_status3`,
 1 AS `tea_recode_added_at3`,
 1 AS `tea_recode_added_by3`,
 1 AS `pro_id4`,
 1 AS `pro_name4`,
 1 AS `pro_discription4`,
 1 AS `pro_PDF_path4`,
 1 AS `pro_supervisor_id4`,
 1 AS `pro_status4`,
 1 AS `pro_recode_added_at4`,
 1 AS `pro_recode_added_by4`,
 1 AS `tea_id4`,
 1 AS `tea_full_name4`,
 1 AS `tea_name_with_initials4`,
 1 AS `tea_land_phone_number4`,
 1 AS `tea_mobile_phone_number4`,
 1 AS `tea_address4`,
 1 AS `tea_city4`,
 1 AS `tea_lib_mem_id4`,
 1 AS `tea_status4`,
 1 AS `tea_recode_added_at4`,
 1 AS `tea_recode_added_by4`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `occupation_type`
--

DROP TABLE IF EXISTS `occupation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation_type` (
  `occ_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_type_name` varchar(45) DEFAULT NULL,
  `occ_type_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`occ_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operational_user`
--

DROP TABLE IF EXISTS `operational_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operational_user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(45) NOT NULL,
  `usr_pwd` varchar(45) NOT NULL,
  `usr_full_name` varchar(45) DEFAULT NULL,
  `usr_email` varchar(45) DEFAULT NULL,
  `usr_phone_number` varchar(45) DEFAULT NULL,
  `usr_category` int(11) NOT NULL,
  `usr_api_key` varchar(45) DEFAULT NULL,
  `usr_created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `usr_name_UNIQUE` (`usr_name`),
  KEY `usr_cat_idx` (`usr_category`),
  CONSTRAINT `usr_cat` FOREIGN KEY (`usr_category`) REFERENCES `user_category` (`ucat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `pla_id` int(11) NOT NULL AUTO_INCREMENT,
  `pla_cupboard` int(11) DEFAULT NULL,
  `cup_shelve` int(11) DEFAULT NULL,
  `cup_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prefect_group`
--

DROP TABLE IF EXISTS `prefect_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_group` (
  `grp_id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prefect_possition`
--

DROP TABLE IF EXISTS `prefect_possition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_possition` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prefect_report`
--

DROP TABLE IF EXISTS `prefect_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_report` (
  `prf_repo_id` int(11) NOT NULL AUTO_INCREMENT,
  `prf_is_prf` varchar(45) DEFAULT NULL,
  `prf_section_id` int(11) DEFAULT NULL,
  `prf_group_id` int(11) DEFAULT NULL,
  `prf_possition_id` int(11) DEFAULT NULL,
  `prf_sunday_attendence` int(11) DEFAULT NULL,
  `prf_poyaday_attendence` int(11) DEFAULT NULL,
  `pfr_meeting_attendance` int(11) DEFAULT NULL,
  `prf_extra_work_attendance` int(11) DEFAULT NULL,
  `prf_evaluation_cri_1` int(11) DEFAULT NULL,
  `prf_evaluation_cri_2` int(11) DEFAULT NULL,
  `prf_evaluation_cri_3` int(11) DEFAULT NULL,
  `prf_evaluation_cri_4` int(11) DEFAULT NULL,
  `prf_evaluation_cri_5` int(11) DEFAULT NULL,
  `prf_evaluation_cri_6` int(11) DEFAULT NULL,
  `prf_evaluation_cri_7` int(11) DEFAULT NULL,
  `prf_evaluation_cri_8` int(11) DEFAULT NULL,
  `prf_evaluation_cri_9` int(11) DEFAULT NULL,
  `prf_evaluation_cri_10` int(11) DEFAULT NULL,
  `prf_evaluation_cri_11` int(11) DEFAULT NULL,
  `prf_evaluation_cri_12` int(11) DEFAULT NULL,
  `prf_evaluation_cri_13` int(11) DEFAULT NULL,
  `prf_evaluation_cri_14` int(11) DEFAULT NULL,
  `prf_evaluation_cri_15` int(11) DEFAULT NULL,
  `prf_evaluation_cri_16` int(11) DEFAULT NULL,
  `prf_evaluation_cri_17` int(11) DEFAULT NULL,
  `prf_evaluation_cri_18` int(11) DEFAULT NULL,
  `prf_evaluation_cri_19` int(11) DEFAULT NULL,
  `prf_evaluation_cri_20` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`prf_repo_id`),
  KEY `prf_grp_details_idx` (`prf_group_id`),
  KEY `prf_poss_details_idx` (`prf_possition_id`),
  KEY `prf_section_detail_idx` (`prf_section_id`),
  CONSTRAINT `prf_grp_details` FOREIGN KEY (`prf_group_id`) REFERENCES `prefect_group` (`grp_id`),
  CONSTRAINT `prf_poss_details` FOREIGN KEY (`prf_possition_id`) REFERENCES `prefect_possition` (`pos_id`),
  CONSTRAINT `prf_section_detail` FOREIGN KEY (`prf_section_id`) REFERENCES `prefect_section` (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `prefect_report_view`
--

DROP TABLE IF EXISTS `prefect_report_view`;
/*!50001 DROP VIEW IF EXISTS `prefect_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prefect_report_view` AS SELECT 
 1 AS `prf_repo_id`,
 1 AS `prf_is_prf`,
 1 AS `prf_section_id`,
 1 AS `prf_group_id`,
 1 AS `prf_possition_id`,
 1 AS `prf_sunday_attendence`,
 1 AS `prf_poyaday_attendence`,
 1 AS `pfr_meeting_attendance`,
 1 AS `prf_extra_work_attendance`,
 1 AS `prf_evaluation_cri_1`,
 1 AS `prf_evaluation_cri_2`,
 1 AS `prf_evaluation_cri_3`,
 1 AS `prf_evaluation_cri_4`,
 1 AS `prf_evaluation_cri_5`,
 1 AS `prf_evaluation_cri_6`,
 1 AS `prf_evaluation_cri_7`,
 1 AS `prf_evaluation_cri_8`,
 1 AS `prf_evaluation_cri_9`,
 1 AS `prf_evaluation_cri_10`,
 1 AS `prf_evaluation_cri_11`,
 1 AS `prf_evaluation_cri_12`,
 1 AS `prf_evaluation_cri_13`,
 1 AS `prf_evaluation_cri_14`,
 1 AS `prf_evaluation_cri_15`,
 1 AS `prf_evaluation_cri_16`,
 1 AS `prf_evaluation_cri_17`,
 1 AS `prf_evaluation_cri_18`,
 1 AS `prf_evaluation_cri_19`,
 1 AS `prf_evaluation_cri_20`,
 1 AS `pr_status`,
 1 AS `pr_recode_added_at`,
 1 AS `pr_recode_added_by`,
 1 AS `sec_id`,
 1 AS `sec_name`,
 1 AS `ps_status`,
 1 AS `ps_recode_added_at`,
 1 AS `ps_recode_added_by`,
 1 AS `pos_id`,
 1 AS `pos_name`,
 1 AS `pos_status`,
 1 AS `pos_recode_added_at`,
 1 AS `pos_recode_added_by`,
 1 AS `grp_id`,
 1 AS `grp_name`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prefect_section`
--

DROP TABLE IF EXISTS `prefect_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_section` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prefect_talant`
--

DROP TABLE IF EXISTS `prefect_talant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prefect_talant` (
  `year` int(11) NOT NULL,
  `prf_repo_id` int(11) NOT NULL,
  `prf_tal_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`prf_repo_id`,`prf_tal_id`),
  KEY `prf_report_details_idx` (`prf_repo_id`),
  KEY `prf_tal_id_idx` (`prf_tal_id`),
  CONSTRAINT `prf_report_details` FOREIGN KEY (`prf_repo_id`) REFERENCES `prefect_report` (`prf_repo_id`),
  CONSTRAINT `prf_tal_id` FOREIGN KEY (`prf_tal_id`) REFERENCES `talants` (`tal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `prf_tal_view_by_stu_id`
--

DROP TABLE IF EXISTS `prf_tal_view_by_stu_id`;
/*!50001 DROP VIEW IF EXISTS `prf_tal_view_by_stu_id`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prf_tal_view_by_stu_id` AS SELECT 
 1 AS `sc_year`,
 1 AS `sc_stu_id`,
 1 AS `sc_clz_id`,
 1 AS `year`,
 1 AS `prf_repo_id`,
 1 AS `prf_tal_id`,
 1 AS `prf_tal_status`,
 1 AS `prf_tal_recode_added_at`,
 1 AS `prf_tal_recode_added_by`,
 1 AS `tal_id`,
 1 AS `tal_name`,
 1 AS `tal_status`,
 1 AS `tal_recode_added_at`,
 1 AS `tal_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prf_talant_view`
--

DROP TABLE IF EXISTS `prf_talant_view`;
/*!50001 DROP VIEW IF EXISTS `prf_talant_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prf_talant_view` AS SELECT 
 1 AS `year`,
 1 AS `prf_repo_id`,
 1 AS `prf_tal_id`,
 1 AS `prf_tal_status`,
 1 AS `prf_tal_recode_added_at`,
 1 AS `prf_tal_recode_added_by`,
 1 AS `tal_id`,
 1 AS `tal_name`,
 1 AS `tal_status`,
 1 AS `tal_recode_added_at`,
 1 AS `tal_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(45) DEFAULT NULL,
  `pro_discription` varchar(45) DEFAULT NULL,
  `pro_PDF_path` varchar(45) DEFAULT NULL,
  `pro_supervisor_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `supervisor_idx` (`pro_supervisor_id`),
  CONSTRAINT `supervisor` FOREIGN KEY (`pro_supervisor_id`) REFERENCES `teacher` (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `project_view`
--

DROP TABLE IF EXISTS `project_view`;
/*!50001 DROP VIEW IF EXISTS `project_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `project_view` AS SELECT 
 1 AS `pro_id`,
 1 AS `pro_name`,
 1 AS `pro_discription`,
 1 AS `pro_PDF_path`,
 1 AS `pro_supervisor_id`,
 1 AS `pro_status`,
 1 AS `pro_recode_added_at`,
 1 AS `pro_recode_added_by`,
 1 AS `tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `tea_lib_mem_id`,
 1 AS `tea_status`,
 1 AS `tea_recode_added_at`,
 1 AS `tea_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `stu_id` int(11) NOT NULL,
  `exm_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `result` varchar(45) DEFAULT NULL,
  `stu_exm_index_number` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`exm_id`,`year`),
  KEY `exm_detail_idx` (`exm_id`),
  CONSTRAINT `exm_detail` FOREIGN KEY (`exm_id`) REFERENCES `exam` (`exm_id`),
  CONSTRAINT `stu_detail` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `sch_id` int(11) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(45) DEFAULT NULL,
  `sch_situated_in` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `school_view`
--

DROP TABLE IF EXISTS `school_view`;
/*!50001 DROP VIEW IF EXISTS `school_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `school_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `stu_sch_id`,
 1 AS `attend_year`,
 1 AS `leave_year`,
 1 AS `stu_sch_status`,
 1 AS `stu_sch_recode_added_at`,
 1 AS `stu_sch_recode_added_by`,
 1 AS `sch_sch_id`,
 1 AS `sch_name`,
 1 AS `sch_situated_in`,
 1 AS `sch_status`,
 1 AS `sch_recode_added_at`,
 1 AS `sch_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stu_details_view`
--

DROP TABLE IF EXISTS `stu_details_view`;
/*!50001 DROP VIEW IF EXISTS `stu_details_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stu_details_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `stu_admission_number`,
 1 AS `stu_full_name`,
 1 AS `stu_name_with_initisals`,
 1 AS `stu_gender`,
 1 AS `stu_date_of_birth`,
 1 AS `stu_land_phone_number`,
 1 AS `stu_mobile_number`,
 1 AS `stu_address`,
 1 AS `stu_city`,
 1 AS `distance_to_home`,
 1 AS `father_id`,
 1 AS `mother_id`,
 1 AS `guardian_id`,
 1 AS `stu_email_address`,
 1 AS `stu_nic_number`,
 1 AS `ts_grade9_id`,
 1 AS `ts_grade10_id`,
 1 AS `ts_grade11_id`,
 1 AS `ts_np_id`,
 1 AS `lib_mem_id`,
 1 AS `status`,
 1 AS `recode_added_at`,
 1 AS `recode_added_by`,
 1 AS `far_id`,
 1 AS `far_name`,
 1 AS `far_phone_number`,
 1 AS `far_adress`,
 1 AS `far_email_address`,
 1 AS `far_occupation`,
 1 AS `far_occupation _type`,
 1 AS `far_office_address`,
 1 AS `far_office_phone_number`,
 1 AS `far_stu_addmision_number`,
 1 AS `far_old_student_number`,
 1 AS `far_other_interactions_with_dp`,
 1 AS `far_status`,
 1 AS `far_recode_added_at`,
 1 AS `far_recode_added_by`,
 1 AS `f_occ_type_id`,
 1 AS `f_occ_type_name`,
 1 AS `f_occ_type_description`,
 1 AS `f_ot_status`,
 1 AS `f_ot_recode_added_at`,
 1 AS `f_ot_recode_added_by`,
 1 AS `mot_id`,
 1 AS `mot_name`,
 1 AS `mot_phone_number`,
 1 AS `mot_adress`,
 1 AS `mot_email_address`,
 1 AS `mot_occupation`,
 1 AS `mot_occupation _type`,
 1 AS `mot_office_address`,
 1 AS `mot_office_phone_number`,
 1 AS `mot_stu_addmision_number`,
 1 AS `mot_old_student_number`,
 1 AS `mot_other_interactions_with_dp`,
 1 AS `mv_status`,
 1 AS `mv_recode_added_at`,
 1 AS `mv_recode_added_by`,
 1 AS `mv_occ_type_id`,
 1 AS `mv_occ_type_name`,
 1 AS `mv_occ_type_description`,
 1 AS `mv_ot_status`,
 1 AS `mv_ot_recode_added_at`,
 1 AS `mv_ot_recode_added_by`,
 1 AS `gur_id`,
 1 AS `gur_name`,
 1 AS `gur_phone_number`,
 1 AS `gur_adress`,
 1 AS `gur_email_address`,
 1 AS `gur_occupation`,
 1 AS `gur_occupation _type`,
 1 AS `gur_office_address`,
 1 AS `gur_office_phone_number`,
 1 AS `gv_status`,
 1 AS `gv_recode_added_at`,
 1 AS `gv_recode_added_by`,
 1 AS `gv_occ_type_id`,
 1 AS `gv_occ_type_name`,
 1 AS `gv_occ_type_description`,
 1 AS `gv_ot_status`,
 1 AS `gv_ot_recode_added_at`,
 1 AS `gv_ot_recode_added_by`,
 1 AS `ts9_id`,
 1 AS `g9ts_year`,
 1 AS `ts9_group`,
 1 AS `ts9_daily_attendance`,
 1 AS `ts9_poya_attendance`,
 1 AS `ts9_recomendation`,
 1 AS `ts9_evaluation_cri_1`,
 1 AS `ts9_evaluation_cri_2`,
 1 AS `ts9_evaluation_cri_3`,
 1 AS `ts9_evaluation_cri_4`,
 1 AS `ts9_evaluation_cri_5`,
 1 AS `ts9_evaluation_cri_6`,
 1 AS `ts9_evaluation_cri_7`,
 1 AS `ts9_evaluation_cri_8`,
 1 AS `ts9_evaluation_cri_9`,
 1 AS `ts9_evaluation_cri_10`,
 1 AS `ts9_evaluation_cri_11`,
 1 AS `ts9_evaluation_cri_12`,
 1 AS `ts9_evaluation_cri_13`,
 1 AS `ts9_evaluation_cri_14`,
 1 AS `ts9_evaluation_cri_15`,
 1 AS `ts9_evaluation_cri_16`,
 1 AS `ts9_evaluation_cri_17`,
 1 AS `ts9_evaluation_cri_18`,
 1 AS `ts9_evaluation_cri_19`,
 1 AS `ts9_evaluation_cri_20`,
 1 AS `ts9_evaluation_cri_21`,
 1 AS `ts9_evaluation_cri_22`,
 1 AS `ts9_evaluation_cri_23`,
 1 AS `ts9_evaluation_cri_24`,
 1 AS `ts9_evaluation_cri_25`,
 1 AS `ts9_evaluation_cri_26`,
 1 AS `ts9_evaluation_cri_27`,
 1 AS `ts9_evaluation_cri_28`,
 1 AS `ts9_evaluation_cri_29`,
 1 AS `ts9_evaluation_cri_30`,
 1 AS `g9ts_status`,
 1 AS `g9ts_recode_added_at`,
 1 AS `g9ts_recode_added_by`,
 1 AS `ts10_id`,
 1 AS `g10ts_year`,
 1 AS `ts10_group`,
 1 AS `ts10_daily_attendance`,
 1 AS `ts10_poya_attendance`,
 1 AS `ts10_recomendation`,
 1 AS `ts10_evaluation_cri_1`,
 1 AS `ts10_evaluation_cri_2`,
 1 AS `ts10_evaluation_cri_3`,
 1 AS `ts10_evaluation_cri_4`,
 1 AS `ts10_evaluation_cri_5`,
 1 AS `ts10_evaluation_cri_6`,
 1 AS `ts10_evaluation_cri_7`,
 1 AS `ts10_evaluation_cri_8`,
 1 AS `ts10_evaluation_cri_9`,
 1 AS `ts10_evaluation_cri_10`,
 1 AS `ts10_evaluation_cri_11`,
 1 AS `ts10_evaluation_cri_12`,
 1 AS `ts10_evaluation_cri_13`,
 1 AS `ts10_evaluation_cri_14`,
 1 AS `ts10_evaluation_cri_15`,
 1 AS `ts10_evaluation_cri_16`,
 1 AS `ts10_evaluation_cri_17`,
 1 AS `ts10_evaluation_cri_18`,
 1 AS `ts10_evaluation_cri_19`,
 1 AS `ts10_evaluation_cri_20`,
 1 AS `ts10_evaluation_cri_21`,
 1 AS `ts10_evaluation_cri_22`,
 1 AS `ts10_evaluation_cri_23`,
 1 AS `ts10_evaluation_cri_24`,
 1 AS `ts10_evaluation_cri_25`,
 1 AS `ts10_evaluation_cri_26`,
 1 AS `ts10_evaluation_cri_27`,
 1 AS `ts10_evaluation_cri_28`,
 1 AS `ts10_evaluation_cri_29`,
 1 AS `ts10_evaluation_cri_30`,
 1 AS `g10ts_status`,
 1 AS `g10ts_recode_added_at`,
 1 AS `g10ts_recode_added_by`,
 1 AS `ts11_id`,
 1 AS `ts11_year`,
 1 AS `ts11_pro_id`,
 1 AS `ts11_pro_supervisor_id`,
 1 AS `ts11_daily_attendance`,
 1 AS `ts11_poya_attendance`,
 1 AS `ts11_recomendation`,
 1 AS `ts11_evaluation_cri_1`,
 1 AS `ts11_evaluation_cri_2`,
 1 AS `ts11_evaluation_cri_3`,
 1 AS `ts11_evaluation_cri_4`,
 1 AS `ts11_evaluation_cri_5`,
 1 AS `ts11_evaluation_cri_6`,
 1 AS `ts11_evaluation_cri_7`,
 1 AS `ts11_evaluation_cri_8`,
 1 AS `ts11_evaluation_cri_9`,
 1 AS `ts11_evaluation_cri_10`,
 1 AS `ts11_evaluation_cri_11`,
 1 AS `ts11_evaluation_cri_12`,
 1 AS `ts11_evaluation_cri_13`,
 1 AS `ts11_evaluation_cri_14`,
 1 AS `ts11_evaluation_cri_15`,
 1 AS `ts11_evaluation_cri_16`,
 1 AS `ts11_evaluation_cri_17`,
 1 AS `ts11_evaluation_cri_18`,
 1 AS `ts11_evaluation_cri_19`,
 1 AS `ts11_evaluation_cri_20`,
 1 AS `ts11_status`,
 1 AS `ts11_recode_added_at`,
 1 AS `ts11_recode_added_by`,
 1 AS `11proj_pro_id`,
 1 AS `11proj_pro_name`,
 1 AS `11proj_pro_discription`,
 1 AS `11proj_pro_PDF_path`,
 1 AS `11proj_pro_supervisor_id`,
 1 AS `11proj_status`,
 1 AS `11proj_recode_added_at`,
 1 AS `11proj_recode_added_by`,
 1 AS `ts11_tea_id`,
 1 AS `ts11_tea_full_name`,
 1 AS `ts11_tea_name_with_initials`,
 1 AS `ts11_tea_land_phone_number`,
 1 AS `ts11_tea_mobile_phone_number`,
 1 AS `ts11_tea_address`,
 1 AS `ts11_tea_city`,
 1 AS `ts11_lib_mem_id`,
 1 AS `ts11_tea_status`,
 1 AS `ts11_tea_recode_added_at`,
 1 AS `ts11_tea_recode_added_by`,
 1 AS `np_id`,
 1 AS `npts_year`,
 1 AS `np_pro1_id`,
 1 AS `np_pro2_id`,
 1 AS `np_pro3_id`,
 1 AS `np_pro4_id`,
 1 AS `np_daily_attendance`,
 1 AS `np_poya_attendance`,
 1 AS `np_recomendation`,
 1 AS `np_evaluation_cri_1`,
 1 AS `np_evaluation_cri_2`,
 1 AS `np_evaluation_cri_3`,
 1 AS `np_evaluation_cri_4`,
 1 AS `np_evaluation_cri_5`,
 1 AS `np_evaluation_cri_6`,
 1 AS `np_evaluation_cri_7`,
 1 AS `np_evaluation_cri_8`,
 1 AS `np_evaluation_cri_9`,
 1 AS `np_evaluation_cri_10`,
 1 AS `np_evaluation_cri_11`,
 1 AS `np_evaluation_cri_12`,
 1 AS `np_evaluation_cri_13`,
 1 AS `np_evaluation_cri_14`,
 1 AS `np_evaluation_cri_15`,
 1 AS `np_evaluation_cri_16`,
 1 AS `np_evaluation_cri_17`,
 1 AS `np_evaluation_cri_18`,
 1 AS `np_evaluation_cri_19`,
 1 AS `np_evaluation_cri_20`,
 1 AS `np_evaluation_cri_21`,
 1 AS `np_evaluation_cri_22`,
 1 AS `np_evaluation_cri_23`,
 1 AS `np_evaluation_cri_24`,
 1 AS `np_evaluation_cri_25`,
 1 AS `np_evaluation_cri_26`,
 1 AS `np_evaluation_cri_27`,
 1 AS `np_evaluation_cri_28`,
 1 AS `np_evaluation_cri_29`,
 1 AS `np_evaluation_cri_30`,
 1 AS `np_evaluation_cri_31`,
 1 AS `np_evaluation_cri_32`,
 1 AS `np_evaluation_cri_33`,
 1 AS `np_evaluation_cri_34`,
 1 AS `np_evaluation_cri_35`,
 1 AS `np_evaluation_cri_36`,
 1 AS `np_evaluation_cri_37`,
 1 AS `np_evaluation_cri_38`,
 1 AS `np_evaluation_cri_39`,
 1 AS `np_evaluation_cri_40`,
 1 AS `npts_status`,
 1 AS `npts_recode_added_at`,
 1 AS `npts_recode_added_by`,
 1 AS `pro_id1`,
 1 AS `pro_name1`,
 1 AS `pro_discription1`,
 1 AS `pro_PDF_path1`,
 1 AS `pro_supervisor_id1`,
 1 AS `pro_status1`,
 1 AS `pro_recode_added_at1`,
 1 AS `pro_recode_added_by1`,
 1 AS `tea_id1`,
 1 AS `tea_full_name1`,
 1 AS `tea_name_with_initials1`,
 1 AS `tea_land_phone_number1`,
 1 AS `tea_mobile_phone_number1`,
 1 AS `tea_address1`,
 1 AS `tea_city1`,
 1 AS `tea_lib_mem_id1`,
 1 AS `tea_status1`,
 1 AS `tea_recode_added_at1`,
 1 AS `tea_recode_added_by1`,
 1 AS `pro_id2`,
 1 AS `pro_name2`,
 1 AS `pro_discription2`,
 1 AS `pro_PDF_path2`,
 1 AS `pro_supervisor_id2`,
 1 AS `pro_status2`,
 1 AS `pro_recode_added_at2`,
 1 AS `pro_recode_added_by2`,
 1 AS `tea_id2`,
 1 AS `tea_full_name2`,
 1 AS `tea_name_with_initials2`,
 1 AS `tea_land_phone_number2`,
 1 AS `tea_mobile_phone_number2`,
 1 AS `tea_address2`,
 1 AS `tea_city2`,
 1 AS `tea_lib_mem_id2`,
 1 AS `tea_status2`,
 1 AS `tea_recode_added_at2`,
 1 AS `tea_recode_added_by2`,
 1 AS `pro_id3`,
 1 AS `pro_name3`,
 1 AS `pro_discription3`,
 1 AS `pro_PDF_path3`,
 1 AS `pro_supervisor_id3`,
 1 AS `pro_status3`,
 1 AS `pro_recode_added_at3`,
 1 AS `pro_recode_added_by3`,
 1 AS `tea_id3`,
 1 AS `tea_full_name3`,
 1 AS `tea_name_with_initials3`,
 1 AS `tea_land_phone_number3`,
 1 AS `tea_mobile_phone_number3`,
 1 AS `tea_address3`,
 1 AS `tea_city3`,
 1 AS `tea_lib_mem_id3`,
 1 AS `tea_status3`,
 1 AS `tea_recode_added_at3`,
 1 AS `tea_recode_added_by3`,
 1 AS `pro_id4`,
 1 AS `pro_name4`,
 1 AS `pro_discription4`,
 1 AS `pro_PDF_path4`,
 1 AS `pro_supervisor_id4`,
 1 AS `pro_status4`,
 1 AS `pro_recode_added_at4`,
 1 AS `pro_recode_added_by4`,
 1 AS `tea_id4`,
 1 AS `tea_full_name4`,
 1 AS `tea_name_with_initials4`,
 1 AS `tea_land_phone_number4`,
 1 AS `tea_mobile_phone_number4`,
 1 AS `tea_address4`,
 1 AS `tea_city4`,
 1 AS `tea_lib_mem_id4`,
 1 AS `tea_status4`,
 1 AS `tea_recode_added_at4`,
 1 AS `tea_recode_added_by4`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_admission_number` varchar(45) NOT NULL,
  `stu_full_name` varchar(45) NOT NULL,
  `stu_name_with_initisals` varchar(45) NOT NULL,
  `stu_gender` varchar(45) NOT NULL,
  `stu_date_of_birth` date NOT NULL,
  `stu_land_phone_number` varchar(45) DEFAULT NULL,
  `stu_mobile_number` varchar(45) DEFAULT NULL,
  `stu_address` varchar(45) DEFAULT NULL,
  `stu_city` varchar(45) DEFAULT NULL,
  `distance_to_home` int(11) DEFAULT NULL,
  `father_id` int(11) NOT NULL,
  `mother_id` int(11) NOT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `stu_email_address` varchar(45) DEFAULT NULL,
  `stu_nic_number` varchar(45) DEFAULT NULL,
  `ts_grade9_id` int(11) DEFAULT NULL,
  `ts_grade10_id` int(11) DEFAULT NULL,
  `ts_grade11_id` int(11) DEFAULT NULL,
  `ts_np_id` int(11) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `stuadmissionnumber_UNIQUE` (`stu_admission_number`),
  UNIQUE KEY `stu_nic_number_UNIQUE` (`stu_nic_number`),
  KEY `father_details_idx` (`father_id`),
  KEY `mother_details_idx` (`mother_id`),
  KEY `ts9_detail_idx` (`ts_grade9_id`),
  KEY `ts10_detail_idx` (`ts_grade10_id`),
  KEY `ts11_detail_idx` (`ts_grade11_id`),
  KEY `ts_np_detail_idx` (`ts_np_id`),
  KEY `lib_mem_id1_idx` (`lib_mem_id`),
  KEY `gar_detail_idx` (`guardian_id`),
  CONSTRAINT `father_details` FOREIGN KEY (`father_id`) REFERENCES `father` (`far_id`),
  CONSTRAINT `gar_detail` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`gur_id`),
  CONSTRAINT `lib_mem_id1` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`),
  CONSTRAINT `mother_details` FOREIGN KEY (`mother_id`) REFERENCES `mother` (`mot_id`),
  CONSTRAINT `ts10_detail` FOREIGN KEY (`ts_grade10_id`) REFERENCES `gread_10_thurunu_saviya` (`ts10_id`),
  CONSTRAINT `ts11_detail` FOREIGN KEY (`ts_grade11_id`) REFERENCES `gread_11_thurunu_saviya` (`ts11_id`),
  CONSTRAINT `ts9_detail` FOREIGN KEY (`ts_grade9_id`) REFERENCES `grade_9_thurunu_saviya` (`ts9_id`),
  CONSTRAINT `ts_np_detail` FOREIGN KEY (`ts_np_id`) REFERENCES `nirmathru_pranama_thurunu_saviya` (`np_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student_class`
--

DROP TABLE IF EXISTS `student_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_class` (
  `year` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `clz_id` int(11) DEFAULT NULL,
  `clz_report_id` int(11) DEFAULT NULL,
  `prefect_report_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`stu_id`),
  KEY `stu_detailsnew_idx` (`stu_id`),
  KEY `clz_idnew_idx` (`clz_id`),
  KEY `clz_repo_id_idx` (`clz_report_id`),
  KEY `prf_repo_id_idx` (`prefect_report_id`),
  CONSTRAINT `clz_idnew` FOREIGN KEY (`clz_id`) REFERENCES `class` (`clz_id`),
  CONSTRAINT `clz_repo_id` FOREIGN KEY (`clz_report_id`) REFERENCES `class_report` (`clz_repo_id`),
  CONSTRAINT `prf_repo_id` FOREIGN KEY (`prefect_report_id`) REFERENCES `prefect_report` (`prf_repo_id`),
  CONSTRAINT `stu_detailsnew` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `student_class_view`
--

DROP TABLE IF EXISTS `student_class_view`;
/*!50001 DROP VIEW IF EXISTS `student_class_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_class_view` AS SELECT 
 1 AS `sc_year`,
 1 AS `sc_stu_id`,
 1 AS `sc_clz_id`,
 1 AS `sc_clz_report_id`,
 1 AS `sc_prefect_report_id`,
 1 AS `sc_status`,
 1 AS `sc_recode_added_at`,
 1 AS `sc_recode_added_by`,
 1 AS `c_clz_id`,
 1 AS `c_clz_grade`,
 1 AS `c_clz_class`,
 1 AS `c_status`,
 1 AS `c_recode_added_at`,
 1 AS `c_recode_added_by`,
 1 AS `tc_year`,
 1 AS `tc_tec_id`,
 1 AS `tc_clz_id`,
 1 AS `tc_status`,
 1 AS `tc_recode_added_at`,
 1 AS `tc_recode_added_by`,
 1 AS `t_tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `lib_mem_id`,
 1 AS `t_status`,
 1 AS `t_recode_added_at`,
 1 AS `t_recode_added_by`,
 1 AS `cr_clz_repo_id`,
 1 AS `clz_evaluation_cri_1`,
 1 AS `clz_evaluation_cri_2`,
 1 AS `clz_evaluation_cri_3`,
 1 AS `clz_evaluation_cri_4`,
 1 AS `clz_evaluation_cri_5`,
 1 AS `clz_evaluation_cri_6`,
 1 AS `clz_evaluation_cri_7`,
 1 AS `clz_evaluation_cri_8`,
 1 AS `clz_evaluation_cri_9`,
 1 AS `clz_evaluation_cri_10`,
 1 AS `clz_evaluation_cri_11`,
 1 AS `clz_evaluation_cri_12`,
 1 AS `clz_evaluation_cri_13`,
 1 AS `clz_evaluation_cri_14`,
 1 AS `clz_evaluation_cri_15`,
 1 AS `clz_evaluation_cri_16`,
 1 AS `clz_evaluation_cri_17`,
 1 AS `clz_evaluation_cri_18`,
 1 AS `clz_evaluation_cri_19`,
 1 AS `clz_evaluation_cri_20`,
 1 AS `clz_evaluation_cri_21`,
 1 AS `clz_evaluation_cri_22`,
 1 AS `clz_evaluation_cri_23`,
 1 AS `clz_evaluation_cri_24`,
 1 AS `clz_evaluation_cri_25`,
 1 AS `clz_evaluation_cri_26`,
 1 AS `clz_evaluation_cri_27`,
 1 AS `clz_evaluation_cri_29`,
 1 AS `clz_evaluation_cri_30`,
 1 AS `clz_evaluation_cri_31`,
 1 AS `clz_evaluation_cri_32`,
 1 AS `clz_evaluation_cri_33`,
 1 AS `clz_evaluation_cri_34`,
 1 AS `clz_evaluation_cri_35`,
 1 AS `clz_evaluation_cri_36`,
 1 AS `clz_evaluation_cri_37`,
 1 AS `clz_evaluation_cri_39`,
 1 AS `clz_evaluation_cri_40`,
 1 AS `clz_evaluation_cri_41`,
 1 AS `clz_evaluation_cri_42`,
 1 AS `clz_evaluation_cri_43`,
 1 AS `clz_evaluation_cri_44`,
 1 AS `clz_evaluation_cri_45`,
 1 AS `clz_evaluation_cri_46`,
 1 AS `clz_evaluation_cri_47`,
 1 AS `clz_evaluation_cri_48`,
 1 AS `clz_evaluation_cri_49`,
 1 AS `clz_evaluation_cri_50`,
 1 AS `clz_evaluation_cri_51`,
 1 AS `clz_evaluation_cri_52`,
 1 AS `clz_evaluation_cri_53`,
 1 AS `clz_evaluation_cri_54`,
 1 AS `clz_evaluation_cri_55`,
 1 AS `clz_evaluation_cri_56`,
 1 AS `clz_evaluation_cri_57`,
 1 AS `clz_evaluation_cri_58`,
 1 AS `clz_evaluation_cri_59`,
 1 AS `clz_evaluation_cri_60`,
 1 AS `clz_evaluation_cri_61`,
 1 AS `clz_evaluation_cri_62`,
 1 AS `clz_evaluation_cri_63`,
 1 AS `clz_evaluation_cri_64`,
 1 AS `clz_evaluation_cri_65`,
 1 AS `clz_evaluation_cri_66`,
 1 AS `clz_evaluation_cri_67`,
 1 AS `clz_evaluation_cri_68`,
 1 AS `clz_evaluation_cri_69`,
 1 AS `clz_evaluation_cri_70`,
 1 AS `clz_evaluation_cri_71`,
 1 AS `clz_evaluation_cri_72`,
 1 AS `clz_evaluation_cri_73`,
 1 AS `clz_evaluation_cri_74`,
 1 AS `clz_evaluation_cri_75`,
 1 AS `clz_evaluation_cri_76`,
 1 AS `clz_evaluation_cri_77`,
 1 AS `clz_evaluation_cri_78`,
 1 AS `clz_evaluation_cri_79`,
 1 AS `clz_evaluation_cri_80`,
 1 AS `cr_status`,
 1 AS `cr_recode_added_at`,
 1 AS `cr_recode_added_by`,
 1 AS `prf_repo_id`,
 1 AS `prf_is_prf`,
 1 AS `prf_section_id`,
 1 AS `prf_group_id`,
 1 AS `prf_possition_id`,
 1 AS `prf_sunday_attendence`,
 1 AS `prf_poyaday_attendence`,
 1 AS `pfr_meeting_attendance`,
 1 AS `prf_extra_work_attendance`,
 1 AS `prf_evaluation_cri_1`,
 1 AS `prf_evaluation_cri_2`,
 1 AS `prf_evaluation_cri_3`,
 1 AS `prf_evaluation_cri_4`,
 1 AS `prf_evaluation_cri_5`,
 1 AS `prf_evaluation_cri_6`,
 1 AS `prf_evaluation_cri_7`,
 1 AS `prf_evaluation_cri_8`,
 1 AS `prf_evaluation_cri_9`,
 1 AS `prf_evaluation_cri_10`,
 1 AS `prf_evaluation_cri_11`,
 1 AS `prf_evaluation_cri_12`,
 1 AS `prf_evaluation_cri_13`,
 1 AS `prf_evaluation_cri_14`,
 1 AS `prf_evaluation_cri_15`,
 1 AS `prf_evaluation_cri_16`,
 1 AS `prf_evaluation_cri_17`,
 1 AS `prf_evaluation_cri_18`,
 1 AS `prf_evaluation_cri_19`,
 1 AS `prf_evaluation_cri_20`,
 1 AS `pr_status`,
 1 AS `pr_recode_added_at`,
 1 AS `pr_recode_added_by`,
 1 AS `sec_id`,
 1 AS `sec_name`,
 1 AS `ps_status`,
 1 AS `ps_recode_added_at`,
 1 AS `ps_recode_added_by`,
 1 AS `pos_id`,
 1 AS `pos_name`,
 1 AS `pos_status`,
 1 AS `pos_recode_added_at`,
 1 AS `pos_recode_added_by`,
 1 AS `grp_id`,
 1 AS `grp_name`,
 1 AS `pr_status1`,
 1 AS `pr_recode_added_at1`,
 1 AS `pr_recode_added_by1`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_diseases`
--

DROP TABLE IF EXISTS `student_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_diseases` (
  `stu_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `dis_found_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`dis_id`),
  KEY `dis_id_idx` (`dis_id`),
  CONSTRAINT `dis_id` FOREIGN KEY (`dis_id`) REFERENCES `diseases` (`dis_id`),
  CONSTRAINT `stu_details` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `student_diseases_view`
--

DROP TABLE IF EXISTS `student_diseases_view`;
/*!50001 DROP VIEW IF EXISTS `student_diseases_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_diseases_view` AS SELECT 
 1 AS `stu_id`,
 1 AS `stu_dis_dis_id`,
 1 AS `dis_found_year`,
 1 AS `stu_dis_status`,
 1 AS `stu_dis_recode_added_at`,
 1 AS `stu_dis_recode_added_by`,
 1 AS `dis_dis_id`,
 1 AS `dis_name`,
 1 AS `dis_explanation`,
 1 AS `dis_status`,
 1 AS `dis_recode_added_at`,
 1 AS `dis_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_donation`
--

DROP TABLE IF EXISTS `student_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_donation` (
  `stu_id` int(11) NOT NULL,
  `don_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`don_id`),
  KEY `don_id_idx` (`don_id`),
  CONSTRAINT `don_id` FOREIGN KEY (`don_id`) REFERENCES `donations` (`don_id`),
  CONSTRAINT `stud_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student_school`
--

DROP TABLE IF EXISTS `student_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_school` (
  `stu_id` int(11) NOT NULL,
  `sch_id` int(11) NOT NULL,
  `attend_year` int(11) DEFAULT NULL,
  `leave_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`sch_id`),
  KEY `stu-schl_details_idx` (`sch_id`),
  CONSTRAINT `stu-schl_details` FOREIGN KEY (`sch_id`) REFERENCES `school` (`sch_id`),
  CONSTRAINT `student_detail` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `talants`
--

DROP TABLE IF EXISTS `talants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talants` (
  `tal_id` int(11) NOT NULL AUTO_INCREMENT,
  `tal_name` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_full_name` varchar(45) DEFAULT NULL,
  `tea_name_with_initials` varchar(45) DEFAULT NULL,
  `tea_land_phone_number` varchar(45) DEFAULT NULL,
  `tea_mobile_phone_number` varchar(45) DEFAULT NULL,
  `tea_address` varchar(45) DEFAULT NULL,
  `tea_city` varchar(45) DEFAULT NULL,
  `lib_mem_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`),
  KEY `lib_mem_id2_idx` (`lib_mem_id`),
  CONSTRAINT `lib_mem_id2` FOREIGN KEY (`lib_mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teacher_class`
--

DROP TABLE IF EXISTS `teacher_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_class` (
  `year` int(11) NOT NULL,
  `tec_id` int(11) NOT NULL,
  `clz_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`tec_id`),
  KEY `clz_id_idx` (`clz_id`),
  KEY `tea_id_idx` (`tec_id`),
  CONSTRAINT `clz_id` FOREIGN KEY (`clz_id`) REFERENCES `class` (`clz_id`),
  CONSTRAINT `tea_id` FOREIGN KEY (`tec_id`) REFERENCES `teacher` (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `techer_class_view`
--

DROP TABLE IF EXISTS `techer_class_view`;
/*!50001 DROP VIEW IF EXISTS `techer_class_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `techer_class_view` AS SELECT 
 1 AS `c_clz_id`,
 1 AS `c_clz_grade`,
 1 AS `c_clz_class`,
 1 AS `c_status`,
 1 AS `c_recode_added_at`,
 1 AS `c_recode_added_by`,
 1 AS `tc_year`,
 1 AS `tc_tec_id`,
 1 AS `tc_clz_id`,
 1 AS `tc_status`,
 1 AS `tc_recode_added_at`,
 1 AS `tc_recode_added_by`,
 1 AS `t_tea_id`,
 1 AS `tea_full_name`,
 1 AS `tea_name_with_initials`,
 1 AS `tea_land_phone_number`,
 1 AS `tea_mobile_phone_number`,
 1 AS `tea_address`,
 1 AS `tea_city`,
 1 AS `lib_mem_id`,
 1 AS `t_status`,
 1 AS `t_recode_added_at`,
 1 AS `t_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_view`
--

DROP TABLE IF EXISTS `temp_view`;
/*!50001 DROP VIEW IF EXISTS `temp_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `temp_view` AS SELECT 
 1 AS `year`,
 1 AS `prf_repo_id`,
 1 AS `prf_tal_id`,
 1 AS `prf_tal_status`,
 1 AS `prf_tal_recode_added_at`,
 1 AS `prf_tal_recode_added_by`,
 1 AS `tal_id`,
 1 AS `tal_name`,
 1 AS `tal_status`,
 1 AS `tal_recode_added_at`,
 1 AS `tal_recode_added_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_category` (
  `ucat_id` int(11) NOT NULL AUTO_INCREMENT,
  `ucat_name` varchar(45) DEFAULT NULL,
  `ucat_description` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ucat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vidusarana`
--

DROP TABLE IF EXISTS `vidusarana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vidusarana` (
  `vid_id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_date` date DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `recode_added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recode_added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'svdims'
--

--
-- Dumping routines for database 'svdims'
--

--
-- Final view structure for view `exam_result_view`
--

/*!50001 DROP VIEW IF EXISTS `exam_result_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_result_view` AS select `res`.`stu_id` AS `stu_id`,`res`.`exm_id` AS `res_exm_id`,`res`.`year` AS `year`,`res`.`result` AS `result`,`res`.`stu_exm_index_number` AS `stu_exm_index_number`,`res`.`status` AS `res_status`,`res`.`recode_added_at` AS `res_recode_added_at`,`res`.`recode_added_by` AS `res_recode_added_by`,`exm`.`exm_id` AS `exm_exm_id`,`exm`.`exm_name` AS `exm_name`,`exm`.`exm_discription` AS `exm_discription`,`exm`.`status` AS `exm_status`,`exm`.`recode_added_at` AS `exm_recode_added_at`,`exm`.`recode_added_by` AS `exm_recode_added_by` from (`result` `res` left join `exam` `exm` on((`exm`.`exm_id` = `res`.`exm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `farther_view`
--

/*!50001 DROP VIEW IF EXISTS `farther_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `farther_view` AS select `f`.`far_id` AS `far_id`,`f`.`far_name` AS `far_name`,`f`.`far_phone_number` AS `far_phone_number`,`f`.`far_adress` AS `far_adress`,`f`.`far_email_address` AS `far_email_address`,`f`.`far_occupation` AS `far_occupation`,`f`.`far_occupation_type` AS `far_occupation _type`,`f`.`far_office_address` AS `far_office_address`,`f`.`far_office_phone_number` AS `far_office_phone_number`,`f`.`far_stu_addmision_number` AS `far_stu_addmision_number`,`f`.`far_old_student_number` AS `far_old_student_number`,`f`.`far_other_interactions_with_dp` AS `far_other_interactions_with_dp`,`f`.`status` AS `far_status`,`f`.`recode_added_at` AS `far_recode_added_at`,`f`.`recode_added_by` AS `far_recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`father` `f` left join `occupation_type` `ot` on((`f`.`far_occupation_type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gr11_thurunusaviya_view`
--

/*!50001 DROP VIEW IF EXISTS `gr11_thurunusaviya_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gr11_thurunusaviya_view` AS select `gread_11_thurunu_saviya`.`ts11_id` AS `ts11_id`,`gread_11_thurunu_saviya`.`year` AS `year`,`gread_11_thurunu_saviya`.`ts11_pro_id` AS `ts11_pro_id`,`gread_11_thurunu_saviya`.`ts11_pro_supervisor_id` AS `ts11_pro_supervisor_id`,`gread_11_thurunu_saviya`.`ts11_daily_attendance` AS `ts11_daily_attendance`,`gread_11_thurunu_saviya`.`ts11_poya_attendance` AS `ts11_poya_attendance`,`gread_11_thurunu_saviya`.`ts11_recomendation` AS `ts11_recomendation`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_1` AS `ts11_evaluation_cri_1`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_2` AS `ts11_evaluation_cri_2`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_3` AS `ts11_evaluation_cri_3`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_4` AS `ts11_evaluation_cri_4`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_5` AS `ts11_evaluation_cri_5`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_6` AS `ts11_evaluation_cri_6`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_7` AS `ts11_evaluation_cri_7`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_8` AS `ts11_evaluation_cri_8`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_9` AS `ts11_evaluation_cri_9`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_10` AS `ts11_evaluation_cri_10`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_11` AS `ts11_evaluation_cri_11`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_12` AS `ts11_evaluation_cri_12`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_13` AS `ts11_evaluation_cri_13`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_14` AS `ts11_evaluation_cri_14`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_15` AS `ts11_evaluation_cri_15`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_16` AS `ts11_evaluation_cri_16`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_17` AS `ts11_evaluation_cri_17`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_18` AS `ts11_evaluation_cri_18`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_19` AS `ts11_evaluation_cri_19`,`gread_11_thurunu_saviya`.`ts11_evaluation_cri_20` AS `ts11_evaluation_cri_20`,`gread_11_thurunu_saviya`.`status` AS `status`,`gread_11_thurunu_saviya`.`recode_added_at` AS `recode_added_at`,`gread_11_thurunu_saviya`.`recode_added_by` AS `recode_added_by`,`project`.`pro_id` AS `11proj_pro_id`,`project`.`pro_name` AS `11proj_pro_name`,`project`.`pro_discription` AS `11proj_pro_discription`,`project`.`pro_PDF_path` AS `11proj_pro_PDF_path`,`project`.`pro_supervisor_id` AS `11proj_pro_supervisor_id`,`project`.`status` AS `11proj_status`,`project`.`recode_added_at` AS `11proj_recode_added_at`,`project`.`recode_added_by` AS `11proj_recode_added_by`,`teacher`.`tea_id` AS `ts11_tea_id`,`teacher`.`tea_full_name` AS `ts11_tea_full_name`,`teacher`.`tea_name_with_initials` AS `ts11_tea_name_with_initials`,`teacher`.`tea_land_phone_number` AS `ts11_tea_land_phone_number`,`teacher`.`tea_mobile_phone_number` AS `ts11_tea_mobile_phone_number`,`teacher`.`tea_address` AS `ts11_tea_address`,`teacher`.`tea_city` AS `ts11_tea_city`,`teacher`.`lib_mem_id` AS `ts11_lib_mem_id`,`teacher`.`status` AS `ts11_status`,`teacher`.`recode_added_at` AS `ts11_recode_added_at`,`teacher`.`recode_added_by` AS `ts11_recode_added_by` from ((`gread_11_thurunu_saviya` left join `project` on((`gread_11_thurunu_saviya`.`ts11_pro_id` = `project`.`pro_id`))) left join `teacher` on((`project`.`pro_supervisor_id` = `teacher`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `guardian_view`
--

/*!50001 DROP VIEW IF EXISTS `guardian_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guardian_view` AS select `g`.`gur_id` AS `gur_id`,`g`.`gur_name` AS `gur_name`,`g`.`gur_phone_number` AS `gur_phone_number`,`g`.`gur_adress` AS `gur_adress`,`g`.`gur_email_address` AS `gur_email_address`,`g`.`gur_occupation` AS `gur_occupation`,`g`.`gur_occupation _type` AS `gur_occupation _type`,`g`.`gur_office_address` AS `gur_office_address`,`g`.`gur_office_phone_number` AS `gur_office_phone_number`,`g`.`status` AS `status`,`g`.`recode_added_at` AS `recode_added_at`,`g`.`recode_added_by` AS `recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`guardian` `g` left join `occupation_type` `ot` on((`g`.`gur_occupation _type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mother_view`
--

/*!50001 DROP VIEW IF EXISTS `mother_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mother_view` AS select `m`.`mot_id` AS `mot_id`,`m`.`mot_name` AS `mot_name`,`m`.`mot_phone_number` AS `mot_phone_number`,`m`.`mot_adress` AS `mot_adress`,`m`.`mot_email_address` AS `mot_email_address`,`m`.`mot_occupation` AS `mot_occupation`,`m`.`mot_occupation _type` AS `mot_occupation _type`,`m`.`mot_office_address` AS `mot_office_address`,`m`.`mot_office_phone_number` AS `mot_office_phone_number`,`m`.`mot_stu_addmision_number` AS `mot_stu_addmision_number`,`m`.`mot_old_student_number` AS `mot_old_student_number`,`m`.`mot_other_interactions_with_dp` AS `mot_other_interactions_with_dp`,`m`.`status` AS `status`,`m`.`recode_added_at` AS `recode_added_at`,`m`.`recode_added_by` AS `recode_added_by`,`ot`.`occ_type_id` AS `occ_type_id`,`ot`.`occ_type_name` AS `occ_type_name`,`ot`.`occ_type_description` AS `occ_type_description`,`ot`.`status` AS `ot_status`,`ot`.`recode_added_at` AS `ot_recode_added_at`,`ot`.`recode_added_by` AS `ot_recode_added_by` from (`mother` `m` left join `occupation_type` `ot` on((`m`.`mot_occupation _type` = `ot`.`occ_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `np_ts_view`
--

/*!50001 DROP VIEW IF EXISTS `np_ts_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `np_ts_view` AS select `npts`.`np_id` AS `np_id`,`npts`.`year` AS `npts_year`,`npts`.`np_pro1_id` AS `np_pro1_id`,`npts`.`np_pro2_id` AS `np_pro2_id`,`npts`.`np_pro3_id` AS `np_pro3_id`,`npts`.`np_pro4_id` AS `np_pro4_id`,`npts`.`np_daily_attendance` AS `np_daily_attendance`,`npts`.`np_poya_attendance` AS `np_poya_attendance`,`npts`.`np_recomendation` AS `np_recomendation`,`npts`.`np_evaluation_cri_1` AS `np_evaluation_cri_1`,`npts`.`np_evaluation_cri_2` AS `np_evaluation_cri_2`,`npts`.`np_evaluation_cri_3` AS `np_evaluation_cri_3`,`npts`.`np_evaluation_cri_4` AS `np_evaluation_cri_4`,`npts`.`np_evaluation_cri_5` AS `np_evaluation_cri_5`,`npts`.`np_evaluation_cri_6` AS `np_evaluation_cri_6`,`npts`.`np_evaluation_cri_7` AS `np_evaluation_cri_7`,`npts`.`np_evaluation_cri_8` AS `np_evaluation_cri_8`,`npts`.`np_evaluation_cri_9` AS `np_evaluation_cri_9`,`npts`.`np_evaluation_cri_10` AS `np_evaluation_cri_10`,`npts`.`np_evaluation_cri_11` AS `np_evaluation_cri_11`,`npts`.`np_evaluation_cri_12` AS `np_evaluation_cri_12`,`npts`.`np_evaluation_cri_13` AS `np_evaluation_cri_13`,`npts`.`np_evaluation_cri_14` AS `np_evaluation_cri_14`,`npts`.`np_evaluation_cri_15` AS `np_evaluation_cri_15`,`npts`.`np_evaluation_cri_16` AS `np_evaluation_cri_16`,`npts`.`np_evaluation_cri_17` AS `np_evaluation_cri_17`,`npts`.`np_evaluation_cri_18` AS `np_evaluation_cri_18`,`npts`.`np_evaluation_cri_19` AS `np_evaluation_cri_19`,`npts`.`np_evaluation_cri_20` AS `np_evaluation_cri_20`,`npts`.`np_evaluation_cri_21` AS `np_evaluation_cri_21`,`npts`.`np_evaluation_cri_22` AS `np_evaluation_cri_22`,`npts`.`np_evaluation_cri_23` AS `np_evaluation_cri_23`,`npts`.`np_evaluation_cri_24` AS `np_evaluation_cri_24`,`npts`.`np_evaluation_cri_25` AS `np_evaluation_cri_25`,`npts`.`np_evaluation_cri_26` AS `np_evaluation_cri_26`,`npts`.`np_evaluation_cri_27` AS `np_evaluation_cri_27`,`npts`.`np_evaluation_cri_28` AS `np_evaluation_cri_28`,`npts`.`np_evaluation_cri_29` AS `np_evaluation_cri_29`,`npts`.`np_evaluation_cri_30` AS `np_evaluation_cri_30`,`npts`.`np_evaluation_cri_31` AS `np_evaluation_cri_31`,`npts`.`np_evaluation_cri_32` AS `np_evaluation_cri_32`,`npts`.`np_evaluation_cri_33` AS `np_evaluation_cri_33`,`npts`.`np_evaluation_cri_34` AS `np_evaluation_cri_34`,`npts`.`np_evaluation_cri_35` AS `np_evaluation_cri_35`,`npts`.`np_evaluation_cri_36` AS `np_evaluation_cri_36`,`npts`.`np_evaluation_cri_37` AS `np_evaluation_cri_37`,`npts`.`np_evaluation_cri_38` AS `np_evaluation_cri_38`,`npts`.`np_evaluation_cri_39` AS `np_evaluation_cri_39`,`npts`.`np_evaluation_cri_40` AS `np_evaluation_cri_40`,`npts`.`status` AS `npts_status`,`npts`.`recode_added_at` AS `npts_recode_added_at`,`npts`.`recode_added_by` AS `npts_recode_added_by`,`p`.`pro_id` AS `pro_id1`,`p`.`pro_name` AS `pro_name1`,`p`.`pro_discription` AS `pro_discription1`,`p`.`pro_PDF_path` AS `pro_PDF_path1`,`p`.`pro_supervisor_id` AS `pro_supervisor_id1`,`p`.`pro_status` AS `pro_status1`,`p`.`pro_recode_added_at` AS `pro_recode_added_at1`,`p`.`pro_recode_added_by` AS `pro_recode_added_by1`,`p`.`tea_id` AS `tea_id1`,`p`.`tea_full_name` AS `tea_full_name1`,`p`.`tea_name_with_initials` AS `tea_name_with_initials1`,`p`.`tea_land_phone_number` AS `tea_land_phone_number1`,`p`.`tea_mobile_phone_number` AS `tea_mobile_phone_number1`,`p`.`tea_address` AS `tea_address1`,`p`.`tea_city` AS `tea_city1`,`p`.`tea_lib_mem_id` AS `tea_lib_mem_id1`,`p`.`tea_status` AS `tea_status1`,`p`.`tea_recode_added_at` AS `tea_recode_added_at1`,`p`.`tea_recode_added_by` AS `tea_recode_added_by1`,`q`.`pro_id` AS `pro_id2`,`q`.`pro_name` AS `pro_name2`,`q`.`pro_discription` AS `pro_discription2`,`q`.`pro_PDF_path` AS `pro_PDF_path2`,`q`.`pro_supervisor_id` AS `pro_supervisor_id2`,`q`.`pro_status` AS `pro_status2`,`q`.`pro_recode_added_at` AS `pro_recode_added_at2`,`q`.`pro_recode_added_by` AS `pro_recode_added_by2`,`q`.`tea_id` AS `tea_id2`,`q`.`tea_full_name` AS `tea_full_name2`,`q`.`tea_name_with_initials` AS `tea_name_with_initials2`,`q`.`tea_land_phone_number` AS `tea_land_phone_number2`,`q`.`tea_mobile_phone_number` AS `tea_mobile_phone_number2`,`q`.`tea_address` AS `tea_address2`,`q`.`tea_city` AS `tea_city2`,`q`.`tea_lib_mem_id` AS `tea_lib_mem_id2`,`q`.`tea_status` AS `tea_status2`,`q`.`tea_recode_added_at` AS `tea_recode_added_at2`,`q`.`tea_recode_added_by` AS `tea_recode_added_by2`,`r`.`pro_id` AS `pro_id3`,`r`.`pro_name` AS `pro_name3`,`r`.`pro_discription` AS `pro_discription3`,`r`.`pro_PDF_path` AS `pro_PDF_path3`,`r`.`pro_supervisor_id` AS `pro_supervisor_id3`,`r`.`pro_status` AS `pro_status3`,`r`.`pro_recode_added_at` AS `pro_recode_added_at3`,`r`.`pro_recode_added_by` AS `pro_recode_added_by3`,`r`.`tea_id` AS `tea_id3`,`r`.`tea_full_name` AS `tea_full_name3`,`r`.`tea_name_with_initials` AS `tea_name_with_initials3`,`r`.`tea_land_phone_number` AS `tea_land_phone_number3`,`r`.`tea_mobile_phone_number` AS `tea_mobile_phone_number3`,`r`.`tea_address` AS `tea_address3`,`r`.`tea_city` AS `tea_city3`,`r`.`tea_lib_mem_id` AS `tea_lib_mem_id3`,`r`.`tea_status` AS `tea_status3`,`r`.`tea_recode_added_at` AS `tea_recode_added_at3`,`r`.`tea_recode_added_by` AS `tea_recode_added_by3`,`s`.`pro_id` AS `pro_id4`,`s`.`pro_name` AS `pro_name4`,`s`.`pro_discription` AS `pro_discription4`,`s`.`pro_PDF_path` AS `pro_PDF_path4`,`s`.`pro_supervisor_id` AS `pro_supervisor_id4`,`s`.`pro_status` AS `pro_status4`,`s`.`pro_recode_added_at` AS `pro_recode_added_at4`,`s`.`pro_recode_added_by` AS `pro_recode_added_by4`,`s`.`tea_id` AS `tea_id4`,`s`.`tea_full_name` AS `tea_full_name4`,`s`.`tea_name_with_initials` AS `tea_name_with_initials4`,`s`.`tea_land_phone_number` AS `tea_land_phone_number4`,`s`.`tea_mobile_phone_number` AS `tea_mobile_phone_number4`,`s`.`tea_address` AS `tea_address4`,`s`.`tea_city` AS `tea_city4`,`s`.`tea_lib_mem_id` AS `tea_lib_mem_id4`,`s`.`tea_status` AS `tea_status4`,`s`.`tea_recode_added_at` AS `tea_recode_added_at4`,`s`.`tea_recode_added_by` AS `tea_recode_added_by4` from ((((`nirmathru_pranama_thurunu_saviya` `npts` left join `project_view` `p` on((`npts`.`np_pro1_id` = `p`.`pro_id`))) left join `project_view` `q` on((`npts`.`np_pro2_id` = `q`.`pro_id`))) left join `project_view` `r` on((`npts`.`np_pro3_id` = `r`.`pro_id`))) left join `project_view` `s` on((`npts`.`np_pro4_id` = `r`.`pro_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prefect_report_view`
--

/*!50001 DROP VIEW IF EXISTS `prefect_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prefect_report_view` AS select `pr`.`prf_repo_id` AS `prf_repo_id`,`pr`.`prf_is_prf` AS `prf_is_prf`,`pr`.`prf_section_id` AS `prf_section_id`,`pr`.`prf_group_id` AS `prf_group_id`,`pr`.`prf_possition_id` AS `prf_possition_id`,`pr`.`prf_sunday_attendence` AS `prf_sunday_attendence`,`pr`.`prf_poyaday_attendence` AS `prf_poyaday_attendence`,`pr`.`pfr_meeting_attendance` AS `pfr_meeting_attendance`,`pr`.`prf_extra_work_attendance` AS `prf_extra_work_attendance`,`pr`.`prf_evaluation_cri_1` AS `prf_evaluation_cri_1`,`pr`.`prf_evaluation_cri_2` AS `prf_evaluation_cri_2`,`pr`.`prf_evaluation_cri_3` AS `prf_evaluation_cri_3`,`pr`.`prf_evaluation_cri_4` AS `prf_evaluation_cri_4`,`pr`.`prf_evaluation_cri_5` AS `prf_evaluation_cri_5`,`pr`.`prf_evaluation_cri_6` AS `prf_evaluation_cri_6`,`pr`.`prf_evaluation_cri_7` AS `prf_evaluation_cri_7`,`pr`.`prf_evaluation_cri_8` AS `prf_evaluation_cri_8`,`pr`.`prf_evaluation_cri_9` AS `prf_evaluation_cri_9`,`pr`.`prf_evaluation_cri_10` AS `prf_evaluation_cri_10`,`pr`.`prf_evaluation_cri_11` AS `prf_evaluation_cri_11`,`pr`.`prf_evaluation_cri_12` AS `prf_evaluation_cri_12`,`pr`.`prf_evaluation_cri_13` AS `prf_evaluation_cri_13`,`pr`.`prf_evaluation_cri_14` AS `prf_evaluation_cri_14`,`pr`.`prf_evaluation_cri_15` AS `prf_evaluation_cri_15`,`pr`.`prf_evaluation_cri_16` AS `prf_evaluation_cri_16`,`pr`.`prf_evaluation_cri_17` AS `prf_evaluation_cri_17`,`pr`.`prf_evaluation_cri_18` AS `prf_evaluation_cri_18`,`pr`.`prf_evaluation_cri_19` AS `prf_evaluation_cri_19`,`pr`.`prf_evaluation_cri_20` AS `prf_evaluation_cri_20`,`pr`.`status` AS `pr_status`,`pr`.`recode_added_at` AS `pr_recode_added_at`,`pr`.`recode_added_by` AS `pr_recode_added_by`,`ps`.`sec_id` AS `sec_id`,`ps`.`sec_name` AS `sec_name`,`ps`.`status` AS `ps_status`,`ps`.`recode_added_at` AS `ps_recode_added_at`,`ps`.`recode_added_by` AS `ps_recode_added_by`,`pos`.`pos_id` AS `pos_id`,`pos`.`pos_name` AS `pos_name`,`pos`.`status` AS `pos_status`,`pos`.`recode_added_at` AS `pos_recode_added_at`,`pos`.`recode_added_by` AS `pos_recode_added_by`,`pgrp`.`grp_id` AS `grp_id`,`pgrp`.`grp_name` AS `grp_name`,`pgrp`.`status` AS `status`,`pgrp`.`recode_added_at` AS `recode_added_at`,`pgrp`.`recode_added_by` AS `recode_added_by` from (((`prefect_report` `pr` left join `prefect_section` `ps` on((`pr`.`prf_section_id` = `ps`.`sec_id`))) left join `prefect_possition` `pos` on((`pr`.`prf_possition_id` = `pos`.`pos_id`))) left join `prefect_group` `pgrp` on((`pr`.`prf_group_id` = `pgrp`.`grp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prf_tal_view_by_stu_id`
--

/*!50001 DROP VIEW IF EXISTS `prf_tal_view_by_stu_id`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prf_tal_view_by_stu_id` AS select `student_class`.`year` AS `sc_year`,`student_class`.`stu_id` AS `sc_stu_id`,`student_class`.`clz_id` AS `sc_clz_id`,`prf_talant_view`.`year` AS `year`,`prf_talant_view`.`prf_repo_id` AS `prf_repo_id`,`prf_talant_view`.`prf_tal_id` AS `prf_tal_id`,`prf_talant_view`.`prf_tal_status` AS `prf_tal_status`,`prf_talant_view`.`prf_tal_recode_added_at` AS `prf_tal_recode_added_at`,`prf_talant_view`.`prf_tal_recode_added_by` AS `prf_tal_recode_added_by`,`prf_talant_view`.`tal_id` AS `tal_id`,`prf_talant_view`.`tal_name` AS `tal_name`,`prf_talant_view`.`tal_status` AS `tal_status`,`prf_talant_view`.`tal_recode_added_at` AS `tal_recode_added_at`,`prf_talant_view`.`tal_recode_added_by` AS `tal_recode_added_by` from ((`student_class` left join `prefect_report` on((`student_class`.`prefect_report_id` = `prefect_report`.`prf_repo_id`))) left join `prf_talant_view` on((`prefect_report`.`prf_repo_id` = `prf_talant_view`.`prf_repo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prf_talant_view`
--

/*!50001 DROP VIEW IF EXISTS `prf_talant_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prf_talant_view` AS select `prefect_talant`.`year` AS `year`,`prefect_talant`.`prf_repo_id` AS `prf_repo_id`,`prefect_talant`.`prf_tal_id` AS `prf_tal_id`,`prefect_talant`.`status` AS `prf_tal_status`,`prefect_talant`.`recode_added_at` AS `prf_tal_recode_added_at`,`prefect_talant`.`recode_added_by` AS `prf_tal_recode_added_by`,`talants`.`tal_id` AS `tal_id`,`talants`.`tal_name` AS `tal_name`,`talants`.`status` AS `tal_status`,`talants`.`recode_added_at` AS `tal_recode_added_at`,`talants`.`recode_added_by` AS `tal_recode_added_by` from (`prefect_talant` left join `talants` on((`prefect_talant`.`prf_tal_id` = `talants`.`tal_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `project_view`
--

/*!50001 DROP VIEW IF EXISTS `project_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `project_view` AS select `project`.`pro_id` AS `pro_id`,`project`.`pro_name` AS `pro_name`,`project`.`pro_discription` AS `pro_discription`,`project`.`pro_PDF_path` AS `pro_PDF_path`,`project`.`pro_supervisor_id` AS `pro_supervisor_id`,`project`.`status` AS `pro_status`,`project`.`recode_added_at` AS `pro_recode_added_at`,`project`.`recode_added_by` AS `pro_recode_added_by`,`teacher`.`tea_id` AS `tea_id`,`teacher`.`tea_full_name` AS `tea_full_name`,`teacher`.`tea_name_with_initials` AS `tea_name_with_initials`,`teacher`.`tea_land_phone_number` AS `tea_land_phone_number`,`teacher`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`teacher`.`tea_address` AS `tea_address`,`teacher`.`tea_city` AS `tea_city`,`teacher`.`lib_mem_id` AS `tea_lib_mem_id`,`teacher`.`status` AS `tea_status`,`teacher`.`recode_added_at` AS `tea_recode_added_at`,`teacher`.`recode_added_by` AS `tea_recode_added_by` from (`project` left join `teacher` on((`project`.`pro_supervisor_id` = `teacher`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `school_view`
--

/*!50001 DROP VIEW IF EXISTS `school_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `school_view` AS select `student_school`.`stu_id` AS `stu_id`,`student_school`.`sch_id` AS `stu_sch_id`,`student_school`.`attend_year` AS `attend_year`,`student_school`.`leave_year` AS `leave_year`,`student_school`.`status` AS `stu_sch_status`,`student_school`.`recode_added_at` AS `stu_sch_recode_added_at`,`student_school`.`recode_added_by` AS `stu_sch_recode_added_by`,`school`.`sch_id` AS `sch_sch_id`,`school`.`sch_name` AS `sch_name`,`school`.`sch_situated_in` AS `sch_situated_in`,`school`.`status` AS `sch_status`,`school`.`recode_added_at` AS `sch_recode_added_at`,`school`.`recode_added_by` AS `sch_recode_added_by` from (`student_school` left join `school` on((`student_school`.`sch_id` = `school`.`sch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stu_details_view`
--

/*!50001 DROP VIEW IF EXISTS `stu_details_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stu_details_view` AS select `s`.`stu_id` AS `stu_id`,`s`.`stu_admission_number` AS `stu_admission_number`,`s`.`stu_full_name` AS `stu_full_name`,`s`.`stu_name_with_initisals` AS `stu_name_with_initisals`,`s`.`stu_gender` AS `stu_gender`,`s`.`stu_date_of_birth` AS `stu_date_of_birth`,`s`.`stu_land_phone_number` AS `stu_land_phone_number`,`s`.`stu_mobile_number` AS `stu_mobile_number`,`s`.`stu_address` AS `stu_address`,`s`.`stu_city` AS `stu_city`,`s`.`distance_to_home` AS `distance_to_home`,`s`.`father_id` AS `father_id`,`s`.`mother_id` AS `mother_id`,`s`.`guardian_id` AS `guardian_id`,`s`.`stu_email_address` AS `stu_email_address`,`s`.`stu_nic_number` AS `stu_nic_number`,`s`.`ts_grade9_id` AS `ts_grade9_id`,`s`.`ts_grade10_id` AS `ts_grade10_id`,`s`.`ts_grade11_id` AS `ts_grade11_id`,`s`.`ts_np_id` AS `ts_np_id`,`s`.`lib_mem_id` AS `lib_mem_id`,`s`.`status` AS `status`,`s`.`recode_added_at` AS `recode_added_at`,`s`.`recode_added_by` AS `recode_added_by`,`fv`.`far_id` AS `far_id`,`fv`.`far_name` AS `far_name`,`fv`.`far_phone_number` AS `far_phone_number`,`fv`.`far_adress` AS `far_adress`,`fv`.`far_email_address` AS `far_email_address`,`fv`.`far_occupation` AS `far_occupation`,`fv`.`far_occupation _type` AS `far_occupation _type`,`fv`.`far_office_address` AS `far_office_address`,`fv`.`far_office_phone_number` AS `far_office_phone_number`,`fv`.`far_stu_addmision_number` AS `far_stu_addmision_number`,`fv`.`far_old_student_number` AS `far_old_student_number`,`fv`.`far_other_interactions_with_dp` AS `far_other_interactions_with_dp`,`fv`.`far_status` AS `far_status`,`fv`.`far_recode_added_at` AS `far_recode_added_at`,`fv`.`far_recode_added_by` AS `far_recode_added_by`,`fv`.`occ_type_id` AS `f_occ_type_id`,`fv`.`occ_type_name` AS `f_occ_type_name`,`fv`.`occ_type_description` AS `f_occ_type_description`,`fv`.`ot_status` AS `f_ot_status`,`fv`.`ot_recode_added_at` AS `f_ot_recode_added_at`,`fv`.`ot_recode_added_by` AS `f_ot_recode_added_by`,`mv`.`mot_id` AS `mot_id`,`mv`.`mot_name` AS `mot_name`,`mv`.`mot_phone_number` AS `mot_phone_number`,`mv`.`mot_adress` AS `mot_adress`,`mv`.`mot_email_address` AS `mot_email_address`,`mv`.`mot_occupation` AS `mot_occupation`,`mv`.`mot_occupation _type` AS `mot_occupation _type`,`mv`.`mot_office_address` AS `mot_office_address`,`mv`.`mot_office_phone_number` AS `mot_office_phone_number`,`mv`.`mot_stu_addmision_number` AS `mot_stu_addmision_number`,`mv`.`mot_old_student_number` AS `mot_old_student_number`,`mv`.`mot_other_interactions_with_dp` AS `mot_other_interactions_with_dp`,`mv`.`status` AS `mv_status`,`mv`.`recode_added_at` AS `mv_recode_added_at`,`mv`.`recode_added_by` AS `mv_recode_added_by`,`mv`.`occ_type_id` AS `mv_occ_type_id`,`mv`.`occ_type_name` AS `mv_occ_type_name`,`mv`.`occ_type_description` AS `mv_occ_type_description`,`mv`.`ot_status` AS `mv_ot_status`,`mv`.`ot_recode_added_at` AS `mv_ot_recode_added_at`,`mv`.`ot_recode_added_by` AS `mv_ot_recode_added_by`,`gv`.`gur_id` AS `gur_id`,`gv`.`gur_name` AS `gur_name`,`gv`.`gur_phone_number` AS `gur_phone_number`,`gv`.`gur_adress` AS `gur_adress`,`gv`.`gur_email_address` AS `gur_email_address`,`gv`.`gur_occupation` AS `gur_occupation`,`gv`.`gur_occupation _type` AS `gur_occupation _type`,`gv`.`gur_office_address` AS `gur_office_address`,`gv`.`gur_office_phone_number` AS `gur_office_phone_number`,`gv`.`status` AS `gv_status`,`gv`.`recode_added_at` AS `gv_recode_added_at`,`gv`.`recode_added_by` AS `gv_recode_added_by`,`gv`.`occ_type_id` AS `gv_occ_type_id`,`gv`.`occ_type_name` AS `gv_occ_type_name`,`gv`.`occ_type_description` AS `gv_occ_type_description`,`gv`.`ot_status` AS `gv_ot_status`,`gv`.`ot_recode_added_at` AS `gv_ot_recode_added_at`,`gv`.`ot_recode_added_by` AS `gv_ot_recode_added_by`,`g9ts`.`ts9_id` AS `ts9_id`,`g9ts`.`year` AS `g9ts_year`,`g9ts`.`ts9_group` AS `ts9_group`,`g9ts`.`ts9_daily_attendance` AS `ts9_daily_attendance`,`g9ts`.`ts9_poya_attendance` AS `ts9_poya_attendance`,`g9ts`.`ts9_recomendation` AS `ts9_recomendation`,`g9ts`.`ts9_evaluation_cri_1` AS `ts9_evaluation_cri_1`,`g9ts`.`ts9_evaluation_cri_2` AS `ts9_evaluation_cri_2`,`g9ts`.`ts9_evaluation_cri_3` AS `ts9_evaluation_cri_3`,`g9ts`.`ts9_evaluation_cri_4` AS `ts9_evaluation_cri_4`,`g9ts`.`ts9_evaluation_cri_5` AS `ts9_evaluation_cri_5`,`g9ts`.`ts9_evaluation_cri_6` AS `ts9_evaluation_cri_6`,`g9ts`.`ts9_evaluation_cri_7` AS `ts9_evaluation_cri_7`,`g9ts`.`ts9_evaluation_cri_8` AS `ts9_evaluation_cri_8`,`g9ts`.`ts9_evaluation_cri_9` AS `ts9_evaluation_cri_9`,`g9ts`.`ts9_evaluation_cri_10` AS `ts9_evaluation_cri_10`,`g9ts`.`ts9_evaluation_cri_11` AS `ts9_evaluation_cri_11`,`g9ts`.`ts9_evaluation_cri_12` AS `ts9_evaluation_cri_12`,`g9ts`.`ts9_evaluation_cri_13` AS `ts9_evaluation_cri_13`,`g9ts`.`ts9_evaluation_cri_14` AS `ts9_evaluation_cri_14`,`g9ts`.`ts9_evaluation_cri_15` AS `ts9_evaluation_cri_15`,`g9ts`.`ts9_evaluation_cri_16` AS `ts9_evaluation_cri_16`,`g9ts`.`ts9_evaluation_cri_17` AS `ts9_evaluation_cri_17`,`g9ts`.`ts9_evaluation_cri_18` AS `ts9_evaluation_cri_18`,`g9ts`.`ts9_evaluation_cri_19` AS `ts9_evaluation_cri_19`,`g9ts`.`ts9_evaluation_cri_20` AS `ts9_evaluation_cri_20`,`g9ts`.`ts9_evaluation_cri_21` AS `ts9_evaluation_cri_21`,`g9ts`.`ts9_evaluation_cri_22` AS `ts9_evaluation_cri_22`,`g9ts`.`ts9_evaluation_cri_23` AS `ts9_evaluation_cri_23`,`g9ts`.`ts9_evaluation_cri_24` AS `ts9_evaluation_cri_24`,`g9ts`.`ts9_evaluation_cri_25` AS `ts9_evaluation_cri_25`,`g9ts`.`ts9_evaluation_cri_26` AS `ts9_evaluation_cri_26`,`g9ts`.`ts9_evaluation_cri_27` AS `ts9_evaluation_cri_27`,`g9ts`.`ts9_evaluation_cri_28` AS `ts9_evaluation_cri_28`,`g9ts`.`ts9_evaluation_cri_29` AS `ts9_evaluation_cri_29`,`g9ts`.`ts9_evaluation_cri_30` AS `ts9_evaluation_cri_30`,`g9ts`.`status` AS `g9ts_status`,`g9ts`.`recode_added_at` AS `g9ts_recode_added_at`,`g9ts`.`recode_added_by` AS `g9ts_recode_added_by`,`g10ts`.`ts10_id` AS `ts10_id`,`g10ts`.`year` AS `g10ts_year`,`g10ts`.`ts10_group` AS `ts10_group`,`g10ts`.`ts10_daily_attendance` AS `ts10_daily_attendance`,`g10ts`.`ts10_poya_attendance` AS `ts10_poya_attendance`,`g10ts`.`ts10_recomendation` AS `ts10_recomendation`,`g10ts`.`ts10_evaluation_cri_1` AS `ts10_evaluation_cri_1`,`g10ts`.`ts10_evaluation_cri_2` AS `ts10_evaluation_cri_2`,`g10ts`.`ts10_evaluation_cri_3` AS `ts10_evaluation_cri_3`,`g10ts`.`ts10_evaluation_cri_4` AS `ts10_evaluation_cri_4`,`g10ts`.`ts10_evaluation_cri_5` AS `ts10_evaluation_cri_5`,`g10ts`.`ts10_evaluation_cri_6` AS `ts10_evaluation_cri_6`,`g10ts`.`ts10_evaluation_cri_7` AS `ts10_evaluation_cri_7`,`g10ts`.`ts10_evaluation_cri_8` AS `ts10_evaluation_cri_8`,`g10ts`.`ts10_evaluation_cri_9` AS `ts10_evaluation_cri_9`,`g10ts`.`ts10_evaluation_cri_10` AS `ts10_evaluation_cri_10`,`g10ts`.`ts10_evaluation_cri_11` AS `ts10_evaluation_cri_11`,`g10ts`.`ts10_evaluation_cri_12` AS `ts10_evaluation_cri_12`,`g10ts`.`ts10_evaluation_cri_13` AS `ts10_evaluation_cri_13`,`g10ts`.`ts10_evaluation_cri_14` AS `ts10_evaluation_cri_14`,`g10ts`.`ts10_evaluation_cri_15` AS `ts10_evaluation_cri_15`,`g10ts`.`ts10_evaluation_cri_16` AS `ts10_evaluation_cri_16`,`g10ts`.`ts10_evaluation_cri_17` AS `ts10_evaluation_cri_17`,`g10ts`.`ts10_evaluation_cri_18` AS `ts10_evaluation_cri_18`,`g10ts`.`ts10_evaluation_cri_19` AS `ts10_evaluation_cri_19`,`g10ts`.`ts10_evaluation_cri_20` AS `ts10_evaluation_cri_20`,`g10ts`.`ts10_evaluation_cri_21` AS `ts10_evaluation_cri_21`,`g10ts`.`ts10_evaluation_cri_22` AS `ts10_evaluation_cri_22`,`g10ts`.`ts10_evaluation_cri_23` AS `ts10_evaluation_cri_23`,`g10ts`.`ts10_evaluation_cri_24` AS `ts10_evaluation_cri_24`,`g10ts`.`ts10_evaluation_cri_25` AS `ts10_evaluation_cri_25`,`g10ts`.`ts10_evaluation_cri_26` AS `ts10_evaluation_cri_26`,`g10ts`.`ts10_evaluation_cri_27` AS `ts10_evaluation_cri_27`,`g10ts`.`ts10_evaluation_cri_28` AS `ts10_evaluation_cri_28`,`g10ts`.`ts10_evaluation_cri_29` AS `ts10_evaluation_cri_29`,`g10ts`.`ts10_evaluation_cri_30` AS `ts10_evaluation_cri_30`,`g10ts`.`status` AS `g10ts_status`,`g10ts`.`recode_added_at` AS `g10ts_recode_added_at`,`g10ts`.`recode_added_by` AS `g10ts_recode_added_by`,`gr11ts`.`ts11_id` AS `ts11_id`,`gr11ts`.`year` AS `ts11_year`,`gr11ts`.`ts11_pro_id` AS `ts11_pro_id`,`gr11ts`.`ts11_pro_supervisor_id` AS `ts11_pro_supervisor_id`,`gr11ts`.`ts11_daily_attendance` AS `ts11_daily_attendance`,`gr11ts`.`ts11_poya_attendance` AS `ts11_poya_attendance`,`gr11ts`.`ts11_recomendation` AS `ts11_recomendation`,`gr11ts`.`ts11_evaluation_cri_1` AS `ts11_evaluation_cri_1`,`gr11ts`.`ts11_evaluation_cri_2` AS `ts11_evaluation_cri_2`,`gr11ts`.`ts11_evaluation_cri_3` AS `ts11_evaluation_cri_3`,`gr11ts`.`ts11_evaluation_cri_4` AS `ts11_evaluation_cri_4`,`gr11ts`.`ts11_evaluation_cri_5` AS `ts11_evaluation_cri_5`,`gr11ts`.`ts11_evaluation_cri_6` AS `ts11_evaluation_cri_6`,`gr11ts`.`ts11_evaluation_cri_7` AS `ts11_evaluation_cri_7`,`gr11ts`.`ts11_evaluation_cri_8` AS `ts11_evaluation_cri_8`,`gr11ts`.`ts11_evaluation_cri_9` AS `ts11_evaluation_cri_9`,`gr11ts`.`ts11_evaluation_cri_10` AS `ts11_evaluation_cri_10`,`gr11ts`.`ts11_evaluation_cri_11` AS `ts11_evaluation_cri_11`,`gr11ts`.`ts11_evaluation_cri_12` AS `ts11_evaluation_cri_12`,`gr11ts`.`ts11_evaluation_cri_13` AS `ts11_evaluation_cri_13`,`gr11ts`.`ts11_evaluation_cri_14` AS `ts11_evaluation_cri_14`,`gr11ts`.`ts11_evaluation_cri_15` AS `ts11_evaluation_cri_15`,`gr11ts`.`ts11_evaluation_cri_16` AS `ts11_evaluation_cri_16`,`gr11ts`.`ts11_evaluation_cri_17` AS `ts11_evaluation_cri_17`,`gr11ts`.`ts11_evaluation_cri_18` AS `ts11_evaluation_cri_18`,`gr11ts`.`ts11_evaluation_cri_19` AS `ts11_evaluation_cri_19`,`gr11ts`.`ts11_evaluation_cri_20` AS `ts11_evaluation_cri_20`,`gr11ts`.`status` AS `ts11_status`,`gr11ts`.`recode_added_at` AS `ts11_recode_added_at`,`gr11ts`.`recode_added_by` AS `ts11_recode_added_by`,`gr11ts`.`11proj_pro_id` AS `11proj_pro_id`,`gr11ts`.`11proj_pro_name` AS `11proj_pro_name`,`gr11ts`.`11proj_pro_discription` AS `11proj_pro_discription`,`gr11ts`.`11proj_pro_PDF_path` AS `11proj_pro_PDF_path`,`gr11ts`.`11proj_pro_supervisor_id` AS `11proj_pro_supervisor_id`,`gr11ts`.`11proj_status` AS `11proj_status`,`gr11ts`.`11proj_recode_added_at` AS `11proj_recode_added_at`,`gr11ts`.`11proj_recode_added_by` AS `11proj_recode_added_by`,`gr11ts`.`ts11_tea_id` AS `ts11_tea_id`,`gr11ts`.`ts11_tea_full_name` AS `ts11_tea_full_name`,`gr11ts`.`ts11_tea_name_with_initials` AS `ts11_tea_name_with_initials`,`gr11ts`.`ts11_tea_land_phone_number` AS `ts11_tea_land_phone_number`,`gr11ts`.`ts11_tea_mobile_phone_number` AS `ts11_tea_mobile_phone_number`,`gr11ts`.`ts11_tea_address` AS `ts11_tea_address`,`gr11ts`.`ts11_tea_city` AS `ts11_tea_city`,`gr11ts`.`ts11_lib_mem_id` AS `ts11_lib_mem_id`,`gr11ts`.`ts11_status` AS `ts11_tea_status`,`gr11ts`.`ts11_recode_added_at` AS `ts11_tea_recode_added_at`,`gr11ts`.`ts11_recode_added_by` AS `ts11_tea_recode_added_by`,`npts`.`np_id` AS `np_id`,`npts`.`npts_year` AS `npts_year`,`npts`.`np_pro1_id` AS `np_pro1_id`,`npts`.`np_pro2_id` AS `np_pro2_id`,`npts`.`np_pro3_id` AS `np_pro3_id`,`npts`.`np_pro4_id` AS `np_pro4_id`,`npts`.`np_daily_attendance` AS `np_daily_attendance`,`npts`.`np_poya_attendance` AS `np_poya_attendance`,`npts`.`np_recomendation` AS `np_recomendation`,`npts`.`np_evaluation_cri_1` AS `np_evaluation_cri_1`,`npts`.`np_evaluation_cri_2` AS `np_evaluation_cri_2`,`npts`.`np_evaluation_cri_3` AS `np_evaluation_cri_3`,`npts`.`np_evaluation_cri_4` AS `np_evaluation_cri_4`,`npts`.`np_evaluation_cri_5` AS `np_evaluation_cri_5`,`npts`.`np_evaluation_cri_6` AS `np_evaluation_cri_6`,`npts`.`np_evaluation_cri_7` AS `np_evaluation_cri_7`,`npts`.`np_evaluation_cri_8` AS `np_evaluation_cri_8`,`npts`.`np_evaluation_cri_9` AS `np_evaluation_cri_9`,`npts`.`np_evaluation_cri_10` AS `np_evaluation_cri_10`,`npts`.`np_evaluation_cri_11` AS `np_evaluation_cri_11`,`npts`.`np_evaluation_cri_12` AS `np_evaluation_cri_12`,`npts`.`np_evaluation_cri_13` AS `np_evaluation_cri_13`,`npts`.`np_evaluation_cri_14` AS `np_evaluation_cri_14`,`npts`.`np_evaluation_cri_15` AS `np_evaluation_cri_15`,`npts`.`np_evaluation_cri_16` AS `np_evaluation_cri_16`,`npts`.`np_evaluation_cri_17` AS `np_evaluation_cri_17`,`npts`.`np_evaluation_cri_18` AS `np_evaluation_cri_18`,`npts`.`np_evaluation_cri_19` AS `np_evaluation_cri_19`,`npts`.`np_evaluation_cri_20` AS `np_evaluation_cri_20`,`npts`.`np_evaluation_cri_21` AS `np_evaluation_cri_21`,`npts`.`np_evaluation_cri_22` AS `np_evaluation_cri_22`,`npts`.`np_evaluation_cri_23` AS `np_evaluation_cri_23`,`npts`.`np_evaluation_cri_24` AS `np_evaluation_cri_24`,`npts`.`np_evaluation_cri_25` AS `np_evaluation_cri_25`,`npts`.`np_evaluation_cri_26` AS `np_evaluation_cri_26`,`npts`.`np_evaluation_cri_27` AS `np_evaluation_cri_27`,`npts`.`np_evaluation_cri_28` AS `np_evaluation_cri_28`,`npts`.`np_evaluation_cri_29` AS `np_evaluation_cri_29`,`npts`.`np_evaluation_cri_30` AS `np_evaluation_cri_30`,`npts`.`np_evaluation_cri_31` AS `np_evaluation_cri_31`,`npts`.`np_evaluation_cri_32` AS `np_evaluation_cri_32`,`npts`.`np_evaluation_cri_33` AS `np_evaluation_cri_33`,`npts`.`np_evaluation_cri_34` AS `np_evaluation_cri_34`,`npts`.`np_evaluation_cri_35` AS `np_evaluation_cri_35`,`npts`.`np_evaluation_cri_36` AS `np_evaluation_cri_36`,`npts`.`np_evaluation_cri_37` AS `np_evaluation_cri_37`,`npts`.`np_evaluation_cri_38` AS `np_evaluation_cri_38`,`npts`.`np_evaluation_cri_39` AS `np_evaluation_cri_39`,`npts`.`np_evaluation_cri_40` AS `np_evaluation_cri_40`,`npts`.`npts_status` AS `npts_status`,`npts`.`npts_recode_added_at` AS `npts_recode_added_at`,`npts`.`npts_recode_added_by` AS `npts_recode_added_by`,`npts`.`pro_id1` AS `pro_id1`,`npts`.`pro_name1` AS `pro_name1`,`npts`.`pro_discription1` AS `pro_discription1`,`npts`.`pro_PDF_path1` AS `pro_PDF_path1`,`npts`.`pro_supervisor_id1` AS `pro_supervisor_id1`,`npts`.`pro_status1` AS `pro_status1`,`npts`.`pro_recode_added_at1` AS `pro_recode_added_at1`,`npts`.`pro_recode_added_by1` AS `pro_recode_added_by1`,`npts`.`tea_id1` AS `tea_id1`,`npts`.`tea_full_name1` AS `tea_full_name1`,`npts`.`tea_name_with_initials1` AS `tea_name_with_initials1`,`npts`.`tea_land_phone_number1` AS `tea_land_phone_number1`,`npts`.`tea_mobile_phone_number1` AS `tea_mobile_phone_number1`,`npts`.`tea_address1` AS `tea_address1`,`npts`.`tea_city1` AS `tea_city1`,`npts`.`tea_lib_mem_id1` AS `tea_lib_mem_id1`,`npts`.`tea_status1` AS `tea_status1`,`npts`.`tea_recode_added_at1` AS `tea_recode_added_at1`,`npts`.`tea_recode_added_by1` AS `tea_recode_added_by1`,`npts`.`pro_id2` AS `pro_id2`,`npts`.`pro_name2` AS `pro_name2`,`npts`.`pro_discription2` AS `pro_discription2`,`npts`.`pro_PDF_path2` AS `pro_PDF_path2`,`npts`.`pro_supervisor_id2` AS `pro_supervisor_id2`,`npts`.`pro_status2` AS `pro_status2`,`npts`.`pro_recode_added_at2` AS `pro_recode_added_at2`,`npts`.`pro_recode_added_by2` AS `pro_recode_added_by2`,`npts`.`tea_id2` AS `tea_id2`,`npts`.`tea_full_name2` AS `tea_full_name2`,`npts`.`tea_name_with_initials2` AS `tea_name_with_initials2`,`npts`.`tea_land_phone_number2` AS `tea_land_phone_number2`,`npts`.`tea_mobile_phone_number2` AS `tea_mobile_phone_number2`,`npts`.`tea_address2` AS `tea_address2`,`npts`.`tea_city2` AS `tea_city2`,`npts`.`tea_lib_mem_id2` AS `tea_lib_mem_id2`,`npts`.`tea_status2` AS `tea_status2`,`npts`.`tea_recode_added_at2` AS `tea_recode_added_at2`,`npts`.`tea_recode_added_by2` AS `tea_recode_added_by2`,`npts`.`pro_id3` AS `pro_id3`,`npts`.`pro_name3` AS `pro_name3`,`npts`.`pro_discription3` AS `pro_discription3`,`npts`.`pro_PDF_path3` AS `pro_PDF_path3`,`npts`.`pro_supervisor_id3` AS `pro_supervisor_id3`,`npts`.`pro_status3` AS `pro_status3`,`npts`.`pro_recode_added_at3` AS `pro_recode_added_at3`,`npts`.`pro_recode_added_by3` AS `pro_recode_added_by3`,`npts`.`tea_id3` AS `tea_id3`,`npts`.`tea_full_name3` AS `tea_full_name3`,`npts`.`tea_name_with_initials3` AS `tea_name_with_initials3`,`npts`.`tea_land_phone_number3` AS `tea_land_phone_number3`,`npts`.`tea_mobile_phone_number3` AS `tea_mobile_phone_number3`,`npts`.`tea_address3` AS `tea_address3`,`npts`.`tea_city3` AS `tea_city3`,`npts`.`tea_lib_mem_id3` AS `tea_lib_mem_id3`,`npts`.`tea_status3` AS `tea_status3`,`npts`.`tea_recode_added_at3` AS `tea_recode_added_at3`,`npts`.`tea_recode_added_by3` AS `tea_recode_added_by3`,`npts`.`pro_id4` AS `pro_id4`,`npts`.`pro_name4` AS `pro_name4`,`npts`.`pro_discription4` AS `pro_discription4`,`npts`.`pro_PDF_path4` AS `pro_PDF_path4`,`npts`.`pro_supervisor_id4` AS `pro_supervisor_id4`,`npts`.`pro_status4` AS `pro_status4`,`npts`.`pro_recode_added_at4` AS `pro_recode_added_at4`,`npts`.`pro_recode_added_by4` AS `pro_recode_added_by4`,`npts`.`tea_id4` AS `tea_id4`,`npts`.`tea_full_name4` AS `tea_full_name4`,`npts`.`tea_name_with_initials4` AS `tea_name_with_initials4`,`npts`.`tea_land_phone_number4` AS `tea_land_phone_number4`,`npts`.`tea_mobile_phone_number4` AS `tea_mobile_phone_number4`,`npts`.`tea_address4` AS `tea_address4`,`npts`.`tea_city4` AS `tea_city4`,`npts`.`tea_lib_mem_id4` AS `tea_lib_mem_id4`,`npts`.`tea_status4` AS `tea_status4`,`npts`.`tea_recode_added_at4` AS `tea_recode_added_at4`,`npts`.`tea_recode_added_by4` AS `tea_recode_added_by4` from (((((((`student` `s` left join `farther_view` `fv` on((`s`.`father_id` = `fv`.`far_id`))) left join `mother_view` `mv` on((`s`.`mother_id` = `mv`.`mot_id`))) left join `guardian_view` `gv` on((`s`.`guardian_id` = `gv`.`gur_id`))) left join `grade_9_thurunu_saviya` `g9ts` on((`s`.`ts_grade9_id` = `g9ts`.`ts9_id`))) left join `gread_10_thurunu_saviya` `g10ts` on((`s`.`ts_grade10_id` = `g10ts`.`ts10_id`))) left join `gr11_thurunusaviya_view` `gr11ts` on((`s`.`ts_grade11_id` = `gr11ts`.`ts11_id`))) left join `np_ts_view` `npts` on((`s`.`ts_np_id` = `npts`.`np_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_class_view`
--

/*!50001 DROP VIEW IF EXISTS `student_class_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_class_view` AS select `sc`.`year` AS `sc_year`,`sc`.`stu_id` AS `sc_stu_id`,`sc`.`clz_id` AS `sc_clz_id`,`sc`.`clz_report_id` AS `sc_clz_report_id`,`sc`.`prefect_report_id` AS `sc_prefect_report_id`,`sc`.`status` AS `sc_status`,`sc`.`recode_added_at` AS `sc_recode_added_at`,`sc`.`recode_added_by` AS `sc_recode_added_by`,`tcv`.`c_clz_id` AS `c_clz_id`,`tcv`.`c_clz_grade` AS `c_clz_grade`,`tcv`.`c_clz_class` AS `c_clz_class`,`tcv`.`c_status` AS `c_status`,`tcv`.`c_recode_added_at` AS `c_recode_added_at`,`tcv`.`c_recode_added_by` AS `c_recode_added_by`,`tcv`.`tc_year` AS `tc_year`,`tcv`.`tc_tec_id` AS `tc_tec_id`,`tcv`.`tc_clz_id` AS `tc_clz_id`,`tcv`.`tc_status` AS `tc_status`,`tcv`.`tc_recode_added_at` AS `tc_recode_added_at`,`tcv`.`tc_recode_added_by` AS `tc_recode_added_by`,`tcv`.`t_tea_id` AS `t_tea_id`,`tcv`.`tea_full_name` AS `tea_full_name`,`tcv`.`tea_name_with_initials` AS `tea_name_with_initials`,`tcv`.`tea_land_phone_number` AS `tea_land_phone_number`,`tcv`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`tcv`.`tea_address` AS `tea_address`,`tcv`.`tea_city` AS `tea_city`,`tcv`.`lib_mem_id` AS `lib_mem_id`,`tcv`.`t_status` AS `t_status`,`tcv`.`t_recode_added_at` AS `t_recode_added_at`,`tcv`.`t_recode_added_by` AS `t_recode_added_by`,`cr`.`clz_repo_id` AS `cr_clz_repo_id`,`cr`.`clz_evaluation_cri_1` AS `clz_evaluation_cri_1`,`cr`.`clz_evaluation_cri_2` AS `clz_evaluation_cri_2`,`cr`.`clz_evaluation_cri_3` AS `clz_evaluation_cri_3`,`cr`.`clz_evaluation_cri_4` AS `clz_evaluation_cri_4`,`cr`.`clz_evaluation_cri_5` AS `clz_evaluation_cri_5`,`cr`.`clz_evaluation_cri_6` AS `clz_evaluation_cri_6`,`cr`.`clz_evaluation_cri_7` AS `clz_evaluation_cri_7`,`cr`.`clz_evaluation_cri_8` AS `clz_evaluation_cri_8`,`cr`.`clz_evaluation_cri_9` AS `clz_evaluation_cri_9`,`cr`.`clz_evaluation_cri_10` AS `clz_evaluation_cri_10`,`cr`.`clz_evaluation_cri_11` AS `clz_evaluation_cri_11`,`cr`.`clz_evaluation_cri_12` AS `clz_evaluation_cri_12`,`cr`.`clz_evaluation_cri_13` AS `clz_evaluation_cri_13`,`cr`.`clz_evaluation_cri_14` AS `clz_evaluation_cri_14`,`cr`.`clz_evaluation_cri_15` AS `clz_evaluation_cri_15`,`cr`.`clz_evaluation_cri_16` AS `clz_evaluation_cri_16`,`cr`.`clz_evaluation_cri_17` AS `clz_evaluation_cri_17`,`cr`.`clz_evaluation_cri_18` AS `clz_evaluation_cri_18`,`cr`.`clz_evaluation_cri_19` AS `clz_evaluation_cri_19`,`cr`.`clz_evaluation_cri_20` AS `clz_evaluation_cri_20`,`cr`.`clz_evaluation_cri_21` AS `clz_evaluation_cri_21`,`cr`.`clz_evaluation_cri_22` AS `clz_evaluation_cri_22`,`cr`.`clz_evaluation_cri_23` AS `clz_evaluation_cri_23`,`cr`.`clz_evaluation_cri_24` AS `clz_evaluation_cri_24`,`cr`.`clz_evaluation_cri_25` AS `clz_evaluation_cri_25`,`cr`.`clz_evaluation_cri_26` AS `clz_evaluation_cri_26`,`cr`.`clz_evaluation_cri_27` AS `clz_evaluation_cri_27`,`cr`.`clz_evaluation_cri_29` AS `clz_evaluation_cri_29`,`cr`.`clz_evaluation_cri_30` AS `clz_evaluation_cri_30`,`cr`.`clz_evaluation_cri_31` AS `clz_evaluation_cri_31`,`cr`.`clz_evaluation_cri_32` AS `clz_evaluation_cri_32`,`cr`.`clz_evaluation_cri_33` AS `clz_evaluation_cri_33`,`cr`.`clz_evaluation_cri_34` AS `clz_evaluation_cri_34`,`cr`.`clz_evaluation_cri_35` AS `clz_evaluation_cri_35`,`cr`.`clz_evaluation_cri_36` AS `clz_evaluation_cri_36`,`cr`.`clz_evaluation_cri_37` AS `clz_evaluation_cri_37`,`cr`.`clz_evaluation_cri_39` AS `clz_evaluation_cri_39`,`cr`.`clz_evaluation_cri_40` AS `clz_evaluation_cri_40`,`cr`.`clz_evaluation_cri_41` AS `clz_evaluation_cri_41`,`cr`.`clz_evaluation_cri_42` AS `clz_evaluation_cri_42`,`cr`.`clz_evaluation_cri_43` AS `clz_evaluation_cri_43`,`cr`.`clz_evaluation_cri_44` AS `clz_evaluation_cri_44`,`cr`.`clz_evaluation_cri_45` AS `clz_evaluation_cri_45`,`cr`.`clz_evaluation_cri_46` AS `clz_evaluation_cri_46`,`cr`.`clz_evaluation_cri_47` AS `clz_evaluation_cri_47`,`cr`.`clz_evaluation_cri_48` AS `clz_evaluation_cri_48`,`cr`.`clz_evaluation_cri_49` AS `clz_evaluation_cri_49`,`cr`.`clz_evaluation_cri_50` AS `clz_evaluation_cri_50`,`cr`.`clz_evaluation_cri_51` AS `clz_evaluation_cri_51`,`cr`.`clz_evaluation_cri_52` AS `clz_evaluation_cri_52`,`cr`.`clz_evaluation_cri_53` AS `clz_evaluation_cri_53`,`cr`.`clz_evaluation_cri_54` AS `clz_evaluation_cri_54`,`cr`.`clz_evaluation_cri_55` AS `clz_evaluation_cri_55`,`cr`.`clz_evaluation_cri_56` AS `clz_evaluation_cri_56`,`cr`.`clz_evaluation_cri_57` AS `clz_evaluation_cri_57`,`cr`.`clz_evaluation_cri_58` AS `clz_evaluation_cri_58`,`cr`.`clz_evaluation_cri_59` AS `clz_evaluation_cri_59`,`cr`.`clz_evaluation_cri_60` AS `clz_evaluation_cri_60`,`cr`.`clz_evaluation_cri_61` AS `clz_evaluation_cri_61`,`cr`.`clz_evaluation_cri_62` AS `clz_evaluation_cri_62`,`cr`.`clz_evaluation_cri_63` AS `clz_evaluation_cri_63`,`cr`.`clz_evaluation_cri_64` AS `clz_evaluation_cri_64`,`cr`.`clz_evaluation_cri_65` AS `clz_evaluation_cri_65`,`cr`.`clz_evaluation_cri_66` AS `clz_evaluation_cri_66`,`cr`.`clz_evaluation_cri_67` AS `clz_evaluation_cri_67`,`cr`.`clz_evaluation_cri_68` AS `clz_evaluation_cri_68`,`cr`.`clz_evaluation_cri_69` AS `clz_evaluation_cri_69`,`cr`.`clz_evaluation_cri_70` AS `clz_evaluation_cri_70`,`cr`.`clz_evaluation_cri_71` AS `clz_evaluation_cri_71`,`cr`.`clz_evaluation_cri_72` AS `clz_evaluation_cri_72`,`cr`.`clz_evaluation_cri_73` AS `clz_evaluation_cri_73`,`cr`.`clz_evaluation_cri_74` AS `clz_evaluation_cri_74`,`cr`.`clz_evaluation_cri_75` AS `clz_evaluation_cri_75`,`cr`.`clz_evaluation_cri_76` AS `clz_evaluation_cri_76`,`cr`.`clz_evaluation_cri_77` AS `clz_evaluation_cri_77`,`cr`.`clz_evaluation_cri_78` AS `clz_evaluation_cri_78`,`cr`.`clz_evaluation_cri_79` AS `clz_evaluation_cri_79`,`cr`.`clz_evaluation_cri_80` AS `clz_evaluation_cri_80`,`cr`.`status` AS `cr_status`,`cr`.`recode_added_at` AS `cr_recode_added_at`,`cr`.`recode_added_by` AS `cr_recode_added_by`,`pr`.`prf_repo_id` AS `prf_repo_id`,`pr`.`prf_is_prf` AS `prf_is_prf`,`pr`.`prf_section_id` AS `prf_section_id`,`pr`.`prf_group_id` AS `prf_group_id`,`pr`.`prf_possition_id` AS `prf_possition_id`,`pr`.`prf_sunday_attendence` AS `prf_sunday_attendence`,`pr`.`prf_poyaday_attendence` AS `prf_poyaday_attendence`,`pr`.`pfr_meeting_attendance` AS `pfr_meeting_attendance`,`pr`.`prf_extra_work_attendance` AS `prf_extra_work_attendance`,`pr`.`prf_evaluation_cri_1` AS `prf_evaluation_cri_1`,`pr`.`prf_evaluation_cri_2` AS `prf_evaluation_cri_2`,`pr`.`prf_evaluation_cri_3` AS `prf_evaluation_cri_3`,`pr`.`prf_evaluation_cri_4` AS `prf_evaluation_cri_4`,`pr`.`prf_evaluation_cri_5` AS `prf_evaluation_cri_5`,`pr`.`prf_evaluation_cri_6` AS `prf_evaluation_cri_6`,`pr`.`prf_evaluation_cri_7` AS `prf_evaluation_cri_7`,`pr`.`prf_evaluation_cri_8` AS `prf_evaluation_cri_8`,`pr`.`prf_evaluation_cri_9` AS `prf_evaluation_cri_9`,`pr`.`prf_evaluation_cri_10` AS `prf_evaluation_cri_10`,`pr`.`prf_evaluation_cri_11` AS `prf_evaluation_cri_11`,`pr`.`prf_evaluation_cri_12` AS `prf_evaluation_cri_12`,`pr`.`prf_evaluation_cri_13` AS `prf_evaluation_cri_13`,`pr`.`prf_evaluation_cri_14` AS `prf_evaluation_cri_14`,`pr`.`prf_evaluation_cri_15` AS `prf_evaluation_cri_15`,`pr`.`prf_evaluation_cri_16` AS `prf_evaluation_cri_16`,`pr`.`prf_evaluation_cri_17` AS `prf_evaluation_cri_17`,`pr`.`prf_evaluation_cri_18` AS `prf_evaluation_cri_18`,`pr`.`prf_evaluation_cri_19` AS `prf_evaluation_cri_19`,`pr`.`prf_evaluation_cri_20` AS `prf_evaluation_cri_20`,`pr`.`pr_status` AS `pr_status`,`pr`.`pr_recode_added_at` AS `pr_recode_added_at`,`pr`.`pr_recode_added_by` AS `pr_recode_added_by`,`pr`.`sec_id` AS `sec_id`,`pr`.`sec_name` AS `sec_name`,`pr`.`ps_status` AS `ps_status`,`pr`.`ps_recode_added_at` AS `ps_recode_added_at`,`pr`.`ps_recode_added_by` AS `ps_recode_added_by`,`pr`.`pos_id` AS `pos_id`,`pr`.`pos_name` AS `pos_name`,`pr`.`pos_status` AS `pos_status`,`pr`.`pos_recode_added_at` AS `pos_recode_added_at`,`pr`.`pos_recode_added_by` AS `pos_recode_added_by`,`pr`.`grp_id` AS `grp_id`,`pr`.`grp_name` AS `grp_name`,`pr`.`status` AS `pr_status1`,`pr`.`recode_added_at` AS `pr_recode_added_at1`,`pr`.`recode_added_by` AS `pr_recode_added_by1` from (((`student_class` `sc` left join `techer_class_view` `tcv` on(((`sc`.`year` = `tcv`.`tc_year`) and (`sc`.`clz_id` = `tcv`.`c_clz_id`)))) left join `class_report` `cr` on((`sc`.`clz_report_id` = `cr`.`clz_repo_id`))) left join `prefect_report_view` `pr` on((`sc`.`prefect_report_id` = `pr`.`prf_repo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_diseases_view`
--

/*!50001 DROP VIEW IF EXISTS `student_diseases_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_diseases_view` AS select `stud`.`stu_id` AS `stu_id`,`stud`.`dis_id` AS `stu_dis_dis_id`,`stud`.`dis_found_year` AS `dis_found_year`,`stud`.`status` AS `stu_dis_status`,`stud`.`recode_added_at` AS `stu_dis_recode_added_at`,`stud`.`recode_added_by` AS `stu_dis_recode_added_by`,`d`.`dis_id` AS `dis_dis_id`,`d`.`dis_name` AS `dis_name`,`d`.`dis_explanation` AS `dis_explanation`,`d`.`status` AS `dis_status`,`d`.`recode_added_at` AS `dis_recode_added_at`,`d`.`recode_added_by` AS `dis_recode_added_by` from (`student_diseases` `stud` left join `diseases` `d` on((`stud`.`dis_id` = `d`.`dis_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `techer_class_view`
--

/*!50001 DROP VIEW IF EXISTS `techer_class_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `techer_class_view` AS select `c`.`clz_id` AS `c_clz_id`,`c`.`clz_grade` AS `c_clz_grade`,`c`.`clz_class` AS `c_clz_class`,`c`.`status` AS `c_status`,`c`.`recode_added_at` AS `c_recode_added_at`,`c`.`recode_added_by` AS `c_recode_added_by`,`tc`.`year` AS `tc_year`,`tc`.`tec_id` AS `tc_tec_id`,`tc`.`clz_id` AS `tc_clz_id`,`tc`.`status` AS `tc_status`,`tc`.`recode_added_at` AS `tc_recode_added_at`,`tc`.`recode_added_by` AS `tc_recode_added_by`,`t`.`tea_id` AS `t_tea_id`,`t`.`tea_full_name` AS `tea_full_name`,`t`.`tea_name_with_initials` AS `tea_name_with_initials`,`t`.`tea_land_phone_number` AS `tea_land_phone_number`,`t`.`tea_mobile_phone_number` AS `tea_mobile_phone_number`,`t`.`tea_address` AS `tea_address`,`t`.`tea_city` AS `tea_city`,`t`.`lib_mem_id` AS `lib_mem_id`,`t`.`status` AS `t_status`,`t`.`recode_added_at` AS `t_recode_added_at`,`t`.`recode_added_by` AS `t_recode_added_by` from ((`class` `c` left join `teacher_class` `tc` on((`c`.`clz_id` = `tc`.`clz_id`))) left join `teacher` `t` on((`tc`.`tec_id` = `t`.`tea_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_view`
--

/*!50001 DROP VIEW IF EXISTS `temp_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_view` AS select `prf_talant_view`.`year` AS `year`,`prf_talant_view`.`prf_repo_id` AS `prf_repo_id`,`prf_talant_view`.`prf_tal_id` AS `prf_tal_id`,`prf_talant_view`.`prf_tal_status` AS `prf_tal_status`,`prf_talant_view`.`prf_tal_recode_added_at` AS `prf_tal_recode_added_at`,`prf_talant_view`.`prf_tal_recode_added_by` AS `prf_tal_recode_added_by`,`prf_talant_view`.`tal_id` AS `tal_id`,`prf_talant_view`.`tal_name` AS `tal_name`,`prf_talant_view`.`tal_status` AS `tal_status`,`prf_talant_view`.`tal_recode_added_at` AS `tal_recode_added_at`,`prf_talant_view`.`tal_recode_added_by` AS `tal_recode_added_by` from `prf_talant_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-27 16:36:28
