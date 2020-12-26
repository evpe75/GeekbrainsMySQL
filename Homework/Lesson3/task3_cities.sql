#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `countries_codes_id` bigint(20) unsigned NOT NULL COMMENT 'Идентификатора кода страны',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название города',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`countries_codes_id`,`name`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ГОРОДА';

INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'inventore', '2010-06-28 23:30:23', '2020-10-09 08:43:35');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'deleniti', '1979-07-10 13:36:53', '2011-05-09 01:56:25');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'iure', '1999-10-08 03:24:50', '2014-10-18 13:41:32');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'aut', '1994-10-30 00:11:42', '1986-06-24 10:45:56');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'minus', '2018-08-10 23:14:36', '1998-01-29 05:06:30');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'laborum', '2004-06-02 07:49:57', '1997-06-06 00:04:18');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'atque', '1971-03-10 04:24:50', '2003-04-28 16:20:25');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'ut', '1999-10-09 20:14:34', '2006-05-07 23:55:27');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'omnis', '2012-09-25 00:18:08', '1985-02-26 21:55:57');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'ratione', '2015-04-10 04:26:30', '1970-04-26 22:40:43');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'molestiae', '1990-07-24 05:39:47', '1995-09-03 08:40:51');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'est', '2014-12-31 22:28:45', '1989-06-18 02:25:40');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'voluptatum', '1977-11-24 20:00:19', '2020-08-10 07:32:05');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'illo', '2015-05-03 07:51:39', '2004-04-24 22:25:34');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'odio', '2015-12-21 06:21:46', '2010-05-19 16:00:28');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'sunt', '1991-04-11 10:26:06', '1970-03-06 06:04:47');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'eligendi', '1973-05-24 17:59:48', '2013-09-27 11:19:31');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'asperiores', '2005-12-06 16:46:33', '2002-09-10 12:44:19');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'recusandae', '1984-12-12 03:44:16', '1970-09-01 16:22:41');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'hic', '2011-01-05 22:30:43', '1993-04-21 09:03:31');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'velit', '2014-12-02 02:45:06', '1997-02-28 01:30:14');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'repellat', '2018-12-29 13:53:15', '2018-01-11 08:06:46');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'autem', '1993-03-24 22:29:09', '1972-06-08 08:31:58');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'soluta', '2003-03-30 17:54:53', '2010-05-29 16:34:20');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'quia', '2012-02-01 06:24:19', '1975-09-06 23:57:49');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'laboriosam', '2006-06-18 18:02:11', '2006-09-30 05:51:03');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'eum', '2017-09-29 01:15:49', '1992-08-27 03:17:41');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'reiciendis', '1999-12-30 11:38:53', '2005-09-05 01:20:15');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'qui', '1981-07-27 11:43:54', '1990-10-27 13:34:21');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'quos', '2011-03-13 01:07:13', '1999-01-29 21:58:49');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'ad', '1982-09-17 17:23:37', '2001-01-28 12:41:22');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'libero', '1980-10-03 16:37:33', '2018-07-02 00:46:16');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'doloribus', '2018-07-19 11:50:59', '1984-08-27 16:26:33');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'incidunt', '1973-07-10 20:48:42', '2009-03-23 23:48:49');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'ducimus', '1972-03-03 16:17:42', '2004-09-21 23:20:30');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'dolorum', '1996-07-24 09:37:19', '1995-07-27 09:56:19');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'dolor', '2005-12-04 08:05:17', '2015-11-14 05:25:23');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'consequatur', '1987-09-10 03:03:20', '1989-10-22 16:19:32');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'et', '2010-11-29 19:41:10', '1992-01-07 18:56:53');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'nemo', '1991-11-25 08:36:37', '1979-03-28 03:20:44');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'tempore', '1985-12-08 22:41:20', '2007-11-05 00:35:55');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'tenetur', '1991-02-23 01:46:12', '2005-03-31 03:34:53');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'quis', '2016-09-17 02:36:51', '2017-05-27 08:42:43');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'dignissimos', '2016-01-16 09:31:30', '1998-01-21 23:35:03');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'facilis', '1991-04-24 05:49:28', '2005-08-10 05:28:38');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'dolorem', '1990-07-05 04:24:11', '1976-08-15 23:36:26');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'itaque', '1988-02-15 22:39:47', '1981-12-15 10:17:10');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'voluptas', '1995-01-14 07:52:57', '1974-11-06 04:20:30');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'nam', '2002-10-10 09:47:39', '2015-09-15 15:01:06');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'pariatur', '2000-01-09 14:29:13', '1970-02-24 12:04:22');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'sit', '1988-10-20 20:09:17', '1970-10-11 17:24:14');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'dicta', '1973-10-03 20:19:10', '1999-01-10 09:52:01');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'suscipit', '1986-12-17 09:40:00', '2020-03-18 23:13:58');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'aliquid', '1998-01-28 14:21:35', '1993-05-04 08:04:36');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'sequi', '2019-05-22 02:41:21', '2013-01-02 15:45:09');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'nostrum', '1991-05-03 21:05:48', '1973-01-14 06:31:42');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'consequuntur', '2004-03-31 10:48:23', '2005-03-16 06:27:05');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'occaecati', '2005-08-04 15:42:55', '2013-04-18 07:32:40');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'molestias', '1973-02-03 21:23:56', '2008-12-20 22:30:27');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'vel', '2007-03-19 22:38:56', '1987-09-07 19:53:07');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'ipsum', '2003-06-15 15:41:27', '1990-08-01 23:46:36');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'perspiciatis', '1998-03-05 00:33:12', '1973-05-17 23:00:14');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'corrupti', '2005-12-27 10:49:46', '1970-02-12 01:19:39');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'corporis', '2020-10-01 10:18:49', '1995-02-13 05:25:52');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'id', '2000-02-01 11:14:57', '1978-09-16 10:22:33');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'ipsam', '1985-01-12 18:31:27', '2017-07-30 21:02:14');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'mollitia', '2007-10-21 19:23:18', '1999-05-03 09:03:44');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'accusantium', '2001-07-02 12:50:21', '2013-05-02 05:51:48');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'eveniet', '1990-08-22 09:22:49', '2004-04-09 15:01:56');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'nobis', '1973-12-19 14:07:41', '1992-05-25 02:20:24');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'minima', '1973-04-27 03:02:18', '2000-03-30 05:02:36');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'error', '2010-04-15 09:52:43', '1994-05-27 01:49:32');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'nulla', '1989-04-05 16:51:07', '1976-12-25 18:35:57');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'voluptatem', '1972-01-24 00:21:24', '1983-05-15 23:32:07');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'natus', '2013-08-19 21:59:00', '1974-09-15 06:08:17');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'repellendus', '1970-09-28 06:01:25', '2000-05-25 05:18:29');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'perferendis', '1976-12-18 16:43:11', '2014-05-06 10:11:46');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'cupiditate', '2015-10-15 04:58:05', '2019-01-22 15:19:18');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'optio', '2017-05-19 06:42:43', '1975-05-03 03:56:08');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'vero', '1992-08-26 15:15:59', '1984-08-04 08:09:08');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'totam', '1993-12-01 07:36:51', '2004-10-23 15:40:04');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'explicabo', '1996-11-28 18:41:37', '2008-05-17 17:28:41');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'illum', '1971-05-07 19:56:35', '1990-12-12 04:02:43');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'distinctio', '1973-08-07 18:05:27', '1988-08-21 22:52:19');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'eius', '1981-07-17 16:59:48', '1972-08-09 19:47:38');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'animi', '1975-12-24 10:55:35', '1987-03-25 18:50:39');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'nihil', '1998-03-15 17:45:53', '1974-04-04 09:47:46');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'quae', '1989-04-12 12:07:07', '1996-11-07 23:21:02');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'maiores', '1980-06-25 08:10:18', '1988-04-01 00:16:37');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'enim', '2008-02-06 19:50:34', '1972-04-30 13:41:49');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'quaerat', '2006-01-31 16:23:52', '1983-09-09 15:05:06');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'sed', '1996-11-08 09:43:58', '2015-05-05 20:10:52');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'accusamus', '1971-07-21 09:31:14', '1976-07-29 07:31:30');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'officia', '1988-04-17 03:13:36', '1995-10-03 14:52:01');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'earum', '1970-01-06 17:07:42', '1979-12-12 01:55:22');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'numquam', '1980-10-31 23:19:51', '2005-02-01 06:11:29');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'eos', '1980-10-27 19:27:28', '2018-12-04 15:07:32');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'doloremque', '2012-01-17 13:50:38', '2002-10-16 00:14:38');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'cum', '1981-09-01 13:11:08', '2011-04-23 22:05:56');
INSERT INTO `cities` (`countries_codes_id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'iste', '2012-03-08 00:37:31', '1990-12-11 07:33:51');


