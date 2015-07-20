/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : syndome_ar

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-06-07 11:03:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ar_so_to_commission`
-- ----------------------------
DROP TABLE IF EXISTS `ar_so_to_commission`;
CREATE TABLE `ar_so_to_commission` (
  `so_no` varchar(15) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `bill_no` varchar(15) NOT NULL,
  `receipt_no` varchar(15) NOT NULL,
  `customer_code` varchar(15) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `so_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `bill_date` date NOT NULL,
  `receipt_date` date NOT NULL,
  `so_amount` decimal(15,2) NOT NULL,
  `invoice_amount_no_vat` decimal(15,2) NOT NULL,
  `invoice_amount` decimal(15,2) NOT NULL,
  `cheque_due_date` date default NULL COMMENT 'วันที่นัดรับเช็ค',
  `bill_amount` decimal(15,2) NOT NULL,
  `cn_amount` decimal(15,2) default NULL COMMENT 'จำนวนเงิน ใบลดหนี้',
  `cheque_date` date default NULL COMMENT 'วันที่เช็ค',
  `cheque_no` varchar(15) default NULL COMMENT 'เลขที่เช็ค',
  `cheque_amount` decimal(15,2) NOT NULL,
  `commission_amount` decimal(15,2) NOT NULL,
  `commission_status` varchar(50) default NULL COMMENT 'สถานะ Commission',
  `oc_amount` decimal(15,2) NOT NULL,
  `oc_status` varchar(50) default NULL COMMENT 'สถานะ Out-Site',
  `salesman_code` varchar(15) NOT NULL,
  `salesman_name` varchar(50) NOT NULL,
  `aging` int(11) default NULL COMMENT 'Aging ชำระหนี้',
  `overdue_aging` int(11) default NULL COMMENT 'Aging คงค้าง',
  `credit_term` int(11) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`so_no`,`invoice_no`,`bill_no`,`receipt_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='For Reprot 10';

-- ----------------------------
-- Records of ar_so_to_commission
-- ----------------------------
