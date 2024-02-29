/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.1.13-MariaDB : Database - smart_tender
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`smart_tender` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smart_tender`;

/*Table structure for table `bidders` */

DROP TABLE IF EXISTS `bidders`;

CREATE TABLE `bidders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `bidders` */

insert  into `bidders`(`id`,`name`,`email`,`pwd`,`addr`,`pno`,`otp`,`status`) values (1,'preeti','preeti@gmail.com','Nakku@123','bangalore\r\n','9874563214','69156','Completed');

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `obj` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `sdate` varchar(100) DEFAULT NULL,
  `edate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `notifications` */

insert  into `notifications`(`id`,`email`,`obj`,`cost`,`sdate`,`edate`) values (1,'nakku@gmail.com','highway road','120000','2023-04-25','2025-12-12');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `cardname` varchar(200) DEFAULT NULL,
  `cardnumber` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`Id`,`name`,`Email`,`amount`,`cardname`,`cardnumber`,`cvv`) values (1,'nakku','nakku@gmail.com','2000','sbi','2587456985214789','369');

/*Table structure for table `tender_files` */

DROP TABLE IF EXISTS `tender_files`;

CREATE TABLE `tender_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(100) DEFAULT NULL,
  `temail` varchar(100) DEFAULT NULL,
  `obj` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `sdate` varchar(100) DEFAULT NULL,
  `edate` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `adhar` varchar(100) DEFAULT NULL,
  `file` longblob,
  `hash1` varchar(1000) DEFAULT NULL,
  `hash2` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time1` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tender_files` */

insert  into `tender_files`(`id`,`tid`,`temail`,`obj`,`cost`,`sdate`,`edate`,`email`,`pan`,`adhar`,`file`,`hash1`,`hash2`,`date`,`time1`,`status`) values (1,1,'nakku@gmail.com','highway road','120000','2023-04-25','2025-12-12','preeti@gmail.com','RTI987t565R','569874563214',' EÓÖ-Ì@¹©òáG\"b@bM6äoÖŸT	¶>ºÊ@Y·J>‡ªš\\ò¸.š\nß¥·ÔÂÕ¼XlY³û±ôŸ#','88d20fc0fcde30d82b1b3218010b88090eaa922a','0ce977bd372b861978401c4e476f5449b9d38c34','2023-04-25','15:50:55','Completed');

/*Table structure for table `tenders` */

DROP TABLE IF EXISTS `tenders`;

CREATE TABLE `tenders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tenders` */

insert  into `tenders`(`id`,`name`,`email`,`pwd`,`addr`,`pno`,`otp`,`status`) values (1,'nakku','nakku@gmail.com','Nakku@123','bangalore','9878585888','38390','Completed');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
