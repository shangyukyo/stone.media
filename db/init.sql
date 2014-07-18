drop database if exists `jushi`;
create database `jushi` character set utf8;

use `jushi`;

DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases` (
  `id` int(10) unsigned auto_increment ,
  `name` varchar(150) NOT NULL,
  `intro` text,
  `dfs_path` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

