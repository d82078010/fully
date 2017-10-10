/*
Navicat MySQL Data Transfer

Source Server         : t
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fully

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-10 17:27:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', 'rNLpUoP2aIawHdWlKzHYROEuGeoF1VR3', '1', '2017-10-09 02:04:01', '2017-10-09 02:04:00', '2017-10-09 02:04:01');
INSERT INTO `activations` VALUES ('2', '2', 'GJ6RTkrWmIDma3c4WOfvGTxU07jiGZuW', '1', '2017-10-09 02:04:01', '2017-10-09 02:04:01', '2017-10-09 02:04:01');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Cras vitae vulputate ipsum', 'This is the first blog post.<br><br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet facilisis ipsum. Aenean placerat orci ut ligula hendrerit egestas. Curabitur non porttitor elit. Ut scelerisque est ipsum, non molestie quam consequat accumsan. Suspendisse luctus metus ut mi consectetur, mollis convallis tortor posuere. Duis vestibulum erat at lacus ultrices, ut aliquam turpis pulvinar. Cras lobortis dui nisi, sed varius massa pulvinar sit amet. Cras vitae vulputate ipsum. Ut varius lectus quam, id ultrices nisl tempor mattis. Etiam sit amet imperdiet ipsum.\n\nSed porta velit vitae quam bibendum, ut convallis neque pharetra. Sed tempus velit tristique iaculis blandit. Phasellus et egestas lorem. Duis elementum turpis sollicitudin est consequat, vel viverra est tristique. Pellentesque lacinia posuere ante. Duis et consequat justo. Sed fermentum velit elit. Nulla suscipit vulputate ipsum, mattis tincidunt orci luctus eget. Nam in volutpat turpis. Cras vitae sapien urna. Pellentesque vestibulum adipiscing malesuada. Donec ornare sollicitudin libero ut hendrerit. ', 'blog-post', '1', 'blog, post', 'Blog Post', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('2', 'Donec molestie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus in tellus vel consectetur. Cras a quam facilisis, porta dui id, ultrices dui. Donec molestie, tortor eu condimentum tempus, massa nisl auctor dui, sodales tempus diam leo sed magna. Aliquam eu neque non nibh congue euismod. Vestibulum at malesuada nibh, sit amet imperdiet erat. Vivamus fringilla augue nunc, id porttitor lectus iaculis vitae. Maecenas posuere porttitor arcu. Nullam bibendum congue diam sed interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin laoreet aliquam gravida. Etiam sit amet orci sed augue lacinia vulputate. Phasellus mollis pretium orci, mollis ultrices purus accumsan sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam ac sollicitudin erat, sit amet cursus elit. Duis nec lacinia eros, sit amet convallis erat. ', 'blog-post-2', '1', 'blog, post, 2', 'Blog Post 2', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('3', 'Donec eu vehicula arcu', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-3', '1', 'blog, post, 3', 'Blog Post 3', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('4', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-4', '1', 'blog, post, 4', 'Blog Post 4', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('5', 'Aliquam elit libero', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-5', '1', 'blog, post, 5', 'Blog Post 5', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('6', 'Fusce dictum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-6', '1', 'blog, post, 6', 'Blog Post 6', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('7', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-7', '1', 'blog, post, 7', 'Blog Post 7', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('8', 'Nullam suscipit adipiscing purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-8', '1', 'blog, post, 8', 'Blog Post 8', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('9', 'Mauris risus nisl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in odio in augue tincidunt viverra. Cras sit amet risus eget augue fermentum consequat et id libero. Donec a laoreet orci. In mi ligula, ornare sit amet nisi et, laoreet tincidunt elit. Curabitur id dui urna. Cras metus tortor, egestas nec magna ornare, scelerisque laoreet ante. Nam aliquam felis velit, a ornare ante porta quis. Proin nisi enim, lobortis at sapien sit amet, lacinia dictum libero. Donec ac pulvinar ante. Mauris risus nisl, pellentesque sed nunc eget, aliquam volutpat dolor. Fusce mollis id purus quis malesuada. Nullam gravida faucibus faucibus. Curabitur ut neque odio. Aenean porta fringilla placerat. Nullam consequat sagittis orci sed tincidunt. ', 'blog-post-9', '1', 'blog, post, 9', 'Blog Post 9', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('10', 'Nam iaculis leo risus', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-10', '1', 'blog, post, 10', 'Blog Post 10', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('11', 'Vestibulum quis dui in tellus commodo eleifend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-11', '2', 'blog, post, 11', 'Blog Post 11', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('12', ' Sed scelerisque', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-12', '2', 'blog, post, 12', 'Blog Post 12', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('13', 'Aenean sapien lectus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-13', '3', 'blog, post, 13', 'Blog Post 13', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('14', 'Phasellus eget euismod tortor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '3', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'tr', '2017-10-09 02:04:02', '2017-10-09 02:04:02');
INSERT INTO `articles` VALUES ('15', 'Vestibulum at congue enim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '5', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'en', '2017-10-09 02:04:02', '2017-10-09 07:52:20');

-- ----------------------------
-- Table structure for articles_tags
-- ----------------------------
DROP TABLE IF EXISTS `articles_tags`;
CREATE TABLE `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_tags_article_id_index` (`article_id`),
  KEY `articles_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles_tags
-- ----------------------------
INSERT INTO `articles_tags` VALUES ('1', '1', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('2', '1', '3', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('3', '1', '4', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('4', '2', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('5', '2', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('6', '3', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('7', '3', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('8', '3', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('9', '4', '4', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('10', '4', '5', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('11', '2', '3', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('12', '5', '5', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('13', '5', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('14', '1', '8', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('15', '1', '5', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('16', '6', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('17', '7', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('18', '8', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('19', '9', '3', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('20', '9', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('21', '10', '1', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('22', '10', '2', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('23', '10', '3', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('24', '10', '4', '2017-10-09 02:04:04', '2017-10-09 02:04:04');
INSERT INTO `articles_tags` VALUES ('25', '10', '5', '2017-10-09 02:04:04', '2017-10-09 02:04:04');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'PHP', 'php', 'tr');
INSERT INTO `categories` VALUES ('2', 'SQL', 'sql', 'tr');
INSERT INTO `categories` VALUES ('3', 'HTML', 'html', 'tr');
INSERT INTO `categories` VALUES ('4', 'CSS', 'css', 'tr');
INSERT INTO `categories` VALUES ('5', 'Javascript', 'javascript', 'tr');
INSERT INTO `categories` VALUES ('6', 'JQuery', 'jquery', 'en');

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('2', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu.', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('3', 'Curabitur sagittis ante sed quam tristique interdum.', 'Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. ', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('4', 'Suspendisse sit amet interdum neque.', 'Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('5', 'Maecenas rutrum congue orci, a vestibulum enim varius sed.', 'Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('6', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('7', 'Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('8', 'Duis quam ante, fringilla in metus quis, ornare scelerisque felis. ', 'Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('9', 'Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla.', 'Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('10', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'tr', '2017-10-09 02:04:07', '2017-10-09 02:04:07');
INSERT INTO `faqs` VALUES ('11', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'en', '2017-10-09 02:04:07', '2017-10-09 02:04:07');

-- ----------------------------
-- Table structure for form_posts
-- ----------------------------
DROP TABLE IF EXISTS `form_posts`;
CREATE TABLE `form_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_name_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of form_posts
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for maillist
-- ----------------------------
DROP TABLE IF EXISTS `maillist`;
CREATE TABLE `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maillist
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Ana Sayfa', '/', '1', '0', 'module', 'home', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('2', 'Haberler', '/tr/news', '2', '0', 'module', 'news', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('3', 'Blog', '/tr/article', '3', '0', 'module', 'blog', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('4', 'Projeler', '/tr/project', '4', '0', 'module', 'project', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('5', 'Videolar', '/tr/video', '5', '0', 'module', 'video', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('6', 'Galeri', '/tr/photo-gallery/fotograf-galerisi', '6', '0', 'module', 'photo_gallery', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('7', 'Hakkımızda', '/tr/page/hakkimizda', '7', '0', 'module', 'page', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('8', 'SSS', '/tr/faq', '8', '0', 'module', 'faq', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('9', 'İletişim', '/tr/contact', '9', '0', 'module', 'contact', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');
INSERT INTO `menus` VALUES ('10', 'Home', '/', '10', '0', 'module', 'home', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('11', 'News', '/en/news', '11', '0', 'module', 'news', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('12', 'Blog', '/en/article', '12', '0', 'module', 'blog', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('13', 'Projects', '/en/project', '13', '0', 'module', 'project', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('14', 'Videos', '/en/video', '14', '0', 'module', 'video', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('15', 'Faq', '/en/faq', '15', '0', 'module', 'faq', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('16', 'Contact Us', '/en/contact', '16', '0', 'module', 'contact', '1', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'en');
INSERT INTO `menus` VALUES ('17', '网站首页', '/zh/', '1', '0', 'module', 'home', '1', '2017-10-10 01:50:37', '2017-10-10 01:50:37', 'zh');
INSERT INTO `menus` VALUES ('18', '关于我们', '/zh/', '2', '0', 'module', null, '1', '2017-10-10 09:01:40', '2017-10-10 09:01:40', 'zh');
INSERT INTO `menus` VALUES ('19', '中心介绍', '/zh/', '3', '18', 'module', null, '1', '2017-10-10 09:02:48', '2017-10-10 09:02:48', 'zh');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2013_10_24_070153_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2013_10_24_111453_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143600_create_photo_galleries_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143700_create_photos_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_10_191159_create_form_posts_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_222615_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_224042_create_articles_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_22_085357_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_27_110650_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_29_083232_create_news_table', '1');
INSERT INTO `migrations` VALUES ('2013_12_11_124855_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('2014_01_13_204110_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_11_133026_create_maillist_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_181907_create_faqs_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_190645_create_projects_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_205053_create_videos_table', '1');
INSERT INTO `migrations` VALUES ('2014_09_10_205053_create_logs_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_09_230147_migration_cartalyst_sentinel', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Nam consectetur ullamcorper leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'nam-consectetur-ullamcorper-leo', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('2', 'Nunc pulvinar ligula vel justo tincidunt', 'Praesent non turpis facilisis, tincidunt lectus tristique, aliquet quam. Nulla facilisi. Mauris rutrum suscipit elit in tincidunt. Suspendisse potenti. Curabitur sed metus quis arcu aliquam adipiscing. Praesent ultrices nisl suscipit ante suscipit aliquet. Sed enim diam, dictum eget cursus sit amet, porta mollis felis. Donec vestibulum varius felis vel tristique. Donec in adipiscing tortor. Vestibulum dignissim scelerisque ante at aliquet. Cras ultrices metus convallis mi porttitor fermentum.Suspendisse nec velit ut est tristique placerat. Vivamus venenatis nunc id mi facilisis congue. Sed quis ipsum euismod diam aliquet venenatis. Nam nunc diam, tristique at placerat at, ullamcorper ut nunc. Aenean et vulputate augue, nec blandit ligula. Sed venenatis id dolor eu pharetra. Vestibulum tempus justo vitae nunc pellentesque vehicula. Aenean convallis ante vel justo porttitor hendrerit.Etiam sodales est ac porttitor hendrerit. Nullam vulputate arcu fermentum tincidunt gravida. Nunc pulvinar ligula vel justo tincidunt, eget venenatis sapien faucibus. Nam lobortis cursus dolor, sed vehicula sem tempus eget. Duis arcu tellus, vehicula at dapibus id, aliquam eu eros. Aenean eget nibh nunc. Fusce vitae urna in lorem iaculis tincidunt. Aliquam erat volutpat. Sed feugiat odio vitae varius pretium. Nam mattis augue ac lectus pulvinar, quis tempus lacus ornare. Sed nec eros tellus. Cras placerat erat eu odio congue, eget elementum massa aliquam. Ut congue fermentum ante a accumsan.Quisque tincidunt risus et erat varius convallis. Nulla faucibus vehicula libero eu elementum. Mauris elementum imperdiet dolor at faucibus. Praesent luctus convallis condimentum. Nam quis dolor interdum, malesuada sapien rhoncus, bibendum erat. Pellentesque aliquet est in nulla facilisis cursus. Aliquam diam augue, tincidunt eget purus a, tincidunt facilisis neque. Vestibulum hendrerit congue.', 'nunc-pulvinar-ligula-vel-justo-tincidunt', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('3', 'Pellentesque pulvinar dictum condimentum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'pellentesque-pulvinar-dictum-condimentum', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('4', 'Nunc rhoncus nulla facilisis turpis tristique egestas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel consectetur eros, eget sagittis purus. In tincidunt, nunc eu ultrices condimentum, dui libero faucibus orci, sed laoreet nunc nisl porta tellus. Sed nec ligula fringilla, rutrum turpis non, blandit nibh. Nulla dignissim tempor velit, a hendrerit turpis adipiscing vel. Vivamus pellentesque mollis eros non ultrices. Nam venenatis nisi risus, vitae pretium mauris porta in. Nunc rhoncus nulla facilisis turpis tristique egestas. Fusce non cursus tellus.', 'nunc-rhoncus-nulla-facilisis-turpis-tristique-egestas', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('5', 'Donec ut tempor risus', 'Donec ut suscipit tortor. Proin nec iaculis risus. Praesent commodo felis a libero aliquam, sed viverra ligula dapibus. Suspendisse elementum eu odio quis accumsan. Donec ut tempor risus. Nunc viverra cursus tellus, nec vestibulum ante viverra sed. ', 'donec-ut-tempor-risus', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('6', 'Mauris in purus erat', 'Donec ut metus arcu. Mauris quis quam viverra, ultricies urna tincidunt, vestibulum risus. Duis in lectus arcu. Vivamus nec vulputate magna. Integer ut vestibulum quam. Duis ac sapien commodo, consectetur ligula sed, tincidunt mi. Mauris in purus erat. Integer eget mollis elit. ', 'mauris-in-purus-erat', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('7', 'Vestibulum quam sem', 'Phasellus nulla sem, rhoncus id justo vel, rhoncus mollis eros. Morbi mollis mauris nisi, quis fringilla metus pretium at. Curabitur vel mi turpis. Donec sapien neque, auctor vel hendrerit sed, accumsan a elit. Proin turpis purus, tristique quis commodo quis, vulputate vel mi. Etiam feugiat quam vitae neque volutpat, eget rhoncus turpis pulvinar. Fusce non dictum ante. Sed congue non justo ac tincidunt. Vestibulum quam sem, suscipit quis quam quis, pharetra vehicula enim. Nullam lacinia consequat lacus ac tristique. Integer vitae pellentesque leo, sit amet faucibus diam. Suspendisse nulla mi, rutrum in accumsan nec, viverra eu velit. Vivamus porta hendrerit eros, faucibus rhoncus sem bibendum iaculis. ', 'vestibulum-quam-sem', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('8', 'In leo dui, rutrum pellentesque', 'Nam convallis vulputate erat. Nullam vehicula mauris non sapien fermentum condimentum. Nulla aliquam consequat iaculis. In leo dui, rutrum pellentesque dignissim ac, lacinia et eros. Fusce pretium aliquam eros eget euismod. Donec tristique auctor semper. Aenean a aliquet ipsum, ut fringilla diam. Etiam sed ullamcorper arcu. Quisque vehicula dui fringilla faucibus condimentum. ', 'in-leo-dui-rutrum-pellentesque', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('9', 'Class aptent taciti sociosqu ad litora', 'Nunc quis lorem ut metus consequat mollis. Maecenas condimentum turpis bibendum est venenatis gravida. Pellentesque id vehicula magna, sit amet semper purus. Ut tempor eros quis dui dictum, a sagittis ligula volutpat. Duis fermentum mattis dolor ut feugiat. Etiam et laoreet dolor, ultricies iaculis nisi. Nam erat nulla, facilisis at enim a, consectetur ornare magna. Phasellus aliquam varius quam eu lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nibh nulla, iaculis nec orci a, luctus gravida est. ', 'class-aptent-taciti-sociosqu-ad-litora', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('10', 'Aliquam sodales lacus varius, convallis odio id', 'Fusce lacinia pretium facilisis. Maecenas sed lectus id sapien vulputate ornare. Curabitur quis gravida turpis. Suspendisse id lectus ac magna ornare ultricies a non orci. Suspendisse potenti. Mauris id enim vitae nulla mollis imperdiet eget quis dui. Duis laoreet dolor eget lorem egestas, quis dignissim dui tempus. Morbi fermentum mi et nibh suscipit porta. Aenean scelerisque id augue vitae vestibulum. Aliquam sodales lacus varius, convallis odio id, dignissim purus. Fusce eu vestibulum ligula. Aenean sodales sem sit amet felis aliquam gravida. Duis lacus sem, varius nec arcu ac, venenatis iaculis urna. In sit amet arcu porttitor, rutrum enim in, ullamcorper nisi. Nam eget placerat odio. Fusce in porttitor turpis. ', 'aliquam-sodales-lacus-varius-convallis-odio-id', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('11', 'Curabitur placerat pharetra metus eu bibendum', 'Vivamus condimentum ultrices dignissim. Quisque pharetra pulvinar sem, in feugiat odio condimentum id. Sed lacinia nulla ac varius ultrices. Curabitur placerat pharetra metus eu bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mi lacus, bibendum at massa non, tempus dapibus sapien. Praesent sollicitudin bibendum dolor, a congue sapien fringilla non. Donec in dui dui. ', 'curabitur-placerat-pharetra-metus-eu-bibendum', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('12', 'Quisque et convallis nulla', 'Ut id turpis molestie, porta diam vel, dapibus odio. Donec quis magna aliquet, varius ipsum eu, adipiscing sem. Cras vestibulum risus vitae condimentum vehicula. Pellentesque auctor auctor mattis. Pellentesque sollicitudin, dolor sed adipiscing posuere, arcu tellus sollicitudin ipsum, vel suscipit velit turpis accumsan sem. Quisque mollis mollis volutpat. Cras volutpat mauris iaculis molestie ullamcorper. Quisque et convallis nulla. Ut tincidunt ut sapien vel venenatis. Aliquam erat volutpat. Sed mollis gravida nunc, at aliquet justo consectetur non. Quisque a tellus eget lorem lobortis semper sit amet sed urna. Cras facilisis pretium lorem, non placerat libero elementum sit amet. Donec felis risus, iaculis viverra mattis a, pharetra vitae purus. ', 'quisque-et-convallis-nulla', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('13', 'Vivamus blandit nisi pellentesque', 'Vivamus diam sem, volutpat in cursus sit amet, viverra nec libero. Nam vestibulum rutrum nulla, ac tristique nisl adipiscing vel. In pellentesque quam erat, nec ullamcorper purus pharetra in. Mauris placerat, eros vitae commodo vestibulum, nunc sapien laoreet turpis, a convallis metus massa a sapien. Curabitur arcu metus, laoreet pretium velit sed, faucibus scelerisque ligula. Suspendisse ut ornare nunc, eu fermentum libero. Vivamus blandit nisi pellentesque, ullamcorper leo dapibus, accumsan ante. Praesent justo ipsum, vestibulum a justo non, tincidunt ultricies quam. ', 'vivamus-blandit-nisi-pellentesque', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('14', 'Pellentesque id leo neque', 'Curabitur tempor justo eu risus convallis molestie. Quisque lectus purus, vulputate sed neque sed, gravida sollicitudin mauris. Phasellus risus lacus, placerat ut massa nec, dapibus rutrum ante. Phasellus eleifend laoreet iaculis. Nam volutpat justo a lectus eleifend aliquet. Pellentesque id leo neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed tempus laoreet dui in vulputate. Quisque in dapibus libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lorem et enim facilisis, id imperdiet sem tempor. Vivamus pellentesque quam nec neque bibendum, egestas suscipit neque rutrum. Nam ornare, elit posuere pretium rutrum, tortor leo scelerisque erat, vel cursus metus magna eu libero. Sed interdum sed libero vel luctus. ', 'pellentesque-id-leo-neque', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('15', 'Sed id metus a ipsum bibendum sagittis', 'Phasellus accumsan sit amet neque interdum dapibus. Morbi consequat eros vel enim mattis, et rutrum neque consectetur. Suspendisse ultrices libero dignissim, facilisis est ut, tincidunt lacus. Curabitur ligula ligula, sodales eu faucibus vel, cursus et diam. Aliquam at neque et est venenatis ornare nec non lacus. Etiam quis lorem dolor. Vestibulum dictum lorem in nulla fermentum iaculis. In hac habitasse platea dictumst. Sed id metus a ipsum bibendum sagittis. Aenean mi purus, sollicitudin at convallis id, ultricies non neque. Nullam consectetur molestie diam, at lacinia libero imperdiet ac. Fusce lacinia tempus eros, non commodo libero scelerisque sit amet. Integer rhoncus molestie tristique. Pellentesque laoreet ultricies elit non rhoncus. Sed placerat sit amet enim at vulputate. Vivamus ornare quis diam id ultrices. ', 'sed-id-metus-a-ipsum-bibendum-sagittis', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('16', 'Maecenas dictum nulla turpis', 'Quisque eleifend sollicitudin velit. Mauris dictum, dolor at eleifend ullamcorper, risus erat tincidunt massa, vel pellentesque nisi nisi id ipsum. Nullam eu erat neque. Mauris a convallis neque, vitae semper libero. Praesent in cursus sapien, sed fermentum urna. Maecenas dictum nulla turpis, nec euismod nisi dictum eu. Suspendisse sollicitudin eros ipsum, ut sodales odio molestie vel. Nullam sed ante ut massa tempor suscipit. Quisque ac vehicula nulla, in fringilla mauris. Proin venenatis, velit ut tristique rhoncus, nulla orci molestie magna, quis gravida urna tortor in metus. Vestibulum non diam lacus. Donec elementum mattis massa, sit amet rhoncus odio dictum eu. Curabitur mattis risus non cursus auctor. ', 'maecenas-dictum-nulla-turpis', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('17', 'In ultricies in tortor sed pellentesque', 'Cras ac libero in ipsum rutrum placerat tincidunt nec turpis. Fusce rhoncus turpis at sem eleifend aliquam. Curabitur fringilla, ipsum in scelerisque laoreet, est ligula sagittis enim, vitae adipiscing dolor nisi ut dolor. Donec at risus imperdiet nisi blandit volutpat. In ultricies in tortor sed pellentesque. Phasellus nec elit in enim facilisis adipiscing ut eu orci. Quisque congue iaculis leo ac viverra. Pellentesque sagittis pellentesque ipsum, id blandit elit tempus eu. ', 'in-ultricies-in-tortor-sed-pellentesque', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('18', 'In hac habitasse platea dictumst', 'Sed quis felis aliquet, luctus erat non, congue dui. Integer imperdiet odio non lacus rhoncus fringilla. Sed at lacus sollicitudin tellus dignissim mollis vitae sed metus. Sed blandit nisi vitae risus commodo mollis. Ut metus lorem, luctus ut venenatis vitae, rutrum ut odio. Etiam viverra quis nunc sit amet vestibulum. Vestibulum fermentum mauris vel nisi rutrum faucibus. Quisque ac nibh at nunc facilisis pulvinar eu in leo. In hac habitasse platea dictumst. Nullam vulputate, sapien quis porta ultrices, erat lacus tincidunt felis, sit amet molestie leo dui a arcu. Sed convallis faucibus urna, venenatis pellentesque nibh placerat at. Aliquam et bibendum nisl. Ut ut cursus tellus. Nullam ut urna a mi accumsan ultrices. Suspendisse potenti. Aenean et bibendum augue, sed posuere mauris. ', 'in-hac-habitasse-platea-dictumst', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('19', 'Nullam sodales, purus quis pulvinar dapibus', 'Pellentesque commodo mollis porta. Fusce eget leo in massa elementum faucibus at et nunc. Pellentesque id metus vel ligula venenatis gravida. Nullam vitae sapien id nibh pellentesque ullamcorper vel in risus. Curabitur sed faucibus sapien. Pellentesque sodales leo in mi commodo volutpat. In tempor consectetur magna tincidunt iaculis. Nullam sodales, purus quis pulvinar dapibus, arcu tortor feugiat lectus, eu viverra est lorem aliquam eros. ', 'nullam-sodales-purus-quis-pulvinar-dapibus', '2017-10-09', '2017-10-09 02:04:04', '2017-10-09 02:04:04', '1', null, null, null, 'en');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Hakkımızda', 'hakkimizda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2017-10-09 02:04:05', '2017-10-09 02:04:05', '1', 'tr');
INSERT INTO `pages` VALUES ('2', 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2017-10-09 02:04:05', '2017-10-09 02:04:05', '1', 'en');

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('1', '1', '03ul7avJnlMjJpnSXtqpUnHWWYGIURMD', '2017-10-09 06:39:21', '2017-10-09 06:39:21');
INSERT INTO `persistences` VALUES ('2', '1', 'CDF7lMV2wcEX2fnf776p4gb2pxeETwxg', '2017-10-09 07:11:48', '2017-10-09 07:11:48');
INSERT INTO `persistences` VALUES ('3', '1', 'kNPJs0rlnvXuVbyeDO5OHjPBcHMG0Gtt', '2017-10-10 00:44:27', '2017-10-10 00:44:27');
INSERT INTO `persistences` VALUES ('4', '1', 'VG365jNpRSGIs65TElYQa2XlKZdpoavv', '2017-10-10 05:57:05', '2017-10-10 05:57:05');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for photo_galleries
-- ----------------------------
DROP TABLE IF EXISTS `photo_galleries`;
CREATE TABLE `photo_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_galleries
-- ----------------------------
INSERT INTO `photo_galleries` VALUES ('1', 'Fotoğraf Galerisi', 'fotograf-galerisi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.', '2017-10-09 02:04:05', '2017-10-09 02:04:05', '1', 'tr');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem-ipsum-dolor', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', 'nullam-sapien-urna', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', 'nunc-fringilla', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', 'morbi-commodo', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', 'suspendisse', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', 'vestibulum', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', 'donec-lobortis-pulvinar-faucibus', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', 'phasellus-tempor-ut-ligula-eget-porta', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', 'aenean', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `projects` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', 'mauris-dapibus-tellus', '', '', '0', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reminders
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'superadmin', 'SuperAdmin', null, '2017-10-09 02:04:00', '2017-10-09 02:04:00');

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1', '2017-10-09 02:04:01', '2017-10-09 02:04:01');
INSERT INTO `role_users` VALUES ('2', '1', '2017-10-09 02:04:01', '2017-10-09 02:04:01');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '{\"site_title\":\"Fully CMS - Laravel 5 Multi Language Content Managment System\",\"ga_code\":\"UA-61740707-1\",\"meta_keywords\":\"Laravel 5 Multi Language Content Managment System\",\"meta_description\":\"Laravel 5 Multi Language Content Managment System\"}', '2017-10-09 02:04:06', '2017-10-09 02:04:06', 'tr');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '/uploads/slider/slider_1.jpg', 'slider_1.jpg', '676338', '1', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', '/uploads/slider/slider_2.jpg', 'slider_2.jpg', '572388', '2', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', '/uploads/slider/slider_3.jpg', 'slider_3.jpg', '394405', '3', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', '/uploads/slider/slider_4.jpg', 'slider_4.jpg', '335322', '4', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', '/uploads/slider/slider_5.jpg', 'slider_5.jpg', '698727', '5', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', '/uploads/slider/slider_6.jpg', 'slider_6.jpg', '844577', '6', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', '/uploads/slider/slider_7.jpg', 'slider_7.jpg', '503064', '7', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', '/uploads/slider/slider_8.jpg', 'slider_8.jpg', '623998', '8', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', '412537', '9', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', '492158', '10', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('11', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', '412537', '9', 'en', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `sliders` VALUES ('12', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', '492158', '10', 'en', '2017-10-09 02:04:08', '2017-10-09 02:04:08');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'PHP', 'php', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('2', 'Laravel', 'laravel', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('3', 'Mysql', 'mysql', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('4', 'Oracle', 'oracle', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('5', 'MongoDB', 'mongodb', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('6', 'Redis', 'redis', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('7', 'Memcache', 'memcache', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('8', 'APC', 'apc', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('9', 'JSON', 'json', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('10', 'XML', 'xml', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('11', 'Ajax', 'ajax', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('12', 'HTML', 'html', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('13', 'CSS', 'css', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('14', 'Javascript', 'javascript', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'tr');
INSERT INTO `tags` VALUES ('15', 'Redis', 'redis', '2017-10-09 02:04:04', '2017-10-09 02:04:04', 'en');

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', null, 'global', null, '2017-10-09 06:39:10', '2017-10-09 06:39:10');
INSERT INTO `throttle` VALUES ('2', null, 'ip', '127.0.0.1', '2017-10-09 06:39:10', '2017-10-09 06:39:10');
INSERT INTO `throttle` VALUES ('3', '1', 'user', null, '2017-10-09 06:39:11', '2017-10-09 06:39:11');
INSERT INTO `throttle` VALUES ('4', null, 'global', null, '2017-10-10 00:43:46', '2017-10-10 00:43:46');
INSERT INTO `throttle` VALUES ('5', null, 'ip', '127.0.0.1', '2017-10-10 00:43:46', '2017-10-10 00:43:46');
INSERT INTO `throttle` VALUES ('6', '1', 'user', null, '2017-10-10 00:43:46', '2017-10-10 00:43:46');
INSERT INTO `throttle` VALUES ('7', null, 'global', null, '2017-10-10 00:43:56', '2017-10-10 00:43:56');
INSERT INTO `throttle` VALUES ('8', null, 'ip', '127.0.0.1', '2017-10-10 00:43:56', '2017-10-10 00:43:56');
INSERT INTO `throttle` VALUES ('9', '1', 'user', null, '2017-10-10 00:43:56', '2017-10-10 00:43:56');
INSERT INTO `throttle` VALUES ('10', null, 'global', null, '2017-10-10 00:43:57', '2017-10-10 00:43:57');
INSERT INTO `throttle` VALUES ('11', null, 'ip', '127.0.0.1', '2017-10-10 00:43:57', '2017-10-10 00:43:57');
INSERT INTO `throttle` VALUES ('12', '1', 'user', null, '2017-10-10 00:43:57', '2017-10-10 00:43:57');
INSERT INTO `throttle` VALUES ('13', null, 'global', null, '2017-10-10 05:56:37', '2017-10-10 05:56:37');
INSERT INTO `throttle` VALUES ('14', null, 'ip', '127.0.0.1', '2017-10-10 05:56:37', '2017-10-10 05:56:37');
INSERT INTO `throttle` VALUES ('15', '1', 'user', null, '2017-10-10 05:56:37', '2017-10-10 05:56:37');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'd82078010@163.com', '$2y$10$5srLFTIHkosXKiPnXwpZbe2vZRGh9nx.Blg6Lc.gr.nFQNITquP.6', null, '2017-10-10 05:57:05', 'Roc', 'Teng', '2017-10-09 02:04:00', '2017-10-10 05:57:05');
INSERT INTO `users` VALUES ('2', 'admin@admin.com', '$2y$10$5f75CIFbVhu1SakpuiuygeowOcyPb3Fd0ZNVNi7f6MiodVX1ri7mS', null, null, 'Super', 'Admin', '2017-10-09 02:04:01', '2017-10-09 02:04:01');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', 'Painless Billing With Laravel and Stripe', 'painless-billing-with-laravel-and-stripe', 'k9KKjxEq0Lg', 'youtube', 'en', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('2', 'Using Eloquent Outside of Laravel', 'using-eloquent-outside-of-laravel', 'L0g9ka5qaCc', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('3', 'Fast Laravel Workflow With Generators', 'fast-laravel-workflow-with-generators', 'rmtjulbbSmY', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('4', 'Laravel Envoy', 'laravel-envoy', 'ZI9vzxvERGI', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('5', 'PSR 4 Autoloading', 'psr-4-autoloading', 'FzdhnbM_0ug', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('6', 'Gulp This', 'gulp-this', '6Jhgkp67GxI', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('7', 'Test Databases In Memory (with Laravel)', 'test-databases-in-memory-with-laravel', 'NB9KfQiHJO0', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('8', 'Welcome to the Laravel Community', 'welcome-to-the-laravel-community', '2_BKIhjHwS8', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('9', 'Crazy Simple Pagination in Laravel', 'crazy-simple-pagination-in-laravel', 'lIEcyOUcNQk', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('10', 'Better Error Monitoring with Bugsnag and Laravel', 'better-error-monitoring-with-bugsnag-and-laravel', 'r4gK5uynk2s', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('11', 'Laravel Basic Authentication in 4 Minutes', 'laravel-basic-authentication-in-4-minutes', 'FqDomWno2C0', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('12', 'Understanding Fortrabbit Deployment Files', 'understanding-fortrabbit-deployment-files', 'YvJiKI4IQ0Q', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('13', 'Laravel - How to Tail Log Files', 'laravel-how-to-tail-log-files', 'lP5yFWAt8Nk', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('14', 'Laravel and the N+1 Problem', 'laravel-and-the-n1-problem', 'swhWRMkpVsg', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('15', 'Laravel Artisan Commands 101', 'laravel-artisan-commands-101', 'BviKET-QTEQ', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('16', 'Form Model Binding in Laravel', 'form-model-binding-in-laravel', 'EJwxG3b9j9c', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('17', 'C Tags', 'c-tags', 'cE7jSTdE_uQ', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('18', 'View Composers in Laravel', 'view-composers-in-laravel', 'X8yqmZtKOoY', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('19', 'Laravel - Understanding REST', 'laravel-understanding-rest', 'rD82cZjTUZs', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('20', 'Laravel Queues With Iron and Fortrabbit', 'laravel-queues-with-iron-and-fortrabbit', 'yeDCIognMRs', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('21', 'Namespacing Primer (with Laravel)', 'namespacing-primer-with-laravel', 'yAzd7Ig1Wgg', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('22', 'From Zero to Deploy with Laravel', 'from-zero-to-deploy-with-laravel', '8rblX6Ta1-U', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('23', 'Laravel Setup For Newbs', 'laravel-setup-for-newbs', '9AU2QvkqkBM', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('24', 'Laravel Caching Ins and Outs', 'laravel-caching-ins-and-outs', 'Hl4-dftfc0o', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('25', 'Laravel Authentication Essentials', 'laravel-authentication-essentials', 'msEwmVZ4wp4', 'youtube', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('26', 'Laravel 4 Update', 'laravel-4-update', '63892510', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('27', 'Laravel 4 - Iron.io Push Queues & Closures', 'laravel-4-ironio-push-queues-closures', '64703617', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('28', 'Laravel 4 - IoC Controller Injection & Unit Testing', 'laravel-4-ioc-controller-injection-unit-testing', '53029232', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('29', 'Laravel 4 - Mail::queue and Mail::later', 'laravel-4-mailqueue-and-maillater', '64779946', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('30', 'Laravel 4 - Eloquent Collections & Polymorphic Relations', 'laravel-4-eloquent-collections-polymorphic-relations', '53183075', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('31', 'Laravel 4 - Controllers & Filters', 'laravel-4-controllers-filters', '52964368', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('32', 'Laravel 4 - IoC Container Basics', 'laravel-4-ioc-container-basics', '53009943', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('33', 'Laravel 4 - Error Handling', 'laravel-4-error-handling', '53445935', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('34', 'Laravel 4 - Mail', 'laravel-4-mail', '53701740', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('35', 'Laravel 4 - Migrations & Seeding', 'laravel-4-migrations-seeding', '53701204', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('36', 'Laracon (Day 1: Talk 2) Jeffrey Way', 'laracon-day-1-talk-2-jeffrey-way', '61104599', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('37', 'Laracon (Day 1: Talk 1) Taylor Otwell', 'laracon-day-1-talk-1-taylor-otwell', '61063778', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
INSERT INTO `videos` VALUES ('38', 'Laracon (Day 1 Talk 3) Kenny Meyers', 'laracon-day-1-talk-3-kenny-meyers', '61269747', 'vimeo', 'tr', '2017-10-09 02:04:08', '2017-10-09 02:04:08');
