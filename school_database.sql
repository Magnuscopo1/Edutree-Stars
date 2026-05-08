-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `assessment_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `total_questions` int DEFAULT NULL,
  `duration_minutes` int DEFAULT '30',
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,'HTML Fundamentals','HTML',3,10),(2,'Core Java Basics','Java',3,15),(3,'LLM Architecture & Concepts','LLM',5,20),(4,'Modern AI Tools & Ecosystems','AI Tools',5,5),(5,'Data Science & Analytics','Data Science',5,45),(6,'ChatGPT & LLM Architecture','AI Models',5,60),(7,'Google Gemini Capabilities','AI Models',5,25),(8,'Google AI Studio & API','AI Tools',5,35);
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_questions`
--

DROP TABLE IF EXISTS `assignment_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int DEFAULT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` char(1) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `assignment_id` (`assignment_id`),
  CONSTRAINT `assignment_questions_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_questions`
--

LOCK TABLES `assignment_questions` WRITE;
/*!40000 ALTER TABLE `assignment_questions` DISABLE KEYS */;
INSERT INTO `assignment_questions` VALUES (24,4,'What does CSS stand for?','Colorful Style Sheets','Computer Style Sheets','Cascading Style Sheets','Creative Style Sheets','C'),(25,4,'Which HTML attribute is used to define inline styles?','class','style','font','styles','B'),(26,4,'How do you select an element with id \"demo\"?','#demo','.demo','demo','*demo','A'),(27,4,'Which property is used to change the background color?','color','bgcolor','background-color','background','C'),(28,4,'Which CSS property controls the text size?','font-style','text-size','font-size','text-style','C'),(29,5,'Which method is the entry point for any standard Java program?','start()','init()','main()','run()','C'),(30,5,'What is the size of an int variable in Java?','8-bit','16-bit','32-bit','64-bit','C'),(31,5,'Which keyword is used to allocate memory for a new object in Java?','allocate','new','create','malloc','B'),(32,5,'Which of these is NOT a primitive data type in Java?','int','boolean','String','char','C'),(33,5,'Which OOP concept refers to hiding internal details and showing only functionality?','Polymorphism','Inheritance','Encapsulation','Abstraction','D'),(34,6,'What does SQL stand for?','Strong Question Language','Structured Query Language','Structured Question Language','Standard Query Language','B'),(35,6,'Which SQL statement is used to extract data from a database?','GET','OPEN','EXTRACT','SELECT','D'),(36,6,'Which SQL clause is used to filter records?','ORDER BY','GROUP BY','WHERE','HAVING','C'),(37,6,'Which SQL keyword is used to sort the result-set?','ORDER BY','SORT BY','ALIGN BY','FILTER BY','A'),(38,6,'Which SQL statement is used to update existing data in a database?','MODIFY','SAVE','UPDATE','CHANGE','C'),(44,8,'What does HTML stand for?','Hyper Text Preprocessor','Hyper Text Markup Language','Hyper Tool Multi Language','Hyperlink and Text Markup Language','B'),(45,8,'Which tag is used to create a hyperlink?','&lt;link&gt;','&lt;a&gt;','&lt;href&gt;','&lt;url&gt;','B'),(46,8,'What is the correct tag for a line break?','&lt;break&gt;','&lt;lb&gt;','&lt;br&gt;','&lt;newline&gt;','C'),(47,8,'How can you make a numbered list?','&lt;ul&gt;','&lt;list&gt;','&lt;dl&gt;','&lt;ol&gt;','D'),(48,8,'Choose the correct element for the largest heading:','&lt;heading&gt;','&lt;h6&gt;','&lt;head&gt;','&lt;h1&gt;','D'),(79,9,'What fundamental architecture powers ChatGPT?','Convolutional Neural Networks','The Transformer Architecture','Recurrent Neural Networks','Decision Trees','B'),(80,9,'What does RLHF stand for?','Real-time Language Heuristic','Reinforcement Learning from Human Feedback','Rapid Logic Handling','Recursive Learning','B'),(81,10,'Which Gemini tier is for on-device mobile tasks?','Gemini Ultra','Gemini Pro','Gemini Nano','Gemini Flash','C'),(82,11,'What does RAG stand for?','Random Augmented Generation','Retrieval-Augmented Generation','Rapid Application Growth','Recursive AI Graphing','B'),(83,12,'How is AGI defined?','AI that generates images','AI capable of learning any human task','A chatbot that passes Turing test','AI built for chess','B'),(84,13,'What is the primary function of the \"Attention Mechanism\" in a Transformer?','To increase processing speed','To weigh the relevance of different words in a sequence regardless of distance','To compress the data into a smaller size','To check for grammatical errors','B'),(85,13,'In LLM training, what does \"Zero-shot learning\" refer to?','Training a model with zero data','The ability of a model to perform a task without any specific examples provided in the prompt','A model that has zero parameters','Deleting the models memory after every use','B'),(86,13,'Which Google model was the first to introduce a 1-million+ token context window?','Gemini 1.5 Pro','BERT','PaLM 2','LaMDA','A'),(87,13,'What is \"Temperature\" in an LLM API setting?','The physical heat of the server','A parameter that controls the randomness/creativity of the output','The speed of the response','The number of GPUs used for the request','B'),(88,13,'What is the main goal of RLHF (Reinforcement Learning from Human Feedback)?','To make the AI faster','To align model behavior with human values and instructions','To reduce the cost of training','To allow the AI to browse the live internet','B'),(89,14,'What is the role of a \"Vector Database\" in a RAG system?','To store user profile pictures','To store and retrieve high-dimensional embeddings for semantic search','To host the React frontend','To act as a traditional SQL table','B'),(90,14,'What defines an \"Autonomous AI Agent\"?','An AI that only responds to text','An AI that can use tools and take independent actions to achieve a goal','An AI that requires a human to type every word','An AI that is not connected to the internet','B'),(91,14,'What is \"Prompt Engineering\"?','Repairing the hardware of an AI server','The process of refining and optimizing input text to get better AI results','Writing the core C++ code for a model','Installing a new version of Python','B'),(92,14,'What does \"Fine-tuning\" a model involve?','Adjusting the monitor settings','Retraining a pre-trained model on a smaller, specific dataset to improve performance','Deleting the models knowledge','Connecting the model to a printer','B'),(93,14,'Which framework is popular for building LLM-powered agentic workflows?','LangChain','jQuery','Sass','WordPress','A'),(94,15,'How does Node.js handle non-blocking I/O operations?','By using multiple CPU cores for every task','Through the Event Loop and Callback Queue','By pausing the execution until the file is read','By restarting the server for every request','B'),(95,15,'In React, what is the advantage of using \"Server Components\"?','They move the rendering logic to the client side','They reduce the bundle size by keeping heavy logic on the server','They replace the need for a database','They only work with HTML files','B'),(96,15,'Which Node.js framework is most commonly used for building scalable AI APIs?','React','Express.js','Tailwind','Bootstrap','B'),(97,15,'What is the purpose of \"Strict Mode\" in React?','To make the UI look more professional','To highlight potential problems in an application during development','To prevent users from entering wrong data','To encrypt the source code','B'),(98,15,'In a Full Stack AI app, where should the API Key for Gemini/OpenAI be stored?','In the Frontend (App.js)','In an Environment Variable (.env) on the Backend','In a public GitHub repository','In the browser local storage','B');
/*!40000 ALTER TABLE `assignment_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_results`
--

DROP TABLE IF EXISTS `assignment_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_email` varchar(100) DEFAULT NULL,
  `technology` varchar(50) DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_email` (`student_email`),
  CONSTRAINT `assignment_results_ibfk_1` FOREIGN KEY (`student_email`) REFERENCES `users` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_results`
--

LOCK TABLES `assignment_results` WRITE;
/*!40000 ALTER TABLE `assignment_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_scores`
--

DROP TABLE IF EXISTS `assignment_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_scores` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `assignment_title` varchar(255) DEFAULT NULL,
  `marks_scored` int DEFAULT NULL,
  `total_marks` int DEFAULT NULL,
  `attempt_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_scores`
--

LOCK TABLES `assignment_scores` WRITE;
/*!40000 ALTER TABLE `assignment_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `max_score` int DEFAULT '100',
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (4,'CSS','CSS Styling Quiz','Assess your skills in styling and layout using Cascading Style Sheets.','2026-04-25 02:27:56',5),(5,'Java','Core Java Quiz','Evaluate your understanding of Object-Oriented Programming in Java.','2026-04-25 02:27:56',5),(6,'SQL','Database & SQL Quiz','Test your ability to query and manipulate relational databases.','2026-04-25 02:27:56',5),(8,'HTML','HTML Fundamentals Quiz','Test your fundamental knowledge of HTML structure.','2026-04-25 02:50:57',5),(9,NULL,'ChatGPT & LLM Architecture','Comprehensive quiz on LLM fundamentals and OpenAI architecture.','2026-04-25 17:25:17',100),(10,NULL,'Google Gemini Capabilities','Testing knowledge on Google natively multimodal models.','2026-04-25 17:25:17',100),(11,NULL,'The AI Engineer Role','MLOps, RAG, and Vector Database implementation.','2026-04-25 17:25:28',100),(12,NULL,'Artificial General Intelligence','Theoretical concepts of AGI and AI Safety.','2026-04-25 17:25:28',100),(13,NULL,'Advanced LLM Architectures','Deep dive into ChatGPT, Gemini, and Transformer mechanics.','2026-04-25 17:33:11',100),(14,NULL,'AI Engineering & Agents','Testing knowledge on RAG, Vector DBs, and Autonomous Agents.','2026-04-25 17:33:20',100),(15,NULL,'Full Stack JS & AI Integration','Modern Node.js and React patterns for AI applications.','2026-04-25 17:33:30',100);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `upload_type` varchar(100) DEFAULT NULL,
  `topic_folder` varchar(100) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(2,2,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(3,3,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(4,4,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(5,5,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(6,6,'corejava.csv','Assessment','JAVA',0,'2026-05-07 20:59:17'),(7,1,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(8,2,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(9,3,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(10,4,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(11,5,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(12,6,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-07 21:00:31'),(13,1,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(14,2,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(15,3,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(16,4,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(17,5,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(18,6,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:08:53'),(19,1,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(20,2,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(21,3,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(22,4,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(23,5,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(24,6,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:12:16'),(25,1,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(26,2,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(27,3,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(28,4,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(29,5,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(30,6,'Single Question','Assessment','HTML',0,'2026-05-07 21:12:35'),(31,1,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(32,2,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(33,3,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(34,4,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(35,5,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(36,6,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-07 21:25:58'),(37,1,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(38,2,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(39,3,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(40,4,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(41,5,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(42,6,'1 New Question Added manually','Practice','HTML',0,'2026-05-07 21:26:27'),(43,1,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(44,2,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(45,3,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(46,4,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(47,5,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(48,6,'corejava.csv','Assessment','JAVA',0,'2026-05-07 21:29:03'),(49,1,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(50,2,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(51,3,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(52,4,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(53,5,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(54,6,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-07 21:29:31'),(55,1,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(56,2,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(57,3,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(58,4,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(59,5,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(60,6,'javascript_Questions.csv','Assignment','JAVASCRIPT',0,'2026-05-07 21:52:12'),(61,1,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(62,2,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(63,3,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(64,4,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(65,5,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(66,6,'1 New Question Added manually','Practice','PYTHON',0,'2026-05-07 21:52:46'),(67,1,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(68,2,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(69,3,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(70,4,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(71,5,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(72,6,'corejava.csv','Assessment','JAVA',0,'2026-05-07 23:07:26'),(73,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(74,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(75,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(76,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(77,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(78,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:26:57'),(79,1,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(80,2,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(81,3,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(82,4,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(83,5,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(84,6,'HTML_Advanced_Vol2.csv','Assignment','HTML',0,'2026-05-08 00:27:07'),(85,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(86,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(87,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(88,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(89,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(90,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:32:40'),(91,1,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(92,2,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(93,3,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(94,4,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(95,5,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(96,6,'HTML_Advanced_Vol2.csv','Assessment','HTML',0,'2026-05-08 00:32:51'),(97,1,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(98,2,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(99,3,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(100,4,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(101,5,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(102,6,'css.csv','Assessment','CSS',0,'2026-05-08 00:33:05'),(103,1,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(104,2,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(105,3,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(106,4,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(107,5,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(108,6,'JavaScript_Advanced.csv','Assessment','JAVASCRIPT',0,'2026-05-08 00:33:14'),(109,1,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(110,2,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(111,3,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(112,4,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(113,5,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(114,6,'python.csv','Assessment','PYTHON',0,'2026-05-08 00:33:23'),(115,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(116,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(117,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(118,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(119,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(120,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:42:41'),(121,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(122,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(123,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(124,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(125,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(126,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 00:47:03'),(127,1,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(128,2,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(129,3,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(130,4,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(131,5,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(132,6,'corejava.csv','Assignment','JAVA',0,'2026-05-08 00:50:06'),(133,1,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(134,2,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(135,3,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(136,4,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(137,5,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(138,6,'css.csv','Assignment','CSS',0,'2026-05-08 01:05:03'),(139,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(140,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(141,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(142,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(143,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(144,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:19:37'),(145,1,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(146,2,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(147,3,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(148,4,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(149,5,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(150,6,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:19:57'),(151,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(152,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(153,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(154,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(155,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(156,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 01:23:45'),(157,1,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(158,2,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(159,3,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(160,4,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(161,5,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(162,6,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 01:24:02'),(163,1,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(164,2,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(165,3,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(166,4,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(167,5,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(168,6,'HTML_Advanced_Vol2.csv','Assessment','JAVA',0,'2026-05-08 07:36:28'),(169,1,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(170,2,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(171,3,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(172,4,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(173,5,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(174,6,'1 New Question Added manually','Assessment','HTML',0,'2026-05-08 07:36:41'),(175,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(176,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(177,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(178,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(179,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(180,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 07:41:42'),(181,1,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(182,2,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(183,3,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(184,4,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(185,5,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(186,6,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 07:42:04'),(187,1,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(188,2,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(189,3,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(190,4,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(191,5,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(192,6,'1 New Question Added manually','Assessment','JAVA',0,'2026-05-08 08:39:59'),(193,1,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(194,2,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(195,3,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(196,4,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(197,5,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(198,6,'HTML_Advanced.csv','Assessment','HTML',0,'2026-05-08 09:12:44'),(199,1,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(200,2,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(201,3,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(202,4,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(203,5,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(204,6,'css.csv','Assignment','CSS',0,'2026-05-08 09:16:57'),(205,1,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27'),(206,2,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27'),(207,3,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27'),(208,4,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27'),(209,5,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27'),(210,6,'corejava.csv','Assessment','JAVA',0,'2026-05-08 09:22:27');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,1,'Java Virtual Machine',NULL),(2,1,'Java Variable Method',NULL),(3,1,'Just Virtual Machine',NULL),(4,1,'None',NULL);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `assessment_id` int DEFAULT NULL,
  `question_text` varchar(1000) DEFAULT NULL,
  `option_a` varchar(500) DEFAULT NULL,
  `option_b` varchar(500) DEFAULT NULL,
  `option_c` varchar(500) DEFAULT NULL,
  `option_d` varchar(500) DEFAULT NULL,
  `correct_option` varchar(500) DEFAULT NULL,
  `folder_category` varchar(255) DEFAULT NULL,
  `question_type` varchar(50) DEFAULT 'Practice',
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_text` (`question_text`(255)),
  KEY `assessment_id` (`assessment_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`assessment_id`) REFERENCES `assessments` (`assessment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_bank`
--

DROP TABLE IF EXISTS `questions_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `technology` varchar(100) DEFAULT NULL,
  `question` text,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `answer` text,
  `difficulty` varchar(20) DEFAULT 'Medium',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_bank`
--

LOCK TABLES `questions_bank` WRITE;
/*!40000 ALTER TABLE `questions_bank` DISABLE KEYS */;
INSERT INTO `questions_bank` VALUES (1,'JavaScript','Which keyword is used to declare a block-scoped variable in ES6?','var','let','set','const','let','Easy'),(2,'JavaScript','What is the output of: console.log(typeof null)?','null','undefined','object','number','object','Medium'),(3,'JavaScript','Which method is used to add an element at the end of an array?','pop()','push()','shift()','unshift()','push()','Hard'),(4,'Java','Which of these is not a primitive data type in Java?','int','boolean','String','char','String','Medium'),(5,'Java','What is the default value of a boolean variable?','true','false','null','0','false','Medium'),(6,'react','What is the purpose of the virtual DOM in React?','Directly update the real DOM','Minimize DOM manipulation','Create a 3D interface','Speed up network requests','Minimize DOM manipulation','Medium'),(7,'react','Which hook is used to handle side effects in functional components?','useState','useContext','useEffect','useReducer','useEffect','Medium'),(8,'react','How do you pass data from a parent component to a child component?','Using State','Using Props','Using Redux','Using LocalStorage','Using Props','Medium'),(9,'css','Which property is used to change the text color of an element?','background-color','font-style','color','text-align','color','Medium'),(10,'css','How do you center a block element horizontally using margin?','margin: center','margin: 0 auto','margin: 10px','margin: auto 0','margin: 0 auto','Medium'),(11,'css','Which CSS property controls the stack order of elements?','z-index','order','stack','position','z-index','Medium'),(12,'HTML','What does HTML stand for?','Hyper Text Markup Language','High Tech Modern Language','Hyperlink Text Management Lib','None','Hyper Text Markup Language','Easy'),(13,'HTML','Which tag is used to create a hyperlink?','<a>','<link>','<href>','<url>','<a>','Easy'),(14,'HTML','Which HTML5 element is used to specify a footer for a document?','<bottom>','<footer>','<section>','<aside>','<footer>','Medium'),(15,'HTML','Which attribute is used to provide an alternative text for an image?','title','alt','src','longdesc','alt','Easy'),(16,'HTML','In HTML, which attribute is used to specify that an input field must be filled out?','validate','placeholder','required','form-check','required','Medium'),(17,'JavaScript','Which method is used to write text in the browser console?','console.print()','console.log()','console.write()','console.output()','console.log()','Easy'),(18,'JavaScript','What is the correct way to check if a variable \"x\" is an array?','typeof x === \"array\"','x instanceof Array','x.isArray()','isArray(x)','x instanceof Array','Medium'),(19,'JavaScript','Which ES6 feature allows us to extract values from arrays or objects into distinct variables?','Spread','Rest','Destructuring','Template Literals','Destructuring','Hard'),(20,'JavaScript','What is the output of: console.log(0.1 + 0.2 === 0.3)?','true','false','undefined','NaN','false','Hard'),(21,'JavaScript','Which function is used to parse a string to an integer?','Integer.parse()','parseInt()','parse()','Number.int()','parseInt()','Easy'),(22,'SQL','Which SQL statement is used to extract data from a database?','GET','EXTRACT','SELECT','OPEN','SELECT','Easy'),(23,'SQL','Which SQL keyword is used to sort the result-set?','SORT BY','ORDER BY','GROUP BY','ALIGN BY','ORDER BY','Easy'),(24,'SQL','What is the purpose of the MIN() function in SQL?','Return smallest value','Delete smallest value','Find average','None','Return smallest value','Easy'),(25,'SQL','Which join returns all rows when there is a match in one of the tables?','INNER JOIN','LEFT JOIN','RIGHT JOIN','FULL OUTER JOIN','FULL OUTER JOIN','Medium'),(26,'SQL','Which SQL constraint uniquely identifies each record in a table?','UNIQUE','CHECK','PRIMARY KEY','FOREIGN KEY','PRIMARY KEY','Medium'),(27,'MySQL','Which storage engine is the default in MySQL 5.5 and later?','MyISAM','InnoDB','Memory','CSV','InnoDB','Medium'),(28,'MySQL','How can you return the number of rows in a table \"users\"?','SELECT COUNT(*) FROM users','SELECT ROWS FROM users','SELECT * FROM users.count','None','SELECT COUNT(*) FROM users','Easy'),(29,'MySQL','Which command is used to see the structure of a table?','SHOW TABLE','DESCRIBE table_name','EXPLAIN table_name','Both B and C','Both B and C','Medium'),(30,'MySQL','Which data type is used to store fixed-length strings?','VARCHAR','TEXT','CHAR','BLOB','CHAR','Easy'),(31,'MySQL','What is the limit of a TINYINT signed type?','-128 to 127','0 to 255','-32768 to 32767','None','-128 to 127','Hard'),(32,'JS','What is the result of \"2\" + 2 in JavaScript?','4','22','NaN','Error','22','Easy'),(33,'JS','Which company developed JavaScript?','Microsoft','Sun Microsystems','Netscape','Oracle','Netscape','Easy'),(34,'JS','Which of the following is NOT a JavaScript data type?','String','Boolean','Float','Undefined','Float','Medium'),(35,'JS','What is the output of: console.log(typeof NaN)?','number','NaN','undefined','object','number','Hard'),(36,'JS','Which method is used to remove the last element from an array?','shift()','pop()','push()','slice()','pop()','Easy'),(37,'JavaScript','What is a \"closure\" in JavaScript?','A function inside a function','A way to close the browser tab','A variable that cannot be changed','A function that remembers its lexical scope','A function that remembers its lexical scope','Hard'),(38,'JavaScript','Which operator is used to check both value and type equality?','==','=','===','!=','===','Easy'),(39,'JavaScript','What does the \"use strict\" directive do?','Makes JS code run faster','Enforces stricter parsing and error handling','Prevents the use of global variables','Both B and C','Both B and C','Medium'),(40,'JavaScript','How do you create a function in JavaScript?','function:myFunc()','function myFunc()','create myFunc()','new Function myFunc()','function myFunc()','Easy'),(41,'JavaScript','Which promise method is called when a promise is successfully resolved?','.catch()','.finally()','.then()','.success()','.then()','Medium'),(42,'interview','What is the most important skill for a software engineer?','Typing speed','Problem solving','Memorizing syntax','Hardware repair','Problem solving','Medium'),(43,'interview','How should you approach a coding problem you do not know how to solve?','Give up immediately','Guess the answer blindly','Break it down into smaller parts','Wait for the interviewer to solve it','Break it down into smaller parts','Easy'),(44,'interview','What does the acronym STAR stand for in behavioral interviews?','Start, Task, Action, Result','Situation, Task, Action, Result','Situation, Time, Action, Review','Start, Time, Achieve, Result','Situation, Task, Action, Result','Medium'),(45,'interview','Why do interviewers ask \"What is your biggest weakness?\"','To make you uncomfortable','To find reasons to reject you','To test your self-awareness and willingness to learn','To see if you will lie','To test your self-awareness and willingness to learn','Hard'),(46,'interview','Which of the following is the best question to ask an interviewer at the end of the session?','What are the working hours?','Do you track internet usage?','Can you describe a typical day in this role?','When can I take my first vacation?','Can you describe a typical day in this role?','Easy');
/*!40000 ALTER TABLE `questions_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_data`
--

LOCK TABLES `student_data` WRITE;
/*!40000 ALTER TABLE `student_data` DISABLE KEYS */;
INSERT INTO `student_data` VALUES (5,3,'Java: Adding Two Numbers',70,100),(6,3,'HTML: Basic Tags',88,100),(7,3,'MySQL: Select Queries',0,50),(8,4,'Java: Adding Two Numbers',92,100),(9,4,'JavaScript: Functions',80,100),(10,4,'CSS: Grid Layout',0,99),(11,5,'Java: Logic & Loops',80,100),(12,5,'JavaScript: DOM Manipulation',90,100),(13,5,'HTML: Advanced Forms',0,30),(14,6,'Java: Adding Two Numbers',75,100),(15,6,'MySQL: Joins & Unions',82,100),(16,6,'HTML: Semantic Web',0,10),(17,7,'Java: Adding Two Numbers',65,100),(18,7,'Java: Adding Three Numbers',70,100),(19,7,'CSS: Animations',85,100),(20,7,'JavaScript: ES6 Syntax',0,10),(21,2,'Java: Adding Two Numbers',0,0),(22,2,'HTML: Basic Tags',0,0),(23,2,'CSS: Box Model',0,0),(24,2,'JavaScript: DOM',0,0),(25,2,'Python: Data Types',0,0);
/*!40000 ALTER TABLE `student_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_module_progress`
--

DROP TABLE IF EXISTS `student_module_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_module_progress` (
  `user_id` int NOT NULL,
  `module` varchar(255) NOT NULL,
  `course_read` tinyint DEFAULT '0',
  `assessment_done` tinyint DEFAULT '0',
  `assignment_done` tinyint DEFAULT '0',
  PRIMARY KEY (`user_id`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_module_progress`
--

LOCK TABLES `student_module_progress` WRITE;
/*!40000 ALTER TABLE `student_module_progress` DISABLE KEYS */;
INSERT INTO `student_module_progress` VALUES (5,'CSS',0,0,0),(5,'HTML',0,0,0),(5,'JAVA',1,1,0),(5,'JAVASCRIPT',0,0,0),(5,'PYTHON',0,0,0);
/*!40000 ALTER TABLE `student_module_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_scores`
--

DROP TABLE IF EXISTS `student_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_scores` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `assessment_id` int DEFAULT NULL,
  `marks_scored` int DEFAULT NULL,
  `attempt_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `technology` varchar(255) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `date_taken` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_id`),
  KEY `assessment_id` (`assessment_id`),
  CONSTRAINT `student_scores_ibfk_1` FOREIGN KEY (`assessment_id`) REFERENCES `assessments` (`assessment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_scores`
--

LOCK TABLES `student_scores` WRITE;
/*!40000 ALTER TABLE `student_scores` DISABLE KEYS */;
INSERT INTO `student_scores` VALUES (81,5,NULL,NULL,'2026-05-08 00:47:38','JAVA',5,'2026-05-08 00:47:38'),(82,5,NULL,NULL,'2026-05-08 00:50:44','JAVA',1,'2026-05-08 00:50:44'),(83,5,NULL,NULL,'2026-05-08 07:43:28','JAVA',2,'2026-05-08 07:43:28'),(84,5,NULL,NULL,'2026-05-08 09:14:46','HTML',0,'2026-05-08 09:14:46'),(85,5,NULL,NULL,'2026-05-08 09:23:06','JAVA',4,'2026-05-08 09:23:06');
/*!40000 ALTER TABLE `student_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_submissions`
--

DROP TABLE IF EXISTS `student_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_submissions` (
  `submission_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `assignment_id` int DEFAULT NULL,
  `marks_awarded` int DEFAULT NULL,
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_submissions`
--

LOCK TABLES `student_submissions` WRITE;
/*!40000 ALTER TABLE `student_submissions` DISABLE KEYS */;
INSERT INTO `student_submissions` VALUES (36,5,'CSS',NULL,3,'2026-05-08 01:05:45'),(37,5,'CSS',NULL,3,'2026-05-08 09:17:37');
/*!40000 ALTER TABLE `student_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com','123','admin'),(2,'Dhanraj','dhanraj@gmail.com','1234','student'),(3,'Raj','raj@gmail.com','12345','student'),(4,'Pooja','pooja@gmail.com','123456','student'),(5,'Divya','divya@gmail.com','1','student'),(6,'Bhavya','bhavya@gmail.com','2','student'),(7,'Sachin','sachin@gmail.com','3','student');
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

-- Dump completed on 2026-05-08 15:47:22
