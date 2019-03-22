/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.40 : Database - ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `idCard` varchar(50) NOT NULL COMMENT '用户身份证号',
  `AuserId` int(10) DEFAULT NULL,
  `politics` varchar(20) DEFAULT NULL COMMENT '政治面貌',
  `nation` varchar(20) NOT NULL COMMENT '民族',
  `majorField` varchar(20) DEFAULT NULL COMMENT '专业信息',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `archivesInSchool` varchar(50) DEFAULT NULL COMMENT '学籍档案是否在校',
  `rResidenceInSchool` varchar(30) DEFAULT NULL COMMENT '户口是否在学校',
  `archivesPath` varchar(50) DEFAULT NULL COMMENT '入学前档案所在地',
  `rResidencePath` varchar(50) DEFAULT NULL COMMENT '入学前户口所在地',
  `qqNum` int(20) DEFAULT NULL COMMENT 'qq',
  `phoneNum` int(15) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`idCard`),
  KEY `FK_USERID` (`AuserId`),
  CONSTRAINT `FK_USERID` FOREIGN KEY (`AuserId`) REFERENCES `login` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `account` */

insert  into `account`(`idCard`,`AuserId`,`politics`,`nation`,`majorField`,`birthday`,`archivesInSchool`,`rResidenceInSchool`,`archivesPath`,`rResidencePath`,`qqNum`,`phoneNum`,`email`) values ('123',123,'群众','少数民族','计算机','2019-06-12','no','yes','西安','西安',897088670,85825131,'3200337870@qq.com'),('456',456,'共青团员','汉族','金融','2019-03-28','no','no','西安','西安',897088671,85825132,'3200337871@qq.com'),('789',789,'中共党员','少数民族','航天','2019-03-21','yes',NULL,'北京','北京',897088672,85825133,'3200337872@qq.com');

/*Table structure for table `birthplace` */

DROP TABLE IF EXISTS `birthplace`;

CREATE TABLE `birthplace` (
  `birthId` int(20) DEFAULT NULL COMMENT '学号',
  `birthPath` varchar(50) DEFAULT NULL COMMENT '学生生源地',
  `cityOrTownShip` varchar(10) DEFAULT NULL COMMENT '城乡生源',
  `address` varchar(30) DEFAULT NULL COMMENT '家庭住址',
  `homePhone` int(20) DEFAULT NULL COMMENT '家庭电话',
  `zipCode` int(10) DEFAULT NULL COMMENT '家庭邮编',
  `isSubAllowance` varchar(10) DEFAULT NULL COMMENT '是否低保',
  KEY `FK_birthId` (`birthId`),
  CONSTRAINT `FK_birthId` FOREIGN KEY (`birthId`) REFERENCES `login` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `birthplace` */

insert  into `birthplace`(`birthId`,`birthPath`,`cityOrTownShip`,`address`,`homePhone`,`zipCode`,`isSubAllowance`) values (123,'西安','农村','长安区',85825158,710101,'yes'),(456,'西安','农村','莲湖区',85825169,710102,'no'),(789,'北京','城镇','雁塔区',85825167,710103,'no');

/*Table structure for table `certificateobtain` */

DROP TABLE IF EXISTS `certificateobtain`;

CREATE TABLE `certificateobtain` (
  `coStuId` int(20) DEFAULT NULL COMMENT '学生id',
  `coScId` int(20) DEFAULT NULL COMMENT '证书ID',
  KEY `FK_coStuId` (`coStuId`),
  KEY `FK_coScid` (`coScId`),
  CONSTRAINT `FK_coScid` FOREIGN KEY (`coScId`) REFERENCES `skillcertificate` (`scID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_coStuId` FOREIGN KEY (`coStuId`) REFERENCES `login` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `certificateobtain` */

insert  into `certificateobtain`(`coStuId`,`coScId`) values (123,135),(456,246),(789,369);

/*Table structure for table `employmentinfo` */

DROP TABLE IF EXISTS `employmentinfo`;

CREATE TABLE `employmentinfo` (
  `eiID` int(20) DEFAULT NULL COMMENT '学号',
  `eiGraduation` varchar(20) DEFAULT NULL COMMENT '毕业去向',
  `eiUnitName` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `eiOriganizationCode` varchar(50) DEFAULT NULL COMMENT '单位组织结构戴代码',
  `eiUnitProperties` varchar(20) DEFAULT NULL COMMENT '单位性质',
  `eiUnitPIndustry` varbinary(30) DEFAULT NULL COMMENT '单位行业',
  `eiCompanyAddress` varchar(50) DEFAULT NULL COMMENT '单位地址',
  `eiJobPosition` varchar(20) DEFAULT NULL COMMENT '工作职位类别',
  `eiContacts` varchar(20) DEFAULT NULL COMMENT '单位联系人',
  `eiContactsPhone` int(20) DEFAULT NULL COMMENT '联系人电话',
  `eiContactEmail` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `eiZipCode` varchar(6) DEFAULT NULL COMMENT '单位邮编',
  `eiFileForwardName` varchar(50) DEFAULT NULL COMMENT '档案转寄单位名称',
  `eiFileForwardAddress` varbinary(50) DEFAULT NULL COMMENT '档案转寄单位地址',
  `eiFFzipCode` int(6) DEFAULT NULL COMMENT '档案转寄单位邮编',
  `eiTransferHousehold` varchar(50) DEFAULT NULL COMMENT '户口转迁地址',
  KEY `FK_eiID` (`eiID`),
  CONSTRAINT `FK_eiID` FOREIGN KEY (`eiID`) REFERENCES `login` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `employmentinfo` */

insert  into `employmentinfo`(`eiID`,`eiGraduation`,`eiUnitName`,`eiOriganizationCode`,`eiUnitProperties`,`eiUnitPIndustry`,`eiCompanyAddress`,`eiJobPosition`,`eiContacts`,`eiContactsPhone`,`eiContactEmail`,`eiZipCode`,`eiFileForwardName`,`eiFileForwardAddress`,`eiFFzipCode`,`eiTransferHousehold`) values (123,'北京','中软','123456','部队,高等教育单位','建筑业','北京','法律专业人员','Mary',85825125,'3200357595@qq.com','720506','公安局','西安',710105,'北京'),(456,'上海','中软','456789','党政机关公务员,国有企业','电力','上海','公务员','Jack',85825126,'3200347595@qq.com','720507','派出所','西安',710106,'上海'),(789,'广州','中软','345678','其他企业,应征入伍','建筑业','广州','法律专业人员','xiaowang',85825127,'3200367595@qq.com','720508','民政局','西安',710107,'广州');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userId` int(20) NOT NULL COMMENT '用户登录学号',
  `passWord` varchar(20) NOT NULL COMMENT '用户密码',
  `userFlag` int(5) DEFAULT NULL COMMENT '标记用户属性1代表管理员0代表普通用户',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`userId`,`passWord`,`userFlag`) values (123,'123456',123456),(456,'234567',0),(789,'345678',1);

/*Table structure for table `obtainemployment` */

DROP TABLE IF EXISTS `obtainemployment`;

CREATE TABLE `obtainemployment` (
  `oeId` int(20) NOT NULL COMMENT '学号',
  `oeIntent` varchar(30) DEFAULT NULL COMMENT '就业意向类型',
  `oeIntentCity` varchar(20) DEFAULT NULL COMMENT '就业意向城市',
  `oeIntentSalary` varchar(30) DEFAULT NULL COMMENT '意向薪资',
  KEY `FK_oeID` (`oeId`),
  CONSTRAINT `FK_oeID` FOREIGN KEY (`oeId`) REFERENCES `login` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `obtainemployment` */

insert  into `obtainemployment`(`oeId`,`oeIntent`,`oeIntentCity`,`oeIntentSalary`) values (123,'出国出境','西安','5000-7000'),(456,'应征入伍','北京','3000一下'),(789,'自主创业','上海','7000-9000');

/*Table structure for table `poorstudentcard` */

DROP TABLE IF EXISTS `poorstudentcard`;

CREATE TABLE `poorstudentcard` (
  `poorId` int(20) NOT NULL COMMENT '学号 外键',
  `poorState` varchar(30) DEFAULT NULL COMMENT '贫困生级别',
  `pObtainProgress` varchar(50) DEFAULT NULL COMMENT '贫困生就业进展',
  `pHelpContent` varchar(50) DEFAULT NULL COMMENT '贫困生帮扶措施',
  `pHelpContacts` varchar(20) DEFAULT NULL COMMENT '帮扶联系人',
  `pHelpPhone` int(11) DEFAULT NULL COMMENT '帮扶联系人电话',
  KEY `FK_poorID` (`poorId`),
  CONSTRAINT `FK_poorID` FOREIGN KEY (`poorId`) REFERENCES `login` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `poorstudentcard` */

insert  into `poorstudentcard`(`poorId`,`poorState`,`pObtainProgress`,`pHelpContent`,`pHelpContacts`,`pHelpPhone`) values (123,'特别贫困','进行中','助学金','wang',85825136),(456,'一般贫困','已进行','助学金','li',85825137),(789,'特别贫困','未进行','助学金','tang',85825138);

/*Table structure for table `skillcertificate` */

DROP TABLE IF EXISTS `skillcertificate`;

CREATE TABLE `skillcertificate` (
  `scID` int(20) NOT NULL AUTO_INCREMENT COMMENT '技能证书ID',
  `scName` varchar(50) DEFAULT NULL COMMENT '技能证书名',
  `scContent` varchar(50) DEFAULT NULL COMMENT '技能证书描述',
  PRIMARY KEY (`scID`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4;

/*Data for the table `skillcertificate` */

insert  into `skillcertificate`(`scID`,`scName`,`scContent`) values (135,'abc','der'),(246,'efg','hig'),(369,'kil','lio');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
