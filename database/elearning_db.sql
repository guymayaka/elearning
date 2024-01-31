-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 31 jan. 2024 à 15:30
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `elearning_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `bannieres`
--

DROP TABLE IF EXISTS `bannieres`;
CREATE TABLE IF NOT EXISTS `bannieres` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bannieres_categories`
--

DROP TABLE IF EXISTS `bannieres_categories`;
CREATE TABLE IF NOT EXISTS `bannieres_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-08-22 11:25:48', '2023-08-22 11:25:48');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `noms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `noms`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jessica Kalombo', 'admin@gmail.com', '+243812100614', 'test', '2023-08-23 16:00:41', '2023-08-23 16:00:41'),
(2, 'Catherina', 'catherinael@pritchardortho.com', '88229673984', 'Воnjоurǃ\r\nJe m\'excuѕе pоur le mеsѕagе troр рrécіs.\r\nΜа сopіne еt mоi nouѕ aimоns. Et nоus sommes tоuѕ formidаbleѕ.\r\nМаіs... nous avons bеѕoіn d\'un hоmme.\r\nΝous аvonѕ 22 anѕ, de Rоumaniе, nоuѕ cоnnaiѕsons аusѕі l\'аnglaiѕ.\r\nОn nе s\'ennuіe ϳamаіѕ! Εt pаѕ sеulеmеnt en соnverѕаtion...\r\nJе m\'aрреlle Саtherіna, mоn profil est ісi : http://epehsmoksab.tk/rdx-41305/', '2023-08-24 10:09:49', '2023-08-24 10:09:49'),
(3, 'Maria', 'mariael@moderne-technik.com', '86574828325', 'Воnjоur!\r\nJe m\'еxcuѕе роur lе mеѕsаge trop précіs.\r\nМа coріne еt moі nоuѕ аіmоns. Еt nouѕ ѕоmmes tous formidables.\r\nMаis... nоuѕ avоns bеѕоіn d\'un hоmmе.\r\nΝouѕ аvons 26 anѕ, de Rоumanіe, nоus cоnnaіssоnѕ аuѕsi l\'anglais.\r\nОn ne ѕ\'еnnuiе ϳamaiѕǃ Εt раѕ sеulеmеnt en conversatіоn...\r\nJe m\'аpреllе Mariа, mоn рrofіl еst ісі : http://epehsmoksab.tk/rdx-36120/', '2023-08-24 19:52:00', '2023-08-24 19:52:00'),
(4, 'Alena', 'alenael@mirantteflorida.com', '83856496588', 'Βonϳоur!\r\nJe m\'exсuse pоur lе mеѕѕagе trоp рréсis.\r\nМa copinе et mоі nоus аіmonѕ. Εt nous ѕоmmeѕ tоus formіdablеs.\r\nΜаis... nous аvons bеsоіn d\'un hommе.\r\nNous аvons 24 ans, de Roumanie, nоuѕ соnnaissоns аuѕѕi l\'anglаiѕ.\r\nΟn nе s\'ennuie jamaіѕ! Εt pаs ѕеulеment еn соnversаtіon...\r\nJe m\'appеllе Alena, mon profil est ici : http://speakcomspocimis.tk/rdx-51155/', '2023-08-25 09:49:39', '2023-08-25 09:49:39'),
(5, 'Harvey Miller', 'harveymiller.web3@gmail.com', '8456404550', 'Hello,\r\n\r\nWe noticed SEO errors on your new website that may impact its visibility on search engines, leading to low visitor traffic. Let\'s schedule a call at your convenience to discuss and easily resolve these issues. If your new business is a priority, please provide your phone number and preferred time to call.\r\n\r\nThank you,\r\nHarvey Miller', '2023-08-25 14:03:14', '2023-08-25 14:03:14'),
(6, 'Anna Wilson', 'annawilson.web@gmail.com', '1201201200', 'Hi,\r\n\r\nI came across your Website, when searching on Google and noticed that you do not show in the organic listings.\r\n\r\nOur main focus will be to help generate more sales & online traffic.\r\n\r\nWe can place your website on Google\'s 1st page. We will improve your website’s position on Google and get more traffic.\r\n\r\nIf interested, kindly provide me your name, phone number, and email.\r\n\r\nYour sincerely,\r\n\r\nAnna Wilson', '2023-08-27 06:56:45', '2023-08-27 06:56:45'),
(7, 'Elana', 'elana.stable@hotmail.com', '61-75-86-15', 'I was reviewing your website and I noticed that it is not listed on the major search engines.\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you.\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below:\r\nhttps://goto13.com/l/sudactu.net/8/', '2023-09-02 03:26:39', '2023-09-02 03:26:39'),
(8, 'Domain', 'dulcie.berk59@gmail.com', '770-465-0023', 'Congrats on your new domain! \r\n\r\nThe next step you need to take for sudactu.net is to make sure it is listed in the search engines. \r\n\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you. \r\n\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below: \r\n\r\nhttps://goto13.com/l/sudactu.net/7/', '2023-09-02 17:29:50', '2023-09-02 17:29:50'),
(9, 'Megan', 'meganatkinson149@gmail.com', '0681 669 65 78', 'Hi there,\n\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \n\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\n- Real, human followers: People follow you because they are interested in your business or niche.\n- Safe: All actions are made manually. We do not use any bots.\n\nThe price is just $60 (USD) per month, and we can start immediately.\n\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\n\nKind Regards,\nMegan\n\nTo unsubscribe: https://removeme.click/unsubscribe.php?d=sudactu.net', '2023-09-04 02:59:55', '2023-09-04 02:59:55'),
(10, 'Michael', 'lakesha.chandler@googlemail.com', '325-766-8872', 'Hey, \r\n\r\nI think your website\'s social pages are not available, there seem to be deficiencies. I can recommend a great vendor for this.\r\n\r\nBy the way; I caught a great opportunity thanks to you.\r\n\r\nWhen I was trying to check your social media, I caught the world\'s biggest campaign on Twitter and made over 4 BTC profit.\r\n\r\nSo I want to thank you, thank you very much! If you need backlinks etc. for your website, I can buy them for you :)\r\n\r\nIf you have bitcoins, you can also take advantage of the campaign here; you can automatically make high profits in 2 minutes ', '2023-09-04 07:38:56', '2023-09-04 07:38:56'),
(11, 'Georgina', 'georginahaynes620@gmail.com', '310-704-7592', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site sudactu.net.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nOur prices start from as little as $195 and include a professional script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nGeorgina\r\n\r\nIf you are not interested, unsubscribe here: https://explainervideos4u.net/unsubscribe.php?d=sudactu.net', '2023-09-05 05:23:38', '2023-09-05 05:23:38'),
(12, 'Domain', 'noelia.jonas87@gmail.com', '(07) 4032 5065', 'Congrats on your new domain! \r\n\r\nThe next step you need to take for sudactu.net is to make sure it is listed in the search engines. \r\n\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you. \r\n\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below: \r\n\r\nhttps://goto13.com/l/sudactu.net/9/', '2023-09-05 08:55:40', '2023-09-05 08:55:40'),
(13, 'DirectoryBump.com', 'makemybusinessgreatagain@gmail.com', '281-843-9872', 'Hello, your website sudactu.net is only listed in 8 out of a possible 3142 directories.\r\n\r\nWe offer a service where we list you in all the directories, thereby boosting your online presence.\r\n\r\n<a href=\"https://directorybump.com\">Visit us here</a>', '2023-09-06 05:34:48', '2023-09-06 05:34:48'),
(14, 'Flora', 'elizondo.flora@yahoo.com', '09225 19 35 92', 'I was reviewing your website and I noticed that it is not listed on the major search engines.\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you.\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below:\r\nhttps://goto13.com/l/sudactu.net/10/', '2023-09-06 22:33:04', '2023-09-06 22:33:04'),
(15, 'Domain', 'griffie.courtney@outlook.com', '08034 13 22 79', 'Congrats on your new domain! \r\n\r\nThe next step you need to take for sudactu.net is to make sure it is listed in the search engines. \r\n\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you. \r\n\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below: \r\n\r\nhttps://goto13.com/l/sudactu.net/9/', '2023-09-07 21:13:26', '2023-09-07 21:13:26'),
(16, 'Bonny', 'bonny.torres@outlook.com', '28-58-35-20', 'I was reviewing your website and I noticed that it is not listed on the major search engines.\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you.\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below:\r\nhttps://goto13.com/l/sudactu.net/10/', '2023-09-09 00:10:17', '2023-09-09 00:10:17'),
(17, 'Domain', 'reynaldo.harley@gmail.com', '06-81549711', 'Congrats on your new domain! \r\n\r\nThe next step you need to take for sudactu.net is to make sure it is listed in the search engines. \r\n\r\nGetting sudactu.net included in the search engines is important to make sure your customers can find you. \r\n\r\nTo list sudactu.net in Google, Bing, and Yahoo follow the link below: \r\n\r\nhttps://goto13.com/l/sudactu.net/9/', '2023-09-09 16:30:23', '2023-09-09 16:30:23'),
(18, 'Megan', 'meganatkinson149@gmail.com', '0383 5430886', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nMegan\r\n\r\nTo unsubscribe: https://insta-grow.net/unsubscribe.php?d=sudactu.net', '2023-09-21 21:16:46', '2023-09-21 21:16:46'),
(19, 'Danielle', 'simpsondanielle800@gmail.com', '0336 5379502', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site sudactu.net.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nOur prices start from as little as $195 and include a professional script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nDanielle', '2023-09-24 17:45:59', '2023-09-24 17:45:59'),
(20, 'Anna', 'annahic@portodiao.com', '84344385451', 'Sаlutǃ\r\nJ\'аi rеmarqué quе bеaucоup de gars préfèrеnt leѕ filleѕ ordіnaireѕ.\r\nJ\'аррlaudіs les hоmmеs là-bаs qui ont еu lе cоurаge dе prоfitеr dе l\'amour dе nombrеuseѕ femmeѕ еt de chоisіr celle ԛu\'il ѕavaіt être sоn meіllеur аmi pendаnt lа chоѕe саhоtеuse еt fоllе ԛu\'eѕt la vіe.\r\nJе vоulaіs être cеttе amiе, pаs sеulemеnt une femmе au fоуеr stаblе, fіablе еt ennuyeusе.\r\nJ\'аi 24 anѕ, Anna, de lа Réрubliԛue tchèԛue, ϳe connаіs auѕѕі la languе anglaіѕе.\r\nQuоi ԛu\'іl еn sоіt, vous pouvez trоuver mon prоfil іci : http://cacomplos.tk/idl-69141/', '2023-09-26 11:07:09', '2023-09-26 11:07:09'),
(21, 'WilliammupGH', 'fjjfsjfjejrjejvfr@outlook.com', '82873531929', '[url=https://asapmarkets.org]asapmarkets.org [/url] \r\nMarket Asap Darknet \r\nAsap darkweb url \r\nThe darknet market is a hidden part of the internet where illegal activities such as drug trade, weapons sales, and hacking services take place. In this article, we will explore the darknet market and answer some common questions surrounding this secretive online world.', '2023-09-29 12:04:54', '2023-09-29 12:04:54'),
(22, 'Isabella', 'isabellahic@ripdaphny.com', '84234423658', 'Ѕalut!\r\nJ\'аi remarԛué ԛue bеаucouр de gars préfèrent les fіlleѕ оrdinаires.\r\nJ\'aррlаudіs lеs hommeѕ là-bаs quі ont eu le cоurage dе prоfіter de l\'аmour de nоmbrеusеs fеmmеs et dе chоisіr сеllе qu\'іl ѕavait êtrе ѕon mеіlleur ami реndant la сhоse cahоteuse et folle qu\'еst la vіe.\r\nJе voulais être сеtte amіе, pаs seulemеnt unе fеmmе аu fоуer stаblе, fіable et еnnuуeuse.\r\nJ\'аі 23 аns, Ιѕаbеlla, de lа Républiquе tchèque, je connaiѕ aussi lа languе аnglaiѕе.\r\nQuoi qu\'іl en soit, vouѕ роuvеz trоuver mоn prоfil iсі : http://whaemanmaseti.tk/idl-96996/', '2023-10-01 13:15:44', '2023-10-01 13:15:44'),
(23, 'Harvey Miller', 'harvey.websolution1@gmail.com', '+1', 'Hello,\r\n\r\nYour website is facing critical SEO (Search Engine Optimization) issues, causing it to be invisible on major search engines like Google, Bing, Safari etc. As it\'s simple fix, we can resolve it for you. If this business is a priority for you, please share your \"phone number\" and a suitable time for a call, so that we can discuss more about the same in depth and get it fixed on a high priority basis.\r\n\r\nBest regards,\r\nHarvey Miller', '2023-10-05 21:08:00', '2023-10-05 21:08:00'),
(24, 'Demi', 'stackhouse.demi@gmail.com', '02.51.29.94.98', 'Hey,\r\n\r\nWe are testing out a new system where we provide B2B Data for free.\r\n\r\nIt works in every country and for every industry.\r\n\r\nWe would love it if you can give us a try on our google form.\r\n\r\nhttps://forms.gle/y5xQeuEXv7kdFz8H9', '2023-10-08 14:49:24', '2023-10-08 14:49:24'),
(25, 'Harvey Miller', 'harveymiller.web3@gmail.com', '8456404550', 'Hello,\r\n\r\nYour website is facing critical SEO (Search Engine Optimization) issues, causing it to be invisible on major search engines like Google, Bing, Safari etc. As it\'s simple fix, we can resolve it for you. If this business is a priority for you, please share your \"phone number\" and a suitable time for a call, so that we can discuss more about the same in depth and get it fixed on a high priority basis.\r\n\r\nBest regards,\r\nHarvey Miller', '2023-10-10 20:00:08', '2023-10-10 20:00:08'),
(26, 'Mikhail', 'yourmail@gmail.com', '85397223527', 'Здравствуйте. Готов помочь увеличить посещаемость и доходность вашего сайта, а также решить все имеющиеся на сайте проблемы. Причем рост посещаемости будет идти за счет притока целевых посетителей из поисковых систем, что для вас максимально выгодно и перспективно. \r\n \r\nНемного информации о себе. Я специалист в области создания, доработки и продвижения сайтов. Также имею знания и опыт в ряде смежных областей. Опыт работы составляет больше 19 лет. Работу всегда выполняю качественно. \r\n \r\nОсновные направления моей деятельности: \r\n \r\n1. Внутренняя оптимизация. Все необходимые работы по сайту с целью достижения наилучших позиций в поисковых системах, улучшение конверсионных качеств и юзабилити, решение всех встреченных ошибок, при необходимости внедрение нового или улучшение старого функционала. \r\n \r\n2. Продвижение в поисковых системах. Работа с улучшением позиций по значимым для вас поисковым запросам, что способно дать большой приток целевой аудитории на сайт. \r\n \r\n3. Создание сайтов различных типов. Могу создать лендинг, интернет-магазин, сайт компании, информационный сайт, блог и т. д. \r\n \r\n4. Работа с отзывами в интернете. Создание и продвижение хороших отзывов, а также удаление плохих. \r\n \r\n5. Настройка рекламных кампаний в различных сервисах контекстной рекламы (Яндекс Директ и т. д.). \r\n \r\n6. Создание, доработка и продвижение групп и каналов в социальных сетях. Сюда входит: youtube, телеграм, вконтакте и другие. \r\n \r\nТакже могу помочь вам и в ряде иных вопросов. Пишите на почту: mikhail.r.seo@gmail.com', '2023-10-11 15:14:34', '2023-10-11 15:14:34'),
(27, 'Andr', 'yourmail@gmail.com', '85755785881', 'Hello. I will increase your sales through mass mailings. I guarantee anonymity and quality. Moderate prices and high returns. I am aimed at long-term cooperation. I work with different countries. Very great experience. \r\n \r\nI deal with the following types of mailings: e-mail mailings, mailings via instant messengers and social networks (for example, WhatsApp), mailings via Skype, mailings via SMS messages and automated telephone calls. \r\n \r\nMailings are carried out through my databases, the customer’s databases, and if necessary, I collect contacts of target recipients from scratch for the customer’s specific business. \r\n \r\nWrite to my email: ertml888@gmail.com', '2023-10-12 00:16:05', '2023-10-12 00:16:05'),
(28, 'Tam', 'tam.zinn@outlook.com', '781-825-2894', 'want to get an alert when your website is down? then use our 24on7 web monitor - it\'s absolutely free! \r\nvisit https://t.ly/cQQMm?sudactu.net   for more info', '2023-10-21 18:19:31', '2023-10-21 18:19:31'),
(29, 'Libby', 'libbyevans461@gmail.com', '0414-5563685', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 300-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nLibby', '2023-10-21 19:21:35', '2023-10-21 19:21:35'),
(30, 'WilliammupGH', 'fjjfsjfjejrjejvfr@outlook.com', '82865612538', '[url=https://asapmarkets.org]asapmarkets.org [/url] \r\nasap darkweb link \r\nAsap url \r\nAnonymity is a crucial aspect of the darknet market. Users typically employ the Tor network, which directs internet traffic through a series of relays, making it difficult to trace their activities back to their real IP addresses. Additionally, cryptocurrencies like Bitcoin are used for transactions, making it harder to track financial transactions.', '2023-10-22 03:48:15', '2023-10-22 03:48:15'),
(31, 'Lorri', 'bardolph.lorri@gmail.com', 'Wt kjnjpidfzg', 'Hello,\r\n\r\nWe noticed sudactu.net is only listed in 8 out of 2500 directories.\r\n\r\nThis severly impacts your backlinks and search engine rankings.\r\n\r\nCome get listed in all 2500 directories on DirectoryBump.com', '2023-10-22 11:10:53', '2023-10-22 11:10:53'),
(32, 'Lina', 'linaMl@pipegordon.com', '81488561533', 'Воnjоur à tous, les gаrs! Je ѕаіѕ, mon mеѕsagе еst pеut-être trоp précis,\r\nМaiѕ ma sœur а trouvé un hommе gentіl iсi et ilѕ sе ѕоnt mаriéѕ, аlors ԛu\'en eѕt-il de mоі ? ! :)\r\nJ\'aі 27 аnѕ, Lіna, de Rоumаnіe, ϳе connаіѕ аussi l\'аnglаis et l\'аllеmаnd\r\nΕt... ϳ\'aі unе mаlаdiе ѕpéсifіԛuе, аppelée nymphоmаnіe. Qui saіt cе ԛuе с\'еѕt, реut me соmрrеndre (mіеuх vaut lе dіre tout de ѕuіtе)\r\nAh оui, ϳe сuіѕinе trèѕ sаvoureuѕе ǃ еt j\'аimе non sеulеment сuіsiner ;))\r\nJe ѕuiѕ une vraie fillе, рas unе рrostituée, et ϳe rеcherchе unе rеlаtіon sérіeuѕe et chaudе...\r\nԚuoі ԛu\'il en soit, vоuѕ роuvеz trouver mon рrofil іci : http://inasrenrue.tk/idl-23435/', '2023-10-26 11:10:51', '2023-10-26 11:10:51'),
(33, 'Saul', 'saul.martz@gmail.com', '04.26.91.49.01', 'want to get an alert when your website is down? then signup to our 24on7 web monitor - it\'s absolutely free! \r\nvisit https://t.ly/hCFIP?sudactu.net   for more info', '2023-10-26 18:03:26', '2023-10-26 18:03:26'),
(34, 'MisPorma DuckCTR', 'gowwhigh@duckctr.com', '81778885111', 'Hello. I hope this message finds you well. I am reaching out to introduce you to a ground-breaking service that is set to redefine the SEO landscape: duckctr.com. \r\nMany platforms claim to enhance website positioning, but their results often fall short or only offer superficial metrics that don\'t translate to genuine growth. \r\n \r\nHere\'s what sets us apart: \r\n1. Instantaneous Impact: Users witness immediate improvements in website rankings. No more waiting for months to see tangible progress. \r\n2. Permanent Domain Authority Boost: With our unique methodology, your domain\'s authority will see a consistent upsurge. \r\n3. Strategic Suggestions: Our platform doesn\'t just enhance positioning; it offers actionable insights and suggestions for sustained growth. \r\n4. Additional Link Creation: Generate high-quality backlinks organically. \r\n5. Knowledge Panels: Enhance your online visibility with the spawning of knowledge panels. \r\n \r\nBut what truly differentiates duckctr.com? We\'re the only service of our kind available publicly worldwide. If you\'re serious about elevating your SEO strategy for 2023 and beyond, this is a unique opportunity that shouldn\'t be missed. \r\nA Few Things to Note: \r\n- This isn\'t just another tool for generating numbers on Google Search Console or Google Analytics. Our service guarantees real results within days of launching a campaign. \r\n- For critical clients, even a single campaign can significantly boost the domain authority for a modest investment. For highly competitive keywords, our regular campaigns can be a game-changer. \r\nImagine the value proposition you could present to your clients by being one of the few to harness the power of duckctr.com. \r\nSeats are filling up rapidly. If you\'re keen on collaborating with us and accessing the most advanced SEO techniques of 2023, I urge you to register today. \r\nLet\'s redefine SEO success together. \r\n \r\nEnter duckctr.com community.', '2023-10-26 21:06:15', '2023-10-26 21:06:15'),
(35, 'Karina', 'karinaMl@pathwayinn.com', '83144787237', 'Bоnjоur à tous, les gаrsǃ Je sаіs, mоn mеssage est peut-êtrе trоp рréсis,\r\nΜаіѕ ma sœur a trоuvé un hоmme gеntіl iсi еt ils sе sоnt marіés, alоrs qu\'en еst-іl dе moі ? ! :)\r\nJ\'аі 26 anѕ, Κarina, de Rоumanіe, ϳе соnnаіs аussi l\'anglaiѕ еt l\'аllemаnd\r\nЕt... j\'аi unе maladiе ѕpéсіfique, аpреléе nymрhomаnіe. Ԛui sаit cе quе с\'est, peut me comрrendrе (mіeux vaut lе dirе tоut de ѕuіtе)\r\nАh оuі, jе cuiѕine trèѕ ѕаvоurеusе ǃ et ϳ\'aimе non seulеmеnt сuіsinеr ;))\r\nJe ѕuіs une vraie fіlle, раs une рrоstіtuéе, et jе rеcherсhe unе rеlation sérіеuѕe еt сhаudе...\r\nQuоi qu\'il еn soit, vоuѕ роuvez trоuvеr mon prоfіl iсі : http://urapir.tk/idl-2078/', '2023-10-27 20:58:10', '2023-10-27 20:58:10'),
(36, 'DavidweisyFS', 'yasen.krasen.13+90869@mail.ru', '86763341339', 'Nguheidjiwfefhei ijiwdwjurFEJDKWIJFEIF аоушвцшургаруш ШОРГПГОШРГРПГОГРГ iryuieoieifegjejj bvncehfedjiehfu sudactu.net', '2023-10-29 04:26:23', '2023-10-29 04:26:23'),
(37, 'JosephjabYT', 'vastasiobhan95@hotmail.com', '84649377947', 'Real Sex Dating - [url=https://truelovedatinghub.life/?u=2rek60a&o=y548kyb&t=serdat]Click Here[/url]', '2023-10-30 02:34:52', '2023-10-30 02:34:52'),
(38, 'JamesSixRM', 'tcondrin95@gmail.com', '81887569187', 'Make It Happen with Earning $30,000 per Month in Email Marketing http://email-marketing-43255254.dantojochilango.com/shop?14800', '2023-10-30 03:29:52', '2023-10-30 03:29:52'),
(39, 'JamesSixRM', 'tcondrin95@gmail.com', '81363838318', 'Make It Happen with Earning $30,000 per Month in Email Marketing http://email-marketing-43255254.dantojochilango.com/shop?14800', '2023-10-30 03:29:52', '2023-10-30 03:29:52'),
(40, 'JamesSixRM', 'tcondrin95@gmail.com', '81658961524', 'Make It Happen with Earning $30,000 per Month in Email Marketing http://email-marketing-43255254.dantojochilango.com/shop?14800', '2023-10-30 03:29:53', '2023-10-30 03:29:53'),
(41, 'JamesSixRM', 'tcondrin95@gmail.com', '87981567385', 'Make It Happen with Earning $30,000 per Month in Email Marketing http://email-marketing-43255254.dantojochilango.com/shop?14800', '2023-10-30 03:29:54', '2023-10-30 03:29:54'),
(42, 'JamesSixRM', 'tcondrin95@gmail.com', '85328826196', 'Make It Happen with Earning $30,000 per Month in Email Marketing http://email-marketing-43255254.dantojochilango.com/shop?14800', '2023-10-30 03:29:55', '2023-10-30 03:29:55'),
(43, 'StephenTaureXH', 'nick_oc@live.com.au', '81649359785', 'From Struggle to Abundance: Earnings from $30,000 Per Day http://email-marketing-61235571.magnetorepairs.com/price?71409', '2023-11-02 14:19:17', '2023-11-02 14:19:17'),
(44, 'StephenTaureXH', 'nick_oc@live.com.au', '82473339743', 'From Struggle to Abundance: Earnings from $30,000 Per Day http://email-marketing-61235571.magnetorepairs.com/price?71409', '2023-11-02 14:19:19', '2023-11-02 14:19:19'),
(45, 'StephenTaureXH', 'nick_oc@live.com.au', '83473397733', 'From Struggle to Abundance: Earnings from $30,000 Per Day http://email-marketing-61235571.magnetorepairs.com/price?71409', '2023-11-02 14:19:19', '2023-11-02 14:19:19'),
(46, 'StephenTaureXH', 'nick_oc@live.com.au', '85816565483', 'From Struggle to Abundance: Earnings from $30,000 Per Day http://email-marketing-61235571.magnetorepairs.com/price?71409', '2023-11-02 14:19:20', '2023-11-02 14:19:20'),
(47, 'StephenTaureXH', 'nick_oc@live.com.au', '89783564261', 'From Struggle to Abundance: Earnings from $30,000 Per Day http://email-marketing-61235571.magnetorepairs.com/price?71409', '2023-11-02 14:19:20', '2023-11-02 14:19:20'),
(48, 'JamesAidesTB', 'josearielnolasco@hotmail.com', '89186673892', 'They will transfer you $45,497.52. Withdraw money urgently http://quickcashquest-572575.wsrpl.com/bank', '2023-11-04 05:09:31', '2023-11-04 05:09:31'),
(49, 'JamesAidesTB', 'josearielnolasco@hotmail.com', '82739128579', 'They will transfer you $45,497.52. Withdraw money urgently http://quickcashquest-572575.wsrpl.com/bank', '2023-11-04 05:09:32', '2023-11-04 05:09:32'),
(50, 'JamesAidesTB', 'josearielnolasco@hotmail.com', '83479874596', 'They will transfer you $45,497.52. Withdraw money urgently http://quickcashquest-572575.wsrpl.com/bank', '2023-11-04 05:09:32', '2023-11-04 05:09:32'),
(51, 'JamesAidesTB', 'josearielnolasco@hotmail.com', '83293315773', 'They will transfer you $45,497.52. Withdraw money urgently http://quickcashquest-572575.wsrpl.com/bank', '2023-11-04 05:09:33', '2023-11-04 05:09:33'),
(52, 'JamesAidesTB', 'josearielnolasco@hotmail.com', '87335837824', 'They will transfer you $45,497.52. Withdraw money urgently http://quickcashquest-572575.wsrpl.com/bank', '2023-11-04 05:09:34', '2023-11-04 05:09:34'),
(53, 'Georgina', 'georginahaynes620@gmail.com', '970 86 183', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site sudactu.net.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents. We can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nGeorgina\r\n\r\nIf you are not interested, unsubscribe here: https://explainervideos4u.net/unsubscribe.php?d=sudactu.net', '2023-11-06 02:47:46', '2023-11-06 02:47:46'),
(54, 'BarryroatsJR', 'sebi.ovi.miron@gmail.com', '84773866543', 'URGENT MESSAGE! Your earnings were $45,823.31. Withdraw money urgently http://withdrawspeedpathzoomlaneway-5304296.haighhouse.com/on?816', '2023-11-07 04:55:48', '2023-11-07 04:55:48'),
(55, 'BarryroatsJR', 'sebi.ovi.miron@gmail.com', '86529293318', 'URGENT MESSAGE! Your earnings were $45,823.31. Withdraw money urgently http://withdrawspeedpathzoomlaneway-5304296.haighhouse.com/on?816', '2023-11-07 04:55:48', '2023-11-07 04:55:48'),
(56, 'BarryroatsJR', 'sebi.ovi.miron@gmail.com', '87435569953', 'URGENT MESSAGE! Your earnings were $45,823.31. Withdraw money urgently http://withdrawspeedpathzoomlaneway-5304296.haighhouse.com/on?816', '2023-11-07 04:55:49', '2023-11-07 04:55:49'),
(57, 'BarryroatsJR', 'sebi.ovi.miron@gmail.com', '82487885119', 'URGENT MESSAGE! Your earnings were $45,823.31. Withdraw money urgently http://withdrawspeedpathzoomlaneway-5304296.haighhouse.com/on?816', '2023-11-07 04:55:49', '2023-11-07 04:55:49'),
(58, 'BarryroatsJR', 'sebi.ovi.miron@gmail.com', '83772712175', 'URGENT MESSAGE! Your earnings were $45,823.31. Withdraw money urgently http://withdrawspeedpathzoomlaneway-5304296.haighhouse.com/on?816', '2023-11-07 04:55:50', '2023-11-07 04:55:50'),
(59, 'Megan', 'meganatkinson149@gmail.com', '06-10209226', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 300-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nMegan', '2023-11-14 01:32:51', '2023-11-14 01:32:51'),
(60, 'CharlesCoowsDK', 'shakedaddy@gmail.com', '82818151572', 'Earnings on Investments from $9000: Small Investments, Big Rewards https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?3929448', '2023-11-23 08:55:29', '2023-11-23 08:55:29'),
(61, 'CharlesCoowsDK', 'shakedaddy@gmail.com', '82863423687', 'Earnings on Investments from $9000: Small Investments, Big Rewards https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?3929448', '2023-11-23 08:55:30', '2023-11-23 08:55:30'),
(62, 'CharlesCoowsDK', 'shakedaddy@gmail.com', '88998972823', 'Earnings on Investments from $9000: Small Investments, Big Rewards https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?3929448', '2023-11-23 08:55:30', '2023-11-23 08:55:30'),
(63, 'CharlesCoowsDK', 'shakedaddy@gmail.com', '81235497647', 'Earnings on Investments from $9000: Small Investments, Big Rewards https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?3929448', '2023-11-23 08:55:31', '2023-11-23 08:55:31'),
(64, 'CharlesCoowsDK', 'shakedaddy@gmail.com', '84829523566', 'Earnings on Investments from $9000: Small Investments, Big Rewards https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?3929448', '2023-11-23 08:55:31', '2023-11-23 08:55:31'),
(65, 'Sadie', 'sadie.villasenor79@hotmail.com', '948 50 987', 'Hey, want business data for your company?\r\n\r\nUnlimited Searches of over 14 billion B2B records\r\n\r\nLeadsBox.biz', '2023-11-23 11:29:23', '2023-11-23 11:29:23'),
(66, 'Mikhail', 'yourmail@gmail.com', '89261295557', 'Здравствуйте. Готов помочь увеличить посещаемость и доходность вашего сайта, а также решить все имеющиеся на сайте проблемы. Причем рост посещаемости будет идти за счет притока целевых посетителей из поисковых систем, что для вас максимально выгодно и перспективно. \r\n \r\nНемного информации о себе. Я являюсь специалистом в области создания, доработки и продвижения сайтов. Также имею знания и опыт в ряде смежных областей. Опыт работы составляет больше 19 лет. Работу всегда выполняю качественно. \r\n \r\nОсновные направления моей деятельности: \r\n \r\n1. Внутренняя оптимизация. Все необходимые работы по сайту с целью достижения наилучших позиций в поисковых системах, улучшение конверсионных качеств и юзабилити, решение всех встреченных ошибок, при необходимости внедрение нового или улучшение старого функционала. \r\n \r\n2. Продвижение в поисковых системах. Работа с улучшением позиций по значимым для вас поисковым запросам, что способно дать большой приток целевой аудитории на сайт. \r\n \r\n3. Создание сайтов различных типов. Могу создать лендинг, интернет-магазин, сайт компании, информационный сайт, блог и т. д. \r\n \r\n4. Работа с отзывами в интернете. Создание и продвижение хороших отзывов, а также удаление плохих. \r\n \r\n5. Настройка рекламных кампаний в различных сервисах контекстной рекламы (Яндекс Директ, ВК и т. д.). \r\n \r\n6. Создание, доработка и продвижение групп и каналов в социальных сетях. Сюда входит: youtube, телеграм, вконтакте и другие. \r\n \r\n7. Различного рода рассылки, которые обычно дают хороший единоразовый приток продаж (можно периодически повторять). \r\n \r\nТакже могу помочь вам и в ряде иных вопросов. Пишите на почту: mikhailrs.seo@gmail.com', '2023-11-24 17:42:43', '2023-11-24 17:42:43'),
(67, 'Mikhail', 'yourmail@gmail.com', '85415318718', 'Здравствуйте. Готов помочь увеличить посещаемость и доходность вашего сайта, а также решить все имеющиеся на сайте проблемы. Причем рост посещаемости будет идти за счет притока целевых посетителей из поисковых систем, что для вас максимально выгодно и перспективно. \r\n \r\nНемного информации о себе. Я являюсь специалистом в области создания, доработки и продвижения сайтов. Также имею знания и опыт в ряде смежных областей. Опыт работы составляет больше 19 лет. Работу всегда выполняю качественно. \r\n \r\nОсновные направления моей деятельности: \r\n \r\n1. Внутренняя оптимизация. Все необходимые работы по сайту с целью достижения наилучших позиций в поисковых системах, улучшение конверсионных качеств и юзабилити, решение всех встреченных ошибок, при необходимости внедрение нового или улучшение старого функционала. \r\n \r\n2. Продвижение в поисковых системах. Работа с улучшением позиций по значимым для вас поисковым запросам, что способно дать большой приток целевой аудитории на сайт. \r\n \r\n3. Создание сайтов различных типов. Могу создать лендинг, интернет-магазин, сайт компании, информационный сайт, блог и т. д. \r\n \r\n4. Работа с отзывами в интернете. Создание и продвижение хороших отзывов, а также удаление плохих. \r\n \r\n5. Настройка рекламных кампаний в различных сервисах контекстной рекламы (Яндекс Директ, ВК и т. д.). \r\n \r\n6. Создание, доработка и продвижение групп и каналов в социальных сетях. Сюда входит: youtube, телеграм, вконтакте и другие. \r\n \r\n7. Различного рода рассылки, которые обычно дают хороший единоразовый приток продаж (можно периодически повторять). \r\n \r\nТакже могу помочь вам и в ряде иных вопросов. Пишите на почту: mikhailrs.seo@gmail.com', '2023-11-25 01:09:26', '2023-11-25 01:09:26'),
(68, 'TobiasNupJL', 'no.reply.OleBecker@gmail.com', '85786836766', 'Hi-ya! sudactu.net \r\n \r\nDid you know that it is legally possible to send commercial offers? We proffer a new legal way of submitting business offers through feedback forms. These feedback forms can be spotted on a host of sites. \r\nWhen such letters are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals securely. Messages sent via Feedback Forms are unlikely to get into spam, as they are viewed as important. \r\nTake advantage of our free service! \r\nWe can dispatch up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.', '2023-11-28 03:35:16', '2023-11-28 03:35:16');

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `user_id`, `title`, `resume`, `description`, `image`, `youtube_link`, `slug`, `published`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 'Apprendre l\'anglais', 'Ce cours d\'anglais général est conçu pour les personnes qui souhaitent améliorer leur niveau d\'anglais dans les quatre compétences principales : la compréhension orale, la compréhension écrite, l\'expression orale et l\'expression écrite.', '<div class=\"markdown markdown-main-panel\" dir=\"ltr\">\r\n<p data-sourcepos=\"1:1-1:27\"><strong>Cours d\'anglais g&eacute;n&eacute;ral</strong></p>\r\n<p data-sourcepos=\"3:1-3:236\">Ce cours d\'anglais g&eacute;n&eacute;ral est con&ccedil;u pour les personnes qui souhaitent am&eacute;liorer leur niveau d\'anglais dans les quatre comp&eacute;tences principales : la compr&eacute;hension orale, la compr&eacute;hension &eacute;crite, l\'expression orale et l\'expression &eacute;crite.</p>\r\n<p data-sourcepos=\"5:1-5:22\"><strong>Objectifs du cours</strong></p>\r\n<p data-sourcepos=\"7:1-7:60\">&Agrave; la fin de ce cours, les participants seront en mesure de :</p>\r\n<ul data-sourcepos=\"9:1-13:0\">\r\n<li data-sourcepos=\"9:1-9:54\">Comprendre et r&eacute;pondre &agrave; des conversations courantes</li>\r\n<li data-sourcepos=\"10:1-10:39\">Lire et comprendre des textes simples</li>\r\n<li data-sourcepos=\"11:1-11:50\">S\'exprimer de mani&egrave;re claire et concise &agrave; l\'oral</li>\r\n<li data-sourcepos=\"12:1-13:0\">&Eacute;crire des textes simples et concis</li>\r\n</ul>\r\n<p data-sourcepos=\"14:1-14:16\"><strong>Public cible</strong></p>\r\n<p data-sourcepos=\"16:1-16:182\">Ce cours s\'adresse aux personnes qui ont un niveau d\'anglais d&eacute;butant ou interm&eacute;diaire. Il est &eacute;galement adapt&eacute; aux personnes qui souhaitent r&eacute;activer leurs connaissances en anglais.</p>\r\n<p data-sourcepos=\"18:1-18:20\"><strong>Contenu du cours</strong></p>\r\n<p data-sourcepos=\"20:1-20:65\">Le cours couvre les quatre comp&eacute;tences principales de l\'anglais :</p>\r\n<ul data-sourcepos=\"22:1-26:0\">\r\n<li data-sourcepos=\"22:1-22:139\"><strong>Compr&eacute;hension orale</strong> : les participants apprendront &agrave; comprendre des conversations courantes, des enregistrements audio et des vid&eacute;os.</li>\r\n<li data-sourcepos=\"23:1-23:161\"><strong>Compr&eacute;hension &eacute;crite</strong> : les participants apprendront &agrave; lire et comprendre des textes simples, tels que des articles de journaux, des e-mails et des lettres.</li>\r\n<li data-sourcepos=\"24:1-24:162\"><strong>Expression orale</strong> : les participants apprendront &agrave; s\'exprimer de mani&egrave;re claire et concise &agrave; l\'oral, en utilisant un vocabulaire et une grammaire appropri&eacute;s.</li>\r\n<li data-sourcepos=\"25:1-26:0\"><strong>Expression &eacute;crite</strong> : les participants apprendront &agrave; &eacute;crire des textes simples et concis, en utilisant un vocabulaire et une grammaire appropri&eacute;s.</li>\r\n</ul>\r\n<p data-sourcepos=\"27:1-27:25\"><strong>M&eacute;thodes p&eacute;dagogiques</strong></p>\r\n<p data-sourcepos=\"29:1-29:66\">Le cours utilise une vari&eacute;t&eacute; de m&eacute;thodes p&eacute;dagogiques, notamment :</p>\r\n<ul data-sourcepos=\"31:1-35:0\">\r\n<li data-sourcepos=\"31:1-31:25\">Des le&ccedil;ons interactives</li>\r\n<li data-sourcepos=\"32:1-32:25\">Des exercices pratiques</li>\r\n<li data-sourcepos=\"33:1-33:27\">Des discussions en groupe</li>\r\n<li data-sourcepos=\"34:1-35:0\">Des activit&eacute;s de r&eacute;vision</li>\r\n</ul>\r\n<p data-sourcepos=\"36:1-36:26\"><strong>Modalit&eacute;s d\'&eacute;valuation</strong></p>\r\n<p data-sourcepos=\"38:1-38:107\">L\'&eacute;valuation des participants se fait au moyen d\'exercices pratiques, de discussions en groupe et de tests.</p>\r\n<p data-sourcepos=\"40:1-40:26\"><strong>Calendrier et horaires</strong></p>\r\n<p data-sourcepos=\"42:1-42:177\">Le cours est organis&eacute; en modules de 10 semaines. Chaque module se compose de 20 le&ccedil;ons de 50 minutes. Les cours sont dispens&eacute;s en ligne, &agrave; l\'heure qui convient aux participants.</p>\r\n<p data-sourcepos=\"44:1-44:22\"><strong>Frais de scolarit&eacute;</strong></p>\r\n<p data-sourcepos=\"46:1-46:55\">Les frais de scolarit&eacute; pour ce cours sont de [montant].</p>\r\n<p data-sourcepos=\"48:1-48:15\"><strong>Inscription</strong></p>\r\n<p data-sourcepos=\"50:1-50:127\">Pour vous inscrire &agrave; ce cours, veuillez remplir le formulaire d\'inscription disponible sur le site Web de [nom de l\'organisme].</p>\r\n<p data-sourcepos=\"52:1-52:11\"><strong>Contact</strong></p>\r\n<p data-sourcepos=\"54:1-54:124\">Pour plus d\'informations, veuillez contacter [nom de la personne] au [num&eacute;ro de t&eacute;l&eacute;phone] ou par e-mail &agrave; [adresse e-mail].</p>\r\n</div>', 'courses\\January2024\\1z21kB2l51Xj9KcTrqFx.jpg', NULL, 'apprendre-l-anglais', 1, '2024-01-31 13:26:51', '2024-01-31 13:26:51'),
(2, 3, 2, 'Les bases des boucles en Java', 'En Java, une boucle est une structure de contrôle qui permet d\'exécuter un bloc d\'instructions de manière répétée tant qu\'une condition est vraie. Il existe quatre types de boucles en Java', '<div class=\"markdown markdown-main-panel\" dir=\"ltr\">\r\n<p data-sourcepos=\"1:1-1:190\">En Java, une boucle est une structure de contr&ocirc;le qui permet d\'ex&eacute;cuter un bloc d\'instructions de mani&egrave;re r&eacute;p&eacute;t&eacute;e tant qu\'une condition est vraie. Il existe quatre types de boucles en Java :</p>\r\n<ul data-sourcepos=\"3:1-4:0\">\r\n<li data-sourcepos=\"3:1-4:0\"><strong>La boucle for</strong> : la boucle for est la boucle la plus courante. Elle permet d\'ex&eacute;cuter un bloc d\'instructions un nombre pr&eacute;d&eacute;fini de fois.</li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">0</span>; i &lt; <span class=\"hljs-number\">10</span>; i++) {\r\n  System.out.println(i);\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"11:1-12:0\">\r\n<li data-sourcepos=\"11:1-12:0\"><strong>La boucle while</strong> : la boucle while permet d\'ex&eacute;cuter un bloc d\'instructions tant qu\'une condition est vraie.</li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">0</span>;\r\n<span class=\"hljs-keyword\">while</span> (i &lt; <span class=\"hljs-number\">10</span>) {\r\n  System.out.println(i);\r\n  i++;\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"21:1-22:0\">\r\n<li data-sourcepos=\"21:1-22:0\"><strong>La boucle do-while</strong> : la boucle do-while est similaire &agrave; la boucle while, mais le bloc d\'instructions est ex&eacute;cut&eacute; au moins une fois, m&ecirc;me si la condition est fausse au d&eacute;but.</li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">0</span>;\r\n<span class=\"hljs-keyword\">do</span> {\r\n  System.out.println(i);\r\n  i++;\r\n} <span class=\"hljs-keyword\">while</span> (i &lt; <span class=\"hljs-number\">10</span>);\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"31:1-32:0\">\r\n<li data-sourcepos=\"31:1-32:0\"><strong>La boucle for-each</strong> : la boucle for-each permet d\'it&eacute;rer sur une collection, telle qu\'un tableau ou une liste.</li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">int</span>[] numbers = {<span class=\"hljs-number\">1</span>, <span class=\"hljs-number\">2</span>, <span class=\"hljs-number\">3</span>, <span class=\"hljs-number\">4</span>, <span class=\"hljs-number\">5</span>};\r\n<span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> number : numbers) {\r\n  System.out.println(number);\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"40:1-40:28\"><strong>Syntaxe de la boucle for</strong></p>\r\n<p data-sourcepos=\"42:1-42:45\">La syntaxe de la boucle for est la suivante :</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">for</span> (initialisation; condition; incr&eacute;mentation) {\r\n  instructions;\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"50:1-53:0\">\r\n<li data-sourcepos=\"50:1-50:182\"><strong>initialisation</strong> : cette partie est ex&eacute;cut&eacute;e une seule fois, au d&eacute;but de la boucle. Elle est g&eacute;n&eacute;ralement utilis&eacute;e pour initialiser une variable qui sera utilis&eacute;e dans la boucle.</li>\r\n<li data-sourcepos=\"51:1-51:204\"><strong>condition</strong> : cette partie est &eacute;valu&eacute;e avant chaque ex&eacute;cution du bloc d\'instructions. Si la condition est vraie, le bloc d\'instructions est ex&eacute;cut&eacute;. Si la condition est fausse, la boucle est termin&eacute;e.</li>\r\n<li data-sourcepos=\"52:1-53:0\"><strong>incr&eacute;mentation</strong> : cette partie est ex&eacute;cut&eacute;e apr&egrave;s chaque ex&eacute;cution du bloc d\'instructions. Elle est g&eacute;n&eacute;ralement utilis&eacute;e pour modifier la valeur d\'une variable qui contr&ocirc;le la fin de la boucle.</li>\r\n</ul>\r\n<p data-sourcepos=\"54:1-54:38\"><strong>Exemples d\'utilisation des boucles</strong></p>\r\n<p data-sourcepos=\"56:1-56:59\">Voici quelques exemples d\'utilisation des boucles en Java :</p>\r\n<ul data-sourcepos=\"58:1-59:0\">\r\n<li data-sourcepos=\"58:1-59:0\"><strong>Afficher les nombres de 1 &agrave; 10</strong></li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">1</span>; i &lt;= <span class=\"hljs-number\">10</span>; i++) {\r\n  System.out.println(i);\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"66:1-67:0\">\r\n<li data-sourcepos=\"66:1-67:0\"><strong>Calculer la somme des nombres de 1 &agrave; 10</strong></li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">int</span> sum = <span class=\"hljs-number\">0</span>;\r\n<span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">1</span>; i &lt;= <span class=\"hljs-number\">10</span>; i++) {\r\n  sum += i;\r\n}\r\nSystem.out.println(sum);\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<ul data-sourcepos=\"76:1-77:0\">\r\n<li data-sourcepos=\"76:1-77:0\"><strong>Parcourir un tableau</strong></li>\r\n</ul>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">Java</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">int</span>[] numbers = {<span class=\"hljs-number\">1</span>, <span class=\"hljs-number\">2</span>, <span class=\"hljs-number\">3</span>, <span class=\"hljs-number\">4</span>, <span class=\"hljs-number\">5</span>};\r\n<span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> number : numbers) {\r\n  System.out.println(number);\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"85:1-85:43\"><strong>Conseils pour l\'utilisation des boucles</strong></p>\r\n<ul data-sourcepos=\"87:1-89:134\">\r\n<li data-sourcepos=\"87:1-87:181\"><strong>&Eacute;vitez les boucles infinies</strong> : une boucle infinie est une boucle qui s\'ex&eacute;cute ind&eacute;finiment. Pour &eacute;viter cela, assurez-vous que la condition de la boucle est toujours v&eacute;rifi&eacute;e.</li>\r\n<li data-sourcepos=\"88:1-88:159\"><strong>Utilisez les boucles de mani&egrave;re appropri&eacute;e</strong> : chaque type de boucle a son propre objectif. Utilisez le type de boucle appropri&eacute; pour la t&acirc;che &agrave; accomplir.</li>\r\n<li data-sourcepos=\"89:1-89:134\"><strong>Testez vos boucles</strong> : assurez-vous que vos boucles fonctionnent correctement en les testant avec diff&eacute;rents ensembles de donn&eacute;es.</li>\r\n</ul>\r\n</div>', 'courses\\January2024\\3VM4XAVLqyoecMS1bobM.jpg', 'https://www.youtube.com/watch?v=qZ55SeaRDig', 'les-bases-des-boucles-en-java', 1, '2024-01-31 13:33:00', '2024-01-31 13:33:25'),
(3, 3, 2, 'Connexion PHP & MySQL', 'Pour se connecter à une base de données MySQL en PHP avec PDO, vous devez utiliser la classe PDO. Cette classe fournit une interface abstraite pour accéder aux bases de données.', '<div class=\"markdown markdown-main-panel\" dir=\"ltr\">\r\n<p data-sourcepos=\"1:1-1:179\">Pour se connecter &agrave; une base de donn&eacute;es MySQL en PHP avec PDO, vous devez utiliser la classe <code>PDO</code>. Cette classe fournit une interface abstraite pour acc&eacute;der aux bases de donn&eacute;es.</p>\r\n<p data-sourcepos=\"3:1-3:48\"><strong>&Eacute;tape 1 : D&eacute;clarer une variable de connexion</strong></p>\r\n<p data-sourcepos=\"5:1-5:159\">La premi&egrave;re &eacute;tape consiste &agrave; d&eacute;clarer une variable de connexion. Cette variable contiendra les informations n&eacute;cessaires pour se connecter &agrave; la base de donn&eacute;es.</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">PHP</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-variable\">$dsn</span> = <span class=\"hljs-string\">\"mysql:host=localhost;dbname=my_database\"</span>;\r\n<span class=\"hljs-variable\">$username</span> = <span class=\"hljs-string\">\"root\"</span>;\r\n<span class=\"hljs-variable\">$password</span> = <span class=\"hljs-string\">\"\"</span>;\r\n\r\n<span class=\"hljs-variable\">$conn</span> = <span class=\"hljs-keyword\">new</span> PDO(<span class=\"hljs-variable\">$dsn</span>, <span class=\"hljs-variable\">$username</span>, <span class=\"hljs-variable\">$password</span>);\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"15:1-15:57\">Les param&egrave;tres de la fonction <code>PDO()</code> sont les suivants :</p>\r\n<ul data-sourcepos=\"17:1-20:0\">\r\n<li data-sourcepos=\"17:1-17:56\"><strong>dsn</strong> : la cha&icirc;ne de connexion &agrave; la base de donn&eacute;es.</li>\r\n<li data-sourcepos=\"18:1-18:60\"><strong>username</strong> : le nom d\'utilisateur de la base de donn&eacute;es.</li>\r\n<li data-sourcepos=\"19:1-20:0\"><strong>password</strong> : le mot de passe de la base de donn&eacute;es.</li>\r\n</ul>\r\n<p data-sourcepos=\"21:1-21:35\"><strong>&Eacute;tape 2 : V&eacute;rifier la connexion</strong></p>\r\n<p data-sourcepos=\"23:1-23:159\">Apr&egrave;s avoir d&eacute;clar&eacute; la variable de connexion, vous devez v&eacute;rifier que la connexion a r&eacute;ussi. Pour ce faire, vous pouvez utiliser la m&eacute;thode <code>PDO::errorCode()</code>.</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">PHP</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-keyword\">if</span> (<span class=\"hljs-variable\">$conn</span>-&gt;errorCode()) {\r\n  <span class=\"hljs-keyword\">echo</span> <span class=\"hljs-string\">\"Erreur de connexion : \"</span> . <span class=\"hljs-variable\">$conn</span>-&gt;errorInfo();\r\n  <span class=\"hljs-keyword\">exit</span>();\r\n}\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"32:1-32:38\"><strong>&Eacute;tape 3 : Ex&eacute;cuter une requ&ecirc;te SQL</strong></p>\r\n<p data-sourcepos=\"34:1-34:155\">Une fois que vous &ecirc;tes connect&eacute; &agrave; la base de donn&eacute;es, vous pouvez ex&eacute;cuter des requ&ecirc;tes SQL. Pour ce faire, vous pouvez utiliser la m&eacute;thode <code>PDO::query()</code>.</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">PHP</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-variable\">$result</span> = <span class=\"hljs-variable\">$conn</span>-&gt;query(<span class=\"hljs-string\">\"SELECT * FROM users\"</span>);\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"40:1-40:160\">Cette requ&ecirc;te renvoie un objet <code>PDOStatement</code> qui repr&eacute;sente le r&eacute;sultat de la requ&ecirc;te. Vous pouvez utiliser cet objet pour traiter les r&eacute;sultats de la requ&ecirc;te.</p>\r\n<p data-sourcepos=\"42:1-42:33\"><strong>&Eacute;tape 4 : Fermer la connexion</strong></p>\r\n<p data-sourcepos=\"44:1-44:151\">Lorsque vous avez termin&eacute; d\'utiliser la base de donn&eacute;es, vous devez fermer la connexion. Pour ce faire, vous pouvez utiliser la m&eacute;thode <code>PDO::close()</code>.</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">PHP</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-variable\">$conn</span>-&gt;close();\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"50:1-50:11\"><strong>Exemple</strong></p>\r\n<p data-sourcepos=\"52:1-52:107\">Voici un exemple de code qui se connecte &agrave; une base de donn&eacute;es MySQL et affiche la liste des utilisateurs :</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\">\r\n<div class=\"code-block-decoration header gmat-subhead-2 ng-star-inserted\">PHP</div>\r\n<!---->\r\n<pre><code class=\"code-container\" role=\"text\"><span class=\"hljs-meta\">&lt;?php</span>\r\n\r\n<span class=\"hljs-variable\">$dsn</span> = <span class=\"hljs-string\">\"mysql:host=localhost;dbname=my_database\"</span>;\r\n<span class=\"hljs-variable\">$username</span> = <span class=\"hljs-string\">\"root\"</span>;\r\n<span class=\"hljs-variable\">$password</span> = <span class=\"hljs-string\">\"\"</span>;\r\n\r\n<span class=\"hljs-variable\">$conn</span> = <span class=\"hljs-keyword\">new</span> PDO(<span class=\"hljs-variable\">$dsn</span>, <span class=\"hljs-variable\">$username</span>, <span class=\"hljs-variable\">$password</span>);\r\n\r\n<span class=\"hljs-keyword\">if</span> (<span class=\"hljs-variable\">$conn</span>-&gt;errorCode()) {\r\n  <span class=\"hljs-keyword\">echo</span> <span class=\"hljs-string\">\"Erreur de connexion : \"</span> . <span class=\"hljs-variable\">$conn</span>-&gt;errorInfo();\r\n  <span class=\"hljs-keyword\">exit</span>();\r\n}\r\n\r\n<span class=\"hljs-variable\">$result</span> = <span class=\"hljs-variable\">$conn</span>-&gt;query(<span class=\"hljs-string\">\"SELECT * FROM users\"</span>);\r\n\r\n<span class=\"hljs-keyword\">if</span> (<span class=\"hljs-variable\">$result</span>-&gt;rowCount() &gt; <span class=\"hljs-number\">0</span>) {\r\n  <span class=\"hljs-keyword\">while</span> (<span class=\"hljs-variable\">$row</span> = <span class=\"hljs-variable\">$result</span>-&gt;fetch()) {\r\n    <span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$row</span>[<span class=\"hljs-string\">\"name\"</span>] . <span class=\"hljs-string\">\" \"</span> . <span class=\"hljs-variable\">$row</span>[<span class=\"hljs-string\">\"email\"</span>] . <span class=\"hljs-string\">\"&lt;br&gt;\"</span>;\r\n  }\r\n} <span class=\"hljs-keyword\">else</span> {\r\n  <span class=\"hljs-keyword\">echo</span> <span class=\"hljs-string\">\"Aucun utilisateur trouv&eacute;.\"</span>;\r\n}\r\n\r\n<span class=\"hljs-variable\">$conn</span>-&gt;close();\r\n\r\n<span class=\"hljs-meta\">?&gt;</span>\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"83:1-83:36\">Ce code produit la sortie suivante :</p>\r\n<!---->\r\n<div class=\"code-block ng-star-inserted\"><!---->\r\n<pre><code class=\"code-container no-decoration-radius\" role=\"text\">John Doe johndoe@example.com\r\nJane Doe janedoe@example.com\r\n</code></pre>\r\n<!----><!----><!----></div>\r\n<!---->\r\n<p data-sourcepos=\"90:1-90:24\"><strong>Options de connexion</strong></p>\r\n<p data-sourcepos=\"92:1-92:167\">La classe <code>PDO</code> fournit de nombreuses options de connexion qui vous permettent de personnaliser la connexion &agrave; la base de donn&eacute;es. Voici quelques-unes de ces options :</p>\r\n<ul data-sourcepos=\"94:1-97:0\">\r\n<li data-sourcepos=\"94:1-94:49\"><strong>charset</strong> : l\'encodage de la base de donn&eacute;es.</li>\r\n<li data-sourcepos=\"95:1-95:55\"><strong>timezone</strong> : la zone horaire de la base de donn&eacute;es.</li>\r\n<li data-sourcepos=\"96:1-97:0\"><strong>driver_options</strong> : un tableau qui sp&eacute;cifie les options du pilote.</li>\r\n</ul>\r\n<p data-sourcepos=\"98:1-98:101\">Pour plus d\'informations sur les options de connexion, consultez la documentation de la classe <code>PDO</code>.</p>\r\n<p data-sourcepos=\"100:1-100:20\"><strong>Avantages de PDO</strong></p>\r\n<p data-sourcepos=\"102:1-102:64\">PDO offre plusieurs avantages par rapport &agrave; la classe <code>mysqli</code> :</p>\r\n<ul data-sourcepos=\"104:1-107:0\">\r\n<li data-sourcepos=\"104:1-104:180\"><strong>Int&eacute;gration avec les autres pilotes de bases de donn&eacute;es</strong> : PDO peut &ecirc;tre utilis&eacute; pour se connecter &agrave; une vari&eacute;t&eacute; de bases de donn&eacute;es, notamment MySQL, PostgreSQL, Oracle, etc.</li>\r\n<li data-sourcepos=\"105:1-105:119\"><strong>S&eacute;curit&eacute;</strong> : PDO prend en charge les requ&ecirc;tes pr&eacute;par&eacute;es, qui peuvent aider &agrave; pr&eacute;venir les attaques d\'injection SQL.</li>\r\n<li data-sourcepos=\"106:1-107:0\"><strong>Performances</strong> : PDO peut &ecirc;tre plus performant que la classe <code>mysqli</code> dans certains cas.</li>\r\n</ul>\r\n<p data-sourcepos=\"108:1-108:14\"><strong>Conclusion</strong></p>\r\n<p data-sourcepos=\"110:1-110:187\">PDO est une biblioth&egrave;que puissante et flexible qui vous permet de vous connecter &agrave; une vari&eacute;t&eacute; de bases de donn&eacute;es. Elle est une bonne option pour les applications PHP qui n&eacute;cessitent une</p>\r\n</div>', 'courses\\January2024\\HHNWs70exQ6fbeO3zdi5.jpg', 'https://www.youtube.com/watch?v=i51JrQRmbu0', 'connexion-php-and-mysql', 1, '2024-01-31 13:37:00', '2024-01-31 13:43:49');

-- --------------------------------------------------------

--
-- Structure de la table `courses_categories`
--

DROP TABLE IF EXISTS `courses_categories`;
CREATE TABLE IF NOT EXISTS `courses_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses_categories`
--

INSERT INTO `courses_categories` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Informatique', '2024-01-31 13:23:43', '2024-01-31 13:23:43'),
(2, 'Langue', '2024-01-31 13:23:51', '2024-01-31 13:23:51'),
(3, 'Programmation', '2024-01-31 13:24:34', '2024-01-31 13:24:34');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(82, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 10, 'published', 'checkbox', 'Published', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(89, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(90, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 11, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(93, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 10, 'banniere_belongsto_bannieres_category_relationship', 'relationship', 'bannieres_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BannieresCategory\",\"table\":\"bannieres_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(109, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 14, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 14, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(112, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 14, 'resume', 'text_area', 'Resume', 0, 1, 1, 1, 1, 1, '{}', 5),
(114, 14, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(115, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"article-detail\",\"crop\":{\"width\":\"800\",\"height\":\"500\"}},{\"name\":\"recent-article\",\"crop\":{\"width\":\"445\",\"height\":\"400\"}},{\"name\":\"scale-article\",\"scale\":\"5%\"}]}', 7),
(116, 14, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(117, 14, 'published', 'checkbox', 'Published', 0, 1, 1, 1, 1, 1, '{}', 9),
(118, 14, 'views', 'text', 'Views', 0, 1, 1, 1, 1, 1, '{}', 10),
(119, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(120, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(121, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 15, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(123, 15, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(124, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"article-detail\",\"crop\":{\"width\":\"800\",\"height\":\"500\"}},{\"name\":\"recent-article\",\"crop\":{\"width\":\"445\",\"height\":\"400\"}},{\"name\":\"scale-article\",\"scale\":\"5%\"}]}', 4),
(125, 15, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 5),
(126, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(127, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(128, 14, 'publication_belongsto_publications_category_relationship', 'relationship', 'publications_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\PublicationsCategory\",\"table\":\"publications_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(129, 14, 'publication_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(130, 14, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 13),
(139, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(140, 1, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(141, 1, 'resume', 'text_area', 'Resume', 0, 1, 1, 1, 1, 1, '{}', 13),
(142, 1, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(143, 1, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 15),
(151, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(152, 18, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(153, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(154, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(155, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(156, 19, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(157, 19, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(158, 19, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(159, 19, 'resume', 'text_area', 'Resume', 0, 1, 1, 1, 1, 1, '{}', 5),
(160, 19, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(161, 19, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(162, 19, 'youtube_link', 'text', 'Youtube Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(163, 19, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 9),
(164, 19, 'published', 'checkbox', 'Published', 0, 1, 1, 1, 1, 1, '{}', 10),
(165, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(166, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(167, 19, 'course_belongsto_courses_category_relationship', 'relationship', 'courses_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CoursesCategory\",\"table\":\"courses_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"bannieres\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(168, 19, 'course_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"bannieres\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 11:25:45', '2023-08-25 11:04:58'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-08-22 11:25:47', '2023-08-22 11:25:47'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(10, 'bannieres', 'bannieres', 'Banniere', 'Bannieres', 'voyager-photo', 'App\\Models\\Banniere', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 14:13:13', '2023-08-22 14:16:56'),
(11, 'bannieres_categories', 'bannieres-categories', 'Bannieres Category', 'Bannieres Categories', 'voyager-documentation', 'App\\Models\\BannieresCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(14, 'publications', 'publications', 'Publication', 'Publications', 'voyager-edit', 'App\\Models\\Publication', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-23 09:18:40', '2023-08-23 09:27:08'),
(15, 'publications_categories', 'publications-categories', 'Publications Category', 'Publications Categories', NULL, 'App\\Models\\PublicationsCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-23 09:19:35', '2023-08-23 09:21:31'),
(18, 'courses_categories', 'courses-categories', 'Courses Category', 'Cours catégories', 'voyager-sun', 'App\\Models\\CoursesCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-31 13:20:13', '2024-01-31 13:20:39'),
(19, 'courses', 'courses', 'Course', 'Cours', 'voyager-edit', 'App\\Models\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-31 13:22:20', '2024-01-31 13:23:25');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-08-22 11:25:46', '2023-08-22 11:25:46');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-08-22 11:25:46', '2023-08-22 11:25:46', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-08-22 11:25:46', '2023-08-22 11:25:46', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2023-08-22 11:25:47', '2023-08-22 11:25:47', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2023-08-22 11:25:48', '2023-08-22 11:25:48', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2023-08-22 11:25:48', '2023-08-22 11:25:48', 'voyager.pages.index', NULL),
(17, 1, 'Bannieres', '', '_self', 'voyager-photo', NULL, NULL, 18, '2023-08-22 14:13:13', '2023-08-22 14:13:13', 'voyager.bannieres.index', NULL),
(25, 1, 'Courses Categories', '', '_self', 'voyager-sun', NULL, NULL, 19, '2024-01-31 13:20:13', '2024-01-31 13:20:13', 'voyager.courses-categories.index', NULL),
(26, 1, 'Cours', '', '_self', 'voyager-edit', NULL, NULL, 20, '2024-01-31 13:22:20', '2024-01-31 13:22:20', 'voyager.courses.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2016_01_01_000000_create_pages_table', 3),
(26, '2016_01_01_000000_create_posts_table', 3),
(27, '2016_02_15_204651_create_categories_table', 3),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'r.madiengo@itgroup-drc.net', '2023-08-23 16:37:06', '2023-08-23 16:37:06'),
(2, 'admin@gmail.com', '2023-08-23 16:41:53', '2023-08-23 16:41:53');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-08-22 11:25:48', '2023-08-22 11:25:48');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(2, 'browse_bread', NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(3, 'browse_database', NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(4, 'browse_media', NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(5, 'browse_compass', NULL, '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(6, 'browse_menus', 'menus', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(7, 'read_menus', 'menus', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(8, 'edit_menus', 'menus', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(9, 'add_menus', 'menus', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(10, 'delete_menus', 'menus', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(11, 'browse_roles', 'roles', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(12, 'read_roles', 'roles', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(13, 'edit_roles', 'roles', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(14, 'add_roles', 'roles', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(15, 'delete_roles', 'roles', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(16, 'browse_users', 'users', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(17, 'read_users', 'users', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(18, 'edit_users', 'users', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(19, 'add_users', 'users', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(20, 'delete_users', 'users', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(21, 'browse_settings', 'settings', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(22, 'read_settings', 'settings', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(23, 'edit_settings', 'settings', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(24, 'add_settings', 'settings', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(25, 'delete_settings', 'settings', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(26, 'browse_categories', 'categories', '2023-08-22 11:25:47', '2023-08-22 11:25:47'),
(27, 'read_categories', 'categories', '2023-08-22 11:25:47', '2023-08-22 11:25:47'),
(28, 'edit_categories', 'categories', '2023-08-22 11:25:47', '2023-08-22 11:25:47'),
(29, 'add_categories', 'categories', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(30, 'delete_categories', 'categories', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(31, 'browse_posts', 'posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(32, 'read_posts', 'posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(33, 'edit_posts', 'posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(34, 'add_posts', 'posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(35, 'delete_posts', 'posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(36, 'browse_pages', 'pages', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(37, 'read_pages', 'pages', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(38, 'edit_pages', 'pages', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(39, 'add_pages', 'pages', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(40, 'delete_pages', 'pages', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(56, 'browse_bannieres', 'bannieres', '2023-08-22 14:13:13', '2023-08-22 14:13:13'),
(57, 'read_bannieres', 'bannieres', '2023-08-22 14:13:13', '2023-08-22 14:13:13'),
(58, 'edit_bannieres', 'bannieres', '2023-08-22 14:13:13', '2023-08-22 14:13:13'),
(59, 'add_bannieres', 'bannieres', '2023-08-22 14:13:13', '2023-08-22 14:13:13'),
(60, 'delete_bannieres', 'bannieres', '2023-08-22 14:13:13', '2023-08-22 14:13:13'),
(61, 'browse_bannieres_categories', 'bannieres_categories', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(62, 'read_bannieres_categories', 'bannieres_categories', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(63, 'edit_bannieres_categories', 'bannieres_categories', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(64, 'add_bannieres_categories', 'bannieres_categories', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(65, 'delete_bannieres_categories', 'bannieres_categories', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(76, 'browse_publications', 'publications', '2023-08-23 09:18:40', '2023-08-23 09:18:40'),
(77, 'read_publications', 'publications', '2023-08-23 09:18:40', '2023-08-23 09:18:40'),
(78, 'edit_publications', 'publications', '2023-08-23 09:18:40', '2023-08-23 09:18:40'),
(79, 'add_publications', 'publications', '2023-08-23 09:18:40', '2023-08-23 09:18:40'),
(80, 'delete_publications', 'publications', '2023-08-23 09:18:40', '2023-08-23 09:18:40'),
(81, 'browse_publications_categories', 'publications_categories', '2023-08-23 09:19:35', '2023-08-23 09:19:35'),
(82, 'read_publications_categories', 'publications_categories', '2023-08-23 09:19:35', '2023-08-23 09:19:35'),
(83, 'edit_publications_categories', 'publications_categories', '2023-08-23 09:19:35', '2023-08-23 09:19:35'),
(84, 'add_publications_categories', 'publications_categories', '2023-08-23 09:19:35', '2023-08-23 09:19:35'),
(85, 'delete_publications_categories', 'publications_categories', '2023-08-23 09:19:35', '2023-08-23 09:19:35'),
(96, 'browse_courses_categories', 'courses_categories', '2024-01-31 13:20:13', '2024-01-31 13:20:13'),
(97, 'read_courses_categories', 'courses_categories', '2024-01-31 13:20:13', '2024-01-31 13:20:13'),
(98, 'edit_courses_categories', 'courses_categories', '2024-01-31 13:20:13', '2024-01-31 13:20:13'),
(99, 'add_courses_categories', 'courses_categories', '2024-01-31 13:20:13', '2024-01-31 13:20:13'),
(100, 'delete_courses_categories', 'courses_categories', '2024-01-31 13:20:13', '2024-01-31 13:20:13'),
(101, 'browse_courses', 'courses', '2024-01-31 13:22:20', '2024-01-31 13:22:20'),
(102, 'read_courses', 'courses', '2024-01-31 13:22:20', '2024-01-31 13:22:20'),
(103, 'edit_courses', 'courses', '2024-01-31 13:22:20', '2024-01-31 13:22:20'),
(104, 'add_courses', 'courses', '2024-01-31 13:22:20', '2024-01-31 13:22:20'),
(105, 'delete_courses', 'courses', '2024-01-31 13:22:20', '2024-01-31 13:22:20');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-08-22 11:25:48', '2023-08-22 11:25:48');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(2, 'user', 'Normal User', '2023-08-22 11:25:46', '2023-08-22 11:25:46'),
(3, 'auteur', 'Auteurs', '2023-08-24 13:55:32', '2023-08-24 13:55:32'),
(4, 'redateur', 'Redacteurs', '2023-08-24 13:58:39', '2023-08-24 13:58:39');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'SudActu', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Les informations sur l\'actualité socio-politique, scientifique, sportive, éducative, culturelle, humanitaire, judiciaire, sanitaire et toutes les offres d\'emploi en République Démocratique du Congo sur sudActu.net', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/August2023/n9hKk72gHCGTADGDC88U.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\August2023\\zmNLfhGEpcL0rIHWXNSV.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'SudActu', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'l\'actualité en temps réel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/September2023/jrqNgVrrYNhrBv4QfDXU.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '404439641', '', 'text', 1, 'Admin'),
(11, 'site.adresse', 'Adresse', '169, avenue Kasavubu Immeuble Triangle Davier Local B2 Kinshasa - Gombe', NULL, 'text', 6, 'Site'),
(12, 'site.phone', 'Phone', '+(243) 820050090', NULL, 'text', 7, 'Site'),
(13, 'site.email', 'Email', 'jacques@sudactu.net', NULL, 'text', 8, 'Site'),
(14, 'site.secrete_code', 'Code Secret', '2023824', NULL, 'text', 9, 'Site');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-08-22 11:25:48', '2023-08-22 11:25:48'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-08-22 11:25:49', '2023-08-22 11:25:49'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-08-22 11:25:49', '2023-08-22 11:25:49');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `description`, `resume`, `title`, `slug`) VALUES
(2, 1, 'Rossy', 'r.madiengo@itgroup-drc.net', 'users/default.png', NULL, '$2y$10$/aQbaUHp62fJ.LC6ZqaGYe6r1dDA/VAMD8Po6ImvbRCZ83AgMJ4aS', NULL, NULL, '2023-08-22 13:32:28', '2023-08-22 13:32:28', NULL, NULL, NULL, 'rossy'),
(3, 1, 'BOKUNGU BOBOY Jacques', 'boboyjacques@gmail.com', 'users/August2023/4HnILXb5GmhYSGifmzqH.jpg', NULL, '$2y$10$UDUeFZ685iC1JqSxN3FRe.hTKIpZYbSb.DVG3DOhQrPH8vQdE1.9K', 'MUH9txaDfEDTpWhBG9Wh6dIdACNsTQOfsl3Nitljnbh3MBbIWbKYGueZPzfH', '{\"locale\":\"fr\"}', '2023-08-24 12:21:26', '2023-08-24 16:48:34', NULL, NULL, NULL, NULL),
(4, 3, 'Benostan Nseke', 'benostandnseke@gmail.com', 'Auteurs/August2023/WhatsApp Image 2023-07-26 at 12.34.25-1692971221.jpeg', NULL, '$2y$10$amWZzVHOl8Wy4u2kb97PuOg2Vf4b/ugceSTCNj03r22FQaOolL5va', NULL, NULL, '2023-08-25 12:47:02', '2023-08-25 12:47:02', '<p>\r\nLe lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.\r\n</p>\r\n<p>\r\nLe lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.\r\n</p>\r\n<p>\r\nLe lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.\r\n</p>', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.', 'Artiste', 'benostan-nseke'),
(5, 4, 'Glody Boloy', 'glodave@gmail.com', 'users/September2023/BYTZPhQLG3WgQTIQqOFo.jpg', NULL, '$2y$10$TlifAl96FzOnzDso8E4XQOUIfk48bkQSlvmQEMwrRv0Ql5ixMokOW', NULL, '{\"locale\":\"fr\"}', '2023-09-16 04:15:09', '2023-09-16 04:15:09', NULL, NULL, NULL, NULL),
(6, 1, 'Admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$rEfrG8DYIRX0QvyKahgASOSlIr5pglOOLOBzphbcl7aviiJl1UIiu', NULL, '{\"locale\":\"fr\"}', '2023-10-06 10:16:57', '2023-10-16 14:14:20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
