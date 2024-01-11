-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 11 jan. 2024 à 11:12
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
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int DEFAULT NULL,
  `published` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `popular` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `resume`, `description`, `image`, `slug`, `views`, `published`, `created_at`, `updated_at`, `popular`) VALUES
(1, 2, 1, 'Félix Tshisekedi a échangé avec les médaillés congolais', 'Une trentaine de médailles a été remportée par la RDC dans les neuvièmes jeux de la Francophonie à Kinshasa. En solo ou en équipe, les congolais ont défendu les couleurs de leur pays en dépit d’une préparation peu convaincante. Après cette belle campagne, le Président de la République a offert son hospitalité à ces jeunes médaillés d’or, d’argent et de bronze. Ils ont répondu à l’appel ce mardi 15 août, à la cité de l’Union africaine.', '<p>Une trentaine de m&eacute;dailles a &eacute;t&eacute; remport&eacute;e par la RDC dans les neuvi&egrave;mes jeux de la Francophonie &agrave; Kinshasa. En solo ou en &eacute;quipe, les congolais ont d&eacute;fendu les couleurs de leur pays en d&eacute;pit d&rsquo;une pr&eacute;paration peu convaincante. Apr&egrave;s cette belle campagne, le Pr&eacute;sident de la R&eacute;publique a offert son hospitalit&eacute; &agrave; ces jeunes m&eacute;daill&eacute;s d&rsquo;or, d&rsquo;argent et de bronze. Ils ont r&eacute;pondu &agrave; l&rsquo;appel ce mardi 15 ao&ucirc;t, &agrave; la cit&eacute; de l&rsquo;Union africaine.</p>\r\n<p>A part les f&eacute;licitations, les encouragements et l&rsquo;histoire des primes comme on pouvait s&rsquo;y attendre, F&eacute;lix Tshisekedi a &eacute;galement &eacute;voqu&eacute; d&rsquo;autres sujets pour l&rsquo;avenir, notamment des disciplines sportives. Avec de nouvelles infrastructures h&eacute;rit&eacute;es des jeux de la Francophonie, les athl&egrave;tes pourront d&eacute;sormais faire des stages et des pr&eacute;parations aux frais de l\'&Eacute;tat congolais.</p>\r\n<p>&laquo; Vous avez fait la fiert&eacute; du pays et vous nous donnez raison d\'avoir construit les nouvelles infrastructures sportives, vous n&rsquo;irez plus chercher ailleurs. Vos pr&eacute;parations, vos stages, tous seront pris en charge sans probl&egrave;me &raquo;, a dit le Pr&eacute;sident de la R&eacute;publique aux athl&egrave;tes et artistes.</p>\r\n<p>Et d&rsquo;ajouter :&nbsp;</p>\r\n<p>&laquo; J&rsquo;ai demand&eacute; au premier ministre de pr&eacute;parer des primes pour les m&eacute;daill&eacute;s d&rsquo;or, d&rsquo;argent et de bronze. Mais aussi des primes de participation pour ceux qui n&rsquo;ont pas gagn&eacute; de m&eacute;dailles. Tout &ccedil;a pour vous montrer que le gouvernement et votre pr&eacute;sident comptent sur vous &raquo;.</p>', 'articles\\August2023\\i9GCyRNuPpYEAl7pjP3R.jpeg', 'felix-tshisekedi-a-echange-avec-les-medailles-congolais', 86, 1, '2023-08-22 14:23:00', '2023-11-29 07:57:17', 1),
(2, 1, 1, 'Procès Bukanga Lonzo: la citation irrégulièrement signifiée aux prévenus Matata et Groobler, la Cour constitutionnelle a renvoyé l’affaire au 4 septembre', 'La première audience du procès mettant en cause l’ancien Premier Ministre et Sénateur Matata Ponyo, l’ancien Gouverneur de la Banque centrale du Congo Deogratias Mutombo et l’homme d’affaires Sud-africain Christo Groobler s’est brièvement tenue ce lundi 21 août 2023. La citation à prévenu  n’a pas été régulièrement notifiée aux prévenus Matata Ponyo et Deogratias Mutombo. Ainsi, la Haute juridiction a décidé de renvoyer l’affaire au 4 septembre 2023.', '<p>La premi&egrave;re audience du proc&egrave;s mettant en cause l&rsquo;ancien Premier Ministre et S&eacute;nateur Matata Ponyo, l&rsquo;ancien Gouverneur de la Banque centrale du Congo Deogratias Mutombo et l&rsquo;homme d&rsquo;affaires Sud-africain Christo Groobler s&rsquo;est bri&egrave;vement tenue ce lundi 21 ao&ucirc;t 2023. La citation &agrave; pr&eacute;venu &nbsp;n&rsquo;a pas &eacute;t&eacute; r&eacute;guli&egrave;rement notifi&eacute;e aux pr&eacute;venus Matata Ponyo et Deogratias Mutombo. Ainsi, la Haute juridiction a d&eacute;cid&eacute; de renvoyer l&rsquo;affaire au 4 septembre 2023.&nbsp;</p>\r\n<p>&Agrave; l&rsquo;appel de la cause, Christo Groobler et Deogratias Mutombo ont comparu repr&eacute;sent&eacute;s par leurs avocats, alors que Matata Ponyo a comparu uniquement par ses Conseils. V&eacute;rifiant sa saisine, la Cour constitutionnelle a relev&eacute; que l&rsquo;huissier instrumentant a mentionn&eacute; deux adresses pour faire citer le responsable de la soci&eacute;t&eacute; Africom : celles de la RDC et celle de l&rsquo;Afrique du Sud. Face &agrave; l\'impossibilit&eacute; de savoir &agrave; quelle adresse pr&eacute;cis&eacute;ment l&rsquo;exploit a &eacute;t&eacute; notifi&eacute;e, la Cour a conclu &agrave; l\'irr&eacute;gularit&eacute; de la citation. V&eacute;rifiant sa saisine &agrave; l&rsquo;encontre de Matata Ponyo, la Cour a relev&eacute; que la citation a &eacute;t&eacute; signifi&eacute;e &agrave; la commune de Ngaliema alors que l&rsquo;adresse du pr&eacute;venu est bien connue. Elle a &eacute;galement conclu &agrave; l&rsquo;irr&eacute;gularit&eacute; de l&rsquo;exploit.&nbsp;</p>\r\n<p>Non saisie &agrave; l&rsquo;encontre de ces deux pr&eacute;venus, la Cour a instruit le greffier de notifier &agrave; leurs adresses connues. &laquo; Qu&rsquo;on aille instrumenter aux adresses connues &raquo;, a ordonn&eacute; le Pr&eacute;sident de la Cour constitutionnelle, Dieudonn&eacute; Kamuleta Badibanga.</p>\r\n<p>La Cour s&rsquo;est toutefois d&eacute;clar&eacute;e saisie &agrave; l&rsquo;encontre du pr&eacute;venu Deogratias Mutombo, qui a &eacute;t&eacute; identifi&eacute;. Elle a renvoy&eacute; l&rsquo;affaire au 4 septembre pour r&eacute;gulariser la proc&eacute;dure &agrave; l&rsquo;encontre des autres pr&eacute;venus.</p>\r\n<p>DESK JUSTICE</p>', 'articles\\August2023\\iDaJX5XDpyxjvT5yF6fT.jpg', 'proces-bukanga-lonzo-la-citation-irregulierement-signifiee-aux-prevenus-matata-et-groobler-la-cour-constitutionnelle-a-renvoye-l-affaire-au-4-septembre', 101, 1, '2023-08-22 14:24:00', '2023-11-29 12:21:22', 1),
(3, 3, 1, 'RDC : la ministre chargée des personnes Vivant avec Handicap plaide pour une éducation inclusive dans le sous secteur de l’EPST', 'Pour parler de la question de l’éducation inclusive en RDC, qui prendra notamment en compte les personnes vivant avec handicap, la Ministre Déléguée aux Affaires Sociales, chargée des personnes vivant avec handicap et vulnérables, Me Irène Esambo, a rencontré le ministre de l\'Enseignement Primaire, Secondaire et Technique (EPST), Tony Mwaba Kazadi, ce lundi 21 août. Cette rencontre marque, explique-t-on, une avancée dans la quête d\'une éducation équitable pour tous les citoyens, en particulier ceux qui vivent avec un handicap ou sont dans une situation de vulnérabilité.', '<p>Pour parler de la question de l&rsquo;&eacute;ducation inclusive en RDC, qui prendra notamment en compte les personnes vivant avec handicap, la Ministre D&eacute;l&eacute;gu&eacute;e aux Affaires Sociales, charg&eacute;e des personnes vivant avec handicap et vuln&eacute;rables, Me Ir&egrave;ne Esambo, a rencontr&eacute; le ministre de l\'Enseignement Primaire, Secondaire et Technique (EPST), Tony Mwaba Kazadi, ce lundi 21 ao&ucirc;t. Cette rencontre marque, explique-t-on, une avanc&eacute;e dans la qu&ecirc;te d\'une &eacute;ducation &eacute;quitable pour tous les citoyens, en particulier ceux qui vivent avec un handicap ou sont dans une situation de vuln&eacute;rabilit&eacute;.</p>\r\n<p>L\'objectif principal de la discussion &eacute;tait de mettre en place un cadre de collaboration solide entre les minist&egrave;res concern&eacute;s par l\'&eacute;ducation, afin de concr&eacute;tiser des mesures efficaces pour promouvoir l\'&eacute;ducation inclusive. Il a &eacute;t&eacute; &eacute;voqu&eacute; les besoins sp&eacute;cifiques des personnes vivant avec un handicap et celles en situation de vuln&eacute;rabilit&eacute;, en veillant &agrave; ce que leur acc&egrave;s &agrave; une &eacute;ducation de qualit&eacute; soit garanti sans discrimination ni exclusion.</p>\r\n<p>Le ministre de L&rsquo;EPST Tony Mwaba a soulign&eacute; l\'importance de cr&eacute;er un environnement d\'apprentissage qui permette &agrave; chaque apprenant de r&eacute;aliser son plein potentiel, contribuant ainsi &agrave; la construction d\'une soci&eacute;t&eacute; plus juste et &eacute;galitaire.</p>\r\n<p>Pour la ministre de personnes vivant avec handicap, l&rsquo;engagement de son minist&egrave;re &agrave; soutenir activement cette initiative est afin de garantir que les personnes vivant avec un handicap ou en situation de vuln&eacute;rabilit&eacute; aient acc&egrave;s aux opportunit&eacute;s &eacute;ducatives dont elles ont besoin pour s\'&eacute;panouir.</p>\r\n<p>Les deux ministres ont &eacute;galement discut&eacute; des d&eacute;fis actuels li&eacute;s &agrave; l\'&eacute;ducation inclusive et ont &eacute;chang&eacute; des id&eacute;es sur la mani&egrave;re de les surmonter. Ils ont convenu qu\'une approche holistique, impliquant une coop&eacute;ration interminist&eacute;rielle &eacute;troite, soit essentielle pour parvenir &agrave; des r&eacute;sultats tangibles.</p>\r\n<p>Tony Mwaba et Ir&egrave;ne Esambo ont exprim&eacute; leur optimisme quant aux avanc&eacute;es futures dans le domaine de l\'&eacute;ducation inclusive. Ils ont r&eacute;affirm&eacute; leur engagement envers la cr&eacute;ation d\'une soci&eacute;t&eacute; &eacute;ducative v&eacute;ritablement inclusive, o&ugrave; chaque individu, quelle que soit sa situation, a la possibilit&eacute; de d&eacute;velopper ses comp&eacute;tences et de contribuer pleinement &agrave; la soci&eacute;t&eacute;.</p>\r\n<p>Emilie Ipoto, stagiaire IFASIC</p>', 'articles\\August2023\\gPtrmpHMhucGaqZ8pkrn.jpeg', 'rdc-la-ministre-chargee-des-personnes-vivant-avec-handicap-plaide-pour-une-education-inclusive-dans-le-sous-secteur-de-l-epst', 92, 1, '2023-08-22 14:25:10', '2023-11-29 10:59:52', NULL),
(4, 1, 1, 'Félix Tshisekedi consulte les chefs des institutions au sujet notamment de l\'état de siège et des élections', 'Le Président Félix Tshisekedi a réuni ce lundi 21 août les responsables des institutions du pays. Avec le Chef du gouvernement Sama Lukonde, le président du Sénat Modeste Bahati Lukwebo, le premier vice-président de l\'Assemblée nationale André Mbata, Dieudonné Kamuleta président de la Cour constitutionnelle et du Conseil Supérieur de la Magistrature, Félix Tshisekedi a abordé des questions importantes liées à la bonne marche du pays, en toile de fond l\'état de siège une semaine après la table ronde son évaluation.', '<p>Le Pr&eacute;sident F&eacute;lix Tshisekedi a r&eacute;uni ce lundi 21 ao&ucirc;t les responsables des institutions du pays. Avec le Chef du gouvernement Sama Lukonde, le pr&eacute;sident du S&eacute;nat Modeste Bahati Lukwebo, le premier vice-pr&eacute;sident de l\'Assembl&eacute;e nationale Andr&eacute; Mbata, Dieudonn&eacute; Kamuleta pr&eacute;sident de la Cour constitutionnelle et du Conseil Sup&eacute;rieur de la Magistrature, F&eacute;lix Tshisekedi a abord&eacute; des questions importantes li&eacute;es &agrave; la bonne marche du pays, en toile de fond l\'&eacute;tat de si&egrave;ge une semaine apr&egrave;s la table ronde son &eacute;valuation.</p>\r\n<p>\"Il s\'est agi principalement des questions s&eacute;curitaires parce que &ccedil;a reste la priorit&eacute; des priorit&eacute;s au niveau du pays, ce sont des questions qui lui sont ch&egrave;res et une &eacute;valuation un peu des processus dans lesquels nous sommes engag&eacute;s dont celui du processus de paix de Nairobi que les engagements que nous avons avec la v&eacute;rification de Luanda\", a dit le Premier ministre Sama Lukonde.</p>\r\n<p>Le cadre interinstitutionnel a aussi &eacute;voqu&eacute; \"les interactions avec les diff&eacute;rentes communaut&eacute;s notamment l\'EAC, la SADC et l\'Union Africaine elle-m&ecirc;me\". Et d&rsquo;ajouter: \"cette question est intimement li&eacute;e &agrave; la question de l\'&eacute;tat de si&egrave;ge &hellip; et donc aussi une revue par rapport &agrave; cette question de l\'&eacute;tat de si&egrave;ge\"</p>\r\n<p>Le processus &eacute;lectoral en cours au pays &eacute;tait &eacute;galement abord&eacute; au cours de cette r&eacute;union.&nbsp;</p>\r\n<p>\"Nous sommes engag&eacute;s dans le processus [&eacute;lectoral] qui doit aboutir d\'ici le 20 d&eacute;cembre &agrave; ces organisations g&eacute;n&eacute;rales tant au niveau pr&eacute;sidentiel, l&eacute;gislatives nationales, provinciales et communales. C\'&eacute;tait important qu\'on aborde un peu ces sujets importants. Nous l\'avons fait de mani&egrave;re &agrave; ce que des orientations pr&eacute;cises nous soient donn&eacute;es pour maintenir le cap\", a soulign&eacute; le chef du gouvernement.</p>\r\n<p>Cette r&eacute;union autour du Chef de l\'&Eacute;tat F&eacute;lix Tshisekedi intervient quelques jours apr&egrave;s la table ronde qui a planch&eacute; sur l\'avenir de l\'&eacute;tat de si&egrave;ge encore en vigueur dans les provinces de l\'Ituri et du Nord-Kivu. &Agrave; l\'issue des travaux, une tendance majoritaire s\'est prononc&eacute;e pour la lev&eacute;e de cette mesure plus de deux ans apr&egrave;s suite aux r&eacute;sultats mitig&eacute;s.</p>\r\n<p>Cl&eacute;ment MUAMBA</p>', 'articles\\August2023\\oGagW9aYtXiR4Yz9TOO3.jpg', 'felix-tshisekedi-consulte-les-chefs-des-institutions-au-sujet-notamment-de-l-etat-de-siege-et-des-elections', 99, 1, '2023-08-22 14:26:00', '2023-11-29 07:05:55', 1),
(5, 7, 1, 'Procès Mwangachuchu : Le réquisitoire du ministère public attendu ce mardi 22 août', 'Le ministère public va rendre son réquisitoire ce mardi 22 août 2023 dans l\'affaire qui met en cause le député national Édouard Mwangachuchu, poursuivi pour trahison, participation à un mouvement insurrectionnel, espionnage et détention illégale d’armes de guerre.', '<p>Le minist&egrave;re public va rendre son r&eacute;quisitoire ce mardi 22 ao&ucirc;t 2023 dans l\'affaire qui met en cause le d&eacute;put&eacute; national &Eacute;douard Mwangachuchu, poursuivi pour trahison, participation &agrave; un mouvement insurrectionnel, espionnage et d&eacute;tention ill&eacute;gale d&rsquo;armes de guerre.</p>\r\n<p>Apr&egrave;s une trentaine d\'audiences tenues en phase d&rsquo;instruction &agrave; l&rsquo;audience, la Haute cour militaire s&rsquo;est dite \"suffisamment &eacute;clair&eacute;e\" et va recevoir aussi les plaidoiries des parties ce mardi.</p>\r\n<p>Selon la d&eacute;fense, les pr&eacute;ventions retenues par l\'Auditeur G&eacute;n&eacute;ral des Forces Arm&eacute;es de la RDC contre Edouard Mwangachuchu ne sont pas prouv&eacute;es. Elle accuse m&ecirc;me les services d\'avoir plac&eacute; une cache d\'armes &agrave; la SMB pour accuser son client de d&eacute;tention ill&eacute;gale d\'armes et de participation &agrave; un mouvement insurrectionnel.&nbsp;</p>\r\n<p>Par ailleurs, son co-pr&eacute;venu, le policier Robert Mushamalirwa, estime que l\'objectif de ce proc&egrave;s est de ravir la mine &agrave; Mwangachuchu et qu\'il n&rsquo;y a jamais eu une cache d\'armes &agrave; la SMB.</p>\r\n<p>&Eacute;douard Mwangachuchu et son co-pr&eacute;venu sont soup&ccedil;onn&eacute;s d&rsquo;entretenir des liens avec les rebelles du M23. Ils sont poursuivis pour trahison, participation &agrave; un mouvement insurrectionnel, espionnage et d&eacute;tention ill&eacute;gale d&rsquo;armes de guerre.&nbsp;</p>\r\n<p>Ivan Kasongo</p>', 'articles\\August2023\\ncwXfawf1eCFXNmL7zau.jpg', 'proces-mwangachuchu-le-requisitoire-du-ministere-public-attendu-ce-mardi-22-aout', 112, 1, '2023-08-22 14:26:00', '2023-11-29 12:37:00', NULL),
(6, 3, 3, 'RDC: Poursuite de la publication des résultats  de l\'examen d\'Etat édition 2023 par le Ministère de l\'ESPST.', 'RDC: Poursuite de la publication des resultats de l\'examen d\'Etat édition 2023 par le Ministère de l\'EPST.', '<p>RDC: Poursuite de la publication des resultats de l\'examen d\'Etat &eacute;dition 2023 par le Minist&egrave;re de l\'EPST.</p>\r\n<p>Le Minist&egrave;re en charge de l\'Enseignement primaire, secondaire et technique continue la publication des r&eacute;sultats de ces &eacute;preuves. Les provinces choisies ce Jeudi 24 Aout sont : une partie de KInshasa, Maniema et Tshopo.</p>', 'articles/August2023/R5NLpw8Hz17dtOodLWtd.png', 'rdc-poursuite-de-la-publication-des-resultats-de-l-examen-d-etat-edition-2023-par-le-ministere-de-l-espst', 112, 1, '2023-08-24 16:25:25', '2023-11-29 10:45:09', 1),
(7, 3, 3, 'Professeur José TEGBESA : Biographie, parcours professionnel et convictions politiques.', 'Professeur José TEGBESA : Biographie, parcours professionnel et convictions politiques.', '<p>Professeur Jos&eacute; TEGBESA MOVUDA : Biographie, parcours professionnel, et convictions politiques.</p>\r\n<p>Le professeur Jos&eacute; TEGBESA MOVUDA est n&eacute; le 28 Septembre 1965 &agrave; Nyasoko dans le groupement de BOKONZI, secteur de BOMBOMA, Territoire de Kungu province de sud-Ubangi en R&eacute;publique D&eacute;mocratique du Congo de l\'union conjugale de Monsieur Pascal TEGBESA et de Madame V&eacute;ronique MOSIMO, tous originaires de Banga-Mongbandi dans le territoire de Budjala.&nbsp;</p>\r\n<p>N&eacute; des parents tr&egrave;s introduits dans le catholicisme, l\'adolescent Jos&eacute; TEGBESA et ses fr&egrave;res grandiront dans une atmosph&egrave;re tr&egrave;s conviviale et furent admir&eacute;s par beaucoup d\'adultes de leur village gr&acirc;ce &agrave; l\'&eacute;ducation qu\'ils ont re&ccedil;u aupr&egrave;s de leurs parents.&nbsp;</p>\r\n<p>Tr&egrave;s vertueux et d&eacute;vou&eacute; dans la vie des pri&egrave;res, un h&eacute;ritage qu\'il garde de ses parents, le jeune Jos&eacute; TEGBESA perp&eacute;tua ses bonnes habitudes jusqu\'&agrave; sa vie d\'adulte.&nbsp;</p>\r\n<p>En sus, qu\'il soit entendu que le Professeur Jos&eacute; TEGBESA est le huiti&egrave;me fils dans l\'ordre de naissance des enfants du couple TEGBESA.</p>\r\n<p>SCOLARIT&Eacute;</p>\r\n<p>A l\'instar de tous bons parents, le couple TEGBESA &eacute;tait tr&egrave;s pr&eacute;occup&eacute; par l\'&eacute;ducation et la formation intellectuelle de sa prog&eacute;niture. Pour atteindre ses fins, d\'&eacute;normes efforts et sacrifices ont &eacute;t&eacute; faits pour assurer la scolarit&eacute; des enfants.&nbsp; Dans ce cadre, le jeune Jos&eacute; TEGBESA fit ses d&eacute;buts scolaires &agrave; Likaw o&ugrave; il fit les &eacute;tudes primaires et au petit s&eacute;minaire de Yakamba et en fin &agrave; l\'institut du 20 Mai sous le mentorat de Monsieur Philippe MOBEBA alors Pr&eacute;fet de l\'&eacute;cole en ces ann&eacute;es-l&agrave;.&nbsp;</p>\r\n<p>Initi&eacute; &agrave; la philosophie et &agrave; la litt&eacute;rature latino-romaine, mieux aux belles lettres en lisant et traduisant les textes inspirants de Cic&eacute;ron, Tite-Live et autres...., le jeune dipl&ocirc;m&eacute; retourna dans son terroir o&ugrave; il presta pendant quelques ann&eacute;es en tant qu\'enseignant des cours de langue &agrave; BANGA-BOLA. Notons que c\'est durant cette p&eacute;riode que le Professeur Jos&eacute; TEGBESA fit la rencontre de la belle et tendre Gilbertine MOVULANGO qui devint apr&egrave;s quelques ann&eacute;es son &eacute;pouse et m&egrave;re de ses enfants.</p>\r\n<p>Toujours soucieux de parfaire ses connaissances, il d&eacute;cida de rejoindre Kinshasa pour y d&eacute;buter ses &eacute;tudes universitaires en sciences &eacute;conomiques et de gestion. Apr&egrave;s quoi, il s\'inscrit au DEA &agrave; l\'UPN o&ugrave; il a d&eacute;fendu un m&eacute;moire en &eacute;conomie appliqu&eacute;e.&nbsp;</p>\r\n<p>Toujours pas satisfait et Fid&egrave;le &agrave; ses principes du jusqu\'au-boutisme, Jos&eacute; TEGBESA rejoignit l\'&eacute;cole doctorale de l\'UPC o&ugrave; il a soutenu une th&egrave;se en administration des affaires en 2018 devant un jur&eacute; constitu&eacute; de grandes cr&egrave;mes de l\'intelligentsia congolaise.&nbsp;</p>\r\n<p>VIE CONJUGALE</p>\r\n<p>Conform&eacute;ment aux recommandations bibliques telles reprises dans Gen&egrave;se 1,18, le Professeur Jos&eacute; TEGBESA s\'est mari&eacute; &agrave; Madame Gilbertine MOVULANGO avec qui, ils ont fond&eacute; une famille tr&egrave;s &eacute;panouie. Notons que le professeur Jos&eacute; TEGBESA est le p&egrave;re d\'une famille nombreuse dont six enfants encore &agrave; sa charge.&nbsp;</p>\r\n<p>CONVICTIONS POLITIQUES</p>\r\n<p>Le Professeur Jos&eacute; TEGBESA est l\'un des fervents soutiens du Pr&eacute;sident de la R&eacute;publique F&eacute;lix Tshisekedi dans le Sud-Ubangi o&ugrave; il est tr&egrave;s &eacute;cout&eacute; gr&acirc;ce &agrave; sa stature d\'intellectuel de la contr&eacute;e. Nombreux sont ceux qui attestent qu\'on l\'a toujours appercu rassembler des foules pour &eacute;voquer les grandes r&eacute;alisations du chef de l\'&Eacute;tat F&eacute;lix-Antoine Tshisekedi dans son fief &eacute;lectoral de Budjala o&ugrave; il est candidat d&eacute;put&eacute; national pour le compte de l\'UDPS.&nbsp;</p>\r\n<p>Le professeur Jos&eacute; TEGBESA travaille dur pour la reconduction du chef de l\'&Eacute;tat F&eacute;lix-Antoine Tshisekedi &agrave; l\'issue des prochaines &eacute;ch&eacute;ances &eacute;lectorales qui pointent &agrave; l\'horizon.&nbsp;</p>\r\n<p>Parcours professionnel</p>\r\n<p>Le professeur Jos&eacute; TEGBESA a occup&eacute; plusieurs postes dans le syst&egrave;me &eacute;ducatif congolais avant d\'&ecirc;tre nomm&eacute; Directeur G&eacute;n&eacute;ral de l\'ISP GEMENA qu\'il g&egrave;re, &agrave; ce jour avec tactes et patriotisme.&nbsp;</p>\r\n<p>Vertus sociales&nbsp;</p>\r\n<p>Bien que socialement haut plac&eacute;, le professeur Jos&eacute; TEGBESA reste accessible &agrave; tous ceux qui envisagent l\'atteindre ou l\'approcher. Contrairement &agrave; plusieurs qui oublient facilement amis d\'enfance, condisciples et bien d\'autres, le professeur Jos&eacute; TEGBESA reste toujours &agrave; l\'&eacute;coute de ceux qui viennent &agrave; lui. Tr&egrave;s vertueux avec un sens de philanthropie sans &eacute;quivalence ailleurs, le professeur Jos&eacute; TEGBESA ne cesse d\'intriguer ceux qui le c&ocirc;toient.&nbsp;</p>\r\n<p>Puisse plaire &agrave; Dieu de r&eacute;aliser tous les projets du Jos&eacute; TEGBESA pour le bien-&ecirc;tre du Sud-Ubangi, dont Budjala son terroir.&nbsp;</p>\r\n<p>Article de presse r&eacute;alis&eacute; par la r&eacute;daction de sudactu.net</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/eTsDJCd21jN72zVSUNSx.jpg', 'professeur-jose-tegbesa-biographie-parcours-professionnel-et-convictions-politiques', 132, 1, '2023-08-25 07:46:00', '2023-11-29 10:20:57', 1),
(8, 4, 3, 'Fally Ipupa annonce un concert pour ce Dimanche 27 Août au terrain minucipal de Bandalungwa à l\'occasion de la commémoration du dixième anniversaire de la fondation qui porte son nom.', 'Fally Ipupa annonce un concert pour ce Dimanche 27 Août au terrain minucipal de Bandalungwa à l\'occasion de la commémoration du dixième anniversaire de la fondation qui porte son nom.', '<p>Fally Ipupa annonce un concert populaire ce Dimanche 27 Ao&ucirc;t au terrain minucipal de Bandalungwa &agrave; l\'occasion de la comm&eacute;moration du dixi&egrave;me anniversaire de la fondation qui porte son nom.</p>\r\n<p>Tous les warriors se mobilisent pour rehausser de leurs pr&eacute;sences cet &eacute;v&eacute;nement musical.&nbsp;</p>', 'articles/August2023/hZPOAIrM9dJt4zC2QwlB.jpg', 'fally-ipupa-annonce-un-concert-pour-ce-dimanche-27-aout-au-terrain-minucipal-de-bandalungwa-a-l-occasion-de-la-commemoration-du-dixieme-anniversaire-de-la-fondation-qui-porte-son-nom', 86, 1, '2023-08-25 08:51:15', '2023-11-29 07:54:51', 0),
(9, 1, 3, 'Corneille Naanga : Exil politique ou stratégie de victimisation ?', 'Corneille Naanga : Exil politique ou stratégie de victimisation ?', '<p>Corneille Naanga : Exil politique ou strat&eacute;gie de victimisation ?&nbsp;</p>\r\n<p>Pour rappel, l\'ancien pr&eacute;sident de la CENI en RDC Corneille Naanga a d&eacute;clar&eacute; &agrave; la presse internationale ne pas &ecirc;tre en s&eacute;curit&eacute; en R&eacute;publique D&eacute;mocratique du Congo son pays &agrave; la suite des intimidations et menaces du r&eacute;gime de Tshisekedi, qui lui a retir&eacute; sa garde rapproch&eacute;e depuis qu\'il a fait savoir ses intentions d\'etre candidat aux &eacute;lections pr&eacute;sidentielles a venir.&nbsp;</p>\r\n<p>A en croire cet ancien patron de la CENI, le processus &eacute;lectoral en cours dans son pays est loin d\'&ecirc;tre cr&eacute;dible et apais&eacute;.&nbsp;</p>\r\n<p>Il appelle pour cel&agrave; &agrave; tous les congolais de se lever comme un seul homme contre la fraude qui se pr&eacute;pare.&nbsp;</p>', 'articles/August2023/v4kIAbyCtkj0DneuZPAp.jpg', 'corneille-naanga-exil-politique-ou-strategie-de-victimisation', 307, 1, '2023-08-25 09:04:16', '2023-11-29 08:45:37', 0),
(10, 1, 3, 'RDC: Création d\'un nouveau service dénommé conseil nation de cyber-defense au sein du cabinet du président Félix Tshisekedi', 'RDC: Création d\'un nouveau service dénommé conseil nation de cyber-defense au sein du cabinet du président Félix Tshisekedi', '<p>RDC: Cr&eacute;ation d\'un nouveau service d&eacute;nomm&eacute; conseil nation de cyber-defense au sein du cabinet du pr&eacute;sident F&eacute;lix Tshisekedi.&nbsp;</p>\r\n<p>Une ordonnance a &eacute;t&eacute; lue sur la cha&icirc;ne nationale RTNC, une ordonnance du pr&eacute;sident F&eacute;lix Tshisekedi annon&ccedil;ant la cr&eacute;ation d\'un nouveau service d&eacute;nomm&eacute; conseil national de cyber-defense &agrave; sa t&ecirc;te certains chavaliers du monde de s&eacute;curit&eacute;.&nbsp;</p>', 'articles/August2023/Ap3tKSm5Kp1SBh4GN0tZ.jpg', 'rdc-creation-d-un-nouveau-service-denomme-conseil-nation-de-cyber-defense-au-sein-du-cabinet-du-president-felix-tshisekedi', 129, 1, '2023-08-25 09:58:45', '2023-11-29 06:58:21', 0),
(11, 1, 3, 'Afrique : La junte militaire nigérienne donne 48 heures à l\'ambassadeur Français à Niamey pour quitter le sol Nigérien.', 'Afrique : La junte militaire nigérienne donne 48 heures à l\'ambassadeur Français à Niamey pour quitter le sol Nigérien.', '<p>Afrique : La junte militaire nig&eacute;rienne donne 48 heures &agrave; l\'ambassadeur Fran&ccedil;ais &agrave; Niamey pour quitter le sol Nig&eacute;rien.&nbsp;</p>\r\n<p>Tout est parti du refus de l\'ambassadeur Fran&ccedil;ais &agrave; Niamey de r&eacute;pondre &agrave; une invitation du minist&egrave;re des affaires &eacute;trang&egrave;res du Niger. En plus, les autorit&eacute;s de Niamey reprochent &agrave; cet ambassadeur les actes de subversion du gouvernement fran&ccedil;ais contre les actions de laa junte militaire nig&eacute;rienne.</p>\r\n<p>Pour la France, les militaires au pouvoir au Niger n\'ont pas qualit&eacute; d\'expulser un ambassadeur dont l\'agr&eacute;ment a &eacute;t&eacute; act&eacute; par les autorit&eacute;s l&eacute;gitimement &eacute;lues.&nbsp;</p>\r\n<p>Une affaire &agrave; suivre.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/yIz7rE1GE2nL3VxhbuO2.jpeg', 'afrique-la-junte-militaire-nigerienne-donne-48-heures-a-l-ambassadeur-francais-a-niamey-pour-quitter-le-sol-nigerien', 100, 1, '2023-08-26 07:18:00', '2023-11-29 07:05:28', 0),
(12, 1, 3, 'RDC: Le Président Burundais Evariste Ndayishimiye est arrivé cet après -midi à Kinshasa pour une visite officielle.', 'RDC: Le Président Burundais Evariste Ndayishimiye est arrivé cet après -midi à Kinshasa pour une visite officielle.', '<p>RDC: Le Pr&eacute;sident Burundais Evariste Ndayishimiye est arriv&eacute; cet apr&egrave;s -midi &agrave; Kinshasa pour une visite officielle.</p>\r\n<p>En vue de consolider les liens qui unissent les deux peuples, congolais et burundais, le Pr&eacute;sident Evariste Ndayishimiye est en visite officielle &agrave; Kinshasa o&ugrave; il a &eacute;t&eacute; accueilli &agrave; sa d&eacute;cente de l\'avion par le premier ministre Congolais Jean-Michel SAMA LOKONDE.</p>\r\n<p>Dans son programme, il va rencontrer le Pr&eacute;sident F&eacute;lix Tshisekedi avec qui, ils vont parler s&eacute;curit&eacute;, coop&eacute;ration bilat&eacute;rale et signature des accords.</p>\r\n<p>&nbsp;</p>', 'articles/August2023/nJ01TKwu9pfD7PGnh07g.jpg', 'rdc-le-president-burundais-evariste-ndayishimiye-est-arrive-cet-apres-midi-a-kinshasa-pour-une-visite-officielle', 116, 1, '2023-08-27 17:41:47', '2023-11-29 07:57:52', 1),
(13, 1, 3, 'Affaire détournement des minerais dans la province du Haut-Katanga. Les auditions à la DEMIAP se poursuivent.', 'Affaire détournement des minerais dans la province du Haut-Katanga. Les auditions à la DEMIAP se poursuivent.', '<p>Affaire d&eacute;tournement des minerais dans la province du Haut-Katanga. Les auditions &agrave; la DEMIAP se poursuivent.</p>\r\n<p>Apr&egrave;s l\'arrestation du g&eacute;n&eacute;ral, c\'est le tour de l\'ancien ministre de l\'int&eacute;rieur de la m&ecirc;me province de compara&icirc;tre devant les officiers du renseignement militaire.&nbsp;</p>\r\n<p>Dossier &agrave; suivre...</p>\r\n<p>&nbsp;</p>', 'articles/August2023/rM2VoFIJGk5OKIbUdgt1.jpg', 'affaire-detournement-des-minerais-dans-la-province-du-haut-katanga-les-auditions-a-la-demiap-se-poursuivent', 305, 1, '2023-08-27 17:45:52', '2023-11-29 07:06:35', 1),
(14, 1, 3, 'Gabon: A la veille des élections, le gouvernement Gabonais suspend la diffusion de RFI et de France 24 dans le pays.', 'Gabon: A la veille des élections, le gouvernement Gabonais suspend la diffusion de RFI et de France 24 dans le pays.', '<p>Gabon: A la veille des &eacute;lections, le gouvernement Gabonais suspend la diffusion de RFI et de France 24 dans le pays.&nbsp;</p>\r\n<p>La mesure est tomb&eacute;e, la radio France et la cha&icirc;ne fran&ccedil;aise France 24 sont temporairement suspendues au Gabon durant cette p&eacute;riode de vote. Aucune autre information n\'a &eacute;t&eacute; donn&eacute;e par les autorit&eacute;s comp&eacute;tentes quant &agrave; cette mesure. Notons que le Gabon est le cinqui&egrave;me pays africain &agrave; suspendre la diffusion sur son sol des cha&icirc;nes fran&ccedil;aises.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/qPXyTkWSEb5iCQxGfgq7.jpg', 'gabon-a-la-veille-des-elections-le-gouvernement-gabonais-suspend-la-diffusion-de-rfi-et-de-france-24-dans-le-pays', 477, 1, '2023-08-27 17:52:25', '2023-11-29 07:03:56', 0),
(15, 5, 3, 'RDC: Treize sujets chinois arrêtés à Malemba-Kulu Ur traffic illicite de l\'or.', 'RDC: Treize sujets chinois arrêtés à Malemba-Kulu pour traffic illicite de l\'or.', '<p>RDC: Treize sujets chinois arr&ecirc;t&eacute;s &agrave; Malemba-Kulu pour exploitation et traffic illicite de l\'or.&nbsp;</p>\r\n<p>Selon l\'administrateur du territoire de Malemba-Kulu, ces sujets chinois ont m&ecirc;me am&eacute;nag&eacute; un a&eacute;rodrome pour l\'&eacute;vacuation des minerais qu\'ils exploitent illicitement. Il a confi&eacute; qu\'ils sont en train les mains de la justice congolaise.&nbsp;</p>', 'articles/August2023/xTNjpEFNr2HGZGsVl6mF.jpg', 'rdc-treize-sujets-chinois-arretes-a-malemba-kulu-ur-traffic-illicite-de-l-or', 326, 1, '2023-08-28 06:41:00', '2023-11-29 10:55:14', 0),
(16, 1, 3, 'RDC: Retour de Moïse Katumbi au pays après un long séjour à l\'étranger', 'RDC: Retour de Moïse Katumbi au pays après un long séjour à l\'étranger .', '<p>Retour de Mo&iuml;se Katumbi au pays apr&egrave;s un long s&eacute;jour &agrave; l\'&eacute;tranger.&nbsp;</p>\r\n<p>Il est 18heures &agrave; Lubumbashi, l\'avion transportant l\'opposant Mo&iuml;se Katumbi a att&eacute;ri &agrave; l\'a&eacute;roport de Lubumbashi. Rappelons que lors de sa tourn&eacute;e &agrave; l\'&eacute;tranger, Mo&iuml;se Katumbi a rencontr&eacute; les grandes personnalit&eacute;s tant du monde politique que du football.&nbsp;</p>', 'articles/August2023/TPKq4yuzDiZ37QVvI814.jpg', 'rdc-retour-de-moise-katumbi-au-pays-apres-un-long-sejour-a-l-etranger', 115, 1, '2023-08-28 06:46:15', '2023-11-29 07:51:58', 0),
(17, 1, 3, 'Gabon: Coup d\'État en cours au Gabon.', 'Gabon: Coup d\'État en cours au Gabon.', '<p>Gabon: Coup d\'&Eacute;tat en cours au Gabon.</p>\r\n<p>Les militaires Gabonais annoncent avoir pris le pouvoir au lendemain de la publication des r&eacute;sultats des &eacute;lections pr&eacute;sidentielles du 26 Ao&ucirc;t 2023 dernier.&nbsp;</p>\r\n<p>D\'apres le communiqu&eacute; lu t&ocirc;t ce matin &agrave; la t&eacute;l&eacute;vision, une chaine priv&eacute;e se trouvant &agrave; la pr&eacute;sidence, les militaires disent avoir mis fin au r&eacute;gime Bongo et dissout toutes les institutions de la R&eacute;publique.&nbsp;</p>\r\n<p>Le Pr&eacute;sident Bongo est irr&eacute;trouvable, certaines sources &eacute;voquent son arrestation par les militaires.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/HOpIQlEnpPkPa3dji5U9.jpg', 'gabon-coup-d-etat-en-cours-au-gabon', 126, 1, '2023-08-30 06:57:44', '2023-11-29 07:03:39', 1),
(18, 1, 3, 'Voici le Général Olingui Nguema, le chef des putschistes Gabonais.', 'Voici le Général Olingui Nguema, le chef des putschistes Gabonais .', '<p>Voici le G&eacute;n&eacute;ral Olingui Nguema, le chef des putschistes Gabonais .</p>\r\n<p>Cet officier de l\'arm&eacute;e Gabonaise est pr&eacute;sent&eacute; comme le chef des putschistes qui ont destitu&eacute; la nuit derni&egrave;re le pr&eacute;sident Ali Bongo au pouvoir. Jusqu\'&agrave; hier soir, il &eacute;tait le chef de la garde r&eacute;publicaine avant de tourner ses armes contre le pouvoir dont il &eacute;tait le protecteur.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/QWAgHwwzQvPYNISAAnOK.jpg', 'voici-le-general-olingui-nguema-le-chef-des-putschistes-gabonais', 148, 1, '2023-08-30 12:18:00', '2023-11-29 07:53:09', 1),
(19, 1, 3, 'Gabon: Le président Ali Bongo s\'exprime depuis sa résidence.', 'Gabon: Le président Ali Bongo s\'exprime depuis sa résidence.', '<p>Depuis la r&eacute;sidence o&ugrave; il est retenu par les putschistes Gabonais, le pr&eacute;sident Ali Bongo s\'exprime et appelle ses amis et connaissances &agrave; faire assez de bruits (revendications) pour exiger son r&eacute;tablissement au pouvoir.&nbsp;</p>\r\n<p>Il dit en outre ne pas savoir o&ugrave; se trouve sa femme et ses enfants qui, eux sont retenus ailleurs par les m&ecirc;mes putschistes.&nbsp;</p>', 'articles/August2023/DYtlGdw8WlhUpZ5RRVmv.jpg', 'gabon-le-president-ali-bongo-s-exprime-depuis-sa-residence', 138, 1, '2023-08-30 14:41:31', '2023-11-29 07:03:49', 0),
(20, 1, 3, 'Ferdinand Kambere: Invite le pouvoir de Kinshasa à se servir de la leçon du coup d\'État au Gabon.', 'Ferdinand Kambere: le pouvoir de Kinshasa doit se servir de la leçon du coup d\'État au Gabon.', '<p>Ferdinand Kambere: le pouvoir de Kinshasa doit se servir de la le&ccedil;on du coup d\'&Eacute;tat au Gabon.&nbsp;</p>\r\n<p>Cadre du PPRD, parti politique de l\'ancien pr&eacute;sident de la R&eacute;publique Joseph Kabila. Pour lui, les tenants du pouvoir de Kinshasa doivent se servir de ces le&ccedil;ons et surtout honorer Joseph Kabila qui est l\'artisan de l\'alternance pacifique dont ils sont b&eacute;n&eacute;ficiaires.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/August2023/aa7909jxx0MPcOU088pW.jpg', 'ferdinand-kambere-invite-le-pouvoir-de-kinshasa-a-se-servir-de-la-lecon-du-coup-d-etat-au-gabon', 366, 1, '2023-08-30 17:36:04', '2023-11-29 07:57:07', 0),
(21, 4, 2, 'Devant la Maison Blanche, le titre Bizorbi de chanteur Congolais ferre gola fait danser le monde', 'la chanson fait danser tout le monde. Le rythme est entraînant, les paroles sont simples et entraînantes, et la mélodie est accrocheuse. Il est difficile de ne pas se mettre à danser quand on écoute cette chanson.', '<p>Quelques fans de l\'artiste trouv&eacute;s devant la maison blanche en train de danser la chanson bizorbi (<a title=\"Bizorbi &agrave; la maison blanche\" href=\"https://youtube.com/shorts/afkfJtNwvQI?si=_rHJ9mg2pxSgnwtw\" target=\"_blank\" rel=\"noopener\">voir la vid&eacute;o</a>) de l\'artiste congolais <a title=\"Profil de Ferre Gola\" href=\"https://www.facebook.com/ferreGolaOfficiel\" target=\"_blank\" rel=\"noopener\">Ferre Gola</a> . Depuis sa sortie officielle, la chanson fait danser tout le monde.</p>\r\n<p>Le rythme est entra&icirc;nant, les paroles sont simples et entra&icirc;nantes, et la m&eacute;lodie est accrocheuse. Il est difficile de ne pas se mettre &agrave; danser quand on &eacute;coute cette chanson.</p>\r\n<p>La chanson met tout le monde d\'accord et fait oublier les soucis. Elle est parfaite pour une soir&eacute;e dansante ou un &eacute;v&eacute;nement festif.</p>', 'articles/September2023/QE37AkKNBnU5Kvs0xi0v.jpeg', 'devant-la-maison-blanche-le-titre-bizorbi-de-chanteur-congolais-ferre-gola-fait-danser-le-monde', 246, 1, '2023-09-01 09:07:00', '2023-11-29 07:57:47', 0),
(22, 1, 3, 'Goma: Répression violente d\'une manifestation anti-MONUSCO à Goma', 'Goma: Répression violente d\'une manifestation anti-MONUSCO à Goma.', '<p>Goma: R&eacute;pression violente d\'une manifestation anti-MONUSCO &agrave; Goma.</p>\r\n<p>Ce jeudi 31 Ao&ucirc;t 2023, eut lieu une manifestation contre les forces &eacute;trang&egrave;res d&eacute;ploy&eacute;es dans le nord-Kivu. Les forces de l\'EAC et de la MONUSCO &eacute;taient les cibles des manifestants. Apr&egrave;s l\'intervention de la police et l\'arm&eacute;e congolaises envoy&eacute;es pour emp&ecirc;cher la tenue de cette manifestation, on d&eacute;nombre tristement plus de 45 civils tu&eacute;s et une centaine d\'autres bless&eacute;s. On d&eacute;nombre &eacute;galement des morts du c&ocirc;t&eacute; des forces de l\'ordre mais surtout des bless&eacute;s.&nbsp;</p>\r\n<p>L\'opposition congolaise est vent debout par rapport &agrave; cette situation qu\'elle qualifie de massacre organis&eacute; par les agents de l\'&Eacute;tat.&nbsp;</p>\r\n<p>La repr&eacute;sentante de la MONUSCO se dit choqu&eacute;e et d&eacute;plore l\'attitude guerri&egrave;re des manifestants venus piller, et surtout minus des armes blanches.&nbsp;</p>\r\n<p>Du c&ocirc;t&eacute; des autorit&eacute;s gouvernementales, on d&eacute;plore ces incidents tout en d&eacute;plorant l\'attidude des manifestants. Toutefois, le porte-parole a fait savoir que le gouvernement entend avec impatience que les responsabilit&eacute;s des uns et des autres soient &eacute;tablies apr&egrave;s les enqu&ecirc;tes qui sont en cours.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/September2023/rhSC9dlfbdOKfOiKEGjp.jpeg', 'goma-repression-violente-d-une-manifestation-anti-monusco-a-goma', 109, 1, '2023-09-01 12:12:00', '2023-11-29 06:14:31', 0),
(23, 1, 3, 'Donatien SHOLE: Il est très important que les élections avenir soient conseilles pour éviter le germe des tentions dans le pays.', 'Donatien SHOLE: Il est très important que les élections avenir soient conseilles pour éviter le germe des tentions dans le pays.', '<p>Intervenant sur Top Congo, le c&eacute;l&eacute;brissime membre du clerg&eacute; catholique congolais Abb&eacute; SHOLE, d&eacute;sormais Mgr. SHOLE s\'est exprim&eacute; au nom de la CENCO dont il est secr&eacute;taire g&eacute;n&eacute;ral en affirmant qu\'il est un imp&eacute;ratif pour la CENI et les autorit&eacute;s du pays de faire en sorte que le processus &eacute;lectoral en cours dans le pays soit consensuel pour ne pas faire le lit de l\'affairisme des acteurs politiques courageux qui pourraient profiter de cette d&eacute;liquescence.&nbsp;</p>\r\n<p>Dans le m&ecirc;me ordre, au nom de l\'organisation qu\'il repr&eacute;sente (CENCO), il se propose pour jouer les bons offices. En fin, il a profit&eacute; pour lancer un appel aux acteurs politiques qui pr&eacute;f&egrave;rent s\'abstenir de revenir dans la course car dit-il, la CENCO d&eacute;ployera des observateurs dans tous les bureaux de vote pour superviser ces &eacute;lections.&nbsp;</p>', 'articles/September2023/tduvqhYN69cYBOGKmqRZ.jpg', 'donatien-shole-il-est-tres-important-que-les-elections-avenir-soient-conseilles-pour-eviter-le-germe-des-tentions-dans-le-pays', 106, 1, '2023-09-01 12:24:00', '2023-11-29 07:05:47', 0),
(24, 1, 2, 'réouverture des routes près de la résidence Kabila sous haute surveillance', 'Des travaux ont débuté ce lundi matin pour la réouverture des routes proches de la résidence de l\'ancien président Joseph Kabila. Sous l\'encadrement de la police militaire et de la Garde républicaine, cette initiative a été mise en œuvre suite à une instruction formelle du Président Félix Tshisekedi.', '<p>Des travaux ont d&eacute;but&eacute; ce lundi matin pour la r&eacute;ouverture des routes proches de la r&eacute;sidence de l\'ancien pr&eacute;sident Joseph Kabila. Sous l\'encadrement de la police militaire et de la Garde r&eacute;publicaine, cette initiative a &eacute;t&eacute; mise en &oelig;uvre suite &agrave; une instruction formelle du Pr&eacute;sident F&eacute;lix Tshisekedi.</p>\r\n<p>Le g&eacute;n&eacute;ral major Kabi Kiriza Ephra&iuml;m, &agrave; la t&ecirc;te de la Garde r&eacute;publicaine, a r&eacute;cemment adress&eacute; une lettre au Ministre d\'&Eacute;tat en charge de l\'Urbanisme. Il y sollicitait l\'ouverture des avenues Des &Eacute;tats-Unis, De la Vall&eacute;e et Bumba, qui avaient &eacute;t&eacute; barricad&eacute;es auparavant \"sans rime ni raison\". Ces mesures visent &agrave; faciliter la libre circulation des citoyens et le transport de leurs biens, dit-il dans sa correspondance.</p>\r\n<p>Cependant, des tensions sont apparues samedi dernier apr&egrave;s la destruction d\'un mur datant de 1987, propri&eacute;t&eacute; de William Damseaux, h&eacute;ritier du groupe Orgaman, jouxtant la r&eacute;sidence Kabila.</p>\r\n<p>Selon le constat de ACTUALITE.CD, des camions de construction tentaient d\'acc&eacute;der &agrave; ces propri&eacute;t&eacute;s, suscitant l\'indignation de figures proches de l\'ancien pr&eacute;sident, dont Ramazani Shadary, secr&eacute;taire permanent du PPRD. Ce dernier s\'est insurg&eacute; contre cette intervention, condamnant une \"intimidation\" &agrave; l\'&eacute;gard de Kabila.</p>\r\n<p>D&eacute;but juillet, lors d\'un entretien t&eacute;l&eacute;vis&eacute;, le pr&eacute;sident Tshisekedi avait manifest&eacute; son regret quant &agrave; la non-p&eacute;rennit&eacute; de la coalition FCC-CACH. Il a notamment soulign&eacute; sa d&eacute;ception concernant la rupture avec Kabila.</p>\r\n<p>En juin, Joseph Kabila, lors d\'une r&eacute;union &agrave; Kingakati, a expos&eacute; sa vision du pays, &eacute;voquant une nation en crise. Bien que ses propos sur les &eacute;lections restent ambigus, il a clairement laiss&eacute; entendre qu\'il n\'avait pas abandonn&eacute; la sc&egrave;ne politique, promettant une prise de parole publique prochaine.</p>\r\n<p>&nbsp;</p>', 'articles/September2023/ARzSnbPyEuvkrJ5jVQvU.jpg', 'reouverture-des-routes-pres-de-la-residence-kabila-sous-haute-surveillance', 107, 1, '2023-09-04 11:10:00', '2023-11-29 07:06:09', 0),
(25, 1, 2, 'Est de la RDC: des arrestations de «responsables militaires» après la répression d\'une manifestation à Goma', 'Le gouvernement congolais a annoncé, ce 4 septembre 2023, l\'arrestation de « responsables militaires » après la répression d\'une manifestation qui a fait une quarantaine de morts, le 30 août dernier à Goma, dans l\'est de la République démocratique du Congo (RDC).', '<p>Des personnes arr&ecirc;t&eacute;es &agrave; la suite d\'une op&eacute;ration militaire ayant r&eacute;prim&eacute; une manifestation pr&eacute;vue contre la mission des Nations unies &agrave; Goma, dans l\'est de la R&eacute;publique d&eacute;mocratique du Congo, le 30 ao&ucirc;t 2023. (Image d\'illustration).</p>\r\n<p>En R&eacute;publique d&eacute;mocratique du Congo (RDC), la d&eacute;l&eacute;gation interminist&eacute;rielle venue enqu&ecirc;ter &agrave; Goma, &agrave; la suite de la r&eacute;pression violente contre les manifestants dans la capitale de la province du Nord-Kivu, vient d&eacute;j&agrave; de prendre des sanctions &agrave; l&rsquo;encontre certains membres des forces de s&eacute;curit&eacute;.</p>\r\n<p>par <a title=\"RFI\" href=\"https://www.rfi.fr/fr/en-bref/20230904-rdc-le-gouvernement-congolais-annonce-l-arrestation-de-responsables-militaires-apr%C3%A8s-la-r%C3%A9pression-d-une-manifestation-%C3%A0-goma-fin-ao%C3%BBt\" target=\"_blank\" rel=\"noopener\">RFI</a></p>', 'articles/September2023/HAmi4kP2xsJNKQpwC7ab.webp', 'est-de-la-rdc-des-arrestations-de-responsables-militaires-apres-la-repression-d-une-manifestation-a-goma', 268, 1, '2023-09-04 11:14:09', '2023-11-29 11:29:41', 0),
(26, 4, 2, 'La chanteuse française Aya Nakamura donnera un concert à Kinshasa,  le 9 septembre prochain', 'Le concert aura lieu au Palais de Congrès de Kinshasa, à partir de 20 heures. Aya Nakamura devrait interpréter ses plus grands tubes, tels que \"Djadja\", \"Pookie\", \"Copines\" et \"Doudou\".', '<p data-sourcepos=\"7:1-7:202\">L\'arriv&eacute;e de Aya Nakamura &agrave; Kinshasa est tr&egrave;s attendue par les fans de la chanteuse. Elle est l\'une des artistes fran&ccedil;aises les plus populaires au monde, et ses chansons sont tr&egrave;s appr&eacute;ci&eacute;es en Afrique.</p>\r\n<p data-sourcepos=\"9:1-9:152\">Les billets pour le concert sont d&eacute;j&agrave; en vente et s\'arrachent comme des petits pains. Les fans congolais sont impatients de voir Aya Nakamura sur sc&egrave;ne.</p>\r\n<p data-sourcepos=\"11:1-11:27\"><strong>Un concert tr&egrave;s attendu</strong></p>\r\n<p data-sourcepos=\"13:1-13:214\">L\'arriv&eacute;e de Aya Nakamura &agrave; Kinshasa est un &eacute;v&eacute;nement tr&egrave;s attendu par les fans de la chanteuse. Elle est l\'une des artistes fran&ccedil;aises les plus populaires au monde, et ses chansons sont tr&egrave;s appr&eacute;ci&eacute;es en Afrique.</p>\r\n<p data-sourcepos=\"15:1-15:204\">Aya Nakamura est une artiste qui a su s\'imposer sur la sc&egrave;ne musicale fran&ccedil;aise et internationale. Ses chansons, qui parlent souvent d\'amour et de relations amoureuses, ont un succ&egrave;s fou aupr&egrave;s du public.</p>\r\n<p data-sourcepos=\"17:1-17:194\">En Afrique, Aya Nakamura est une v&eacute;ritable star. Ses chansons sont diffus&eacute;es en boucle sur les radios et les t&eacute;l&eacute;visions, et elle est l\'une des artistes les plus suivies sur les r&eacute;seaux sociaux.</p>\r\n<p data-sourcepos=\"19:1-19:152\">Le concert de Aya Nakamura &agrave; Kinshasa sera l\'occasion pour les fans congolais de voir leur idole sur sc&egrave;ne. Il s\'annonce comme un &eacute;v&eacute;nement inoubliable.</p>', 'articles/September2023/bO8LXg137hwoiQer9LoL.jpg', 'la-chanteuse-francaise-aya-nakamura-donnera-un-concert-a-kinshasa-le-9-septembre-prochain', 193, 1, '2023-09-04 14:03:00', '2023-11-29 07:55:56', 0),
(27, 1, 2, 'Joseph Kabila, l\'homme du silence malgré la démolition de sa résidence, aucune réaction jusque là, pas de représailles toujours silencieux', 'Joseph Kabila, l\'ancien président de la République démocratique du Congo, a toujours été un homme du silence. Il a rarement donné des interviews ou fait des déclarations publiques. Même après la démolition de sa résidence privée à Kinshasa, le 2 septembre 2023, il n\'a pas réagi.', '<p data-sourcepos=\"3:1-3:248\">Cette attitude de silence peut &ecirc;tre interpr&eacute;t&eacute;e de diff&eacute;rentes mani&egrave;res. Certains y voient une preuve de faiblesse ou d\'impuissance. D\'autres y voient une strat&eacute;gie d&eacute;lib&eacute;r&eacute;e de Joseph Kabila pour &eacute;viter de s\'impliquer dans des conflits politiques.</p>\r\n<p data-sourcepos=\"5:1-5:239\">Il est possible que Joseph Kabila soit simplement en train de peser ses options. Il pourrait &ecirc;tre en train de pr&eacute;parer une contre-attaque, mais il pourrait aussi &ecirc;tre en train de n&eacute;gocier un accord avec le gouvernement de F&eacute;lix Tshisekedi.</p>\r\n<p data-sourcepos=\"7:1-7:146\">Quoi qu\'il en soit, le silence de Joseph Kabila est un signe que la situation politique en R&eacute;publique d&eacute;mocratique du Congo est toujours instable.</p>\r\n<p data-sourcepos=\"9:1-9:80\">Voici quelques possibles explications &agrave; l\'attitude de silence de Joseph Kabila :</p>\r\n<ul data-sourcepos=\"11:1-14:0\">\r\n<li data-sourcepos=\"11:1-11:202\"><strong>Il est en train de peser ses options.</strong>&nbsp;Il pourrait &ecirc;tre en train de pr&eacute;parer une contre-attaque, mais il pourrait aussi &ecirc;tre en train de n&eacute;gocier un accord avec le gouvernement de F&eacute;lix Tshisekedi.</li>\r\n<li data-sourcepos=\"12:1-12:177\"><strong>Il veut &eacute;viter de s\'impliquer dans des conflits politiques.</strong>&nbsp;Il pourrait &ecirc;tre conscient qu\'une r&eacute;action publique pourrait aggraver la situation et conduire &agrave; des violences.</li>\r\n<li data-sourcepos=\"13:1-14:0\"><strong>Il est affaibli.</strong>&nbsp;Il pourrait avoir perdu le soutien de ses partisans ou de ses alli&eacute;s.</li>\r\n</ul>\r\n<p data-sourcepos=\"15:1-15:182\">Il est &eacute;galement possible que Joseph Kabila soit simplement un homme du silence. Il a toujours &eacute;t&eacute; discret et r&eacute;serv&eacute;, et il est possible qu\'il ne veuille pas changer cette attitude.</p>', 'articles/September2023/P7NOplok4i8ZJxhFwVQs.jpg', 'joseph-kabila-l-homme-du-silence-malgre-la-demolition-de-sa-residence-aucune-reaction-jusque-la-pas-de-represailles-toujours-silencieux', 331, 1, '2023-09-04 15:30:27', '2023-11-29 07:57:13', 0);
INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `resume`, `description`, `image`, `slug`, `views`, `published`, `created_at`, `updated_at`, `popular`) VALUES
(28, 1, 3, 'RDC: Massacre de la semaine dernière au Nord-Kivu dans la ville de Goma.', 'RDC: Massacre de la semaine dernière au Nord-Kivu dans la ville de Goma.', '<p>RDC: Massacre de la semaine derni&egrave;re &agrave; Goma.</p>\r\n<p>Les arrestations et auditions des militaires impliqu&eacute;s dans la r&eacute;pression violente des manifestants appartenant &agrave; une secte religieuse dans la ville de Goma ont d&eacute;but&eacute; ce lundi.&nbsp;</p>\r\n<p>Six officiers ont &eacute;t&eacute; arr&ecirc;t&eacute;s et d&eacute;f&eacute;r&eacute;s devant les juges de la cour militaire du Nord-Kivu. Parmi eux, deux hauts grad&eacute;s, membres de la garde r&eacute;publicaine, une unit&eacute; charg&eacute;e de la s&eacute;curit&eacute; du Pr&eacute;sident de la R&eacute;publique.&nbsp;</p>\r\n<p>Pour la soci&eacute;t&eacute; civile, ce proc&egrave;s n\'est qu\'un vrai feu de paille car il faudrait commencer par l\'arrestation du gouverneur militaire, qui en toute &eacute;vidence aurait instruit la police et l\'arm&eacute;e d\'intervenir.</p>\r\n<p>Pour rappel, cette r&eacute;pression dont est question a entra&icirc;n&eacute; la mort de plus de 40 manifestants dont la majorit&eacute; sont membres d\'une secte mystico-religieuse.&nbsp;</p>\r\n<p>&nbsp;</p>', 'articles/September2023/oU9DDv4XuEeX8DHVXVwJ.jpg', 'rdc-massacre-de-la-semaine-derniere-au-nord-kivu-dans-la-ville-de-goma', 106, 1, '2023-09-06 08:11:00', '2023-11-29 07:55:16', 0),
(29, 8, 2, 'Félix Tshisekedi lance la gratuité de la maternité et des soins des nouveau-nés', 'Le président de la République démocratique du Congo, Félix Tshisekedi, a lancé mardi 6 septembre à Kinshasa la gratuité de la maternité et des soins des nouveau-nés. Cette mesure vise à garantir des soins et des services de santé de qualité et gratuits à toutes les femmes enceintes, à celles qui ont accouché et aux nouveau-nés pendant leur premier mois de vie.', '<p data-sourcepos=\"1:1-1:375\">Le pr&eacute;sident de la R&eacute;publique d&eacute;mocratique du Congo, F&eacute;lix Tshisekedi, a lanc&eacute; mardi 6 septembre &agrave; Kinshasa la gratuit&eacute; de la maternit&eacute; et des soins des nouveau-n&eacute;s. Cette mesure vise &agrave; <span class=\"citation-0 citation-end-0\">garantir des soins et des services de sant&eacute; de qualit&eacute; et gratuits &agrave; toutes les femmes enceintes, &agrave; celles qui ont accouch&eacute; et aux nouveau-n&eacute;s pendant leur premier mois de vie.</span></p>\r\n<p data-sourcepos=\"3:1-3:122\">Le programme sera financ&eacute; par le gouvernement congolais. Il sera mis en &oelig;uvre dans les h&ocirc;pitaux publics et priv&eacute;s du pays.</p>\r\n<p data-sourcepos=\"5:1-5:230\">Le pr&eacute;sident Tshisekedi a d&eacute;clar&eacute; que cette mesure est une priorit&eacute; pour son gouvernement. Il a rappel&eacute; que la gratuit&eacute; de la maternit&eacute; et des soins des nouveau-n&eacute;s est un droit fondamental, inscrit dans la Constitution de la RDC.</p>\r\n<p data-sourcepos=\"7:1-7:130\">Il a &eacute;galement soulign&eacute; que cette mesure contribuera &agrave; r&eacute;duire la mortalit&eacute; maternelle et infantile, qui est encore &eacute;lev&eacute;e en RDC.</p>\r\n<p data-sourcepos=\"9:1-9:234\">En 2020, l\'indice synth&eacute;tique de f&eacute;condit&eacute; de la RDC &eacute;tait de 4,9 enfants par femme. La mortalit&eacute; maternelle &eacute;tait de 596 d&eacute;c&egrave;s pour 100 000 naissances vivantes. La mortalit&eacute; infantile &eacute;tait de 62 d&eacute;c&egrave;s pour 1 000 naissances vivantes.</p>\r\n<p data-sourcepos=\"11:1-11:160\">La gratuit&eacute; de la maternit&eacute; et des soins des nouveau-n&eacute;s est une mesure importante qui devrait contribuer &agrave; am&eacute;liorer la sant&eacute; des femmes et des enfants en RDC.</p>', 'articles/September2023/0BLAAbuu65yl4DJbeuQm.jpg', 'felix-tshisekedi-lance-la-gratuite-de-la-maternite-et-des-soins-des-nouveau-nes', 172, 1, '2023-09-06 11:22:09', '2023-11-29 06:14:19', 0),
(30, 4, 2, 'L\'artiste Fally Ipupa a-t-il bâti sa carière par les mensonges ? Le disc d\'or certifié par snep a-t-il été obtenu de façon irrégulière par l\'artiste ? Des révélations graves faites par le journaliste Gauthier Sey avant que L\'artiste lui ait porté plainte', 'C\'est une question difficile à répondre, car elle dépend d\'un certain nombre de facteurs. D\'une part, il est clair que Fally Ipupa est un artiste talentueux qui a travaillé dur pour atteindre le sommet de sa carrière. Il a sorti plusieurs albums à succès, remporté de nombreux prix et a une large base de fans à travers le monde.', '<p data-sourcepos=\"1:1-1:329\">C\'est une question difficile &agrave; r&eacute;pondre, car elle d&eacute;pend d\'un certain nombre de facteurs. D\'une part, il est clair que Fally Ipupa est un artiste talentueux qui a travaill&eacute; dur pour atteindre le sommet de sa carri&egrave;re. Il a sorti plusieurs albums &agrave; succ&egrave;s, remport&eacute; de nombreux prix et a une large base de fans &agrave; travers le monde.</p>\r\n<p data-sourcepos=\"3:1-3:277\">D\'autre part, le journaliste Gauthier Sey a fait des all&eacute;gations s&eacute;rieuses contre Fally Ipupa. Il a affirm&eacute; que l\'artiste est pass&eacute; par beaucoup de mensonges dans sa carri&egrave;re, qu\'il n\'a jamais sign&eacute; le contrat avec Vivendi pour sa prestation &agrave; l\'ouverture des jeux de la francophonie et qu\'il avait obtenu son disque d\'or de mani&egrave;re irr&eacute;guli&egrave;re.</p>\r\n<p data-sourcepos=\"5:1-5:312\">Ces all&eacute;gations sont graves et, si elles sont av&eacute;r&eacute;es, pourraient avoir un impact significatif sur la carri&egrave;re de Fally Ipupa. Cependant, il est important de noter que Fally Ipupa a ni&eacute; toutes les accusations port&eacute;es contre lui. Il a &eacute;galement pris la d&eacute;cision de poursuivre Gauthier Sey en justice pour diffamation.</p>\r\n<p data-sourcepos=\"7:1-7:188\">&Agrave; ce stade, il est impossible de dire avec certitude si les all&eacute;gations de Gauthier Sey sont vraies ou non. Il faudra attendre les r&eacute;sultats de la proc&eacute;dure judiciaire pour en savoir plus.</p>\r\n<p data-sourcepos=\"9:1-9:174\">Cependant, il est clair que cette affaire a cr&eacute;&eacute; une certaine controverse autour de Fally Ipupa. Elle a &eacute;galement soulev&eacute; des questions sur l\'&eacute;thique de l\'industrie musicale.</p>', 'articles/September2023/LBM9s0tgt4ITfeVeaAjM.webp', 'l-artiste-fally-ipupa-a-t-il-bati-sa-cariere-par-les-mensonges-le-disc-d-or-certifie-par-snep-a-t-il-ete-obtenu-de-facon-irreguliere-par-l-artiste-des-relelations-faites-par-le-journaliste-gauthier-sey-avant-que-l-artiste-lui-ait-porte-plainte', 209, 1, '2023-09-07 14:55:00', '2023-11-29 06:59:36', 0),
(31, 5, 2, 'Maroc : un puissant tremblement de terre fait au moins 296 morts', 'Un tremblement de terre de magnitude 7,3 a frappé le Maroc dans la nuit de vendredi à samedi, faisant au moins 296 morts et 153 blessés.', '<p>Un tremblement de terre de magnitude 7,3 a frapp&eacute; le Maroc dans la nuit de vendredi &agrave; samedi, faisant au moins 296 morts et 153 bless&eacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;picentre du s&eacute;isme a &eacute;t&eacute; localis&eacute; &agrave; une profondeur de 10 kilom&egrave;tres, &agrave; environ 100 kilom&egrave;tres au sud de Marrakech. Les secousses ont &eacute;t&eacute; ressenties dans tout le pays, ainsi qu\'en Alg&eacute;rie, en Tunisie et en Espagne.</p>\r\n<p>&nbsp;</p>\r\n<p>Les d&eacute;g&acirc;ts sont consid&eacute;rables dans les zones les plus proches de l\'&eacute;picentre, notamment dans les villes de Zagora, Ouarzazate et Taroudant. Des b&acirc;timents se sont effondr&eacute;s, des routes ont &eacute;t&eacute; coup&eacute;es et des lignes &eacute;lectriques ont &eacute;t&eacute; endommag&eacute;es.</p>\r\n<p>&nbsp;</p>\r\n<p>Les autorit&eacute;s marocaines ont mobilis&eacute; des milliers de personnes pour venir en aide aux sinistr&eacute;s. Des &eacute;quipes de secours sont &agrave; pied d\'&oelig;uvre pour rechercher les personnes disparues et fournir des secours aux bless&eacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>Le roi Mohammed VI a exprim&eacute; sa \"profonde &eacute;motion\" et sa \"totale solidarit&eacute;\" aux victimes. Il a &eacute;galement annonc&eacute; la mise en place d\'un fonds d\'urgence pour aider les sinistr&eacute;s.</p>\r\n<p>&nbsp;</p>\r\n<p>Le tremblement de terre est le plus meurtrier au Maroc depuis celui de 1960, qui avait fait plus de 15 000 morts.</p>\r\n<p>&nbsp;</p>\r\n<p>Les r&eacute;actions internationales</p>\r\n<p>&nbsp;</p>\r\n<p>Les pays du monde entier ont exprim&eacute; leur solidarit&eacute; au Maroc apr&egrave;s le tremblement de terre.</p>\r\n<p>&nbsp;</p>\r\n<p>Les &Eacute;tats-Unis ont annonc&eacute; l\'envoi d\'une &eacute;quipe de secours de 75 personnes. La France a &eacute;galement annonc&eacute; l\'envoi d\'une &eacute;quipe de secouristes et de m&eacute;decins.</p>\r\n<p>&nbsp;</p>\r\n<p>L\'Union europ&eacute;enne a d&eacute;clar&eacute; qu\'elle &eacute;tait pr&ecirc;te &agrave; apporter son aide au Maroc.</p>\r\n<p>&nbsp;</p>\r\n<p>Les le&ccedil;ons &agrave; tirer</p>\r\n<p>&nbsp;</p>\r\n<p>Le tremblement de terre au Maroc rappelle que le pays est situ&eacute; dans une zone sismique active. Les autorit&eacute;s marocaines ont pris des mesures pour am&eacute;liorer la r&eacute;silience du pays aux catastrophes naturelles, mais il reste encore beaucoup &agrave; faire.</p>\r\n<p>&nbsp;</p>\r\n<p>Les experts appellent &agrave; une meilleure construction des b&acirc;timents, &agrave; une sensibilisation de la population aux risques sismiques et &agrave; l\'am&eacute;lioration des syst&egrave;mes d\'alerte.</p>', 'articles/September2023/rqGzqKb5oGxd3GjMldB1.jpeg', 'maroc-un-puissant-tremblement-de-terre-fait-au-moins-296-morts', 119, 1, '2023-09-09 05:58:00', '2023-11-29 10:08:33', 0),
(32, 7, 2, 'Kinshasa : Stanis Bujakera transféré ce jeudi à la prison centrale de Makala', 'Le correspondant de Jeune Afrique en RDC a été placé en détention provisoire le 14 septembre, après avoir été auditionné par un juge d\'instruction. Il est accusé de \"trahison\" et \"atteinte à la sûreté de l\'État\".', '<p data-sourcepos=\"3:1-3:216\"><strong>Le correspondant de Jeune Afrique en RDC a &eacute;t&eacute; plac&eacute; en d&eacute;tention provisoire le 14 septembre, apr&egrave;s avoir &eacute;t&eacute; auditionn&eacute; par un juge d\'instruction. Il est accus&eacute; de \"trahison\" et \"atteinte &agrave; la s&ucirc;ret&eacute; de l\'&Eacute;tat\".</strong></p>\r\n<p data-sourcepos=\"5:1-5:283\">Stanis Bujakera Tshiamala, correspondant de Jeune Afrique en R&eacute;publique d&eacute;mocratique du Congo, a &eacute;t&eacute; transf&eacute;r&eacute; ce jeudi 14 septembre &agrave; la prison centrale de Makala, &agrave; Kinshasa. Il a &eacute;t&eacute; plac&eacute; en d&eacute;tention provisoire le m&ecirc;me jour, apr&egrave;s avoir &eacute;t&eacute; auditionn&eacute; par un juge d\'instruction.</p>\r\n<p data-sourcepos=\"7:1-7:245\">M. Bujakera est accus&eacute; de \"trahison\" et \"atteinte &agrave; la s&ucirc;ret&eacute; de l\'&Eacute;tat\". Il est notamment vis&eacute; par un article publi&eacute; dans Jeune Afrique le 1er septembre, dans lequel il critiquait la gestion de la crise s&eacute;curitaire au Kasa&iuml;, dans l\'est du pays.</p>\r\n<p data-sourcepos=\"9:1-9:136\">La d&eacute;fense de M. Bujakera a d&eacute;pos&eacute; une demande de mise en libert&eacute; provisoire, qui n\'a pas encore &eacute;t&eacute; examin&eacute;e par le juge d\'instruction.</p>\r\n<p data-sourcepos=\"11:1-11:202\"><strong>Cet emprisonnement a &eacute;t&eacute; condamn&eacute; par de nombreuses organisations de d&eacute;fense de la libert&eacute; de la presse.</strong> Reporters sans fronti&egrave;res a notamment d&eacute;nonc&eacute; une \"atteinte grave &agrave; la libert&eacute; de la presse\".</p>\r\n<p data-sourcepos=\"13:1-13:271\"><strong>Stanis Bujakera Tshiamala est un journaliste exp&eacute;riment&eacute; qui a couvert l\'actualit&eacute; en R&eacute;publique d&eacute;mocratique du Congo depuis de nombreuses ann&eacute;es. Il a re&ccedil;u plusieurs prix pour son travail, notamment le Prix Jean-Christophe Victor de la libert&eacute; de la presse en 2022.</strong></p>\r\n<p data-sourcepos=\"15:1-15:155\"><strong>Son emprisonnement est une nouvelle illustration des difficult&eacute;s auxquelles la libert&eacute; de la presse est confront&eacute;e en R&eacute;publique d&eacute;mocratique du Congo.</strong></p>', 'articles/September2023/C2R9D03OCXRa74Jgr4a3.jpg', 'kinshasa-stanis-bujakera-transfere-ce-jeudi-a-la-prison-centrale-de-makala', 163, 1, '2023-09-15 09:26:36', '2023-11-29 06:17:27', 1),
(33, 1, 2, 'Vital Kamerhe n\'a-t-il fait qu\'empirer la situation économique depuis sa nomination au poste du ministre de l\'économie malgré sa promesse de faire baisser le taux du dollars ?', 'La réponse à cette question est complexe et dépend de la manière dont on définit \"empirer\". Il est indéniable que la situation économique de la République démocratique du Congo (RDC) est difficile, avec une inflation élevée, un taux de chômage élevé et une pauvreté généralisée.', '<p data-sourcepos=\"1:1-1:278\">La r&eacute;ponse &agrave; cette question est complexe et d&eacute;pend de la mani&egrave;re dont on d&eacute;finit \"empirer\". Il est ind&eacute;niable que la situation &eacute;conomique de la R&eacute;publique d&eacute;mocratique du Congo (RDC) est difficile, avec une inflation &eacute;lev&eacute;e, un taux de ch&ocirc;mage &eacute;lev&eacute; et une pauvret&eacute; g&eacute;n&eacute;ralis&eacute;e.</p>\r\n<p data-sourcepos=\"3:1-3:450\">Depuis sa nomination au poste de ministre de l\'&eacute;conomie en mars 2023, Vital Kamerhe a pris un certain nombre de mesures pour tenter de redresser la situation &eacute;conomique du pays. Il a notamment annonc&eacute; un plan de relance &eacute;conomique de 10 milliards de dollars, qui comprend des investissements dans l\'infrastructure, l\'agriculture et l\'&eacute;ducation. Il a &eacute;galement promis de faire baisser le taux du dollar, qui est actuellement &agrave; un niveau record en RDC.</p>\r\n<p data-sourcepos=\"5:1-5:200\">Cependant, les r&eacute;sultats de ces mesures sont encore incertains. L\'inflation a continu&eacute; d\'augmenter au cours des derniers mois, et le taux du dollar ne semble pas avoir baiss&eacute; de mani&egrave;re significative.</p>\r\n<p data-sourcepos=\"7:1-7:346\">Certains observateurs estiment que Vital Kamerhe n\'a fait qu\'empirer la situation &eacute;conomique. Ils arguent que son plan de relance &eacute;conomique est trop ambitieux et qu\'il risque de creuser le d&eacute;ficit public. Ils soulignent &eacute;galement que sa promesse de faire baisser le taux du dollar est irr&eacute;aliste, car elle est li&eacute;e &agrave; des facteurs internationaux.</p>\r\n<p data-sourcepos=\"9:1-9:400\">D\'autres observateurs sont plus optimistes. Ils estiment que Vital Kamerhe a pris les bonnes mesures pour redresser l\'&eacute;conomie du pays. Ils soulignent que le plan de relance &eacute;conomique est n&eacute;cessaire pour stimuler la croissance &eacute;conomique et cr&eacute;er des emplois. Ils esp&egrave;rent &eacute;galement que le taux du dollar finira par baisser, gr&acirc;ce aux efforts de Vital Kamerhe et &agrave; la reprise de l\'&eacute;conomie mondiale.</p>\r\n<p data-sourcepos=\"11:1-11:323\">En conclusion, il est trop t&ocirc;t pour dire si Vital Kamerhe a fait qu\'empirer la situation &eacute;conomique de la RDC. Les r&eacute;sultats de ses mesures ne seront visibles qu\'&agrave; moyen ou long terme. Cependant, il est clair que la situation &eacute;conomique du pays est difficile, et que des mesures urgentes sont n&eacute;cessaires pour la redresser.</p>', 'articles/September2023/valFbbPvm22A3SexV4bS.jpeg', 'vital-kamerhe-n-a-t-il-fait-qu-empirer-la-situation-economique-depuis-sa-nomination-au-poste-du-ministre-de-l-economie-malgre-sa-promesse-de-faire-baisser-le-taux-du-dollars', 245, 1, '2023-09-15 10:52:00', '2023-11-29 07:53:37', 1),
(34, 1, 2, 'Où est allé l\'Honorable Daniel Safu ? Pourquoi ne participe-t-il plus aux débats politiques sur les plateaux télévisés?', 'L\'Honorable Daniel Safu, député national de la circonscription de Mont-Amba, n\'est plus apparu sur les plateaux télévisés depuis le 20 Juillet 2023. Il a été interpellé par la commission parlementaire d\'éthique et de déontologie le 19 juillet, après avoir tenu des propos polémiques sur le chef de l\'État, Félix Tshisekedi.', '<p data-sourcepos=\"1:1-1:323\">L\'Honorable Daniel Safu, d&eacute;put&eacute; national de la circonscription de Mont-Amba, n\'est plus apparu sur les plateaux t&eacute;l&eacute;vis&eacute;s depuis le 20 juillet 2023. Il a &eacute;t&eacute; interpell&eacute; par la commission parlementaire d\'&eacute;thique et de d&eacute;ontologie le 19 juillet, apr&egrave;s avoir tenu des propos pol&eacute;miques sur le chef de l\'&Eacute;tat, F&eacute;lix Tshisekedi.</p>\r\n<p data-sourcepos=\"3:1-3:251\">Lors d\'une interview accord&eacute;e &agrave; une radio locale, Daniel Safu avait d&eacute;clar&eacute; que le pr&eacute;sident Tshisekedi &eacute;tait \"un imposteur\" et qu\'il avait \"vol&eacute;\" l\'&eacute;lection pr&eacute;sidentielle de 2018. Il avait &eacute;galement accus&eacute; le pr&eacute;sident de corruption et de n&eacute;potisme.</p>\r\n<p data-sourcepos=\"5:1-5:250\">Ces propos ont suscit&eacute; une vive indignation au sein de la classe politique et de la soci&eacute;t&eacute; civile. La commission parlementaire d\'&eacute;thique et de d&eacute;ontologie a d&eacute;cid&eacute; d\'interpeller Daniel Safu pour \"atteinte &agrave; la dignit&eacute; du pr&eacute;sident de la R&eacute;publique\".</p>\r\n<p data-sourcepos=\"7:1-7:215\">Apr&egrave;s son audition par la commission, Daniel Safu a &eacute;t&eacute; suspendu de ses fonctions de d&eacute;put&eacute; national pour un mois. Il a &eacute;galement &eacute;t&eacute; condamn&eacute; &agrave; une amende de 10 millions de francs congolais (environ 5 000 dollars).</p>\r\n<p data-sourcepos=\"9:1-9:210\">Depuis sa suspension, Daniel Safu n\'est plus apparu sur les plateaux t&eacute;l&eacute;vis&eacute;s. Il a d&eacute;clar&eacute; qu\'il se concentrait sur ses activit&eacute;s parlementaires et qu\'il reviendrait &agrave; l\'opinion publique \"au moment opportun\".</p>\r\n<p data-sourcepos=\"11:1-11:261\">Il est possible que Daniel Safu soit &eacute;galement dissuad&eacute; de participer aux d&eacute;bats politiques par la crainte d\'&ecirc;tre poursuivi en justice. En effet, les propos qu\'il a tenus sur le chef de l\'&Eacute;tat pourraient &ecirc;tre consid&eacute;r&eacute;s comme une atteinte &agrave; la s&ucirc;ret&eacute; de l\'&Eacute;tat.</p>\r\n<p data-sourcepos=\"13:1-13:111\">Voici quelques hypoth&egrave;ses sur les raisons pour lesquelles Daniel Safu ne participe plus aux d&eacute;bats politiques :</p>\r\n<ul data-sourcepos=\"15:1-18:0\">\r\n<li data-sourcepos=\"15:1-15:106\">Il est suspendu de ses fonctions de d&eacute;put&eacute; national et ne peut donc plus repr&eacute;senter sa circonscription.</li>\r\n<li data-sourcepos=\"16:1-16:85\">Il est sous le coup d\'une enqu&ecirc;te judiciaire pour ses propos sur le chef de l\'&Eacute;tat.</li>\r\n<li data-sourcepos=\"17:1-18:0\">Il a &eacute;t&eacute; dissuad&eacute; de participer aux d&eacute;bats politiques par des pressions politiques.</li>\r\n</ul>\r\n<p data-sourcepos=\"19:1-19:180\">Il est encore trop t&ocirc;t pour dire si Daniel Safu reviendra &agrave; l\'opinion publique. Cependant, ses propos sur le chef de l\'&Eacute;tat ont eu un impact consid&eacute;rable sur sa carri&egrave;re politique.</p>', 'articles/September2023/bYPwgS0XOiZNsQw08Dx6.png', 'ou-est-alle-l-honorable-daniel-safu-pourquoi-ne-participe-t-il-plus-aux-debats-politiques-sur-les-plateaux-televises', 201, 1, '2023-09-16 11:46:00', '2023-11-29 12:04:42', 1),
(35, 1, 2, 'Après la dénonciation du vice gouverneur Gecoco Mulunda sur la mauvaise Gestion de la ville, l\'assemblée provinciale de Kinshasa exige la révocation de quelques ministres et directeurs généraux', 'Après la dénonciation du vice gouverneur Gecoco Mulunda sur la mauvaise gestion de la ville, l\'assemblée provinciale de Kinshasa a adopté une résolution le 15 septembre 2023 exigeant la révocation de quelques ministres et directeurs généraux.', '<p>Apr&egrave;s la d&eacute;nonciation du vice gouverneur Gecoco Mulunda sur la mauvaise gestion de la ville, l\'assembl&eacute;e provinciale de Kinshasa a adopt&eacute; une r&eacute;solution le 15 septembre 2023 exigeant la r&eacute;vocation de quelques ministres et directeurs g&eacute;n&eacute;raux.</p>\r\n<p>&nbsp;</p>\r\n<p>Dans sa r&eacute;solution, l\'assembl&eacute;e provinciale a cit&eacute; notamment les ministres de l\'int&eacute;rieur, des finances, de l\'environnement et de la sant&eacute; publique, ainsi que les directeurs g&eacute;n&eacute;raux de la police, de la mairie et de la r&eacute;gie des transports urbains.</p>\r\n<p>&nbsp;</p>\r\n<p>Les d&eacute;put&eacute;s provinciaux ont accus&eacute; ces responsables de corruption, de n&eacute;potisme et de mauvaise gestion. Ils ont &eacute;galement critiqu&eacute; leur inaction face aux probl&egrave;mes de la ville, tels que la pollution, la congestion du trafic et l\'ins&eacute;curit&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>La r&eacute;solution de l\'assembl&eacute;e provinciale a &eacute;t&eacute; transmise au gouverneur de Kinshasa, Gentiny Ngobila. Le gouverneur a jusqu\'au 22 septembre pour r&eacute;pondre &agrave; cette demande.</p>\r\n<p>&nbsp;</p>\r\n<p>Si le gouverneur ne proc&egrave;de pas &agrave; la r&eacute;vocation des responsables concern&eacute;s, l\'assembl&eacute;e provinciale pourrait prendre d\'autres mesures, telles que le d&eacute;p&ocirc;t d\'une motion de censure.</p>\r\n<p>&nbsp;</p>\r\n<p>La d&eacute;nonciation du vice gouverneur Mulunda a suscit&eacute; un vif d&eacute;bat &agrave; Kinshasa. Certains ont salu&eacute; son courage, tandis que d\'autres l\'ont accus&eacute; de vouloir semer la discorde au sein de l\'ex&eacute;cutif provincial.</p>\r\n<p>&nbsp;</p>\r\n<p>Quoi qu\'il en soit, la r&eacute;solution de l\'assembl&eacute;e provinciale est un signe que les d&eacute;put&eacute;s provinciaux sont d&eacute;termin&eacute;s &agrave; am&eacute;liorer la gouvernance de la ville.</p>\r\n<p>&nbsp;</p>\r\n<p>Voici quelques-unes des raisons pour lesquelles les d&eacute;put&eacute;s provinciaux ont exig&eacute; la r&eacute;vocation de ces responsables :</p>\r\n<p>&nbsp;</p>\r\n<p>* **Corruption:** Les d&eacute;put&eacute;s provinciaux ont accus&eacute; ces responsables de corruption, notamment de d&eacute;tournement de fonds publics.</p>\r\n<p>* **N&eacute;potisme:** Les d&eacute;put&eacute;s provinciaux ont accus&eacute; ces responsables de n&eacute;potisme, en favorisant leurs proches et leurs amis dans les nominations et les promotions.</p>\r\n<p>* **Mauvaise gestion:** Les d&eacute;put&eacute;s provinciaux ont accus&eacute; ces responsables de mauvaise gestion, en ne prenant pas les mesures n&eacute;cessaires pour r&eacute;soudre les probl&egrave;mes de la ville.</p>\r\n<p>&nbsp;</p>\r\n<p>La r&eacute;vocation de ces responsables serait un premier pas important pour am&eacute;liorer la gouvernance de Kinshasa.</p>', 'articles/September2023/6TFJoaUUPtv7BGphDvnS.jpeg', 'apres-la-denonciation-du-vice-gouverneur-gecoco-mulunda-sur-la-mauvaise-gestion-de-la-ville-l-assemblee-provinciale-de-kinshasa-exige-la-revocation-de-quelques-ministres-et-directeurs-generaux', 160, 1, '2023-09-16 04:52:18', '2023-11-29 07:53:51', 1),
(36, 1, 2, 'Coup d\'Etat au Congo-brazaville ? Où se trouve actuellement le Président Dénis Sassou N\'guesso ?', 'Actuellement, il n\'y a aucune information crédible faisant état d\'un coup d\'État au Congo-Brazzaville. Le président Denis Sassou-Nguesso est toujours en fonction et aucune tentative de coup d\'État n\'a été signalée.', '<p data-sourcepos=\"1:1-1:222\">Actuellement,&nbsp;il n\'y a aucune information cr&eacute;dible faisant &eacute;tat d\'un coup d\'&Eacute;tat au Congo-Brazzaville. Le pr&eacute;sident Denis Sassou-Nguesso est toujours en fonction et aucune tentative de coup d\'&Eacute;tat n\'a &eacute;t&eacute; signal&eacute;e.</p>\r\n<p data-sourcepos=\"3:1-3:218\">Le 18 septembre, des rumeurs ont circul&eacute; sur les r&eacute;seaux sociaux selon lesquelles Sassou-Nguesso aurait &eacute;t&eacute; renvers&eacute; par un coup d\'&Eacute;tat militaire. Ces rumeurs ont &eacute;t&eacute; rapidement d&eacute;menties par le gouvernement congolais.</p>\r\n<p data-sourcepos=\"5:1-5:186\">Sassou-Nguesso est actuellement en visite officielle au Rwanda. Il a rencontr&eacute; le pr&eacute;sident Paul Kagame &agrave; Kigali le 17 septembre et a pr&eacute;vu de poursuivre sa visite jusqu\'au 20 septembre.</p>\r\n<p data-sourcepos=\"7:1-7:144\">Il est donc peu probable que Sassou-Nguesso soit en train de fuir un coup d\'&Eacute;tat. Il est plus probable qu\'il soit simplement en voyage officiel.</p>\r\n<p data-sourcepos=\"9:1-9:297\">Cependant, il est important de noter que la situation politique au Congo-Brazzaville est toujours fragile. Le pays a connu plusieurs coups d\'&Eacute;tat et tentatives de coup d\'&Eacute;tat au cours de son histoire r&eacute;cente. Il est donc possible que des rumeurs sur un coup d\'&Eacute;tat puissent se r&eacute;pandre &agrave; l\'avenir.</p>', 'articles/September2023/hP53QwwsKyTLsWzd8YAM.jpg', 'coup-d-etat-au-congo-brazaville-ou-se-trouve-actuellement-le-president-denis-sassou-n-guesso', 177, 1, '2023-09-18 14:20:00', '2023-11-29 07:54:15', 0),
(37, 1, 3, 'RDC: Félix Tshisekedi face à la presse internationale en marge de l\'assemblée générale de l\'ONU.', 'RDC: Félix Tshisekedi face à la presse internationale en marge de l\'assemblée générale de l\'ONU.', '<p>Prenant part active &agrave; l\'assembl&eacute;e g&eacute;n&eacute;rale des nations unies, le Pr&eacute;sident congolais F&eacute;lix Tshisekedi, comme dans ses habitudes a re&ccedil;u la presse internationale pour un &eacute;change franc concernant les questions d\'actualit&eacute; brillante dans son pays, la R&eacute;publique d&eacute;mocratique du Congo.&nbsp;</p>\r\n<p>Le pr&eacute;sident F&eacute;lix a r&eacute;pondu aux questions des journalistes sur les affaires : interpellation du journaliste Stanislas Bukajira, les enqu&ecirc;tes sur la mort de l\'ancien Ministre de transport Okende, le Massacre des civils &agrave; Goma et bien d\'autres.&nbsp;</p>\r\n<p>Sur ces quelques points, le premier des congolais a dit attendre avec impatience que la lumi&egrave;re soit faite sur l\'affaire Meurtre de Ch&eacute;rubin Okende, et quant &agrave; l\'arrestation du journaliste Stanislas Bukajira, il a d&eacute;clar&eacute; ne pas s\'immiscer dans les affaires de la justice.&nbsp;</p>', 'articles/September2023/2BnFRBywYkzsRasKgvdT.jpg', 'rdc-felix-tshisekedi-face-a-la-presse-internationale-en-marge-de-l-assemblee-generale-de-l-onu', 119, 1, '2023-09-20 02:04:59', '2023-11-29 11:25:06', 0),
(38, 1, 3, 'RDC/ LA GUERRE A l\'EST: Paul KAGAME charge le Président congolais Félix Tshisekedi.', 'RDC/ LA GUERRE A l\'EST: Paul KAGAME charge le Président congolais Félix Tshisekedi.', '<p>Arriv&eacute; &agrave; New-York en marge de l\'assembl&eacute;e g&eacute;n&eacute;rale des nations unies, le Pr&eacute;sident Rwandais Paul KAGAME a tout de m&ecirc;me accord&eacute; une interview exclusive &agrave; Jeune Afrique, un magazine qui oublie r&eacute;guli&egrave;rement sur l\'actualit&eacute; africaine.&nbsp;</p>\r\n<p>A en croire ses propos, Paul KAGAME dit n\'avoir aucun probl&egrave;me particulier avec le Pr&eacute;sident congolais F&eacute;lix Tshisekedi et estime que si probl&egrave;me il y en a, c\'est bien &ecirc;tre le pr&eacute;sident congolais F&eacute;lix Tshisekedi et le M23.&nbsp;</p>\r\n<p>Pour rappel, Paul KAGAME est accus&eacute; par Kinshasa de soutenir militairement les rebelles du M23 afin de d&eacute;stabiliser l\'est de la RDC et potentiellement s\'accaparer des terres dont le Rwanda sous son leadership r&eacute;clame du Congo subtilement.&nbsp;</p>', 'articles/September2023/hKZpiDAdkRihd2zXhQT2.jpg', 'rdc-la-guerre-a-l-est-paul-kagame-charge-le-president-congolais-felix-tshisekedi', 112, 1, '2023-09-20 02:14:21', '2023-11-29 11:45:56', 1),
(39, 4, 3, 'RDC- RELGION : Marcello TUNASI au centre des réactions des congolais .', 'RDC- RELGION : Marcello TUNASI au centre des réactions des congolais.', '<p>Dans une vid&eacute;o publi&eacute;e sur les r&eacute;seaux sociaux et relay&eacute;e par milliers, le pasteur congolais, fondateur de l\'&eacute;glise la compassion fait parler de lui. A en croire la vid&eacute;o lue par notre r&eacute;daction, cet homme d\'&eacute;glise habitu&eacute; &agrave; des affirmations gratuites aurait accus&eacute; les d&eacute;funts PAPA Wemba et King Kester Emeneya d\'&ecirc;tre &agrave; la base de la d&eacute;pravation de la jeunesse congolaise de leur vivant.&nbsp;</p>\r\n<p>Cette pr&eacute;dication n\'est pas pass&eacute;e inaper&ccedil;ue aupr&egrave;s des disciples et proches de ces deux l&eacute;gendes. Quelques heures apr&egrave;s, certains ont consid&eacute;r&eacute; de bavardage et faux bruits portant atteinte &agrave; l\'honneur de ces deux anciennes gloires de la culture congolaise dont ils ont fait conna&icirc;tre de leur vivant.&nbsp;</p>\r\n<p>Au nombre des personnes qui ont r&eacute;agi, figure le chroniqueur Zacharie BABASWE se r&eacute;clamant disciple fid&egrave;le de PAPA Wemba a invit&eacute; le pasteur &agrave; pr&eacute;senter ses excuses.&nbsp;</p>\r\n<p>Aussi, la veuve de King Kester Emeneya a condamn&eacute; avec vigueur ces propos qu\'elle qualifie d\'attentatoires &agrave; l\'honneur de son d&eacute;funt mari.&nbsp;</p>\r\n<p>Beaucoup d\'anonymes ont aussi r&eacute;agi, certains ont latteralement insult&eacute; le Pasteur, l\'accusant de propri&eacute;taire d\'une boutique religieuse dite &eacute;glise afin de d&eacute;pouiller les congolais pour s\'enrichir.&nbsp;</p>\r\n<p>Jusqu\'alors, aucune autre r&eacute;action ni du pasteur, moins encore de son entourage n\'a &eacute;t&eacute; rendue publique.&nbsp;</p>', 'articles/September2023/4a8ZybZBUHN8GgqXTJbl.png', 'rdc-relgion-marcello-tunasi-au-centre-des-reactions-des-congolais', 222, 1, '2023-09-20 02:28:00', '2023-11-29 06:59:35', 1),
(40, 1, 2, 'Félix Tshisekedi s\'adresse ce mercredi à la tribune de l\'Assemblée générale de l\'ONU', 'Félix Tshisekedi, président de la République démocratique du Congo, s\'adressera ce mercredi 20 septembre 2023 à la tribune de l\'Assemblée générale des Nations unies. Cette intervention est l\'occasion pour le chef de l\'État congolais de présenter les priorités de sa politique étrangère et de plaider pour le soutien de la communauté internationale aux efforts de développement de son pays.', '<p data-sourcepos=\"1:1-1:169\"><strong>F&eacute;lix Tshisekedi, pr&eacute;sident de la R&eacute;publique d&eacute;mocratique du Congo, s\'adressera ce mercredi 20 septembre 2023 &agrave; la tribune de l\'Assembl&eacute;e g&eacute;n&eacute;rale des Nations unies.</strong></p>\r\n<p data-sourcepos=\"3:1-3:223\">Cette intervention est l\'occasion pour le chef de l\'&Eacute;tat congolais de pr&eacute;senter les priorit&eacute;s de sa politique &eacute;trang&egrave;re et de plaider pour le soutien de la communaut&eacute; internationale aux efforts de d&eacute;veloppement de son pays.</p>\r\n<p data-sourcepos=\"5:1-5:87\">Dans son discours, F&eacute;lix Tshisekedi devrait notamment &eacute;voquer les questions suivantes :</p>\r\n<ul data-sourcepos=\"7:1-10:0\">\r\n<li data-sourcepos=\"7:1-7:105\">La situation s&eacute;curitaire en RDC, notamment dans l\'est du pays, o&ugrave; les groupes arm&eacute;s sont encore actifs.</li>\r\n<li data-sourcepos=\"8:1-8:85\">La lutte contre la pauvret&eacute; et l\'in&eacute;galit&eacute;, qui sont des d&eacute;fis majeurs pour la RDC.</li>\r\n<li data-sourcepos=\"9:1-10:0\">La promotion de la paix et de la stabilit&eacute; en Afrique, une r&eacute;gion qui est encore marqu&eacute;e par de nombreux conflits.</li>\r\n</ul>\r\n<p data-sourcepos=\"11:1-11:138\"><strong>F&eacute;lix Tshisekedi est le premier pr&eacute;sident congolais &agrave; s\'adresser &agrave; l\'Assembl&eacute;e g&eacute;n&eacute;rale des Nations unies depuis son &eacute;lection en 2019.</strong></p>\r\n<p data-sourcepos=\"13:1-13:197\">Son intervention sera suivie de pr&egrave;s par la communaut&eacute; internationale, qui est attentive &agrave; la situation en RDC, un pays qui est consid&eacute;r&eacute; comme un acteur majeur de la stabilit&eacute; en Afrique centrale.</p>\r\n<p data-sourcepos=\"15:1-15:88\"><strong>Voici quelques points cl&eacute;s que F&eacute;lix Tshisekedi pourrait aborder dans son discours :</strong></p>\r\n<ul data-sourcepos=\"17:1-18:0\">\r\n<li data-sourcepos=\"17:1-18:0\"><strong>La situation s&eacute;curitaire en RDC</strong></li>\r\n</ul>\r\n<p data-sourcepos=\"19:1-19:273\">F&eacute;lix Tshisekedi devrait mettre l\'accent sur la n&eacute;cessit&eacute; d\'une solution durable au conflit dans l\'est du pays. Il pourrait appeler la communaut&eacute; internationale &agrave; soutenir les efforts de l\'arm&eacute;e congolaise et des forces de maintien de la paix pour mettre fin aux violences.</p>\r\n<ul data-sourcepos=\"21:1-22:0\">\r\n<li data-sourcepos=\"21:1-22:0\"><strong>La lutte contre la pauvret&eacute; et l\'in&eacute;galit&eacute;</strong></li>\r\n</ul>\r\n<p data-sourcepos=\"23:1-23:269\">F&eacute;lix Tshisekedi devrait pr&eacute;senter les mesures prises par son gouvernement pour am&eacute;liorer les conditions de vie des Congolais. Il pourrait notamment parler du d&eacute;veloppement des infrastructures, de la cr&eacute;ation d\'emplois et de l\'acc&egrave;s &agrave; l\'&eacute;ducation et aux soins de sant&eacute;.</p>\r\n<ul data-sourcepos=\"25:1-26:0\">\r\n<li data-sourcepos=\"25:1-26:0\"><strong>La promotion de la paix et de la stabilit&eacute; en Afrique</strong></li>\r\n</ul>\r\n<p data-sourcepos=\"27:1-27:268\">F&eacute;lix Tshisekedi pourrait plaider pour une plus grande implication de la communaut&eacute; internationale dans la r&eacute;solution des conflits en Afrique. Il pourrait &eacute;galement appeler &agrave; un renforcement de la coop&eacute;ration entre les pays africains pour faire face aux d&eacute;fis communs.</p>\r\n<p data-sourcepos=\"29:1-29:167\"><strong>La prise de parole de F&eacute;lix Tshisekedi est une occasion importante pour la RDC de se positionner comme un acteur responsable et engag&eacute; sur la sc&egrave;ne internationale.</strong></p>', 'articles/September2023/IAV7JKvGB3KDXOPPJLvQ.jpg', 'felix-tshisekedi-s-adresse-ce-mercredi-a-la-tribune-de-l-assemblee-generale-de-l-onu', 175, 1, '2023-09-20 12:16:32', '2023-11-29 07:06:28', 0),
(41, 4, 2, 'Le trophée Afrimma critiqué par les congolais. Est-il crédible ou pas ?', 'Le trophée Afrimma, ou African Music Awards, est une cérémonie de remise de prix qui récompense les artistes musicaux africains. Créée en 2014, elle est organisée chaque année à Dallas, aux États-Unis.', '<div class=\"chat-history-scroll-container ng-tns-c905667992-2 show-bottom-shadow ng-trigger ng-trigger-resetChat\">\r\n<div class=\"conversation-container ng-tns-c905667992-2 ng-star-inserted\">\r\n<div class=\"ng-tns-c1417799124-35\">\r\n<div class=\"response-container ng-tns-c2604505936-36 response-container-has-multiple-responses\">\r\n<div class=\"presented-response-container ng-tns-c2604505936-36\">\r\n<div class=\"response-container-content ng-tns-c2604505936-36\">\r\n<div class=\"response-content ng-trigger ng-trigger-responsePopulation ng-tns-c2604505936-36 ng-animate-disabled\">\r\n<div class=\"markdown markdown-main-panel\" dir=\"ltr\">\r\n<p data-sourcepos=\"3:1-3:201\">Le troph&eacute;e Afrimma, ou African Music Awards, est une c&eacute;r&eacute;monie de remise de prix qui r&eacute;compense les artistes musicaux africains. Cr&eacute;&eacute;e en 2014, elle est organis&eacute;e chaque ann&eacute;e &agrave; Dallas, aux &Eacute;tats-Unis.</p>\r\n<p data-sourcepos=\"5:1-5:159\">En R&eacute;publique d&eacute;mocratique du Congo, le troph&eacute;e Afrimma est r&eacute;guli&egrave;rement critiqu&eacute; par les artistes et les fans. Les principales critiques sont les suivantes :</p>\r\n<ul data-sourcepos=\"7:1-10:0\">\r\n<li data-sourcepos=\"7:1-7:204\"><strong>Le manque de transparence dans le processus de s&eacute;lection des nomin&eacute;s et des gagnants</strong>. Certains artistes congolais affirment que le troph&eacute;e Afrimma est truqu&eacute; et que les r&eacute;sultats sont pr&eacute;d&eacute;termin&eacute;s.</li>\r\n<li data-sourcepos=\"9:1-10:0\"><strong>Le co&ucirc;t &eacute;lev&eacute; de la participation</strong>. Les artistes congolais doivent payer des frais de participation pour pouvoir &ecirc;tre nomin&eacute;s au troph&eacute;e Afrimma.</li>\r\n</ul>\r\n<p data-sourcepos=\"11:1-11:48\"><strong>Est-ce que le troph&eacute;e Afrimma est cr&eacute;dible ?</strong></p>\r\n<p data-sourcepos=\"13:1-13:276\">Il est difficile de r&eacute;pondre &agrave; cette question de mani&egrave;re d&eacute;finitive. Le troph&eacute;e Afrimma est une c&eacute;r&eacute;monie prestigieuse qui r&eacute;compense les meilleurs artistes musicaux africains. Cependant, les critiques qui lui sont adress&eacute;es sont l&eacute;gitimes et m&eacute;ritent d\'&ecirc;tre prises en compte.</p>\r\n<p data-sourcepos=\"15:1-15:29\"><strong>Des pistes d\'am&eacute;lioration</strong></p>\r\n<p data-sourcepos=\"17:1-17:201\">Pour am&eacute;liorer la cr&eacute;dibilit&eacute; du troph&eacute;e Afrimma, il serait important de mettre en place des mesures pour garantir la transparence du processus de s&eacute;lection et pour r&eacute;duire le co&ucirc;t de la participation.</p>\r\n<p data-sourcepos=\"19:1-19:54\"><strong>Les mesures suivantes pourraient &ecirc;tre envisag&eacute;es :</strong></p>\r\n<ul data-sourcepos=\"21:1-24:0\">\r\n<li data-sourcepos=\"21:1-21:75\"><strong>La publication des crit&egrave;res de s&eacute;lection des nomin&eacute;s et des gagnants</strong>.</li>\r\n<li data-sourcepos=\"22:1-22:77\"><strong>La cr&eacute;ation d\'un comit&eacute; ind&eacute;pendant charg&eacute; de s&eacute;lectionner les nomin&eacute;s</strong>.</li>\r\n<li data-sourcepos=\"23:1-24:0\"><strong>La r&eacute;duction des frais de participation</strong>.</li>\r\n</ul>\r\n<p data-sourcepos=\"25:1-25:14\"><strong>Conclusion</strong></p>\r\n<p data-sourcepos=\"27:1-27:241\">Le troph&eacute;e Afrimma est une c&eacute;r&eacute;monie importante pour la musique africaine. Pour qu\'il soit pleinement cr&eacute;dible, il est n&eacute;cessaire de prendre en compte les critiques qui lui sont adress&eacute;es et de mettre en place des mesures pour les am&eacute;liorer.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"bottom-container ng-tns-c905667992-2 ng-star-inserted\">\r\n<div class=\"input-area-container ng-tns-c905667992-2\">\r\n<div class=\"input-area\">\r\n<div class=\"mat-mdc-text-field-wrapper mdc-text-field ng-tns-c4158159094-5 mdc-text-field--outlined mdc-text-field--no-label\">\r\n<div class=\"mat-mdc-form-field-flex ng-tns-c4158159094-5\">\r\n<div class=\"mdc-notched-outline ng-tns-c4158159094-5 mdc-notched-outline--no-label ng-star-inserted\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'articles/September2023/3jdKtP2lnZh22l9fnr74.jpg', 'le-trophee-afrimma-critique-par-les-congolais-est-il-credible-ou-pas', 196, 1, '2023-09-28 08:48:53', '2023-11-29 08:51:16', 0),
(42, 1, 3, 'RDC-ELECTION: A la surprise générale, Martin Fayulu annonce déposer sa candidature pour l\'élection présidentielle du 20 Décembre prochain.', 'RDC-ELECTION: A la surprise générale, Martin Fayulu annonce déposer sa candidature pour l\'élection présidentielle du 20 Décembre prochain.', '<p>Apr&egrave;s avoir tout contest&eacute; quant &agrave; l\'organisation des &eacute;lections g&eacute;n&eacute;rales dans son pays la RDC, processus dont il accusait d\'&ecirc;tre teint&eacute; de beaucoup d\'irr&eacute;gularit&eacute;s commen&ccedil;ant par l\'enregistrement des &eacute;lecteurs et toute la suite, apr&egrave;s qu\'il ait interdit ses collaborateurs &agrave; d&eacute;poser leurs candidatures aux &eacute;lections l&eacute;gislatives, l\'opposant Martin Fayulu surprend tout le monde en annon&ccedil;ant le d&eacute;p&ocirc;t imminent de sa candidature pour l\'&eacute;lection pr&eacute;sidentielle du 20 D&eacute;cembre prochain.&nbsp;</p>\r\n<p>Cette information surprend l\'opinion publique congolaise par rapport &agrave; la posture tr&egrave;s tranch&eacute;e de cet opposant politique.&nbsp;</p>\r\n<p>Certains analystes &eacute;voquent l\'&eacute;chec de la strat&eacute;gie de boycott mise en place par le camp Fayulu. D\'autres par contre parlent du manque des moyens pour prendre en charge le coup li&eacute;s aux quotients &agrave; payer pour les candidats d&eacute;put&eacute;s.&nbsp;</p>\r\n<p>Pour notre r&eacute;daction, nous nous tenons &agrave; la version officielle de l\'opposant qui dit avoir r&eacute;pondu &agrave; une pression de ses sympathisants qui aimeraient le voir competir.&nbsp;</p>', 'articles/October2023/y9Xjg6yPFPFmpsT6gW54.jpg', 'rdc-election-a-la-surprise-generale-martin-fayulu-annonce-deposer-sa-candidature-pour-l-election-presidentielle-du-20-decembre-prochain', 138, 1, '2023-10-02 00:36:54', '2023-11-29 07:01:58', 1),
(43, 1, 3, 'RDC: Premier congrès de l\'Union sacrée de la nation (USN)', 'RDC: Premier congrès de l\'Union sacrée de la nation (USN)', '<p>En vue d\'aff&ucirc;ter leurs armes pour les pr&eacute;paratifs des &eacute;lections avenirs, le premier congr&egrave;s de l\'Union sacr&eacute;e de la nation a eu lieu ce Samedi 30 Septembre &agrave; Kinshasa. Ont pris part &agrave; ce congr&egrave;s, les acteurs de la vie politique congolaise, pour la plupart membres ou chefs des institutions du pays. Parmi eux, nous pouvons citer Jean-Pierre Bemba pour le compte du MLC, Vital Kamerhe, Bahati Lukwebo, Mboso Kodia, Sama Lukonde, Augustin Kabuya et bien d\'autres.&nbsp;</p>\r\n<p>Au terme des r&eacute;solutions adopt&eacute;es, la plus c&eacute;l&egrave;bre &eacute;tait l\'investiture &agrave; l\'unanimit&eacute; du Pr&eacute;sident F&eacute;lix Tshisekedi comme candidat de l\'Union sacr&eacute;e aux &eacute;lections pr&eacute;sidentielles prochaines. En dehors du fait que chaque leader, membre de cette plateforme a fait une d&eacute;claration annon&ccedil;ant le soutien sans faille au Pr&eacute;sident Tshisekedi, il a fallu de nouveau le faire au sein de l\'Union sacr&eacute;e.&nbsp;</p>\r\n<p>La CENI annonce que d\'autres candidatures sont enregistr&eacute;es, la derni&egrave;re en date est celle de l\'ancien premier ministre Adolphe Muzitu, investi pour le compte du Nouvel &eacute;lan et alli&eacute;s.&nbsp;</p>', 'articles/October2023/Yrdhu2RjJRsaDbRnpUhj.jpg', 'rdc-premier-congres-de-l-union-sacree-de-la-nation-usn', 90, 1, '2023-10-02 00:47:24', '2023-11-29 09:01:12', 0),
(44, 5, 3, 'GUERRE En Ukraine : Vers un débâcle de l\'armée russe pourtant réputée l\'une des armées puissantes du monde?', 'GUERRE En Ukraine : Vers un débâcle de l\'armée russe pourtant réputée l\'une des armées puissantes du monde?', '<p>L\'opinion publique se souviendra que c\'est depuis plus d\'un an et demi que la f&eacute;d&eacute;ration de Russie, sous le commandement de Poutine a d&eacute;cid&eacute; d\'envahir le territoire ukrainien afin de le d&eacute;nazifier selon les propos du Pr&eacute;sident Russe au lendemain de son invasion.&nbsp;</p>\r\n<p>l\'Ukraine b&eacute;n&eacute;ficiant de l\'aide de ses partenaires, les occidentaux continue &agrave; r&eacute;sister &agrave; cette occupation. Parmi ces partenaires, les &eacute;tats unis, la Grande Bretagne, la France et bien d\'autres fournissent &agrave; l\'Ukraine armes et munitions. Ils assurent &eacute;galement la formation des militaires ukrainiens.&nbsp;</p>\r\n<p>Sur le front, actuellement la Russie est en mal de positionnement. Ses nombreuses fortifications, les champs des mines anti-chars et anti-personnels plant&eacute;s sous le sol Ukrainien c&egrave;dent d&eacute;j&agrave;.&nbsp;</p>\r\n<p>Lors de ces deux derniers mois, l\'Ukraine a reconquis des mains des occupants Russes des milliers de kilom&egrave;tres et la contre-offensive se poursuit encore.&nbsp;</p>\r\n<p>Du c&ocirc;t&eacute; maritime, le commandement Ukrainien annonc&eacute; avoir fait subir &agrave; l\'arm&eacute;e russe, notamment sa flotte navale des s&eacute;rieuses pertes. En attendant, les combats semblent &ecirc;tre gel&eacute;s &agrave; l\'approche de la difficile saison d\'autone en Ukraine.&nbsp;&nbsp;</p>', 'articles/October2023/gRx33szZDluk8K86kjSM.jpg', 'guerre-en-ukraine-vers-un-debacle-de-l-armee-russe-pourtant-reputee-l-une-des-armees-puissantes-du-monde', 101, 1, '2023-10-02 01:00:08', '2023-11-29 07:05:45', 0),
(45, 1, 3, 'Ensemble pour la République : Suspension de Jacky Ndala.', 'GUERRE En Ukraine : Vers un débâcle de l\'armée russe pourtant réputée l\'une des armées puissantes du monde.', '<p>Dans une correspondance balanc&eacute;e sur les r&eacute;seaux sociaux, le secr&eacute;taire g&eacute;n&eacute;ral d\'ensemble pour la R&eacute;publique, parti politique cher &agrave; Mo&iuml;se Katumbi annonce la suspension de Jacky Ndala, pr&eacute;sident national de la jeunesse d\'ensemble. A en croire la lettre, Jacky Ndala est accus&eacute; d\'avoir lors d\'une sortie m&eacute;diatique sur la cha&icirc;ne Perfect TV, tenu des propos violents envers les responsables et cadre du parti.&nbsp;</p>\r\n<p>Ne pouvant pas supporter une telle attitude de la part d\'un haut cadre au calibre de Jacky Ndala, une lettre de suspension lui a &eacute;t&eacute; adress&eacute;e en vue d\'attendre une information judiciaire au niveau du parti.&nbsp;</p>', 'articles/October2023/d3bXc4wIUrkSQFY0E23s.jpg', 'ensemble-pour-la-republique-suspension-de-jacky-ndala', 162, 1, '2023-10-02 01:31:26', '2023-11-29 07:05:46', 0);
INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `resume`, `description`, `image`, `slug`, `views`, `published`, `created_at`, `updated_at`, `popular`) VALUES
(46, 1, 2, 'L\'opposition congolaise actuelle est-elle capable de faire tomber Félix Tshisekedi à l\'élection présidentielle en décembre ?', 'L\'élection présidentielle de 2023 en République démocratique du Congo (RDC) sera un duel entre le président sortant Félix Tshisekedi et l\'opposition. L\'opposition est divisée en plusieurs factions, mais les principales sont la coalition Lamuka, menée par Martin Fayulu, et le parti ensemble pour le changement, dirigé par Moïse Katumbi.', '<p data-sourcepos=\"5:1-5:30\">L\'&eacute;lection pr&eacute;sidentielle de 2023 en R&eacute;publique d&eacute;mocratique du Congo (RDC) sera un duel entre le pr&eacute;sident sortant F&eacute;lix Tshisekedi et l\'opposition. L\'opposition est divis&eacute;e en plusieurs factions, mais les principales sont la coalition Lamuka, men&eacute;e par Martin Fayulu, et le parti ensemble pour le changement, dirig&eacute; par Mo&iuml;se Katumbi.</p>\r\n<p data-sourcepos=\"5:1-5:30\"><strong>Les forces de l\'opposition</strong></p>\r\n<p data-sourcepos=\"7:1-7:306\">L\'opposition dispose de plusieurs atouts. Elle b&eacute;n&eacute;ficie d\'un large soutien populaire, notamment en raison de la frustration de la population face &agrave; la corruption, &agrave; la pauvret&eacute; et &agrave; l\'ins&eacute;curit&eacute;. L\'opposition est &eacute;galement bien organis&eacute;e et a r&eacute;ussi &agrave; mobiliser les foules lors de manifestations r&eacute;centes.</p>\r\n<p data-sourcepos=\"9:1-9:34\"><strong>Les faiblesses de l\'opposition</strong></p>\r\n<p data-sourcepos=\"11:1-11:204\">L\'opposition est divis&eacute;e et manque de coh&eacute;rence. Les diff&eacute;rents partis ont des programmes et des visions diff&eacute;rents pour le pays. L\'opposition est &eacute;galement confront&eacute;e &agrave; la r&eacute;pression du pouvoir en place.</p>\r\n<p data-sourcepos=\"13:1-13:34\"><strong>Les forces de F&eacute;lix Tshisekedi</strong></p>\r\n<p data-sourcepos=\"15:1-15:212\">F&eacute;lix Tshisekedi a l\'avantage de l\'incumbency. Il dispose des ressources de l\'&Eacute;tat et du soutien de l\'appareil s&eacute;curitaire. Tshisekedi a &eacute;galement r&eacute;ussi &agrave; am&eacute;liorer l\'image de la RDC sur la sc&egrave;ne internationale.</p>\r\n<p data-sourcepos=\"17:1-17:38\"><strong>Les faiblesses de F&eacute;lix Tshisekedi</strong></p>\r\n<p data-sourcepos=\"19:1-19:148\">Tshisekedi est critiqu&eacute; pour sa lenteur dans la mise en &oelig;uvre de ses promesses de campagne. Il est &eacute;galement accus&eacute; de corruption et d\'incomp&eacute;tence.</p>\r\n<p data-sourcepos=\"21:1-21:14\"><strong>Conclusion</strong></p>\r\n<p data-sourcepos=\"23:1-23:424\">Il est difficile de dire si l\'opposition congolaise actuelle est capable de faire tomber F&eacute;lix Tshisekedi &agrave; l\'&eacute;lection pr&eacute;sidentielle en d&eacute;cembre. L\'opposition dispose de plusieurs atouts, mais elle est &eacute;galement confront&eacute;e &agrave; des d&eacute;fis importants. Le r&eacute;sultat de l\'&eacute;lection d&eacute;pendra de plusieurs facteurs, notamment de la division de l\'opposition, de la r&eacute;pression du pouvoir en place et de la mobilisation de la population.</p>\r\n<p data-sourcepos=\"25:1-25:27\"><strong>Les sc&eacute;narios possibles</strong></p>\r\n<p data-sourcepos=\"27:1-27:75\">Voici quelques sc&eacute;narios possibles pour l\'&eacute;lection pr&eacute;sidentielle de 2023 :</p>\r\n<ul data-sourcepos=\"29:1-32:0\">\r\n<li data-sourcepos=\"29:1-29:206\"><strong>F&eacute;lix Tshisekedi est r&eacute;&eacute;lu</strong>. C\'est le sc&eacute;nario le plus probable, car Tshisekedi dispose de plusieurs avantages, notamment l\'incumbency, les ressources de l\'&Eacute;tat et le soutien de l\'appareil s&eacute;curitaire.</li>\r\n<li data-sourcepos=\"30:1-30:218\"><strong>L\'opposition remporte l\'&eacute;lection</strong>. C\'est un sc&eacute;nario possible, mais il est moins probable que le pr&eacute;c&eacute;dent. L\'opposition doit surmonter ses divisions et la r&eacute;pression du pouvoir en place pour remporter l\'&eacute;lection.</li>\r\n<li data-sourcepos=\"31:1-32:0\"><strong>L\'&eacute;lection est contest&eacute;e</strong>. C\'est un sc&eacute;nario probable, car l\'opposition a d&eacute;j&agrave; annonc&eacute; qu\'elle contesterait le r&eacute;sultat de l\'&eacute;lection si elle n\'est pas victorieuse. Une contestation de l\'&eacute;lection pourrait d&eacute;boucher sur une crise politique.</li>\r\n</ul>\r\n<p data-sourcepos=\"33:1-33:22\"><strong>L\'avenir de la RDC</strong></p>\r\n<p data-sourcepos=\"35:1-35:311\">Le r&eacute;sultat de l\'&eacute;lection pr&eacute;sidentielle de 2023 aura un impact important sur l\'avenir de la RDC. Si F&eacute;lix Tshisekedi est r&eacute;&eacute;lu, il aura une chance de poursuivre son programme de r&eacute;formes. Si l\'opposition remporte l\'&eacute;lection, elle aura l\'opportunit&eacute; de mettre en &oelig;uvre un programme plus ambitieux de changement.</p>\r\n<p data-sourcepos=\"35:1-35:311\">Toutefois, merci de laisser votre avis sur le sondage de la semaine en cliquant&nbsp;<a title=\"SudActu\" href=\"https://sudactu.net/\">ici</a></p>', 'articles/October2023/J5pzv90LleEfEhxZU0Q4.jpg', 'l-opposition-congolaise-actuelle-est-elle-capable-de-faire-tomber-felix-tshisekedi-a-l-election-presidentielle-en-decembre', 239, 1, '2023-10-03 09:44:00', '2023-11-29 07:00:31', 1),
(47, 7, 6, 'La justice actuelle congolaise considérée comme de 2 poids 2 mesures, influencée par la politique ?', 'La justice de deux poids, deux mesures est un problème récurrent en République démocratique du Congo. Les personnes qui sont proches du pouvoir sont souvent épargnées par la justice, alors que les personnes qui sont perçues comme étant opposées au pouvoir sont souvent victimes d\'injustice.', '<p data-sourcepos=\"1:1-1:290\">La justice de deux poids, deux mesures est un probl&egrave;me r&eacute;current en R&eacute;publique d&eacute;mocratique du Congo. Les personnes qui sont proches du pouvoir sont souvent &eacute;pargn&eacute;es par la justice, alors que les personnes qui sont per&ccedil;ues comme &eacute;tant oppos&eacute;es au pouvoir sont souvent victimes d\'injustice.</p>\r\n<p data-sourcepos=\"3:1-3:260\">Il existe de nombreux exemples de cette justice in&eacute;gale en RDC. Par exemple :</p>\r\n<ul>\r\n<li data-sourcepos=\"3:1-3:260\">En 2022, un juge a &eacute;t&eacute; condamn&eacute; &agrave; deux ans de prison pour avoir re&ccedil;u des pots-de-vin. Cependant, Vidiye Tshimanga, ex-conseiller de Felix Tshisekedi, a &eacute;t&eacute; acquitt&eacute; des charges de corruption.</li>\r\n<li data-sourcepos=\"3:1-3:260\">Le journaliste congolais Stanis Bujakera Tshiamala a &eacute;t&eacute; arr&ecirc;t&eacute; &agrave; Kinshasa, accus&eacute; de &laquo; <em>propagation de faux bruits</em>&nbsp;&raquo; et de &laquo;&nbsp;<em>diffusion de fausses informations</em>&nbsp;&raquo; et mis en cause sur les sources d&rsquo;un article publi&eacute; le 31&nbsp;ao&ucirc;t sur le site de&nbsp;<em>Jeune Afrique</em>, qui n&rsquo;est pas sign&eacute; de son nom.</li>\r\n<li data-sourcepos=\"3:1-3:260\">Une influenceuse qui a fait une vid&eacute;o live (<a href=\"https://www.facebook.com/100024782379331/posts/1452573928912006/?mibextid=rS40aB7S9Ucbxw6v\" target=\"_blank\" rel=\"noopener\">Voir la vid&eacute;o</a>) dans laquelle elle disait : \"Vous, les swahili taisez-vous, c\'est notre pouvoir, nous les lubas. Si tu n\'es pas luba, alors tais-toi. Cette femme n\'a m&ecirc;me pas &eacute;t&eacute; interpell&eacute;e.&nbsp;</li>\r\n</ul>\r\n<p data-sourcepos=\"5:1-5:170\">Cette justice in&eacute;gale a un impact n&eacute;gatif sur la soci&eacute;t&eacute; congolaise. Elle sape la confiance du public dans le syst&egrave;me judiciaire et encourage la corruption et l\'impunit&eacute;.</p>\r\n<p data-sourcepos=\"7:1-7:248\">Il existe plusieurs raisons &agrave; cette justice in&eacute;gale. Une raison est que le syst&egrave;me judiciaire congolais est souvent corrompu. Les juges et les procureurs peuvent &ecirc;tre achet&eacute;s pour rendre des verdicts favorables aux personnes qui ont de l\'influence.</p>\r\n<p data-sourcepos=\"9:1-9:220\">Une autre raison est que le pouvoir politique est souvent utilis&eacute; pour influencer le syst&egrave;me judiciaire. Les dirigeants politiques peuvent utiliser leur influence pour prot&eacute;ger leurs partisans des poursuites judiciaires.</p>\r\n<p data-sourcepos=\"11:1-11:217\">Enfin, la pauvret&eacute; et l\'analphab&eacute;tisme contribuent &eacute;galement &agrave; la justice in&eacute;gale. Les personnes qui sont pauvres et analphab&egrave;tes sont moins susceptibles de comprendre leurs droits et de se d&eacute;fendre devant la justice.</p>\r\n<p data-sourcepos=\"13:1-13:270\">Il existe des efforts pour lutter contre la justice in&eacute;gale en RDC. L\'Union europ&eacute;enne et les &Eacute;tats-Unis ont fourni des fonds pour soutenir la r&eacute;forme du syst&egrave;me judiciaire. Le gouvernement congolais a &eacute;galement mis en place des mesures pour lutter contre la corruption.</p>\r\n<p data-sourcepos=\"15:1-15:140\">Cependant, il reste encore beaucoup &agrave; faire pour garantir que tous les citoyens congolais soient trait&eacute;s de mani&egrave;re &eacute;gale devant la justice.</p>', 'articles/October2023/uOxvdCFKM8DW7U12Ayup.jfif', 'la-justice-actuelle-congolaise-consideree-comme-de-2-poids-2-mesures-influencee-par-la-politique', 132, 1, '2023-10-06 10:17:17', '2023-11-30 10:58:31', 0);

-- --------------------------------------------------------

--
-- Structure de la table `articles_categories`
--

DROP TABLE IF EXISTS `articles_categories`;
CREATE TABLE IF NOT EXISTS `articles_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `nom`, `image`, `slug`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Politique', NULL, 'politique', 1, '2023-08-22 14:18:48', '2023-08-22 14:18:48'),
(2, 'Sport', NULL, 'sport', 1, '2023-08-22 14:19:03', '2023-08-22 14:19:03'),
(3, 'Education', NULL, 'education', 1, '2023-08-22 14:19:13', '2023-08-22 14:19:13'),
(4, 'Culture', NULL, 'culture', 1, '2023-08-22 14:19:30', '2023-08-22 14:19:30'),
(5, 'Sécurité', NULL, 'securite', 1, '2023-08-22 14:20:03', '2023-08-22 14:20:03'),
(6, 'Offres d\'emploi', NULL, 'offres-d-emploi', 1, '2023-08-22 14:20:13', '2023-08-22 14:20:13'),
(7, 'Justice', NULL, 'justice', 1, '2023-08-22 14:20:00', '2023-08-22 14:20:54'),
(8, 'Santé', NULL, 'sante', 1, '2023-08-22 14:21:05', '2023-08-22 14:21:05');

-- --------------------------------------------------------

--
-- Structure de la table `articles_comments`
--

DROP TABLE IF EXISTS `articles_comments`;
CREATE TABLE IF NOT EXISTS `articles_comments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL,
  `noms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles_comments`
--

INSERT INTO `articles_comments` (`id`, `article_id`, `noms`, `message`, `contact`, `created_at`, `updated_at`) VALUES
(1, 21, 'Cédric ', 'Le padre toujours likolo !', NULL, '2023-09-01 11:26:33', '2023-09-01 11:26:33'),
(2, 21, 'Jessica Kalombo', 'Aigle numéro 1 de la musique congolaise', NULL, '2023-09-01 11:27:57', '2023-09-01 11:27:57'),
(3, 16, 'John', 'Il doit être prudent hein', NULL, '2023-09-01 12:11:04', '2023-09-01 12:11:04'),
(4, 22, 'Anonyme', 'Le président Tshisekedi appaît faible quand il laisse la Monusco, qui n\'apporte pas grand chose à la situation de L\'Est, continuer à mettre la population mal à l\'aise aussi longtemps qu\'un petit pays comme le Rwanda continue à nous dominer.', NULL, '2023-09-01 12:27:00', '2023-09-01 12:27:00'),
(5, 26, 'Manous', 'J\'y serai', NULL, '2023-09-04 14:22:53', '2023-09-04 14:22:53'),
(6, 27, 'Gésac ', 'Le plus stratege', NULL, '2023-09-04 15:37:01', '2023-09-04 15:37:01'),
(7, 30, 'Fabrice ', 'Fally ipupa a juste sous-estimé Gauthier', NULL, '2023-09-07 16:18:31', '2023-09-07 16:18:31'),
(8, 7, NULL, 'Que Dieu vous comble et vous sauvegarde. Succès réussite', NULL, '2023-09-07 18:08:59', '2023-09-07 18:08:59'),
(9, 30, 'John', 'Nous, on observe seulement ', NULL, '2023-09-10 14:47:27', '2023-09-10 14:47:27'),
(10, 33, 'Cedric', 'Aza voleur', NULL, '2023-09-15 10:03:43', '2023-09-15 10:03:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'resume', 'text_area', 'Resume', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"article-detail\",\"crop\":{\"width\":\"800\",\"height\":\"500\"}},{\"name\":\"recent-article\",\"crop\":{\"width\":\"445\",\"height\":\"400\"}},{\"name\":\"scale-article\",\"scale\":\"5%\"}]}', 7),
(63, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(64, 7, 'views', 'text', 'Views', 0, 1, 1, 1, 0, 0, '{}', 9),
(65, 7, 'published', 'checkbox', 'Published', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nom\",\"forceUpdate\":true}}', 4),
(72, 8, 'published', 'checkbox', 'Published', 0, 1, 1, 1, 1, 1, '{}', 5),
(73, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(75, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 9, 'article_id', 'text', 'Article Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(77, 9, 'noms', 'text', 'Noms', 0, 1, 1, 1, 1, 1, '{}', 3),
(78, 9, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 4),
(79, 9, 'contact', 'text', 'Contact', 0, 1, 1, 1, 1, 1, '{}', 5),
(80, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(81, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
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
(94, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 12, 'message_id', 'text', 'Message Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 12, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(97, 12, 'user_ip', 'text', 'User Ip', 0, 1, 1, 1, 1, 1, '{}', 4),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(99, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(100, 7, 'article_belongsto_articles_category_relationship', 'relationship', 'articles_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ArticlesCategory\",\"table\":\"articles_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(101, 7, 'article_belongsto_article_relationship', 'relationship', 'Rédacteur', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(102, 9, 'articles_comment_belongsto_article_relationship', 'relationship', 'articles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(103, 10, 'banniere_belongsto_bannieres_category_relationship', 'relationship', 'bannieres_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BannieresCategory\",\"table\":\"bannieres_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(104, 12, 'response_belongsto_message_relationship', 'relationship', 'messages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Message\",\"table\":\"messages\",\"type\":\"belongsTo\",\"column\":\"message_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(105, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(108, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
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
(131, 7, 'popular', 'checkbox', 'Popular', 0, 1, 1, 1, 1, 1, '{}', 13),
(132, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 16, 'noms', 'text', 'Noms', 0, 1, 1, 1, 1, 1, '{}', 2),
(134, 16, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(135, 16, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 16, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(137, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(138, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(139, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(140, 1, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(141, 1, 'resume', 'text_area', 'Resume', 0, 1, 1, 1, 1, 1, '{}', 13),
(142, 1, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(143, 1, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 15),
(144, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 17, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(146, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(147, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(148, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":500,\"height\":null},\"quality\":\"100%\",\"upsize\":true}', 5),
(149, 13, 'gauche', 'text', 'Gauche', 0, 1, 1, 1, 1, 1, '{}', 6),
(150, 13, 'droite', 'text', 'Droite', 0, 1, 1, 1, 1, 1, '{}', 7);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, 'articles', 'articles', 'Article', 'Articles', 'voyager-edit', 'App\\Models\\Article', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 14:08:34', '2023-09-16 06:55:09'),
(8, 'articles_categories', 'articles-categories', 'Articles Category', 'Articles Categories', 'voyager-documentation', 'App\\Models\\ArticlesCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-22 14:09:35', '2023-08-22 14:09:35'),
(9, 'articles_comments', 'articles-comments', 'Articles Comment', 'Articles Comments', 'voyager-bubble', 'App\\Models\\ArticlesComment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 14:11:44', '2023-08-22 14:16:29'),
(10, 'bannieres', 'bannieres', 'Banniere', 'Bannieres', 'voyager-photo', 'App\\Models\\Banniere', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 14:13:13', '2023-08-22 14:16:56'),
(11, 'bannieres_categories', 'bannieres-categories', 'Bannieres Category', 'Bannieres Categories', 'voyager-documentation', 'App\\Models\\BannieresCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-22 14:14:08', '2023-08-22 14:14:08'),
(12, 'responses', 'responses', 'Response', 'Responses', 'voyager-bubble', 'App\\Models\\Response', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 14:14:31', '2023-08-22 14:17:38'),
(13, 'messages', 'messages', 'Message', 'Messages', 'voyager-bubble', 'App\\Models\\Message', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-22 16:11:05', '2023-09-04 12:25:08'),
(14, 'publications', 'publications', 'Publication', 'Publications', 'voyager-edit', 'App\\Models\\Publication', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-23 09:18:40', '2023-08-23 09:27:08'),
(15, 'publications_categories', 'publications-categories', 'Publications Category', 'Publications Categories', NULL, 'App\\Models\\PublicationsCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-23 09:19:35', '2023-08-23 09:21:31'),
(16, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-25 09:54:16', '2023-09-04 16:42:33'),
(17, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', NULL, 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-28 12:21:26', '2023-08-28 12:21:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, 1, 'Articles', '', '_self', 'voyager-edit', NULL, NULL, 15, '2023-08-22 14:08:34', '2023-08-22 14:08:34', 'voyager.articles.index', NULL),
(15, 1, 'Articles Categories', '', '_self', 'voyager-documentation', NULL, NULL, 16, '2023-08-22 14:09:36', '2023-08-22 14:09:36', 'voyager.articles-categories.index', NULL),
(16, 1, 'Articles Comments', '', '_self', 'voyager-bubble', NULL, NULL, 17, '2023-08-22 14:11:44', '2023-08-22 14:11:44', 'voyager.articles-comments.index', NULL),
(17, 1, 'Bannieres', '', '_self', 'voyager-photo', NULL, NULL, 18, '2023-08-22 14:13:13', '2023-08-22 14:13:13', 'voyager.bannieres.index', NULL),
(18, 1, 'Bannieres Categories', '', '_self', 'voyager-documentation', NULL, NULL, 19, '2023-08-22 14:14:08', '2023-08-22 14:14:08', 'voyager.bannieres-categories.index', NULL),
(19, 1, 'Responses', '', '_self', 'voyager-bubble', NULL, NULL, 20, '2023-08-22 14:14:32', '2023-08-22 14:14:32', 'voyager.responses.index', NULL),
(20, 1, 'Messages', '', '_self', 'voyager-bubble', NULL, NULL, 21, '2023-08-22 16:11:06', '2023-08-22 16:11:06', 'voyager.messages.index', NULL),
(21, 1, 'Publications', '', '_self', 'voyager-edit', NULL, NULL, 22, '2023-08-23 09:18:40', '2023-08-23 09:18:40', 'voyager.publications.index', NULL),
(22, 1, 'Publications Categories', '', '_self', NULL, NULL, NULL, 23, '2023-08-23 09:19:35', '2023-08-23 09:19:35', 'voyager.publications-categories.index', NULL),
(23, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 24, '2023-08-25 09:54:16', '2023-08-25 09:54:16', 'voyager.contacts.index', NULL),
(24, 1, 'Newsletters', '', '_self', NULL, NULL, NULL, 25, '2023-08-28 12:21:26', '2023-08-28 12:21:26', 'voyager.newsletters.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gauche` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `droite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `title`, `created_at`, `updated_at`, `image`, `gauche`, `droite`) VALUES
(1, 'Le bilan du président Félix Tshilombo est-il positif ?', '2023-08-22 16:11:00', '2023-09-04 12:26:05', 'messages/August2023/gdA4aUY3vFUcQ5Yn8COE.PNG', 'OUI', 'NON'),
(2, 'Qui voyez-vous président en 2024 ?', '2023-09-12 13:52:00', '2023-09-12 14:09:54', 'messages/September2023/8spvXYW48sPpQ89rdxfo.PNG', 'Tshisekedi', 'Katumbi');

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(41, 'browse_articles', 'articles', '2023-08-22 14:08:34', '2023-08-22 14:08:34'),
(42, 'read_articles', 'articles', '2023-08-22 14:08:34', '2023-08-22 14:08:34'),
(43, 'edit_articles', 'articles', '2023-08-22 14:08:34', '2023-08-22 14:08:34'),
(44, 'add_articles', 'articles', '2023-08-22 14:08:34', '2023-08-22 14:08:34'),
(45, 'delete_articles', 'articles', '2023-08-22 14:08:34', '2023-08-22 14:08:34'),
(46, 'browse_articles_categories', 'articles_categories', '2023-08-22 14:09:36', '2023-08-22 14:09:36'),
(47, 'read_articles_categories', 'articles_categories', '2023-08-22 14:09:36', '2023-08-22 14:09:36'),
(48, 'edit_articles_categories', 'articles_categories', '2023-08-22 14:09:36', '2023-08-22 14:09:36'),
(49, 'add_articles_categories', 'articles_categories', '2023-08-22 14:09:36', '2023-08-22 14:09:36'),
(50, 'delete_articles_categories', 'articles_categories', '2023-08-22 14:09:36', '2023-08-22 14:09:36'),
(51, 'browse_articles_comments', 'articles_comments', '2023-08-22 14:11:44', '2023-08-22 14:11:44'),
(52, 'read_articles_comments', 'articles_comments', '2023-08-22 14:11:44', '2023-08-22 14:11:44'),
(53, 'edit_articles_comments', 'articles_comments', '2023-08-22 14:11:44', '2023-08-22 14:11:44'),
(54, 'add_articles_comments', 'articles_comments', '2023-08-22 14:11:44', '2023-08-22 14:11:44'),
(55, 'delete_articles_comments', 'articles_comments', '2023-08-22 14:11:44', '2023-08-22 14:11:44'),
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
(66, 'browse_responses', 'responses', '2023-08-22 14:14:32', '2023-08-22 14:14:32'),
(67, 'read_responses', 'responses', '2023-08-22 14:14:32', '2023-08-22 14:14:32'),
(68, 'edit_responses', 'responses', '2023-08-22 14:14:32', '2023-08-22 14:14:32'),
(69, 'add_responses', 'responses', '2023-08-22 14:14:32', '2023-08-22 14:14:32'),
(70, 'delete_responses', 'responses', '2023-08-22 14:14:32', '2023-08-22 14:14:32'),
(71, 'browse_messages', 'messages', '2023-08-22 16:11:05', '2023-08-22 16:11:05'),
(72, 'read_messages', 'messages', '2023-08-22 16:11:05', '2023-08-22 16:11:05'),
(73, 'edit_messages', 'messages', '2023-08-22 16:11:05', '2023-08-22 16:11:05'),
(74, 'add_messages', 'messages', '2023-08-22 16:11:05', '2023-08-22 16:11:05'),
(75, 'delete_messages', 'messages', '2023-08-22 16:11:05', '2023-08-22 16:11:05'),
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
(86, 'browse_contacts', 'contacts', '2023-08-25 09:54:16', '2023-08-25 09:54:16'),
(87, 'read_contacts', 'contacts', '2023-08-25 09:54:16', '2023-08-25 09:54:16'),
(88, 'edit_contacts', 'contacts', '2023-08-25 09:54:16', '2023-08-25 09:54:16'),
(89, 'add_contacts', 'contacts', '2023-08-25 09:54:16', '2023-08-25 09:54:16'),
(90, 'delete_contacts', 'contacts', '2023-08-25 09:54:16', '2023-08-25 09:54:16'),
(91, 'browse_newsletters', 'newsletters', '2023-08-28 12:21:26', '2023-08-28 12:21:26'),
(92, 'read_newsletters', 'newsletters', '2023-08-28 12:21:26', '2023-08-28 12:21:26'),
(93, 'edit_newsletters', 'newsletters', '2023-08-28 12:21:26', '2023-08-28 12:21:26'),
(94, 'add_newsletters', 'newsletters', '2023-08-28 12:21:26', '2023-08-28 12:21:26'),
(95, 'delete_newsletters', 'newsletters', '2023-08-28 12:21:26', '2023-08-28 12:21:26');

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
(41, 1),
(41, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(46, 1),
(46, 4),
(47, 1),
(47, 4),
(48, 1),
(48, 4),
(49, 1),
(49, 4),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
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
(66, 1),
(66, 4),
(67, 1),
(67, 4),
(68, 1),
(68, 4),
(69, 1),
(69, 4),
(70, 1),
(71, 1),
(71, 4),
(72, 1),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
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
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1);

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
-- Structure de la table `publications`
--

DROP TABLE IF EXISTS `publications`;
CREATE TABLE IF NOT EXISTS `publications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `publications`
--

INSERT INTO `publications` (`id`, `category_id`, `user_id`, `title`, `resume`, `description`, `image`, `slug`, `published`, `views`, `created_at`, `updated_at`, `file`) VALUES
(1, 4, 1, 'Cross-cultural adaptation of the German version of the Quality of Life in Alzheimer’s Disease scale - Nursing Home version (QoL-AD NH)', 'Dementia is a chronic and currently incurable\r\nsyndrome. Therefore, quality of life (QoL) is a\r\nmajor goal when caring for people with dementia\r\n(Gibson et al., 2010) and a major outcome in\r\ndementia research (Moniz-Cook et al., 2008).\r\nThe measurement of QoL, especially proxy-rating,\r\nis challenging because of the proxy-perspective\r\n(Pickard and Knight, 2005), reliability (Dichter\r\net al., 2016), validity (O’Rourke et al., 2015),\r\nand responsiveness (Perales et al., 2013).', NULL, NULL, 'cross-cultural-adaptation-of-the-german-version-of-the-quality-of-life-in-alzheimer-s-disease-scale-nursing-home-version-qol-ad-nh', 1, 156, '2023-08-23 09:58:15', '2023-11-29 09:56:52', '[{\"download_link\":\"publications\\\\August2023\\\\z0P0Nlb2m2ieDEwOr9MX.pdf\",\"original_name\":\"Les communications br\\u00e8ves, lettres \\u00e0 l\\u2019\\u00e9diteur\\u2026.pdf\"}]'),
(2, 2, 1, 'Quality-of-life measures for use within care homes: a systematic review of their measurement properties', 'Long-term care facilities such as care homes and nursing\r\nhomes, hereafter referred to as care homes, are residential\r\nsettings where a number of people live and have access to\r\non-site care. There are an estimated 450,000 people living in\r\ncare homes in the UK [1]. Between 51 and 74% of these\r\nindividuals are estimated to have dementia [2], a', NULL, NULL, 'quality-of-life-measures-for-use-within-care-homes-a-systematic-review-of-their-measurement-properties', 1, 154, '2023-08-23 10:01:13', '2023-11-29 09:34:09', '[{\"download_link\":\"publications\\\\August2023\\\\Rb0D6XIAPVNcuclTtXb0.pdf\",\"original_name\":\"L\\u2019article de synth\\u00e8se 2.pdf\"}]'),
(3, 5, 1, 'Publications scientifiques en sciences humaines | Cairn.info', 'eprendre la rhétorique comme grille d’analyse et comme fondement de l’écriture scientifique peut sembler périlleux dans un pays comme la France, qui a banni l’enseignement de cette discipline et occulté le rôle qu’elle joue dans l’élaboration des discours depuis les assauts de Descartes et de Pierre de la Ramée contre elle. Cependant, les éléments de cet antique art du discours sont bien d’actualité et fournissent des outils efficaces pour détailler avec finesse les processus de création, de mise en forme et de diffusion du savoir entre scientifiques, ce qui doit permettre d’appréhender l’évolution des formes d’édition, du livre au numérique. Ses présupposés, son rôle apparaissent utiles dans le monde actuel : il faut considérer que c’est une « technique » à part entière et c’est sur elle que reposent les fondations de l’organisation du contenu des discours et ensuite de leur mise en forme.', NULL, 'publications\\August2023\\MlO6jYEkPwQbuqi9EnsR.jpg', 'publications-scientifiques-en-sciences-humaines-cairn-info', 1, 161, '2023-08-23 10:08:00', '2023-11-29 09:29:10', '[{\"download_link\":\"publications\\\\August2023\\\\PRkIZ7WF2C21hgaE6lnT.pdf\",\"original_name\":\"Les critiques d\\u2019ouvrage.pdf\"}]'),
(4, 7, 1, 'Connaître les types d’articles scientifiques en 8 points', '« Types d’articles » se traduit en anglais par types of papers, article types, types of journal article,\r\ncontent types, types of contributions, manuscript categories ; « article » par article ou paper.\r\nIl existe une grande variété de types d’articles scientifiques. Les typologies adoptées par les éditeurs\r\n(publishers) et les revues ne sont pas standardisées et pas forcément partagées entre eux :', NULL, 'publications\\August2023\\yXiHaC5S0vah7ifPXhgO.jpg', 'connaitre-les-types-d-articles-scientifiques-en-8-points', 1, 189, '2023-08-23 10:12:49', '2023-11-29 09:45:27', '[{\"download_link\":\"publications\\\\August2023\\\\oxdKN3wt3aWlBQh5fC7H.pdf\",\"original_name\":\"CoopIST-Conna\\u00eetre-les-types-d-articles-scientifiquess-28092022.pdf\"}]'),
(5, 3, 1, 'LA FRAGILITÉ DU SUJET ÂGÉ : ACTUALITÉ - PERSPECTIVES', 'La reproduction ou représentation de cet article, notamment par photocopie, n\'est autorisée que dans les\r\nlimites des conditions générales d\'utilisation du site ou, le cas échéant, des conditions générales de la\r\nlicence souscrite par votre établissement. Toute autre reproduction ou représentation, en tout ou partie,\r\nsous quelque forme et de quelque manière que ce soit, est interdite sauf accord préalable et écrit de\r\nl\'éditeur, en dehors des cas prévus par la législation en vigueur en France. Il est précisé que son stockage\r\ndans une base de données est également interdit.', NULL, NULL, 'la-fragilite-du-sujet-age-actualite-perspectives', 1, 178, '2023-08-23 10:13:43', '2023-11-29 09:22:55', '[{\"download_link\":\"publications\\\\August2023\\\\qs9thtySbypVUkcdD4W0.pdf\",\"original_name\":\"L\\u2019article de perspective.pdf\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `publications_categories`
--

DROP TABLE IF EXISTS `publications_categories`;
CREATE TABLE IF NOT EXISTS `publications_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `publications_categories`
--

INSERT INTO `publications_categories` (`id`, `nom`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'L’article de recherche original', 'C’est l’article scientifique le plus connu et il relève d’une recherche originale. Ce type d’article est rédigé et publié après avoir mené une recherche de type empirique, quantitative, qualitative ou mixte.', NULL, 'l-article-de-recherche-original', '2023-08-23 09:21:57', '2023-08-23 09:21:57'),
(2, 'L’article de synthèse', 'Les articles de synthèse fournissent une analyse critique et constructive de la littérature publiée existante dans un domaine, par le biais d’un résumé, d’une analyse et d’une comparaison, en identifiant souvent des lacunes ou des problèmes spécifiques et en formulant des recommandations pour les recherches futures.', NULL, 'l-article-de-synthese', '2023-08-23 09:22:17', '2023-08-23 09:22:17'),
(3, 'L’article de perspective (article d’opinion)', 'Les articles de perspective (ou articles d’opinion) sont des articles qui vont traiter de concepts fondamentaux ou d’idées dominantes dans un domaine. Il s’agit généralement d’essais qui présentent un point de vue personnel critiquant des notions répandues dans un domaine pour amener éventuellement vers une autre perspective, un autre point de vue pour l’avenir.', NULL, 'l-article-de-perspective-article-d-opinion', '2023-08-23 09:22:40', '2023-08-23 09:22:40'),
(4, 'Les communications brèves, lettres à l’éditeur…', 'Ces articles communiquent de brefs rapports de données issus de recherches originales qui, selon les rédacteurs, intéresseront de nombreux chercheurs et stimuleront probablement d’autres recherches dans le domaine.', NULL, 'les-communications-breves-lettres-a-l-editeur', '2023-08-23 09:23:00', '2023-08-23 09:23:00'),
(5, 'Les critiques d’ouvrage', 'Les critiques de livres sont publiées dans la plupart des revues universitaires. L’objectif d’une critique de livre est de fournir un aperçu et une opinion sur des livres savants récemment publiés. Les critiques de livres sont également des articles relativement courts et prennent moins de temps.', NULL, 'les-critiques-d-ouvrage', '2023-08-23 09:23:34', '2023-08-23 09:23:34'),
(6, 'Les articles de méthode/méthodologie', 'Ces articles présentent une nouvelle méthode, un nouveau test ou une nouvelle procédure. La méthode décrite peut être totalement nouvelle ou offrir une meilleure version d’une méthode existante. L’article doit décrire une avancée démontrable par rapport à ce qui est actuellement disponible au niveau d’une méthode. Je ne développerai pas plus, car vous avez compris le principe et l’importance de ce type d’articles auquel on ne pense pas souvent.', NULL, 'les-articles-de-methode-methodologie', '2023-08-23 09:23:54', '2023-08-23 09:23:54'),
(7, 'Les études de cas et études multi-cas', 'Les études de cas et multicas évoquées ici ne relèvent pas d’une approche clinique. Il peut s’agir de cas au sein d’une/des organisation(s) ou d’une comparaison de cas entre plusieurs organisations, ce que l’on appelle l’étude de cas multiples.', NULL, 'les-etudes-de-cas-et-etudes-multi-cas', '2023-08-23 09:24:11', '2023-08-23 09:24:11'),
(8, 'Les études de cas cliniques', 'Les études de cas cliniques présentent les détails de cas réels de patients issus de la pratique médicale ou clinique. Les cas présentés sont généralement ceux qui contribuent de manière significative aux connaissances existantes dans le domaine. L’étude doit aborder les signes, les symptômes, le diagnostic et le traitement d’une maladie.', NULL, 'les-etudes-de-cas-cliniques', '2023-08-23 09:24:28', '2023-08-23 09:24:28'),
(9, 'L’essai clinique', 'Spécifiques au domaine de la médecine, les essais cliniques décrivent la méthodologie, la mise en œuvre et les résultats d’études contrôlées, généralement menées auprès de grands groupes de patients.', NULL, 'l-essai-clinique', '2023-08-23 09:24:45', '2023-08-23 09:24:45'),
(10, 'Les suppléments de matériel', 'Beaucoup de revues médicales acceptent les suppléments de matériel de conférence. Il s’agit de publications en libre accès, évaluées par les pairs, permanentes et citables au sein de la revue.', NULL, 'les-supplements-de-materiel', '2023-08-23 09:25:00', '2023-08-23 09:25:00'),
(11, 'Les notes de données (Data notes, Data paper, Data article)', 'Les notes de données sont un type d’article court évalué par les pairs qui décrit de manière concise les données de recherche stockées dans ce que l’on appelle en anglais un « repository », c’est-à-dire un espace de dépôt online, une collection de documents archivés en ligne. La publication d’une note de données peut vous aider à maximiser l’impact de vos données et à obtenir le crédit approprié pour votre recherche.', NULL, 'les-notes-de-donnees-data-notes-data-paper-data-article', '2023-08-23 09:25:17', '2023-08-23 09:25:17'),
(12, 'Le rapport enregistré (registered report)', 'Un rapport enregistré se compose de deux types d’articles différents : un protocole d’étude et un article de recherche original.', NULL, 'le-rapport-enregistre-registered-report', '2023-08-23 09:25:32', '2023-08-23 09:25:32'),
(13, 'Les articles sur les outils logiciels', 'Un article sur les outils logiciels décrit les raisons du développement d’un nouvel outil logiciel et les détails du code utilisé pour sa construction.', NULL, 'les-articles-sur-les-outils-logiciels', '2023-08-23 09:25:50', '2023-08-23 09:25:50');

-- --------------------------------------------------------

--
-- Structure de la table `responses`
--

DROP TABLE IF EXISTS `responses`;
CREATE TABLE IF NOT EXISTS `responses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` int DEFAULT NULL,
  `content` int DEFAULT NULL,
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `responses`
--

INSERT INTO `responses` (`id`, `message_id`, `content`, `user_ip`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '127.0.0.1', '2023-08-22 17:09:35', '2023-08-22 17:09:35'),
(2, 1, 0, '41.174.148.194', '2023-08-24 10:10:13', '2023-08-24 10:10:13'),
(3, 1, 1, '41.174.139.61', '2023-08-24 11:46:12', '2023-08-24 11:46:12'),
(4, 1, 1, '41.243.11.153', '2023-08-24 15:09:05', '2023-08-24 15:09:05'),
(5, 1, 0, '169.159.212.20', '2023-08-24 18:55:26', '2023-08-24 18:55:26'),
(6, 1, 1, '41.243.11.165', '2023-08-25 07:57:27', '2023-08-25 07:57:27'),
(7, 1, 0, '169.159.212.58', '2023-08-25 08:30:12', '2023-08-25 08:30:12'),
(8, 1, 0, '41.174.144.222', '2023-08-25 12:52:30', '2023-08-25 12:52:30'),
(9, 1, 0, '169.159.220.58', '2023-08-25 19:28:42', '2023-08-25 19:28:42'),
(10, 1, 0, '169.159.211.81', '2023-08-26 12:19:58', '2023-08-26 12:19:58'),
(11, 1, 1, '41.174.137.21', '2023-08-28 13:25:29', '2023-08-28 13:25:29'),
(12, 1, 1, '41.174.141.19', '2023-08-30 14:22:24', '2023-08-30 14:22:24'),
(13, 1, 0, '41.243.11.186', '2023-08-30 17:10:42', '2023-08-30 17:10:42'),
(14, 1, 0, '41.174.143.211', '2023-09-01 10:09:37', '2023-09-01 10:09:37'),
(15, 1, 0, '41.174.143.193', '2023-09-04 10:52:47', '2023-09-04 10:52:47'),
(16, 1, 1, '41.243.11.130', '2023-09-04 15:41:32', '2023-09-04 15:41:32'),
(17, 2, 0, '41.174.141.35', '2023-09-12 14:34:07', '2023-09-12 14:34:07'),
(18, 2, 0, '41.243.11.130', '2023-09-12 15:09:01', '2023-09-12 15:09:01'),
(19, 2, 0, '197.157.209.43', '2023-09-12 19:21:42', '2023-09-12 19:21:42'),
(20, 2, 1, '41.174.144.94', '2023-09-14 08:32:56', '2023-09-14 08:32:56'),
(21, 2, 1, '163.172.191.228', '2023-09-20 15:29:59', '2023-09-20 15:29:59'),
(22, 2, 0, '41.174.151.92', '2023-09-28 16:26:37', '2023-09-28 16:26:37'),
(23, 2, 1, '41.174.148.34', '2023-10-05 10:20:10', '2023-10-05 10:20:10'),
(24, 2, 0, '127.0.0.1', '2023-11-30 10:58:25', '2023-11-30 10:58:25');

-- --------------------------------------------------------

--
-- Structure de la table `responses_labels`
--

DROP TABLE IF EXISTS `responses_labels`;
CREATE TABLE IF NOT EXISTS `responses_labels` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` int DEFAULT NULL,
  `Gauche` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Droite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
