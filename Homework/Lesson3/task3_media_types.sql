#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'repudiandae', '2020-08-12 09:32:33', '1972-12-25 02:17:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'excepturi', '1973-02-06 02:21:04', '2009-12-01 21:31:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'magni', '1988-11-17 00:29:23', '2017-02-14 17:20:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'tempore', '2000-07-08 19:21:51', '2000-02-11 01:22:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'sunt', '1990-09-28 18:02:47', '1997-04-13 05:29:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'rem', '2009-03-02 14:29:11', '1993-06-17 02:19:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'reprehenderit', '2004-06-12 19:42:22', '1999-04-04 20:31:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'et', '1982-12-24 21:01:29', '1992-03-10 00:27:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'ut', '1982-02-26 18:25:46', '1982-08-12 00:48:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'facilis', '2003-12-20 13:07:35', '2014-09-28 19:26:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'mollitia', '1976-11-19 16:23:47', '2004-06-03 16:55:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'fugiat', '1994-04-28 20:23:12', '1972-10-23 13:48:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'nobis', '2011-04-17 09:49:22', '2012-09-06 15:19:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'dolore', '1994-08-19 13:00:21', '1972-06-18 07:41:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'dolorem', '2003-06-03 12:30:03', '1991-03-28 20:33:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'aspernatur', '1994-07-14 12:04:15', '1985-03-27 06:20:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'expedita', '1994-02-13 15:08:41', '1999-04-20 01:57:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'iusto', '2013-12-27 15:42:32', '1973-03-16 18:24:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'assumenda', '2001-05-03 17:59:14', '1984-10-15 10:31:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'ex', '2010-03-07 04:44:13', '1995-01-09 23:48:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'blanditiis', '1982-09-12 12:46:03', '1982-12-29 10:01:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'velit', '2008-10-10 10:13:50', '2010-12-11 19:25:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'sapiente', '2010-05-12 20:18:02', '1991-02-02 14:01:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'optio', '2008-11-28 19:47:17', '1994-02-03 09:40:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'quasi', '1991-05-12 22:22:34', '1993-03-28 12:01:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'voluptatem', '1991-01-20 01:32:49', '2002-01-08 06:08:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'ab', '1998-09-05 06:56:20', '2009-02-06 12:03:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'id', '2005-05-18 12:54:58', '2014-12-09 22:44:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'enim', '2008-11-23 21:13:20', '2009-04-06 05:32:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'vitae', '2020-03-07 13:03:00', '2008-12-18 06:12:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'qui', '2011-04-24 13:42:47', '1999-02-27 07:01:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'sed', '2006-01-17 19:53:51', '2009-05-19 00:33:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'delectus', '2009-05-23 17:41:00', '2001-11-29 06:11:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'quia', '1981-05-16 05:34:31', '2000-04-05 18:31:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'officiis', '2017-07-01 13:48:45', '1985-07-20 00:01:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'illum', '2002-01-05 05:37:18', '2001-11-13 01:18:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'nesciunt', '2013-04-02 08:54:31', '2020-03-13 16:09:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'odit', '1982-03-01 21:47:38', '1972-08-24 16:14:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'a', '2002-12-29 23:04:43', '2001-04-30 07:00:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'quod', '1979-08-19 23:38:58', '1976-11-12 06:07:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'non', '1996-09-12 20:50:03', '2008-03-07 02:26:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'quo', '1985-02-21 11:35:13', '1975-09-12 21:27:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'quisquam', '1988-09-23 00:03:39', '1994-06-29 13:21:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'eaque', '1999-02-18 15:06:38', '1990-02-01 04:55:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'ipsam', '2019-12-26 15:29:02', '1989-04-01 11:34:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'dolor', '1981-03-14 18:16:09', '1986-10-27 22:54:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'beatae', '1983-05-28 02:35:23', '1986-02-05 18:50:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'placeat', '2005-08-03 19:13:09', '2007-07-11 14:48:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'molestias', '2000-03-31 04:06:57', '2009-05-09 21:28:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'labore', '1985-04-09 22:34:14', '2011-12-07 16:41:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'minus', '1972-01-30 08:42:30', '2017-02-20 22:51:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'pariatur', '1998-08-08 07:25:08', '2014-08-05 01:47:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'veniam', '1973-06-25 19:40:51', '1998-12-31 03:12:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'nihil', '1978-12-09 01:12:02', '1990-12-18 20:50:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'nam', '2000-02-06 19:30:26', '1971-01-26 01:14:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'repellat', '2020-03-13 02:10:20', '1997-08-31 21:19:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'autem', '2013-10-11 21:27:19', '1983-01-07 20:17:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'modi', '1984-04-02 07:29:21', '1991-03-21 17:00:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'vel', '1998-06-13 17:58:00', '2006-06-06 03:52:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'explicabo', '2014-03-10 06:10:23', '1975-09-06 19:07:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'reiciendis', '1971-10-24 22:37:58', '2007-04-04 14:50:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'itaque', '2007-01-25 23:30:16', '1976-08-14 21:57:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'similique', '1975-02-25 12:43:00', '1997-07-21 02:57:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'omnis', '1971-08-02 09:39:41', '1996-06-05 04:04:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'exercitationem', '2007-04-30 17:27:25', '1990-09-15 22:51:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'sint', '1982-05-07 15:02:47', '1998-03-03 01:30:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'inventore', '2003-08-07 05:41:05', '2006-04-06 10:01:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'aut', '1999-11-01 01:03:47', '2008-08-07 14:20:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'dignissimos', '1999-09-09 00:48:20', '1990-11-19 19:13:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'asperiores', '2017-06-14 06:45:57', '2013-04-17 01:50:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'harum', '1989-07-04 22:34:27', '1983-01-14 15:04:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'est', '2010-07-04 00:39:24', '1971-06-07 05:31:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'consequatur', '1983-04-26 14:16:20', '2002-03-24 10:40:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'earum', '1993-06-15 14:57:46', '2015-01-04 10:13:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'eligendi', '1987-10-11 04:50:13', '2020-10-01 11:31:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'necessitatibus', '2013-09-15 05:59:41', '2004-09-25 14:43:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'quidem', '2012-01-06 07:29:34', '1998-07-29 13:46:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'fugit', '2017-10-27 12:34:45', '1989-03-11 02:04:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'eos', '1975-08-11 12:23:25', '2007-12-11 14:15:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'doloremque', '1989-10-21 07:51:09', '2016-07-11 21:32:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'consequuntur', '1999-05-07 05:52:26', '1982-05-02 12:21:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'architecto', '2015-06-13 01:09:09', '1979-07-02 08:47:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'cumque', '2001-04-01 21:49:23', '1993-05-26 12:44:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'odio', '1982-02-09 22:48:27', '1973-01-22 17:51:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'dicta', '2003-11-11 09:46:02', '2012-05-19 13:08:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'temporibus', '1991-03-31 22:45:22', '1989-11-30 22:58:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'sit', '2004-03-02 08:19:15', '1999-07-26 00:53:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'aliquid', '2009-12-10 17:24:02', '1994-11-20 08:03:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'voluptas', '1970-04-18 20:29:47', '1971-12-03 22:23:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'natus', '1998-10-01 13:11:28', '1974-02-14 23:31:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'perspiciatis', '1994-11-17 08:50:07', '1988-06-03 12:36:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'quibusdam', '2018-11-06 04:11:49', '2020-06-09 22:39:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'numquam', '2003-09-18 16:19:48', '1972-11-30 21:48:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'ullam', '1999-10-28 19:44:03', '2013-02-25 05:56:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'alias', '1980-09-25 14:57:41', '2000-04-06 23:58:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'quaerat', '2006-12-25 20:30:42', '1975-04-23 04:32:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'eum', '1978-04-11 06:13:00', '2008-07-27 01:07:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'dolores', '1980-08-22 00:54:36', '2008-11-14 06:31:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'rerum', '1990-07-17 11:43:24', '2002-06-10 00:04:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'facere', '1999-11-03 02:17:09', '1993-07-05 11:44:43');


