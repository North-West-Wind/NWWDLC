/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
) ENGINE = MyISAM AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

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
) ENGINE = MyISAM AUTO_INCREMENT = 234 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

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
  `exp` int(11) NOT NULL,
  `last` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 537 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
  `wel_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `leave_msg` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `leave_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `giveaway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `queue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `looping` tinyint(1) DEFAULT NULL,
  `repeating` tinyint(1) DEFAULT NULL,
  `boost_msg` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `boost_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: warn
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `warn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

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
    93.19,
    3,
    '2020-04-16 12:50:09',
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
    'Sinonon_solus',
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
    'Megumin_jp',
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
    'AlwaysSmile_HK',
    '706766e49d514474bd37e3b143e94f10'
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
    'Sakura #5816',
    'iamsor8ry',
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
    '王様 Wing #9182',
    'WingYu2005',
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
    'Duti.E #1948',
    'suhdidhwhs',
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
    'arjack87',
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
    'owo #2514',
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
    'mason0416 #2342',
    'mason0416_TW',
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
    'Kuqng1ee #1000',
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
    'bruv #0839',
    '250pingbtw',
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
    '! TomyInnit #0896',
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
    'LeO #7670',
    'killer_0425',
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
    'JohnMok0220',
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
    'JASON_TW #4394',
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
    'BlueRoseKnight #0309',
    'KamikiSekai',
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

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: giveaways
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
    91317,
    '2020-06-07 08:29:17'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    2,
    '416227242264363008',
    '622311594654695434',
    5164,
    '2020-06-08 09:04:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    3,
    '600910731352866849',
    '622311594654695434',
    166,
    '2020-03-27 10:38:30'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    4,
    '461516729047318529',
    '622311594654695434',
    34559,
    '2020-06-08 11:00:14'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    5,
    '618705637177688095',
    '622311594654695434',
    92,
    '2020-05-29 12:16:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    6,
    '343746984349270018',
    '622311594654695434',
    2432,
    '2020-06-07 07:07:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    7,
    '295006812703424512',
    '622311594654695434',
    3788,
    '2020-05-09 15:24:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    8,
    '541476745652600843',
    '622311594654695434',
    2070,
    '2020-06-08 11:06:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    9,
    '378569563815542794',
    '622311594654695434',
    1643,
    '2020-06-07 22:56:38'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    10,
    '502087666201001984',
    '622311594654695434',
    2511,
    '2020-06-07 09:56:54'
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
    904,
    '2020-05-01 18:26:40'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    13,
    '211368627553828865',
    '622311594654695434',
    6823,
    '2020-06-07 14:29:10'
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
    243,
    '2020-05-23 10:36:14'
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
    13798,
    '2020-06-06 11:54:02'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    19,
    '456403578286899210',
    '622311594654695434',
    147,
    '2020-05-02 06:46:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    20,
    '283568255401066506',
    '622311594654695434',
    205,
    '2020-06-03 12:46:38'
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
    105,
    '2020-06-01 09:27:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    25,
    '635040857564643340',
    '622311594654695434',
    5322,
    '2020-06-07 14:07:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    26,
    '350316509291216906',
    '622311594654695434',
    107,
    '2020-04-03 23:26:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    27,
    '297914039932289025',
    '622311594654695434',
    74,
    '2020-05-09 16:31:20'
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
    2255,
    '2020-06-06 13:49:33'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    33,
    '251976540563177472',
    '622311594654695434',
    74,
    '2020-03-08 08:04:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    34,
    '621959791698247680',
    '622311594654695434',
    12226,
    '2020-06-01 15:27:06'
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
    3386,
    '2020-06-07 06:22:46'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    37,
    '371351122482561036',
    '622311594654695434',
    1045,
    '2020-06-07 10:46:10'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    38,
    '595080268528877568',
    '622311594654695434',
    1295,
    '2020-06-06 11:42:12'
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
    188,
    '2020-06-07 09:55:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    44,
    '398019988360790027',
    '622311594654695434',
    131,
    '2020-05-18 06:26:22'
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
    20,
    '2020-03-11 03:06:01'
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
    81,
    '2020-05-25 14:37:59'
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
    535,
    '2020-05-27 13:56:14'
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
    704,
    '2020-04-04 04:56:25'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    57,
    '539775046596427779',
    '622311594654695434',
    390,
    '2020-05-18 06:39:13'
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
    9,
    '2020-03-13 10:01:09'
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
    141,
    '2020-05-06 01:43:42'
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
    1020,
    '2020-06-07 11:37:46'
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
    50,
    '2020-05-24 11:14:12'
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
    9,
    '2020-03-15 03:59:57'
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
    130,
    '2020-05-28 19:25:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    81,
    '689353051189936222',
    '622311594654695434',
    159,
    '2020-05-01 15:36:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    82,
    '491109452003541035',
    '622311594654695434',
    409,
    '2020-06-07 04:19:15'
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
    251,
    '2020-06-07 01:53:45'
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
    729,
    '2020-06-07 13:24:26'
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
    357,
    '2020-06-06 12:04:31'
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
    63,
    '2020-05-03 11:38:15'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    96,
    '482552898585100289',
    '622311594654695434',
    723,
    '2020-06-07 06:19:25'
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
    11,
    '2020-03-22 02:11:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    99,
    '273047313751212032',
    '622311594654695434',
    139,
    '2020-06-07 05:14:27'
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
    20,
    '2020-03-27 11:34:28'
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
    103,
    '2020-05-14 09:30:20'
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
    16,
    '2020-04-08 07:11:57'
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
    15,
    '2020-03-31 11:50:45'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    117,
    '355327568536403968',
    '622311594654695434',
    249,
    '2020-06-01 09:40:46'
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
    10,
    '2020-03-26 11:40:31'
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
    163,
    '2020-04-18 04:05:18'
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
    8,
    '2020-03-28 10:45:37'
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
    220,
    '2020-05-29 11:48:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    137,
    '409020970133749762',
    '622311594654695434',
    63,
    '2020-06-06 19:13:51'
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
    11,
    '2020-03-30 10:14:12'
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
    8,
    '2020-03-30 18:18:33'
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
    73,
    '2020-04-26 14:16:20'
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
    14,
    '2020-04-02 11:24:21'
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
    256,
    '2020-04-26 15:22:26'
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
    15,
    '2020-04-04 10:42:20'
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
    66,
    '2020-04-10 16:59:08'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    188,
    '459951864423907350',
    '622311594654695434',
    32,
    '2020-04-25 02:59:08'
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
    10292,
    '2020-06-07 08:03:04'
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
    53,
    '2020-06-06 13:49:48'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    193,
    '457266670281556010',
    '622311594654695434',
    38,
    '2020-06-04 07:36:26'
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
    107,
    '2020-04-30 12:55:07'
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
    347,
    '2020-06-06 11:22:30'
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
    26,
    '2020-04-15 07:35:16'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    213,
    '353808055491624981',
    '622311594654695434',
    10,
    '2020-04-13 08:14:11'
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
    10,
    '2020-04-17 08:05:59'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    221,
    '330572038244925441',
    '622311594654695434',
    223,
    '2020-05-30 04:55:10'
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
    107,
    '2020-06-04 13:08:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    224,
    '583962103967252493',
    '622311594654695434',
    814,
    '2020-05-26 07:18:02'
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
    118,
    '2020-05-03 12:02:49'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    227,
    '609041620834451466',
    '622311594654695434',
    13,
    '2020-04-18 13:49:23'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    228,
    '694014859356143716',
    '622311594654695434',
    106,
    '2020-06-07 07:20:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    229,
    '535418797067206676',
    '622311594654695434',
    141,
    '2020-06-07 09:10:37'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    230,
    '483905549205766145',
    '622311594654695434',
    15,
    '2020-04-20 01:11:18'
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
    230,
    '2020-05-24 05:20:28'
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
    91,
    '2020-05-09 15:25:14'
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
    125,
    '2020-06-07 19:12:05'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    252,
    '422753387923374091',
    '538361750651797504',
    117,
    '2020-05-27 06:47:47'
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
    9,
    '2020-04-29 05:39:54'
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
    1873,
    '2020-06-07 15:28:51'
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
    33,
    '2020-05-01 13:37:56'
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
    160,
    '2020-06-08 10:34:06'
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
    465,
    '2020-05-07 20:20:08'
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
    51,
    '2020-06-03 09:29:36'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    284,
    '249715707393212421',
    '622311594654695434',
    6,
    '2020-05-03 00:06:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    285,
    '474418031737569281',
    '664716701991960577',
    62,
    '2020-05-12 10:32:47'
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
    1511,
    '2020-06-08 10:43:17'
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
    13,
    '2020-05-03 08:40:12'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    292,
    '336073769158180864',
    '622311594654695434',
    24,
    '2020-05-09 08:00:53'
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
    26,
    '2020-06-01 16:58:36'
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
    56,
    '2020-05-08 14:20:52'
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
    22,
    '2020-05-12 12:36:48'
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
    18,
    '2020-05-08 00:50:27'
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
    14,
    '2020-05-08 05:47:59'
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
    14,
    '2020-05-08 08:12:19'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    324,
    '561772848994320384',
    '622311594654695434',
    100,
    '2020-05-28 14:57:55'
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
    33,
    '2020-05-14 15:55:26'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    329,
    '706519198267998208',
    '622311594654695434',
    396,
    '2020-06-06 14:55:58'
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
    192,
    '2020-05-17 08:31:47'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    336,
    '532123566049722368',
    '622311594654695434',
    73,
    '2020-05-14 13:12:16'
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
    21,
    '2020-05-14 13:19:56'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    356,
    '628668250623967254',
    '622311594654695434',
    29,
    '2020-05-22 16:41:00'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    357,
    '579786839926374421',
    '538361750651797504',
    7,
    '2020-05-13 20:09:33'
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
    74,
    '2020-05-25 13:55:12'
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
    36,
    '2020-05-15 06:56:04'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    366,
    '465542445740851201',
    '622311594654695434',
    6,
    '2020-05-14 13:05:35'
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
    13,
    '2020-05-15 11:21:58'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    374,
    '575732335199256585',
    '538361750651797504',
    62,
    '2020-05-15 15:43:35'
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
    184,
    '2020-05-26 11:56:00'
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
    17,
    '2020-05-16 16:05:57'
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
    63,
    '2020-05-21 03:08:52'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    397,
    '443677013480570880',
    '622311594654695434',
    24,
    '2020-05-18 09:34:14'
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
    82,
    '2020-06-04 11:37:32'
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
    49,
    '2020-05-28 14:48:02'
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
    6,
    '2020-05-23 03:45:56'
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
    6,
    '2020-05-23 13:48:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    426,
    '470247431146307615',
    '622311594654695434',
    33,
    '2020-05-23 15:34:27'
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
    25,
    '2020-05-24 01:07:32'
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
    578,
    '2020-06-04 10:36:42'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    435,
    '369855905162067988',
    '538361750651797504',
    14,
    '2020-05-24 05:53:11'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    436,
    '239632597745926155',
    '622311594654695434',
    13,
    '2020-05-24 06:04:20'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    437,
    '591623407511142457',
    '622311594654695434',
    70,
    '2020-05-24 08:25:48'
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
    17,
    '2020-05-24 13:03:43'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    443,
    '471675355686502423',
    '622311594654695434',
    7,
    '2020-05-24 16:08:56'
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
    101,
    '2020-06-07 12:53:54'
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
    240,
    '2020-06-07 11:44:28'
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
    8,
    '2020-05-26 23:17:37'
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
    31,
    '2020-05-28 19:40:08'
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
    12,
    '2020-05-29 07:15:40'
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
    59,
    '2020-05-30 10:19:25'
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
    11,
    '2020-06-01 11:25:45'
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
    40,
    '2020-06-06 15:01:35'
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
    144,
    '2020-06-07 09:29:24'
  );
INSERT INTO
  `leveling` (`id`, `user`, `guild`, `exp`, `last`)
VALUES
  (
    500,
    '288402111916539914',
    '538361750651797504',
    32,
    '2020-06-04 13:22:47'
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
    20,
    '2020-06-08 03:34:48'
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
    791,
    '2020-06-07 21:36:55'
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
    11,
    '2020-06-06 22:10:51'
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
    93,
    '2020-06-08 00:34:58'
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
    12,
    '2020-06-07 11:35:21'
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
    36,
    '2020-06-07 15:02:56'
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
    12,
    '2020-06-08 00:21:52'
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
  ('416227242264363008');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: poll
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: queue
# ------------------------------------------------------------

INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    2,
    '416227242264363008',
    '%5B%7B%22id%22%3A%22iIcdlGW2CKU%22%2C%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%2232s%22%7D%2C%7B%22id%22%3A%22aBkTkxKDduc%22%2C%22title%22%3A%22C418%20%20-%20Sweden%20-%20Minecraft%20Volume%20Alpha%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DaBkTkxKDduc%22%2C%22type%22%3A0%2C%22time%22%3A%223m36s%22%7D%5D',
    'favourite'
  );
INSERT INTO
  `queue` (`id`, `user`, `queue`, `name`)
VALUES
  (
    3,
    '517290901593128980',
    '%5B%7B%22title%22%3A%22%u3010%u5C3C%u723E%20%u81EA%u52D5%u4EBA%u578B%u3011%u4E3B%u984C%u66F2%20-%20%u58CA%u30EC%u30BF%u4E16%u754C%u30CE%u6B4C%20%28MV%u4E2D%u65E5%u6B4C%u8A5E%2C%20%u6709%u96F7%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DgzM8Dv7nXLQ%22%2C%22type%22%3A0%2C%22time%22%3A%225%3A45%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/gzM8Dv7nXLQ/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDO1eKknjM_B7ujGvUT0jCrruaBSw%22%7D%2C%7B%22title%22%3A%22OST%20NieR%3A%20Automata%20-%20Vague%20Hope%20%28Cold%20Rain%20%26%20Spring%20Rain%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DBknOTzSCQhI%22%2C%22type%22%3A0%2C%22time%22%3A%228%3A19%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/BknOTzSCQhI/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBT54FR9Av1ERbLzQe91LgQU-SVLw%22%7D%2C%7B%22title%22%3A%22NieR%20Automata%20Concert%20OST%20Full%20Album%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D9e7pwv8a-cI%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A23%3A52%22%2C%22thumbnail%22%3A%22https%3A//img.youtube.com/vi/9e7pwv8a-cI/maxresdefault.jpg%22%7D%5D',
    'Nier'
  );
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
    7,
    '416227242264363008',
    '%5B%7B%22title%22%3A%22Super%20Mario%20World%20Theme%20%28Overworld%20Theme%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dtiuo7jXrVqs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1aDIypeF6B4aztxkI03Xj4%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273ac4261093ee5f2e3a0530fcf%22%2C%22time%22%3A%222%3A00%22%7D%2C%7B%22title%22%3A%22Slider%20%28From%20%5C%22Super%20Mario%2064%5C%22%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiYm6pknZLiQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1Q2rGr6nsktKj0PL9kLbPh%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2734466753eae06fc73549dc5b5%22%2C%22time%22%3A%222%3A57%22%7D%2C%7B%22title%22%3A%22Snowdin%20Town%20%28From%20%5C%22Undertale%5C%22%29%20%5BFeat.%20Stevie%20Pilgrim%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxY37aWVokNQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6LuRLJUSEhtv1apPB5LgzZ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273ce5e8598d1a8e54f5cb9db8a%22%2C%22time%22%3A%223%3A58%22%7D%2C%7B%22title%22%3A%22nanobii%20-%20Pineapple%20Spaceship%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DnF6UEkticm0%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A56%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/nF6UEkticm0/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB99HVw9mwP-2hu7p9prbAWA__zvQ%22%7D%2C%7B%22title%22%3A%22%5BHappy%20Hardcore%5D%20-%20nanobii%20-%20Rainbow%20Road%20%5BMonstercat%20Release%5D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Da0Aauep0VWs%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A54%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/a0Aauep0VWs/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLBC0aufLjRQ8DVLYW4p1aqPXO8nmg%22%7D%2C%7B%22title%22%3A%22%5C%22Maple%20Treeway%5C%22%20Mario%20Kart%20Wii%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTbk-yjATRI8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Tbk-yjATRI8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCcHntOp-hLjsL1lFz4IsY3mUXNxQ%22%7D%2C%7B%22title%22%3A%22%5C%22File%20Select%5C%22%20Super%20Mario%2064%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DVT27NYVTQRg%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A38%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/VT27NYVTQRg/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDaJ2bbJDHxAqdLmogmmxXY77OoYA%22%7D%2C%7B%22title%22%3A%22Sweden%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DaBkTkxKDduc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4NsPgRYUdHu2Q5JRNgXYU5%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273d88a028f87d07858f125aeae%22%2C%22time%22%3A%223%3A36%22%7D%2C%7B%22title%22%3A%22Hopes%20And%20Dreams%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHA3Ks8NLS-Y%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0xeDaa5RD48c59YGHim78S%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731143a199f771cdd9965d1a2f%22%2C%22time%22%3A%223%3A02%22%7D%2C%7B%22title%22%3A%22THE%20WORLD%20REVOLVING%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZ01Tsgwe2dQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/5QBozbgRWIYDSriHCRTsXd%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27306f2539e9993e43ae9adcc69%22%2C%22time%22%3A%221%3A42%22%7D%2C%7B%22title%22%3A%22Coffin%20Dance%20Meme%20%28ULTIMATE%20MEGAMASHUP%29%20Astronomia%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DCwOoheKKWV4%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A21%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/CwOoheKKWV4/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLDj2HfZHi--cxxoIN9_1KYn2coI7g%22%7D%2C%7B%22title%22%3A%22We%27re%20Finally%20Landing%22%2C%22type%22%3A3%2C%22id%22%3A183462551%2C%22time%22%3A%224%3A32%22%2C%22thumbnail%22%3A%22https%3A//i1.sndcdn.com/artworks-000101566056-ti4k1h-large.jpg%22%2C%22url%22%3A%22https%3A//soundcloud.com/home-2001/home-before-the-night-01-were%22%7D%2C%7B%22title%22%3A%22Polish%20toilet%20spin%20basshunter%20dota%20homosex%20K19191%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzecnwqXe850%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A59%22%2C%22thumbnail%22%3A%22https%3A//img.youtube.com/vi/zecnwqXe850/maxresdefault.jpg%22%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB0bUlSn9VBGlejXQhxptks8LLSXQ%22%7D%5D',
    'nww'
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
    '%5B%7B%22title%22%3A%22April%20Showers%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D18JQUYgpOlw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04KsMCb9PZE2S0AtUU8Jhb%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273560c583259f9dea8625ec071%22%2C%22time%22%3A%224%3A32%22%7D%2C%7B%22title%22%3A%22We%27re%20Finally%20Landing%22%2C%22type%22%3A3%2C%22id%22%3A183462551%2C%22time%22%3A%224%3A32%22%2C%22thumbnail%22%3A%22https%3A//i1.sndcdn.com/artworks-000101566056-ti4k1h-large.jpg%22%2C%22url%22%3A%22https%3A//soundcloud.com/home-2001/home-before-the-night-01-were%22%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB0bUlSn9VBGlejXQhxptks8LLSXQ%22%7D%2C%7B%22title%22%3A%22%5C%22Maple%20Treeway%5C%22%20Mario%20Kart%20Wii%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTbk-yjATRI8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Tbk-yjATRI8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCcHntOp-hLjsL1lFz4IsY3mUXNxQ%22%7D%5D',
    'some stuff'
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
    `boost_channel`
  )
VALUES
  (
    '622311594654695434',
    '[\"676754719120556042\"]',
    '{user} Welcome to War of Underworld! Please go to  <#712632765375316058> and read our guild rules , then leave your mc name in  <#647630951169523762> . You can also go to  <#673187675150352397> to introduce yourself.\r\n{user} 歡迎來到 War of Underworld！請到  <#712632765375316058> 閱讀伺服器規則，並且於 <#647630951169523762> 留下你的 Minecraft 用戶名，同時也可以在 <#673187675150352397>  介紹你自己。',
    '622321176303108123',
    'https://cdn.discordapp.com/attachments/640147954447155200/683368097750843590/790c7a5adc8f1944ef3d83a2b8478d7e.jpg',
    'Goodbye, {user}.',
    '696681929290022952',
    '🎉',
    '%5B%7B%22title%22%3A%22We%27re%20Finally%20Landing%22%2C%22type%22%3A3%2C%22id%22%3A183462551%2C%22time%22%3A%224%3A32%22%2C%22thumbnail%22%3A%22https%3A//i1.sndcdn.com/artworks-000101566056-ti4k1h-large.jpg%22%2C%22url%22%3A%22https%3A//soundcloud.com/home-2001/home-before-the-night-01-were%22%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB0bUlSn9VBGlejXQhxptks8LLSXQ%22%7D%2C%7B%22title%22%3A%22%5C%22Maple%20Treeway%5C%22%20Mario%20Kart%20Wii%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTbk-yjATRI8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Tbk-yjATRI8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCcHntOp-hLjsL1lFz4IsY3mUXNxQ%22%7D%2C%7B%22title%22%3A%22%u932F%u904E%u4E0D%u932F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DxVdKKL4ENwU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/56vcUkHasqTSyfJHSJysct%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2739ec311b1c23c4347c220f9bd%22%2C%22time%22%3A%224%3A03%22%7D%2C%7B%22title%22%3A%22%u65B0%u7684%u5FC3%u8DF3%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DvDR-e3W6ARc%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6vkny5qf1RBUBgl8TfyrY3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a40897c721bbc3afded61669%22%2C%22time%22%3A%225%3A14%22%7D%2C%7B%22title%22%3A%22%u76F2%u9EDE%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Drzzul2fmufI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6yp9ViqjivA3YASaCOq9qv%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a40897c721bbc3afded61669%22%2C%22time%22%3A%224%3A06%22%7D%2C%7B%22title%22%3A%22%u4E00%u8DEF%u9006%u98A8%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DC117NWgCJ88%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6qT36YabmePSSGFZxoV4wq%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a40897c721bbc3afded61669%22%2C%22time%22%3A%223%3A50%22%7D%2C%7B%22title%22%3A%22Victoria%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DKV2aigTQBAE%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0122LSJ8Z2gjlvCw5bZHFM%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273913e129788461fd1324d49ac%22%2C%22time%22%3A%223%3A35%22%7D%2C%7B%22title%22%3A%22%u8292%u79CD%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dq2WvTaqe9zU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/3IP4qSMfGeqI2XqHFf25sj%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273886dfb1845ff392d548ed540%22%2C%22time%22%3A%223%3A40%22%7D%2C%7B%22title%22%3A%22%u5BD2%u9732%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DXaf_Ynw8d0o%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2gVzksNrZv8i8YQBj5cLMx%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273af9bf1b2d943303743705982%22%2C%22time%22%3A%224%3A26%22%7D%2C%7B%22title%22%3A%22%u7ACB%u51AC%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DZbKnfHOux_8%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2Rlq9SOQcmhSSxWY2RnLrQ%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27340d6c9a295ca5cf84457b9c7%22%2C%22time%22%3A%223%3A26%22%7D%2C%7B%22title%22%3A%22%u971C%u964D%20-%20Joker%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DbfQOj4TrYw4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/7shSiLmJ8QNU5E2WKRj6B3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273fc98f8fd55d284355c583246%22%2C%22time%22%3A%223%3A04%22%7D%2C%7B%22title%22%3A%22%u5FC3%u91CC%u60F3%u7684%u90FD%u662F%u4F60%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DJ2Re0gVZ7EI%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6fW2JcdSM06FxhtNRDhksw%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2734f0c06938291617fd3680558%22%2C%22time%22%3A%223%3A14%22%7D%2C%7B%22title%22%3A%22%u7231skr%u4F60%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dp7pmPwmapws%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/692yMPlmVnv0cOtXxvQetp%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27398a921f3e9af85bd4fb9a4db%22%2C%22time%22%3A%223%3A16%22%7D%2C%7B%22title%22%3A%22%u5F81%u9014%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DzLrm-G7SenQ%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2VN7kxa0R0aIESlNNfMfO0%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27381a6da3c92e5206662b7ccaf%22%2C%22time%22%3A%223%3A17%22%7D%2C%7B%22title%22%3A%22%u4E00%u70B9%u70B9%u5C31%u597D%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DyNcBTDZrlmA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0pqqYyTrhrm1Dee8JlIgjP%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b2731dcbc9ef2640b8c1b94ebce7%22%2C%22time%22%3A%223%3A43%22%7D%2C%7B%22title%22%3A%22Without%20You%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DHQDDlgGy2hg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0KWnRv3wxjltYVB3MqjNd2%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273ee5b9231e26a4a2037cf64e5%22%2C%22time%22%3A%223%3A05%22%7D%2C%7B%22title%22%3A%22%u98C4%u5411%u5317%u65B9%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DqIF8xvSA0Gw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/4JrGpUQothsSVR6iBhR9NC%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b27376f7df6bebd11d3560a8dc6a%22%2C%22time%22%3A%225%3A12%22%7D%2C%7B%22title%22%3A%22%u5149%u5E74%u4E4B%u5916%20%28%u96FB%u5F71%20%u300APassengers%u300B%20%u4E2D%u570B%u5340%u4E3B%u984C%u66F2%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DT4SimnaiktU%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1bkvGbgK4HU8B7Ue4k7O7I%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273f234c75e68b7b50c3d2b48d0%22%2C%22time%22%3A%223%3A56%22%7D%2C%7B%22title%22%3A%22%u4F86%u81EA%u5929%u5802%u7684%u9B54%u9B3C%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DFWtbGkpdoP4%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/0g2XnkKghVN22yze1gTJzl%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a40897c721bbc3afded61669%22%2C%22time%22%3A%224%3A17%22%7D%2C%7B%22title%22%3A%22%u5DEE%u4E0D%u591A%u59D1%u5A18%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Ds4pxJ-1QLQg%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/1bxeQQXenRYsdXtiQr5Iko%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a86c7932c5072d2221907af1%22%2C%22time%22%3A%223%3A47%22%7D%2C%7B%22title%22%3A%22%u900F%u660E%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D-CwoylxqVPA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/6cCHHwJAI4TEF1eukFeR97%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a86c7932c5072d2221907af1%22%2C%22time%22%3A%223%3A45%22%7D%2C%7B%22title%22%3A%22%u5012%u6578%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3Dma7r2HGqwXs%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/2HmM5p02Q2qrYZvXJRLVx3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273fb25f74dab29a765cf6f2790%22%2C%22time%22%3A%224%3A03%22%7D%2C%7B%22title%22%3A%22%u53E5%u865F%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D7XlqcS6B7WA%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/66YKSygcUZHHqHJZcWslI3%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273a86c7932c5072d2221907af1%22%2C%22time%22%3A%224%3A04%22%7D%2C%7B%22title%22%3A%22April%20Showers%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D18JQUYgpOlw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04KsMCb9PZE2S0AtUU8Jhb%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273560c583259f9dea8625ec071%22%2C%22time%22%3A%224%3A32%22%7D%5D',
    'a29721c58d01e56bf107f8fe7b285943cb9452940d41bd2c',
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
    `boost_channel`
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
    `boost_channel`
  )
VALUES
  (
    '677780367188557824',
    '[]',
    'Hello, {user}! Welcome to the support server!\r\nMake sure you read the <#677784701049503755>!\r\nChannels will be unlocked in 1 minute.',
    '677781551022342164',
    NULL,
    'Well. Goodbye, {user}!\r\nWe all miss you ;-;',
    '677781551022342164',
    '🎉',
    NULL,
    'ddd1c9c32a3edfac277533d11ba403d988dffdca32ea62b3',
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
    `boost_channel`
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
    '%5B%7B%22title%22%3A%22%5C%22Maple%20Treeway%5C%22%20Mario%20Kart%20Wii%20Remix%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DTbk-yjATRI8%22%2C%22type%22%3A0%2C%22time%22%3A%224%3A11%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/Tbk-yjATRI8/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLCcHntOp-hLjsL1lFz4IsY3mUXNxQ%22%7D%2C%7B%22title%22%3A%22We%27re%20Finally%20Landing%22%2C%22type%22%3A3%2C%22id%22%3A183462551%2C%22time%22%3A%224%3A32%22%2C%22thumbnail%22%3A%22https%3A//i1.sndcdn.com/artworks-000101566056-ti4k1h-large.jpg%22%2C%22url%22%3A%22https%3A//soundcloud.com/home-2001/home-before-the-night-01-were%22%7D%2C%7B%22title%22%3A%22Tavern%20Music%20%28Desert%20Rain%20Map%29%20%7C%20Surviv.io%20Soundtrack%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DiIcdlGW2CKU%22%2C%22type%22%3A0%2C%22time%22%3A%220%3A32%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/iIcdlGW2CKU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLB0bUlSn9VBGlejXQhxptks8LLSXQ%22%7D%2C%7B%22title%22%3A%22April%20Showers%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3D18JQUYgpOlw%22%2C%22type%22%3A1%2C%22spot%22%3A%22https%3A//open.spotify.com/track/04KsMCb9PZE2S0AtUU8Jhb%22%2C%22thumbnail%22%3A%22https%3A//i.scdn.co/image/ab67616d0000b273560c583259f9dea8625ec071%22%2C%22time%22%3A%224%3A32%22%7D%5D',
    '39fa315455a36672f5f0bd42122653449f4bb86066799177',
    1,
    NULL,
    '{user} just boosted the server!',
    '664716701991960580'
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    '%5B%7B%22title%22%3A%22DuckTales%20Remastered%20-%20Moon%20Theme%20Remix%20%28Orchestra%20Fan%20Remix%20by%20Plasma3Music%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DEwbMkIROOGU%22%2C%22type%22%3A0%2C%22time%22%3A%223%3A40%22%2C%22thumbnail%22%3A%22https%3A//img.youtube.com/vi/EwbMkIROOGU/maxresdefault.jpg%22%7D%2C%7B%22title%22%3A%22Maple%20Treeway%20-%20Mario%20Kart%20Wii%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DlLn9__8SSTk%22%2C%22type%22%3A0%2C%22time%22%3A%222%3A24%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/lLn9__8SSTk/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLD6GK9w6_i7vQuCZtmoMpM8kZRApA%22%7D%2C%7B%22title%22%3A%22NieR%3A%20Automata%20OST%20-%20Track%2003%20-%20Peaceful%20Sleep%20%28Extended%20Version%29%22%2C%22url%22%3A%22https%3A//www.youtube.com/watch%3Fv%3DfNPZ1XSasgU%22%2C%22type%22%3A0%2C%22time%22%3A%221%3A00%3A50%22%2C%22thumbnail%22%3A%22https%3A//i.ytimg.com/vi/fNPZ1XSasgU/hqdefault.jpg%3Fsqp%3D-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE%3D%26rs%3DAOn4CLAXuvM3guUodoJ-0WdXbjrHrB0T2g%22%7D%5D',
    'ec84f06e5ed47fd48c4d28c3fe34bf4e78b1c0ae6a683075',
    NULL,
    1,
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
  )
VALUES
  (
    '614149747414138890',
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
    `boost_channel`
  )
VALUES
  (
    '620218446713716737',
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
  )
VALUES
  (
    '658086164976107541',
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
  )
VALUES
  (
    '673427399643496478',
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
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
    `boost_channel`
  )
VALUES
  (
    '717122053664276577',
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
    `boost_channel`
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
    `boost_channel`
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


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: warn
# ------------------------------------------------------------


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
