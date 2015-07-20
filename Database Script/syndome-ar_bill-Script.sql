/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : syndome_ar

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-06-06 13:49:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ar_bill`
-- ----------------------------
DROP TABLE IF EXISTS `ar_bill`;
CREATE TABLE `ar_bill` (
  `bill_no` varchar(15) NOT NULL,
  `area` varchar(50) NOT NULL,
  `customer_no` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `net_amount` decimal(15,0) NOT NULL,
  `bill_status` varchar(25) NOT NULL,
  `bill_remark` varchar(50) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`bill_no`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of ar_bill
-- ----------------------------
