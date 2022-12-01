-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 172.24.86.163    Database: seoland
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `coupons`
--
DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `days` int DEFAULT NULL,
  `redeems` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronjobs`
--

DROP TABLE IF EXISTS `cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronjobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronjobs`
--

LOCK TABLES `cronjobs` WRITE;
/*!40000 ALTER TABLE `cronjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2022_01_04_183700_create_coupons_table',1),(2,'2022_01_04_183700_create_cronjobs_table',1),(3,'2022_01_04_183700_create_pages_table',1),(4,'2022_01_04_183700_create_password_resets_table',1),(5,'2022_01_04_183700_create_payments_table',1),(6,'2022_01_04_183700_create_pending_user_emails_table',1),(7,'2022_01_04_183700_create_plans_table',1),(8,'2022_01_04_183700_create_reports_table',1),(9,'2022_01_04_183700_create_settings_table',1),(10,'2022_01_04_183700_create_tax_rates_table',1),(11,'2022_01_04_183700_create_users_table',1),(12,'2022_01_14_180925_v1_1_0',1),(13,'2022_01_27_200546_v1_2_0',1),(14,'2022_02_08_095620_v1_3_0',1),(15,'2022_04_01_174925_v1_4_0',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` tinyint NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `plan_id` int unsigned NOT NULL,
  `payment_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_id` int unsigned DEFAULT NULL,
  `reference_id` int unsigned DEFAULT NULL,
  `processor` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` text COLLATE utf8mb4_unicode_ci,
  `coupon` text COLLATE utf8mb4_unicode_ci,
  `tax_rates` text COLLATE utf8mb4_unicode_ci,
  `seller` text COLLATE utf8mb4_unicode_ci,
  `customer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `plan_id` (`plan_id`),
  KEY `payment_id` (`payment_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `processor` (`processor`),
  KEY `interval` (`interval`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_user_emails`
--

DROP TABLE IF EXISTS `pending_user_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_user_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pending_user_emails_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `pending_user_emails_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_user_emails`
--

LOCK TABLES `pending_user_emails` WRITE;
/*!40000 ALTER TABLE `pending_user_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_user_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_days` int DEFAULT NULL,
  `currency` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupons` text COLLATE utf8mb4_unicode_ci,
  `tax_rates` text COLLATE utf8mb4_unicode_ci,
  `amount_month` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `amount_year` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `visibility` tinyint DEFAULT NULL,
  `position` int unsigned DEFAULT '0',
  `features` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Default','The plan\'s awesome description.',NULL,'',NULL,NULL,'0','0',1,0,'{\"reports\":50}',NULL,NULL,NULL);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` tinyint DEFAULT '0',
  `password` text COLLATE utf8mb4_unicode_ci,
  `results` mediumtext COLLATE utf8mb4_unicode_ci,
  `result` tinyint DEFAULT NULL,
  `generated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `result` (`result`),
  KEY `generated_at` (`generated_at`),
  KEY `project` (`project`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('ad_dashboard_bottom',''),('ad_dashboard_top',''),('ad_projects_bottom',''),('ad_projects_top',''),('ad_report_bottom',''),('ad_report_top',''),('ad_reports_bottom',''),('ad_reports_top',''),('ad_tool_bottom',''),('ad_tool_top',''),('ad_tools_bottom',''),('ad_tools_top',''),('announcement_guest',NULL),('announcement_guest_id','PORn7QrVMarbZGmr'),('announcement_guest_type','primary'),('announcement_user',NULL),('announcement_user_id','Wu5yiu5Vj1cjmJvy'),('announcement_user_type','danger'),('bad_words',NULL),('bank','0'),('bank_account_number',NULL),('bank_account_owner',NULL),('bank_bic_swift',NULL),('bank_iban',NULL),('bank_name',NULL),('bank_routing_number',NULL),('billing_address',''),('billing_city',''),('billing_country',''),('billing_invoice_prefix',''),('billing_phone',''),('billing_postal_code',''),('billing_state',''),('billing_vat_number',''),('billing_vendor',''),('captcha_contact','0'),('captcha_indexed_pages_checker',NULL),('captcha_keyword_research',NULL),('captcha_registration','0'),('captcha_secret_key',NULL),('captcha_serp_checker',NULL),('captcha_site_key',NULL),('coinbase','0'),('coinbase_key',NULL),('coinbase_wh_secret',NULL),('contact_email',NULL),('cronjob_key','rdNNzuyLjWzXP4SwpeLEJ6ELcOWjzFGP3PawMg4pFyX47GkyqGA3RCl5XD8y'),('custom_css','@import url(\"https://rsms.me/inter/inter.css\");'),('custom_js',NULL),('demo_url',''),('email_address',NULL),('email_driver','log'),('email_encryption','log'),('email_host',NULL),('email_password',NULL),('email_port',NULL),('email_username',NULL),('favicon','favicon.png'),('gcs',NULL),('gcs_country','US'),('gcs_id',NULL),('gcs_key',NULL),('gsb','0'),('gsb_key',NULL),('index',NULL),('ke','0'),('ke_key',''),('ke_keywords','10'),('legal_cookie_url',NULL),('legal_privacy_url',NULL),('legal_terms_url',NULL),('license_key','seoland'),('license_type','Extended'),('locale','en'),('logo','logo.svg'),('paginate','10'),('paypal','0'),('paypal_client_id',NULL),('paypal_mode','sandbox'),('paypal_secret',NULL),('paypal_webhook_id',NULL),('registration','1'),('registration_verification','0'),('report_limit_deprecated_html_tags','acronym\napplet\nbasefont\nbig\ncenter\ndir\nfont\nframe\nframeset\nisindex\nnoframes\ns\nstrike\ntt\nu'),('report_limit_http_requests','50'),('report_limit_image_formats','AVIF\nWebP'),('report_limit_load_time','2'),('report_limit_max_dom_nodes','1500'),('report_limit_max_links','150'),('report_limit_max_title','60'),('report_limit_min_text_ratio','10'),('report_limit_min_title','1'),('report_limit_min_words','500'),('report_limit_page_size','330000'),('report_score_high','10'),('report_score_low','0'),('report_score_medium','5'),('request_proxy',NULL),('request_timeout','5'),('request_user_agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36'),('sitemap_links','-1'),('social_facebook',NULL),('social_instagram',NULL),('social_twitter',NULL),('social_youtube',NULL),('stripe','0'),('stripe_key',NULL),('stripe_secret',NULL),('stripe_wh_secret',NULL),('tagline','Insightful and concise SEO reports'),('theme','0'),('ti','0'),('ti_key',NULL),('timezone','UTC'),('title','phpRank');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_rates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `regions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  `plan_id` int unsigned NOT NULL DEFAULT '1',
  `plan_amount` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_currency` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_interval` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_payment_processor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_subscription_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_subscription_status` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_created_at` timestamp NULL DEFAULT NULL,
  `plan_recurring_at` timestamp NULL DEFAULT NULL,
  `plan_trial_ends_at` timestamp NULL DEFAULT NULL,
  `plan_ends_at` timestamp NULL DEFAULT NULL,
  `billing_information` text COLLATE utf8mb4_unicode_ci,
  `brand` text COLLATE utf8mb4_unicode_ci,
  `default_privacy` smallint DEFAULT '1',
  `default_export_detailed` smallint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`),
  KEY `plan_id` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@seoland.com','2022-11-29 09:16:14','$2y$10$7ebh55ReM7P8CMt4X.MvO.VPTs2YAOxQ6U6M9g6vUBcWcdyRQVHLq',NULL,NULL,'Africa/Abidjan',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,'2022-11-29 09:16:14',NULL);
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

-- Dump completed on 2022-11-29  9:49:42
