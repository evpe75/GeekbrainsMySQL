#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'veritatis', '1974-06-08 06:49:35', '2008-08-20 08:01:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'voluptas', '2003-12-02 09:16:36', '1980-03-09 14:39:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'similique', '2001-11-30 02:00:06', '1995-06-22 02:08:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'qui', '1975-12-04 12:54:23', '2003-12-30 21:03:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'laboriosam', '1993-04-19 06:23:45', '1995-01-03 04:02:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quia', '2005-08-27 17:25:17', '1988-04-05 17:24:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'nesciunt', '1976-05-04 20:53:49', '1992-03-11 05:11:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'et', '2011-02-26 14:13:56', '2004-10-03 18:12:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'itaque', '1980-04-06 09:01:42', '2016-06-22 11:26:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'repudiandae', '2007-06-19 09:52:31', '2000-03-08 05:00:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'sit', '1975-02-09 07:14:56', '2012-02-19 19:03:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'sunt', '1971-06-23 23:17:46', '2020-09-20 19:48:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'a', '1984-12-21 13:21:07', '1986-10-15 05:44:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'enim', '1979-12-29 09:05:29', '2010-05-11 04:31:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'fugiat', '1989-12-30 23:30:11', '1994-11-16 11:10:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'omnis', '2002-02-24 18:48:37', '2013-12-16 12:59:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'officia', '1981-09-30 10:36:13', '2012-12-14 14:51:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'nihil', '2006-03-28 17:51:57', '1971-05-08 23:47:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'nulla', '1979-10-18 02:44:59', '1983-12-28 04:29:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'ea', '1974-05-21 22:43:55', '1983-12-31 16:41:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'pariatur', '1978-02-22 19:20:20', '1994-04-16 17:35:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'sed', '1975-01-02 07:58:44', '2010-10-14 08:46:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'nam', '1986-01-26 16:48:21', '2016-02-10 05:41:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'aliquam', '1972-06-01 18:42:50', '2014-04-07 08:25:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'totam', '2007-06-14 16:17:55', '2009-02-06 03:49:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'optio', '1973-08-15 18:06:55', '2006-08-01 19:10:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'debitis', '1996-02-23 11:00:46', '1987-02-16 01:18:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'iure', '1994-10-09 13:34:52', '2009-07-09 14:33:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'quos', '1975-03-26 09:32:56', '2006-11-13 00:56:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'est', '1999-02-23 22:48:52', '1998-03-22 12:23:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'maiores', '2015-07-28 07:25:54', '1973-07-18 22:15:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'exercitationem', '1993-04-05 14:51:33', '2018-09-25 23:34:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'iusto', '2002-01-07 22:26:16', '2008-12-29 14:52:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'reiciendis', '1972-02-11 00:15:46', '2017-08-29 15:42:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'architecto', '1993-01-19 09:12:29', '2004-07-02 06:10:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'saepe', '1970-06-30 00:59:19', '1987-01-28 02:33:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'veniam', '2004-02-19 15:44:29', '2011-08-27 02:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'hic', '1973-09-08 10:32:32', '2016-03-21 15:22:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'earum', '2006-07-20 22:54:03', '1987-01-25 08:25:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'ut', '1976-03-03 10:10:44', '1973-11-12 12:08:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'perferendis', '1989-09-30 00:00:20', '1995-02-05 17:01:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'minus', '1996-03-15 10:24:00', '2009-09-22 03:03:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'molestias', '1998-06-27 05:54:40', '1993-12-19 04:48:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'error', '1987-05-07 10:39:59', '2018-11-08 21:52:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'amet', '1977-07-28 04:57:58', '2010-08-25 01:57:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'quisquam', '1981-08-11 14:15:28', '1973-04-22 23:48:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'quam', '2002-07-22 17:38:53', '2012-10-07 21:58:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'voluptatum', '2003-08-12 05:03:52', '2015-02-10 15:58:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'dolor', '2006-03-30 08:26:23', '1985-11-27 22:59:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'delectus', '1996-09-16 17:28:09', '1990-10-08 06:16:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'autem', '2008-05-02 04:21:14', '2008-04-22 07:09:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'in', '2020-03-22 11:22:34', '1976-06-08 03:50:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'officiis', '1995-05-08 04:31:00', '1971-05-08 00:12:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'animi', '1975-10-11 05:23:39', '1981-01-23 05:57:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'accusantium', '1973-12-09 16:24:21', '1980-04-07 20:33:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'temporibus', '1998-02-19 15:58:43', '1979-09-24 03:47:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'aut', '2015-02-13 01:38:18', '1989-05-18 13:03:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'excepturi', '1977-05-26 06:06:15', '1987-10-23 16:26:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'atque', '1981-04-18 12:50:55', '2006-02-25 21:19:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'molestiae', '1997-02-25 18:00:46', '2020-02-12 09:11:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'sint', '1981-10-16 16:14:04', '2008-09-10 21:20:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'ratione', '2018-07-07 08:02:00', '1991-09-17 02:40:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'labore', '2016-02-23 09:44:01', '1999-07-18 13:21:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'recusandae', '1993-11-07 04:06:48', '1970-03-21 14:04:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'ad', '2011-11-29 01:43:37', '2017-12-11 01:33:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'deleniti', '1999-06-13 01:13:33', '2009-02-03 22:35:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'vel', '1997-01-07 21:38:50', '1975-12-31 17:18:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'dolores', '2016-06-09 22:00:23', '2019-10-03 16:32:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'id', '1986-03-30 04:37:19', '2016-06-10 13:38:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'illum', '1988-10-20 01:29:23', '2000-12-10 09:24:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'fugit', '1991-08-21 20:38:15', '2012-12-20 19:21:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'beatae', '2010-02-25 09:36:13', '1975-04-05 00:22:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'odio', '1995-09-09 14:06:30', '1992-01-02 23:06:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'quaerat', '1985-03-12 04:45:03', '2004-10-08 09:05:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'sapiente', '1977-09-17 19:07:12', '2010-09-11 02:46:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'quo', '2016-12-10 14:45:00', '2008-01-27 23:55:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'eius', '1978-07-19 00:58:01', '1970-09-20 19:33:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'incidunt', '1999-10-11 04:27:40', '2005-05-05 06:19:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'ipsam', '2014-06-02 20:16:00', '2018-09-30 21:07:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'alias', '1991-04-05 10:07:01', '1977-07-18 11:35:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'eligendi', '2018-05-30 22:06:24', '1999-02-03 17:38:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'impedit', '2002-09-26 22:19:16', '1982-12-01 21:56:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'reprehenderit', '1991-12-11 00:00:52', '1971-11-18 13:45:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'assumenda', '2006-06-25 06:52:52', '2007-11-27 07:50:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'tempore', '1995-04-19 06:50:26', '1996-09-26 09:54:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'possimus', '2018-01-11 19:12:07', '1974-03-29 12:11:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'non', '2014-07-04 16:44:26', '2011-05-06 20:17:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'adipisci', '2001-12-04 14:23:47', '1976-08-12 03:14:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'expedita', '2020-07-22 08:54:29', '1985-10-27 11:56:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'facere', '1982-03-24 00:12:01', '2005-07-21 09:36:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'ab', '1985-01-26 20:32:56', '1991-02-08 03:54:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'eum', '1983-07-20 05:48:28', '2018-01-04 07:04:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'doloremque', '1997-06-06 05:50:13', '2014-03-24 08:09:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'cum', '2012-05-07 21:41:32', '1995-04-17 12:19:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'numquam', '2003-04-05 09:57:28', '2011-03-25 05:56:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'dolorem', '2003-12-12 03:45:07', '1983-11-02 12:45:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'illo', '1994-01-29 18:48:13', '2012-10-14 05:33:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'placeat', '1990-04-03 19:41:26', '1990-11-05 22:37:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'modi', '1994-04-16 11:36:33', '1997-01-04 21:14:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'repellat', '1985-12-03 16:14:18', '2012-02-09 01:41:52');


