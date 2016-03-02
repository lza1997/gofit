

# Host: localhost    Database: gofit
# ------------------------------------------------------
# Server version 1.0.0-nt

DROP DATABASE IF EXISTS `gofit`;
CREATE DATABASE `gofit` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gofit`;

#
# Table structure for table foodtype
#

CREATE TABLE `foodtype` (
	`id` int(5) unsigned NOT NULL auto_increment,
	`typename` varchar(50) NOT NULL default '',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table foodtype
#

INSERT INTO `foodtype` (`id`,`typename`) VALUE ('1','减脂健康餐');
INSERT INTO `foodtype` (`id`,`typename`) VALUE ('2','营养果蔬汁');


#
# Table structure for table foodinfo
#

CREATE TABLE `foodinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `foodName` varchar(128) NOT NULL default '',
  `typeid` int(10) unsigned NOT NULL default '0',
  `intro` text,
  `price` decimal(5,2) NOT NULL default '0.00',
  `picture` varchar(32) default NULL,
  `city` varchar(50) NOT NULL default '',
  `salenum` int(10) unsigned default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `FK_foodinfo_1` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table foodinfo
#

INSERT INTO `foodinfo` (`id`,`foodName`,`typeid`,`intro`,`price`,`picture`,`city`,`date`) VALUES (1,'早餐11','1','减肥',21,'http://m2.quanjing.com/2m/mf010/mf700-00094026.jpg','北京','2008-01-01 00:00:00');
INSERT INTO `foodinfo` (`id`,`foodName`,`typeid`,`intro`,`price`,`picture`,`city`,`date`) VALUES (2,'早餐22','1','养颜',5,'http://m2.quanjing.com/2m/dcft_szjt001/szt99022035.jpg','无锡','2008-04-01 00:00:00');
INSERT INTO `foodinfo` (`id`,`foodName`,`typeid`,`intro`,`price`,`picture`,`city`,`date`) VALUES (3,'苹果','1','养颜',5,'http://img0.imgtn.bdimg.com/it/u=449950872,2763743310&fm=21&gp=0.jpg','无锡','2008-04-01 00:00:00');

#
# Table structure for table order
#

CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `foodid` int(10) unsigned NOT NULL default '0',
  `userid` int(10) unsigned NOT NULL default '0',
  `productnum` tinyint(3) unsigned NOT NULL default '0',
  `money` decimal(5,2) NOT NULL default '0.00',
  `city` varchar(50) NOT NULL default '',
  `address` varchar(128) NOT NULL default '',
  `phonenum` varchar(20) NOT NULL default '',
  `ordernum` varchar(50) NOT NULL default '',
  `status` varchar(20) NOT NULL default '',
  `orderdate` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `FK_order_1` (`foodid`),
  KEY `FK_order_2` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table order
#


#
# Table structure for table userinfo
#

CREATE TABLE `userinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(15) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(100) default NULL,
  `level` enum('user','manager') default 'user',
  PRIMARY KEY  (`id`),
  UNIQUE KEY (`username`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table userinfo
#

INSERT INTO `userinfo` (`id`,`username`,`pwd`,`email`,`city`,`address`,`level`) VALUES (1,'user','123','user@sohu.com','无锡','江南大学',1);
INSERT INTO `userinfo` (`id`,`username`,`pwd`,`email`,`city`,`address`,`level`) VALUES (2,'admin','123','manager@sohu.com','无锡','',2);


#
#  Foreign keys for table foodinfo
#

ALTER TABLE `foodinfo`
ADD FOREIGN KEY (`typeid`) REFERENCES `foodtype` (`id`);

#
#  Foreign keys for table order
#

ALTER TABLE `order`
ADD FOREIGN KEY (`foodid`) REFERENCES `foodinfo` (`id`),
ADD FOREIGN KEY (`userid`) REFERENCES `userinfo` (`id`);



