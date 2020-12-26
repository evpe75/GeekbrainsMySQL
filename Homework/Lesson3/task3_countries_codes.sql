#
# TABLE STRUCTURE FOR: countries_codes
#

DROP TABLE IF EXISTS `countries_codes`;

CREATE TABLE `countries_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `code` bigint(10) NOT NULL COMMENT 'Код страны',
  `country_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование страны',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Коды стран';

INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('1', '202', 'Kyrgyz Republic', '1993-05-20 16:32:00', '1996-12-02 18:18:40');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('2', '753', 'Afghanistan', '2019-08-15 14:49:33', '2003-02-12 05:15:03');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('3', '64', 'Solomon Islands', '1980-09-07 17:31:23', '1988-11-20 19:19:24');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('4', '252', 'Bahrain', '2012-08-06 18:06:38', '1999-08-31 08:17:16');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('5', '216', 'Latvia', '1994-01-16 12:45:47', '2017-11-06 12:22:45');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('6', '38', 'Saint Lucia', '2016-05-10 21:36:54', '2011-02-08 11:41:26');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('7', '622', 'Saint Pierre and Miquelon', '1991-12-31 13:23:27', '1979-09-25 14:12:20');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('8', '144', 'Saint Barthelemy', '1988-04-26 23:46:57', '1983-10-04 02:59:43');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('9', '286', 'Greenland', '2003-03-23 00:28:40', '2004-08-07 14:13:34');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('10', '76', 'Guatemala', '2006-01-19 16:23:55', '2016-12-06 07:17:09');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('11', '899', 'Dominican Republic', '1984-08-08 05:52:27', '2018-07-26 21:34:31');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('12', '770', 'Djibouti', '1985-06-10 19:25:00', '1980-06-05 02:50:27');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('13', '255', 'Indonesia', '1978-11-10 08:31:26', '1991-09-29 20:34:08');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('14', '341', 'Syrian Arab Republic', '1970-06-05 15:39:08', '1971-10-02 01:11:18');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('15', '363', 'Svalbard & Jan Mayen Islands', '2010-03-11 12:36:00', '1989-07-18 10:40:11');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('16', '409', 'Albania', '1982-05-30 10:11:36', '1975-10-18 04:50:50');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('17', '205', 'Aruba', '2018-03-16 19:15:04', '2017-07-02 07:46:50');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('18', '935', 'Niger', '2020-08-19 18:56:33', '1979-11-15 15:25:01');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('19', '774', 'Martinique', '1999-10-12 01:35:53', '2017-05-31 03:55:59');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('20', '764', 'British Indian Ocean Territory (Chagos Archipelago)', '1978-04-01 14:02:36', '2003-07-01 22:27:19');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('21', '782', 'Macao', '2009-01-31 07:21:33', '1989-04-17 09:09:20');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('22', '732', 'Costa Rica', '2019-03-02 10:10:42', '1989-10-14 06:14:19');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('23', '373', 'Swaziland', '2016-05-19 01:41:00', '2005-12-18 19:10:28');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('24', '262', 'Bulgaria', '1999-01-26 15:39:34', '1985-06-30 10:31:33');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('25', '695', 'Kazakhstan', '1993-07-14 03:12:35', '2005-09-30 07:54:44');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('26', '785', 'Qatar', '2000-03-11 00:26:39', '2012-10-16 07:19:50');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('27', '485', 'Saint Martin', '2009-09-22 22:22:23', '1979-01-01 14:12:27');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('28', '158', 'Bermuda', '1987-06-01 18:52:57', '1996-12-28 11:56:39');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('29', '379', 'United States Minor Outlying Islands', '1991-02-26 15:14:07', '1989-12-13 01:37:19');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('30', '222', 'Taiwan', '1972-04-25 04:28:01', '1972-04-30 17:09:01');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('31', '767', 'Fiji', '1986-09-09 11:43:10', '2002-06-14 09:25:30');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('32', '258', 'Ethiopia', '1978-12-23 02:55:57', '2004-08-19 12:23:49');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('33', '236', 'Reunion', '1971-08-11 06:24:20', '1991-04-25 16:01:03');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('34', '687', 'Angola', '2004-07-11 16:53:51', '1984-06-17 15:27:47');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('35', '954', 'Guernsey', '2017-08-24 12:56:09', '1976-02-16 11:49:30');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('36', '257', 'Tonga', '1986-09-17 02:23:52', '1990-12-08 12:05:11');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('37', '102', 'Luxembourg', '2015-11-07 05:39:22', '1986-08-19 11:24:29');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('38', '71', 'British Virgin Islands', '1982-07-28 09:08:54', '1993-11-18 15:55:42');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('39', '120', 'Sudan', '2002-07-26 12:37:56', '2009-08-21 14:33:36');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('40', '115', 'Italy', '2017-12-01 14:08:35', '1984-03-16 22:17:02');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('41', '918', 'Cayman Islands', '2009-06-22 08:49:38', '1981-03-08 05:48:23');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('42', '886', 'Vanuatu', '2004-12-06 06:51:01', '1995-07-14 18:28:39');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('43', '624', 'Algeria', '1994-09-09 00:36:39', '1983-02-11 11:35:46');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('44', '963', 'Malawi', '1997-07-02 13:28:37', '1982-05-17 13:45:47');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('45', '191', 'Christmas Island', '2015-11-24 00:06:45', '2007-04-04 18:09:37');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('46', '429', 'Slovakia (Slovak Republic)', '1978-10-18 19:05:29', '1987-11-14 12:44:50');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('47', '324', 'Burkina Faso', '1971-01-02 05:02:33', '1980-04-03 04:22:39');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('48', '884', 'Central African Republic', '2005-05-24 19:11:29', '2012-10-14 21:57:44');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('49', '9', 'United Arab Emirates', '2019-12-13 09:23:05', '2001-05-25 12:58:18');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('50', '609', 'Czech Republic', '2011-01-08 09:23:11', '2016-04-05 17:27:49');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('51', '570', 'Madagascar', '1997-09-21 03:14:01', '2005-08-23 11:45:53');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('52', '443', 'Serbia', '1985-11-08 16:21:37', '1987-09-12 19:30:43');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('53', '397', 'Thailand', '1992-10-19 23:26:21', '1999-10-04 20:15:32');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('54', '108', 'Guyana', '1989-02-19 01:14:15', '1975-11-27 03:06:55');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('55', '526', 'Jordan', '1972-02-25 23:48:56', '1972-09-25 02:53:49');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('56', '148', 'Jamaica', '1981-09-22 14:07:40', '2020-06-07 12:14:10');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('57', '137', 'Poland', '2014-07-07 20:28:32', '1985-11-03 05:15:25');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('58', '592', 'Korea', '1992-07-09 14:53:32', '1996-01-18 21:25:02');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('59', '152', 'Norfolk Island', '2019-08-22 15:38:51', '2020-01-26 12:52:34');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('60', '482', 'Falkland Islands (Malvinas)', '2004-01-09 09:54:56', '1982-03-27 00:18:53');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('61', '837', 'Ghana', '2017-06-26 07:41:44', '1992-10-25 19:41:30');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('62', '483', 'Croatia', '1983-07-07 15:47:21', '2002-12-15 03:08:02');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('63', '853', 'Uruguay', '1999-11-06 22:19:26', '2000-08-09 11:37:07');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('64', '828', 'Wallis and Futuna', '1978-06-27 18:43:21', '2019-12-16 01:43:05');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('65', '489', 'China', '1987-01-01 16:57:35', '2006-04-12 03:03:10');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('66', '74', 'Colombia', '1985-02-07 04:44:30', '1975-11-29 11:14:42');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('67', '447', 'Comoros', '1979-03-15 12:59:03', '1972-08-30 12:00:45');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('68', '282', 'Isle of Man', '2009-06-02 19:36:25', '1990-03-12 09:51:08');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('69', '168', 'Honduras', '1991-11-20 14:24:28', '1975-03-20 19:32:45');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('70', '464', 'Antarctica (the territory South of 60 deg S)', '1995-12-15 19:32:52', '1993-08-22 00:31:08');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('71', '741', 'Australia', '2005-03-15 18:08:09', '1972-06-13 17:39:14');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('72', '505', 'Tanzania', '1980-10-24 03:55:59', '2006-01-29 05:39:29');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('73', '129', 'Saint Helena', '1999-06-25 10:09:38', '2005-06-10 01:38:37');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('74', '905', 'Iran', '2003-03-30 04:11:22', '1997-08-14 08:04:43');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('75', '697', 'Kuwait', '1992-12-15 03:25:33', '2018-02-19 00:15:43');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('76', '547', 'Cameroon', '1987-05-17 00:35:26', '1985-06-03 14:38:25');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('77', '923', 'Ireland', '2017-09-12 11:26:47', '1970-12-31 22:09:03');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('78', '231', 'Senegal', '2010-07-08 11:36:19', '1989-11-06 16:35:46');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('79', '217', 'Bahamas', '1986-04-24 13:10:06', '2008-10-12 20:21:01');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('80', '195', 'Bouvet Island (Bouvetoya)', '1971-06-04 06:45:46', '1980-08-28 15:02:33');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('81', '824', 'Paraguay', '2000-05-06 20:31:01', '1994-01-01 05:33:40');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('82', '717', 'Yemen', '2020-10-01 14:16:15', '2003-08-03 01:03:22');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('83', '133', 'Uganda', '2014-07-14 19:51:41', '1998-06-23 18:54:21');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('84', '376', 'Macedonia', '2007-11-13 11:21:21', '2003-09-07 16:36:37');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('85', '337', 'Maldives', '2011-03-22 07:53:02', '2003-07-16 22:08:07');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('86', '680', 'Anguilla', '1972-10-25 20:49:34', '2003-03-01 01:24:28');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('87', '180', 'Ukraine', '1994-02-08 18:15:53', '1983-07-28 14:11:09');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('88', '982', 'Namibia', '1990-06-21 18:30:05', '2004-12-05 07:42:14');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('89', '375', 'Barbados', '1984-02-10 16:30:29', '1990-03-22 08:16:27');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('90', '801', 'Austria', '1978-08-27 07:00:40', '2002-05-24 03:30:10');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('91', '859', 'Denmark', '1972-06-29 00:33:25', '2020-09-11 16:32:36');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('92', '883', 'Togo', '1977-07-20 10:04:19', '2010-01-29 10:15:48');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('93', '264', 'Guam', '1999-10-21 08:39:55', '1977-12-22 05:51:10');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('94', '121', 'Nepal', '1997-06-14 13:14:04', '2002-06-14 15:09:36');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('95', '411', 'Seychelles', '1979-07-22 12:30:02', '1999-03-31 13:13:47');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('96', '856', 'Liechtenstein', '2000-07-24 18:36:08', '1973-07-29 18:01:45');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('97', '241', 'Japan', '1993-08-26 08:32:55', '1987-04-19 22:26:06');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('98', '807', 'Cuba', '1979-07-21 14:38:42', '1992-08-01 16:32:41');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('99', '393', 'Congo', '2000-02-05 21:36:10', '2011-04-23 12:23:45');
INSERT INTO `countries_codes` (`id`, `code`, `country_name`, `created_at`, `updated_at`) VALUES ('100', '300', 'Trinidad and Tobago', '2004-03-15 18:28:04', '1972-01-24 18:34:08');


