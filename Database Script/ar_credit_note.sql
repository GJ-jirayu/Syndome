/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : syndome_ar

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-06-06 15:35:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ar_credit_note`
-- ----------------------------
DROP TABLE IF EXISTS `ar_credit_note`;
CREATE TABLE `ar_credit_note` (
  `cn_no` varchar(15) NOT NULL,
  `salesman_code` varchar(15) NULL COMMENT 'รหัสพนักงานขาย',
  `salesman_name` varchar(50)  NULL COMMENT 'ชื่อพนักงานขาย',
  `invoice_no` varchar(15) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_amount` decimal(15,2) NOT NULL,
  `change_date` date NOT NULL,
  `cn_date` date NOT NULL,
  `cn_remark` varchar(50) NULL COMMENT 'หมายเหตุ Credit Note',
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`cn_no`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COMMENT='For Report 8';

-- ----------------------------
-- Records of ar_credit_note
-- ----------------------------
