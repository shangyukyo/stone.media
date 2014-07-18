
DROP TABLE IF EXISTS `company_intros`;
CREATE TABLE `company_intros` (
  `id` int(10) unsigned auto_increment ,  
  `intro` text,  
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `company_features`;
CREATE TABLE `company_features` (
  `id` int(10) unsigned auto_increment ,  
  `intro` text,  
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

