#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('1', '101', '2015-12-03 06:28:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('2', '102', '1980-07-19 11:23:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('3', '103', '1981-04-27 03:19:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('4', '104', '1997-10-28 22:35:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('5', '105', '2009-11-25 01:48:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('6', '106', '2014-02-18 05:35:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('7', '107', '1998-09-22 09:50:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('8', '108', '1980-05-08 10:59:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('9', '109', '2012-09-25 13:35:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('10', '110', '1978-05-13 07:47:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('11', '111', '2004-10-07 06:55:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('12', '112', '1975-06-24 21:21:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('13', '113', '1980-05-10 18:35:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('14', '114', '1978-01-17 04:50:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('15', '115', '1972-02-04 15:03:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('16', '116', '1977-11-21 03:20:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('17', '117', '1971-04-23 23:18:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('18', '118', '2012-01-04 22:21:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('19', '119', '2015-07-12 07:23:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('20', '120', '1995-10-25 23:36:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('21', '121', '1987-02-04 11:32:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('22', '122', '1977-10-08 21:16:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('23', '123', '2017-01-03 10:43:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('24', '124', '1976-10-31 04:38:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('25', '125', '1981-04-18 07:26:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('26', '126', '1970-03-21 14:24:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('27', '127', '1972-08-01 12:42:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('28', '128', '2018-09-04 16:47:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('29', '129', '1981-06-29 20:29:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('30', '130', '1978-07-17 21:06:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('31', '131', '1974-06-10 23:18:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('32', '132', '1975-07-31 18:48:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('33', '133', '2004-02-12 22:05:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('34', '134', '2007-05-20 04:36:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('35', '135', '2004-10-08 02:57:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('36', '136', '1989-11-02 10:41:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('37', '137', '2005-08-24 17:23:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('38', '138', '1996-11-05 23:49:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('39', '139', '1996-03-20 05:49:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('40', '140', '2015-02-22 12:52:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('41', '141', '2003-10-29 10:03:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('42', '142', '1992-09-11 20:09:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('43', '143', '2019-09-29 03:53:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('44', '144', '1975-05-06 14:06:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('45', '145', '1974-02-11 07:37:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('46', '146', '1998-09-29 11:26:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('47', '147', '1981-08-19 11:16:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('48', '148', '2007-02-02 05:34:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('49', '149', '2017-11-03 16:18:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('50', '150', '1986-09-13 14:52:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('51', '151', '2020-08-09 21:43:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('52', '152', '1972-12-08 08:53:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('53', '153', '2004-12-02 12:11:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('54', '154', '1979-01-15 08:06:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('55', '155', '1982-09-29 18:54:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('56', '156', '1996-04-12 05:46:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('57', '157', '1994-02-21 02:09:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('58', '158', '2016-05-08 15:20:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('59', '159', '1981-10-24 22:09:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('60', '160', '2007-09-21 15:31:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('61', '161', '2013-07-22 20:56:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('62', '162', '2001-08-24 07:22:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('63', '163', '1997-11-09 22:54:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('64', '165', '2006-11-04 21:02:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('65', '166', '1982-11-28 17:15:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('66', '167', '2008-03-23 05:20:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('67', '168', '2012-12-10 12:43:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('68', '169', '1993-03-04 11:09:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('69', '170', '1970-09-07 13:18:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('70', '171', '1994-06-23 22:34:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('71', '172', '2018-06-15 07:34:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('72', '173', '2017-01-31 17:27:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('73', '174', '1990-07-16 12:18:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('74', '175', '1995-04-11 20:26:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('75', '176', '2000-12-25 03:00:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('76', '177', '1973-05-10 05:35:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('77', '178', '1991-05-11 01:43:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('78', '179', '1977-03-14 13:22:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('79', '180', '1979-05-27 06:38:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('80', '181', '2020-09-05 16:26:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('81', '182', '2001-08-02 21:11:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('82', '183', '1989-02-16 21:56:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('83', '184', '1983-11-04 05:57:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('84', '185', '1972-12-01 10:04:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('85', '186', '2010-11-28 00:32:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('86', '187', '2006-09-14 14:33:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('87', '188', '1986-04-09 06:54:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('88', '189', '1978-06-13 01:42:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('89', '190', '1987-06-04 04:04:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('90', '191', '2011-10-07 04:37:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('91', '192', '1978-09-08 23:41:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('92', '193', '1995-07-02 16:59:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('93', '194', '1979-11-29 12:49:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('94', '195', '2004-06-09 21:10:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('95', '196', '1970-03-08 07:45:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('96', '197', '1987-07-25 12:53:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('97', '198', '2006-03-25 22:07:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('98', '199', '2017-03-10 21:22:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('99', '200', '2012-04-08 23:53:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('100', '101', '2005-02-04 12:57:12');


