-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	5.6.45-log

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `regdate` date NOT NULL,
  `readcount` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'d','d','d','d','2021-01-08',8,'dd'),(2,'c','c','c','c','2021-01-07',2,'cc'),(3,'dd','dd','dd','dd','2021-01-08',0,'ddd'),(4,'a','aa','aa','aa','2021-01-08',0,'aa'),(5,'a','aa','aa','aa','2021-01-08',0,'aa'),(6,'a','aa','aa','aa','2021-01-08',0,'aa');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `pwd2` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('a','a','a','a','a','2021-01-06 00:00:00'),('b','b','b','b','b','2021-01-06 09:20:55'),('d','d','d','d','d','2021-01-06 09:46:18'),('test','t','t','test','test',NULL),('testId','testPwd','testPwd2','testName','testPhone','2021-01-06 00:00:00'),('ttt','ttt','ttt','ttt','ttt','2021-01-06 00:00:00');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sumenu`
--

DROP TABLE IF EXISTS `sumenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sumenu` (
  `no` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `temp` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sumenu`
--

LOCK TABLES `sumenu` WRITE;
/*!40000 ALTER TABLE `sumenu` DISABLE KEYS */;
INSERT INTO `sumenu` VALUES (1,'Nuvigil','A-S Medication Solutions LLC','pretiumIaculisJusto.png',63809,'2020-12-06','','2'),(2,'Metformin Hydrochloride','Mylan Pharmaceuticals Inc.','aeneanLectusPellentesque.tiff',56518,'2020-07-31','','2'),(3,'Xodol','Rebel Distributors Corp.','vitaeNisi.ppt',39768,'2020-10-24','','5'),(4,'Diazepam','Mylan Institutional Inc.','plateaDictumst.xls',19076,'2020-06-26','','5'),(5,'Cetirizine Hydrochloride','Physicians Total Care, Inc.','nunc.pdf',55693,'2020-05-04','','9'),(6,'Risperidone','State of Florida DOH Central Pharmacy','odioPorttitor.pdf',36969,'2020-01-23','','7'),(7,'Loperamide HCl','TARGET Corporation','erosVestibulumAc.xls',46546,'2020-04-30','','1'),(8,'Diazepam','IVAX Pharmaceuticals, Inc.','lectus.mpeg',54617,'2020-07-30','','5'),(9,'Welchol','Physicians Total Care, Inc.','nuncRhoncusDui.jpeg',4742,'2020-07-08','','4'),(10,'CVS','CVS Pharmacy','dictumstAliquam.ppt',57799,'2020-10-15','','1'),(11,'Bleomycin','Teva Parenteral Medicines, Inc.','justoMorbi.ppt',30302,'2020-04-13','','9'),(12,'Medique Alcalak','Unifirst First Aid Corporation','nequeAeneanAuctor.mp3',72887,'2019-12-30','','9'),(13,'Omeprazole','Sandoz Inc','posuereCubiliaCurae.avi',17613,'2020-05-05','','4'),(14,'Betadine','Rebel Distributors Corp','donec.pdf',12114,'2020-05-12','','4'),(15,'Cetirizine Hydrochloride','Silarx Pharmaceuitcals, Inc','condimentum.jpeg',75593,'2019-12-31','','1'),(16,'Conceptrol','Caldwell Consumer Health LLC','tinciduntAnteVel.mov',457,'2020-03-28','','4'),(17,'Lisinopril','American Health Packaging','dictumst.tiff',54998,'2020-02-24','','7'),(18,'Medicine Shoppe Arthritis Pain Reliever','The Medicine Shoppe International','tempus.gif',87146,'2020-07-08','','1'),(19,'Psoriasis Skin Cream','Natural Products Ctr','augueQuam.gif',9545,'2020-01-18','','5'),(20,'ENDOCET','Qualitest Pharmaceuticals','eget.xls',47791,'2020-09-25','','1'),(21,'Chloromag','Merit Pharmaceutical','pellentesque.ppt',28322,'2020-02-10','','2'),(22,'Dial Spring Water Antibacterial Soap','The Dial Corporation','consequatLectusIn.xls',85558,'2020-08-28','','6'),(23,'pain relief','Safeway','vestibulumRutrum.jpeg',87381,'2020-12-26','','9'),(24,'CHAPSTICK CLASSICS SPEARMINT','Pfizer Consumer Healthcare','estDonecOdio.avi',95976,'2020-02-04','','2'),(25,'POPULUS ALBA POLLEN','ALK-Abello, Inc.','idMaurisVulputate.ppt',80408,'2020-11-07','','6'),(26,'Spiny Pigweed','Nelco Laboratories, Inc.','mi.xls',76972,'2020-07-30','','8'),(27,'SunMark Night Time Sleep Aid','McKesson','turpisIntegerAliquet.avi',15241,'2020-11-05','','9'),(28,'Neova DNA Damage Control - Everyday','PhotoMedex, Inc.','vitae.ppt',2793,'2020-08-09','','9'),(29,'Lisinopril','Wockhardt Limited','ultricesEnimLorem.xls',49971,'2020-04-05','','6'),(30,'Rosacea','Newton Laboratories, Inc.','vivamus.ppt',77804,'2020-08-01','','8'),(31,'WOMENS LAXATIVE','TARGET Corporation','ligulaNec.tiff',48487,'2020-02-02','','6'),(32,'Green Guard PMS Relief','Unifirst First Aid Corporation','accumsanOdioCurabitur.xls',35964,'2020-10-22','','5'),(33,'Asparagus','Antigen Laboratories, Inc.','rutrumAt.tiff',12463,'2020-03-08','','3'),(34,'Klimaktheel','Heel Inc','sapien.ppt',47747,'2020-11-10','','9'),(35,'Head and Shoulders','Procter & Gamble Manufacturing Co.','turpisDonecPosuere.mp3',26824,'2020-07-16','','1'),(36,'kids cough','KEYSUN PTY. LIMITED Also Traded as KEYSUN LABORATORIES','gravidaSemPraesent.doc',70569,'2020-06-01','','7'),(37,'Diazepam','Cardinal Health','faucibusOrci.mpeg',64618,'2020-12-23','','8'),(38,'THE YOUTH AS WE KNOW IT','Bliss World LLC','quamTurpis.ppt',93380,'2020-05-05','','4'),(39,'meijer','Meijer Distribution Inc','nullamVariusNulla.avi',99367,'2020-02-14','','5'),(40,'Loratadine D','Perrigo New York Inc','semper.ppt',65274,'2020-11-05','','3'),(41,'Propranolol Hydrochloride','Aidarex Pharmaceuticals LLC','egetElit.ppt',23715,'2020-11-04','','5'),(42,'Omega-3-Acid Ethyl Esters','Par Pharmaceutical, Inc.','elit.tiff',85738,'2020-12-09','','9'),(43,'dibucaine','Perrigo New York Inc','nulla.xls',24733,'2020-01-21','','9'),(44,'Bodycology','Wal-Mart Stores, Inc.','pede.avi',91760,'2020-09-20','','6'),(45,'Etodolac','Aphena Pharma Solutions - Tennessee, LLC','augueVelAccumsan.tiff',90883,'2020-09-09','','7'),(46,'pravastatin sodium','Cardinal Health','luctusEt.mp3',34016,'2020-03-08','','3'),(47,'Avastin','Genentech, Inc.','estCongueElementum.mp3',12449,'2020-08-03','','3'),(48,'TYKERB','GlaxoSmithKline LLC','dolor.gif',34446,'2020-05-01','','7'),(49,'Cyclophosphamide','Roxane Laboratories, Inc','vestibulumAc.pdf',96063,'2020-01-17','','5'),(50,'Ceftriaxone','Apotex Corporation','sapienSapien.tiff',31624,'2020-05-07','','3'),(51,'Metronidazole','PD-Rx Pharmaceuticals, Inc.','sagittisDui.gif',86030,'2020-11-21','','9'),(52,'Cinchona Officinalis Kit Refill','Washington Homeopathic Products','ipsumInteger.gif',93892,'2020-09-29','','7'),(53,'LBEL EFFET PARFAIT','Ventura Corporation LTD.','aSuscipitNulla.mov',22324,'2020-05-04','','8'),(54,'RHODOTORULA RUBRA','ALK-Abello, Inc.','in.mp3',28012,'2020-09-12','','6'),(55,'Assured ANTIBACTERIAL BANDAGE','YIWU HAODING MEDICAL CO.,LTD','inConsequat.ppt',58220,'2020-04-26','','6'),(56,'Donepezil hydrochloride','NCS HealthCare of KY, Inc dba Vangard Labs','nonMaurisMorbi.doc',47541,'2020-11-05','','9'),(57,'Stridex','Blistex Inc','porta.xls',31554,'2020-11-12','','6'),(58,'Glyburide','Unit Dose Services','quisqueErat.avi',302,'2020-04-26','','9'),(59,'OXYGEN','Calmar dba A&R Medical Supply','sem.jpeg',71087,'2020-08-14','','8'),(60,'Desmopressin Acetate','Teva Pharmaceuticals USA Inc','plateaDictumst.gif',79523,'2020-09-20','','6'),(61,'Virustat','Apotheca Company','purusSitAmet.tiff',29574,'2020-01-10','','4'),(62,'Lansoprazole','Western Family Foods, Inc.','ultricesPosuere.xls',24494,'2020-09-21','','2'),(63,'MultiHance','BRACCO DIAGNOSTICS INC','penatibus.tiff',9433,'2020-02-13','','8'),(64,'CARBO VEGETABILIS','HOMEOLAB USA INC','nuncProinAt.ppt',94752,'2020-06-25','','9'),(65,'Deb Med Antimicrobial Foaming Hand Wash Fragrance Free Dye Free','Deb USA, Inc.','quamTurpisAdipiscing.gif',9221,'2020-08-03','','8'),(66,'SHISEIDO PERFECT REFINING FOUNDATION','SHISEIDO AMERICA INC.','blandit.avi',9671,'2020-03-20','','2'),(67,'GNP Iodides Tincture','Humco Holding Group, Inc.','proin.xls',82391,'2019-12-29','','5'),(68,'Prevacid','Physicians Total Care, Inc.','quisOrci.ppt',88744,'2020-11-24','','4'),(69,'Neutrogena Sport Face Oil Free','Neutrogena Corporation','nullamOrci.ppt',39471,'2020-05-09','','1'),(70,'Montelukast Sodium','Dr.Reddy\'s Laboratories Limited','convallis.avi',31825,'2020-08-15','','6'),(71,'Badger SPF 15 Sunscreen Lip Balm','Autumn Harp, Inc.','quam.avi',1702,'2020-02-28','','8'),(72,'Lamotrigine','REMEDYREPACK INC.','ac.ppt',50271,'2020-10-01','','3'),(73,'Bitternut Hickory','Antigen Laboratories, Inc.','leo.jpeg',64687,'2020-12-17','','5'),(74,'Kidney Tonic','Apotheca Company','euMiNulla.jpeg',50004,'2020-11-15','','5'),(75,'TENA Protective Cream','SCA Personal Care Inc.','volutpat.ppt',60874,'2020-04-09','','4'),(76,'Clonidine','Lake Erie Medical DBA Quality Care Products LLC','nullaEgetEros.pdf',45711,'2020-01-03','','6'),(77,'Diclofenac Sodium','H.J. Harkins Company, Inc.','nibhFusceLacus.ppt',59708,'2020-08-01','','5'),(78,'Glytone Suncare SPF 50','Pierre Fabre Dermo-Cosmetique USA, Inc.','nullamPorttitorLacus.mpeg',56340,'2020-07-21','','1'),(79,'Sunmark Iodine','McKesson','sit.mpeg',54695,'2020-02-23','','1'),(80,'SUPREME SKINPIA 10 SUN BLOCK','EBAIN Corporation Co., Ltd.','orciMaurisLacinia.mp3',21022,'2020-07-19','','2'),(81,'Verapamil Hydrochloride','Clinical Solutions Wholesale','loremIpsumDolor.ppt',22710,'2020-02-14','','8'),(82,'Amlodipine Besylate and Benazepril Hydrochloride','Carilion Materials Management','miPedeMalesuada.xls',34133,'2020-11-08','','9'),(83,'Acyclovir','APP Pharmaceuticals, LLC','sitAmet.xls',52446,'2020-01-01','','9'),(84,'Cold and Flu','Walgreen Company','congueElementumIn.mov',31082,'2020-01-05','','7'),(85,'Telmisartan and Hydrochlorothiazide','Alembic Pharmaceuticals Limited','cubilia.pdf',23979,'2020-11-03','','9'),(86,'Intralipid','Baxter Healthcare Corporation','tortor.xls',3270,'2020-07-13','','3'),(87,'Oxcarbazepine','Golden State Medical Supply, Inc.','sodales.txt',50729,'2020-06-14','','7'),(88,'healthy accents cetirizine hydrochloride','DZA Brands LLC','pedePosuere.mpeg',32801,'2020-05-19','','9'),(89,'ESIKA','Ventura Corporation (San Juan, P.R)','inPurusEu.mp3',44769,'2020-03-06','','7'),(90,'Nystatin','Pharmaceutical Associates, Inc.','volutpatSapienArcu.mpeg',28139,'2020-11-14','','9'),(91,'Neoral','Novartis Pharmaceuticals Corporation','bibendumImperdiet.ppt',33309,'2020-03-14','','6'),(92,'UR N-C Urinary Antiseptic','Libertas Pharma, Inc.','vestibulumVelitId.ppt',29611,'2020-04-07','','2'),(93,'Gabapentin','Cardinal Health','sitAmetConsectetuer.mp3',37958,'2020-02-06','','8'),(94,'Roxicodone','Mallinckrodt, Inc','liberoNullam.ppt',71230,'2020-07-19','','8'),(95,'Terrasil Balanitis Relief','Aidance Skincare & Topical Solutions, LLC','semper.doc',28500,'2020-11-12','','7'),(96,'Venlafaxine Hydrochloride','Rebel Distributors Corp','metus.avi',5489,'2020-01-20','','8'),(97,'Glipizide','Bryant Ranch Prepack','eratCurabitur.ppt',55591,'2020-08-20','','9'),(98,'AP House Dust Mix','Jubilant HollisterStier LLC','orciNullamMolestie.jpeg',30362,'2020-08-31','','5'),(99,'Good Sense Nicotine','L. Perrigo Company','quisOdio.txt',17515,'2020-01-20','','6'),(100,'Altair Hand Care System Foam Anti-Bacterial Hand','Vectair Systems, Inc.','sitAmet.avi',59520,'2020-07-04','','6'),(101,'JINTELI','Physicians Total Care, Inc.','tristiqueFusceCongue.mp3',69853,'2020-10-21','','5'),(102,'Pore Rescue','Bioelements','ut.png',66926,'2020-01-13','','9'),(103,'C Mold Mixture','Antigen Laboratories, Inc.','augueVelAccumsan.ppt',68068,'2020-07-25','','7'),(104,'Oxygen','Cumberland Medical Center- Medical Equipment Services','venenatis.xls',4173,'2020-05-18','','4'),(105,'Quetiapine fumarate','TYA Pharmaceuticals','euMagnaVulputate.doc',14446,'2020-10-10','','6'),(106,'Cephalexin','PD-Rx Pharmaceuticals, Inc.','faucibusOrci.png',13171,'2020-12-21','','5'),(107,'Suave','Conopco Inc. d/b/a Unilever','ultrices.ppt',87194,'2020-07-05','','7'),(108,'ABILIFY MAINTENA','Otsuka America Pharmaceutical, Inc.','euMassaDonec.txt',14738,'2020-06-26','','6'),(109,'bareMinerals 5-in-1 BB Advanced Performance Mineral Veil Finishing Broad Spectrum SPF 20','Bare Escentuals Beauty, Inc.','odioPorttitor.ppt',93251,'2020-11-01','','2'),(110,'Leeks','Nelco Laboratories, Inc.','nislNuncNisl.xls',97438,'2020-10-03','','8'),(111,'M-CLEAR','R.A. McNeil Company','nuncCommodoPlacerat.xls',9041,'2020-12-01','','1'),(112,'XtraCare Foam Antibacterial Hand Wash','China Ningbo Shangge Cosmetic Technology Corp.','sapienA.ppt',4523,'2020-03-30','','5'),(113,'ACETAMINOPHEN','TIME CAP LABS INC','habitasse.avi',32078,'2020-06-01','','8'),(114,'Ciprofloxacin','Pfizer Labs, Division of Pfizer Inc','lacinia.avi',21426,'2020-03-26','','6'),(115,'PANCRELIPASE','X-GEN Pharmaceuticals, Inc.','eleifendLuctus.avi',5038,'2020-08-20','','5'),(116,'Glyburide (micronized) and Metformin Hydrochloride','Actavis Pharma Manufacturing Pvt. Ltd.','donecOdioJusto.avi',6640,'2020-01-10','','9'),(117,'ERYTHROMYCIN ETHYLSUCCINATE AND SULFISOXAZOLE ACETYL','Teva Women\'s Health, Inc.','orci.tiff',32784,'2020-09-21','','5'),(118,'Childrens','Kroger Company','idNislVenenatis.jpeg',44763,'2020-08-02','','3'),(119,'LBEL COULEUR LUXE AMPLIFIER XP','Ventura International LTD.','nequeVestibulum.txt',88914,'2020-02-18','','7'),(120,'Zortress','Novartis Pharmaceuticals Corporation','ametSapienDignissim.jpeg',29294,'2020-06-30','','9'),(121,'Pollens - Weeds and Garden Plants, Dog Fennel Eupatorium capillifolium','Jubilant HollisterStier LLC','congueRisus.jpeg',88038,'2020-06-23','','6'),(122,'Alcohol Prep Pads - Non Sterile','PSS World Medical','nonSodalesSed.xls',74431,'2020-09-01','','3'),(123,'DONEPEZIL HYDROCHLORIDE','INDICUS PHARMA LLC','duis.txt',76135,'2020-09-24','','9'),(124,'Leader ibuprofen','Cardinal Health','pretium.jpeg',51392,'2020-02-24','','7'),(125,'Citrus Cydonia 1','Uriel Pharmacy Inc.','mauris.avi',26416,'2020-01-20','','5'),(126,'Advanced First Aid','King Bio Inc.','crasMi.jpeg',83595,'2020-05-31','','5'),(127,'Clonazepam','REMEDYREPACK INC.','nunc.doc',79372,'2020-11-27','','9'),(128,'ARTHROTEC','Bryant Ranch Prepack','semPraesent.avi',83486,'2020-03-05','','2'),(129,'Scilla Crataegus','Uriel Pharmacy Inc.','velNullaEget.xls',53475,'2020-08-13','','8'),(130,'Borba Age Defying','Borba, Inc.','acLobortis.mp3',58572,'2020-07-24','','2'),(131,'Alprazolam','PD-Rx Pharmaceuticals, Inc.','dignissim.mp3',10331,'2020-01-16','','7'),(132,'Night time','AmerisourceBergen (Good Neighbor Pharmacy)','donec.tiff',63336,'2020-07-02','','5'),(133,'Sensodyne','GlaxoSmithKline Consumer Healthcare LP','pede.txt',57371,'2020-09-09','','5'),(134,'Levetiracetam','Rebel Distributors Corp','nislVenenatis.tiff',75865,'2020-01-19','','8'),(135,'SH18','International Beauty Exchange','sapienNon.gif',21199,'2020-06-13','','6'),(136,'Natural Vegetable Laxative','Wal-Mart Stores Inc','cursus.xls',41054,'2020-12-01','','7'),(137,'Sentroxatine','Physician Therapeutics LLC','at.mp3',1574,'2020-12-05','','5'),(138,'Absorbine Jr. Extra Strength','W. F. Young, Inc.','suscipitA.avi',84024,'2020-04-04','','4'),(139,'Anti-Aging Foundation SPF 15 Shade 100','La Prairie, Inc.','blanditNon.jpeg',19642,'2020-11-03','','3'),(140,'Northera','Lundbeck LLC','nullam.ppt',95464,'2020-05-10','','2'),(141,'Flumazenil','Sagent Pharmaceuticals','id.ppt',19041,'2020-06-03','','5'),(142,'Apis Aconitum','Uriel Pharmacy Inc.','dapibusAtDiam.ppt',24074,'2020-04-15','','4'),(143,'Nutra Nail FUNGI FREE Antifungal Treatment','CCA Industries, Inc','velNulla.mp3',25111,'2020-04-06','','2'),(144,'Mouth Rinse','Walgreen','mattis.mp3',14630,'2020-02-19','','1'),(145,'Synaptol','Ionx Holdings d/b/a HelloLife Inc.','tortorQuis.ppt',32026,'2020-03-01','','4'),(146,'TOFRANIL-PM','Mallinckrodt, Inc.','felis.xls',19727,'2020-06-24','','4'),(147,'Baclofen','Cardinal Health','consectetuerAdipiscing.avi',58082,'2020-02-05','','9'),(148,'Topotecan Hydrochloride','Three Rivers Pharmaceuticals, LLC.','semSedSagittis.ppt',27311,'2020-03-04','','1'),(149,'PAROXETINE','Apotex Corp.','massaQuisAugue.mpeg',81162,'2020-11-16','','4'),(150,'Cat Pelt, Standardized','ALK-Abello, Inc.','nisi.mov',24915,'2020-11-28','','1'),(151,'EXALGO','Mallinckrodt, Inc','quam.avi',5980,'2020-12-03','','7'),(152,'Lorazepam','Northwind Pharmaceuticals','vestibulumQuamSapien.xls',54267,'2020-02-20','','1'),(153,'Jafra','JAFRA COSMETICS INTERNATIONAL','necSem.mp3',53112,'2020-05-08','','6'),(154,'Complete Allergy Medicine','Salado Sales, Inc.','atDolor.avi',82608,'2020-01-21','','6'),(155,'gentle lax','Kroger Company','proinInterdum.xls',24039,'2020-09-18','','5'),(156,'risperidone','Major Pharmaceuticals','habitassePlatea.xls',54774,'2020-11-26','','5'),(157,'Carboplatin','Mylan Institutional LLC','felisDonec.ppt',67166,'2020-02-09','','9'),(158,'PredniSONE','Physicians Total Care, Inc.','nulla.avi',65363,'2020-11-28','','1'),(159,'Extra Strength Medicated Body','CVS Pharmacy, Inc','quisLectus.doc',43333,'2020-01-25','','9'),(160,'FLAWLESS FINISH PERFECTLY NUDE MAKEUP BROAD SPECTRUM SUNSCREEN SPF 15 SHADE BEIGE','Elizabeth Arden, Inc','imperdietNullamOrci.xls',50536,'2020-11-05','','3'),(161,'Diltiazem Hydrochloride','NCS HealthCare of KY, Inc dba Vangard Labs','musVivamusVestibulum.ppt',95985,'2020-02-07','','1'),(162,'Miconazole 3','Walgreen Company','convallisNuncProin.pdf',29413,'2020-04-26','','9'),(163,'Methotrexate','PD-Rx Pharmaceuticals, Inc.','miSitAmet.pdf',63655,'2020-11-09','','4'),(164,'Alba Sunblock Natural Kids SPF 45','The Hain Celestial Group, Inc.','inHacHabitasse.tiff',39461,'2020-08-19','','4'),(165,'Gelato Topical Anesthetic','Mycone Dental Supply Co., Inc DBA Keystone Industries and Deepak Products Inc','euMagnaVulputate.xls',95764,'2020-04-23','','2'),(166,'No7 CC','Cosmetica Laboratories Inc.','crasNonVelit.mp3',94811,'2020-06-02','','1'),(167,'Number Four Weed Mixture','Antigen Laboratories, Inc.','proinLeo.avi',80770,'2020-01-21','','9'),(168,'Degree','Conopco Inc. d/b/a Unilever','dolor.png',85503,'2020-11-03','','4'),(169,'FLUTICASONE PROPIONATE','DIRECT RX','phasellusId.xls',54857,'2020-09-24','','4'),(170,'Hydrocodone Bitartrate and Ibuprofen','A-S Medication Solutions LLC','eget.mp3',57169,'2020-03-11','','5'),(171,'SBS 41','Deb USA, Inc.','lacusCurabitur.mp3',86311,'2020-07-14','','1'),(172,'Neurontin','Cardinal Health','rutrumNullaTellus.mpeg',66510,'2020-08-11','','6'),(173,'SHISEIDO THE MAKEUP FOUNDATION','SHISEIDO CO., LTD.','vestibulumSed.doc',16136,'2020-03-31','','4'),(174,'DIPROLENE','Merck Sharp & Dohme Corp.','mollisMolestieLorem.avi',68289,'2020-10-29','','7'),(175,'RABEPRAZOLE SODIUM','Lupin Pharmaceuticals, Inc.','massaVolutpatConvallis.ppt',33266,'2020-04-03','','9'),(176,'Hydrocortisone','H E B','sedSagittis.avi',19021,'2020-05-24','','8'),(177,'Personal Care Antibacterial Hand','Personal Care Products, LLC','nisiVolutpat.xls',69708,'2020-11-04','','8'),(178,'ESZOPICLONE','OrchidPharma Inc','in.mpeg',98561,'2020-05-23','','5'),(179,'GABAPENTIN','Exelan Pharmaceuticals, Inc.','viverraDapibusNulla.avi',89250,'2020-09-13','','1'),(180,'Thiothixene','Sandoz Inc','maecenas.jpeg',46768,'2020-08-31','','2'),(181,'AN ADC EGF WRINKLE EYE','AN Co Ltd.','dictumstMaecenas.ppt',91692,'2020-06-28','','5'),(182,'Oxygen','WELSCO, INC.','nullaPedeUllamcorper.txt',97485,'2020-06-29','','4'),(183,'RISPERDAL M-TAB','Janssen Pharmaceuticals, Inc.','loremIpsum.jpeg',84841,'2020-03-12','','8'),(184,'Apis ex animale 6 Special Order','Uriel Pharmacy Inc.','morbiVestibulum.mov',92908,'2020-06-18','','3'),(185,'Eszopiclone','Lupin Pharmaceuticals, Inc.','consequatLectus.mp3',33531,'2020-08-27','','8'),(186,'StriVectin-SH NIA-114 UVA UVB Shields SPF 30','StriVectin Operating Company Inc.','rutrumNullaTellus.ppt',45513,'2020-01-02','','1'),(187,'FIRST BXN Mouthwash','CutisPharma, Inc','sed.jpeg',2402,'2020-11-27','','8'),(188,'THE BAMBOO OF DAMYANG MOISTURE ESSENCE','NATURE REPUBLIC CO., LTD.','sit.pdf',23218,'2020-11-17','','4'),(189,'Smarth','Carib Sales, LLC','interdumVenenatis.xls',71626,'2020-01-11','','3'),(190,'BestHealth Honey Lemon','Bestco, Inc.','nequeSapienPlacerat.tiff',24087,'2020-12-25','','2'),(191,'Ferrous Sulfate','Boca Pharmacal, LLC','duisAt.txt',77858,'2020-06-02','','3'),(192,'EMBEDA','Pfizer Laboratories Div Pfizer Inc','habitassePlateaDictumst.xls',72377,'2020-03-03','','4'),(193,'XtraCare Skin Relief Oatmeal Daily Moisturizing','Rejoice International','lectus.mp3',43255,'2020-12-01','','7'),(194,'POLYETHYLENE GLYCOL 3350','Emcure Pharmaceuticals USA Inc.','massaTemporConvallis.pdf',55494,'2020-03-14','','5'),(195,'VENLAFAXINE HYDROCHLORIDE','American Health Packaging','elitProinInterdum.xls',13875,'2020-10-19','','4'),(196,'Beet','Nelco Laboratories, Inc.','laciniaSapien.avi',83505,'2020-04-30','','3'),(197,'Fresh Protect Skin Sanitizer','Omega Tech Labs Inc.','inSagittisDui.ppt',31117,'2020-07-10','','2'),(198,'Amazonian Colored Clay Foundation Broad Spectrum SPF 15 Sunscreen','Tarte, Inc.','felisSedInterdum.mp3',38059,'2020-01-11','','8'),(199,'Phentermine Hydrochloride','Blenheim Pharmacal, Inc.','aeneanSit.xls',31077,'2020-06-08','','8'),(200,'Eve Lom Brilliant Cover Concealer Broad Spectrum SPF 15 Sunscreen','Space Brands Limited','justo.ppt',86721,'2020-12-20','','5'),(201,'Phentermine Hydrochloride','Mirror Pharmaceuticals LLC','utMaurisEget.mp3',75286,'2020-04-24','','4'),(202,'Torsemide','Greenstone LLC','anteVelIpsum.ppt',993,'2020-04-27','','2'),(203,'Phenazopyridine hydrochloride','Northwind Pharmaceuticals','diam.avi',51835,'2020-07-02','','3'),(204,'Dove Ultimate Beauty Care Original Clean','Conopco Inc. d/b/a Unilever','namUltricesLibero.avi',62785,'2020-11-22','','4'),(205,'Treatment Set TS351129','Antigen Laboratories, Inc.','dis.ppt',24489,'2020-05-11','','5'),(206,'Reflux and Heartburn','Home Sweet Homeopathics','rutrumNeque.mpeg',68794,'2020-03-11','','1'),(207,'Childrens Pain and Fever','Meijer Distribution Inc','nislDuis.ppt',48599,'2020-10-23','','4'),(208,'Exchange Select Sunscreen','ARMY AND AIR FORCE EXCHANGE SERVICE','vitaeNisiNam.mpeg',58836,'2020-08-18','','7'),(209,'Rifampin','McKesson Packaging Services a business unit of McKesson Corporation','aliquamQuisTurpis.avi',50606,'2020-11-27','','9'),(210,'Nevirapine','Camber Pharmaceuticals, Inc.','primis.txt',76446,'2020-11-07','','2'),(211,'Bio Rock Rose','Apotheca Company','morbiVelLectus.mov',14834,'2020-12-28','','2'),(212,'SHISEIDO SHEER AND PERFECT COMPACT (REFILL)','SHISEIDO AMERICAS CORPORATION','quis.ppt',16167,'2020-02-21','','8'),(213,'RICE FOOD','Allergy Laboratories, Inc.','maecenasPulvinarLobortis.mp3',84090,'2020-02-24','','2'),(214,'Ibuprofen','Amneal Pharmaceuticals','cras.ppt',5639,'2020-07-06','','7'),(215,'MiraLAX','MSD Consumer Care, Inc.','felisEuSapien.mp3',91489,'2020-06-01','','8'),(216,'Oxygen','Support Medical Company','in.xls',52605,'2020-09-15','','7'),(217,'PHS Hair Science Pro Hair Loss Tonic','Revamp International Pte. Ltd.','leo.xls',41551,'2020-05-08','','7'),(218,'Ciclodan','Medimetriks Pharmaceuticals, Inc.','commodoVulputate.jpeg',17852,'2020-05-13','','1'),(219,'HYDROCODONE BITARTRATE AND ACETAMINOPHEN','Lake Erie Medical DBA Quality Care Products LLC','nibhIn.tiff',86611,'2020-08-31','','8'),(220,'LONG LAST GLOSSWEAR','CLINIQUE LABORATORIES INC','nec.xls',9356,'2020-06-02','','4'),(221,'Keralyt 5','Summers Laboratories Inc','orciLuctus.ppt',69288,'2020-08-12','','9'),(222,'By Pharmicell Lab Prestige Sun Block','Pharmicell Co., Ltd.','dui.mp3',27927,'2020-01-15','','2'),(223,'Topotecan Hydrochloride','Pfizer Laboratories Div Pfizer Inc.','justoInBlandit.png',64367,'2020-04-02','','9'),(224,'hand','Personal Care Products','molestieNibh.xls',12878,'2020-02-06','','1'),(225,'Thiothixene','REMEDYREPACK INC.','augueVel.ppt',51254,'2020-04-26','','4'),(226,'Terconazole','Rebel Distributors Corp','vivamus.mp3',24706,'2020-09-07','','4'),(227,'4 Kids Complete Cold and Mucus','Hyland\'s','nulla.mp3',77294,'2020-11-03','','2'),(228,'Diphenoxylate Hydrochloride and Atropine Sulfate','Aphena Pharma Solutions - Tennessee, LLC','mollis.pdf',87701,'2020-04-19','','2'),(229,'Oxycodone Hydrochloride','Physicians Total Care, Inc.','nisi.ppt',89730,'2020-07-03','','8'),(230,'BeCause Antibacterial Hand','Jafra Cosmetics International Inc','maurisUllamcorper.avi',38919,'2020-09-07','','8'),(231,'Biodesp','Advanced Generic Corporation','massaIdNisl.mp3',23861,'2020-11-25','','6'),(232,'SHISEIDO SUN PROTECTION FOUNDATION','SHISEIDO AMERICA INC.','quamSapien.xls',37758,'2020-03-06','','8'),(233,'Good Sense Night Time','L Perrigo Company','leo.tiff',71048,'2020-01-20','','6'),(234,'PYRIDOSTIGMINE BROMIDE','REMEDYREPACK INC.','laciniaErat.ppt',2894,'2020-04-02','','9'),(235,'Bismuth Tabs','DOLGENCORP, LLC','interdum.mp3',50422,'2020-04-30','','8'),(236,'Degree Girl Friends Forever','Conopco Inc. d/b/a Unilever','fermentumJustoNec.gif',69591,'2020-12-10','','1'),(237,'Wellness with Cherry Flavor','Source Naturals','posuereCubilia.avi',83704,'2020-07-21','','7'),(238,'Venlafaxine Hydrochloride','Cadila Healthcare Limited','liberoRutrum.mp3',45489,'2020-02-05','','6'),(239,'Nafcillin','APP Pharmaceuticals, LLC','eratTortorSollicitudin.xls',76794,'2020-11-15','','1'),(240,'INFANTS COUGH SYRUP','CVS PHARMACY','maecenasTristique.xls',14741,'2020-06-02','','9'),(241,'PSORIASIS','HOMEOLAB USA INC','hacHabitassePlatea.mp3',40276,'2020-06-16','','2'),(242,'Pamidronate Disodium','APP Pharmaceuticals, LLC','sagittisSapien.ppt',37898,'2020-01-27','','8'),(243,'good sense sinus and allergy pe','L Perrigo Company','nisl.tiff',4251,'2020-11-11','','7'),(244,'Mintox Plus Tabs','Major Pharmaceuticals','velAccumsan.jpeg',1845,'2020-01-10','','1'),(245,'Gamunex-C','GRIFOLS USA, LLC','magnaAtNunc.ppt',46237,'2020-12-24','','8'),(246,'HYDRALAZINE HYDROCHLORIDE','Rebel Distributors Corp','orciLuctus.ppt',94269,'2020-04-08','','7'),(247,'Pier 1 Imports Crisp Bamboo Anti-Bacterial Hand Sanitizer','ALILY (ZHANGZHOU) BATH PRODUCTS LTD.','aliquamSit.avi',92886,'2020-06-13','','6'),(248,'Foaming Hand Sanitizer','Cintas Corp','tortorId.mp3',63023,'2020-05-07','','6'),(249,'AIR','AIRGAS-NORPAC INC.','habitassePlatea.gif',82776,'2020-08-13','','2'),(250,'60-Second Fluoride','Patterson Dental Supply Inc','consequatNullaNisl.xls',73498,'2020-08-18','','3'),(251,'Anaprox DS','Genentech, Inc.','aIpsum.ppt',86026,'2020-10-17','','8'),(252,'rx act anti diarrheal','H E B','ametNunc.gif',87562,'2020-12-25','','1'),(253,'Sertraline Hydrochloride','Cardinal Health','vulputateNonummyMaecenas.xls',3936,'2020-03-06','','2'),(254,'Methimazole','REMEDYREPACK INC.','erat.ppt',17771,'2020-08-02','','3'),(255,'Neutrogena Healthy Skin Brightening Eye Perfector','Neutrogena Corporation','euOrciMauris.ppt',76557,'2020-02-21','','9'),(256,'Bethanechol Chloride','Amneal Pharmaceuticals','pretium.jpeg',25477,'2020-03-19','','7'),(257,'Labetalol hydrochloride','Golden State Medical Supply, Inc.','donecQuis.pdf',24662,'2020-12-27','','6'),(258,'BIOSOLIS Extreme Fluid UVA Sunscreen Broad Spectrum Face and Neck SPF50','Pro Vera SA','convallis.png',99692,'2020-09-17','','8'),(259,'ANTIBACTERIAL HAND SANITIZER','APOLLO HEALTH AND BEAUTY CARE','suspendissePotentiNullam.doc',64425,'2020-06-01','','4'),(260,'Peptic Relief','Good Neighbor Pharmacy','bibendum.xls',20296,'2020-07-11','','7'),(261,'Doxycycline','Mylan Pharmaceuticals Inc.','iaculisJustoIn.avi',35875,'2020-12-11','','7'),(262,'soCALM Pain Relieving','AB7 Industries','aliquamConvallis.avi',93800,'2020-03-13','','7'),(263,'Sun Shades','Melaleuca, Inc.','morbiNonQuam.mp3',22793,'2020-11-03','','5'),(264,'Ondansetron','AuroMedics Pharma LLC','rhoncusDuiVel.xls',40446,'2020-06-26','','4'),(265,'triple antibiotic','A-S Medication Solutions LLC','crasPellentesque.avi',6382,'2020-02-24','','9'),(266,'ESIKA 3-IN-1 PRO MAKE UP FOUNDATION SPF 20 BASE DE MAQUILLAJE PARA ROSTRO 3-EN-1 PRO FPS 20','Ventura Corporation LTD','erosViverraEget.avi',61958,'2020-08-14','','6'),(267,'Amoxicillin','Aurobindo Pharma Limited','integer.txt',63678,'2020-03-31','','5'),(268,'Pumpkin','Nelco Laboratories, Inc.','ipsumPraesentBlandit.xls',77822,'2020-06-19','','8'),(269,'Famotidine','REMEDYREPACK INC.','variusUt.ppt',68065,'2020-04-26','','9'),(270,'Gabapentin','REMEDYREPACK INC.','venenatisTristiqueFusce.xls',36161,'2020-08-04','','8'),(271,'Tobramycin','Proficient Rx LP','sed.xls',12542,'2020-02-05','','7'),(272,'Midodrine Hydrochloride','Mylan Pharmaceuticals Inc.','enimBlanditMi.xls',40056,'2020-11-09','','3'),(273,'Fondaparinux Sodium','Dr. Reddy\'s Laboratories Limited','viverraPede.txt',71632,'2020-03-17','','4'),(274,'Oxygen','Home Respiratory Therapy and Equipment, Inc.','magnaAtNunc.mpeg',85665,'2020-10-09','','4'),(275,'Idole Natural Organic Skin Lightening','International Beauty Exchange','odio.doc',9049,'2020-05-05','','4'),(276,'Pain Relief','H E B','etiamPretium.mp3',8563,'2020-03-22','','1'),(277,'3M Avagard D','3M Health Care','vestibulum.ppt',5205,'2020-07-22','','3'),(278,'SMOKE-X','White Manufacturing Inc. DBA Micro-West','sem.jpeg',31122,'2020-12-27','','5'),(279,'PCOS','Home Sweet Homeopathics','sitAmet.ppt',14338,'2020-04-26','','9'),(280,'Desogen','Organon USA Inc.','nullaSuscipitLigula.tiff',47990,'2020-01-25','','6'),(281,'SEROQUEL','Physicians Total Care, Inc.','tristiqueEst.pdf',96740,'2020-04-02','','2'),(282,'05 Moisture Foundation SPF 15','The Body Shop Wake Forest','posuereFelis.mpeg',24613,'2020-04-15','','7'),(283,'Rimmel London','Lancaster S.A.M.','orciPede.mpeg',83549,'2020-11-22','','1'),(284,'Aquilinum Taraxacum','Uriel Pharmacy Inc.','nulla.mp3',66495,'2020-11-28','','4'),(285,'Viagra','Aphena Pharma Solutions - Tennessee, LLC','volutpat.jpeg',33509,'2020-03-18','','5'),(286,'Short Ragweed Pollen','Nelco Laboratories, Inc.','massa.mpeg',76782,'2020-03-15','','2'),(287,'isosorbide mononitrate','Physicians Total Care, Inc.','sedVelEnim.avi',6622,'2020-01-24','','1'),(288,'hydrocortisone Iodoquinol','Perrigo New York Inc','ipsumPrimisIn.mp3',81696,'2020-01-21','','5'),(289,'Atenolol','Aphena Pharma Solutions - Tennessee, LLC','auctorSedTristique.jpeg',60431,'2020-03-23','','6'),(290,'ANTIBACTERIAL','HYVEE INC','velPedeMorbi.doc',31509,'2020-05-28','','8'),(291,'CeraVe','Valeant Pharmaceuticals North America LLC','sagittis.xls',23234,'2020-01-31','','4'),(292,'Trandolapril and Verapamil Hydrochloride','Glenmark Generics Inc., USA','vitaeQuamSuspendisse.mp3',35797,'2020-08-28','','4'),(293,'OcuMend','Cearna, Inc.','sapien.ppt',4203,'2020-10-21','','1'),(294,'KLOR-CON','Sandoz Inc.','justo.mp3',39121,'2020-03-09','','9'),(295,'CITALOPRAM HYDROBROMIDE','Stat Rx USA','vulputateUt.pdf',73433,'2020-02-22','','5'),(296,'Elestrin','Jazz Pharmaceuticals Commercial Corp.','ultricesPosuere.ppt',4133,'2020-05-30','','5'),(297,'Metoprolol Tartrate','Cardinal Health','elementumEuInterdum.avi',43366,'2020-04-03','','7'),(298,'RAGWITEK','Merck Sharp & Dohme Corp.','auctor.pdf',78613,'2020-04-20','','3'),(299,'Docusate Sodium','Liberty Pharmaceuticals, Inc.','nam.mp3',51470,'2020-05-24','','1'),(300,'PROCRIT','Janssen Products, LP','id.jpeg',50845,'2019-12-30','','8');
/*!40000 ALTER TABLE `sumenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-09 21:20:19
