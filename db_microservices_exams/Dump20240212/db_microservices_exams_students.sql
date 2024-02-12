-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_microservices_exams
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (3,'2024-01-29 22:01:59.330000','eduar703@gmail.com','Olivera','Eduar',NULL),(4,'2024-01-30 22:55:11.479000','ivan@gmail.com','Solaez','Ivan',NULL),(5,'2024-02-10 21:08:54.280000','carlos@gmail.com','Rodriguez','Carlos',NULL),(6,'2024-02-10 21:09:10.980000','esther@gmail.com','Rodriguez','Esther',NULL),(7,'2024-02-10 21:09:27.793000','luis@gmail.com','Diaz','Luis',NULL),(8,'2024-02-10 21:09:37.152000','pato@gmail.com','Diaz','pato',NULL),(9,'2024-02-10 23:12:31.148000','pechy@gmail.com','Player','Pechy',_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\0´\0´\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0õÓœ\ÕMPn°“\'o¹ªº’î°—ž@¤c?…œ«Keùv\ïKý¬‹x1\èM4i±·\Ï4Ás\É(ž\Ê\Ì~\í<\Ç	ª8‘\Þ_\ÉóaÀö“¨j7–\Ê\Ü`qZ—\Z\Ü\æ7TU\\Ž•\Ëy²ùû.O\ç\\úÒ§õ6§Þ£,ô†\æY§zŽþ\å\â‘Jµ:\n·\ï—xc“ ù~†®>›orKo\Ç+Ž4Û\î÷\êu%gy™öš™¾¹Œ\0Q€\èky&†øød°¯!ŠžXÄˆr\rv\Ñ•†@NSQ|µ7l\ÝRs^\é®ag‘š\Í”£-P3DË¿g>µ™®‰ ™!• ƒU¬<\ï3É‘\ÆÃ©+²IYr«\Ü\ã•&¤Ô´7´\Èaº%|Í¯Ž• º<6÷±\ëX6°\ÏgpFsƒ}«W\ì\×wü\ÛO©À®¼4\åRö–91)Ri¥{š–JˆdXó­C\0š“\Ím\ÊO\Ô\í>&†W\rŽ})cŸtò\Æ\è@ýjž\ãOE}Ž\ÔîµŒŽ\â¥æ¢°\Ç\Ø\ã\ÇLT“M™(÷¤v%\î\ÜZPMVŠþ\æ1¡9õ5h\nš{M(Ï­¥ ¡W¥«ÒŠd\ê—\Ïh\È£ûVS^\\\Î\Ì[o©5[$KžsYrK\Z\Ý.Å±ÂŽ•H\á©\'\Ì\ÑYô\éer\Í* =‰§›+8\Ô‹‘\Ç`j„‘]\ÝJ\Û7•\Ï•f\r\Ø™‚c®M2,‡\É¦Ä¥b„¹õ\ÅfI$2\ÜŠ „–5ª\ÖZ\\G\ç›qö5N\æ\Ö×“m&I\ã¬ª¦Ö†´\Ôo©\Ë^H†\âSžX\æ›k©³\Ü\ßÞ¦ž\ÂI®J”À\Î3ŠÎž\Ù\í\î&@qÏ©¯\Z:“‘\ì\Æ0k”š\çR3]¬,£\'¸©¥Ï™\0oŸo²‰‘%·”\0A}¿…6w—O\×QÀ8þu»Š›R‘ªŠŽ‘5ôiš„\Ï4y$\0\é]ž¿\r\ëÈ¾HRœV=»­\å\âÿ\0–ƒ‘ŽEhÃ¡Ga­)R|©P“ŸZ\ê¥Ì¢”v¹\çb”e;\Ë{\Ë>\çV\ÚF:Ö“jÎ±HóÔš²¶vLƒ*7cži\Â(FH\\ûšì¦ Þ§™YÔ’´]†iÓ¼·\'~9\â­þ\í§xò7zTV\Ó\Ä÷J\"\ÛÓµJöªnÌƒ‡=\éJ\×\ìT/Ë½\Í\Í,m±E\Îqš©­1%\ãi\ïU\Å\ÌQW\n;\Õ+\æ”\Ä\ÆIKq\ëB5•Ow–\ÄSÞ¥´˜w{WC£Þ›«uœ\ã‚k†\à¬ˆ\Ã7÷tZ\ç—\àž1M«Jv‘\ÑQHN)¬\àw\'m\É¥\Z“Ž´P\ÆV±neD}¡‚\Z¤È›KÇ¥j\ê8û$™\é\íYo\"ª`Œýiœ•¤eM¨N¬cp£ŽU›\í·¨|\Â\Ï\ÐŠµ.¶J\ÑE’½Mek\Z\å\Ì^\\À…\Û\Ó¦u#ó>„(¶\Íô\Ø|ò\"{fŸ„ð\Ý$žj°S\Ï5\Ï\Ùj·WÁ\åy¯\\ƒZ6\êy#u2y{†OjPªª+¢œZÝš¿e\äùF3Á®U‘\íuÙ–C¾\';vúq^–±•rMqsÚ­ßˆ[÷h\Û®y¬ª\Æ\é%\Ü\ê\ÃMFM¾\ÆÓˆ‚BW¡\Èö©õ’xb—:‘ƒS\êV\Êþ%NÔ„cŽ3QÝ¨hcÛ»x€\Ö.6º=4\ÔY69K\æ	þ±:+¦·—S#ÈŽp8\Ï\Ìxvþ\ËN¸k«ë¨‘ó\È\Îp®3],ž5\Ó]Dr8ù±ý+¢„\Z†¨\à\Å\ÝÕ¼K\'K¹i7d}3N]fl±U¤Ñ§j±\ê.­\×o–%\Éúu•iH\Åø°A\Æ#<þ&µuœ48ž\Ú|D6ö¢\Òemû¶@~u+\ÜºÞ¤€\Ý\ì\Zc:œ3vq\ïú\Ðd\n¥œ”E\ê\Ä`þ½q\Ía*\Òn\ì\è†1\\±C®&Ž\áFK¡q\Óó¦^m{`õ‚5\é®Už9^Ági¨þó`øõ­\r\æB\ÞVŒ·\ÊûYøO¥ku¤U £y&Xµ²0Å· ÷\éV ”ÀÁ;ƒip@À<TR©p}j›9Ò±r]B\áøß\íP%\Ë	Ñ¤v žj¸\\òXšGŒPU\Û:èŠ¼a”\ä\Z+#OºÚ…w\ä\Z(6UW\Äý’M¼z\å/¾\Õ+ˆ\ã«g®§Qž8ì²qÂS\\Ü²’qžOZ™JÁ\É\Ì\îdG¤yS;;·ðuf\ïNmF5I\"E\é\ÆjÒ¾\Ö\Â\ã\'½O¼)\Âó\ïYY%\ËÐ¾E{™V\ÞŽ\Ú#\ZHQU5i¤\ZdVf\Ø?„\n©s<\âbCW’c<q\Éš\Îü«\Ý:#E7yS^’\é\Êen\Þõ4R­¼þkÆ¡ˆ\Æ\ìW<E(e<ƒZKr÷Vü\r\ÇÒ”*¹hÞ¦•hF:¥¡£­\Ç\ÄDŠ[9\'©\ÚmE\ê\Ã-\Ë\Æ\n¼º£0=\Ã\ÔR\ß\éòÄ¦FŒ•ö*M#|ð\Ë34.W\åu*j)ÕœjY¥MÁ8\é\æs\Zðö¢«§Op\à¼7Qm$ûŽ\ãü*\Ê\Æ\Ïö×š\Ê\ê-Ûž8X\Æ\íÜ–B8\à\ã×Š\ë/®om\ÔGª\ØA	\àI\Z‚G\Ôcú\n\ÈH\í.7\Üi‘Ë§Œa¤€\á×¶+±\â\"–¢ú­MÕš\î\×ùþc,z¢D4m7\Ëe;°Nzž\çh\ìjí†©ymú£[\\F>{IT¢1\í·ª\ç\×8\ë2mQ ’öFšwf\ÉcœŒõ©¡Ó•H6\èU‡RAü\ê%ˆŠ\Ò\×p²kVtú/®\åsÝ\ÚLc\ækU\"@|t­Á\â{û+ˆtù\Ú;æˆ¨†q\å°c\Æ9\êpN9¯1¹…\ã”4žb:ô\'ÖŸ5\äw	¾\êk³8P¡\É‡÷9\Ã~4—³©\äK\ÃÊœ”–¶;\ëMZ{(´\Ë\èB2¶\á\ÄxV}\Ù\ÈnŸŸ\çZ\Ú;\Ãk©\ê`¤r$DƒÙ¾l\×¥jr^\é³\"\Å-Ð2ðIûÁŒý\å9Þ¸ôÁ\Õx>ö\Æ\æ\ÞxM\æç¢$rðB¨8Pz\É÷ö®‡Q\í.½Nj˜x\Ê=\Ö\ë»úùš\å²\ä!\Ü}†j8õas.<¶\nR*\Üzeº\0üªgµ‰#Â¨Ñ¡\ç\èPþÓ„}Ü¶=)¶Ò´\×E¾m‡±©\ÓO„qÖ¥X)—o´°\"_’Š…‹«aOT«upŽÊ¤\í‚¨™@9\ÍGq!W¦*»Iò\â³l\ì„4-%Àó—ž¦­\\Jª„-aI#/+Ö®%\Ç\Ú §\æ\î*¹²…\Ê÷“„#®\rf[\Þf\í\ã\Øã¯¡­	\ÐJ¡_\rUK}Ž| rk	)\\\ì§Ê£b¥\Ãlc\Íih%JnµR[C,§#NF’\Û#Œuœb\àù™¬’©U¹\ÖBpCcmP»Ò´öó#‰šq÷¢m§5m«³\îiF\êõ\Ò\ïs1r+^t\Ò0…A·³F5î·¨iwR\Ú^Dg(\ÛUñµ›\Ð\ç¡\ÍG&žò¥«\Ì\Í#;~õ3Á’~£¥nx¾®´\ã6ž\ì­šúI=HõŸ¥GcqÎœ²d|\Ý1[N›O•³W^.*¤!\Êú\Ø\Ìû<!‘€\Ç@=jÌ»’\æ\Ò\ãti”\æÇ¥tRò®1Y¬ª\ê\Ûù±œR\Ôt\æ\Û2\â{‰¡‰¥…¡™°\Ì\Ê¢\ã©=j”V~c“\Zþ\ï$\Îvþ>•-\Ô\Å|\Ì+ž¯4è•­mI„\åwr½ªy½\Ý\r\Ô,\îU0\\XN³\Ú\Êcu?++1\ÍO\r\ÛF\Ñ\ê15\Ùñ9Y*\Ù\îq‘ž£ \ç\×5_\Ì2Àno%©v#\äô\È8ô\'ÿ\0UCe\Z6‘q$\Ös’…¹„`õˆd¥vQæ¶§!Åµc\Ñañ¤VÒ‹{»ï•¹GxŠ\É<€\ãø‡ûK]‹=ô	uÐ–3ý\Þ\Þ\Äv?Zò­6ö\Ñd¶Ô¢¼\ÈAKˆ“\ÌsÓŸº9\ÏZ\Ððv´4\ÍFC\æ\Ü4|þZ–h\î\Ãß·\ç[4pÊŒ_Fz,\Íy¹\ÄdñÓŠ’\Ù%óP\ÊÄš™5Rˆ\âEÃ®\å\är)Vö	\ÝL<y\Å>‡¹|\0En\nž;\ÑY”a]\Ã*,ƒ†=}êƒ±­SZKx¤´0«™òÕŒ\ë•\Ü{\ÖR³m\'±\×F¥¢¹ˆZP;þuV[¶ýY*Þµ$ óû²MQ$rr0=a98£¾œTµo¥~òBJ±aw\r®£\×­±\ètý@ª)nxÈ¦_D\Æ\Û\ËUf.G\0\éøV4ÜD\ßs¥Ó„—/s¢e•re>^QG?69üƒùŠ\Ï:ŒV¯‹\ØH\Û\Ë\Ï z\ã¸úU\Í,4\Z}º\\\Z\ì\n[<c€š\Æ\Ô!x<Ü´N\ZbA\0\ã\Ür+«¹W:\èxØ‰UR÷%\å\äkyqGrÎ¤ymÑ»T\Ö\ÞO#‚F\àŽ>£­I`VûI¶XRY\äO—fv‚s\ÎI\íŽ3S¼\×ªÿ\0g[ÁŠ‡\069\Ï=G¡­cN\nŸ3ï®‡D+Ê²º’]70\æñ&¯\á»÷³œCwÿ\0ªy‰\rBF3ß­1’K#¼U\Ú\\¶\ï+`c\Õp{g¡÷Á­‰~\×0ÿ\0H·WB:pZ¨\ê7z}\Ü0™7ºeAÑ\rÁ÷\Æ*H\Ô÷^®t(ªi4•úÛ¯\ÈQp­	Á\ÍP›NN+>\ÞúA\ÉU£•a”ûŠyŸ.8-\í\\­·£:£¶+NŽ\Ín†63ƒô§Áu\ÊùWA!•\Îw(!O¾*[‹x¦R\Ø]\ãÓƒùŠ©‘–`1\Ï\nHùô>£Þ…\ÊÕvÔ¹¥XÃ¨-uAn\Ëû NÓ¿=Aõ\Å(ð\åß‡\ï\ZX®§Š\ÚE(n¡L´C¯Î¾™‘Z¦¼v\é\Z(:\åA\Éú\ÖÎlÿ\0f\Ù,÷\n¾¦C‘ô=…i‡\ÅFü‡—Š«Mûñnÿ\0\×õ±\Ã\éY²\×\Ú\Ü\Í2Kò™-P\rû»\ìn8?Ê‹È›OÖ¼ôi²¬¬]!ò7¦\ÓÀút5Ú¦›¤Eq9k4•\äû\Îò1\Ï\ë\Ç\áW¬$‚e°°µ…ó’Á76}rrs]Q\ÄS“´^§+®—C.\Ü]\Ãö·3\Ç\æe\ËK\Ö9øp1Ó¦+¥²\Ó\Âû4Û›»¨¶‰\äQowq4€M÷zô«Œn\Ñ\ÏV¬\ê»ÉšÉ¶<®s\ÍVy£ó>ö8ô¢ŽS;˜Ì©qw¾q’I8\Ò\Ä÷NQŠ \0Ž\rP¹g3«©!@\ÇZ¯$Ž$1\ÚC^=\\DcS•­/Sh\ÂýK\Î\Ém¾\à«1;HÝŽV\îl•˜½°Ü¡wâ±¯If\è\ì\Ûû½EY±f‚\Þ;uy\Ò$Â«)¿\0ûW]E:”­7\ï_ð\èo\Î\ÒNú¢¸\Ûm¢óŸ8ã€¿SÚ­X¬‘£³\Í\"\ãz\nûþ}j\Ü\Å\íIŽ\\t\'§rz\Õ95x\ÑÊ°\Ä\Ìv\Æ’Tú{WDp\î2»gO¿V7KBy\"w—z¯a×†\É\Æsž˜kš»YumZR›~Î£h‘GTõö\ë[h¯ªZHa-ð@r½OBqÞ£:t6\Zz[Z»2™\0e³r\ß\ÈjuiÊ£²\Ø\æ”/%N[V;[{˜FcÚ–\éÀ\0õ÷\Í\Ò\ßO\Ëx’(Àû\ìB¨¦™f–÷1™/X¡h\Ô\áW© \Üút\àzÓ„ð+I¼b8P.\á\í\ÇaX\Írû²#¯—–6„W\Ïbš™e‘\Ö¨g`2\Å3Î­\ÛE>\Ü\Ì\ê£\ë\ÍR–÷ysX\Æ\\.0½¿\Î)±\Çu#þñŒh0r\ÃþÊ¥û·fnQå”£!ÚžŸowœüÏŒ‘ø\×-yi=£ls•þ\ë¯IùduT2\ÃÊ”;X£±«zê£.]\Çy¿\ï7Ò¯¥Üj–Vò\Ã\Ä\Ã\æ9ù\ãñ\ïô5 úDv\æ¬M¼®9 \Ö> v¬\Ò\r®‘1`	\É+’	¸5¬#\Õú™W®Õ—FvvH¢2‘«³©\É.\ß{Ž@\íôõ¦\Ü_\å\Z0\n\çµeø6_–D2;ºDª3\Ò1\Î@õ\ç¹ô­Mxf\ÐÍ·l¡Â’¼ƒž‡ZŒ^¨\ÞÇ™ˆ,ùS§˜\ÈB“\Åh\èšôz}\Ãy\à¾Oz\Äd»·²0^ÄŽ)ð°f\î pŒy cup\ÓNœ”‘\ÍX\î,u\èoœ4T\Â÷­GžÝ€X\ÙwõÀ®J\Úò\Î­±\ã\ÐS´T¶m~[˜Ž$™0\Ã\é^¥<Dt‹•\Û\ìb\ã¹\Ó\ÜÅ™³\ê‡u\â_³Ü¼R/Ì‡VE;7ù“i<³3\"‚_jû<LdŒ\ìQ\Ôf´‘ç‰m£\Åyö¬‰¤–yˆ˜\á\ÇJó+SŒ7Õ·ýju\Å\ÞZÊ€À•ö¨\ï.¼¸–\0zS\ãŽA\Ú\à8©#²ûM\ÜpÊ›ƒ \ã×Š\â7Ì—qË•\È\Zò\Î)¦ŒØŒN9RT{\ä\Öe\Ô²\Ä\Ðü»	>ÿ\0ýz\è\ï\"X\í\â‰pªI\àt=€ü«\â.¥\äù)bÇ P2O\å_Wd‘Ó†’>y=Œ\ÔagmjÍŸ+ycœs’Fi–\ä,+\ç%ÉC(d\Ï<Œ\n½4‚›W§Ÿ\à-\Ð÷8¨>ÁqxB“\Z8$B?\âº\"\ãmi\ím•µ¦Š\ÂuG	2€Ü³`ð1\Æ9\É\ÅI¦‹™\æY\ßY—\Ìo)õ\ãý[µ]Õ´\â¶p›¾{~B¨\ç\Ï\ëü\Í_·†\Ø\Ûù\ën°4‰¹\ÎÝŒ;kÉ©JS¯)_þ\áœy\êY\íø˜³[\Û\Û\ÌehÉ¹a’Àuc\Ô\ã\ëP¹\rò10R3–ô\È\ëZ\Ðud\Ã\ë[=>¼\Õ3u²i£WH”\rÍ\Ü÷\ä\ç\0vªXngy½<^”\ãÆ”He¶>P|œÛ¯\ãUR&\àœzUù\àyŠ©yq\ç«`–ú=k6\Ò\áõ	#Z¯Œ°n‡¿·\ËZƒ§;#W‹§\r&õ,ý«hž•op\äINGPin 0\Ü<%†\ä\ëŽõVEaº²rœ™\Ó\É	¡d\Ò%H¤’Ÿ4Š§\æú\é\è:WM¥Hú”\Ñ\\@#G_,)H\ã“ø\å\\\ÔWm\ZÕ³\Ô\Æñ¿±Ã­tR­Jò{œŒù½¤]\Ø\Ín\Î\ãO\ÓsJ¦5pzr\Ã=ªûqq$>ZdŸ\é[–ðjÖ†–8\ä\Æ\ãø\é\ê+2Mñ´±JŽÑŸœöü)×¤\Ô_&\Öõ9\ÔcÊ®õ+\éªÐ¼€/\ÊG­X\Ðì¤¶\×|\Ém*B\ã½A»[\Ú\á_\æ=È«zS–¼·,Ã¯OZó0õ\äªÇµÿ\03)¦®gxƒLkZIY2¥·8†òE\Ø9É¢¶¯‰\å©(\Ùo\Øq–ˆ‘.Z\Îm\è\Ã%pAª—WD‰\'¾¹õ¨µ;7žò	\åG*Z±(3@cg\r\ÆV\"»\çt›\êšò+K&Œ{­@5\Ô2\r¡\ä¨\é]U£E%ôrÆ¥UWp z\n\â¯ ·°‘RW\Îy\0u\Ùh^}\à\Û	@`{!\ÎO\è\Ð\Ö\Ô*$\ã¯1¦\"1T\âÑ«w<\Û\æ\äŸ ƒô÷5\Ïjó}Žûg\ÏöIc*H ­Œãž˜gº÷1Gb\r\ÄaÂ¹R­†#Ÿ×­c\Ëq¡£LVIUˆ^Bå¶Õ±€	\è3Š\é\Ä\É\É$™\çW©uÊˆ\í\Ã\Í2½ ŽC»s³ó$õr8ù±ò¨ô\\÷­$\ÄnRYZF\0ø\äq\Ô\à`W.!\"9-\Ë\ça|s\îŸCÇ­j\é3´q›8@%Ø²1\Î\í¸ù›\0\Ïº0ô§)5¿õ±¶œ·}|\íbüý¦Dò\Æ\í¹ó$Pvú\0>½i\×å¥°¹Ž\0­6Ò¡[{\ÐçŠ¯\rŒ6¬\ZHF\è\Æ\Ù\Âm\Ç\Þ98S@Ô­\Þ_³\ÚüÏ‚W‚œg­j\Õ\ÓGUJjNôÖ…{tkeU2«J¿)ùºg¨\Ç3\ÅI$Q\Ï/*<°\ëÁéŸ¯ò¦–\Ù:G$‹,\Ã\æù±”ÿ\0?Ê£·!\Ñ2L_.:³I©rJ\Ét„¹y“0\ÓZyE¼²JLñH\ê\èFC\Ðñ\éŒV\ä×±\Ém¬G“Ë´\Äõ9ö\ìk–\ÎHg`\ÝÊ“Œ\à\äÃ¡\ÇÒº-\"S¥\ÂÊ¤\íU|\Î=yÿ\0<Pµ\Üö³-ÑJ\Òð\åAc}Q –Xc’eY	bs\ÇAõý;Vq),g\Ë`\Ê	·+\É\æ_#\å,ÛŽ;}>•Ï½´öW\ÓF ²2ç«©8–qøV8Š\n¢º\Ü\åÀ54\á{4¾ò&A\Üú\ÓÀ=\è:\Ô\ØI£§‚2*\"¥kÇ”Zgje›[\é-\È\ä¢¶¡¹\Çò6UºŠ\æ³óu«\×2ë¢wv[\Õðñšº\Ü\êg´\Ø(F1Ö² Óš\ÏR¶a¸‚\Ý\ëOM–K”1C |\Ø5t\ÚJ\î†WS°\äWL¨\ÂrS\ê¬xò¼‹3¯\ì\æ’\í™#|\Ñ[A\\÷Q<59\ÉÉ­\ÌÓ²3\äð\ä\Ó6^p1\è´\åð±›–ü«`»dòh\Éõ5”°Ð”¹š\Ô\èPF$ž³ƒN\Ì\ì;œU¸´Ø´[Y~\ÌIó@BXô\'ô¤%~k6úW¼Ø±°~Pv†$úŒñ\Óô®Œ.1¨¶\"«´,Q\Öf¸6Q‹8\Ñ\àù|¹C\Û\É!¸\î28<tª\ZJ¥¤“]O\"EXY*Ä»\ÓvzŽ=9­\É#†\éE”Ž\É\Z8l°\ÚHS\Âñú\×/¯\Üy—¾T!V\ÑA1ªpNI9õ?¦1Y\â¿s?jõ\ìy˜˜:S\ç\é\ÐÐ‘`¸\ÛqlduŸv\ÌÃ¡$dcž95ž‘<Œ™V9~p‡®ß½ù\ã­jiÙµ±·…G&9npzþ\\“R\é‚\Ý#x ”3!\Ës\ë\ßô¯G^ô\Òk\äwÁ\Î0M£\\–m@„‰fF\'+sÔŒz\ãªúDwj¡\åX\Îö\ÏN=:\×Uqoöˆ^3\Î\áŠÆ¶—M\ÒH\ÚñZsÌ„N}8\ãÒ”¥­]B8úpÃ¸5m,¿Ì³¨K\åùP)Xþ\ÐJ³Œ\0#=^\Õ@\\\ì‘\Òp6&³>wqÀõ\ë\ÇÒ¦ººPÓ„°y\åI*È¸W<9Áô¬\äûDN\É8”!a$[\×,y\àt\â¼\Úõ¥N¢’\Øó#]Á\é³û‰\ç\Ò\Ö\êvo8,\Ì\áœ0\áñ\Óñ\ÆEIÄ—bð2yð>\àý·¥Xº·†ò(ÌŽÑ¸H8)œz\×\ëU¦™l`K§+$|¿0®	ù°s\éÓ ú\×D¥\'(ò\ìv:\Õ+%I?‘,¬ñ\Í’[\ËG\ØC\0\\\×\ëŽi’µXG\ÔK$„Œ“‘´q–\ã¡\çô¦\ê\06›Ö‘ò\ê»p˜ñ\êÂ—K”\Ü\Í:H¡YŸf\Ó\Ð{Ÿ\\õúb´ucò‰J·I!ö\Z\\Y\Ü\ÉnH\É\åÂ­ü`ŸÆ³æˆ©*À«‚Q^‹\r¢[B¢ü¨1ŸS\Ü\Õ=GD·\ÔAf_.lq\"ÿ\0_Z\á•4×™\ÑK$ýýO<uÁ4\Ð\ÛkróÃ·\Ðû†‘GñGóñ¬‰ h˜¬€«tŒ\ZÁ\Óhô#V2Ù—t;\é#\Ô\àî³ªõ8?Î»\Ðû¢¸Ÿ\é7_\Ã;B\ÉM¼».2G@3Ö»`k·~]O\'\Ë\í‡¨tQBŽ”WA\ÄŒ\ÓX{Sñç¸§‰ÿ\0+¦\Ð\'<€pyn+\Òx.bûT’ˆZ2Ps‘\É\à/rGÿ\0­[“¼F,\ïò\ãc`\äZÂ¶·®\Úù!S\È*~f€Fx\ÎEO#sHÊ¯=YF)šw,¨\ê#,g9`A\Ü?\×$óTotÇ›S´ž\r±\Û¿x_,N\Ò;\ç?‡\åDÚƒ\\À<\Ç\ÍÈ›q\Â\àJb]\Ì#¶T\Ë\Æ]¸\ìBý1\ÅtNŒj\è\ÑÝ‰\Â5I:šjW»`\í,7\0(m¥A)=?:‹\í3Û¬\n‰..,\0\Ä\îH\ä\ãÒ“t—Š¬‘’Ê€\ç8#;Ž;\ç?•G~)­W2dBF\0,\Ñ\î8\ãÛ‡\Ó\ß–):îž†k/gÊ·\"\Õu[‹‹³ifqó#þ[×ŸOj£{šZi21@±y\ïó\Õ23`Y…\Ò\Ì8Y”¨#\è€ð¥L|;m\äå¦”ñó	ü«Ë•\Z¸‰s\Ý?\Ð\á§\n•y­¯\è<\Ï‘l!\Ûi%²\ïFo™Nr Ž¼\ç9\ÍJ\ïo’\îvB|À\år~ð¹ã­Mga\ZY€®’¹`LªI\Î\ÓÂ“\íý:Qs²O\nÈŠn˜\Û\×¨ýEzt\à\åIF®§§‡\åq\åŸõØ¥©Nü‹ˆ\Ø(Ç–\êœH§øO¡\Ï?ŸJÂŸ¦\ØHU …S÷²Ì¿\Ï…uW’‹­6%w\ÊSi$\Ügó\éY¾_öm\Â½Ï•¾(€\Â\È\Ð\ç\ëÇ¥a8Ê•Ni=7¹\Í	º8…S~Wý#GP³W\ÓZÜ©\ÊÇ¨\ï”s·ßµUð¦™$š”fwÏ–›\ÇA\×\ÔðVµušG“P™šú\å0„ƒ¶4Á9 ­\Ý=™$\Ì\á¤=@#q\Û\Ïù4ùc^\Õ.úu\çZzŠ/r+qþñ!bˆþu~È¯hj4±Ž‡\'Ú£i …úš\ÏÃ¡4¢I=j•4K¨Ë¥\ÙúÑ¥U\È=\r<NqÈªµˆn\ä\àñÒŠŒN1\Ð\Ñ@vûš6\ÑE1*/pô=*ˆ…¯‡#’\"CM0vú\àôü…S\Äi‡\×hÝ»¹M“c(\Üp$8üsú\ÑEu\Ñ\Üö3_†¿\äX\Ç,21gVEf§ž•C\\·Kh|¬\ÊU÷s»¡\çó\íEË™kEüÿ\0tß™¦£uo\0ºYK0a\×†\Þ=y®‚@#„l\0lc\Û4Q\\y|›ƒ»+-\ÖVd\Ò›8Ÿˆ°\\\0m8RŒ<\Øn\Ým´ò2KsŠ(®\ê{#²\ËØ§ýn@¢\âY2¤lt\Çò¬Ëµ/«\Ä¿+,Y»A\ëõ¢Š\å\Æk¯2kÿ\0\r?BÆ“köt]w\Ýø\éÏ·jÒ´·nÌŠ¸r[¹\ëþQZRV¦½é¶©¤i„Ö›QTbi\áP‚Š\nŠ( \0\n(¢Ÿÿ\Ù');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-12  0:59:26
