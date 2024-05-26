-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int NOT NULL,
  `cat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'A Fairy Song by William Shakespeare','Over hill, over dale, Thorough bush, thorough brier, Over park, over pale, Thorough flood, thorough fire! I do wander everywhere, Swifter than the moon\'s sphere; And I serve the Fairy Queen, To dew her orbs upon the green; The cowslips tall her pensioners be; In their gold coats spots you see; Those be rubies, fairy favours; In those freckles live their savours; I must go seek some dewdrops here, And hang a pearl in every cowslip\'s ear','shake.jpg',NULL,1,'art'),(2,'أحمد شوقي','حمد بن علي بن أحمد شوقي. أشهر شعراء العصر الأخير، يلقب بأمير الشعراء، مولده ووفاته بالقاهرة، كتب عن نفسه: (سمعت أبي يردّ أصلنا إلى الأكراد فالعرب) نشأ في ظل البيت المالك بمصر، وتعلم في بعض المدارس الحكومية، وقضى سنتين في قسم الترجمة بمدرسة الحقوق، وارسله الخديوي توفيق سنة 1887م إلى فرنسا، فتابع دراسة الحقوق في مونبلية، واطلع على الأدب الفرنسي وعاد سنة 1891م فعين رئيساً للقلم الإفرنجي في ديوان الخديوي عباس حلمي. وندب سنة 1896م لتمثيل الحكومة المصرية في مؤتمر المستشرقين بجينيف. عالج أكثر فنون الشعر: مديحاً، وغزلاً، ورثاءً، ووصفاً، ثم ارتفع محلقاً فتناول الأحداث الاجتماعية والسياسية في مصر والشرق والعالم الإسلامي وهو أول من جود القصص الشعري التمثيلي بالعربية وقد حاوله قبله أفراد، فنبذهم وتفرد. وأراد أن يجمع بين عنصري البيان: الشعر والنثر، فكتب نثراً مسموعاً على نمط المقامات فلم يلق نجاحاً فعاد إلى الشعر.','ahmadshawki.jpg',NULL,3,'art'),(6,'ابن خلدون','وُلد ابن خلدون في تونس زمن الدوّلة الحفصية، وقضى بها طفولته قبل أن يبدأ تنقله بين المُدن في المغرب العربي وبلاد الأندلس واعتكف وهو بالمغرب للدراسة، وأنهى مقدمته الشهيرة قبل هجرته إلى مصر ومنها توجّهَ لأداء فريضة الحج. دخل وسيطاً لحقن الدماء بين أهالي دمشق وجيوش تيمورلنك فكان ضمن القضاة المُرافقين للسلطان المملوكي الناصر زين الدين فرج. في دمشق نزل بالمدرسة العادلية وأقام بها حتّى أتمّ مهمته. فيما عدا هاتين الرحلتين لم ينقطع عن مصر وكان مُعلماً في إحدى مدارس المالكية بالقاهرة وهي المدرسة القمحية، وكذلك في المدرسة الظاهرية البرقوقية عقب تأسيسها. خلال دراسته لأحوال الشعوب والمجتمعات اكتشف ابن خلدون علم العمران البشري وهو مُلخص حياة الدوّل وما تصل إليه من ازدهارٍ ثم اضمحلالٍ، ويهدف هذا العلم لدراسة أحوال الناس في أوضاعهم المعيشية والسياسية والدينية والاجتماعية وفق رؤيةٍ علميةٍ وتأريخ صحيح للمجتمعات من خلال إبعاد التأثيرات الخارجية لآراء المؤرخين الشخصية.','khaldoun.jpg','2024-05-26 17:47:16',1,'science'),(7,'Why The Godfather is Considered a Masterpiece','Few films have stood the test of time quite like The Godfather. Released over 50 years ago, the movie remains a cultural touchstone, continuing to captivate audiences and critics alike. At the time of its release in 1972, The Godfather was a groundbreaking film. Directed by Francis Ford Coppola, the movie tells the story of the Corleone crime family, led by patriarch Vito Corleone. The film\'s impeccable cast, including Al Pacino and James Caan, helped to bring the story to life, while the film\'s iconic score, composed by Nino Rota, became a cultural phenomenon in its own right.','godfather.jpg','2024-05-26 17:50:50',2,'cinema');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'firstuser','test1@gmail.com','$2a$10$HQqUb2zSbscH0EQEXdVWyO4oaVKxkCKZB7M4JdEszS7rUaUVrbxLm',NULL),(2,'seconduser','test2@gmail.com','$2a$10$HQqUb2zSbscH0EQEXdVWyO4oaVKxkCKZB7M4JdEszS7rUaUVrbxLm',NULL),(3,'mrnasreddine','test3@gmail.com','$2a$10$HQqUb2zSbscH0EQEXdVWyO4oaVKxkCKZB7M4JdEszS7rUaUVrbxLm',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 18:52:15
