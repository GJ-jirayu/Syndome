/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : syndome_ar

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-06-06 15:35:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ar_receipt`
-- ----------------------------
DROP TABLE IF EXISTS `ar_receipt`;
CREATE TABLE `ar_receipt` (
  `receipt_no` varchar(15) character set utf8 NOT NULL,
  `invoice_no` varchar(15) character set utf8 NOT NULL default '' COMMENT 'ARTRN.',
  `bill_no` varchar(15) character set utf8 NOT NULL,
  `receipt_date` date default NULL COMMENT 'วันที่ออกใบเสร็จ',
  `receipt_amount` decimal(15,2) default NULL COMMENT 'ยอดที่ต้องชำระ',
  `invoice_date` date NOT NULL,
  `invoice_amount` decimal(15,2) default NULL COMMENT 'Report5 -> ยอดเงิน',
  `invoice_amount_no_vat` decimal(15,2) default NULL COMMENT 'Report9',
  `oc_amount` decimal(15,2) default NULL COMMENT 'OC = Out site commission',
  `oc_date` date NOT NULL,
  `receipt_status` varchar(50) character set utf8 default NULL COMMENT 'Formula:\r\nCASE receipt_amount = 0 THEN ยังไม่ชำระ\r\nCASE receipt_amount < SUM(invoice_amount) THEN  ชำระแล้วบางส่วน\r\nCASE receipt_amount = SUM(invoice_amount) THEN ชำระแล้ว',
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`receipt_no`,`invoice_no`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COMMENT='ARRCPIT, ARTRN\r\n//For Reprot 9';

-- ----------------------------
-- Records of ar_receipt
-- ----------------------------
