#
# TABLE STRUCTURE FOR: telecom_operators
#

DROP TABLE IF EXISTS `telecom_operators`;

CREATE TABLE `telecom_operators` (
  `countries_codes_id` bigint(20) unsigned NOT NULL COMMENT 'Идентификатора кода страны',
  `code` int(14) unsigned NOT NULL COMMENT 'Код оператора',
  `operator_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование оператора связи',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`countries_codes_id`,`code`) COMMENT 'Составной первичный ключ',
  UNIQUE KEY `operator_name` (`operator_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Коды операторов страны';

INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('1', 279, 'odit', '2020-07-09 00:51:56', '1971-11-18 21:50:41');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('2', 988, 'expedita', '1997-02-10 00:33:37', '2003-06-09 19:41:56');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('3', 169, 'in', '1994-10-14 19:34:35', '2003-05-23 11:02:53');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('4', 776, 'doloremque', '1999-11-11 02:14:58', '2012-04-26 02:30:24');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('5', 483, 'reiciendis', '2017-03-04 08:36:51', '1973-06-25 09:09:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('6', 961, 'consequatur', '2019-09-03 14:04:37', '1974-10-05 00:23:47');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('7', 681, 'vero', '2013-07-03 21:54:52', '2015-05-02 17:54:34');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('8', 748, 'ducimus', '2003-02-07 21:22:52', '1971-09-02 05:34:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('9', 244, 'quidem', '2005-12-16 02:56:33', '1977-02-19 23:10:21');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('10', 43, 'odio', '1972-06-17 17:26:16', '1996-04-15 00:04:10');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('11', 784, 'enim', '2000-10-08 21:11:38', '1981-09-21 15:19:30');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('12', 722, 'quas', '1978-01-01 18:02:34', '1975-11-01 11:24:08');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('13', 675, 'eum', '2018-07-24 10:53:57', '1991-01-29 13:12:43');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('14', 372, 'aut', '1976-08-28 09:21:10', '1975-01-15 10:56:47');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('15', 524, 'omnis', '2018-09-26 10:00:53', '1977-09-08 07:18:37');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('16', 752, 'perferendis', '2011-02-02 00:54:42', '2006-08-09 12:40:47');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('17', 796, 'iure', '1971-02-25 23:53:53', '2008-08-26 12:08:01');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('18', 77, 'sunt', '2001-09-27 16:37:58', '2004-07-30 22:45:33');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('19', 1, 'veritatis', '1972-08-24 12:26:53', '1998-09-02 19:15:04');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('20', 558, 'minima', '1975-10-08 00:25:39', '1978-07-06 12:39:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('21', 271, 'distinctio', '2018-02-19 15:24:58', '1996-06-03 00:59:18');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('22', 176, 'non', '2006-04-02 21:24:09', '1973-07-25 05:10:09');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('23', 931, 'velit', '2017-01-27 00:54:15', '1981-04-01 07:29:00');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('24', 649, 'molestiae', '1971-05-31 05:44:00', '1980-03-23 13:44:04');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('25', 926, 'soluta', '2016-06-20 23:53:32', '2013-12-10 04:41:15');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('26', 357, 'molestias', '2004-08-14 14:54:39', '1974-03-18 22:01:28');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('27', 628, 'ipsa', '2006-12-02 21:16:09', '1986-05-06 15:27:06');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('28', 917, 'ad', '2020-01-10 15:54:40', '1994-06-20 20:20:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('29', 622, 'eaque', '1981-12-31 00:06:02', '2013-11-19 13:36:31');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('30', 620, 'veniam', '1990-05-08 22:56:28', '1992-01-21 06:45:17');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('31', 813, 'quis', '1975-08-10 18:46:10', '2007-08-01 16:39:01');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('32', 968, 'aliquam', '1981-08-18 17:01:16', '2020-09-11 04:41:43');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('33', 416, 'pariatur', '2010-10-20 05:50:34', '1975-07-18 07:02:54');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('34', 640, 'ipsum', '2020-04-14 12:41:40', '1990-02-20 03:04:58');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('35', 235, 'esse', '2016-02-28 13:50:30', '2002-08-20 12:18:17');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('36', 947, 'atque', '1989-03-06 03:16:02', '1995-09-14 20:09:04');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('37', 678, 'vitae', '1980-12-06 23:31:16', '1998-02-11 19:42:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('38', 297, 'cupiditate', '2008-06-25 10:43:37', '2017-07-04 15:04:29');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('39', 513, 'qui', '2003-06-27 08:24:02', '1974-05-30 10:24:47');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('40', 422, 'quasi', '2004-07-28 16:16:04', '2012-12-12 14:36:16');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('41', 333, 'dolorem', '2007-09-18 10:17:31', '2017-03-08 10:27:19');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('42', 749, 'ab', '2020-07-19 21:07:08', '1991-01-08 16:39:56');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('43', 652, 'officia', '1973-02-03 15:21:07', '2003-11-07 09:16:43');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('44', 594, 'est', '1976-01-22 09:44:28', '1971-03-24 18:03:11');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('45', 836, 'nesciunt', '2002-06-17 14:18:37', '2004-03-29 19:49:37');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('46', 953, 'autem', '1978-10-05 08:13:10', '1983-04-11 21:46:25');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('47', 405, 'ex', '2000-04-04 06:31:33', '1997-12-31 23:07:54');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('48', 259, 'voluptas', '1972-03-16 00:12:00', '1994-05-13 20:05:33');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('49', 234, 'quia', '2006-06-05 07:05:22', '1974-11-19 14:35:53');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('50', 68, 'et', '1978-07-23 17:20:28', '1973-07-22 17:23:14');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('51', 245, 'ipsam', '2020-07-06 13:57:56', '2000-12-27 08:52:39');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('52', 408, 'sed', '1983-08-02 08:55:19', '1998-04-15 14:37:22');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('53', 22, 'iste', '1971-05-06 02:37:08', '2012-11-12 21:49:27');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('54', 93, 'id', '2017-10-04 07:09:37', '1974-09-23 07:34:43');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('55', 701, 'assumenda', '2012-04-10 00:39:32', '1996-11-23 09:43:22');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('56', 848, 'repellendus', '1980-04-25 06:24:25', '1994-08-29 05:28:34');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('57', 964, 'modi', '1999-12-16 03:32:24', '1970-05-20 02:55:14');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('58', 711, 'quibusdam', '1998-03-15 11:44:20', '1994-08-09 12:34:28');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('59', 689, 'magni', '1995-03-11 11:08:45', '2013-01-15 09:08:42');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('60', 280, 'nemo', '2001-03-15 23:22:10', '1978-09-08 12:05:22');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('61', 4, 'accusamus', '1981-11-19 13:59:53', '2003-04-04 15:17:41');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('62', 952, 'blanditiis', '2003-09-30 13:56:53', '2006-05-09 15:19:29');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('63', 499, 'optio', '1997-02-10 05:56:38', '2019-05-01 05:29:10');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('64', 412, 'repellat', '2006-03-30 22:13:57', '1979-03-27 04:09:57');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('65', 718, 'placeat', '2009-01-05 23:10:45', '1992-07-26 07:52:12');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('66', 732, 'error', '1993-03-05 21:13:43', '1975-09-17 08:52:41');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('67', 643, 'totam', '1986-06-04 22:26:01', '2010-01-08 07:06:24');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('68', 632, 'ea', '2005-05-21 11:21:26', '1981-06-27 23:29:01');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('69', 601, 'debitis', '1985-02-20 02:35:34', '1985-10-06 00:55:50');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('70', 919, 'numquam', '2009-11-27 16:53:45', '2012-10-14 05:26:06');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('71', 178, 'sint', '1982-09-02 01:07:12', '1984-07-20 20:14:16');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('72', 325, 'exercitationem', '1994-09-10 22:06:34', '2017-01-02 19:31:13');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('73', 52, 'possimus', '1979-03-17 15:01:15', '2015-09-28 14:49:12');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('74', 729, 'sit', '2008-06-08 05:08:59', '1973-12-28 19:59:30');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('75', 216, 'illum', '1972-08-27 00:20:27', '1989-02-21 02:33:56');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('76', 611, 'architecto', '1973-11-05 12:05:31', '1970-02-19 02:50:52');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('77', 512, 'eveniet', '2017-06-29 21:44:13', '1979-05-10 17:29:27');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('78', 211, 'ut', '1992-12-09 06:11:04', '1997-04-14 08:10:26');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('79', 434, 'laudantium', '2015-06-27 23:27:32', '2004-12-13 08:22:03');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('80', 106, 'voluptatum', '2011-08-05 22:28:37', '1998-07-26 19:42:28');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('81', 192, 'occaecati', '1970-06-25 08:42:16', '2000-04-27 12:27:30');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('82', 14, 'explicabo', '2008-06-03 05:51:34', '2004-12-08 10:05:23');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('83', 668, 'ratione', '1983-03-12 05:13:08', '2016-03-21 18:47:55');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('84', 456, 'voluptates', '1985-05-10 02:44:34', '1970-03-06 11:29:38');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('85', 567, 'harum', '2019-03-14 07:13:19', '1992-01-03 08:27:20');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('86', 42, 'ullam', '1973-06-16 19:38:54', '1980-11-18 06:52:22');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('87', 764, 'deleniti', '2020-02-14 11:25:20', '1971-09-12 06:26:33');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('88', 587, 'sequi', '2018-09-01 13:25:22', '2017-04-07 02:43:42');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('89', 421, 'repudiandae', '1975-12-31 22:09:31', '1985-11-27 21:41:01');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('90', 672, 'minus', '2009-10-01 23:00:05', '1998-05-10 02:33:49');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('91', 89, 'quo', '1987-10-08 18:20:29', '2010-03-11 15:26:31');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('92', 365, 'vel', '2000-09-09 07:42:47', '1980-11-03 02:07:50');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('93', 319, 'corrupti', '1979-02-11 11:14:00', '1975-11-04 17:26:52');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('94', 954, 'adipisci', '1985-11-06 00:44:53', '1989-09-13 13:10:54');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('95', 286, 'beatae', '1992-11-25 23:50:55', '2011-11-22 12:31:41');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('96', 147, 'tenetur', '2004-11-23 08:29:07', '2019-06-13 13:00:58');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('97', 693, 'accusantium', '2015-10-05 05:47:00', '1998-11-27 04:06:07');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('98', 384, 'nihil', '2012-03-06 09:25:21', '1999-05-22 15:47:04');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('99', 994, 'quod', '1974-11-13 03:29:08', '1989-11-26 02:48:58');
INSERT INTO `telecom_operators` (`countries_codes_id`, `code`, `operator_name`, `created_at`, `updated_at`) VALUES ('100', 254, 'animi', '2005-10-15 09:56:16', '2007-08-09 07:25:18');


