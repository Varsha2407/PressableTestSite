-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: 149542837
-- ------------------------------------------------------
-- Server version	10.3.35-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-02-03 09:19:46','2021-02-03 09:19:46','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://pressable-test.mystagingwebsite.com','yes'),(2,'home','https://pressable-test.mystagingwebsite.com','yes'),(3,'blogname','My WordPress Site','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','varsha@pressable.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:37:\"bulk-delete-users-by-email/plugin.php\";i:3;s:19:\"jetpack/jetpack.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentytwenty','yes'),(41,'stylesheet','twentytwenty','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','53496','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1663656579','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'initial_db_version','49752','yes'),(99,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes'),(100,'fresh_site','1','yes'),(101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(107,'cron','a:16:{i:1660022293;a:2:{s:17:\"jetpack_sync_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}s:22:\"jetpack_sync_full_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1660022387;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660022730;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660027765;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660027779;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660027780;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660028024;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660029100;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"adcb9b75260590ff6058773ddcb9ddd6\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:4;}}}}i:1660036787;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660036793;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660050414;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660064936;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660105541;a:1:{s:24:\"jp_purge_transients_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660209587;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1663038628;a:1:{s:30:\"wpseo_start_cleanup_indexables\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}','yes'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'nonce_key','LyOl*-lH]3#5;W1l+MSC41GGl&-kod>>722LJ0JG][ <5#mH#jrf.cpw7s5}2}#i','no'),(115,'nonce_salt','4:kNC^s^IcT<O[#hgZDYA@jINnx2zSL{MOSs}S1qaN(@|!:HR%zB%gYH0SkT>NEk','no'),(116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'jetpack_activated','1','yes'),(120,'jetpack_activation_source','a:2:{i:0;s:6:\"wp-cli\";i:1;N;}','yes'),(121,'jetpack_sync_settings_disable','0','yes'),(122,'jetpack_options','a:11:{s:7:\"version\";s:19:\"11.4-a.1:1663038328\";s:11:\"old_version\";s:19:\"11.3-a.1:1659978020\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;s:2:\"id\";i:178633936;s:6:\"public\";i:1;s:14:\"last_heartbeat\";i:1659978022;s:30:\"recommendations_banner_enabled\";b:0;s:16:\"first_admin_view\";b:1;s:11:\"master_user\";i:1;s:27:\"recommendations_conditional\";a:1:{i:0;s:13:\"security-plan\";}}','yes'),(123,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612343988;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(124,'current_theme','Twenty Twenty','yes'),(125,'theme_switched','','yes'),(128,'jetpack_connection_active_plugins','a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}','yes'),(129,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(130,'theme_mods_twentytwenty','a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(131,'recovery_keys','a:0:{}','yes'),(132,'jetpack_tos_agreed','1','yes'),(133,'jetpack_secrets','a:0:{}','no'),(135,'jetpack_private_options','a:3:{s:10:\"blog_token\";s:65:\"f^IgpZg1^6@I1A7VcnenN9yX%K1b!Wor.*AfdM^%7PkJPNTAOxpxCUwDGD2oYTFH7\";s:14:\"purchase_token\";s:12:\"BbpVcIltZNwW\";s:11:\"user_tokens\";a:1:{i:1;s:67:\"18C7Roemo1U&)X4LJJMW@(r2@))O3riU.l1#JRX$*t9lNmYLFGxrU(zT(c1A$LvgF.1\";}}','yes'),(138,'jetpack_available_modules','a:1:{s:8:\"11.4-a.1\";a:46:{s:10:\"action-bar\";s:4:\"11.4\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:12:\"google-fonts\";s:6:\"10.8.0\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:9:\"post-list\";s:4:\"11.3\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:3:\"waf\";s:4:\"10.9\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}','yes'),(142,'jetpack_sync_settings_sync_via_cron','1','yes'),(143,'jetpack_sync_settings_max_queue_size','5000','yes'),(144,'jetpack_sync_settings_max_queue_lag','7200','yes'),(145,'jetpack_sync_settings_dequeue_max_bytes','500000','yes'),(146,'jetpack_sync_settings_upload_max_bytes','600000','yes'),(147,'jetpack_sync_settings_upload_max_rows','500','yes'),(148,'jetpack_sync_settings_sync_wait_time','10','yes'),(149,'jetpack_sync_settings_sync_wait_threshold','10','yes'),(150,'jetpack_sync_settings_enqueue_wait_time','1','yes'),(151,'jetpack_sync_settings_queue_max_writes_sec','100','yes'),(152,'jetpack_sync_settings_post_types_blacklist','a:0:{}','yes'),(154,'jetpack_sync_settings_taxonomies_blacklist','a:0:{}','yes'),(156,'jetpack_sync_settings_render_filtered_content','0','yes'),(157,'jetpack_sync_settings_post_meta_whitelist','a:0:{}','yes'),(159,'jetpack_sync_settings_comment_meta_whitelist','a:0:{}','yes'),(161,'jetpack_sync_settings_max_enqueue_full_sync','100','yes'),(162,'jetpack_sync_settings_max_queue_size_full_sync','1000','yes'),(163,'jetpack_sync_settings_cron_sync_time_limit','240','yes'),(164,'jetpack_sync_settings_known_importers','a:6:{s:16:\"Blogger_Importer\";s:7:\"blogger\";s:13:\"LJ_API_Import\";s:11:\"livejournal\";s:9:\"MT_Import\";s:2:\"mt\";s:10:\"RSS_Import\";s:3:\"rss\";s:20:\"WC_Tax_Rate_Importer\";s:12:\"woo-tax-rate\";s:9:\"WP_Import\";s:9:\"wordpress\";}','yes'),(165,'jetpack_sync_settings_term_relationships_full_sync_item_size','100','yes'),(166,'jetpack_sync_settings_sync_sender_enabled','1','yes'),(167,'jetpack_sync_settings_full_sync_sender_enabled','1','yes'),(168,'jetpack_sync_settings_full_sync_send_duration','9','yes'),(169,'jetpack_sync_settings_full_sync_limits','a:5:{s:5:\"users\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:5:\"terms\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}s:5:\"posts\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:1;}s:8:\"comments\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:18:\"term_relationships\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}}','yes'),(170,'jetpack_sync_settings_checksum_disable','0','yes'),(172,'jetpack_updates_sync_checksum','a:2:{s:14:\"update_plugins\";i:2670069480;s:13:\"update_themes\";i:2564288499;}','yes'),(188,'jetpack_constants_sync_checksum','a:21:{s:7:\"ABSPATH\";i:932433243;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:16:\"ATOMIC_CLIENT_ID\";i:3850596168;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:4261170317;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:16:\"EMPTY_TRASH_DAYS\";i:2473281379;s:9:\"FS_METHOD\";i:3577458903;s:12:\"IS_PRESSABLE\";i:4261170317;s:16:\"JETPACK__VERSION\";i:1128492540;s:11:\"PHP_VERSION\";i:3059003213;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:734881840;s:14:\"WP_CONTENT_DIR\";i:4025282661;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:3994858278;s:8:\"WP_DEBUG\";i:4261170317;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1839787262;s:15:\"WP_MEMORY_LIMIT\";i:1839787262;s:17:\"WP_POST_REVISIONS\";i:4261170317;}','yes'),(189,'jetpack_sync_https_history_main_network_site_url','a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}','yes'),(190,'jetpack_sync_https_history_site_url','a:5:{i:0;s:4:\"http\";i:1;s:4:\"http\";i:2;s:4:\"http\";i:3;s:5:\"https\";i:4;s:5:\"https\";}','yes'),(191,'jetpack_sync_https_history_home_url','a:5:{i:0;s:4:\"http\";i:1;s:4:\"http\";i:2;s:4:\"http\";i:3;s:5:\"https\";i:4;s:5:\"https\";}','yes'),(192,'jpsq_sync_checkout','0:0','no'),(193,'dismiss_pressable_jetpack_banner','1','yes'),(194,'jetpack_plugin_api_action_links','a:1:{s:19:\"akismet/akismet.php\";a:1:{s:8:\"Settings\";s:86:\"https://pressable-test.mystagingwebsite.com/wp-admin/admin.php?page=akismet-key-config\";}}','yes'),(197,'jetpack_next_sync_time_full-sync-enqueue','1652761529','yes'),(202,'jetpack_callables_sync_checksum','a:38:{s:11:\"get_plugins\";i:825347185;s:10:\"get_themes\";i:2192858124;s:24:\"get_plugins_action_links\";i:4114211418;s:28:\"has_file_system_write_access\";i:4261170317;s:8:\"home_url\";i:1518129649;s:16:\"hosting_provider\";i:3960241920;s:12:\"is_fse_theme\";i:734881840;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:21:\"is_version_controlled\";i:734881840;s:6:\"locale\";i:110763218;s:17:\"main_network_site\";i:1518129649;s:26:\"main_network_site_wpcom_id\";i:227552881;s:14:\"paused_plugins\";i:223132457;s:13:\"paused_themes\";i:223132457;s:18:\"post_type_features\";i:4100276634;s:10:\"post_types\";i:3922054304;s:27:\"rest_api_allowed_post_types\";i:2577480890;s:32:\"rest_api_allowed_public_metadata\";i:3610467939;s:5:\"roles\";i:925737810;s:10:\"shortcodes\";i:687580654;s:13:\"site_icon_url\";i:734881840;s:8:\"site_url\";i:1518129649;s:10:\"taxonomies\";i:276712064;s:13:\"theme_support\";i:1694635942;s:8:\"timezone\";i:3808505409;s:23:\"wp_get_environment_type\";i:1138987844;s:18:\"wp_max_upload_size\";i:3201742935;s:10:\"wp_version\";i:3092862723;s:16:\"single_user_site\";i:734881840;s:7:\"updates\";i:3283961989;s:14:\"active_modules\";i:692321146;s:24:\"available_jetpack_blocks\";i:2543856879;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:4261170317;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;}','no'),(212,'https_detection_errors','a:0:{}','yes'),(247,'jetpack_next_sync_time_sync','1660021696','yes'),(263,'wpcom_publish_posts_with_markdown','1','yes'),(266,'jetpack_testimonial','0','yes'),(276,'jetpack_active_plan','a:10:{s:10:\"product_id\";i:2002;s:12:\"product_slug\";s:12:\"jetpack_free\";s:12:\"product_name\";s:12:\"Jetpack Free\";s:18:\"product_name_short\";s:4:\"Free\";s:7:\"expired\";b:0;s:14:\"billing_period\";s:0:\"\";s:13:\"user_is_owner\";b:0;s:7:\"is_free\";b:1;s:11:\"license_key\";s:0:\"\";s:8:\"features\";a:2:{s:6:\"active\";a:10:{i:0;s:12:\"advanced-seo\";i:1;s:3:\"cdn\";i:2;s:17:\"jetpack-dashboard\";i:3;s:17:\"security-settings\";i:4;s:17:\"seo-preview-tools\";i:5;s:14:\"send-a-message\";i:6;s:15:\"social-previews\";i:7;s:18:\"upload-audio-files\";i:8;s:18:\"upload-video-files\";i:9;s:15:\"whatsapp-button\";}s:9:\"available\";a:37:{s:7:\"akismet\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:8:\"antispam\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:7:\"backups\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:13:\"backups-daily\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:8:\"calendly\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:20:\"cloudflare-analytics\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:14:\"cloudflare-cdn\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:10:\"core/audio\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:10:\"core/cover\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:10:\"core/video\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:9:\"donations\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:17:\"full-activity-log\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:16:\"google-analytics\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:9:\"opentable\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:16:\"priority_support\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:18:\"recurring-payments\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:11:\"republicize\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:4:\"scan\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:15:\"simple-payments\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:7:\"support\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:29:\"vaultpress-automated-restores\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:25:\"vaultpress-backup-archive\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:18:\"vaultpress-backups\";a:16:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:22:\"jetpack_security_daily\";i:7;s:30:\"jetpack_security_daily_monthly\";i:8;s:25:\"jetpack_security_realtime\";i:9;s:33:\"jetpack_security_realtime_monthly\";i:10;s:16:\"jetpack_complete\";i:11;s:24:\"jetpack_complete_monthly\";i:12;s:26:\"jetpack_security_t1_yearly\";i:13;s:27:\"jetpack_security_t1_monthly\";i:14;s:26:\"jetpack_security_t2_yearly\";i:15;s:27:\"jetpack_security_t2_monthly\";}s:24:\"vaultpress-storage-space\";a:4:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";}s:13:\"video-hosting\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:10:\"videopress\";a:8:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:16:\"jetpack_personal\";i:3;s:23:\"jetpack_premium_monthly\";i:4;s:24:\"jetpack_business_monthly\";i:5;s:24:\"jetpack_personal_monthly\";i:6;s:16:\"jetpack_complete\";i:7;s:24:\"jetpack_complete_monthly\";}s:7:\"wordads\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:15:\"wordads-jetpack\";a:14:{i:0;s:15:\"jetpack_premium\";i:1;s:16:\"jetpack_business\";i:2;s:23:\"jetpack_premium_monthly\";i:3;s:24:\"jetpack_business_monthly\";i:4;s:22:\"jetpack_security_daily\";i:5;s:30:\"jetpack_security_daily_monthly\";i:6;s:25:\"jetpack_security_realtime\";i:7;s:33:\"jetpack_security_realtime_monthly\";i:8;s:16:\"jetpack_complete\";i:9;s:24:\"jetpack_complete_monthly\";i:10;s:26:\"jetpack_security_t1_yearly\";i:11;s:27:\"jetpack_security_t1_monthly\";i:12;s:26:\"jetpack_security_t2_yearly\";i:13;s:27:\"jetpack_security_t2_monthly\";}s:6:\"search\";a:4:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";i:2;s:16:\"jetpack_complete\";i:3;s:24:\"jetpack_complete_monthly\";}s:18:\"google-my-business\";a:10:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";i:2;s:25:\"jetpack_security_realtime\";i:3;s:33:\"jetpack_security_realtime_monthly\";i:4;s:16:\"jetpack_complete\";i:5;s:24:\"jetpack_complete_monthly\";i:6;s:26:\"jetpack_security_t1_yearly\";i:7;s:27:\"jetpack_security_t1_monthly\";i:8;s:26:\"jetpack_security_t2_yearly\";i:9;s:27:\"jetpack_security_t2_monthly\";}s:9:\"polldaddy\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}s:14:\"premium-themes\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}s:17:\"real-time-backups\";a:10:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";i:2;s:25:\"jetpack_security_realtime\";i:3;s:33:\"jetpack_security_realtime_monthly\";i:4;s:16:\"jetpack_complete\";i:5;s:24:\"jetpack_complete_monthly\";i:6;s:26:\"jetpack_security_t1_yearly\";i:7;s:27:\"jetpack_security_t1_monthly\";i:8;s:26:\"jetpack_security_t2_yearly\";i:9;s:27:\"jetpack_security_t2_monthly\";}s:28:\"vaultpress-security-scanning\";a:2:{i:0;s:16:\"jetpack_business\";i:1;s:24:\"jetpack_business_monthly\";}s:18:\"cloud-critical-css\";a:2:{i:0;s:16:\"jetpack_complete\";i:1;s:24:\"jetpack_complete_monthly\";}s:14:\"instant-search\";a:2:{i:0;s:16:\"jetpack_complete\";i:1;s:24:\"jetpack_complete_monthly\";}s:22:\"videopress-1tb-storage\";a:2:{i:0;s:16:\"jetpack_complete\";i:1;s:24:\"jetpack_complete_monthly\";}}}}','yes'),(278,'jetpack_content_post_details_date','1','yes'),(279,'jetpack_content_post_details_categories','1','yes'),(280,'jetpack_content_post_details_tags','1','yes'),(281,'jetpack_content_post_details_author','1','yes'),(282,'jetpack_content_post_details_comment','1','yes'),(319,'jetpack_sync_health_status','a:2:{s:6:\"status\";s:7:\"in_sync\";s:9:\"timestamp\";d:1624041517.215279;}','yes'),(350,'yoast_migrations_free','a:1:{s:7:\"version\";s:6:\"19.6.1\";}','yes'),(351,'wpseo','a:88:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:6:\"19.6.1\";s:16:\"previous_version\";s:4:\"16.5\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1624949624;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:43:\"https://pressable-test.mystagingwebsite.com\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1652258756;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}','yes'),(352,'wpseo_titles','a:107:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes'),(353,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes'),(361,'wpseo_ryte','a:2:{s:6:\"status\";i:0;s:10:\"last_fetch\";i:1659518553;}','yes'),(380,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(397,'jetpack_licenses','a:1:{i:0;s:48:\"jetpack-security-daily_OPymkKbunE6opvhruUUIhhg92\";}','yes'),(398,'jetpack_package_versions','a:5:{s:6:\"backup\";s:5:\"1.8.0\";s:10:\"connection\";s:6:\"1.45.0\";s:4:\"sync\";s:6:\"1.38.3\";s:6:\"search\";s:6:\"0.22.0\";s:10:\"videopress\";s:5:\"0.3.0\";}','yes'),(443,'jp_sync_last_success_sync','1663038328.7942','no'),(508,'titanmail_options','a:1:{s:13:\"register_data\";a:7:{s:10:\"user_token\";s:184:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkb21haW5OYW1lIjoicHJlc3NhYmxlLXRlc3QuY29tIiwiY3VzdG9tZXJJZCI6IjE0MTM1MTkiLCJ1c2VySWQiOjE0NDg2OTYuMH0.yCiop4_H388fROTgMAJ1xgcPoh3ShwdiJ72h9hZ8cSM\";s:7:\"user_id\";i:1448696;s:10:\"partner_id\";i:40;s:19:\"partner_external_id\";s:32:\"4149c78ea0dfc3a1f069c3509f796487\";s:11:\"customer_id\";s:7:\"1413519\";s:12:\"partner_name\";s:14:\"pressable_prod\";s:6:\"domain\";s:18:\"pressable-test.com\";}}','no'),(511,'recently_activated','a:0:{}','yes'),(513,'jetpack_sync_settings_dedicated_sync_enabled','1','yes'),(558,'wp_force_deactivated_plugins','a:0:{}','yes'),(559,'db_upgraded','','yes'),(565,'jetpack_search_plan_info','a:8:{s:20:\"search_subscriptions\";a:0:{}s:23:\"supports_instant_search\";b:0;s:28:\"supports_only_classic_search\";b:0;s:15:\"supports_search\";b:0;s:27:\"default_upgrade_bill_period\";s:6:\"yearly\";s:9:\"tier_slug\";N;s:20:\"tier_minimum_records\";N;s:20:\"tier_maximum_records\";N;}','yes'),(566,'do_activate','0','yes'),(568,'rewrite_rules','','yes'),(572,'ai1wm_secret_key','Epz790sQTyCI','yes'),(573,'ai1wm_backups_labels','a:0:{}','yes'),(574,'ai1wm_sites_links','a:0:{}','yes'),(575,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:396:\"» <a class=\"ai1wm-no-underline\" href=\"https://pressable-test.mystagingwebsite.com/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>. (opens a new window)<br />» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>. (opens a new window)\";}','yes'),(577,'finished_updating_comment_type','1','yes'),(578,'swift_performance_plugin_organizer','a:0:{}','yes'),(579,'jetpack_active_modules','a:2:{i:0;s:5:\"notes\";i:1;s:7:\"protect\";}','yes'),(588,'ai1wm_updater','a:0:{}','yes'),(650,'stats_options','a:6:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";i:178633936;s:12:\"do_not_track\";b:1;s:7:\"version\";s:1:\"9\";}','yes'),(652,'sharing-options','a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}','yes'),(654,'post_by_email_address1','NULL','yes'),(657,'jetpack_unique_connection','a:3:{s:9:\"connected\";i:1;s:12:\"disconnected\";i:0;s:7:\"version\";s:5:\"3.6.1\";}','yes'),(660,'jetpack_sync_full_status','a:4:{s:7:\"started\";i:1652761528;s:8:\"finished\";i:1652761529;s:8:\"progress\";a:5:{s:7:\"options\";a:1:{s:8:\"finished\";b:1;}s:9:\"functions\";a:1:{s:8:\"finished\";b:1;}s:9:\"constants\";a:1:{s:8:\"finished\";b:1;}s:5:\"users\";a:4:{s:5:\"total\";s:1:\"1\";s:4:\"sent\";i:1;s:8:\"finished\";b:1;s:9:\"last_sent\";s:1:\"1\";}s:15:\"network_options\";a:1:{s:8:\"finished\";b:1;}}s:6:\"config\";a:5:{s:7:\"options\";b:1;s:9:\"functions\";b:1;s:9:\"constants\";b:1;s:5:\"users\";a:1:{i:0;i:1;}s:15:\"network_options\";b:1;}}','no'),(661,'jp_sync_last_success_immediate-send','1652761529.0684','no'),(665,'jetpack_protect_key','73b23f790abbc03c0374d44002b115eaa198df7f','no'),(670,'jetpack_active_modules_initialized','1','yes'),(671,'jp_sync_lock_full_sync','','no'),(675,'auto_update_plugins','a:1:{i:0;s:19:\"akismet/akismet.php\";}','no'),(678,'wordpress_api_key','582c5dc963c2','yes'),(688,'trusted_ip_header','O:8:\"stdClass\":3:{s:14:\"trusted_header\";s:11:\"REMOTE_ADDR\";s:8:\"segments\";i:1;s:7:\"reverse\";b:0;}','no'),(691,'monitor_receive_notifications','1','yes'),(850,'user_count','3','no'),(907,'jetpack_site_products','a:0:{}','yes'),(915,'jetpack_nonce_1660021690_qFEiwz0wZX','1660021691','no'),(916,'jetpack_nonce_1660021691_EbDlLXjIWm','1660021691','no'),(917,'jetpack_nonce_1660021691_IZRGJe10aN','1660021691','no'),(918,'jetpack_nonce_1660021691_C1R4kKGVb1','1660021691','no'),(919,'jetpack_nonce_1660021691_QTWGEvMK84','1660021691','no'),(920,'jetpack_nonce_1660021691_16aON2ELyQ','1660021692','no'),(921,'jetpack_nonce_1660021692_J4egUwGhEl','1660021692','no'),(922,'jetpack_nonce_1660021692_Bv64xjGW5S','1660021692','no'),(923,'jetpack_nonce_1660021692_AMhF9D2WbE','1660021692','no'),(924,'jetpack_nonce_1660021692_XE8pEGt2cg','1660021692','no'),(925,'jetpack_nonce_1660021693_SXPGo2s1b2','1660021693','no'),(926,'jetpack_nonce_1660021694_avI4pxKpIc','1660021694','no'),(927,'jetpack_nonce_1660021694_9397dptPc7','1660021694','no'),(930,'can_compress_scripts','1','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-03 09:19:46','2021-02-03 09:19:46','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-02-03 09:19:46','2021-02-03 09:19:46','',0,'https://pressable-test.mystagingwebsite.com/?p=1',0,'post','',1),(2,1,'2021-02-03 09:19:46','2021-02-03 09:19:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://pressable-test.mystagingwebsite.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-02-03 09:19:46','2021-02-03 09:19:46','',0,'https://pressable-test.mystagingwebsite.com/?page_id=2',0,'page','',0),(3,1,'2021-02-03 09:19:46','2021-02-03 09:19:46','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://pressable-test.mystagingwebsite.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-02-03 09:19:46','2021-02-03 09:19:46','',0,'https://pressable-test.mystagingwebsite.com/?page_id=3',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','pressable-test'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(31,3,'nickname','4v.varsha@gmail.com'),(32,3,'first_name',''),(33,3,'last_name',''),(34,3,'description',''),(35,3,'rich_editing','true'),(36,3,'syntax_highlighting','true'),(37,3,'comment_shortcuts','false'),(38,3,'admin_color','fresh'),(39,3,'use_ssl','0'),(40,3,'show_admin_bar_front','true'),(41,3,'locale',''),(42,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(43,3,'wp_user_level','10'),(44,3,'dismissed_wp_pointers',''),(45,4,'nickname','pressable'),(46,4,'first_name',''),(47,4,'last_name',''),(48,4,'description',''),(49,4,'rich_editing','true'),(50,4,'syntax_highlighting','true'),(51,4,'comment_shortcuts','false'),(52,4,'admin_color','fresh'),(53,4,'use_ssl','0'),(54,4,'show_admin_bar_front','true'),(55,4,'locale',''),(56,4,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(57,4,'wp_user_level','10'),(58,4,'dismissed_wp_pointers',''),(60,4,'wp_yoast_notifications','a:2:{i:0;a:2:{s:7:\"message\";s:313:\"<p>Because of a change in your permalink structure, some of your SEO data needs to be reprocessed.</p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"https://pressable-test.mystagingwebsite.com/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"4\";s:10:\"user_login\";s:9:\"pressable\";s:9:\"user_pass\";s:34:\"$P$ByDuztFeGe8T.cZiYPsfKgqvhlVhz.0\";s:13:\"user_nicename\";s:9:\"pressable\";s:10:\"user_email\";s:23:\"wordpress@pressable.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"0000-00-00 00:00:00\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"pressable\";}s:2:\"ID\";i:4;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:356:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"https://pressable-test.mystagingwebsite.com/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";r:7;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),(61,4,'community-events-location','a:1:{s:2:\"ip\";s:10:\"66.155.8.0\";}'),(62,4,'jetpack_tracks_anon_id','XocP1P3kJP5URta7mM3ofKr5'),(77,1,'session_tokens','a:1:{s:64:\"80bc7bddf556b394effef35e761ea325a807815ad28a645ea890e15dd77c23c9\";a:4:{s:10:\"expiration\";i:1652934290;s:2:\"ip\";s:11:\"66.155.8.13\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36\";s:5:\"login\";i:1652761490;}}'),(79,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"66.155.8.0\";}'),(80,1,'jetpack_tracks_wpcom_id','193163921'),(82,4,'session_tokens','a:1:{s:64:\"d430c2861161612de1725540dbc4f82ced942933cd281acd45f5b1bde9673249\";a:4:{s:10:\"expiration\";i:1660194535;s:2:\"ip\";s:11:\"66.155.8.13\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660021735;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'pressable-test','$P$BN1nJvU8SAGSF4Ixc9GEL5IRpRAO/s0','pressable-test','varsha@pressable.com','https://pressable-test.mystagingwebsite.com','2021-02-03 09:19:46','',0,'pressable-test'),(3,'4v.varsha@gmail.com','$P$BlLPKiEthcdKJA24OUro5p2e1RcRAz.','4v-varshagmail-com','4v.varsha@gmail.com','','0000-00-00 00:00:00','1646798515:$P$BJffeu/dv3mDW2tyhfmPjIjSZx4tvV1',0,'4v.varsha@gmail.com'),(4,'pressable','$P$BRYxMm3BMiohYT398X925xDlkLJTM7/','pressable','wordpress@pressable.com','','0000-00-00 00:00:00','',0,'pressable');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'https://pressable-test.mystagingwebsite.com/','44:4b8603c208351f71e8e8c179cfed208a',NULL,'home-page',NULL,NULL,NULL,'%%sitename%% %%page%% %%sep%% %%sitedesc%%','Just another WordPress site','Home',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'%%sitename%%','','','0',NULL,NULL,NULL,NULL,NULL,'2021-06-29 06:53:50','2021-06-29 06:53:50',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(2,'https://pressable-test.mystagingwebsite.com/author/pressable-test/','66:7ad00f7f8a53124f692f3228a44d134a',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://secure.gravatar.com/avatar/7c887414b2683e4fde4f253dcea59f2c?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://secure.gravatar.com/avatar/7c887414b2683e4fde4f253dcea59f2c?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(3,'https://pressable-test.mystagingwebsite.com/?page_id=3','54:5f220701a0977cbb4eb81120108597fe',3,'post','page',1,0,NULL,NULL,'Privacy Policy','draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(4,'https://pressable-test.mystagingwebsite.com/sample-page/','56:8e67794b2b08b885a14b743d1d8d0c6b',2,'post','page',1,0,NULL,NULL,'Sample Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(5,'https://pressable-test.mystagingwebsite.com/2021/02/03/hello-world/','67:405433fde03eeacd977916ee753a7780',1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(6,'https://pressable-test.mystagingwebsite.com/category/uncategorized/','67:dbedcf44082a5bd6ce520cf252e28f29',1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(7,NULL,NULL,NULL,'system-page','404',NULL,NULL,'Page not found %%sep%% %%sitename%%',NULL,'Error 404: Page not found',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(8,NULL,NULL,NULL,'system-page','search-result',NULL,NULL,'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(9,NULL,NULL,NULL,'date-archive',NULL,NULL,NULL,'%%date%% %%page%% %%sep%% %%sitename%%','',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-24 06:49:41','2022-03-24 06:49:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL),(10,'https://pressable-test.mystagingwebsite.com/author/pressable/','61:bf47fa9590e41cdebcfe691260c7428e',4,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://secure.gravatar.com/avatar/40b6251cad994ec54f7450413dc9d64d?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://secure.gravatar.com/avatar/40b6251cad994ec54f7450413dc9d64d?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2022-08-09 05:11:40','2022-08-09 05:11:41',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1),(3,0,0,1),(4,0,0,1),(5,0,0,1),(6,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840'),(2,'20171228151841'),(3,'20190529075038'),(4,'20191011111109'),(5,'20200408101900'),(6,'20200420073606'),(7,'20200428123747'),(8,'20200428194858'),(9,'20200429105310'),(10,'20200430075614'),(11,'20200430150130'),(12,'20200507054848'),(13,'20200513133401'),(14,'20200609154515'),(15,'20200616130143'),(16,'20200617122511'),(17,'20200702141921'),(18,'20200728095334'),(19,'20201202144329'),(20,'20201216124002'),(21,'20201216141134'),(22,'20210817092415'),(23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'https://pressable-test.mystagingwebsite.com/wp-admin/',2,NULL,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13  3:14:17
