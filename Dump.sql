-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Лев','Толстой','1828-09-09'),(2,'Фёдор','Достоевский','1821-11-11'),(3,'Антон','Чехов','1860-01-29'),(4,'Александр','Пушкин','1799-06-06'),(5,'Николай','Гоголь','1809-04-01'),(6,'Иван','Тургенев','1818-11-09'),(7,'Михаил','Булгаков','1891-05-15'),(8,'Александр','Солженицын','1918-12-11'),(9,'Джордж','Оруэлл','1903-06-25'),(10,'Эрнест','Хемингуэй','1899-07-21'),(11,'Агата','Кристи','1890-09-15'),(12,'Джоан','Роулинг','1965-07-31'),(13,'Стивен','Кинг','1947-09-21'),(14,'Джон','Толкин','1892-01-03'),(15,'Дэн','Браун','1964-06-22'),(16,'Харпер','Ли','1926-04-28'),(17,'Фрэнсис','Фицджеральд','1896-09-24'),(18,'Габриэль','Маркес','1927-03-06'),(19,'Рэй','Брэдбери','1920-08-22'),(20,'Джек','Лондон','1876-01-12'),(21,'Жюль','Верн','1828-02-08'),(22,'Михаил','Лермонтов','1814-10-15');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `author_id` (`author_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Война и мир',1,1,'978-5-17-067698-0','Роман',900.00,3),(2,'Анна Каренина',1,1,'978-5-17-090630-8','Роман',650.00,12),(3,'Преступление и наказание',2,2,'978-5-04-103309-9','Роман',550.00,30),(4,'Идиот',2,2,'978-5-04-103310-5','Роман',600.00,15),(5,'Вишнёвый сад',3,3,'978-5-353-08612-2','Пьеса',350.00,40),(6,'Дама с собачкой',3,3,'978-5-389-15705-3','Рассказ',250.00,50),(7,'Евгений Онегин',4,4,'978-5-389-06213-5','Роман в стихах',450.00,35),(8,'Мёртвые души',5,4,'978-5-389-06214-2','Поэма',500.00,20),(9,'Отцы и дети',6,5,'978-5-08-005924-9','Роман',480.00,22),(10,'Мастер и Маргарита',7,1,'978-5-17-090631-5','Роман',700.00,28),(11,'1984',9,6,'978-5-17-100632-8','Антиутопия',450.00,45),(12,'Скотный двор',9,6,'978-5-17-100633-5','Сатира',350.00,38),(13,'Старик и море',10,7,'978-5-17-090632-2','Повесть',300.00,55),(14,'Убить пересмешника',16,8,'978-5-9614-6259-6','Роман',550.00,20),(15,'Великий Гэтсби',17,9,'978-5-17-090633-9','Роман',400.00,30),(16,'Сто лет одиночества',18,10,'978-5-17-090634-6','Роман',650.00,15),(17,'451 градус по Фаренгейту',19,1,'978-5-17-090635-3','Антиутопия',380.00,40),(18,'Мартин Иден',20,2,'978-5-04-103311-2','Роман',500.00,25),(19,'Гарри Поттер и философский камень',12,3,'978-5-353-08613-9','Фэнтези',750.00,60),(20,'Гарри Поттер и Тайная комната',12,3,'978-5-353-08614-6','Фэнтези',750.00,55),(21,'Оно',13,4,'978-5-17-090636-0','Ужасы',900.00,18),(22,'Зелёная миля',13,4,'978-5-17-090637-7','Роман',600.00,30),(23,'Властелин колец: Братство кольца',14,5,'978-5-17-090638-4','Фэнтези',800.00,35),(24,'Властелин колец: Две крепости',14,5,'978-5-17-090639-1','Фэнтези',800.00,32),(25,'Властелин колец: Возвращение короля',14,5,'978-5-17-090640-7','Фэнтези',800.00,30),(26,'Код да Винчи',15,6,'978-5-17-090641-4','Детектив',550.00,40),(27,'Ангелы и демоны',15,6,'978-5-17-090642-1','Детектив',550.00,35),(28,'Архипелаг ГУЛАГ',8,7,'978-5-17-090643-8','История',1200.00,12),(29,'Один день Ивана Денисовича',8,7,'978-5-17-090644-5','Повесть',350.00,25),(30,'Десять негритят',11,8,'978-5-9614-6260-2','Детектив',400.00,45),(31,'Убийство в Восточном экспрессе',11,8,'978-5-9614-6261-9','Детектив',400.00,40),(32,'Бесы',2,9,'978-5-17-090645-2','Роман',650.00,18),(33,'Братья Карамазовы',2,9,'978-5-17-090646-9','Роман',700.00,20),(34,'Ревизор',5,10,'978-5-17-090647-6','Комедия',300.00,50),(35,'Капитанская дочка',4,1,'978-5-17-090648-3','Роман',350.00,30),(36,'Белая гвардия',7,2,'978-5-04-103312-9','Роман',500.00,22),(37,'Собачье сердце',7,2,'978-5-04-103313-6','Повесть',350.00,40),(38,'Дети капитана Гранта',21,3,'978-5-353-08615-3','Приключения',450.00,25),(39,'Герой нашего времени',22,3,'978-5-353-08616-0','Роман',400.00,35);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_book_price_update` BEFORE UPDATE ON `books` FOR EACH ROW BEGIN
    IF NEW.price <> OLD.price THEN
        INSERT INTO PriceAudit (book_id, old_price, new_price, changed_by)
        VALUES (OLD.book_id, OLD.price, NEW.price, CURRENT_USER());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `registration_date` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Иван','Иванов','ivanov@mail.ru','+79151234567','Москва, ул. Ленина, 10','2024-01-15'),(2,'Петр','Петров','petrov@gmail.com','+79162345678','Москва, ул. Пушкина, 25','2024-02-20'),(3,'Сергей','Сергеев','sergeev@yandex.ru','+79173456789','Санкт-Петербург, Невский пр., 50','2025-03-10'),(4,'Анна','Смирнова','smirnova@mail.ru','+79184567890','Москва, ул. Гагарина, 15','2023-04-05'),(5,'Мария','Кузнецова','kuznetsova@gmail.com','+79195678901','Екатеринбург, ул. Мира, 30','2025-05-12'),(6,'Алексей','Попов','popov@yandex.ru','+79206789012','Новосибирск, ул. Кирова, 45','2025-06-18'),(7,'Елена','Васильева','vasileva@mail.ru','+79217890123','Казань, ул. Баумана, 20','2025-07-22'),(8,'Дмитрий','Соколов','sokolov@gmail.com','+79228901234','Москва, ул. Тверская, 35','2024-08-30'),(9,'Ольга','Михайлова','mikhailova@yandex.ru','+79239012345','Санкт-Петербург, ул. Марата, 60','2023-09-14'),(10,'Николай','Новиков','novikov@mail.ru','+79240123456','Краснодар, ул. Красная, 75','2023-10-25'),(11,'Татьяна','Федорова','fedorova@gmail.com','+79251234567','Москва, ул. Арбат, 40','2025-11-03'),(12,'Андрей','Морозов','morozov@yandex.ru','+79262345678','Владивосток, ул. Светланская, 25','2024-12-10'),(13,'Наталья','Волкова','volkova@mail.ru','+79273456789','Ростов-на-Дону, ул. Большая Садовая, 50','2024-01-15'),(14,'Виктор','Алексеев','alekseev@gmail.com','+79284567890','Москва, ул. Профсоюзная, 80','2024-02-20'),(15,'Юлия','Лебедева','lebedeva@yandex.ru','+79295678901','Самара, ул. Ленинградская, 35','2024-03-05');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `hire_date` date NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Александр','Козлов','kozlov@bookstore.ru','+74951112233','Менеджер','2021-05-10',80000.00),(2,'Екатерина','Ильина','ilina@bookstore.ru','+74952223344','Продавец-консультант','2025-06-15',55000.00),(3,'Артем','Григорьев','grigoriev@bookstore.ru','+74953334455','Продавец-консультант','2025-07-20',52000.00),(4,'Светлана','Павлова','pavlova@bookstore.ru','+74954445566','Кассир','2024-08-01',48000.00),(5,'Михаил','Белов','belov@bookstore.ru','+74955556677','Маркетолог','2022-09-10',65000.00);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price_at_order` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `order_details_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,3,1,550.00),(2,1,5,2,350.00),(3,1,10,1,700.00),(4,2,7,1,450.00),(5,2,15,2,400.00),(6,3,11,1,450.00),(7,3,17,1,380.00),(8,3,20,1,750.00),(9,4,1,1,850.00),(10,4,2,1,650.00),(11,4,4,1,600.00),(12,4,9,1,480.00),(13,5,6,3,250.00),(14,6,13,1,300.00),(15,6,14,1,550.00),(16,6,16,1,650.00),(17,6,19,1,750.00),(18,7,8,1,500.00),(19,7,12,1,350.00),(20,7,18,1,500.00),(21,8,21,1,900.00),(22,8,22,1,600.00),(23,9,23,1,800.00),(24,9,24,1,800.00),(25,10,25,1,800.00),(26,10,26,1,550.00),(27,10,27,1,550.00),(28,22,1,1,850.00),(29,22,2,3,650.00),(30,25,1,6,850.00),(31,25,2,3,650.00),(33,28,1,1,850.00);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,'2025-01-05 10:15:00',1800.00,'Completed'),(2,3,2,'2025-01-10 14:30:00',1250.00,'Completed'),(3,5,3,'2025-01-15 11:45:00',950.00,'Completed'),(4,2,3,'2025-01-20 16:20:00',2200.00,'Completed'),(5,7,4,'2025-02-01 12:10:00',750.00,'Completed'),(6,4,4,'2025-02-05 13:25:00',1600.00,'Completed'),(7,6,2,'2025-02-10 15:40:00',1100.00,'Completed'),(8,8,3,'2025-02-15 10:55:00',850.00,'Completed'),(9,9,4,'2025-02-20 14:15:00',1400.00,'Completed'),(10,10,2,'2025-03-01 11:30:00',1950.00,'Completed'),(11,11,3,'2025-03-05 09:45:00',1200.00,'Completed'),(12,12,4,'2025-03-10 13:00:00',1750.00,'Completed'),(13,13,2,'2025-03-15 16:30:00',900.00,'Completed'),(14,14,3,'2025-03-20 10:20:00',1300.00,'Completed'),(15,15,4,'2025-04-01 14:40:00',1500.00,'Completed'),(16,1,2,'2025-04-05 11:10:00',800.00,'Completed'),(17,3,3,'2025-04-10 15:25:00',950.00,'Completed'),(18,5,4,'2025-04-15 09:50:00',1100.00,'Completed'),(19,7,2,'2025-04-20 13:15:00',1250.00,'Completed'),(20,9,3,'2025-05-01 16:45:00',1400.00,'Completed'),(22,3,2,'2025-06-24 19:05:24',2800.00,'Completed'),(25,1,3,'2025-06-24 19:08:25',7050.00,'Completed'),(28,1,1,'2025-06-24 20:24:22',850.00,'Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priceaudit`
--

DROP TABLE IF EXISTS `priceaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priceaudit` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `change_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priceaudit`
--

LOCK TABLES `priceaudit` WRITE;
/*!40000 ALTER TABLE `priceaudit` DISABLE KEYS */;
INSERT INTO `priceaudit` VALUES (1,1,850.00,900.00,'2025-06-24 21:19:13','root@localhost');
/*!40000 ALTER TABLE `priceaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'АСТ','Москва, ул. Правды, 24','+7 (495) 123-45-67','info@ast.ru'),(2,'Эксмо','Москва, ул. Зорге, 1','+7 (495) 234-56-78','contact@eksmo.ru'),(3,'Росмэн','Москва, ул. Шаболовка, 31','+7 (495) 345-67-89','sales@rosman.ru'),(4,'Азбука','Санкт-Петербург, Невский пр., 28','+7 (812) 456-78-90','info@azbooka.ru'),(5,'Просвещение','Москва, 3-й проезд Марьиной рощи, 41','+7 (495) 789-01-23','prosv@prosv.ru'),(6,'Манн, Иванов и Фербер','Москва, ул. Шухова, 17','+7 (495) 678-90-12','office@mann-ivanov-ferber.ru'),(7,'Corpus','Москва, ул. Долгоруковская, 6','+7 (495) 567-89-01','corpus@ast.ru'),(8,'Альпина Паблишер','Москва, ул. Сретенка, 16','+7 (495) 980-80-01','info@alpina.ru'),(9,'Фантом Пресс','Москва, ул. Нижняя Сыромятническая, 10','+7 (495) 212-90-15','phantom@phantom.ru'),(10,'Дрофа','Москва, ул. Сущёвский Вал, 49','+7 (495) 795-05-99','info@drofa.ru');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salesreport`
--

DROP TABLE IF EXISTS `salesreport`;
/*!50001 DROP VIEW IF EXISTS `salesreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salesreport` AS SELECT 
 1 AS `book_id`,
 1 AS `title`,
 1 AS `author_first_name`,
 1 AS `author_last_name`,
 1 AS `publisher_name`,
 1 AS `total_sold`,
 1 AS `total_revenue`,
 1 AS `current_price`,
 1 AS `current_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bookstore'
--

--
-- Dumping routines for database 'bookstore'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateDiscount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateDiscount`(
    p_customer_id INT,
    p_total_amount DECIMAL(10, 2)
) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE v_discount DECIMAL(10, 2) DEFAULT 0;
    DECLARE v_order_count INT;
    DECLARE v_total_spent DECIMAL(10, 2);
    
    -- Подсчет количества заказов клиента
    SELECT COUNT(*) INTO v_order_count
    FROM Orders
    WHERE customer_id = p_customer_id;
    
    -- Подсчет общей суммы покупок клиента
    SELECT COALESCE(SUM(total_amount), 0) INTO v_total_spent
    FROM Orders
    WHERE customer_id = p_customer_id;
    
    -- Определение размера скидки
    IF v_total_spent > 10000 THEN
        SET v_discount = 0.10; -- 10% для VIP-клиентов
    ELSEIF v_order_count > 5 THEN
        SET v_discount = 0.05; -- 5% для постоянных клиентов
    ELSEIF p_total_amount > 1000 THEN
        SET v_discount = 0.03; -- 3% для крупных заказов
    END IF;
    
    RETURN v_discount * p_total_amount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcessOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProcessOrder`(
    IN p_customer_id INT,
    IN p_employee_id INT,
    IN p_book_ids VARCHAR(255),
    IN p_quantities VARCHAR(255)
)
proc_label: BEGIN
    DECLARE v_order_id INT;
    DECLARE v_total_amount DECIMAL(10, 2) DEFAULT 0;
    DECLARE v_book_id INT;
    DECLARE v_quantity INT;
    DECLARE v_price DECIMAL(10, 2);
    DECLARE v_remaining_stock INT;
    DECLARE v_i INT DEFAULT 1;
    DECLARE v_book_count INT;
    DECLARE v_current_list VARCHAR(255);
    DECLARE v_current_quantity VARCHAR(255);
    DECLARE v_error_msg VARCHAR(500);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 v_error_msg = MESSAGE_TEXT;
        SELECT CONCAT('Ошибка: ', v_error_msg) AS error;
    END;
    
    -- Проверка входных параметров
    IF p_customer_id IS NULL OR p_employee_id IS NULL OR 
       p_book_ids IS NULL OR p_quantities IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Все параметры должны быть указаны';
        LEAVE proc_label;
    END IF;
    
    -- Подсчет количества книг в заказе
    SET v_book_count = (LENGTH(p_book_ids) - LENGTH(REPLACE(p_book_ids, ',', ''))) + 1;
    
    -- Проверка соответствия количества книг и количеств
    IF (LENGTH(p_quantities) - LENGTH(REPLACE(p_quantities, ',', ''))) + 1 != v_book_count THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Количество книг и количеств не совпадает';
        LEAVE proc_label;
    END IF;
    
    -- Начало транзакции
    START TRANSACTION;
    
    -- Создание записи заказа
    INSERT INTO Orders (customer_id, employee_id, total_amount, status)
    VALUES (p_customer_id, p_employee_id, 0, 'Processing');
    
    SET v_order_id = LAST_INSERT_ID();
    
    -- Обработка каждой книги в заказе
    WHILE v_i <= v_book_count DO
        -- Извлечение ID книги и количества
        IF v_i = 1 THEN
            SET v_book_id = SUBSTRING_INDEX(p_book_ids, ',', 1);
            SET v_quantity = SUBSTRING_INDEX(p_quantities, ',', 1);
        ELSE
            SET p_book_ids = SUBSTRING(p_book_ids, LENGTH(SUBSTRING_INDEX(p_book_ids, ',', 1)) + 2);
            SET p_quantities = SUBSTRING(p_quantities, LENGTH(SUBSTRING_INDEX(p_quantities, ',', 1)) + 2);
            SET v_book_id = SUBSTRING_INDEX(p_book_ids, ',', 1);
            SET v_quantity = SUBSTRING_INDEX(p_quantities, ',', 1);
        END IF;
        
        -- Проверка валидности book_id
        IF NOT EXISTS (SELECT 1 FROM Books WHERE book_id = v_book_id) THEN
            ROLLBACK;
            SET v_error_msg = CONCAT('Книга с ID ', v_book_id, ' не найдена');
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg;
            LEAVE proc_label;
        END IF;
        
        -- Проверка валидности количества
        IF v_quantity <= 0 THEN
            ROLLBACK;
            SET v_error_msg = CONCAT('Некорректное количество для книги ID ', v_book_id);
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg;
            LEAVE proc_label;
        END IF;
        
        -- Получение цены книги и проверка наличия
        SELECT price, stock_quantity INTO v_price, v_remaining_stock
        FROM Books 
        WHERE book_id = v_book_id
        FOR UPDATE;
        
        -- Проверка достаточного количества на складе
        IF v_remaining_stock < v_quantity THEN
            ROLLBACK;
            SET v_error_msg = CONCAT('Недостаточно книг в наличии для книги ID ', v_book_id, 
                                   '. Доступно: ', v_remaining_stock, ', Заказано: ', v_quantity);
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_msg;
            LEAVE proc_label;
        END IF;
        
        -- Обновление количества на складе
        UPDATE Books 
        SET stock_quantity = stock_quantity - v_quantity 
        WHERE book_id = v_book_id;
        
        -- Добавление деталей заказа
        INSERT INTO Order_Details (order_id, book_id, quantity, price_at_order)
        VALUES (v_order_id, v_book_id, v_quantity, v_price);
        
        -- Добавление к общей сумме
        SET v_total_amount = v_total_amount + (v_price * v_quantity);
        
        SET v_i = v_i + 1;
    END WHILE;
    
    -- Обновление общей суммы заказа
    UPDATE Orders 
    SET 
        total_amount = v_total_amount,
        status = 'Completed',
        order_date = NOW()
    WHERE order_id = v_order_id;
    
    -- Завершение транзакции
    COMMIT;
    
    -- Возврат успешного результата
    SELECT 
        v_order_id AS order_id,
        v_total_amount AS total_amount,
        'Заказ успешно оформлен' AS message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `salesreport`
--

/*!50001 DROP VIEW IF EXISTS `salesreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salesreport` AS select `b`.`book_id` AS `book_id`,`b`.`title` AS `title`,`a`.`first_name` AS `author_first_name`,`a`.`last_name` AS `author_last_name`,`p`.`publisher_name` AS `publisher_name`,sum(`od`.`quantity`) AS `total_sold`,sum((`od`.`quantity` * `od`.`price_at_order`)) AS `total_revenue`,`b`.`price` AS `current_price`,`b`.`stock_quantity` AS `current_stock` from (((`order_details` `od` join `books` `b` on((`od`.`book_id` = `b`.`book_id`))) join `authors` `a` on((`b`.`author_id` = `a`.`author_id`))) join `publishers` `p` on((`b`.`publisher_id` = `p`.`publisher_id`))) group by `b`.`book_id` order by `total_sold` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 11:34:25
