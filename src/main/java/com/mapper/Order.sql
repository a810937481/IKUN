-- auto Generated on 2019-06-17
-- DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`(
	order_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
	`number` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '订单编号',
	user_id INT (11) NOT NULL DEFAULT -1 COMMENT '消费者',
	create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生成时间',
	product_id INT (11) NOT NULL DEFAULT -1 COMMENT '商品信息 多表查询查找product的id （提供商）',
	`status` INT (11) NOT NULL DEFAULT -1 COMMENT '订单状态 0待支付，1已支付未发货，2完成，3退款，4关闭（退款结束后或者有争议或者取消）',
	PRIMARY KEY (order_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'order';
