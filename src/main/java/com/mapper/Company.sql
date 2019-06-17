-- auto Generated on 2019-06-17
-- DROP TABLE IF EXISTS company;
CREATE TABLE company(
	compan_info VARCHAR (50) NOT NULL DEFAULT '' COMMENT '公司简介',
	company_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '公司id',
	company_name VARCHAR (50) NOT NULL DEFAULT '' COMMENT '公司名称',
	contact VARCHAR (50) NOT NULL DEFAULT '' COMMENT '联系方式',
	address VARCHAR (50) NOT NULL DEFAULT '' COMMENT '地址',
	company_status INT (11) NOT NULL DEFAULT -1 COMMENT '公司状态',
	company_kind INT (11) NOT NULL DEFAULT -1 COMMENT '公司类别',
	user_id INT (11) NOT NULL DEFAULT -1 COMMENT '？？对应的用户表里的ID',
	PRIMARY KEY (company_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'company';
