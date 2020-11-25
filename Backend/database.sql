-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoredb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `bookdata`
--

DROP TABLE IF EXISTS `bookdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `file_data` longblob,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `stop_order` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdata`
--

LOCK TABLES `bookdata` WRITE;
/*!40000 ALTER TABLE `bookdata` DISABLE KEYS */;
INSERT INTO `bookdata` VALUES (327,'Harry Potter and the Chamber of Secrets','J.K. Rowling',20,1,'Award-winning artist Jim Kay illustrates year two of Harry Potter\'s adventures at Hogwarts, in a stunning, gift-ready format.',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\á\nhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'ï»¿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\n<x:xmpmeta xmlns:x=\'adobe:ns:meta/\' x:xmptk=\'Image::ExifTool 10.80\'>\n<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n\n <rdf:Description rdf:about=\'\'\n  xmlns:xmp=\'http://ns.adobe.com/xap/1.0/\'>\n  <xmp:CreatorTool>Canva</xmp:CreatorTool>\n </rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n<?xpacket end=\'w\'?>ÿ\Û\0C\0	\Z!\Z\"$\"$ÿ\Û\0Cÿ\Â\0\0û\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0Íƒ`£\Ì\É\"}Ì¬‘|2ª¤°’?¦š•U¼\ç‘sžE\Ò4o94ˆYc\ÒZb»šj9do;­ŒsRX@’\Ç\"¶\"’[fWÄ·\Ót·	R…«\éø¿Š•K	jx´š“ª\âª.A\æŠ[—sœ\Ô}\"\ç 5u¥S9R\Ê\É%sgV¢ŽF¤Ü¥\Í\ÏR;=77\Ëzu\Ô$$,Fq\Â	7<®VØ®\èg?€+­\ê\ï2¥YH‰(§±f½r ›Ç¨6Á\Õ\ÑÁÛ©\ïŸ\Ù\è$f—)\é¾i\é6MXss¦\âmC\Þ2†ˆfù¹³m\å\á9\Ü\rMwKy\ÙE3l…&\á\ä‹\Ë\êLsxvŠ®Ò¿K{z&5™Àzy¿ž\ë-\éq\é\Í\ÌjeÍ…c_¬eHÞœ\äz?=\ÙT‰\ËÀô—4—Äƒ\r\Ä\Çd/\èOSEoñƒa_¥½d9ÕŸšz˜k:*²þ\ç~ˆM›Qh\Û\Î\Ä+-òî“›br\'wHV\Ñ\\\æy-*\é\ÌM1p\Þ~’Á„\ã\ÚÂ¾»UIO5±ó-6b\çE5|‹M\è\Þi²K´©­\Æ\Íÿ\0©ž¹§¹\éÏšöM±’9žU{YòÀº`—H“£c²!Ü—™\Òz7=ùK55‹\"\ëBy½‰‘^¸k(ô§\Ë\äÖ¦zžs_³\ÌVbÚ²\Ç|\åc–i³$1_Ë\Ò\ãnÜ¯LÕ¸Ž¨[›b)…ûŸû\ß>\ÞY³\Çl›®¾£¾\Í\ÈzŸúy&“5¥\é\Ì\Îrf…°\Èë¦¼¶5N\Üi\Ì\ÖeUb‘,DM³¤\æ¼\×U˜\Þ8‰“›\ÏYZQ$—-\Í¾x?¼ò\ë\ä›\Ü^º\Ño¨¯s¬žÿ\0¾<—K\Óô\æO;¹\î·_‘\×/–²Hûp¦8yR\Â#U,Bæ—•[ó¯FÁ\ï\Øb¹[ds¶)$xû\áS\ï~\ï\Üzù–¿²\Õ&Â’ß—L ùþò\Ì\àY½ó}-D¸\Ök{\ØY[\çdÓ•jsu‹±I\Z\ÙJ‰gUY\Óº\Â^1iO<¤\Ó\â­Sƒ*“X#\è_™~™\ã\Û\Éöø}\Ö\à—´·|ú\å·XM\Ù\åzLæ“§\"9U•\ÕMy|A\ß\Ì3Œ^Šp\Äd‡9`ñ$›ó\ëú\ícP\Ê\â­‰\Õ3\rúG\æo¦¹wñoHñi\Ö\ê’\ïrû¬.\èò\Ý.gMÓœ\ÝÝ\r©\Ëjf¼ÀsA\ï\ç\ZtÖ(ª)Arl\í’t‡¹+X`W9\ØucÉ’Š\Ðyk~žù‹sŽ\í*IÔ¸»\ÆKË¾óEª\Ís±—Ú=.[|\Þ{X;§\ÉkžÅ³õµ%Bä·’9gHS–\äWI\"F\Ô(\Ã(l«¥\Ü\Ï\\n“\Ä\áÆ§›]K²˜I®^<°¹$iµ–µ(F#sƒ“},s[U!%\é5\\@b\ÜÙ‘Rrô3fv)\ãÊœ\Ú\ëÓš\Æ\è]-žB\\\éBËŽž5-·NS@¶ZK\ÓKOsL‚\Ý\à\äô2„«¹¤K\Â%¥Žh\å²9ãˆ§c¢Ê’Þš\îkjõ[\ÎZ…\í\å\Ù9x\í®*\ê\çd4\ãt\çf@¤,\Õ\Õ$¸¶3-}•-Å‰G}ž.	§„\Ò\r0¶\Å=|ˆ8Wu²\Õ@ñ2öŠùv9\Ûì¶¦O»¹õ\î\î8ðM\èóAÓ••D\ÔZ\ÕCòšŒ\Ô[_dô”Vvòxqa\È\×\ê\Î2Q\à±(‡h‡EÑ®›9¡¬\Ô\ÄÀ©Ï¯wq\Å\nI¼‚Hzq0 	£ªÏ¬ˆ¨\îÁŠ½60©u”\àEb@\èó}3\é02¡â¾¸¤ñ§è³šZ\Ð\nD;\Î2«s†\çÓ»ºh«_k\Âèµ‰Ê¯$>²Z\á\à2¿4y šja\Ö\"hš«è¢¼]ólÈ¯®š²AEš\íú¼™\Ömb\ÌC¬\Ú\ämªñ¶ó\Ù7cs@N¹\Ý\ÇR©h•K!@¥\Ë+yZª­Q9%.†¦\äµer†C,½¬JH±rK¡•\ÌTh§Žë‰›£X²µŽ‰\Ê\îD\ÎBiÇŒowK\Ý\Üw*Xªœ*µ\Âw5_\Z¤*rŽs:Ç£\\wrÈ£¹JÖ¨¨Š:.‘b^ã»º:\à§[	\ân)\ë’\ÜU–\æFs´3ªÕ³»Hµ<\ë{)’\ÊR¥o*9\éc\\¬^sxE\îŽ{ºÆ½°\âƒ\àŽ‚ \êJ@H/s‚£ƒ‰\r¬q\ÒE\ÔKaHr¢\Ø\ÅNWµ8ÿ\Ä\00\0\0\0\0\0\0\0\04!1235 \"6A#$0BC%ÿ\Ú\0\0—¹\íÍ´Œ˜¾\ËXö}ÿ\0KÇ¼¹HÁ\î\ï3%S¼\ÒlÐ½ªA§fS6òž]ªA¤”›×¸=\ÌD¬ˆ+\ØR.	7\r¸\Ë\0\å#*d5\à®cj\n}.»\æY r[ó\')£KR#¸·d¤‹\ÇIEL–r?!µ¶‰‡\ä4´¬™Êž>»y›l\ÔF›\ãc0{sG\îû¶\Â\Û=\á|\ÉY¡%\îA\Þa[‚¸5\êòRü?U¶!oSÛˆ·¯ý¤–ò+l2¸\È\æFˆ\È8\ï’H®Œ†UXœ¶ð\Ö<761\ç\ÎDYÅ·®;\èO\0®b/[¼\Ô$˜\Éd\áb1qõ*R¡Qi¯¦¯OÂ¬6¥Cª8ýUöP\Î&\Å\r\å3\â\çPoðtz£’$U\êŽC’\"Ÿ”Ã±\Ös¨xZ;~&¨\äÙµ¶\ÍM|\É\åõHO±’»¦FJ¹°@\â6Z\ß\Æpk\Â=\ZG\È\'|—7xó>.0\ïu\Äý\Ä/\ã~Å…»fî˜“¼9\Å<¾©]6º»>’¹&d+Ÿ\ZÁÝ¯ti òJ\ë~%.g\Æî¸›¸…|bØ°¹Z™…û–#\ïqj\æ’-–l•\Ñg¬,¸\Ê/b®|gv¼!Ð¤÷ù\ß#söœÏ=\Ý17p\nø\ËmUö\ì3Ü±1\ê9Å¾[\ï/L¾Œ}\ïžõY$_f\Î\Öýu¿Œ`\î×„:žý7\äyò\×kh$RFî˜—¸X+\ãTÕ©\Ê.\Z\í\Øo¸\â.\æ\áYH-\Ö\é\Ñcª\Â\É@÷Œ·\nI‹n;Ú·ñŒÚ°Žž•o\ÏNùA\ßb\Ùrºb>\àñªOd\Ã]»w\Z÷tªE´\ÇÕ¶T9“ZÒ›i¸°°p……s\ã8;µ\á…\'¿Mù%<µ*\â‰ts=øw¹bcÿ\0\Ð#\nø\Õ#±\á®Ý‡;† \înõ-°‚¶Ê)º‰;\ì,,I\Ú\×A\Öi\ÞMu\è\ÍF¢MTMB’Ûž=V±!¹’ŸžÛ”s-ô‡\Ñ\Z]fKR¥\\SjŒ&$º¤f\á\Ñ\ê>H\"¡K`å¾©\ê\'”>9Al¨\ïv˜Ÿ\ÔEaa`E`÷/)*™=\Ö\ÓH©\Æ\ÍB#\Ä}òu‡SP¤<ÛŒ­µ¦›8~6m\Ñ\ç—øÊ€r¦ˆŠ\æš|Å ©³¬óKir:rõ÷m³:ð\nÑ¶\\¬;}W\Î,f×—+\nq¼7\Ò\ÄZ\ên«w7‘¯\Î\ÃÇš¡U\ä“Lœ™\ÍVã¥Š…7@ºÙ¥\Éoù‰ú¬\Úûÿ\0¡ñ\Û \î\ìlBy³ówº\î\n<\Ãq²³qôƒtñ²…\Û\ê½\ÊN˜a½n)\ä\Â\Ý,G®§h\Õ\'„Þ«%p\â³\æ+\ÜÜ“ðw©&I2Z2…f%Ÿ´¼\Ê\È\åHK‰£w§ˆ5”>\ßT\îR4\Ã\r\ëq?&\é\â-m;A+R&ó\Æ\èX\'˜ù¶¨BB’\Â¼\á\ÜýÌ™!§[q»	Ošš‚´m=q‡ºuýeAT\î24\ÖsY‰¹0\ÏO\ë©\Ú	zŸ©¥eB\è(Z\Î­–gR\Ê\ÐV6•!\Æ\Éh6–Ã¾*]U‹Å\ÉF¤%E†³uýeAS\î24\Ã\ê±\'.\ä\ÄZ\êv‚^ …C„Š¸Q@¶\ÃNy~…¡+\'Q–O\Ü\îX\Ú1‡ºu”õ=ƒ\Z§\ÜT’R%\Ó#5\ê\ê\Õ, EL6ª¯y™T\Ý´˜‹PŸÓ§°\'¨°ž)yþƒu–{\çžø\Ú2{’¯-ö$\Ò\Ý[\Ñ*}\ÂFž\æ0þ¯^\Ø}Õ­ª\ê	3iúf~1p¨t©›88³¸o—eXZ’·*\ì)+i³\'\Ðm;\ç\'¨q´y÷á£»uÒ¼\Ê6†§\Ü$i\ÈP5x“—\rtñ®Ÿ¡“\ÕO\n‡F™±aA®R\ÙHu,©$Í¹iK’M&ÂŒ¼ó¢}9ƒŒ¯2\î‘D\Ñ$aÂ³U\Í]CS\î4\ä(\Z¼KÉ†¹+úº~†O]<*\ZzW5ƒ¥\í¿µ³±gŒEÜ†\ØZ\ÆO˜‘\ËrHq\nd2ý\Ë\ÄI?(ó9CA¼\Þ;µ\\\ÕÑ´5>\á#NBƒ©Ä¼˜k’¿«§\èfj´ô“ýÁ\Î	\ro\"N\Ê|u(xg\r	<Æ¶³\ÜVqÊµö1¢eN6¬,²r=sWF\ÐÔ»„9\n§ôð\×N¿«§\èe—\ílN\Ó\Óù9ˆƒ‡s\ÙY¼u\á{\È/\ÜY7oz™\ÒÉ†µ;ƒm·\\\ÕÑ´5>\à\âsµøg²\ÌÄ<5Ó¯\ê\àh]¤-k}“.i\Z«µÅ‚÷9\ÆùA™«\Ü<R_Š…”¦\Ï\Ä6ÿ\0Svñ#\Öj\'$øFó÷\\yMK\Ën¸§ù€ªS/º\Ò\åIyò‰)\æ\ï8ú››)ü„À·\ì‰[\ãÁ;K!`÷R?\ìG)™\";ñ0bG]Î“%û\"\ê˜^f\Ó\Ä‡^m¢\ÎJ$\ì0Žb\Ûÿ\0Wºq·HN\ÉAƒ÷£b-¾Û–¢Hs1“ýU—\ègª\Æ\ç\ØVp\\B\ÔIK\î)\×h\ÏYÄ‚¸;†ù\È0¾ªù[\Ü\ê8	e\íg¾¤\Z6 ÷Œ¾\çÄž©\écõ\âX\å8\Òw1TVH\"\ÚZy‹b9\Ò=\Õú\à\ã|\í³\Ôo€\Ì\â\Î!.°\ëN/)¸¢!c3•\Ö=*9á‘œ•6y²Ž¡¦\êSÛ\Ði~±\æ°òˆ\Å÷—Q! ÄŽ ss‘\Î\éo&úˆØ‚ýv#]ˆv²TB÷ú\ç¥G=3Yô|k/øú)ø±þÿ\0\ÒL$öI\çú“¹ø‡ú‚ˆpy<n\Óÿ\0m¤H4„(„Îº´¥Æ•¬>+ 3\Ì~Š:ò\É\n\æHF\É\\\å\Ë7U\0ÿ\0ŒAAÓ³¦\éóK\çþŸôZòƒI\å7\Ï3Ž˜.4Z…UYbúi\ç–e\Âù\ÄJ\æO%H­&˜«\Å#\ÂGQG\í3+Ÿ(‰kY’È³\r»:”\Þöº÷!q¤jTb¶§\ÓWô\ç3A\Â_\ëªu\é®Y¶\Ì\Í&¡\'ª¥\ØÔ²3Z\Âó\ÝG¿z‰0R\Î\îõ\àB\Õ1Vo<vI\'\éˆDr¾œ\â\Ï\æ\Â\\Ê‰\ç˜\á[\ÆC‰\"7P$\å%8w\n2 â•™W0–\ìŸ\rBC%•|\î‚ncÓŽ˜¥šHp0{ˆ÷‰f\áR/Ô“\Êdy\Ì\Ü<ª1s‡uX‰\Ò\à¹“½Eñ.Z80\ç¢;\ãmŽ\Ù,S#t9ÁƒbXeBZó \Âa{\Âþ\Ó0a]C\ê‘\îZÌƒŽ‡OÞ®$~\ÚGL/—1%½´Î¡ ¾\r¸\Ô\r\ä‘<¼À\Ý\Èx\Ô.\í;3\Ìf0f°\Ïög\"\nr\äé•œ\â>©–ò\×bAÿ\0l\"p–‘\ã7.	C9p‚Ý¹\ï\Æñ¿\ÐaGû3~\íÁG”œ]\Í{\Ì$G}M–\áË©\Å(XË€g…\Å\Æa˜†ö–\Ë\ì\Þ÷’Vd©\Åc–f¯1\ï\'Ì”n¨\Å\Åý\â\\¡d\Ü\\f…\Ç‡¹[,7\Ø7¸%&iþ«\ì¾Ï G\è\Þ>ˆÁqÙ»Ñ”òŸö\ßg\ÖÏ«ûv‘¢-\Ä[\Ì\Î\Ä@\í|¦Dyªÿ\0\Ð[Sc\nôoŠ¸\î»g\ëþ¿ Esôoô_qz\ï³w§\î;®•MiT$°\Ò#RjD»S\r\Z>bU^/“ŸM„Ì¸µ\Äøt\ï™²D&\n—Fa¹U>\"£¦‘LDg\'T#S£CD\ÙN¡l»r¶\Âõ¬\n^ZzxÉ“\"I\Ç}\è\ë}Õ¾¯\Óa-²y÷ž\ë„Ë¦\â\Ün\\–Õ±r¤-¦u—T¥L”\ë&w8§—\ÝJu\×\ÜI¥B\çd•\Ï\Ñm×¿§\ë\Ñ}¦c\êû.e´\í°ˆn¾\Óÿ\Ä\0$\0\0\0\0\0\0\0\0 1!2AB0\"@Cÿ\Ú\0?›\å²\Ë,²\álpŠ=\ÊR\Ê\Ç6_z|\r—\Ø\Æ|E³.fÏ¡p£#\ä\ÄCñ§.b£\è\\\"Ì“ô(¸|‰M«±p†û;/ù1f¡¾\Æ2…\ÉE–c†,Ò=\èX”ƒF¹…³Qq\Ò¹\'Ø¹p£QU#EÈ½˜ò}˜ù8\\ŒQ€†3¤bû¬\ÇØŸrÖ£L™\ìbpf¨\é?!yû1\äû‘\î™qs\Ò:~Bò1öa\Éÿ\0C&>a¸[q\ËI‹§bÏ½‹4Xú5ÿ\0V,ûÙ›\Ç\ÖÅµ–X\ÖÇ±E\íKb-\îd¥‹ðbý—#\Øÿ\048\Å\Ã{*+bF0\æ¶\é4”TP”QEþŠŠ(¨¯óÿ\0ÿ\Ä\0&\0\0\0\0\0\0\0\0\0\0 012!AB\"@QCPÿ\Ú\0?ýJÆŠÂŠ\ÔoV¼\rn_”%ey%‚ñ!\è|Ÿ\Ñú\"}¹hüŸ\Ü!±ôHb\å£N¨i‰y ¨¯Èš;X·±\è94w1\ËÅŽe³½\î9ø±7\ï5c\Ô%°ø’ôKc\à—¥\Ô\'°ø’ôOc\à—¥\Ô\'°\î‰z\ZüJ}¤¸‘Z=C©\Ä|Il‰l|\â²\Ö^¡>#\âK\Ñ=ó-F\É+CŠ%\Î\ÙW“³ñ¡Á\ÕR÷¨žW¤ó=ƒÁdzyØ´v&^eƒX%‹/A<x^[ÿ\0‹e—û?ÿ\Ä\0=\0\n\0\0\0\0\0!1qr AQ±\"as02‘¡Á34@BRbƒ’\Ñ#‚c\áðñÿ\Ú\0\0?²AaEŠ\ÅW…•û\Î\n›œ•\ë½\Ì²Hµ\Ôp\Üm\ï\Ä&,/ü \Ép;€ž5ôƒ–\íJd\'¶ûC{\×j&]3ðOk/‡‘€\âfƒ.ô€.–\"œ\ë„>T2©P\Ë@e\Ç\Þ3–RÌ§,G÷ŠdV5\íº\Ë:üPm\×¢M2¦=P½\íg\ÂX\Î]H~´Ä¯\á!ó]¼r\é÷\Í4:\Í>i\Íht\Ë@À+¡Ž½v\è4\æw±•\ébÑ‡DdbO/ý\ã\èÁ5¹ý\ä\ÈY\"-\Æ\Éú\Ó\è\Ñ.Js—¸š\ÉYYE+H¸ÿ\0\âª%eó(o;¥RªDIN\é—9+ÿ\0ðK\ä½Gõoþ6J\'? ¿\Í\ìŸ;/:F·™iôF\Ê)ñ\\\íf\ÐÖ‡±”)Î£¼[,Th\îl\Ü\Ã&ø\'l¦D>ð\è vbA\Ý\é{\Óù\Ù\ÑC\Ò\Åô?´\ç\Ãf0š\Üg\Év-„\×³©°E„\î\Î÷µ=\ÛD‰-wIûIh/½tx(\r—f\Ù(¬†$\Üe`\ß%\0§:¬¤§e\Ó\äŸæžm>b:ž¶]?Úƒòº^õK,f’‡–,ý”rzw˜zÿ\0,õQ+ø[\ÒÁ¾P\ÜÁ]÷Yþ¬ù\'ù§ [O˜Ž§­—Oö¢þžò‡¥–3IC\Ë~\Ê9=;\Ì=w–z¨š[\Ñ	,7)iAWxi‡òOóO@¶Ÿ1O[.Ÿ\íG\Ù\Ï\ä\ë5~–XÌŠX³öWøûaS£©$\ï0ô	\ÚU&ô°o”—¾4\Ãù\'ù§ [G˜Ž§­›Oö‹?<šsG:\Ø\Í%,Yû*o\à\×\íg N\ÐTL‡E$7ý«Ø‰•-\ÂÑ¦\É?\Í=­O[6Ÿ\íl\ÇÀ|\Óólf’‡–,ý”rzv³\Ð\'h*&C¢(o„\ZÑ†÷ú\Ãù\'ù§ [F´u=l\Ú´\ÇCø¢þé±™<±gì£“Óµž;AQ2ô\r	\Ç\Â\ÊQs³³\í\"D@\"\à\"‰Ð¶\r“³\å0\0\å\Þm\èo\ÄqGicj\îLªf\×²`8HE†vU	»ŸÚ€øR\Æ\Å|\äÁv¬•\ÙVÏ¢ml%²”\å:#²\ì,\"bS”€N‡¥Ð\Ë3\Ú;5>3\è]Á7\å\É9\Þ;\ì|=™\ÎNs\ì÷…3\Ò¸\"`\Ã/vq˜Xe5~\æ£#n¼/³»\ÞÙ\ïÃ‡½\Í\Ä/³;\à§FŽr°=\æœ\nû3¾² “†\"\Æ\å¾\ì\Ów(«d8_E¸Û³¾›X¶i\Ìú<¯	z\Ê6 ›\å¦\ê*. œüd&¾\Ì?šŒ\îm\'\â˜{;÷¼dœ\á°´È„{1&¸^P4ö}wL½t\è\×n\Þà½‰¹Z7ša”û¨÷À—5vø]\ÓyØ›GŠ‡ t²6 ›¡72¢\êQ4\"hù¨•PLòþj€¢\ê=lö&©„\Ý\r¼;¿‡š›š\îuB\ìJš¼\æ\Ì\ÊðÁ¼œp%È¾8.ôŠÀ´\Ë¡\è,¨&\èMÌ¨º”M\Çù52£\ê	ž_\Í@\ÐMfÁ’j’nŠw¹?¾9`‰\Ñi\ïC&²W\àúÃJ\\¤N5W€ª‡åŽŠ\ëû¯œ¤¢\æt&\æT\\\ÔM\Çù52£j	ž_\Í@\ÐMg­F\ã[Ì«­x\r\ÉTK\ÂX«À]½U\Î\nm\Ï\×U\ëµACò\ÇDf1Qƒ«\'	iºs*.j&ƒcô(•0™\åü\Ô\rD\Ôz\Ø\Õ\í°n\Âo\êÝ“„\Ô\Æ9\Ë,˜A\íˆ\ÖÉ²¨BœU4Zp\"J$F_›[1\ÞO¡CºðÛ§ˆN\ïSD^\0¢j€‹ùšú\Ö74\ì÷\Ù\á3¼@~•\Ë,¨ \ÈQ.‹³Á\Ä3tÊ‰š‰¤¬Sô(<JŠ\×8¸5Ôš˜üM™PtúŸ\\\Ø3N\ß:\r—@þÓƒCš\Ò\îu\\1Iˆ1”ˆŸµŒÿ\0%\Þi\n†b\ê‡åŽŠŠ6 ›¡72¢f¢i6?B™Qµ\Ý\n€¢k=l§\Ù=Ø‘ph’\r…\rÄ“\ÅK²y½ø‰N‰\'H™\Õ1\Íp\Çý]‘%\Çój\\F\"\n‡åŽŠUš‹©7B•5IA?B™Qµ\Ý\n€¢\ê=lö§\å¾L§:\rJA¬\Õÿ\0ª¡¹¡´¡o¢^q<‡$EÁŠ¼\'cC‚\ï\ZŽeLH§•\Ë\ç\Þ\n6 ›¡Ê‰š‰¤ Ÿ£\æ \æTmA7Bƒ (šŠ)\É\Ã\ÂÃº\Ã?•\á\ßv5(˜˜4\æJ\r|F\ËqMˆ\éƒDb_\ÍR¡\ZŸS<±\Ñ6tõ‚Š\æ™\Ô&\èC2¢f¢i6;Bƒ™Q³	ºD\ÔlröZw!ÀV\Ìœ°By\n)\0\Ù.VI3G\É¬-ž+ji—®:&\èC2¢fœ\ÞbK\ë\ÛüTFòo\ÍAÌ¨Ù„\Ý\n€œ\îÙµ<“\à—^»\Å?$\ÝÃ½2¤\êd©\Ý*\ì\ê\Éö!<&›\é\'³œ¥tac„\'ÝŸ‚½×Ž\n\ä8—[’/y›Šú\ï€_]ðÄ†\é8â€Šû\ÒÂ‰\Â\î\ÏÁ^Š\ë\ÇØ²\n/®øbD3qÄ§\éPó´#¹E2¦­(„Ñ…P\ãU#Ž\ä\âDks(™A\íN\ÉC\Õh\Ü\Æ\ÃmMÐŒ“\Ênh3´¸\à*Ø’Œhj=µ\Ü\íž\çu¬\r8\ØgoŠ*%5&\Ï	 ö\Í\ádOí\ê\ï›=¶”-`º%1¼®\ÅlXy…&\Å\n\é6^(¨\Ù!šh„\í\":\ëWe\rŽs™±¯”î™©N\ë[\í\Þvv”-*„n´*â®™øXTl\Í7\Û`]=\Öu\Ý\ï¹´>\ãõ&\Óo¶Ñ’(\ÍU„Œ×«\"±².V7#aw*¢\ã‰Ý»Á\Ã{Ø‚‰š‡i>*a«\Ù\ìF\É\ÌO	®D)\âž,\ãM\èy\Ëx ŽK#k\Â\ßb$)\Ä>\Å@°R·ýl`\æ\í\èZ·‚iOo[\n\nrTªä¸®\ê\î\ÏÞ„ún<þ›/O\ÔO½ù·a\Ïóo\Í4«§Š\ïDH\Ü\åfT?9™\îD\ÊÇ·˜Þ†?UƒpY>EMNò”¨ª¼ý*))nìŸŠˆmu\ÆM¤\Ð\î>÷\ád\Ñƒp\"¤l\Âk)\î{7$’ñN>6\âL©¸ý>ƒ\Z\ÛR±T³\Ú\ã¹\í¶.\Çd±T³\Ö\\W\Ê\Ú[-óJ.r†‹;\ÊD\ØlŸ§›DÂ¢œ‚¼‹‡Wè¢‘¦\ç\0,$¶öj¬o\ÝEµ¶…J\ÐNVv\âªd+R,ª¢š¤\ç\è+¹_C[e¹Šœæ¨¥g\âôTû¡ Ú¶‡\ÚBs{\Ô\ïñ@‘\"™j#ƒ×¤\Ãw\0‡\Þ\Íî£¥€š\Ã\Z¨{P\í]\Ãõ© &™\Î\î.—!Š‰\0Y‹	\âÓ‚x¿wi\í.Â™î¾“º£A`-ktfVÑ´w»V‹\Ð\Ç0\ß[ÿ\0xZÝ¦\â85½©¿VÍ¼¹fz\äC##$d–\Ê`±ÿ\0\ä\Ù\ÄW\Öx¨Pö«\Â\Í\ÒA”¼S ‘³\ík…iðE±\\\æ\Ã®ñ8\'C‰G±\×HR»\íX®\æsðX\'lŒ„\Ö\ß \Ä|ýia\ÕLP\Ú#>%\Ü/~C\rÒ”\Â\í\"½\Î|¥T Žì½w„ÓƒEö\ÝwˆM\íb9÷\ÖÏ€]ˆC/^»\â‹\â^\ê’x¦:w4±·ZG\Ê\Ñ	ÑžaþYòÁ°^\æD9¼­9Ô£ûC\Ì;²»\à8XbDq{Ý‰%\\k\ä\ÛÁ\ÒñWk\å\ïw\â+\ÅH\Ë\ßd¸)Wýzi\îz¡N–‘\Î\ÚYEY»ÿ\Ä\0\'\0\0\0\0\0\0\0\0!1AQaq¡ð‘± Á\Ñ\áñÿ\Ú\0\0?!‚nAÝ²\\9-\é?#JM:G	¨·Q`NkB#¬t‚:\áH/¤±hIG»\"Ê—Ù®B7u(jYbI³\"ôÉ­ªmf\Êwce¢„d J™\ÐV¬­ú+h-[OQBX\Äs«\Ç\à\ÑX•\ìQò‡J£Q\ØJž„\ê\Û<\Ç&…üŽÀ#É†qq$\Ö1¹‘PN\Î\ÂÊ‰H±;¡…µ!eO\ä‹N\Ö(\á\é©r[©¥&G\Ó_B\Ï\ÕX>\\/%¯µ¢¡¾öTm%/ù£°\éKº|„„\ËSTMÓ½>\rZ\ÔCoú\ä\â^V$¡Ý¿¯¢W¢•\"<#Èš9+FnÖ—Ž\Û\r5!”\ÖV¸¸\Ý%p\Ë\è°XT¤Ms\ê#‚#¤2o?fs\îJ5!7\ÜÅ„X–F\æ\\\Æø\Zw‚”Åº\äAA\Ò7ëƒ¨„\Ñ\rºe\ÃÀ\ÒÒ®EY‡hy\Õp\Çu\r=$ˆ\Èi”µ\Z¦O¤A|}‡r\é5²4$D¡\n: ‚ \Üû*§Q+A˜’M™6H_1.£LºU¬†F\åtrP1d‘³\Ñ\re6\ÍA\é\äA\î\r¿¼\ì\Þ\Ötˆˆœ\ZSù’tG	ð\ãQ4U(H‚ ‚\rK))l‹,Ñ’\éÄ›¦\Ü¢{jY]\ÈWM®L¶+[dZ%³}Ÿr|•? œLVEIÄ¿Ÿ	ž\íÿ\0‡®\Ý\"\é)…\Ékú‹\Í\ÆòÍ«2EŽ[Z\Ëj\Åð¸mB\åÍ±\r`’\Ç\Ù4´¹0œC\ß&<Š®’„€¿AÉ¸il%£‚4MOM¾*ü	%\ß$´—\\\Ér{­ú&xÁ\ÓG­ž0ó\"ÿ\0øzm\Ñ¥\Øõ›¾ŸŒ÷œô \ÞÎ’–\0\ÕM:)6[ô”+ !Ë¦pªû8c™8\ÃI¯añT\'a\Ån \Ã\ï}<\'\á¼_úž\â\Ñ\'\Ã=&\èƒ\Ú\ì{\r\ßL]§¤\äPA\"¿üB+õƒ\ÊjQØ¹¸#‚\Ë4KQö!Y´Ž\Û¥²6ˆ¦(\ê·\èy\à?ôw\î”Kþ„iÌ¤?´1=}Y»1ö•»OYÑ‚\Û\ï\Æ…W4¾Ã€†«ErV\íP°{˜HSCwŸ€”\Ê$f­\É! Û\ì·\èù\ã¿C\ÉâŠšºG\Úoúb~|ž—a\'Ð·Ñ´œ\ÒÖŠR\é£\×nˆb“L\Ãµ<—¤Ø¾G„[†JO&iJH\'&ÃŽ\æeh±œ\ë~‹›­?ƒµŠ\ÔðFÅ„\ßù\'öR?t$ÕŠ¥^¨÷¾˜»y\ÏM\Ût-7‰@jˆ$‹À[ˆC\×ÉªÐ•Tš#)I$¡(!,JL>\×\Ñó\Âþ\n—³“\ÇP’Ÿf}\Z9hb\àe¼ÿ\0Y—û2e6=_\í~’:q\ë7FWL>£™éµˆÁ\"­`-»dZVF$ÿ\0\Â+\Óò\ns&#\Ö2\'L]E«t@|[boè“ŠŠ\æ \Ä\0‹ó˜\Óa\ÓS~\Ã3#º†–\\´!.U®¤’ªDvT\ìhMY“@¼\ç,’À\'rh|\'¦þ\éjF\Z-¤YÀ¶\Ú@\è#Ô»$À\Ìz,º²\Ç!B*[X cbX¾\Ä×±ö(\î\Í\ÑGr†°\áª0&ô$\âJ”\Ð\â(I_©\ÉE¾™-DIj´7#\ïþ‡eNmK\èi.H\Ê\Z\Ç\ÙXþ\Ïô7i¡Ÿ±ö¥^‚¦\É³\Ñ\"Â³/¤\rT L¨HÌ¥Š\Û;\Ò3±€G\ày–L´\ÏÀ±\èP¿Kõž‡q=MV[‡dW~\Î\Å{qF«Y\ÚÚ‚a\0D$˜gðõ[P–Z¡ö6º89Š?[\ìÈ§a#©ÚC^¡(ZŠš\Â$\Í+)”v9b?\0¶\à‰	“§™>ŠA\ê6{\ÖSÛ³\Â~#\ÖlCIB6?Á\ëöG´\Øð£\ÝlRSj˜f\ÍX¨	\È\è#©3%A(d$”£¦\åÁ*¼6þ‰jbV@±E\ä‰Z’b™hšB\'A$ƒa>Ÿ\ë=\çˆüG¼\ØxHö¸>\Ý!#Ô¡&\Í£\Ølz\Ý\Å)tëŠ»oŽšJAuk\êô=Zw\"\æa!pö5É–6\ÖKf\ÓôP4O\è¬TŽ’O°¬\Äiè‚ª\Äm±\âÿ\0Y\î÷</\â=†\ÆG«\'Û¤$\'\Òú=\Ö\Ä9À˜î²\ã\0±gð\ã¥y\"“NjÌ³BU2hJC\èH”›X8\ÕO)RqøœEJ\ØofHKÁú:p¸[\Ôõ\'w€G‹ýg»\Üñ¿ˆö\nÐ±\í\Ê=\Èö[+ô{­º-„‹q¾¥%à³–\Ä\åH^1ªGH Ž4%!PJ\çqWr7\ÐúP\íž\Ëag\n,z€&r”eœ<¬²Ð’µŸö„$¼Ý“\"ZK*ü!Ð„‡F«\Ù	cn\á`\ÌA®\ÅR²\Ë\×\rÿ\0€H‹#¥,iø;G£†=\Æ\Ä\Òer÷\'¿!¸OøU°¨·Ø—û´2N-·ÀŽ`ºbˆsw±ýóc\ÌG“CI[\åt›^¢QS\Z‚\è’\è\ÇôM“*¢Û²ã’¬jò\î4Bü9^¿\ìc†{°‚\×z4‰®,\"rL\ÔÄµÛ§ÆŸ¢\Ë\ÛúÅ…{I\àÿ\0\ê¶0G³\Ê4þ\É“cÁþ³\Þl_Ó°Á.:]†ù3A¦\Z\èa\Ò\Ý\È	®E\êb¦\'ƒA‡\\~PŸX\Z\\iž3^\\ö¹.K\×c(*q–œ‹xM+žž0\Û%\åDFt~ô?Y\é·<\â=\Ö\Æ!,÷hö[#\Ölxÿ\0\ÖzMŠ/¤µ8–_›F¼\'\ÑV\Ä-¿¶ŽÇ„ƒNi\ZFŽb9ø\ZT\Âlµ²\ß\à™JÛ‹k\â ²n³±t\ìY6L\Ì\Ì:Rkò%r¦\ßEB\Ó\ÏqÒ“Oú]·õžÿ\0sÁþ#\Ýlb%ó?¾\Ù³c\Çþ¾€Xvÿ\0±€_¹5¯÷$ˆ>~…L$4C]f\×80X)¬û‘¡\r(±ºkB\Zˆ·^HKH\á‰n¿¤-™­:K›­‡¯\ØmY+P¥·÷H\nÊ\ì]\Ò\ì?\Õýg·\Üñˆ÷[\ZI\Ç_ûG¶\Øö\Û?õô$Þ•™1(\î\ä€¥4\ßL\ê!_B…©‘±HX$…!qQ\\#üL$\ÚQš«]dƒm·	T¬¶I™À!²2E4a\ÝRC\Ä~³\Û\îx?\ÄD.\'—À‘þ¢Æ™\î¶=6Çƒýg°\ØD‘3\ÏQ	šQ5$‚xV\éþp6|	\"1NE\è\ØšR¤pœˆ\Ö)œ$RªNCT¡\Ôa\à“)@…ajDùQ0$t+þ7E„Q\å\ÑÈ•Vˆ¡\"q\'@\Ü\ÝF\ç\íÁ«\æ¡p^„Uº\îŽDXªƒˆ¢N?\à÷ž\Ü,yA\äH;	œŠ¸jºÐ¬\Ô\Æ>\è´÷¦2RÙ±Þ™d’c\ÜD\ám²\ÏVYzfI@ˆ’ñP’#0\Ö\Âf,|¤hT	+\æ4®Ò¢š`Ç¢Â„p\ÄO²4\Ô\n0Z\ì4\Æ\ÉB]\ÉF:Žá¡´’TÛ±5x‘³«a¨·+·žXY\Ôg444ƒ\Z†=q~\Ðòö_\Ó-Œz\rA1„À-‡&ñ2mÎR\Ë\äu*§J¨Ø¾\'ðS¤\ÍlŸ\rÌ`¢ec\Ù\Ö?n“T“@8ó¸†\î\r\Ì8<\ÜyQ	‚00‘\á\à¢ca“C\Ù\Z·…«µÐ•‰8\Æ\Æ1\â?OdB\Ä \ßQ1Ò­¥†: J\ÕyŽ:Th0o$L\Þ\é2\ë\è4 É˜ôeQ³/„\ÄA.\n+‘­®\nv\n¥	\ÒRuµ­µ‹Ke¸£²+ð3ô£x÷`jb?uP\Ôÿ\0q\Õü]qlz\ì&\'Ì‚J†~bÁð/v\î]-\Þ\"H\èR—`˜…+T†\Îi€¤yˆq8™Føž¦Þ…/\n_”ÿ\0‹­ø±es#X\ÌA¾‚•û(\ZŒ:AŽ\à©\Zœ¤\\2	#Jó\Î	\çÓfÀ\ç£\î9\Ò?L$\Ô=…·\ÏùJ÷ó\Z¸óô5†\èo¨\Ë\à‘­Q \å¾\á.Vµjð4	“t7£!¬¼HZó\äZI#¸É‹q°÷½zY{¿¢ƒ\ïg\×òx\ìz†”»\rÑ—Á1,;tYiHœ$ˆVHÿ\0C[3ù„+•®†«[‘\ÜGW0#&\Ù\Ò\Úñ =´\àz\ÞLÄ§öŒÄ›LnPRÓ»ÿ\0Š#\àzvƒt9L\ØsE(f\Ð!\Zg‚<B{“[³+¡dÇ‹&\Ü(’5¸“\é45¥/€‹\É\Ü\Ù4\É\å1±Ñ™Ã¥\ëT¸lÕ§‡ü^ƒcp?@¢IûGS|’(au¡ô“;øS¡ò-O\ï U²H	\élqF\ãoUCÅ¤·0d=Å¿`_\è[Œ\È\Êh¯\á7”2¯QR¢M‰Q¨\Ås&%\É45?r„‘Ì©\ÌÁ\Äu\\\ZJ\'¡\r\á¥	-\Ëf‘äž—Ð¢ÂŽE¤\è\É\È\âŒ7	ÿ\0\ê7\Ò@b&rÿ\0ƒ¥\îÈ¤¡B\àI½\È\à*\ì\Ì\ïóðNÅ‰H®ÃŠ,³UYMI´¬g\Ð\Öd\Älk \îJL–†¢	”ô-\ÊLT4\íü\Çý‰d<f\É.\ä/\Ør\ê\Ì;“\Å\Ç3\È\ì\\”S#l\\$±\ìÏ„<A¦“¹yI)C\Øjþ‚e`iÉ©P©™\ÌÐŽ\Â\È\ÄM˜y\Ä,¿e\Ña÷	·&$MðB¡ùl·–Bÿ\0¢-ˆöF˜T&óor€ \Ë5Š¶\ç,¬Ž*Ÿi\å\æ„\ß`5hø\ró\"hž¤öC§\Õ\àl}(\r,‹\Ý$M\"	—‘‹j[‹pCSþ””\Ñ\Ðö§	\É\'C¹`,9<\Âþº\É$’OI¢c¡¾Q°òwkÒˆ²q›žXõ;\rCg%\Ùº\'#ƒÈ¹\'¹\rh\è¬D	švb„ºOø|tO¤Æ¥‰¦Õ´M\ë\Ò	4\Õôò\é7-·\É3\Úk’¤\Ú)+¢´–\Äðù¸»JšÍŒ•†A¡ò\"\êš’\ßÀ\ê—\\@i\Z‘D“£¸÷žb\Ó\é§MZH;}‰•õ_…*\\YŒÿ\0\Z”É¡vL‘²\íl‰o—\Üx±:(I\êO\Z¡±ž\Ã[Àn${\rrPÙ¼\Õ;Tú\'®§\ÇD\ÒN‡\Z(\"_\é$\Ô\nt!nvb\åBZ\î<\æz\ÌZ“ºK\ÜN	((\Þb\ÈJ—ô¸‡ðh’jH\æ\ËÀ©Ø ¤\è.ÿ\0¢£#.—Da)\r;o¨AžP\Åð8\Òh¦]þxW1ª¤\Ëÿ\0 \ém\ÒXr‰ „ô$»šÜ’¦VJ4¡-\î\ÄþDL-”›7\ÇœØ¹\Ôiv¡\ï;®î²°\r6ø‡:\Ü%À\í\Û\rŽZ	°³$\ï’ú\Û5µ*òe>cN—d“£\æudW—\Ê!lD5*¯;|&%¦\ëTš¦hÉ™–KOí‘´§6Bm¿‚·>OžŠ5”o–„=mY2ynV\é…Ù±%!`Y‘²ô´Xmj\á\è&ÁIlXµTV–\ávXô2&³ñr\àt‰_\Ý\î?¶\êM»BY\Ç\å8;ôWu\Ôÿ\0†„ü…\ä)¼›*I1¡\Ù$\Éež¢Y·\É.¼¤3ó+\Ö[q\é\Ì\Ö\Ò\é­\å0\\–À\Ô6œ…i±8\Øú9%C¢’\\:È—IÂ¾ˆj±\Ö\Ô[¹,\Ë\éP%\Í3\à&\ÉNÝº$\áQ\í±,Aª¹&r\ß‹\n\ÐS\ÎvRV\"òŽ\êPÍ¹gÿ\Ú\0\0\0\0\0\0ÿ\0\íþ‚\"Á3Dœÿ\0=cñ\ï\å°(\ÕD+EŒq‡eC’÷‹}I\áqq\ne¼÷eÁ|ð±	\Ï\" c\Æ*¾$!\æº\Í:2\ÅH9…j\Î7w€¤Žk*\ÔQGž\íª€=!U[\ÄB*XI[?p\Ï,úI\\u6}Ý«ýC]÷O»»²\ÛmQÁžÿ\0\èŒˆmÀ!|§„o(‘?\Ã\ÙwD#öe’\ÄD‘\ì5\Æ6ÁT‰G²\ÄUþž\'Û¡\'w\î4¡’h×ª3ûÊ¼Ea Ü±N\Î˜t\×aŽA.WüP$¥„·¬A[!\rxwS\"¢Xˆ³g³É¤™AM\ÚÀ€&\Øi>4-\"Z\è\åYSt\ï½I5G¹%HSD\æg·Äªe¦I\Â\Û´ŒD\Ô}B00—Hÿ\Ä\0 \0\0\0\0\0\0\0\0!1A aqQ±ÿ\Ú\0?\Î[~\áeùuù»~\n¤¶¤6\\@…µjÕ¢Ô»\ìº\Èì³Ž[þ\Éö\í\ì\à\Û,\Ø#8öõ!\Ü`ašýY<ý\í ™þB\ït\ÖÁE÷\'\Øÿ\0³Å¶\ÞGGþxb^\ç©j.Ÿõ-ly \Ç\\fÊ¶ùþqwû˜0\ì\Çpù&\Ó\Ûf7¨\Ö\í;;ž\ä\î\ëk\äÇ³2%cö\Ü%Ž£\Üb‹\ì\rù\Öö\Ë\ä\êÁK»l\çN\ßE†@`*\Z»ò]ö\í\Ã\Ü*\È\'Lñ[¾C\Þ\0Yi?¥¹\ír÷z^\Ùu\ã\ïolz·¹kd‹rW¾Ë¯—¶i†]\ïpõ\ä7¶\é=O¶;‡Ogr¾\í¨\ê}—p„t>\ÅÆ¸—gP\Æ;œo8Þ±Íµ\ÚÆ¥\Üó¶ûK`åƒ°`×®e÷/\íz‹O!\Ñ[¡wˆòp±!;ö-\Ð\âqS\ÛE\××Œƒ¦3\í‘\Ó.­\è\È%\ä.¦(l9/pðb}Ÿ\\ö_œ6\ä\Ë&™\"tÌ¸’˜g\çGq¡Àðõò{Àj¾<\ÏO/\ã\ç\Ã\Ë2w°@þ»\ÇðÂœ—©:\ËôF9þG\éj\ëÕ»=^c^\ÇW¶^X±`\áœ;6\'¶ð²,ß¿–A\ÆY—ïŒ³\çr\Z\ÂM³­µ¡	r\áÂ´ƒ¦Î¶GoxaKms-maN5»ùgQ\æs\Ýÿ\Ä\0$\0\0\0\0\0\0\0\0\0\01!A qQa±0‘¡Áðÿ\Ú\0?^úòC\ãÁ•‘±¤DALF‡\ã±\Ðø\ÃÔ˜³bi\èN\è~P„[\î”uÐ¶>#¿$ñ:¯±ðš_\"ð/ƒLL-f½~ƒljýŸ\Ô\ë\ìX›½Ÿ„z\É\á\Û\Øö%‹\è\î\Zþ_bo\Ùø¬L$<\"ˆ7Æ¤¿§òW)\Ä\ÒihlMÁ[\âˆ\ÐF†2‰1(‡ü¡¥6\ÐÄ¡\É&–É¦\Ú8\ép9\"v:øp=o’\nS¦=ƒyþ~ø	p±š\'Hn°\ë4ð ´°‡\à…£t$);£P\Ô\Õ\Ófð:i¥Ë§b\Z\ãƒB\\Ž­\rZÁ¯~ah{\×	pB£Y¨Nymö%‡˜42gCd†µ\ì„\ntQ“÷*m>\\k-x1bp™GA\á•\Ö;b\Ã$…±4õ†#®žÙ¶\Z»‡\ÃQheYhf\ÃDò¶‡†h5C\Ð\Þ641lJ¦Vò\ÎH€\ë(lf\ØB\Ö41±\rÀøB”£(\ØÆŽ5\ÃE…\ÞvS+)JQ¼R—Ê—\Åþ£p±\Âó\Ø\ÒR¸ª6^R/0ª\Ï&®>\ÈDDñ½\âxÿ\Ä\0\'\0\0\0\0\0!1AQaq‘¡±Áð\Ñ\á ñÿ\Ú\0\0?Œ\æ\ê·Ž°Á‹ ‡Yp\Õ -K=1¬$Š£Ç¬˜ÀˆŠ\ÉgqÀ$`…\×X€aw\Ã\rs\Îš¼_¥O8eô\06¹mn\0ƒ\ß$\Ê`(\È\Èÿ\0\Èˆ¢bg¤¦“ôa\çGJ\ä1õLd\ï\ß\r\æ±žöcI\0@t¦L¸ö]OŽp(Y[6\Û\É¹Áh½\é\ã„\Û\ÃzÇ¡°¬ô\Þ\r\r—‘žÛ˜B¡pR”\êžq¢lE\ëµÁ†Õ´w\ë\ÊT P…±=±‚ eJk¤_|@\Úð¸L\0Lµ¨,YU¦:Àò>¸c(\ëBP´ML@P@Å Ó“h\r\Õ\ÞEÙ„\é74\â_{À<µƒ\Å4…6k&\ÓŽÇ¦ 7\ç¸“«‘y²\à,C!þƒ\Ã|\âi*Hü\á \Ùeao?\\\Þ1…\Ï\×,\Îòº\ËbÚˆ\Þ\Î~øJ\0õ\éœ \Ç>—\Z²\î‘PÝ›~\Ô\ãe?*\Íò\n‚Um5AxN	ƒ\É‚‰%PŠQ-k^›8Z¯—¼ªFªIg­n\ØS]6\å‚\Z\æ\0d ›]x¥“k	M€¦ 2/H.••F…¶\æôQQ\Z»•WE©m‰\êm5®Æ­Ád\nh\É%kjQ˜l]\ì\n\ä3XII¥©¢c]D„nXµ­)€VV-0¦J¦\Æ-K“¾\Z‰ ºób@ðñŽ\Z\äÝ«‹ó\Þû\á¦þ¹K¹N¾ø\ë0´^vz\ãg­3\éfÄ‹„´ž. Du\Æ ‡F¨ö˜\âÛ¢ê—„\Å\0*‡\ã%v„)7ƒbúþ2\Éé€®GøŒŒŒŒŸ\\IŽ%\é¦ huö\Ê)¬|\àœ\\\ÚB¡\ç5o—#\Æ&qˆ\îûdG®OSÌš¤ô»˜®¢¨ysˆ8€7I\Ï.:Ž«ó{‰ŒAÜœ\Õ:Í‡@œq\Ó\Î\Ý·‡”·£Ï«\Ö{ý~ð6\ë=™^3Ùž\Ì>ËŒ®.÷‰»\ãBqž\ÌÛ®1ô\ãZŠs\êx\Â*|\æŠk\Ó\Æ¡³Rk!¿“ª-tw‡l#£+\Ó+ü|2ö\É&\Åò5´½õ@U\ë\Õ\ÂY\0¢\êúúñ	\Ø\ë­\"(ñ\é<\á¡ \í¯\ÛZ\ã8\ZÓ¼‘q¨b Šr#7\ï†r\0.ü8vUwˆ•žU$õ\Í}À_`ÛŒCb©4—\Zd@Ç¤ß¾r-Ž½Uù` ¬J\"‰\×Xðý¿Àñq±/Š\è/ª`i\Òo\ï\0Q}-Ä©h ªº m}²M\ë¿*€|\ãQ5v.%\Ä[–;¿|‰\×\Æü”)€^6\à°¯\á\Êj!\Òò½op6»$\âN±ˆ\n\äebiøõ\É  ˆ\ßSy¸6™·z\Ê&4\í\'XÀø:KTÞ†\ä¾\nÄŒ2\n8M‰qøo‘(Q½´^œ\áSLH·µcc %6ö\èn,‘@p-O+†n\0ž\Ð?g\Õõr*.Yó¹\Ûd$\çw¡uf’no\à§B‚@‡\×!¨m¸¬t°\îSž€\Ãb®†„A\×f]F\Â+§nU\æ†\ÞU \ZU\Ù\Úe\ì\á\Ð¨aÕb8A™\"\îôs“\ã&L™0HN\nü\æ\æ\n†3\ï1z¨€À\Ôgg\ZùÀ\åj\ÕCJ.Õ€\í\ßxÀA\Ð[ø1)’Hÿ\0L³‚	A`x\ËÙ“¾ ¯ð\ï‚ns\×	9\îT€®;\nþO\×3\ïpO\í\ß6\Ã\Ãg¹?½a‡\Çýr†\ãxX\Ô\ÇP\n\É^L\"4O8Å \Æ1€¾ø\É\É\çx\ÒG\Ü9\ÈY\é‹ò\åy~™AAÖ¹Â¦kkg\ZrEt·^Ë„QMÀ^7…‘\0\"\Þq\Õ(Žñ\ÑY\"›/g#ˆ¢¤Iž2C:ñ\ÎóŽÂ¥\×jda€¢ºM~\×Œ\à	\àý¼ø9\ç%\Íÿ\0‡Œ\"u\Þßœ¯®²\0.ñ‘0\Ø:Ñ¬0–IÛ…‹u=ªõCëˆúe­lAPZ6\ä„JŠ3!joCóŽð¯\Í\ÇJò \îÿ\0\\‰Iyž\Ær\Z57ŒQD\ç5V¡\Ê\à•\Z1_L[<ÿ\0’\Ôó–	\ã-\É\\k0Žü~AàªƒHO\ÜÁLƒoÿ\0~“\é\æJ¿¼\Ð¿NEHˆe±uw„\×\ÃlP\Ùz¢P”þbM`6\Ú\Ü#€­?÷\"\Ä\Ýrƒ1}q6k$&\0­—\Îi\Éôd¡[\0\ëœÛ€¯PqT—b›·\×\Û6u\rŒox®’6+…5 &> ¨o\Ç\Î)]\è\Û7;3S¼’‡•\ç(v™K~±‚y\\û8‹RšK>ø\'o\\w“\Ùõ\à\r)Ã™.”\ßtsÿ\0Ž-lˆ`×€†eRM9…bôŽ\ÇLg¹4^g\ç&•ˆ\"\Í}1($Ä¦Šw\Þ\rYôÂ”\Z;^°R¨p\ëôûX ^bJ½˜nd\Ö\0n„þ2p\ä¿A\Öm$.\åN=r\Û\è*ý\çÇ¦Â¶„ÔŽwÉ‚Mc‘œi\Ã¢\ç¶û?–4ýw\áô}1*\Æ	J\Z@\ç\ât[\ßnn³K\Æ|%lþ¦C\Î|˜\n\íÌ¬\ËðÍ¸9±€\×óù\Îg\ã@‡8\éªõ\ï‘2&:\n\Ú\nôa-Žmj+dô\ËB/i\Ñ\Êý0½¤y¿—\×	 È•Ÿƒ€:0\Ø\Z^GO®\ÓI¿\'Œ\ÑB(¨Y\ç8}¯ñ²vU\âwÉŸ7¶Ö—\nõ\Å÷À\àƒLj@ù¼*\Ð\äQœ*4\È\Ü*G$f\Ýö\â4U¥zò°k@Z|\âh®²°£¢\åS!Œò€k\Ãð\Ç[\ÔüA\Ñ\Ãg¶4¸ÙŒ\æÈ¦³‰Š\'9¡«\ßn{L}•\ßWÿ\00¨Y]ýŒm¥`‰Ç©‚Žµ\Û\ïúÆ\âA\ÐzÎ¾qG%G\ß\Ó¦š¿7Åª6°]LŸ^\0\á\Þ%5\ã|@F\åZ9•\å\Åu`@Ki‚ˆ¥òL\"·,.\Ô+6‰{\\`¶´l\0X-U\ãkŽ­BB¢0Mù\Ê\Ó)\Å%WCSŸ®7D€¦¼\à\æ5šA5}q”\ê•:[;ó‚T\Òqwy¹¸ƒw[d¨%\Ô\á*@Î¢ŽŠ©]½µ^2h’Œ\rJ:±°h*\Ù`l÷Ž\nªBP€V¾ö\äÂ\Û6b‰}ôaQ¨Œp®\é\ç.Î³Q\rˆû\ä\ÐpKþEGó•ü\à$)ðû†”Z¿¬6\'<\í\Ê;ó;Ã´6òöùû\à*µ&º˜’6…§¾u†ÿ\0ƒ%,MñŽ\ÕÆ<r#\Æ&#”¢œƒÁ†À•J	”I…UÀh£(\éÆ¨rŒbœ#\ÏxEz‘Ù¯¶emaô\Éx´\"%T4³N¥>Œ;»Ú¡z´35šz¯Œ O\'iˆw”zT¸K¤T-\ZS„yÀp‡\ÛXÐ£>4S-D­{\ï\Z5\nY\çŒV\Â\ßdxÇ®|°ý*\'¶°_¢\ßÖ©ú\É\é‘\ãQ—¡¼a9\0¦ýf°\nðpk`%ñ“<k‹.Y\Åq¶\Ãe³|Ë‚WL7BY6[†PŸõ\æ\Æ4\ç0¿õ\à¶-Ã‰\ØþŒ½qƒo|\Ñ/<hQ/r\å8Œ+Ho+Ï¦O\ÏZQQ:Bca+%T\èZœ&ñõ\ÍðÁ@-°Y\ÆË—$šIs\Å\ã¼\æu´\Ñ<\á:\á³\Z\"7\çLBI-G\Ù\Í)¯þ\är\à_—\"\Ð ª–Àò\Ü.€\rX¼™1¨U{/»	†‹\æ8\ÃR\Ù\ÖzùLƒ\Ê\ãÌƒ€d\Å\×({Mgöü3“†&ÿ\0\àüÁ\'ýø7\ÏW=¿‡|S@Ž\î±i1\Ò\Ì\ì–aÀ\Ý\ã›\Ã\Ór«\áˆ\'\Ë\ã–2E^P8Ë¢{¸C\Ä:§vaE“§&“…ãœž\ï^ùO$=ò3\Ñù\ÆH¼­\Ë\\[Â°\rÃš\à”T÷D»\ìµE<…\Æ!$•¢¶ò\\šÓªÁ^Nuq\Ãd(V×šgc\Ö\"S\0ñõY¤A\Z8O<Z\Åñ‚6¥„\ä{<zc\Ûý\ÆC†FùLœ@þ¯Óý<{Š°\ãŽ0mõbU˜þü¼xÅŒ›\Ä%¹\ìÇµÖ†{ð\è\0>ºÆ‰F\Ï\Ñpö¸I\çn\"ÿ\0=3‰ºi÷\Þ\Õ5;À&C\Ó!Š·Ê¸oöEˆ,&\ØjsV\êc\Ü\Ä8Á¬¢i&\ä\è\\²Ž	­ˆð4È¤%)Dzx\×Œ2E@HÂŠ@\Ò]\Í\â3uJX6JŸXŽH.by€\ë!wOœ©\ÃzuŒ&­V.\âkC÷\É\×ý<Fý¯<6÷|ò\ÓŠ¯¦6ÐŠ\Æ3\äñ€•nß¯ J\Ò@\Ì£\áƒCº}X[$\ÒC\ÏX\ÉF\Æö?¼Eû‡>o\ï\\¯¾œ\Ö\êŸ&%\é»\ß[À:À2Â±»\á\ï.HSSš\Òs²\ïh2”6\Ø€\Éq‚Ô¢*SvžL\Ö	+ðü`7z\ævMmN0\\\è^\"‡fù.JTR-ó‰—›ûüœx›¼\Ò\ØÁBšG™\ä\á{\ç\êa\ëý[\áY?_\å\ß pk\ãOk®b\í\Ê	nÿ\0?%\é}8sø>¨ZŸ™Š€r]\à\'òz\Z‹´>Ã²\ë7®šô\\øt\à…ô&øbu:_°\æÕœ\ïm\Éÿ\0À›ýN\çñ‘¨-o—\\U%\Úw¹ù\É—ýgò|3P·¼\Z<~nD$\n&\Ñ<\â6\áû\å\éß¢,bF=`0Y5I³A\n§y\í˜P€\rDñ„sÄ…„\0¯\ê¸\\<©D­Š®š»\ÂÇ–ß£4À\ÐÂ¥u8®¢\áõ‚üg5\ØY\î\æ0\æ\ÎðÁ:°}˜)Œ)\Æ1\'a3\ç(¶zGûLÕ¹œ¿\âL)Q\0\å\ÖT›\Ü\âkyEù¸f\ß? µ\ÎGó\ïm\çxóšˆ2+BðL\Ñ\ÎE@€€fŽñŸÎ¼~~4‰\ÚN1„5Vóº\n¾0‘KB*P]\ÊY\Õr(\ÂTû \Ï\éøf¦GCóõ\Íü“,j’9ôp\Äqa\Æýñ˜\\“\0Ù—{Á0\Ðr[H\Ë8¨ÿ\0¸u„\Èyþ\Ñ\áEPFsŠ”|NF»ZT2ºd[ @JŸ8õy\Õ\éU\Ûëƒ¼ ¤;.\Ý\Óm\ßa1-AŸ|H\à„¢5û\Ï\çø\ã‘*nž˜.K\rCŸp@ºs ~\Þ|¹ÿ\0\Ï>\ßõyk¼\ì¢:ð\Ý\Þo>~ðü1\Ç\à0õº]\ãzøq\Ö\Ò_3\Î!\Îjc7„\0„Sw\Æ*\'KœSy3e\ì)Ub¨\Z~1Ž›h:\r\Z£4 \ì¸Y)	\r¢-ƒh\"•.\Û0&\ÊCBó\åÙ‰DRÚ›E­ª\íôH“\"\"‘¡Ûª\0ó—\0‰UÚŸ&³eIXKË´Ûº1“¡\0\ØÊžÙ¿«øyI@RC\'\Ë\Ö@©–…\Ï\å\ç¬\çùàº©Á…f¢ø\Ì\ãøü¯ó\ßöü0´;Ï«~‹ƒQYOM8w¿w™²y6|a.„K\çfheÛ»—‚«pú±ƒÚ°iÚ½Yu§œ\n1l^\Z °SÐ‚\ZÌŒD8@U£€ï€‹J69€:«4!TV¯\Æm\Ô\ÂöXQ<\Æó\í†@\ï\Þ7¢–*¥jñ,7É\ÐLCfQˆý9X\Êxñø}ò \n^÷\ãöbñx*Ï—?\åù\æ‡\Èn}3t€(øtuüþV™\è?\Ì1\È\à/×ŒA+Ff¹8së‚¢ß ÿ\0¸	F\Ø\â[Dù˜\0MƒÌ¦ó¿YAM\ïs‰”ŽX5S‡Q\r\ÃÝ”zØ¨(£I\ÐJLZG3œ#0‚ :P-\â^±K2\ÈP\n\é²\ï\Î\Z’†„\0¢\é\Ùq`` žvz.VTÒŽ•M\Ï­H…Trº-{2\Ê\Ô@k±\'?#\Ã-E-\Æ:K³X€Fzs\Ûû7\ÍÏ‡O®\ËóÄ„¾1iI\çÉ—þ,þ_–\'I\êgüÍ£ýù\Ç9†2þ~	^\Ãý#ú\Ça_I“\ZÁ\ã,\ê&\äð\Ï\ÞA:=2ÙŸ\ÝdÁ €\Z¾´À-–\0¬ñùÀ1T\ã]\îû\â\ÝâŠ\Z!Ï¶(‰\Æ*r:ºµ,h¹·4¡m\ÛE\çñ\ã)&\ãòœk\nL(\n#]q\å\ÊdR\Z\è¬\Ã 4zöqŒ[ºó mxUÞ¢LyÂº€_\'OF¬œ\á7\å\ïý\Û\ã‹\nE\ÍG\áQ~øW c\Î:>š+öÀ>—\àfŸ×¶->pø¿\Ìa1A,\ç\×$Ð’…\rg3c~‰Žý\Ï\ëbZ\ær˜BÀ^Š§¾C——\æG\ã	˜\Z6\"\Ó»\Çò+@ï¿¶]\ß\âO¥qx\0A‰\Zo\Í!”lP\0¡,š\ëßŒ¤¢š€³sWX\ç(‚Ô¶KÀ=œ¸Y@N%qó3ºt~v\ä­ð‰\\E$ÆC‘š^1ù†#P€®Z)A}­Z‹\ÎT\ì#\0Àu„`\Ï\"R¡™L+Qk¤Ce\ÖQCA@x \ç7AA\Ú\Æi\ëpb–@W(ö°§\ç Õ²/¶\ì„4\0h\rR6þ\Ç7j£\ÜO\Þ$”\ì¼\Ô8½f\Ù\Â”\Æ,š>\Î+\Ï\Û3M\çK†Yƒ\Ö!\Þ\r\0\Ý^=°ª@ |ºÃ„œ0À6A{x\ãX!†£k3o0¡`\î\íÛ€m€{¼£û(\à.\ÉÞ®TKq‘\Ç\äüe\Ýj\\yrLÎ´\Z\ìrü~¼CÈœ\æ\Þqƒ\În~G5yQ\ÂýY%\Ä&ñLð¾¯#öqøùfVšLˆm\ÃH£=\Äü\áXðûˆOµ\É\é€F\Ðg¥1\è‚:\ç¢CG½ñ\íƒ>xa*4r¸.§m\êº\ã	Û¬DˆÀf‚—~\î\ÜO“¼šª‰(÷\ã\ÜKd‘\'Ž4\ãI-¬\ã\ã\Z]\Ó\é\èH\nýŒW¢•±t<	‚4uhC\Å+\ê˜%\ÉõÅ”†ð\àV\0ž\Øijo\ÛU\Ý\ë&½ðj\ç\Å\Çlû9Ðœ¿a›78syr‘ƒ;\Õy\Æl}3Gþä’µ-pº\Óu\Ì\ã\n:I\Ú |\ãº.ÁX-\ãE|œ\äT(‘V{`’Ht\ï—\Èz\ç6\nžfZÉ»ý\ÃX\ÐD¼J\\v\\¡CL¿38\äTº\æ>ž|c¼d—\"œeœ\á¥H\Ó\Ô\ØsX7@&s?x€ð§\ß7\'®2|Œq¾œ${Š`ñ\ï}m±‘cl{\àÁ\á\é‹/s8P¸\ã\Ú}·’÷\íšg…0SU«CƒoƒŒ\nctui7J\Ü&K½W\á\ã\Æ}KXž‰\ã\Â\å°\Þ•ô\Åf‰¨]ûœ”\Ý ‡L2žguøcxòN\ÌkP\0ô\Ý<\ê\à’Ð¡W\Ê<˜\Ã\0	\"u\'[\Í^…Bªðµzb2\ÒÁ¼¯\Æ\\\îkp!§aŽÈ«\Ðiö\Óé›¢\Þm·Œ²ñûc#\Õýb¾;q“s$ ý²,ó8&\Ãô\\š öA\Æ¼°”Q›\ÇQù\Ép¢8:\ç\n²\Ðý®-–Q”Œ¼SO“7ˆ \"5(õË³#¸	!Þ–¶ú\å†P¤a®\Ê\ï\Æù\è\á&îŸ\Ç?¿\\U8ú˜kš÷a²\ìL]ü•\î3qJmðC\ë”\Íf³\ë\Å›·Êš_&}qŒ\'\ÇïŠ´¢—\Ó$•\Õ\Æ%\ÍoŠ_\ÎsÝ‡\í=\ê¯\ï;ûñ\Ã6\ë\íƒ*ýžg\ß~¡\È\ÆA$ø2ÁC]®\ât!Ø½ùñ¿›‹\Ý\Æ/;\Ã\êcD5¯=¶!POD\Íj\Øðdü¡ûs\êa\éi0B}1\Çî¯‚þ±©«gµUû¿ü‰\Ö2ut?J|\ãt³³n1B³O\ÛGW CoG\å\Å_ŠS$©øA\Éº_e?YPñwjDýñT6\ÃÕ¾cø\ã\Å_\Þs\â€Oc°+Q\ÙôÂ’T×®\0X\" õ^¿9m\\ƒFšUÙ¾±M\Ü÷\á>¼\Ì\'¡’%\'Œ»±œó£ú\Çõ°Vð\ß`ý\ç\Ú\â9È¿aÿ\0\éy=‚~ð\ÑH‰”c½\æ’<Ÿ\Æj¯W\ï›\Ùfþm\Åh\è`¬\æý\Ò~³\Ìû\ï5>¹j\Æ-¨ò²\Å%.Ü¤½u…	£¸ð¼.k(C«Œ\É\Z\r\ï\Ó¶.\'?w\ÔZ•¬q\ZˆrÐ—|\ë,p@#‘yrUðò\ä¦ù\Îk\Ôþ¸iö\ÅÁQyš}\ßþ¨,\Óõfl\ÛQ2\é	~œ\Ú/#ŠL\Ô¨×¾s)ˆ§e$*(¥;\ëŒq\Ø2Î¬]\à\Z\ã\Ó7\Ð\Ô\à†=‘Òœ\Ï8&W´&\\„I\è_\Æ\éEŸO5\Å.®”m\'®T6a%S€x?®.è«²÷:_l…iZ@\ÔMù}÷ˆ\Õ°\ã\Ò\ë4/£€— ¸ÿ\0™/†\È\äñ\Ò89\nZ\è\Äu\à¼\ëþ%½\ÞðÆ‡\Ô1J\Ýó‹\Þ`\ßJ>ù9ùO¶63\×õ„M„Oûö\É=•GN\Ôõ\ëX0A\Z(\êi\ç$\rB¿/ö°Ê®„xÛ¬‰°447z\ÞBŠ&ª3¼·w\èe¨V\Ù\èy\Ët\r¼¡6—¿\Þ†ËºUô½b–\ì+Bö¿¬\Z0 œ‡|\Ñ\ä(õ\îaD°/¶\ã9¯ƒô\ÝXÙ—4\âöò}\æ#H(X#øÿ\0\çN­M\Z¿C\ë\ï2—\èŸ|\Ü9—Ó¼¹\Î@þº\Æ0(7Ù„g$\Ó\Â#ú\Ä‰A\Óc\ï”@r\Ç]s\ÈMq\Î<E@j\×\Îþ>˜\íµ\0¨x\âž¸q¸\0^\åp¯_C# 6ª]\á@nÝ§¯\ãƒ{*\Ýz\âd3*¡¢	=òDw\Ó^x\Þ¸D/œD\Æ\\yAo_\Ö¦\×\í.L—7g[û\á“)‰Z\ÝM›=°h?\êz…¢\0¾+’:\ÝOhü&\åN\Ü%®\Å.h,\ÍN€\Í\âó•\ì~Ù«BD¹6`¨‰û1”žs\Ú\0 .%º€\Þl^¹óÁš\âØ®û¿œ9!]#ñ=ð/¹\ÍwŒ›0€³\Õót*‚ù\Ö\0^\Ç‰š*@\â.™€?\róq·m\ÏF•y ~²üš\Ã\à\Ü<\Ì4=Q#§÷0\à¾?\Û\n@{&þ²d\Ð\0ûf®\Ó\ß6VðŸJžL¢o\×9…g°O¤\ÆpŠ*˜ª\"š\á\ëŠF­\ë,¤£©)	 ¤ oZÎ¨Q\"5]|W:15\0\ÉZ:\ÇjW@\Í5@Ž°3³l&^;b‚\ÏLŒƒkKq\ë\Ó\Þ6\íWËŽ\0\Ù\ÌÄŒ\Óû¬ü\"\Þ¤c•@	w­üsñÿ\0ÁžZ‹\ÄEýb¬x°l\ÃE\è“F\'¶ð\ÙRx_¾\"¯k\ß\Î2hz«öÁP£`²Ç¯ý\ÇR’µ<¾qPò^1…¡z\ãN÷­«š5·C?x\0\×;\ä~™l dÿ\0ô0B²¡r˜ kósP}0“²\ëžñ\âžUºôv˜\n&ªO\Ü=:\Õ\ËÕ˜9\"¬\ãòúaB=\Þ\ç~\ÇX‚\r•õ\äøÁó`’{c™Š\ny¦:[g8kJõ¿ð»·,\à?÷*Òœa£a\í€\ÑO:ÁThn®4h\r\Îÿ\0¸Çˆ…:v·³\ÐEÇº¯-k …\'k.ùLL¦\áÎ‡·»\àË C°\àõ\ç\"\èh¼˜TUþO¦\0°l\×oP)|ýðñ\Ðc$i¡ß®i_b§¼\ç\×\r9­,‡GŠR¡w\Æ4”\ïf^õß‰›×œ\nò\å0\Öõ³\Äp3\0&µ\ïš?:\Þ\è§^pIBÍŽ0”M8/&‘ûÿ\0\ïø@\Í\ë\çr\ã8-MœnfV\Ç/\ÆhxÁB¶[\àz\0–\Øó\ï\ÎŽ‹µ\Üò®[¢\ÐMšôü\à­eZ24®½GóŒ,I´\á9\r\à2€P€¡]»û¸\à\×1” 5\âØ£+\à§=\â\ÉD\æCE=÷\ÎA\ï)=\ã±ÇdMs\ç\Î\Ú\çj»\ïo^<\å›õ1Dp}ð¶\ì.\É:w†\ã§@s\Í\Ä×ªåŒ­ð\ëð\å	‘G‚x\ÊTŠ³t_®²U#\'“\×,mƒ±§\×\0ñV@¤¿†\Ê\ÛÏžüdL\å\Ól@º•Ö¨\êyÈ‰F@:úw“À\àg÷¾ Œ&‹¡b7\àøË´Y\Õòb\0•‰\ç5\Ûº\È\È%:AböÈž\ÄñÕ¼a<«øÃ¥\Ñ\Û0.\ÌH¥(\Ç9!\ÅÍ‰e\Î\Z\ëW”ˆi±¾™@/\r”\ç\Óv…}!¬²€6H¿nƒl\Ð\\4tŒûLv®j@JU]\'¶œó\Ö-H/#œ„°…\Ø>pPŠ\Õ>˜”Žõ³\Ï^pUJ±.\Ã\ÐÀ\nh’S¦uõ\ÊRa\\.\ÓT2§óñ‰\Ý0\nGzP›\Ü9\Ë(&\Æ\"19\ÒxÀ*”Q„x\ß}\ä„RAf\Úo\ã[7†UhQôC^\Ù{!wvK÷†\"¨ Bw%¯Ž±‹R½·6UO‡œx6];0Š‚Î—­öa\n\Ö~r4–:S‹\ã:¼\à%€.ôñ\Æ)¨´¹d1[¯¦Fhºô¼\æ¤JFH>t7]k\ß\Ø;)Nr»šŸ\\sƒŽp\ÓH\Í\Ë\ã\ÓÖˆ@A\æþ|\à$bžv\â\ÐGžž/a´6À;õþ\ã\Z\Ø^¦@Cg^?8\0\Ð ý\×\Û!vh)³\Öò³R…¬y§!\ç\×mHkO\ç\" E•a§ˆš¿÷D+Ó¦1p–ù{\âC\×^±„E\Ò!~¦yx\È‘òz}peyR\'\Æ ^Ó©„HUv°\ãw—ƒW*\Ùó\ã\0€Í¶\Ë0R ›\Íõ6†þ¹¹º¡Y\ÜsŒ\ÝDFÿ\0\ÌÙ€if€)T\r]¹JZ]¾}q\ÙÀzùÿ\0\n&ô÷\çBƒ°õù1SWoŒŠ\Ò\ÞP/\ß\0=¡\ß,(q|oŒ\Ñr\":\çF¼\í|\â‰-4X‹\Øb¡\r66{øÀ´AV®’k\çAv\É;\È0vûÿ\0ûŽ\" \"\nƒM\Ê|`\é›¹íˆŸò\ÄI‚h£¿lL4oˆÀF/G.\n5Vl\Þ5H¯øÛª³jll\å¼}c\é…A¢i²wŒžYI¡K§< ©Ó„7::\á·S4·&Œ[y4”\Ó†õERt©\ÈY¼!\Â3o\Zµaª‡y__Â™a§LS•cjZ\êU“]—Š‚qœ\Ë	¶õ®3S!±Â‡l65\Ë\èGvG“\Ý\Þx\Ëq¾•ÁµU‰=N¢(”CSbåº\æ‘`\Åa7«2¸¸g€&˜·rº(6#J\"uÂ´˜\Ì\×q\niµ¼Fðx\à\Ñ+¨=\Ò\çC(\Å\Ðòsí¥N‹\\\0\Îwe\Ê2ˆ54w\ç§X„¤\àô÷\È	±\ä?8ÀÀ\íŠr{e}.Zbº@…x?®*@¤-|zcDÞ€[º®µxµ\ÃP—k\rkÿ\0}pÒ•aF\éP¼¡ªÇ¾ €\"\"lGc©.*6Ô•š\Û\n\íaVb\äD 9ZGL\Ù\ß\"º\\\ÑB\0º\0:\ï\Z ´Ô‘$µ·q1¡8’:-‡J\Zô<a\ä,Ç‰¼“(X8i®1\×f\êý­Úµ\\M\è$¨J%TÝ¯–ª«UU÷öÁˆ šS\Îa\"A@uP¨L#ð‚XF(\Í-|.\\¥„¥[%¶\ëE\ÖV\n\ÔK @,¡¬¼u \0ðö’·†«•ôÄ¨©Z·Ác\êùqŒ`¸P6\0o\Æo¨wu\ZL‚:²;õø¸ot\Ê\à\ì…òùù\Æ8$U^ƒþ\àIQh\àp\04úßŒiJ¾cöÃƒq(^1#\Æ\r1 Hûùr>¸7\Ï\ë(²]³Ô´œ\åŠP¢±I\ë\Ï\Æ0\"\íŽ|oóþC\Ïó)º\Üq\"’\Ù/S\Ç\ïb\0Bz\ßv\ã[k‘\ë<z\àa	§Šs„ô½À@	\Â[¿’\â\èac%Á¤Fž˜\Ú)†½¤^¾ø ‹ƒ\ä.¼ñÿ\0\æ#©\ÅS¶r\ÏLu@iBP—\é‘-£¿¦„+O|R\ÃÓŒ^€¼\È}Œÿ\Ù','canva-white-bold-text-thriller-mystery-book-cover-CejxvxrTCyg.jpg','image/jpeg',_binary '\0'),(328,'The Lord of the Rings: The classic fantasy masterpiece',' J. R. R. Tolkien',12,20,'All three parts of the epic masterpiece The Lord of the Rings â€“ The Fellowship of the Ring, The Two Towers & The Return of the King â€“ available as one download, featuring the definitive edition of the text, hyperlinked footnotes and page references, and 3 maps including a detailed map of Middle-earth.',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0d\0d\0\0ÿ\ì\0Ducky\0\0\0\0\02\0\0ÿ\î\0Adobe\0dÀ\0\0\0ÿ\Û\0„\0\n\n\r\r\r\r\r\r\Z\Z#\"\"\"#\'\'\'\'\'\'\'\'\'\'		\n			\r\r\r\r\r\Z\Z\Z\Z!! !!\'\'\'\'\'\'\'\'\'\'ÿÀ\0\0\0ª\"\0ÿ\Ä\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0!1AQ\"aq2Br#‘¡±ÁRb‚3sðÑ²\Ã$45’¢Cct6\Â\ÒSD%\0\0\0\0\0\0\0!1AQaq\"¡2ð‘±ÁB\áRr¢#3\Ññ4ÿ\Ú\0\0\0?\0\æ©JWŸ>¥)JR‘¥)JR‘¥)JR‘¥)JR‘¥)JR‘¥)JVHªÎª\ÌI\0¹…´®”‰+¢\ÂôŒüŒ?1…Ÿ4W*Xy€‚;eU>n$8\åÅ—SUü \à)\×P\ÑU¤\Ð:‰ŠwŠ#[/GO=4‘iJU¦\Ó8•EY\ËB|Ok\ØwÛ¶¥Éƒ<\r”v\ä,òµû³¶\Í\ã\Ò\æ \ÔÜ¹ “ä¼	D«fóxÔt¨7b¦o»rm$h\ÐM§^j&ÀXs¡\Â3†3™¶\Öó€e\Òý›…\ë98\Ø\â*W\Èð\âN1ž\ÑÜ³6\ë2øºx\rJŸ“S\Éb\ÉIùh\×9\ÚE¼¥U}\n\ß]ºW¿?G\Èü¾W—.FZ\ÏlK|&\Ç\Æ*¶\Ô<„\Ã~zM\r·§2Þ«ôé¤§•U$tGóI\n\àq\ßcÒ°­“¶\Çó\×}Š‚N¦À\ëÖµ\Õ\çP\à<¢”¥$\Å)JDR”¤E)JDR”¤E)JD\ï=þ—›ü_\î\Åpg©®óÐ¿\éy¿\Åþ\ìWzš\Ë÷2y‰\çöŸúû\Ï\âOÀ\Å)]\'£8è²¹	324XJ$\nz7\Ú~€	­‚©c\Êu\çÊ¸q6V\Ô(º\êy	Z\ÜCc\"I\É\ä&nŽV’b§£\Ó\áhŠ\Ûs£w\âr£\Íx\Æ\çÇ³E5»\ÕFú\rW\æ\åË—6d\Çs\Ì\å‰=Ç úy‡—6TY²BÁ‡·½O°*)ª\ï^œ¥J\çÙ¸8W¶‡·}?{\ãsQR®QÁFkF†\ã\ÙWQúq\æÀ~N<\ìs‡\Ã\Éi,Weûj\Ë\Öxp:\âsX\à(\Ë\0Kn\ÒWz7¾\Ú\Zq¿ø?%üFü±\ÕBUXid\';wLø0\å\ÆvÈ¨Â«;[\î\å*`ôü\Ù\È\í\Æ\åA˜ñ\ÍI-\ÞU[\ÕK+#pU”\Êt Ž \Õ÷£ žNf<˜Á@®\Ó\Ë\ÑB•\"\Äô\Ô\Ôw\"®c3#\Z\Æ”a\Ð\Ø\0X{È½X1\ÞWˆ\ïò›c\Èÿ\0\ä>wª m\ÕEI5µ«O$q~Ÿ——\ß.\Ñ\0\Ò\Æû\Ã-ÿ\0fÇ§ehN7\ZV\Ù)¸ô\æ\Æ\í<v«\ÏB~ÿ\0‘þþS\\•@,]–øU|eQ²6|øý\Â=›t_\Ö,Þ’fÆ²ŒÈŠ+\ëªCFÿ\0e\Ö\à\Ô:\ë=%:òdú{;\ïq¤Œ\É:” ø¶÷u¸®g+ñ2¦Å“W…\Ú6=ûM¯VV$•<G\ÌK\á\Ì\Ç#\á\Èô£cƒ+p`9x\Í4¥*Ó¢)JR\"”¥\")J\ÉQ!*„\ì¢\ä\Ò\Å\éºô/ú^oñ»Áž¦»\Ô<	Š\Ø\Ñü\Ì\ÆGó$‘£Qs`¶¿¥…S\äK\Ë+I¹+|¿.7ý€—ÕŠXw%M5V\'Û—N\ç¹vÇ.B¥N\Óút\á\ÆT\"4Ž± \Ü\îBªŽ\ÒM€®¿\Ñ2,¹ü\\öY\\t¸71–GPG_Š q¹~™\ã%ùµù¬œ˜Á0y¨ŠŠöð¶\Õnú¢‡&||„Ê…\ÊN½dwu«0.hZ\Öm™[¹Ç—Òƒh¦aV\×p©\î^3\á\åM‰ ³\Â\ì„{ŽŸ„V“W\ÙÜ\ÎŸ8>\" +\Ïy‘HB\Êe5øŽ>Q’\ÎÜŒÑ\ÑB\Å\áÑ¤.w0ÀUƒ\Z\Ô\éûf‰™ö\rø\Û\ÜUB\Þ\rô\Ñó—^ª”cð\ÜOÿ\0¿TI$^\Ð6kô“ø+.i1ý\ÈMm‘$b­`mû±Ñ®+–\Í\Í\È\ärŸ/1÷K!ñh`Q\Ü*ÿ\0–\á1ø)øV“!ŽAfi\ÄJ\0ckYwô{\ë2„\"­Y\Ü	¯œ\ä\ÉÛ²vø±\í.\Þ\ê»\í>­\Íð“xœŸû—†\È\ár$òócd.¶@\ã³pKc£{+Ž–) •\à™JKt=A\Z[±ò¤\ãóS+BZ¼nWn\á\Únt=½\\sœ\Ìm\ÌE›?`€ŠÑ¹¡;ön«\0QKk\äf\ØÑ°f!œY}Z\í¿=:”™\èO\ßò?À_\Êk’®“Óœ¿Â¬\ÒN\Ó\Ë6B*:,`*r@%\îzõª×‹3&NQŽ÷Xü”\rn\í\ÆK~*.Ž\æ\Z­:H\ÆJ÷=Ã”}¯³i\Úu\Ú(\ËOC\Â\Í\ÊK–|0\ã\Â\Þcžƒ}­ø5G\Éd®g#•–ŸÒ»¯\Ù\'O\ÅSry°0O\Å\Ãò˜lo1-ºiOü\Ç\Óð\n¨©U;‹/@<&˜±7½“¸q´°«\Ì*õ®d\Å)J¼\éŠR”ˆ¥)HŠT\Ü\Ø1\r²0¡Ë˜óCo¡\n\Ê\Âß‚».†\â8á›\ÆA#3¢“u¬À›\è\ÞÊ£d\ÚÁh\Ü\'.n\ë\ÚÈ˜\Î6\'!¥ ­ñ3€¥_\áò¼\Ò,\\—Q9±Ÿº•¿iº}5¿Ôž˜N.!Ÿ€\åñ€\è\Æ\å7|$7jš{€0VI\á|Ÿò”e\\YQ±³ý$\ÑVð¬\æjL8¡ñ¦Ì”‘L±€¿H÷!Eô\nI5\Z¦ce¢bO¤Á3,ª\ém\É\"\\\0\Ú\àƒb*\Æ\ëI³\î\Û\é\ê/øo_”\ÛÉ‹“·\Ë\Ï8Æ˜oŽCb=Œ7§71ZH\Â\Ê%xÕ¤\0+ªhYt\Zô­°\çEcc¨cY•3Xnv[\0o`\0ýµ7$\ä\äK g1<$j\çU\Þon¦ n¿	šû›õ\'n¿u\é7ñØ˜™²¦;´«)Y]™v\íZ´€\ë¨Zö<l¬l©\àó·\ãFå­¹ö[\Â:\0oZø¼¨°²\ÆDÁŠ„‘,€y£\í#¦\ë×¸yqcbfÀK‰2Q6@\0=\Û\Ä¶¶”7f¯—\ã¬8É¹¶“^Š\é«zþS5\ã\ÐaA“7˜.O\Ë k\Þ7ýjÇÃ\nY¡]\ÑL\Ñ#¸]PXh5\éY¦t\'iZV’,Ÿ˜f°a·h]¢\í{økC/2|™\Õ\æ&YZH¢p6¦ö¹\Ô3vi  \Ýzø\ÈS—ª\ê\Ûñô\È¥*Ó¢)JR\"”¥\")JR\"”¥\"+\è~´ÿ\0@ø±e«\ç•ô¿Sœ\Ã\'ó•¡\ß„Cî±·Ç¥«¿^?3<\Þü\×qÙš&´Lù¥‰ðrt\0v“\Ù_G\çXaúS\È\Ê?z\Ð\Å\0S\Ô\É\áü›MEô\ÏÀ\Ïr|nùP’ª2\Øk«mM5\ï®Wœ\ä9<\ì\×NOÁ&;.ˆ‡·h\í¿}Aþ£€4\Øl\ß\Ë\îQ\0(;f\Þû´ry\0:x\Ê\Ê\êý?\Äp|\ÔIÐ¾5·…›p`A7Qú5\ÊWg\èoòÜ§¹?²õ|Ä„$®ö\É\Û3£2²•¢\rq`\å\Þn8\ä+Åˆ\ãM5Ù»Žýš{­]~š\ãùnr0–<›Ÿ¹™\ÃWFŽöA®Dt\Ñbòy<O\Æe\ãFFH’3ðºý\ÝÕ©6›\r\ëø\É\î“ ý‡*û¨[­@µ5õ®3ŸedbŽ\n²’H±uT¼8\Õ`œ†<’«0¼‘I°ªý¤\Z\êy~3Ô˜Cœ\á\Çø ?\ÄAõ˜ª‘úcý\á\\WCc¡QR¬shG0e°\æ^\ã\Z£.Ž·µ‘¾ßž\Ç\âð2\åÀÁ†Mñ\Ý<’n½Àbmýo^ñ<\ç\Ã&~\\£†\æL†&\ÝB\ÚóŸŒ\Í\êˆW\â’H\Ð{\ÙPU\ï­pp8þÁ˜\Ñ•oô’j»\"ƒ«Ž\'_9‡º\á;l(\Ç~u¹õ\Ûyô”eðq1L>9¦A§“3†onÈ¶…­\Øp|´\éˆ\Ë/“)\Û‡óaf=‡–þú¤¯U™:›2TŽ\Â5¯·M	­Î£ƒ\ÒB»«V¸¶¾GO”\Ý$\Ù‰ƒ¼\Ï\'” ô½ö\ëVœ„|O’\ØŒs\ç†\Ã\"ydd]\ä\\¬i´\ä\Ô^#9qyœlü£u\î™\Ï\ë\Ü3iö¯]©}3—‘“\'+Æ“ö’HÝ·ÄŸ¤]*¬\Ô\à1 G–¾sÙ‚÷ñ\æbˆ\ÈH •%ð,+€”šq­‰—\Æ\ÆÐ‰|\ÄÈ\ß~\Ù¯Bu±\rUµ\ë+#`U”Ù”‹Ga¼­\0¡Ws©j…\Ü[Ž¤Ù¢t\×\Â)JR^)JR\"¾‡\ëOôÿ\0‹öZ¸œl\Ûvvj\âÆ¬7.\Çwe\êv\íü&ºþo˜ôÿ\0/\Ç6\n\çX2¼nb€S°ø{«·½(´ë¡žoy¸÷=±TvØ–!€\rxk9~—nY\Í\Î<ž”¨~°ö¯Z\é½aÃ®f:óX@;¢ƒ6\Íw\Åk¬ƒ\ìþJ\âgŽ8¥h\â™gAkJ”;œ]G¥ýO\'\äØŒeÁ-‹m¿X\Ø\è{*r)±‘£ˆ\ê%»¼N;\Î\Ü\ë£-j\é\å\Öru\Ùúü·)\îO\ì½Ssü¼¹<Nh\0Ý†#F\ã^\è\ÚÖ·°Õ¯¦óø~%2³\Õ\ß\'n‘\Ç!\n\0#©Q¯Š™N\ìf³ZQ¸\ï\å\í\"d\Ü\Å}%vŒ	\å8ñ\ÐU®Oþ?\Ç\ÔdþH\ê$¸\ØñÎ±E™±7üp²QúÀ®\ïÀ\r\\\ä/\'‹$£+G•¢—c>%\éa\ÙWcª\èxô=\'Fl‚ð¬}viX\Ð\Ú\ÂÎšJ\î˜\È\á²\Äðø¢k	á¾Ž¿\Ö;\rt<÷\r\Ëc„ñ\ï²!Q«[\â`½Ž>°®9ÀVe@a{v‹\ØÕ·\Î\Í\Â\ä\ßWÄ”>ýkú\Ãñ\Õ]M\ïO¨0\é3\î0>\á\ÜöúeQ¨\å‘u¼zG=)‡\Ô9\rLrF\à}•F«ÿ\0[F30p9l:‚\Ãôe”þj\æ¹\ìˆ2ùŒ¼œgC#†G£j÷\Ô\Þ\Ô+‰ŒüW\'\É\ãe\Z_®\Ûõ\×\ßPT\Ö6U\Z5™¶›;\\è¤¾“*\ËL5\æ%\ruž—À\â9¡<yX!d\Çw\Ç$ƒpkAc®•S?\Ç;\ãùH\Zª¦N\è¤_cxH5iÁr_§L“åŒ¹g\n¢,Ub\0RN²Hv\Ó!´;nùUƒ-\Ý\ä900\Ã\îšm\n[Ž·Ã—Y\Î\å¼SNíŽ ‰nhYô\âb\ä\Ô\î\'\Ô\\—BBþn0:\ãIªþ\É\ê¿Ej\ârpñù?307\ÉJ%Šak·—\"•\ì÷Š\Ù/„%&[±¯uw\Þ$\íŒ%\ï\î«¿K\ç5\É\íŸ\è\åBË´H.…\ë\êÿ\0\ÕQar\\>7?Ž›%rªÇ£2µ\Æ\×\ï*Ã­quw\Ìrøó`\âð\Üvã…‹©•ÅšW\×Å·°\\š¤¦ B\Ñ\êjúr‘\Ùc|xvµ¹¶ú‚_¤¥)WQJR‘¥)JR‘¥)JVH#Ar¥\Í$LiR¾V%ð¾B«þ‡\çaZf\á 6 ü,:\ZXI fºR”–ŠR”ˆ¥)HŠR”ˆ¥)HŠR”ˆ¥)HŠR”ˆ¥)H“±0þ\Zhñÿ\0\Í\â«\ä”?ñ!P›Z;n·h¿uk€”ÅšTøô\0ö§þ\êºôç•ƒ\Äs\ÜÜŸ½‹pqGü\ÌË£0÷\"š¦\Ú\ØÉ‰.–eý¶£è½\Òs‡,ùPj‡\Ä\ÐfZ‰¥FK\áÊ­¨Œ‚ž\Ï\éù\ëh\ã\ZB†)Y\èÁÛ¸ö‡\ä¦I\"Ú¸ÐŸa¾B:›\ÔX<%Ë«P]H Ÿ	!±#\Ã\â¡Í˜\È\äƒ:*E\Øò·{3]TvXžê®®“+³=7¯ƒ;Ó’¾>\\\'·yK,ƒ\ìJJŸ}sui_p{6C°>_£ùh\Å)J‰´R”¤E)JDR”¤E)JDR”¤E)JDR•7‹\Â\\ü£ŒQ3´—\nÝ¬Xj™V`ªXð\Z\Ég™“ƒ›\Æ\\*N\Ð\Ë_ÿ\0°…’5\ÛÕ·‰6\é¡\é[}Uòòr£3;9SB\Ú\æ‘m*[\í)5m‘‰hq²!\ã²\Ç+M-\âbÑ”$\r—òÊ«§qö›ULüv^n[O˜\Ñ\â4\ÄñÂ»É°\r«²\r Z\Õ€5œ‰‘_vöŠ:s7·—?§”§H¨cB«}*\ÇÓ°Ã‘\Ïq°\äkd\Ç\æð­»o\ÓkT\Ïûu:\Ë\Ýÿ\0L£ýÖ˜7\â¨òp™PÊ¿)6\ì…!£…Õ±\ç¸\ÔYl\ÕcU½fŸ«\"¾\ÒÀ‹¢*ù\Ü\ÉùIf<\ß%/¹m\Ñ\Zd™g¡[\ÞESWK\'Dø\ã+&#yxÐ†fò÷\îó|@Fiy-§fÚ­\ä\à–h\â\ÇU\Å7h\æU,YE®^V\îñ\r\0:U\ã\0\Û6mº<t (\0y\è¬¥)Q:b”¥\")JR\"”¥\")JR\"”¥\")JR&\Ìx\ÚY\ãQ‰\Ñ\ä\ÑEµ»ht®¦?\ãpdjñüå¢’;\Æ\Ûno†º\\\ÛN„€zUÉ•bw$‘¼`\Þ\å‹\0RÀ1!€\×M*\ß>ù\Ü-:\ß8^w$\Ü\ËLò9=Á™6¨ýPšôœÁ\Ü\áI (,À5­L Š<%“6baš\Ë,²;@$wA´l‰]\ÄxFµW‘\Ë\ä\È\Z,[\âc±»G\ïú\ÓKñ\È\Ç\Úkg5<¦H±$7t_?\'õ²\'I	û …\ê«\0’\0Ô\0oTU¿SjL¶A‡¹’˜¶£˜•~_÷c©¹\Ô÷\Ô\ÌnO3|­þv9ø±¦ûÈ\ì·Oz\Ø\Õ\Ö/ }O•\Ïò\Éqx\áÈ•b•½\ÈÚ¦\Õ\Ïd\ãO‡‘&.Tmð±Icm\n°\ì5r:‰uËƒ1(®™\nñ\0†©\Ðm\Å\æ`IT‘\n¢yÄ–G?<\ï¡x¤\èŽuS¡­ø°\äò\Üs\á\ÉÀ\á„aÌ…‹·ž‹\"\Ù\×\Ú\r®*ƒŠ`\ÍE—ü¾G\Üdø\äð“\ïSf\ÑV™fx9Lyž\äeRB™C64‡\Ùv]\ÕUô¶\ÞG„\æ|l­\í©\Ó\ê\ÆN´G)Ï\ÊJ°*ÀÙ”\èAA¯*\Ó\Ô0¹Y¥³\È\"e,¥	2(vð0uk\Ý\ßUuyÚ½ÿ\0x¥*%¢”¥\")JR\"”¥\")JR\"”¥\"Zð0\ÌÜ„R %-\"¹FF\ãp=mR¤Æ“’\äÑ‘”I‰9ˆ¿V“ø¨|#„É‘‚\îFH]ƒY,º\éj°\ÎWÁ\ä\ã\Î\Ý\æ\ãEµ&T\r°®\ß!ö\Ùv\r\É\î£SS.\ïu†š¥ÔD¬\ç/ü\Û,õ\á”þ«(eüF¬ý-›‡‹\Ê`¾CD»nb¢9É²¬\îv‡\îck\r7\n\Ìa·–“¡óR	\Ø}h\íþ#\ì¼v[÷Š¥¨C\é\ZKª®n\Üc½6\í5\å_¶}\ë\ÌÃ“‘Ie—	 (q$Ã’Ibá„¾j$¼:hÆ¾k\ë—\ã¦\æòLd,‹\n…\ÞY¤–ðI°‘º\Ú.\í@ø»+™‡’\ä±\á8øù“\Å	\Ð\Å®©o²­j‹W&\ç/iþ´\à\Ë\î¤\Ò\í\0i\ã¯\Ø\ÏQK:ªüL@_y:WUš\Çùž£\ç+%‚€Nõó‚•ð÷•j¨\á1^L‘™³zc²ùIÿ\0Éß¹ˆ~×ˆ÷(«\\u|Ì©bÂ”“Ž«‹¢\ã{‚di‚\ÛØƒ\Ùc\Øk>.+ôÍ»† \éMž^±Zü¥w¨d²UeŒ\0Ur,o-£D\'u\Èeº\éTõ3•c&t³–$L|\ÕV1”?‹cµÏ‰{j^t\á€ŠR•H¥)HŠR”ˆ¥)HŠR”ˆ¥o‚ei¦ý\Òia\Ú¡¬\ÆT@€1\×h÷_û4¾’¥\Ð\\defC¹	R;Eu\\h\Ç\äð]¥*‰• @—\0¾;a,\Ö#Z¡\ÌX$‰r¢²—bl5¹¾5*4&@\á\ã-—Pû¶Ú€Ì²\'º–\ÆCÐ‰u–qH\Æ\Í,#¼x\í-¤(’\r\íDB\Ýz]N¢°\Ì\á\á6–\\PúªLÛ o\àe-ÐcØŠÞ™|O$\ç\æTŒ\ç²ù\Äx\ØÞ‹f\Ö÷;[\â\ë~€zx\ÞGþnC®\æmò–\Ûˆ¶Šm1\èw}c ÷^¥\rÚšœöU¬i\ßC|uû|e_ò^K¨‰YMeˆ¯û[\íRq8?1\í<¢Bº´„Jöýy?uö³}4|\Âd,9kšA÷O64·%nŽÌ¢\Ö&\Úu\í¬Û\äscaŸ›þ(Ú¨¯\å!ð\Ýö¢G‡¾•ôR[6Z¦tPy¨$ü:\Íre@¥pqP„e\ß‰\"Gð²c–\Û\æ\Í)ð´†Ã°iGüo!y­–ªŽ\Â·x\ßá¼v‘§^\ãj\Ãù—\Æ\"Ç‰\å\ÌÈ±\Ï+\r¢\×PÀ›\r¶{	:Z©2\çùœ©²F\ï¾rÿ\0x\Û\ßSX^¬ªi\'\"Æ©•x\Ù\â\ÄužeL¹Î«±]‰\Ö\Ã\Ú{û\ëUJÂ†))c\0\í7\Öþ\Ñ\ÝjöLÈ‹“:&ö\Ú\0ú¶üt½j§V\ê;I\Ú$JT™)b3\Â6ý\â~qQ¨°7\á¥)&)JR\"”¥\")JR$¥L\"¨.Q®Ã¶\Úÿ\0_â¨µœR¼-½\rh\ì5¿\æ\âø¾]wþ––üj5ž¥&…‚oŒ0òðB°±‘÷(\í¶Ÿ\Õø\ê-g,¯3oss\Ø;aR$¨ kÄ›ž«20u%YH*GPGCS0ùL¬\'ybvi$kÉ¹˜«§p¾¤žÚ…J˜eV\ÂÁ“×™\ä#¬2´Q\ÆUü¤f\ØÎº\îe,E\É\Ô\Ö9\\®vlmò–¤Û¯\Ö7\Ûsõo­B¥$h\r\í9\ÔR”¨—’qFôš!ñ2\Ý}¶¸üõ‚\rŽ„hA¯U™2›0\èjGÍ†\ÖHQ\Ûô´ü\à\ÓYMA$¹\î81\ã\Ï#|.»W\ÚlGç¨µ¶iä˜\Ö\n:(\è+U•Rx˜¥)Ih¥)HŠR”ˆ¥)H’ð±bÉ‹2I”\ãBfP¶ñY•6›ôø©\Æ\âG–¸\Ò3 ev tBý~\Úß€YóKeIñŒP›ù±ø}ú\Z\Ë+\Â\Í\ÇÉ‡\ÎÚ°²\Î)>s£!\Ùb<#uê¤ŸU|>\é\Î\Îõ”-“¨Z\äBÿ\0Ì‹•ˆA‹Œv\å+7–\à]­·[u°\ÖX˜°Ï—‘!{\â„`‘€wp½×¬\ç\Ë\ÇÌ‹\ä\ïù¨6\Å,ª\ÞÂ¿	7::=µ¶,\ÜL?\æ‚óF&1ü›7¨Ä€¹wvR\Íx\ß\ç$¶M•Gv\ï…o\ëü2\'!ˆ0²Ÿ?˜+k½C\ía­˜^\ÄV\î76x±dyYÝ”)PKº›Ú³—#‹\Ë\Î\\¬„–8\åR\ÙQBIˆ>(‰?6¶=+O•tYS\î)\íN\å)\ÚG}5\Û\Î\ë\ç\ä8Hõ	w\\^\ç=\\\\i1Ÿ5\ZE‚© `»šW\'b%´¶Õ¹5’`G,8ùq;y&\Ó)|nÚ¯°†+l¸£\Å\È\ã\ç œ£¤Š\ä’;…}¤\ê$z\ÙlPC\"0Œ…ÉžM¢\ìSEU[ôý½´;µóùA÷,V6W\ãs\\˜‘G\Ê6\æ1¬þFû\r\Ú6\Í\Ö\é^\æ\áÃ…$ñH\Î]$dleRT\ÈýÀ\ÛJ\Ù.Nò2g–Ï‘\çª]0ƒ\ã\ÔöV\ÞC’\Æ\ä„\ß0\ÍWf\ÃÈ°\Ý\å³òf\Ô-ü&ú{ª-¬qª\Ö@l›“F­£~š\ßÛŒôñ8ÿ\00ð,’¸c4X-\É($ò\íô\Úõ£|—y_˜·‡™@\ný\íõMÇŠ¥4\ÃO82€\Ø# 0q\Ç\ÓK\Ô.5\Ü\É4²;\Ä\È]”°Q«ô\0Pn\ç|%W\Ý \î,=#Zý\\ùL_À2£\ËW\'hÙ¥µ!u=\Ú\ÜÖ¢\Ô÷\ä|þ<\âd&ù\ãÚd}o(\Æ\'\ï\ê÷t¨a|\æø÷\Ñ\Þ(\ßÃ‡¥*eâ”¥\")JR\"”¥\")JR\"”¥\")JR\"”¥\")JR\"”¥\")JR\"”¥\")JR\'ÿ\Ù','lord-of-the-rings-cover-design-3.jpg','image/jpeg',_binary '\0'),(329,'The Book of Chaos (Starfell 1)','Jessica Renwick',30,2,'A magical book. An enchanted forest. One brave girl on a quest to save her family. Join Fable on this spellbinding adventure for middle grade children!\n\nWinner of the 2019 Children\'s Literary Classics Award for Middle Grade General\n\nWinner of the 2019 Book Excellence Award for Children\'s Fiction',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z( \Z%\"1!%)+...383-7(-.+\n\n\n\r-& %--+-----/-------+---------------------------------ÿÀ\0\0±\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0\0\0\0\0!1AQ\"aq¡2‘±ÁðBR\Ñ#3b‚\áCr’¢ñ$%4STs\Ât“²\Ôÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\02\0\0\0\0\0\0\0!1AQ\"q2‘¡±aÁ\áðñ#CR\ÑBÿ\Ú\0\0\0?\0ñ\ëwxQ\0ÐŒ\èh±]Œ.\âeš¦Bò$PñFº¨&‰]Î¤•\"k1\ÇB8\ê> ¯>Û…\ÅÕ²(ü?\ê’\êF`ˆ\0Žd<û))þj\Ûw‹u4PJŠ‚\Âô\Ñ@€\0þ¹¼\Ìð¤[\ì´Ö…7¸\Å«T1\æB§6šÊ–H\æ4X\Ûx×„A‰b=b\Z@\Û	ñW\á·*«}‹Bú\Õ<Ä±”9r\ÛÁ*	J’JL}\ÕfP1ˆ6‹Ž´\å%dƒ–eiPÓ„¯JšŸb\Åu‘]½–NY\Ë\Âb|\âJ­\Ûg)Ìƒ9‹„\Ç1O/dyY,[±L\ï14­ €ˆ?³\ÓL¨È’•d{dÉŸ]\Æ\\bIS!¼†r¶8eID\Ê\Ó\Ç2\ç_¾‘-•¸²·\ÊóJ\Øm €2!z¨\ê;³i\âhl6\ä6\àYø‰I\0‰\ÒDÈž Q¦P6ZÑ¦§O^‡BL% k¬„”\æX:Nó>uˆ\Ä\Ð.RöB\0˜†\Â`\Ã\å\ïªm’\ÅU‘S^:µ(N¤wÖ¡=K°fdÔŽª¦leH:µ5omŒ\É\ê“g3YSuB·SK\Å\È0h°h1E6©\Ü sGG\Æ9žU\Ö/†.\ÙÎ­q›*W¦¢¤úD«p°§\àuaY\'2w\ÊTFû\Äi¹©\ïKðg\Þ}*m6\ÌŒ\È\nXKÌ¤ œ\ÊHÀ\çÊ—›\"µ¿r\â¶)tU†\ãÄ¥´\æPû ¦Nûe[¦*KL)\×D¥\"3eJJ3/ð\'1•\Ü(®ŒfE\ë¥Iy\Ä°….R¤\ë H\í=¸0\Zl’\ëì¶¢\Ä%kƒÀñ¥ø¦õ²\Ëo6¤(p#\áÎœ~‘\Ü\'º“?´ ”ŠymþÙ‚8\\\Õ\Ë5\åBøõd$¥\0©@r)>#IIõ\n>Šn\ßE¯Tœ\Â\Ù\è‰!\n#¹´|…Zz-…}—wRAr\nX‘9TLÁ\Ð\Ä\ä9kEyõ­E\Å)J\\‚VI&x£¬÷š%7&ôô!”’•Ð‚#\Ä\Z\ä\n¼†X\á\ËyBn­H\n_\Þu¢;G\ï(S\'S\Ù$š—¡0j\ÍüM\ÄuHWR•	`ª#ŠB„÷\Çyªy©;\çÈ”V\è\Å\âÓ6Î‘¸\ìT9¤T<¥2¤(¥iRT¡@‚<A\ÔT—Wn:µ8µ©k™*Q“¾\äø\Õ\Çoõ•‹Ár««@•!g\Úq¥HÊ£ºŠJw<9\n\'7\äB´\Þp¤\æKd¦	\Ì‚˜Êd\éÆƒE±*\È ™#\ÚL\äf–ü*ß‚<¯\ÔwÀ}™%¹øu-è¥‹i½¸\ÃBf:çŽ­´=Ä¨ð	5q\È\é\ßGEPžÿ\0u˜\ëPPNÁDG<³1\ßA\Ñx¶\"\å\Ë\Ëy\Õfq\Å(ü€\à\0\Ð\0P¦_RŒ4E‹rªS;&\á¸š%Bò:‰§C\áR:u®›LyÕ¥lZ\Ù­eI”s¬¦i+Pª¤eUË¨Š\å•A¤\ÅÔ\Ñq\Ã\ìVþ´µ\ÚRn\Ê\Ô&2§\ì\Ê\í+ð¤\å\"N“¥0\Å\Ûu8½Ê°¬¶yD€†‚ r©\å©\0\Æ\ß_P+¢¢L\æ3Ï•°9]>ÿ\0RkH½ô–\Ñ\' bÓ­-½r‡û\\\ì­O¨¤–\ÚZHBÑ–t9wÒ‘ºñ^0®¨¨\Ü\"K2$‚R	\'†ºf«ŽfBŒ‘÷Q}ÿ\0Œ·ÿ\0ºþÂ³\ËÆö\rI>E³¥ý[Øƒ\ä\Ü\Ù6Vç²»–Ò± \0\nTF»i<h~–]‹+oÕ!Á+}\×—­R`¥-ù`€fu\Ð\íº\Ò	ÿ\0x\Ý\Ýÿ\0\Å5b\è³¬p\ç\í\í9l\ÙQ\Ý-™–\çŠAI#”‘µ+ÝŒd÷[Y.±lm­™ºv—\éA	\0©¥&Hp¢‡h\Èã§¦t‰XS6\Ëj\É\×uÕ •\Ö\Ú[JLÿ\0iª‰\ÛM54\Óô‚\ç]…á¯{$Ž\n	)Wù…yÁªÁŽ\ão¹=ô23=r\Ñ\Ù\Ër=\ÇOY]¹Fkl‹„•Ú¾\×T\â\í¤ê´º™\ÐÆºqž\íkŸ¡n\Ë÷\Û\n$òIø\n\'¦\×f\ë³’ŠUÜ¤\Ê¥\äWšºlD(Ç—„3n\êl\Ýq÷^\Êf\Ö\ÚZHPQ\'?´t\Zk<*O\Ð\ã“z¶þ\ë–\î<\ÓT:¿~†\Zÿ\0n+\à†VI\ä43þZÑ’\ZqH«\Ü7Á–\í–!lÐ•Ô‰\Ð%*J”¥ HH:\Ò_\Ò›–ÿ\0g·\ìý\r4QªV\\…)\Ì\ßx«My$\Z±²\ÄTp¼Q\Ä(Ž²\éhJV´Ÿ\Z\Ì_¬°\Å\Ú+[‹@\\d\Ô\Ï\ÞOò<”)qn/S\äŸ\ä‹gŸV\Z\éI \ÄGÊ™\Û`N,7N[A\';ƒQ\"@˜1$LV§%\Ôœ7. º¥do8l’²¥”\æ\Ê\0#a©3\ÄQ¢™ZšP!I0A \"A\ÔhE?\Â\ìgdY@7Žj¢°Bº¦\å\'±\0ˆÜwª\ÅÃªYÌ¢I:’L“\âO\ZvØ¬œ\Ñ¨”}º%…;0e\ÈÔ«ðúŠ\ÝI5”\ÚP+\èš\r\ÄS\n…h¬µcc*ºJ«J\Z\×I\ZŠ‰»\Øc\ZŠk\Ñ,5\Ç.\Ú-§6GUªR’T@\Z\\\Ò\r3g\Ì\ß\\\ê\ÃL\æËœ‰RÕ¾V\Ð=µGxrG9wÇ¸¨\ËÍ°Û¦]¼vù÷\ÒT…¯2T—Z\" \ró\éµcp\Öfúz\æÝ½¸Al!¥\ÂNŠRÖ™Na¬$“¬\nI…\à¶÷N¥‹u>—W!\Ð\ÞE\nˆ9\Ø\Ðu\Zp©pÞŠ%ðú›ºA\Î…–	Îe\Ä\èG\Ý\ZÁ$«LŸ/Àz}Žú5Œ²å£˜u\Úú¶Ô¬\ì;†\\\â½Z·ž]F\ËU\Ðû©”¥¥£þbd¶G\âÏž\0ñŠZ\ãh\n€TS#R\01Ç²G=&Ÿ½\Ñd\"\Õ7f\àVr¤~ÐªL§.xA“š4\ãD\â öue)XE\Þ\"ÕŠ\ì\Øq.¿qÿ\0\ëf[BöM¯ûI\ÒT4€EC\Ñ,m®¡\Û¥°ñÌ‡\0*\êˆ\n)\Z”D®µ]m”“\nQi	\ÍR\'\ëzi\Ò~;b´!ß¾œÀ¡óQ\ãŠò¾orj\êm}¹“Õ†D˜q·™SdNù³\éü\Ñ\Ù7\íaöŽ°Ëˆv\ê\å9][j\nm–Ž\èKƒE¬\í)05Ö©\å4÷\r\è³\î%\nŒ½dõi‚§\ÊP6H\â¥Î®K¤\Þ\Ä\ÕØ°`¸Á\Â.‘8\ëKBJ\Ð¤¤ ’U\'j«ônù\ëK¶\Ým2´.\n?¹T\Ùñ<æŠ¹\è½\ËH+SR€`©+mÀ9fê”¬¾t\rµšœXB*Q€9ž®8\ÓRw\Ì\\²S[\ÒD”\Û\Ë}„‚\Â\Æ~\Ê\ÐKzI\nJU\"\'—ú\äuO\\\Ù\\¥ö[i\r°\nZR¶”\ÄgHlœ\ëÍ–S”\Í\ãKÿ\0ôû!}R¯\Zf\ÊFGT€©ˆ.ñ\0Žú‡Ámp\ã*!Jl€H\ÚJA\ÓÀ\Z¨\Â\ê7ü,šw\ZcO%vy’Pœ×¯;\Õõˆ+J”\å%\0\æA*¦ª-óÂ†X<”\Å\Z\ØJ–­\È©X_\nŒ¤\Ö\Òr‰4pN\Ã{ Œâ²…\ëG#[§kˆ:	IŠ\ÙÖ¦8’6#_€}Æ¢ˆ1Yš*\ÈK3]2Îº\Ñ\Ö\Öó*\å½N-\çP)°€¹g­\à¶E÷\ØÔ©@3M:|øU\Ñe\Z5l\ÒV¨æ¥“>	\åGþŽm\Ç\ÛÚÀQBã ›‡¹õ«>õ}z\Ð\É\Þj}Ý†¤”/»\0±¼u…´¬ª(R$FiÊ¨\ÓC\ê5a\è:·\Ägþ“æª®\ä«AJ›¾QB~\Í\Ú “ D“¶\ãz\"5ý>\è¼Y-\ÑK(«V$Ÿ÷5·þ\åß‚¨%·eø\îÿ\0øXÿ\0ôS\ÌrÝ´\áV\ÝRÖ´\Ü=´„)& „©C¿BwªÍ»¯\äÂƒ¤\ÙWèµzé”¬v³¸y!°\\Tù$:±c—j¿\Ã~Ð¿Þ³t\àWr%Ä\0T¤ùP}e¦Ù¸}\å:”PAZ‹²T‘œgY\×J{\Ñl%·»n\Ý\à\êbTÛƒ«y¹RT	JÀ\ÌA)Q‰Ô¬\Û=]«õ/\ÛÔ©ô7ûU\ÛmŸfs+¸\nµô¶ó5³®¶\nRóê·‘÷X¶%	h	Q…\ÆO}qú)f._<RÊ¾`\Ò\Ì¤¿g\ëYy‘qn\âÊ”\Ù%*Bö\Î\Ú\ÆÄ\Æ\ÇMµ‘’r\Ê\ë¥¤”7\ëb\ÌñVÎ¡ô‰HPJ\Ç Ž\ÛjAO±ƒ¸k[V˜»@«+.\ÉmGd—\Ø3\ÜJD÷\Í%\é>Ã­%‹[n¡°¬\ê*Vu­P@\Ä%  \âi\ßO\Íkb³¹jS¹J7µ\Ú5ú\Õ2¡`\ë·yl¸˜ ‘¯Ö¿ÖŠ\Æ1>µ\Ç)\0¬\ÉH\Z¤\ëÂ­U\â1&\Óop@¹@—•ý \ËN\ÅøU\Çc\ßU\Ål\ÔÓŠmi…®šVœrw¦^òú£6]÷\\¿1S­Îµ®F;  œo•2J‹\ÆÁ”\æµË¦*bˆÖ†qD\êL\Í-É¤j[œõÇ¬­iZ¥\êc¬ò\êU°™®\Ã_\n›|\Ôè®‡>S\êI‡9@\ßz1\Ö\ã„W6v\Ùu;\Ñ\î7˜S\à¶0\äš\Ôk£W©¶»e\å@\\,òJ¥*\'Àò¡ºc`¦oA|¨aZ‚9\ÌÏFø\áÂ‰sC%«”­]X†žDuˆOÔ•FºIs)y1\Ô\ÖHö¦k\Ã=P\Ðþ\086«•!m…Ä¥+PIp“(Œ\Ê\î\Z\Ó~‰\"¿Ÿúov¦‚²~\Þ\Ùiu-\çB›Xm	XöT\á+%@9@ÔÀ£0[\ëVY¸/\\8óE–³A\ÞT¢¡>\\\éõ8¾\Û}\Í8\ãM.»•¥Š}‰\Þ6œ.\Ýc0}\Ã¬AªUö\'©2ÊüŽÔ±k\'rM\'6t\Ú\Ó\Ñ\Ø\Ü<;I\ê\ê[nú@\ÏÙ™e%Z)\Ç\ì\îµ”G8B\Ìk]\é\Z-\îZx28’t:¦acNi$y\ÕF°\ZW*¡\Þn\Ïb\èóÅ––\ÜIeð´!@ˆ\ÆdLŒ±\ÍUQ\Å-‹o8…)Z„yš§´ò’B’`dU„ô¯XU\Ä%Pe\Ä\'\Ú;Ê v”ÇÞ¯E[\í_ 2an5P»v\'\ÏJô^Ú¥\×\ì\íNVX\Î\è€Sœ§¹YQþaU|\"òÑ‚Fk—¨\n@m¤«šûeK\à@<\ëV8›¿jûAVg3•(«\ïæ G\á ‘a´V§\äjQ\èz³µT¾>†\×t¥§T¡ ™	JR2r	 Ly\ëfžc§\í–ºW\ïšPi\Ó\Åba\n=ùb|(\'™¶&R\ê\ÛO\àSy\Ê{‚’ ;\ÈMEˆbi\ên\ÈRZ\nÎ¢¨\Î\ê\âPN‰H$O2I¦O­:USþLøò¸\êrwh«ºƒ5@\×z9Ñ­û3Ma\Â@YH:3\n\0ƒ\â„Pn#•\ëD;‘\ç\ÄW*f<þµ\åY¤n‹ N®²‹û1¬¡ õ!\Óh‘·\r8G\çR†ˆÚ¤bI\ÖI€5\î¸Q¡µ$r%:tpÀ1­0a¹¡i¡\Æ)š…\Zta\Í!F!ex&¸P]·IÇ­Uopõ¤Â´‘#c\"H6\Ô\ê\ìg—V\Íò8Jw¤˜…\Ùp÷:iŒ¹—²7\"‘\\\Þ\'-½(ô4jf«+`VY\rf«+u\ÙeQ0b¡VGYRª\Ý@II¨\ÊM]4Â¬/T\Ù·W|1Ä¨fGyð«WF/°OxúúÛ¾¶p™Z–—\È\çûC¨j\\\Ë¦MD¤QH\\)¶õ\Ñ\Ôq\"À\Ã \ïC¼\0T\ZrX(g­Áñ¥Iš1d\ÜKrÆ³\\õ]\Ô\Ú\æ\ßou\Ô\Ò\Ü\Ý\Ú\ê\ë(Þ®²‡Qv3˜ú\áGZ\ÛOh5FZ¦¦\ßS•9\í±\×P‘D[µ\ÝE¡‰Ö»ê¨”\ÌR•%³^4«e0W\r|<u1Už•g\rN^<ª§=)²pñrÈ‘\çx›ùÖ¥DI\Ðr(VØ’9\í\ê[¤A5¤€Ÿ¯­\Ír\îÝ³\Ø\ÅTRE\nmµ, $B;s\ß\çB\ßZ õª\0h yŸ\éBa7¤­\\HHµ=ƒù’ôÿ\0¬š~¤\Õ¥Šp›’{*ýC0œ5¶\\Xû\Ê\'¿´@ùSÃ…¡IR`	9\Ä\0\Zª\\bR\Ûm¤û!S$•1»\é,*\0Ð©\n?Ê OÂŠ3„U\Í\Ã\ç›RO«ønX†£,i \ËULJ\Ù%\'(Ÿz`\Ô7ú•œ	…\Z\í¿\È\ÐM\ÞŠI:•\é\åC“,^\É\áxL\Øü\Ò}€òE…9•Ä‘Î¡J%\'º?/Ê¶ØG\nDeNÎŒ–¤\Ó/\éT\éÎ´jñ °$N›xk;S‡Ý­vµg–\Íå–€EŠ\ØdMBHÒ£.< ‘ ú\Ü5C©¡E:Þ¼j\'OÂ‘-Ù¶€z£\Ë\ÐVQ9»\ëT:X\ÝLal¹(\ÖQ¬ŸJÀ\ìš.\ØÁˆ¦\×s•7{¡¥²´¢Bi{R\r1oQS‘£…¦ª/Aêˆ˜€ùü\\\Ëz~US\éC}a\Ëp\ï¥f\ÉPfŽ?\ÜLó¥Z\Ïø¾T_\ê\à€=”\ë\Ýõ4rm2*>øƒó¦8a	}À¡\Ù\Ê¼‰—u;™r\É{¥Bí–<h\'\Ý[a€  •L„?‡zC\×§+L2\Öuc–IðŸ­iK=`Z³[$¡gªSg²$(ð<c–úS\\c|\Ê\Ç\ÄM\Çxµ\êÕ•<y»«\è\ã€\ë>“^‚\í\ë(	$@V\ÜÇ•D»Æœ\Û`$óŠ’\Ç¹‡7#V\à\èóW\ì‚Nª*\á´#ŸÂ¯\ÊBó¥MÚ¦\Ú\n-)\Ã­L—\Ù<gnbš\Ý^¥M<\ÛCC*F“\ìG©ò¤¸Ç¸\×\Ä\Í4”ø«û;k$\å\ï \è|	±@¥‰09Š°:‰p\åP\0ñ3C\ÙZ\Ú#ŠE%\É¯M²Ë€7• =Þƒ\ãN‹€ñ\ãCaLJ&&¢9\ê~À*dEu±\ËÊ9›|¢\0\ÚAž*\ÚYg\å\ï\ã\ã­Ý”\êw®Š`k Á#‘~ŠMô:™?[R«™šwt\ÙH“\ZÁA\ß\Ão\n\\òûiV’4\ÂU\Ì{«+¿ue\Ã5Ž\Ùn@ŽZ÷žtm«4Hˆ\â8t\æÕ®T©\É#$\Í!ˆ¢\í\ÑS!5?V)NdP}M%ºUd¨Dð©\æN1¥B\ã`\ïI\Êõ#F/+<\ê\ï\nQVº\ÇiG¼üÿ\0*\ÝÅ\ë”G\ßo7\Â}I«\ÍÍº@\Ö#\çùÒ›Ö‚VÊ¸\Éð\">1XTô\ìÙ»\\­4y\Õ\Öd+]\Å1\Õ\å\ÊÌ„€O_1!\ÍcZ	=HÖ›>†\ß\ëøy¤\æ·<÷¸Z\È*&º\Â\ÝPT‚f›ô‹t,”4²\Ø>3õ„ºV“\Õ/!:¨¤s1—)j:QË\âµU\Ø!Ó¨`y€c¼NÆ‚[Š\ï5r_G¡5%ž†õŠ’\Ô\ê\Îz\ã°\Â\å¹]j\Âž.O“i*5»K)\0sQWøt¦[³\Ö8IØ’ý\Ý\Ö|\â<3·\Ãõ\Ðm§\Ìú\é\åT¤›0K,¯p\\=‚\0„S†,c^4C6À\n)*\0k]\å0J6ÁÍ°;*,\ä÷z\Ô÷M\í G5ó¨z\ÞuNllb¨[|È½*»z“:\nµ\Ü\"G:QshH\×ýi˜²—TW²Ÿ¨­\Ó/±w\ÖVdÔ†xk\0i3\ÌS¦›Ó³·KVÂ‚NXŠ§=\Ó;†¤)Q\à‚4\çÎ°\ä\ÉN†a\à\ç7\nm~’c\ÝJz¶\É\ë\ÔþùŸ\ëUVq\ç’{/9æ¢¯EH¥£¥-;£\éP?Š\'\ÏMG•\Ã-¸%§P±\ÊuFÁÏ“£,L\áô1\Óg\Ó\í¬wŒ§\Þ4ô§]5e^\ÚTƒþ!\ï\ZúU)\Ë\È\Ô&\ÍCjC\"+V	t¯C\Ò^Ç™p½¿\nÜ—´NƒOô&¼\ï´(\ëL]\Ä&{\ç¿\nÇ“X¼4¶=O	º\n%µ\Ò}G)•\Ò{;W›\Úc¢R©\Ú5n\îu\è}\ÄCÍ¤ª¹]\ã\×N\ên\ÏÜŒü2~h•\ç-_\ë34•ü$ñ¥±s9\Ý\nø”	÷MY¯p„¸uA<ŠL\ïÞ†gJU!¥O-Y–•%rýý‚‹ò\î·ôýH¬‘\Ù\ÔRlx(Œˆ\Z<?\Åñµ\r™\Âƒ„$™W»j b\Ý$k¶B F\ÚnI|¾«*“J1+‡Ár\×.CöX\ê›\Üg€	\à‘\Èw\Ôot¦DG\á?=ª}Œ<\è…*øFƒ\Ü7ó¥\ê$ó51p²»“‘\ãe¾ó¦Ž«D¶;»G\Þtô¥/b\Ë_¶\â•\â¢})KlF3dk|a\\‘Šn6\ÃBV\nÂŠw ¯!©q°\Çt€IAP\Ó0\0 \Ä\Õ,Ø¥\"\\X@\ï |i}\æ7l3•\Ç‚}L\n	Ã»$#\â?\"lõ¢#H ®Òž¾µ\ç	ý#º”dB”¹$xÁV^Þ¾ók\Ñ+R²€\0„> ùEg‹qc\çÁ\ÍF\ç°\Ã \å\ëZ®5\äktÿ\0Šþ™÷¯Ø‘\Ã\á^i\Ó\Ën­Ò¿º\è‘ý\à\0WÀ\æ¯EµY\r\ëÇ…T:f”¾\Â\Ò5SG8\çEG=	>TY§„Õƒ=ô{?ß©\æ‹L\Ö[ …¦7‘\ë[R}t¥µ \ï\×Qš\î_nKn*$\èLˆ\áSS[tµÁ£!\\È”Ÿj\ÅÎ±\n}…/\Ä-\ãR \ìg\Ð\ÑFr[X¾\'Á•kqEžÚ¹¢³6ˆH÷§ò¢\Ð\Ónj\ÚÐ¿	÷U	H®rS<K\æŽTý—ñÉ¯©{rÔ¦ŽÃ±·Z ’tI;x\Z¡1‹>Š#’»C\Öi¾©\×\ÚÒ™QŒ\ÃO	žú\\±\ãŸAO…Ï‰]\Ú=ß¢\Ý\'\ë™\Ì ©#´¡q$p<\êntIg¬J”Õ¼l4<øW—X­l/:w\0…\nI\ÑI<\Ç\×\nƒºS\ÇY”¦d&~z\rxÐ¼9«\ØL8˜\Ê<Ž1ŒeO(„“–L™!KÊŽñ\ÝJ’\ßÐ¡±k‚\ÊA‰“·‡:J\î6ñ\ÙYG$ˆõ\ßÖ›1\Øt0\äÌµ\'±kM´	Q	ÉB\æ%j\Þ\ë\Îy fõ\ÛÖ©\ËR”eD“\Ì\ëX¢ñk’g\'\ï\Éü6ÿ\0¥‘î•¤h\Û>k?øÎ€WHnTg\Ê9 eõ\Zú\Ò\Ä0T`¥n\ÚS2e\\\0\ØxÐ¹\Éõ5c\à°Á\ížÿ\0r›…,\êI\ï<j©\Ô\ÜV2\Îc\Ý@iª%\Ã\ìTê’`¨€<\ÌW³Z!)BP”„ˆ\ä4ªC­ó:¥‘\Ùl\0?¼tô\0û\Å\\‹Às>uN‘ƒ‰¹\ÉG°Ã«ï¬¥¿i<e\r¡:’P \Æó\é_-\ê\'uk‹œ°xŠAk\n,Ž\ÒA\"xž^&·N\ì©5\\\è¦b6µ)³›C\\º–<\Èdp5d¿_\ÚFwQ\n)Ê¬ªcT‘÷ .lRL¡\É($v¡¡˜\áXµ&ö;ñŒ\Ô¨\"­ŠÙ´8–Á>\'Ö¶Ý‰IHP\×>n)‡©\Ø)\"BBJN›qÎŠ‹I\étWƒX+µ4¤¨ƒ¸:ùV+S\"¬A\ÉH:q®RJ4 \Èò\ÔT\Û\ë­F\ï	\çRˆ\Ñi\ÂñKg™N’\ãŠ\r÷BS1\îŠ\"ò\æÍ´OVÊ¶ö\n§¢=õU\Â\ØJ–5©ñ4…{BÆ’\Ø\Èý	=ZŸ¢{_Ü—\"rƒ	“”r“½@”T¨@\Ò9Ÿ…J[ñ 4¨¥²8)ŠÀ’tv­­>U5ª†mtuŽ<*\è*8t\åAñ<\Ï\åQ7]8\ÑI×Ž³S3hT&b¥ˆ‰­°N£]ôñ<‹t®¦¬\Ì[6Ú‡W”€Ÿ\ÞQ:\ílŸA9i	c\Ö2\Ã\ìþ\Î\ÚP¢œç´¨3ð>\èž\ê•\çx\ÐXUš^\ë\Ö*u eLƒ§y\æ`Ž\ï:\\«\ÃJMÊ¶1éŠœ£v\×1\ï\ë!ÊµUþ·¾µOðÿ\0´ |ñJZ[\×S®\Î)-#*VN’|k\Íð«®®U\Ä\è;¹Ÿ•¬mGO\ê)\Ù3W”Ï›–Y\'ÿ\0•õv\Åö\ç2” }•\'*ò\"jm’¦\ÔV{`’AL\ë10w\à(ûv\è\ÊBˆ\Z\Þ*[;Z´N„*ƒ¡ƒNFkµ¹\Ù\á\ç	\ÇÃµ©t\á\êQ S\ß\Ây\ZzR•$¤Aƒ9ƒÎ–\n)&8ùw\Ôn\ß+a¥9¥§™\î´&F\à\É29ým@<œ¿\\)Õ­\ÔP\Ì	\åy¤óø\ÖbVy„¢\ÇÎ¬\ÝUÓ©\Ø÷Ö–\Ùn1ªGL1ñb\Èm’Rª\"\èI\çFY\Ä÷Q7:mùP\é¶2>è¦\à€yˆ©’5\"¶Ÿj{¾Ò¶ dwþ|h¹DJnO\Öòk2ð\Ñm5;}w“Rû#MO.465@,20I÷Ñªk*@‘õó®\í\Ù#}&±vÉƒó\Ð\ÅK#€-¢‘\Ö#?±œfÓ„û\éÚ•Nšlv\åP˜cp\ëd€{CB`yž[\ÖD•H\ì‚f\0\0žG‰¤\äó1˜Ú„[ax6$–	RD\çŒ\ÇmÀr\ZšX\ë\ì¯_\Ä|ýô²ñpt¨~\ÒT’“\â;ˆ\Ûë¾™†J<\ÎvNûž,y¾¿À—í•º]\'•n¶\ë‰ZY¢ª•Mp\Ê3?\ëM¬,L\ìk+\Å-[žd‘`\è\í¹1Lz]pý\èœ\ÑÁDùZcM[\"s€\Z„žj#á¿…/¶*t•-Z¨\ÉQ;š\è\à\ÃF¤q\æ\åž*Ú€\í\î¤LLÐª·QñŸ­ªô\ÖGb»N!:q\ë\ãR£·‹&¸\Û2r$LkXV§#\áð¥N^˜¡\åùQX2ÁI\Þ\"¨Ðžôuj…$HL\ÄI\Þ:Asm”t\Zr<f­\Û%HË±Qƒ®±\Ä\Õfý\Ìù†\ÙD\à\"¨™b¹šµ·9¥Ž£Ol\á\Z˜õµ\â²9\â¨®\ï_‘Æ©ó£„¤^\Êc¿RjfX%z	O‡¾¸J\nI\'‚RŸA\é­I`®\Öb	žLŽqVËŠ\Z¶\ÐGôþµ(ZA\ï¢nwˆ¥÷ª	\ã@Ñ·KŒNœ:\ï\á«–  \r\ÅN\Ò\È ª¡V4Á\ìó(ŸÃ¬÷ðó\ã\åVŒU \ãA`n\'\Ïc\ê\r\rƒY([e}¯.Ÿ\Æ,\Z\ÌË „Ì‚5\Êx\é\ÄxV\×\ÃiÄ»žo\'\â\æj/–\ß\"•Š ‚iIVµs\Ç-\ÚWi+A\Ê\n¨\Þ¤À‚{µ¬~GS]H\ç­5”>jÊ¿\r\Ö\ÔÑ–\ÖÓ¦b)¡3Q6\êF½Ú½’0\Ê\èug‡ p¦Ö«	\ÓH¤]FƒZ™ËÄ€|dû†\ÞqAq[œü¸\å=˜\ê\æ\Æ\Ý\ßi\0ž$¡2z\'n­–´Ÿ%„úÒ¶q ’bOyü¦¦8ñ\ÚI\î\ZM\ëYc“\Ý‡x{’¿SŒC¡®\Ïam‘ÀR|´?\ZÕ–\ãf•\å\Ú¿CR¯Y\ëõ\î­Zb\Ê\'¬Tƒ¦¼\êC\Å:¸Ž#\Õ*sO>\àZÈ‰\Ë\Ù\î\áðªû\ÎiÜ“>\Z½õ\àð\Êhk\Ì2\ÝI• $óI\Ê}\ÃC\î |;\èËŸµ!6µE¯©_\Ê’@öFþ2ò%:A\ß6¤Á% @Oú\ÐK[Š\ÓoJT\ÓRª4\â\É	‡­i*3¥k\ä\0¦\ØU¦ €mð÷TV\r²1+™3òÓºŽE\ß-+B\à\å-\ÛI\n´ñc^\ëo\äN´-R\å\ÇÎ—§£\Ï*\'*yÊ¿)¦L\ß\ÅN\Þ 	Ô€<b™\Óflþ\×\â\'\î\Å/¨¿GPV²£\Ü\0³DFS¤O÷Œúm\éS½r€’g\Þj¯w{©\ÖkKÅ‹^T`Yøœ\Û9´¾_b\Æ\æ:´Œ£` wR»«Ž³\ÚTšD»\ÓÎ¸<h%™=‹\Ç\Â\è\Ý]´)s–\ÉV\ÇQ\ÝS…•q­­\0\r54\Z/z\Ø\Ñ8\íbÿ\0²VQ9\Ï!YCª?\ê;\\€B\ë´9PT¨=ôQ®c¤‚º\è\ÐNºi¹ú\åX¤:\Õ\äP_\á\Êss\Ñ4?Rµ(%JQ $$I\á\0jM[1K´Œ`,¸”<ÁR‰0„´W¯ò¨zVw‘\ÙQ‚\æV®[d¤’\'´óÖº¸K\Æt)$fILŽbw×¤wW\r©/6›L‹[¡±˜v\ÎnrN_\á©z]zÛ¥³\Ö\'¬\Ì\áXmjq®\ÑO\í«EG4·& &(F\ÚJ<@IR¡)*f\Z¸\Ôk\ßS©*DgJ’H\"A\â&›ô\Âñ·Rƒ\Ö!N‡ž­JSkIý®E~\åj\Ê%\0Æ›\×X•ûh³Z”—\ÛV¡Ài\ê\Â:\Ä\ßeFi˜Û—ÔQ3w*BV•	\Z\Ì9‰\ÜwŠÛ—¯	\áµ‰¼¢&\ä<—JAR³\ÙÎ v ]ûDl)ƒ7ý™V¥H <—3ž¸b\"A(”L\Ä\ëM¾\æIbŠ“¢®û„oQ\Ü6\â ­\nL\í™$O„ø}Cpþc´EZñüMµ\ÚuHy%a›N°õMe!®q*\Í3\í \èAÏ–U*!¸\ákr¸\Â	\Î²ˆœ\ÙNX™Ú‹·º$	€cByO>\êekzƒ‡´\Ðy´¬u\Ó.­*BUÕ˜NŠ\Ì¤Á\Û7}_¡«gP\ì)¸€\ãr:Ì¡.~Ñ°tJ”’	\ßPt&¦<³\èI\á‹&B•%9U˜	#)‘\â7p©$˜ž\Ì\í\ÏÃ¾¤Kx‰}\Î\ßZBŽ£;J¡æ‚­<*Lc\Zc\ì\å“¹µB¶.[•‡ñ)aZrY«ÉšWM\î-u)\Ì3e˜ƒ–{Ž\ÓA¸Ã¹Jò( *	% ò*ˆb\îA°m`\Ì.œ^@­BT\ÓI<R¯£Mœ¾\êV\Ý\Èe¶\r©¹9‚\Â•€\Ø°\âŽl\Û\æu\Z›C*¨ejIBŠA‚@$I\ØO=EFòT’R R¡¸\"ñ­]½i¦K\Ê;¬e\ÔfAHx’“\ÙQAZx\ÓQ\"·‹2P\êÁt=¯\ïI\ä{Z\ÏqÖ©JWL-(:y\×N\\½CX·TV”w5•\ÌVU±\ÎZØ®MlST—`è‘§T’0A‘\Ý\ÇNU\ÑX:‘\'‰“¯E[¯J²¨\ë³\ËÖµ#•pElUhVU¶ ¢¸.\ëQ(\Ö&‰\Õ\Ò&«wd\ÑY¨·\"Š¸Y)\Ë8\îFøÖ 5!¨\ÕY¥¸Q8š\í.‘\\\Z\Õ\Ð\ÃeU•‘[©Ì†“D¤\Ô\0QL&i¸À›0(TJ\\ð®_YC¹¢m½‰õ;*\ÉQ5¾ª”TF$n++\"²ƒb\èÿ\Ù','images (1).jfif','image/jpeg',_binary '\0');
/*!40000 ALTER TABLE `bookdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `discount` int DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `expire_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (12,'DEC200',16,'1605530048365'),(12,'DEC400',17,'1605530048365');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (337),(337),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL,
  `books` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (301,'weqw, 123, ','user@gmail.com',136,'Sun Nov 15 2020 15:03:29 '),(306,'weqw, 123, ','user@gmail.com',136,'Sun Nov 15 2020 16:40:12 '),(308,'weqw, ','user@gmail.com',13,'Sun Nov 15 2020 16:45:32 '),(313,'123, ewr, ','user@gmail.com',128,'Sun Nov 15 2020 22:51:15 '),(315,'123, ','user@gmail.com',108,'Sun Nov 15 2020 23:24:10 '),(319,'EQWE, ','user@gmail.com',12,'Mon Nov 16 2020 15:50:05 '),(321,'EQWE, ','user@gmail.com',10,'Mon Nov 16 2020 15:52:54 '),(336,'Harry Potter and the Chamber of Secrets, The Lord of the Rings: The classic fantasy masterpiece, The Book of Chaos (Starfell 1), ','user@gmail.com',62,'Mon Nov 16 2020 18:14:54 ');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_MODERATOR'),(3,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `bookID` int DEFAULT NULL,
  `userID` int DEFAULT NULL,
  `itemNO` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`itemNO`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (34,3),(35,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofile` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `emailAddress` varchar(150) DEFAULT NULL,
  `postalAddress` varchar(150) DEFAULT NULL,
  `membership` tinyint DEFAULT NULL,
  `promotionCode` varchar(45) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `promotion_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `emailAddress_UNIQUE` (`emailAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (34,'admin@gmail.com','$2a$10$BYcwg9EEKaJuXGMMHscC6.WjQ7Gz1jAuHZZtG9jfmw3zzhlA1LDF2','admin','kilinichchi'),(35,'user@gmail.com','$2a$10$4vSPtP.LHkJhsmdfZhn98uvrfkS8HZ3sdcwpinxqWD4je.ez7Bs0O','user','kilinochchi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 18:52:05
