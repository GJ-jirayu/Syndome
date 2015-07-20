/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : syndome_ar

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-06-06 15:35:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ar_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `ar_invoice`;
CREATE TABLE `ar_invoice` (
  `invoice_no` varchar(15) character set utf8 NOT NULL,
  `due_date` date NOT NULL,
  `province` varchar(25) character set utf8 NOT NULL,
  `area` varchar(25) character set utf8 NOT NULL,
  `customer_code` varchar(10) character set utf8 NOT NULL,
  `customer_name` varchar(50) character set utf8 NOT NULL,
  `phone_no` varchar(50) character set utf8 NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_amount` decimal(15,2) NOT NULL,
  `bill_no` varchar(15) character set utf8 NOT NULL,
  `bill_date` date NOT NULL,
  `invoice_status` varchar(50) character set utf8 NOT NULL,
  `credit_term` int(11) NOT NULL,
  `salesman_code` varchar(15) character set utf8 NOT NULL,
  `salesman_name` varchar(50) character set utf8 NOT NULL,
  `invoice_remark` varchar(50) character set utf8 NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`invoice_no`,`due_date`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of ar_invoice
-- ----------------------------
