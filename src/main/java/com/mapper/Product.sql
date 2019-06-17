-- auto Generated on 2019-06-17
-- DROP TABLE IF EXISTS product;
CREATE TABLE product(
	product_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
	product_name VARCHAR (50) NOT NULL DEFAULT '' COMMENT '产品名称',
	product_info VARCHAR (50) NOT NULL DEFAULT '' COMMENT '产品的信息',
	company_id INT (11) NOT NULL DEFAULT -1 COMMENT '留公司id，多表查询公司的信息（联系方式，地址等） 可为null',
	coment VARCHAR (50) DEFAULT '' COMMENT '产品的评价',
	PRIMARY KEY (product_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'product';
