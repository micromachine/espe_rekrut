create database espeo;
use espeo;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (100,'greg@wp.pl','5f4dcc3b5aa765d61d8327deb882cf99');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;