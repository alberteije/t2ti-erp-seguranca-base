/*
SQLyog Community Edition- MySQL GUI v6.54
MySQL - 5.1.56-community : Database - teste
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`teste` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `teste`;

/*Table structure for table `computador` */

DROP TABLE IF EXISTS `computador`;

CREATE TABLE `computador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `a` varchar(32) DEFAULT NULL COMMENT 'hash do computador',
  `b` varchar(32) DEFAULT NULL COMMENT 'acesso liberado (S|N)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `computador` */

insert  into `computador`(`id`,`a`,`b`) values (1,'c400a910c264e53bbcbe87a9acbbd193','S'),(2,'d3af8a00376d3eb0b5821dda349cfe34','N'),(3,'a4017d46d79a290af4f29b2f26e473ce','S'),(4,'cb074bfd4c587b9590c7ab6df6af2490','S');

/*Table structure for table `controle_pagamento` */

DROP TABLE IF EXISTS `controle_pagamento`;

CREATE TABLE `controle_pagamento` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `a` char(32) DEFAULT NULL COMMENT 'mes',
  `b` char(32) DEFAULT NULL COMMENT 'ano',
  `c` char(32) DEFAULT NULL COMMENT 'dia vencimento',
  `d` char(32) DEFAULT NULL COMMENT 'dia bloqueio',
  `e` char(32) DEFAULT NULL COMMENT 'liberado (S|N)',
  `f` char(32) DEFAULT NULL COMMENT 'hash do registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `controle_pagamento` */

insert  into `controle_pagamento`(`id`,`a`,`b`,`c`,`d`,`e`,`f`) values (12,'71F87F','59D256D640','B1B8A5','A68E95','5CF3','b8bd79ebc5efa6534fcc60d642f720fa'),(13,'939A99','F975F073E4','3B323F','C3AD8A','193E','14ab9296bf1a72c197c6380d23bbdff5'),(14,'220B6B','8F989D9F98','7AF379','4A2201','B258','1c9a7b9316586d96b28a23cbb9eecf5d'),(15,'C8A180','0760C5A790','7AF379','442C0B','9AB1','7ec56c2d4013528c4145dac2b2a89674'),(16,'77FE61','026DC8A891','929B86','492300','9BB0','9132cd1c8083197c832780c84f950197'),(17,'B1B8BB','DF4B2E0E0F','C8A18C','C2AA89','6D99','669ce3d5c8758628e18dbb32d8cb4e2f'),(18,'DE56D8','F975F073E4','4C250B','A880E6','A2A9','fe924b1028737c5ab82a805c2a493459'),(19,'432A34','81EA4E2E2F','0B62CF','8DE74F','64EB','d341e92391eb542788fcd5168d24e45e'),(20,'402935','6BC4A183F4','056CF1','5AD250','5AF1','cb6cb6a7fe5701b2f385754471b05332');

/*Table structure for table `lancamento` */

DROP TABLE IF EXISTS `lancamento`;

CREATE TABLE `lancamento` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `a` varchar(32) DEFAULT NULL COMMENT 'tabela',
  `b` varchar(32) DEFAULT NULL COMMENT 'quantidade lançamentos',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `lancamento` */

insert  into `lancamento`(`id`,`a`,`b`) values (1,'computador','5'),(2,'controle_pagamento','5'),(3,'pessoa','10');

/*Table structure for table `pessoa` */

DROP TABLE IF EXISTS `pessoa`;

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `pessoa` */

insert  into `pessoa`(`id`,`nome`) values (1,'jose'),(2,'joao'),(3,'Thor'),(4,'Capitão América'),(5,'Hulk'),(6,'Batman'),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
