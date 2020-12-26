#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('1', '101', 'xlsb', 7762, NULL, '1', '2017-04-30 08:58:51', '1997-06-30 21:10:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('2', '102', 'gdl', 3, NULL, '2', '1973-12-05 14:55:55', '2004-07-06 04:04:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('3', '103', 'odi', 48514, NULL, '3', '1972-01-24 07:37:20', '1994-10-01 05:09:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('4', '104', 'ipk', 51737596, NULL, '4', '1980-08-22 05:38:25', '2007-03-30 20:13:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('5', '105', 'nfo', 3031, NULL, '5', '2016-09-21 04:44:10', '2005-09-21 17:19:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('6', '106', 'lrm', 0, NULL, '6', '2014-07-24 10:29:37', '2004-12-23 21:18:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('7', '107', 'wmlc', 72926778, NULL, '7', '2019-06-09 05:01:26', '2009-06-10 16:54:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('8', '108', 'mdb', 0, NULL, '8', '2009-05-31 04:40:07', '2016-06-27 10:20:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('9', '109', 'zip', 3575455, NULL, '9', '2011-01-06 16:30:45', '1973-02-22 08:33:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('10', '110', 'emz', 172219645, NULL, '10', '2010-07-03 21:32:34', '2015-03-15 15:07:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('11', '111', 'flx', 813, NULL, '11', '2004-07-27 01:36:27', '1980-08-26 01:48:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('12', '112', 'clp', 577219, NULL, '12', '1970-02-16 23:48:23', '1991-08-15 08:07:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('13', '113', 'dfac', 756, NULL, '13', '1988-02-01 11:46:01', '1988-10-28 14:10:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('14', '114', 'asx', 253, NULL, '14', '1997-04-12 00:07:06', '1971-10-06 11:24:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('15', '115', 'odft', 847, NULL, '15', '2006-05-21 22:18:10', '2003-11-11 01:59:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('16', '116', 'fig', 7, NULL, '16', '2017-04-04 04:30:27', '1974-10-02 16:33:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('17', '117', 'chat', 640055748, NULL, '17', '1974-08-17 05:18:03', '2000-11-20 05:12:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('18', '118', 'sxw', 1, NULL, '18', '1989-01-20 14:43:29', '1990-10-18 18:13:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('19', '119', 'mdb', 781518239, NULL, '19', '2010-07-17 13:00:19', '1982-01-12 10:06:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('20', '120', 'tra', 214104, NULL, '20', '1995-08-06 08:27:50', '1995-11-18 09:07:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('21', '121', 'link66', 8781, NULL, '21', '2013-12-25 06:43:36', '2016-06-13 06:22:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('22', '122', 'ssf', 83013, NULL, '22', '1970-09-03 11:27:00', '2010-05-28 07:46:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('23', '123', 'pcap', 8439, NULL, '23', '2000-12-12 04:18:11', '1972-02-29 12:58:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('24', '124', 'ez2', 0, NULL, '24', '2003-06-16 15:19:43', '2001-04-05 06:22:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('25', '125', 'kwd', 513644801, NULL, '25', '2006-08-06 09:24:36', '2010-10-12 13:14:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('26', '126', 'vcf', 35, NULL, '26', '2003-12-12 11:18:16', '1999-02-04 13:36:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('27', '127', 'xslt', 9119, NULL, '27', '2008-03-29 20:07:15', '2010-12-20 22:20:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('28', '128', 'sc', 212306, NULL, '28', '1986-06-15 16:43:14', '1986-12-19 05:11:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('29', '129', 'flv', 46581, NULL, '29', '2000-09-07 04:57:30', '1999-07-28 12:53:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('30', '130', 'f4v', 583, NULL, '30', '1985-06-04 02:38:52', '1977-09-30 18:31:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('31', '131', 'weba', 958652, NULL, '31', '1995-05-03 12:54:31', '2011-02-01 08:48:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('32', '132', 'wax', 45, NULL, '32', '2001-07-24 03:41:30', '2000-04-20 19:36:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('33', '133', 'gtw', 4, NULL, '33', '1971-01-14 18:42:54', '2002-03-13 20:56:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('34', '134', 'org', 925, NULL, '34', '2014-10-05 23:35:07', '1988-04-15 13:15:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('35', '135', 'srt', 0, NULL, '35', '2013-10-12 11:21:03', '2011-12-08 23:39:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('36', '136', 'xlsb', 7, NULL, '36', '2003-02-16 18:48:44', '1987-01-13 20:58:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('37', '137', 'nml', 5703, NULL, '37', '1983-01-08 18:35:33', '1983-08-13 02:30:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('38', '138', 'rmvb', 59816, NULL, '38', '1997-04-30 09:31:12', '1998-05-01 19:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('39', '139', 'docx', 10090, NULL, '39', '1971-10-12 01:43:56', '1999-09-10 10:48:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('40', '140', 'dcurl', 667, NULL, '40', '1971-01-24 14:59:55', '1979-07-22 19:00:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('41', '141', 's', 12, NULL, '41', '1996-05-18 15:51:54', '2000-12-11 02:00:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('42', '142', 'sxm', 534, NULL, '42', '1996-09-02 08:47:32', '1976-10-03 16:17:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('43', '143', 'lasxml', 0, NULL, '43', '1979-03-20 05:27:15', '2015-04-03 19:45:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('44', '144', 'pptm', 51, NULL, '44', '2003-12-16 21:46:26', '1984-07-12 06:29:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('45', '145', 'otc', 361282, NULL, '45', '1971-12-25 04:49:10', '2007-04-18 21:47:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('46', '146', 'svg', 1742297, NULL, '46', '2017-03-06 21:08:44', '2003-05-20 13:18:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('47', '147', 'h264', 32719454, NULL, '47', '1977-10-21 07:56:40', '1983-07-06 00:31:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('48', '148', 'dcurl', 6187674, NULL, '48', '2010-02-10 00:50:21', '1998-04-03 21:21:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('49', '149', 'gnumeric', 5630, NULL, '49', '1989-03-13 21:09:39', '1974-03-23 23:05:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('50', '150', 'prc', 0, NULL, '50', '1985-02-27 10:05:47', '1989-05-07 18:05:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('51', '151', 'ppsx', 2637286, NULL, '51', '1990-01-17 20:31:17', '1977-02-20 21:39:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('52', '152', 'rip', 61, NULL, '52', '1978-10-20 11:15:17', '2007-04-24 10:44:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('53', '153', 'qxl', 220, NULL, '53', '1970-08-11 08:52:58', '1992-09-04 13:38:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('54', '154', 'odm', 1, NULL, '54', '1984-03-21 19:20:51', '2000-09-01 23:51:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('55', '155', 'wpl', 293100, NULL, '55', '2020-10-07 15:51:09', '1975-05-01 23:58:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('56', '156', 'geo', 38, NULL, '56', '1992-11-22 22:29:38', '2006-06-24 22:26:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('57', '157', 'scurl', 4102909, NULL, '57', '1978-11-21 01:24:47', '1972-06-15 17:36:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('58', '158', 'curl', 4, NULL, '58', '1989-01-02 07:36:48', '2008-05-26 10:23:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('59', '159', 'elc', 8072, NULL, '59', '1972-06-13 13:11:15', '1993-02-28 01:32:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('60', '160', 'rmp', 88615148, NULL, '60', '2001-10-10 05:44:42', '1995-01-06 15:57:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('61', '161', 'vis', 37551491, NULL, '61', '2015-08-13 05:15:59', '2020-11-21 07:35:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('62', '162', 'ipk', 80567282, NULL, '62', '1985-12-11 23:21:05', '2016-06-21 15:49:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('63', '163', 'xm', 52, NULL, '63', '2007-10-09 20:45:18', '1972-03-11 04:08:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('64', '165', 'wsdl', 13237, NULL, '64', '1982-03-18 20:42:24', '1977-08-15 10:32:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('65', '166', 'sv4crc', 95744425, NULL, '65', '2015-08-26 00:48:58', '2002-07-19 10:02:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('66', '167', 'mets', 519156, NULL, '66', '2004-02-28 14:20:13', '1985-11-23 12:43:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('67', '168', 'tpt', 700409, NULL, '67', '2009-11-09 09:30:15', '1975-07-10 05:54:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('68', '169', 'dfac', 63076, NULL, '68', '1975-07-13 15:25:25', '1977-03-16 21:03:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('69', '170', 'sus', 86094064, NULL, '69', '2005-12-11 15:42:53', '1976-09-05 14:28:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('70', '171', 'xpi', 45857838, NULL, '70', '1985-11-18 11:04:30', '2007-09-07 04:18:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('71', '172', 'ssf', 8, NULL, '71', '1976-04-29 11:21:05', '1974-04-15 07:59:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('72', '173', 'ktx', 505264, NULL, '72', '1983-10-08 23:11:07', '1986-05-14 20:48:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('73', '174', 'rtx', 0, NULL, '73', '1979-10-08 16:44:00', '2001-01-30 01:33:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('74', '175', 'wbmp', 971788284, NULL, '74', '1980-12-07 15:58:08', '1972-01-11 01:37:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('75', '176', 'dtd', 922116797, NULL, '75', '1972-05-20 19:05:46', '1970-06-11 11:46:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('76', '177', 'jnlp', 2295618, NULL, '76', '1981-04-21 13:50:46', '2001-01-27 12:47:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('77', '178', 'tcl', 466, NULL, '77', '2005-10-28 11:10:42', '1981-09-01 13:43:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('78', '179', 'ahead', 4379, NULL, '78', '2008-10-11 19:01:03', '1999-01-15 02:12:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('79', '180', 'jpeg', 0, NULL, '79', '2015-11-02 19:02:50', '1971-10-07 07:42:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('80', '181', 'ivp', 0, NULL, '80', '2020-02-10 00:41:28', '1977-12-24 23:04:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('81', '182', 'ttc', 19, NULL, '81', '1989-09-02 22:30:26', '1973-10-09 18:36:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('82', '183', 'f4v', 1468790, NULL, '82', '2008-01-21 12:43:10', '1993-04-22 17:08:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('83', '184', 'xbap', 92746960, NULL, '83', '2014-08-18 03:28:58', '2006-06-10 12:39:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('84', '185', 'ez3', 0, NULL, '84', '2015-08-24 18:33:10', '1992-01-25 02:45:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('85', '186', 'rmp', 4, NULL, '85', '1992-04-03 02:56:04', '1978-11-20 08:52:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('86', '187', 'pkg', 15063157, NULL, '86', '1985-02-18 22:14:29', '1973-12-16 20:18:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('87', '188', 'm3u', 67928, NULL, '87', '1978-07-05 17:23:04', '1971-12-15 01:11:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('88', '189', 'nsc', 666759164, NULL, '88', '1999-07-11 06:33:30', '1998-09-29 12:20:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('89', '190', 'vxml', 23434707, NULL, '89', '2006-05-23 00:57:36', '2002-04-15 00:38:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('90', '191', 'pps', 3, NULL, '90', '2012-08-29 11:27:27', '1983-05-11 04:32:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('91', '192', 'ecma', 1, NULL, '91', '1983-08-25 01:22:20', '2012-11-18 11:17:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('92', '193', 'uvg', 87520835, NULL, '92', '1993-10-09 10:49:50', '1994-07-10 12:45:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('93', '194', 'cgm', 0, NULL, '93', '1974-11-20 06:08:53', '2020-05-04 05:04:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('94', '195', 'rdz', 0, NULL, '94', '2017-05-16 06:20:34', '2016-04-20 04:12:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('95', '196', 'sxg', 31496, NULL, '95', '2009-09-04 18:16:16', '2013-07-16 18:33:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('96', '197', 'mie', 0, NULL, '96', '2016-03-05 01:15:52', '1976-09-24 17:29:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('97', '198', 'uvva', 25544556, NULL, '97', '2016-10-10 21:45:22', '1996-01-26 18:07:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('98', '199', 'wbxml', 0, NULL, '98', '2000-11-21 14:51:19', '1974-07-12 00:03:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('99', '200', 'vxml', 1, NULL, '99', '1975-08-22 04:09:53', '1990-11-25 21:13:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('100', '101', 'oxt', 7, NULL, '100', '2012-04-09 06:55:07', '1982-10-08 10:32:12');


