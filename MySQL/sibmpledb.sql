-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: simpledb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `edit_issue`
--

DROP TABLE IF EXISTS `edit_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edit_issue` (
  `id_fk` int NOT NULL,
  `username_fk` varchar(45) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`id_fk`,`username_fk`),
  KEY `foreign_key_uname_idx` (`username_fk`),
  CONSTRAINT `foreign_key_id` FOREIGN KEY (`id_fk`) REFERENCES `issue` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign_key_uname` FOREIGN KEY (`username_fk`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_issue`
--

LOCK TABLES `edit_issue` WRITE;
/*!40000 ALTER TABLE `edit_issue` DISABLE KEYS */;
INSERT INTO `edit_issue` VALUES (1,'user1','2022-09-19 16:33:42'),(2,'user1','2022-09-19 16:33:28'),(3,'user1','1970-01-01 00:00:00'),(4,'user1','2022-09-19 16:34:56'),(5,'user4','1970-01-01 00:00:00'),(6,'user','2022-09-19 23:32:05'),(7,'user4','1970-01-01 00:00:00'),(8,'user4','1970-01-01 00:00:00'),(9,'user4','1970-01-01 00:00:00'),(10,'user4','1970-01-01 00:00:00'),(11,'user3','1970-01-01 00:00:00'),(12,'user','2022-09-20 01:06:59'),(13,'user','2022-09-20 00:41:24');
/*!40000 ALTER TABLE `edit_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `id` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `status` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `assigned_to` varchar(45) NOT NULL,
  `creation_date` datetime NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_maker_fk_idx` (`username`),
  CONSTRAINT `user_maker_fk` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,'No email','Needs feedback','Bug','I dont know is here the right place to report this issue or not. Execuse me if it is wrong place. This id about 2 or 3 monthes that no notification sent to me from redmine.org.','user6','2022-09-19 16:29:27','user'),(2,'Big issue','Confirmed','Feature','this is one of the most common bugs ','user5','2022-09-19 16:31:31','user1'),(3,'Plugin Contact','Confirmed','Defect','It called \"CRM\" but actually is a \"Contacts\" plugin. They also offer a full paid version that yes is a CRM, but this is only \"Contacts\". And you must send your email to them for getting the download link. I already rated it at your plugins wiki page.','user1','2022-09-19 16:31:51','user1'),(4,'Image base64','Reopen','Feature','Into Database are saved with html base64 code   but this is not displayed into HTML.   Why is source text not read?','user 3','2022-09-19 16:33:52','user1'),(5,'Issue index filtering','Resolved','Bug','Reverting this change https://github.com/redmine/redmine/commit/00c1e3528f09a1b83ef7bdf0f3d231de4dff9450 or even only reverting the issue_custom_field.rb change (removing issue visibility condition) makes the performance like 4.2.6. See the attached logs for details. Note that the custom field 105 in this example is a boolean issue custom field, but this issue does not seem to be related to the type of the custom field.','user5','2022-09-19 16:35:40','user4'),(6,'No monospace (fixed length)','Reopen','Feature','Monospace fonts used to work fine prior to upgrading to v.4.2.3 (I\'m not sure which last version it worked fine).  However now, monospace fonts are gone in both code blocks and inline code deliniated with ``.  Example, the following entry in the markdown configured wiki: text.png','user3','2022-09-19 16:36:16','user4'),(7,'uninitialized constant','In progress','Bug','There appears to exist a loading issue, probably connected to the Zeitwerk loader, which has now been reported twice in the forums: 1. Error with redmine 5.0.2 on FreeBSD 13.1 amd64 :: Redmine... 2. Help: uninitialized constant Redmine::WikiFormatting::Com...  The exception raised in both the reports is \"uninitialized constant Redmine::WikiFormatting::CommonMark::HTML (NameError)\". It gets triggered by source:/tags/5.0.2/lib/redmine/wiki_formatting/common_mark/external_links_filter.rb#L27.  I don\'t know if this can be reproduced and if so how, but I thought that given that it is the same exception in both the reports, it might be something that has to be investigated and fixed if necessary.','user5','2022-09-19 16:36:54','user4'),(8,'Installation plugins get problem','Resolved','Defect','It happens in several (all?) plugins  Here a possible solution','user7','2022-09-19 16:37:38','user4'),(9,'Missing datepicker','Confirmed','Bug','I have resolved the issue by copying existing GB file to /public/javascripts/i18n/datepicker-en-GB.js to /public/javascripts/i18n/datepicker-en-US.js  Since I cannot find another english file...  Perhaps some native USA English speaker should review file and propose changes if any, then submit here for bugfix...','user6','2022-09-19 16:38:27','user4'),(10,'redmine:email:receive_imap truncate body email','Needs feedback','Feature','Hi,  In Redmine 4.2.3 every email received is stripped if message body contain \"<-\" chars. All body text is stripped starting from \"<-\"  In Incoming emails settings all fields are empty.  We try to change \"Preferred part of multipart (HTML) emails\" from text to HTML (experimental), but nothing changed.  Thanks in advance','user5','2022-09-19 16:39:06','user4'),(11,'Issue copying ignores workflow rules','In progress','Bug','Issue.copy ignores rules defined by workflow for status New (new issue form).  A simple example.  Let\'s say we have an issue:  Project: eCookBook Tracker: Bug Status: Closed Category: Print  Create a workflow rule where for tracker Bug and role Manager field Category is read-only on status New.  User with given role presses the Copy button. New issue form is shown, as expected by workflow there is no Category field because it is not editable by user.  Press create and see that field Category was succesfully copied even though user can\'t edit it.  Also steps to reproduce on a test database with loaded fixtures:  1. Go to Administration - Workflow - Fields permissions 2. Select role Manager, tracker Bug press edit 3. Make Float field read-only for status New 4. Log as jsmith and copy issue#1 5. There is no Float field on form 6. Save the issue and see that Float field was copied','user6','2022-09-19 16:40:52','user3'),(12,'Clicking the \"New repository\" button causes a 404 error','Reopen','Bug','When you attempt to create a new repository setting by clicking the \"New repository\" button in the Repositories tab of the project settings, you may encounter a 404 error.  The error occurs when no SCM is enabled in Administration > Settings > Repositories > Enabled SCM, at RepositoriesController::build_new_repository_from_params.','user3','2022-09-19 16:42:06','user3'),(13,'Move to modern authentication(OAuth 2.0)','Resolved','Feature','Microsoft is going to disable IMAP authentication to read emails from Office365. I need to use modern authentication to read/receive emails.','user7','2022-09-20 00:39:35','user');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('user','123','example@gmail.com'),('user1','123','example1@gmail.com'),('user2','123','example2@gmail.com'),('user3','123','example3@gmail.com'),('user4','123','example4@gmail.com'),('user5','123','example5@gmail.com'),('user6','123','example6@gmail.com'),('user7','123','example7@gmail.com');
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

-- Dump completed on 2022-09-20 16:32:14
