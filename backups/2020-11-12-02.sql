/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: courses
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `courses` (
  `id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `maker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `uploader` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `uploaded` datetime NOT NULL,
  `published` datetime NOT NULL,
  `style` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `day` tinyint(1) NOT NULL,
  `theme` int(11) NOT NULL,
  `direction` tinyint(1) NOT NULL,
  `sub_day` tinyint(1) DEFAULT NULL,
  `sub_theme` int(11) DEFAULT NULL,
  `sub_direction` tinyint(1) DEFAULT NULL,
  `tag_1` int(11) DEFAULT NULL,
  `tag_2` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: currency
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `currency` decimal(65, 2) NOT NULL,
  `worked` int(11) NOT NULL,
  `last_worked` datetime NOT NULL,
  `bank` decimal(65, 2) NOT NULL,
  `doubling` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: dcmc
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `dcmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dcid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dcname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mcname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 772 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: giveaways
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `giveaways` (
  `id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `guild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `winner` int(11) NOT NULL,
  `endAt` datetime NOT NULL,
  `emoji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `color` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: gtimer
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `gtimer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dc_rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `endAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 48 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: inventory
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: leveling
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `leveling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `guild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `exp` bigint(255) NOT NULL,
  `last` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3100 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: lottery
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `lottery` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `numbers` bigint(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: nolog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `nolog` (
  `id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: poll
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `poll` (
  `id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `guild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `endAt` datetime NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: queue
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 16 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: rolemsg
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `rolemsg` (
  `id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `guild` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime NOT NULL,
  `roles` longtext COLLATE utf8mb4_general_ci,
  `emojis` longtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: servers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `servers` (
  `id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `autorole` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `welcome` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `wel_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `wel_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `leave_msg` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `leave_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `giveaway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `queue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `looping` tinyint(1) DEFAULT NULL,
  `repeating` tinyint(1) DEFAULT NULL,
  `boost_msg` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `boost_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: shop
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `buy_price` decimal(65, 2) NOT NULL,
  `sell_price` decimal(65, 2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: timer
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `timer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `guild` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `endAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `fc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mailed` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: warn
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `warn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: courses
# ------------------------------------------------------------

INSERT INTO
  `courses` (
    `id`,
    `name`,
    `maker`,
    `code`,
    `uploader`,
    `uploaded`,
    `published`,
    `style`,
    `description`,
    `day`,
    `theme`,
    `direction`,
    `sub_day`,
    `sub_theme`,
    `sub_direction`,
    `tag_1`,
    `tag_2`,
    `time`,
    `approved`
  )
VALUES
  (
    'smm2db_5f7d666646f2e8.18754058',
    'Surviv.io Saloon Music (RUN)',
    'NW Wind',
    'R7B-YKV-6MF',
    'smm2db_5f810f84a25772.18903525',
    '2020-10-07 06:55:34',
    '2020-05-09 09:14:00',
    0,
    NULL,
    0,
    0,
    0,
    0,
    0,
    0,
    8,
    9,
    300,
    1
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: currency
# ------------------------------------------------------------

INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    2,
    '416227242264363008',
    97.25,
    7,
    '2020-11-10 14:28:37',
    0.00,
    NULL
  );
INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    5,
    '404265049826263050',
    1.07,
    1,
    '2020-04-16 11:46:23',
    0.00,
    NULL
  );
INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    4,
    '110111642343202816',
    1.19,
    1,
    '2020-03-16 13:48:14',
    0.00,
    NULL
  );
INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    6,
    '519810286996160522',
    2.08,
    2,
    '2020-09-02 02:50:05',
    0.00,
    NULL
  );
INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    7,
    '517290901593128980',
    3.15,
    3,
    '2020-09-14 11:14:09',
    0.00,
    NULL
  );
INSERT INTO
  `currency` (
    `id`,
    `user_id`,
    `currency`,
    `worked`,
    `last_worked`,
    `bank`,
    `doubling`
  )
VALUES
  (
    8,
    '737841575962345492',
    1.31,
    1,
    '2020-11-05 06:34:15',
    0.00,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: dcmc
# ------------------------------------------------------------

INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    1,
    '253787876033036288',
    'Derek ⁿᵁᵍ #4285',
    'GO_Derek',
    'd1ce3268d61748f39773f61424f549b2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    2,
    '456403578286899210',
    'RICKASS #3945',
    'RickAss',
    '7efaddd15934425687b2fcb6c87d8ad8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    3,
    '461516729047318529',
    '⚔Asuna⚔ #0930',
    'Asuna_Stacia',
    '59b13e4fe7d14fc68ba2a79b7f948b3c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    4,
    '533287254827859973',
    'SETUNA_1128 #9439',
    'IntelCoreI9_9900',
    'eaf413338ed0430098d215c7d783397c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    5,
    '479096601747652618',
    'Gsaed #4555',
    'gsaed',
    '2398fe840ebe4fadbe1ee92a6e0ac77e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    6,
    '215921928517451778',
    'Ricecake Playz #6510',
    'RiceCakePlayz',
    'a22233407cdf42928ca18051332772c1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    7,
    '499540087990648833',
    'ETzzzzzz #2900',
    'ETzzzzzz',
    '1909f322cf5d4e20a674c10e53664253'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    8,
    '635040857564643340',
    'ChickenOuO #1544',
    'Chicken_OuO',
    '6a902b35d70a4072b917870e54fe1891'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    9,
    '328949726684905473',
    'KawaiiiMami #4608',
    'KawaiiEmilia',
    '5ce84314285349f8bd3ac8510df70ba5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    10,
    '410319963400962050',
    'HiImKappa #2512',
    'LoveHaiBao',
    '9ba1c43debd044fe83bcd7c728aea306'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    11,
    '485084983271358466',
    'StevenLord #9205',
    'stevenlord',
    '85f3142749e549dc96aec0f144489ee0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    12,
    '275132234699374602',
    'PackerNZ #6560',
    'Japam',
    'e5faf1d480934aa091af04de9340d420'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    13,
    '390137806766211083',
    'Taiwan_Fish #8899',
    'Taiwan_fish',
    '3c45ad6d3041445baace9d32409b0729'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    14,
    '267713810901630976',
    'JKHypeGem5150 #3930',
    'JKJediMan5178',
    '59b069541c10451b9d5a7d5605610040'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    15,
    '428023962795245569',
    'Notflordaman12 #3765',
    'TacticalSoloXI',
    'a155f56c3b6446509ff5679aaac60920'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    16,
    '303513503011176448',
    'Ax3l #2644',
    'Drake_Dragonborn',
    '1f2306a3f9de4e2bb788fff0817077fc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    17,
    '419108781017006090',
    '花若盛開蝴蝶自來（IGN-SpawnkillGod)\r\n#3041',
    'Spawnkillgod',
    '8e0b3f4fe09945c9997b533dea0cf929'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    18,
    '291950423387013121',
    'Megalova ˙Ꙫ˙ #7579',
    'Megalova',
    '1078259586744547b39da24d3a975817'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    19,
    '502087666201001984',
    'sinonon #0960',
    'sinonuwu',
    'ffd3cd1549e744d8b043d59cf2ef6344'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    20,
    '416227242264363008',
    'NorthWestWind #1885',
    'NorthWestWind',
    '337bd6708e21429394a0219ac6886b72'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    21,
    '401988466386141184',
    'LilJayz #2315',
    'uwuYiyu',
    '0d7434a7ad594bc1b16dec6c36ad8eb1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    22,
    '461388311676715017',
    '亞瑟 #9313',
    'HA_heathen002',
    '0ceae4da8a63429a923ca20a6901011d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    23,
    '376591613541089291',
    'Uv2 #9633',
    'RACQ',
    'b92ea3bebe5f489487a47bea1c6d3a63'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    24,
    '299983547022835713',
    'SmellyFir #3630',
    'smellyfir7844',
    '422dd7d92ade4bd784421056a07bfaed'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    25,
    '303609255712391168',
    'Psymen_RAY #6818',
    'Psymen_S3RL',
    'ea1a254691d44421b6afce8c0e181726'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    26,
    '607268302980513989',
    '曉夜 #1548',
    'hs102a4c09',
    'b0c5561a6d0a4409b201472f33a6d380'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    27,
    '481708677909315594',
    '小諾 #8094',
    'GinoHi',
    '9bbc878fbb5a4bb997b1069313d63ced'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    28,
    '526691543588012053',
    'Killer_0245 #3150',
    'Killer_0245',
    '366a23d0d3194b2bbaaa65e998c8260d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    29,
    '591283742367285265',
    'wonderful name #4715',
    'Eason2323',
    '7c0cb40299844d00ae142844de26ad2a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    30,
    '490294858943299594',
    'aruru_weed #5896',
    'Weed3',
    'e7ca4d5a8d984301808c8c391750fdba'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    31,
    '465542445740851201',
    'KaiBe #5574',
    'JustDropOverFlux',
    '5ce5dfa5203e460cbab736001558980a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    32,
    '563241174140321802',
    'Kyoko #7212',
    'Oo_Kyoko_oO',
    '0208e488aa4144ceb218c89569dfe04b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    33,
    '605365122483093524',
    '小魔 #3010',
    'Gawr_Gura_ouo',
    'e414f02cbffb40a38e0fbe616e231721'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    34,
    '418306448687104000',
    '桌上幽靈leon10019 #9797',
    'leon10019',
    '1b20165acd444cd99a1ffef0175a2592'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    35,
    '403831812918476800',
    'by派大 #2373',
    'pie_big',
    '08391b65c3e14bdab1cde3307cd46405'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    36,
    '543828904889155607',
    'owen071028 #2543',
    'i_from_africa',
    'f37bd29f9fb84d60993fc10415438505'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    37,
    '517069045678342177',
    '狂暴戰神 #8515',
    'KuangBauJanShen',
    ''
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    38,
    '286054562199240705',
    '๖ۣۜ????ΛḠ✧ 莉莉最愛的狗狗awa 我超愛莉莉 #7449',
    'SAO_Doge0u0_tw',
    '9e01846998ed4241ac557513e20f73cb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    39,
    '339684208392011778',
    'セレナ #5103',
    'SAO_Yuuki',
    'ea1d662b0fc04e42af83d0239e1bbb5a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    40,
    '330572038244925441',
    'AlwaysSmile_HK #0233',
    'NightMareXII',
    '182aea28bf84413ebccaeced47b85a89'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    41,
    '511458704340680704',
    'Fireballs2004 #7507',
    'Fireballs2004',
    '1e10bf603ee9479da0bf91852afa7001'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    42,
    '633082846138990614',
    '爆豪勝己 #5740',
    'ME87',
    '4f3aa2934392420cb0759a2f9987d5de'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    43,
    '310750064220045313',
    'HA #1958',
    'BCJP',
    '7ba410ef40384ef4abf7f67785aea35d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    44,
    '286054562199240705',
    '๖ۣۜ????ΛḠ✧ 莉莉最愛的狗狗awa 我超愛莉莉 #7449',
    'SAO_Doge0u0_tw',
    '9e01846998ed4241ac557513e20f73cb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    45,
    '353160102200737794',
    '只會說英文的chocolate~~ #5700',
    'iwindi_',
    '34e9ebe486a14acab4666c098ddb223c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    46,
    '373137783637671937',
    'O PatinhoGeraldo #7451',
    'Erikill',
    'ff1e5414655f4bdd8986558650c0745f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    47,
    '308837621084323840',
    'REAL_BluePan #8082',
    'bluemoon1129',
    '78095f400bb747b4b078c692526c273f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    48,
    '344402783212142592',
    'GayPeanut #2914',
    'GayPeanut',
    '16e1e22465024ffea8b6c13d71c38f5f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    49,
    '644478303369166868',
    'HTKING #6784',
    'HTKING',
    '6ef0ed94dc7846fbb02193135c79888f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    50,
    '649578996664893451',
    'hi~ #3516',
    'rino_x',
    '4680ebce687a445ba9a128ad4f4581db'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    51,
    '533209200642228235',
    'Kirito454 #7533',
    'Kirito454',
    'b9702e76f9a24f5c830af77a5e86ca5b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    52,
    '550908504366645248',
    'Wayne9469(小童) #7283',
    'Wayne9469',
    '17bdc9902dcd48c7bb753a1840fb2cfa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    53,
    '542715105276723202',
    'kuan_owo_tw #9587',
    'kuan_owo_tw',
    '81c97d96a4814d898197e0a0f7c7320c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    58,
    '569148006323191818',
    'Discord Hacker-NathanTW\r\n#3518',
    'Worthlesssix',
    'a93cbb6cbb3f48d2a3633548e562bea0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    55,
    '502734590063017984',
    'igex #8783',
    'igex',
    '7721d9f4e3d14710a7490092305956a4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    56,
    '287793915912781825',
    'Miracle #0266',
    'Sathien',
    '935696b114a548d489a653faf0cd89c9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    57,
    '476356259365388300',
    '123kkkson #5931',
    'Pure_123kkson_tw',
    '65c4a9139ded4a2e80eeb293bb2bf3c0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    59,
    '305183011219963925',
    'Migari\r\n#8271',
    'Migari',
    '9efc72a11c404aaabaf40ffc12e2d793'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    60,
    '539775046596427779',
    'XxDavidKing_YTxX\r\n#0930',
    'libratehongkong',
    'abe73a9591f64fcb8280affb845cce26'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    61,
    '350316509291216906',
    '! ϟFratele Stefan (weeb)ﾉᵗʰ #9978',
    'Fratele_Stefan',
    '95fc6e236f3e469b99f89be3274d9029'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    62,
    '514352842186817537',
    'AnonymousJam3930 #5138',
    'AnonymousJam3930',
    'a2ae1c633464413784432d2d5565ca9b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    63,
    '270227226161577984',
    'YoshiPWNs #7422',
    'YoshiTheDragon8',
    '4ed7ae502417402d9a1003cf5f809c7f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    64,
    '265710908091662337',
    'DN #7596',
    'DestroyerNTheYT',
    'c9b55b1fa75146a2a73a514640d6a6c8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    65,
    '590606338275409922',
    'Rem #0931',
    'Rem520',
    '36e4bfff77774bd8b22a0fef01f39669'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    66,
    '295006812703424512',
    'Sakura #1532',
    'Maiiiii_',
    'f9af0e6576a445f294a3a75f4beb0b0e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    67,
    '381307473350361099',
    '格洛米 #3237',
    'qweewq',
    '24c562e8150045cc85f144d3cfc631b8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    68,
    '603400014831550477',
    'tonyyu #6316',
    'Bensonlie',
    '58453aac321e41178163f69535f3a1dc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    69,
    '376224160227131394',
    'williammax #0202',
    'G36C_WP',
    '09d5fbd19b964656ad9e9685196f0611'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    70,
    '323043768565760001',
    '培根bacon #0654',
    'PG_bacon',
    'c8d3efb6a1f4446eba3d64168c25a4c3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    71,
    '84272669402357760',
    'chapu #2914',
    'Chapu',
    '4d1ce9ef279946c5bdb251585091e81f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    72,
    '331717869345832971',
    'Icekevin #7281',
    'Icekevin',
    'b32e56d470724ac08b749478b01e2887'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    73,
    '491462080268992513',
    'HKSNOW #2926',
    'HKSnow',
    '643a0b91be0f409da8fd42d00e8a4451'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    74,
    '572188976648290326',
    'InaiNi #4511',
    'InaiNi',
    'd5a63acb2b84491fa9455a103352e9dd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    75,
    '471306387041943552',
    'Brian Cha #9182',
    'Frozen_Blaze',
    'bb99ff4d06ad472ebd8c6b1be8b3d50b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    76,
    '235402582556803072',
    '【滅世瞳童】黑帝皇者·夜影一更 #7891',
    'nightshadowgod',
    '411c34a7d1fc4092afda3d33452c0c08'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    77,
    '487621580784926723',
    'JenJenTW #7178',
    'JenJenTW',
    '6deb5a4d41074a4d87006b71874f714f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    78,
    '312842888797093888',
    'sbbbb #2226',
    'NoobEnglish',
    '4c784dfcc1a14ede81588fb1e06899fc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    79,
    '356773029256232960',
    'Thunder.NEG #1948',
    'WINNER_AWA',
    '8680c177897a45c3880d4e59f65949fe'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    80,
    '577389842493865996',
    '123我是末影人 #0469',
    'andyloklok',
    '1d8934da73cf41f58673f95d47358477'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    81,
    '74146274424655872',
    'huawen #0915',
    'tonyv922',
    '59dcdd62c102432eb76506d153b5b61d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    82,
    '606041546843750405',
    'lolamTea #8787',
    'Milk7eq',
    '9d81ce5e4b2041ee80262c23da96f1da'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    83,
    '609041620834451466',
    'JackjackJack #0433',
    'ArJack87',
    'e0077efb87454909ab4e15bafb370ff7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    84,
    '310922539343937537',
    'maybes #0999',
    'maybes',
    '20d85eb023e546869e7d1908a44d2ca2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    85,
    '331016479149391872',
    '_xKen #5422',
    'xHappyKen',
    '29cbe11d1fd348d89b72a630370e8e5d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    86,
    '398019988360790027',
    'masterhop1 #6931',
    'Masterhop1',
    'd1be1da38505418e9bbeeefbb5bb9c80'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    87,
    '600577569183760385',
    'kirito102113 #5394',
    'Eason880220',
    '6658b5e74afb43d0a9fe6d3edafa17d4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    88,
    '324796387092856832',
    'Mistertomlai #3240',
    'Mistertomlai',
    '351c7de589af4f8f88b5a549e0e1cf3a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    89,
    '514797249897693185',
    'Alter Jeanne D’arc #9391',
    'Swift_Twist',
    '1d5b28214b4946f686b9e52461873cc7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    90,
    '160865157637996545',
    'JosefXpro AMEN! - 23 #4244',
    'JosefXpro',
    'b5abcae812794719b4ec4e92455c6437'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    91,
    '404878298955513867',
    'KawaiiAstral #1262',
    'unforseeable',
    'c22500c1930b430395a2a20ead67bce9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    92,
    '542658240836665347',
    'schmerzlichschön #5442',
    'KadirGl',
    '857c46e01b604e91a30866f0f093d746'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    93,
    '397241253651152896',
    'proNeondragon #5656',
    'proNeondragon',
    '8628aed63a2b410b88aa6f756e801837'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    94,
    '426604442075267073',
    'Ochako69 #7364',
    'JackarooMC',
    '322597e8c9b84fd1aaf94287382c6ed4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    95,
    '626737079073636362',
    '飛ㄉ獨角獸 #6739',
    'sk_87_tw',
    '17727501a0de4432a64bbf8e2a8eb3e1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    96,
    '673548553301262346',
    '專精送頭仔 #1359',
    'noob5487',
    '4581e7147d1449659da2151549b1f1d7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    97,
    '323387688306868234',
    '拉姆(Ram_from_re) #0784',
    'Ram0202',
    'bbda7bb30db04c198cb0fb56b6e995ab'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    98,
    '438630207595741185',
    '小巧 #1284',
    'zuzhenjiewinner',
    '85b49eaa671e450bb52ba5e83967a43a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    99,
    '346652922257342464',
    'ricky9661 #7513',
    'ricky9661',
    'f0cc2477e4fa4d1fba4d50a966c24f41'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    100,
    '297914039932289025',
    '???????????????? #6181',
    'Bakatora',
    '4052a38cd0124c0db50fecac41b491de'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    101,
    '541476745652600843',
    'Yan34657 #1166',
    'Yan34657',
    '5cfd22e090884522a35bdca5a4be24c6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    102,
    '239632597745926155',
    '櫻花樹上 #6174',
    'ecoast',
    '2a24f4dd91634c55bdfa65d70783bd04'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    103,
    '375619805048340490',
    'JJLIN2323 #7866',
    'jgod',
    '498e0ec9f5244171aa5215a153abce73'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    104,
    '343746984349270018',
    'milktea #6792',
    'linda_Cat',
    'd107c12b6f8a455f9e3ca6f7d158aa77'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    105,
    '627121710130528276',
    'mimikyu is cute #0123',
    'SuperLemon_JL',
    '118f162af53e488caa47a8ba50e72e62'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    106,
    '400183104268140556',
    'Corna virus #5048',
    '1jnj',
    'e81ce18438f848bc88344eb29713a176'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    107,
    '565634752485392404',
    'seifツ #2774',
    'Laglord123',
    '4f8f096b26e54af2a56282b686404978'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    108,
    '305294914273542144',
    'XChoN #6759',
    'tchon',
    'ad3a6d379e3e4500b1828cb7b0c71330'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    109,
    '315481691714224128',
    'ノル #3360',
    'Nolu0229',
    'd369e66547d64c21ad4bc232e5a060f2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    110,
    '527103488245891103',
    '本人是正太控OuO #1735',
    'CappaccinOuO',
    '4760dd13b5804394b2c59b0f720ca621'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    111,
    '616294868070826097',
    '喵ヾ(*ΦωΦ)ツ #3901',
    'MeowIsVeryCute',
    '8c0632447e9e438e9bdef464ac2131fe'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    112,
    '516141520177594378',
    'Ŵĥìþèďàý19 #4670',
    'HT_WD19',
    '21668743fd7a4cc8bf42056344544a8f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    113,
    '556399404169560065',
    'maxtong #5450',
    'Soupcloud',
    '8a8ecf3cac3c4fc3b6c382f761c75381'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    114,
    '479353769566535680',
    'apatsss #3519',
    'apatsss',
    'e26ac2ec1c6c4040837ffaa196623867'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    115,
    '371175365525372929',
    'wltf._.9337 #9337',
    'wltf',
    '16d454528b3f4c088317eea6d57537ea'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    116,
    '333101415788576771',
    '威威 #6043',
    'HT_WEIWEIYEE_TW',
    '94cc9803aee342bd87b7bbeb8923e6dd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    117,
    '431969266011734017',
    'TqngG #4996',
    'HT_TqngG_',
    '89dffcbe84d74b0192778201ddd1bd6c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    118,
    '501388370329468928',
    'MEE6 #9736',
    'FeelLonely',
    'efa08a0138e0468fa1ad6242e8db3097'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    119,
    '420065700070293505',
    'Levi_2301_ #3730',
    'Levi_2301_',
    '297e932ad07b49d5a793098cd229a2ac'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    120,
    '589703299255762964',
    'helloHA #6686',
    'silversand0',
    '0bbea689e99d419a9a0c66047cd34f82'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    121,
    '544144686596751382',
    'Darkne #5186',
    'darknee',
    '7528d32b60b14a3394ac1293d8f72848'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    122,
    '605323492023336962',
    '河蟹沒人吃 #7642',
    'fathinjas',
    '9442eca946fa444e9ce132299dd787e2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    123,
    '474484023280795649',
    '哭欸 #7557',
    'A_A__',
    '5e3a3c7a965f47868efed80b27d35307'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    124,
    '258966577989287936',
    'ccrrssyy #8985',
    'crsy',
    '49f38600378f4635b2b677e822426f3d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    125,
    '304119817538109440',
    'Alfred0630 #0030',
    'RapidDragon_RF',
    'efd8a221f4d04fabbd1282fe9713877f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    126,
    '556651343784443905',
    'leolion690 #8158',
    'leolion690',
    '9235e2ee05bd4a418ce549320e8b96e5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    127,
    '468320235313692683',
    '95%濃度酒精 #1912',
    'Femeow',
    '454eeeeb4f4a4157ae602abb48ac312f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    128,
    '482021354443505674',
    'IGN JakeWoo_68 #2514',
    'JakeWoo_68',
    '83c5626ede2d4754b86064d558809615'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    129,
    '516473607619084288',
    'ri_an #7860',
    'rian690',
    '7f9909af2d6d4505a9e02fce7b0e4db9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    130,
    '482513664583139357',
    'asian raymond cavid-19 #0797',
    'MASTRO690',
    '9824719052cc4b15be91d2ce1a714f69'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    131,
    '538540030294097931',
    'Just_in #7837',
    'SIMINER101',
    'bea023bd83dd4ae89a5ab7bec5ea326c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    132,
    '365018239404867584',
    '雪花snowF123 #9539',
    'snowF123',
    'b29ce77128d643f98519a60b1f92b672'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    133,
    '363634445728874497',
    'kristof #1001',
    'bl2ckdragon',
    '0204b577f8d44153aec913879e7f7bbd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    134,
    '318627411363364876',
    'Xuan #3328',
    'Bert_Xuan',
    '1b37d98a488a49e382f308af49e9924f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    135,
    '600910731352866849',
    '無名氏 #7034',
    'None_200942',
    'b3647562db4e498c97db033a6e9ffd8f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    136,
    '569169834886037505',
    'Neo_Exorcist #7295',
    'Neo_Exorcist',
    '6a7cb15bc0354a95884d2779745dade8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    137,
    '420915716502323200',
    'Te #3806',
    'Lonly_tw',
    'e6522f3414bf47dea314c2e9b215257f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    138,
    '378569563815542794',
    'めぐみん #2429',
    'asuna_baka1102',
    '937bee235b614f68b386841fb2c9e08d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    139,
    '491075827195183124',
    'aiden21354 #0812',
    'aiden21354',
    'c62fa8c17e7542749cafcc095f075eac'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    140,
    '289042385625939968',
    'HEYPANINI #8806',
    'MadatAis',
    'bf516a24c0344b0e89f516d17459ed22'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    141,
    '403868062056710164',
    'Karlcowcow #2776',
    'Karlcowcow',
    '16ee8c76d01d486fb18dd9cf574e6ea2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    142,
    '551753348655874048',
    '鄒鄒 #6679',
    'Thomas2006525',
    '8e2b56a6ecd145a2a049714b7bf30838'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    143,
    '496314690893381652',
    'KNHT #9989',
    'kenho_fox',
    '22a5196bf5f6430085a481a6fd06845a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    144,
    '409020970133749762',
    'PROTTON #7945',
    'PROTTON',
    '89bcbbeea7be4c8bbbc934653e463418'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    145,
    '348993833591373827',
    'sane_did #2558',
    'mcprovokeyy',
    'bb84bae28090441295352b51a1bcb32b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    146,
    '355635041977761792',
    'ubisoft #0879',
    'waisoulcc',
    '9021095fb67849efaeab885c38ad77d0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    147,
    '424736624899784714',
    '芒果貓 #3656',
    'MangoCatTW',
    'b74f137c2d2244edb231ed761c23b075'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    148,
    '259606413670612993',
    'LoveFire #2523',
    'LoveFire',
    'd221e97b270f4437a21034e508f03953'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    149,
    '667295728439263232',
    '爷爷 #4439',
    'COC_joker',
    'b6729e89da5145b7943170276f8dd5ee'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    150,
    '621338857173942282',
    'ming #2757',
    'Mingw1234',
    'f87ada9172dc4a0dbdf56768847a4396'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    151,
    '532129178703888385',
    'BOOMER #1592',
    'Buskingguy',
    '286694337f58409d9d2143d7b78ba760'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    152,
    '695457192735932446',
    'IceSharkey #5261',
    'IceSharkey',
    '65d7d32d95c74aa4b9b5e311e6cc0ff8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    153,
    '495501319805599744',
    'zatil #6444',
    'poieax',
    '7a8e9750984146afaf19d19089e9d3d3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    154,
    '403923934380032011',
    '.I am_Lemon. #7753',
    'Leo_041610QAQ',
    '4284abb8268e4fb781312943aa6ae02b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    155,
    '536443442004492318',
    'Wilson_To #4823',
    'Wilson_To',
    'de924c5d10e840cdb53fc61ddd507e52'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    156,
    '449575584591511552',
    'gg_grimreaper-死神 #4187',
    'gg_grimreaper',
    '8b68c0bb36764a44aaf830be8cb9286b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    157,
    '607165081603538944',
    '風刃 #7981',
    'Xiao_Ming987',
    'a74c6cd2384948159c97fd2a4d0f5533'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    158,
    '358828980616298507',
    '青蛙???? #0578',
    'Therocksplit',
    '5519123070044a82bf8ed3acb050c954'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    159,
    '503857865543516164',
    'Spuwuky #8008',
    'Pumpkiinss',
    '7393c883dd03475abd4a9010837eb6f5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    160,
    '409689777512906753',
    'Rez #0909',
    'Rez_UwU',
    '2605ea48724a40f48b64e6df58e38853'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    161,
    '618705637177688095',
    'My_Doge #7941',
    'My_doge',
    '9f3ffc4aea9f4359a6d86597604a3742'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    162,
    '459951864423907350',
    '小狗 #0221',
    'dog8877_tw',
    '6995043eb1d34950888c643da8ea87bd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    163,
    '366090389041446913',
    'Official_MiYuYan2017 #9116',
    'angusum13',
    '9ff7efe820f845f2896affcbbd82074f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    164,
    '210686770365464576',
    'banana5807 #8519',
    'banana5807',
    '993e144f797d43ae9cc58b4b9049ce2e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    165,
    '457266670281556010',
    'TW James YT #6969',
    'TW_James_YT',
    'c6c4c3e1dc2140c4881dfb94b3f19f2c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    166,
    '276350116053385216',
    '[NF]Ian #4661',
    'killer_7613',
    'a4b7b3971f6a49e3b332fd8609d0bff2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    167,
    '563935187797278720',
    'PG家長指引 #4474',
    '116areyou',
    '7d5da8ece252475eab800ab281fccec0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    168,
    '485681449513517060',
    '醬油 #9028',
    'BEAR_Berserker',
    '4aa26fa577054b0cac3be37100a13be2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    169,
    '462630577791696896',
    'EYE #9733',
    'poieax_',
    'c3f8361426094b7baa690f24637dcb28'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    170,
    '571347910676185088',
    'nopla #2045',
    'qszd',
    '9b2109dec59d440ba6db0d4af1d9e9f0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    171,
    '487899450883440640',
    'Josephine #6067',
    'Lahok_zheng',
    '4eeaec1389da4b279d07f592b84703a3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    172,
    '427039687387906058',
    'wafu lin #7304',
    'Moneys_Killer',
    '23d42b15f0c748e2956986d4c0bb88d4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    173,
    '507813316379410433',
    'Alphetic #5310',
    'Alphetic',
    '17f41657238e4cf885e13626c359063f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    174,
    '583962103967252493',
    'Angus #7806',
    '_AngusHK',
    '6fedf02b2aaf4a2e93ca9ad069100707'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    175,
    '470092168753709056',
    'CC.ST #0278',
    'MLH_STilkn_TW',
    'd4a7688b03794dc78968d069223b8d64'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    176,
    '535418797067206676',
    'Vincent kwk #7156',
    'vincentkwk',
    '6908dd444e5340f3961bb250568681c9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    177,
    '431473359709143060',
    'Antoine #5058',
    'AmazingAnt',
    '3b7fb09f434f4defbf1858d7e7c35ab8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    178,
    '696022437325963284',
    '秋豹 #2023',
    'SiebenGanger',
    '70bc469d6eda48c19d99b4b922ae623e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    179,
    '403121313830666242',
    'oolong #2687',
    'oolong_tw',
    '93dbb5db5925403baa72fd6e687f684b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    180,
    '463160535240671245',
    'mason0416_tw #2342',
    'Axun_',
    'a33153b966b240a58657fa1c2dca444a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    181,
    '531031810151415820',
    'ovelyRem #4180',
    'ovelyRem',
    '7f7bd6677bd147f9b5eed8e908304cc2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    182,
    '371351122482561036',
    'Kuqng1ee #9498',
    'Kuqng1ee',
    '87362c094be24961947e54ff9bbbaba8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    183,
    '493268028469936129',
    'Ogre #9287',
    'fcom',
    '94d9f9e6406643aba337c7cac5c9292a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    184,
    '468974713478316035',
    'ユット・サークレート #8357',
    'fcom',
    '94d9f9e6406643aba337c7cac5c9292a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    185,
    '495773268847099914',
    '無名※先生要買花嗎? #2467',
    'Wuming_ouo',
    'c44d72c10572440ea8965683c44bf215'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    186,
    '320730509523288086',
    'iahn #3484',
    'syang12002',
    'a00b31bf63ee47a6a7ce4e68158cb00c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    187,
    '485007937555922949',
    'killr #5350',
    'killrUwU',
    '32e18c35ead4470286f86dbe2deab713'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    188,
    '403148950624010250',
    'Just a surprised pikachu #4997',
    'Zacharoniiii',
    '840273c80af348b7bc663d325f205c41'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    189,
    '603277738362667113',
    'jerome #7457',
    'jeromeph',
    '9b2361ef67e94aa2b5df1091e1c47247'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    190,
    '336073769158180864',
    'vakoz #0839',
    'vakoz',
    'ca045aec009943db9f5b50ef720fd086'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    191,
    '645616055737253889',
    'Ollykisser #6382',
    'Ollykisser',
    '38dcb90a6e534015b9fb0ddd23cde5aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    192,
    '447235676266823700',
    'Duck #7042',
    'Spoopy_duckie',
    'bb545ee1503641c3996855709d86bfdf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    193,
    '165663289785843713',
    'Marcus3 #7865',
    'Marcus3',
    '9757bd1c67774dfbb1d241f565408625'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    194,
    '621125726808309760',
    'littlepig #3710',
    'LEAVC',
    '5b08857d202c4af0b8aa12bf935b9d71'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    195,
    '608607468049661953',
    'NoahNoah #1905',
    'NoahNoah616',
    'd37fd07267a145d0bb037f5d5cae5ea5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    196,
    '379997513907830795',
    'UMU R.K #9116',
    'Ihe_Hairu',
    '5fc91dc6439a4759b76c7c4f72ba615a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    197,
    '298671634267766786',
    'Jeses Bless me #1450',
    'DarkShadowCombos',
    'e34a5bde884a4ac3889961cd55ce0b20'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    198,
    '706519198267998208',
    '夜光閃閃復仇鬼 #6518',
    'Ting_unicorn',
    '17727501a0de4432a64bbf8e2a8eb3e1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    199,
    '532123566049722368',
    'WingsWS_ #0896',
    'TomyInnit',
    '874fcc4d87fd46489ecca7c0e07c7886'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    200,
    '520225704705785857',
    'zxcvvcxzzxc #2265',
    'paandaaaaaaaaaaa',
    'fd1dd5a2b0984d8e9a00cab2a7f6e13e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    201,
    '462629849073188866',
    'Wishing #7284',
    'wishingarbage',
    'e7b115eafebf4d249dc953af50861b71'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    202,
    '478844569451102218',
    'oozziie. #2412',
    'Cut1_',
    '02027030eee54e0887371d6533649148'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    203,
    '420566588056535040',
    'Dr Strike #2893',
    'Dr_Strike',
    '93628eeefe39403ba1a44b11426ff0b2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    204,
    '583971838489526272',
    'owo菠菜owo #8333',
    'xSpinachx_QAQ',
    '67ff09b7ee0a47108db7aad22460840e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    205,
    '596966037539389462',
    '❥Yui綠ʜᴏɴᴇʏ #4747',
    'Yui_Honey_Xin',
    'c9c33a3f9774438f8c72e8ac6e022273'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    206,
    '686973330431148080',
    'souperior_soup #4028',
    'Souperior_soup',
    'becf2ec8fedc4be08c1ba6571efbdb24'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    207,
    '437263283091800071',
    'Monkey00000 #3658',
    'monkey00000',
    'cbd4fafd5dfb4ed7a0ea86c852dadb27'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    208,
    '667741733001363466',
    'Penguin #3928',
    'Hipenguin0208',
    '4bf10e865d6542079a78ec8f24cc6370'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    209,
    '211368627553828865',
    'Ame #0207',
    'AmeUwU',
    'f9a5fe19f0504a099566a726e649d1d3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    210,
    '424894847456116737',
    'qaqaqaqaqaqaqaqaq #2488',
    'epicontinental_t',
    '459fdc101b9448348907263f1c727d4f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    211,
    '443677013480570880',
    'babysmoker #0409',
    'babysmoker',
    '54e4b96a75494929879f42ee570c93aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    212,
    '611808184658690049',
    'superior_dragon #9507',
    'uwu_tux',
    '6c11394253484df983d39211038005f4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    213,
    '675581991982465034',
    'marcus #9418',
    'marcus_05',
    '56487895e8df4dc29b2080745e476abc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    214,
    '426711796783775744',
    'jerry 發大財 #1852',
    'yan_chen123',
    '6d7b99a122144c6f8ee9def066768840'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    215,
    '643377136370974720',
    'GoldenTang #2388',
    'goldentang',
    '6278856d1e3140198e31605c469605f7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    216,
    '694014859356143716',
    'hello_hi #1264',
    'johnmok0220',
    '3c309f71db34431f9e7034be5c925c40'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    217,
    '599111669683191808',
    'adrianwckam #7311',
    'adrianwckam',
    '1b3cc98948c14e7b9717c7e357dc3813'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    218,
    '178421105764073472',
    'benjigosc #8610',
    '_EllaRose_',
    'c2d33831f8804765804c0e2ba210c11f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    219,
    '598259791072198673',
    'Jack Knight #9243',
    'Jack_Knight_011',
    'dfd6818113564da6af8c6acdbe368fb7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    220,
    '470247431146307615',
    'Kcs_Curtis #7302',
    'XxKcs_CurtisxX',
    '7099fcd9d28c47a19ff7863dd8643b17'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    221,
    '264994122941726720',
    'LoveME_Hey #6247',
    'LOVEMe_HEY',
    'f961f74b92984094b56b740ba97fbc1c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    222,
    '591623407511142457',
    '❤邊❄緣❄麵❄之❄助❤ (｡◕∀◕｡) ε٩(๑> ₃ <)۶з #4394',
    'ND_JASON_TW',
    'ca5786ae41664f91909bb61b7548119a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    223,
    '680730843513356299',
    'KTYG #6248',
    'KTY_Sandwich',
    'a3b6366900d14ab99e761d40a104906c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    224,
    '349489110987177985',
    'Cinaaaa2k #1240',
    'L4t3rB1tch',
    '7e9376124ab5437bbe05f32f6ac63e51'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    225,
    '427474774520889354',
    'WanZIuwu #6969',
    'imwqtw',
    '9247879f9f5a4f4b94938df073b6d9a8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    226,
    '422729164622266368',
    'Medio #4315',
    'L_OOO_',
    '8262b0f54a6a448381ea8741e7221e55'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    227,
    '337126226860703744',
    '𝕟𝕒𝕚 #4110',
    'Nainai_boom',
    'c57c33845a2344139f1c52fe0a8ba568'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    228,
    '424772016093003776',
    'KwanYu1212 #0767',
    'Techno_Pumpkin_',
    '0d88a49e0db04f8eb27a69d30b871356'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    229,
    '531088672133480479',
    'Tenngou_Kun #0309',
    'Eugeo_Kun',
    '5f4eb24d65934ff4bcc4a91f62044813'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    230,
    '239563657246277635',
    'Azzy #7413',
    'Azzy7355608',
    '56478eec98b54be5bf7fdf8d87bcb35b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    231,
    '644920190727094283',
    'Fedee白(swinner) #5504',
    'iandres',
    '2fc1ff4a8c5e4d5489e884edb7e5fdac'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    232,
    '695449951559352390',
    '930901 #0088',
    '930901',
    'd49adfb1db0947928ca55939dc9a803d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    233,
    '695449951559352390',
    '930901 #0088',
    '930901',
    'd49adfb1db0947928ca55939dc9a803d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    234,
    '394194729933209610',
    'Oolong_NB #7113',
    'Oolong_NB',
    'ca407cea6de349e2b4ab3b4dde7c71af'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    235,
    '581424837940215822',
    '培根ouo #0709',
    'bacon_0709',
    '2f03479b48c846f0a1de2c30922e8da4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    236,
    '390478738296537091',
    'Bennya10 #9659',
    'bennya10',
    '1c4ea97d885d4e00b66ff511b9e6859d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    237,
    '193176568435048450',
    'strong541 #9276',
    'strong541',
    '0360f3e9c4454e4fbffc88624f5f7207'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    238,
    '217702311592591360',
    'Scutch #1469',
    'Scutch1',
    '479a880bc6c042b085169026518f9fe5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    239,
    '527846909780688897',
    'Misty #8314',
    'WINNER_MISTY',
    '37f0f8580c7746daa1abd2487262fe36'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    240,
    '399115795818610688',
    'nikokun #3376',
    'fiishs',
    '34b5f815883c4a83890a8db51ef1f8f8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    241,
    '505952475782578202',
    '白兔 #9002',
    'Rabbir_Reaper',
    'ee9df9ae96bf49bea42744639a643c6f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    242,
    '344106791514406922',
    'SpiritSewer #8206',
    'SpiritSewer',
    '377b719d4bb1424190abb675c9d45ecc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    243,
    '431721363720503296',
    '666 #7711',
    'H2SO4_LTC',
    'dfbea312fbcb4c4980f6ca5455c13fcc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    244,
    '349909485390659584',
    'xRings #0101',
    'xRings',
    '320e77512d0f48989ccb3d43746df0e7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    245,
    '687141215355011258',
    'Mizuhara #9314',
    'Mikoiino_uwu',
    'a5c26c9eed1c4fd98294143810aad041'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    246,
    '493211715429728267',
    'LeGravity #6888',
    'Aspectof_Gravity',
    '1edaccd781db48c8b55de5a38084bfcf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    247,
    '535317809882988544',
    'Karson #6675',
    'Kipnuts',
    'fd3a10b7d6c4499ab9cfdf7f9b338f48'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    248,
    '467647775765561345',
    '傲嬌毀一生 #3048',
    'Crime_haohao',
    'b8ca3670089d4e7a838ac9e37c96779d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    249,
    '673122820200333342',
    '薰<HT_ian3503> #6858',
    'HT_ian3503',
    'deb8165de3494d768d5bd56103084464'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    250,
    '247672585289072640',
    'Green Eyed Psychic #4423',
    'OwOflux0102',
    '8f60f3ea9b574a3690c4693cdb2c551d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    251,
    '315722818606333955',
    'OwO #3135',
    'Q9000K',
    '550155491a244342ba91dd9bedf38c5c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    252,
    '353517220464164874',
    '19 #7917',
    '180618',
    'fab1b6d9797e407ca3a26e229b15fca1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    253,
    '399465007890563073',
    'RadPad #4221',
    'RadPadGER',
    '995a9980288d4edbb824699e58fa0e83'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    254,
    '452218149274910741',
    'Komira #3195',
    'YDKomira',
    'c188e8e71b844a418aaf2454fd61b02d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    255,
    '640298779643215902',
    'Karatecobra #7432',
    'Karatecobra',
    'a1c6224cf0ea4b6a94dbf29dabdac7a9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    256,
    '290873115859222529',
    'Pacifist #1330',
    'Saigarus',
    '41bccb09b46448d09db25beb552a584e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    257,
    '319574411579752459',
    'Fatehuntin #8398',
    'ninjabob67',
    '6ab777b7999e4b67ba1f15f5345d50b2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    258,
    '349570242239922176',
    'Rookie #5910',
    'Rookie_the_pig',
    '7ade6ca5a7f24071b600943f34058f4a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    259,
    '631465779333693450',
    '_Timeo93 #6619',
    '_Timeo93',
    '11c24f23a7194d6799141efc20c43a89'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    260,
    '362579538015813650',
    'the retarded guy #0460',
    'vixypower',
    '7ad5b32ecc494117b6eff943a1173a85'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    261,
    '478940424711438337',
    'Dank #8146',
    'ImDankDude',
    '05d6ce6b6342474fb869200dfd876fdf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    262,
    '422077926360481793',
    'Kimana #2532',
    'Kimana12',
    'cf35189cccb84c359c987e9b2b2771aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    263,
    '163359289237438465',
    'Raul Scapin #5195',
    'Vacuumn',
    'fb20d5ee0fb94036b940f4e13ccf4dd1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    264,
    '377169635025354752',
    'PurrplePixie #9054',
    'PurrplePixie',
    'f0ba81ce6c5048c2a32d47f4b7f5046f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    265,
    '493529668381704203',
    'acanofbean #7903',
    'acanofbean',
    '5c9a77fe3ad64e45b1980999c0344af3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    266,
    '598249717159165962',
    'foxNsocks #4972',
    'foxNsocks',
    'adfb4ab0a2714ae989081e9c79992a2f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    267,
    '100463817967816704',
    'Sync #8985',
    'SyncingOut',
    '2fe0352cc8844d0a8a146d3feedb290d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    268,
    '439868780244369439',
    'VampireZ #2542',
    'Kingestertes',
    '809116812e3341728ea725e578ae4e96'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    269,
    '541643764259618840',
    'Paige #6783',
    'Phaige',
    'c8f6d7576d5541f0a7b3726cd64cc04a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    270,
    '180470951492714496',
    'Pose #2869',
    'PoseFX',
    'ce6796a4aa1242ada928207259f54c79'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    271,
    '218403318358081537',
    'blastoise #4448',
    'BlastoiseYT',
    'ec91acd01394416fab5e795c7d957eea'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    272,
    '374993675882725406',
    '2z_w #3939',
    '2z_w',
    'b8c75c35d9ce4b2bb132eada4f62ee83'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    273,
    '396251501003014145',
    'DxcanBTW #5525',
    'DxcanBTW',
    '441052de846b4adf8253e7a46696130a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    274,
    '287876668024946688',
    'Happyep #1178',
    'happyep',
    '9149360d1e4b4a54bc577549d431c6ca'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    275,
    '724236753577181236',
    'vViPeXx #4584',
    'vViPeXx',
    '45a102c5d52745f39854f42a154abb73'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    276,
    '259385308360081408',
    'communist doggo #9584',
    'Hypixel',
    'f7c77d999f154a66a87dc4a51ef30d19'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    277,
    '697434052906582037',
    'Sven3001 #3279',
    'Sven3001',
    '9940e17d422540e6bd3f65be729b4fd4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    278,
    '392830850649030667',
    'Martythegod #5143',
    'Martythegod',
    'eb44f52c4ed94117b5eba2adb2c4825e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    279,
    '237035543718920192',
    'Mojo_Flame #8646',
    'Mojo_Flame',
    '16433d7da7be4d6b93f27ef88edd8859'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    280,
    '226797125797806090',
    'charliebharlie #7214',
    'Charliebharlie',
    'a472301b5c6e4f2f934fb18373fc7ab2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    281,
    '343758782544871425',
    'Ghxul #5979',
    'ItsGhxul',
    '840bf6bed2a94ef1a47809ad2e813259'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    282,
    '380842676070907904',
    'SubmitName #6864',
    'SubmitName',
    'cea243049b78484eba60f7ddf833caf1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    283,
    '167803028760428544',
    'joemama #7459',
    'Yerboylouwee',
    '771f4ed3adbe42f799c34de442871544'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    284,
    '409670519055581195',
    'MelonKing #3897',
    'Koenmeloen1',
    'cbbd02bf7b4f4f61a84f78aba6d5eeb5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    285,
    '352994285454360576',
    'Poot #6090',
    'ZaHando',
    '7f116ca0fbb94f89a38cc42c3233341c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    286,
    '457093206258089996',
    'XxRyanTheLionxX #3543',
    'XxRyanTheLionxX',
    '7026cd45c8e440369336c0ab1230f900'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    287,
    '277449713085841408',
    'ファックオフ #9415',
    'quisaw',
    '6f09f7bb56d8460d85c6ea33b93788c9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    288,
    '198568339109314560',
    'nsanchez713 #9509',
    'nsanchez713',
    '2712aa560076426abe2b7ee3754dec89'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    289,
    '238736842113941504',
    'Sorbet #8569',
    'Abridged_',
    '0c8b0ecff5fa4bc4b139d0917f5105f4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    290,
    '491164130632400916',
    'STARFIGHT(ign StqrFightxx) #4118',
    'Stqrfightxx',
    'c493f23ef5e449a4b295a048833302cd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    291,
    '189309138185093120',
    'Salat #3632',
    'AsFirstOfBig',
    '965b1291726d42ecb68d78c24208a0a0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    292,
    '724577598801313792',
    'Ollykisser #6180',
    'Ollykisser',
    '38dcb90a6e534015b9fb0ddd23cde5aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    293,
    '436295051920801792',
    'MC #7704',
    'MC45',
    '49572a49488b4a37a18d3690dece9bbc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    294,
    '292260051098271744',
    'KBurrito #9131',
    'kburrit0',
    '2d689c265d90412f87f6b40d4a9d4395'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    295,
    '393587142753910797',
    'Shadow_Swords #9529',
    'Shadow_Swords',
    '62cb6b2265934ae7acf5089970fac591'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    296,
    '432116631318167554',
    'patrik #7042',
    'minerjoey',
    'cf621c33e7be4f83b67f42a6f3ae0b83'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    297,
    '527879652556144640',
    '7LilXan #4014',
    '7LilXan',
    '1ed0ca21c4914ef3b1ae1fb19ba477fa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    298,
    '724755226615218196',
    'ImDankDude #3253',
    'ImDankDude',
    '05d6ce6b6342474fb869200dfd876fdf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    299,
    '448580205834010625',
    'ShewMonster #2753',
    'ShewMonster',
    'f38c50440df34b9a9170ff3ad3a6e60a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    300,
    '288447209186394113',
    'NotSimp #0001',
    'sadity',
    '7820651f2f884619b08ab6aeaaac5a26'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    301,
    '548274310725238805',
    'Caw2004 #4047',
    'Caw2004',
    '0fb9eed957a94c6e8965a5c4fe1875cb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    302,
    '609577083688976384',
    'max. #6125',
    'smhacks',
    'ef3c528e7ae64d1591efcb5711591867'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    303,
    '541377030697123840',
    'TiDaL_DonkeyNuts #7240',
    '__x___',
    '3ba1644815a74f8dba92022e09a12c03'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    304,
    '514348637724082177',
    'Brandoughs #7615',
    'Brandoughs',
    'fd5e407948c44476a3553311f619d2cc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    305,
    '454714388528758784',
    'imnotworthy #3141',
    'ImNotWorthy',
    'ae79b4ee17644d11b300d00e3b92597a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    306,
    '411984683832967169',
    'MidoGame #1401',
    'MidoGame',
    'f4d04e2f689b4fffa4d65a198e0a4fc8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    307,
    '359716390157942784',
    'ImJakashhi | Jonas #6475',
    'ImJakashhi',
    '65559fc1d6b34683948fc190add2d09a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    308,
    '351511713218035716',
    'EveeLord711 #5785',
    'CreeperBlow711',
    '0e92cc1441fa426d9fb746ae16a8762f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    309,
    '543558312336031745',
    '24/7 Afk #6925',
    'Switzer_btw',
    'a3bb2f03e4a1427ca2090f2e375fca7e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    310,
    '290762348438880266',
    'k_vnR #5377',
    'Kevinistic',
    'c23ccccf009043e684952ed3dbeba077'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    311,
    '717047359225462855',
    'Rawbiff #8717',
    'rawbif132',
    'f2a6e97072094f0a8b9a9105bc894f5b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    312,
    '385424322732490753',
    'RGR InViSs #7417',
    'Cuby__',
    '9d212cdfab1f45918a5c654896bff902'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    313,
    '486657704140734474',
    'GOD #9529',
    'Nxchz',
    '21fad215bf974e2f83bcc605fb05928d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    314,
    '618595764716699669',
    'Panded #7001',
    'Rasalghul2',
    'edaffce5d828428a945ed55270b17e6c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    315,
    '302529731591536641',
    'Havocc #3114',
    'thirstyyy_',
    'acb1b56345a84040a894cc2cfeb2a497'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    316,
    '567723727689875507',
    '_RogueGamer #9411',
    '_RogueGamer',
    '645d74d765bc4102a224923e04defe57'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    317,
    '663113544014757948',
    'Aphloat #1071',
    'Aphloat',
    '95dafd76521c451393af3666bd51a2d7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    318,
    '135482823296548865',
    'Forgrex #5614',
    'Venatxr',
    '1599484e725b4363a948577320e7342c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    319,
    '693530996343308309',
    'Atom!c Tw¡sterd #3962',
    'N9_Returned',
    '7b6432bfea0c4dc99fc907b7cc9d578d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    320,
    '564817180307357697',
    'RedKite17 #4356',
    'RedKite17',
    '1551acd31b704e46ba3194274c1ff508'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    321,
    '277146350154547202',
    'noname7571 #5547',
    'noname7571',
    'f2ae00c28eb64e8caa11c4891992e344'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    322,
    '380840551098089472',
    'Husky #6952',
    'Purpified',
    '1a2443bca107433db3e779ca9eae5b8c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    323,
    '680771525850431522',
    'GameGlitcher #8837',
    'GameGlitche',
    '08bf31d551c748f38dc751aacb156185'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    324,
    '282307410423578634',
    'Wealthy_cactus #8795',
    'Wealthy_catus',
    'e77c217b6ac24f46b96b089918fe41f7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    325,
    '484640599694114826',
    'LaneSpane #5849',
    'LaneSpane',
    'e843afffc9854a29b651a514d3dca480'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    326,
    '494642555388952587',
    '368V #3589',
    'BeansRCool',
    'f677a8080f8b4aee873d9e4669122d65'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    327,
    '410774625820082176',
    'Sytorex #0317',
    'Hydro_tex',
    'e69e6f61cc6b4aab99027e50aea316e5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    328,
    '510111280326115328',
    '珍珠奶茶>W< #3897',
    'LeGenDaryMilkTea',
    'f86ba51f75f44d4d82a545551a44564f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    329,
    '281966983795310615',
    'XiangBro502 #2891',
    'XiangBro502',
    '522388f31b9744f2a062d004456c21ad'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    330,
    '615544583371227148',
    'CW_MoonNight #5756',
    'MoonNightOwO',
    'ef9bffcf27064c529e0a7264490f20be'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    331,
    '488271106814246924',
    'Dandeeks #6432',
    'SlimeBoi_69',
    'a2fc37cc219d4d28bf2a06d9ba09c33c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    332,
    '659753532349612043',
    'Hei #0354',
    'CedricOwO',
    '76b37bbc55fa43998afa7e8dd8a240ef'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    333,
    '465787623483375617',
    'VolvoPE #5947',
    'Volvo_PE',
    '0b12e35e701f4f78b5e9c2a1341710ca'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    334,
    '305803525093457921',
    'TheOtherEbay #8333',
    'AnotherEbay',
    '59e4cc1407464b15b82c3aaf58c788ac'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    335,
    '402432591493595146',
    '幻喵 #7799',
    'MeowUwU_TW',
    '1afec259ca0a4934b1146fecf93b5e85'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    336,
    '245711229631463436',
    'doobl. #1220',
    'doobl',
    '492c5a3eb2a444e78c549d856a51baef'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    337,
    '366648111025618956',
    'king.nebz #0082',
    'branchxD',
    'c188c5a1ede24c18a3ae4b4f6c5329bf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    338,
    '392414280982724608',
    'OkaySavage #6430',
    'OkaySavage',
    '23a046c94854496183a2d3a1a5a87908'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    339,
    '317279174123323394',
    'Grisen #0331',
    'Grisen2k',
    'b243d0f519e445fba755fd4f750082c5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    340,
    '554104654716207104',
    'Tristan08 #5044',
    'Tristan08',
    '16d50300c668439fa9477c7c6a1333aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    341,
    '721315735967891456',
    'Boba #4260',
    'Itsboba',
    '13e3f514e5ca406cb03a1880d2515bd1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    342,
    '380393118740119553',
    'Eestijuust aka Anynonimus #4475',
    'Anynonimus',
    '8d9ca28ee9e04f3da310e3af91235a7f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    343,
    '437747082225385482',
    'Evannn #6859',
    'Evannn123',
    '3e8777f682ac481f9be962a33004b183'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    344,
    '113701862720405510',
    'IGN Chaadboi #8504',
    'chaadboi',
    '26e0eb1b920449298a02523b9197a74f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    345,
    '676883443942162434',
    'tizi64 #5811',
    'tizi64',
    '33beb2f595a643bba9a99c80ff24e276'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    346,
    '392196649536978944',
    'FaultyXD #6070',
    'faultyxd',
    '4b5b363045cb417e8900d8e031e7cbbc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    347,
    '502468631997710346',
    '【Toggle-Reach】 #4138',
    'Apoll0_pr0gram',
    '1d774d81c96a496eb5e27068bef7660b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    348,
    '263513526491021313',
    '1 kerki #4362',
    'Angeloof',
    '6ee2a4ffccd246a1a77999cdf34bafa8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    349,
    '584169284205412352',
    'Litebulb #5954',
    'Litebulb_',
    'eba4b41dc7fd4fdc88bdc6133c0909d8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    350,
    '689353051189936222',
    'oopsieeeee #0928',
    'asuna_stacia',
    '59b13e4fe7d14fc68ba2a79b7f948b3c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    351,
    '493443922413223946',
    'cooliguess #3235',
    'Cooliguess',
    'be7ee1eacb874e58a837c3a3d994face'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    352,
    '427646205598629889',
    'Comindo #8945',
    'Comindo',
    '24f1cd00d400429e88ce157908014208'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    353,
    '181322150131531777',
    'Stiggy #4297',
    '6PU',
    '6880ae50e1464797ac4a31b96192cd74'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    354,
    '501770890397351937',
    'Tokarin #9587',
    'T0kaa',
    '48eaa1d0ab2945b5bfca9594b5ce7bcb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    355,
    '613750137612926996',
    'saber #5528',
    'Thesabe',
    'd0145d4369ca4a448e41cc59340fd9b7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    356,
    '535999854569324545',
    'dhaken #0514',
    'elfPirate',
    'a181cb5fe1ab48c19b45dc8ce80e1fd3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    357,
    '453382064373366786',
    'Mumu #1686',
    'MumuTickTock',
    'f1331497bb084883adcae8293d0c9aa0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    358,
    '148586206177918976',
    'EpicPants #2858',
    'EpicPantys',
    'cccf2d35dae64d0784f0e2dd0250903a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    359,
    '519232071215087626',
    'kevi #1727',
    'Hellmo_kev',
    '38462a4e6abd45b992ffccfd05e20a42'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    360,
    '307468800125829120',
    'Soap #6900',
    'xSoap_',
    '62ca6013dfea49458aa8f386258064c5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    361,
    '318811825590370335',
    'FragmentsOfLife #9030',
    'l3loodyN1ghtmare',
    '02e4903d9b344598a6ad3ddc513805d0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    362,
    '459331301099700254',
    '小風犯人 #4710',
    'breeze_owo',
    'b82a5cfad17e4a06b581736f6a75260f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    363,
    '238512963277815820',
    'Finesse #5730',
    'tonyslefttoe',
    'b7a65cafdd614f99af7c35345388067f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    364,
    '323847118639071234',
    'Nerd #6393',
    'uwu',
    '13ca889e2f6943d29b4d6a1ec83c25ce'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    365,
    '410715688777285635',
    'CircumferenceHK #6643',
    'CircumferenceHK',
    '8b8b96a246744129b0e65cfe82f42d46'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    366,
    '491235102685265930',
    'ララティーナ #7062',
    'kdrit9',
    '7e71bc7b66174ce6b888fb846ed173cb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    367,
    '359830692311597057',
    'Void #5922',
    'TheGudgamer',
    'ff0513a3bfa24dc99d9b79f02aa3baec'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    368,
    '680405482766467091',
    'origami100 #9786',
    'origami10004',
    '1396ef8a443f4483b28b3a3cf76f494f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    369,
    '723933862857539655',
    'MrDoni #4717',
    'Tuli1pone',
    '6462b3cd156c4d4f8d36e06a00baeb9d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    370,
    '216253646860451840',
    'Clytiusm #7986',
    'PaarshavShah',
    'dd3550aab44b4319984fc9ef1a61d894'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    371,
    '290162276369956866',
    'Merqy #9727',
    'Merqy',
    '4371c8384b6b43edb750d799f99953cc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    372,
    '382322046459314177',
    'derp. #6832',
    'vDerp',
    'e60f0589af4f4691acc6ace4c0259431'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    373,
    '286672007070744586',
    'muchnameless #7217',
    'muchnameless',
    '22af1ea6f6dc4b13af2b32cc02f62019'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    374,
    '298204046714470400',
    'Wiwikiki #8994',
    'Wiwikiki',
    'abf5310b97bd4443a8110d97f7c53607'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    375,
    '249070232935727106',
    'XDla12345 #5160',
    'XDla12345',
    '995206a6950243aab3979ba624fcffc6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    376,
    '287029349105008641',
    'TellusNB #2209',
    'TellusNinjaBoy',
    '584eca84566846ceb1d8ec68cba3fcbc'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    377,
    '497926367325716490',
    'petin #0002',
    'txzq',
    '0065fae5aefc4ed9ab37ba683aff3cef'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    378,
    '685247377325817886',
    'Despired #0615',
    'Despired__',
    'ad26d0f26019498ab895e008212e1a17'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    379,
    '406390710011428865',
    'oldcumso #4051',
    'MikeIMBack',
    '11822d78be6941cbb24e1afa3ab6527f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    380,
    '308592076487131136',
    'Ammunition #8560',
    'Ammvnition',
    '393c87d624ed4420aded961a19de5579'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    381,
    '374288377903579136',
    'Storm #6424',
    'Storm_308',
    '182406a2487347cab5ac2a825e95437d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    382,
    '283808068385505282',
    'Mart #6243',
    'Snowy_UwU',
    '5093eb25a1054254a206e5d6354f7a7f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    383,
    '566002829022461982',
    'LightReaper #8739',
    'lightreaper',
    'b346140d938a48d8a0128a9d02f9ec95'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    384,
    '606430689268858926',
    '幽靈 #6666',
    'xGh0st_',
    'f174d31af4ed4507879822ab775cb9b9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    385,
    '474675919957655562',
    'Skycrafter #3279',
    'PainDeMie64',
    '3dec8b476787494db314dca4690fa359'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    386,
    '498563556413931543',
    'that one weeb #0524',
    'skinnybill227',
    '799e0196a68a42888cf698a3969affe2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    387,
    '609207695530000407',
    'SnowBaby #5200',
    'Sn_SnowBabyTw',
    '2508ad71ed2748fab6c45ba9f2a72c45'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    388,
    '394145164265783306',
    'DjDaniD #6977',
    'ImFragged',
    '65e970755ed0439ba4056140245da629'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    389,
    '252255523175399426',
    'I did the math #4848',
    'Satolite',
    '32a065c90ce64b4b849bf35c898dfd38'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    390,
    '671978456669618186',
    'Sinkingspace #5219',
    'Sinkingspace808',
    '4632ec95c4e1443ca086189c39c07c52'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    391,
    '292364428110856192',
    'Hedds #1750',
    'Lemmudaboss',
    'f7e6f09f6d054bf8a008a02883d29b1e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    392,
    '694608393993715792',
    'ExileWeirdo #7137',
    'ExileWeirdo',
    'a1da58b31ca543f7b651730ed8e66959'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    393,
    '199150059462459392',
    'Stix #5440',
    'shayndo',
    '0868798e865747f7a4f6df97a28fa88a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    394,
    '336721178813267969',
    'xFoxify #3191',
    'Myichael',
    '3ec59f73ea764fbdae9a95b2cbee5b77'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    395,
    '608863906047328276',
    'certa #5614',
    'certa44',
    '1b691a63bc0343e08f83dc636ae8232b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    396,
    '262568900401561600',
    'Zekrua #0822',
    'zekrua',
    'c5741fffe6674fd083ddccf6938cbf98'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    397,
    '318849317932761109',
    'AniP #0001',
    'AniP',
    'dde1163c2de54b809268f7216b263b6f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    398,
    '494423508357480459',
    'lik hang #1830',
    '1marlik2008',
    '3e4b6963a5664081a1eb7cf61a1339ae'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    399,
    '300170833085857793',
    'Timovo #1003',
    'timovo',
    '7ce931b0eda54c53b79a47cbe21a0a32'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    400,
    '447767782852132868',
    'Drag Click #6128',
    '_ABN',
    '696421d7aca949218a6f77d998498dbf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    401,
    '514229716413055006',
    'D3adsh0t #2690',
    'DiamondatorXL',
    '6c48443a956e4549b37593bc896bfe54'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    402,
    '544515505956847616',
    'Marcus_ #5465',
    'Marcus0507',
    '808cf807a7e748b888372e4cef5855c8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    403,
    '693455154904825926',
    'Maverick #4706',
    'Maverick0123',
    '7b7d1648c10c433cb69cdfb067115219'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    404,
    '724606336620560444',
    'GodLike #3037',
    '_AndyK1t',
    '1b57489bac0f44368a3667a3910fc054'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    405,
    '655711355889909760',
    'ForraxX\" หมาเองงงง \" #5966',
    'Forrax_X',
    'b93772337f57403f916eb653b33030de'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    406,
    '677350039147773962',
    'NERO #4169',
    'OhanimeZ',
    '89b9a78528aa407293b16ffbca75298f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    407,
    '545471042416541699',
    'Chewy #2957',
    '_CH3WY_',
    'e8e1432f83a44f43abaf4b9f29f09bec'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    408,
    '206561050743537664',
    'StillTrying #1664',
    'StillTrying3',
    '805951796dd44bdc9340d35e01af96d6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    409,
    '279416193020985344',
    'Saintlybubbles2 #9666',
    'Saintlybubbles',
    'c9c950a58dc54b11954e4a3d660d31d4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    410,
    '557642349266862187',
    'Rioiyo #0995',
    'RuthlessTurtle',
    '61c924d879d94de4af0da9511b10be6f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    411,
    '652673628172845076',
    'Ez_Leecher #8552',
    'Spicy_Epic',
    'b34ad81f90184ff09fe513d3dbefb92d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    412,
    '540030975711641611',
    'Lotion Laundry #5433',
    'hugoland',
    '61b82bfc7119496ca2330771ff0de425'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    413,
    '420763549258743808',
    'greatkid2005 #7177',
    'greatkid2005',
    '4f96093cc8b54072bdc4fd87fc779a2e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    414,
    '468621430209118220',
    'Monkey_Pau #0898',
    'Monkey_PAU',
    'a71859708bc941488634a6c321c2fbbb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    415,
    '642906901285437440',
    'Norange #9112',
    '0RNG',
    '8a5426b66c5e45c9a34ff38a733e74a5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    416,
    '474982744590385163',
    'Restyle #7908',
    'Minikloons',
    'd2246e47cb694d39a9ac80469ab542da'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    417,
    '264519033188122625',
    'AzureAqua #0561',
    'AzureAqua',
    'eac2f553d4ac412aa5810324b57463af'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    418,
    '641808694795042822',
    'CoolWeird #7519',
    'CoolWeird',
    'ff8e6011dd3f4841b9197c63b630f46a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    419,
    '544827434109763594',
    'Wither #5021',
    'WitherHK',
    'd9ffbbddea0d43a096a39b6341b3e080'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    420,
    '364049336776261633',
    'suzuki #1293',
    'Suzuki2008',
    '38604097ba6246dfa5170270c273cee0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    421,
    '433358397442752513',
    'a fat potato #6742',
    'afatpotato314',
    '3aaa373687ac4e309f0366783a358dca'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    422,
    '512368298546167810',
    'ajboulty #9704',
    'BigBoyAJJ',
    'd1d99cb1449647a5b86706f36b8d5f12'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    423,
    '463633999693217803',
    'ilovecookies1337 #4772',
    'Ilovecookies1338',
    '89069d69fca74dba8582892b89281ade'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    424,
    '555349013323448320',
    'EnergyPulsates #4009',
    'zLost',
    '3a2365166dac4e7a9eb9a7cde67b76b2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    425,
    '238947579428077568',
    'Shamone #8463',
    'Metalmaster48',
    '16b5f93a6d904e6e80d2d8128213017d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    426,
    '461082478300495873',
    'SOKA BLYAT #6763',
    'Yasuo_the_ronin',
    '4f4fdc27641440d481d5157a8ade8490'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    427,
    '593821367758225426',
    'heyjustin8787 #2795',
    'heyjustin',
    'b3df002830a74b86bfae1407e4608bf3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    428,
    '442311355073167371',
    'bigboi6996 #1049',
    'Herobrinejrsword',
    'd888fade8ce34bf98440b1dc866da8ac'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    429,
    '287916939265966080',
    'goodbye #6760',
    'moregkitneeded',
    'ca5ce61e9b254b42884460cfeacc52f7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    430,
    '187428782301249536',
    'Xephor_EX #1505',
    'Xephor_EX',
    '4339f735815a481297505ae70e3048bd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    431,
    '350303981010026496',
    'ondmen #8226',
    'Madondmen',
    '9664b29d40da4841a4890fe4b7556ac7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    432,
    '290349363811581952',
    'вk #0805',
    'AsiaPingLord',
    'ba88f36181a54dd1acc13418d4c1e623'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    433,
    '694986466459254855',
    'jrcyl #4744',
    'bedrockboomer',
    '8213f090a63d434fb8479f133c2d6fa2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    434,
    '248925521667293184',
    'Jack_ #2734',
    'Lord_Doggo_',
    '94e43677c5204af2977327766ab2132b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    435,
    '259648897801125898',
    'ZenyX #9473',
    'loraxisdog',
    'e5f5fdfc087b49c8be905739ece01e98'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    436,
    '726442045043900507',
    'blisssunz #3896',
    'BlissSunz',
    '1b7ac6917d6e4538b038d47d0dc96f76'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    437,
    '595085326179893278',
    'Mindscout #6783',
    'Mindscout1733',
    'd17418e0780c421a81bdad0ae577af29'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    438,
    '249174889796206594',
    'JohaHold #4444',
    'ColahZeroh',
    'b7b9740a7f12497f809cfb9267e0d422'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    439,
    '676383277778468864',
    'ChickenGoddd #0254',
    'Chicken_Godddd',
    'd2c2de01d804460cac191b1f42787cb7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    440,
    '659654746969341953',
    '159732 #6860',
    '159732',
    'e46a0dfdf08d46228a51f04563880bda'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    441,
    '286747872496582656',
    'burritos #7436',
    'juan31',
    '4358d6834d8e436bb3c7ee342e6b9508'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    442,
    '374071612330344448',
    'Carl Johnson AKA CJ #3491',
    'Drill_Sargeant',
    '81b37d17cc7943f2a3763e326dfe9dfa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    443,
    '233599490840461313',
    'ᵐᵒˢⁱᵃᶜ #4496',
    'MOSIAC',
    '536a8c15acc64d6db120b0c7134be62b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    444,
    '277009632067715072',
    'IwasLiquid #9747',
    'IwasLiquid',
    '3a70381d28ec4b5ea0e4326fef441baf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    445,
    '217746530512142336',
    'FuzzyPie #1794',
    'FuzzyPie',
    '9bafec7fd9cc47e0858cd899b5e56fce'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    446,
    '563323046157352960',
    'Szydool #2970',
    'Szydool',
    'b1bdc11a4c6544bfbada1ff9b184ed84'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    447,
    '465671183379988481',
    'tris #0057',
    'tristan64',
    '9b819d36a3404042b8c504166bb41921'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    448,
    '563859592426291200',
    'SlowConnection #0524',
    'SlowConnection',
    'c4d3ec03f8c144d0998bbee3261ece8b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    449,
    '556696847943598092',
    '東很爛 #9861',
    'arthurisg00d',
    'bd1b136ae95f47068a4c1ee3e209ee38'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    450,
    '732533080463769633',
    'Goldentang123 #1330',
    'GoldenTang',
    '6278856d1e3140198e31605c469605f7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    451,
    '430286764435963904',
    'TW ohhh #0392',
    'A_T_S_G',
    '42852c512c834783a674e96a3ef21143'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    452,
    '176345971448479744',
    'BlanknSpace #2907',
    'Yukihira_Souma',
    'bb86c5a03f0a48779e3952158c71ff0f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    453,
    '338382132865007616',
    'Meh #0180',
    'Polarys_',
    'afb7f2877fb44bf788ad5cc190be16ad'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    454,
    '605221261672579072',
    'PolaricQuandary #0568',
    '1vsiii',
    '1b31b73596b7475aa71dfd1c2fecd3b0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    455,
    '644511854609170442',
    'The_AmazingSpiderboy #9268',
    'hero_crafter',
    '3ee19e480a7546c2a7d18a9d70ded6dd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    456,
    '704573544029487164',
    '!《4K》Alaei8 #3866',
    'Alaei8',
    'ca5adfcf844f4855b44e870d68a7793c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    457,
    '690742046822105199',
    'Futbolistale2 #8539',
    'Futbolistale2',
    'cdbf9dd859b14c2b8d242dabed70f867'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    458,
    '674817600576028692',
    'Futureofskeppy #4564',
    'supersweatyboy',
    '2a3e7ccdb3e6473da99dddd3151db9c9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    459,
    '471200447722553366',
    'AshleyCherry #5442',
    'AshleyAngelSky',
    '7710431f7d0b4067b058dcac77a2e1dd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    460,
    '508104280088248330',
    'Mr.wave #9699',
    'S0lare',
    '6312fa26c3ec471194097857f2dcf54a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    461,
    '544233660245737483',
    'Dat_Name5 #2110',
    'Datname503',
    '5dc7ce78fa2849bab3a2eccd2f823bea'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    462,
    '308385927057899522',
    'HI #6305',
    'cqrrots',
    '02a8617e9eaa4662a1e3b87153354159'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    463,
    '373477590385819648',
    'Nicjox #3309',
    'Nicjox',
    'dc11cad9f8d04bc5a3a72e179c1f76ff'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    464,
    '447800391715913728',
    'Brettie #1295',
    'Brettie',
    'e91fe964524d4cf3a0a8441f272ff5bb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    465,
    '289264589332545538',
    'lil cow #8262',
    'eiuo',
    '9126579335ef40d89a7a78d0af75e716'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    466,
    '657583930844905482',
    'momo95318 #6476',
    'momo95318',
    '2b657d412f1e4c508babe50522bab81e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    467,
    '347885861368758272',
    'Catering #4309',
    'Catering',
    '8dd76e7cd46e4621b919d717f1c2e49c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    468,
    '469696022650552341',
    'TiLwhy #2011',
    'TiLwhy',
    '5553968fbc27406384a8d677e1a246e5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    469,
    '292662318805024769',
    'PotatoGuy339 #6270',
    'PotatoGuy339',
    '2dd05e7a7c6b4dc1a6b4e50b4c63099b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    470,
    '408466367097077781',
    'jerru #2420',
    'JerryBox',
    'd846566d49dd478e86083a6a4e270b0a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    471,
    '447397664405848064',
    'Drewfett #2671',
    '_Drewfett_',
    '955c49eb777b4019a3823d526412f01b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    472,
    '533660649058992128',
    'Spicy #1366',
    'Spicy_Chip',
    'e8bee08975a6420f9d478e3893784f9c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    473,
    '300210271920586763',
    'Salty #2407',
    'ImGodzilla_',
    '411ec625b2214640ac9f313aa8e4113b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    474,
    '436759439815737346',
    'Smurftin #2485',
    'Smurftin',
    '417a2faa56624126b726982188160e2a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    475,
    '308362826060267521',
    'Vecran #7777',
    '377ms',
    '37d35191d57f4f0488dcc28b56ccf59e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    476,
    '432363373628227606',
    '夢魘 #6486',
    'a10561602',
    '454340f3e7cc473db2cc44194a6812d8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    477,
    '508407709872422932',
    'lemonberry #6554',
    'lemonberry',
    '4d41f64c201f41f397ec3f32c2b1eb87'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    478,
    '412227562048192512',
    'Carrier of Wounds #0231',
    'ANTERE',
    '83d64696de6640b799eb00d5216bccbd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    479,
    '470320849317265419',
    'JustACasual #1139',
    'pumblemore',
    '68398fc8cd68487bae566e3eaf3fedc9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    480,
    '536510777377423381',
    'Thisaccountwillbedeletein1/8 #4244',
    'Rain_Cheese_Ugly',
    '4230fbe6d89c408b931cbd62aed18dc5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    481,
    '514419228980543508',
    'widdwecat #0001',
    'danimaniaa',
    '17068413b79d4f249def2754183e6d83'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    482,
    '654267333744918528',
    'bosco0124 #7427',
    '806y_is_706y',
    '42d45a93de36477c9d29eefea776f8bd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    483,
    '417374869131362304',
    'MistyTM #0117',
    'MistyTM',
    '2020ac2ccdd240ad9b80f284754a8761'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    484,
    '480809955553705985',
    'AndBro4141 #2853',
    'cheeto',
    '13b8bb3f23b4462e96fe50006f5ce142'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    485,
    '704587167967608930',
    'Alex-_- #3253',
    'EvilGandalf',
    'daf43e0314f242e7b8a23d09c0e6ee5e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    486,
    '588618194898386984',
    'FlipTheTable #4124',
    'IotaDelta',
    '2d51ddd724b44c819a5fa13c4291d636'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    487,
    '401470485461860353',
    'Sri_Krishna #5341',
    'Sri_Krishna',
    'e1a2213bd20f49eebe7b63e35b90e7f3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    488,
    '458323275982962696',
    'Dwql #5430',
    'xDeal',
    '9145280f33344628a12057bd1f2007e3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    489,
    '707714492196454511',
    'Tomotron6 #7976',
    'Tomotron6',
    'c839974063544cb2aa2fed342b57f11c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    490,
    '721243532433686568',
    'awesomeyy22 #1884',
    'awesomeyy22',
    'e287a088a8864b2e9e704619372d84d5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    491,
    '513458842986741770',
    'sentce #3001',
    'TheSenate12',
    '2343ac39f2264be4a35b17c53a71b84b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    492,
    '434845665848328192',
    'Robert The Techy #5996',
    'RobertTheTechy',
    '0c739e8138e04b4889ef03f4cad7705e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    493,
    '266558819327279104',
    'arne501 #5557',
    'arne501',
    '48453851e98a4fa28a003462b9df5dd0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    494,
    '483958695164641280',
    'Automaton #3668',
    'aut0mat0n',
    '3d7684b11603462a80a540c21f764ca1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    495,
    '233992999451754496',
    'Kronoz #0700',
    'Kronozzy',
    '6813ff14eb4f4549bbe96d401f132601'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    496,
    '312606589255417868',
    'Magicowo #6523',
    'OskarGGG',
    'd7c0f45ab55340f6839b3b80c4f42739'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    497,
    '551778880436830211',
    'renua #3092',
    'renua',
    '0fb877288f064cdb830e3a9094cddc70'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    498,
    '662688699980447764',
    'that_one_tryhard #8068',
    'that_one_tryhard',
    'd7a51dfde6bf4fce8479b955ab3b9cf6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    499,
    '223007818796630016',
    'Ecliptic #3259',
    'SamicKun',
    'd2b9850ca7504263ac0b7e6ccd7bae5a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    500,
    '115939990948675593',
    'NGron09 (Insanity_Masters) #3296',
    'Insanity_masters',
    'c10121d8cd7c47c79f9b672af2351112'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    501,
    '276791010003124234',
    'xultraalphax #9009',
    'xultraalphax',
    '95777475900146f686d6f2d7e76ac293'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    502,
    '317986567006322689',
    'IntimacyG #6573',
    'IntimacyG',
    '1eecbb21a593403b93c12c393039332a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    503,
    '476767646180704277',
    'william20030127 #9128',
    'winterknight127',
    '999fd697273548a1ad8af73a30275acb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    504,
    '436657304117706762',
    'POtatershshh #5624',
    'monkeycrx',
    'eaa383b77238494d87e13b3bc672e97c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    505,
    '709614761339387964',
    'T4PPY #9813',
    'T4PPY',
    '28373784d4d448369e95a7aced8fd187'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    506,
    '313364005538234368',
    'Redwolf4345 #4968',
    'Redwolf4345',
    '16035528792d45ca9fc82dea33e13e7d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    507,
    '548511771317764116',
    '『ValorRye』 #5658',
    'ValorRye',
    '179a1399e941456b802a451d384d41a3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    508,
    '651941061999984680',
    '𝕋𝕙𝕖ℂ𝕠𝕠𝕜𝕤𝕥𝕖𝕣𝟚 #0870',
    'TheCookster2',
    'c49fd00d1ebc41ba9b3c523b8e0828f8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    509,
    '355836611147202561',
    'Rai #9999',
    'RRai',
    '7ccd4f60b1c04fb291ef10bbbb23af61'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    510,
    '399422792459878402',
    'Melonnox #0001',
    'Melonnox',
    'e178f068301047e39c21804081aabfca'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    511,
    '385939031596466176',
    'CrypticPlasma #0820',
    'CrypticPlasma',
    '044903b7a9d3416d957f929557af6c88'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    512,
    '162721452620120064',
    'Mikersen #9750',
    'Mikersen',
    '78c1f1ba16bb4a69968db7d86115f5cd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    513,
    '648391238994624531',
    '⚡🦅 #9310',
    'thunder_bird12x',
    '1051aa9ccb0a4c1a883b7f4f71008b12'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    514,
    '547908713009119232',
    'RB_Noodle #5369',
    'QTNoodle',
    'e945a464c0464764a2187b8fabc7ca21'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    515,
    '555016661716172811',
    'Nox #3916',
    'Noxalite',
    '0ce9ed0107c04e49b5249eb75bd43d91'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    516,
    '675390423790911488',
    '.I am_Lemon. #9034',
    'Leo_041610QAQ',
    '4284abb8268e4fb781312943aa6ae02b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    517,
    '698743662569455666',
    'Majestic_DogeBoi #2942',
    'majestic_dogeboi',
    'e3edb15d5e1e448d9e20f525017a2e53'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    518,
    '570907501260832778',
    'xCactus #4452',
    'xCactus',
    'ab8014722c014f8dbea2797cbd38654c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    519,
    '534807453712515092',
    'Murthros #4771',
    'Murthros',
    '7405df285e7945849b674bb577681ce5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    520,
    '690272647292256306',
    'done #6787',
    'Livingis',
    '98613fb9c42348ebb8c62bcfb96e4e27'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    521,
    '506993236330414080',
    'OCE_Bot #6590',
    'OCEBOT',
    'd2926f6bdf0a435fba466c9aad050a17'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    522,
    '221743640328798208',
    'Markodox #5391',
    'markodox',
    'd81715f734024ef6a0ffea6814f2d9fa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    523,
    '565567024047325194',
    'Toby #6713',
    'LordToadi',
    '9c5d62eb42cb467a97a6ecf037672ab1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    524,
    '632423978140434433',
    'archer冇人要 #0122',
    '906y_2060safala',
    '79ab8df20a3e44d49585243259682534'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    525,
    '424277469164732416',
    'chicken #3982',
    'chickenkingofall',
    'bc9b4ec1f8a14f908268a9f1529c2690'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    526,
    '259777993428172800',
    'Baecon #1652',
    'tormanejtor',
    'db16701b492140788ef8efadd5fb3464'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    527,
    '514950217347629066',
    'H4ck3d #2919',
    'kathleenthebest',
    '26e4c4a4823943cc8ba442275d6caee6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    528,
    '429794893485965312',
    '[NA] PuffBallx #1462',
    'PuffBallx',
    '33f4b43b961c459b8f727a49df44274a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    529,
    '521156913874993162',
    'Minikloons #0001',
    'GodMico',
    'd8162a23bf8a46b3a532b01d7fdd3344'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    530,
    '621953077401878539',
    'gyozosuck #6535',
    'OneBillion_',
    '12ebd8c5834a4f5aadf98e83acec24e6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    531,
    '459823057939333122',
    'bones #6961',
    'Dachifuru',
    'e4899703f77546de9ba038ba7c06ebb2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    532,
    '686310480771416066',
    'always_bored #7107',
    'always_bored',
    '75a7adcf78d546938967ac323a560e34'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    533,
    '339050631170097153',
    'Rayquazza #1891',
    'Rayquazza',
    'e250b369608147baa41c11db6f651da9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    534,
    '263743250991415297',
    'Wably #9465',
    'colourschemes',
    '32c8408a423a49578919f769e5e392a6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    535,
    '442189372784377867',
    '安豬Andrew #1789',
    'Andrew0812_tw',
    'db82118ca9b04e6cbf0530ceab7a71b3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    536,
    '452894372523016193',
    'LenniGer #3573',
    'LenniGer',
    'f65211f2665f4abcbcdd93924b0ab02f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    537,
    '620154739883245572',
    'Twinkle Sprinkle #0962',
    'Mu_guang_138',
    '176dca31136a4011a6ffa54918f48309'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    538,
    '463802695539490826',
    'The_Alterlion #6559',
    'The_Alterlion',
    '175920974c6546cb8b57c6d1d615693c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    539,
    '717829428440334398',
    'Abrar #8459',
    'akyabrar',
    '931b01105122490bad2a5017e7cec624'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    540,
    '724263786726555751',
    'StingStingx #8265',
    'StingStingx',
    '12d0659b58d74227969e31a5f6a078ec'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    541,
    '436065204095287307',
    'minaaa #0289',
    'Minasua',
    '53b784db1107433288ab8a32ec4f6b1e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    542,
    '456334018024308746',
    'reegs #1305',
    'r_eegs',
    '768f530f778e43c9b409a744117bf31b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    543,
    '433756367145402388',
    '𝔽𝕒𝕕𝕖𝔼𝕒𝕘𝕝𝕖 #0789',
    'FadeEagle',
    'fcc59eee4cfc4767a04ae2fd9de24893'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    544,
    '502562849592311810',
    'Ossie #0001',
    'Ossie_e',
    '4eee04d1ad8c4a6f992c29a65c0ad6df'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    545,
    '204280646493929472',
    'C0rrupted #8340',
    'C0rrupted',
    '541bd8e20e2c48968eed1e0b83087423'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    546,
    '688420653715554374',
    'DeLuxory┋Light #9783',
    'Albertix0',
    'f2e93f5bdfcf45a0a70a4cb70d438532'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    547,
    '256776982174367755',
    'Seafone #8875',
    'yFenris',
    'f3bfbbcd308244f7adbe84acfbe5cde4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    548,
    '409411151508799488',
    'IronFist2345 #6559',
    'IronFist2345',
    'cd3401578f954146a1003083c912f988'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    549,
    '603373425377017866',
    'Shetol #8855',
    'Shetol',
    'aee2817bc7f3413bbb8fa0890dd5f1e5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    550,
    '519416144377937930',
    'ItsBlueSG #7565',
    'ItsBlueSG',
    'db9f9057d21e4142bfdc9c151b628f8d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    551,
    '521649472950763530',
    'Derpkate #3848',
    'Scrmbla',
    '5f91b62246dc452da0593329a8418e04'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    552,
    '608608068728782850',
    'Dragonic Overlord #3649',
    'DragonicBlade',
    'c4ab08c80ac7494db5ee0dc8b9bf696d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    553,
    '460862429996515328',
    'ɒƚꙅɒꟼ_ɘʜT #0420',
    'The_Pasta',
    '478fee05f78b411994393da6dde154c3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    554,
    '527917242441138187',
    'Hiroshi #7390',
    'Plasma_Hiroshi',
    '2790d07fe5c84ea3910dc77d5dd6a09b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    555,
    '708129486641692773',
    'Ashleyy #7075',
    'Qweem',
    'e4f2f17a2ab44ab99559bf4988f0a31f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    556,
    '203996751089106946',
    'Dragons #3356',
    'Dragons',
    'e698edd3e0124b2f8fa2ccb109b0d0b0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    557,
    '279090031325347841',
    'xJeffy #9597',
    'xJeffyYT',
    '875447293f0d4bd0b3bd6a5b7001337f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    558,
    '474564785154031637',
    'StonedAnti-Midget #6189',
    'SteeledFun404',
    'abf99c3e41fd47169de425a62c9a7f8b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    559,
    '417149891152707595',
    'kukster93 #5245',
    'kukster93',
    '21c36c8ffba241e9a410613970bdbb4c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    560,
    '644819850849419270',
    '𝓡𝓸𝓬𝓴𝓮𝓽𝓛𝓮𝓰𝓮𝓷𝓭¹¹³⁷ #0444',
    'RL34_',
    '53bd0fc8ac1941e688b0124acb0b7268'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    561,
    '413861185931182109',
    'ignDon. #0008',
    'B00TYH0LE',
    '6c3d5b39cd7145769c31acccc609923a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    562,
    '616854357865922570',
    'Noob1026 #8674',
    'N00B_1026',
    'b5506e31801645b585bf862a814b3d09'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    563,
    '739644983627481110',
    'Waffle #2641',
    'Darkblade172',
    '249548a250f646a3ae62c90626089b56'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    564,
    '275253605773344768',
    'KittKatr #2682',
    'KittKatr',
    'b8cd350c772b46ffbcee34a09bbaeb6d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    565,
    '257552011459821568',
    '!Umaru-Chan! #9712',
    'SansMaru',
    '8b11318c76d24a509feae665455beaa7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    566,
    '242778215381204992',
    'Skyds #1014',
    'Skyds',
    'a2611a47c29d49aa9c52d0ea52228b0d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    567,
    '242732749083901952',
    'p1 #9674',
    'perhapsj1',
    'ee8390ed807f4879be5c9fb5aee3406e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    568,
    '339469317542379520',
    'Augustas #2344',
    'PotatoGamer1978',
    'cc8624ac122041ecb533bc7b1b994ed6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    569,
    '298476633776717836',
    'f1shed #4044',
    'f1shed',
    '13aae0faee3a49eca4c6c46a53fd87dd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    570,
    '708301573671092255',
    'k1lla_Trigga #3820',
    'k1lla_Trigga',
    'ef22322b07614a5e82479556cb2f2f93'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    571,
    '354056622823440384',
    'Beta_Saber #9135',
    'Gascan2005',
    '7f8e9ec51b644b7e99fe92497cdcf114'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    572,
    '538365794543861782',
    'WholeWheatBanana #9160',
    'WholeWheatBanana',
    'ff5b1015d6ac47fd896624550a559af3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    573,
    '636904657717035037',
    'Oren #0519',
    'orka9',
    '21104831a0974c9db8df8c9fd19de8a8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    574,
    '507891772404269067',
    'QckSliver(Stella) #6239',
    'Qcksliver',
    '34ffee46969f42db96c151ce5f9d70d4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    575,
    '660207766002204672',
    'WraggWorm #6493',
    'WraggWorm',
    '7fd6a823c94c416e998fb57ffb02cffd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    576,
    '625026392853315584',
    'ElectricWater #0355',
    'M7mdShar',
    '8a7a16124b984cfa8fec218eba1724fa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    577,
    '462527555904208917',
    'YELLOWSUPREMACY #7107',
    'Hogwei_uwu',
    '366746206b4046408bf24d7eb8f72312'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    578,
    '555055696371253272',
    'CoupQT #6969',
    'CoupQT',
    'bfd91016fa04401dbcf7a9929466d007'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    579,
    '630073864369733643',
    'gravhty #5547',
    'gravhty',
    '5dca6d8f72dc4eaf827e88f354c52f00'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    580,
    '416016368161390594',
    'Andrel #0847',
    'OjowAA',
    '72110b3dc21441c0b893d762d9fe2e95'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    581,
    '531458955633754155',
    '24h_Schlafen #3008',
    '24h_Schlafen',
    'd07e81a970fa424ba96d88085bc12f94'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    582,
    '640773439115886642',
    'Dot_Squad #4627',
    'Dot_Squad',
    'df9f1d3a9ee2418dbe9b83ef05d67922'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    583,
    '277732474870824960',
    'Xeltic #9706',
    'Xeltic69',
    'b5db99861bd7434aa3e18aae56bfad54'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    584,
    '412570953097281536',
    'Alexito24 #6125',
    'kkdelavaka22',
    '35e019524e04429a89e46c62c5d3baa3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    585,
    '367259235039444992',
    'aopa #9478',
    'HikeAopa',
    '0ae50f4d1fd442d79e8d6227377dd63a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    586,
    '668147670077931559',
    'Jackg7811 (owoJack) #5315',
    'owojack',
    '5ea0970afcdc433b9d0ff3f7db5e0058'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    587,
    '340368174601994241',
    'NBS_Pow #6818',
    'NBS_Pow',
    'e6316d9a39e847ca8a19cbd06149773b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    588,
    '273507924381532161',
    'idc i am bored #7453',
    'olavplays1',
    '78ee7b6cf8c045608d182967c52b843f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    589,
    '618857643460657152',
    'mixinyapp1 #3638',
    'mixinya1',
    'fb156681b12c47868c0f80f3add222b8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    590,
    '693493785866534952',
    'hunterslayer #1096',
    'hunterslayer123',
    'fbebdf3a18b34bbb87abaf5a80936ed1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    591,
    '405793708110381058',
    '❋skeQ❋ #0001',
    'skeQ',
    'd8c02421598f48a4bf818a7465c093d5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    592,
    '545765361870438441',
    'Vortex29 #0653',
    'Vortex11',
    '85a6a74350ea468097cb70c257bc9a74'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    593,
    '720817561410732084',
    'BonXBon #6159',
    'BonXBon',
    '0a3b0ddd135b49c28bd0d2e99731453c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    594,
    '564231325339484173',
    'yctran #5446',
    'yctran',
    '686f41d2d80f43278a78591b1f2a01e4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    595,
    '694322251570479104',
    'blueoranges21 #1673',
    'TheBlueBlader21',
    'bb902cc92e93403daf6c6eddc151b009'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    596,
    '643479156427980826',
    '𝖙𝖍𝖆𝖓𝖐𝖘𝖋𝖔𝖗𝖜𝖆𝖙𝖈𝖍𝖎𝖓 #5208',
    'ThanksForWatchin',
    '4a7efc4575b748c6bf93e594a7594dd5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    597,
    '680730734620573754',
    'Oreo_Bl4ck #0549',
    'Bw_Bosco',
    '867f038a1ba44cc9b2dd6d2dd0cefeb6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    598,
    '625060175363178546',
    'spxi #6353',
    'imspix',
    'b69e8c40cc88401db4460bc34064c5cf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    599,
    '429604177354686475',
    'peteybong #0363',
    'Peteybong',
    'eea92523d00e4c13a28652272e303c92'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    600,
    '379188406015623172',
    'Penguin #8285',
    'Technoboofer',
    '5d1f0cd529564eb3927d87ff025f846d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    601,
    '310235735938564096',
    'Karuma ちゃん #1962',
    'Karuma_Chan',
    '71d3b65ede254a409d9da25143ae63b3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    602,
    '728593806131331154',
    'megaQT #8255',
    'megaQT',
    '3f173a4e49a748b68bf2d8e43fab2e5a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    603,
    '246999862032334848',
    'Fexbua #4300',
    'Fexbua',
    '9ed0de52d0874da894d7f3c2866417db'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    604,
    '459861035382341632',
    'KcoisK6O15 #9341',
    'kcoisk6o15',
    'e5a3c2a14381485e95e13609311c2612'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    605,
    '643983295654264832',
    'REALITY #0369',
    'Not_Reality',
    '1d81d856a3bc4873998f06b3411cd78d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    606,
    '482396709540855810',
    'Bless me pls #4009',
    'Lego_Tai',
    'b4bf4fad3cf5453fa6e1e975b604e1ed'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    607,
    '724671118421524520',
    'GRcrafter #1234',
    'GRcrafter',
    '950f34c2dbfa4e1b8b31eedfa1742f05'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    608,
    '597750433355661333',
    'Madhead #6491',
    'madhead',
    'e66a9d9642784a40ac18d80014f4ff61'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    609,
    '600125655958421517',
    'Fiddle_Sticks #8166',
    'Fiddle_St1cks',
    '8e7e3eb58af34c1a99e510ec7581147c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    610,
    '720060197300601025',
    'Sir_Bacone_2020 #8847',
    'Sir_Bacon_2020',
    '937a000edb8745699278f534b0896d69'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    611,
    '490311695869149205',
    'Jaycon #4073',
    'Wendys5for5',
    '450325c3a25c4b7590e75cd77c5c890c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    612,
    '577863184007036978',
    'Tristan #1245',
    '2Pac_Shakur',
    'fe7cb732784d49d8966521ffbc55f6a4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    613,
    '297714295624695809',
    'starwarsluke1 #2247',
    'starwarsluke2',
    '0edc2117ed47466b90c1e843cb9e1e8e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    614,
    '401712320340033537',
    'fake nathan #6325',
    'n8thn',
    '6521bdceb8b4425abd22756f9deae42b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    615,
    '417120417787019264',
    '邊緣人 #4274',
    'laly_marginal_tw',
    'e57fce94b9524d2b95e04d5927e2da23'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    616,
    '521208270044528650',
    'ExternalFood #1691',
    'Externalfood',
    '0033e71112e54ed59430835ece86297a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    617,
    '565738026316333077',
    'MePizzaMac #9660',
    'MePizzaMac',
    '8a5abd5619d54cfca0d2942ae61a0b1c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    618,
    '616314351011233896',
    'Mrdogeman #8734',
    'Dogemaster55',
    'fcd1936331ea4a8b808a4f229cc5a708'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    619,
    '435128038691176449',
    'BlqckZero #5845',
    'THIGER2002',
    'b7f6f4ab774f4f7880ad57373271151f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    620,
    '319109246577016833',
    'nanq #9873',
    'Nanq',
    '19be6d5edff94abb97218abc87c7acdd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    621,
    '462634691061743636',
    'Nixoner #9451',
    'Nixoner',
    '8cc4b5e8e77d44b2b19fb0b12048e20e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    622,
    '481391872594542602',
    'Nova_dllm / Tm8648 #9523',
    'Nova_DLLM',
    'b69cf026f34545e2a7f8f2aedc443b71'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    623,
    '240303565514473472',
    'h00dLum1134 #0666',
    'h00dLum1134',
    'd9fbdfc3052d4c6da9c97a15590af3be'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    624,
    '715163920511533056',
    '_RainyQT #4646',
    '_RainyQT',
    '85ad42d37caf45f282f208907e0c1615'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    625,
    '356599883227987968',
    '24Slayz #7212',
    '24_Slayz',
    '01eb00fe77324a04848d571b224c7633'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    626,
    '247829571846537217',
    'Bread #2133',
    'LeIncred',
    '77ff4f43b4774abcba3af6c27322e857'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    627,
    '578136826460635150',
    'TheyCallMeFreddi #4755',
    'TheyCallMeFreddi',
    '8b61a45d81e842cb88bc1542e043fe39'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    628,
    '358643188740784129',
    'ActuallyStecky #9176',
    'ActuallyStecky',
    '16c79c5b787b4acd881842c26dd19aca'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    629,
    '640174003134267423',
    'texxlapp #1422',
    'texxlapp',
    '25d4c3c230d34d8cac524006fc96844a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    630,
    '477399137965441035',
    'Konz #8506',
    'Konzid',
    'dc9ac03e020b4caa8a1cb7de75cb3761'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    631,
    '407846633116663818',
    'jurco #6495',
    'Jurco',
    '3cdb6406411d4b57afda1da49b9e3066'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    632,
    '243895290648592384',
    'ZarAssassin #3760',
    'ZarAssassin',
    '8daadc6de0a446b9be53623983bea0d7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    633,
    '460189026259959850',
    'FrostyPotatos #9592',
    'FrostyPotatos',
    '874ff724631c416abcaa897298998dbe'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    634,
    '235181886400495626',
    'Ghodius #6353',
    'Ghodius',
    '3db68f9276fd4594b5fbdd012ad0d70e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    635,
    '544522199961174030',
    'HoloVoid #2878',
    'HoloVoid',
    'aef0a314fe994f2d9ec7c0a9f80ce1f9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    636,
    '195035471389130752',
    'trash gamer #8604',
    'OliviahyeL',
    'd9a8d6e7ab04420dbffc24a996f9d916'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    637,
    '687190534040715284',
    'Fish #3927',
    'Fish_0207',
    'bf10c70510c84788af69ffa049f45107'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    638,
    '518689231644786689',
    'DekateSW #1674',
    'DekateSW',
    '82df63dad87d483ba77b9c08c618efa0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    639,
    '305773732117479424',
    'Affan #5715',
    'CryingProdigy',
    'a59befa577c44dcfb8b3b8d6b5951844'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    640,
    '744589978084049026',
    'Sakurajima_Mai #2244',
    'ikowotot',
    '8c3056dfa1d4414c98d697f93da3cae4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    641,
    '386850612945485824',
    'T8Sport Nexos #2234',
    'JustNexos',
    '3876724262804265be31fa608a43131e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    642,
    '210522574822703104',
    'Zeradent #5495',
    'Zeradent',
    '6ce3d4734bd44d1b8c7b7f7169ad2f00'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    643,
    '361166326577758228',
    'Sunny #4620',
    '0w0999',
    '0c099da0580b424a9dad620f312faf01'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    644,
    '653270420295909396',
    'Anthill #8743',
    'anthill31',
    '02a2d5052a6d4ee2a8931596b073ace4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    645,
    '296013799410892801',
    'Tomato #2100',
    'Twomato',
    'd93fb6f59ad34525b3ff348eb18370eb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    646,
    '579962542214873088',
    'iiMqtt #7690',
    'iiMqtt',
    'c8ca5fff467541f5bf5ff09170a1ef69'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    647,
    '691911564390825987',
    'dabby #9734',
    'dabby_',
    'ddc1dac2ab58406b8502404f5b367d80'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    648,
    '405732273783308288',
    'Magu #1263',
    'Magunesse',
    '3edcddfe73884bfb8e999ff7013ac22f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    649,
    '698024902363709470',
    'RandomPerson #4078',
    'RandomPerson94',
    '0cc0de607573495fb0c238d59bb3c456'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    650,
    '323920127504547851',
    'Akulation #0001',
    'Akulation',
    'f016278f521440fcade4602f06862753'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    651,
    '484595611182563340',
    'firedragon #2505',
    'HAPPY2018',
    'd8b754ec644b4fa48eeab800f314028d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    652,
    '381325972584005645',
    'Peekuhchoo #6951',
    'LaysChipz',
    '1f788fa9c0ef48999d0fdbeb15fd8235'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    653,
    '563613745666981888',
    'Spysports11 #8091',
    'spysports11',
    '0d782bbf206d412d9b80cd74fdf4fe0b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    654,
    '496229747395788830',
    'Seriour #3157',
    'Seriour05',
    '031b5c8c4bf841be825c0d9d6a99de7e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    655,
    '664799431081852928',
    'creepstream #0545',
    'Creepstream',
    '6618603a664f46ffb75050d07aa21783'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    656,
    '616420786646941727',
    'Matrowy #2480',
    'Matrowy',
    'ed9d398105514abcb0db6d3b0cc8080e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    657,
    '649285835627298816',
    'Bionic_Ro1 #7332',
    'refrqct',
    '54197c00a90f48ebbbe62a774bdf5107'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    658,
    '689915687929380913',
    'My Dude #1150',
    'NDackoPro',
    '1fad3fd123f64581aca321791c9d7c28'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    659,
    '718476011297046669',
    'CyrusIsNotCool #6085',
    'starman1844',
    '52a188c651444b88af86bab3c60f35b1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    660,
    '263543106446557184',
    'PMartion #1222',
    'PMartion',
    'a4cfb20c603c4020805c70c5c20412b7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    661,
    '599581885726720012',
    'H1perlinks #2114',
    'H1perlinks',
    '3b625f7002584202989d164bf717d8c6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    662,
    '526597384331853835',
    'Brownie5596 #7247',
    'Brownie5596',
    '9483b8149f0141ddb7b45377743a2b9a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    663,
    '453932440138809357',
    'Rammo #3715',
    'Zerkret',
    'f743feddf6e44b89a0903a600c76676c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    664,
    '724193228609421384',
    'Chelseylake #3324',
    'chelseylake',
    'fc3c2a61a0ad4b4891e67bb413fda910'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    665,
    '453875792322232323',
    'German Ships R Epic #0101',
    'No1QT',
    '15129d26a3704c5f82accb7d1588a43f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    666,
    '604525952319488000',
    'AshPlayzMC #3489',
    'AshAttack_018',
    '5a2eec24ceba4ce887d06f67c1d51153'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    667,
    '473375026008162317',
    'Loading... #7938',
    'YOSHI13589',
    '7ecac4204c664734be60e223eab44257'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    668,
    '696132223262392390',
    'aloof #0984',
    'uwumaple',
    '76e1fcc9c63146b8bee66f3bd02bdfb6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    669,
    '525716783211085834',
    'lucaz with a z #6248',
    'Lucalolio',
    '317182b78e0d4de6baae5fbb43ba9637'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    670,
    '300213910995468288',
    'Danqu555 #2160',
    'Danqu555',
    'fdaa9f129f7944229a1f918a3d439c22'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    671,
    '513458124997394458',
    'fungimungimoo #7814',
    'fungimungimoo',
    '76ea9a809a844e0f99dffb824b89cc13'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    672,
    '362975596730515458',
    'Totoki #8964',
    'xTotoki',
    '562105880cd14098bc4381f66f3efc11'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    673,
    '213456036005150722',
    'CoolZach #9405',
    'OWOGamerGirl',
    '7845f3cad3b84a4495bb3a3818fcc666'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    674,
    '345544741917556737',
    'Pokedudebro #6496',
    'Pokedudebro',
    '0cd0d2aebb064315a7f96992793c56b8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    675,
    '530949316878270505',
    'MrChickenNugg #8398',
    'MrChickenNugg',
    'd9406b69aa344b118c6c6f79910d3be9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    676,
    '328671485453664282',
    'Katarina.NY #2925',
    'Katarina_NY',
    '2ec67f2fb88f4d448e7180b64fb015b5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    677,
    '375033391059435521',
    'Franki_123 #6296',
    '2z_o',
    '377169d18a5d4ab0bf520d1af648dfb8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    678,
    '292688576603226113',
    'Sirax #9039',
    'TotritterTwo',
    'ab1634becbb8456680d5e5b971810435'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    679,
    '221978888903983105',
    'Yubate #7098',
    'Yubate',
    '5cf6208e90534e7e99389adcf670a76d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    680,
    '391403822062501888',
    'Resurrected #0435',
    'DarkestNite',
    'fcc9dc3c3740423cb22a3b2af33511ff'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    681,
    '347156944592699415',
    'zeekiy #6068',
    'zeekiy',
    'b8db050bc252494ab623f65e89a4d4ed'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    682,
    '639447607214866443',
    'Arsicc #7554',
    'Venoc99',
    '312267fda086437aa29470413b2e5378'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    683,
    '291693342591549440',
    'Mina [Algere] #4954',
    '_algere_',
    'e61c986dd8af45fe9500d0644d7e57ab'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    684,
    '626467774310383659',
    'ChlorophyteOre #9656',
    'ChlorophyteOre',
    '886f05e52e7d4bf39b414d1d136260b7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    685,
    '733371425615904878',
    'sumtingwong #8794',
    'Titan252',
    'cbdd9495d5ae47e18af6898035704561'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    686,
    '626528299555749890',
    'Emic123 #6606',
    'Emic123',
    '9961d06c0c8c4abe9b8643774dcaf303'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    687,
    '129128465940217856',
    'Chad #7299',
    'Redrix',
    '768817949b4e414bba175b18dd4981b5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    688,
    '541844898836643840',
    'Badunicorn001 #4260',
    'Tapitytap21',
    '76213b0740974422a55a188ef0662bfb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    689,
    '320257085331996672',
    'Robrin #6870',
    'Robrin',
    '2b374288cbd44b1da0b2238e2be9fcd4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    690,
    '399375847318093824',
    'AmusableJoker #0640',
    'AmusableJoker',
    'd08d84cb7d0a4e4ba4b696b6746e45f9'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    691,
    '403361444764188693',
    'knightsfables 6916 #4308',
    'knightsfablesQT',
    '66dfb88151264158a42a7cf613b443aa'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    692,
    '330144701992927233',
    'Surgiiz #7601',
    'Crystal_Dragons',
    'e8324ef72edc43e59bc22553c3a82a26'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    693,
    '476840904133705751',
    'maxi #1000',
    'msxi',
    'cb8b9243b933457db2245d41f52246a8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    694,
    '577251195739963412',
    'MildlyTolerable #6969',
    'BigBoulavard',
    '3ebecbf882f7425684edca8d1a379dbe'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    695,
    '401503855436759051',
    'Sh4d0w #1796',
    'ShadqwScythe',
    'f229915c9f2a44b4ac431f0b1fbaf6b7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    696,
    '422176028568453120',
    '420nfg #0372',
    'Haltingly',
    '1550508a3d934f3884a4ac9266e4cd41'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    697,
    '653088269734510603',
    'madderbear #3815',
    'MadderClops',
    'cb332d0ef99a4b1c9b73b4e7856dc730'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    698,
    '465792514650275840',
    'memesfordays #0308',
    'dqddyjesus',
    'cc6eae62755f4934a72bb90fa8247685'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    699,
    '211564618487693322',
    'yman234 #6331',
    'yman234',
    'c23741d03be9455c94a9bf65a8478512'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    700,
    '591021523452690432',
    'parti_gi #9831',
    'Parti_Gi',
    'a9f067e2656a43a2ac9e027554b70b61'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    701,
    '488446478130348043',
    'ayxiao227 #0188',
    'ayxiao227',
    '7b036da530fe4531abd421a9cdef0cbe'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    702,
    '224536569514688514',
    'L3ONARDOz #7035',
    'L3ONARDOz',
    '90b867162484427f84e4f2f8868a8861'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    703,
    '447545308558262274',
    'lulu12457 #5077',
    'lululee',
    'f62a24045b9b4495947207c34a988707'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    704,
    '560909861664194602',
    'professionalgay #6443',
    'KnuffleBunny',
    '46071de172cd4baba187c648edbf778e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    705,
    '328040157972529153',
    'DayKola #7541',
    'DayKola',
    '1cea570e17ca4b71a5d454ae72585caf'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    706,
    '519305854160338947',
    'fluffydaes #7768',
    'Cresend',
    '753abb709f0546688cf0fc45a4807d17'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    707,
    '580777949851287562',
    'VnJ #6042',
    'VnJ',
    'fae7903bcf3d4ff0aa42ebb42b8ec312'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    708,
    '591660196057841695',
    'Ijveraar #0001',
    'Ijveraar',
    '8f4f136e5b0a49e5a7277a142d70e318'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    709,
    '713742467161128970',
    'aaZuki #5969',
    'aazuki',
    '34846ad571fc442888ea8bce84ddebe5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    710,
    '704429549861208087',
    'Thunderz917 #3783',
    'Thunderz917',
    'a10373f711f34eb88f1f469edc680212'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    711,
    '589748229491654660',
    'Noob #6598',
    'Leo4g',
    'db316b304c324ba5b2c119a390520034'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    712,
    '270772287819481101',
    'IlIlIlIlIl #5420',
    'RogueStab',
    '1edb36468dda4349b5d3be3c7f6a28a3'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    713,
    '277949024793919488',
    'TowNyyy #1001',
    'TowNyyy',
    '78c8f32be0ba49e294b1dc43d4335345'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    714,
    '472088550813204481',
    'Pxkka #2906',
    'Pxkka',
    'f45571ae31ad46d6808193962c535f62'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    715,
    '281039906979971073',
    'iBoxsoul #5480',
    'Benar',
    '50b29c29c3d94f4587149c9dfd9975c8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    716,
    '238950598299353089',
    'Skyy #9799',
    'skylordskyrocket',
    'a3095f0f394a4b39913f7019c554a262'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    717,
    '277344892986851329',
    'edy #3581',
    'edyq',
    '46817918959548daae67d82d5493297b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    718,
    '174047605557297153',
    'DuckYeah #7305',
    'DuckYeah',
    'e5093923493c42ff8125c0f2f5b04241'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    719,
    '332086843774599168',
    'KiktoR #9754',
    'wiktorzyk',
    'dc72cc0adcf44f7ea45cb394eec087eb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    720,
    '738924772863508552',
    'd2 memories #5917',
    'Garcia5623',
    'f2c171a840514ea29039389ec707229a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    721,
    '576361366974365711',
    'trob #9910',
    'n0ts0an1me',
    '3153c09bfe65490c985589ac9d0ca2c7'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    722,
    '580001315590111242',
    'calllo #9360',
    'Callloolala',
    '822bdd866bdf451f92fa55ef131ad37f'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    723,
    '524232804566040597',
    '[ ] #3247',
    'TheTrueRyuo',
    '862d59533bfc4a7490ed21390438d6bb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    724,
    '583409547389960202',
    'Eldist_Alex #6009',
    'JohnsonTrip',
    '3655b4111f8e4cffbf7a0abcc80c01ec'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    725,
    '371171106259861504',
    'Myslef #5956',
    'Myslef',
    '27b306a07ea44a8c80ed10ff1b67ae09'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    726,
    '712311194689732640',
    'Yo100 #5066',
    'Y0100',
    'a49c78433e3d4d54aabb0a8d71d835b6'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    727,
    '395899470019297280',
    'Cyover #6612',
    'Cyover',
    'ad3ee2bb07cb483386611021c8ff8dbb'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    728,
    '293215801836568576',
    'Cqwnce #5907',
    'Cqwnce',
    '3ec780d650d546799b2c560bae16841d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    729,
    '679034258341232719',
    'morbid angel #9666',
    'Morbid__angel',
    'eaadc7d5f9b947828395f798ddd3748d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    730,
    '449712246222749698',
    'Lil Savior #6442',
    'AtlantisTrum35',
    'e354708b5d9544c29941744176bf87a4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    731,
    '619645171759448087',
    'epiccooper #7160',
    'Aderlaker',
    '8e035ee13bc64885b4e49dbcc03d8fc2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    732,
    '437408467419136000',
    'cfm1000 #5484',
    'xKwm1',
    '092f84753a954035a95cacf32ac096b4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    733,
    '414680725682520074',
    'lolme51 #7104',
    'lolme51',
    'e53811d090af448d8e2f9a46dcdb99ff'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    734,
    '632509476360159232',
    'Kirbo #4749',
    'padsaje',
    '7fa604f849294f9b986d2e5e8aa6407c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    735,
    '439930945970110474',
    'Extremespicypepper #2733',
    'extremespicypepr',
    '8612b0d4f02d492b82fb76ed6ad85906'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    736,
    '510553563160641565',
    'Clemens #9131',
    'Woolfe',
    'ca53a655d35a49c2bd952c51bf750a09'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    737,
    '645049788118597642',
    'Soliaria #0001',
    'Wotakoi',
    'de53383a3ade4a2eb3985d1a72b2d8be'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    738,
    '268222498519253002',
    '𝓯𝓸𝓻𝓮𝓼𝓽𝓵𝓪𝓷𝓭𝓼 #3931',
    'forestlands',
    '020cb0a619ca40aea494319c9fb70179'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    739,
    '651807074795257856',
    'vape client #4641',
    'lul',
    '8dfdec33a749460ba27a47a842c5ad0a'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    740,
    '352593566566187009',
    'Fiery51 #3755',
    'Fiery51',
    '5d78e45863f047dbbd8e751295cad51c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    741,
    '235769659209678849',
    'hatsu #0808',
    'Hatsumono',
    'd850974a87e141fb8ae15629672398b0'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    742,
    '640511254657499147',
    'SheepHasADream #5650',
    'SheepHasAdream',
    'f14373f6b22049b3a180a042877a4896'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    743,
    '552124335519957004',
    'Bathtub Of The Year #7491',
    'BathtubOfTheYear',
    '1c29cdae9d1d437ba949ae82cfdacb71'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    744,
    '560650043279802369',
    'ilyAmber #3700',
    'xAmberHusky',
    '245749a025eb439aa28e33c6ce4fc0fd'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    745,
    '495799411020922900',
    'tuhplol #2892',
    'tuhp',
    'bf9fe69e53bb42b6bbf8e55c529be457'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    746,
    '536416551830552597',
    'Blinxy #5434',
    'beiszele',
    '6279fb54336d475081af6b73099c14e1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    747,
    '515470742297640961',
    'BadCreep_ #6167',
    'BadCreep_',
    'a1ec031de1c940529496c32f7241e0ec'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    748,
    '553619327102877700',
    'not gorgon ramsay toaster #9976',
    'CrummyWiz',
    'd5726eb9c38c4dfcb2fe74e8ea5d996d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    749,
    '495869618590711838',
    'Lord Vile #9893',
    'Undead_Lordvile',
    '63dea04cbc5e421b8d013936913a0de5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    750,
    '655043020957155358',
    'mother fucker #5545',
    'skyboomer_666',
    '59751bead631457995ee7dbebd03be4c'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    751,
    '704904008489238529',
    'hansonwong #3775',
    'hansonvirus',
    '05f05858796e4b29986593be7b525842'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    752,
    '112686628991934464',
    'Alec~Kun #6706',
    'PvpG',
    'e10a5511856d43be9d1e537df41a6af5'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    753,
    '163690438455197696',
    'Mr. Pengu #7243',
    'Freak',
    '36487b558eea48aba52aad11e19d546e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    754,
    '712814613280063520',
    'L1FE3SS #7071',
    'L1FE3SS',
    'f5ec24c5d7e54cd98379d889f257cf44'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    755,
    '738266764135235615',
    'Visugame #8893',
    'Visugame',
    'd6b88208ad7d42048bf0c56cbeb3233b'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    756,
    '626731248181575681',
    'Birdman #3961',
    'MilesQT',
    '845058f52b704ae0b1a19dff67284be8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    757,
    '412947639844470785',
    'An0nym0us #4802',
    'r0astedtoast',
    'ebca8494bfa04ae5b31640aa9d9c1543'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    758,
    '303334386017763329',
    'Rev #3140',
    'iReach4Fun',
    'b50cbda1937a4eb3afd04cb9728967c2'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    759,
    '480167141971329054',
    'TallestBat #8712',
    'TallBat',
    'a6be7f7a669c44d1a9164fabee8e1216'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    760,
    '371651311424372739',
    'osama #5449',
    'dmgstealer',
    'eddc0c41afed480e88da1af2cd8bb129'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    761,
    '224727396908007425',
    'thataurora #1000',
    'ThatAurora',
    '2947cf8c326b438bb5372d7f0cce25a4'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    762,
    '428063977671491586',
    '!🎃 BryceKrispy🎃 ! #0640',
    'BryceisKrispy',
    '9c10d8b2c96d453c953fe2b288b97a70'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    763,
    '508872861281419275',
    'Absence06 #3958',
    'Absence06',
    '89ad5bcaa103447089441db60087b835'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    764,
    '615749613974061071',
    'Snowified #5113',
    'Snowified',
    'ca6d9f234a6747babdf69cbbbded8c9d'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    765,
    '344804676593516544',
    'Legend 27 #6894',
    'Legendary27311',
    'd452073a03754903b7d92671cfa42007'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    766,
    '544117992951119882',
    'Not mini stroMiNic #4627',
    'StroMiNic',
    '14d180f23de54b4cb571c013b2fed74e'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    767,
    '614333332095893514',
    '二本目の剣を抜いたら誰も生き残れない #7215',
    'Kiuwaiw',
    '717900881b354cbe865eb7c4793b73c1'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    768,
    '590074346815356928',
    'iMaGuY #9632',
    '_obsidianplayer_',
    '8452f8d637d041b98dcc64a2710170c8'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    769,
    '251203478611820555',
    'Ai #1234',
    'zwee',
    '1c4918a521d64b48a3948b07bff0a303'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    770,
    '477315742279401472',
    'Xlythe #5911',
    'Xlythe',
    'f34f0a4ee2f5463f9d38720988f65523'
  );
INSERT INTO
  `dcmc` (`id`, `dcid`, `dcname`, `mcname`, `uuid`)
VALUES
  (
    771,
    '625213912664637450',
    'iamaclown #4772',
    'walkingclown',
    '7370307b155a4b57b2c2d14f891f59d3'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: giveaways
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: gtimer
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventory
# ------------------------------------------------------------

INSERT INTO
  `inventory` (`id`, `items`)
VALUES
  (
    '416227242264363008',
    '%7B%221%22%3A1%2C%222%22%3A64%7D'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: leveling
# ------------------------------------------------------------

INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1,
    '416227242264363008',
    '664716701991960577',
    97497,
    '2020-11-10 09:46:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2,
    '416227242264363008',
    '622311594654695434',
    71763,
    '2020-11-11 07:00:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3,
    '600910731352866849',
    '622311594654695434',
    193,
    '2020-10-04 02:18:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    4,
    '461516729047318529',
    '622311594654695434',
    142941,
    '2020-11-11 16:10:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    5,
    '618705637177688095',
    '622311594654695434',
    117,
    '2020-09-06 09:00:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    6,
    '343746984349270018',
    '622311594654695434',
    3139,
    '2020-09-30 14:55:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    7,
    '295006812703424512',
    '622311594654695434',
    8154,
    '2020-11-10 11:33:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    8,
    '541476745652600843',
    '622311594654695434',
    12638,
    '2020-11-11 14:04:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    9,
    '378569563815542794',
    '622311594654695434',
    2873,
    '2020-10-22 08:08:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    10,
    '502087666201001984',
    '622311594654695434',
    16674,
    '2020-11-11 05:27:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    11,
    '365018239404867584',
    '622311594654695434',
    546,
    '2020-04-13 12:56:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    12,
    '626737079073636362',
    '622311594654695434',
    917,
    '2020-07-20 14:52:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    13,
    '211368627553828865',
    '622311594654695434',
    56132,
    '2020-11-11 12:31:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    14,
    '279137266801311747',
    '622311594654695434',
    11,
    '2020-03-04 15:10:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    15,
    '491075827195183124',
    '622311594654695434',
    250,
    '2020-07-11 05:59:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    16,
    '462249567812059156',
    '622311594654695434',
    7,
    '2020-03-04 16:08:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    17,
    '336459908750770176',
    '622311594654695434',
    11,
    '2020-03-04 16:08:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    18,
    '315481691714224128',
    '622311594654695434',
    14736,
    '2020-08-14 05:24:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    19,
    '456403578286899210',
    '622311594654695434',
    166,
    '2020-08-29 05:23:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    20,
    '283568255401066506',
    '622311594654695434',
    997,
    '2020-08-11 05:57:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    21,
    '356032785842176000',
    '622311594654695434',
    57,
    '2020-03-07 05:56:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    22,
    '348798128625025037',
    '622311594654695434',
    171,
    '2020-04-11 04:31:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    23,
    '514797249897693185',
    '622311594654695434',
    1782,
    '2020-05-09 07:43:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    24,
    '457490194950782978',
    '622311594654695434',
    1743,
    '2020-11-09 04:39:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    25,
    '635040857564643340',
    '622311594654695434',
    14611,
    '2020-10-31 05:20:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    26,
    '350316509291216906',
    '622311594654695434',
    168,
    '2020-07-16 11:27:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    27,
    '297914039932289025',
    '622311594654695434',
    87,
    '2020-06-23 04:37:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    28,
    '366865049949569024',
    '622311594654695434',
    6,
    '2020-03-07 10:24:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    29,
    '420915716502323200',
    '622311594654695434',
    158,
    '2020-03-19 09:29:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    30,
    '310750064220045313',
    '622311594654695434',
    13,
    '2020-03-07 12:45:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    31,
    '481708677909315594',
    '622311594654695434',
    296,
    '2020-04-11 00:27:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    32,
    '487621580784926723',
    '622311594654695434',
    4791,
    '2020-11-06 02:46:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    33,
    '251976540563177472',
    '622311594654695434',
    79,
    '2020-08-17 12:57:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    34,
    '621959791698247680',
    '622311594654695434',
    12596,
    '2020-10-26 07:33:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    35,
    '256950831549513728',
    '622311594654695434',
    11,
    '2020-03-07 23:37:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    36,
    '356274929529782274',
    '622311594654695434',
    3887,
    '2020-08-28 17:37:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    37,
    '371351122482561036',
    '622311594654695434',
    4639,
    '2020-11-10 16:19:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    38,
    '595080268528877568',
    '622311594654695434',
    5223,
    '2020-11-08 08:41:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    39,
    '295122783250415627',
    '622311594654695434',
    117,
    '2020-05-03 09:35:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    40,
    '454892893979803649',
    '622311594654695434',
    62,
    '2020-06-03 15:36:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    41,
    '345937081110888448',
    '622311594654695434',
    1091,
    '2020-05-17 12:56:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    42,
    '353160102200737794',
    '622311594654695434',
    1666,
    '2020-05-12 15:29:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    43,
    '331016479149391872',
    '622311594654695434',
    461,
    '2020-11-03 04:40:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    44,
    '398019988360790027',
    '622311594654695434',
    216,
    '2020-10-08 17:09:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    45,
    '506122510513864744',
    '622311594654695434',
    28,
    '2020-03-17 15:39:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    46,
    '566588842753261587',
    '622311594654695434',
    32,
    '2020-07-22 02:28:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    47,
    '291950423387013121',
    '622311594654695434',
    168,
    '2020-05-19 13:24:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    48,
    '516473607619084288',
    '622311594654695434',
    15,
    '2020-05-08 01:46:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    49,
    '539357329666080768',
    '622311594654695434',
    14,
    '2020-03-11 13:07:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    50,
    '556651343784443905',
    '622311594654695434',
    41,
    '2020-04-28 08:37:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    51,
    '599111669683191808',
    '622311594654695434',
    284,
    '2020-09-19 08:45:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    52,
    '331717869345832971',
    '622311594654695434',
    25,
    '2020-03-13 12:24:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    53,
    '285219992394268673',
    '622311594654695434',
    20,
    '2020-03-31 09:56:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    54,
    '281394184215199745',
    '622311594654695434',
    1754,
    '2020-10-01 09:45:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    55,
    '403923934380032011',
    '622311594654695434',
    37,
    '2020-04-03 05:55:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    56,
    '469350124691128320',
    '622311594654695434',
    822,
    '2020-08-23 15:56:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    57,
    '539775046596427779',
    '622311594654695434',
    3167,
    '2020-11-11 11:31:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    58,
    '549058742055075852',
    '622311594654695434',
    11,
    '2020-03-13 09:42:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    59,
    '673122820200333342',
    '622311594654695434',
    38435,
    '2020-10-04 07:02:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    60,
    '462629849073188866',
    '622311594654695434',
    60,
    '2020-03-13 14:42:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    61,
    '215921928517451778',
    '622311594654695434',
    733,
    '2020-10-07 13:29:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    62,
    '449120203435933696',
    '622311594654695434',
    12,
    '2020-03-13 19:21:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    63,
    '599561765952553021',
    '622311594654695434',
    10,
    '2020-03-13 21:59:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    64,
    '376224160227131394',
    '622311594654695434',
    203,
    '2020-04-16 21:24:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    65,
    '583971838489526272',
    '622311594654695434',
    1053,
    '2020-07-22 03:17:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    66,
    '574246464671318035',
    '622311594654695434',
    85,
    '2020-03-15 03:22:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    67,
    '397241253651152896',
    '622311594654695434',
    41,
    '2020-04-28 04:50:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    68,
    '627121710130528276',
    '622311594654695434',
    412,
    '2020-08-11 13:49:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    69,
    '514426862655635457',
    '622311594654695434',
    9,
    '2020-03-14 10:04:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    70,
    '365841351956365313',
    '622311594654695434',
    81,
    '2020-03-14 12:58:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    71,
    '662914670214250496',
    '622311594654695434',
    6,
    '2020-03-14 13:10:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    72,
    '543828904889155607',
    '622311594654695434',
    15,
    '2020-03-20 12:00:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    73,
    '683655766510796812',
    '622311594654695434',
    245,
    '2020-08-22 07:49:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    74,
    '465337716838498307',
    '622311594654695434',
    21,
    '2020-03-15 09:52:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    75,
    '620112227118088213',
    '622311594654695434',
    62,
    '2020-03-15 14:29:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    76,
    '401988466386141184',
    '622311594654695434',
    9,
    '2020-03-15 14:24:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    77,
    '608340574616944650',
    '622311594654695434',
    8,
    '2020-03-15 15:10:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    78,
    '209873989798068227',
    '622311594654695434',
    31,
    '2020-03-16 06:07:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    79,
    '424899091647168523',
    '622311594654695434',
    12,
    '2020-03-16 13:15:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    80,
    '544117992951119882',
    '622311594654695434',
    6703,
    '2020-11-11 09:58:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    81,
    '689353051189936222',
    '622311594654695434',
    171,
    '2020-06-29 09:32:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    82,
    '491109452003541035',
    '622311594654695434',
    761,
    '2020-10-07 13:25:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    83,
    '428226752255623170',
    '622311594654695434',
    67,
    '2020-03-21 07:05:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    84,
    '427474774520889354',
    '622311594654695434',
    597,
    '2020-08-20 15:10:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    85,
    '551753348655874048',
    '622311594654695434',
    26,
    '2020-03-28 05:11:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    86,
    '554209873756422144',
    '622311594654695434',
    7,
    '2020-03-20 09:08:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    87,
    '368716709860737024',
    '622311594654695434',
    13,
    '2020-03-20 09:59:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    88,
    '471306387041943552',
    '622311594654695434',
    1005,
    '2020-11-01 03:04:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    89,
    '462461975948165120',
    '622311594654695434',
    10,
    '2020-03-21 03:50:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    90,
    '285277115325087744',
    '622311594654695434',
    38,
    '2020-03-28 00:58:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    91,
    '495053483733417984',
    '622311594654695434',
    94,
    '2020-03-27 11:06:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    92,
    '452394805700591616',
    '622311594654695434',
    11,
    '2020-03-21 07:29:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    93,
    '556399404169560065',
    '622311594654695434',
    386,
    '2020-06-12 06:45:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    94,
    '209674915509436416',
    '622311594654695434',
    25,
    '2020-03-22 06:46:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    95,
    '463160535240671245',
    '622311594654695434',
    77,
    '2020-08-26 07:17:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    96,
    '482552898585100289',
    '622311594654695434',
    3464,
    '2020-09-29 11:13:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    97,
    '596206793747595265',
    '622311594654695434',
    27,
    '2020-03-22 02:14:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    98,
    '340801018126139392',
    '622311594654695434',
    28,
    '2020-08-02 15:15:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    99,
    '273047313751212032',
    '622311594654695434',
    1185,
    '2020-11-08 10:07:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    100,
    '557156358760169483',
    '622311594654695434',
    40,
    '2020-04-12 16:18:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    101,
    '474484023280795649',
    '622311594654695434',
    14,
    '2020-03-22 20:10:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    102,
    '404878298955513867',
    '622311594654695434',
    28,
    '2020-10-20 00:01:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    103,
    '526377962346643457',
    '622311594654695434',
    14,
    '2020-03-22 05:17:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    104,
    '633304818424873002',
    '622311594654695434',
    977,
    '2020-09-08 11:38:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    105,
    '358828980616298507',
    '622311594654695434',
    50,
    '2020-04-04 13:12:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    106,
    '689405813974106152',
    '622311594654695434',
    9,
    '2020-03-23 06:50:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    107,
    '659654746969341953',
    '622311594654695434',
    539,
    '2020-10-31 07:25:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    108,
    '337547348290961408',
    '622311594654695434',
    36,
    '2020-03-23 12:30:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    109,
    '677439625878306817',
    '622311594654695434',
    15,
    '2020-03-23 12:58:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    110,
    '534030635095031808',
    '622311594654695434',
    10,
    '2020-03-23 13:30:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    111,
    '324256204287246337',
    '622311594654695434',
    7,
    '2020-03-23 15:52:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    112,
    '263846163751501827',
    '622311594654695434',
    6,
    '2020-03-23 16:06:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    113,
    '690828329070100500',
    '622311594654695434',
    7,
    '2020-03-24 06:15:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    114,
    '424846968121196546',
    '622311594654695434',
    23,
    '2020-03-24 09:35:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    115,
    '419108781017006090',
    '622311594654695434',
    11,
    '2020-03-24 14:23:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    116,
    '334880571799109633',
    '622311594654695434',
    30,
    '2020-07-08 14:27:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    117,
    '355327568536403968',
    '622311594654695434',
    261,
    '2020-08-14 14:56:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    118,
    '546679820805865473',
    '622311594654695434',
    13,
    '2020-03-25 15:51:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    119,
    '364984559714041858',
    '622311594654695434',
    12,
    '2020-03-26 02:15:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    120,
    '323043768565760001',
    '622311594654695434',
    15,
    '2020-06-21 00:50:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    121,
    '289042385625939968',
    '622311594654695434',
    135,
    '2020-04-21 08:34:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    122,
    '335348000962379776',
    '622311594654695434',
    12,
    '2020-03-26 18:54:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    123,
    '233510716840214528',
    '622311594654695434',
    29,
    '2020-03-29 21:45:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    124,
    '621334537632350208',
    '622311594654695434',
    9,
    '2020-03-27 00:25:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    125,
    '265710908091662337',
    '622311594654695434',
    13,
    '2020-03-27 10:21:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    126,
    '569148006323191818',
    '622311594654695434',
    23,
    '2020-03-31 11:50:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    127,
    '691546362612809744',
    '622311594654695434',
    8,
    '2020-03-27 14:38:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    128,
    '403868062056710164',
    '622311594654695434',
    11,
    '2020-03-27 14:59:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    129,
    '572427233277509680',
    '622311594654695434',
    8,
    '2020-03-28 01:23:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    130,
    '604686140771139594',
    '622311594654695434',
    10,
    '2020-03-28 06:31:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    131,
    '367140941875773443',
    '622311594654695434',
    350,
    '2020-05-03 07:56:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    132,
    '286054562199240705',
    '622311594654695434',
    249,
    '2020-07-12 04:28:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    133,
    '367032260224090124',
    '622311594654695434',
    14,
    '2020-03-28 09:49:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    134,
    '342655125875064832',
    '622311594654695434',
    25,
    '2020-10-01 20:15:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    135,
    '496314690893381652',
    '622311594654695434',
    22,
    '2020-03-28 11:20:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    136,
    '426711796783775744',
    '622311594654695434',
    389,
    '2020-07-03 04:22:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    137,
    '409020970133749762',
    '622311594654695434',
    159,
    '2020-10-10 08:49:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    138,
    '196559577443991553',
    '622311594654695434',
    15,
    '2020-03-28 18:14:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    139,
    '612473441395933184',
    '622311594654695434',
    11,
    '2020-03-29 05:03:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    140,
    '538540030294097931',
    '622311594654695434',
    8,
    '2020-03-29 06:49:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    141,
    '598820158907219968',
    '622311594654695434',
    231,
    '2020-04-26 22:55:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    142,
    '341962946210955273',
    '622311594654695434',
    10,
    '2020-03-29 08:57:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    143,
    '381307473350361099',
    '622311594654695434',
    59,
    '2020-04-06 12:59:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    144,
    '504262056984444929',
    '622311594654695434',
    26,
    '2020-05-21 01:20:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    145,
    '330538286076657675',
    '622311594654695434',
    71,
    '2020-05-27 12:22:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    146,
    '533287254827859973',
    '622311594654695434',
    666,
    '2020-09-06 12:00:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    147,
    '348993833591373827',
    '622311594654695434',
    12,
    '2020-03-30 13:15:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    148,
    '481430474770612250',
    '622311594654695434',
    21,
    '2020-06-28 04:34:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    149,
    '240405706056925184',
    '622311594654695434',
    10,
    '2020-03-31 04:58:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    150,
    '361428953677824000',
    '622311594654695434',
    10,
    '2020-03-31 07:26:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    151,
    '355635041977761792',
    '622311594654695434',
    15,
    '2020-03-31 10:36:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    152,
    '481025949379592204',
    '622311594654695434',
    14,
    '2020-03-31 11:53:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    153,
    '533464874043572225',
    '622311594654695434',
    12,
    '2020-03-31 13:24:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    154,
    '424736624899784714',
    '622311594654695434',
    30,
    '2020-04-01 01:29:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    155,
    '294320629497200640',
    '622311594654695434',
    40,
    '2020-04-01 02:17:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    156,
    '469545251347103793',
    '622311594654695434',
    43,
    '2020-04-01 02:17:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    157,
    '468651388512239657',
    '622311594654695434',
    20,
    '2020-04-01 02:17:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    158,
    '316324011862786049',
    '622311594654695434',
    22,
    '2020-04-01 02:18:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    159,
    '677703644455501836',
    '622311594654695434',
    12,
    '2020-04-01 03:23:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    160,
    '259606413670612993',
    '622311594654695434',
    18,
    '2020-04-01 05:34:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    161,
    '615788558359461908',
    '622311594654695434',
    6,
    '2020-04-01 11:04:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    162,
    '519455977762979840',
    '622311594654695434',
    12,
    '2020-04-01 12:15:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    163,
    '687726365201662056',
    '622311594654695434',
    33,
    '2020-04-01 15:07:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    164,
    '436917804214648832',
    '622311594654695434',
    79,
    '2020-07-11 06:39:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    165,
    '314666534180225045',
    '622311594654695434',
    244,
    '2020-05-25 04:10:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    166,
    '596178292688551946',
    '622311594654695434',
    11,
    '2020-04-01 15:24:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    167,
    '548178281300492289',
    '622311594654695434',
    10,
    '2020-04-01 21:45:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    168,
    '442189372784377867',
    '622311594654695434',
    40,
    '2020-08-03 09:17:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    169,
    '272322533653741568',
    '622311594654695434',
    12,
    '2020-04-02 15:07:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    170,
    '667295728439263232',
    '622311594654695434',
    312,
    '2020-07-17 15:38:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    171,
    '468312660413513739',
    '622311594654695434',
    7,
    '2020-04-02 16:45:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    172,
    '621338857173942282',
    '622311594654695434',
    37,
    '2020-04-02 17:54:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    173,
    '532129178703888385',
    '622311594654695434',
    44,
    '2020-04-19 05:41:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    174,
    '695457192735932446',
    '622311594654695434',
    18,
    '2020-04-03 02:25:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    175,
    '495501319805599744',
    '622311594654695434',
    17,
    '2020-04-03 05:32:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    176,
    '558807195781955584',
    '622311594654695434',
    11,
    '2020-04-03 08:36:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    177,
    '490294858943299594',
    '622311594654695434',
    82,
    '2020-04-18 17:35:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    178,
    '536443442004492318',
    '622311594654695434',
    10,
    '2020-04-03 14:23:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    179,
    '449575584591511552',
    '622311594654695434',
    12,
    '2020-04-03 16:38:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    180,
    '607165081603538944',
    '622311594654695434',
    77,
    '2020-04-12 12:02:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    181,
    '459331301099700254',
    '622311594654695434',
    123,
    '2020-07-30 15:39:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    182,
    '464822389545500675',
    '622311594654695434',
    13,
    '2020-04-04 11:03:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    183,
    '377450232318787584',
    '622311594654695434',
    9,
    '2020-04-04 11:57:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    184,
    '503857865543516164',
    '622311594654695434',
    187,
    '2020-04-05 11:14:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    185,
    '356015671290888192',
    '622311594654695434',
    8,
    '2020-04-04 14:42:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    186,
    '409689777512906753',
    '622311594654695434',
    19,
    '2020-04-04 15:07:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    187,
    '253787876033036288',
    '622311594654695434',
    77,
    '2020-09-02 12:26:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    188,
    '459951864423907350',
    '622311594654695434',
    41,
    '2020-08-13 11:17:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    189,
    '366090389041446913',
    '622311594654695434',
    9,
    '2020-04-05 10:47:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    190,
    '605365122483093524',
    '622311594654695434',
    42287,
    '2020-11-02 09:07:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    191,
    '210686770365464576',
    '622311594654695434',
    22,
    '2020-04-26 07:20:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    192,
    '645616055737253889',
    '622311594654695434',
    87,
    '2020-06-09 15:50:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    193,
    '457266670281556010',
    '622311594654695434',
    50,
    '2020-07-13 08:05:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    194,
    '571613347028533260',
    '622311594654695434',
    12,
    '2020-04-07 10:30:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    195,
    '640247697277845516',
    '622311594654695434',
    7,
    '2020-04-07 16:24:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    196,
    '276350116053385216',
    '622311594654695434',
    41,
    '2020-05-23 11:07:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    197,
    '697510282007937084',
    '622311594654695434',
    24,
    '2020-04-08 23:28:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    198,
    '391563227110047755',
    '622311594654695434',
    27,
    '2020-04-09 10:51:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    199,
    '606041546843750405',
    '622311594654695434',
    358,
    '2020-04-26 07:15:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    200,
    '563935187797278720',
    '622311594654695434',
    24,
    '2020-04-10 16:30:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    201,
    '698334862733738004',
    '622311594654695434',
    9,
    '2020-04-11 00:55:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    202,
    '668749816460869632',
    '622311594654695434',
    7,
    '2020-04-11 03:51:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    203,
    '495452231588511744',
    '622311594654695434',
    9,
    '2020-04-11 09:49:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    204,
    '400183104268140556',
    '622311594654695434',
    116,
    '2020-06-13 12:30:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    205,
    '432395919237971978',
    '622311594654695434',
    18,
    '2020-04-11 16:13:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    206,
    '485681449513517060',
    '622311594654695434',
    1975,
    '2020-10-08 14:51:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    207,
    '462630577791696896',
    '622311594654695434',
    27,
    '2020-04-12 10:10:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    208,
    '631812829044932610',
    '622311594654695434',
    12,
    '2020-04-12 12:12:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    209,
    '494524905367273472',
    '622311594654695434',
    8,
    '2020-04-12 12:12:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    210,
    '571347910676185088',
    '622311594654695434',
    36,
    '2020-04-15 05:20:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    211,
    '487899450883440640',
    '622311594654695434',
    9,
    '2020-04-13 00:12:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    212,
    '427039687387906058',
    '622311594654695434',
    39,
    '2020-07-02 13:27:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    213,
    '353808055491624981',
    '622311594654695434',
    23,
    '2020-08-12 09:13:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    214,
    '697817737111666719',
    '622311594654695434',
    44,
    '2020-04-14 09:56:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    215,
    '507813316379410433',
    '622311594654695434',
    16,
    '2020-04-14 11:48:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    216,
    '340483676578250753',
    '622311594654695434',
    8,
    '2020-04-14 11:22:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    217,
    '563952545890959370',
    '622311594654695434',
    19,
    '2020-05-04 04:41:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    218,
    '602496081368186904',
    '622311594654695434',
    14,
    '2020-04-15 08:08:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    219,
    '426604442075267073',
    '622311594654695434',
    18,
    '2020-04-15 12:22:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    220,
    '270227226161577984',
    '622311594654695434',
    57,
    '2020-08-07 02:06:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    221,
    '330572038244925441',
    '622311594654695434',
    1435,
    '2020-11-11 14:18:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    222,
    '437948858774061057',
    '622311594654695434',
    14,
    '2020-04-17 08:20:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    223,
    '676651654992494592',
    '622311594654695434',
    122,
    '2020-06-13 04:58:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    224,
    '583962103967252493',
    '622311594654695434',
    2054,
    '2020-08-14 13:20:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    225,
    '470092168753709056',
    '622311594654695434',
    15,
    '2020-05-29 12:22:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    226,
    '468974713478316035',
    '622311594654695434',
    461,
    '2020-10-24 06:12:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    227,
    '609041620834451466',
    '622311594654695434',
    22,
    '2020-06-25 12:52:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    228,
    '694014859356143716',
    '622311594654695434',
    507,
    '2020-10-18 12:17:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    229,
    '535418797067206676',
    '622311594654695434',
    294,
    '2020-07-25 06:12:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    230,
    '483905549205766145',
    '622311594654695434',
    24,
    '2020-06-27 07:27:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    231,
    '657190975650922506',
    '622311594654695434',
    13,
    '2020-04-21 03:07:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    232,
    '431473359709143060',
    '622311594654695434',
    39,
    '2020-04-23 07:14:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    233,
    '696022437325963284',
    '622311594654695434',
    32,
    '2020-04-22 08:36:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    234,
    '277644934884884490',
    '622311594654695434',
    15,
    '2020-05-23 19:30:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    235,
    '684128935260323930',
    '538361750651797504',
    14,
    '2020-04-22 21:26:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    236,
    '449289240925306890',
    '538361750651797504',
    6,
    '2020-04-23 08:07:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    237,
    '573055858473435146',
    '538361750651797504',
    9,
    '2020-04-23 12:05:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    238,
    '571299031876108298',
    '622311594654695434',
    23,
    '2020-05-05 05:50:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    239,
    '495874584650842123',
    '538361750651797504',
    14,
    '2020-04-23 13:15:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    240,
    '403121313830666242',
    '622311594654695434',
    5,
    '2020-04-23 16:58:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    241,
    '177867416972296192',
    '538361750651797504',
    11,
    '2020-04-24 07:44:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    242,
    '666333366211182624',
    '538361750651797504',
    7,
    '2020-04-24 18:32:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    243,
    '530944120533942282',
    '622311594654695434',
    339,
    '2020-10-25 03:09:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    244,
    '615879839429165056',
    '622311594654695434',
    15,
    '2020-04-25 05:02:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    245,
    '431095479355310090',
    '538361750651797504',
    15,
    '2020-04-25 05:47:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    246,
    '473026503190380544',
    '622311594654695434',
    101,
    '2020-06-14 14:09:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    247,
    '642899597639024669',
    '538361750651797504',
    9,
    '2020-04-25 09:45:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    248,
    '531031810151415820',
    '622311594654695434',
    73,
    '2020-04-27 12:10:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    249,
    '468320235313692683',
    '622311594654695434',
    5,
    '2020-04-25 15:58:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    250,
    '490118813124132864',
    '538361750651797504',
    15,
    '2020-04-25 19:36:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    251,
    '393096318123245578',
    '538361750651797504',
    1038,
    '2020-11-11 15:06:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    252,
    '422753387923374091',
    '538361750651797504',
    163,
    '2020-07-23 22:27:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    253,
    '122436177222565899',
    '538361750651797504',
    108,
    '2020-04-27 14:23:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    254,
    '424759498272669699',
    '622311594654695434',
    49,
    '2020-05-01 17:49:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    255,
    '546684847599517705',
    '538361750651797504',
    25,
    '2020-04-26 16:07:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    256,
    '376766575807823872',
    '538361750651797504',
    23,
    '2020-04-26 16:34:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    257,
    '422353090667347968',
    '538361750651797504',
    25,
    '2020-05-25 07:44:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    258,
    '510078946604220417',
    '538361750651797504',
    17,
    '2020-04-29 12:31:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    259,
    '493268028469936129',
    '622311594654695434',
    138,
    '2020-05-05 03:42:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    260,
    '660130948524015617',
    '538361750651797504',
    12,
    '2020-04-27 10:48:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    261,
    '505783166594973696',
    '538361750651797504',
    25,
    '2020-04-27 11:11:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    262,
    '690560040779907113',
    '538361750651797504',
    9,
    '2020-04-27 14:36:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    263,
    '323894001621139456',
    '538361750651797504',
    15,
    '2020-04-28 14:06:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    264,
    '409418756054581276',
    '622311594654695434',
    22,
    '2020-06-27 07:24:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    265,
    '704772356505206854',
    '538361750651797504',
    12,
    '2020-04-29 10:44:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    266,
    '649656012017500181',
    '538361750651797504',
    22,
    '2020-04-29 15:03:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    267,
    '573990610986598400',
    '538361750651797504',
    7,
    '2020-04-29 17:40:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    268,
    '171675309177831424',
    '538361750651797504',
    13,
    '2020-04-29 21:22:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    269,
    '208306443173101572',
    '538361750651797504',
    19,
    '2020-04-30 04:52:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    270,
    '621355039268798484',
    '538361750651797504',
    9,
    '2020-04-30 00:08:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    271,
    '250322741406859265',
    '538361750651797504',
    21,
    '2020-04-30 07:55:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    272,
    '503557204524269568',
    '538361750651797504',
    15,
    '2020-04-30 11:14:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    273,
    '495773268847099914',
    '622311594654695434',
    32897,
    '2020-10-20 15:25:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    274,
    '440503797031370763',
    '538361750651797504',
    11,
    '2020-04-30 13:37:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    275,
    '482021354443505674',
    '622311594654695434',
    1999,
    '2020-08-31 15:06:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    276,
    '348143440405725184',
    '538361750651797504',
    7,
    '2020-05-01 09:28:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    277,
    '468175844225974311',
    '622311594654695434',
    14,
    '2020-05-01 11:03:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    278,
    '320730509523288086',
    '622311594654695434',
    543,
    '2020-09-07 23:04:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    279,
    '669581404434333696',
    '538361750651797504',
    5,
    '2020-05-02 01:31:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    280,
    '485007937555922949',
    '622311594654695434',
    530,
    '2020-08-29 09:45:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    281,
    '424890973194289152',
    '538361750651797504',
    33,
    '2020-05-02 18:07:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    282,
    '285332385082376192',
    '622311594654695434',
    69,
    '2020-05-27 11:49:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    283,
    '504024417295138826',
    '538361750651797504',
    81,
    '2020-06-24 21:31:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    284,
    '249715707393212421',
    '622311594654695434',
    63,
    '2020-06-26 03:59:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    285,
    '474418031737569281',
    '664716701991960577',
    81,
    '2020-11-02 13:56:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    286,
    '404716178250924045',
    '538361750651797504',
    6,
    '2020-05-03 00:38:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    287,
    '535161913823461396',
    '538361750651797504',
    11,
    '2020-05-03 01:32:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    288,
    '525273781434974209',
    '622311594654695434',
    12,
    '2020-05-03 01:38:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    289,
    '403148950624010250',
    '622311594654695434',
    10231,
    '2020-11-11 08:00:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    290,
    '385478022670843904',
    '538361750651797504',
    12,
    '2020-05-03 05:02:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    291,
    '603277738362667113',
    '622311594654695434',
    38,
    '2020-06-15 06:48:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    292,
    '336073769158180864',
    '622311594654695434',
    103,
    '2020-08-14 14:16:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    293,
    '434402923661754369',
    '538361750651797504',
    21,
    '2020-05-13 21:28:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    294,
    '242360768878608386',
    '538361750651797504',
    26,
    '2020-05-03 18:28:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    295,
    '421911231025119232',
    '622311594654695434',
    19,
    '2020-05-04 14:13:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    296,
    '706602885957288017',
    '538361750651797504',
    13,
    '2020-05-03 20:31:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    297,
    '447235676266823700',
    '622311594654695434',
    13,
    '2020-05-04 11:12:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    298,
    '437058389881913345',
    '622311594654695434',
    22621,
    '2020-11-11 21:01:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    299,
    '689173468478308480',
    '538361750651797504',
    14,
    '2020-05-04 16:30:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    300,
    '625456809213427732',
    '538361750651797504',
    26,
    '2020-05-05 01:48:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    301,
    '650823079668482072',
    '538361750651797504',
    8,
    '2020-05-05 01:50:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    302,
    '302079259776778261',
    '538361750651797504',
    13,
    '2020-05-05 04:28:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    303,
    '661988417323925518',
    '538361750651797504',
    7,
    '2020-05-05 07:09:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    304,
    '707171738764443688',
    '538361750651797504',
    7,
    '2020-05-05 11:00:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    305,
    '366085611725258762',
    '538361750651797504',
    18,
    '2020-05-05 21:12:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    306,
    '298671634267766786',
    '622311594654695434',
    61,
    '2020-06-10 11:53:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    307,
    '707589407573540997',
    '622311594654695434',
    9,
    '2020-05-06 13:47:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    308,
    '702195876059283587',
    '622311594654695434',
    60,
    '2020-08-18 02:08:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    309,
    '241224900780490752',
    '538361750651797504',
    6,
    '2020-05-06 14:13:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    310,
    '621125726808309760',
    '622311594654695434',
    187,
    '2020-10-30 12:12:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    311,
    '437307939754082315',
    '622311594654695434',
    8,
    '2020-05-07 02:34:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    312,
    '165663289785843713',
    '622311594654695434',
    34,
    '2020-05-07 07:20:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    313,
    '407396140070469633',
    '622311594654695434',
    14,
    '2020-05-07 09:31:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    314,
    '608607468049661953',
    '622311594654695434',
    6904,
    '2020-09-11 09:55:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    315,
    '502377600761724947',
    '538361750651797504',
    8,
    '2020-05-07 10:16:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    316,
    '309847552348389378',
    '538361750651797504',
    15,
    '2020-05-07 15:16:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    317,
    '629990866785796136',
    '538361750651797504',
    36,
    '2020-05-08 19:52:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    318,
    '401145022499520523',
    '538361750651797504',
    21,
    '2020-05-07 19:43:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    319,
    '613151827671777281',
    '538361750651797504',
    13,
    '2020-05-07 18:02:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    320,
    '707955759496954047',
    '622311594654695434',
    30,
    '2020-05-07 23:15:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    321,
    '398519458068430849',
    '538361750651797504',
    23,
    '2020-05-09 17:43:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    322,
    '325526328965070849',
    '538361750651797504',
    12,
    '2020-05-08 07:56:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    323,
    '559463522195734528',
    '538361750651797504',
    47,
    '2020-08-10 19:11:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    324,
    '561772848994320384',
    '622311594654695434',
    4370,
    '2020-09-25 12:29:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    325,
    '379997513907830795',
    '622311594654695434',
    10,
    '2020-05-08 11:04:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    326,
    '516988345201459210',
    '538361750651797504',
    12,
    '2020-05-08 11:15:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    327,
    '674272329207119902',
    '538361750651797504',
    7,
    '2020-05-08 11:18:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    328,
    '356773029256232960',
    '622311594654695434',
    41,
    '2020-07-06 15:26:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    329,
    '706519198267998208',
    '622311594654695434',
    481,
    '2020-06-28 02:50:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    330,
    '221563533048020995',
    '538361750651797504',
    6,
    '2020-05-08 15:14:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    331,
    '512839158901768202',
    '538361750651797504',
    5,
    '2020-05-08 19:47:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    332,
    '698203034525630465',
    '538361750651797504',
    9,
    '2020-05-08 20:38:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    333,
    '686726215825883196',
    '538361750651797504',
    5,
    '2020-05-08 22:43:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    334,
    '692337942944809003',
    '538361750651797504',
    6,
    '2020-05-08 22:59:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    335,
    '290405788294447104',
    '622311594654695434',
    292,
    '2020-09-06 12:08:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    336,
    '532123566049722368',
    '622311594654695434',
    84,
    '2020-07-12 14:19:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    337,
    '393073498354089984',
    '538361750651797504',
    18,
    '2020-05-09 14:37:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    338,
    '520225704705785857',
    '622311594654695434',
    21,
    '2020-05-09 16:37:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    339,
    '477619900517711900',
    '538361750651797504',
    6,
    '2020-05-12 08:37:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    340,
    '343475168942882818',
    '538361750651797504',
    34,
    '2020-05-24 07:14:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    341,
    '707134432313606165',
    '538361750651797504',
    7,
    '2020-05-12 11:22:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    342,
    '701428910071480330',
    '538361750651797504',
    13,
    '2020-05-12 11:43:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    343,
    '384014788805787648',
    '538361750651797504',
    7,
    '2020-05-12 13:07:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    344,
    '706409598512267345',
    '538361750651797504',
    9,
    '2020-05-12 14:05:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    345,
    '418317103276490763',
    '538361750651797504',
    7,
    '2020-05-12 16:59:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    346,
    '709885765856788512',
    '538361750651797504',
    10,
    '2020-05-13 11:24:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    347,
    '604989726444879911',
    '538361750651797504',
    45,
    '2020-06-03 14:31:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    348,
    '371051913019392009',
    '538361750651797504',
    12,
    '2020-05-13 13:11:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    349,
    '235402582556803072',
    '622311594654695434',
    89,
    '2020-05-14 07:20:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    350,
    '228913502012702720',
    '538361750651797504',
    8,
    '2020-05-13 18:20:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    351,
    '539770184236269568',
    '538361750651797504',
    16,
    '2020-05-13 18:32:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    352,
    '275714969973161984',
    '538361750651797504',
    21,
    '2020-05-13 18:49:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    353,
    '444889694002741249',
    '538361750651797504',
    36,
    '2020-05-13 18:55:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    354,
    '387838535559806977',
    '538361750651797504',
    10,
    '2020-05-13 19:08:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    355,
    '525028071569620993',
    '538361750651797504',
    83,
    '2020-10-08 19:32:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    356,
    '628668250623967254',
    '622311594654695434',
    50,
    '2020-07-01 08:46:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    357,
    '579786839926374421',
    '538361750651797504',
    14,
    '2020-06-23 00:22:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    358,
    '700337351058260069',
    '538361750651797504',
    10,
    '2020-05-13 20:11:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    359,
    '708704313954009142',
    '538361750651797504',
    8,
    '2020-05-13 23:33:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    360,
    '193668379951890432',
    '538361750651797504',
    27,
    '2020-05-14 01:16:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    361,
    '566851016910438400',
    '538361750651797504',
    85,
    '2020-06-27 01:32:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    362,
    '590649033282945045',
    '538361750651797504',
    19,
    '2020-05-14 02:04:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    363,
    '243310302995677184',
    '538361750651797504',
    15,
    '2020-05-14 02:49:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    364,
    '170410236941697024',
    '538361750651797504',
    11,
    '2020-05-14 03:09:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    365,
    '420566588056535040',
    '622311594654695434',
    23811,
    '2020-08-14 05:36:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    366,
    '465542445740851201',
    '622311594654695434',
    55,
    '2020-06-26 13:09:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    367,
    '230028419394568192',
    '538361750651797504',
    9,
    '2020-05-14 13:41:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    368,
    '323456628928282624',
    '538361750651797504',
    14,
    '2020-05-14 14:59:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    369,
    '363634445728874497',
    '622311594654695434',
    24,
    '2020-05-14 15:04:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    370,
    '476695662055129109',
    '538361750651797504',
    10,
    '2020-05-14 16:58:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    371,
    '563404565504983056',
    '538361750651797504',
    12,
    '2020-05-14 18:21:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    372,
    '410319963400962050',
    '622311594654695434',
    25,
    '2020-05-15 09:12:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    373,
    '691288534375596062',
    '538361750651797504',
    31,
    '2020-10-10 14:34:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    374,
    '575732335199256585',
    '538361750651797504',
    125,
    '2020-08-17 19:14:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    375,
    '416046083475636225',
    '538361750651797504',
    22,
    '2020-05-15 15:28:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    376,
    '673479716551917630',
    '538361750651797504',
    8,
    '2020-05-15 16:42:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    377,
    '704827481806602482',
    '538361750651797504',
    14,
    '2020-05-15 18:41:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    378,
    '697071915898109963',
    '538361750651797504',
    6,
    '2020-05-15 20:36:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    379,
    '411855292037595138',
    '538361750651797504',
    12,
    '2020-05-15 21:58:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    380,
    '179781240205869056',
    '538361750651797504',
    14,
    '2020-05-16 01:31:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    381,
    '708504773900369960',
    '538361750651797504',
    9,
    '2020-05-16 03:53:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    382,
    '547625234245746688',
    '538361750651797504',
    7,
    '2020-05-16 06:10:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    383,
    '626265923048833036',
    '538361750651797504',
    5,
    '2020-05-16 07:46:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    384,
    '701561420680003594',
    '538361750651797504',
    15,
    '2020-05-16 10:29:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    385,
    '686973330431148080',
    '622311594654695434',
    217,
    '2020-06-22 11:35:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    386,
    '706229597334667264',
    '538361750651797504',
    5,
    '2020-05-16 15:06:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    387,
    '437263283091800071',
    '622311594654695434',
    19,
    '2020-05-16 15:10:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    388,
    '667741733001363466',
    '622311594654695434',
    95,
    '2020-08-01 12:19:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    389,
    '402785514383736842',
    '538361750651797504',
    6,
    '2020-05-16 16:33:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    390,
    '701088964987322378',
    '538361750651797504',
    10,
    '2020-05-16 16:37:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    391,
    '676897719650091038',
    '538361750651797504',
    10,
    '2020-05-16 18:07:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    392,
    '395782478192836608',
    '538361750651797504',
    20,
    '2020-05-16 19:16:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    393,
    '373461337520603147',
    '622311594654695434',
    7,
    '2020-05-17 06:17:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    394,
    '261978680413126658',
    '622311594654695434',
    13,
    '2020-05-17 07:14:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    395,
    '424894847456116737',
    '622311594654695434',
    8,
    '2020-05-17 13:15:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    396,
    '611808184658690049',
    '622311594654695434',
    180,
    '2020-08-15 03:16:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    397,
    '443677013480570880',
    '622311594654695434',
    81,
    '2020-07-21 11:46:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    398,
    '198385620643479554',
    '538361750651797504',
    10,
    '2020-05-18 11:02:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    399,
    '675581991982465034',
    '622311594654695434',
    10,
    '2020-05-18 12:11:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    400,
    '671765028365402152',
    '538361750651797504',
    12,
    '2020-05-18 13:09:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    401,
    '692521309942448140',
    '538361750651797504',
    8,
    '2020-05-18 13:09:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    402,
    '704468807229505637',
    '538361750651797504',
    6,
    '2020-05-18 16:33:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    403,
    '643377136370974720',
    '622311594654695434',
    20,
    '2020-06-06 13:52:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    404,
    '371004401965596682',
    '538361750651797504',
    9,
    '2020-05-19 15:23:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    405,
    '699441880601198623',
    '622311594654695434',
    12,
    '2020-05-19 16:16:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    406,
    '505416195974103059',
    '538361750651797504',
    10,
    '2020-05-20 03:52:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    407,
    '432732857929170945',
    '538361750651797504',
    9,
    '2020-05-20 05:05:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    408,
    '603492147441958934',
    '538361750651797504',
    6,
    '2020-05-20 06:27:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    409,
    '691462236824272957',
    '538361750651797504',
    6,
    '2020-05-20 08:16:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    410,
    '470705544538357801',
    '538361750651797504',
    15,
    '2020-05-20 11:16:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    411,
    '684466748342272007',
    '538361750651797504',
    9,
    '2020-05-20 22:11:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    412,
    '516141520177594378',
    '622311594654695434',
    220,
    '2020-08-10 10:21:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    413,
    '466562582426419200',
    '538361750651797504',
    7,
    '2020-05-21 13:49:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    414,
    '551674930765496323',
    '622311594654695434',
    10,
    '2020-05-21 14:50:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    415,
    '320989222171312128',
    '538361750651797504',
    12,
    '2020-05-21 14:51:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    416,
    '704879364181065759',
    '538361750651797504',
    10,
    '2020-05-22 00:53:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    417,
    '545134767339995136',
    '538361750651797504',
    12,
    '2020-05-22 01:01:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    418,
    '553946801305288705',
    '538361750651797504',
    8,
    '2020-05-22 15:29:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    419,
    '178421105764073472',
    '622311594654695434',
    14,
    '2020-05-22 15:34:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    420,
    '273401619826343946',
    '538361750651797504',
    200,
    '2020-09-21 18:26:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    421,
    '206805670874316801',
    '538361750651797504',
    6,
    '2020-05-22 16:50:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    422,
    '572111715601481728',
    '538361750651797504',
    9,
    '2020-05-22 19:06:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    423,
    '514348637724082177',
    '622311594654695434',
    24,
    '2020-07-09 11:47:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    424,
    '420065700070293505',
    '622311594654695434',
    8,
    '2020-05-23 10:36:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    425,
    '338253459797049344',
    '538361750651797504',
    77,
    '2020-07-11 08:48:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    426,
    '470247431146307615',
    '622311594654695434',
    54,
    '2020-10-07 13:29:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    427,
    '598259791072198673',
    '622311594654695434',
    114,
    '2020-05-23 16:02:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    428,
    '587628000183320594',
    '622311594654695434',
    11,
    '2020-05-23 15:51:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    429,
    '316289113647218688',
    '538361750651797504',
    140,
    '2020-05-24 01:05:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    430,
    '507490400534265856',
    '538361750651797504',
    73,
    '2020-05-24 01:05:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    431,
    '510104921887211533',
    '538361750651797504',
    182,
    '2020-10-17 08:25:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    432,
    '630395484527394831',
    '538361750651797504',
    7,
    '2020-05-24 01:34:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    433,
    '458441695697043459',
    '538361750651797504',
    10,
    '2020-05-24 01:52:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    434,
    '264994122941726720',
    '622311594654695434',
    1127,
    '2020-07-21 10:25:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    435,
    '369855905162067988',
    '538361750651797504',
    20,
    '2020-06-19 16:43:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    436,
    '239632597745926155',
    '622311594654695434',
    34,
    '2020-06-15 11:06:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    437,
    '591623407511142457',
    '622311594654695434',
    91,
    '2020-07-09 11:45:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    438,
    '448476108460130314',
    '538361750651797504',
    113,
    '2020-05-24 18:12:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    439,
    '696269908765442058',
    '622311594654695434',
    7,
    '2020-05-24 08:43:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    440,
    '682775728206381086',
    '622311594654695434',
    18,
    '2020-05-24 14:14:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    441,
    '526709482852712449',
    '538361750651797504',
    7,
    '2020-05-24 12:58:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    442,
    '680730843513356299',
    '622311594654695434',
    27,
    '2020-07-10 12:08:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    443,
    '471675355686502423',
    '622311594654695434',
    14,
    '2020-10-04 18:04:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    444,
    '667203016709111820',
    '538361750651797504',
    9,
    '2020-05-25 00:47:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    445,
    '292024528580902915',
    '538361750651797504',
    14,
    '2020-05-25 02:12:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    446,
    '140867276550176768',
    '538361750651797504',
    5,
    '2020-05-25 06:05:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    447,
    '349489110987177985',
    '622311594654695434',
    917,
    '2020-11-06 10:13:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    448,
    '608417301317812260',
    '538361750651797504',
    11,
    '2020-05-25 20:04:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    449,
    '475185205464793088',
    '538361750651797504',
    9,
    '2020-05-25 20:40:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    450,
    '714573318602358786',
    '538361750651797504',
    6,
    '2020-05-25 21:13:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    451,
    '641811353920602112',
    '538361750651797504',
    9,
    '2020-05-26 09:08:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    452,
    '614802040266293269',
    '538361750651797504',
    5,
    '2020-05-26 18:50:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    453,
    '593148998378848256',
    '538361750651797504',
    9,
    '2020-05-26 18:58:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    454,
    '710625074100568104',
    '538361750651797504',
    7,
    '2020-05-26 19:00:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    455,
    '319510902145679370',
    '538361750651797504',
    10,
    '2020-05-26 19:01:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    456,
    '161952481113276416',
    '538361750651797504',
    7,
    '2020-05-26 19:05:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    457,
    '554224941835223070',
    '538361750651797504',
    18,
    '2020-05-28 17:04:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    458,
    '672903591593508873',
    '538361750651797504',
    329,
    '2020-10-19 20:54:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    459,
    '503956814983856128',
    '538361750651797504',
    8,
    '2020-05-26 22:38:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    460,
    '396240442468990977',
    '538361750651797504',
    34,
    '2020-10-25 19:58:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    461,
    '535819745040269322',
    '538361750651797504',
    5,
    '2020-05-26 23:22:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    462,
    '686895084557434910',
    '538361750651797504',
    12,
    '2020-05-26 23:30:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    463,
    '309687183172960256',
    '538361750651797504',
    11,
    '2020-05-27 00:52:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    464,
    '301033144306630666',
    '538361750651797504',
    11,
    '2020-05-27 00:52:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    465,
    '561302072000118784',
    '538361750651797504',
    13,
    '2020-05-27 01:54:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    466,
    '280797762587590656',
    '538361750651797504',
    6,
    '2020-05-27 06:36:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    467,
    '422729164622266368',
    '622311594654695434',
    12,
    '2020-05-27 11:44:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    468,
    '406162864173350923',
    '538361750651797504',
    11,
    '2020-05-27 11:06:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    469,
    '333628937425125376',
    '538361750651797504',
    112,
    '2020-09-01 17:48:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    470,
    '493732086101049354',
    '622311594654695434',
    12,
    '2020-05-28 13:23:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    471,
    '451386684454600719',
    '538361750651797504',
    16,
    '2020-05-28 15:50:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    472,
    '382619961316605952',
    '538361750651797504',
    11,
    '2020-05-28 15:48:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    473,
    '382904854714253312',
    '538361750651797504',
    7,
    '2020-05-28 15:54:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    474,
    '391297550054850583',
    '538361750651797504',
    9,
    '2020-05-28 17:42:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    475,
    '710599460132094014',
    '538361750651797504',
    13,
    '2020-05-28 22:20:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    476,
    '715069633538949182',
    '538361750651797504',
    10,
    '2020-05-29 02:00:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    477,
    '714358039406313514',
    '622311594654695434',
    92,
    '2020-10-01 20:06:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    478,
    '353511648696336384',
    '538361750651797504',
    8,
    '2020-05-29 09:30:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    479,
    '337126226860703744',
    '622311594654695434',
    14,
    '2020-05-29 10:23:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    480,
    '424772016093003776',
    '622311594654695434',
    20,
    '2020-05-29 10:43:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    481,
    '713273301686026271',
    '538361750651797504',
    6,
    '2020-05-29 11:54:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    482,
    '211276195042557952',
    '538361750651797504',
    8,
    '2020-05-29 18:01:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    483,
    '474418031737569281',
    '622311594654695434',
    85,
    '2020-11-02 13:41:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    484,
    '376580839770816524',
    '538361750651797504',
    11,
    '2020-05-30 09:00:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    485,
    '377464041729163265',
    '538361750651797504',
    15,
    '2020-05-30 21:07:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    486,
    '450199616877625346',
    '538361750651797504',
    9,
    '2020-05-30 21:08:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    487,
    '373548782006173698',
    '538361750651797504',
    7,
    '2020-06-01 09:07:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    488,
    '688532992511311914',
    '538361750651797504',
    12,
    '2020-06-01 09:28:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    489,
    '500934002400690176',
    '622311594654695434',
    23,
    '2020-06-14 15:02:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    490,
    '716974154473013299',
    '538361750651797504',
    12,
    '2020-06-01 11:32:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    491,
    '706256774705184790',
    '538361750651797504',
    14,
    '2020-06-01 13:42:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    492,
    '402432591493595146',
    '622311594654695434',
    5297,
    '2020-10-12 15:33:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    493,
    '521152093181181953',
    '538361750651797504',
    27,
    '2020-06-01 14:31:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    494,
    '505313807141175306',
    '538361750651797504',
    12,
    '2020-06-01 15:38:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    495,
    '716636976719069185',
    '538361750651797504',
    14,
    '2020-06-01 19:14:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    496,
    '528673262792736778',
    '538361750651797504',
    14,
    '2020-06-03 16:27:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    497,
    '692960673147387904',
    '538361750651797504',
    7,
    '2020-06-03 20:44:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    498,
    '90548537686761472',
    '538361750651797504',
    8,
    '2020-06-04 07:32:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    499,
    '531088672133480479',
    '622311594654695434',
    169,
    '2020-07-02 06:31:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    500,
    '288402111916539914',
    '538361750651797504',
    57,
    '2020-08-11 08:33:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    501,
    '235940380003139585',
    '538361750651797504',
    20,
    '2020-06-04 13:18:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    502,
    '251064028376334337',
    '538361750651797504',
    12,
    '2020-06-04 13:24:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    503,
    '462547055316041728',
    '622311594654695434',
    6,
    '2020-06-04 13:30:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    504,
    '699172260233347073',
    '538361750651797504',
    10,
    '2020-06-04 14:01:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    505,
    '675222428850585610',
    '622311594654695434',
    7,
    '2020-06-06 11:05:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    506,
    '394194729933209610',
    '622311594654695434',
    51,
    '2020-06-19 15:39:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    507,
    '679077677461798949',
    '538361750651797504',
    13,
    '2020-06-06 13:21:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    508,
    '511494330528169985',
    '538361750651797504',
    9,
    '2020-06-06 13:27:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    509,
    '704144269715308545',
    '538361750651797504',
    13,
    '2020-06-06 14:02:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    510,
    '718701312942014526',
    '538361750651797504',
    7,
    '2020-06-06 14:12:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    511,
    '718616214951165972',
    '538361750651797504',
    13,
    '2020-06-06 14:15:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    512,
    '503215722407657478',
    '538361750651797504',
    10,
    '2020-06-06 16:52:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    513,
    '200673763157606400',
    '538361750651797504',
    6877,
    '2020-11-10 17:39:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    514,
    '272809112851578881',
    '538361750651797504',
    16,
    '2020-06-06 22:00:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    515,
    '713829039407628299',
    '538361750651797504',
    480,
    '2020-08-28 20:00:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    516,
    '160462182344032256',
    '538361750651797504',
    11,
    '2020-06-06 22:18:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    517,
    '271704900231102466',
    '538361750651797504',
    8,
    '2020-06-06 22:22:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    518,
    '403192480444710914',
    '538361750651797504',
    13,
    '2020-06-06 22:22:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    519,
    '511632130606891030',
    '538361750651797504',
    11,
    '2020-06-06 22:57:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    520,
    '597972806550028288',
    '622311594654695434',
    11,
    '2020-06-07 03:26:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    521,
    '424964069972246528',
    '622311594654695434',
    9,
    '2020-06-07 04:42:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    522,
    '323058900771536898',
    '538361750651797504',
    12,
    '2020-06-07 09:56:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    523,
    '563351780944248843',
    '538361750651797504',
    176,
    '2020-06-27 12:27:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    524,
    '214829164253937674',
    '538361750651797504',
    12,
    '2020-06-07 09:58:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    525,
    '276495195489566730',
    '538361750651797504',
    8,
    '2020-06-07 10:37:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    526,
    '311129357362135041',
    '538361750651797504',
    117,
    '2020-07-23 22:49:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    527,
    '201090602975232001',
    '538361750651797504',
    8,
    '2020-06-07 12:28:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    528,
    '239563657246277635',
    '622311594654695434',
    12475,
    '2020-11-11 14:59:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    529,
    '344270500987404288',
    '538361750651797504',
    5,
    '2020-06-07 14:56:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    530,
    '453274035799719956',
    '538361750651797504',
    13,
    '2020-06-07 15:30:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    531,
    '276336981104001024',
    '538361750651797504',
    46,
    '2020-06-07 18:56:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    532,
    '275046537699262464',
    '538361750651797504',
    35,
    '2020-06-07 19:05:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    533,
    '103658671136841728',
    '538361750651797504',
    14,
    '2020-06-07 19:05:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    534,
    '644920190727094283',
    '622311594654695434',
    24,
    '2020-06-08 15:19:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    535,
    '456827860649377813',
    '622311594654695434',
    13,
    '2020-06-08 10:11:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    536,
    '695449951559352390',
    '622311594654695434',
    14,
    '2020-06-08 11:01:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    537,
    '518731387591720961',
    '538361750651797504',
    14,
    '2020-06-08 12:09:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    538,
    '245593404958965770',
    '538361750651797504',
    8,
    '2020-06-08 12:13:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    539,
    '399115795818610688',
    '622311594654695434',
    22,
    '2020-06-12 08:49:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    540,
    '563469263470592001',
    '538361750651797504',
    10,
    '2020-06-08 12:30:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    541,
    '632619949944209408',
    '538361750651797504',
    8,
    '2020-06-08 12:40:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    542,
    '581424837940215822',
    '622311594654695434',
    936,
    '2020-10-03 13:10:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    543,
    '390478738296537091',
    '622311594654695434',
    200,
    '2020-09-16 17:22:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    544,
    '394952378434191360',
    '538361750651797504',
    9,
    '2020-06-08 16:33:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    545,
    '669687078593888257',
    '538361750651797504',
    7,
    '2020-06-08 16:59:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    546,
    '620953523131121671',
    '538361750651797504',
    9,
    '2020-06-08 18:42:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    547,
    '217922627509944321',
    '538361750651797504',
    13,
    '2020-06-08 22:07:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    548,
    '433600071188217867',
    '538361750651797504',
    15,
    '2020-06-08 22:09:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    549,
    '408045765504794625',
    '538361750651797504',
    14,
    '2020-06-09 00:09:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    550,
    '381162231003349014',
    '538361750651797504',
    10,
    '2020-06-09 00:22:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    551,
    '692790523424931932',
    '538361750651797504',
    25,
    '2020-06-13 09:40:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    552,
    '312617227490951168',
    '538361750651797504',
    9,
    '2020-06-09 11:22:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    553,
    '345457928972533773',
    '538361750651797504',
    44,
    '2020-09-18 11:13:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    554,
    '373863656607318018',
    '538361750651797504',
    12,
    '2020-06-09 11:24:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    555,
    '611108193275478018',
    '538361750651797504',
    48,
    '2020-06-09 11:32:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    556,
    '513774552577474560',
    '538361750651797504',
    6,
    '2020-06-09 13:19:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    557,
    '592831413254881283',
    '538361750651797504',
    5,
    '2020-06-09 13:21:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    558,
    '592277214234411019',
    '538361750651797504',
    23,
    '2020-08-09 16:12:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    559,
    '247292930346319872',
    '538361750651797504',
    25,
    '2020-06-11 06:20:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    560,
    '193176568435048450',
    '622311594654695434',
    140,
    '2020-09-18 11:06:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    561,
    '239175968168607744',
    '538361750651797504',
    13,
    '2020-06-09 18:56:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    562,
    '693445343332794408',
    '538361750651797504',
    19,
    '2020-06-09 19:13:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    563,
    '360783331962650624',
    '538361750651797504',
    31,
    '2020-06-09 22:57:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    564,
    '471768296648081430',
    '538361750651797504',
    36,
    '2020-10-17 02:19:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    565,
    '342858745614827520',
    '538361750651797504',
    8,
    '2020-06-09 22:55:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    566,
    '286737962769580032',
    '538361750651797504',
    11,
    '2020-06-10 01:55:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    567,
    '314046425786875904',
    '538361750651797504',
    18,
    '2020-10-24 09:43:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    568,
    '710094214175916122',
    '538361750651797504',
    14,
    '2020-06-10 09:40:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    569,
    '527846909780688897',
    '622311594654695434',
    734,
    '2020-07-19 14:18:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    570,
    '217702311592591360',
    '622311594654695434',
    17,
    '2020-06-10 15:06:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    571,
    '644977595699560448',
    '538361750651797504',
    15,
    '2020-06-10 16:09:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    572,
    '516280857468731395',
    '538361750651797504',
    28,
    '2020-06-11 04:26:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    573,
    '714955383529144353',
    '538361750651797504',
    10,
    '2020-06-10 18:57:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    574,
    '712747478822289473',
    '538361750651797504',
    7,
    '2020-06-11 02:52:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    575,
    '631197459145687040',
    '538361750651797504',
    9,
    '2020-06-11 08:53:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    576,
    '650571320521916416',
    '538361750651797504',
    12,
    '2020-06-11 08:57:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    577,
    '710948537143394324',
    '538361750651797504',
    9,
    '2020-06-11 09:13:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    578,
    '706929206780493936',
    '538361750651797504',
    6,
    '2020-06-11 12:21:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    579,
    '380540636178284556',
    '622311594654695434',
    54,
    '2020-08-30 22:43:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    580,
    '645980443585282048',
    '538361750651797504',
    5,
    '2020-06-11 17:40:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    581,
    '703193258414571520',
    '538361750651797504',
    8,
    '2020-06-11 19:07:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    582,
    '232344336807755777',
    '538361750651797504',
    9,
    '2020-06-11 21:20:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    583,
    '224513210471022592',
    '538361750651797504',
    7,
    '2020-06-12 03:36:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    584,
    '640235175007223814',
    '538361750651797504',
    23,
    '2020-06-14 06:40:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    585,
    '201117035395153921',
    '538361750651797504',
    15,
    '2020-06-12 20:37:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    586,
    '473248860211249152',
    '538361750651797504',
    18,
    '2020-06-12 23:37:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    587,
    '689635576823283812',
    '538361750651797504',
    11,
    '2020-06-13 00:02:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    588,
    '505952475782578202',
    '622311594654695434',
    21,
    '2020-06-27 07:27:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    589,
    '693982338794651698',
    '538361750651797504',
    7,
    '2020-06-13 09:01:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    590,
    '528966706819760139',
    '538361750651797504',
    10,
    '2020-06-13 10:01:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    591,
    '454734378140958740',
    '622311594654695434',
    23,
    '2020-07-20 12:32:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    592,
    '344106791514406922',
    '622311594654695434',
    25,
    '2020-07-15 16:43:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    593,
    '657699842910453790',
    '622311594654695434',
    32,
    '2020-08-19 18:51:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    594,
    '640773439115886642',
    '622311594654695434',
    70,
    '2020-08-10 10:15:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    595,
    '331692919071440897',
    '622311594654695434',
    13,
    '2020-06-13 12:53:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    596,
    '431721363720503296',
    '622311594654695434',
    62575,
    '2020-11-11 06:23:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    597,
    '349909485390659584',
    '622311594654695434',
    14,
    '2020-06-13 13:47:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    598,
    '721416139548262460',
    '538361750651797504',
    7,
    '2020-06-13 20:14:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    599,
    '211611897454133248',
    '538361750651797504',
    11,
    '2020-06-13 21:54:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    600,
    '721027908637818880',
    '538361750651797504',
    11,
    '2020-06-13 22:16:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    601,
    '481811210761928715',
    '622311594654695434',
    9,
    '2020-06-14 03:33:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    602,
    '467647775765561345',
    '622311594654695434',
    23,
    '2020-06-14 23:47:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    603,
    '314383624474591232',
    '538361750651797504',
    38,
    '2020-06-16 14:58:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    604,
    '474167020099993640',
    '538361750651797504',
    13,
    '2020-06-14 10:56:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    605,
    '262261384941797378',
    '538361750651797504',
    6,
    '2020-06-14 11:01:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    606,
    '687141215355011258',
    '622311594654695434',
    34478,
    '2020-09-25 12:55:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    607,
    '663262541971193901',
    '538361750651797504',
    8,
    '2020-06-14 13:20:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    608,
    '535317809882988544',
    '622311594654695434',
    39,
    '2020-06-15 06:47:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    609,
    '399465007890563073',
    '622311594654695434',
    38,
    '2020-06-15 09:15:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    610,
    '493211715429728267',
    '622311594654695434',
    57,
    '2020-09-26 01:40:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    611,
    '655052924866527233',
    '622311594654695434',
    17,
    '2020-06-14 14:35:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    612,
    '393792329628254208',
    '622311594654695434',
    19,
    '2020-06-14 14:47:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    613,
    '631119759815213057',
    '538361750651797504',
    10,
    '2020-06-14 15:47:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    614,
    '599423858147065880',
    '622311594654695434',
    26,
    '2020-06-14 16:19:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    615,
    '697859343067906049',
    '622311594654695434',
    7,
    '2020-06-14 16:40:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    616,
    '459726149581406208',
    '538361750651797504',
    7,
    '2020-06-14 19:55:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    617,
    '386534953879470080',
    '538361750651797504',
    19,
    '2020-06-14 20:19:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    618,
    '397338324328775680',
    '538361750651797504',
    13,
    '2020-06-14 20:11:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    619,
    '401075775660359692',
    '622311594654695434',
    39,
    '2020-06-14 21:55:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    620,
    '721848799429132321',
    '538361750651797504',
    7,
    '2020-06-14 22:18:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    621,
    '295005357972127746',
    '622311594654695434',
    7,
    '2020-06-14 23:50:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    622,
    '345279027873054724',
    '538361750651797504',
    11,
    '2020-06-15 00:19:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    623,
    '220092041336455168',
    '622311594654695434',
    12,
    '2020-06-15 00:28:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    624,
    '707100280830951477',
    '538361750651797504',
    12,
    '2020-06-15 03:33:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    625,
    '680771525850431522',
    '622311594654695434',
    13692,
    '2020-11-11 23:38:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    626,
    '247672585289072640',
    '622311594654695434',
    24,
    '2020-06-15 06:20:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    627,
    '353517220464164874',
    '622311594654695434',
    20,
    '2020-06-15 08:56:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    628,
    '315722818606333955',
    '622311594654695434',
    238,
    '2020-09-03 09:02:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    629,
    '705485727538085888',
    '622311594654695434',
    19,
    '2020-06-26 06:12:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    630,
    '377169635025354752',
    '622311594654695434',
    39,
    '2020-06-21 09:35:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    631,
    '318111828100120576',
    '538361750651797504',
    7,
    '2020-06-16 14:21:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    632,
    '222517963763351552',
    '622311594654695434',
    48,
    '2020-08-22 06:22:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    633,
    '681199523556491317',
    '538361750651797504',
    33,
    '2020-06-30 08:08:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    634,
    '259586807094575104',
    '538361750651797504',
    21,
    '2020-06-16 15:23:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    635,
    '611579240919597086',
    '538361750651797504',
    40,
    '2020-09-03 13:55:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    636,
    '317844067067363329',
    '538361750651797504',
    11,
    '2020-06-16 15:18:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    637,
    '353996761884393473',
    '622311594654695434',
    20,
    '2020-06-21 03:10:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    638,
    '409586937620332545',
    '622311594654695434',
    11,
    '2020-06-16 16:27:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    639,
    '452218149274910741',
    '622311594654695434',
    14,
    '2020-06-16 16:32:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    640,
    '290241881869254657',
    '622311594654695434',
    11,
    '2020-06-16 16:32:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    641,
    '640298779643215902',
    '622311594654695434',
    22,
    '2020-06-18 18:02:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    642,
    '403361444764188693',
    '622311594654695434',
    147,
    '2020-09-14 15:11:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    643,
    '290873115859222529',
    '622311594654695434',
    470,
    '2020-11-07 11:14:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    644,
    '356519521260929025',
    '622311594654695434',
    11,
    '2020-06-16 17:20:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    645,
    '318849317932761109',
    '622311594654695434',
    50,
    '2020-07-06 05:33:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    646,
    '226030609745575936',
    '538361750651797504',
    10,
    '2020-06-16 22:09:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    647,
    '402516044272369664',
    '538361750651797504',
    8,
    '2020-06-16 22:12:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    648,
    '344626136673812503',
    '622311594654695434',
    12,
    '2020-06-16 22:45:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    649,
    '309373045804367883',
    '622311594654695434',
    6,
    '2020-06-16 23:17:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    650,
    '319574411579752459',
    '622311594654695434',
    18,
    '2020-06-16 23:45:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    651,
    '381629560954814468',
    '622311594654695434',
    22,
    '2020-06-17 00:23:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    652,
    '722128771011838045',
    '538361750651797504',
    14,
    '2020-06-17 00:42:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    653,
    '448635115443060737',
    '538361750651797504',
    12,
    '2020-06-17 00:44:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    654,
    '568162765454442496',
    '622311594654695434',
    6,
    '2020-06-17 01:12:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    655,
    '607740311283957780',
    '622311594654695434',
    7,
    '2020-06-17 01:40:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    656,
    '271744714514890754',
    '622311594654695434',
    10,
    '2020-06-17 02:16:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    657,
    '152925314002059265',
    '622311594654695434',
    11,
    '2020-06-17 02:27:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    658,
    '132406339329720320',
    '622311594654695434',
    22,
    '2020-06-17 03:51:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    659,
    '325291698408128522',
    '622311594654695434',
    40,
    '2020-06-20 09:01:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    660,
    '571709956470865940',
    '622311594654695434',
    213,
    '2020-10-11 01:21:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    661,
    '487099660507414528',
    '622311594654695434',
    9,
    '2020-06-17 04:42:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    662,
    '272581038838906880',
    '622311594654695434',
    14,
    '2020-06-17 05:19:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    663,
    '342255946359242754',
    '622311594654695434',
    59,
    '2020-07-08 13:42:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    664,
    '378686444811583490',
    '622311594654695434',
    12,
    '2020-06-17 05:27:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    665,
    '399563490127511562',
    '622311594654695434',
    92027,
    '2020-11-11 14:03:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    666,
    '516538679057973258',
    '622311594654695434',
    6,
    '2020-06-17 07:59:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    667,
    '224227295173410816',
    '622311594654695434',
    10,
    '2020-06-17 08:01:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    668,
    '349570242239922176',
    '622311594654695434',
    18,
    '2020-06-17 09:51:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    669,
    '230335132798681088',
    '622311594654695434',
    8,
    '2020-06-17 10:54:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    670,
    '721371062834823208',
    '538361750651797504',
    9,
    '2020-06-17 11:10:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    671,
    '631465779333693450',
    '622311594654695434',
    22,
    '2020-06-27 07:41:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    672,
    '477462589819846666',
    '622311594654695434',
    17,
    '2020-06-17 12:51:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    673,
    '362579538015813650',
    '622311594654695434',
    52,
    '2020-06-17 13:12:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    674,
    '439037396688961536',
    '622311594654695434',
    10,
    '2020-06-17 13:38:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    675,
    '721000595196215346',
    '622311594654695434',
    12,
    '2020-06-17 13:39:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    676,
    '458669070607187978',
    '622311594654695434',
    9,
    '2020-06-17 13:39:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    677,
    '471263154404589578',
    '622311594654695434',
    14,
    '2020-06-17 13:41:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    678,
    '478940424711438337',
    '622311594654695434',
    27,
    '2020-06-20 10:40:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    679,
    '291591455607357440',
    '622311594654695434',
    5,
    '2020-06-17 14:02:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    680,
    '626082279487176719',
    '622311594654695434',
    13,
    '2020-06-17 14:29:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    681,
    '720003948853067908',
    '622311594654695434',
    11,
    '2020-06-17 14:47:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    682,
    '320951927368318977',
    '622311594654695434',
    12,
    '2020-06-17 15:11:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    683,
    '422077926360481793',
    '622311594654695434',
    12,
    '2020-06-17 15:15:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    684,
    '163359289237438465',
    '622311594654695434',
    39,
    '2020-06-24 14:18:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    685,
    '659409034884939807',
    '622311594654695434',
    16,
    '2020-06-18 07:52:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    686,
    '695278883137781807',
    '622311594654695434',
    15,
    '2020-06-17 19:59:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    687,
    '380840551098089472',
    '622311594654695434',
    20,
    '2020-07-10 22:19:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    688,
    '285362290520227841',
    '622311594654695434',
    14,
    '2020-06-17 22:50:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    689,
    '408012950352429057',
    '622311594654695434',
    5,
    '2020-06-17 23:14:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    690,
    '567824819618447411',
    '622311594654695434',
    12,
    '2020-06-18 08:19:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    691,
    '530199672372068352',
    '622311594654695434',
    13,
    '2020-06-18 08:42:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    692,
    '457556815345877003',
    '538361750651797504',
    7,
    '2020-06-18 08:47:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    693,
    '491164130632400916',
    '622311594654695434',
    28,
    '2020-06-22 10:26:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    694,
    '539788619137810442',
    '538361750651797504',
    16,
    '2020-06-18 09:06:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    695,
    '525220885549023244',
    '622311594654695434',
    8,
    '2020-06-18 09:16:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    696,
    '464679482645676033',
    '538361750651797504',
    10,
    '2020-06-18 09:20:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    697,
    '601333341798793246',
    '538361750651797504',
    7,
    '2020-06-18 09:28:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    698,
    '673594001110335516',
    '538361750651797504',
    8,
    '2020-06-18 09:34:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    699,
    '565868118124003329',
    '538361750651797504',
    5,
    '2020-06-18 09:42:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    700,
    '649323031792975872',
    '538361750651797504',
    14,
    '2020-06-18 10:08:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    701,
    '657665879990861854',
    '538361750651797504',
    13,
    '2020-06-18 10:16:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    702,
    '339939008740065281',
    '538361750651797504',
    223,
    '2020-08-26 15:54:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    703,
    '545238456645845023',
    '538361750651797504',
    102,
    '2020-09-24 15:46:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    704,
    '670729434306969602',
    '538361750651797504',
    10,
    '2020-06-18 11:05:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    705,
    '452077080042143748',
    '538361750651797504',
    5,
    '2020-06-18 11:06:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    706,
    '166900508051636224',
    '622311594654695434',
    6,
    '2020-06-18 11:43:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    707,
    '188755494528221185',
    '538361750651797504',
    7,
    '2020-06-18 14:09:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    708,
    '723156261062836264',
    '538361750651797504',
    9,
    '2020-06-18 14:23:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    709,
    '560630758926974996',
    '622311594654695434',
    13,
    '2020-06-18 15:06:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    710,
    '458600978141282304',
    '622311594654695434',
    10,
    '2020-06-18 15:19:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    711,
    '659127239568261122',
    '538361750651797504',
    13,
    '2020-06-18 15:24:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    712,
    '310842441328623626',
    '622311594654695434',
    9,
    '2020-06-18 16:43:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    713,
    '613479416575688720',
    '622311594654695434',
    13,
    '2020-06-18 16:44:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    714,
    '290215143495696385',
    '538361750651797504',
    6,
    '2020-06-18 16:55:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    715,
    '519277877036974081',
    '622311594654695434',
    8,
    '2020-06-18 16:57:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    716,
    '708758706153848933',
    '622311594654695434',
    7,
    '2020-06-18 17:20:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    717,
    '327411357496377345',
    '622311594654695434',
    21,
    '2020-06-20 09:39:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    718,
    '556043384892948500',
    '622311594654695434',
    14,
    '2020-06-18 18:09:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    719,
    '105412668122214400',
    '622311594654695434',
    14,
    '2020-06-18 18:38:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    720,
    '438733159748599813',
    '538361750651797504',
    31,
    '2020-06-18 18:52:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    721,
    '598253649877008405',
    '538361750651797504',
    12,
    '2020-06-18 19:10:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    722,
    '224324118043033600',
    '622311594654695434',
    8,
    '2020-06-18 20:21:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    723,
    '506558718520066048',
    '538361750651797504',
    26,
    '2020-06-20 11:40:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    724,
    '375806832112828423',
    '622311594654695434',
    17,
    '2020-06-19 06:40:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    725,
    '673322453476442122',
    '538361750651797504',
    15,
    '2020-06-18 21:44:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    726,
    '633730629560958976',
    '538361750651797504',
    49,
    '2020-08-06 01:28:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    727,
    '674212938298425345',
    '622311594654695434',
    8,
    '2020-06-18 22:59:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    728,
    '584377785720504322',
    '538361750651797504',
    14,
    '2020-06-18 23:19:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    729,
    '404700848934092831',
    '538361750651797504',
    23,
    '2020-06-19 11:04:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    730,
    '622469169157242901',
    '622311594654695434',
    7,
    '2020-06-19 00:33:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    731,
    '286810766307229707',
    '622311594654695434',
    12,
    '2020-06-19 02:04:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    732,
    '109478875997712384',
    '622311594654695434',
    22,
    '2020-06-19 04:11:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    733,
    '579348987803598869',
    '538361750651797504',
    5,
    '2020-06-19 04:59:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    734,
    '332435621404606465',
    '622311594654695434',
    9,
    '2020-06-19 07:01:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    735,
    '300330923184881665',
    '622311594654695434',
    11,
    '2020-06-19 09:37:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    736,
    '321416024375427083',
    '622311594654695434',
    178,
    '2020-07-11 08:15:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    737,
    '341548954011566081',
    '622311594654695434',
    11,
    '2020-06-19 10:08:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    738,
    '660104395681169438',
    '538361750651797504',
    7,
    '2020-06-19 10:28:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    739,
    '587826712889524243',
    '538361750651797504',
    13,
    '2020-06-19 11:47:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    740,
    '384092935508983809',
    '622311594654695434',
    12,
    '2020-06-19 12:16:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    741,
    '323794321268670465',
    '622311594654695434',
    11,
    '2020-06-19 12:57:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    742,
    '406758451260162048',
    '622311594654695434',
    29,
    '2020-06-23 13:15:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    743,
    '458370571797921793',
    '622311594654695434',
    22,
    '2020-06-19 14:39:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    744,
    '658369291183194122',
    '622311594654695434',
    14,
    '2020-06-19 15:13:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    745,
    '569945671734525967',
    '538361750651797504',
    20,
    '2020-06-19 16:35:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    746,
    '445459051237736448',
    '622311594654695434',
    6,
    '2020-06-19 17:07:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    747,
    '564154747733409833',
    '622311594654695434',
    5,
    '2020-06-19 17:07:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    748,
    '482247978833281026',
    '538361750651797504',
    6,
    '2020-06-19 23:31:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    749,
    '386671797719793674',
    '622311594654695434',
    10,
    '2020-06-20 03:15:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    750,
    '546617397084422144',
    '622311594654695434',
    11,
    '2020-06-20 03:17:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    751,
    '308068669085450241',
    '622311594654695434',
    13,
    '2020-06-20 09:00:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    752,
    '299250544831102976',
    '622311594654695434',
    6,
    '2020-06-20 09:32:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    753,
    '310779480983732224',
    '622311594654695434',
    15,
    '2020-06-20 09:34:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    754,
    '447342345453830154',
    '622311594654695434',
    10,
    '2020-06-20 11:58:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    755,
    '487542732114493450',
    '622311594654695434',
    23,
    '2020-08-27 11:57:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    756,
    '425449720555765780',
    '538361750651797504',
    6,
    '2020-06-20 13:47:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    757,
    '422793501231546389',
    '622311594654695434',
    39,
    '2020-06-20 15:07:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    758,
    '180470951492714496',
    '622311594654695434',
    38,
    '2020-06-21 03:15:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    759,
    '481486582235529236',
    '622311594654695434',
    10,
    '2020-06-20 15:54:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    760,
    '359105587210092555',
    '622311594654695434',
    15,
    '2020-06-20 16:03:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    761,
    '467586447029960705',
    '622311594654695434',
    15,
    '2020-06-20 16:05:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    762,
    '183322656668516353',
    '622311594654695434',
    11,
    '2020-06-20 16:19:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    763,
    '723933862857539655',
    '622311594654695434',
    25,
    '2020-07-02 12:49:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    764,
    '522544701497147394',
    '622311594654695434',
    6,
    '2020-06-20 16:39:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    765,
    '434125287685619732',
    '538361750651797504',
    14,
    '2020-06-20 18:17:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    766,
    '259756910297743361',
    '622311594654695434',
    12,
    '2020-06-20 18:20:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    767,
    '220597715992707072',
    '622311594654695434',
    14,
    '2020-06-20 18:20:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    768,
    '493529668381704203',
    '622311594654695434',
    6,
    '2020-06-20 20:48:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    769,
    '598249717159165962',
    '622311594654695434',
    13,
    '2020-06-20 20:53:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    770,
    '439868780244369439',
    '622311594654695434',
    20,
    '2020-06-20 21:30:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    771,
    '100463817967816704',
    '622311594654695434',
    20,
    '2020-06-20 21:25:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    772,
    '541643764259618840',
    '622311594654695434',
    29,
    '2020-06-22 19:14:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    773,
    '465580446584143872',
    '538361750651797504',
    8,
    '2020-06-20 23:44:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    774,
    '231807520614776832',
    '622311594654695434',
    9,
    '2020-06-21 01:02:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    775,
    '561630310639599635',
    '622311594654695434',
    7,
    '2020-06-21 01:22:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    776,
    '296719043820519434',
    '622311594654695434',
    15,
    '2020-06-21 04:48:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    777,
    '435465524202176522',
    '622311594654695434',
    17,
    '2020-08-07 10:50:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    778,
    '367834090612981771',
    '538361750651797504',
    7,
    '2020-06-21 05:27:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    779,
    '442822249708388352',
    '622311594654695434',
    9,
    '2020-06-21 05:35:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    780,
    '218403318358081537',
    '622311594654695434',
    10,
    '2020-06-21 07:02:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    781,
    '416847496573353985',
    '538361750651797504',
    6,
    '2020-06-21 08:21:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    782,
    '374993675882725406',
    '622311594654695434',
    23065,
    '2020-10-25 19:24:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    783,
    '343758782544871425',
    '622311594654695434',
    19,
    '2020-06-21 17:58:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    784,
    '536615068721479700',
    '622311594654695434',
    10,
    '2020-06-21 09:24:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    785,
    '425669515381178378',
    '538361750651797504',
    6,
    '2020-06-21 09:27:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    786,
    '287876668024946688',
    '622311594654695434',
    33,
    '2020-06-21 14:05:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    787,
    '709435853193085049',
    '622311594654695434',
    7,
    '2020-06-21 10:54:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    788,
    '396251501003014145',
    '622311594654695434',
    8,
    '2020-06-21 10:56:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    789,
    '511539907995500545',
    '622311594654695434',
    7,
    '2020-06-21 11:27:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    790,
    '471396466125045761',
    '622311594654695434',
    13,
    '2020-06-21 11:42:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    791,
    '520253264110026762',
    '622311594654695434',
    9,
    '2020-06-21 11:51:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    792,
    '549285867337023496',
    '622311594654695434',
    20,
    '2020-06-24 14:22:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    793,
    '327377824690339841',
    '622311594654695434',
    6,
    '2020-06-21 12:17:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    794,
    '724236753577181236',
    '622311594654695434',
    18,
    '2020-06-21 12:27:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    795,
    '441842679446241290',
    '622311594654695434',
    26,
    '2020-06-24 13:49:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    796,
    '687688572173549614',
    '538361750651797504',
    10,
    '2020-06-21 12:43:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    797,
    '705138877773512824',
    '622311594654695434',
    6,
    '2020-06-21 13:07:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    798,
    '259385308360081408',
    '622311594654695434',
    24,
    '2020-06-21 13:28:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    799,
    '698863694960132128',
    '622311594654695434',
    7,
    '2020-06-21 13:52:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    800,
    '512681589763997707',
    '622311594654695434',
    6,
    '2020-06-21 14:17:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    801,
    '219111517877043200',
    '622311594654695434',
    8,
    '2020-06-21 15:26:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    802,
    '697434052906582037',
    '622311594654695434',
    10,
    '2020-06-21 16:00:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    803,
    '392830850649030667',
    '622311594654695434',
    413,
    '2020-10-11 06:14:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    804,
    '237035543718920192',
    '622311594654695434',
    23,
    '2020-06-21 17:13:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    805,
    '226797125797806090',
    '622311594654695434',
    10,
    '2020-06-21 17:17:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    806,
    '527879652556144640',
    '622311594654695434',
    20,
    '2020-06-22 20:29:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    807,
    '420214226402148372',
    '622311594654695434',
    13,
    '2020-06-21 17:36:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    808,
    '380842676070907904',
    '622311594654695434',
    14,
    '2020-06-21 17:57:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    809,
    '167803028760428544',
    '622311594654695434',
    9,
    '2020-06-21 21:06:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    810,
    '393055754124525578',
    '538361750651797504',
    6,
    '2020-06-21 22:07:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    811,
    '409670519055581195',
    '622311594654695434',
    15,
    '2020-06-21 22:12:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    812,
    '352994285454360576',
    '622311594654695434',
    25,
    '2020-08-26 23:21:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    813,
    '457093206258089996',
    '622311594654695434',
    29,
    '2020-06-23 11:46:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    814,
    '277449713085841408',
    '622311594654695434',
    56,
    '2020-06-22 01:44:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    815,
    '198568339109314560',
    '622311594654695434',
    68,
    '2020-07-14 17:56:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    816,
    '282231592762736640',
    '622311594654695434',
    12,
    '2020-06-22 04:55:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    817,
    '335806541015941121',
    '622311594654695434',
    1860,
    '2020-08-31 04:32:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    818,
    '238458279888420864',
    '538361750651797504',
    90,
    '2020-08-24 06:01:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    819,
    '306399269353553920',
    '622311594654695434',
    9,
    '2020-06-22 07:33:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    820,
    '238736842113941504',
    '622311594654695434',
    23,
    '2020-06-22 08:08:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    821,
    '189309138185093120',
    '622311594654695434',
    18,
    '2020-06-22 10:47:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    822,
    '263021151914033154',
    '622311594654695434',
    6,
    '2020-06-22 10:57:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    823,
    '540831910620823574',
    '622311594654695434',
    6,
    '2020-06-22 11:01:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    824,
    '724577598801313792',
    '622311594654695434',
    82,
    '2020-09-23 14:11:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    825,
    '436295051920801792',
    '622311594654695434',
    6,
    '2020-06-22 11:51:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    826,
    '292260051098271744',
    '622311594654695434',
    27,
    '2020-08-09 11:42:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    827,
    '544515505956847616',
    '622311594654695434',
    19,
    '2020-07-06 13:38:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    828,
    '393587142753910797',
    '622311594654695434',
    1794,
    '2020-10-04 09:05:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    829,
    '432116631318167554',
    '622311594654695434',
    6,
    '2020-06-22 17:17:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    830,
    '642791754160013312',
    '538361750651797504',
    20,
    '2020-06-22 18:31:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    831,
    '228930599434321922',
    '622311594654695434',
    13,
    '2020-06-22 18:50:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    832,
    '713570070957129798',
    '538361750651797504',
    8,
    '2020-06-22 20:16:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    833,
    '368092069350211594',
    '622311594654695434',
    14,
    '2020-06-22 21:16:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    834,
    '724755226615218196',
    '622311594654695434',
    14,
    '2020-06-22 22:39:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    835,
    '400309391213199362',
    '622311594654695434',
    14,
    '2020-07-05 11:45:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    836,
    '524733505813348365',
    '622311594654695434',
    12,
    '2020-06-22 23:56:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    837,
    '554461575105216513',
    '622311594654695434',
    5,
    '2020-06-23 00:28:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    838,
    '448580205834010625',
    '622311594654695434',
    11,
    '2020-06-23 00:42:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    839,
    '288447209186394113',
    '622311594654695434',
    10,
    '2020-06-23 01:55:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    840,
    '609577083688976384',
    '622311594654695434',
    19,
    '2020-06-23 02:07:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    841,
    '548274310725238805',
    '622311594654695434',
    10,
    '2020-06-23 02:06:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    842,
    '659910304553238530',
    '622311594654695434',
    11,
    '2020-06-23 02:40:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    843,
    '541377030697123840',
    '622311594654695434',
    26,
    '2020-09-02 12:25:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    844,
    '476045845670658050',
    '622311594654695434',
    7,
    '2020-06-23 03:17:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    845,
    '178584187878637579',
    '622311594654695434',
    8,
    '2020-06-23 05:13:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    846,
    '462023294246191115',
    '622311594654695434',
    9,
    '2020-06-23 05:24:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    847,
    '334553910520053762',
    '622311594654695434',
    7,
    '2020-06-23 08:24:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    848,
    '482066902118563840',
    '622311594654695434',
    8,
    '2020-06-23 08:26:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    849,
    '606475268516872228',
    '622311594654695434',
    35,
    '2020-06-23 11:26:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    850,
    '393583916382027790',
    '622311594654695434',
    23,
    '2020-06-23 12:01:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    851,
    '374277735050248193',
    '622311594654695434',
    11,
    '2020-06-23 11:57:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    852,
    '495170985323134977',
    '622311594654695434',
    8,
    '2020-06-23 14:01:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    853,
    '454714388528758784',
    '622311594654695434',
    9,
    '2020-06-23 14:07:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    854,
    '724027247564161084',
    '538361750651797504',
    6,
    '2020-06-23 14:23:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    855,
    '411984683832967169',
    '622311594654695434',
    10,
    '2020-06-23 14:38:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    856,
    '359716390157942784',
    '622311594654695434',
    44,
    '2020-07-23 10:30:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    857,
    '275058879136530432',
    '622311594654695434',
    14,
    '2020-06-23 19:40:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    858,
    '705212839383793757',
    '538361750651797504',
    13,
    '2020-06-23 21:50:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    859,
    '618595764716699669',
    '622311594654695434',
    39,
    '2020-08-13 16:12:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    860,
    '351511713218035716',
    '622311594654695434',
    20,
    '2020-06-24 00:42:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    861,
    '135226171850752000',
    '622311594654695434',
    8,
    '2020-06-23 23:06:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    862,
    '452921304241274890',
    '538361750651797504',
    13,
    '2020-06-23 23:31:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    863,
    '691910893524746300',
    '622311594654695434',
    13,
    '2020-06-24 00:21:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    864,
    '662514945384251392',
    '622311594654695434',
    13,
    '2020-06-24 00:30:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    865,
    '411579723936956416',
    '622311594654695434',
    68,
    '2020-08-30 10:58:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    866,
    '363433049658097685',
    '622311594654695434',
    9,
    '2020-06-24 02:23:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    867,
    '292364428110856192',
    '622311594654695434',
    100,
    '2020-11-08 10:24:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    868,
    '340987681196736512',
    '538361750651797504',
    9,
    '2020-06-24 09:03:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    869,
    '543558312336031745',
    '622311594654695434',
    19,
    '2020-07-16 18:36:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    870,
    '290762348438880266',
    '622311594654695434',
    209,
    '2020-09-12 00:16:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    871,
    '683364688427614270',
    '622311594654695434',
    24,
    '2020-08-08 14:37:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    872,
    '464830412179374091',
    '622311594654695434',
    33,
    '2020-07-04 10:54:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    873,
    '717047359225462855',
    '622311594654695434',
    15,
    '2020-06-24 13:25:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    874,
    '250892180325924864',
    '622311594654695434',
    7,
    '2020-06-24 14:22:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    875,
    '430286764435963904',
    '622311594654695434',
    16,
    '2020-07-15 07:22:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    876,
    '385424322732490753',
    '622311594654695434',
    63,
    '2020-07-14 07:53:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    877,
    '190712048865378304',
    '622311594654695434',
    9,
    '2020-06-24 14:34:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    878,
    '486657704140734474',
    '622311594654695434',
    26,
    '2020-06-24 21:18:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    879,
    '623557000948875274',
    '538361750651797504',
    141,
    '2020-08-08 07:30:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    880,
    '434351173198151680',
    '622311594654695434',
    10,
    '2020-06-24 14:57:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    881,
    '687782619617951804',
    '538361750651797504',
    26,
    '2020-06-24 15:05:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    882,
    '302529731591536641',
    '622311594654695434',
    55,
    '2020-08-20 17:09:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    883,
    '406817041157193728',
    '538361750651797504',
    5,
    '2020-06-24 16:29:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    884,
    '319509177816842242',
    '622311594654695434',
    6,
    '2020-06-24 17:21:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    885,
    '414203301341429762',
    '622311594654695434',
    26,
    '2020-07-23 23:23:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    886,
    '418559730647302159',
    '622311594654695434',
    10,
    '2020-06-24 20:08:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    887,
    '696121006326153226',
    '622311594654695434',
    10,
    '2020-06-24 20:20:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    888,
    '529752122955137035',
    '622311594654695434',
    601,
    '2020-10-04 15:00:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    889,
    '471309947024572427',
    '622311594654695434',
    14,
    '2020-06-25 03:52:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    890,
    '405983191451828225',
    '538361750651797504',
    17,
    '2020-06-26 11:40:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    891,
    '567723727689875507',
    '622311594654695434',
    10,
    '2020-06-25 04:06:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    892,
    '494518720157188096',
    '538361750651797504',
    7,
    '2020-06-25 04:42:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    893,
    '502231348585562116',
    '622311594654695434',
    3060,
    '2020-11-10 09:48:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    894,
    '408466367097077781',
    '622311594654695434',
    14379,
    '2020-11-09 03:55:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    895,
    '350671665254105091',
    '622311594654695434',
    8,
    '2020-06-25 06:29:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    896,
    '437613023654576129',
    '538361750651797504',
    11,
    '2020-06-25 07:01:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    897,
    '584608430061256704',
    '622311594654695434',
    7,
    '2020-06-25 08:06:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    898,
    '331785411439493120',
    '622311594654695434',
    11,
    '2020-06-25 09:35:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    899,
    '663113544014757948',
    '622311594654695434',
    21,
    '2020-06-25 14:46:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    900,
    '725729175830528061',
    '538361750651797504',
    7,
    '2020-06-25 15:25:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    901,
    '703278149852725352',
    '538361750651797504',
    6,
    '2020-06-25 16:36:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    902,
    '369564132770578432',
    '538361750651797504',
    8,
    '2020-06-25 16:37:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    903,
    '693530996343308309',
    '622311594654695434',
    69,
    '2020-07-08 11:42:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    904,
    '458292566115352576',
    '538361750651797504',
    13,
    '2020-06-25 18:02:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    905,
    '689111714888679451',
    '538361750651797504',
    10,
    '2020-06-25 18:03:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    906,
    '697429750552985671',
    '538361750651797504',
    22,
    '2020-06-25 18:12:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    907,
    '243853160458878978',
    '622311594654695434',
    5,
    '2020-06-25 19:31:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    908,
    '366581263194259456',
    '622311594654695434',
    8,
    '2020-06-26 02:40:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    909,
    '684806056203124757',
    '538361750651797504',
    74,
    '2020-08-13 10:51:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    910,
    '564817180307357697',
    '622311594654695434',
    8,
    '2020-06-26 08:48:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    911,
    '534975799523016714',
    '622311594654695434',
    24,
    '2020-06-30 10:28:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    912,
    '578581639572094986',
    '622311594654695434',
    28,
    '2020-09-14 07:05:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    913,
    '309329219400368128',
    '622311594654695434',
    32,
    '2020-06-26 11:10:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    914,
    '292821168833036288',
    '538361750651797504',
    9,
    '2020-06-26 14:39:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    915,
    '445939150131167233',
    '538361750651797504',
    15,
    '2020-06-26 14:47:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    916,
    '396545298069061642',
    '622311594654695434',
    14,
    '2020-08-11 18:36:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    917,
    '249636651217846273',
    '538361750651797504',
    28,
    '2020-06-27 07:01:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    918,
    '467136246292938764',
    '538361750651797504',
    58,
    '2020-06-27 01:57:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    919,
    '277146350154547202',
    '622311594654695434',
    13,
    '2020-06-26 15:48:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    920,
    '616056511373770779',
    '538361750651797504',
    10,
    '2020-06-26 17:17:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    921,
    '725405642780573697',
    '538361750651797504',
    12,
    '2020-06-26 21:53:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    922,
    '507520695224238090',
    '538361750651797504',
    9,
    '2020-06-26 22:15:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    923,
    '613550944961167360',
    '622311594654695434',
    9,
    '2020-06-26 23:01:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    924,
    '707557056000819241',
    '622311594654695434',
    11,
    '2020-06-27 00:33:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    925,
    '282307410423578634',
    '622311594654695434',
    20,
    '2020-06-27 02:06:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    926,
    '334695260322267136',
    '622311594654695434',
    7,
    '2020-06-27 01:22:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    927,
    '484640599694114826',
    '622311594654695434',
    15,
    '2020-06-27 04:07:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    928,
    '312263318976987137',
    '538361750651797504',
    60,
    '2020-06-28 18:16:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    929,
    '496161735544274994',
    '538361750651797504',
    5,
    '2020-06-27 05:19:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    930,
    '489949296477601793',
    '622311594654695434',
    15,
    '2020-06-27 05:28:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    931,
    '494642555388952587',
    '622311594654695434',
    28,
    '2020-06-27 05:49:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    932,
    '607216771782541324',
    '622311594654695434',
    18,
    '2020-06-27 07:40:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    933,
    '654317580319719425',
    '622311594654695434',
    18,
    '2020-06-27 07:57:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    934,
    '649945993625731072',
    '622311594654695434',
    10,
    '2020-06-27 07:42:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    935,
    '362540655094005761',
    '622311594654695434',
    7,
    '2020-06-27 07:44:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    936,
    '686530622562238484',
    '622311594654695434',
    10,
    '2020-06-27 07:45:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    937,
    '532257729356759061',
    '622311594654695434',
    14,
    '2020-06-27 07:45:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    938,
    '510111280326115328',
    '622311594654695434',
    27,
    '2020-08-07 15:02:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    939,
    '386208879706636288',
    '622311594654695434',
    12,
    '2020-10-10 17:57:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    940,
    '595605896676114464',
    '622311594654695434',
    19,
    '2020-06-27 08:45:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    941,
    '684347105346977854',
    '622311594654695434',
    8,
    '2020-06-27 08:58:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    942,
    '676383277778468864',
    '622311594654695434',
    62,
    '2020-07-16 01:33:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    943,
    '410774625820082176',
    '622311594654695434',
    27,
    '2020-08-18 17:41:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    944,
    '306972278493544459',
    '538361750651797504',
    15,
    '2020-06-27 11:36:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    945,
    '615544583371227148',
    '622311594654695434',
    28,
    '2020-06-27 13:02:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    946,
    '281966983795310615',
    '622311594654695434',
    12183,
    '2020-11-08 13:37:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    947,
    '488271106814246924',
    '622311594654695434',
    97,
    '2020-08-12 05:02:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    948,
    '499952031960662036',
    '622311594654695434',
    9,
    '2020-06-27 13:28:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    949,
    '659753532349612043',
    '622311594654695434',
    11,
    '2020-06-27 14:39:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    950,
    '465787623483375617',
    '622311594654695434',
    61,
    '2020-09-26 15:37:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    951,
    '198414910391189516',
    '538361750651797504',
    16,
    '2020-08-14 16:19:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    952,
    '305803525093457921',
    '622311594654695434',
    10,
    '2020-06-27 17:39:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    953,
    '196757299245744128',
    '622311594654695434',
    24,
    '2020-07-09 07:35:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    954,
    '692922090495410247',
    '622311594654695434',
    6,
    '2020-06-27 20:01:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    955,
    '381095881493053443',
    '622311594654695434',
    29,
    '2020-07-16 19:43:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    956,
    '230128867195486218',
    '622311594654695434',
    8,
    '2020-06-27 23:19:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    957,
    '245711229631463436',
    '622311594654695434',
    8,
    '2020-06-28 01:19:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    958,
    '504497652872904715',
    '622311594654695434',
    5,
    '2020-06-28 01:26:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    959,
    '336721178813267969',
    '622311594654695434',
    21,
    '2020-07-05 21:34:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    960,
    '366648111025618956',
    '622311594654695434',
    29,
    '2020-08-03 22:19:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    961,
    '392414280982724608',
    '622311594654695434',
    25,
    '2020-06-28 01:28:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    962,
    '407173543168704514',
    '622311594654695434',
    10,
    '2020-06-28 01:31:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    963,
    '515876156189179904',
    '622311594654695434',
    39,
    '2020-08-18 03:30:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    964,
    '259858166718660608',
    '622311594654695434',
    14,
    '2020-06-28 01:32:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    965,
    '508872861281419275',
    '622311594654695434',
    19,
    '2020-10-11 08:17:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    966,
    '317279174123323394',
    '622311594654695434',
    7,
    '2020-06-28 01:40:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    967,
    '351746477040599040',
    '622311594654695434',
    13,
    '2020-06-28 01:51:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    968,
    '590327623075233848',
    '622311594654695434',
    7,
    '2020-06-28 01:53:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    969,
    '585227180892749891',
    '622311594654695434',
    59,
    '2020-09-08 22:54:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    970,
    '361782704078979072',
    '622311594654695434',
    13,
    '2020-06-28 02:09:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    971,
    '569617303910613003',
    '622311594654695434',
    7,
    '2020-06-28 02:11:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    972,
    '438554143309824013',
    '622311594654695434',
    13,
    '2020-06-28 02:28:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    973,
    '554104654716207104',
    '622311594654695434',
    17,
    '2020-06-28 02:58:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    974,
    '437747082225385482',
    '622311594654695434',
    163,
    '2020-10-01 16:31:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    975,
    '286959890969133072',
    '622311594654695434',
    14,
    '2020-06-28 03:14:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    976,
    '688312371986432105',
    '622311594654695434',
    10,
    '2020-06-28 03:21:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    977,
    '323847118639071234',
    '622311594654695434',
    92,
    '2020-07-20 05:46:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    978,
    '423378934554558464',
    '622311594654695434',
    12,
    '2020-06-28 04:22:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    979,
    '290141465693126656',
    '622311594654695434',
    24,
    '2020-09-09 05:45:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    980,
    '343337319539015690',
    '622311594654695434',
    12,
    '2020-06-28 04:50:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    981,
    '721315735967891456',
    '622311594654695434',
    81,
    '2020-07-25 05:18:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    982,
    '371821750289301516',
    '622311594654695434',
    21,
    '2020-07-12 05:42:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    983,
    '346337295151923203',
    '622311594654695434',
    18,
    '2020-10-15 19:03:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    984,
    '265511839616598017',
    '622311594654695434',
    9,
    '2020-06-28 05:48:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    985,
    '688347346261639208',
    '622311594654695434',
    468,
    '2020-09-06 11:57:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    986,
    '668967620590043179',
    '622311594654695434',
    13,
    '2020-06-28 07:21:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    987,
    '380393118740119553',
    '622311594654695434',
    23,
    '2020-06-28 07:39:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    988,
    '483010187461132316',
    '622311594654695434',
    7,
    '2020-06-28 08:31:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    989,
    '487573541898944522',
    '622311594654695434',
    7,
    '2020-06-28 11:41:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    990,
    '113701862720405510',
    '622311594654695434',
    22,
    '2020-06-28 13:23:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    991,
    '676883443942162434',
    '622311594654695434',
    2826,
    '2020-10-11 00:19:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    992,
    '392196649536978944',
    '622311594654695434',
    13,
    '2020-06-28 14:34:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    993,
    '427646205598629889',
    '622311594654695434',
    83,
    '2020-07-13 17:59:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    994,
    '389135924350418944',
    '622311594654695434',
    11,
    '2020-06-28 18:14:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    995,
    '526594471153106974',
    '622311594654695434',
    6,
    '2020-06-29 00:22:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    996,
    '714098410353066045',
    '622311594654695434',
    7,
    '2020-06-29 04:57:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    997,
    '562051515196375050',
    '622311594654695434',
    13,
    '2020-06-29 05:04:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    998,
    '672671669210316831',
    '622311594654695434',
    7,
    '2020-06-29 05:19:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    999,
    '348608678942998540',
    '622311594654695434',
    12,
    '2020-06-29 05:21:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1000,
    '502468631997710346',
    '622311594654695434',
    3549,
    '2020-11-11 07:27:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1001,
    '626731248181575681',
    '622311594654695434',
    378,
    '2020-10-06 08:47:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1002,
    '497798509836107788',
    '538361750651797504',
    10,
    '2020-06-29 06:37:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1003,
    '570173743033221125',
    '622311594654695434',
    13,
    '2020-06-29 06:49:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1004,
    '263513526491021313',
    '622311594654695434',
    32,
    '2020-07-01 10:29:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1005,
    '584169284205412352',
    '622311594654695434',
    8,
    '2020-06-29 07:35:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1006,
    '727065374994071553',
    '622311594654695434',
    34,
    '2020-08-30 08:59:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1007,
    '255446045985734656',
    '622311594654695434',
    5,
    '2020-06-29 08:46:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1008,
    '680230387661930634',
    '538361750651797504',
    12,
    '2020-06-29 10:11:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1009,
    '279746978265563136',
    '622311594654695434',
    9,
    '2020-06-29 12:12:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1010,
    '493443922413223946',
    '622311594654695434',
    6,
    '2020-06-29 12:17:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1011,
    '694608393993715792',
    '622311594654695434',
    609,
    '2020-07-22 10:18:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1012,
    '559614852188864524',
    '622311594654695434',
    8,
    '2020-06-29 12:27:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1013,
    '400989806735261716',
    '622311594654695434',
    6,
    '2020-06-29 12:33:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1014,
    '638748271363358720',
    '622311594654695434',
    10,
    '2020-06-29 12:51:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1015,
    '181322150131531777',
    '622311594654695434',
    9,
    '2020-06-29 13:44:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1016,
    '410715688777285635',
    '622311594654695434',
    577,
    '2020-08-14 05:24:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1017,
    '355742603691687937',
    '538361750651797504',
    18,
    '2020-09-03 21:24:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1018,
    '501770890397351937',
    '622311594654695434',
    12,
    '2020-06-29 14:01:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1019,
    '613750137612926996',
    '622311594654695434',
    122,
    '2020-07-22 19:28:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1020,
    '700770178312568904',
    '622311594654695434',
    13,
    '2020-06-29 16:20:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1021,
    '404335310797799434',
    '622311594654695434',
    9,
    '2020-06-29 16:55:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1022,
    '321566831670198272',
    '538361750651797504',
    8,
    '2020-06-29 17:34:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1023,
    '394952747092410368',
    '622311594654695434',
    15,
    '2020-06-29 18:22:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1024,
    '476142277362843660',
    '538361750651797504',
    6,
    '2020-06-29 18:52:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1025,
    '586959591963623497',
    '622311594654695434',
    10,
    '2020-06-29 23:49:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1026,
    '148586206177918976',
    '622311594654695434',
    6,
    '2020-06-30 01:40:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1027,
    '307468800125829120',
    '622311594654695434',
    562,
    '2020-11-09 07:21:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1028,
    '487047549522411524',
    '622311594654695434',
    10,
    '2020-06-30 03:28:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1029,
    '605221261672579072',
    '622311594654695434',
    534,
    '2020-08-20 13:05:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1030,
    '519232071215087626',
    '622311594654695434',
    15,
    '2020-06-30 04:05:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1031,
    '318811825590370335',
    '622311594654695434',
    5,
    '2020-06-30 05:04:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1032,
    '238512963277815820',
    '622311594654695434',
    46,
    '2020-07-14 15:58:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1033,
    '353461282281881600',
    '622311594654695434',
    7,
    '2020-06-30 09:25:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1034,
    '474675919957655562',
    '622311594654695434',
    20,
    '2020-07-04 09:02:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1035,
    '680405482766467091',
    '622311594654695434',
    52,
    '2020-10-10 15:04:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1036,
    '592074415794159776',
    '622311594654695434',
    7,
    '2020-06-30 12:06:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1037,
    '407542202710097922',
    '622311594654695434',
    22,
    '2020-07-06 13:38:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1038,
    '513185493266071572',
    '622311594654695434',
    12,
    '2020-06-30 15:00:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1039,
    '585978500704632833',
    '538361750651797504',
    16,
    '2020-06-30 18:37:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1040,
    '554654903256088576',
    '538361750651797504',
    10,
    '2020-06-30 18:39:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1041,
    '554621527266557953',
    '538361750651797504',
    9,
    '2020-06-30 18:41:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1042,
    '419525982857199618',
    '538361750651797504',
    5,
    '2020-06-30 20:50:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1043,
    '286747872496582656',
    '622311594654695434',
    36,
    '2020-07-12 12:10:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1044,
    '604367327630458908',
    '538361750651797504',
    5,
    '2020-07-01 00:16:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1045,
    '394346389901017088',
    '622311594654695434',
    13,
    '2020-07-01 04:27:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1046,
    '709939770284965928',
    '622311594654695434',
    9,
    '2020-07-01 09:27:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1047,
    '371175365525372929',
    '622311594654695434',
    937,
    '2020-11-10 23:54:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1048,
    '491235102685265930',
    '622311594654695434',
    186,
    '2020-08-26 07:18:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1049,
    '332868625134387202',
    '538361750651797504',
    5,
    '2020-07-01 11:43:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1050,
    '257325989003001876',
    '622311594654695434',
    23,
    '2020-07-01 14:16:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1051,
    '690272647292256306',
    '622311594654695434',
    185,
    '2020-08-28 21:49:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1052,
    '411054093058965504',
    '622311594654695434',
    6,
    '2020-07-02 06:23:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1053,
    '284474297030934528',
    '622311594654695434',
    14,
    '2020-07-02 07:09:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1054,
    '699291639142940742',
    '538361750651797504',
    71,
    '2020-07-02 10:55:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1055,
    '486659273905143808',
    '622311594654695434',
    8,
    '2020-07-02 11:09:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1056,
    '403514874820427787',
    '538361750651797504',
    10,
    '2020-07-02 11:59:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1057,
    '653676213243740181',
    '538361750651797504',
    52,
    '2020-07-17 21:28:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1058,
    '533855311476293652',
    '622311594654695434',
    24,
    '2020-07-11 08:29:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1059,
    '216253646860451840',
    '622311594654695434',
    14,
    '2020-07-02 14:22:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1060,
    '290162276369956866',
    '622311594654695434',
    21,
    '2020-07-02 14:24:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1061,
    '566002829022461982',
    '622311594654695434',
    114,
    '2020-08-16 04:39:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1062,
    '388396674860711940',
    '622311594654695434',
    13,
    '2020-07-02 17:43:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1063,
    '550112433440686131',
    '622311594654695434',
    6,
    '2020-07-02 18:37:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1064,
    '454346808852742146',
    '538361750651797504',
    11,
    '2020-07-02 18:46:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1065,
    '479025148931080193',
    '538361750651797504',
    10,
    '2020-07-02 20:42:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1066,
    '382322046459314177',
    '622311594654695434',
    11,
    '2020-07-02 22:46:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1067,
    '302957933795213312',
    '622311594654695434',
    10,
    '2020-07-02 23:59:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1068,
    '286672007070744586',
    '622311594654695434',
    24,
    '2020-07-03 00:02:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1069,
    '298204046714470400',
    '622311594654695434',
    20,
    '2020-07-03 00:03:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1070,
    '329601190440599555',
    '622311594654695434',
    10,
    '2020-07-03 00:02:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1071,
    '249070232935727106',
    '622311594654695434',
    21,
    '2020-07-03 00:05:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1072,
    '287029349105008641',
    '622311594654695434',
    36,
    '2020-07-25 22:20:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1073,
    '531230672996794368',
    '622311594654695434',
    9,
    '2020-07-03 00:34:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1074,
    '325396951581327360',
    '622311594654695434',
    14,
    '2020-07-03 03:04:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1075,
    '300170833085857793',
    '622311594654695434',
    51,
    '2020-08-20 07:12:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1076,
    '497926367325716490',
    '622311594654695434',
    21,
    '2020-07-12 05:43:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1077,
    '685247377325817886',
    '622311594654695434',
    10,
    '2020-07-03 05:14:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1078,
    '592790305032634382',
    '622311594654695434',
    36,
    '2020-07-10 05:16:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1079,
    '485629306568048670',
    '622311594654695434',
    8,
    '2020-07-03 07:29:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1080,
    '402004665614729216',
    '622311594654695434',
    147,
    '2020-10-30 07:03:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1081,
    '721711048133967882',
    '538361750651797504',
    7,
    '2020-07-03 08:12:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1082,
    '308592076487131136',
    '622311594654695434',
    313,
    '2020-10-08 09:00:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1083,
    '307976223777357835',
    '622311594654695434',
    263,
    '2020-11-11 07:04:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1084,
    '406390710011428865',
    '622311594654695434',
    23,
    '2020-07-06 10:29:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1085,
    '588331785025486859',
    '538361750651797504',
    13,
    '2020-07-03 17:53:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1086,
    '263743250991415297',
    '622311594654695434',
    32,
    '2020-08-03 07:11:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1087,
    '714283373299892316',
    '622311594654695434',
    26,
    '2020-08-27 23:55:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1088,
    '270167905872773120',
    '538361750651797504',
    7,
    '2020-07-03 19:21:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1089,
    '374288377903579136',
    '622311594654695434',
    8,
    '2020-07-03 20:52:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1090,
    '283808068385505282',
    '622311594654695434',
    10,
    '2020-07-03 21:07:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1091,
    '436258213432918023',
    '622311594654695434',
    11,
    '2020-07-03 21:18:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1092,
    '677350039147773962',
    '622311594654695434',
    552,
    '2020-08-07 16:03:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1093,
    '283402574621704192',
    '622311594654695434',
    14,
    '2020-07-04 02:58:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1094,
    '503372434104123402',
    '622311594654695434',
    12,
    '2020-07-04 03:40:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1095,
    '418972590783332352',
    '538361750651797504',
    48,
    '2020-07-08 08:04:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1096,
    '600937807514697788',
    '622311594654695434',
    6,
    '2020-07-04 05:20:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1097,
    '606430689268858926',
    '622311594654695434',
    77272,
    '2020-10-03 11:09:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1098,
    '718653117364699137',
    '622311594654695434',
    8,
    '2020-07-04 07:58:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1099,
    '199150059462459392',
    '622311594654695434',
    108,
    '2020-07-05 20:26:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1100,
    '539127018118316064',
    '622311594654695434',
    14,
    '2020-07-04 09:40:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1101,
    '676421785633423400',
    '622311594654695434',
    12,
    '2020-07-04 11:45:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1102,
    '523801642873913345',
    '622311594654695434',
    7,
    '2020-07-04 11:45:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1103,
    '558399605612609586',
    '622311594654695434',
    6,
    '2020-07-04 12:07:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1104,
    '279566595095920651',
    '622311594654695434',
    6,
    '2020-07-04 12:08:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1105,
    '609207695530000407',
    '622311594654695434',
    22,
    '2020-09-06 11:59:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1106,
    '332143917632061451',
    '622311594654695434',
    6,
    '2020-07-04 13:23:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1107,
    '707600269319602249',
    '622311594654695434',
    10,
    '2020-07-04 23:14:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1108,
    '267329061242535956',
    '622311594654695434',
    6,
    '2020-07-05 02:24:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1109,
    '498563556413931543',
    '622311594654695434',
    15,
    '2020-07-05 06:41:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1110,
    '427400939763400704',
    '538361750651797504',
    6,
    '2020-07-05 09:47:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1111,
    '599957351495106560',
    '622311594654695434',
    109,
    '2020-07-10 12:55:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1112,
    '544144686596751382',
    '622311594654695434',
    418,
    '2020-10-08 02:51:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1113,
    '276481275907276803',
    '622311594654695434',
    9,
    '2020-07-05 11:10:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1114,
    '553872528490233858',
    '622311594654695434',
    6,
    '2020-07-05 11:16:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1115,
    '431445311324553216',
    '622311594654695434',
    6,
    '2020-07-05 11:21:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1116,
    '494423508357480459',
    '622311594654695434',
    99,
    '2020-07-17 09:00:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1117,
    '394145164265783306',
    '622311594654695434',
    42,
    '2020-07-27 04:24:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1118,
    '343376708369645569',
    '622311594654695434',
    11,
    '2020-07-05 12:19:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1119,
    '503607516861825044',
    '538361750651797504',
    14,
    '2020-07-05 14:28:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1120,
    '252255523175399426',
    '622311594654695434',
    11,
    '2020-07-05 15:09:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1121,
    '671978456669618186',
    '622311594654695434',
    50,
    '2020-08-07 05:26:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1122,
    '181030468429283329',
    '622311594654695434',
    8,
    '2020-07-05 17:16:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1123,
    '608863906047328276',
    '622311594654695434',
    40,
    '2020-07-06 04:54:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1124,
    '702371775899500684',
    '538361750651797504',
    8,
    '2020-07-06 01:37:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1125,
    '514229716413055006',
    '622311594654695434',
    66,
    '2020-09-01 15:34:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1126,
    '262568900401561600',
    '622311594654695434',
    131,
    '2020-07-30 19:47:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1127,
    '470076256809910283',
    '622311594654695434',
    64,
    '2020-07-19 15:33:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1128,
    '238938524416475136',
    '622311594654695434',
    12,
    '2020-07-06 04:32:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1129,
    '713485508935942164',
    '538361750651797504',
    10,
    '2020-07-06 06:11:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1130,
    '377415718544605184',
    '538361750651797504',
    14,
    '2020-07-06 06:58:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1131,
    '707022994421186651',
    '538361750651797504',
    13,
    '2020-07-06 07:21:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1132,
    '709338188837158934',
    '538361750651797504',
    7,
    '2020-07-06 07:23:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1133,
    '472111658832232450',
    '538361750651797504',
    8,
    '2020-07-06 07:48:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1134,
    '447767782852132868',
    '622311594654695434',
    140,
    '2020-08-26 13:31:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1135,
    '137194637994622976',
    '538361750651797504',
    11,
    '2020-07-06 10:18:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1136,
    '555349013323448320',
    '622311594654695434',
    27,
    '2020-07-07 17:38:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1137,
    '728464152506400850',
    '622311594654695434',
    11,
    '2020-07-06 11:23:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1138,
    '652673628172845076',
    '622311594654695434',
    30,
    '2020-07-19 14:22:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1139,
    '540918408678473731',
    '622311594654695434',
    8,
    '2020-07-06 11:55:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1140,
    '724606336620560444',
    '622311594654695434',
    34,
    '2020-07-06 13:41:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1141,
    '693455154904825926',
    '622311594654695434',
    17,
    '2020-07-06 13:38:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1142,
    '516726108662792203',
    '538361750651797504',
    27,
    '2020-07-06 14:36:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1143,
    '655711355889909760',
    '622311594654695434',
    86,
    '2020-07-26 11:07:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1144,
    '433358397442752513',
    '622311594654695434',
    68,
    '2020-07-07 12:15:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1145,
    '545471042416541699',
    '622311594654695434',
    44,
    '2020-08-19 22:23:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1146,
    '206561050743537664',
    '622311594654695434',
    37,
    '2020-07-19 12:12:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1147,
    '279416193020985344',
    '622311594654695434',
    13,
    '2020-07-06 19:57:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1148,
    '557642349266862187',
    '622311594654695434',
    16,
    '2020-07-08 13:55:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1149,
    '250706957202096128',
    '622311594654695434',
    13,
    '2020-07-06 21:27:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1150,
    '468621430209118220',
    '622311594654695434',
    74,
    '2020-07-10 22:30:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1151,
    '590664983961010184',
    '622311594654695434',
    9,
    '2020-07-07 02:12:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1152,
    '540030975711641611',
    '622311594654695434',
    73,
    '2020-11-03 19:49:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1153,
    '426511720911994882',
    '622311594654695434',
    12,
    '2020-07-07 02:37:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1154,
    '420763549258743808',
    '622311594654695434',
    48,
    '2020-08-07 02:09:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1155,
    '495903741354967041',
    '622311594654695434',
    154,
    '2020-11-07 11:47:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1156,
    '552524531038683178',
    '622311594654695434',
    15,
    '2020-07-07 08:08:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1157,
    '642906901285437440',
    '622311594654695434',
    1176,
    '2020-11-11 02:23:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1158,
    '474982744590385163',
    '622311594654695434',
    24,
    '2020-07-07 08:37:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1159,
    '264519033188122625',
    '622311594654695434',
    23,
    '2020-07-07 09:36:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1160,
    '544827434109763594',
    '622311594654695434',
    48,
    '2020-07-07 12:14:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1161,
    '641808694795042822',
    '622311594654695434',
    57,
    '2020-08-20 16:20:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1162,
    '364049336776261633',
    '622311594654695434',
    21,
    '2020-07-21 13:31:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1163,
    '512368298546167810',
    '622311594654695434',
    15,
    '2020-07-07 12:39:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1164,
    '440924745471361025',
    '622311594654695434',
    34,
    '2020-10-04 15:48:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1165,
    '366019371564269569',
    '622311594654695434',
    13,
    '2020-07-07 15:07:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1166,
    '463633999693217803',
    '622311594654695434',
    21,
    '2020-07-07 15:43:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1167,
    '730101436448374884',
    '622311594654695434',
    10,
    '2020-07-07 16:42:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1168,
    '249174889796206594',
    '622311594654695434',
    22,
    '2020-07-11 23:57:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1169,
    '533683446925754368',
    '538361750651797504',
    24,
    '2020-07-07 17:47:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1170,
    '615067723952816141',
    '622311594654695434',
    12,
    '2020-07-07 18:52:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1171,
    '238947579428077568',
    '622311594654695434',
    17,
    '2020-07-07 19:24:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1172,
    '686665380713857026',
    '622311594654695434',
    11,
    '2020-07-07 21:17:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1173,
    '649975056927162379',
    '622311594654695434',
    40,
    '2020-08-22 05:47:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1174,
    '272376514727903232',
    '538361750651797504',
    8,
    '2020-07-07 22:54:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1175,
    '496523098439548929',
    '538361750651797504',
    28,
    '2020-07-22 06:06:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1176,
    '274598716906668043',
    '538361750651797504',
    11,
    '2020-07-08 00:12:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1177,
    '729794504592326717',
    '538361750651797504',
    7,
    '2020-07-08 00:12:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1178,
    '507716807998701588',
    '622311594654695434',
    15,
    '2020-07-08 02:07:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1179,
    '721649746678120528',
    '538361750651797504',
    9,
    '2020-07-08 07:29:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1180,
    '461082478300495873',
    '622311594654695434',
    298,
    '2020-08-07 14:24:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1181,
    '287916939265966080',
    '622311594654695434',
    6,
    '2020-07-08 11:01:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1182,
    '593821367758225426',
    '622311594654695434',
    2786,
    '2020-09-27 09:57:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1183,
    '442311355073167371',
    '622311594654695434',
    36,
    '2020-08-27 14:52:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1184,
    '381206986789748747',
    '622311594654695434',
    28,
    '2020-07-16 15:29:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1185,
    '594533559352426517',
    '538361750651797504',
    14,
    '2020-07-08 13:01:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1186,
    '402490971041824768',
    '538361750651797504',
    12,
    '2020-07-08 20:58:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1187,
    '187428782301249536',
    '622311594654695434',
    12,
    '2020-07-08 15:22:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1188,
    '644519334575734784',
    '622311594654695434',
    13,
    '2020-07-08 15:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1189,
    '581948771525459977',
    '538361750651797504',
    7,
    '2020-07-08 18:13:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1190,
    '350303981010026496',
    '622311594654695434',
    29,
    '2020-07-08 20:17:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1191,
    '463798511042035712',
    '622311594654695434',
    5,
    '2020-07-08 20:01:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1192,
    '496194251462279168',
    '538361750651797504',
    5,
    '2020-07-08 20:22:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1193,
    '653131939544563761',
    '538361750651797504',
    6,
    '2020-07-08 21:08:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1194,
    '373858189160218628',
    '622311594654695434',
    14,
    '2020-07-08 21:32:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1195,
    '444039773607165952',
    '622311594654695434',
    13,
    '2020-07-08 23:56:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1196,
    '290349363811581952',
    '622311594654695434',
    24,
    '2020-07-09 02:59:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1197,
    '556696847943598092',
    '622311594654695434',
    94921,
    '2020-11-11 06:33:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1198,
    '297050755402301441',
    '538361750651797504',
    154,
    '2020-07-09 06:23:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1199,
    '585205563294482433',
    '538361750651797504',
    9,
    '2020-07-09 10:26:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1200,
    '685176794734919837',
    '538361750651797504',
    12,
    '2020-07-09 11:09:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1201,
    '512279713134411777',
    '538361750651797504',
    10,
    '2020-07-09 11:46:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1202,
    '538740551386923009',
    '622311594654695434',
    9,
    '2020-07-09 13:17:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1203,
    '571994595383050271',
    '622311594654695434',
    7,
    '2020-07-09 15:05:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1204,
    '694986466459254855',
    '622311594654695434',
    6,
    '2020-07-09 16:32:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1205,
    '248925521667293184',
    '622311594654695434',
    18,
    '2020-07-09 18:39:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1206,
    '224844855975739394',
    '622311594654695434',
    12,
    '2020-07-09 20:24:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1207,
    '486147241145270294',
    '538361750651797504',
    7,
    '2020-07-10 01:38:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1208,
    '597017232924737536',
    '622311594654695434',
    8,
    '2020-07-10 09:30:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1209,
    '663373013957214209',
    '622311594654695434',
    54,
    '2020-08-20 13:08:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1210,
    '596932013399998474',
    '622311594654695434',
    8,
    '2020-07-10 13:28:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1211,
    '259648897801125898',
    '622311594654695434',
    32,
    '2020-08-06 03:07:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1212,
    '726442045043900507',
    '622311594654695434',
    17,
    '2020-07-10 16:15:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1213,
    '692080807623262290',
    '538361750651797504',
    10,
    '2020-07-10 20:23:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1214,
    '595085326179893278',
    '622311594654695434',
    76,
    '2020-11-03 19:53:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1215,
    '589530654828527667',
    '538361750651797504',
    13,
    '2020-07-11 00:16:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1216,
    '713591735044931666',
    '622311594654695434',
    9,
    '2020-07-11 01:11:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1217,
    '713693171510673488',
    '622311594654695434',
    14,
    '2020-07-11 14:04:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1218,
    '424451284167557131',
    '538361750651797504',
    7,
    '2020-07-11 21:55:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1219,
    '720585109182611547',
    '538361750651797504',
    11,
    '2020-07-11 23:19:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1220,
    '624707584728760336',
    '538361750651797504',
    14,
    '2020-07-12 02:36:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1221,
    '338369007436431360',
    '538361750651797504',
    6,
    '2020-07-12 03:25:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1222,
    '197879934478319616',
    '622311594654695434',
    69,
    '2020-09-16 16:00:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1223,
    '585644712266825738',
    '538361750651797504',
    14,
    '2020-07-12 06:56:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1224,
    '421588322133999616',
    '622311594654695434',
    12,
    '2020-07-15 16:36:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1225,
    '627971060234453022',
    '538361750651797504',
    8,
    '2020-07-12 12:12:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1226,
    '730887949268549753',
    '538361750651797504',
    14,
    '2020-07-12 12:22:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1227,
    '374071612330344448',
    '622311594654695434',
    64,
    '2020-07-18 08:04:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1228,
    '692368039496122458',
    '538361750651797504',
    9,
    '2020-07-12 14:00:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1229,
    '638091546981302273',
    '538361750651797504',
    77,
    '2020-07-27 17:59:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1230,
    '618429761806663700',
    '622311594654695434',
    59,
    '2020-07-23 15:32:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1231,
    '233599490840461313',
    '622311594654695434',
    11,
    '2020-07-13 16:59:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1232,
    '277009632067715072',
    '622311594654695434',
    71,
    '2020-07-23 14:07:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1233,
    '520891833123995648',
    '622311594654695434',
    24,
    '2020-07-13 19:29:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1234,
    '217746530512142336',
    '622311594654695434',
    8,
    '2020-07-13 21:15:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1235,
    '308629557433335809',
    '538361750651797504',
    7,
    '2020-07-13 21:28:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1236,
    '530832078061830155',
    '538361750651797504',
    8,
    '2020-07-13 22:51:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1237,
    '546830641920999424',
    '538361750651797504',
    11,
    '2020-07-14 03:40:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1238,
    '691647360274530335',
    '538361750651797504',
    12,
    '2020-07-14 03:59:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1239,
    '292808781480329218',
    '622311594654695434',
    7,
    '2020-07-14 05:59:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1240,
    '176345971448479744',
    '622311594654695434',
    92,
    '2020-10-23 15:35:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1241,
    '563323046157352960',
    '622311594654695434',
    22,
    '2020-07-14 09:20:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1242,
    '276222277467635714',
    '622311594654695434',
    53,
    '2020-07-18 10:41:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1243,
    '465671183379988481',
    '622311594654695434',
    13,
    '2020-07-18 01:21:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1244,
    '396315822500478976',
    '622311594654695434',
    61,
    '2020-09-18 06:39:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1245,
    '610485373889675264',
    '538361750651797504',
    10,
    '2020-07-14 15:59:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1246,
    '639423788341264394',
    '622311594654695434',
    13,
    '2020-07-14 16:37:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1247,
    '338382132865007616',
    '622311594654695434',
    4573,
    '2020-11-11 16:37:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1248,
    '701052416212336670',
    '622311594654695434',
    5,
    '2020-07-14 17:47:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1249,
    '563859592426291200',
    '622311594654695434',
    23,
    '2020-07-14 17:49:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1250,
    '383989659866234880',
    '538361750651797504',
    7,
    '2020-07-14 18:45:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1251,
    '710195722611327107',
    '538361750651797504',
    9,
    '2020-07-15 01:09:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1252,
    '715025911056957522',
    '538361750651797504',
    8,
    '2020-07-15 01:23:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1253,
    '710245394533318676',
    '538361750651797504',
    13,
    '2020-07-15 04:57:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1254,
    '690539494473990204',
    '538361750651797504',
    127,
    '2020-07-30 08:40:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1255,
    '732533080463769633',
    '622311594654695434',
    25,
    '2020-08-15 03:24:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1256,
    '373477590385819648',
    '622311594654695434',
    42,
    '2020-07-20 11:23:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1257,
    '289470368777764864',
    '622311594654695434',
    7,
    '2020-07-15 18:56:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1258,
    '477904414565204008',
    '538361750651797504',
    93,
    '2020-10-25 19:22:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1259,
    '500558413881802763',
    '622311594654695434',
    8,
    '2020-07-16 03:32:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1260,
    '621310616078123038',
    '622311594654695434',
    14,
    '2020-09-11 01:56:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1261,
    '521456438405627904',
    '622311594654695434',
    83,
    '2020-07-16 12:36:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1262,
    '693030880800669738',
    '622311594654695434',
    9,
    '2020-07-16 09:33:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1263,
    '616932021876293632',
    '538361750651797504',
    42,
    '2020-07-17 10:44:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1264,
    '661619928998084630',
    '622311594654695434',
    13,
    '2020-07-16 14:45:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1265,
    '644511854609170442',
    '622311594654695434',
    187,
    '2020-08-02 08:56:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1266,
    '501118016348487710',
    '622311594654695434',
    12,
    '2020-07-16 14:52:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1267,
    '643899341475414076',
    '622311594654695434',
    11,
    '2020-07-16 15:04:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1268,
    '404915501727219723',
    '538361750651797504',
    9,
    '2020-07-16 15:15:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1269,
    '479952710821478411',
    '622311594654695434',
    11,
    '2020-07-16 15:32:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1270,
    '411007048298397698',
    '622311594654695434',
    10,
    '2020-07-16 16:08:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1271,
    '207966849877540875',
    '622311594654695434',
    12,
    '2020-07-16 16:16:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1272,
    '704573544029487164',
    '622311594654695434',
    3024,
    '2020-11-11 18:59:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1273,
    '701794983522336908',
    '622311594654695434',
    29,
    '2020-10-07 09:40:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1274,
    '666687292122857525',
    '538361750651797504',
    14,
    '2020-07-16 17:47:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1275,
    '222496369712037889',
    '538361750651797504',
    11,
    '2020-07-16 17:56:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1276,
    '697576348792782942',
    '538361750651797504',
    11,
    '2020-07-16 17:59:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1277,
    '532687451865481226',
    '538361750651797504',
    9,
    '2020-07-16 19:57:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1278,
    '195355415872143361',
    '538361750651797504',
    8,
    '2020-07-16 20:16:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1279,
    '355836611147202561',
    '622311594654695434',
    42,
    '2020-08-22 03:39:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1280,
    '690742046822105199',
    '622311594654695434',
    20,
    '2020-07-16 21:42:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1281,
    '721106025213853726',
    '538361750651797504',
    5,
    '2020-07-16 22:21:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1282,
    '414742697463644190',
    '538361750651797504',
    12,
    '2020-07-16 22:47:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1283,
    '733432855400546314',
    '538361750651797504',
    7,
    '2020-07-16 22:53:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1284,
    '674817600576028692',
    '622311594654695434',
    6,
    '2020-07-16 22:57:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1285,
    '424621955480813569',
    '538361750651797504',
    21,
    '2020-08-14 21:59:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1286,
    '471200447722553366',
    '622311594654695434',
    3030,
    '2020-11-11 07:30:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1287,
    '508104280088248330',
    '622311594654695434',
    10,
    '2020-07-17 07:18:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1288,
    '383489089833271297',
    '622311594654695434',
    9,
    '2020-07-17 08:37:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1289,
    '394460370133188610',
    '622311594654695434',
    13,
    '2020-07-17 10:06:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1290,
    '658303333567561742',
    '538361750651797504',
    17,
    '2020-07-23 21:42:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1291,
    '499241173513142315',
    '622311594654695434',
    15,
    '2020-07-17 13:07:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1292,
    '333101415788576771',
    '622311594654695434',
    19,
    '2020-07-18 14:04:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1293,
    '544233660245737483',
    '622311594654695434',
    7,
    '2020-07-17 17:20:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1294,
    '308385927057899522',
    '622311594654695434',
    15,
    '2020-09-26 18:35:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1295,
    '390511051239849997',
    '538361750651797504',
    8,
    '2020-07-18 00:33:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1296,
    '697170044240789545',
    '538361750651797504',
    11,
    '2020-07-18 00:38:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1297,
    '652484855799742465',
    '622311594654695434',
    372,
    '2020-08-30 02:19:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1298,
    '551359476574453761',
    '622311594654695434',
    16,
    '2020-09-19 07:31:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1299,
    '495517815055450112',
    '538361750651797504',
    121,
    '2020-07-18 11:17:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1300,
    '375619805048340490',
    '622311594654695434',
    8,
    '2020-07-18 12:10:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1301,
    '733644553151709185',
    '538361750651797504',
    13,
    '2020-07-18 12:13:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1302,
    '715507676783837274',
    '538361750651797504',
    7,
    '2020-07-18 12:23:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1303,
    '655696079546875909',
    '538361750651797504',
    15,
    '2020-07-18 12:45:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1304,
    '475966158688747520',
    '538361750651797504',
    35,
    '2020-07-18 13:09:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1305,
    '231141967960997899',
    '622311594654695434',
    10,
    '2020-07-18 14:14:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1306,
    '677636822834085899',
    '538361750651797504',
    159,
    '2020-07-21 07:09:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1307,
    '458644525896826885',
    '622311594654695434',
    10,
    '2020-07-18 17:01:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1308,
    '582918823955529738',
    '622311594654695434',
    28,
    '2020-07-19 01:53:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1309,
    '352182454712270872',
    '622311594654695434',
    12,
    '2020-07-18 18:24:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1310,
    '527077075962822668',
    '538361750651797504',
    14,
    '2020-07-18 20:11:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1311,
    '731982499168780309',
    '538361750651797504',
    14,
    '2020-07-18 20:45:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1312,
    '112730890743914496',
    '622311594654695434',
    22,
    '2020-08-07 02:30:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1313,
    '447800391715913728',
    '622311594654695434',
    9,
    '2020-07-18 21:31:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1314,
    '617584968469839903',
    '622311594654695434',
    32,
    '2020-08-27 04:20:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1315,
    '514048210654986241',
    '622311594654695434',
    26,
    '2020-07-19 08:17:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1316,
    '664799431081852928',
    '622311594654695434',
    97,
    '2020-08-22 09:39:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1317,
    '289264589332545538',
    '622311594654695434',
    90,
    '2020-07-20 11:54:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1318,
    '657583930844905482',
    '622311594654695434',
    42,
    '2020-08-11 12:21:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1319,
    '491132738531885056',
    '622311594654695434',
    12,
    '2020-07-19 14:24:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1320,
    '734056787585663077',
    '538361750651797504',
    12,
    '2020-07-19 15:47:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1321,
    '719593297294786732',
    '538361750651797504',
    8,
    '2020-07-19 16:41:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1322,
    '348837857948991488',
    '538361750651797504',
    12,
    '2020-07-19 16:42:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1323,
    '469696022650552341',
    '622311594654695434',
    21,
    '2020-07-20 03:57:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1324,
    '347885861368758272',
    '622311594654695434',
    1608,
    '2020-10-13 04:44:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1325,
    '375755260637085716',
    '538361750651797504',
    8,
    '2020-07-19 23:11:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1326,
    '394832905941024768',
    '538361750651797504',
    12,
    '2020-07-19 23:34:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1327,
    '653779446469492797',
    '622311594654695434',
    19,
    '2020-09-10 15:20:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1328,
    '504025614752153631',
    '538361750651797504',
    8,
    '2020-07-20 02:18:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1329,
    '401540600253644821',
    '622311594654695434',
    24,
    '2020-07-29 07:20:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1330,
    '636473937227808769',
    '622311594654695434',
    22,
    '2020-07-26 05:21:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1331,
    '537570429267738625',
    '622311594654695434',
    15,
    '2020-07-20 03:10:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1332,
    '251839449208586240',
    '622311594654695434',
    75,
    '2020-09-12 01:40:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1333,
    '356953722846445577',
    '622311594654695434',
    12,
    '2020-07-20 03:27:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1334,
    '384903203789078548',
    '622311594654695434',
    42,
    '2020-10-07 13:28:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1335,
    '292662318805024769',
    '622311594654695434',
    26,
    '2020-07-20 03:58:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1336,
    '570087370683056152',
    '622311594654695434',
    36,
    '2020-07-20 23:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1337,
    '325463133281976320',
    '622311594654695434',
    606,
    '2020-08-23 05:40:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1338,
    '435749018631536641',
    '622311594654695434',
    7,
    '2020-07-20 05:13:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1339,
    '384508902114459660',
    '622311594654695434',
    9,
    '2020-07-20 06:00:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1340,
    '536510777377423381',
    '622311594654695434',
    22,
    '2020-07-21 11:44:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1341,
    '707027186804326505',
    '622311594654695434',
    11,
    '2020-07-20 07:57:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1342,
    '257509832653930496',
    '622311594654695434',
    11,
    '2020-07-20 08:18:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1343,
    '447397664405848064',
    '622311594654695434',
    13,
    '2020-07-20 08:27:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1344,
    '195636081310302208',
    '538361750651797504',
    6,
    '2020-07-20 08:49:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1345,
    '723734441998024734',
    '538361750651797504',
    14,
    '2020-07-20 09:05:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1346,
    '386623667272024075',
    '622311594654695434',
    11,
    '2020-07-20 09:38:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1347,
    '533660649058992128',
    '622311594654695434',
    12,
    '2020-07-20 11:15:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1348,
    '300210271920586763',
    '622311594654695434',
    13,
    '2020-07-20 11:30:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1349,
    '439423521102364672',
    '622311594654695434',
    34,
    '2020-08-21 07:36:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1350,
    '436759439815737346',
    '622311594654695434',
    9018,
    '2020-11-04 07:40:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1351,
    '308362826060267521',
    '622311594654695434',
    46,
    '2020-07-20 15:30:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1352,
    '603985843190890510',
    '622311594654695434',
    14,
    '2020-07-20 15:23:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1353,
    '432363373628227606',
    '622311594654695434',
    37,
    '2020-09-06 08:42:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1354,
    '277428603447279626',
    '538361750651797504',
    449,
    '2020-07-27 16:19:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1355,
    '508407709872422932',
    '622311594654695434',
    19,
    '2020-07-20 17:56:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1356,
    '599688337401577472',
    '538361750651797504',
    2296,
    '2020-11-04 22:46:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1357,
    '412227562048192512',
    '622311594654695434',
    10,
    '2020-07-20 18:40:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1358,
    '688505229922271311',
    '538361750651797504',
    7,
    '2020-07-20 18:54:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1359,
    '277732474870824960',
    '622311594654695434',
    15,
    '2020-08-10 10:17:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1360,
    '695302340567105608',
    '538361750651797504',
    7,
    '2020-07-20 19:14:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1361,
    '575485700179492865',
    '538361750651797504',
    14,
    '2020-07-20 22:00:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1362,
    '472670900718665728',
    '538361750651797504',
    9,
    '2020-07-20 22:03:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1363,
    '259485869487030272',
    '622311594654695434',
    10,
    '2020-07-20 23:01:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1364,
    '470320849317265419',
    '622311594654695434',
    124,
    '2020-09-19 00:03:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1365,
    '346562630481084416',
    '538361750651797504',
    21,
    '2020-07-26 09:37:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1366,
    '483433313986412555',
    '622311594654695434',
    5,
    '2020-07-21 06:54:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1367,
    '684293184049905674',
    '538361750651797504',
    34,
    '2020-08-28 14:48:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1368,
    '698103455381848066',
    '538361750651797504',
    14,
    '2020-07-21 07:12:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1369,
    '699033537332117597',
    '538361750651797504',
    15,
    '2020-07-21 07:12:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1370,
    '704854774687727708',
    '538361750651797504',
    6,
    '2020-07-21 07:12:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1371,
    '719363998163664906',
    '538361750651797504',
    6,
    '2020-07-21 07:12:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1372,
    '719363114914676836',
    '538361750651797504',
    12,
    '2020-07-21 07:12:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1373,
    '719361340824879135',
    '538361750651797504',
    14,
    '2020-07-21 07:12:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1374,
    '719508964332666940',
    '538361750651797504',
    12,
    '2020-07-21 07:12:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1375,
    '719516726341009439',
    '538361750651797504',
    7,
    '2020-07-21 07:12:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1376,
    '719518038667558935',
    '538361750651797504',
    15,
    '2020-07-21 07:12:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1377,
    '719519377510236240',
    '538361750651797504',
    13,
    '2020-07-21 07:12:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1378,
    '719522053824446537',
    '538361750651797504',
    14,
    '2020-07-21 07:12:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1379,
    '135885836863406080',
    '622311594654695434',
    14,
    '2020-07-21 07:23:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1380,
    '499974323524730911',
    '622311594654695434',
    36,
    '2020-08-10 14:36:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1381,
    '383860881034838016',
    '622311594654695434',
    8,
    '2020-07-21 13:00:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1382,
    '380750109568401408',
    '622311594654695434',
    14,
    '2020-07-21 13:07:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1383,
    '544944524946964485',
    '622311594654695434',
    13,
    '2020-07-21 15:20:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1384,
    '377152186234437633',
    '538361750651797504',
    14,
    '2020-07-21 16:34:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1385,
    '526339566597046272',
    '622311594654695434',
    6,
    '2020-07-21 16:45:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1386,
    '212553306407436288',
    '538361750651797504',
    23,
    '2020-10-04 04:16:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1387,
    '340261412385325067',
    '622311594654695434',
    10,
    '2020-07-21 19:27:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1388,
    '735231459652272158',
    '622311594654695434',
    9,
    '2020-07-21 20:33:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1389,
    '734178212103585883',
    '538361750651797504',
    7,
    '2020-07-21 20:56:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1390,
    '696814667674419234',
    '622311594654695434',
    8,
    '2020-07-21 23:01:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1391,
    '514419228980543508',
    '622311594654695434',
    24,
    '2020-07-21 23:03:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1392,
    '654267333744918528',
    '622311594654695434',
    29,
    '2020-09-04 04:06:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1393,
    '417374869131362304',
    '622311594654695434',
    6,
    '2020-07-22 03:13:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1394,
    '526519521922514949',
    '622311594654695434',
    9,
    '2020-07-22 03:23:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1395,
    '480809955553705985',
    '622311594654695434',
    186,
    '2020-08-17 17:10:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1396,
    '367138927850553357',
    '622311594654695434',
    7,
    '2020-07-22 03:24:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1397,
    '265844402239438849',
    '622311594654695434',
    22,
    '2020-07-22 03:56:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1398,
    '507116720813768704',
    '538361750651797504',
    9,
    '2020-07-22 09:08:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1399,
    '654388731016380416',
    '622311594654695434',
    15,
    '2020-07-22 09:08:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1400,
    '287512282244579328',
    '622311594654695434',
    6,
    '2020-07-22 09:24:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1401,
    '554175555050668071',
    '538361750651797504',
    7,
    '2020-07-22 09:39:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1402,
    '491185164756582400',
    '622311594654695434',
    13,
    '2020-07-22 10:01:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1403,
    '322959464984608769',
    '622311594654695434',
    9,
    '2020-07-22 10:17:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1404,
    '340020744803319820',
    '622311594654695434',
    10,
    '2020-07-22 11:02:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1405,
    '572584898330624010',
    '622311594654695434',
    10,
    '2020-07-22 12:13:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1406,
    '442669575876902922',
    '622311594654695434',
    13,
    '2020-07-22 14:21:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1407,
    '188863200798703617',
    '538361750651797504',
    399,
    '2020-08-06 01:26:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1408,
    '702571223141318781',
    '622311594654695434',
    18,
    '2020-09-10 06:41:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1409,
    '244271529783721985',
    '622311594654695434',
    43,
    '2020-08-22 15:05:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1410,
    '608850456516755456',
    '538361750651797504',
    12,
    '2020-07-22 16:49:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1411,
    '704587167967608930',
    '622311594654695434',
    31,
    '2020-07-22 17:47:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1412,
    '730420720663789590',
    '538361750651797504',
    6,
    '2020-07-22 18:09:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1413,
    '719603223136305174',
    '538361750651797504',
    12,
    '2020-07-22 18:26:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1414,
    '711624885184626779',
    '538361750651797504',
    7,
    '2020-07-22 18:28:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1415,
    '588618194898386984',
    '622311594654695434',
    39,
    '2020-07-22 21:26:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1416,
    '401214183246528522',
    '622311594654695434',
    10,
    '2020-07-22 22:59:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1417,
    '702570462768791592',
    '622311594654695434',
    17,
    '2020-09-09 17:32:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1418,
    '458323275982962696',
    '622311594654695434',
    19,
    '2020-07-23 02:21:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1419,
    '401470485461860353',
    '622311594654695434',
    23,
    '2020-07-23 00:20:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1420,
    '245185337540870144',
    '622311594654695434',
    22,
    '2020-08-17 22:59:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1421,
    '726724586917593159',
    '622311594654695434',
    6,
    '2020-07-23 03:53:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1422,
    '714361117282926593',
    '538361750651797504',
    20,
    '2020-07-23 05:42:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1423,
    '730997120856883290',
    '622311594654695434',
    159,
    '2020-07-25 22:55:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1424,
    '686857017234686080',
    '538361750651797504',
    12,
    '2020-07-23 08:40:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1425,
    '517054524972728338',
    '622311594654695434',
    7,
    '2020-07-23 09:51:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1426,
    '677365072577953813',
    '622311594654695434',
    10,
    '2020-07-23 12:26:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1427,
    '605989609826156544',
    '622311594654695434',
    12,
    '2020-07-23 12:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1428,
    '680730734620573754',
    '622311594654695434',
    15,
    '2020-08-12 04:04:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1429,
    '472059156963000320',
    '622311594654695434',
    6,
    '2020-07-23 13:07:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1430,
    '290532167065534475',
    '538361750651797504',
    13,
    '2020-07-23 15:08:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1431,
    '474698376550809610',
    '538361750651797504',
    6,
    '2020-07-23 15:09:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1432,
    '332438563541090305',
    '538361750651797504',
    7,
    '2020-07-23 17:26:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1433,
    '582617373434183711',
    '538361750651797504',
    11,
    '2020-07-23 18:57:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1434,
    '729111790532689965',
    '538361750651797504',
    15,
    '2020-07-23 21:37:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1435,
    '735978357342077089',
    '538361750651797504',
    12,
    '2020-07-23 21:57:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1436,
    '428903502283014145',
    '538361750651797504',
    7,
    '2020-07-23 22:09:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1437,
    '707714492196454511',
    '622311594654695434',
    104,
    '2020-08-08 13:33:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1438,
    '588273914510049295',
    '538361750651797504',
    12,
    '2020-07-23 23:15:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1439,
    '317116473774702593',
    '622311594654695434',
    40,
    '2020-08-10 20:39:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1440,
    '345457566568022016',
    '622311594654695434',
    11,
    '2020-07-24 00:57:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1441,
    '279188932426465291',
    '622311594654695434',
    4917,
    '2020-11-09 04:43:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1442,
    '721243532433686568',
    '622311594654695434',
    13,
    '2020-07-24 04:05:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1443,
    '314188953333006346',
    '622311594654695434',
    11,
    '2020-07-24 05:19:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1444,
    '411876122024869898',
    '538361750651797504',
    15,
    '2020-07-24 09:01:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1445,
    '465689191041335316',
    '538361750651797504',
    15,
    '2020-07-24 11:23:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1446,
    '692983669110865962',
    '538361750651797504',
    14,
    '2020-07-24 13:16:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1447,
    '513458842986741770',
    '622311594654695434',
    6,
    '2020-07-24 16:35:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1448,
    '538722863004254230',
    '538361750651797504',
    13,
    '2020-07-24 16:41:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1449,
    '532838100959887360',
    '622311594654695434',
    13,
    '2020-07-24 16:55:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1450,
    '434845665848328192',
    '622311594654695434',
    12,
    '2020-07-24 18:57:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1451,
    '403307604639481867',
    '622311594654695434',
    11,
    '2020-07-24 20:34:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1452,
    '266558819327279104',
    '622311594654695434',
    6,
    '2020-07-24 21:32:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1453,
    '534807453712515092',
    '622311594654695434',
    177,
    '2020-08-05 17:17:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1454,
    '685930883693412373',
    '538361750651797504',
    6,
    '2020-07-24 22:56:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1455,
    '373279309852311563',
    '538361750651797504',
    5,
    '2020-07-25 00:22:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1456,
    '233992999451754496',
    '622311594654695434',
    27,
    '2020-07-25 07:56:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1457,
    '483958695164641280',
    '622311594654695434',
    106,
    '2020-08-17 14:08:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1458,
    '685123274564567050',
    '538361750651797504',
    14,
    '2020-07-25 11:28:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1459,
    '668905215100977152',
    '622311594654695434',
    17,
    '2020-08-28 19:25:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1460,
    '265925031131873281',
    '538361750651797504',
    16,
    '2020-07-25 16:59:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1461,
    '713400094237524280',
    '538361750651797504',
    23,
    '2020-07-28 02:10:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1462,
    '691797301651308564',
    '538361750651797504',
    13,
    '2020-07-25 16:48:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1463,
    '312606589255417868',
    '622311594654695434',
    10,
    '2020-07-25 18:43:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1464,
    '315985934048821249',
    '622311594654695434',
    165,
    '2020-10-02 04:08:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1465,
    '483001191056408579',
    '622311594654695434',
    14,
    '2020-07-26 04:02:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1466,
    '254316374342631425',
    '622311594654695434',
    5,
    '2020-07-26 04:02:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1467,
    '577119720650571776',
    '538361750651797504',
    8,
    '2020-07-26 07:46:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1468,
    '336716961486471168',
    '622311594654695434',
    70,
    '2020-07-26 10:31:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1469,
    '646357578980261938',
    '622311594654695434',
    152,
    '2020-09-08 01:51:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1470,
    '336716252431253505',
    '622311594654695434',
    14,
    '2020-07-26 11:53:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1471,
    '551778880436830211',
    '622311594654695434',
    8,
    '2020-07-26 16:24:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1472,
    '554444689244291072',
    '538361750651797504',
    10,
    '2020-07-26 16:56:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1473,
    '525435315654230037',
    '622311594654695434',
    21,
    '2020-09-08 20:43:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1474,
    '507684120739184640',
    '538361750651797504',
    9,
    '2020-07-26 20:46:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1475,
    '730409656245288973',
    '538361750651797504',
    8,
    '2020-07-26 21:41:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1476,
    '453329177656033280',
    '538361750651797504',
    36,
    '2020-08-01 00:51:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1477,
    '732344633245564939',
    '538361750651797504',
    11,
    '2020-07-27 01:12:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1478,
    '373137783637671937',
    '622311594654695434',
    10,
    '2020-07-27 03:36:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1479,
    '662688699980447764',
    '622311594654695434',
    13,
    '2020-07-27 03:41:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1480,
    '323250461950083072',
    '622311594654695434',
    19,
    '2020-08-05 15:08:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1481,
    '246357206973415425',
    '538361750651797504',
    11,
    '2020-07-27 05:28:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1482,
    '508777382472187914',
    '538361750651797504',
    43,
    '2020-07-27 18:06:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1483,
    '421413256414887947',
    '538361750651797504',
    22,
    '2020-07-30 23:54:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1484,
    '664602155193335809',
    '622311594654695434',
    7,
    '2020-07-27 14:18:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1485,
    '645063826961858575',
    '538361750651797504',
    14,
    '2020-07-29 07:42:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1486,
    '619239996515155969',
    '538361750651797504',
    14,
    '2020-07-27 19:46:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1487,
    '465231614302224388',
    '538361750651797504',
    10,
    '2020-07-27 20:37:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1488,
    '609937834664656926',
    '622311594654695434',
    10,
    '2020-07-28 05:36:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1489,
    '223007818796630016',
    '622311594654695434',
    39,
    '2020-07-30 11:07:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1490,
    '276791010003124234',
    '622311594654695434',
    25,
    '2020-07-29 09:10:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1491,
    '500688606931714082',
    '622311594654695434',
    160,
    '2020-08-07 02:14:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1492,
    '735357864625045576',
    '538361750651797504',
    9,
    '2020-07-28 16:28:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1493,
    '115939990948675593',
    '622311594654695434',
    29,
    '2020-07-31 02:11:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1494,
    '211868577261813760',
    '538361750651797504',
    10,
    '2020-07-28 23:25:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1495,
    '397846063119073281',
    '538361750651797504',
    11,
    '2020-07-28 23:52:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1496,
    '325102782149427201',
    '538361750651797504',
    6,
    '2020-07-29 01:02:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1497,
    '648993447570702362',
    '538361750651797504',
    14,
    '2020-07-29 01:02:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1498,
    '313147680857522176',
    '538361750651797504',
    6,
    '2020-07-29 01:05:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1499,
    '554217643876417557',
    '538361750651797504',
    7,
    '2020-07-29 05:41:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1500,
    '497235602845073409',
    '622311594654695434',
    49,
    '2020-09-23 12:28:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1501,
    '684743859183550465',
    '622311594654695434',
    13,
    '2020-07-29 10:26:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1502,
    '737893045957165147',
    '538361750651797504',
    13,
    '2020-07-29 10:35:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1503,
    '317986567006322689',
    '622311594654695434',
    470,
    '2020-11-06 06:37:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1504,
    '474986532982358019',
    '622311594654695434',
    17,
    '2020-07-29 11:10:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1505,
    '732905050954792970',
    '538361750651797504',
    13,
    '2020-07-29 12:13:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1506,
    '342388034991423500',
    '622311594654695434',
    14,
    '2020-07-29 13:36:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1507,
    '336537661596499968',
    '538361750651797504',
    11,
    '2020-07-29 14:41:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1508,
    '738042145377615975',
    '538361750651797504',
    15,
    '2020-07-29 14:41:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1509,
    '617066716358377485',
    '538361750651797504',
    35,
    '2020-07-29 20:06:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1510,
    '428008511243419648',
    '538361750651797504',
    7,
    '2020-07-29 18:01:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1511,
    '475044673279361044',
    '622311594654695434',
    14,
    '2020-07-29 21:59:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1512,
    '476767646180704277',
    '622311594654695434',
    8,
    '2020-07-29 23:01:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1513,
    '396686028687278081',
    '622311594654695434',
    35,
    '2020-08-18 15:38:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1514,
    '709614761339387964',
    '622311594654695434',
    18,
    '2020-07-30 00:39:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1515,
    '436657304117706762',
    '622311594654695434',
    12,
    '2020-07-30 00:38:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1516,
    '651941061999984680',
    '622311594654695434',
    33,
    '2020-07-30 00:56:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1517,
    '313364005538234368',
    '622311594654695434',
    8,
    '2020-07-30 00:39:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1518,
    '415347129175769098',
    '622311594654695434',
    6,
    '2020-07-30 00:41:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1519,
    '548511771317764116',
    '622311594654695434',
    49,
    '2020-09-06 11:58:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1520,
    '637740676246929408',
    '622311594654695434',
    11,
    '2020-07-30 01:24:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1521,
    '459861035382341632',
    '622311594654695434',
    1501,
    '2020-10-09 16:06:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1522,
    '399422792459878402',
    '622311594654695434',
    5,
    '2020-07-30 02:03:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1523,
    '737085395967410299',
    '538361750651797504',
    15,
    '2020-07-30 02:13:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1524,
    '385939031596466176',
    '622311594654695434',
    23,
    '2020-07-30 02:23:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1525,
    '353742527289098240',
    '622311594654695434',
    11,
    '2020-07-30 02:22:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1526,
    '700150021429133394',
    '538361750651797504',
    8,
    '2020-07-30 02:24:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1527,
    '162721452620120064',
    '622311594654695434',
    13,
    '2020-07-30 02:25:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1528,
    '648391238994624531',
    '622311594654695434',
    31,
    '2020-10-08 16:12:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1529,
    '506993236330414080',
    '622311594654695434',
    50,
    '2020-09-04 11:46:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1530,
    '382348023428284418',
    '622311594654695434',
    11,
    '2020-07-30 04:10:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1531,
    '547908713009119232',
    '622311594654695434',
    19,
    '2020-07-30 04:35:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1532,
    '310098687248302081',
    '622311594654695434',
    14,
    '2020-07-30 10:09:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1533,
    '658405280026984470',
    '538361750651797504',
    6,
    '2020-07-30 11:32:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1534,
    '555016661716172811',
    '622311594654695434',
    15,
    '2020-07-30 11:53:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1535,
    '675390423790911488',
    '622311594654695434',
    45,
    '2020-08-08 12:25:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1536,
    '698743662569455666',
    '622311594654695434',
    14,
    '2020-07-30 17:01:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1537,
    '727971602289000553',
    '538361750651797504',
    10,
    '2020-07-30 18:56:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1538,
    '738495279283830804',
    '622311594654695434',
    268,
    '2020-09-18 07:27:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1539,
    '523795229183049748',
    '538361750651797504',
    11,
    '2020-07-31 08:08:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1540,
    '280762060864880640',
    '538361750651797504',
    11,
    '2020-07-31 09:53:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1541,
    '565567024047325194',
    '622311594654695434',
    20,
    '2020-08-01 12:46:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1542,
    '570907501260832778',
    '622311594654695434',
    12,
    '2020-07-31 14:30:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1543,
    '566884312679579648',
    '622311594654695434',
    10,
    '2020-07-31 14:33:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1544,
    '327543447064150026',
    '622311594654695434',
    10,
    '2020-07-31 15:13:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1545,
    '190182669697417216',
    '538361750651797504',
    14,
    '2020-07-31 16:15:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1546,
    '738828240378003457',
    '622311594654695434',
    46,
    '2020-08-15 03:16:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1547,
    '447345042374524928',
    '622311594654695434',
    10,
    '2020-07-31 19:13:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1548,
    '706730609485021236',
    '538361750651797504',
    10,
    '2020-07-31 19:34:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1549,
    '649285835627298816',
    '622311594654695434',
    26,
    '2020-08-20 16:33:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1550,
    '312877756197109760',
    '538361750651797504',
    13,
    '2020-07-31 23:26:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1551,
    '738246097566171226',
    '538361750651797504',
    15,
    '2020-08-01 02:58:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1552,
    '376607938887942154',
    '622311594654695434',
    6,
    '2020-08-01 03:38:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1553,
    '738966178655109223',
    '538361750651797504',
    14,
    '2020-08-01 06:46:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1554,
    '551436754989613061',
    '538361750651797504',
    7,
    '2020-08-01 07:49:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1555,
    '361166326577758228',
    '622311594654695434',
    28,
    '2020-08-17 11:05:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1556,
    '221743640328798208',
    '622311594654695434',
    53,
    '2020-08-28 15:47:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1557,
    '632423978140434433',
    '622311594654695434',
    69,
    '2020-10-03 12:18:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1558,
    '288382594410610692',
    '622311594654695434',
    9,
    '2020-08-01 15:50:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1559,
    '704783563345625176',
    '538361750651797504',
    14,
    '2020-08-01 16:54:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1560,
    '171332026580860929',
    '622311594654695434',
    19,
    '2020-08-02 00:26:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1561,
    '318172276946370560',
    '622311594654695434',
    9,
    '2020-08-02 00:24:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1562,
    '639623064933629992',
    '622311594654695434',
    7,
    '2020-08-02 00:25:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1563,
    '590721495915954199',
    '622311594654695434',
    9,
    '2020-08-02 00:25:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1564,
    '421529094380060672',
    '622311594654695434',
    23,
    '2020-08-02 00:27:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1565,
    '424277469164732416',
    '622311594654695434',
    47,
    '2020-10-13 15:34:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1566,
    '259777993428172800',
    '622311594654695434',
    9,
    '2020-08-02 00:32:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1567,
    '514950217347629066',
    '622311594654695434',
    14,
    '2020-08-02 00:53:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1568,
    '429794893485965312',
    '622311594654695434',
    32,
    '2020-08-02 01:28:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1569,
    '456508789823111178',
    '622311594654695434',
    9,
    '2020-08-02 01:35:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1570,
    '615303821706657792',
    '622311594654695434',
    7,
    '2020-08-02 01:44:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1571,
    '545063850228187158',
    '622311594654695434',
    11,
    '2020-08-02 01:53:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1572,
    '395768774004834304',
    '622311594654695434',
    9,
    '2020-08-02 02:20:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1573,
    '563473826491400194',
    '622311594654695434',
    11,
    '2020-08-02 03:42:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1574,
    '354056622823440384',
    '622311594654695434',
    31,
    '2020-09-06 20:47:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1575,
    '349422915370090498',
    '622311594654695434',
    10,
    '2020-08-02 05:44:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1576,
    '513723616785989632',
    '622311594654695434',
    8,
    '2020-08-02 07:26:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1577,
    '618196790927294484',
    '622311594654695434',
    12,
    '2020-08-02 09:19:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1578,
    '434736221130850314',
    '622311594654695434',
    5,
    '2020-08-02 09:44:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1579,
    '521156913874993162',
    '622311594654695434',
    6,
    '2020-08-02 12:27:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1580,
    '465226515530121217',
    '622311594654695434',
    11,
    '2020-08-02 14:05:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1581,
    '621953077401878539',
    '622311594654695434',
    25799,
    '2020-11-03 10:01:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1582,
    '459823057939333122',
    '622311594654695434',
    14,
    '2020-08-02 15:28:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1583,
    '533631234761424898',
    '538361750651797504',
    15,
    '2020-08-02 16:13:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1584,
    '525839270875889684',
    '622311594654695434',
    6,
    '2020-08-02 17:21:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1585,
    '686310480771416066',
    '622311594654695434',
    15,
    '2020-08-02 17:55:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1586,
    '523579776749928449',
    '538361750651797504',
    37,
    '2020-08-15 01:21:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1587,
    '339050631170097153',
    '622311594654695434',
    9,
    '2020-08-02 23:05:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1588,
    '737219093928607744',
    '538361750651797504',
    8,
    '2020-08-03 00:29:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1589,
    '107342587714658304',
    '622311594654695434',
    10,
    '2020-08-03 01:11:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1590,
    '417398665670295572',
    '538361750651797504',
    82,
    '2020-08-25 14:17:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1591,
    '570144066990505984',
    '622311594654695434',
    13,
    '2020-08-03 04:04:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1592,
    '274478905883361280',
    '622311594654695434',
    9,
    '2020-08-03 07:48:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1593,
    '724040792855019571',
    '538361750651797504',
    12,
    '2020-08-03 10:25:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1594,
    '263543106446557184',
    '622311594654695434',
    26,
    '2020-08-25 10:37:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1595,
    '452894372523016193',
    '622311594654695434',
    33,
    '2020-08-03 17:15:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1596,
    '620154739883245572',
    '622311594654695434',
    8,
    '2020-08-03 12:00:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1597,
    '642742678983016448',
    '622311594654695434',
    23,
    '2020-08-03 13:29:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1598,
    '607430271586795552',
    '622311594654695434',
    8,
    '2020-08-03 13:29:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1599,
    '463802695539490826',
    '622311594654695434',
    17,
    '2020-08-03 13:33:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1600,
    '660134056486502410',
    '538361750651797504',
    23,
    '2020-08-05 15:46:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1601,
    '527159983733997588',
    '622311594654695434',
    9,
    '2020-08-03 16:54:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1602,
    '495401164238749701',
    '622311594654695434',
    12,
    '2020-08-03 18:54:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1603,
    '717829428440334398',
    '622311594654695434',
    5,
    '2020-08-03 19:17:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1604,
    '204829633806467082',
    '538361750651797504',
    9,
    '2020-08-03 19:44:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1605,
    '476555708683255808',
    '622311594654695434',
    5,
    '2020-08-03 21:33:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1606,
    '275007785198944257',
    '622311594654695434',
    13,
    '2020-08-12 01:01:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1607,
    '383979499483693066',
    '538361750651797504',
    8,
    '2020-08-03 22:10:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1608,
    '407025739867881493',
    '622311594654695434',
    5,
    '2020-08-03 22:23:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1609,
    '471426586474709002',
    '622311594654695434',
    10,
    '2020-08-03 23:28:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1610,
    '396658005107671041',
    '622311594654695434',
    90,
    '2020-08-19 21:30:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1611,
    '724263786726555751',
    '622311594654695434',
    17,
    '2020-08-15 22:40:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1612,
    '523569236128432138',
    '622311594654695434',
    6,
    '2020-08-04 02:43:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1613,
    '630353471618678784',
    '622311594654695434',
    27,
    '2020-09-19 08:06:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1614,
    '382572416708116482',
    '538361750651797504',
    10,
    '2020-08-04 04:05:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1615,
    '436065204095287307',
    '622311594654695434',
    7,
    '2020-08-04 05:11:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1616,
    '456334018024308746',
    '622311594654695434',
    353,
    '2020-11-02 20:49:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1617,
    '433756367145402388',
    '622311594654695434',
    14,
    '2020-08-04 07:23:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1618,
    '345599637664694272',
    '622311594654695434',
    33,
    '2020-08-10 04:24:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1619,
    '573719164628238351',
    '622311594654695434',
    5,
    '2020-08-04 07:27:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1620,
    '640174003134267423',
    '622311594654695434',
    53,
    '2020-08-15 08:03:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1621,
    '502562849592311810',
    '622311594654695434',
    48,
    '2020-11-06 11:04:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1622,
    '204280646493929472',
    '622311594654695434',
    28,
    '2020-08-04 12:05:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1623,
    '265567896413929472',
    '538361750651797504',
    11,
    '2020-08-04 11:32:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1624,
    '304627478981378049',
    '622311594654695434',
    10,
    '2020-08-04 12:44:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1625,
    '688420653715554374',
    '622311594654695434',
    39,
    '2020-08-16 17:06:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1626,
    '256776982174367755',
    '622311594654695434',
    11,
    '2020-08-04 13:10:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1627,
    '409411151508799488',
    '622311594654695434',
    14,
    '2020-08-04 13:23:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1628,
    '618803901663281166',
    '622311594654695434',
    13,
    '2020-08-04 15:09:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1629,
    '559191967586582542',
    '622311594654695434',
    7,
    '2020-08-04 15:59:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1630,
    '374716410137673728',
    '622311594654695434',
    10,
    '2020-08-04 16:16:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1631,
    '325397949184212992',
    '622311594654695434',
    13,
    '2020-08-04 19:32:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1632,
    '614929053186654238',
    '622311594654695434',
    7,
    '2020-08-04 21:14:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1633,
    '663082455829577750',
    '538361750651797504',
    8,
    '2020-08-04 21:15:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1634,
    '603373425377017866',
    '622311594654695434',
    26,
    '2020-08-04 23:24:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1635,
    '665726794950770688',
    '538361750651797504',
    8,
    '2020-08-05 01:23:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1636,
    '518689231644786689',
    '622311594654695434',
    20,
    '2020-08-06 00:53:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1637,
    '608608068728782850',
    '622311594654695434',
    16,
    '2020-08-05 01:36:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1638,
    '519416144377937930',
    '622311594654695434',
    35,
    '2020-08-05 06:51:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1639,
    '521649472950763530',
    '622311594654695434',
    25,
    '2020-08-05 01:36:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1640,
    '493031585143324682',
    '622311594654695434',
    25,
    '2020-08-24 07:02:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1641,
    '655427924052279317',
    '622311594654695434',
    11,
    '2020-08-05 02:40:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1642,
    '460862429996515328',
    '622311594654695434',
    18,
    '2020-08-05 05:40:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1643,
    '558853410309537810',
    '538361750651797504',
    8,
    '2020-08-05 06:00:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1644,
    '632254190982266883',
    '538361750651797504',
    14,
    '2020-08-05 07:53:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1645,
    '527917242441138187',
    '622311594654695434',
    27,
    '2020-08-24 14:54:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1646,
    '259970818828795905',
    '622311594654695434',
    5,
    '2020-08-05 08:07:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1647,
    '547351143550812172',
    '622311594654695434',
    11,
    '2020-08-05 08:10:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1648,
    '270188107050123274',
    '622311594654695434',
    14,
    '2020-08-05 08:39:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1649,
    '251219933172727809',
    '538361750651797504',
    8,
    '2020-08-05 11:25:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1650,
    '106514491872669696',
    '622311594654695434',
    10,
    '2020-08-05 12:50:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1651,
    '708129486641692773',
    '622311594654695434',
    6,
    '2020-08-05 14:10:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1652,
    '259835491946463234',
    '622311594654695434',
    14,
    '2020-08-05 22:28:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1653,
    '506880689551966249',
    '622311594654695434',
    12,
    '2020-08-05 23:27:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1654,
    '591321756799598592',
    '538361750651797504',
    8,
    '2020-08-05 23:45:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1655,
    '203996751089106946',
    '622311594654695434',
    6,
    '2020-08-06 00:22:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1656,
    '579867729117315072',
    '622311594654695434',
    6,
    '2020-08-06 03:25:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1657,
    '740777223740588094',
    '622311594654695434',
    11,
    '2020-08-06 04:26:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1658,
    '187174932218642432',
    '622311594654695434',
    10,
    '2020-08-06 06:18:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1659,
    '421760211808681994',
    '538361750651797504',
    7,
    '2020-08-06 07:55:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1660,
    '297714295624695809',
    '622311594654695434',
    35,
    '2020-08-13 20:08:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1661,
    '455127813184421898',
    '622311594654695434',
    35,
    '2020-08-23 11:04:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1662,
    '565477409999159297',
    '622311594654695434',
    8,
    '2020-08-06 10:39:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1663,
    '699285007470166107',
    '538361750651797504',
    12,
    '2020-08-06 11:37:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1664,
    '338408935541440512',
    '622311594654695434',
    14,
    '2020-08-06 13:51:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1665,
    '679034258341232719',
    '622311594654695434',
    344,
    '2020-11-01 10:48:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1666,
    '460935884666044427',
    '622311594654695434',
    13,
    '2020-08-06 14:12:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1667,
    '483814258786959360',
    '622311594654695434',
    53,
    '2020-09-04 11:22:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1668,
    '740922467760996467',
    '538361750651797504',
    5,
    '2020-08-06 14:31:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1669,
    '159608548081401857',
    '622311594654695434',
    7,
    '2020-08-06 14:37:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1670,
    '279090031325347841',
    '622311594654695434',
    27,
    '2020-08-06 15:26:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1671,
    '708827616584531998',
    '538361750651797504',
    40,
    '2020-08-09 18:13:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1672,
    '740594982217318501',
    '538361750651797504',
    12,
    '2020-08-06 17:45:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1673,
    '410949202949046272',
    '622311594654695434',
    23,
    '2020-08-21 21:46:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1674,
    '551998921304702986',
    '622311594654695434',
    9,
    '2020-08-06 18:51:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1675,
    '516503188959002624',
    '622311594654695434',
    11,
    '2020-09-24 21:07:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1676,
    '618028599995400195',
    '538361750651797504',
    10,
    '2020-08-06 22:13:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1677,
    '474564785154031637',
    '622311594654695434',
    22,
    '2020-08-06 23:58:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1678,
    '417149891152707595',
    '622311594654695434',
    13,
    '2020-08-07 01:49:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1679,
    '313830865849548800',
    '622311594654695434',
    87,
    '2020-08-11 01:14:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1680,
    '644819850849419270',
    '622311594654695434',
    147,
    '2020-09-18 13:57:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1681,
    '413861185931182109',
    '622311594654695434',
    7,
    '2020-08-07 08:00:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1682,
    '616854357865922570',
    '622311594654695434',
    10,
    '2020-08-07 10:10:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1683,
    '386617197750910979',
    '622311594654695434',
    5,
    '2020-08-07 11:52:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1684,
    '739644983627481110',
    '622311594654695434',
    7,
    '2020-08-07 12:01:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1685,
    '244080815795863552',
    '538361750651797504',
    14,
    '2020-08-07 12:07:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1686,
    '420898530073509890',
    '622311594654695434',
    35,
    '2020-09-11 08:03:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1687,
    '189843465176219649',
    '622311594654695434',
    7,
    '2020-08-07 12:47:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1688,
    '657303110657638410',
    '622311594654695434',
    9,
    '2020-08-07 12:55:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1689,
    '439598845538861077',
    '622311594654695434',
    6,
    '2020-08-07 13:21:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1690,
    '275253605773344768',
    '622311594654695434',
    28,
    '2020-08-12 07:16:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1691,
    '686579538209144833',
    '622311594654695434',
    13,
    '2020-08-07 13:59:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1692,
    '279721132750405632',
    '622311594654695434',
    14,
    '2020-08-07 14:05:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1693,
    '531458955633754155',
    '622311594654695434',
    23,
    '2020-08-10 07:25:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1694,
    '495485535239012352',
    '622311594654695434',
    8,
    '2020-08-07 14:26:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1695,
    '257552011459821568',
    '622311594654695434',
    23,
    '2020-08-07 14:59:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1696,
    '242778215381204992',
    '622311594654695434',
    128,
    '2020-08-08 02:50:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1697,
    '255751364293033985',
    '622311594654695434',
    8,
    '2020-08-07 17:56:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1698,
    '242732749083901952',
    '622311594654695434',
    13,
    '2020-08-07 18:34:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1699,
    '281444233490202634',
    '622311594654695434',
    7,
    '2020-08-07 20:58:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1700,
    '601034503535853568',
    '622311594654695434',
    5,
    '2020-08-07 22:29:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1701,
    '583332079039676426',
    '622311594654695434',
    6,
    '2020-08-08 00:43:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1702,
    '298476633776717836',
    '622311594654695434',
    19,
    '2020-09-13 15:15:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1703,
    '708301573671092255',
    '622311594654695434',
    28,
    '2020-08-08 02:16:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1704,
    '387789425960026112',
    '622311594654695434',
    8,
    '2020-08-08 02:49:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1705,
    '302804516397514752',
    '622311594654695434',
    8,
    '2020-08-08 03:03:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1706,
    '217527923278741504',
    '622311594654695434',
    7,
    '2020-08-08 05:12:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1707,
    '223065213694377985',
    '622311594654695434',
    5,
    '2020-08-08 07:58:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1708,
    '391396255684624386',
    '622311594654695434',
    13,
    '2020-08-08 08:56:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1709,
    '421535422288756738',
    '622311594654695434',
    11,
    '2020-08-08 08:59:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1710,
    '326312690840502274',
    '622311594654695434',
    14,
    '2020-08-08 11:03:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1711,
    '236492178937872385',
    '622311594654695434',
    24,
    '2020-08-12 14:17:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1712,
    '538365794543861782',
    '622311594654695434',
    12,
    '2020-08-08 12:33:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1713,
    '727861565776330753',
    '622311594654695434',
    8,
    '2020-08-08 13:46:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1714,
    '636904657717035037',
    '622311594654695434',
    85,
    '2020-08-28 10:59:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1715,
    '571943466548985857',
    '622311594654695434',
    8,
    '2020-08-08 14:16:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1716,
    '332612793251659777',
    '622311594654695434',
    15,
    '2020-08-08 15:31:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1717,
    '395694357451112449',
    '622311594654695434',
    22,
    '2020-09-28 18:30:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1718,
    '273507924381532161',
    '622311594654695434',
    34,
    '2020-08-11 09:15:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1719,
    '516676017599807489',
    '538361750651797504',
    8,
    '2020-08-08 15:48:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1720,
    '507891772404269067',
    '622311594654695434',
    28,
    '2020-08-08 16:31:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1721,
    '462527555904208917',
    '622311594654695434',
    3928,
    '2020-11-11 13:14:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1722,
    '625026392853315584',
    '622311594654695434',
    72,
    '2020-09-22 13:27:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1723,
    '660207766002204672',
    '622311594654695434',
    10,
    '2020-08-08 20:25:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1724,
    '338758039387504660',
    '622311594654695434',
    11,
    '2020-08-09 01:18:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1725,
    '323920127504547851',
    '622311594654695434',
    32,
    '2020-09-02 21:13:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1726,
    '525743624646819841',
    '622311594654695434',
    13,
    '2020-08-09 04:33:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1727,
    '465642303068045326',
    '622311594654695434',
    10,
    '2020-08-09 07:01:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1728,
    '703921517259653181',
    '622311594654695434',
    50,
    '2020-08-09 13:02:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1729,
    '393054037462876160',
    '622311594654695434',
    73,
    '2020-08-09 13:27:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1730,
    '564366496764133386',
    '622311594654695434',
    14,
    '2020-08-09 13:00:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1731,
    '555055696371253272',
    '622311594654695434',
    79,
    '2020-09-03 12:13:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1732,
    '630073864369733643',
    '622311594654695434',
    9,
    '2020-08-09 16:35:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1733,
    '416016368161390594',
    '622311594654695434',
    11,
    '2020-08-09 17:22:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1734,
    '337985951857115138',
    '622311594654695434',
    16,
    '2020-09-02 19:18:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1735,
    '468801123323740161',
    '622311594654695434',
    10,
    '2020-08-09 20:23:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1736,
    '575166569529868308',
    '622311594654695434',
    7,
    '2020-08-09 20:49:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1737,
    '221404688044654593',
    '622311594654695434',
    9,
    '2020-08-09 21:41:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1738,
    '533005491052478465',
    '622311594654695434',
    12,
    '2020-08-10 01:11:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1739,
    '188714498385772544',
    '622311594654695434',
    9,
    '2020-08-10 03:52:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1740,
    '663355355832516628',
    '622311594654695434',
    67,
    '2020-08-27 14:14:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1741,
    '412570953097281536',
    '622311594654695434',
    57,
    '2020-09-23 12:08:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1742,
    '600663587471753226',
    '538361750651797504',
    10,
    '2020-08-10 09:25:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1743,
    '344180936713175042',
    '538361750651797504',
    11,
    '2020-08-10 10:14:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1744,
    '295199677333241857',
    '538361750651797504',
    49,
    '2020-08-10 12:11:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1745,
    '533347075463577640',
    '538361750651797504',
    52,
    '2020-08-10 12:11:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1746,
    '367259235039444992',
    '622311594654695434',
    112,
    '2020-08-23 07:24:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1747,
    '612662966558392320',
    '622311594654695434',
    5,
    '2020-08-10 13:58:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1748,
    '708604462733852772',
    '538361750651797504',
    13,
    '2020-08-10 16:09:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1749,
    '605644860107653161',
    '622311594654695434',
    17,
    '2020-08-19 06:31:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1750,
    '720652740841308162',
    '622311594654695434',
    8,
    '2020-08-10 17:35:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1751,
    '556995005495902229',
    '622311594654695434',
    13,
    '2020-08-10 19:36:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1752,
    '693493785866534952',
    '622311594654695434',
    74,
    '2020-08-11 20:22:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1753,
    '718090646883270678',
    '622311594654695434',
    13,
    '2020-08-10 21:45:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1754,
    '407507608270798848',
    '538361750651797504',
    10,
    '2020-08-10 22:22:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1755,
    '305094069451882496',
    '538361750651797504',
    11,
    '2020-08-10 22:24:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1756,
    '670443795090767882',
    '622311594654695434',
    85,
    '2020-10-12 19:30:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1757,
    '211105527579672579',
    '622311594654695434',
    14,
    '2020-08-10 22:46:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1758,
    '326350410170368011',
    '538361750651797504',
    15,
    '2020-08-10 22:52:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1759,
    '742063587987816508',
    '538361750651797504',
    8,
    '2020-08-10 22:52:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1760,
    '668147670077931559',
    '622311594654695434',
    208,
    '2020-10-22 00:39:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1761,
    '309620533761146880',
    '538361750651797504',
    11,
    '2020-08-10 23:37:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1762,
    '254523212375785473',
    '622311594654695434',
    12,
    '2020-08-11 02:26:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1763,
    '476840904133705751',
    '622311594654695434',
    58,
    '2020-09-22 13:18:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1764,
    '437417030686081045',
    '622311594654695434',
    170,
    '2020-08-15 02:56:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1765,
    '340368174601994241',
    '622311594654695434',
    60,
    '2020-08-19 18:29:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1766,
    '560285620002357271',
    '622311594654695434',
    10,
    '2020-08-11 08:02:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1767,
    '417120417787019264',
    '622311594654695434',
    10,
    '2020-08-13 22:45:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1768,
    '437880573047078912',
    '622311594654695434',
    7,
    '2020-08-11 11:54:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1769,
    '145742721015873536',
    '622311594654695434',
    28,
    '2020-08-11 15:31:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1770,
    '623094761233973248',
    '538361750651797504',
    13,
    '2020-08-11 16:51:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1771,
    '740715002482262097',
    '538361750651797504',
    13,
    '2020-08-11 17:07:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1772,
    '490970383894446101',
    '622311594654695434',
    30,
    '2020-08-11 17:50:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1773,
    '302813532913926157',
    '622311594654695434',
    14,
    '2020-08-11 17:57:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1774,
    '409787861479587858',
    '538361750651797504',
    18,
    '2020-08-11 18:29:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1775,
    '554690562943352842',
    '622311594654695434',
    95,
    '2020-08-29 07:21:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1776,
    '618857643460657152',
    '622311594654695434',
    97,
    '2020-08-12 09:50:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1777,
    '660120980097728514',
    '622311594654695434',
    353,
    '2020-09-11 13:31:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1778,
    '338427302809567245',
    '622311594654695434',
    12,
    '2020-08-11 22:02:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1779,
    '173786394185957376',
    '622311594654695434',
    7,
    '2020-08-11 22:51:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1780,
    '435128038691176449',
    '622311594654695434',
    28,
    '2020-08-14 01:02:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1781,
    '405793708110381058',
    '622311594654695434',
    64,
    '2020-08-19 12:05:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1782,
    '502607642141655051',
    '622311594654695434',
    14,
    '2020-08-11 23:02:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1783,
    '103595431618965504',
    '538361750651797504',
    10,
    '2020-08-11 23:04:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1784,
    '545765361870438441',
    '622311594654695434',
    40,
    '2020-08-12 00:06:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1785,
    '638182496235683840',
    '538361750651797504',
    10,
    '2020-08-11 23:31:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1786,
    '720817561410732084',
    '622311594654695434',
    7,
    '2020-08-11 23:32:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1787,
    '564231325339484173',
    '622311594654695434',
    5,
    '2020-08-11 23:32:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1788,
    '694322251570479104',
    '622311594654695434',
    10,
    '2020-08-12 00:03:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1789,
    '423235169227636746',
    '622311594654695434',
    11,
    '2020-08-12 01:19:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1790,
    '471861878281338881',
    '622311594654695434',
    11,
    '2020-08-12 01:33:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1791,
    '547180210823364620',
    '622311594654695434',
    14,
    '2020-08-12 01:49:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1792,
    '571710783277236225',
    '538361750651797504',
    14,
    '2020-08-12 02:11:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1793,
    '643479156427980826',
    '622311594654695434',
    17,
    '2020-08-12 03:01:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1794,
    '683470637955678218',
    '538361750651797504',
    8,
    '2020-08-12 03:04:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1795,
    '724463738459127870',
    '538361750651797504',
    12,
    '2020-08-12 03:23:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1796,
    '652698123466178572',
    '622311594654695434',
    12,
    '2020-08-12 04:40:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1797,
    '707745711227142145',
    '622311594654695434',
    9,
    '2020-08-12 04:41:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1798,
    '210522574822703104',
    '622311594654695434',
    141,
    '2020-09-20 22:15:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1799,
    '696806752338837548',
    '622311594654695434',
    19,
    '2020-09-04 16:35:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1800,
    '420300160233635842',
    '622311594654695434',
    6,
    '2020-08-12 06:19:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1801,
    '516635521288634390',
    '622311594654695434',
    14,
    '2020-08-12 08:18:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1802,
    '649889959230177283',
    '622311594654695434',
    57,
    '2020-10-16 22:26:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1803,
    '625060175363178546',
    '622311594654695434',
    15,
    '2020-08-12 11:38:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1804,
    '215722422064644097',
    '622311594654695434',
    19,
    '2020-08-18 19:30:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1805,
    '417179972243816452',
    '622311594654695434',
    10,
    '2020-08-12 12:35:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1806,
    '482396709540855810',
    '622311594654695434',
    23591,
    '2020-10-30 12:19:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1807,
    '652561249749565452',
    '538361750651797504',
    14,
    '2020-08-12 14:16:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1808,
    '345369266142445569',
    '622311594654695434',
    8,
    '2020-08-12 14:47:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1809,
    '314513650130092033',
    '622311594654695434',
    9,
    '2020-08-12 18:00:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1810,
    '455422372112105473',
    '622311594654695434',
    6,
    '2020-08-12 22:07:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1811,
    '219780437596307456',
    '622311594654695434',
    15,
    '2020-08-12 22:10:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1812,
    '688554690979561505',
    '538361750651797504',
    14,
    '2020-08-13 00:45:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1813,
    '486550599417200640',
    '622311594654695434',
    17,
    '2020-09-14 15:57:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1814,
    '429604177354686475',
    '622311594654695434',
    11,
    '2020-08-13 02:18:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1815,
    '388836992642711563',
    '622311594654695434',
    12,
    '2020-08-13 04:04:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1816,
    '568051999401312286',
    '622311594654695434',
    6,
    '2020-08-13 04:05:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1817,
    '529753524012187678',
    '622311594654695434',
    20,
    '2020-08-26 14:46:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1818,
    '577251195739963412',
    '622311594654695434',
    13,
    '2020-08-28 18:16:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1819,
    '674483895642882068',
    '622311594654695434',
    13,
    '2020-08-13 06:09:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1820,
    '672241586490572811',
    '622311594654695434',
    17,
    '2020-08-18 07:22:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1821,
    '535199047536082954',
    '622311594654695434',
    14,
    '2020-08-13 06:10:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1822,
    '728593806131331154',
    '622311594654695434',
    31,
    '2020-08-17 02:27:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1823,
    '386279844654219284',
    '622311594654695434',
    21,
    '2020-09-16 14:05:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1824,
    '296283478759309312',
    '622311594654695434',
    8,
    '2020-08-13 06:11:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1825,
    '348514007281434625',
    '622311594654695434',
    25,
    '2020-08-13 06:14:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1826,
    '310235735938564096',
    '622311594654695434',
    20,
    '2020-08-13 06:16:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1827,
    '263403814743310336',
    '622311594654695434',
    24,
    '2020-08-13 06:14:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1828,
    '379188406015623172',
    '622311594654695434',
    224,
    '2020-10-17 07:08:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1829,
    '246999862032334848',
    '622311594654695434',
    28,
    '2020-08-13 06:19:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1830,
    '513458124997394458',
    '622311594654695434',
    21,
    '2020-08-24 21:44:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1831,
    '526208192594575370',
    '622311594654695434',
    10,
    '2020-08-13 07:10:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1832,
    '491179111251968001',
    '622311594654695434',
    12,
    '2020-08-13 07:56:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1833,
    '280323513183633418',
    '622311594654695434',
    19,
    '2020-08-13 09:10:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1834,
    '643983295654264832',
    '622311594654695434',
    24,
    '2020-08-13 08:36:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1835,
    '386850612945485824',
    '622311594654695434',
    16,
    '2020-08-16 18:47:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1836,
    '380821129142468608',
    '622311594654695434',
    20,
    '2020-08-13 13:40:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1837,
    '382857254761660417',
    '622311594654695434',
    5,
    '2020-08-13 09:12:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1838,
    '556381455945564176',
    '622311594654695434',
    7,
    '2020-08-13 11:16:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1839,
    '351337481444130819',
    '622311594654695434',
    13,
    '2020-08-13 11:30:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1840,
    '450878639358083072',
    '622311594654695434',
    6,
    '2020-08-13 11:35:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1841,
    '724671118421524520',
    '622311594654695434',
    11,
    '2020-08-13 11:54:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1842,
    '471305017102696448',
    '622311594654695434',
    140,
    '2020-10-05 08:33:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1843,
    '434443308631064591',
    '538361750651797504',
    8,
    '2020-08-13 11:55:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1844,
    '572114836461322251',
    '622311594654695434',
    6,
    '2020-08-13 12:18:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1845,
    '307311638648979467',
    '622311594654695434',
    13,
    '2020-08-13 12:34:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1846,
    '407846633116663818',
    '622311594654695434',
    44,
    '2020-08-15 11:06:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1847,
    '597750433355661333',
    '622311594654695434',
    29,
    '2020-10-07 13:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1848,
    '506273674463019058',
    '622311594654695434',
    10,
    '2020-08-13 13:08:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1849,
    '516820383912034324',
    '622311594654695434',
    8,
    '2020-08-13 13:53:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1850,
    '688911462999392263',
    '622311594654695434',
    5,
    '2020-08-13 14:08:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1851,
    '578964991273730048',
    '622311594654695434',
    9,
    '2020-08-13 14:14:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1852,
    '584745434187169794',
    '622311594654695434',
    10,
    '2020-08-13 15:14:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1853,
    '716633315855171645',
    '622311594654695434',
    23,
    '2020-08-14 03:37:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1854,
    '455152594180898828',
    '622311594654695434',
    13,
    '2020-08-13 16:06:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1855,
    '580955554608840723',
    '622311594654695434',
    23,
    '2020-08-13 16:40:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1856,
    '586436951666851861',
    '622311594654695434',
    9,
    '2020-08-13 16:46:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1857,
    '313105747816873984',
    '622311594654695434',
    7,
    '2020-08-13 17:27:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1858,
    '333964938387259393',
    '622311594654695434',
    5,
    '2020-08-13 17:31:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1859,
    '364845223433601035',
    '622311594654695434',
    14,
    '2020-08-13 17:58:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1860,
    '600125655958421517',
    '622311594654695434',
    10,
    '2020-08-13 18:04:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1861,
    '720060197300601025',
    '622311594654695434',
    21,
    '2020-08-13 20:46:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1862,
    '331179093447933963',
    '622311594654695434',
    14,
    '2020-08-13 19:28:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1863,
    '490311695869149205',
    '622311594654695434',
    21,
    '2020-08-13 19:35:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1864,
    '577863184007036978',
    '622311594654695434',
    37,
    '2020-08-14 04:06:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1865,
    '401712320340033537',
    '622311594654695434',
    25,
    '2020-08-13 20:39:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1866,
    '329137392261005312',
    '622311594654695434',
    33,
    '2020-09-11 00:28:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1867,
    '521208270044528650',
    '622311594654695434',
    34,
    '2020-08-31 13:00:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1868,
    '565738026316333077',
    '622311594654695434',
    18,
    '2020-08-14 00:46:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1869,
    '396387752045838347',
    '622311594654695434',
    15,
    '2020-08-14 00:24:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1870,
    '476570144643088387',
    '622311594654695434',
    11,
    '2020-08-14 00:24:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1871,
    '353895819163861004',
    '622311594654695434',
    6,
    '2020-08-14 00:24:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1872,
    '294540052976107520',
    '622311594654695434',
    5,
    '2020-08-14 00:24:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1873,
    '616314351011233896',
    '622311594654695434',
    11,
    '2020-08-14 00:56:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1874,
    '473423796053999617',
    '622311594654695434',
    621,
    '2020-08-25 23:45:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1875,
    '601645993875996673',
    '622311594654695434',
    57,
    '2020-11-05 09:16:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1876,
    '398712450788229140',
    '622311594654695434',
    20,
    '2020-09-06 11:59:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1877,
    '687190534040715284',
    '622311594654695434',
    78,
    '2020-10-03 15:17:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1878,
    '197419790460125185',
    '622311594654695434',
    7,
    '2020-08-14 11:50:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1879,
    '394178503731314719',
    '622311594654695434',
    112,
    '2020-08-14 12:50:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1880,
    '372013402803011585',
    '622311594654695434',
    9,
    '2020-08-14 12:37:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1881,
    '319109246577016833',
    '622311594654695434',
    11,
    '2020-08-14 12:39:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1882,
    '287957651604635660',
    '622311594654695434',
    14,
    '2020-08-14 12:39:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1883,
    '356381349575393284',
    '622311594654695434',
    12,
    '2020-08-14 12:39:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1884,
    '274967232596148224',
    '622311594654695434',
    14,
    '2020-09-06 12:19:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1885,
    '477839595028086795',
    '622311594654695434',
    7,
    '2020-08-14 12:52:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1886,
    '462634691061743636',
    '622311594654695434',
    21,
    '2020-08-14 13:03:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1887,
    '414833627113979905',
    '622311594654695434',
    9,
    '2020-08-14 13:13:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1888,
    '326346490337296386',
    '622311594654695434',
    8,
    '2020-08-14 13:50:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1889,
    '664111688710357027',
    '622311594654695434',
    14,
    '2020-08-14 13:54:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1890,
    '481391872594542602',
    '622311594654695434',
    78,
    '2020-08-14 14:58:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1891,
    '715163920511533056',
    '622311594654695434',
    445,
    '2020-10-17 12:13:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1892,
    '360054090064986113',
    '622311594654695434',
    10,
    '2020-08-14 14:29:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1893,
    '467296483650174977',
    '622311594654695434',
    11,
    '2020-08-14 14:36:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1894,
    '240303565514473472',
    '622311594654695434',
    2050,
    '2020-10-28 16:53:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1895,
    '384391279099904011',
    '622311594654695434',
    8,
    '2020-08-14 15:19:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1896,
    '356599883227987968',
    '622311594654695434',
    9,
    '2020-08-14 15:31:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1897,
    '320087043902275585',
    '622311594654695434',
    20,
    '2020-08-22 04:51:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1898,
    '247829571846537217',
    '622311594654695434',
    24,
    '2020-08-14 16:11:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1899,
    '324891244910084116',
    '622311594654695434',
    12,
    '2020-08-14 16:17:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1900,
    '358643188740784129',
    '622311594654695434',
    19,
    '2020-08-15 01:00:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1901,
    '448507473406459914',
    '538361750651797504',
    9,
    '2020-08-14 17:23:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1902,
    '531025574781648897',
    '622311594654695434',
    14,
    '2020-08-14 17:58:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1903,
    '292754327334813698',
    '622311594654695434',
    12,
    '2020-08-14 18:03:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1904,
    '595638081944813581',
    '622311594654695434',
    10,
    '2020-08-14 18:19:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1905,
    '578136826460635150',
    '622311594654695434',
    37,
    '2020-08-14 19:05:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1906,
    '326065974950363136',
    '622311594654695434',
    10,
    '2020-08-14 18:59:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1907,
    '743503872747896923',
    '538361750651797504',
    15,
    '2020-08-14 19:00:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1908,
    '608744636353085472',
    '622311594654695434',
    7,
    '2020-08-14 19:03:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1909,
    '464189307494858752',
    '538361750651797504',
    7,
    '2020-08-14 19:09:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1910,
    '434042522474381312',
    '622311594654695434',
    15,
    '2020-08-14 19:10:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1911,
    '670202729096019979',
    '622311594654695434',
    12,
    '2020-08-14 21:17:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1912,
    '579344435867942913',
    '622311594654695434',
    7,
    '2020-08-14 21:32:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1913,
    '371160313816547330',
    '622311594654695434',
    14,
    '2020-08-14 22:17:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1914,
    '170564001279901696',
    '622311594654695434',
    14,
    '2020-08-14 22:19:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1915,
    '385785576688975877',
    '622311594654695434',
    27,
    '2020-11-06 13:30:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1916,
    '557281742717714442',
    '622311594654695434',
    21,
    '2020-08-15 14:20:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1917,
    '706510017490321440',
    '622311594654695434',
    8,
    '2020-08-14 23:44:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1918,
    '702077162127097916',
    '622311594654695434',
    11,
    '2020-08-15 00:23:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1919,
    '587782553323307008',
    '622311594654695434',
    7,
    '2020-08-15 01:50:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1920,
    '319980356214194198',
    '622311594654695434',
    5,
    '2020-08-15 03:43:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1921,
    '729801300786675732',
    '538361750651797504',
    13,
    '2020-08-15 03:45:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1922,
    '501110530321285122',
    '622311594654695434',
    8,
    '2020-08-15 03:53:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1923,
    '691911564390825987',
    '622311594654695434',
    498,
    '2020-11-06 11:26:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1924,
    '243895290648592384',
    '622311594654695434',
    60,
    '2020-10-01 16:34:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1925,
    '466733324216434688',
    '622311594654695434',
    168,
    '2020-08-15 05:58:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1926,
    '221889413788073984',
    '622311594654695434',
    29,
    '2020-08-16 05:53:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1927,
    '477399137965441035',
    '622311594654695434',
    25,
    '2020-08-15 08:39:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1928,
    '493456297656713217',
    '538361750651797504',
    8,
    '2020-08-15 09:31:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1929,
    '286115372422397952',
    '538361750651797504',
    10,
    '2020-08-15 09:41:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1930,
    '721314849468055635',
    '622311594654695434',
    35,
    '2020-08-17 10:54:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1931,
    '464780801666449408',
    '538361750651797504',
    11,
    '2020-08-15 13:33:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1932,
    '541458909240623104',
    '622311594654695434',
    9,
    '2020-08-15 13:39:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1933,
    '566236639068684289',
    '622311594654695434',
    14,
    '2020-08-15 15:54:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1934,
    '477180588877414400',
    '622311594654695434',
    11,
    '2020-08-15 16:05:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1935,
    '566340776070742017',
    '622311594654695434',
    7,
    '2020-08-15 16:25:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1936,
    '697392018183159839',
    '622311594654695434',
    14,
    '2020-08-15 16:25:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1937,
    '301620355410296832',
    '622311594654695434',
    9,
    '2020-08-15 17:32:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1938,
    '611468402263064577',
    '538361750651797504',
    9,
    '2020-08-15 18:24:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1939,
    '705450867733561354',
    '538361750651797504',
    12,
    '2020-08-15 18:59:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1940,
    '261143632847831041',
    '622311594654695434',
    13,
    '2020-08-15 19:50:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1941,
    '447861127968325643',
    '622311594654695434',
    13,
    '2020-08-15 20:16:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1942,
    '272456417519337472',
    '538361750651797504',
    17,
    '2020-08-15 21:12:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1943,
    '580777949851287562',
    '622311594654695434',
    21,
    '2020-08-31 10:44:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1944,
    '611816999433011201',
    '538361750651797504',
    11,
    '2020-08-15 23:47:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1945,
    '460189026259959850',
    '622311594654695434',
    499,
    '2020-09-21 16:50:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1946,
    '235181886400495626',
    '622311594654695434',
    19,
    '2020-08-16 04:47:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1947,
    '544522199961174030',
    '622311594654695434',
    13,
    '2020-08-16 04:58:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1948,
    '661494374324240417',
    '622311594654695434',
    120,
    '2020-11-06 09:39:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1949,
    '617082102537650177',
    '622311594654695434',
    14,
    '2020-08-16 07:56:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1950,
    '396601178227474432',
    '622311594654695434',
    7,
    '2020-08-16 08:23:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1951,
    '330079271412563971',
    '622311594654695434',
    13,
    '2020-08-16 09:15:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1952,
    '448001279189450753',
    '622311594654695434',
    48,
    '2020-08-25 21:07:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1953,
    '634453425358110731',
    '622311594654695434',
    11,
    '2020-08-16 10:15:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1954,
    '195035471389130752',
    '622311594654695434',
    32,
    '2020-08-17 07:22:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1955,
    '682897030988693505',
    '622311594654695434',
    13,
    '2020-08-16 11:47:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1956,
    '692631242553950278',
    '622311594654695434',
    33,
    '2020-08-18 13:01:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1957,
    '354289666998140938',
    '622311594654695434',
    8,
    '2020-08-16 13:48:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1958,
    '305773732117479424',
    '622311594654695434',
    19,
    '2020-08-22 20:39:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1959,
    '744589978084049026',
    '622311594654695434',
    613,
    '2020-09-05 02:50:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1960,
    '310593054883053578',
    '622311594654695434',
    5,
    '2020-08-16 17:21:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1961,
    '176130221819297792',
    '622311594654695434',
    8,
    '2020-08-16 17:22:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1962,
    '398904235103879168',
    '622311594654695434',
    12,
    '2020-08-16 18:51:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1963,
    '482252742816038913',
    '622311594654695434',
    10,
    '2020-08-16 19:20:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1964,
    '743543256192647309',
    '538361750651797504',
    10,
    '2020-08-16 19:45:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1965,
    '500516287420563458',
    '622311594654695434',
    10,
    '2020-08-16 22:51:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1966,
    '735255959307288596',
    '622311594654695434',
    17,
    '2020-08-21 15:22:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1967,
    '692152967826243625',
    '622311594654695434',
    8,
    '2020-08-17 06:19:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1968,
    '719948470534013051',
    '622311594654695434',
    14,
    '2020-08-17 09:51:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1969,
    '370276084622557186',
    '622311594654695434',
    10,
    '2020-08-17 11:42:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1970,
    '653270420295909396',
    '622311594654695434',
    7,
    '2020-08-17 12:02:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1971,
    '461079246073233408',
    '622311594654695434',
    11,
    '2020-08-17 13:36:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1972,
    '359718475423416321',
    '622311594654695434',
    9,
    '2020-08-17 17:29:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1973,
    '296013799410892801',
    '622311594654695434',
    30,
    '2020-09-02 22:04:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1974,
    '511650427306246154',
    '538361750651797504',
    11,
    '2020-08-17 18:02:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1975,
    '694674273662664745',
    '538361750651797504',
    13,
    '2020-08-17 18:06:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1976,
    '282709137924554753',
    '622311594654695434',
    8,
    '2020-08-17 20:22:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1977,
    '579962542214873088',
    '622311594654695434',
    9,
    '2020-08-17 20:39:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1978,
    '338613778516279298',
    '622311594654695434',
    14,
    '2020-08-17 21:54:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1979,
    '242022431072452609',
    '622311594654695434',
    10,
    '2020-08-18 04:25:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1980,
    '743693006661615616',
    '622311594654695434',
    19,
    '2020-08-18 04:53:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1981,
    '473207795974537239',
    '622311594654695434',
    59,
    '2020-11-06 17:18:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1982,
    '300768625596301312',
    '622311594654695434',
    14,
    '2020-08-18 05:26:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1983,
    '619885109956575237',
    '622311594654695434',
    11,
    '2020-08-18 07:40:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1984,
    '433257481930539018',
    '622311594654695434',
    14,
    '2020-08-18 10:35:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1985,
    '414722225661542400',
    '622311594654695434',
    12,
    '2020-08-18 11:49:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1986,
    '745286682739474502',
    '538361750651797504',
    12,
    '2020-08-18 14:23:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1987,
    '631895859251904548',
    '622311594654695434',
    11,
    '2020-08-18 14:32:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1988,
    '405732273783308288',
    '622311594654695434',
    18,
    '2020-08-18 14:44:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1989,
    '352074899268829188',
    '622311594654695434',
    13,
    '2020-08-18 16:31:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1990,
    '698024902363709470',
    '622311594654695434',
    9,
    '2020-08-18 17:49:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1991,
    '745381058987556894',
    '538361750651797504',
    10,
    '2020-08-18 20:38:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1992,
    '688448253737697291',
    '538361750651797504',
    14,
    '2020-08-18 23:18:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1993,
    '484595611182563340',
    '622311594654695434',
    10,
    '2020-08-19 04:01:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1994,
    '537033678035877888',
    '622311594654695434',
    13,
    '2020-08-19 04:31:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1995,
    '524859553372962816',
    '622311594654695434',
    9,
    '2020-08-19 06:48:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1996,
    '217632205663371265',
    '622311594654695434',
    11,
    '2020-08-19 11:49:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1997,
    '401503855436759051',
    '622311594654695434',
    27,
    '2020-08-29 03:37:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1998,
    '723625717786476607',
    '622311594654695434',
    11,
    '2020-08-19 11:55:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    1999,
    '685313371603861515',
    '622311594654695434',
    15,
    '2020-08-19 12:00:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2000,
    '277452700658958336',
    '622311594654695434',
    13,
    '2020-08-19 12:10:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2001,
    '718476011297046669',
    '622311594654695434',
    14,
    '2020-08-22 08:56:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2002,
    '239304827174256641',
    '622311594654695434',
    7,
    '2020-08-19 12:33:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2003,
    '578445562668384286',
    '622311594654695434',
    5,
    '2020-08-19 12:35:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2004,
    '449381738989355009',
    '622311594654695434',
    7,
    '2020-08-19 12:44:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2005,
    '251942654173118467',
    '538361750651797504',
    9,
    '2020-08-19 13:12:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2006,
    '727910553678512240',
    '538361750651797504',
    12,
    '2020-08-19 13:12:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2007,
    '395676026149011457',
    '622311594654695434',
    12,
    '2020-08-19 13:16:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2008,
    '745315651773530223',
    '538361750651797504',
    8,
    '2020-08-19 13:30:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2009,
    '705069460813381752',
    '622311594654695434',
    917,
    '2020-09-24 00:50:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2010,
    '339540725345812480',
    '622311594654695434',
    7,
    '2020-08-19 15:38:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2011,
    '497793693911351306',
    '622311594654695434',
    12,
    '2020-08-19 15:39:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2012,
    '652944659542442007',
    '622311594654695434',
    14,
    '2020-08-19 15:48:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2013,
    '307766376980938753',
    '622311594654695434',
    12,
    '2020-08-19 17:03:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2014,
    '740625827217014794',
    '622311594654695434',
    50,
    '2020-08-19 17:17:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2015,
    '381325972584005645',
    '622311594654695434',
    14,
    '2020-08-19 18:43:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2016,
    '703020259522642001',
    '622311594654695434',
    10,
    '2020-08-19 18:59:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2017,
    '550253608097153026',
    '622311594654695434',
    8,
    '2020-08-19 19:11:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2018,
    '373518833971101706',
    '538361750651797504',
    9,
    '2020-08-19 19:50:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2019,
    '303664544159498242',
    '622311594654695434',
    13,
    '2020-08-19 20:31:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2020,
    '663557228145410088',
    '538361750651797504',
    6,
    '2020-08-19 22:37:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2021,
    '601189657664946207',
    '622311594654695434',
    10,
    '2020-08-20 00:04:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2022,
    '563613745666981888',
    '622311594654695434',
    67,
    '2020-09-21 06:07:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2023,
    '496229747395788830',
    '622311594654695434',
    12,
    '2020-08-20 02:02:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2024,
    '269666061199081472',
    '622311594654695434',
    8,
    '2020-08-20 03:32:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2025,
    '472648360537358346',
    '622311594654695434',
    15,
    '2020-08-20 04:03:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2026,
    '445500878817067008',
    '538361750651797504',
    62,
    '2020-08-24 00:14:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2027,
    '692578949972230146',
    '538361750651797504',
    6,
    '2020-08-20 04:23:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2028,
    '527705244025749534',
    '538361750651797504',
    20,
    '2020-08-20 23:59:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2029,
    '683881687767056387',
    '622311594654695434',
    9,
    '2020-08-20 05:34:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2030,
    '433183607646060544',
    '622311594654695434',
    7,
    '2020-08-20 05:50:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2031,
    '419326063601254434',
    '538361750651797504',
    12,
    '2020-08-20 08:07:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2032,
    '745600574082514985',
    '622311594654695434',
    6,
    '2020-08-20 08:41:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2033,
    '704971602613239829',
    '538361750651797504',
    15,
    '2020-08-20 11:12:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2034,
    '616420786646941727',
    '622311594654695434',
    30,
    '2020-09-06 11:59:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2035,
    '725046505827991642',
    '538361750651797504',
    8,
    '2020-08-20 15:05:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2036,
    '518131450655145986',
    '622311594654695434',
    15,
    '2020-08-20 23:40:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2037,
    '185472170548396033',
    '538361750651797504',
    8,
    '2020-08-21 11:36:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2038,
    '270572188828958721',
    '622311594654695434',
    11,
    '2020-08-21 12:42:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2039,
    '618835853388677170',
    '538361750651797504',
    9,
    '2020-08-21 14:35:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2040,
    '509150695044284417',
    '622311594654695434',
    16,
    '2020-08-26 06:20:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2041,
    '619555889803952141',
    '622311594654695434',
    28,
    '2020-08-22 16:34:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2042,
    '337525780903100418',
    '538361750651797504',
    9,
    '2020-08-21 23:21:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2043,
    '533732988735717386',
    '538361750651797504',
    8,
    '2020-08-22 00:07:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2044,
    '541844898836643840',
    '622311594654695434',
    36,
    '2020-08-29 00:54:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2045,
    '413083065200410665',
    '622311594654695434',
    5,
    '2020-08-22 02:48:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2046,
    '454723732230111245',
    '622311594654695434',
    8,
    '2020-08-22 02:50:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2047,
    '706896916260323389',
    '622311594654695434',
    12,
    '2020-08-22 02:50:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2048,
    '334297476418895873',
    '622311594654695434',
    20,
    '2020-09-06 18:21:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2049,
    '341789685158379521',
    '622311594654695434',
    11,
    '2020-08-22 02:50:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2050,
    '290208305824006144',
    '622311594654695434',
    5,
    '2020-08-22 02:51:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2051,
    '689915687929380913',
    '622311594654695434',
    11,
    '2020-08-22 02:55:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2052,
    '509983304066400257',
    '622311594654695434',
    10,
    '2020-08-22 03:06:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2053,
    '255125972163100682',
    '622311594654695434',
    12,
    '2020-08-22 03:17:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2054,
    '283793116886990849',
    '622311594654695434',
    6,
    '2020-08-22 03:25:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2055,
    '691719693362266162',
    '622311594654695434',
    12,
    '2020-08-22 04:00:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2056,
    '288468912264314880',
    '622311594654695434',
    12,
    '2020-08-22 04:54:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2057,
    '326081992615788546',
    '622311594654695434',
    12,
    '2020-08-22 05:23:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2058,
    '528020825866108928',
    '622311594654695434',
    6,
    '2020-08-22 05:41:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2059,
    '629725395163283476',
    '622311594654695434',
    6,
    '2020-08-22 06:42:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2060,
    '568656006838484992',
    '622311594654695434',
    5,
    '2020-08-22 06:45:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2061,
    '705076825499631668',
    '622311594654695434',
    10,
    '2020-08-22 07:01:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2062,
    '537548515078045716',
    '622311594654695434',
    13,
    '2020-08-22 08:46:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2063,
    '338419819827298307',
    '622311594654695434',
    9,
    '2020-08-22 09:28:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2064,
    '312929323655102464',
    '622311594654695434',
    9,
    '2020-08-22 09:46:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2065,
    '216993280456392706',
    '622311594654695434',
    7,
    '2020-08-22 10:41:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2066,
    '715917973327577178',
    '622311594654695434',
    1101,
    '2020-10-02 13:20:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2067,
    '307532013680721920',
    '622311594654695434',
    6,
    '2020-08-22 13:02:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2068,
    '599581885726720012',
    '622311594654695434',
    24,
    '2020-08-22 14:02:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2069,
    '566500221962420224',
    '622311594654695434',
    11,
    '2020-08-22 14:42:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2070,
    '398319918363443210',
    '622311594654695434',
    15,
    '2020-08-22 14:47:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2071,
    '411173330972835881',
    '622311594654695434',
    22,
    '2020-08-23 10:43:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2072,
    '667479653228740628',
    '538361750651797504',
    9,
    '2020-08-22 16:36:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2073,
    '693445784229773402',
    '622311594654695434',
    13,
    '2020-08-22 16:46:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2074,
    '692486618182975580',
    '622311594654695434',
    9,
    '2020-08-22 16:50:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2075,
    '221079527701479427',
    '622311594654695434',
    11,
    '2020-08-22 16:55:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2076,
    '526597384331853835',
    '622311594654695434',
    15,
    '2020-08-22 18:23:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2077,
    '482965587828670474',
    '622311594654695434',
    32,
    '2020-08-22 21:27:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2078,
    '302269850984644609',
    '622311594654695434',
    7,
    '2020-08-22 21:27:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2079,
    '453932440138809357',
    '622311594654695434',
    8,
    '2020-08-22 23:13:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2080,
    '698573232974069841',
    '622311594654695434',
    15,
    '2020-08-23 00:11:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2081,
    '724193228609421384',
    '622311594654695434',
    9,
    '2020-08-23 05:07:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2082,
    '453875792322232323',
    '622311594654695434',
    22,
    '2020-08-23 06:46:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2083,
    '747002129746624612',
    '538361750651797504',
    9,
    '2020-08-23 08:11:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2084,
    '743208949871804448',
    '538361750651797504',
    5,
    '2020-08-23 08:15:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2085,
    '647500323031875595',
    '622311594654695434',
    20,
    '2020-08-29 18:18:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2086,
    '643421644546899988',
    '538361750651797504',
    8,
    '2020-08-23 12:20:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2087,
    '467254723473309696',
    '538361750651797504',
    6,
    '2020-08-23 12:24:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2088,
    '691430209869578320',
    '622311594654695434',
    8,
    '2020-08-23 14:49:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2089,
    '202127192484872192',
    '622311594654695434',
    13,
    '2020-08-23 14:49:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2090,
    '518155281679777807',
    '622311594654695434',
    12,
    '2020-08-23 14:52:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2091,
    '252019126971793408',
    '622311594654695434',
    10,
    '2020-08-23 14:59:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2092,
    '98468406725971968',
    '622311594654695434',
    10,
    '2020-08-23 15:07:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2093,
    '487731418311557123',
    '622311594654695434',
    11,
    '2020-08-23 16:22:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2094,
    '570522176831094801',
    '622311594654695434',
    11,
    '2020-08-23 17:11:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2095,
    '473375026008162317',
    '622311594654695434',
    14,
    '2020-08-24 07:47:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2096,
    '604525952319488000',
    '622311594654695434',
    19,
    '2020-08-23 22:56:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2097,
    '134672335474130944',
    '538361750651797504',
    27,
    '2020-08-26 17:04:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2098,
    '337702634364469249',
    '622311594654695434',
    33,
    '2020-09-07 13:58:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2099,
    '297751319022665729',
    '622311594654695434',
    6,
    '2020-08-24 05:21:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2100,
    '696132223262392390',
    '622311594654695434',
    16,
    '2020-08-24 08:08:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2101,
    '662207542486630401',
    '538361750651797504',
    10,
    '2020-08-24 09:28:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2102,
    '697209844461207623',
    '622311594654695434',
    47,
    '2020-09-26 11:27:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2103,
    '566548986815840256',
    '538361750651797504',
    11,
    '2020-08-24 12:49:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2104,
    '679453438710382593',
    '622311594654695434',
    12,
    '2020-08-24 14:37:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2105,
    '744077045683847219',
    '538361750651797504',
    14,
    '2020-08-24 15:52:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2106,
    '691353055886704642',
    '538361750651797504',
    6,
    '2020-08-24 16:30:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2107,
    '445277909259649025',
    '538361750651797504',
    9,
    '2020-08-24 16:36:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2108,
    '614569562460913843',
    '538361750651797504',
    8,
    '2020-08-24 16:44:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2109,
    '362975596730515458',
    '622311594654695434',
    38,
    '2020-09-11 06:42:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2110,
    '237284360276017162',
    '622311594654695434',
    6,
    '2020-08-24 19:16:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2111,
    '717527727082569790',
    '538361750651797504',
    12,
    '2020-08-24 19:40:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2112,
    '654370025473441803',
    '538361750651797504',
    8,
    '2020-08-24 20:12:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2113,
    '435931370431184908',
    '538361750651797504',
    14,
    '2020-08-24 20:34:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2114,
    '525716783211085834',
    '622311594654695434',
    13,
    '2020-08-24 20:52:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2115,
    '300213910995468288',
    '622311594654695434',
    6,
    '2020-08-24 21:14:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2116,
    '448597152579452941',
    '538361750651797504',
    12,
    '2020-08-24 23:55:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2117,
    '537607197782310913',
    '622311594654695434',
    13,
    '2020-08-25 00:13:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2118,
    '472174014253629440',
    '622311594654695434',
    8,
    '2020-08-25 02:03:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2119,
    '213456036005150722',
    '622311594654695434',
    11,
    '2020-08-25 05:27:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2120,
    '709606370198028318',
    '622311594654695434',
    9,
    '2020-08-25 10:05:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2121,
    '338601516501958659',
    '622311594654695434',
    10,
    '2020-08-25 12:26:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2122,
    '747407538948931675',
    '538361750651797504',
    12,
    '2020-08-25 14:00:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2123,
    '672822671326576640',
    '622311594654695434',
    10,
    '2020-08-25 14:18:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2124,
    '747811115395842110',
    '538361750651797504',
    9,
    '2020-08-25 17:30:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2125,
    '715255373983907921',
    '538361750651797504',
    26,
    '2020-08-25 18:31:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2126,
    '639447607214866443',
    '622311594654695434',
    129,
    '2020-10-04 11:34:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2127,
    '663801812910080027',
    '538361750651797504',
    8,
    '2020-08-25 20:22:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2128,
    '683120046456832057',
    '622311594654695434',
    28,
    '2020-08-26 03:43:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2129,
    '508544744536670208',
    '622311594654695434',
    10,
    '2020-08-26 09:26:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2130,
    '458100363749490698',
    '622311594654695434',
    11,
    '2020-08-26 09:27:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2131,
    '305181780120567809',
    '538361750651797504',
    10,
    '2020-08-26 11:06:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2132,
    '312945358533689344',
    '538361750651797504',
    14,
    '2020-08-26 11:40:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2133,
    '447545308558262274',
    '622311594654695434',
    18,
    '2020-08-29 19:24:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2134,
    '674405090336964608',
    '622311594654695434',
    27,
    '2020-09-26 20:38:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2135,
    '345544741917556737',
    '622311594654695434',
    24,
    '2020-08-26 12:57:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2136,
    '530949316878270505',
    '622311594654695434',
    16,
    '2020-08-26 12:58:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2137,
    '366048141516210178',
    '622311594654695434',
    14,
    '2020-08-26 13:07:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2138,
    '575358657856929803',
    '622311594654695434',
    13,
    '2020-08-26 13:46:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2139,
    '328671485453664282',
    '622311594654695434',
    11,
    '2020-08-26 13:47:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2140,
    '356147216039018496',
    '622311594654695434',
    7,
    '2020-08-26 13:47:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2141,
    '375033391059435521',
    '622311594654695434',
    1398,
    '2020-10-13 09:36:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2142,
    '499151544042782720',
    '622311594654695434',
    13,
    '2020-08-26 13:47:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2143,
    '292688576603226113',
    '622311594654695434',
    10,
    '2020-08-26 13:50:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2144,
    '221978888903983105',
    '622311594654695434',
    28,
    '2020-08-26 14:04:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2145,
    '291693342591549440',
    '622311594654695434',
    14,
    '2020-08-26 15:42:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2146,
    '347156944592699415',
    '622311594654695434',
    358,
    '2020-10-02 15:45:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2147,
    '391403822062501888',
    '622311594654695434',
    15,
    '2020-08-28 20:03:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2148,
    '527973656752685061',
    '622311594654695434',
    7,
    '2020-08-26 14:52:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2149,
    '434150464053837824',
    '622311594654695434',
    9,
    '2020-08-26 14:53:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2150,
    '626528299555749890',
    '622311594654695434',
    43,
    '2020-08-27 01:23:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2151,
    '418240535464247297',
    '622311594654695434',
    14,
    '2020-08-26 15:37:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2152,
    '660693089291337743',
    '622311594654695434',
    8,
    '2020-08-26 15:46:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2153,
    '571537695319392256',
    '622311594654695434',
    9,
    '2020-08-26 16:02:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2154,
    '358318004624424980',
    '622311594654695434',
    14,
    '2020-08-26 16:14:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2155,
    '668995002839465995',
    '622311594654695434',
    14,
    '2020-08-26 16:20:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2156,
    '681286405326241877',
    '622311594654695434',
    12,
    '2020-08-26 16:29:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2157,
    '227532637709795328',
    '622311594654695434',
    14,
    '2020-08-26 18:05:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2158,
    '534829146136641556',
    '622311594654695434',
    12,
    '2020-08-26 18:24:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2159,
    '626467774310383659',
    '622311594654695434',
    23,
    '2020-08-26 20:32:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2160,
    '601846146523987993',
    '622311594654695434',
    9,
    '2020-08-26 19:10:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2161,
    '564658453499346987',
    '622311594654695434',
    10,
    '2020-08-26 22:43:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2162,
    '347267947942772738',
    '622311594654695434',
    7,
    '2020-08-26 23:12:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2163,
    '692432426370072677',
    '538361750651797504',
    10,
    '2020-08-27 00:00:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2164,
    '733371425615904878',
    '622311594654695434',
    13,
    '2020-08-27 00:54:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2165,
    '129128465940217856',
    '622311594654695434',
    17,
    '2020-09-26 16:49:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2166,
    '685815690464460818',
    '622311594654695434',
    13,
    '2020-08-27 05:39:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2167,
    '439368822852550656',
    '622311594654695434',
    5,
    '2020-08-27 05:57:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2168,
    '655185227177656350',
    '538361750651797504',
    5,
    '2020-08-27 06:45:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2169,
    '332180710171475988',
    '538361750651797504',
    7,
    '2020-08-27 07:32:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2170,
    '608173164350013441',
    '622311594654695434',
    9,
    '2020-08-27 07:56:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2171,
    '618780501460910080',
    '538361750651797504',
    7,
    '2020-08-27 09:07:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2172,
    '614536467393413145',
    '622311594654695434',
    11,
    '2020-08-27 09:11:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2173,
    '406523292845998081',
    '622311594654695434',
    5,
    '2020-08-27 11:27:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2174,
    '609166600322678796',
    '538361750651797504',
    8,
    '2020-08-27 15:02:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2175,
    '309986733158694912',
    '622311594654695434',
    11,
    '2020-08-27 15:46:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2176,
    '669951309729890326',
    '622311594654695434',
    355,
    '2020-08-27 17:54:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2177,
    '748031837330210826',
    '538361750651797504',
    14,
    '2020-08-27 18:19:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2178,
    '251143265271808001',
    '538361750651797504',
    16,
    '2020-08-27 18:44:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2179,
    '449768720190144513',
    '622311594654695434',
    12,
    '2020-08-28 01:08:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2180,
    '660965133543276576',
    '622311594654695434',
    7,
    '2020-08-28 01:12:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2181,
    '726613073124917259',
    '622311594654695434',
    22,
    '2020-08-30 14:28:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2182,
    '599398211534323744',
    '622311594654695434',
    12,
    '2020-08-28 02:59:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2183,
    '330144701992927233',
    '622311594654695434',
    14,
    '2020-08-28 03:19:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2184,
    '578854294732931073',
    '622311594654695434',
    18,
    '2020-08-31 00:30:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2185,
    '408195961790398465',
    '622311594654695434',
    7,
    '2020-08-28 05:32:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2186,
    '704168472653070449',
    '538361750651797504',
    6,
    '2020-08-28 06:04:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2187,
    '711736084438057031',
    '538361750651797504',
    5,
    '2020-08-28 06:17:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2188,
    '698240958629937273',
    '538361750651797504',
    5,
    '2020-08-28 08:16:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2189,
    '740378409770811395',
    '538361750651797504',
    8,
    '2020-08-28 08:21:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2190,
    '515467044469080066',
    '538361750651797504',
    11,
    '2020-08-28 10:50:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2191,
    '509927564261720065',
    '622311594654695434',
    50,
    '2020-09-12 11:05:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2192,
    '673088175887089683',
    '538361750651797504',
    10,
    '2020-08-28 14:58:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2193,
    '620361989188747306',
    '622311594654695434',
    6,
    '2020-08-28 15:04:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2194,
    '638647103425478669',
    '538361750651797504',
    8,
    '2020-08-28 15:20:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2195,
    '615751956434255894',
    '622311594654695434',
    24,
    '2020-08-28 15:21:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2196,
    '349493132456361995',
    '622311594654695434',
    14,
    '2020-08-28 15:41:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2197,
    '566685415688503296',
    '622311594654695434',
    20,
    '2020-08-28 15:44:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2198,
    '283074180117954563',
    '622311594654695434',
    25,
    '2020-08-28 15:55:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2199,
    '602838820743938069',
    '622311594654695434',
    45,
    '2020-08-28 16:44:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2200,
    '491252940070453290',
    '538361750651797504',
    6,
    '2020-08-28 19:51:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2201,
    '575383512165908480',
    '538361750651797504',
    10,
    '2020-08-28 19:51:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2202,
    '310456622197768193',
    '538361750651797504',
    13,
    '2020-08-28 19:51:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2203,
    '722373316945379349',
    '538361750651797504',
    12,
    '2020-08-28 19:51:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2204,
    '307604431292203008',
    '538361750651797504',
    7,
    '2020-08-28 20:02:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2205,
    '422176028568453120',
    '622311594654695434',
    10,
    '2020-08-29 04:52:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2206,
    '423241059292676107',
    '622311594654695434',
    14,
    '2020-08-29 04:59:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2207,
    '653088269734510603',
    '622311594654695434',
    14,
    '2020-08-29 06:34:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2208,
    '451930739777208320',
    '622311594654695434',
    22,
    '2020-09-16 16:41:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2209,
    '514651568990191626',
    '538361750651797504',
    8,
    '2020-08-29 05:59:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2210,
    '501370831251701761',
    '622311594654695434',
    12,
    '2020-08-29 06:22:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2211,
    '465792514650275840',
    '622311594654695434',
    11,
    '2020-08-29 07:07:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2212,
    '211564618487693322',
    '622311594654695434',
    10,
    '2020-08-29 08:19:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2213,
    '748561498510721055',
    '538361750651797504',
    12,
    '2020-08-29 09:16:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2214,
    '501466549945892864',
    '622311594654695434',
    13,
    '2020-08-29 10:14:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2215,
    '434687511076405248',
    '622311594654695434',
    13,
    '2020-08-29 10:40:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2216,
    '287708912554213376',
    '622311594654695434',
    8,
    '2020-08-29 10:45:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2217,
    '591021523452690432',
    '622311594654695434',
    16,
    '2020-08-29 12:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2218,
    '658014363499757589',
    '622311594654695434',
    55,
    '2020-08-30 20:47:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2219,
    '488446478130348043',
    '622311594654695434',
    11,
    '2020-08-29 14:36:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2220,
    '224536569514688514',
    '622311594654695434',
    10,
    '2020-08-29 15:05:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2221,
    '726452881695178832',
    '622311594654695434',
    84,
    '2020-08-29 18:13:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2222,
    '725361545684713513',
    '622311594654695434',
    14,
    '2020-08-29 15:27:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2223,
    '474820971727945762',
    '538361750651797504',
    30,
    '2020-10-12 17:59:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2224,
    '723457391475294249',
    '538361750651797504',
    15,
    '2020-08-29 16:29:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2225,
    '342058544000008196',
    '538361750651797504',
    9,
    '2020-08-29 16:43:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2226,
    '747574801706647562',
    '538361750651797504',
    9,
    '2020-08-29 19:11:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2227,
    '473932114719539200',
    '622311594654695434',
    6,
    '2020-08-29 21:18:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2228,
    '687838113896464448',
    '622311594654695434',
    13,
    '2020-08-30 01:44:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2229,
    '560909861664194602',
    '622311594654695434',
    10,
    '2020-08-30 01:44:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2230,
    '328040157972529153',
    '622311594654695434',
    48,
    '2020-09-24 07:25:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2231,
    '427730078496194561',
    '622311594654695434',
    19,
    '2020-09-06 00:02:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2232,
    '524232804566040597',
    '622311594654695434',
    168,
    '2020-09-06 12:28:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2233,
    '317428044912656386',
    '622311594654695434',
    27,
    '2020-09-06 11:58:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2234,
    '359088912226058240',
    '622311594654695434',
    14,
    '2020-08-30 04:42:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2235,
    '353774678826811403',
    '538361750651797504',
    82,
    '2020-08-30 06:09:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2236,
    '561159403537956874',
    '538361750651797504',
    8,
    '2020-08-30 06:26:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2237,
    '613663928693817363',
    '622311594654695434',
    8,
    '2020-08-30 06:30:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2238,
    '347740806771113989',
    '622311594654695434',
    16,
    '2020-08-30 08:37:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2239,
    '745409010269683712',
    '622311594654695434',
    123,
    '2020-09-10 17:05:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2240,
    '259795654526631938',
    '622311594654695434',
    17,
    '2020-08-30 12:56:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2241,
    '713133212469035008',
    '538361750651797504',
    15,
    '2020-08-30 13:08:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2242,
    '748803586497970196',
    '538361750651797504',
    7,
    '2020-08-30 14:28:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2243,
    '277344892986851329',
    '622311594654695434',
    55,
    '2020-09-06 11:57:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2244,
    '519305854160338947',
    '622311594654695434',
    32,
    '2020-08-30 15:49:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2245,
    '351585656440487939',
    '622311594654695434',
    2148,
    '2020-11-03 13:44:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2246,
    '341429032383938560',
    '538361750651797504',
    6,
    '2020-08-30 17:23:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2247,
    '250027952954146816',
    '622311594654695434',
    11,
    '2020-08-30 17:24:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2248,
    '378889194677731329',
    '622311594654695434',
    9,
    '2020-08-30 20:13:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2249,
    '456907311177531393',
    '622311594654695434',
    8,
    '2020-08-30 21:29:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2250,
    '563477352990900227',
    '622311594654695434',
    13,
    '2020-08-30 22:15:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2251,
    '559820297738387466',
    '622311594654695434',
    7,
    '2020-08-30 22:49:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2252,
    '200451257566101505',
    '538361750651797504',
    12,
    '2020-08-30 23:26:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2253,
    '615029005673955329',
    '538361750651797504',
    10,
    '2020-08-31 00:34:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2254,
    '410174337149042688',
    '622311594654695434',
    12,
    '2020-08-31 02:39:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2255,
    '607676786347606027',
    '538361750651797504',
    7,
    '2020-08-31 02:45:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2256,
    '747756288158728215',
    '622311594654695434',
    52,
    '2020-09-23 11:12:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2257,
    '668571977232941090',
    '622311594654695434',
    10,
    '2020-08-31 03:31:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2258,
    '749865193101721654',
    '538361750651797504',
    13,
    '2020-08-31 05:53:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2259,
    '401647807976439808',
    '538361750651797504',
    12,
    '2020-08-31 07:25:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2260,
    '351200275656343574',
    '538361750651797504',
    5,
    '2020-08-31 07:26:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2261,
    '217673355954749442',
    '538361750651797504',
    14,
    '2020-08-31 07:37:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2262,
    '344314027557781504',
    '538361750651797504',
    7,
    '2020-08-31 07:43:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2263,
    '475451601776017420',
    '622311594654695434',
    28,
    '2020-08-31 12:15:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2264,
    '744960443105148938',
    '538361750651797504',
    12,
    '2020-08-31 11:14:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2265,
    '528071523098165280',
    '622311594654695434',
    6,
    '2020-08-31 11:19:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2266,
    '356168597564817408',
    '622311594654695434',
    7,
    '2020-08-31 12:00:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2267,
    '591660196057841695',
    '622311594654695434',
    29,
    '2020-08-31 13:38:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2268,
    '600258403771875338',
    '538361750651797504',
    14,
    '2020-08-31 14:10:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2269,
    '311829774706278402',
    '622311594654695434',
    8,
    '2020-08-31 14:14:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2270,
    '560130026486366214',
    '622311594654695434',
    15,
    '2020-08-31 16:31:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2271,
    '472214819848585226',
    '622311594654695434',
    13,
    '2020-09-04 20:12:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2272,
    '689481234950258696',
    '622311594654695434',
    8,
    '2020-09-01 07:46:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2273,
    '390045085129113610',
    '622311594654695434',
    8,
    '2020-09-01 09:20:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2274,
    '576804551202701313',
    '538361750651797504',
    7,
    '2020-09-01 14:50:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2275,
    '277949024793919488',
    '622311594654695434',
    7,
    '2020-09-01 16:28:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2276,
    '455143792497131532',
    '622311594654695434',
    14,
    '2020-09-01 17:14:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2277,
    '542074273267712023',
    '538361750651797504',
    6,
    '2020-09-01 17:51:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2278,
    '334990553932365825',
    '622311594654695434',
    6,
    '2020-09-01 18:03:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2279,
    '704798796046925967',
    '622311594654695434',
    8,
    '2020-09-01 19:08:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2280,
    '690507008134217758',
    '538361750651797504',
    14,
    '2020-09-01 19:24:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2281,
    '614822091606458368',
    '538361750651797504',
    9,
    '2020-09-01 20:14:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2282,
    '578824520241119232',
    '622311594654695434',
    9,
    '2020-09-01 21:07:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2283,
    '685863645959290919',
    '622311594654695434',
    7,
    '2020-09-01 22:06:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2284,
    '292755097400639498',
    '622311594654695434',
    9,
    '2020-09-01 23:02:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2285,
    '628715941206818819',
    '622311594654695434',
    72,
    '2020-09-02 00:28:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2286,
    '270772287819481101',
    '622311594654695434',
    243,
    '2020-10-20 03:58:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2287,
    '472088550813204481',
    '622311594654695434',
    12,
    '2020-09-02 01:22:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2288,
    '509247183103590411',
    '622311594654695434',
    12,
    '2020-09-02 01:44:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2289,
    '281039906979971073',
    '622311594654695434',
    18,
    '2020-09-02 12:58:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2290,
    '275419902381260802',
    '538361750651797504',
    5,
    '2020-09-02 05:01:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2291,
    '709728438457598043',
    '538361750651797504',
    7,
    '2020-09-02 05:59:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2292,
    '387761968385097734',
    '622311594654695434',
    8,
    '2020-09-02 06:51:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2293,
    '282122206941806592',
    '622311594654695434',
    11,
    '2020-09-02 08:15:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2294,
    '399118503292174346',
    '538361750651797504',
    6,
    '2020-09-02 08:40:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2295,
    '750355969929643096',
    '622311594654695434',
    8,
    '2020-09-02 09:55:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2296,
    '533909706482253857',
    '622311594654695434',
    14,
    '2020-09-02 11:30:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2297,
    '691994449751965696',
    '622311594654695434',
    6,
    '2020-09-02 11:30:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2298,
    '441284809856122891',
    '622311594654695434',
    13,
    '2020-09-02 11:31:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2299,
    '376321829393924097',
    '622311594654695434',
    10,
    '2020-09-02 11:33:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2300,
    '538756264147157005',
    '622311594654695434',
    20,
    '2020-09-05 20:36:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2301,
    '448799206275022850',
    '622311594654695434',
    10,
    '2020-09-02 11:55:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2302,
    '204132897299365894',
    '622311594654695434',
    19,
    '2020-09-02 12:05:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2303,
    '585937553329487877',
    '622311594654695434',
    10,
    '2020-09-02 12:31:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2304,
    '391652144614342657',
    '622311594654695434',
    7,
    '2020-09-02 13:04:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2305,
    '238950598299353089',
    '622311594654695434',
    15,
    '2020-09-02 14:57:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2306,
    '539684793538052106',
    '622311594654695434',
    10,
    '2020-09-02 15:04:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2307,
    '570406626461483019',
    '622311594654695434',
    11,
    '2020-09-02 15:09:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2308,
    '395004416622854145',
    '622311594654695434',
    28,
    '2020-09-19 16:25:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2309,
    '665715790523400223',
    '622311594654695434',
    12,
    '2020-09-02 15:32:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2310,
    '433896027926429696',
    '622311594654695434',
    12,
    '2020-09-02 15:53:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2311,
    '690132996195745872',
    '538361750651797504',
    6,
    '2020-09-02 16:03:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2312,
    '602964679769325711',
    '538361750651797504',
    9,
    '2020-09-02 16:04:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2313,
    '698284366450786395',
    '622311594654695434',
    11,
    '2020-09-02 16:16:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2314,
    '362631993500106772',
    '622311594654695434',
    13,
    '2020-09-02 18:34:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2315,
    '247741395958235137',
    '622311594654695434',
    31,
    '2020-09-16 15:56:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2316,
    '667962097111400450',
    '538361750651797504',
    9,
    '2020-09-02 20:02:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2317,
    '449712246222749698',
    '622311594654695434',
    259,
    '2020-11-10 09:43:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2318,
    '174047605557297153',
    '622311594654695434',
    11,
    '2020-09-02 23:38:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2319,
    '382729236793917461',
    '622311594654695434',
    12,
    '2020-09-03 00:45:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2320,
    '628599408174301194',
    '622311594654695434',
    10,
    '2020-09-03 01:18:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2321,
    '85615542861312000',
    '538361750651797504',
    5,
    '2020-09-03 03:52:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2322,
    '692615736149016616',
    '622311594654695434',
    13,
    '2020-09-03 07:15:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2323,
    '622251857217191937',
    '622311594654695434',
    12,
    '2020-09-03 15:52:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2324,
    '533094325538652220',
    '538361750651797504',
    5,
    '2020-09-03 17:26:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2325,
    '287755452609986562',
    '538361750651797504',
    14,
    '2020-09-03 17:47:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2326,
    '142317608291663872',
    '538361750651797504',
    12,
    '2020-09-03 17:53:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2327,
    '724543095189929985',
    '622311594654695434',
    12,
    '2020-09-03 17:57:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2328,
    '333729585244012545',
    '622311594654695434',
    6,
    '2020-09-03 19:57:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2329,
    '339526499449176071',
    '622311594654695434',
    14,
    '2020-09-03 20:45:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2330,
    '402576594184437764',
    '622311594654695434',
    13,
    '2020-09-03 21:19:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2331,
    '332086843774599168',
    '622311594654695434',
    41,
    '2020-09-13 13:14:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2332,
    '738924772863508552',
    '622311594654695434',
    18,
    '2020-09-03 22:38:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2333,
    '709452640710295643',
    '622311594654695434',
    25,
    '2020-09-05 04:12:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2334,
    '702652937733800046',
    '538361750651797504',
    12,
    '2020-09-04 00:27:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2335,
    '536986067140608041',
    '538361750651797504',
    14,
    '2020-09-04 01:45:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2336,
    '737495572625358941',
    '538361750651797504',
    13,
    '2020-09-04 02:33:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2337,
    '430117093573394442',
    '538361750651797504',
    12,
    '2020-09-04 03:52:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2338,
    '312737536546177025',
    '538361750651797504',
    19,
    '2020-09-04 03:59:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2339,
    '523877466486472714',
    '538361750651797504',
    41,
    '2020-09-05 01:24:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2340,
    '692746278614073434',
    '622311594654695434',
    10,
    '2020-09-04 10:25:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2341,
    '576361366974365711',
    '622311594654695434',
    14,
    '2020-09-18 22:55:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2342,
    '513562401808056330',
    '622311594654695434',
    9,
    '2020-09-04 14:52:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2343,
    '524183138294038528',
    '622311594654695434',
    6,
    '2020-09-04 15:25:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2344,
    '514133940525727755',
    '622311594654695434',
    9,
    '2020-09-04 17:44:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2345,
    '568413676986433536',
    '622311594654695434',
    11,
    '2020-09-04 19:53:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2346,
    '653491487736332288',
    '538361750651797504',
    9,
    '2020-09-04 20:43:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2347,
    '583950173848469504',
    '538361750651797504',
    7,
    '2020-09-04 21:19:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2348,
    '575265074063736832',
    '538361750651797504',
    7,
    '2020-09-04 22:02:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2349,
    '580001315590111242',
    '622311594654695434',
    28,
    '2020-09-04 22:12:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2350,
    '712540256976765008',
    '622311594654695434',
    13,
    '2020-09-04 22:49:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2351,
    '521898042656292887',
    '622311594654695434',
    12,
    '2020-09-05 00:56:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2352,
    '740392804936581150',
    '538361750651797504',
    12,
    '2020-09-05 02:23:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2353,
    '673247785101033473',
    '622311594654695434',
    7,
    '2020-09-05 03:17:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2354,
    '730091560284454953',
    '538361750651797504',
    6,
    '2020-09-05 09:52:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2355,
    '407524032292847624',
    '538361750651797504',
    12,
    '2020-09-05 11:01:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2356,
    '716186503478509589',
    '622311594654695434',
    6,
    '2020-09-05 12:54:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2357,
    '238042994324930561',
    '538361750651797504',
    5,
    '2020-09-05 15:00:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2358,
    '424660127090737162',
    '622311594654695434',
    13,
    '2020-09-05 15:03:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2359,
    '688506975285280837',
    '538361750651797504',
    13,
    '2020-09-05 22:45:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2360,
    '583409547389960202',
    '622311594654695434',
    64,
    '2020-09-15 13:20:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2361,
    '322745409074102282',
    '538361750651797504',
    12,
    '2020-09-06 05:51:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2362,
    '346561559310630942',
    '622311594654695434',
    12,
    '2020-09-06 09:23:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2363,
    '311924784810295298',
    '622311594654695434',
    5,
    '2020-09-06 10:12:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2364,
    '453690795099291649',
    '622311594654695434',
    11,
    '2020-09-06 10:18:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2365,
    '641697745245044786',
    '538361750651797504',
    13,
    '2020-09-06 11:25:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2366,
    '726215834925531237',
    '622311594654695434',
    14,
    '2020-09-06 12:05:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2367,
    '371171106259861504',
    '622311594654695434',
    45,
    '2020-09-06 13:49:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2368,
    '679706534628163595',
    '538361750651797504',
    5,
    '2020-09-06 13:08:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2369,
    '708655234981036084',
    '622311594654695434',
    165,
    '2020-09-06 13:40:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2370,
    '712311194689732640',
    '622311594654695434',
    11,
    '2020-09-06 15:38:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2371,
    '420574444805816321',
    '538361750651797504',
    7,
    '2020-09-06 16:37:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2372,
    '319229816870273024',
    '538361750651797504',
    8,
    '2020-09-06 18:49:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2373,
    '437408467419136000',
    '622311594654695434',
    151,
    '2020-09-09 00:11:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2374,
    '579033550955741184',
    '538361750651797504',
    7,
    '2020-09-06 23:18:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2375,
    '742166416811229258',
    '538361750651797504',
    7,
    '2020-09-07 00:29:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2376,
    '552848286487150602',
    '622311594654695434',
    48,
    '2020-09-07 11:45:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2377,
    '595715095536074769',
    '538361750651797504',
    10,
    '2020-09-07 01:39:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2378,
    '708917359750021161',
    '622311594654695434',
    535,
    '2020-10-07 13:23:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2379,
    '710554145266073630',
    '538361750651797504',
    6,
    '2020-09-07 06:09:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2380,
    '549059481716129792',
    '538361750651797504',
    14,
    '2020-09-07 06:14:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2381,
    '305789481024487425',
    '538361750651797504',
    15,
    '2020-09-07 06:46:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2382,
    '639623104666271782',
    '622311594654695434',
    13,
    '2020-09-07 07:14:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2383,
    '395899470019297280',
    '622311594654695434',
    43,
    '2020-09-07 16:38:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2384,
    '574658117128945687',
    '538361750651797504',
    13,
    '2020-09-07 09:54:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2385,
    '637290702660960266',
    '538361750651797504',
    5,
    '2020-09-07 09:58:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2386,
    '591053937059037238',
    '538361750651797504',
    8,
    '2020-09-07 10:00:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2387,
    '443032224917618689',
    '622311594654695434',
    6,
    '2020-09-07 10:15:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2388,
    '235055235951886347',
    '538361750651797504',
    7,
    '2020-09-07 11:11:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2389,
    '677154200341184522',
    '622311594654695434',
    7,
    '2020-09-07 11:18:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2390,
    '293215801836568576',
    '622311594654695434',
    14,
    '2020-09-07 13:47:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2391,
    '310605793424834570',
    '622311594654695434',
    8,
    '2020-09-07 13:48:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2392,
    '691236753649959013',
    '622311594654695434',
    10,
    '2020-09-07 14:59:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2393,
    '481718505939533834',
    '622311594654695434',
    5,
    '2020-09-07 16:58:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2394,
    '728202747211677796',
    '538361750651797504',
    19,
    '2020-09-07 19:41:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2395,
    '619645171759448087',
    '622311594654695434',
    72,
    '2020-09-09 15:36:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2396,
    '218873682276122636',
    '622311594654695434',
    31,
    '2020-09-08 07:28:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2397,
    '348610468056924163',
    '622311594654695434',
    12,
    '2020-09-08 07:07:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2398,
    '429005495546937364',
    '538361750651797504',
    12,
    '2020-09-08 07:48:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2399,
    '377449737965535233',
    '622311594654695434',
    8,
    '2020-09-08 09:41:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2400,
    '280277230633091075',
    '538361750651797504',
    8,
    '2020-09-08 12:11:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2401,
    '711538145841119235',
    '538361750651797504',
    12,
    '2020-09-08 12:55:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2402,
    '697427225779240960',
    '538361750651797504',
    5,
    '2020-09-08 13:09:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2403,
    '439930945970110474',
    '622311594654695434',
    1019,
    '2020-10-01 16:46:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2404,
    '626927723738300416',
    '622311594654695434',
    111,
    '2020-11-03 20:36:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2405,
    '459202399719129089',
    '622311594654695434',
    14,
    '2020-09-08 18:24:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2406,
    '491456090903674893',
    '622311594654695434',
    597,
    '2020-11-08 08:38:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2407,
    '414680725682520074',
    '622311594654695434',
    25,
    '2020-09-09 01:31:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2408,
    '216729910373253131',
    '622311594654695434',
    10,
    '2020-09-09 02:00:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2409,
    '293784940196397057',
    '538361750651797504',
    11,
    '2020-09-09 02:29:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2410,
    '483049774191476757',
    '538361750651797504',
    12,
    '2020-09-09 11:58:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2411,
    '277361757310287872',
    '538361750651797504',
    10,
    '2020-09-09 12:39:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2412,
    '632509476360159232',
    '622311594654695434',
    20,
    '2020-09-09 13:00:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2413,
    '556821878455533579',
    '622311594654695434',
    8,
    '2020-09-09 12:59:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2414,
    '651807074795257856',
    '622311594654695434',
    13,
    '2020-09-15 11:13:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2415,
    '394476733069393920',
    '622311594654695434',
    11,
    '2020-09-09 13:03:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2416,
    '668638637876838400',
    '622311594654695434',
    15,
    '2020-09-09 13:14:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2417,
    '333673107636092928',
    '622311594654695434',
    6,
    '2020-09-09 13:14:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2418,
    '388887294376935425',
    '622311594654695434',
    10,
    '2020-09-09 13:19:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2419,
    '716011047860830228',
    '622311594654695434',
    10,
    '2020-09-09 13:24:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2420,
    '468833154128412684',
    '622311594654695434',
    13,
    '2020-09-09 13:38:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2421,
    '725853035766743112',
    '622311594654695434',
    14,
    '2020-09-09 13:42:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2422,
    '510553563160641565',
    '622311594654695434',
    28,
    '2020-09-09 13:47:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2423,
    '645049788118597642',
    '622311594654695434',
    14,
    '2020-09-09 13:47:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2424,
    '690213092772151333',
    '622311594654695434',
    21,
    '2020-09-09 13:57:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2425,
    '650160518816071690',
    '622311594654695434',
    8,
    '2020-09-09 14:02:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2426,
    '502949467759181836',
    '622311594654695434',
    49,
    '2020-09-19 20:27:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2427,
    '651431911087931434',
    '622311594654695434',
    20,
    '2020-09-09 14:19:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2428,
    '667819239809351681',
    '622311594654695434',
    32,
    '2020-09-26 20:26:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2429,
    '273818791782383616',
    '622311594654695434',
    99,
    '2020-09-11 16:11:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2430,
    '392683849554984961',
    '622311594654695434',
    26,
    '2020-09-10 16:11:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2431,
    '659911027114377226',
    '622311594654695434',
    7,
    '2020-09-09 15:56:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2432,
    '236243106880552960',
    '538361750651797504',
    9,
    '2020-09-09 16:37:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2433,
    '560200035493740555',
    '622311594654695434',
    10,
    '2020-09-09 17:14:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2434,
    '615896209730830344',
    '538361750651797504',
    13,
    '2020-09-09 17:29:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2435,
    '495869618590711838',
    '622311594654695434',
    19,
    '2020-10-01 16:54:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2436,
    '456866854917373973',
    '622311594654695434',
    7,
    '2020-09-09 19:35:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2437,
    '301116362288398337',
    '622311594654695434',
    22,
    '2020-09-16 21:52:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2438,
    '734334721428816005',
    '622311594654695434',
    10,
    '2020-09-09 21:50:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2439,
    '484893800578416663',
    '538361750651797504',
    7,
    '2020-09-09 23:52:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2440,
    '422537107957874689',
    '622311594654695434',
    6,
    '2020-09-10 00:46:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2441,
    '633919337002041355',
    '622311594654695434',
    26,
    '2020-09-10 04:51:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2442,
    '484476383133696021',
    '622311594654695434',
    471,
    '2020-09-21 18:04:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2443,
    '589362899881820179',
    '622311594654695434',
    19,
    '2020-09-10 02:21:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2444,
    '689548537218072650',
    '538361750651797504',
    6,
    '2020-09-10 03:32:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2445,
    '679535762391564308',
    '538361750651797504',
    12,
    '2020-09-10 05:35:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2446,
    '325441567580225537',
    '538361750651797504',
    11,
    '2020-09-10 05:40:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2447,
    '279243321442959361',
    '538361750651797504',
    13,
    '2020-09-10 05:51:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2448,
    '753497299006652456',
    '622311594654695434',
    13,
    '2020-09-10 06:11:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2449,
    '753498322630869122',
    '622311594654695434',
    34,
    '2020-09-10 06:19:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2450,
    '312199499432853514',
    '622311594654695434',
    22,
    '2020-09-10 07:52:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2451,
    '678555030038511627',
    '538361750651797504',
    38,
    '2020-09-21 17:39:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2452,
    '677078698083745802',
    '622311594654695434',
    8,
    '2020-09-10 11:14:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2453,
    '567709485729316874',
    '622311594654695434',
    94,
    '2020-10-09 10:01:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2454,
    '337854135976198144',
    '538361750651797504',
    14,
    '2020-09-10 13:59:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2455,
    '617031779920117760',
    '538361750651797504',
    5,
    '2020-09-10 14:08:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2456,
    '537716538187186235',
    '538361750651797504',
    12,
    '2020-09-10 14:16:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2457,
    '189329215823282185',
    '622311594654695434',
    14,
    '2020-09-10 16:35:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2458,
    '733731750529728672',
    '538361750651797504',
    12,
    '2020-09-10 17:54:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2459,
    '650628827860566019',
    '538361750651797504',
    61,
    '2020-10-13 20:06:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2460,
    '201843528618213376',
    '622311594654695434',
    6,
    '2020-09-11 00:10:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2461,
    '297605388805865475',
    '538361750651797504',
    10,
    '2020-09-11 00:40:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2462,
    '713742467161128970',
    '622311594654695434',
    8,
    '2020-09-11 00:45:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2463,
    '648148934169985024',
    '538361750651797504',
    5,
    '2020-09-11 05:08:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2464,
    '497553982810750999',
    '622311594654695434',
    14,
    '2020-09-11 07:13:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2465,
    '729939222353674291',
    '622311594654695434',
    12,
    '2020-09-11 07:21:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2466,
    '681469433264341036',
    '538361750651797504',
    8,
    '2020-09-11 17:07:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2467,
    '754044733692575837',
    '538361750651797504',
    9,
    '2020-09-11 20:26:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2468,
    '735673325224853515',
    '538361750651797504',
    17,
    '2020-09-11 20:33:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2469,
    '732674651892744292',
    '538361750651797504',
    104,
    '2020-09-11 23:05:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2470,
    '367024255399100436',
    '538361750651797504',
    22,
    '2020-09-11 22:50:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2471,
    '711181307690090497',
    '538361750651797504',
    10,
    '2020-09-12 08:16:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2472,
    '268222498519253002',
    '622311594654695434',
    953,
    '2020-11-10 09:36:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2473,
    '615572967291879434',
    '538361750651797504',
    11,
    '2020-09-12 13:51:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2474,
    '645419459468591114',
    '622311594654695434',
    114,
    '2020-11-02 16:16:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2475,
    '661337976181096450',
    '622311594654695434',
    11,
    '2020-09-12 17:46:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2476,
    '704379603245858888',
    '538361750651797504',
    156,
    '2020-10-07 22:24:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2477,
    '270580472638078977',
    '538361750651797504',
    57,
    '2020-09-12 20:23:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2478,
    '547086867926089780',
    '538361750651797504',
    14,
    '2020-09-12 20:19:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2479,
    '221627672562761728',
    '622311594654695434',
    270,
    '2020-11-11 21:02:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2480,
    '256460316660072448',
    '538361750651797504',
    7,
    '2020-09-12 21:51:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2481,
    '754566595518529677',
    '622311594654695434',
    22,
    '2020-09-13 09:42:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2482,
    '737568258642935851',
    '538361750651797504',
    6,
    '2020-09-13 06:06:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2483,
    '672519377995825172',
    '622311594654695434',
    32,
    '2020-09-13 07:20:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2484,
    '349674131404488705',
    '622311594654695434',
    12,
    '2020-09-13 08:23:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2485,
    '219343064542478336',
    '538361750651797504',
    11,
    '2020-09-13 12:05:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2486,
    '597151552410484766',
    '538361750651797504',
    14,
    '2020-09-13 13:47:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2487,
    '298432708269441034',
    '538361750651797504',
    53,
    '2020-09-13 14:10:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2488,
    '380730045208985611',
    '622311594654695434',
    5,
    '2020-09-13 14:24:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2489,
    '686712809899425928',
    '622311594654695434',
    48,
    '2020-09-16 15:58:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2490,
    '93801185122713600',
    '538361750651797504',
    12,
    '2020-09-14 00:52:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2491,
    '425128762615529473',
    '538361750651797504',
    9,
    '2020-09-14 01:29:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2492,
    '396321388400476161',
    '538361750651797504',
    15,
    '2020-09-14 10:03:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2493,
    '536467346488033313',
    '538361750651797504',
    26,
    '2020-09-14 16:34:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2494,
    '700350678702227568',
    '622311594654695434',
    11,
    '2020-09-14 15:04:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2495,
    '674326910678990869',
    '622311594654695434',
    7,
    '2020-09-14 19:06:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2496,
    '336869008148135948',
    '538361750651797504',
    11,
    '2020-09-14 22:36:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2497,
    '551249205054668812',
    '538361750651797504',
    11,
    '2020-09-15 10:16:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2498,
    '221190241275478016',
    '538361750651797504',
    14,
    '2020-09-15 11:30:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2499,
    '447393216149323777',
    '622311594654695434',
    24,
    '2020-09-18 05:07:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2500,
    '436884593346347028',
    '622311594654695434',
    19,
    '2020-09-15 14:16:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2501,
    '503985776414162944',
    '538361750651797504',
    6,
    '2020-09-15 20:10:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2502,
    '427165303785390082',
    '622311594654695434',
    44,
    '2020-09-19 01:29:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2503,
    '492025613478264842',
    '538361750651797504',
    13,
    '2020-09-16 05:36:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2504,
    '673390875400994847',
    '538361750651797504',
    14,
    '2020-09-16 20:01:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2505,
    '471072282593460224',
    '538361750651797504',
    13,
    '2020-09-16 21:21:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2506,
    '530494349151305737',
    '622311594654695434',
    48,
    '2020-09-18 12:31:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2507,
    '432823255682777090',
    '538361750651797504',
    10,
    '2020-09-17 22:37:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2508,
    '598354899742228521',
    '622311594654695434',
    10,
    '2020-09-17 22:41:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2509,
    '352593566566187009',
    '622311594654695434',
    13,
    '2020-09-17 23:54:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2510,
    '235769659209678849',
    '622311594654695434',
    676,
    '2020-10-17 03:36:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2511,
    '591048432421044258',
    '538361750651797504',
    6,
    '2020-09-18 01:22:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2512,
    '735287791675506698',
    '538361750651797504',
    12,
    '2020-09-18 03:39:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2513,
    '616575881833480192',
    '538361750651797504',
    19,
    '2020-09-26 10:34:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2514,
    '541163914227089408',
    '538361750651797504',
    5,
    '2020-09-18 13:18:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2515,
    '386221431416946698',
    '538361750651797504',
    14,
    '2020-09-18 17:49:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2516,
    '478198926642642944',
    '538361750651797504',
    15,
    '2020-09-18 20:43:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2517,
    '671342773064171521',
    '538361750651797504',
    36,
    '2020-09-26 17:23:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2518,
    '443868000592986115',
    '538361750651797504',
    9,
    '2020-09-18 20:55:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2519,
    '678760431535259662',
    '538361750651797504',
    13,
    '2020-09-19 07:23:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2520,
    '750918005524791367',
    '622311594654695434',
    10,
    '2020-09-19 08:37:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2521,
    '315194955783995392',
    '538361750651797504',
    10,
    '2020-09-19 10:00:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2522,
    '694159277996113981',
    '622311594654695434',
    58,
    '2020-09-30 12:03:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2523,
    '360069781010776066',
    '538361750651797504',
    10,
    '2020-09-19 12:42:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2524,
    '733331079360151554',
    '538361750651797504',
    13,
    '2020-09-19 15:11:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2525,
    '390483329021116426',
    '538361750651797504',
    48,
    '2020-10-13 16:44:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2526,
    '401132360747450378',
    '538361750651797504',
    9,
    '2020-09-19 19:50:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2527,
    '349510353404559360',
    '538361750651797504',
    5,
    '2020-09-19 20:11:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2528,
    '569965272052793344',
    '538361750651797504',
    7,
    '2020-09-19 20:12:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2529,
    '757225795608510505',
    '538361750651797504',
    13,
    '2020-09-20 14:20:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2530,
    '756447952355983420',
    '538361750651797504',
    12,
    '2020-09-20 16:40:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2531,
    '544805979179712522',
    '538361750651797504',
    8,
    '2020-09-20 17:10:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2532,
    '413468145966383114',
    '622311594654695434',
    11,
    '2020-09-20 17:31:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2533,
    '399573974201401344',
    '622311594654695434',
    6,
    '2020-09-20 20:57:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2534,
    '550657577894150144',
    '622311594654695434',
    11,
    '2020-09-21 00:53:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2535,
    '720305442902900756',
    '622311594654695434',
    8,
    '2020-09-21 02:34:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2536,
    '542749823372361745',
    '538361750651797504',
    27,
    '2020-09-21 07:15:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2537,
    '697371118566244393',
    '538361750651797504',
    9,
    '2020-09-21 11:38:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2538,
    '635064896131825665',
    '538361750651797504',
    7,
    '2020-09-21 11:46:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2539,
    '675203996377677844',
    '538361750651797504',
    10,
    '2020-09-21 13:29:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2540,
    '734395421455155300',
    '538361750651797504',
    7,
    '2020-09-21 14:54:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2541,
    '485483198961418240',
    '622311594654695434',
    7,
    '2020-09-21 16:06:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2542,
    '481099802176651275',
    '538361750651797504',
    14,
    '2020-09-21 16:22:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2543,
    '753962167199596574',
    '622311594654695434',
    6,
    '2020-09-21 19:45:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2544,
    '661691260733489152',
    '622311594654695434',
    15,
    '2020-09-22 02:18:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2545,
    '694269113832308747',
    '538361750651797504',
    10,
    '2020-09-22 11:18:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2546,
    '440754123642503170',
    '538361750651797504',
    9,
    '2020-09-22 12:32:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2547,
    '719898238794072065',
    '538361750651797504',
    14,
    '2020-09-22 13:33:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2548,
    '605747197786456084',
    '538361750651797504',
    8,
    '2020-09-22 14:51:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2549,
    '544031620315742209',
    '622311594654695434',
    173,
    '2020-10-19 14:16:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2550,
    '404613959568719872',
    '622311594654695434',
    6,
    '2020-09-23 10:55:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2551,
    '755135030677733546',
    '538361750651797504',
    6,
    '2020-09-23 14:32:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2552,
    '640511254657499147',
    '622311594654695434',
    340,
    '2020-11-11 07:06:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2553,
    '102228634667872256',
    '538361750651797504',
    12,
    '2020-09-23 18:37:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2554,
    '756641017117016074',
    '538361750651797504',
    7,
    '2020-09-23 19:11:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2555,
    '163040232701296641',
    '538361750651797504',
    14,
    '2020-09-23 21:24:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2556,
    '757400854620799067',
    '538361750651797504',
    14,
    '2020-09-24 01:08:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2557,
    '651587837749100546',
    '622311594654695434',
    33,
    '2020-09-24 01:12:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2558,
    '664719927835623424',
    '622311594654695434',
    8,
    '2020-09-25 08:13:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2559,
    '756294558274289714',
    '538361750651797504',
    8,
    '2020-09-25 10:33:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2560,
    '450289701233098763',
    '538361750651797504',
    11,
    '2020-09-25 11:23:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2561,
    '560908833095155727',
    '538361750651797504',
    6,
    '2020-09-25 11:37:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2562,
    '725745666726297621',
    '622311594654695434',
    8,
    '2020-09-25 12:42:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2563,
    '512948517069914113',
    '538361750651797504',
    10,
    '2020-09-25 14:03:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2564,
    '734796159473942538',
    '538361750651797504',
    7,
    '2020-09-25 16:04:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2565,
    '741143874608693288',
    '538361750651797504',
    14,
    '2020-09-25 20:40:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2566,
    '380190628266639360',
    '538361750651797504',
    7,
    '2020-09-25 20:51:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2567,
    '397784786581717002',
    '622311594654695434',
    15,
    '2020-09-26 03:25:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2568,
    '746595661415186523',
    '622311594654695434',
    13,
    '2020-09-26 12:20:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2569,
    '585852082439979040',
    '622311594654695434',
    14,
    '2020-09-26 13:05:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2570,
    '185749060500586496',
    '622311594654695434',
    11,
    '2020-09-26 13:07:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2571,
    '465087693102120971',
    '622311594654695434',
    9,
    '2020-09-26 14:35:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2572,
    '503918204364783617',
    '622311594654695434',
    9,
    '2020-09-26 15:16:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2573,
    '754885233345560666',
    '538361750651797504',
    6,
    '2020-09-26 16:40:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2574,
    '470304647056326666',
    '538361750651797504',
    14,
    '2020-09-26 16:45:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2575,
    '576099528961425424',
    '538361750651797504',
    12,
    '2020-09-26 17:06:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2576,
    '412061391181053973',
    '622311594654695434',
    10,
    '2020-09-26 17:39:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2577,
    '670693613436403785',
    '622311594654695434',
    19,
    '2020-09-26 20:43:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2578,
    '704782985676718090',
    '622311594654695434',
    14,
    '2020-09-26 22:25:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2579,
    '552124335519957004',
    '622311594654695434',
    10,
    '2020-09-26 23:31:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2580,
    '495799411020922900',
    '622311594654695434',
    198,
    '2020-10-12 00:48:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2581,
    '560650043279802369',
    '622311594654695434',
    52,
    '2020-09-27 02:07:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2582,
    '536416551830552597',
    '622311594654695434',
    87,
    '2020-09-27 12:40:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2583,
    '515470742297640961',
    '622311594654695434',
    21,
    '2020-09-27 06:47:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2584,
    '759673705625944065',
    '622311594654695434',
    11,
    '2020-09-27 07:24:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2585,
    '399425191278673925',
    '622311594654695434',
    8,
    '2020-09-27 09:46:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2586,
    '276721966046773248',
    '622311594654695434',
    11,
    '2020-09-27 13:21:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2587,
    '759739692030754866',
    '538361750651797504',
    11,
    '2020-09-27 13:44:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2588,
    '435413547749474306',
    '622311594654695434',
    7,
    '2020-09-27 14:59:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2589,
    '710358961173299210',
    '622311594654695434',
    31,
    '2020-10-03 06:44:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2590,
    '469112286406246403',
    '538361750651797504',
    19,
    '2020-09-27 16:40:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2591,
    '321673115891531787',
    '538361750651797504',
    14,
    '2020-09-27 20:11:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2592,
    '690368524564299836',
    '538361750651797504',
    24,
    '2020-10-01 20:23:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2593,
    '759664990952751125',
    '538361750651797504',
    12,
    '2020-09-28 02:53:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2594,
    '325004502195240960',
    '622311594654695434',
    5,
    '2020-09-28 03:34:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2595,
    '526814879483428865',
    '538361750651797504',
    12,
    '2020-09-28 06:50:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2596,
    '720679920971284490',
    '538361750651797504',
    19,
    '2020-09-29 14:23:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2597,
    '553619327102877700',
    '622311594654695434',
    8,
    '2020-09-28 12:04:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2598,
    '690518530575171606',
    '622311594654695434',
    13,
    '2020-09-28 13:16:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2599,
    '760480463621324870',
    '538361750651797504',
    8,
    '2020-09-29 12:38:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2600,
    '525261088082886659',
    '622311594654695434',
    125,
    '2020-11-07 12:48:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2601,
    '513464168289009665',
    '622311594654695434',
    19,
    '2020-09-29 14:58:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2602,
    '324205707538989058',
    '622311594654695434',
    214,
    '2020-10-24 12:45:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2603,
    '720708791024353401',
    '622311594654695434',
    43,
    '2020-09-29 22:31:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2604,
    '336648745380741121',
    '538361750651797504',
    11,
    '2020-09-29 18:16:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2605,
    '727656046201536552',
    '622311594654695434',
    8,
    '2020-09-29 18:56:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2606,
    '408289224761016332',
    '538361750651797504',
    5,
    '2020-09-30 18:11:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2607,
    '641362306827026433',
    '538361750651797504',
    10,
    '2020-09-30 21:16:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2608,
    '518738198982295564',
    '538361750651797504',
    30,
    '2020-09-30 21:33:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2609,
    '667931992649760779',
    '622311594654695434',
    10,
    '2020-10-01 03:34:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2610,
    '449602910947377153',
    '622311594654695434',
    11,
    '2020-10-01 06:35:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2611,
    '560315963661352960',
    '622311594654695434',
    11,
    '2020-10-01 07:14:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2612,
    '278371532521340929',
    '538361750651797504',
    28,
    '2020-10-07 03:42:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2613,
    '158255144461533184',
    '538361750651797504',
    10,
    '2020-10-01 10:31:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2614,
    '588365761500807198',
    '538361750651797504',
    13,
    '2020-10-01 11:05:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2615,
    '167990165258633216',
    '538361750651797504',
    6,
    '2020-10-01 11:52:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2616,
    '551765085618569216',
    '622311594654695434',
    9,
    '2020-10-01 15:04:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2617,
    '354596201472983050',
    '622311594654695434',
    7,
    '2020-10-01 19:45:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2618,
    '105036424197193728',
    '538361750651797504',
    9,
    '2020-10-01 20:50:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2619,
    '566046201171017735',
    '538361750651797504',
    12,
    '2020-10-02 05:56:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2620,
    '651374239311724544',
    '622311594654695434',
    65,
    '2020-10-08 06:24:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2621,
    '112686628991934464',
    '622311594654695434',
    38,
    '2020-10-03 08:51:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2622,
    '751532900125769774',
    '622311594654695434',
    11,
    '2020-10-02 19:01:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2623,
    '525842461655040011',
    '538361750651797504',
    7,
    '2020-10-03 00:04:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2624,
    '566974892881477632',
    '538361750651797504',
    8,
    '2020-10-03 00:06:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2625,
    '655043020957155358',
    '622311594654695434',
    49,
    '2020-10-03 13:13:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2626,
    '704904008489238529',
    '622311594654695434',
    39,
    '2020-11-06 23:32:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2627,
    '695508329505751090',
    '622311594654695434',
    7,
    '2020-10-03 10:41:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2628,
    '163690438455197696',
    '622311594654695434',
    8,
    '2020-10-03 10:52:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2629,
    '693101726311514142',
    '622311594654695434',
    14,
    '2020-10-03 13:33:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2630,
    '761861986841133077',
    '538361750651797504',
    7,
    '2020-10-03 18:04:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2631,
    '761732858845855782',
    '538361750651797504',
    15,
    '2020-10-03 18:05:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2632,
    '586989620462485504',
    '538361750651797504',
    9,
    '2020-10-03 18:05:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2633,
    '749403256333271071',
    '538361750651797504',
    8,
    '2020-10-03 21:55:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2634,
    '304810139377205258',
    '538361750651797504',
    15,
    '2020-10-04 05:33:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2635,
    '649494908935208991',
    '538361750651797504',
    9,
    '2020-10-04 10:31:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2636,
    '670577318540083230',
    '622311594654695434',
    58,
    '2020-10-07 13:25:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2637,
    '744189403395653662',
    '622311594654695434',
    11,
    '2020-10-04 14:11:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2638,
    '440612736066650140',
    '538361750651797504',
    131,
    '2020-10-18 21:31:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2639,
    '290467364372480000',
    '538361750651797504',
    6,
    '2020-10-04 15:39:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2640,
    '756959145092972564',
    '538361750651797504',
    12,
    '2020-10-04 17:48:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2641,
    '337208252834119681',
    '538361750651797504',
    12,
    '2020-10-04 23:40:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2642,
    '748295642597556302',
    '538361750651797504',
    7,
    '2020-10-04 23:44:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2643,
    '489653280213827602',
    '538361750651797504',
    7,
    '2020-10-05 01:45:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2644,
    '712814613280063520',
    '622311594654695434',
    73,
    '2020-11-10 21:21:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2645,
    '363135259291942922',
    '538361750651797504',
    8,
    '2020-10-05 13:42:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2646,
    '698219744603668490',
    '622311594654695434',
    6,
    '2020-10-05 14:17:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2647,
    '618764892106915850',
    '622311594654695434',
    14,
    '2020-10-05 14:24:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2648,
    '750661143982505985',
    '538361750651797504',
    11,
    '2020-10-05 14:25:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2649,
    '510803871644385290',
    '622311594654695434',
    7,
    '2020-10-06 10:17:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2650,
    '306591884573147137',
    '538361750651797504',
    8,
    '2020-10-06 11:02:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2651,
    '449388032416546816',
    '622311594654695434',
    5,
    '2020-10-06 12:31:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2652,
    '576451616186695722',
    '538361750651797504',
    13,
    '2020-10-06 16:09:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2653,
    '673513975354490881',
    '622311594654695434',
    5,
    '2020-10-06 18:01:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2654,
    '593321296214097930',
    '538361750651797504',
    13,
    '2020-10-06 19:21:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2655,
    '715260426639769681',
    '538361750651797504',
    9,
    '2020-10-06 19:25:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2656,
    '763135392600817694',
    '538361750651797504',
    13,
    '2020-10-06 23:24:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2657,
    '716130970113409025',
    '538361750651797504',
    11,
    '2020-10-07 03:34:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2658,
    '730765101849772103',
    '538361750651797504',
    11,
    '2020-10-07 05:09:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2659,
    '412947639844470785',
    '622311594654695434',
    31,
    '2020-10-17 12:23:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2660,
    '763089809202872340',
    '538361750651797504',
    9,
    '2020-10-07 11:46:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2661,
    '722609470336794675',
    '538361750651797504',
    12,
    '2020-10-07 12:09:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2662,
    '643795252364181505',
    '622311594654695434',
    27,
    '2020-10-07 13:22:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2663,
    '659298974850613248',
    '622311594654695434',
    19,
    '2020-10-07 13:18:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2664,
    '712594410554261555',
    '622311594654695434',
    34,
    '2020-10-07 13:26:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2665,
    '303334386017763329',
    '622311594654695434',
    11,
    '2020-10-07 16:52:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2666,
    '553658870250340364',
    '538361750651797504',
    7,
    '2020-10-07 17:21:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2667,
    '440575579335557121',
    '538361750651797504',
    8,
    '2020-10-07 17:21:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2668,
    '476196897502003221',
    '622311594654695434',
    14,
    '2020-10-07 17:46:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2669,
    '441699829979283461',
    '538361750651797504',
    9,
    '2020-10-07 21:32:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2670,
    '549753652282261536',
    '538361750651797504',
    8,
    '2020-10-07 21:35:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2671,
    '762091107211018331',
    '538361750651797504',
    9,
    '2020-10-07 21:36:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2672,
    '212084240655843328',
    '622311594654695434',
    7,
    '2020-10-07 21:52:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2673,
    '373136553301770252',
    '538361750651797504',
    8,
    '2020-10-07 21:59:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2674,
    '697258809365626931',
    '538361750651797504',
    16,
    '2020-10-09 20:23:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2675,
    '706199014600605799',
    '538361750651797504',
    13,
    '2020-10-08 14:26:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2676,
    '559915878645366804',
    '538361750651797504',
    14,
    '2020-10-08 16:28:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2677,
    '480167141971329054',
    '622311594654695434',
    26,
    '2020-10-08 19:00:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2678,
    '763785386266067055',
    '538361750651797504',
    6,
    '2020-10-08 19:36:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2679,
    '259373704658550785',
    '538361750651797504',
    8,
    '2020-10-08 19:38:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2680,
    '371651311424372739',
    '622311594654695434',
    8,
    '2020-10-08 19:56:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2681,
    '754651263320457226',
    '538361750651797504',
    15,
    '2020-10-08 19:59:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2682,
    '762436398074298368',
    '538361750651797504',
    14,
    '2020-10-08 21:51:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2683,
    '763871796117504031',
    '538361750651797504',
    13,
    '2020-10-08 21:54:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2684,
    '657446024511619073',
    '538361750651797504',
    12,
    '2020-10-09 08:48:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2685,
    '744687181691617420',
    '538361750651797504',
    6,
    '2020-10-09 09:29:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2686,
    '731652515745103923',
    '538361750651797504',
    9,
    '2020-10-09 09:29:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2687,
    '286174844423241739',
    '538361750651797504',
    5,
    '2020-10-09 11:00:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2688,
    '600822104044208148',
    '538361750651797504',
    18,
    '2020-10-09 20:23:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2689,
    '374090827779145728',
    '622311594654695434',
    14,
    '2020-10-09 12:41:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2690,
    '621435761828560907',
    '622311594654695434',
    13,
    '2020-10-09 18:26:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2691,
    '764203893009285161',
    '538361750651797504',
    11,
    '2020-10-09 19:38:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2692,
    '756232105662349432',
    '538361750651797504',
    14,
    '2020-10-09 19:54:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2693,
    '483921585976377344',
    '538361750651797504',
    6,
    '2020-10-09 20:08:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2694,
    '224727396908007425',
    '622311594654695434',
    163,
    '2020-10-14 00:05:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2695,
    '365717824691240960',
    '538361750651797504',
    13,
    '2020-10-10 00:29:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2696,
    '428063977671491586',
    '622311594654695434',
    7,
    '2020-10-10 00:41:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2697,
    '345720568747655180',
    '538361750651797504',
    10,
    '2020-10-10 00:46:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2698,
    '574870314928832533',
    '538361750651797504',
    33,
    '2020-10-10 04:30:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2699,
    '751945103169421343',
    '622311594654695434',
    16,
    '2020-10-10 07:05:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2700,
    '684992349146710027',
    '622311594654695434',
    16,
    '2020-10-22 21:52:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2701,
    '249569524955742208',
    '622311594654695434',
    33,
    '2020-10-10 11:03:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2702,
    '746615492680089671',
    '622311594654695434',
    6,
    '2020-10-10 10:57:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2703,
    '182138833653989376',
    '538361750651797504',
    11,
    '2020-10-10 11:10:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2704,
    '267713810901630976',
    '622311594654695434',
    142,
    '2020-11-08 22:08:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2705,
    '745365251163422851',
    '538361750651797504',
    5,
    '2020-10-10 12:02:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2706,
    '442757261824229376',
    '538361750651797504',
    13,
    '2020-10-10 14:06:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2707,
    '505869794713534486',
    '538361750651797504',
    13,
    '2020-10-10 14:12:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2708,
    '210057481458548738',
    '538361750651797504',
    22,
    '2020-10-10 19:00:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2709,
    '324653201947230212',
    '538361750651797504',
    29,
    '2020-10-10 21:06:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2710,
    '446230921952231424',
    '538361750651797504',
    5,
    '2020-10-10 21:30:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2711,
    '527994612271546379',
    '538361750651797504',
    289,
    '2020-10-31 19:50:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2712,
    '615749613974061071',
    '622311594654695434',
    25,
    '2020-10-12 16:17:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2713,
    '344804676593516544',
    '622311594654695434',
    41,
    '2020-10-24 17:31:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2714,
    '690171421866983439',
    '538361750651797504',
    63,
    '2020-10-12 18:11:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2715,
    '513985777525325825',
    '622311594654695434',
    89,
    '2020-11-03 05:55:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2716,
    '583976306618925056',
    '622311594654695434',
    5,
    '2020-10-13 13:14:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2717,
    '442699512138563634',
    '538361750651797504',
    9,
    '2020-10-13 18:21:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2718,
    '530789022608523264',
    '622311594654695434',
    10,
    '2020-10-13 18:57:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2719,
    '164898542417084417',
    '538361750651797504',
    14,
    '2020-10-13 21:13:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2720,
    '640118714976567296',
    '622311594654695434',
    7,
    '2020-10-14 13:28:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2721,
    '455052864788758539',
    '538361750651797504',
    12,
    '2020-10-15 12:26:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2722,
    '458992781206224897',
    '538361750651797504',
    6,
    '2020-10-15 14:36:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2723,
    '346123912507031564',
    '538361750651797504',
    8,
    '2020-10-15 14:46:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2724,
    '356032361588064257',
    '538361750651797504',
    48,
    '2020-10-24 14:49:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2725,
    '586531356272754709',
    '538361750651797504',
    49,
    '2020-10-20 14:13:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2726,
    '306769101592985610',
    '538361750651797504',
    7,
    '2020-10-15 17:45:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2727,
    '275407931728461824',
    '538361750651797504',
    13,
    '2020-10-15 19:53:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2728,
    '759720723224199219',
    '538361750651797504',
    8,
    '2020-10-15 21:21:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2729,
    '576107832072470540',
    '538361750651797504',
    8,
    '2020-10-16 08:47:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2730,
    '250207895503896576',
    '538361750651797504',
    6,
    '2020-10-16 14:08:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2731,
    '333659255062265857',
    '538361750651797504',
    13,
    '2020-10-16 18:48:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2732,
    '476176575709052941',
    '538361750651797504',
    14,
    '2020-10-16 23:14:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2733,
    '417044372576796675',
    '538361750651797504',
    20,
    '2020-10-17 07:33:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2734,
    '750958650234896396',
    '538361750651797504',
    10,
    '2020-10-17 08:43:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2735,
    '704996845667221504',
    '622311594654695434',
    36,
    '2020-11-04 23:11:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2736,
    '733007774983782501',
    '538361750651797504',
    27,
    '2020-11-09 17:18:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2737,
    '398796198569443328',
    '622311594654695434',
    51,
    '2020-11-11 08:46:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2738,
    '614333332095893514',
    '622311594654695434',
    74,
    '2020-10-18 09:21:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2739,
    '754587772777529365',
    '538361750651797504',
    31,
    '2020-10-18 17:36:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2740,
    '640224786366201856',
    '538361750651797504',
    21,
    '2020-10-18 17:49:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2741,
    '403259630437793804',
    '538361750651797504',
    22,
    '2020-10-18 17:48:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2742,
    '767046827811012608',
    '538361750651797504',
    11,
    '2020-10-18 17:58:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2743,
    '696756706650095657',
    '538361750651797504',
    14,
    '2020-10-18 19:22:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2744,
    '756052399537258536',
    '538361750651797504',
    12,
    '2020-10-18 19:38:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2745,
    '437680468016496642',
    '538361750651797504',
    7,
    '2020-10-18 19:42:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2746,
    '717792450298511432',
    '538361750651797504',
    12,
    '2020-10-18 23:38:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2747,
    '545476553296052234',
    '622311594654695434',
    11,
    '2020-10-19 01:17:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2748,
    '767048700119482428',
    '538361750651797504',
    9,
    '2020-10-19 05:22:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2749,
    '480023694266204160',
    '538361750651797504',
    11,
    '2020-10-19 12:45:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2750,
    '384163240101543936',
    '538361750651797504',
    12,
    '2020-10-19 18:35:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2751,
    '587685960914042890',
    '538361750651797504',
    11,
    '2020-10-19 18:37:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2752,
    '397660015097544706',
    '538361750651797504',
    10,
    '2020-10-19 18:55:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2753,
    '670638792071315457',
    '538361750651797504',
    8,
    '2020-10-19 19:48:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2754,
    '699843895927767112',
    '538361750651797504',
    14,
    '2020-10-20 05:57:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2755,
    '693060585491005500',
    '538361750651797504',
    11,
    '2020-10-20 11:40:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2756,
    '712270161037754438',
    '538361750651797504',
    28,
    '2020-10-20 14:40:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2757,
    '588424192488112173',
    '538361750651797504',
    6,
    '2020-10-20 15:46:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2758,
    '491261580772769803',
    '538361750651797504',
    7,
    '2020-10-20 17:05:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2759,
    '643975367987822602',
    '538361750651797504',
    8,
    '2020-10-20 18:35:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2760,
    '560892533354528769',
    '538361750651797504',
    8,
    '2020-10-20 19:02:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2761,
    '758685520196272168',
    '538361750651797504',
    11,
    '2020-10-20 20:22:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2762,
    '500082466196029451',
    '538361750651797504',
    11,
    '2020-10-20 23:31:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2763,
    '276544649148235776',
    '538361750651797504',
    23,
    '2020-10-21 00:29:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2764,
    '616419370901700658',
    '622311594654695434',
    25,
    '2020-10-21 09:18:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2765,
    '431123960915165184',
    '538361750651797504',
    11,
    '2020-10-21 13:53:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2766,
    '306388248635375616',
    '538361750651797504',
    12,
    '2020-10-21 16:23:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2767,
    '756567998898372750',
    '538361750651797504',
    35,
    '2020-10-21 17:47:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2768,
    '591446246258901012',
    '622311594654695434',
    7,
    '2020-10-21 17:45:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2769,
    '768558947006939169',
    '538361750651797504',
    14,
    '2020-10-21 20:15:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2770,
    '692678818883829760',
    '622311594654695434',
    11,
    '2020-10-22 03:39:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2771,
    '67520998290759680',
    '538361750651797504',
    8,
    '2020-10-22 05:49:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2772,
    '734451057857396766',
    '622311594654695434',
    24,
    '2020-10-22 06:13:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2773,
    '477315742279401472',
    '622311594654695434',
    453,
    '2020-11-10 09:38:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2774,
    '677802701735854090',
    '538361750651797504',
    14,
    '2020-10-22 08:17:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2775,
    '768745618747031555',
    '538361750651797504',
    26,
    '2020-10-22 09:01:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2776,
    '659072769052639232',
    '538361750651797504',
    5,
    '2020-10-22 10:17:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2777,
    '522134911377866754',
    '538361750651797504',
    8,
    '2020-10-22 17:55:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2778,
    '534189266130173962',
    '538361750651797504',
    11,
    '2020-10-22 19:12:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2779,
    '592385628025520130',
    '622311594654695434',
    11,
    '2020-10-22 19:38:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2780,
    '394424620612190218',
    '538361750651797504',
    15,
    '2020-10-22 21:04:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2781,
    '307267204343267328',
    '538361750651797504',
    9,
    '2020-10-22 22:31:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2782,
    '643501455747186700',
    '622311594654695434',
    12,
    '2020-10-22 23:54:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2783,
    '741220441376423938',
    '538361750651797504',
    19,
    '2020-10-23 02:27:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2784,
    '534764197720883200',
    '538361750651797504',
    5,
    '2020-10-23 05:12:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2785,
    '767090434001731615',
    '538361750651797504',
    9,
    '2020-10-23 05:36:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2786,
    '166619476479967232',
    '538361750651797504',
    14,
    '2020-10-23 07:20:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2787,
    '482513664583139357',
    '622311594654695434',
    17,
    '2020-10-23 08:56:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2788,
    '584174289939464203',
    '538361750651797504',
    13,
    '2020-10-23 11:27:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2789,
    '477070826668294155',
    '538361750651797504',
    43,
    '2020-10-29 22:24:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2790,
    '741763256204656718',
    '538361750651797504',
    11,
    '2020-10-23 12:37:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2791,
    '171614473797238784',
    '538361750651797504',
    10,
    '2020-10-23 13:16:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2792,
    '719988449867989142',
    '538361750651797504',
    36,
    '2020-11-10 19:12:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2793,
    '723386696007155763',
    '538361750651797504',
    13,
    '2020-10-23 15:11:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2794,
    '692195032857444412',
    '538361750651797504',
    18,
    '2020-10-23 15:37:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2795,
    '732948649201369108',
    '538361750651797504',
    85,
    '2020-10-26 18:15:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2796,
    '509348730156220427',
    '538361750651797504',
    56,
    '2020-10-23 22:38:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2797,
    '750351208556003409',
    '538361750651797504',
    122,
    '2020-10-25 14:58:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2798,
    '471158299681619978',
    '538361750651797504',
    66,
    '2020-10-25 17:04:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2799,
    '340067338919477258',
    '538361750651797504',
    8,
    '2020-10-23 16:49:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2800,
    '542009610253631523',
    '538361750651797504',
    5,
    '2020-10-23 16:49:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2801,
    '766169890830286870',
    '538361750651797504',
    8,
    '2020-10-23 17:15:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2802,
    '243295962435551232',
    '538361750651797504',
    13,
    '2020-10-23 19:46:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2803,
    '636811597410598922',
    '538361750651797504',
    9,
    '2020-10-23 20:36:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2804,
    '331222209299349504',
    '538361750651797504',
    40,
    '2020-10-24 14:13:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2805,
    '385128811567513610',
    '538361750651797504',
    6,
    '2020-10-23 22:08:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2806,
    '429862199251697665',
    '538361750651797504',
    6,
    '2020-10-23 22:48:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2807,
    '302968847353249813',
    '538361750651797504',
    12,
    '2020-10-23 23:38:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2808,
    '639995261967663104',
    '538361750651797504',
    28,
    '2020-10-31 19:13:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2809,
    '698629104286826597',
    '538361750651797504',
    7,
    '2020-10-24 00:01:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2810,
    '168386285252116480',
    '538361750651797504',
    12,
    '2020-10-24 01:16:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2811,
    '321750582912221184',
    '538361750651797504',
    16,
    '2020-10-24 03:02:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2812,
    '525709003926536202',
    '538361750651797504',
    11,
    '2020-10-24 03:25:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2813,
    '670194432657588234',
    '538361750651797504',
    17,
    '2020-10-24 05:31:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2814,
    '708269407381487676',
    '538361750651797504',
    19,
    '2020-10-24 05:15:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2815,
    '590074346815356928',
    '622311594654695434',
    12,
    '2020-10-24 04:53:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2816,
    '654285061406851083',
    '538361750651797504',
    49,
    '2020-11-11 04:38:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2817,
    '488958506280550402',
    '538361750651797504',
    30,
    '2020-10-24 08:25:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2818,
    '725344256230817822',
    '538361750651797504',
    98,
    '2020-11-04 14:25:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2819,
    '749609138249793557',
    '538361750651797504',
    19,
    '2020-10-24 12:23:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2820,
    '266409363537657856',
    '538361750651797504',
    7,
    '2020-10-24 09:08:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2821,
    '716779626759716914',
    '538361750651797504',
    71,
    '2020-10-29 01:14:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2822,
    '443364273243160577',
    '538361750651797504',
    411,
    '2020-11-09 11:23:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2823,
    '757961045641003069',
    '538361750651797504',
    10,
    '2020-10-24 14:17:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2824,
    '634798982450774027',
    '538361750651797504',
    10,
    '2020-10-24 15:43:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2825,
    '105273491456016384',
    '538361750651797504',
    10,
    '2020-10-24 17:01:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2826,
    '269034623097503744',
    '538361750651797504',
    12,
    '2020-10-24 17:41:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2827,
    '693147011909812274',
    '538361750651797504',
    9,
    '2020-10-24 19:49:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2828,
    '687882231666311315',
    '538361750651797504',
    64,
    '2020-10-26 22:20:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2829,
    '615680171634327557',
    '538361750651797504',
    11,
    '2020-10-24 21:56:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2830,
    '761553553495425084',
    '538361750651797504',
    7,
    '2020-10-25 00:02:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2831,
    '456470253015400460',
    '538361750651797504',
    11,
    '2020-10-25 10:38:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2832,
    '589178336752697362',
    '538361750651797504',
    19,
    '2020-10-25 18:50:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2833,
    '278534849676050432',
    '538361750651797504',
    11,
    '2020-10-25 19:39:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2834,
    '750768307333890178',
    '538361750651797504',
    40,
    '2020-10-25 22:23:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2835,
    '322487597609779211',
    '538361750651797504',
    19,
    '2020-10-25 22:04:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2836,
    '710367229732192296',
    '538361750651797504',
    5,
    '2020-10-25 22:27:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2837,
    '733560249130418228',
    '538361750651797504',
    20,
    '2020-10-26 06:40:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2838,
    '589788711928201227',
    '538361750651797504',
    39,
    '2020-10-28 08:16:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2839,
    '647616992894779432',
    '622311594654695434',
    18,
    '2020-10-26 23:22:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2840,
    '636913873081073703',
    '538361750651797504',
    15,
    '2020-10-26 19:22:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2841,
    '770093281715421204',
    '538361750651797504',
    11,
    '2020-10-26 19:34:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2842,
    '542005364233732107',
    '538361750651797504',
    12,
    '2020-10-26 20:05:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2843,
    '770367923310428210',
    '538361750651797504',
    6,
    '2020-10-26 20:23:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2844,
    '187287857763713027',
    '538361750651797504',
    13,
    '2020-10-26 21:45:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2845,
    '762388262940704830',
    '538361750651797504',
    7,
    '2020-10-26 23:31:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2846,
    '612308979485245461',
    '538361750651797504',
    14,
    '2020-10-26 23:51:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2847,
    '705709010451562526',
    '538361750651797504',
    14,
    '2020-10-27 05:05:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2848,
    '519810286996160522',
    '543041459096387584',
    1401,
    '2020-11-11 15:28:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2849,
    '316121675223793665',
    '543041459096387584',
    1003,
    '2020-11-11 15:21:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2850,
    '181579797791506433',
    '630140527844655161',
    550,
    '2020-11-03 14:01:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2851,
    '676098805325889547',
    '538361750651797504',
    10,
    '2020-10-27 12:13:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2852,
    '634781586340184085',
    '538361750651797504',
    13,
    '2020-10-27 13:36:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2853,
    '722503896861245481',
    '538361750651797504',
    11,
    '2020-10-27 15:17:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2854,
    '712988913093967983',
    '538361750651797504',
    6,
    '2020-10-27 15:36:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2855,
    '720505794625536020',
    '538361750651797504',
    12,
    '2020-10-27 15:42:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2856,
    '613943285114994714',
    '622311594654695434',
    10,
    '2020-10-27 16:32:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2857,
    '754652032501284905',
    '538361750651797504',
    18,
    '2020-10-27 18:01:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2858,
    '335489881163825152',
    '538361750651797504',
    13,
    '2020-10-27 18:06:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2859,
    '569357979481276416',
    '538361750651797504',
    11,
    '2020-10-27 18:10:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2860,
    '527953295407317014',
    '538361750651797504',
    7,
    '2020-10-27 20:02:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2861,
    '716724232905818122',
    '538361750651797504',
    37,
    '2020-10-29 00:39:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2862,
    '576498911859179527',
    '538361750651797504',
    10,
    '2020-10-27 20:19:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2863,
    '766868611818061845',
    '622311594654695434',
    6,
    '2020-10-28 07:35:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2864,
    '695544491679154268',
    '538361750651797504',
    9,
    '2020-10-28 08:41:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2865,
    '194043789105561601',
    '538361750651797504',
    13,
    '2020-10-28 16:37:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2866,
    '729670365525311539',
    '622311594654695434',
    5,
    '2020-10-28 17:31:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2867,
    '655342931170951188',
    '538361750651797504',
    20,
    '2020-10-29 00:17:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2868,
    '621468315130396692',
    '538361750651797504',
    9,
    '2020-10-29 00:46:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2869,
    '757569065039429655',
    '538361750651797504',
    10,
    '2020-10-29 17:28:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2870,
    '757067651226009620',
    '538361750651797504',
    11,
    '2020-10-29 18:35:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2871,
    '764080418974072834',
    '538361750651797504',
    7,
    '2020-10-29 18:43:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2872,
    '709223170925920256',
    '538361750651797504',
    14,
    '2020-10-30 01:29:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2873,
    '737249247560204330',
    '622311594654695434',
    13,
    '2020-10-30 09:40:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2874,
    '761557721379373087',
    '538361750651797504',
    13,
    '2020-10-30 18:48:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2875,
    '740611391920013442',
    '538361750651797504',
    6,
    '2020-10-31 02:52:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2876,
    '266740702816239627',
    '622311594654695434',
    14,
    '2020-10-31 03:06:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2877,
    '543980501447344148',
    '622311594654695434',
    9,
    '2020-10-31 03:36:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2878,
    '594240250147110951',
    '630140527844655161',
    944,
    '2020-10-31 16:31:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2879,
    '462048218705035274',
    '630140527844655161',
    765,
    '2020-10-31 16:47:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2880,
    '540245319456129026',
    '630140527844655161',
    203,
    '2020-10-31 04:55:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2881,
    '581443924002865153',
    '630140527844655161',
    264,
    '2020-10-31 05:19:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2882,
    '412410321790304257',
    '630140527844655161',
    304,
    '2020-10-31 05:08:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2883,
    '416227242264363008',
    '543041459096387584',
    2531,
    '2020-11-11 14:09:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2884,
    '265892110526447616',
    '630140527844655161',
    597,
    '2020-10-31 17:16:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2885,
    '517290901593128980',
    '543041459096387584',
    3018,
    '2020-11-11 15:03:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2886,
    '486971484967796737',
    '630140527844655161',
    606,
    '2020-11-06 03:21:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2887,
    '353815859744997378',
    '630140527844655161',
    16,
    '2020-10-31 04:31:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2888,
    '448671384676204544',
    '630140527844655161',
    25,
    '2020-11-03 14:02:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2889,
    '461889673652862976',
    '543041459096387584',
    143,
    '2020-11-11 14:53:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2890,
    '612296786085806089',
    '736435438079705088',
    159,
    '2020-10-31 12:56:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2891,
    '521957465894551555',
    '543041459096387584',
    994,
    '2020-11-11 16:02:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2892,
    '251203478611820555',
    '622311594654695434',
    62,
    '2020-11-05 15:13:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2893,
    '547831304285323310',
    '630140527844655161',
    249,
    '2020-11-08 17:40:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2894,
    '492208496587309099',
    '736435438079705088',
    161,
    '2020-10-31 12:47:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2895,
    '647764693804384256',
    '538361750651797504',
    18,
    '2020-10-31 11:09:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2896,
    '517290901593128980',
    '518628297106784286',
    104,
    '2020-11-08 15:28:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2897,
    '424819734446342147',
    '518628297106784286',
    65,
    '2020-11-05 14:12:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2898,
    '691239735221288960',
    '630140527844655161',
    32,
    '2020-11-11 03:20:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2899,
    '713634299529658368',
    '538361750651797504',
    69,
    '2020-10-31 12:39:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2900,
    '215889816393482240',
    '736435438079705088',
    21,
    '2020-10-31 12:45:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2901,
    '760938342933463113',
    '538361750651797504',
    17,
    '2020-10-31 12:35:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2902,
    '760938342933463113',
    '538361750651797504',
    17,
    '2020-10-31 12:35:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2903,
    '568039412617707520',
    '538361750651797504',
    14,
    '2020-10-31 12:57:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2904,
    '756760908729942087',
    '538361750651797504',
    17,
    '2020-10-31 14:18:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2905,
    '480778623373148180',
    '622311594654695434',
    6,
    '2020-10-31 14:51:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2906,
    '770628693612560444',
    '538361750651797504',
    9,
    '2020-10-31 15:42:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2907,
    '687988930250932224',
    '630140527844655161',
    24,
    '2020-10-31 15:42:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2908,
    '536565481142878228',
    '538361750651797504',
    28,
    '2020-10-31 20:33:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2909,
    '350126909423878144',
    '538361750651797504',
    12,
    '2020-10-31 17:07:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2910,
    '350126909423878144',
    '538361750651797504',
    8,
    '2020-10-31 17:07:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2911,
    '424577032177844225',
    '630140527844655161',
    77,
    '2020-10-31 17:28:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2912,
    '717516012408274955',
    '763359546193346590',
    729,
    '2020-11-10 16:27:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2913,
    '719487775887327313',
    '538361750651797504',
    11,
    '2020-10-31 22:22:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2914,
    '524306034190188556',
    '538361750651797504',
    18,
    '2020-10-31 22:49:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2915,
    '659323063959027712',
    '538361750651797504',
    13,
    '2020-11-01 00:12:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2916,
    '468450797378732053',
    '622311594654695434',
    9,
    '2020-11-01 01:53:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2917,
    '575142999051206687',
    '772321438576541726',
    6,
    '2020-11-01 04:50:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2918,
    '667620376368381952',
    '538361750651797504',
    6,
    '2020-11-01 05:00:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2919,
    '765389972558577676',
    '538361750651797504',
    11,
    '2020-11-01 06:36:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2920,
    '424807425141506050',
    '622311594654695434',
    13,
    '2020-11-01 10:59:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2921,
    '427004068993564672',
    '630140527844655161',
    14,
    '2020-11-01 11:15:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2922,
    '755016271938191392',
    '543041459096387584',
    129,
    '2020-11-08 04:16:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2923,
    '755400143385264198',
    '538361750651797504',
    6,
    '2020-11-01 22:00:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2924,
    '484107801501892619',
    '630140527844655161',
    59,
    '2020-11-05 03:26:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2925,
    '756171419016233023',
    '538361750651797504',
    7,
    '2020-11-02 00:49:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2926,
    '717960325521080454',
    '630140527844655161',
    5,
    '2020-11-02 01:36:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2927,
    '646696990843076619',
    '538361750651797504',
    13,
    '2020-11-02 03:22:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2928,
    '600429469018357774',
    '538361750651797504',
    14,
    '2020-11-02 03:23:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2929,
    '437367347775275008',
    '630140527844655161',
    5,
    '2020-11-02 05:11:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2930,
    '760813158968852520',
    '763359546193346590',
    319,
    '2020-11-05 07:03:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2931,
    '573439393352646656',
    '763359546193346590',
    267,
    '2020-11-11 08:16:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2932,
    '737768212552351816',
    '763359546193346590',
    45,
    '2020-11-10 10:09:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2933,
    '402701543905689600',
    '518628297106784286',
    59,
    '2020-11-02 10:03:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2934,
    '408671348005797898',
    '538361750651797504',
    14,
    '2020-11-02 09:47:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2935,
    '304254069466333186',
    '538361750651797504',
    22,
    '2020-11-05 22:01:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2936,
    '611165590744203285',
    '538361750651797504',
    6,
    '2020-11-02 11:29:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2937,
    '182208418541469703',
    '538361750651797504',
    10,
    '2020-11-02 13:53:13'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2938,
    '634927815266926613',
    '538361750651797504',
    24,
    '2020-11-02 14:38:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2939,
    '375376075364106240',
    '734226650400555018',
    78,
    '2020-11-10 16:31:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2940,
    '618107373621346306',
    '630140527844655161',
    17,
    '2020-11-02 15:01:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2941,
    '270496066183495681',
    '763359546193346590',
    6,
    '2020-11-02 18:02:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2942,
    '413607584629653514',
    '538361750651797504',
    14,
    '2020-11-02 20:36:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2943,
    '755917537140670586',
    '538361750651797504',
    8,
    '2020-11-02 20:46:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2944,
    '668569305419481097',
    '538361750651797504',
    17,
    '2020-11-04 20:57:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2945,
    '452078993626365982',
    '538361750651797504',
    18,
    '2020-11-03 00:24:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2946,
    '657848858709327892',
    '630140527844655161',
    21,
    '2020-11-03 06:36:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2947,
    '762741678053654538',
    '538361750651797504',
    7,
    '2020-11-03 08:08:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2948,
    '604745539795419137',
    '538361750651797504',
    12,
    '2020-11-03 08:58:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2949,
    '408426128512909312',
    '582701823429705740',
    79,
    '2020-11-11 05:46:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2950,
    '773121986854912010',
    '538361750651797504',
    8,
    '2020-11-03 09:56:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2951,
    '219547745919303683',
    '538361750651797504',
    9,
    '2020-11-03 09:58:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2952,
    '219547745919303683',
    '538361750651797504',
    10,
    '2020-11-03 09:58:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2953,
    '550027802393444384',
    '622311594654695434',
    125,
    '2020-11-07 08:19:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2954,
    '571631837126983680',
    '538361750651797504',
    25,
    '2020-11-05 09:49:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2955,
    '571631837126983680',
    '538361750651797504',
    25,
    '2020-11-05 09:49:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2956,
    '632423899589771264',
    '622311594654695434',
    27,
    '2020-11-03 13:59:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2957,
    '691890387484147743',
    '538361750651797504',
    5,
    '2020-11-03 14:28:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2958,
    '570302421235138570',
    '538361750651797504',
    14,
    '2020-11-03 14:29:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2959,
    '645488324324229150',
    '630140527844655161',
    25,
    '2020-11-03 17:02:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2960,
    '424913718879715330',
    '630140527844655161',
    11,
    '2020-11-03 17:02:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2961,
    '238002224687480832',
    '630140527844655161',
    19,
    '2020-11-03 17:47:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2962,
    '424756094703763477',
    '538361750651797504',
    10,
    '2020-11-03 18:23:44'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2963,
    '325637965415972864',
    '721608587809521704',
    96,
    '2020-11-03 19:27:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2964,
    '692658598160891924',
    '721608587809521704',
    99,
    '2020-11-03 19:28:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2965,
    '763413865757147137',
    '538361750651797504',
    12,
    '2020-11-03 22:24:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2966,
    '543779506666602541',
    '538361750651797504',
    10,
    '2020-11-03 22:54:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2967,
    '760696241587486772',
    '622311594654695434',
    10,
    '2020-11-04 01:41:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2968,
    '325198715843248128',
    '746009958977634315',
    74,
    '2020-11-07 11:05:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2969,
    '441309767382597644',
    '763359546193346590',
    190,
    '2020-11-10 15:21:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2970,
    '475363985055809546',
    '538361750651797504',
    9,
    '2020-11-04 08:06:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2971,
    '401946440332476426',
    '538361750651797504',
    11,
    '2020-11-04 08:18:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2972,
    '773515237314920448',
    '773516707926638602',
    15,
    '2020-11-04 12:08:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2973,
    '760224685077037086',
    '538361750651797504',
    6,
    '2020-11-04 12:17:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2974,
    '738669446930890782',
    '538361750651797504',
    6,
    '2020-11-04 14:14:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2975,
    '720540500414693387',
    '538361750651797504',
    9,
    '2020-11-04 14:39:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2976,
    '767119464193196073',
    '622311594654695434',
    7,
    '2020-11-04 17:05:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2977,
    '388764706610872323',
    '538361750651797504',
    10,
    '2020-11-04 18:43:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2978,
    '458285849667305478',
    '538361750651797504',
    7,
    '2020-11-04 20:15:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2979,
    '487882684408791051',
    '538361750651797504',
    14,
    '2020-11-04 22:22:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2980,
    '698274836912275517',
    '538361750651797504',
    9,
    '2020-11-04 22:34:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2981,
    '111933578668933120',
    '630140527844655161',
    16,
    '2020-11-05 17:31:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2982,
    '737841575962345492',
    '773784408342921256',
    32,
    '2020-11-05 06:31:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2983,
    '539929118523916318',
    '538361750651797504',
    9,
    '2020-11-05 06:18:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2984,
    '274615370214670336',
    '538361750651797504',
    6,
    '2020-11-05 07:35:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2985,
    '655060379709472777',
    '630140527844655161',
    12,
    '2020-11-05 08:36:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2986,
    '396653726028529675',
    '630140527844655161',
    14,
    '2020-11-05 10:11:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2987,
    '624885650784649236',
    '538361750651797504',
    10,
    '2020-11-05 11:21:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2988,
    '768044722127241256',
    '538361750651797504',
    24,
    '2020-11-05 12:45:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2989,
    '363244987585921024',
    '538361750651797504',
    8,
    '2020-11-05 15:38:50'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2990,
    '724107585166508063',
    '538361750651797504',
    14,
    '2020-11-05 16:56:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2991,
    '413091919787196438',
    '630140527844655161',
    97,
    '2020-11-09 01:46:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2992,
    '399342207800180738',
    '630140527844655161',
    8,
    '2020-11-05 18:57:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2993,
    '704507028009254953',
    '538361750651797504',
    15,
    '2020-11-05 19:54:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2994,
    '416122038189817856',
    '630140527844655161',
    31,
    '2020-11-10 12:42:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2995,
    '460776251393703936',
    '630140527844655161',
    21,
    '2020-11-05 23:49:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2996,
    '677694466924085248',
    '538361750651797504',
    19,
    '2020-11-06 19:10:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2997,
    '672766177352744970',
    '538361750651797504',
    15,
    '2020-11-05 22:20:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2998,
    '380898123700240394',
    '630140527844655161',
    134,
    '2020-11-11 23:37:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2999,
    '689975526864977953',
    '630140527844655161',
    10,
    '2020-11-06 04:10:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3000,
    '390731855344697344',
    '630140527844655161',
    8,
    '2020-11-06 04:25:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3001,
    '370762233170362381',
    '630140527844655161',
    9,
    '2020-11-06 06:25:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3002,
    '592070625695367193',
    '630140527844655161',
    26,
    '2020-11-06 08:27:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3003,
    '649690161583751231',
    '630140527844655161',
    6,
    '2020-11-06 11:06:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3004,
    '320103804248784896',
    '677780367188557824',
    99,
    '2020-11-07 04:44:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3005,
    '320103804248784896',
    '764119186833145907',
    11,
    '2020-11-06 11:40:53'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3006,
    '416227242264363008',
    '677780367188557824',
    99,
    '2020-11-07 03:59:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3007,
    '704429549861208087',
    '622311594654695434',
    7,
    '2020-11-06 15:25:32'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3008,
    '404383511156621312',
    '538361750651797504',
    52,
    '2020-11-09 13:51:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3009,
    '513113161126248469',
    '538361750651797504',
    37,
    '2020-11-11 08:55:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3010,
    '427240667178074131',
    '538361750651797504',
    11,
    '2020-11-06 17:05:35'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3011,
    '718218890097852416',
    '753836225915387945',
    21,
    '2020-11-10 22:06:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3012,
    '402248457836036096',
    '538361750651797504',
    7,
    '2020-11-06 19:01:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3013,
    '519861424017768451',
    '538361750651797504',
    15,
    '2020-11-06 23:43:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3014,
    '519861424017768451',
    '538361750651797504',
    9,
    '2020-11-06 23:43:06'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3015,
    '627768463963717642',
    '642811675086553099',
    14,
    '2020-11-07 03:42:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3016,
    '178691932736847873',
    '630140527844655161',
    7,
    '2020-11-07 06:33:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3017,
    '446304704776110081',
    '630140527844655161',
    11,
    '2020-11-07 07:32:57'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3018,
    '553805277322018822',
    '622311594654695434',
    7,
    '2020-11-07 08:32:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3019,
    '130588598180380672',
    '538361750651797504',
    7,
    '2020-11-07 08:47:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3020,
    '760508286633508866',
    '630140527844655161',
    35,
    '2020-11-07 15:26:31'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3021,
    '772919954356830239',
    '538361750651797504',
    7,
    '2020-11-07 15:28:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3022,
    '479675551506759681',
    '538361750651797504',
    8,
    '2020-11-07 19:24:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3023,
    '621520142685306881',
    '538361750651797504',
    53,
    '2020-11-08 00:15:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3024,
    '712506795850989639',
    '538361750651797504',
    14,
    '2020-11-07 23:37:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3025,
    '590478925302464526',
    '538361750651797504',
    11,
    '2020-11-07 23:54:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3026,
    '760004972082364417',
    '763359546193346590',
    34,
    '2020-11-08 06:21:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3027,
    '366331361583169537',
    '538361750651797504',
    8,
    '2020-11-08 08:50:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3028,
    '725041188562010183',
    '538361750651797504',
    7,
    '2020-11-08 14:50:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3029,
    '573830842690961408',
    '538361750651797504',
    9,
    '2020-11-08 15:20:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3030,
    '329434783731941376',
    '630140527844655161',
    59,
    '2020-11-08 17:24:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3031,
    '509443603257491500',
    '538361750651797504',
    24,
    '2020-11-08 18:23:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3032,
    '509443603257491500',
    '538361750651797504',
    24,
    '2020-11-08 18:23:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3033,
    '474364460438388748',
    '630140527844655161',
    9,
    '2020-11-08 18:04:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3034,
    '581889140631666702',
    '538361750651797504',
    23,
    '2020-11-08 18:13:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3035,
    '752593007273836574',
    '538361750651797504',
    14,
    '2020-11-08 19:23:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3036,
    '728390954557505598',
    '630140527844655161',
    7,
    '2020-11-08 20:24:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3037,
    '495585040504455168',
    '630140527844655161',
    12,
    '2020-11-08 20:25:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3038,
    '389040616404811779',
    '630140527844655161',
    14,
    '2020-11-08 20:38:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3039,
    '593832772507009024',
    '630140527844655161',
    9,
    '2020-11-08 21:10:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3040,
    '769600867128442890',
    '538361750651797504',
    15,
    '2020-11-08 21:32:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3041,
    '368241628701261824',
    '642811675086553099',
    14,
    '2020-11-08 22:22:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3042,
    '408388332947767296',
    '630140527844655161',
    14,
    '2020-11-08 22:58:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3043,
    '396741014720741376',
    '630140527844655161',
    22,
    '2020-11-08 23:08:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3044,
    '418140928662831106',
    '630140527844655161',
    7,
    '2020-11-08 23:00:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3045,
    '477720832102367232',
    '630140527844655161',
    14,
    '2020-11-08 23:00:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3046,
    '632268420523491358',
    '630140527844655161',
    7,
    '2020-11-08 23:00:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3047,
    '400779220256555008',
    '630140527844655161',
    12,
    '2020-11-08 23:01:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3048,
    '386960788167852034',
    '630140527844655161',
    14,
    '2020-11-08 23:01:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3049,
    '522703881436921866',
    '630140527844655161',
    14,
    '2020-11-08 23:02:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3050,
    '677285560515035175',
    '630140527844655161',
    15,
    '2020-11-08 23:03:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3051,
    '467473680985882627',
    '630140527844655161',
    10,
    '2020-11-08 23:04:21'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3052,
    '395256764443918338',
    '630140527844655161',
    6,
    '2020-11-08 23:07:22'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3053,
    '388892115985235968',
    '630140527844655161',
    12,
    '2020-11-08 23:08:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3054,
    '439893608364113941',
    '630140527844655161',
    12,
    '2020-11-08 23:18:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3055,
    '655758483089784832',
    '630140527844655161',
    9,
    '2020-11-08 23:57:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3056,
    '524320750598094859',
    '630140527844655161',
    15,
    '2020-11-08 23:59:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3057,
    '168800539268612096',
    '630140527844655161',
    11,
    '2020-11-09 00:23:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3058,
    '296365105560551425',
    '630140527844655161',
    5,
    '2020-11-09 00:40:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3059,
    '483899154050056193',
    '630140527844655161',
    10,
    '2020-11-09 00:41:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3060,
    '609753214354718721',
    '630140527844655161',
    33,
    '2020-11-09 01:44:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3061,
    '570020287735660547',
    '538361750651797504',
    9,
    '2020-11-09 01:46:07'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3062,
    '303312349140484096',
    '538361750651797504',
    10,
    '2020-11-09 02:40:01'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3063,
    '617613747141476352',
    '630140527844655161',
    10,
    '2020-11-09 03:32:51'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3064,
    '153490636052496384',
    '538361750651797504',
    11,
    '2020-11-09 09:51:41'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3065,
    '758750045771661364',
    '630140527844655161',
    13,
    '2020-11-09 10:34:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3066,
    '756360431345336351',
    '538361750651797504',
    6,
    '2020-11-09 13:39:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3067,
    '129035061042479104',
    '538361750651797504',
    11,
    '2020-11-09 19:14:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3068,
    '738577413688262706',
    '538361750651797504',
    14,
    '2020-11-09 21:18:28'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3069,
    '769472508298133535',
    '538361750651797504',
    11,
    '2020-11-09 21:49:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3070,
    '208204398017511434',
    '538361750651797504',
    11,
    '2020-11-09 22:12:39'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3071,
    '554117178702430239',
    '538361750651797504',
    8,
    '2020-11-09 23:58:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3072,
    '693242504010530876',
    '538361750651797504',
    10,
    '2020-11-10 02:52:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3073,
    '496607665967857664',
    '538361750651797504',
    8,
    '2020-11-10 07:15:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3074,
    '438125839922757634',
    '630140527844655161',
    8,
    '2020-11-10 08:48:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3075,
    '435108508678225921',
    '538361750651797504',
    10,
    '2020-11-10 10:15:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3076,
    '481236197101010981',
    '538361750651797504',
    12,
    '2020-11-10 12:48:55'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3077,
    '350781518664171530',
    '538361750651797504',
    8,
    '2020-11-10 13:41:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3078,
    '579599819774099458',
    '763359546193346590',
    25,
    '2020-11-10 16:27:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3079,
    '397420663427563520',
    '538361750651797504',
    11,
    '2020-11-10 14:17:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3080,
    '690600107594350612',
    '538361750651797504',
    8,
    '2020-11-10 16:21:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3081,
    '561077789785194498',
    '538361750651797504',
    12,
    '2020-11-10 18:24:18'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3082,
    '684158156150014091',
    '538361750651797504',
    11,
    '2020-11-10 19:57:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3083,
    '155409191148847105',
    '630140527844655161',
    6,
    '2020-11-10 21:23:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3084,
    '753833733982912512',
    '753836225915387945',
    15,
    '2020-11-11 17:22:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3085,
    '433688775843905546',
    '538361750651797504',
    11,
    '2020-11-10 22:13:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3086,
    '256905721269059584',
    '642811675086553099',
    18,
    '2020-11-10 23:31:54'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3087,
    '102397580901621760',
    '642811675086553099',
    41,
    '2020-11-10 23:32:34'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3088,
    '485326516390199296',
    '538361750651797504',
    50,
    '2020-11-11 09:57:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3089,
    '706480464252108810',
    '543041459096387584',
    11,
    '2020-11-11 06:59:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3090,
    '629918273508474900',
    '543041459096387584',
    9,
    '2020-11-11 07:15:29'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3091,
    '775993272307941387',
    '630140527844655161',
    14,
    '2020-11-11 08:12:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3092,
    '660177912326127616',
    '763359546193346590',
    24,
    '2020-11-11 08:16:09'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3093,
    '404265049826263050',
    '518628297106784286',
    25,
    '2020-11-11 12:30:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3094,
    '762314742831251486',
    '538361750651797504',
    10,
    '2020-11-11 12:38:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3095,
    '625213912664637450',
    '622311594654695434',
    48,
    '2020-11-11 13:08:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3096,
    '727221110512418877',
    '538361750651797504',
    31,
    '2020-11-11 15:04:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3097,
    '519810286996160522',
    '664396496417849344',
    52,
    '2020-11-11 15:40:03'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3098,
    '770758702763343943',
    '538361750651797504',
    11,
    '2020-11-11 20:49:27'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3099,
    '374291756629491712',
    '538361750651797504',
    11,
    '2020-11-11 22:25:50'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: lottery
# ------------------------------------------------------------

INSERT INTO
  `lottery` (`id`, `numbers`)
VALUES
  ('416227242264363008', 2042690386487);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: nolog
# ------------------------------------------------------------

INSERT INTO
  `nolog` (`id`)
VALUES
  ('292364428110856192');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('321416024375427083');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('335806541015941121');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('375033391059435521');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('377169635025354752');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('416227242264363008');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('461516729047318529');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('521957465894551555');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('540030975711641611');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('544144686596751382');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('565567024047325194');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('599111669683191808');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('636904657717035037');
INSERT INTO
  `nolog` (`id`)
VALUES
  ('673122820200333342');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: poll
# ------------------------------------------------------------

INSERT INTO
  `poll` (
    `id`,
    `guild`,
    `channel`,
    `options`,
    `endAt`,
    `author`,
    `color`,
    `title`
  )
VALUES
  (
    '764182348132515851',
    '622311594654695434',
    '751757417448210452',
    '[\"Yes\", \"No\"]',
    '2021-10-09 17:47:49',
    '461516729047318529',
    '12590162',
    'Do%20you%20play%20Minecraft%20Pocket%20Edition%3F'
  );
INSERT INTO
  `poll` (
    `id`,
    `guild`,
    `channel`,
    `options`,
    `endAt`,
    `author`,
    `color`,
    `title`
  )
VALUES
  (
    '765262597301469236',
    '622311594654695434',
    '751757417448210452',
    '[\"Yes\", \"No\"]',
    '2021-10-12 17:20:21',
    '461516729047318529',
    '1270197',
    'Would%20you%20like%20to%20play%20Minecraft%20Dungeon%3F%20%28Official%29'
  );
INSERT INTO
  `poll` (
    `id`,
    `guild`,
    `channel`,
    `options`,
    `endAt`,
    `author`,
    `color`,
    `title`
  )
VALUES
  (
    '752519568638869584',
    '622311594654695434',
    '751757417448210452',
    '[\"Asia%20\", \"Europe%20\", \"Africa%20\", \"America\", \"Oceania\"]',
    '2021-09-07 13:24:06',
    '461516729047318529',
    '5976734',
    'What%27s%20your%20timezone%3F'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: queue
# ------------------------------------------------------------

INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    5,
    '402701543905689600',
    '%5B%7B%22title%22%3A%22C%F6%20shu%20Nie%20-%20asphyxia%20%uFF08piano%20ver.%29%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DeWPYxw_yqW4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eWPYxw_yqW4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7DD1%u9EC4%u8272%u793E%u4F1A%20-%20Shout%20Baby%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DraZ22iX5J18%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/raZ22iX5J18/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TK%20from%20%u51DB%u3068%u3057%u3066%u6642%u96E8%20-%20unravel%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DGsLsBs4oW30%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A09%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/GsLsBs4oW30/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Inferno%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DwNjvuRZtQeI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/wNjvuRZtQeI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9808%u7530%u666F%u51EA%u300Cveil%u300DMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dn7VZxg9pxkg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A39%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/n7VZxg9pxkg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22KK%20-%20%u306A%u3093%u3067%u3082%u306A%u3044%u3084%uFF0FRADWIMPS%20%28cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DprbWBPavTtA%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A08%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/prbWBPavTtA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22KK%20-%20%u30B0%u30C3%u30C9%u30E9%u30C3%u30AB%u30FC%u30BA%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxVFIOkDs_sE%22%2C%22type%22%3A0%2C%22time%22%3A%227%3A44%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xVFIOkDs_sE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Pretender%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D37W7Y2RRyiM%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/37W7Y2RRyiM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22King%20Gnu%20-%20%u767D%u65E5%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dony539T074w%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ony539T074w/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BMV/BGA%5D%20R.I.P.%20/%20eicateve%20x%20hrchem%20x%20TOHRU%20MiTSUHASHi%20%5B%23G2R2018%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQJakdR6FWdg%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A31%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/QJakdR6FWdg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Cartoon%20-%20Why%20We%20Lose%20%28feat.%20Coleman%20Trapp%29%20%5BNCS%20Release%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzyXmsVwZqX4%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/zyXmsVwZqX4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22T%20%26%20Sugah%20x%20NCT%20-%20Stardust%20%28feat.%20Miyoki%29%20%5BNCS%20Release%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5pfDp6Wrf6Y%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5pfDp6Wrf6Y/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yowamushi%20Pedal%20%3A%20Glory%20Line%20Opening%20Full%u300EYouthK%20Saeki%20-%20Dancing%u300F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1veTMd1gPvs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1veTMd1gPvs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yorushika%20-%20%5C%22Say%20It.%5C%22%20%28Music%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DF64yFFnZfkI%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A04%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/F64yFFnZfkI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010ENGSUB%u3011SLEEPING%20TOWN%20%28%u306D%u3080%u308B%u307E%u3061%29%20-%20WhaleDontSleep%20%28%u304F%u3058%u3089%29%2C%20ft.%20Yama%20%7C%20ROMAJI%20LYRICS%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dg8Ejj_hs-g8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/g8Ejj_hs-g8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u30C1%u30EB%u30C9%u30EC%u30F3%20-%20BIN%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dw73Ks2WX_XQ%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/w73Ks2WX_XQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22ETERNAL%20BLUE%20-%20%u7F8E%u6CE2%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dj8L9I5b8oyw%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A23%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/j8L9I5b8oyw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5C%22main%20actor%5C%22%20-%20%u7F8E%u6CE2%20%28Minami%29%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Djb4ybTQwcdw%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A38%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/jb4ybTQwcdw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u7C73%u6D25%u7384%u5E2B%u3011%u300C%u6D77%u306E%u5E7D%u970A%u300DSpirits%20of%20the%20Sea%20%u82B1%u92CF%u30AD%u30E7%u30A6cover%u3010%u6620%u753B%u300E%u6D77%u7363%u306E%u5B50%u4F9B%u300F%u4E3B%u984C%u6B4C%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3WLBTbX25yM%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3WLBTbX25yM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011%u6625%u306F%u3086%u304F/%20marie%20-%20Aimer%20-%20marie%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DoJePMwDJ3Gs%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/oJePMwDJ3Gs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011%u6625%u306F%u3086%u304F/%20marie%20-%20Aimer%20-%20%u82B1%u306E%u5504%20end%20of%20spring%20ver.%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DUBPch43qcvQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/UBPch43qcvQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Fate/stay%20night%20%5BHeaven%27s%20Feel%5D%20III.Spring%20Song%20-%20Aimer%20-%20%u6625%u306F%u3086%u304FHaru%20wa%20Yuku%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIvqKBqsf6E%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIvqKBqsf6E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TUYU%20-%20Goodbye%20to%20Rock%20you%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1cGQotpn8r4%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1cGQotpn8r4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u30DF%u30C6%u30A4%u30CE%u30CF%u30CA%u30B7%20-%20%u6182%u9B31%u3001%u65E5%u3005%uFF08Music%20Video%uFF09%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DB8gm6XXcexE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/B8gm6XXcexE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7F36%u7F36/%u6D77%u306E%u5E7D%u970A%20-%20%u7C73%u6D25%u7384%u5E2B%u3010%u6B4C%u3063%u3066%u307F%u305F%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVm8b94AQqD0%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A05%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Vm8b94AQqD0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22The%20Secret%20About%20That%20Girl%20-%20Eve%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsgdPlDG1-8k%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/sgdPlDG1-8k/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yesterday%20-acoustic%20arrange-%20/%20Soraru%u3010Cover%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJklH26ZOvrU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/JklH26ZOvrU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Sore%20Wo%20Ai%20To%20Yobudake%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DvD_8Y8JwU7A%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A41%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/vD_8Y8JwU7A/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7455%u75B5%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1ImlGQrzOdU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1ImlGQrzOdU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u82B1%u3073%u3089%u305F%u3061%u306E%u30DE%u30FC%u30C1%20Full%20MV%20/%20Aimer%20%5BEnglish%20subtitle%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DnWDQqGr_c14%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/nWDQqGr_c14/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Torches%20-%20Aimer%20-%20Daisy%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHMqAbU4N2Jw%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/HMqAbU4N2Jw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Blind%20to%20you%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dabm1KT-svTI%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/abm1KT-svTI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Words%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4syT2Ac0aH0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4syT2Ac0aH0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BCytus%20II/VOEZ%5D%20Ramen%20is%20God%20-%20Ramenbot%20a.k.a.%20Ice%20vs%20Masahiro%20%5C%22Godspeed%5C%22%20Aokiamen%u3010%u97F3%u6E90%u3011%u3010%u9AD8%u97F3%u8CEA%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dq-TABw-Q_Yo%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/q-TABw-Q_Yo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Dance%20Monkey%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHx4nWW9z0ig%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A30%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Hx4nWW9z0ig/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22No%20Time%20To%20Die%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0oAAlssVwEw%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/0oAAlssVwEw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Fate/Grand%20Order%20-%20Absolute%20Demonic%20Front%3A%20Babylonia%20ED3%20-%20milet%20-%20Tell%20me%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBOOOXNIHlUI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BOOOXNIHlUI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u91D1%u6728%u7280%20feat.Ado%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBaw-cAvS5xc%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Baw-cAvS5xc/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5E7D%u970A%u6771%u4EAC%20Ghost%20City%20Tokyo%20%uFF0FAyase%20%28self%20cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DDtBoAqkIJzI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/DtBoAqkIJzI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Haruno%20-%20Deep%20Coma%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT2v9CM-XAEE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A06%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/T2v9CM-XAEE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22twenty%20one%20pilots%3A%20Stressed%20Out%20%5BOFFICIAL%20VIDEO%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpXRviuL6vMY%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A46%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pXRviuL6vMY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22ZAYN%20-%20Dusk%20Till%20Dawn%20ft.%20Sia%20%28SING%20OFF%20vs.%20Madison%20Beer%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAoQMHzkj2x0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/AoQMHzkj2x0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22The%20Ling%20Ling%20Piano%20Warmup%20%28ft.%20Moonlight%20Sonata%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiCON_9h4vfs%22%2C%22type%22%3A0%2C%22time%22%3A%2210%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iCON_9h4vfs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u7F36%u7F36%u3011LOSER%20-%20Arrange%20ver%u3010%u6B4C%u3063%u3066%u307F%u305F%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy2QFh4d3GUE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/y2QFh4d3GUE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Love%20Yourself%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dp-IXgwqhfmg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/p-IXgwqhfmg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Koi%20wa%20Ameagari%20no%20You%20ni%20ED%20-%20Aimer%20-%20Ref%3Arain%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7CG2qA_IbAs%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/7CG2qA_IbAs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Kataomoi%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmcPkJKkqeUg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A28%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/mcPkJKkqeUg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Hana%20No%20Uta%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dtfo0hg1hO54%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A14%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/tfo0hg1hO54/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7C73%u6D25%u7384%u5E2B%20vs%20Aimer%20MASHUP%21%21%20%20feat.%20%u5929%u9091%20%7C%20cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DeyWOh0EjXts%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A07%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eyWOh0EjXts/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%28AMV%29%20Anime%20Dance%20Mix%20By%20YouthK%20Saeki%20%7BCopyright%7D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D99hSf91QULs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/99hSf91QULs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%222019%u5E74%uFF0C%u6211%u5011%u807D%u904E%u7684%u5EE3%u6771%u6B4C%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpM6GO7MACl0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A02%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pM6GO7MACl0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u65B9%u7693%u739F%20-%20%u4EBA%u8A71%20%28Explicit%20Content%29%20%5BOfficial%20Music%20Video%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DENB0BeZx4yw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ENB0BeZx4yw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5C%22Hollowness%5C%22%20-%20%u7F8E%u6CE2%20%28Minami%29%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHIRiduzNLzQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/HIRiduzNLzQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5979%u8BF4%20%u6797%u4FCA%u6770%20%28%u6B4C%u8BCD%u7248%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC8fVp87PKMA%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/C8fVp87PKMA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u8072%u4E4B%u5F62%20MV%u7248%20%u4E3B%u9898%u66F2%20AIKO%20%20%20%u604B%u3055%u3057%u305F%u306E%u306F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5Of9Rh4BxVo%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5Of9Rh4BxVo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u6797%u4FCA%u5091%20JJ%20Lin%20-%20%u53EF%u60DC%u6C92%u5982%u679C%20%28%20%u6B4C%u8A5E/lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTRt4Y6c0ql0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A02%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/TRt4Y6c0ql0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Joji%20-%20SLOW%20DANCING%20IN%20THE%20DARK%20%28Lyrics%20on%20screen%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsVDiAoxdR8E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A38%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/sVDiAoxdR8E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u958B%u53E3%u8DEA%uFF01%u7D55%u7F8E%u65CB%u5F8B%u6DF7%u5408%u651D%u9B42%u5973%u8072%uFF0C%u591A%u5C11%u4EBA%u56E0%u7232%u9019%u9996%u6B4C%uFF0C%u518D%u4E0D%u63DB%u9234%u8072%u2014%u2014%u300ADream%20It%20Possible%u300B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuGJ9IFGWOJo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A25%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/uGJ9IFGWOJo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010Deemo%u3011%20Run%20Lads%20Run%20%u30D4%u30A2%u30CE%u9023%u5F3E%u3057%u3066%u307F%u305F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxJQt-r-ImDw%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A35%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xJQt-r-ImDw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010Deemo%u3011Entrance%20-%20Piano%20Cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuCs9mpqZP3A%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A09%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/uCs9mpqZP3A/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9EA5%u6D5A%u9F8D%20JUNO%u300A%u5FF5%u5FF5%u4E0D%u5FD8%u300B%u5B98%u65B9%u5B8C%u6574%u7248%20THE%20OFFICIAL%20JUNO%20MAK%20%5B%u5B8C%u6574%20HD%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dbo1YJMy4d-M%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/bo1YJMy4d-M/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9EA5%u6D5A%u9F8D%20JUNO%20x%20%u8B1D%u5B89%u742A%20KAY%u300A%u7F85%u751F%u9580%u300B%u5B98%u65B9%u5B8C%u6574%u7248%20THE%20OFFICIAL%20JUNO%20MAK%20%5B%u5B8C%u6574%20HD%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOfnhDUBWVl4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A41%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OfnhDUBWVl4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u4E00%u9996%u597D%u807D%u7684%u65E5%u8A9E%u6B4C%u2014%u2014%u300A%u751F%u304D%u3066%u3044%u305F%u3093%u3060%u3088%u306A%u300B%u5979%u66FE%u7D93%u6D3B%u904E%u554A%20%u3042%u3044%u307F%u3087%u3093%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D180xCt99Lec%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/180xCt99Lec/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Russ%20-%20Psycho%20%28Pt.%202%29%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3mAjq2d3ejk%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3mAjq2d3ejk/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Queen%20%u2013%20Bohemian%20Rhapsody%20%28Official%20Video%20Remastered%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfJ9rUzIMcZQ%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A00%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/fJ9rUzIMcZQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Queen%20-%20Killer%20Queen%20%28Top%20Of%20The%20Pops%2C%201974%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2ZBtPf7FOoM%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A12%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/2ZBtPf7FOoM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u67CF%u5B87%20Jason%20Chan%20-%20%u4F60%u779E%u6211%u779E%20%28Official%20MV%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJWcuUHVD4Ng%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/JWcuUHVD4Ng/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BCytus%20II%5D%20Sentimental%20Journey%20-%20Switchworks%20%u3010%u97F3%u6E90%u3011%20%u3010%u9AD8%u97F3%u8CEA%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ds6iGbAKddic%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/s6iGbAKddic/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Supper%20Moment%20-%20%u7121%u76E1%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4PACFmxlHm8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A43%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4PACFmxlHm8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20%u300A%u5B8C%u300BMV%20%28Full%20Version%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_Ucpmk6Vj4E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A28%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_Ucpmk6Vj4E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22A-Lin%u300A%u6709%u4E00%u7A2E%u60B2%u50B7%20A%20Kind%20of%20Sorrow%u300BOfficial%20Music%20Video%20-%20%u96FB%u5F71%u300E%u6BD4%u60B2%u50B7%u66F4%u60B2%u50B7%u7684%u6545%u4E8B%20More%20Than%20Blue%20%u300F%u4E3B%u984C%u66F2%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBRcudpJzy1I%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BRcudpJzy1I/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22G.E.M.%u3010%u5149%u5E74%u4E4B%u5916%20LIGHT%20YEARS%20AWAY%20%u3011MV%20%28%u96FB%u5F71%u300A%u592A%u7A7A%u6F5B%u822A%u8005%20Passengers%u300B%u4E2D%u6587%u4E3B%u984C%u66F2%29%20%5BHD%5D%20%u9127%u7D2B%u68CB%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT4SimnaiktU%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/T4SimnaiktU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Eason%20%u9673%u5955%u8FC5%20%u65BC%u5FC3%u6709%u6127%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFTA_tCy6tS8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A08%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/FTA_tCy6tS8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7C73%u6D25%u7384%u5E2B%20MV%u300C%u30D1%u30D7%u30EA%u30AB%u300DKenshi%20Yonezu%20/%20Paprika%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ds582L3gujnw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A26%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/s582L3gujnw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%u300A%u559C%u6B61%u4E00%u500B%u4EBA%u300BTo%20Like%20Someone%20%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DtqVq8ZbM0Gg%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A36%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/tqVq8ZbM0Gg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Eason%20Chan%20%u9673%u5955%u8FC5%20%u4E03%u767E%u5E74%u5F8C%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_NRf4HQw4MU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_NRf4HQw4MU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22XXXTENTACION%20-%20SAD%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpgN-vvVVxMA%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pgN-vvVVxMA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Hated%20by%20Life%20Itself.%20/%20Mafumafu%20%u3010Sang%20It%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Deq8r1ZTma08%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eq8r1ZTma08/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20-%20%u300A%u7121%u689D%u4EF6%u300BMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjzGaS5kWj0U%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A05%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/jzGaS5kWj0U/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TUYU%20-%20Compared%20Child%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DolWvy0PiLfA%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A37%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/olWvy0PiLfA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Billie%20Eilish%20-%20Ocean%20Eyes%20%28Dance%20Performance%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhG4lT4fxj8M%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/hG4lT4fxj8M/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Sam%20Smith%20-%20Pray%20%28Official%20Audio%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhhREiAarjVY%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A44%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/hhREiAarjVY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%20%u795D%u796D%20%28Celebration%29%20-%20RADWIMPS%20%28feat.%u4E09%u6D66%u900F%u5B50%29%20%uFF5C%20%u5929%u6C23%u4E4B%u5B50OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DPD-bG9zo6iY%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/PD-bG9zo6iY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20%u300A%u6211%u5011%u300BUs%20%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ddhjomo8W6Lc%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/dhjomo8W6Lc/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20-%20%u300A%u8AB0%u4F86%u526A%u6708%u5149%u300BMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dn6VP0Wm3EMo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/n6VP0Wm3EMo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%u300A%u4EBA%u4F86%u4EBA%u5F80%u300B%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgAotCGoKhD0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gAotCGoKhD0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5-%20%u5BCC%u58EB%u5C71%u4E0B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVON6EEdRB34%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/VON6EEdRB34/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20%uFF0D%20%u8461%u8404%u6210%u719F%u6642%20%uFF08%u9AD8%u6E05%u97F3%uFF09%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DbbMbdVVJytA%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/bbMbdVVJytA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010tk%u6975%u63A8%u85A6%u3011%u96D9%u7B19%20-%20%u5FC3%u505A%u3057%u300C%u9019%u6A23%u7684%u4E8B%u6211%u4E0D%u61C2%u554A%uFF0C%u4E0D%u8981%u8B93%u6211%u7368%u81EA%u4E00%u4EBA%u3002%u300D%20%5B%20High%20Quality%20Lyrics%20%5D%5B%20%u4E2D%u65E5%u5B57%u5E55%20%5D%5B%20%u8650%u5FC3%20%5D%20GUMI%20Best%20Cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DomMpiWlthI4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/omMpiWlthI4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Billie%20Eilish%2C%20Khalid%20-%20lovely%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DV1Pl8CzNzCw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/V1Pl8CzNzCw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5468%u67CF%u8C6A%20Pakho%20Chau%20-%20%u767E%u5E74%u4E0D%u5408%20A%20Hundred%20Years%20%28Official%20Music%20Video%29%20%5B%u611B%u60C5%u4F86%u7684%u6642%u50192%u53F0%u7063%u7BC7%20%u4E3B%u984C%u66F2%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOOEC34Ndb1o%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OOEC34Ndb1o/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5468%u67CF%u8C6A%20Pakho%20Chau%20-%20%u9084%u8A18%u5F97%20Still%20Remember%20%28Official%20LYRIC%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcaGhQ2tXAiM%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/caGhQ2tXAiM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u5B8C%u6574%u7248%u3011%u5929%u6C23%u4E4B%u5B50OST%20RADWIMPS%20-%u300C%20%u5927%u4E08%u592B%20%u300D%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpdGZkz7RhMY%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pdGZkz7RhMY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Uma%20to%20Shika%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dqly9UI4wmag%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/qly9UI4wmag/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Spirits%20of%20the%20Sea%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DS7L8sTDoyNI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/S7L8sTDoyNI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011UNNATURAL%20-%20%u7C73%u6D25%u7384%u5E2B%20-%20Lemon%u3010%u4E2D%u65E5%u5B57%u5E55%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNrHRTNeni-U%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A14%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/NrHRTNeni-U/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9B3C%u6EC5%u4E4B%u5203%20EP.19ED%20%u4E2D%u5DDD%u5948%u7F8E%20-%u300C%20%u7AC8%u9580%u70AD%u6CBB%u90CE%u306E%u3046%u305F%20%u300D%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZke7RKbZbAY%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Zke7RKbZbAY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22My%20Happy%20Days%20%28Live%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5gj0Wqr9xbI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5gj0Wqr9xbI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Ke%20Yi%20Ke%20Zai%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZodth4tL2ks%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A48%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Zodth4tL2ks/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Wo%20Men%20Wan%20Sui%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcOsUjnSrj3E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/cOsUjnSrj3E/hqdefault.jpg%22%7D%5D',
    'JP'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    6,
    '517290901593128980',
    '%5B%7B%22title%22%3A%22C%F6%20shu%20Nie%20-%20asphyxia%20%uFF08piano%20ver.%29%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DeWPYxw_yqW4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eWPYxw_yqW4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7DD1%u9EC4%u8272%u793E%u4F1A%20-%20Shout%20Baby%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DraZ22iX5J18%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/raZ22iX5J18/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TK%20from%20%u51DB%u3068%u3057%u3066%u6642%u96E8%20-%20unravel%20/%20THE%20FIRST%20TAKE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DGsLsBs4oW30%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A09%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/GsLsBs4oW30/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Inferno%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DwNjvuRZtQeI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/wNjvuRZtQeI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9808%u7530%u666F%u51EA%u300Cveil%u300DMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dn7VZxg9pxkg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A39%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/n7VZxg9pxkg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22KK%20-%20%u306A%u3093%u3067%u3082%u306A%u3044%u3084%uFF0FRADWIMPS%20%28cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DprbWBPavTtA%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A08%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/prbWBPavTtA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22KK%20-%20%u30B0%u30C3%u30C9%u30E9%u30C3%u30AB%u30FC%u30BA%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxVFIOkDs_sE%22%2C%22type%22%3A0%2C%22time%22%3A%227%3A44%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xVFIOkDs_sE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Pretender%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D37W7Y2RRyiM%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/37W7Y2RRyiM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22King%20Gnu%20-%20%u767D%u65E5%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dony539T074w%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ony539T074w/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BMV/BGA%5D%20R.I.P.%20/%20eicateve%20x%20hrchem%20x%20TOHRU%20MiTSUHASHi%20%5B%23G2R2018%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQJakdR6FWdg%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A31%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/QJakdR6FWdg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Cartoon%20-%20Why%20We%20Lose%20%28feat.%20Coleman%20Trapp%29%20%5BNCS%20Release%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzyXmsVwZqX4%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/zyXmsVwZqX4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22T%20%26%20Sugah%20x%20NCT%20-%20Stardust%20%28feat.%20Miyoki%29%20%5BNCS%20Release%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5pfDp6Wrf6Y%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5pfDp6Wrf6Y/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yowamushi%20Pedal%20%3A%20Glory%20Line%20Opening%20Full%u300EYouthK%20Saeki%20-%20Dancing%u300F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1veTMd1gPvs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1veTMd1gPvs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yorushika%20-%20%5C%22Say%20It.%5C%22%20%28Music%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DF64yFFnZfkI%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A04%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/F64yFFnZfkI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010ENGSUB%u3011SLEEPING%20TOWN%20%28%u306D%u3080%u308B%u307E%u3061%29%20-%20WhaleDontSleep%20%28%u304F%u3058%u3089%29%2C%20ft.%20Yama%20%7C%20ROMAJI%20LYRICS%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dg8Ejj_hs-g8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/g8Ejj_hs-g8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u30C1%u30EB%u30C9%u30EC%u30F3%20-%20BIN%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dw73Ks2WX_XQ%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/w73Ks2WX_XQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22ETERNAL%20BLUE%20-%20%u7F8E%u6CE2%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dj8L9I5b8oyw%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A23%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/j8L9I5b8oyw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5C%22main%20actor%5C%22%20-%20%u7F8E%u6CE2%20%28Minami%29%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Djb4ybTQwcdw%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A38%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/jb4ybTQwcdw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u7C73%u6D25%u7384%u5E2B%u3011%u300C%u6D77%u306E%u5E7D%u970A%u300DSpirits%20of%20the%20Sea%20%u82B1%u92CF%u30AD%u30E7%u30A6cover%u3010%u6620%u753B%u300E%u6D77%u7363%u306E%u5B50%u4F9B%u300F%u4E3B%u984C%u6B4C%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3WLBTbX25yM%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3WLBTbX25yM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011%u6625%u306F%u3086%u304F/%20marie%20-%20Aimer%20-%20marie%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DoJePMwDJ3Gs%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/oJePMwDJ3Gs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011%u6625%u306F%u3086%u304F/%20marie%20-%20Aimer%20-%20%u82B1%u306E%u5504%20end%20of%20spring%20ver.%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DUBPch43qcvQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/UBPch43qcvQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Fate/stay%20night%20%5BHeaven%27s%20Feel%5D%20III.Spring%20Song%20-%20Aimer%20-%20%u6625%u306F%u3086%u304FHaru%20wa%20Yuku%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIvqKBqsf6E%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIvqKBqsf6E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TUYU%20-%20Goodbye%20to%20Rock%20you%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1cGQotpn8r4%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1cGQotpn8r4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u30DF%u30C6%u30A4%u30CE%u30CF%u30CA%u30B7%20-%20%u6182%u9B31%u3001%u65E5%u3005%uFF08Music%20Video%uFF09%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DB8gm6XXcexE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/B8gm6XXcexE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7F36%u7F36/%u6D77%u306E%u5E7D%u970A%20-%20%u7C73%u6D25%u7384%u5E2B%u3010%u6B4C%u3063%u3066%u307F%u305F%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVm8b94AQqD0%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A05%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Vm8b94AQqD0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22The%20Secret%20About%20That%20Girl%20-%20Eve%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsgdPlDG1-8k%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/sgdPlDG1-8k/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Yesterday%20-acoustic%20arrange-%20/%20Soraru%u3010Cover%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJklH26ZOvrU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A59%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/JklH26ZOvrU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Sore%20Wo%20Ai%20To%20Yobudake%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DvD_8Y8JwU7A%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A41%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/vD_8Y8JwU7A/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7455%u75B5%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1ImlGQrzOdU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1ImlGQrzOdU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u82B1%u3073%u3089%u305F%u3061%u306E%u30DE%u30FC%u30C1%20Full%20MV%20/%20Aimer%20%5BEnglish%20subtitle%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DnWDQqGr_c14%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/nWDQqGr_c14/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Torches%20-%20Aimer%20-%20Daisy%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHMqAbU4N2Jw%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/HMqAbU4N2Jw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Blind%20to%20you%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dabm1KT-svTI%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/abm1KT-svTI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Words%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4syT2Ac0aH0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4syT2Ac0aH0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BCytus%20II/VOEZ%5D%20Ramen%20is%20God%20-%20Ramenbot%20a.k.a.%20Ice%20vs%20Masahiro%20%5C%22Godspeed%5C%22%20Aokiamen%u3010%u97F3%u6E90%u3011%u3010%u9AD8%u97F3%u8CEA%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dq-TABw-Q_Yo%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/q-TABw-Q_Yo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Dance%20Monkey%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHx4nWW9z0ig%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A30%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Hx4nWW9z0ig/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22No%20Time%20To%20Die%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0oAAlssVwEw%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/0oAAlssVwEw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Fate/Grand%20Order%20-%20Absolute%20Demonic%20Front%3A%20Babylonia%20ED3%20-%20milet%20-%20Tell%20me%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBOOOXNIHlUI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BOOOXNIHlUI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u91D1%u6728%u7280%20feat.Ado%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBaw-cAvS5xc%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Baw-cAvS5xc/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5E7D%u970A%u6771%u4EAC%20Ghost%20City%20Tokyo%20%uFF0FAyase%20%28self%20cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DDtBoAqkIJzI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/DtBoAqkIJzI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Haruno%20-%20Deep%20Coma%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT2v9CM-XAEE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A06%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/T2v9CM-XAEE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22twenty%20one%20pilots%3A%20Stressed%20Out%20%5BOFFICIAL%20VIDEO%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpXRviuL6vMY%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A46%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pXRviuL6vMY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22ZAYN%20-%20Dusk%20Till%20Dawn%20ft.%20Sia%20%28SING%20OFF%20vs.%20Madison%20Beer%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAoQMHzkj2x0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/AoQMHzkj2x0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22The%20Ling%20Ling%20Piano%20Warmup%20%28ft.%20Moonlight%20Sonata%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiCON_9h4vfs%22%2C%22type%22%3A0%2C%22time%22%3A%2210%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iCON_9h4vfs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u7F36%u7F36%u3011LOSER%20-%20Arrange%20ver%u3010%u6B4C%u3063%u3066%u307F%u305F%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy2QFh4d3GUE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A18%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/y2QFh4d3GUE/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Love%20Yourself%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dp-IXgwqhfmg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/p-IXgwqhfmg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011Koi%20wa%20Ameagari%20no%20You%20ni%20ED%20-%20Aimer%20-%20Ref%3Arain%u3010ENG%20Sub%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7CG2qA_IbAs%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/7CG2qA_IbAs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Kataomoi%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmcPkJKkqeUg%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A28%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/mcPkJKkqeUg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Hana%20No%20Uta%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dtfo0hg1hO54%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A14%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/tfo0hg1hO54/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7C73%u6D25%u7384%u5E2B%20vs%20Aimer%20MASHUP%21%21%20%20feat.%20%u5929%u9091%20%7C%20cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DeyWOh0EjXts%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A07%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eyWOh0EjXts/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%28AMV%29%20Anime%20Dance%20Mix%20By%20YouthK%20Saeki%20%7BCopyright%7D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D99hSf91QULs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A53%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/99hSf91QULs/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%222019%u5E74%uFF0C%u6211%u5011%u807D%u904E%u7684%u5EE3%u6771%u6B4C%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpM6GO7MACl0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A02%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pM6GO7MACl0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u65B9%u7693%u739F%20-%20%u4EBA%u8A71%20%28Explicit%20Content%29%20%5BOfficial%20Music%20Video%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DENB0BeZx4yw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ENB0BeZx4yw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5C%22Hollowness%5C%22%20-%20%u7F8E%u6CE2%20%28Minami%29%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHIRiduzNLzQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/HIRiduzNLzQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5979%u8BF4%20%u6797%u4FCA%u6770%20%28%u6B4C%u8BCD%u7248%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC8fVp87PKMA%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/C8fVp87PKMA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u8072%u4E4B%u5F62%20MV%u7248%20%u4E3B%u9898%u66F2%20AIKO%20%20%20%u604B%u3055%u3057%u305F%u306E%u306F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5Of9Rh4BxVo%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5Of9Rh4BxVo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u6797%u4FCA%u5091%20JJ%20Lin%20-%20%u53EF%u60DC%u6C92%u5982%u679C%20%28%20%u6B4C%u8A5E/lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTRt4Y6c0ql0%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A02%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/TRt4Y6c0ql0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Joji%20-%20SLOW%20DANCING%20IN%20THE%20DARK%20%28Lyrics%20on%20screen%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsVDiAoxdR8E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A38%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/sVDiAoxdR8E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u958B%u53E3%u8DEA%uFF01%u7D55%u7F8E%u65CB%u5F8B%u6DF7%u5408%u651D%u9B42%u5973%u8072%uFF0C%u591A%u5C11%u4EBA%u56E0%u7232%u9019%u9996%u6B4C%uFF0C%u518D%u4E0D%u63DB%u9234%u8072%u2014%u2014%u300ADream%20It%20Possible%u300B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuGJ9IFGWOJo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A25%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/uGJ9IFGWOJo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010Deemo%u3011%20Run%20Lads%20Run%20%u30D4%u30A2%u30CE%u9023%u5F3E%u3057%u3066%u307F%u305F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxJQt-r-ImDw%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A35%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xJQt-r-ImDw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010Deemo%u3011Entrance%20-%20Piano%20Cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuCs9mpqZP3A%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A09%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/uCs9mpqZP3A/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9EA5%u6D5A%u9F8D%20JUNO%u300A%u5FF5%u5FF5%u4E0D%u5FD8%u300B%u5B98%u65B9%u5B8C%u6574%u7248%20THE%20OFFICIAL%20JUNO%20MAK%20%5B%u5B8C%u6574%20HD%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dbo1YJMy4d-M%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/bo1YJMy4d-M/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9EA5%u6D5A%u9F8D%20JUNO%20x%20%u8B1D%u5B89%u742A%20KAY%u300A%u7F85%u751F%u9580%u300B%u5B98%u65B9%u5B8C%u6574%u7248%20THE%20OFFICIAL%20JUNO%20MAK%20%5B%u5B8C%u6574%20HD%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOfnhDUBWVl4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A41%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OfnhDUBWVl4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u4E00%u9996%u597D%u807D%u7684%u65E5%u8A9E%u6B4C%u2014%u2014%u300A%u751F%u304D%u3066%u3044%u305F%u3093%u3060%u3088%u306A%u300B%u5979%u66FE%u7D93%u6D3B%u904E%u554A%20%u3042%u3044%u307F%u3087%u3093%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D180xCt99Lec%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/180xCt99Lec/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Russ%20-%20Psycho%20%28Pt.%202%29%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3mAjq2d3ejk%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3mAjq2d3ejk/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Queen%20%u2013%20Bohemian%20Rhapsody%20%28Official%20Video%20Remastered%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfJ9rUzIMcZQ%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A00%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/fJ9rUzIMcZQ/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Queen%20-%20Killer%20Queen%20%28Top%20Of%20The%20Pops%2C%201974%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2ZBtPf7FOoM%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A12%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/2ZBtPf7FOoM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u67CF%u5B87%20Jason%20Chan%20-%20%u4F60%u779E%u6211%u779E%20%28Official%20MV%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJWcuUHVD4Ng%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/JWcuUHVD4Ng/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%5BCytus%20II%5D%20Sentimental%20Journey%20-%20Switchworks%20%u3010%u97F3%u6E90%u3011%20%u3010%u9AD8%u97F3%u8CEA%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ds6iGbAKddic%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/s6iGbAKddic/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Supper%20Moment%20-%20%u7121%u76E1%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4PACFmxlHm8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A43%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4PACFmxlHm8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20%u300A%u5B8C%u300BMV%20%28Full%20Version%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_Ucpmk6Vj4E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A28%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_Ucpmk6Vj4E/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22A-Lin%u300A%u6709%u4E00%u7A2E%u60B2%u50B7%20A%20Kind%20of%20Sorrow%u300BOfficial%20Music%20Video%20-%20%u96FB%u5F71%u300E%u6BD4%u60B2%u50B7%u66F4%u60B2%u50B7%u7684%u6545%u4E8B%20More%20Than%20Blue%20%u300F%u4E3B%u984C%u66F2%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBRcudpJzy1I%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BRcudpJzy1I/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22G.E.M.%u3010%u5149%u5E74%u4E4B%u5916%20LIGHT%20YEARS%20AWAY%20%u3011MV%20%28%u96FB%u5F71%u300A%u592A%u7A7A%u6F5B%u822A%u8005%20Passengers%u300B%u4E2D%u6587%u4E3B%u984C%u66F2%29%20%5BHD%5D%20%u9127%u7D2B%u68CB%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT4SimnaiktU%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/T4SimnaiktU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Eason%20%u9673%u5955%u8FC5%20%u65BC%u5FC3%u6709%u6127%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFTA_tCy6tS8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A08%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/FTA_tCy6tS8/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u7C73%u6D25%u7384%u5E2B%20MV%u300C%u30D1%u30D7%u30EA%u30AB%u300DKenshi%20Yonezu%20/%20Paprika%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ds582L3gujnw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A26%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/s582L3gujnw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%u300A%u559C%u6B61%u4E00%u500B%u4EBA%u300BTo%20Like%20Someone%20%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DtqVq8ZbM0Gg%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A36%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/tqVq8ZbM0Gg/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Eason%20Chan%20%u9673%u5955%u8FC5%20%u4E03%u767E%u5E74%u5F8C%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_NRf4HQw4MU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_NRf4HQw4MU/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22XXXTENTACION%20-%20SAD%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpgN-vvVVxMA%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pgN-vvVVxMA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Hated%20by%20Life%20Itself.%20/%20Mafumafu%20%u3010Sang%20It%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Deq8r1ZTma08%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/eq8r1ZTma08/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20-%20%u300A%u7121%u689D%u4EF6%u300BMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjzGaS5kWj0U%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A05%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/jzGaS5kWj0U/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22TUYU%20-%20Compared%20Child%20MV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DolWvy0PiLfA%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A37%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/olWvy0PiLfA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Billie%20Eilish%20-%20Ocean%20Eyes%20%28Dance%20Performance%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhG4lT4fxj8M%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/hG4lT4fxj8M/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Sam%20Smith%20-%20Pray%20%28Official%20Audio%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhhREiAarjVY%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A44%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/hhREiAarjVY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%20%u795D%u796D%20%28Celebration%29%20-%20RADWIMPS%20%28feat.%u4E09%u6D66%u900F%u5B50%29%20%uFF5C%20%u5929%u6C23%u4E4B%u5B50OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DPD-bG9zo6iY%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/PD-bG9zo6iY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20%u300A%u6211%u5011%u300BUs%20%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ddhjomo8W6Lc%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/dhjomo8W6Lc/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%20-%20%u300A%u8AB0%u4F86%u526A%u6708%u5149%u300BMV%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dn6VP0Wm3EMo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/n6VP0Wm3EMo/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20Eason%20Chan%u300A%u4EBA%u4F86%u4EBA%u5F80%u300B%5BOfficial%20MV%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgAotCGoKhD0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gAotCGoKhD0/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5-%20%u5BCC%u58EB%u5C71%u4E0B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVON6EEdRB34%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/VON6EEdRB34/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9673%u5955%u8FC5%20%uFF0D%20%u8461%u8404%u6210%u719F%u6642%20%uFF08%u9AD8%u6E05%u97F3%uFF09%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DbbMbdVVJytA%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/bbMbdVVJytA/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010tk%u6975%u63A8%u85A6%u3011%u96D9%u7B19%20-%20%u5FC3%u505A%u3057%u300C%u9019%u6A23%u7684%u4E8B%u6211%u4E0D%u61C2%u554A%uFF0C%u4E0D%u8981%u8B93%u6211%u7368%u81EA%u4E00%u4EBA%u3002%u300D%20%5B%20High%20Quality%20Lyrics%20%5D%5B%20%u4E2D%u65E5%u5B57%u5E55%20%5D%5B%20%u8650%u5FC3%20%5D%20GUMI%20Best%20Cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DomMpiWlthI4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/omMpiWlthI4/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Billie%20Eilish%2C%20Khalid%20-%20lovely%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DV1Pl8CzNzCw%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/V1Pl8CzNzCw/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5468%u67CF%u8C6A%20Pakho%20Chau%20-%20%u767E%u5E74%u4E0D%u5408%20A%20Hundred%20Years%20%28Official%20Music%20Video%29%20%5B%u611B%u60C5%u4F86%u7684%u6642%u50192%u53F0%u7063%u7BC7%20%u4E3B%u984C%u66F2%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOOEC34Ndb1o%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OOEC34Ndb1o/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u5468%u67CF%u8C6A%20Pakho%20Chau%20-%20%u9084%u8A18%u5F97%20Still%20Remember%20%28Official%20LYRIC%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcaGhQ2tXAiM%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/caGhQ2tXAiM/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010%u5B8C%u6574%u7248%u3011%u5929%u6C23%u4E4B%u5B50OST%20RADWIMPS%20-%u300C%20%u5927%u4E08%u592B%20%u300D%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DpdGZkz7RhMY%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/pdGZkz7RhMY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Uma%20to%20Shika%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dqly9UI4wmag%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/qly9UI4wmag/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Spirits%20of%20the%20Sea%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DS7L8sTDoyNI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A55%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/S7L8sTDoyNI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u3010HD%u3011UNNATURAL%20-%20%u7C73%u6D25%u7384%u5E2B%20-%20Lemon%u3010%u4E2D%u65E5%u5B57%u5E55%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNrHRTNeni-U%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A14%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/NrHRTNeni-U/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22%u9B3C%u6EC5%u4E4B%u5203%20EP.19ED%20%u4E2D%u5DDD%u5948%u7F8E%20-%u300C%20%u7AC8%u9580%u70AD%u6CBB%u90CE%u306E%u3046%u305F%20%u300D%u3010%u4E2D%u65E5%u6B4C%u8A5E%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZke7RKbZbAY%22%2C%22type%22%3A0%2C%22time%22%3A%226%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Zke7RKbZbAY/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22My%20Happy%20Days%20%28Live%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5gj0Wqr9xbI%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5gj0Wqr9xbI/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Ke%20Yi%20Ke%20Zai%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZodth4tL2ks%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A48%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Zodth4tL2ks/hqdefault.jpg%22%7D%2C%7B%22title%22%3A%22Wo%20Men%20Wan%20Sui%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcOsUjnSrj3E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/cOsUjnSrj3E/hqdefault.jpg%22%7D%5D',
    'JP'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    8,
    '416227242264363008',
    '%5B%7B%22title%22%3A%22Fallen%20Down%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcGBMTAGzWPs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3A2KiVNIfpeUn7HJ3rNodx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A31%22%7D%2C%7B%22title%22%3A%22Ruins%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLIUecLaI_m8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/36zoAT4JkjP3u42isW9HWk%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A33%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20Temperate%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHCrJNiMmH88%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3NBEugETDMlY5cgLhwpFiH%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Anticipation%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2fVWJlVH1Iw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6jQBZ5YzLaljFwAp5m97J6%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A23%22%7D%2C%7B%22title%22%3A%22Unnecessary%20Tension%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAT5gL7HsYVc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0fEXyoxWdOZS2rurDiFtNv%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A18%22%7D%2C%7B%22title%22%3A%22Enemy%20Approaching%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dg6aia0GQMRw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5TfZDhS0r1TDlZEka03Nbq%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Ghost%20Fight%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZz1bfhtKsHM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/36ipaNP6Bre5mYOMiLHkgv%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Determination%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dh1wSPmlZV-w%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4FzbIGcOW9Ob3zEyEmLpet%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Home%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5_E_y1AWAfc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6eQ3H5tlCt8EkAXH6Tk0Ez%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A04%22%7D%2C%7B%22title%22%3A%22Home%20%28Music%20Box%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DANEsXjSiYxI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0PefLAb6xynQrXjvVqfzjc%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A04%22%7D%2C%7B%22title%22%3A%22Heartache%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXJ9XtKJHvjQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0eOnHddyRZJfxmcW8yLd7y%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A49%22%7D%2C%7B%22title%22%3A%22Sans.%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Db2UHoGnGyvE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2HPf7WR1L4D6drk6DqaIqm%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Nyeh%20Heh%20Heh%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-W6_6WHBm1Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4EiHUx8YG4BmvpBSgh9eCD%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22Snowy%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBJEqdto_uGw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0T0HD36tAupxH8qQJcUjEt%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A45%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20Holiday%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXjM_w5cjIaY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7C37zVdVlSsrP64gUGZvd3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A30%22%7D%2C%7B%22title%22%3A%22Dogbass%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Da1OLiuNLpEs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3yQ8Q8u8ocXMdOk0uc80hy%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A07%22%7D%2C%7B%22title%22%3A%22Mysterious%20Place%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfgqOiPSvnvo%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0CuFqJr0GovcTR0gnzlouF%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A45%22%7D%2C%7B%22title%22%3A%22Dogsong%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DwoPff-Tpkns%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5k54d0hrTmC6wnPlEkwfyz%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A38%22%7D%2C%7B%22title%22%3A%22Snowdin%20Town%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dz6LmMCuGjfA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ILwVc88cfxvjcOE4QsMar%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A17%22%7D%2C%7B%22title%22%3A%22Shop%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjCQ_5Gj6jlg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4aMrd3aAnuVgGbwdmAQWY4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Bonetrousle%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAKAiUtWZ4xY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0F7bM7LD9s2E4ttiATSjmS%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A58%22%7D%2C%7B%22title%22%3A%22Dating%20Start%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DdtYwq4aBr0E%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5C9uMvowEzNrDpRUJhqRqU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A57%22%7D%2C%7B%22title%22%3A%22Dating%20Tense%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0qBKXNVV0eM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/16f3tfi5hyVWI8BS2tslpO%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A27%22%7D%2C%7B%22title%22%3A%22Dating%20Fight%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjD-oILpw7r0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2zaE2pCoq6VecwDjSltqv2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A36%22%7D%2C%7B%22title%22%3A%22Premonition%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsQDiDDb1_9k%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6zzZG2joAzOaM6G2uE9RzQ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A02%22%7D%2C%7B%22title%22%3A%22Danger%20Mystery%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQxMYFsfJZyw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4p35b9lm0Qgu1vMwDxlNpY%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Undyne%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVH6HIHmhvQU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0EtKDaUovkwTTKS7YZSNcs%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A46%22%7D%2C%7B%22title%22%3A%22Waterfall%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZb52aE6IZuY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6prW94U99Zv62ZZEEhXqls%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A07%22%7D%2C%7B%22title%22%3A%22Run%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DK6wytoX-k7Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0zWSovqIgp7dNKkpUpIhcu%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A27%22%7D%2C%7B%22title%22%3A%22Quiet%20Water%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhGzkdQCvYz0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3Vs05Q8Cz3Gl2fSM1NEbGp%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A32%22%7D%2C%7B%22title%22%3A%22Memory%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-PuXRXftkDA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04RNazFGIkazuCTU6WvqW3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A15%22%7D%2C%7B%22title%22%3A%22Bird%20That%20Carries%20You%20Over%20A%20Disproportionately%20Small%20Gap%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZ51lfE2k7jU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7zKnkREtYabgzn2RpADep2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A26%22%7D%2C%7B%22title%22%3A%22Dummy%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DN3epEVMNJdY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0VtsAqmH0vQeh7A2QpwC5B%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A26%22%7D%2C%7B%22title%22%3A%22Pathetic%20House%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0YlHwRyM26Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6creurm7tz83mJTBC0Ecwx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A39%22%7D%2C%7B%22title%22%3A%22Spooktune%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DK1qjt_1geiI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4csU2JqeQalF2TPy6yW28T%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A24%22%7D%2C%7B%22title%22%3A%22Spookwave%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1uJ57n8PZ_o%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3hdHBDh9Op3uEJc5VyDheL%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A26%22%7D%2C%7B%22title%22%3A%22Ghouliday%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQDbwvVvufAw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/05SHj1cqh22PPcaz9WNnd1%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A13%22%7D%2C%7B%22title%22%3A%22Chill%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DD4Ximn7nZdc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0jUSjoZdPwTdRnxfoupOai%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Thundersnail%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DewxyxByJPP0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3paAWO0ZwabzAmujsEvi3a%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A43%22%7D%2C%7B%22title%22%3A%22Temmie%20Village%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1KUcmuSNmVE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3DcTeT38MVGVf2rnwS2eQy%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A58%22%7D%2C%7B%22title%22%3A%22Tem%20Shop%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy_qHuDjE3CQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3nLf9Cdgxbm2qGFQZ3QNC7%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A46%22%7D%2C%7B%22title%22%3A%22NGAHHH%21%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1vLSwxcb6Z8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7tloJrOrw0yivYr1sAaYgK%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A23%22%7D%2C%7B%22title%22%3A%22Spear%20of%20Justice%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DApWpYmO7G28%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/20OjFkqDnJKYnZe2HTh4oK%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A56%22%7D%2C%7B%22title%22%3A%22Ooo%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DrItfl1ms1Pc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ARa1AG4vWV7epDN6S1aok%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22Alphys%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Do30nPgOgfv0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5mlgyqwVnVPzVUzWk20Zxz%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A26%22%7D%2C%7B%22title%22%3A%22It%27s%20Showtime%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3LhZWVRp6f4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/31gnSvmX1eSY5UNl9gAwxP%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A47%22%7D%2C%7B%22title%22%3A%22Metal%20Crusher%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DP0PpyUsvT9w%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6lKi8IwpOg4twOFMFDK7UB%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A04%22%7D%2C%7B%22title%22%3A%22Another%20Medium%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfduyBqxhXKs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5PuXY3cXsr70l0K6oFhm4f%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A23%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20HEATS%21%21%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjPhuHmjJrzk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6yyYaTJpTvhKKC6Zw5AHav%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A34%22%7D%2C%7B%22title%22%3A%22Stronger%20Monsters%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHnmHqWU0z5M%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3kZ4hHNVwuNwnbV2MBTMWx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A04%22%7D%2C%7B%22title%22%3A%22Hotel%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D8wSYwqbp4S4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7xHnWeJJpHbwYLehejeWhN%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A28%22%7D%2C%7B%22title%22%3A%22Can%20You%20Really%20Call%20This%20A%20Hotel%2C%20I%20Didn%27t%20Receive%20A%20Mint%20On%20My%20Pillow%20Or%20Anything%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBx55-ngn8n0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1kp788bSJhHndgF3SdrHps%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%2216%3A10%22%7D%2C%7B%22title%22%3A%22Confession%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7cM73yS4fbk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0LZPXBA0l4Qj9jiGDi086q%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A43%22%7D%2C%7B%22title%22%3A%22Live%20Report%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DyctddrOFtGc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3GygIxvRbWN2bYFQNzcSN0%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A18%22%7D%2C%7B%22title%22%3A%22Death%20Report%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsJrVIk4IpDk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7p3a6IN1ROxjf9FER1z15y%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A48%22%7D%2C%7B%22title%22%3A%22Spider%20Dance%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNH-GAwLAO30%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2Ho2ouWtrDkZUs6OnSkZri%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A47%22%7D%2C%7B%22title%22%3A%22Wrong%20Enemy%20%21%3F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlN9JsxrI4v8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4vtQXXDxQwnzwjvETYywrf%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A59%22%7D%2C%7B%22title%22%3A%22Oh%21%20One%20True%20Love%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2HZnTNIN648%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/147n8tB8AIL4YK7oqd42fc%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A25%22%7D%2C%7B%22title%22%3A%22Oh%21%20Dungeon%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5aRE_J4UvYM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4heUPM9iVFWuByTlXPrkK2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22It%27s%20Raining%20Somewhere%20Else%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DYidmA4DCjGc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3HJJPdthge0hMW4rwKEfNr%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A51%22%7D%2C%7B%22title%22%3A%22CORE%20Approach%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DE7jf_9zdy-E%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1YFuaKjkIhto2zYHpoKF6N%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A13%22%7D%2C%7B%22title%22%3A%22CORE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWeELPnZqhow%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1aQFbtPnLCzCoThtRsP625%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A47%22%7D%2C%7B%22title%22%3A%22Last%20Episode%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXg3p478sWGg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4sfcehjPaUFPxy6e6hKHAf%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A08%22%7D%2C%7B%22title%22%3A%22Oh%20My...%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBDQV2LwEFbs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3Rm37hxbonlmeJplZY6nN3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A15%22%7D%2C%7B%22title%22%3A%22Death%20By%20Glamour%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQ9kDr4na0ls%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7nnptgmho81M6mKJJFEKrh%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A15%22%7D%2C%7B%22title%22%3A%22For%20The%20Fans%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZBS5H956eqY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1v14ZHAZmzAXdbPDZtdseX%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A48%22%7D%2C%7B%22title%22%3A%22Long%20Elevator%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmohxjUyfjek%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/32tYpU7oHxc5GKh9UZuICl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A21%22%7D%2C%7B%22title%22%3A%22Undertale%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dc9rNGeRxAHw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/02lsfhthNFGv3zt9XpfKEd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%229%3A30%22%7D%2C%7B%22title%22%3A%22Song%20That%20Might%20Play%20When%20You%20Fight%20Sans%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D47GvY9rOMUs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ridOFtb6Ss3SoT6Dc8PBj%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A02%22%7D%2C%7B%22title%22%3A%22The%20Choice%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC4Wv5M9JPao%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6kvUfgav2rdgNa8hbYV4fn%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A13%22%7D%2C%7B%22title%22%3A%22Small%20Shock%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DX-x7HPABiHY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5PXWfVufPBZJdnC1JfVT3Z%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A15%22%7D%2C%7B%22title%22%3A%22Barrier%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFrXkmkBhToQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4fSCjfBA0MjeeZgIYPgUgl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A32%22%7D%2C%7B%22title%22%3A%22Bergentr%FCckung%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ddoesfmrk9bQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/49h2gOoBEL86xZ9O73nl1A%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A57%22%7D%2C%7B%22title%22%3A%22ASGORE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dqrtt7mgwCTw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6WGfFSAlpAmX9MkJISNE2z%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A36%22%7D%2C%7B%22title%22%3A%22You%20Idiot%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DoJFur9DFkoQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6wl34Fa8a81MiCzOKu7Y9k%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A35%22%7D%2C%7B%22title%22%3A%22Your%20Best%20Nightmare%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DSObWQRaltug%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/47GnWkXC87br9sMiHx7JwH%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A00%22%7D%2C%7B%22title%22%3A%22Finale%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5qajT8lS2ok%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0KlyDXU4Yr2shaeZLT5pZO%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A53%22%7D%2C%7B%22title%22%3A%22An%20Ending%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgLgUesz8444%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6GLo4fBIA9pDzCQWhggcK3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A29%22%7D%2C%7B%22title%22%3A%22She%27s%20Playing%20Piano%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzEAN2dna9To%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3NVIxwq0YmA6ggzuuetLnX%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Here%20We%20Are%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy49b8aiQVBg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2Il3yM5VZomt91usB404Rl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A07%22%7D%2C%7B%22title%22%3A%22Amalgam%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D71u0i6J-Qes%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7gAAw7peAKtqiEBfDHuGg6%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A21%22%7D%2C%7B%22title%22%3A%22Fallen%20Down%20%28Reprise%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcGBMTAGzWPs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2AqAGexotYZzd0tkAWL5FP%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A31%22%7D%2C%7B%22title%22%3A%22Don%27t%20Give%20Up%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DB4qdpiad_Q0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2rSdCs9WFtPMYcsL9Xs29i%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A03%22%7D%2C%7B%22title%22%3A%22Hopes%20And%20Dreams%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHA3Ks8NLS-Y%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0xeDaa5RD48c59YGHim78S%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A02%22%7D%2C%7B%22title%22%3A%22Burn%20In%20Despair%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVauL5iv687I%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4rj6W16ZtePU1Li7Ss6eKY%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A22%22%7D%2C%7B%22title%22%3A%22SAVE%20The%20World%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLAn-JYzKm5M%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5uevtVL66wlQDt8kicbsnW%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A54%22%7D%2C%7B%22title%22%3A%22His%20Theme%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D8tf-gVaHdag%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6494VHRQtM27oZ2nbritfF%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A06%22%7D%2C%7B%22title%22%3A%22Final%20Power%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D6nQbkE1DS0o%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0USXQ50kNHSMMgHggC3LFN%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Reunited%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWgRfPc1lfJk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1nknByR0NJxugCtwTLqYoq%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A45%22%7D%2C%7B%22title%22%3A%22Menu%20%28Full%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Djbm2LZ82e4Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/50aSk40QFchmeMukW7lBtU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A38%22%7D%2C%7B%22title%22%3A%22Respite%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DE-fyLcHg4iM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7BedbWm0sHeaX1EEx9Tt6V%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A55%22%7D%2C%7B%22title%22%3A%22Bring%20It%20In%2C%20Guys%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dx_P5smsopK0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6Hc0XaLj7eyPuqdxmp7bZm%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A13%22%7D%2C%7B%22title%22%3A%22Last%20Goodbye%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEpBQ5m3Ag3Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2xoO317hXO5IkHfDU9K4Rd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A16%22%7D%2C%7B%22title%22%3A%22But%20The%20Earth%20Refused%20To%20Die%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DO6pph2RMoPU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4y6UGc4WW3IoZCkycZvXT5%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A35%22%7D%2C%7B%22title%22%3A%22Battle%20Against%20A%20True%20Hero%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DDcERQHg3iy8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3SSlyEfjaK2JiC9gM7J0cr%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A37%22%7D%2C%7B%22title%22%3A%22Power%20Of%20%5C%22NEO%5C%22%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DbWUIWTkBiqE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/73b2G4HEWtOaRv6UzDKeXk%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22MEGALOVANIA%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0FCvzsVlXpQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2WpstnkNuH6dUnm3fVLCpU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A36%22%7D%2C%7B%22title%22%3A%22Good%20Night%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Da9-7h0NmMn8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0hvjlwc2mK3EES0U8lElsU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22Once%20Upon%20a%20Time%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3BR7-AzE2dQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2LgAG9R8A88DADdpVmZf7V%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A29%22%7D%2C%7B%22title%22%3A%22Start%20Menu%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DkRT9vY2f7tg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4TWgQn3CjlyVFX797CqUk1%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22Your%20Best%20Friend%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLLcztVBXams%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0vOiI6O5n5WvkQgpd9tFx4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A24%22%7D%5D',
    'Undertale'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    9,
    '517290901593128980',
    '%5B%7B%22title%22%3A%22Fallen%20Down%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcGBMTAGzWPs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3A2KiVNIfpeUn7HJ3rNodx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A31%22%7D%2C%7B%22title%22%3A%22Ruins%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLIUecLaI_m8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/36zoAT4JkjP3u42isW9HWk%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A33%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20Temperate%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHCrJNiMmH88%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3NBEugETDMlY5cgLhwpFiH%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Anticipation%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2fVWJlVH1Iw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6jQBZ5YzLaljFwAp5m97J6%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A23%22%7D%2C%7B%22title%22%3A%22Unnecessary%20Tension%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAT5gL7HsYVc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0fEXyoxWdOZS2rurDiFtNv%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A18%22%7D%2C%7B%22title%22%3A%22Enemy%20Approaching%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dg6aia0GQMRw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5TfZDhS0r1TDlZEka03Nbq%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Ghost%20Fight%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZz1bfhtKsHM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/36ipaNP6Bre5mYOMiLHkgv%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Determination%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dh1wSPmlZV-w%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4FzbIGcOW9Ob3zEyEmLpet%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Home%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5_E_y1AWAfc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6eQ3H5tlCt8EkAXH6Tk0Ez%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A04%22%7D%2C%7B%22title%22%3A%22Home%20%28Music%20Box%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DANEsXjSiYxI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0PefLAb6xynQrXjvVqfzjc%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A04%22%7D%2C%7B%22title%22%3A%22Heartache%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXJ9XtKJHvjQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0eOnHddyRZJfxmcW8yLd7y%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A49%22%7D%2C%7B%22title%22%3A%22Sans.%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Db2UHoGnGyvE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2HPf7WR1L4D6drk6DqaIqm%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Nyeh%20Heh%20Heh%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-W6_6WHBm1Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4EiHUx8YG4BmvpBSgh9eCD%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22Snowy%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBJEqdto_uGw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0T0HD36tAupxH8qQJcUjEt%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A45%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20Holiday%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXjM_w5cjIaY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7C37zVdVlSsrP64gUGZvd3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A30%22%7D%2C%7B%22title%22%3A%22Dogbass%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Da1OLiuNLpEs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3yQ8Q8u8ocXMdOk0uc80hy%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A07%22%7D%2C%7B%22title%22%3A%22Mysterious%20Place%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfgqOiPSvnvo%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0CuFqJr0GovcTR0gnzlouF%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A45%22%7D%2C%7B%22title%22%3A%22Dogsong%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DwoPff-Tpkns%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5k54d0hrTmC6wnPlEkwfyz%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A38%22%7D%2C%7B%22title%22%3A%22Snowdin%20Town%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dz6LmMCuGjfA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ILwVc88cfxvjcOE4QsMar%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A17%22%7D%2C%7B%22title%22%3A%22Shop%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjCQ_5Gj6jlg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4aMrd3aAnuVgGbwdmAQWY4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A51%22%7D%2C%7B%22title%22%3A%22Bonetrousle%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAKAiUtWZ4xY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0F7bM7LD9s2E4ttiATSjmS%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A58%22%7D%2C%7B%22title%22%3A%22Dating%20Start%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DdtYwq4aBr0E%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5C9uMvowEzNrDpRUJhqRqU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A57%22%7D%2C%7B%22title%22%3A%22Dating%20Tense%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0qBKXNVV0eM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/16f3tfi5hyVWI8BS2tslpO%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A27%22%7D%2C%7B%22title%22%3A%22Dating%20Fight%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjD-oILpw7r0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2zaE2pCoq6VecwDjSltqv2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A36%22%7D%2C%7B%22title%22%3A%22Premonition%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsQDiDDb1_9k%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6zzZG2joAzOaM6G2uE9RzQ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A02%22%7D%2C%7B%22title%22%3A%22Danger%20Mystery%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQxMYFsfJZyw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4p35b9lm0Qgu1vMwDxlNpY%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Undyne%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVH6HIHmhvQU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0EtKDaUovkwTTKS7YZSNcs%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A46%22%7D%2C%7B%22title%22%3A%22Waterfall%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZb52aE6IZuY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6prW94U99Zv62ZZEEhXqls%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A07%22%7D%2C%7B%22title%22%3A%22Run%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DK6wytoX-k7Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0zWSovqIgp7dNKkpUpIhcu%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A27%22%7D%2C%7B%22title%22%3A%22Quiet%20Water%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DhGzkdQCvYz0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3Vs05Q8Cz3Gl2fSM1NEbGp%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A32%22%7D%2C%7B%22title%22%3A%22Memory%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-PuXRXftkDA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04RNazFGIkazuCTU6WvqW3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A15%22%7D%2C%7B%22title%22%3A%22Bird%20That%20Carries%20You%20Over%20A%20Disproportionately%20Small%20Gap%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZ51lfE2k7jU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7zKnkREtYabgzn2RpADep2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A26%22%7D%2C%7B%22title%22%3A%22Dummy%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DN3epEVMNJdY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0VtsAqmH0vQeh7A2QpwC5B%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A26%22%7D%2C%7B%22title%22%3A%22Pathetic%20House%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0YlHwRyM26Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6creurm7tz83mJTBC0Ecwx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A39%22%7D%2C%7B%22title%22%3A%22Spooktune%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DK1qjt_1geiI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4csU2JqeQalF2TPy6yW28T%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A24%22%7D%2C%7B%22title%22%3A%22Spookwave%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1uJ57n8PZ_o%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3hdHBDh9Op3uEJc5VyDheL%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A26%22%7D%2C%7B%22title%22%3A%22Ghouliday%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQDbwvVvufAw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/05SHj1cqh22PPcaz9WNnd1%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A13%22%7D%2C%7B%22title%22%3A%22Chill%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DD4Ximn7nZdc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0jUSjoZdPwTdRnxfoupOai%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A57%22%7D%2C%7B%22title%22%3A%22Thundersnail%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DewxyxByJPP0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3paAWO0ZwabzAmujsEvi3a%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A43%22%7D%2C%7B%22title%22%3A%22Temmie%20Village%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1KUcmuSNmVE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3DcTeT38MVGVf2rnwS2eQy%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A58%22%7D%2C%7B%22title%22%3A%22Tem%20Shop%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy_qHuDjE3CQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3nLf9Cdgxbm2qGFQZ3QNC7%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A46%22%7D%2C%7B%22title%22%3A%22NGAHHH%21%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1vLSwxcb6Z8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7tloJrOrw0yivYr1sAaYgK%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A23%22%7D%2C%7B%22title%22%3A%22Spear%20of%20Justice%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DApWpYmO7G28%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/20OjFkqDnJKYnZe2HTh4oK%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A56%22%7D%2C%7B%22title%22%3A%22Ooo%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DrItfl1ms1Pc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ARa1AG4vWV7epDN6S1aok%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22Alphys%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Do30nPgOgfv0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5mlgyqwVnVPzVUzWk20Zxz%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A26%22%7D%2C%7B%22title%22%3A%22It%27s%20Showtime%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3LhZWVRp6f4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/31gnSvmX1eSY5UNl9gAwxP%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A47%22%7D%2C%7B%22title%22%3A%22Metal%20Crusher%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DP0PpyUsvT9w%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6lKi8IwpOg4twOFMFDK7UB%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A04%22%7D%2C%7B%22title%22%3A%22Another%20Medium%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfduyBqxhXKs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5PuXY3cXsr70l0K6oFhm4f%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A23%22%7D%2C%7B%22title%22%3A%22Uwa%21%21%20So%20HEATS%21%21%u266B%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjPhuHmjJrzk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6yyYaTJpTvhKKC6Zw5AHav%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A34%22%7D%2C%7B%22title%22%3A%22Stronger%20Monsters%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHnmHqWU0z5M%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3kZ4hHNVwuNwnbV2MBTMWx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A04%22%7D%2C%7B%22title%22%3A%22Hotel%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D8wSYwqbp4S4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7xHnWeJJpHbwYLehejeWhN%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A28%22%7D%2C%7B%22title%22%3A%22Can%20You%20Really%20Call%20This%20A%20Hotel%2C%20I%20Didn%27t%20Receive%20A%20Mint%20On%20My%20Pillow%20Or%20Anything%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBx55-ngn8n0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1kp788bSJhHndgF3SdrHps%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%2216%3A10%22%7D%2C%7B%22title%22%3A%22Confession%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7cM73yS4fbk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0LZPXBA0l4Qj9jiGDi086q%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A43%22%7D%2C%7B%22title%22%3A%22Live%20Report%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DyctddrOFtGc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3GygIxvRbWN2bYFQNzcSN0%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A18%22%7D%2C%7B%22title%22%3A%22Death%20Report%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DsJrVIk4IpDk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7p3a6IN1ROxjf9FER1z15y%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A48%22%7D%2C%7B%22title%22%3A%22Spider%20Dance%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNH-GAwLAO30%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2Ho2ouWtrDkZUs6OnSkZri%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A47%22%7D%2C%7B%22title%22%3A%22Wrong%20Enemy%20%21%3F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlN9JsxrI4v8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4vtQXXDxQwnzwjvETYywrf%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A59%22%7D%2C%7B%22title%22%3A%22Oh%21%20One%20True%20Love%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2HZnTNIN648%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/147n8tB8AIL4YK7oqd42fc%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A25%22%7D%2C%7B%22title%22%3A%22Oh%21%20Dungeon%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5aRE_J4UvYM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4heUPM9iVFWuByTlXPrkK2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22It%27s%20Raining%20Somewhere%20Else%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DYidmA4DCjGc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3HJJPdthge0hMW4rwKEfNr%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A51%22%7D%2C%7B%22title%22%3A%22CORE%20Approach%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DE7jf_9zdy-E%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1YFuaKjkIhto2zYHpoKF6N%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A13%22%7D%2C%7B%22title%22%3A%22CORE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWeELPnZqhow%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1aQFbtPnLCzCoThtRsP625%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A47%22%7D%2C%7B%22title%22%3A%22Last%20Episode%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXg3p478sWGg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4sfcehjPaUFPxy6e6hKHAf%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A08%22%7D%2C%7B%22title%22%3A%22Oh%20My...%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBDQV2LwEFbs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3Rm37hxbonlmeJplZY6nN3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A15%22%7D%2C%7B%22title%22%3A%22Death%20By%20Glamour%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQ9kDr4na0ls%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7nnptgmho81M6mKJJFEKrh%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A15%22%7D%2C%7B%22title%22%3A%22For%20The%20Fans%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZBS5H956eqY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1v14ZHAZmzAXdbPDZtdseX%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A48%22%7D%2C%7B%22title%22%3A%22Long%20Elevator%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmohxjUyfjek%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/32tYpU7oHxc5GKh9UZuICl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A21%22%7D%2C%7B%22title%22%3A%22Undertale%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dc9rNGeRxAHw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/02lsfhthNFGv3zt9XpfKEd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%229%3A30%22%7D%2C%7B%22title%22%3A%22Song%20That%20Might%20Play%20When%20You%20Fight%20Sans%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D47GvY9rOMUs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0ridOFtb6Ss3SoT6Dc8PBj%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A02%22%7D%2C%7B%22title%22%3A%22The%20Choice%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC4Wv5M9JPao%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6kvUfgav2rdgNa8hbYV4fn%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A13%22%7D%2C%7B%22title%22%3A%22Small%20Shock%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DX-x7HPABiHY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5PXWfVufPBZJdnC1JfVT3Z%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A15%22%7D%2C%7B%22title%22%3A%22Barrier%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFrXkmkBhToQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4fSCjfBA0MjeeZgIYPgUgl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A32%22%7D%2C%7B%22title%22%3A%22Bergentr%FCckung%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ddoesfmrk9bQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/49h2gOoBEL86xZ9O73nl1A%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A57%22%7D%2C%7B%22title%22%3A%22ASGORE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dqrtt7mgwCTw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6WGfFSAlpAmX9MkJISNE2z%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A36%22%7D%2C%7B%22title%22%3A%22You%20Idiot%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DoJFur9DFkoQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6wl34Fa8a81MiCzOKu7Y9k%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A35%22%7D%2C%7B%22title%22%3A%22Your%20Best%20Nightmare%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DSObWQRaltug%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/47GnWkXC87br9sMiHx7JwH%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A00%22%7D%2C%7B%22title%22%3A%22Finale%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5qajT8lS2ok%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0KlyDXU4Yr2shaeZLT5pZO%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A53%22%7D%2C%7B%22title%22%3A%22An%20Ending%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgLgUesz8444%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6GLo4fBIA9pDzCQWhggcK3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A29%22%7D%2C%7B%22title%22%3A%22She%27s%20Playing%20Piano%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzEAN2dna9To%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3NVIxwq0YmA6ggzuuetLnX%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Here%20We%20Are%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy49b8aiQVBg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2Il3yM5VZomt91usB404Rl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A07%22%7D%2C%7B%22title%22%3A%22Amalgam%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D71u0i6J-Qes%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7gAAw7peAKtqiEBfDHuGg6%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A21%22%7D%2C%7B%22title%22%3A%22Fallen%20Down%20%28Reprise%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcGBMTAGzWPs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2AqAGexotYZzd0tkAWL5FP%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A31%22%7D%2C%7B%22title%22%3A%22Don%27t%20Give%20Up%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DB4qdpiad_Q0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2rSdCs9WFtPMYcsL9Xs29i%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A03%22%7D%2C%7B%22title%22%3A%22Hopes%20And%20Dreams%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHA3Ks8NLS-Y%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0xeDaa5RD48c59YGHim78S%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A02%22%7D%2C%7B%22title%22%3A%22Burn%20In%20Despair%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVauL5iv687I%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4rj6W16ZtePU1Li7Ss6eKY%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A22%22%7D%2C%7B%22title%22%3A%22SAVE%20The%20World%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLAn-JYzKm5M%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5uevtVL66wlQDt8kicbsnW%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A54%22%7D%2C%7B%22title%22%3A%22His%20Theme%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D8tf-gVaHdag%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6494VHRQtM27oZ2nbritfF%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A06%22%7D%2C%7B%22title%22%3A%22Final%20Power%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D6nQbkE1DS0o%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0USXQ50kNHSMMgHggC3LFN%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A19%22%7D%2C%7B%22title%22%3A%22Reunited%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWgRfPc1lfJk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1nknByR0NJxugCtwTLqYoq%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A45%22%7D%2C%7B%22title%22%3A%22Menu%20%28Full%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Djbm2LZ82e4Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/50aSk40QFchmeMukW7lBtU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A38%22%7D%2C%7B%22title%22%3A%22Respite%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DE-fyLcHg4iM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7BedbWm0sHeaX1EEx9Tt6V%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A55%22%7D%2C%7B%22title%22%3A%22Bring%20It%20In%2C%20Guys%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dx_P5smsopK0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6Hc0XaLj7eyPuqdxmp7bZm%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%224%3A13%22%7D%2C%7B%22title%22%3A%22Last%20Goodbye%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEpBQ5m3Ag3Q%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2xoO317hXO5IkHfDU9K4Rd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A16%22%7D%2C%7B%22title%22%3A%22But%20The%20Earth%20Refused%20To%20Die%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DO6pph2RMoPU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4y6UGc4WW3IoZCkycZvXT5%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A35%22%7D%2C%7B%22title%22%3A%22Battle%20Against%20A%20True%20Hero%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DDcERQHg3iy8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3SSlyEfjaK2JiC9gM7J0cr%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A37%22%7D%2C%7B%22title%22%3A%22Power%20Of%20%5C%22NEO%5C%22%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DbWUIWTkBiqE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/73b2G4HEWtOaRv6UzDKeXk%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22MEGALOVANIA%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0FCvzsVlXpQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2WpstnkNuH6dUnm3fVLCpU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%222%3A36%22%7D%2C%7B%22title%22%3A%22Good%20Night%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Da9-7h0NmMn8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0hvjlwc2mK3EES0U8lElsU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A31%22%7D%2C%7B%22title%22%3A%22Once%20Upon%20a%20Time%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3BR7-AzE2dQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2LgAG9R8A88DADdpVmZf7V%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%221%3A29%22%7D%2C%7B%22title%22%3A%22Start%20Menu%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DkRT9vY2f7tg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4TWgQn3CjlyVFX797CqUk1%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A33%22%7D%2C%7B%22title%22%3A%22Your%20Best%20Friend%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLLcztVBXams%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0vOiI6O5n5WvkQgpd9tFx4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%220%3A24%22%7D%5D',
    'Undertale'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    10,
    '416227242264363008',
    '%5B%7B%22title%22%3A%22%28Better%29%20Streamer%20Battle%20Themes%20Mashup%20-%20Paper%20Mario%3A%20The%20Origami%20King%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3lIVvOxkgII%22%2C%22type%22%3A0%2C%22time%22%3A%2210%3A52%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3lIVvOxkgII/hq720.jpg%3Fsqp%3D-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLADp2z1SdsYtx0EP_EWNQ05Ocm7Hg%22%2C%22volume%22%3A5%7D%2C%7B%22title%22%3A%22Maple%20Treeway%20Mashup%20-%20Mario%20Kart%20Wii/7%20+%20NewerSMBW%20+%20Paper%20Mario%3A%20The%20Origami%20King%20Music%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dgp_05MvAT3U%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gp_05MvAT3U/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCm2cywQQLhsNKKQ5QjqGZPEB0i8w%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Scatman%27s%20World%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7neipvZ_H0c%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A46%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/7neipvZ_H0c/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLD0670vX38T6ohvAfNM64l-85wwjg%22%2C%22volume%22%3A3%7D%2C%7B%22title%22%3A%22Toad%20Town%20%7E%20All%20Versions%20%28Paper%20Mario%3A%20The%20Origami%20King%20OST%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DODyypARcFhk%22%2C%22type%22%3A0%2C%22time%22%3A%2211%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ODyypARcFhk/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAKd3CkfjaOIJv3kRihA_OcK4VFEw%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22The%20Missile%20Maestro%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DasSV3EqBPBc%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A12%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/asSV3EqBPBc/maxresdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22The%20Elastic%20Entertainer%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dw7Kbdk-A-gk%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A15%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/w7Kbdk-A-gk/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLC8NZWWmCS1pGPAinaC--nT3KVEfw%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Disco%20Devil%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DU7-rWLCe4v8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A00%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/U7-rWLCe4v8/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAoOmcFWDU86wqXBJwki1FNLtUsPg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22The%20Shifty%20Sticker%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQxIlIpx3-Ag%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A19%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/QxIlIpx3-Ag/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDEHXrQRGqP9ReSN3uE-KeVxZRIBw%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22The%20Dual-Bladed%20Duelist%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlaPhKaLS62c%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A20%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/laPhKaLS62c/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDawPnOJKyLFeHHxzWgkbcKdNb8xA%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22The%20Fanged%20Fastener%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEFQb0II1bQE%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/EFQb0II1bQE/hqdefault.jpg%3Fsqp%3D-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLATL3DkKkRIvLUeP7lKfJIvid_zFw%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Vellumental%20Battle%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxxUu7Yl1YMA%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A07%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xxUu7Yl1YMA/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAvp7ugYpaZDxMPPqwydZtdT4bR2w%22%2C%22volume%22%3A1%7D%5D',
    'some stuff'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    11,
    '416227242264363008',
    '%5B%7B%22title%22%3A%22Hopes%20And%20Dreams%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHA3Ks8NLS-Y%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0xeDaa5RD48c59YGHim78S%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A02%22%7D%2C%7B%22title%22%3A%22THE%20WORLD%20REVOLVING%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZ01Tsgwe2dQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5QBozbgRWIYDSriHCRTsXd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27306f2539e9993e43ae9adcc69%22%2C%22time%22%3A%221%3A42%22%7D%2C%7B%22title%22%3A%22April%20Showers%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D18JQUYgpOlw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04KsMCb9PZE2S0AtUU8Jhb%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273560c583259f9dea8625ec071%22%2C%22time%22%3A%224%3A32%22%7D%2C%7B%22title%22%3A%22Slide%20-%20Super%20Mario%2064%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_sG5YwPtetk%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_sG5YwPtetk/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLARwtPJ5sKZe6YgbJyqXW_QssXWfw%22%7D%2C%7B%22title%22%3A%22Super%20Mario%20Maker%202%20Trailer%20Theme%20Perfect%20Edition%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DD-rdM1pMq9w%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A15%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/D-rdM1pMq9w/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAZ_vHiXI-arR672kqYTb3nwu41Gw%22%7D%2C%7B%22title%22%3A%22Stal%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DPRUtpWzsSEg%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/PRUtpWzsSEg/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAShA-XufEWQYILr153JY3kUL4FeQ%22%7D%2C%7B%22title%22%3A%22Wii%20Music%20-%20Gaming%20Background%20Music%20%28HD%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dx2NzoLMWAwQ%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/x2NzoLMWAwQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBsoUojGb10yJG6YgbQeluj8A2d3Q%22%7D%2C%7B%22title%22%3A%22Wario%27s%20Gold%20Mine%20-%20Mario%20Kart%20Wii%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DGm_-vcOEFmM%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Gm_-vcOEFmM/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAQUIR1DtnjEtfBaXjjn5jrODspDw%22%7D%2C%7B%22title%22%3A%22Sweden%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_3ngiSxVCBs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A36%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_3ngiSxVCBs/hq720.jpg%3Fsqp%3D-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCOcXr79x8TMUMjyS2DQk0kWs9BLg%22%7D%2C%7B%22title%22%3A%22Red%20Streamer%20Battle%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBIHCjBmDSg8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A04%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BIHCjBmDSg8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB9MSUgjRD88ufdvsQj0ehZmdqJYA%22%7D%2C%7B%22title%22%3A%22The%20Great%20Sea%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBWKQQ2k1OAA%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A50%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BWKQQ2k1OAA/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCjsvwczgwCZ6oRcxBJ6V29YdL4Rg%22%7D%2C%7B%22title%22%3A%22Staff%20Roll%20-%20Super%20Mario%2064%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4Ruqn1Lnexs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4Ruqn1Lnexs/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAwMjjPvyBVzfDgBPxWR535WWw4Yw%22%7D%2C%7B%22title%22%3A%22Staff%20Roll%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_0zGW2eSnEI%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A00%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_0zGW2eSnEI/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDKvm_IWVjMEYoo7vgq3BbsjZWBVA%22%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB0bUlSn9VBGlejXQhxptks8LLSXQ%22%7D%2C%7B%22title%22%3A%22Waluigi%20Pinball%20-%20Mario%20Kart%20DS%20%5BOST%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFT6PZUTdd04%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/FT6PZUTdd04/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAUVTSFg_tcQRlg72DbQJZIeozXnw%22%7D%2C%7B%22title%22%3A%22Circuit%20Theme%20-%20Mario%20Kart%3A%20Double%20Dash%21%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFKC5EfjgyT8%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A46%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/FKC5EfjgyT8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAUJADm5XhMYfLzyt1wEgvJpgC7MQ%22%7D%2C%7B%22title%22%3A%22Baby%20Park%20-%20Mario%20Kart%3A%20Double%20Dash%21%21%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dy99wX-JZGJo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A39%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/y99wX-JZGJo/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLC9OZ0XXaobTsad0H3TKgjt1Rpz1w%22%7D%2C%7B%22title%22%3A%22DS%20Delfino%20Square%20-%20Mario%20Kart%20Wii%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0g9saF3BZRQ%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A34%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/0g9saF3BZRQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB6-caHzLijdEfLF8dG2XnUuTFPeQ%22%7D%2C%7B%22title%22%3A%22Maple%20Treeway%20-%20Mario%20Kart%20Wii%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlLn9__8SSTk%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/lLn9__8SSTk/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLD6GK9w6_i7vQuCZtmoMpM8kZRApA%22%7D%2C%7B%22title%22%3A%22Tranquil%20Pipes%20Teahouse%20%28Maple%20Treeway%29%20music%20Loopable%20%7C%20Paper%20Mario%3A%20The%20Origami%20King%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgEESmBVRvR0%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gEESmBVRvR0/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCaJMCNZF-123bWrn_kxnDUqv2y1Q%22%7D%2C%7B%22title%22%3A%22Home%20-%20We%27re%20Finally%20Landing%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzR6fECxF44I%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A33%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/zR6fECxF44I/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDnNOzmgjP0k9O9gS45Ti2sXXCSlQ%22%7D%2C%7B%22title%22%3A%22Wii%20Sports%20-%20Wii%20Sports%20Theme%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dd5c4KOopwLs%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A13%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/d5c4KOopwLs/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDSIASX3__gKHb1VZUQJAj-tiXASQ%22%7D%2C%7B%22title%22%3A%22Dire%2C%20Dire%20Docks%20-%20Super%20Mario%2064%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DGBPbJyxqHV0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A06%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/GBPbJyxqHV0/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB81Yt1IId-L0iwBZDipriC74kuSg%22%7D%2C%7B%22title%22%3A%22Mario%20Power%20Tennis%20Music%20-%20Title%20Theme%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DvNaUtfYw3bQ%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A12%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/vNaUtfYw3bQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAsNRbwbH7Oz0Z9zvu6FcdImz2s1g%22%7D%2C%7B%22title%22%3A%22Rainbow%20Road%20Mashup/Mix%20-%20Across%20Generations%3A%20EternalSushi%20+%20Nintendo%20%28Special%203k%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dz2c7_KD9jls%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/z2c7_KD9jls/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBJb_Ip-QM_G1RvQu5NpCrlZVyYQw%22%7D%2C%7B%22title%22%3A%22Airship%20Fortress%20-%20Mario%20Kart%20DS%20%5BOST%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DazC_7dm41yE%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A43%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/azC_7dm41yE/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCYXQRUcMRJtyuPvmHr3uJB0ZzeYg%22%7D%2C%7B%22title%22%3A%22Paper%20Mario%20The%20Origami%20King%20Hole%20Puncher%20Boss%20Theme%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTsiMkdagTqs%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/TsiMkdagTqs/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAaY1gYpkYYff--I0zbmA0oWJ7sHg%22%7D%2C%7B%22title%22%3A%22Cloudy%20Court%20Galaxy%20-%20Super%20Mario%20Galaxy%202%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC6d4lxw9FYM%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/C6d4lxw9FYM/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB89lPUyAgj5BjFnEtZ1cfksdWndw%22%7D%2C%7B%22title%22%3A%22Battlerock%20Galaxy%20-%20Super%20Mario%20Galaxy%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DKYhmHovdBxY%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/KYhmHovdBxY/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDfRIC5QbSF0fqjJPsxBYzugo571g%22%7D%5D',
    'temp'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    12,
    '517290901593128980',
    '%5B%7B%22title%22%3A%22%u3010%u5C3C%u723E%20%u81EA%u52D5%u4EBA%u578B%u3011%u4E3B%u984C%u66F2%20-%20%u58CA%u30EC%u30BF%u4E16%u754C%u30CE%u6B4C%20%28MV%u4E2D%u65E5%u6B4C%u8A5E%2C%20%u6709%u96F7%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgzM8Dv7nXLQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A45%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gzM8Dv7nXLQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDO1eKknjM_B7ujGvUT0jCrruaBSw%22%7D%2C%7B%22title%22%3A%22Relaxing%20NieR%3A%20Automata%20Music%20with%20Rain%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJbbiSVk_z60%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A09%3A40%22%2C%22thumbnail%22%3A%22https%3A//img.youtube.com/vi/JbbiSVk_z60/maxresdefault.jpg%22%7D%2C%7B%22title%22%3A%22OST%20NieR%3A%20Automata%20-%20Vague%20Hope%20%28Cold%20Rain%20%26%20Spring%20Rain%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBknOTzSCQhI%22%2C%22type%22%3A0%2C%22time%22%3A%228%3A19%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BknOTzSCQhI/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBT54FR9Av1ERbLzQe91LgQU-SVLw%22%7D%2C%7B%22title%22%3A%22NieR%20Automata%20Concert%20OST%20Full%20Album%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D9e7pwv8a-cI%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A23%3A52%22%2C%22thumbnail%22%3A%22https%3A//img.youtube.com/vi/9e7pwv8a-cI/maxresdefault.jpg%22%7D%5D',
    'Nier'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    13,
    '416227242264363008',
    'mario'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    15,
    '517290901593128980',
    '%5B%7B%22title%22%3A%22%28Eng%20Sub%29Nekomata%20Okayu%20singing%20-%20Solar%20System%20Disco%28%u592A%u967D%u7CFB%u30C7%u30B9%u30B3%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOoQSwwSUe3E%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A50%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OoQSwwSUe3E/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%uFF28%uFF2F%uFF2C%uFF2F%uFF2C%uFF29%uFF36%uFF25%5D%20Okayu%20sing%20Shiny%20Smily%20Story%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBxtlRyNq_cM%22%2C%22type%22%3A0%2C%22time%22%3A%227%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BxtlRyNq_cM/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Okayu%20sings%20Mr.%20Music%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcNm98dc5kTo%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A52%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/cNm98dc5kTo/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%5B%uFF28%uFF2F%uFF2C%uFF2F%uFF2C%uFF29%uFF36%uFF25%5D%20Nekomata%20Okayu%20sing%20Inochi%20ni%20Kirawarete%20iru%20%20%u547D%u306B%u5ACC%u308F%u308C%u3066%u3044%u308B%u3002%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7MMn8zLN29M%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/7MMn8zLN29M/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Charles%20%28Balloon%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DSaYHIoDd7l0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/SaYHIoDd7l0/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Drawing%20Song%20%28Nekomata%20Okayu%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEvAyJsZeIks%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/EvAyJsZeIks/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u3010%u6B4C%u3063%u3066%u307F%u305F%u3011Mrs.Pumpkin%u306E%u6ED1%u7A3D%u306A%u5922%uFF0F%u7D2B%u54B2%u30B7%u30AA%u30F3%D7%u732B%u53C8%u304A%u304B%u3086%u3010%u30CF%u30ED%u30A6%u30A3%u30F3%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOtpqIXEkMQA%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A13%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OtpqIXEkMQA/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Senbouzakura%20%28Thousands%20of%20Cherry%20Trees%29%20Okayu%20cover%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dcn4Yo5o1d0w%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A06%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/cn4Yo5o1d0w/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Don%27t%20say%20lazy%21%20%5BCover%5D%20by%20Nekomata%20Okayu/%u732B%u53C8%u304A%u304B%u3086%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dl1sDAaul9jc%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A29%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/l1sDAaul9jc/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u3010Okakoro%u3011Nekomata%20Okayu%20%26%20Inugami%20Korone%20-%20Hyadain%20no%20Joujou%20Yuujou%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEsdwIWJ15uU%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A06%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/EsdwIWJ15uU/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Happy%20End%20%28Back%20Number%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1nbsP40feAM%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A15%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1nbsP40feAM/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u30A6%u30DF%u30E6%u30EA%u6D77%u5E95%u8B5A%20/%20%u732B%u53C8%u304A%u304B%u3086%28cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0scxODT68X4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/0scxODT68X4/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Sugar%20Song%20and%20Bitterstep%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEexkKEi2r-8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A10%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/EexkKEi2r-8/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u60D1%u661F%u30EB%u30FC%u30D7%20/%20%u732B%u53C8%u304A%u304B%u3086%28cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DdXUJ0IDdX28%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A14%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/dXUJ0IDdX28/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u30D1%u30D7%u30EA%u30AB%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmzYtKjdp0Mc%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A15%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/mzYtKjdp0Mc/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Lemon%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1k9-db9ZAZA%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A19%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1k9-db9ZAZA/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u65B0%u5B9D%u5CF6%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWQXb3686zJA%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A58%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/WQXb3686zJA/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u604B%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXIldddKzhSc%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/XIldddKzhSc/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Loser%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHs3JAsQ82Mg%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Hs3JAsQ82Mg/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u30B7%u30E3%u30EB%u30EB%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DWhUKmXwphb0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/WhUKmXwphb0/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Flamingo%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D1YwxYSvqUhs%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A15%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/1YwxYSvqUhs/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u661F%u9593%u98DB%u884C%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuTp4388cCyE%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/uTp4388cCyE/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u516D%u5146%u5E74%u3068%u4E00%u591C%u7269%u8A9E%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dja7eawQhafo%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A22%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ja7eawQhafo/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u3044%u304B%u306A%u3044%u3067%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT7ufK9CZeGU%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A49%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/T7ufK9CZeGU/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u547D%u306B%u5ACC%u308F%u308C%u3066%u3044%u308B%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNWnS9zu_Wjs%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A00%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/NWnS9zu_Wjs/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u5409%u539F%u30E9%u30E1%u30F3%u30C8%28cover%u732B%u53C8%u304A%u304B%u3086/%u30DB%u30ED%u30E9%u30A4%u30D6%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmQIYpPjHIdM%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A27%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/mQIYpPjHIdM/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Kimi%20no%20Shiranai%20Monogatari%20%28Supercell%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4u5eccpT2Mg%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4u5eccpT2Mg/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Koi%20%28Gen%20Hoshino%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DaqaTis3lIp8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A08%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/aqaTis3lIp8/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Okakoro%20-%20Kaze%20ni%20Naru%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DkDc9VuFocy4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/kDc9VuFocy4/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22flos%20/%20%u732B%u53C8%u304A%u304B%u3086%20%28Cover%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D4muYzftomAE%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A40%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/4muYzftomAE/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Nekomata%20Okayu%20-%20Kiseki%20%28%u30AD%u30BB%u30AD%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dn7gT8kXd3ss%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A35%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/n7gT8kXd3ss/hqdefault.jpg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Gawr%20Gura%20Sings%20Baka%20Mitai%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DPt7KbDvUwmQ%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A47%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Pt7KbDvUwmQ/maxresdefault.jpg%22%2C%22volume%22%3A1%7D%5D',
    'Okayu'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: rolemsg
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: servers
# ------------------------------------------------------------

INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '622311594654695434',
    '[\"676754719120556042\"]',
    '{user} Welcome to War of Underworld! Please go to  <#712632765375316058> and read our guild rules , then leave your mc name in  <#647630951169523762> . You can also go to  <#673187675150352397> to introduce yourself.',
    '622321176303108123',
    '[\"https://cdn.discordapp.com/attachments/640147954447155200/683368097750843590/790c7a5adc8f1944ef3d83a2b8478d7e.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463160662065152/791482.png\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463161371033671/797612.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463161480216616/794534.png\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463163011137568/797609.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463209827696650/797627.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463210998169640/797634.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463215565766767/797642.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463215968419890/797643.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463216152707102/797641.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463216572137542/797644.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463214672380024/797636.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463217734221844/797645.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463218426150952/797650.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463219759808532/797656.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463252542619668/797702.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463253373223002/797706.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463255159734362/797704.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463256208572466/797727.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463256984518736/797712.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463258661978192/797734.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463259266089000/797730.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463261321297960/797731.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463261522493470/797788.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463262483251200/797790.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739463306607067176/834475.png\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464846395048048/797664.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464850048024596/797675.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464854565552209/797678.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464858591952926/797681.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464865109770300/797690.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464868087726150/797699.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464870705102868/797763.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464878292729956/797791.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464882520588369/797793.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464886836264960/797802.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464898265743441/797805.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464899843063818/797806.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464908105842798/797807.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464909623918633/797808.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464909623918633/797808.jpg\",\"https://cdn.discordapp.com/attachments/710821597723885620/739464913294196797/797817.jpg\"]',
    'Goodbye, {user}.',
    '696681929290022952',
    '🎉',
    '%5B%7B%22title%22%3A%22Ghost%20In%20A%20Flower%20%28From%20%5C%22A%20Whisker%20Away%5C%22%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DtvjmP9BqQp0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6dg2tkHlkA3BvuL4pOlnp4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273c2918d35e0da92effb36a2bc%22%2C%22time%22%3A%224%3A01%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u525B%u597D%u9047%u898B%u4F60%28DJ%u5C0F%u9B5A%u5152%u7248%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D60-DwLbQqMI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3sEsC83fQ8t67jlZu52pAM%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273d7924094088821d18f07a7c6%22%2C%22time%22%3A%223%3A52%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Dear%20Friend%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DmYg6-AibWCw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5kfRanA1akUYIGsWYCbryG%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2739375afcdf02dc1ed5d67b628%22%2C%22time%22%3A%222%3A11%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22First%20Date%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Depj0-mTMVvM%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2zMsClh8Mdkpg7VxmJrjPb%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273422c320148e50a598592c8b2%22%2C%22time%22%3A%222%3A27%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Reasons%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiuvaZ6cTBfU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2beCvzoMRASZMrrLMrzyBE%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2738cdafdd60814e88cf16226df%22%2C%22time%22%3A%222%3A49%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Fated%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DAcBNAPR8KY0%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3w6sIjxVeSedJQjfjjGM4I%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2730966610610ff28385acada11%22%2C%22time%22%3A%223%3A01%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Fiction%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D0ufA6l0P5fs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/10ENqIEhocpKPhDyKajTDB%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273f42613b53aeb2569cfbd4200%22%2C%22time%22%3A%223%3A14%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Fragile%20Voices%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D2dJxP9ValwY%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3LJxRoQA6WjYSd15kP7qpy%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2735f41cef3c512090f5bd39474%22%2C%22time%22%3A%223%3A59%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Airwaves%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTQXK7tw5MPk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3ijrrM0lNOXCJBBrsVhcLZ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273da39984be8df9b02cee12d5c%22%2C%22time%22%3A%223%3A13%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22From%20Here%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DMQPUF4Wh3_w%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7dq8z7PS7FQ3ucTNpdfJz0%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2734a7b7651e9b4bda664c511fc%22%2C%22time%22%3A%223%3A27%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Holding%20On%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQMEM_RW_TSU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/16SBaaQAAWzBhmMrZ1AlGn%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2736bd5a54d9cfe1097ee9fa01e%22%2C%22time%22%3A%223%3A26%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Seafoam%20-%20Acoustic%20Version%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Db7j5dWGFcxk%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6kIttTGoreZrSH2d9hYOL5%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273385f70c1877357e5d0278cca%22%2C%22time%22%3A%222%3A26%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Takeaway%20%28feat.%20Lennon%20Stella%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlzkKzZmRZk8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6wo37KVqFJhtuxPTpLCcfe%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273830ba1c24fc9e3d59517e5ec%22%2C%22time%22%3A%223%3A49%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Control%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DUrGS_6_HglU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/50Td3qilgs8BLtv8mHyT1t%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273399b7c2f3ef2a17d47a68c04%22%2C%22time%22%3A%223%3A53%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22you%20mean%20the%20whole%20wide%20world%20to%20me%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXqbvW29_WOQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7jTJDt7RWCslzygXM1C3Ja%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273bb97016c2b83228c45499409%22%2C%22time%22%3A%222%3A00%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Pray%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DuBGKjMzibjQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2h5qMFJX7Qz02Emb1IV379%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273ad0e88c0ca3a63bc2afc8f1e%22%2C%22time%22%3A%224%3A20%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Cage%20-%20NTv%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DNZEbZiWMdGE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3tAxWrO2jVGL6n8i5X8A7g%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2735f11bd4d426111a6e251cdd9%22%2C%22time%22%3A%224%3A43%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Faded%20%28Acoustic%20Version%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DUgunYvszXrg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1VogwPjHCFw2W6ynzE3fws%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27356ab17c9db8db0914f922c4e%22%2C%22time%22%3A%223%3A26%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Legends%20Never%20Die%20%28Acoustic%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dmo-qnmr1inI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3EhZ8vMs2MWLw1ca1BII8W%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273854819217076337392a84e11%22%2C%22time%22%3A%224%3A15%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Phoenix%20%28Acoustic%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVQvLrfDxSec%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3ARisFMP9INfJXaRgYlJSJ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2739e653341bc74273f0273a0f9%22%2C%22time%22%3A%223%3A29%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22So%20Bad%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DkTNNPbVFNHQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0q1FMCm6hZhyPomad3LQES%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273917e29131e548e6a8752f020%22%2C%22time%22%3A%223%3A08%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Try%20Everything%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dc6rP-YP4c5I%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1N3dZ7TTWO6VcD4Y3hHYLZ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273bb8981af04f38a53e2be34f5%22%2C%22time%22%3A%223%3A23%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22I%20See%20You%20Everywhere%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-LwTg7TOf4M%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5Dg8ls0df2DPRTEfKKFAwX%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731b6057e116a54d99708f77ae%22%2C%22time%22%3A%224%3A04%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22King%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DdS5GfL9F7L4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0zhzkkSXFj60Y5fzb2j9hU%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273c9c3846c9e78d334b95d5a4c%22%2C%22time%22%3A%223%3A58%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Always%20with%20Me%20%28Spirited%20Away%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3znwLIIcUfw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5BwROb5amBFDgk6kpFjVjk%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27309979d215efd003aa69d67d1%22%2C%22time%22%3A%223%3A53%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Medusa%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Duxh6_6ozid4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/07XEf4OBQFzzMWjhDtiusZ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2732584232c808d54d556fb4852%22%2C%22time%22%3A%222%3A56%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u5929%u9ED1%u8ACB%u9589%u773C%20%28feat.%20%u90B1%u92D2%u6FA4%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVaAacrLk4gE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0bIbgooxvBkww2ZGeu8VMR%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273ad1cbf601fedf3e7ad04aa14%22%2C%22time%22%3A%225%3A02%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u5C11%u5E74%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLGzDEu7Sh5g%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/10sAUW12kTg7bMs1XKnmTi%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2733461611fae682d97824cd16e%22%2C%22time%22%3A%223%3A56%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u5922%u60F3%u85CD%u5716%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dl3jP88Vq5Cc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4aaMdkzg6oJwuTKnY5lI43%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273767f3709f1a4befea1ce9ad3%22%2C%22time%22%3A%225%3A32%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u597D%u597D%20%28%u60F3%u628A%u4F60%u5BEB%u6210%u4E00%u9996%u6B4C%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHxIct0i-CcA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1Rxn57Wwv6hQUu60MIiMMJ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27382898ee404abcdddcbd4e180%22%2C%22time%22%3A%223%3A46%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22%u5149%u5E74%u4E4B%u5916%20%28%u96FB%u5F71%20%u300APassengers%u300B%20%u4E2D%u570B%u5340%u4E3B%u984C%u66F2%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT4SimnaiktU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1bkvGbgK4HU8B7Ue4k7O7I%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273f234c75e68b7b50c3d2b48d0%22%2C%22time%22%3A%223%3A56%22%2C%22volume%22%3A1%7D%5D',
    'a29721c58d01e56bf107f8fe7b285943cb9452940d41bd2c',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '690341897788719116',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '677780367188557824',
    '[\"677785442099396608\"]',
    'Hello, {user}! Welcome to the support server!\r\nMake sure you read the <#677784701049503755>!\r\nChannels will be unlocked in 1 minute.',
    '677781551022342164',
    NULL,
    'Well, goodbye, {user}!\r\nWe all miss you ;-;',
    '677781551022342164',
    '🎉',
    NULL,
    'ddd1c9c32a3edfac277533d11ba403d988dffdca32ea62b3',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '664716701991960577',
    '[]',
    'Welcome to the server! {user}',
    '664716701991960580',
    'https://i.redd.it/zm2ld53fe7f31.jpg',
    'We lost a comrade: {user}',
    '664716701991960580',
    '🎉',
    '%5B%7B%22title%22%3A%22Ultimate%20Mario%20Kart%20Medley%20%28Every%20Song%20is%20Here%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dytr3ZLZym3A%22%2C%22type%22%3A0%2C%22time%22%3A%2227%3A02%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/ytr3ZLZym3A/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLBM56OzS8Kn1R-bDOS_rqDXrbWVjg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Disco%20Devil%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DU7-rWLCe4v8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A01%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/U7-rWLCe4v8/hqdefault.jpg%3Fsqp%3D-oaymwEjCOADEI4CSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBsjzRY9JMnX5dLCrMBh0QDGNFhhw%22%2C%22volume%22%3A1%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22The%20Shifty%20Sticker%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQxIlIpx3-Ag%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A20%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/QxIlIpx3-Ag/hqdefault.jpg%3Fsqp%3D-oaymwEjCOADEI4CSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCJmvoY9YEkEufJU3mvwfI_XNTv-w%22%2C%22volume%22%3A1%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22Vellumental%20Battle%20-%20Paper%20Mario%3A%20The%20Origami%20King%20OST%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxxUu7Yl1YMA%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A07%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xxUu7Yl1YMA/hqdefault.jpg%3Fsqp%3D-oaymwEjCOADEI4CSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDRyhaU2BD20W-_wmYxAGfZTWUa7A%22%2C%22volume%22%3A1%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22%28Better%29%20Streamer%20Battle%20Themes%20Mashup%20-%20Paper%20Mario%3A%20The%20Origami%20King%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D3lIVvOxkgII%22%2C%22type%22%3A0%2C%22time%22%3A%2210%3A52%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/3lIVvOxkgII/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLD6VTbc3QRePCGmRFvWByO4kvulBg%22%2C%22volume%22%3A2%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22Ultimate%20Paper%20Mario%20Battle%20Medley%20%28Every%20Song%20is%20Here%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DvyXdR_KehfI%22%2C%22type%22%3A0%2C%22time%22%3A%2221%3A20%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/vyXdR_KehfI/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLDiD1Lnefd1Eq0UQ8mk81s_rWM5Yg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/maxresdefault.jpg%22%2C%22volume%22%3A1%2C%22isLive%22%3Afalse%7D%5D',
    '39fa315455a36672f5f0bd42122653449f4bb86066799177',
    1,
    NULL,
    '{user} just boosted the server!',
    '664716701991960580',
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '478534508732481537',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '736435438079705088',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '767335920424714272',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '634891277548388381',
    '[\"634899508836433945\"]',
    '{user}, welcome to the Super Mario  Maker 2 Database support  server! Make sure you read the rules before doing anything! Hope you enjoy your stay!',
    '634892045009551360',
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '673378458163871770',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '582701823429705740',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '668311776953106442',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22id%22%3A%22cxfA62p-Gs0%22%2C%22title%22%3A%22If%20You%20Catch%20It%2C%20You%20Keep%20It%20-%20Challenge%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcxfA62p-Gs0%22%2C%22type%22%3A0%7D%2C%7B%22id%22%3A%22LxNMezTExDg%22%2C%22title%22%3A%22Morgz%20Mom%20Cringe%20Compilation%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DLxNMezTExDg%22%2C%22type%22%3A0%7D%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '688785232979427356',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '650985878960996353',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22id%22%3A%22iIcdlGW2CKU%22%2C%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%2232s%22%7D%5D',
    NULL,
    1,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '609052607008210993',
    '[\"609284943817867265\"]',
    'Hey {user}, welcome to Gaming Chat Server 🎉🤗 ! Be sure to read the  <#609291535200026673> !!',
    '609288216406654986',
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '518628297106784286',
    '[\"520231885931020289\"]',
    'Here Comes A New Challenger!! {user}',
    '589366836764868608',
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22title%22%3A%22%u30DD%u30EB%u30AB%u304C%u6C17%u5727%u3092%u5012%u3059%u6642%u306B%u59CB%u307E%u308B%u6B4C%u67A0%u3010%u30DB%u30ED%u30E9%u30A4%u30D6/%u5C3E%u4E38%u30DD%u30EB%u30AB%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxrDuwnQlxLc%22%2C%22type%22%3A0%2C%22time%22%3A%22%u221E%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/xrDuwnQlxLc/maxresdefault.jpg%3Fv%3D5fa136f2%22%2C%22volume%22%3A1%2C%22isLive%22%3Atrue%7D%2C%7B%22title%22%3A%22Billie%20Eilish%20-%20my%20future%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DDm9Zf1WYQ_A%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A50%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Dm9Zf1WYQ_A/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLAALLPMdATdxgbZlbxahkI8O3n8Mw%22%2C%22volume%22%3A1%2C%22isLive%22%3Afalse%7D%5D',
    'ec84f06e5ed47fd48c4d28c3fe34bf4e78b1c0ae6a683075',
    NULL,
    1,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '264445053596991498',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '689624103300235343',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '689882857492971527',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '689570919370588164',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '678954894929166357',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '538361750651797504',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '670720577153007617',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '540979888786636800',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '690580408026267758',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '702567375773368422',
    '[\"702568018135220284\"]',
    'Hey {user}, welcome to Epicmarksman\'s discord???? ! Be sure you read the <#702572415863095316>  channel.',
    '702567376717217944',
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    'c16deed55f14ff114f89446495daaca8e6d1da31aef4c66a',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '692454295592894494',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '690491685217501194',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '709252322819309668',
    '[\"709252915948159007\"]',
    'Welcome to the server! {user}',
    '709252322819309671',
    NULL,
    '{user} left us.',
    '709252322819309671',
    '🎉',
    NULL,
    '01741c702e284c16b25f6a9fe4f50ca1f2930496ebd9bfea',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '679731489075888176',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '628633588312703012',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '703295423716130910',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '645577971528237066',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '664396496417849344',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22title%22%3A%22Nightcore%20-%20Here%20With%20Me%20%28Marshmello%20feat.%20CHVRCHES%29%20%28Lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DQENrm4Sos5Q%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A19%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/QENrm4Sos5Q/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCr3JjiGFUoXQiPKAbqVOQvzl8P2w%22%7D%2C%7B%22title%22%3A%22DEAMN%20-%20Sign%20%28Audio%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHCNQcZB6yeQ%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A12%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/HCNQcZB6yeQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLACqnvwDoXVjKYfWZ2rXdvKMlmXpA%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20Listen%20To%20Your%20Heart%20-%20%28Lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DSXSc1J50yic%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A45%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/SXSc1J50yic/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDryoSHCY1hE5OZcoESiXj629Lymw%22%7D%2C%7B%22title%22%3A%22Ava%20Max%20-%20Kings%20%26%20Queens%20%5BOfficial%20Music%20Video%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DjH1RNk8954Q%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A43%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/jH1RNk8954Q/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBzosVqSeTIms1tCQ5nlrcx5mwSFA%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20Walk%20Thru%20Fire%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DtRLkSk6JbzY%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A58%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/tRLkSk6JbzY/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCbAauc8HlcCjgDZWekpgxUs1A6vg%22%7D%2C%7B%22title%22%3A%22%u300C%20Nightcore%20%u300D%20DEAMN%20-%20Fight%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZb8lN8zqdqs%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A42%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Zb8lN8zqdqs/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBO2hC1zYe7-Z9ao78uhninie42rQ%22%7D%2C%7B%22title%22%3A%22Yakuza%20OST%20-%20Baka%20Mitai%20%28%u3070%u304B%u307F%u305F%u3044%29%20Kiryu%20full%20version%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dg3jCAyPai2Y%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A52%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/g3jCAyPai2Y/hq720.jpg%3Fsqp%3D-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDdO9bdyJScI8ek5JrXV29usqytvg%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20Angel%20With%20A%20Shotgun%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DcvaIgq5j2Q8%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A13%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/cvaIgq5j2Q8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLC5x9ENXpdK-mexopXZctW9LUU3Bg%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20If%20I%20Die%20Young%20%5BHD%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTEsJW9KXuOc%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A37%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/TEsJW9KXuOc/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCrBtr3jNtGsLkyyCfA1F6KCoKQtQ%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20We%27ll%20Meet%20Again%20%28TheFatRat%20%26%20Laura%20Brehm%29%20-%20%28Lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEc0i03MqUx0%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Ec0i03MqUx0/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBndBRENdvpAMq75rUWKMuWdGWaqw%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20Mine%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D5R2ZEbzB3GQ%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A16%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/5R2ZEbzB3GQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDJlWuAgDMS3vaT6b2qbb8dzTnQSw%22%7D%2C%7B%22title%22%3A%22Nightcore%20-%20Sad%20Song%20%28Switching%20Vocals%29%20-%20%28Lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVgAx7Bep5os%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A03%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/VgAx7Bep5os/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDp4lZBhlGk9zOksYqjPN9cZ0df-Q%22%7D%2C%7B%22title%22%3A%22Nea%20-%20Some%20Say%20%28Lyrics%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dw8AYmSdaQZI%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A57%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/w8AYmSdaQZI/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBcKJLgACjn-yEtI1tCHQ_aiBzdcw%22%7D%5D',
    NULL,
    1,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '543041459096387584',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22id%22%3A%22_tgpd3soap%22%2C%22title%22%3A%22%u3010%u96D1%u8AC7%u3011%u5E30%u3063%u3066%u304D%u305F%u305E%u304A%u304A%u304A%u304A%u304A%uFF01%uFF01%uFF01%uFF01%uFF01%uFF01%u30B2%u30FC%u30E0%u3060%u3042%u3042%u3042%u3042%uFF01%uFF01%uFF01%u3010%u690E%u540D%u552F%u83EF/%u306B%u3058%u3055%u3093%u3058%u3011%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZ-57-SBRr9U%22%2C%22type%22%3A0%2C%22time%22%3A%22%u221E%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Z-57-SBRr9U/maxresdefault.jpg%3Fv%3D5fabf15e%22%2C%22volume%22%3A1%2C%22isLive%22%3Atrue%2C%22isPastLive%22%3Atrue%7D%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '764119186833145907',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '773516707926638602',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '758327895956783144',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22title%22%3A%22Driftveil%20City%20%28Lo-fi%20Remix%29%20-%20%5C%22Anvil%20Ambience%5C%22%20%7E%20Pok%E9mon%20Black%20and%20White%20//%20SuperiorSnivys%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVZFQTLYL0Yo%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A48%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/VZFQTLYL0Yo/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLAD7KF6ihqk8fXjZLjZ_G8VHWdJ1w%22%2C%22volume%22%3A1%7D%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '642811675086553099',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    '84cdda229dd139ffc3f10969442c2fd2a057cae4ae0f6332',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '721608587809521704',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '532753259740266506',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '753601939844890775',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '630140527844655161',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '746009958977634315',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '763359546193346590',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '765999349469151262',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22title%22%3A%22Lil%20Loaded%20-%206locc%206a6y%20%28Official%20Video%29%20%5Bshotbydonzo%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DH3c0F3oGZ4I%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/H3c0F3oGZ4I/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLB8mSzKSFwgLulXKPwPXbeYVFlbxg%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Lil%20Loaded%20ft.%20NLE%20Choppa%20%5C%226locc%206a6y%20Remix%5C%22%20%28Official%20Video%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DaITIKxjFaL0%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/aITIKxjFaL0/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLCka7bNWUmifOS4svBV-gmJwzYG4Q%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Drake%20-%20Energy%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7LnBvuzjpr4%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A58%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/7LnBvuzjpr4/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLDa8oSPm-86bVnaymoNr-8-kmsYDQ%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Drake%20-%20Money%20In%20The%20Grave%20%28Lyrics%29%20ft.%20Rick%20Ross%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Db3lH6CULHD0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/b3lH6CULHD0/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLBG4J2xm8SgyT32wi3KIrN4qv5nmQ%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Travis%20Scott%20ft.%20Drake%20-%20Like%20A%20Light%20%283rd%20Part%20of%20Sicko%20Mode%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DOcI_WQAKfh0%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A20%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/OcI_WQAKfh0/hqdefault.jpg%3Fsqp%3D-oaymwEjCOADEI4CSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCvuKb6FGfvf6ErKx67wIeiTbZf3w%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Drake%20-%20Money%20In%20The%20Grave%20%28Music%20Video%29%20ft.%20Rick%20Ross%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D_xaininqyEE%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A25%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/_xaininqyEE/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLDqmCPg9PdvIp3jkD3VwsOBQMS9SQ%22%2C%22volume%22%3A1%7D%2C%7B%22title%22%3A%22Drake%20-%20Money%20In%20The%20Grave%20%28Lyrics%29%20ft.%20Rick%20Ross%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Db3lH6CULHD0%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/b3lH6CULHD0/hq720.jpg%3Fsqp%3D-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE%3D%26rs%3DAOn4CLBG4J2xm8SgyT32wi3KIrN4qv5nmQ%22%2C%22volume%22%3A1%7D%2Cnull%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '564148625735811090',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '639928028432039957',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '555956131885875212',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '301622194746818562',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '771070664303968287',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '552820581360467968',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '771692739686432859',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '731569723317157979',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '734226650400555018',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '262996675025567744',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '701456554486136882',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '480679703359914004',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '773145141665595392',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '753836225915387945',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '635227945837002763',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
INSERT INTO
  `servers` (
    `id`,
    `autorole`,
    `welcome`,
    `wel_channel`,
    `wel_img`,
    `leave_msg`,
    `leave_channel`,
    `giveaway`,
    `queue`,
    `token`,
    `looping`,
    `repeating`,
    `boost_msg`,
    `boost_channel`,
    `prefix`
  )
VALUES
  (
    '773784408342921256',
    '[]',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '🎉',
    '%5B%7B%22title%22%3A%22Young%20Nigga%20%28feat.%20Ralo%2C%20Lil%20Yachty%20%26%20Lil%20Uzi%20Vert%29%20-%20Young%20Thug%22%2C%22url%22%3A%22https%3A//drive.google.com/uc%3Fexport%3Ddownload%26id%3D1rvt48XwdWsUs1kD2ICYdfCSUGovnhB3V%22%2C%22type%22%3A4%2C%22time%22%3A%225%3A16%22%2C%22volume%22%3A1%2C%22thumbnail%22%3A%22https%3A//drive-thirdparty.googleusercontent.com/256/type/audio/mpeg%22%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22Youngest%20Killer%20%7E%20The%20Weeknd%22%2C%22url%22%3A%22https%3A//drive.google.com/uc%3Fexport%3Ddownload%26id%3D1k8LSB3zPdxK21JW3tu0DevhnYJqpaHWx%22%2C%22type%22%3A4%2C%22time%22%3A%223%3A32%22%2C%22volume%22%3A1%2C%22thumbnail%22%3A%22https%3A//drive-thirdparty.googleusercontent.com/256/type/audio/mpeg%22%2C%22isLive%22%3Afalse%7D%2C%7B%22title%22%3A%22Young%20Nigga%20%28feat.%20Ralo%2C%20Lil%20Yachty%20%26%20Lil%20Uzi%20Vert%29%20-%20Young%20Thug%22%2C%22url%22%3A%22https%3A//drive.google.com/uc%3Fexport%3Ddownload%26id%3D1rvt48XwdWsUs1kD2ICYdfCSUGovnhB3V%22%2C%22type%22%3A4%2C%22time%22%3A%225%3A16%22%2C%22volume%22%3A1%2C%22thumbnail%22%3A%22https%3A//drive-thirdparty.googleusercontent.com/256/type/audio/mpeg%22%2C%22isLive%22%3Afalse%7D%5D',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: shop
# ------------------------------------------------------------

INSERT INTO
  `shop` (
    `id`,
    `name`,
    `description`,
    `buy_price`,
    `sell_price`
  )
VALUES
  (
    1,
    'Mark Seven',
    'Pick seven number in range and win the lottery!',
    50.00,
    10.00
  );
INSERT INTO
  `shop` (
    `id`,
    `name`,
    `description`,
    `buy_price`,
    `sell_price`
  )
VALUES
  (
    2,
    'Energy Drink',
    'Get x2 money when working for 24 hours!',
    5.00,
    1.00
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: timer
# ------------------------------------------------------------

INSERT INTO
  `timer` (
    `id`,
    `guild`,
    `channel`,
    `author`,
    `msg`,
    `title`,
    `endAt`
  )
VALUES
  (
    8,
    '622311594654695434',
    '744817696474136586',
    '461516729047318529',
    '744858399363170406',
    'Only%20For%20Fun%20Guild%20Event',
    '2020-08-17 12:00:21'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `id`,
    `username`,
    `fc`,
    `pass`,
    `email`,
    `mailed`,
    `approved`
  )
VALUES
  (
    'smm2db_5f810f84a25772.18903525',
    'NW Wind',
    'SW-1881-6858-6875',
    '436d44cd745687f173971d3edda4fd3db1d2e2828f612cc975e0bd9af85e8e08',
    'wsyn148@gmail.com',
    1,
    1
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: warn
# ------------------------------------------------------------

INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (
    2,
    '622311594654695434',
    '399563490127511562',
    'spaming'
  );
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (3, '518628297106784286', '519810286996160522', '');
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (4, '518628297106784286', '519810286996160522', '');
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (5, '518628297106784286', '519810286996160522', '');
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (
    6,
    '664396496417849344',
    '519810286996160522',
    'fk me'
  );
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (7, '543041459096387584', '629918273508474900', '');
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (
    8,
    '543041459096387584',
    '521957465894551555',
    'inappropriate speech'
  );
INSERT INTO
  `warn` (`id`, `guild`, `user`, `reason`)
VALUES
  (9, '543041459096387584', '521957465894551555', '');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;