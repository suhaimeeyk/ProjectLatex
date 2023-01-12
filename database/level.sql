CREATE TABLE `db_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `db_level` (`id`, `name`) VALUES
(1, 'ผู้ดูแลระบบ'),
(2, 'ผู้ใช้ระบบ');