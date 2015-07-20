DROP TABLE IF EXISTS `ar_master`;
CREATE TABLE `ar_master` (
  `customer_code` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `province` varchar(50) default NULL COMMENT 'พื้นที่',
  `area` varchar(50) default NULL COMMENT 'เขต',
  `daily_invoice_date` varchar(50) default NULL COMMENT 'วางบิลทุๆวันที่ เช่น 1, 2, 4',
  `daily_invoice_time_from` varchar(50) default NULL COMMENT 'ระหว่างเวลาวางบิลทุกๆวันที่จาก เช่น 08:30',
  `daily_invoice_time_to` varchar(50) default NULL COMMENT 'ระหว่างเวลาวางบิลทุกๆวันที่ถึง เช่น 12.00',
  `weekly_invoice_date` varchar(255) default NULL COMMENT 'วางบิลทุกวัน เช่น จันทร์, จันทร์W1, ทุกวัน',
  `weekly_invoice_time_from` varchar(50) default NULL COMMENT 'ระหว่างเวลาวางบิลจาก',
  `weekly_invoice_time_to` varchar(50) default NULL COMMENT 'ระหว่างเวลาวางบิลถึง',
  `flag_receipt` char(1) default NULL COMMENT 'การวางบิลพร้อมใบเสร็จ\r\nY -> ต้องวาง พร้อมใบเสร็จ\r\nN -> ไม่ต้องวาง พร้อมใบเสร็จ',
  `shift_invoice_date` char(1) default NULL COMMENT 'หากตรงกับวันหยุดจะเลื่อน\r\n1 -> เลื่อนออกเป็นวันทำการถัดไป\r\n2 -> เลื่อนให้เร็วขึ้น 1 วัน',
  `daily_payment_date` varchar(50) default NULL COMMENT 'รับเช็ค/เงินสดทุกๆวันที่ เช่น 1, 5, 9',
  `daily_payment_time_from` varchar(50) default NULL COMMENT 'ระหว่างเวลารับเช็ค/เงินสดทุกๆวันที่จาก',
  `daily_payment_time_to` varchar(50) default NULL COMMENT 'ระหว่างเวลารับเช็ค/เงินสดทุกๆวันที่ถึง',
  `weekly_payment_date` varchar(255) default NULL COMMENT 'รับเช็ค/เงินสดทุกวัน เช่น จันทร์, จันทร์W1, ทุกวัน',
  `weekly_payment_time_from` varchar(50) default NULL COMMENT 'ระหว่างเวลารับเช็ค/เงินสดทุกวันจาก',
  `weekly_payment_time_to` varchar(50) default NULL COMMENT 'ระหว่างเวลารับเช็ค/เงินสดทุกวันถึง',
  `created_dttm` datetime NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY  (`customer_code`)
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COMMENT='FOR Data Entry Form';