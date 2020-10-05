-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 04 oct. 2020 à 16:58
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Fantasy'),
(2, 'Science Fiction\r\n'),
(3, 'Horreur');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livre_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C37D925CB` (`livre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `livre_id`, `author`, `content`, `created_at`) VALUES
(31, 14, 'Claude-Bertrand Jean', '<p>Dolor nulla facilis suscipit porro magnam officiis. Quis totam ratione inventore omnis tenetur quia. Dolores ut aut quia ut. Laboriosam voluptates non eligendi rerum aut magnam consequatur.</p>', '2020-10-03 16:35:46'),
(32, 14, 'Suzanne Roux', '<p>Dolorem corrupti iure hic provident odit voluptas. Consectetur molestias eos nam.</p>', '2020-10-03 16:35:46'),
(33, 14, 'Virginie du Lagarde', '<p>Sunt ullam cumque aut alias. Id velit aliquid qui quia delectus omnis recusandae.</p>', '2020-10-03 16:35:46'),
(34, 14, 'Élisabeth Vidal', '<p>Accusamus porro et cum explicabo. Quia rerum quod officia iure ipsam consequuntur delectus qui. Doloribus repellat dicta omnis delectus ullam vitae qui. Qui est exercitationem sed sint necessitatibus.</p>', '2020-10-03 16:35:46'),
(35, 14, 'David Le Lopes', '<p>Molestiae dicta quia culpa nulla tenetur temporibus nostrum. Eaque unde nulla ut labore voluptatem.</p>', '2020-10-03 16:35:46'),
(36, 14, 'Julien Francois', '<p>Dolor modi qui mollitia recusandae autem modi ad. Pariatur earum neque occaecati nihil magni. At neque ducimus et perspiciatis similique necessitatibus itaque. Quisquam autem repellat libero vel repellendus.</p>', '2020-10-03 16:35:46'),
(37, 14, 'Henriette Julien', '<p>Voluptas nihil tenetur accusamus id est quo quidem. Est et qui sed modi dolorem ad. Enim et et iusto.</p>', '2020-10-03 16:35:46'),
(38, 14, 'Chantal Bodin-Lemaire', '<p>Autem sit cupiditate aut officia soluta ea eum. Possimus quod quo dolor natus. Iste commodi pariatur iure ea dolor. Voluptatem explicabo qui cumque quibusdam dolorum eveniet cupiditate nemo.</p>', '2020-10-03 16:35:46'),
(39, 15, 'Auguste Boyer', '<p>Nemo pariatur harum accusamus expedita. Facilis sit maxime ut temporibus sint consequatur. Enim qui commodi fugit earum totam doloribus deserunt.</p>', '2020-10-03 16:35:46'),
(40, 15, 'Gabriel Gaudin', '<p>Voluptatem magni nobis fugit praesentium voluptatibus. Tenetur deleniti nemo non recusandae aliquam et voluptatem. Quo et qui iure voluptas.</p>', '2020-10-03 16:35:46'),
(41, 15, 'Alfred-Léon Rousset', '<p>Nesciunt rerum nulla unde similique quaerat ipsum. Odit non quae et ipsum necessitatibus nihil fuga. Asperiores aut consequuntur quidem illum sit corporis.</p>', '2020-10-03 16:35:46'),
(42, 15, 'Nathalie de la Pinto', '<p>Voluptas consequatur accusamus dolores dolorem consequatur ea alias qui. Quo saepe sit quisquam qui culpa. Quia sit dolores dolorem ex. Dignissimos pariatur saepe eum eos.</p>', '2020-10-03 16:35:46'),
(43, 16, 'Élisabeth Imbert', '<p>Aut ratione tenetur qui ullam enim doloribus. Quo quisquam consequuntur vel. Dolores et nihil consectetur sit ea. Et quisquam modi rem voluptatem ut ipsum odio. Aut et temporibus et aut.</p>', '2020-10-03 16:35:46'),
(44, 16, 'Martin Pineau', '<p>Qui inventore id perspiciatis alias. Odio voluptas magnam consequatur magnam aspernatur nisi. Aspernatur voluptatem nobis iure non a aut omnis.</p>', '2020-10-03 16:35:46'),
(45, 16, 'Chantal Jacquot', '<p>Et sed earum minus enim. Ex natus voluptates doloribus praesentium. Vel perferendis voluptatem voluptates aut error minima id perspiciatis. Et cum non iure eum voluptate vero. Id quibusdam corrupti dolores nemo assumenda aliquid.</p>', '2020-10-03 16:35:46'),
(46, 16, 'Sylvie de la Weber', '<p>Nemo qui optio impedit nemo eligendi. Et autem voluptatum enim ratione ducimus accusantium. Dolor sit quo qui qui iure.</p>', '2020-10-03 16:35:46'),
(47, 17, 'Roger Dijoux', '<p>Ea asperiores assumenda officia ad placeat nulla corrupti non. Magnam ipsam porro veritatis non voluptas exercitationem. Harum amet officiis expedita sint optio pariatur libero. Quo necessitatibus qui et modi.</p>', '2020-10-03 16:35:46'),
(48, 17, 'Susanne Chevallier', '<p>Delectus dolor doloribus consequatur necessitatibus corporis quia deserunt. Quis accusantium odit sed dicta sit aliquid. Natus odit iusto vero iure omnis impedit vel.</p>', '2020-10-03 16:35:46'),
(49, 17, 'Pierre Goncalves', '<p>Facere blanditiis corrupti qui inventore neque. Rerum quos sunt pariatur. Doloremque aut perferendis ratione in quod deleniti quo ad.</p>', '2020-10-03 16:35:46'),
(50, 17, 'Édith Moreno', '<p>Iusto cumque praesentium accusantium ab eos sint vel. Doloribus ea repudiandae consequuntur iure non.</p>', '2020-10-03 16:35:46'),
(51, 17, 'Alexandria Courtois', '<p>Id officiis dolore hic atque. Officia magni commodi magni veritatis quasi dolore. Necessitatibus ipsa nihil est dolorem aspernatur sed. Est nihil est molestias praesentium.</p>', '2020-10-03 16:35:46'),
(52, 18, 'Jacqueline-Henriette Ferreira', '<p>Aut sint ut accusantium possimus ex. Earum quia officia quia enim soluta laboriosam. Corporis dolorem deleniti fugiat aut ducimus veniam in. Error veniam qui quos nobis vel provident molestias.</p>', '2020-10-03 16:35:46'),
(53, 18, 'Alix Tessier', '<p>Id architecto non vel quo. Dolorem eligendi et voluptatem doloremque. Omnis reprehenderit eveniet repellendus perspiciatis. Voluptas dolore eos qui molestiae dolore vel consequuntur.</p>', '2020-10-03 16:35:46'),
(54, 18, 'Alexandrie Lemaire', '<p>Aliquam facere sed rem accusamus tempore at eaque. Voluptas nisi possimus adipisci necessitatibus sed maxime minima ea.</p>', '2020-10-03 16:35:46'),
(55, 18, 'Honoré Chartier-Picard', '<p>Quibusdam nulla est quo molestiae voluptas similique. Consequatur sint cupiditate voluptatum sequi fugiat. Error occaecati totam provident cupiditate cupiditate. Voluptate sint quia qui.</p>', '2020-10-03 16:35:46'),
(56, 18, 'Georges Marie', '<p>Aliquam possimus maxime reiciendis voluptatibus commodi repellat. Quo deleniti facilis consequatur voluptas quis. Omnis quis vel officiis praesentium ut.</p>', '2020-10-03 16:35:46'),
(57, 18, 'Caroline Leger-Hoarau', '<p>Eveniet molestias sit repellat soluta culpa. Eum itaque possimus odit et ducimus est. Et quos ullam sint quam.</p>', '2020-10-03 16:35:46'),
(58, 19, 'Yves Charles', '<p>Sunt aliquid vel sint dolores at natus id et. Quo qui vel aspernatur beatae. Ut quis asperiores debitis ipsum alias. Eum hic autem consequatur voluptatibus.</p>', '2020-10-03 16:35:46'),
(59, 19, 'Jules Barbier', '<p>Alias autem magnam sint omnis soluta. Neque veritatis optio nihil. Temporibus dolor ut sit aut iure fugiat. Ut suscipit provident in doloribus voluptatem ut adipisci.</p>', '2020-10-03 16:35:46'),
(60, 19, 'Théophile Chevallier', '<p>Corrupti aut id dolor. Aspernatur reprehenderit eos nesciunt aut mollitia alias eum. Autem repellat illum natus et. Cupiditate alias ducimus occaecati.</p>', '2020-10-03 16:35:46'),
(61, 19, 'Michelle Letellier', '<p>Cupiditate voluptas exercitationem quo minima nesciunt sit. Suscipit enim voluptatum consequuntur eos animi et hic. Laboriosam assumenda est non vero neque aut mollitia. Deleniti accusamus repellendus ad quos.</p>', '2020-10-03 16:35:46'),
(62, 19, 'Augustin Guillaume-Rodrigues', '<p>Voluptatibus et voluptas ut nulla quia similique sapiente. Nam ipsum fugiat et molestiae earum quia minima. Facere et expedita doloribus fugit. In architecto blanditiis numquam harum sapiente quia voluptatem.</p>', '2020-10-03 16:35:46'),
(63, 19, 'Noémi Jacques', '<p>Illum facilis non voluptas voluptatibus maxime dolores. Quaerat quae iusto ut ipsam illo voluptatibus. Deserunt saepe quia distinctio velit nobis. Ut vel nam laboriosam dolore quidem et. Impedit debitis sequi quia dolorem.</p>', '2020-10-03 16:35:46'),
(64, 20, 'Thibault Paris', '<p>At libero praesentium esse harum accusantium autem. Voluptatem voluptatem voluptate sed ut tempora. Enim et nemo maxime accusamus. Adipisci sed officia repellat porro autem ut.</p>', '2020-10-03 16:35:46'),
(65, 20, 'Caroline Perret', '<p>Quis autem totam vitae libero impedit. Illo aut veniam fugiat porro pariatur eum minima. Assumenda quo similique provident ea a qui aliquid. Animi sit quasi hic nobis voluptas odit autem.</p>', '2020-10-03 16:35:46'),
(66, 20, 'Maurice Breton', '<p>Sed voluptate commodi tempora cumque explicabo perspiciatis recusandae. Nemo iste blanditiis voluptatem ut. Ut vel aperiam nam aut.</p>', '2020-10-03 16:35:46'),
(67, 20, 'Olivier Etienne', '<p>Laborum sit sapiente quam et. Maiores id facere qui voluptatem. Praesentium aliquid deleniti culpa mollitia ab libero. Non ut et doloribus.</p>', '2020-10-03 16:35:46'),
(68, 20, 'Édith Bernard', '<p>Fugiat voluptatem et autem voluptatum. Nulla qui vel ut.</p>', '2020-10-03 16:35:46'),
(69, 20, 'Thibaut de la Lejeune', '<p>Incidunt id debitis consequatur nihil. Voluptatem vero minus cumque et totam.</p>', '2020-10-03 16:35:46'),
(70, 20, 'Marie Blot', '<p>Odit ipsum atque accusantium nostrum est quidem nobis. Ipsam qui dolorem voluptatem voluptas. Dolores velit quo repellat laboriosam perferendis. Possimus porro et sunt explicabo perferendis iusto.</p>', '2020-10-03 16:35:46'),
(71, 20, 'Nath Berthelot', '<p>Debitis ullam ut eligendi optio accusamus debitis. Eaque quae est eius qui est autem rem.</p>', '2020-10-03 16:35:46'),
(72, 20, 'Colette Lamy', '<p>Modi natus ex et et eligendi corrupti error. Et odit modi et ut. Voluptatem reprehenderit rerum quo labore natus numquam blanditiis laborum. Eaque minima eum aut nobis veniam harum. Non ducimus sunt fugiat totam et nihil sit sit.</p>', '2020-10-03 16:35:46'),
(73, 20, 'Marine de la Guibert', '<p>Dolorum dignissimos temporibus at nihil error. Non quasi alias officiis labore accusamus. Debitis in ut totam ut consectetur qui qui. Autem aliquam est minima quis voluptatem expedita occaecati.</p>', '2020-10-03 16:35:46'),
(79, 22, 'René Rodriguez', '<p>Nostrum veniam nobis eos excepturi molestiae nobis. Ut facilis dignissimos dolorem iure nam quos repellendus. Culpa quam mollitia qui impedit veniam quisquam. Eaque earum nobis ut aliquid officia facilis asperiores.</p>', '2020-10-03 16:35:46'),
(80, 22, 'Gérard Leclerc', '<p>Sit soluta consequatur commodi cupiditate et non aut illum. In fugit omnis voluptate assumenda eveniet sed omnis quasi. Voluptas qui tempora ex qui voluptate sed commodi.</p>', '2020-10-03 16:35:46'),
(81, 22, 'Adélaïde Lagarde', '<p>Qui omnis aut non soluta voluptas temporibus sapiente. Qui voluptatem sint hic totam ut. Quis cumque qui beatae quia.</p>', '2020-10-03 16:35:46'),
(82, 22, 'Marine Moreau', '<p>Reprehenderit harum nihil eligendi est. Excepturi hic ipsam pariatur expedita non soluta ut. Voluptates officiis commodi dolorem dolores nisi. Et temporibus ut quae sit qui.</p>', '2020-10-03 16:35:46'),
(83, 22, 'Brigitte Philippe-Mace', '<p>Tenetur ex ut nisi et earum in omnis. Ab hic autem non accusantium. Et omnis non cum ad veniam et.</p>', '2020-10-03 16:35:46'),
(84, 22, 'Paul de la Besnard', '<p>Ullam dolor facere iusto est qui. Consequuntur quis quidem voluptas ipsum aut. Rerum ut quia et asperiores. Sunt tempore distinctio tempora voluptas.</p>', '2020-10-03 16:35:46'),
(85, 22, 'Adrienne Louis-Courtois', '<p>Et ullam eveniet consequatur quaerat aut suscipit quasi voluptatem. In id magnam et dicta qui qui. Voluptatem dignissimos rerum debitis quidem est mollitia. Est voluptatem velit qui facilis odit dolore.</p>', '2020-10-03 16:35:46'),
(86, 22, 'Mathilde Le Paris', '<p>Omnis sit eos ullam facilis. Dolor eveniet assumenda voluptas qui quibusdam omnis. Cumque optio voluptate sapiente sit temporibus labore. In dolores quia nihil natus qui commodi sunt.</p>', '2020-10-03 16:35:46'),
(87, 23, 'Geneviève de Schmitt', '<p>Ducimus suscipit laudantium cumque. Est nam rerum laudantium sunt. Cupiditate quibusdam omnis laboriosam iusto praesentium ipsum.</p>', '2020-10-03 16:35:46'),
(88, 23, 'Éric Toussaint-Bourgeois', '<p>Id est debitis autem hic. Ea iusto eveniet veritatis hic. Cumque doloremque reiciendis perspiciatis sit dolore ex eos. Eos harum nobis consequuntur animi occaecati voluptatem.</p>', '2020-10-03 16:35:46'),
(89, 23, 'Roland Mahe', '<p>Est et et molestiae explicabo harum. Ab placeat ut et voluptatibus totam. Tenetur autem sint pariatur ducimus qui tenetur asperiores sit.</p>', '2020-10-03 16:35:46'),
(90, 23, 'Victor Toussaint-Lamy', '<p>Quae sunt quae aut fuga et possimus. Illo vitae nihil veniam ea quibusdam eos. Sit quia inventore asperiores aut animi officiis earum.</p>', '2020-10-03 16:35:46'),
(91, 23, 'Arnaude Klein', '<p>Quibusdam mollitia cum delectus animi nesciunt. Non eos repudiandae ut mollitia at autem rerum. Ad non tenetur voluptatem deleniti.</p>', '2020-10-03 16:35:46'),
(92, 23, 'Michelle Garcia', '<p>Saepe quo tenetur dolorem harum expedita enim non dolor. Molestias unde corporis reiciendis voluptate. Temporibus quidem et voluptas eaque ex ut qui ipsam. Non dolorem sed labore necessitatibus.</p>', '2020-10-03 16:35:46'),
(93, 24, 'Alexandria Boutin', '<p>Ipsam quae iste qui explicabo aut in. Ut quia voluptates dignissimos aperiam eius corporis saepe consequatur. Ullam magni quibusdam corporis. Placeat exercitationem eos reprehenderit omnis qui.</p>', '2020-10-03 16:35:46'),
(94, 24, 'Édith-Alexandria Legendre', '<p>Dignissimos quia et nemo rerum distinctio et possimus dolores. Eum qui sit nesciunt quisquam velit tenetur. Deserunt quis excepturi unde ipsa vel temporibus.</p>', '2020-10-03 16:35:46'),
(95, 24, 'Brigitte Hardy', '<p>Ab veniam praesentium sint et maxime beatae. Commodi voluptate qui dignissimos enim quis. Ipsam cum quo totam nisi dignissimos sapiente nihil non. Voluptatibus in necessitatibus dolores aspernatur et.</p>', '2020-10-03 16:35:46'),
(96, 24, 'Auguste Hardy', '<p>Aut repellat placeat aut rerum deserunt. Officia nesciunt est qui tempore. Eum sit repellat quia rem. Accusantium aut hic perferendis.</p>', '2020-10-03 16:35:46'),
(97, 24, 'Étienne Lelievre', '<p>Sit sequi est error ea excepturi. Vel quidem labore non fuga animi enim debitis. Eligendi alias est et accusantium iste dolor. Enim dolorum earum quos dolor.</p>', '2020-10-03 16:35:46'),
(98, 24, 'Eugène Girard', '<p>Qui autem dolore atque facilis commodi. Magni et eum ipsam ipsa ex odit. Doloribus voluptatem aut totam maiores voluptatem eligendi et. Enim velit omnis ea.</p>', '2020-10-03 16:35:46'),
(99, 24, 'Arthur Descamps', '<p>Atque accusamus sit aspernatur aliquid quos. Vel praesentium totam doloribus. Modi rerum ut consequuntur commodi similique natus at.</p>', '2020-10-03 16:35:46'),
(102, 14, 'Moi', 'Test', '2020-10-04 14:24:32'),
(103, 17, 'Logan', 'Incroyable ce livre :)', '2020-10-04 14:50:49'),
(104, 20, 'Pierre', 'Trop bien', '2020-10-04 15:00:06'),
(105, 25, 'Logan', 'First!', '2020-10-04 15:13:22'),
(106, 26, 'Logan', 'First aussi!', '2020-10-04 15:16:27');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201003103028', '2020-10-03 14:19:27', 63),
('DoctrineMigrations\\Version20201003142042', '2020-10-03 14:20:48', 93),
('DoctrineMigrations\\Version20201003155530', '2020-10-03 15:55:36', 214),
('DoctrineMigrations\\Version20201004101716', '2020-10-04 10:17:54', 777);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

DROP TABLE IF EXISTS `livres`;
CREATE TABLE IF NOT EXISTS `livres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `date_edition` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_927187A412469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `title`, `content`, `image`, `created_at`, `date_edition`, `auteur`, `category_id`) VALUES
(14, 'Harry Potter à l\'école des sorciers', 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l\'emmener à Poudlard, la célèbre école de sorcellerie où une place l\'attend depuis toujours.\r\n\r\nVoler sur des balais, jeter des sorts, combattre des Trolls : Harry Potter se révèle un sorcier vraiment doué. Mais quel mystère entoure sa naissance et qui est l\'effroyable V..., le mage dont personne n\'ose prononcer le nom ?', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQIYcuXPqhcjx-TUdQm0FSo1OF8S3PtbeBaj5DPGNmipIrnzkEp', '2020-10-04 14:49:06', '1997', 'J K Rowling', 1),
(15, 'Harry Potter et la chambre des secrets', 'Harry Potter fait une deuxième rentrée fracassante en voiture volante à l\'école des sorciers. Cette deuxième année ne s\'annonce pas de tout repos… surtout depuis qu\'une étrange malédiction s\'est abattue sur les élèves. Entre les cours de potion magique, les matchs de quidditch et les combats de mauvais sorts, Harry trouvera-t-il le temps de percer le mystère de la Chambre des Secrets ? Un livre magique pour sorciers et sorcières confirmés !', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz1Xy7cnswV53oq0fOSrlmhUvHY8CoPH_ldTTzRk-Wcg6ugRqQ', '2020-10-04 14:46:49', '1998', 'J K Rowling', 1),
(16, 'Harry Potter et le Prisonnier d\'Azkaban', 'Harry Potter a quatorze ans et il entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d\'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà, les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au coeur des événements les plus dramatiques qu\'il ait jamais eu à affronter.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8r8DJOQORRxy5HwLaPxBZzbhe8LmdANQSIRcxAhkzh6zOrF1t', '2020-10-04 14:48:31', '1999', 'J K Rowling', 1),
(17, 'Harry Potter et la Coupe de feu', 'Après un horrible été chez les Dursley, Harry Potter entre en quatrième année au collège de Poudlard. À quatorze ans, il voudrait simplement être un jeune sorcier comme les autres, retrouver ses amis Ron et Hermione, assister avec eux à la Coupe du Monde de quidditch, apprendre de nouveaux sortilèges et essayer des potions inconnues. Une grande nouvelle l\'attend à son arrivée : la tenue à Poudlard d\'un tournoi de magie entre les plus célèbres écoles de sorcellerie. Déjà les spectaculaires délégations étrangères font leur entrée… Harry se réjouit. Trop vite. Il va se trouver plongé au cœur des événements les plus dramatiques qu\'il ait jamais eu à affronter.', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSQ9maQl-FoTeiIhgutbzSMEDST2TJtOy5lyaMQ1UrHuP1ZN2sf', '2020-10-04 14:50:16', '2000', 'J K Rowling', 1),
(18, 'Harry Potter et l\'Ordre du phénix', 'À quinze ans, Harry entre en cinquième année à Poudlard, mais il n\'a jamais été si anxieux. L\'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie semble ne pas prendre cette menace au sérieux, contrairement à Dumbledore. La résistance s\'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdt9daKxWsbNqS_n2dRKvpmsP4RXXArTEFDYBjajeEuS-PmWX3', '2020-10-04 14:53:01', '2003', 'J K Rowling', 1),
(19, 'Harry Potter et le Prince de sang-mêlé', 'Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au coeur de la mémoire va-t-il l\'entraîner ?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6ifudum61cmw4i3ySf664aIAPrzQylTZO3VGDG__1oYMbST2u', '2020-10-04 14:57:17', '2005', 'J K Rowling', 1),
(20, 'Harry Potter et les Reliques de la Mort', 'Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D\'épreuves en révélations, le courage, les choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRSjGQZnB83TUnsIEIpO6BpURYolynXl3ntCbHK65M5EhfqXIOS', '2020-10-04 14:59:39', '2007', 'J K Rowling', 1),
(22, 'Carbone Modifié', 'Au 26ème siècle, l\'humanité s\'est répandue à travers la galaxie. Le Protectorat des Nations unies maintient une poigne de fer sur les nouveaux mondes, avec l\'aide de ses troupes d\'élite : les Corps diplomatiques. La technologie a apporté ce que la religion ne pouvait garantir ; quand votre conscience peut être stockée dans une pile corticale et téléchargée dans un nouveau corps, même la mort n\'est plus qu\'un dérangement mineur. Tant que vous avez les moyens de payer... L\'ex-Diplo Takeshi Kovacs avait déjà été tué, avant ; mais sa dernière mort en date a été particulièrement brutale. Injecté à travers des années-lumière, il est réenveloppé dans un corps à San Francisco, sur la Vieille Terre, à la demande d\'un riche magnat qui souhaite élucider sa propre mort. La police a conclu à un suicide. Mais pourquoi se serait-il suicidé alors qu\'il sauvegardait son esprit tous les jours, certain de revenir parmi les vivants ? Balancé au centre d\'une conspiration vicieuse, Kovacs réalise bientôt que la cartouche qui a troué sa poitrine sur Harlan n\'était que le début de ses problèmes...', 'https://images-na.ssl-images-amazon.com/images/I/71iWY9Vq+sL.jpg', '2020-10-04 15:04:42', '2002', 'Richard Morgan', 2),
(23, 'Anges déchus', 'Réenveloppé dans un corps idéal pour le combat tactique, l\'ex-Diplo Takeshi Kovacs est aujourd\'hui un mercenaire engagé dans une guerre sanglante qui ravage la planète Sanction IV, sponsorisée par le Protectorat des Nations unies, qui souhaitent à mettre un terme à la révolution qui soulève ce monde. Pris dans la tourmente politique, Kovacs a décidé de tenter sa chance et profite du conflit pour rejoindre un petit groupe essayant de s\'approprier une découverte archéologique qui n\'a pas de prix. Et, de fait, il se retrouve propulsé dans un maelström d\'intrigues et de trahison en comparaison duquel le conflit qu\'il vient de quitter fait pâle figure. Car toutes les corporations tueraient pour cette découverte. Une découverte qui risque de signifier la fin de l\'humanité ou le début d\'une nouvelle ère. Car dans ce XXVIIe siècle d\'une humanité ravagée par la violence, la folie et l\'envie, les hommes sont bien mal préparés à l\'héritage qui s\'offre soudainement à eux : les étoiles !', 'https://images-na.ssl-images-amazon.com/images/I/714GQJWYTzL.jpg', '2020-10-04 15:06:48', '2003', 'Richard Morgan', 2),
(24, 'Furies déchaînées', 'Takeshi Kovacs rentre chez lui...\r\nsur Harlan, la planète océan. Ses 5 % de terres émergées. Ses mers dangereuses et imprévisibles. Ses plateformes martiennes, qui détruisent tout ce qui vole si c\'est plus évolué qu\'un hélicoptère. Harlan. Sa révolution quelliste évanouie. Visitez les plages tropicales, les marais de Kossuth ! Ne manquez pas les ruines de New Hokkaido envahies de machines ! Harlan, prise dans les tirs croisés des Premières Familles, des corpos et des Yakuza.\r\nEmbarqué dans une croisade implacable pour venger un amour perdu, Kovacs dérive dans un ouragan d\'intrigues politiques et de mystères technologiques tandis que les fantômes d\'Harlan et son propre passé de violence se rappellent à lui. Quellcrist Falconer serait revenue d\'entre les morts. Et cette fois, les Premières Familles ont envoyé à ses trousses un jeune Diplo nommé... Kovacs, en hibernation depuis deux cents ans, qui ne compte pas partager sa nouvelle existence avec un sosie criminel sur le retour.\r\nDans ce chaos, une chose est sûre : un certain Takeshi Kovacs va devoir mourir. Pour de bon.', 'https://images-na.ssl-images-amazon.com/images/I/71RrRLIAQAL.jpg', '2020-10-04 15:08:42', '2005', 'Richard Morgan', 2),
(25, 'Ça', 'Tout avait commencé juste avant les vacances d\'été quand le petit Browers avait gravé ses initiales au couteau sur le ventre de son copain Ben Hascom.\r\n     Tout s\'était terminé deux mois plus tard dans les égouts par la poursuite infernale d\'une créature étrange, incarnation même du mal.\r\n     Mais aujourd\'hui tout recommence. Les enfants terrorisés sont devenus des adultes. Le présent retrouve le passé, le destin reprend ses droits, l\'horreur resurgit.\r\n     Chacun retrouvera dans ce roman à la construction saisissante ses propres souvenirs, ses angoisses et ses terreurs d\'enfant, la peur de grandir dans un monde de violence.', 'https://www.lavisqteam.fr/wp-content/uploads/2017/09/Ca.jpg', '2020-10-04 15:13:09', '1986', 'Stephen King', 3),
(26, 'Ça 2', 'De retour, après vingt-sept années, dans leur petite ville de Derry, les membres du « Club des ratés » (ainsi se nommaient-ils eux-mêmes sur les bancs de l’école) doivent affronter leurs plus terrifiants souvenirs, brutalement ressurgis.\r\nça : nul ne sait nommer autrement la chose inconnue qui semble devoir se réveiller cycliquement dans les entrailles de la ville, pour semer la mort et l’épouvante.\r\nRoman de l’enfance, tableau saisissant de la vie américaine, cette œuvre ambitieuse est une parabole du Mal enfoui, refoulé, et de la violence de ses réapparitions. C’est enfin, et surtout, une des plus grandes œuvres de Stephen King, un festival de terreur.', 'https://media.senscritique.com/media/000007025791/source_big/Ca_tome_2.jpg', '2020-10-04 15:16:16', '2002', 'Stephen King', 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(17, 'Test@gmail.com', 'Comptetest', '$2y$13$yw42Cg2MhOJEyNuSRiuYk.V3nsNUX/Jn5bwJaf5drhY1zIjZUpEFe');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C37D925CB` FOREIGN KEY (`livre_id`) REFERENCES `livres` (`id`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `FK_927187A412469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
