-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: lacarte
-- ------------------------------------------------------
-- Server version	8.0.22

USE `lacarte`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `addr_nm_address` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Address Name',
  `addr_cd_type` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'R' COMMENT 'Address type: R-Residencial, C-Comercial',
  `addr_ds_address` varchar(100) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Address',
  `addr_ds_number` varchar(10) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Address number',
  `addr_ds_complement` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Address complement',
  `addr_nm_district` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'District',
  `addr_nm_city` varchar(50) COLLATE utf8_swedish_ci NOT NULL COMMENT 'City',
  `addr_sg_state` varchar(2) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'State',
  `addr_cd_zipcode` varchar(8) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Zipcode',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('1a914aef-f9b7-4d83-9391-10eb8a52f289',1,0,'2022-07-30 17:19:24.827757','2022-07-30 18:05:54.080992','Comércio de Luis','C','Rua Grunewald Ferreira ','34','Centro ','Flamingos','Bertioga','SP','22454555'),('29fdbde3-8fcb-437e-a568-fe7d25ed43c8',1,0,'2022-07-29 21:39:14.634726','2022-07-29 22:32:44.000000','Casa da Mãe 2232','R','Rua Barão de Catas Altas','240','Casa ','Centro','Bicas','MG','36600000'),('47282d4d-085b-4cfe-afde-40d68724079d',1,0,'2023-02-01 13:06:39.397877','2023-02-01 13:06:39.397877','Restaurante','C','Rua 14 Bis','14',NULL,'Centro','Bicas','MG','36600000'),('4d12db78-690a-4e9e-8860-824f21cc81d0',1,0,'2022-07-29 14:50:26.155919','2022-07-29 14:50:26.155919','Minha Casa','R','Rua Ildeu Fernandes Alhadas','103','Alhadas','Centro','Bicas','MG','36600000'),('5384102a-b561-4ee9-9a18-663467caeee8',1,0,'2022-08-15 13:18:12.605368','2022-08-15 13:18:12.605368','Renato Ferreira Santos','R','Rua Ildeu Fernandes Alhadas','103','Alhadas','Centro','Bicas','MG','36600000'),('538c5ea4-a48f-4185-ab25-f1e84e937f52',1,0,'2022-07-29 22:41:54.332621','2022-07-29 22:46:46.000000','Mamãe Nova','R','Rua Dr. Péricles de Mendonça','43','Casa da mãe','Centro','Bicas','MG','36600000'),('6dcca7b5-42af-4757-8bf5-8c2b2de5eced',1,0,'2022-07-28 16:10:48.651281','2022-07-30 18:06:49.000000','Casa da Sogra 2','R','Rua Senador Euzébio','30','apto 809','Flamengo','Rio de Janeiro','RJ','22250080'),('79bf2603-d581-4bee-8466-4355034e86c6',1,0,'2022-07-29 23:09:12.878536','2022-07-30 18:05:54.081508','Casa do Primo','R','Rua Romeu e Julieta','2344',NULL,'Centro','Nova Divinópolis','MG','25623000'),('7c73f6d4-e598-420c-8e0a-ed25a8b4b6ba',1,0,'2022-07-30 17:18:45.490712','2022-07-30 18:05:54.081896','Casa de Sogra de Ivete','R','Rua Soberana','2355','Casa','Centro','Vitória','ES','22250000'),('8ca17afd-5095-4c29-a92f-759fc74629ab',1,0,'2022-07-29 21:35:26.640555','2022-07-30 18:05:54.082295','Casa do Irmão do Renato','R','Rua Ildeu Fernandes Alhadas','10322','Alhadas','Alhadas','Bicas','MG','36600000'),('92c4a64f-2e24-44a4-82eb-36d023f8f6b1',1,0,'2022-08-11 14:44:25.597192','2022-08-13 18:32:48.000000','Casa do Sogro','R','Rua Olavo Cetúbal','12','apto 2234','Centro','Bicas','MG','36600000'),('9460fded-7306-401b-a469-440dc56bb977',1,0,'2022-07-29 14:38:41.767509','2022-07-29 14:38:41.767509','Casa do Cunhado','R','Rua Péricles Mendonça','13','Casa','Centro','Bicas','MG','36600000'),('c2e6cb8a-ccc1-4fca-a84c-391b2ce5c343',1,0,'2022-07-29 22:07:12.470758','2022-07-29 22:42:17.000000','Casa do Papai 1','C','Rua Ildeu Fernandes Alhadas','103','Alhadas','Centro','Bicas','MG','36600000'),('c8a915f9-9977-44b8-8cc3-0d9b2640583c',1,0,'2022-07-29 21:02:32.941058','2022-07-30 18:05:54.082676','Casa do Cunhado 2','R','Rua Péricles Mendonça','13','Casa','Centro','Bicas','MG','36600000'),('dcabe834-90f2-4587-8ac2-0a7e205a4860',1,0,'2022-07-29 21:35:01.376511','2022-07-30 18:06:04.376718','Renato Ferreira Santos','R','Rua Ildeu Fernandes Alhadas','103','Alhadas','Alhadas','Bicas','MG','36600000'),('e221bea7-19ca-4d94-b2ae-c091456e697b',1,0,'2022-07-29 21:02:14.860517','2022-07-29 21:02:14.860517','Casa da Tia','R','Rua Domingos de Oliveira','332','apto 324','Centro','Bicas','MG','36600000'),('eac66f35-fd51-4c89-b144-3aad2036de11',1,0,'2022-07-29 14:37:45.266808','2022-07-29 14:37:45.266808','Casa da Sogra 2','R','Rua Senador Euzébio','30','apto 809','Flamengo','Rio de Janeiro','RJ','22250080'),('f1917de9-e2be-491d-a984-41de31bc477e',1,0,'2022-07-29 22:39:00.557612','2022-07-29 22:42:05.000000','Casa da Sogra','R','Rua Senador Euzébio','30','apto 809','Flamengo','Rio de Janeiro','RJ','22250080'),('f79cc0b8-22f7-40c8-af3a-f229b65efdc3',1,0,'2022-07-29 21:01:06.407221','2022-07-29 21:01:06.407221','Casa do Irmão','R','Rua Silva e Luna','234','Centro','Alhadas','Bicas','MG','36600000'),('fe19e777-3382-419e-aa17-818a5cde0b5d',1,0,'2022-07-29 23:27:00.892808','2022-07-29 23:27:00.892808','Casa da Mãe','R','Rua Barão de Catas Altas','240','240','Centro','Bicas','MG','36600000');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `cate_nm_category` varchar(50) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Category name',
  `cate_tx_image` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Category image',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('00278fa1-222e-41b9-9d80-172539179f2c',1,0,'2022-08-15 18:02:53.711812','2022-11-21 13:07:38.732755','Bebidas','d4e956-436-a91-f6a-7d07dc2e4.jpg'),('27911e12-743f-4018-9997-ae25ecd4b9bd',1,0,'2022-08-15 18:02:21.245592','2022-11-21 13:07:38.734588','Saladas','51c2b8-e42-6f6-bff-149b0899b.jpg'),('28e7a96f-49f3-48ad-84da-7d0551c9e1c2',1,0,'2023-06-08 20:28:21.032689','2023-06-08 20:28:21.032689','Carnes',NULL),('3ca9387a-fb9c-433c-a03b-577338498ff9',1,1,'2022-08-15 18:03:03.025312','2022-11-21 13:07:38.735014','Especiais',NULL),('4ed7f05c-c5e2-496d-a041-571646486af6',1,0,'2022-11-11 13:29:23.930518','2022-11-21 13:07:38.735451','Massas','ac37c9-cfa-724-dca-da951c770.jpg'),('5d8b25f2-183d-40c2-ad55-d472e773091f',1,1,'2022-11-10 23:05:07.085826','2022-11-21 13:07:38.735818','Vinhos',NULL),('bccc95db-395a-4646-b152-490844d98fd0',1,0,'2022-11-10 23:08:35.997453','2022-11-21 13:07:38.736119','Pratos Frios','e50a86-eb0-ca2-dda-0f091d876.jpg'),('e1181f92-1af3-44d8-a2cc-905599d7cd1b',1,0,'2022-08-15 18:04:06.957287','2022-11-21 13:07:38.736447','Pizzas','149859-fd1-e8f-17a-5166c6da2.jpg');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Company` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `comp_nm_company` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'Company name',
  `comp_nm_trademark` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Trade name',
  `comp_ds_company` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Description',
  `comp_cd_cnpj` varchar(20) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'CNPJ',
  `comp_ds_phone` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Phone',
  `comp_ds_smartphone` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Smartphone',
  `comp_ds_whatsapp` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Whatsapp',
  `comp_ds_email` varchar(80) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'Email',
  `comp_ds_site` varchar(80) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Whatsapp',
  `comp_cd_pix` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'PIX',
  `comp_tx_image` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Image default',
  `comp_in_delivery` tinyint NOT NULL DEFAULT '0' COMMENT 'Delivery 0 = False/ 1 = true',
  `comp_cd_delivery` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'P' COMMENT 'Delivery type = V-Fixed value / P-Percent',
  `comp_vl_delivery` decimal(10,2) DEFAULT NULL COMMENT 'Delivery value',
  `comp_ds_tags` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Tags',
  `comp_vl_rating` decimal(10,2) DEFAULT NULL COMMENT 'Rating',
  `comp_ds_logo` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Logo',
  `segmentUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `addressUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `userUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_dd83d564a0beb3aeee270baf87c` (`segmentUid`),
  KEY `FK_6f9af490726417ac4d0377ffaec` (`addressUid`),
  KEY `FK_5d290a4e950859af0b39b8881ba` (`userUid`),
  CONSTRAINT `FK_5d290a4e950859af0b39b8881ba` FOREIGN KEY (`userUid`) REFERENCES `User` (`uid`),
  CONSTRAINT `FK_6f9af490726417ac4d0377ffaec` FOREIGN KEY (`addressUid`) REFERENCES `Address` (`uid`),
  CONSTRAINT `FK_dd83d564a0beb3aeee270baf87c` FOREIGN KEY (`segmentUid`) REFERENCES `Segment` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES ('14c261f0-1687-4c6d-91dd-994741ae3cef',1,0,'2023-02-01 13:06:41.229592','2023-02-01 14:48:12.000000','Damargo Restaurantes Ltda','Damargo','Empresa de refeições rápidas e saborosas','12565000000165','3232711888','32999343535','32999885656','damargo@gmail.com',NULL,NULL,'928679-a42-1e3-6d8-19734885c.jpg',1,'P',10.50,NULL,0.00,'4e307d-dd7-c96-383-4c26d66e2.jpg','5068b3eb-d071-405c-b2d3-fd7876882e72','47282d4d-085b-4cfe-afde-40d68724079d','f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('1e8b8391-2b37-4573-a5a6-9f81b18c1992',1,0,'2022-08-15 13:18:12.940352','2022-12-05 21:47:09.728696','Mactheuse Franquias Ltda.','MacTheuse','Melhor franquia da região','54125622025465','3232711606',NULL,'32999343576','renato@midilabs.com.br','midilabs.com.br','60168935600','400664-49b-8b4-d04-2ce766451.jpg',1,'P',23.00,'tag1, tag2',0.00,'376ffc-bcd-b28-5ae-9ba8d73d1.jpg','5068b3eb-d071-405c-b2d3-fd7876882e72','5384102a-b561-4ee9-9a18-663467caeee8','05faaee4-d3df-4959-af36-2cdbb61983b3'),('2919167a-2975-4dea-87ac-faee237e0000',1,0,'2022-08-10 14:48:06.479280','2022-12-05 21:43:06.257319','Nova Era - Segurança e Valores Ltda.','Nova Era','Empresa do Grupo Famendes','002342233233','3232711606','32988994545','32999343576','renato@midilabs.com.br4','www.midilabs.com.br','','logo_default.jpg',1,'P',0.00,'',0.00,'logo_default.jpg','ae8b9127-cde3-4804-9550-bc1efb40f741',NULL,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('4402026b-4ba2-4132-a0bc-565acff9267d',1,0,'2022-08-10 14:57:43.292980','2022-12-05 21:43:06.257975','Americana Shopping Ltda.','Americana','Empresa do Grupo Gulhões','002342233233','3232711606','32988994545','32999343576','renato@midilabs.com.br4','www.midilabs.com.br','','logo_default.jpg',1,'P',0.00,'',0.00,'logo_default.jpg','ae8b9127-cde3-4804-9550-bc1efb40f741',NULL,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('48722357-6e2b-45ad-bd47-836b4444d3f9',1,0,'2022-08-10 14:01:18.218359','2022-12-05 21:47:09.725958','Casa Curi Ltda.','Curi Acessórios','Acessórios para sua escolha','',NULL,NULL,NULL,'',NULL,NULL,'logo_default.jpg',0,'P',NULL,NULL,NULL,'logo_default.jpg','0d0fec67-4125-45c7-9df6-2197681c0a91','92c4a64f-2e24-44a4-82eb-36d023f8f6b1','f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('8c8c6e34-cde1-49a2-bad1-c1bc8540aca5',1,0,'2022-08-11 14:44:25.829693','2022-12-04 18:27:56.949867','Casa America Ltda.','Casa America 2','Loja de bijuterias','25458000102546','3232711606','32999343576','32999358888','renato@midilabs.com.br','midilabs.com.br','4444','137b1c-ebf-5fc-a46-8b21b125c.jpg',1,'P',11.11,'tag1, tag2, tag3',5.45,'bbf02b-04e-f11-b70-d1cdaf619.jpg','0d0fec67-4125-45c7-9df6-2197681c0a91','92c4a64f-2e24-44a4-82eb-36d023f8f6b1','f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('cdf46143-7bcb-4013-813b-a6f19c8ac492',1,0,'2022-08-13 18:32:48.801136','2022-12-05 22:14:33.909393','Baber Shop Ltda.','Baber Shop','Fundada em 1956, a Barber Shop traz em sua história a tradição de uma marca criada pelos antepassados da família e uma experiência em transformar pessoas em personalidades.','62548765466545','3232713578','32999343567',NULL,'shopbarber@gmail.com','shopbarber.com.br','60168935600','d98320-3be-c17-dd2-b660f83a1.jpg',0,'P',12.20,'tag2, tag3, tag4',6.25,'7bfb5b-49d-b5b-e8a-1393b4d2a.jpg','b7934c84-fc83-4672-92ac-6168165da58e','92c4a64f-2e24-44a4-82eb-36d023f8f6b1','f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('fc535fd0-37e6-4144-8826-1ac8367663ab',1,0,'2022-08-10 13:53:51.062094','2022-12-05 21:46:02.465286','Monet Museu ','Monet','Museu de Arte Moderna','',NULL,NULL,NULL,'',NULL,NULL,'logo_default.jpg',0,'P',NULL,NULL,NULL,'logo_default.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fidelity`
--

DROP TABLE IF EXISTS `Fidelity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fidelity` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `fide_in_validate` tinyint NOT NULL DEFAULT '1' COMMENT 'Valid: 0 - False, 1 - True',
  `userUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `fide_qn_voucher` int NOT NULL DEFAULT '0' COMMENT 'Number of vouchers',
  `promotionUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_3b14091d44979cad9a2ba77ec3b` (`userUid`),
  KEY `FK_b9508af64e87867bb8d17ea3ada` (`promotionUid`),
  CONSTRAINT `FK_3b14091d44979cad9a2ba77ec3b` FOREIGN KEY (`userUid`) REFERENCES `User` (`uid`),
  CONSTRAINT `FK_b9508af64e87867bb8d17ea3ada` FOREIGN KEY (`promotionUid`) REFERENCES `Promotion` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fidelity`
--

LOCK TABLES `Fidelity` WRITE;
/*!40000 ALTER TABLE `Fidelity` DISABLE KEYS */;
INSERT INTO `Fidelity` VALUES ('02f46a92-533f-40b0-bc7c-fc71e1914eaa',1,0,'2022-12-04 14:31:38.852952','2022-12-05 18:20:14.000000',1,'05faaee4-d3df-4959-af36-2cdbb61983b3',4,'36d8359d-9a06-4468-875c-fecf36507d9e'),('08b8f2e3-3017-4ff0-a185-1f4fe8b7b8c7',1,0,'2022-09-20 14:17:19.831310','2023-06-13 22:37:45.000000',1,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07',7,'1d1d3844-bd22-4b3c-b29e-968022774b3a'),('1b8d5e7b-a9c7-4b5f-9dc9-efb1f2e0adba',1,0,'2022-09-19 22:30:24.490637','2022-12-21 14:10:53.000000',1,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07',2,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('412ab55a-fcf5-4b44-a8d5-84fd5382f9bb',1,0,'2023-01-31 22:59:27.386466','2023-01-31 22:59:51.000000',1,'d29ea0ac-46d6-43d3-9a1b-fe5937736729',2,'1d1d3844-bd22-4b3c-b29e-968022774b3a'),('556ffbf0-dfaf-485f-96cb-d7eedf59602e',1,0,'2022-12-16 22:47:36.232028','2022-12-16 22:48:13.000000',1,'6f4e06b6-93ea-422a-bce0-ce9e6c98b7b2',2,'1d1d3844-bd22-4b3c-b29e-968022774b3a'),('8677c8f0-6447-424f-a4d4-1bb1dbecfe7f',1,0,'2022-12-16 22:47:58.219246','2022-12-16 22:48:22.000000',1,'6f4e06b6-93ea-422a-bce0-ce9e6c98b7b2',2,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('92a46348-c755-4f70-9456-8526bccaf966',1,0,'2022-09-19 22:39:51.902304','2022-09-20 14:13:17.000000',1,'35be0ea0-eef5-407e-8fee-70d71f974cc1',3,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('afbb05ef-e5d7-49b2-ac9a-08188241a94e',1,0,'2022-12-07 14:05:55.769486','2022-12-07 14:05:55.769486',1,'eddff447-cb64-4bb5-9b62-e67f7b10b667',1,'1d1d3844-bd22-4b3c-b29e-968022774b3a'),('b48bd003-2bba-4df6-9dcf-84eafa8a3c32',1,0,'2022-09-19 22:39:01.378668','2022-09-19 22:39:01.378668',1,'d29ea0ac-46d6-43d3-9a1b-fe5937736729',1,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('ea1daa8a-9dcb-4a88-b598-50e1ffa67a9a',1,0,'2022-12-05 22:47:14.417182','2022-12-16 22:29:42.000000',1,'05faaee4-d3df-4959-af36-2cdbb61983b3',7,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('f549dd8e-68cb-4f68-be2c-ddb65a8a0e0e',1,0,'2022-09-19 22:14:07.295428','2022-12-22 22:41:01.657861',1,'e08663c8-2281-4d70-8b35-57d5a03a563a',5,'66093a74-53fc-4818-8404-e5fdacaa3bdb'),('f9530092-1e9e-4871-8adb-8dd47cae2c50',1,0,'2022-09-20 14:17:16.306339','2022-12-22 22:41:01.658487',1,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07',4,'36d8359d-9a06-4468-875c-fecf36507d9e');
/*!40000 ALTER TABLE `Fidelity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredient` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `ingr_cd_ingredient` varchar(45) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Ingredient code',
  `ingr_nm_ingredient` varchar(45) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Name',
  `ingr_ds_ingredient` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Description',
  `ingr_sg_unit` varchar(5) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Ingredient unit',
  `ingr_qn_unit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Value of the weight or basic unit of movement of the input in the stock.',
  `ingr_vl_average` decimal(2,2) NOT NULL DEFAULT '0.00' COMMENT 'Average ingredient price',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menu` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `menu_cd_menu` varchar(15) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Code on menu',
  `menu_vl_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Price',
  `menu_pr_discount` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Discount tax',
  `menu_pr_delivery` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Delivery tax',
  `menu_tx_image` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Product image',
  `menu_pr_cashback` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Cashback tax',
  `menu_ds_descriptor` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'List of descritores to facilitasse the search for products (start descriptors with #)',
  `menu_vl_rating` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Rating of menu option',
  `companyUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `productUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_e698d49e25e012e8991d0aa76ad` (`companyUid`),
  KEY `FK_0d252d9193d5c232135dd0744f6` (`productUid`),
  CONSTRAINT `FK_0d252d9193d5c232135dd0744f6` FOREIGN KEY (`productUid`) REFERENCES `Product` (`uid`),
  CONSTRAINT `FK_e698d49e25e012e8991d0aa76ad` FOREIGN KEY (`companyUid`) REFERENCES `Company` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu`
--

LOCK TABLES `Menu` WRITE;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` VALUES ('267452a5-6ccb-44fb-b048-6093b4c3b95e',1,0,'2022-11-25 22:54:55.735456','2022-11-25 22:55:11.000000','RED1',256.00,0.00,0.00,'d45120-8d3-67c-f23-f8dc9f49c.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','0543046b-dfbf-4c6f-9695-63f5b93fa32e'),('362fb7fd-b30f-4658-aaa5-948557a9478a',1,1,'2022-11-25 23:33:22.024125','2022-11-25 23:33:35.000000','ITAIP002',8.50,0.00,0.00,'bb7234-1e1-607-01a-00c2fa99a.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','5503537f-2a62-472b-851d-842a61682220'),('37a5df0e-0995-4020-9ab3-2aaf23a252d0',1,0,'2022-11-25 22:58:29.292706','2022-11-25 22:58:29.292706','HEIN001',10.00,0.00,0.00,'3aa102-1e2-00e-592-f92e733a3.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','cdda7ea4-a0f5-4c5c-b59f-1ba96102c763'),('6a13df25-05c9-4d4c-a376-c1870fff904a',1,0,'2022-11-25 22:56:31.808193','2022-11-25 22:56:31.808193','ORIG001',8.50,0.00,0.00,'9a0e16-966-5da-7e7-60cccd908.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','6ba274d4-3c71-48d4-ac62-84e296d796f0'),('72d823a6-4887-4c3a-ba44-ac34ebfbf16e',1,0,'2022-11-25 22:58:07.386237','2022-11-25 22:58:07.386237','AMST001',8.55,0.00,0.00,'fce98c-7e4-a79-9e3-185f831e2.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','caf73363-75a6-494c-895a-3bad0b6e8d03'),('7fe785fa-6395-4983-b3c5-cc2b5bf91b8f',1,0,'2022-11-25 22:58:46.670444','2022-11-25 22:58:46.670444','TIGE001',11.50,0.00,0.00,'5aa723-671-fb0-fc6-327ce84e6.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','f56058f5-0f16-46eb-9d22-a47e0252773e'),('8e145f2a-0b9f-4776-8999-afb1634f5f52',1,0,'2022-11-25 22:57:03.757692','2022-11-25 22:57:03.757692','GUAR001',5.50,0.00,0.00,'677b3f-593-add-217-860071bfe.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','7101e933-f35f-40d0-ac34-5eb258462018'),('a29915df-b913-4c44-b898-75f6747423ee',1,1,'2022-11-25 22:55:55.819317','2022-11-25 23:41:14.000000','CERV001',7.00,0.00,0.00,'4bde1b-548-31a-552-600d3a2ab.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','5503537f-2a62-472b-851d-842a61682220'),('bba091c5-cefa-4c33-bf84-f08fc5bfc37a',1,0,'2023-02-01 13:16:13.175664','2023-02-01 13:16:42.000000','RED-001',54.00,10.00,5.00,'d45120-8d3-67c-f23-f8dc9f49c.jpg',1.00,NULL,0.00,'14c261f0-1687-4c6d-91dd-994741ae3cef','0543046b-dfbf-4c6f-9695-63f5b93fa32e'),('c68a2a7b-71e4-438d-a5ad-eec542d6fb0c',1,0,'2022-11-25 23:35:31.757227','2022-11-25 23:35:31.757227','PROD001',10.10,0.00,0.00,'4bde1b-548-31a-552-600d3a2ab.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','5503537f-2a62-472b-851d-842a61682220'),('eca803d7-2587-41f0-bdf9-c31b248c6d6d',1,0,'2022-11-25 22:57:33.372382','2022-11-25 22:57:33.372382','COCA001',5.50,0.00,0.00,'75ec7c-102-dbb-8e3-77fd36e61.jpg',0.00,NULL,0.00,'cdf46143-7bcb-4013-813b-a6f19c8ac492','a2455749-e9a8-49da-9cc1-ae016dbb0df9');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `orde_qn_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total amount',
  `orde_vl_discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total discount amount',
  `orde_vl_delivery` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total delivery value',
  `orde_vl_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total order value',
  `orde_in_payment` varchar(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'CSH' COMMENT 'Payment methods: CRE-Credcard, DEB-Debit, CSH-Cash, PIX, VCH-Voucher',
  `userAddressUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `companyUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_7dab6d08aeb58e2f72296ba0186` (`userAddressUid`),
  KEY `FK_66e28acd0e48caca847c8d530f8` (`companyUid`),
  CONSTRAINT `FK_66e28acd0e48caca847c8d530f8` FOREIGN KEY (`companyUid`) REFERENCES `Company` (`uid`),
  CONSTRAINT `FK_7dab6d08aeb58e2f72296ba0186` FOREIGN KEY (`userAddressUid`) REFERENCES `UserAddress` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderMenu`
--

DROP TABLE IF EXISTS `OrderMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderMenu` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `orme_qn_item` smallint NOT NULL DEFAULT '1' COMMENT 'Itens amount',
  `orme_vl_item` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Unit value without discount',
  `orme_vl_discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Value of discount',
  `orme_vl_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total item value',
  `orme_vl_rating` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Item rating',
  `orderUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `menuUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_b6e6b0baf46a700aabc3050c2e4` (`orderUid`),
  KEY `FK_c05cfd45182d471c86ce66334af` (`menuUid`),
  CONSTRAINT `FK_b6e6b0baf46a700aabc3050c2e4` FOREIGN KEY (`orderUid`) REFERENCES `Order` (`uid`),
  CONSTRAINT `FK_c05cfd45182d471c86ce66334af` FOREIGN KEY (`menuUid`) REFERENCES `Menu` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderMenu`
--

LOCK TABLES `OrderMenu` WRITE;
/*!40000 ALTER TABLE `OrderMenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderMenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `prod_cd_standard` varchar(15) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Standard product code',
  `prod_nm_product` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'Product name',
  `prod_ds_product` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Product description',
  `prod_ds_recipe` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Recipe',
  `prod_tx_image` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Standard product image',
  `prod_ds_descriptor` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'List of descritores to facilitasse the search for products (start descriptors with #)',
  `categoryUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_cef8f3b91a8f1e1351567995ae4` (`categoryUid`),
  CONSTRAINT `FK_cef8f3b91a8f1e1351567995ae4` FOREIGN KEY (`categoryUid`) REFERENCES `Category` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('0543046b-dfbf-4c6f-9695-63f5b93fa32e',1,0,'2022-08-22 14:06:16.633036','2022-11-25 16:09:17.000000','0004','Red Label','Whisky Red Label','Whisky','d45120-8d3-67c-f23-f8dc9f49c.jpg',NULL,'00278fa1-222e-41b9-9d80-172539179f2c'),('5503537f-2a62-472b-851d-842a61682220',1,0,'2022-08-22 14:05:29.207929','2023-06-01 23:07:41.000000','0003','Cerveja Itaipava','Cerveja Itaipava 300ml','Cerveja','4bde1b-548-31a-552-600d3a2ab.jpg','#itaipava, #cerveja','00278fa1-222e-41b9-9d80-172539179f2c'),('6ba274d4-3c71-48d4-ac62-84e296d796f0',1,0,'2022-08-22 14:04:37.868552','2022-11-25 16:08:18.000000','0001','Cerveja Original','Cerveja Antarctica Original 300ml','Cerveja','9a0e16-966-5da-7e7-60cccd908.jpg',NULL,'00278fa1-222e-41b9-9d80-172539179f2c'),('7101e933-f35f-40d0-ac34-5eb258462018',1,0,'2022-08-22 14:06:44.398275','2022-11-25 16:06:17.000000','0005','Guaraná Antártica','Guaraná Antártica 300ml','Refrigerante','677b3f-593-add-217-860071bfe.jpg',NULL,'00278fa1-222e-41b9-9d80-172539179f2c'),('a2455749-e9a8-49da-9cc1-ae016dbb0df9',1,0,'2022-08-16 14:57:37.122832','2022-11-25 16:05:47.000000','0001','Coca-cola','Coca-cola 300ml','','75ec7c-102-dbb-8e3-77fd36e61.jpg','refrigerantes','00278fa1-222e-41b9-9d80-172539179f2c'),('caf73363-75a6-494c-895a-3bad0b6e8d03',1,0,'2022-08-22 14:05:03.682378','2022-11-25 21:54:54.000000','0002','Cerveja Amstel','Cerveja Amstel','Cerveja','fce98c-7e4-a79-9e3-185f831e2.jpg',NULL,'00278fa1-222e-41b9-9d80-172539179f2c'),('cdda7ea4-a0f5-4c5c-b59f-1ba96102c763',1,0,'2022-11-25 16:09:58.379097','2023-06-01 23:07:23.000000',NULL,'Cerveja Heinecken','Cerveja Heineken 300ml','Cerveja','3aa102-1e2-00e-592-f92e733a3.jpg',NULL,'00278fa1-222e-41b9-9d80-172539179f2c'),('f56058f5-0f16-46eb-9d22-a47e0252773e',1,0,'2022-08-16 15:02:56.969727','2022-11-25 21:55:08.000000','002','Cerveja Tiger','Cerveja Tiger 300ml','','5aa723-671-fb0-fc6-327ce84e6.jpg','cerveja','00278fa1-222e-41b9-9d80-172539179f2c');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductIngredient`
--

DROP TABLE IF EXISTS `ProductIngredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductIngredient` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `prin_qn_recipe` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Amount used in recipe',
  `prin_vl_ingredient` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Ingredient cost',
  `prin_ds_recipe` varchar(250) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Recipe',
  `productUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ingredientUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_ff7cd17d313a3f67c4897c31f2f` (`productUid`),
  KEY `FK_114cefa162448b21e05a7cced5d` (`ingredientUid`),
  CONSTRAINT `FK_114cefa162448b21e05a7cced5d` FOREIGN KEY (`ingredientUid`) REFERENCES `Ingredient` (`uid`),
  CONSTRAINT `FK_ff7cd17d313a3f67c4897c31f2f` FOREIGN KEY (`productUid`) REFERENCES `Product` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductIngredient`
--

LOCK TABLES `ProductIngredient` WRITE;
/*!40000 ALTER TABLE `ProductIngredient` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductIngredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotion`
--

DROP TABLE IF EXISTS `Promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promotion` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `prom_nm_promotion` varchar(100) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'promotion name',
  `prom_ds_promotion` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'promotion description',
  `prom_cd_qrcode` varchar(500) COLLATE utf8_swedish_ci NOT NULL DEFAULT '' COMMENT 'qrcode image',
  `prom_dt_start` timestamp(6) NOT NULL COMMENT 'Start date',
  `prom_dt_finish` timestamp(6) NOT NULL COMMENT 'Finish date',
  `prom_cd_status` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'P' COMMENT 'Status: A-Active, C-Closed, P-Pending, ',
  `companyUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_2156bd29b28f70378b274cdcfff` (`companyUid`),
  CONSTRAINT `FK_2156bd29b28f70378b274cdcfff` FOREIGN KEY (`companyUid`) REFERENCES `Company` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotion`
--

LOCK TABLES `Promotion` WRITE;
/*!40000 ALTER TABLE `Promotion` DISABLE KEYS */;
INSERT INTO `Promotion` VALUES ('1d1d3844-bd22-4b3c-b29e-968022774b3a',1,0,'2022-09-16 14:36:05.104788','2023-01-02 23:24:06.533155','Promoção Amais','Promoção do supermercado','qrcode_default.jpg','2022-09-02 03:00:00.000000','2023-12-31 03:00:00.000000','A','1e8b8391-2b37-4573-a5a6-9f81b18c1992'),('36d8359d-9a06-4468-875c-fecf36507d9e',1,0,'2022-09-12 14:31:02.468496','2022-12-05 22:04:48.495603','Promoção Fim de Ano','Promoção da ASSCOM','ecb0df-8c3-430-1e4-d553215e0.jpg','2022-09-12 03:00:00.000000','2022-10-31 03:00:00.000000','A','1e8b8391-2b37-4573-a5a6-9f81b18c1992'),('56ee17a4-f630-4816-976c-c01d5ce2715e',1,0,'2023-02-01 13:18:16.358138','2023-02-01 13:18:16.358138','CARNAVAL LEGAL','Promoção de Carnaval Damargo','qrcode_default.jpg','2023-02-01 03:00:00.000000','2023-02-28 03:00:00.000000','A','14c261f0-1687-4c6d-91dd-994741ae3cef'),('66093a74-53fc-4818-8404-e5fdacaa3bdb',1,0,'2022-09-12 14:24:42.023162','2022-09-12 14:31:02.468496','Promoção 11','Teste de descrição','b010ed-cfb-d23-b30-278cd554d.jpg','2022-09-07 03:00:00.000000','2022-12-31 03:00:00.000000','A','cdf46143-7bcb-4013-813b-a6f19c8ac492'),('73a0e29a-c166-4252-b917-4771badf154c',1,0,'2022-09-16 14:35:38.235133','2022-09-12 14:31:02.468496','Promoção nova 10','Teste promoção','qrcode_default.jpg','2022-09-06 03:00:00.000000','2022-09-29 03:00:00.000000','A','cdf46143-7bcb-4013-813b-a6f19c8ac492'),('da4a8f19-0057-4a8c-ab2c-ccf06531cc87',1,0,'2022-09-12 14:40:45.148195','2022-09-12 14:41:07.000000','Promoção Fim de Ano 2022','Teste 2022','qrcode_default.jpg','2022-09-12 03:00:00.000000','2022-09-29 03:00:00.000000','A','cdf46143-7bcb-4013-813b-a6f19c8ac492');
/*!40000 ALTER TABLE `Promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RefreshToken`
--

DROP TABLE IF EXISTS `RefreshToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RefreshToken` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `expiresIn` int NOT NULL,
  `userId` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `userUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_27eea6b2033c9e18a1d3f8fccc2` (`userUid`),
  CONSTRAINT `FK_27eea6b2033c9e18a1d3f8fccc2` FOREIGN KEY (`userUid`) REFERENCES `User` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RefreshToken`
--

LOCK TABLES `RefreshToken` WRITE;
/*!40000 ALTER TABLE `RefreshToken` DISABLE KEYS */;
INSERT INTO `RefreshToken` VALUES ('10486f32-df5c-4b37-ad31-3d60cf181c87',1,0,'2022-10-16 19:51:25.213736','2022-12-18 18:59:07.360114',1665949915,'872aa527-02a2-4f9d-99f1-163cc59744df','872aa527-02a2-4f9d-99f1-163cc59744df'),('1c949176-3f50-420e-80d8-1a4235c25633',1,0,'2022-10-22 21:24:30.498093','2022-12-18 18:59:07.360651',1666473900,'5bef5fc7-e052-4c0e-9953-73bf1058afa9','5bef5fc7-e052-4c0e-9953-73bf1058afa9'),('1fba0adf-4d43-4aa3-bec2-8e361a7e04e5',1,0,'2022-11-01 23:21:45.082496','2022-12-18 18:59:07.361090',1667344935,'33a5076b-e2c4-4713-9a55-192a1e08ebf5','33a5076b-e2c4-4713-9a55-192a1e08ebf5'),('49d17ba1-ef4d-4b23-918e-90d183654a18',1,0,'2023-06-08 21:30:48.084137','2023-06-08 21:30:48.084137',1686259878,'d29ea0ac-46d6-43d3-9a1b-fe5937736729','d29ea0ac-46d6-43d3-9a1b-fe5937736729'),('519758f3-7134-4150-9927-5a839edcc9d3',1,0,'2022-11-01 23:04:30.631009','2022-12-18 18:59:07.361566',1667343900,'4ad5a8ee-f83c-4a9a-9793-029b0a2dc07c','4ad5a8ee-f83c-4a9a-9793-029b0a2dc07c'),('5254921e-919e-48d6-9505-c414f5ef6282',1,0,'2022-12-06 23:01:59.054661','2022-12-18 18:59:07.362054',1670367749,'9cf187ac-acf8-4ea1-94c9-b6dc78acf1f0','9cf187ac-acf8-4ea1-94c9-b6dc78acf1f0'),('6940028c-5d70-4260-a26e-5bf2898beef8',1,0,'2022-12-16 23:09:53.139041','2022-12-18 18:59:07.362481',1671232223,'05faaee4-d3df-4959-af36-2cdbb61983b3','05faaee4-d3df-4959-af36-2cdbb61983b3'),('6ac52741-29e2-42e8-b30e-537031c52d2e',1,0,'2022-12-06 14:13:36.526773','2022-12-18 18:59:07.362950',1670336046,'13db59ca-fe8c-4777-9db8-afbd73fe7b67','13db59ca-fe8c-4777-9db8-afbd73fe7b67'),('71d35a2f-8be2-4164-99be-292bf79b921c',1,0,'2022-12-07 14:05:26.246440','2022-12-18 18:59:07.363300',1670421956,'eddff447-cb64-4bb5-9b62-e67f7b10b667','eddff447-cb64-4bb5-9b62-e67f7b10b667'),('759410ca-bc4b-46b2-af7b-20b4e80e9fbd',1,0,'2022-10-17 13:51:58.351862','2022-12-18 18:59:07.363604',1666014748,'9f1a0f1f-966d-4bed-a2b3-a578c4471fa1','9f1a0f1f-966d-4bed-a2b3-a578c4471fa1'),('88b3e2d6-471c-4a71-8040-1ce973b9f2d9',1,0,'2022-10-16 18:30:38.661953','2022-12-18 18:59:07.364331',1665945068,'220825d3-b41e-4dc2-9975-53fd53b66ece','220825d3-b41e-4dc2-9975-53fd53b66ece'),('8ee7a4c4-0591-4683-a618-8cf99c200091',1,0,'2022-10-15 23:30:02.964589','2022-12-18 18:59:07.364615',1665876632,'c945aeb8-26c6-46d4-b36e-d6b1f2a1d5c9','c945aeb8-26c6-46d4-b36e-d6b1f2a1d5c9'),('b5a4a090-2f0c-45bd-a9d8-4cba86cfb3b0',1,0,'2022-12-16 22:54:33.897569','2022-12-18 18:59:07.364979',1671231303,'6f4e06b6-93ea-422a-bce0-ce9e6c98b7b2','6f4e06b6-93ea-422a-bce0-ce9e6c98b7b2'),('c541f31a-b7e8-46d1-957d-c3e49021a98f',1,0,'2022-10-12 21:40:25.543415','2022-12-18 18:59:07.365379',1665610855,'24c11273-94bc-4751-a0cb-17afc5f1ea7d','24c11273-94bc-4751-a0cb-17afc5f1ea7d'),('d9da2f2a-72e1-44fd-8751-f5af790e9240',1,0,'2022-12-06 14:42:03.746964','2022-12-18 18:59:07.365749',1670337753,'a501a92c-540b-45ca-92de-868f1a932d73','a501a92c-540b-45ca-92de-868f1a932d73'),('e2b4cf9e-8973-45e3-8b2f-135fcc4d5085',1,0,'2023-06-13 23:23:44.496811','2023-06-13 23:23:44.496811',1686698654,'f0aa2268-986c-4e20-85ee-7ddde2c7ef07','f0aa2268-986c-4e20-85ee-7ddde2c7ef07'),('e6a4431c-5059-4b63-96ee-160543ad19c5',1,0,'2022-10-24 21:50:54.109782','2022-12-18 18:59:07.366156',1666648284,'7c58a68a-bc3b-480e-bf32-ed5be0582aec','7c58a68a-bc3b-480e-bf32-ed5be0582aec'),('e959d97e-0909-4eb0-9ccc-0e3fa106625d',1,0,'2022-10-12 21:35:46.276653','2022-12-18 18:59:07.366751',1665610576,'d31550ed-ca35-4490-b22b-804f41cdaa24','d31550ed-ca35-4490-b22b-804f41cdaa24'),('fee81844-e4a2-435a-b014-0b0fe8b2f338',1,0,'2022-12-06 23:05:39.184395','2022-12-18 18:59:07.367282',1670367969,'f335d2a3-7881-45fb-9275-ef0b6953b454','f335d2a3-7881-45fb-9275-ef0b6953b454');
/*!40000 ALTER TABLE `RefreshToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Segment`
--

DROP TABLE IF EXISTS `Segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Segment` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `seg_nm_segment` varchar(100) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Segment name',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Segment`
--

LOCK TABLES `Segment` WRITE;
/*!40000 ALTER TABLE `Segment` DISABLE KEYS */;
INSERT INTO `Segment` VALUES ('0d0fec67-4125-45c7-9df6-2197681c0a91',1,0,'2022-07-30 22:16:33.154021','2022-08-09 22:33:44.166681','Segmento 11'),('33c6feee-29fd-42bb-833b-816605b58926',1,0,'2022-07-30 22:17:01.423675','2022-07-30 22:17:01.423675','Segmento 3'),('5068b3eb-d071-405c-b2d3-fd7876882e72',1,0,'2022-08-09 15:05:59.586945','2022-08-09 15:05:59.586945','Fastfood'),('ae8b9127-cde3-4804-9550-bc1efb40f741',1,0,'2022-07-30 22:16:53.036011','2022-07-30 22:17:09.000000','Segmento 22'),('b7934c84-fc83-4672-92ac-6168165da58e',1,0,'2022-08-09 22:50:06.254201','2022-08-09 22:50:06.254201','Barbearia'),('ef43fbe1-525a-476e-8995-722619f71693',1,0,'2022-07-30 22:17:24.164702','2022-07-30 22:17:24.164702','Segmento 11');
/*!40000 ALTER TABLE `Segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `user_sg_user` varchar(20) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Codname',
  `user_nm_name` varchar(25) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Name',
  `user_nm_lastname` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Lastname',
  `user_dt_birthdate` datetime DEFAULT NULL COMMENT 'Birth Date',
  `user_ds_email` varchar(100) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Email',
  `user_ds_phone` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Phone',
  `user_ds_smartphone` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Smartphone',
  `user_ds_whatsapp` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Whatsapp',
  `user_cd_password` varchar(50) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Password',
  `user_tx_avatar` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Avatar',
  `user_vl_cashback` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Accumulated cashback total',
  `user_vl_score` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total score',
  `user_vl_rating` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Rating',
  `user_cd_refreshtoken` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL COMMENT 'Refreshtoken',
  `user_cd_type` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'V' COMMENT 'User type: A-Administrador, G-Gerente, O-Operador, V-Visualizador',
  `user_cd_recovery` varchar(50) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Password Recovery',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('05faaee4-d3df-4959-af36-2cdbb61983b3',1,0,'2022-10-14 13:48:13.013685','2022-12-16 16:04:25.000000','XXX','Vicente','Viana 1','1943-10-05 09:00:00','vicente@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','8e8684-891-099-cf1-8487ac4c8.jpg',0.00,0.00,0.00,NULL,'A',''),('13db59ca-fe8c-4777-9db8-afbd73fe7b67',1,0,'2022-11-01 23:22:47.096096','2022-12-06 14:14:55.000000','XXX','Camilo','Nascimento Silva','1931-11-21 09:00:00','camilo@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','b7e9ab-4b8-d08-e8c-eb62a4882.jpg',0.00,0.00,0.00,NULL,'A',''),('220825d3-b41e-4dc2-9975-53fd53b66ece',1,0,'2022-10-16 17:26:44.886672','2022-12-05 21:40:05.504506','XXX','Matilde','Govea','2022-05-29 09:00:00','matilde@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','434324-d4e-695-ccb-7becbcb49.jpg',0.00,0.00,0.00,NULL,'A',''),('24c11273-94bc-4751-a0cb-17afc5f1ea7d',1,0,'2022-10-12 21:39:46.753252','2022-12-05 21:40:05.504886','XXX','Carlos Eduardo','Silva','2022-05-10 09:00:00','kz@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'A',''),('33a5076b-e2c4-4713-9a55-192a1e08ebf5',1,0,'2022-11-01 23:10:08.002586','2022-12-05 21:40:05.505221','XXX','Tata','Verneck 2','1949-11-23 09:00:00','tata@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','4308e0-134-980-980-5c4f5a1c5.jpg',0.00,0.00,0.00,NULL,'A',''),('35be0ea0-eef5-407e-8fee-70d71f974cc1',1,0,'2022-07-20 13:48:38.173105','2022-10-02 17:31:02.000000','ARM','Armando Pestana','Pestana','2016-01-07 00:00:00','armando@gmail.com','4456548888','44956566566','','202cb962ac59075b964b07152d234b70','18cb02-014-ade-210-0388f306e.jpg',0.00,0.00,0.00,NULL,'A',''),('4ad5a8ee-f83c-4a9a-9793-029b0a2dc07c',1,0,'2022-11-01 22:28:26.577403','2022-12-05 21:40:05.505525','XXX','Gabriel','Mendes Sá 2','1939-11-30 09:00:00','gabriel@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','39a649-11e-3a1-e17-e14fe3692.jpg',0.00,0.00,0.00,NULL,'A',''),('5bef5fc7-e052-4c0e-9953-73bf1058afa9',1,0,'2022-10-17 13:52:42.948062','2022-12-05 21:40:17.046300','XXX','Sérgio','Cabral 2','1922-10-26 09:00:00','sergio@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','03dae6-21f-d51-cf6-36da59088.jpg',0.00,0.00,0.00,NULL,'A',''),('619b846b-b1cf-4760-b783-e3b411145a0f',1,0,'2022-07-20 13:47:28.173646','2022-07-20 13:47:28.173646','IVE','Ivete','Sangalo','1968-07-18 00:00:00','ivete@gmail.com','3535655566','32966565666','32654465555','202cb962ac59075b964b07152d234b70','6870d0-f30-ba3-bae-cb8a7d09d.jpg',0.00,0.00,0.00,NULL,'A',''),('6f4e06b6-93ea-422a-bce0-ce9e6c98b7b2',1,0,'2022-12-16 22:45:43.288124','2022-12-16 22:46:53.000000','XXX','Otávio','Lara','2010-02-16 09:00:00','otavio@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','ffd55c-cda-df5-56c-8347b2b1f.jpg',0.00,0.00,0.00,NULL,'V',''),('7c58a68a-bc3b-480e-bf32-ed5be0582aec',1,0,'2022-10-24 14:53:54.219056','2022-12-05 21:40:17.046826','XXX','Maradona','Diego','2022-10-05 09:00:00','maradona@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','893a13-f2b-5f8-38e-29c730704.jpg',0.00,0.00,0.00,NULL,'A',''),('872aa527-02a2-4f9d-99f1-163cc59744df',1,0,'2022-10-16 18:31:54.075217','2022-12-05 21:40:17.047304','XXX','Oscar','Vilena','2022-02-07 09:00:00','oscar@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','3f5ce1-120-c7e-8ee-7e634eedb.jpg',0.00,0.00,0.00,NULL,'A',''),('9cf187ac-acf8-4ea1-94c9-b6dc78acf1f0',1,0,'2022-12-06 23:00:39.333713','2022-12-06 23:00:39.333713','XXX','Didi',NULL,NULL,'didi@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'V',''),('9f1a0f1f-966d-4bed-a2b3-a578c4471fa1',1,0,'2022-10-16 19:52:08.642663','2022-12-05 21:40:17.047744','XXX','Ivone','Lara','2016-01-28 09:00:00','ivone@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','88f376-ca5-f28-680-0718aa798.jpg',0.00,0.00,0.00,NULL,'A',''),('a501a92c-540b-45ca-92de-868f1a932d73',1,0,'2022-12-06 14:39:42.699570','2022-12-06 14:41:39.000000','XXX','Alexandre','Almeida Prado','1924-12-06 09:00:00','alexandre@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','e3a231-689-f6f-820-c801f471f.jpg',0.00,0.00,0.00,NULL,'V',''),('c945aeb8-26c6-46d4-b36e-d6b1f2a1d5c9',1,0,'2022-10-15 23:29:58.589602','2022-12-05 21:40:27.936442','XXX','Tiago',NULL,NULL,'tiago@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'A',''),('d29ea0ac-46d6-43d3-9a1b-fe5937736729',1,0,'2022-07-19 22:33:41.599589','2022-07-20 13:45:24.000000','PED','Pedro 2','Cremonezi','1967-05-08 00:00:00','pedro@gmail.com','3232713535','','32999334455','202cb962ac59075b964b07152d234b70','fafcb0-4fe-a86-50f-fee1db813.jpg',0.00,0.00,0.00,NULL,'A',''),('d31550ed-ca35-4490-b22b-804f41cdaa24',1,0,'2022-10-12 21:32:41.318566','2022-12-05 21:40:27.937057','XXX','Miranda','Souza','1967-05-09 09:00:00','miranda@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'A',''),('e08663c8-2281-4d70-8b35-57d5a03a563a',1,0,'2022-07-19 23:20:35.788531','2022-07-19 23:21:18.000000','EVD','Evandro','Clemente','1967-04-06 00:00:00','evandro@gmail.com','','','32999343576','202cb962ac59075b964b07152d234b70','f33c15-7cf-a2c-21e-e1cb596c8.jpg',0.00,0.00,0.00,NULL,'A',''),('eddff447-cb64-4bb5-9b62-e67f7b10b667',1,0,'2022-12-06 22:41:08.369558','2022-12-06 22:41:35.000000','XXX','Krispin','Alvarenga',NULL,'krispin@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'V',''),('f0aa2268-986c-4e20-85ee-7ddde2c7ef07',1,0,'2022-06-21 14:48:00.554769','2023-06-01 23:28:11.000000','REN','Renato','Ferreira Santos','1967-05-08 09:00:00','renato.insigne@gmail.com','3232711606','32999343576','32999343576','202cb962ac59075b964b07152d234b70','8507ed-900-9e1-41e-57d5224b6.jpg',0.00,0.00,0.00,'','A','202cb'),('f335d2a3-7881-45fb-9275-ef0b6953b454',1,0,'2022-12-06 23:02:56.815935','2022-12-06 23:02:56.815935','XXX','Dada',NULL,NULL,'dada@gmail.com',NULL,NULL,NULL,'202cb962ac59075b964b07152d234b70','photo_default.jpg',0.00,0.00,0.00,NULL,'V',''),('fc988145-d82b-4691-b015-0fcc8729c0fc',1,0,'2022-07-20 13:49:55.235663','2022-07-20 13:49:55.235663','CRL','Carla','Amâncio','1969-06-04 00:00:00','carla@gmail.com','3587898899','44656568887','','202cb962ac59075b964b07152d234b70','8e4f49-03d-a9d-a0a-6346be1c1.jpg',0.00,0.00,0.00,NULL,'A','');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAddress`
--

DROP TABLE IF EXISTS `UserAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserAddress` (
  `uid` char(36) COLLATE utf8_swedish_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `usad_in_default` tinyint NOT NULL DEFAULT '1' COMMENT 'Default Address (0-Falte, 1=True)',
  `userUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  `addressUid` char(36) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK_d15f8d6af0a991901642675cbde` (`userUid`),
  KEY `FK_87d4e7df399940297a0bdcf53a2` (`addressUid`),
  CONSTRAINT `FK_87d4e7df399940297a0bdcf53a2` FOREIGN KEY (`addressUid`) REFERENCES `Address` (`uid`),
  CONSTRAINT `FK_d15f8d6af0a991901642675cbde` FOREIGN KEY (`userUid`) REFERENCES `User` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAddress`
--

LOCK TABLES `UserAddress` WRITE;
/*!40000 ALTER TABLE `UserAddress` DISABLE KEYS */;
INSERT INTO `UserAddress` VALUES ('0e4c98d1-8756-4e86-a54a-44f1c406fdd4',1,1,'2022-07-30 17:18:45.502353','2022-07-30 17:21:06.000000',0,'619b846b-b1cf-4760-b783-e3b411145a0f','7c73f6d4-e598-420c-8e0a-ed25a8b4b6ba'),('1018716f-798e-4eb7-a44e-91b9303dbb12',1,0,'2022-07-29 14:38:41.779829','2022-07-29 14:40:40.086134',0,'35be0ea0-eef5-407e-8fee-70d71f974cc1','9460fded-7306-401b-a469-440dc56bb977'),('212b86a7-c717-4461-b8a5-88b6b36ba6c0',1,0,'2022-07-29 22:41:54.342896','2022-07-29 22:41:54.342896',0,'e08663c8-2281-4d70-8b35-57d5a03a563a','538c5ea4-a48f-4185-ab25-f1e84e937f52'),('342509a1-76c7-4f0d-8256-2454f0fc3c6d',1,0,'2022-07-28 16:10:48.664262','2022-07-28 16:10:48.664262',0,'35be0ea0-eef5-407e-8fee-70d71f974cc1','6dcca7b5-42af-4757-8bf5-8c2b2de5eced'),('3af5fb0b-c9ce-4cd8-a852-cc1a84d338d0',1,0,'2022-07-29 23:27:00.904112','2022-07-29 23:27:00.904112',0,'fc988145-d82b-4691-b015-0fcc8729c0fc','fe19e777-3382-419e-aa17-818a5cde0b5d'),('41f8ffaa-9f9e-4482-95ee-c57499595341',1,0,'2022-07-29 22:39:00.565631','2022-07-29 22:39:00.565631',0,'e08663c8-2281-4d70-8b35-57d5a03a563a','f1917de9-e2be-491d-a984-41de31bc477e'),('4ffb9225-5ec5-417e-af7d-e59a8e746b75',1,0,'2022-07-29 21:35:26.650767','2022-07-30 18:05:35.528224',0,'fc988145-d82b-4691-b015-0fcc8729c0fc','8ca17afd-5095-4c29-a92f-759fc74629ab'),('5754c679-5404-4e5d-96f9-cbcfbe2919b2',1,0,'2022-07-29 22:07:12.479915','2022-07-29 22:07:40.000000',1,'e08663c8-2281-4d70-8b35-57d5a03a563a','c2e6cb8a-ccc1-4fca-a84c-391b2ce5c343'),('78727574-7c37-40a2-9606-e5e596b07d08',1,0,'2022-07-30 17:19:24.843371','2022-07-30 18:05:35.528860',0,'619b846b-b1cf-4760-b783-e3b411145a0f','1a914aef-f9b7-4d83-9391-10eb8a52f289'),('7b0d857a-7ea2-4450-8b7b-26d8ecc981d1',1,0,'2022-07-29 21:39:14.690200','2022-07-29 21:39:14.690200',0,'e08663c8-2281-4d70-8b35-57d5a03a563a','29fdbde3-8fcb-437e-a568-fe7d25ed43c8'),('c3859a0e-dee9-4e09-9535-7e86974157ba',1,0,'2022-07-29 21:35:01.387141','2022-07-30 18:05:35.529213',0,'fc988145-d82b-4691-b015-0fcc8729c0fc','dcabe834-90f2-4587-8ac2-0a7e205a4860'),('c8e9698f-b264-4aa5-9156-d184cc919e6b',1,0,'2022-07-29 14:37:45.281017','2022-07-29 14:40:52.630792',1,'35be0ea0-eef5-407e-8fee-70d71f974cc1','eac66f35-fd51-4c89-b144-3aad2036de11'),('cb5975e5-9308-4800-96b4-5f2544fa30ff',1,0,'2022-07-29 21:02:14.871651','2022-07-29 21:02:14.871651',1,'35be0ea0-eef5-407e-8fee-70d71f974cc1','e221bea7-19ca-4d94-b2ae-c091456e697b'),('d8478d32-e2eb-4dcf-8c49-7662953c7a04',1,0,'2022-07-29 14:50:26.166091','2022-07-29 14:50:26.166091',1,'35be0ea0-eef5-407e-8fee-70d71f974cc1','4d12db78-690a-4e9e-8860-824f21cc81d0'),('ece60840-6bc8-47b8-82dc-b38a19a7538f',1,0,'2022-07-29 21:01:06.419374','2022-07-29 21:01:06.419374',0,'35be0ea0-eef5-407e-8fee-70d71f974cc1','f79cc0b8-22f7-40c8-af3a-f229b65efdc3'),('fd4efbc7-24c7-4893-a364-7c56b4a581f1',1,0,'2022-07-29 21:02:32.950663','2022-07-30 18:05:35.529568',0,'35be0ea0-eef5-407e-8fee-70d71f974cc1','c8a915f9-9977-44b8-8cc3-0d9b2640583c'),('ffbf626e-8cc0-4d02-8139-7ee2754270ac',1,0,'2022-07-29 23:09:12.890732','2022-07-30 18:05:35.529903',0,'fc988145-d82b-4691-b015-0fcc8729c0fc','79bf2603-d581-4bee-8466-4355034e86c6');
/*!40000 ALTER TABLE `UserAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voucher`
--

DROP TABLE IF EXISTS `Voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Voucher` (
  `uid` char(36) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Active: 0 = False/ 1 = true',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted: 0 = False/ 1 = true',
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Creation date',
  `updated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT 'Update date',
  `vouc_cd_code` varchar(6) NOT NULL COMMENT 'Voucher code',
  `vouc_vl_expiresin` int NOT NULL COMMENT 'Time of expiration',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voucher`
--

LOCK TABLES `Voucher` WRITE;
/*!40000 ALTER TABLE `Voucher` DISABLE KEYS */;
INSERT INTO `Voucher` VALUES ('526465c8-f66b-4eea-8a49-96979e0f458b',1,0,'2023-06-13 23:35:03.034036','2023-06-13 23:35:03.034036','462312',1686699333),('fad092b4-812d-4050-b03f-0442e59bbecc',1,0,'2023-06-13 22:52:32.363912','2023-06-13 22:52:32.363912','976913',1686696782);
/*!40000 ALTER TABLE `Voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lacarte'
--

--
-- Dumping routines for database 'lacarte'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 11:26:15
