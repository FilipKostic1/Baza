-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: t2
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `clan`
--

DROP TABLE IF EXISTS `clan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clan` (
  `idCla` int NOT NULL,
  `imeCla` varchar(45) NOT NULL,
  `prezimeCla` varchar(45) NOT NULL,
  `korIme` varchar(45) NOT NULL,
  `sifra` varchar(45) NOT NULL,
  `tip` int NOT NULL,
  `jeGlasao` int NOT NULL,
  `jeKandidovao` int NOT NULL,
  `idMatSek` int NOT NULL,
  `idRegCen` int NOT NULL,
  PRIMARY KEY (`idCla`,`idMatSek`,`idRegCen`),
  KEY `fk_Clan_matSekcija1_idx` (`idMatSek`,`idRegCen`),
  CONSTRAINT `fk_Clan_matSekcija1` FOREIGN KEY (`idMatSek`, `idRegCen`) REFERENCES `matsekcija` (`idMatSek`, `idRegCen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan`
--

LOCK TABLES `clan` WRITE;
/*!40000 ALTER TABLE `clan` DISABLE KEYS */;
INSERT INTO `clan` VALUES (100,'Admin','Admin','Admin','Admin',0,0,0,11,1),(111,'Filip','Kostic','FilipKostic','FilipK',1,0,0,11,1),(112,'Ana','VItas','AnaVItas','AnaV',1,0,0,11,1),(113,'Pera','Zec','PeraZec','PeraZ',1,0,0,11,1),(114,'Sneza','Despotovic','SnezaDespotovic','SnezaD',1,0,0,11,1),(115,'Milica','Skopljak','MilicaSkopljak','MilicaS',1,0,0,11,1),(116,'Goran','Planincic','GoranPlanincic','GoranP',1,0,0,11,1),(117,'Stefan','Kostic','StefanKostic','StefanK',1,0,0,11,1),(118,'Stefan','Tubic','StefanTubic','StefanT',1,0,0,11,1),(121,'Igor','Maric','IgorMaric','IgorM',1,0,0,12,1),(122,'Petar','Mitic','PetarMitic','PetarM',1,0,0,12,1),(123,'Ema','Eric','EmaEric','EmaE',1,0,0,12,1),(131,'Iva','Peric','IvaPeric','IvaP',1,0,0,13,1),(132,'Leon','Kitic','LeonKitic','LeonK',1,0,0,13,1),(133,'Mile','Ilic','MileIlic','MileI',1,0,0,13,1),(211,'Slavko','Bolic','SlavkoBolic','SlavkoB',1,0,0,21,2),(212,'Bosko','Zoric','BoskoZoric','BoskoZ',1,0,0,21,2),(213,'Mila','Zilic','MilaZilic','MilaZ',1,0,0,21,2),(221,'Goran','Zigic','GoranZigic','GoranZ',1,0,0,22,2),(222,'Vlada','Mihic','VladaMihic','VladaM',1,0,0,22,2),(223,'Petar','Peric','PetarPeric','PetarP',1,0,0,22,2),(231,'Zana','Jovic','ZanaJovic','ZanaJ',1,0,0,23,2),(232,'Mara','Kozic','MaraKozic','MaraK',1,0,0,23,2),(233,'Ana','Polic','AnaPolic','AnaP',1,0,0,23,2),(311,'Mihajlo','Mitic','MihajloMitic','MihajloM',1,0,0,31,3),(312,'Zvonko','Zec','ZvonkoZec','ZvonkoZ',1,0,0,31,3),(313,'Vesna','Jeftic','VesnaJeftic','VesnaJ',1,0,0,31,3),(321,'Milenko','Tepavac','MilenkoTepavac','MilenkoT',1,0,0,32,3),(322,'Nikola','Batalo','NikolaBatalo','NikolaB',1,0,0,32,3),(323,'Petar','Kralj','PetarKralj','PetarK',1,0,0,32,3),(331,'Vanja','Antic','VanjaAntic','VanjaA',1,0,0,33,3),(332,'Sara','Matic','SaraMatic','SaraM',1,0,0,33,3),(333,'Milos','Aleksic','MilosAleksic','MilosA',1,0,0,33,3),(341,'Ivan','Strugar','IvanStrugar','IvanS',1,0,0,34,3),(342,'Jakov','Miletic','JakovMiletic','JakovM',1,0,0,34,3),(343,'Nada','Vasic','NadaVasic','NadaV',1,0,0,34,3);
/*!40000 ALTER TABLE `clan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 13:45:26
