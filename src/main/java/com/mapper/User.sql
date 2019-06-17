-- auto Generated on 2019-06-17
-- DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
	user_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
	username VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户账号',
	`password` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户密码',
	`status` INT (11) NOT NULL DEFAULT -1 COMMENT '账号状态',
	PRIMARY KEY (user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'user';
