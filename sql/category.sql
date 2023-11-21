[tengfei@core ~]$ cat cateory.sql 
-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: amazon
-- ------------------------------------------------------
-- Server version	5.7.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zh_key` varchar(30) NOT NULL,
  `en_key` varchar(50) NOT NULL,
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'音箱','speakers',0),(2,'音响','stereos',0),(3,'智能音箱','smart speakers',0),(4,'收音机','radios',0),(5,'麦克风','microphones',0),(6,'MP3','MP3',0),(7,'MP4','MP4',0),(8,'专业音频','professional audio',0),(9,'音频线','audio cable',0),(10,'有线耳机','wired headsets',0),(11,'智能设别','Smart devices',0),(12,'智能儿童手表','smart children\'s Watches',0),(13,'VR配件','VR accessories',0),(14,'AR配件','AR accessories',0),(15,'智能手表','smart watches',0),(16,'智能手环','smart bracelets',0),(17,'监控摄像','surveillance cameras',0),(18,'智能出行','smart travel',0),(19,'XR设备','XR devices',0),(20,'智能家居','smart home',0),(21,'健康监测','health monitoring',0),(22,'无人机','drones',0),(23,'智能机器人','smart robots',0),(24,'智能配饰','smart accessories',0),(25,'运动跟踪器','exercise trackers',0),(26,'电子教育','E-education',0),(27,'学习机','learning machine',0),(28,'点读机','dot-reading machine',0),(29,'点读笔','dot-reading pen',0),(30,'早教益智','early education puzzle',0),(31,'录音笔','sound recorder',0),(32,'电纸书','e-paper book',0),(33,'电子词典','electronic dictionary',0),(34,'复读机','rereader',0),(35,'翻译机','translator',0),(36,'电脑整机','Complete computer',0),(37,'笔记本','notebook',0),(38,'游戏本','game book',0),(39,'平板电脑','tablet',0),(40,'台式机','desktop',0),(41,'一体机','all-in-one',0),(42,'服务器','server',0),(43,'工作站','workstation',0),(44,'外设产品','Peripheral products',0),(45,'鼠标','mouse',0),(46,'键盘','keyboard',0),(47,'键鼠套装','keyboard and mouse set',0),(48,'网络仪表仪器','network instrumentation',0),(49,'U盘','U disk',0),(50,'移动固态硬盘','mobile SSD',0),(51,'移动硬盘','mobile hard disk',0),(52,'鼠标垫','mouse pad',0),(53,'摄像头','camera',0),(54,'线缆','cable',0),(55,'手写板','writing pad',0),(56,'硬盘盒电脑工具','hard disk box Computer tools',0),(57,'电脑清洁','computer cleaning',0),(58,'UPS电源','UPS power supply',0),(59,'插座','socket',0),(60,'平板电脑配件','tablet computer accessories',0),(61,'笔记本配件','laptop accessories',0),(62,'投屏器','screen projector',0),(63,'扩展坞','docking dock',0),(64,'键盘配件','keyboard accessories',0),(65,'机柜','cabinet',0),(66,'游戏设备','Game equipment',0),(67,'游戏机','Game Console',0),(68,'游戏耳机','Game Headset',0),(69,'游戏手柄','Game controller',0),(70,'游戏方向盘','Game Steering wheel',0),(71,'游戏软件','Game software',0),(72,'游戏周边','Game accessories',0),(73,'网络产品','Network products',0),(74,'路由器','Routers',0),(75,'网络机顶盒','network set-top boxes',0),(76,'交换机','switches',0),(77,'网络存储','network storage',0),(78,'网卡','network cards',0),(79,'5G设备','5G equipment',0),(80,'4G上网设备','4G Internet access equipment',0),(81,'网线','network cables',0),(82,'网络配件','network accessories',0),(83,'办公产品','Office products',0),(84,'投影机','projectors',0),(85,'投影配件','projection accessories',0),(86,'打印机','printers',0),(87,'传真设备','fax equipment',0),(88,'验钞机','currency detectors',0),(89,'点钞机','currency counting machines',0),(90,'扫描设备','scanning equipment',0),(91,'复合机','compound machines',0),(92,'碎纸机','paper shredders',0),(93,'考勤门禁','attendance and access control',0),(94,'收银机','cash registers',0),(95,'会议音频视频','conference audio and video',0),(96,'保险柜','safes',0),(97,'装订机','binding machines',0),(98,'封装机','packaging machines',0),(99,'安防监控','security monitoring',0),(100,'白板','whiteboard',0),(101,'文具','Stationery',0),(102,'笔','pens',0),(103,'本册','this book',0),(104,'便签','notes',0),(105,'办公文具','office stationery',0),(106,'文件收纳','document storage',0),(107,'学生文具','student stationery',0),(108,'计算器','calculator',0),(109,'画具画材','drawing tools',0),(110,'财会用品','accounting supplies',0),(111,'文房四宝','four treasures of the study',0),(112,'耗材','Consumables',0),(113,'硒鼓','toner cartridge',0),(114,'墨粉','toner',0),(115,'墨盒','cartridge',0),(116,'色带','ribbon',0),(117,'纸类','paper',0),(118,'刻录光','Burning light',0),(119,'办公用纸','Office paper',0),(120,'标签','label',0),(121,'签纸','signature paper',0),(122,'铜版纸','coated paper',0),(123,'工程纸','engineering paper',0),(124,'厨具','Kitchenware',0),(125,'水具酒具','Water and Wine Set',0),(126,'烹饪锅具','Cooking pot set',0),(127,'炒锅','Wok',0),(128,'碗碟套装','dish set',0),(129,'厨房配件','Kitchen accessories',0),(130,'刀剪菜板','Cutting board',0),(131,'锅具套装','pot set',0),(132,'茶具','tea set',0),(133,'咖啡具','coffee set',0),(134,'保温杯','thermos cup',0),(135,'厨房置物架','Kitchen storage rack',0),(136,'床上用品','Bedding',0),(137,'床品四件套','bedding 4-piece set',0),(138,'婚庆床品','Wedding bedding',0),(139,'被子','quilt',0),(140,'枕头','pillow',0),(141,'毛毯','blanket',0),(142,'电热毯','electric blanket',0),(143,'水暖毯','water heating blanket',0),(144,'床单床笠','bed sheet',0),(145,'宿舍床帘','dormitory bed curtain',0),(146,'床垫床褥','mattress mattress',0),(147,'床旗','bed flag',0),(148,'凉席蚊帐','mat mosquito net',0),(149,'居家布艺','Home fabric',0),(150,'一次性洗脸巾','disposable face towel',0),(151,'毛巾浴巾','towel bath towel',0),(152,'干发帽','dry hair hat',0),(153,'窗帘','curtain',0),(154,'窗纱','window screen',0),(155,'梦幻帘','dream curtain',0),(156,'门帘','door curtain',0),(157,'桌布','tablecloth',0),(158,'抱枕靠垫沙发垫','throw pillow cushion sofa cushion',0),(159,'飘窗垫','bay window cushion',0),(160,'地毯','carpet',0),(161,'地垫','floor mat',0),(162,'蒲团','futon',0),(163,'生活日用','Daily use',0),(164,'香薰','aroma',0),(165,'熏香','incense',0),(166,'火机烟具','lighter cigarette',0),(167,'衣架','coat hanger',0),(168,'梳子','comb',0),(169,'指甲刀','nail clippers',0),(170,'化妆镜','makeup mirror',0),(171,'洗漱杯','toiletries',0),(172,'日杂小件','toiletries',0),(173,'搓澡巾','shower towels',0),(174,'浴室置物架','bathroom shelf',0),(175,'移动马桶','portable toilet',0),(176,'马桶刷','toilet brush',0),(177,'保暖防护','thermal protection',0),(178,'净化除味','purification and deodorizing',0),(179,'雨伞雨具','umbrella rain gear',0),(180,'收纳用品','Storage box',0),(181,'真空收纳袋','vacuum receive bag',0),(182,'化妆包','cosmetic bag',0),(183,'化妆品收纳','cosmetics receive',0),(184,'内衣收纳盒','to receive a box',0),(185,'手办收纳','underwear would receive',0),(186,'桌面收纳','desktop receive',0),(187,'洞洞板鞋子收纳','hole hole board shoe organizer',0),(188,'旅行收纳','receive travel',0),(189,'夹缝收纳柜','cracks to receive ark',0),(190,'小推车置物架','trolley shelf',0),(191,'搬家纸箱','moving carton',0),(192,'搬家袋','move the bag',0),(193,'收纳柜','to receive ark',0),(194,'收纳箱','receive box',0),(195,'家居饰品','Home accessories',9),(196,'招财猫','lucky cat',0),(197,'相框','picture frame',0),(198,'花瓶','vase',0),(199,'仿真花','artificial flowers',0),(200,'桌面摆件','tabletop decoration',0),(201,'落地摆件','floor decoration',0),(202,'流水摆件','flowing decoration',0),(203,'现代装饰画','modern decorative painting',0),(204,'电表箱装饰画','electric meter box decoration painting',0),(205,'灯光画','light painting',0),(206,'数字油画','digital oil painting',0),(207,'装饰贴','decorative stickers',0),(208,'钟饰壁饰','clock decoration wall decoration',0),(209,'创意饰品','Creative jewelry',0),(210,'婚庆用品','wedding supplies',0),(211,'节庆用品','festival supplies',0),(212,'灯具','Lamps',0),(213,'吸顶灯','ceiling lamps',0),(214,'吊灯','chandeliers',0),(215,'台灯','table lamps',0),(216,'筒灯射灯','downlights',0),(217,'庭院灯','garden lights',0),(218,'装饰灯','decorative lights',0),(219,'LED灯','LED lights',0),(220,'氛围照明','atmosphere lighting',0),(221,'落地灯','floor lamps',0),(222,'应急灯','emergency lights',0),(223,'手电','flashlights',0),(224,'节能灯','energy-saving lamps',0),(225,'家具','Furniture',0),(226,'客厅','living room',0),(227,'卧室','bedroom',0),(228,'餐厅','dining room',0),(229,'书房','study',0),(230,'儿童','children',0),(231,'储物','storage',0),(232,'办公家具','office furniture',0),(233,'阳台户外','balcony outdoor',0),(234,'电脑桌','computer desk',0),(235,'电视柜','TV cabinet',0),(236,'茶几办公柜','coffee table office cabinet',0),(237,'沙发','sofa',0),(238,'床','bed',0),(239,'床垫','mattress',0),(240,'餐桌','dining table',0),(241,'衣柜','wardrobe',0),(242,'书架','bookshelf',0),(243,'鞋柜','shoe cabinet',0),(244,'置物架','shelving',0),(245,'电脑椅','computer chair',0),(246,'晾衣架儿童床','drying rack children\'s bed',0),(247,'儿童桌椅','children\'s table and chair',0),(248,'红木','mahogany',0),(249,'全屋定制','Whole house custom',0),(250,'定制衣柜','custom wardrobe',0),(251,'榻榻米','tatami',0),(252,'橱柜','cupboard',0),(253,'门','door',0),(254,'室内门','interior door',0),(255,'防盗门','security door',0),(256,'窗','window',0),(257,'淋浴房','shower room',0),(258,'壁挂炉','wall hanging stove',0),(259,'散热器','radiator',0),(260,'建筑材料','Building materials',0),(261,'油漆涂料','paints and coatings',0),(262,'涂刷辅料','brushing accessories',0),(263,'瓷砖','tile',0),(264,'地板','floor',0),(265,'壁纸','wallpaper',0),(266,'强化地板','laminate floor',0),(267,'美缝剂','sealant',0),(268,'防水涂料','waterproof coating',0),(269,'木材','wood',0),(270,'板材','board',0),(271,'厨房卫浴','Kitchen bathroom',9),(272,'水槽','sink',0),(273,'龙头','faucet',0),(274,'淋浴花洒','shower head',0),(275,'马桶','toilet',0),(276,'智能马桶','smart toilet',0),(277,'智能马桶盖','smart toilet lid',0),(278,'厨卫挂件','kitchen and bathroom pendant',0),(279,'浴室柜','bathroom cabinet',0),(280,'浴霸','bath master',0),(281,'集成吊顶','integrated ceiling',0),(282,'垃圾处理器','garbage disposal',0),(283,'厨卫配件','kitchen and bathroom accessories',0),(284,'五金电工','Hardware electrician',9),(285,'指纹锁','fingerprint lock',0),(286,'电动工具','power tools',0),(287,'手动工具','hand tools',0),(288,'测量工具','measuring tools',0),(289,'工具箱','Toolbox',0),(290,'开关插座','switch socket',0),(291,'配电箱','distribution box',0),(292,'断路器','circuit breaker',0),(293,'机械锁拉手','mechanical lock handle',0),(294,'男装','Men\'s clothing',0),(295,'男士T恤','men\'s T-shirts',0),(296,'男士牛仔裤','men\'s jeans',0),(297,'男士休闲裤','men\'s casual pants',0),(298,'男士衬衫','men\'s shirts',0),(299,'男士短裤','men\'s shorts',0),(300,'男士POLO衫','men\'s POLO shirts',0),(301,'男士羽绒服','men\'s down jackets',0),(302,'男士棉服','men\'s cotton jackets',0),(303,'男士真皮皮衣','men\'s leather jackets',0),(304,'男士夹克','men\'s jackets',0),(305,'男士卫衣','men\'s sweatshirts',0),(306,'男士毛呢大衣','men\'s woolen coats',0),(307,'男士大','men\'s large',0),(308,'码男士','size men',0),(309,'男士西服套装','Men\'s suits',0),(310,'男士仿皮皮衣','men\'s imitation leather jackets',0),(311,'男士风衣','men\'s windbreakers',0),(312,'男士针织衫','men\'s knitwear',0),(313,'男士马甲','men\'s vests',0),(314,'男士背心羊毛衫','men\'s vest sweaters',0),(315,'男士羊绒衫','men\'s cashmere sweaters',0),(316,'男士西服','men\'s suits',0),(317,'男士西裤','men\'s trousers',0),(318,'男士卫裤','men\'s sweatpants',0),(319,'男士运动裤','men\'s sweatpants',0),(320,'男士工装','men\'s workwear',0),(321,'男士设计','men\'s design',0),(322,'师','Teacher',0),(323,'男士潮牌','men\'s trendy brand',0),(324,'男士唐装','men\'s Tang suit',0),(325,'男士中山装','men\'s tunic suit',0),(326,'男士中老年装','men\'s middle-aged and elderly clothing',0),(327,'男士加绒裤','men\'s fleece pants',0),(328,'女装','Women\'s clothing',0),(329,'女装连衣裙','women\'s dresses',0),(330,'女装半身裙','women\'s skirts',0),(331,'女装T恤','women\'s T-shirts',0),(332,'女装衬衫','women\'s shirts',0),(333,'女装休闲裤','women\'s casual pants',0),(334,'女士牛仔裤','women\'s jeans',0),(335,'女装短外套','women\'s jackets',0),(336,'女装卫衣','women\'s sweatshirts',0),(337,'女装小西','women\'s small suits',0),(338,'女装风衣','women\'s windbreakers',0),(339,'女装针织衫','women\'s sweaters',0),(340,'女装雪纺衫','women\'s chiffon shirts',0),(341,'女装大码女装','women\'s plus size women\'s clothing',0),(342,'中年女装','Middle-aged women\'s clothing',0),(343,'女装短裤','women\'s shorts',0),(344,'女士正装裤','women\'s formal pants',0),(345,'女装马甲','women\'s vests',0),(346,'女装吊带','women\'s suspenders',0),(347,'女装背心','women\'s vests',0),(348,'女装打底衫','women\'s bottoming shirts',0),(349,'女装旗袍','women\'s cheongsam',0),(350,'女装汉服','women\'s Hanfu',0),(351,'女装礼服','women\'s dresses',0),(352,'女装婚纱','women\'s wedding dresses',0),(353,'女装毛衣','women\'s sweaters',0),(354,'女装羊绒衫','women\'s cashmere sweaters',0),(355,'女装羽绒服','women\'s down jackets',0),(356,'女装毛呢大衣','women\'s woolen clothes Coats',0),(357,'女装棉服','women\'s cotton coats',0),(358,'女装皮草','women\'s furs',0),(359,'女装仿皮皮衣','women\'s imitation leather jackets',0),(360,'女装真皮皮衣','women\'s genuine leather jackets',0),(361,'女装打底裤','women\'s leggings',0),(362,'女装加绒裤','women\'s fleece pants',0),(363,'女装设计师','women\'s designers',0),(364,'女装潮牌','women\'s trendy brands',0),(365,'女士运动裤','women\'s sweatpants',0),(366,'内衣','Underwear',0),(367,'文胸睡衣','bra pajamas',0),(368,'家居服','home clothes',0),(369,'男士内裤','men\'s underwear',0),(370,'女士内裤','women\'s underwear',0),(371,'吊带','suspenders',0),(372,'内衣背心','underwear vests',0),(373,'文胸套装','bra sets',0),(374,'情侣睡衣','couple\'s pajamas',0),(375,'塑身美体','body shaping',0),(376,'少女文胸','girls\' bras',0),(377,'休闲棉袜','casual cotton socks',0),(378,'商务男袜','business men\'s socks',0),(379,'连裤袜','pantyhose',0),(380,'丝袜','stockings',0),(381,'美腿袜','leg socks',0),(382,'打底裤袜','bottoming Pantyhose',0),(383,'抹胸','tube tops',0),(384,'内衣配件','underwear accessories',0),(385,'大码内衣','plus size underwear',0),(386,'打底衫','bottoming shirts',0),(387,'泳衣','swimsuits',0),(388,'秋衣秋裤','autumn clothes and long pants',0),(389,'保暖内衣','thermal underwear',0),(390,'男士配饰','Men\'s accessories',0),(391,'男士围巾','men\'s scarves',0),(392,'男士披肩','men\'s shawls',0),(393,'男士光学镜架','men\'s optical frames',0),(394,'男士镜片','men\'s lenses',0),(395,'男士毛线帽','men\'s woolen hats',0),(396,'男士真皮手套','men\'s leather gloves',0),(397,'男士毛线手套','men\'s woolen gloves',0),(398,'男士丝巾','men\'s silk scarves',0),(399,'男士男士围巾','men\'s scarves',0),(400,'男士棒球帽','men\'s baseball caps',0),(401,'男士太阳镜','men\'s sunglasses',0),(402,'男士防辐射眼镜','men\'s radiation protection glasses',0),(403,'男士老花镜','men\'s Reading glasses',0),(404,'男士贝雷帽','men\'s berets',0),(405,'男士礼帽','men\'s top hats',0),(406,'男士手套','men\'s gloves',0),(407,'男士帽子套装','men\'s hat suits',0),(408,'男士领带','men\'s ties',0),(409,'男士领结','men\'s bow ties',0),(410,'男士领带夹','men\'s tie clips',0),(411,'男士鸭舌帽','men\'s peaked caps',0),(412,'男士口罩','men\'s masks',0),(413,'男士耳罩','men\'s earmuffs',0),(414,'男士耳包','men\'s ear bags',0),(415,'男士毛线','men\'s wool',0),(416,'男士布面料','men\'s fabrics',0),(417,'男士遮阳帽','men\'s Sun hats',0),(418,'男士遮阳伞','men\'s parasols',0),(419,'男士雨伞','men\'s umbrellas',0),(420,'男士袖扣','men\'s cufflinks',0),(421,'男士钥匙扣','men\'s keychains',0),(422,'男士游泳镜','men\'s swimming goggles',0),(423,'男士腰带','men\'s belts',0),(424,'男运动套装','men\'s sports suits',0),(425,'女士配饰','Women\'s accessories',0),(426,'女士围巾','women\'s scarves',0),(427,'女士披肩','women\'s shawls',0),(428,'女士光学镜架','women\'s optical frames',0),(429,'女士镜片','women\'s lenses',0),(430,'女士毛线帽','women\'s woolen hats',0),(431,'女士真皮手套','women\'s leather gloves',0),(432,'女士毛线手套','women\'s woolen gloves',0),(433,'女士丝巾','women\'s silk scarves',0),(434,'女士男士围巾','women\'s men\'s scarves',0),(435,'女士棒球帽','women\'s baseball caps',0),(436,'女士太阳镜','women\'s sunglasses',0),(437,'女士防辐射眼镜','women\'s radiation protection glasses',0),(438,'女士老花镜','women\'s Reading glasses',0),(439,'女士贝雷帽','ladies berets',0),(440,'女士礼帽','ladies hats',0),(441,'女士手套','ladies gloves',0),(442,'女士帽子套装','ladies hat suits',0),(443,'女士领带','ladies ties',0),(444,'女士领结','ladies bow ties',0),(445,'女士领带夹','ladies tie clips',0),(446,'女士鸭舌帽','ladies peaked caps',0),(447,'女士口罩','ladies masks',0),(448,'女士耳罩','ladies ear muffs',0),(449,'女士耳包','ladies ear bags',0),(450,'女士毛线','ladies wool',0),(451,'女士布面料','ladies fabrics',0),(452,'女士遮阳帽','ladies Sun hats',0),(453,'女士遮阳伞','ladies parasols',0),(454,'女士雨伞','ladies umbrellas',0),(455,'女士袖扣','ladies cufflinks',0),(456,'女士钥匙扣','ladies keychains',0),(457,'女士游泳镜','ladies swimming goggles',0),(458,'女士腰带','ladies belts',0),(459,'女鞋','Women\'s shoes',0),(460,'女士休闲鞋','women\'s casual shoes',0),(461,'女士凉鞋','women\'s sandals',0),(462,'女士单鞋','women\'s single shoes',0),(463,'女士拖鞋','women\'s slippers',0),(464,'女士高跟鞋','women\'s high heels',0),(465,'妈妈鞋','mother\'s shoes',0),(466,'女士帆布鞋','women\'s canvas shoes',0),(467,'女士布鞋','women\'s cloth shoes',0),(468,'女士绣花鞋','women\'s embroidered shoes',0),(469,'女士内增高鞋','women\'s height increasing shoes',0),(470,'女士雨鞋','women\'s rain boots',0),(471,'女士雨靴','women\'s rain boots',0),(472,'女士','women\'s',0),(473,'女靴','women\'s boots',0),(474,'女士雪地靴','women\'s Snow boots',0),(475,'女士鱼嘴鞋','women\'s fish shoes',0),(476,'女士马丁靴','women\'s Martin boots',0),(477,'女士踝靴','women\'s ankle boots',0),(478,'女士松糕鞋','women\'s platform shoes',0),(479,'女士坡跟鞋','women\'s wedge shoes',0),(480,'女士防水鞋','women\'s waterproof shoes',0),(481,'女士鞋配件','women\'s shoe accessories',0),(482,'女士跑步鞋','women\'s running shoes',0),(483,'女士篮球鞋','women\'s basketball shoes',0),(484,'女士板鞋','women\'s sneakers',0),(485,'女士拖鞋','women\'s slippers',0),(486,'女士足球鞋','women\'s football shoes',0),(487,'男鞋','Men\'s shoes',0),(488,'男士鞋新品推荐','men\'s shoes new recommendation',0),(489,'男士休闲鞋','men\'s casual shoes',0),(490,'男士凉鞋','men\'s sandals',0),(491,'男士商务皮鞋','men\'s business shoes',0),(492,'男士正装皮鞋','men\'s dress shoes',0),(493,'男士正装鞋','men\'s dress shoes',0),(494,'男士帆布鞋','men\'s canvas shoes',0),(495,'男士拖鞋','men\'s slippers',0),(496,'男士功能鞋','men\'s functional shoes',0),(497,'男士传统布鞋','men\'s traditional cloth shoes',0),(498,'男士增高鞋','men\'s increasing shoes',0),(499,'男靴','men\'s boots',0),(500,'男士雨','men\'s rain',0),(501,'鞋','shoes',0),(502,'男士工装鞋','men\'s work shoes',0),(503,'男士鞋配件','men\'s shoes accessories',0),(504,'男士跑步鞋','men\'s running shoes',0),(505,'男士篮球鞋','men\'s basketball shoes',0),(506,'男士板鞋','men\'s board shoes',0),(507,'男士训练鞋','men\'s training shoes',0),(508,'男士足球鞋','men\'s football Shoes',0),(509,'女包','Ms ms female bag',0),(510,'女士单肩包','single shoulder bag',0),(511,'女士手提包','handbag',0),(512,'女士斜挎包','lady inclined shoulder bag',0),(513,'女士双肩包','backpack',0),(514,'女士钱包','purse',0),(515,'女士手拿包','ladies hand bag',0),(516,'女士卡包','ms card bag',0),(517,'女士零钱包','zero wallet',0),(518,'女士钥匙包','ms ms key package',0),(519,'男包','Men\'s bags',0),(520,'男士钱包','men\'s wallets',0),(521,'男士双肩包','men\'s backpacks',0),(522,'男士单肩包','men\'s shoulder bags',0),(523,'男士斜挎包','men\'s crossbody bags',0),(524,'男士商务公文包','men\'s business briefcases',0),(525,'男士手包','men\'s handbags',0),(526,'男士卡包','men\'s card holders',0),(527,'男士名片夹','men\'s business card holders',0),(528,'男士钥匙包','men\'s key bags',0),(529,'童鞋','Children\'s shoes',0),(530,'儿童运动鞋','Children\'s sports shoes',0),(531,'儿童靴子','children\'s boots',0),(532,'儿童帆布鞋','children\'s canvas shoes',0),(533,'儿童皮鞋','children\'s leather shoes',0),(534,'儿童棉鞋','children\'s cotton shoes',0),(535,'儿童凉鞋','children\'s sandals',0),(536,'儿童拖鞋','children\'s slippers',0),(537,'纸品清洗','Paper cleaning',0),(538,'抽纸','paper towels',0),(539,'卷纸','roll paper',0),(540,'湿巾','wet wipes',0),(541,'厨房用纸','kitchen paper',0),(542,'湿厕纸','wet toilet paper',0),(543,'洗衣凝珠','laundry beads',0),(544,'洗衣液','laundry detergent',0),(545,'洗衣粉','washing powder',0),(546,'肥皂','soap',0),(547,'护理除菌','care and sterilization',0),(548,'家庭清洁','Household cleaning',0),(549,'洗洁精','dish soap',0),(550,'油污净','oil cleaning',0),(551,'洁厕剂','toilet cleaner',0),(552,'消毒液','disinfectant',0),(553,'地板清洁剂','floor cleaner',0),(554,'垃圾袋','garbage bag',0),(555,'垃圾桶','trash can',0),(556,'拖把','mop',0),(557,'扫把','broom',0),(558,'驱蚊驱虫','insect repellent',0),(559,'宠物生活','Pet life',9),(560,'狗粮','dog food',0),(561,'狗罐头','canned dog',0),(562,'狗零食','dog snacks',0),(563,'狗厕所','dog toilet',0),(564,'尿垫','pee pad',0),(565,'猫粮','cat food',0),(566,'猫罐头','canned cat',0),(567,'猫零食','cat snacks',0),(568,'猫砂','cat litter',0),(569,'猫砂盆','cat litter box',0),(570,'猫窝','cat bed',0),(571,'狗窝','kennel',0),(572,'宠物食具水具','pet food and water supplies',0),(573,'宠物医疗保健','pet medical care',0),(574,'宠物玩具','Pet toys',0),(575,'宠物鞋服','pet shoes and clothing',0),(576,'宠物洗护美容','pet care and beauty',0),(577,'宠物牵引','pet traction',0),(578,'宠物用品','pet supplies',0),(579,'水族世界','aquarium world',0),(580,'鱼缸','fish tank',0),(581,'水族箱','aquarium',0),(582,'鱼粮','fish food',0),(583,'水族活体','aquarium living body',0),(584,'功能箱包','Function Luggage',0),(585,'行李箱','luggage',0),(586,'拉杆包','trolley bag',0),(587,'旅行包','travel bag',0),(588,'电脑包','computer bag',0),(589,'休闲运动包','leisure sports bag',0),(590,'书包','school bag',0),(591,'登山包','hiking bag',0),(592,'腰包','waist pack',0),(593,'胸包','chest bag',0),(594,'旅行配件','travel accessories',0),(595,'钟表','Watches',0),(596,'日韩表','Japanese and Korean watches',0),(597,'欧美表','European and American watches',0),(598,'德表','German watches',0),(599,'儿童手表','children\'s watches',0),(600,'智能手表','smart watches',0),(601,'闹钟','alarm clock',0),(602,'挂钟','wall clock',0),(603,'座钟','seat clock',0),(604,'钟表配件','watch accessories',0),(605,'钟表维修','watch maintenance',0),(606,'珠宝首饰','Jewelry',0),(607,'黄金','Gold',0),(608,'K金','K gold',0),(609,'时尚饰品','Fashion jewelry',0),(610,'钻石','Diamonds',0),(611,'翡翠','Jadeite',0),(612,'和田玉','Hetian Jade',0),(613,'银饰','Silver jewelry',0),(614,'水晶玛瑙','Crystal agate',0),(615,'彩宝','Colored treasure',0),(616,'铂金木手串','Platinum wooden bracelet',0),(617,'珍珠','Pearls',0),(618,'发饰','Hair accessories',0),(619,'运动服饰','Sportswear',0),(620,'T恤','T-shirt',0),(621,'运动裤','Sweatpants',0),(622,'运动套装','Tracksuit',0),(623,'夹克','Jacket',0),(624,'风衣','Trench coat',0),(625,'运动配饰','Sports Accessories',0),(626,'卫衣','hoodie',0),(627,'套头衫','jumper',0),(628,'运动背心','sports vest',0),(629,'健身服','fitness wear',0),(630,'运动内衣','sports underwear',0),(631,'羽绒服','down jacket',0),(632,'棉服','padded jacket',0),(633,'健身训练','Fitness training',0),(634,'跑步机','treadmills',0),(635,'动感单车','spinning bikes',0),(636,'健身车','exercise bikes',0),(637,'椭圆机','elliptical machines',0),(638,'综合训练器','comprehensive trainers',0),(639,'划船机','rowing machines',0),(640,'甩脂机','fat-removing machines',0),(641,'倒立机','inversion machines',0),(642,'踏步机','steppers',0),(643,'哑铃','dumbbells',0),(644,'仰卧板','supine boards',0),(645,'收腹机','abdominal machines',0),(646,'瑜伽用品','yoga supplies',0),(647,'舞蹈用品','dance supplies',0),(648,'运动护具','sports protective gear',0),(649,'健腹轮','abdominal wheel',0),(650,'拉力器','tension machine',0),(651,'臂力器','arm strength machine',0),(652,'跳绳引体向上器','skipping pull-up machine',0),(653,'骑行运动','Cycling sports',0),(654,'山地车','mountain bikes',0),(655,'公路车','road bikes',0),(656,'折叠车','folding bikes',0),(657,'骑行服','cycling clothes',0),(658,'城市自行车','city bikes',0),(659,'穿戴装备','wearables',0),(660,'自行车配件','Cycling accessories',0),(661,'体育用品','Sports goods',0),(662,'乒乓球','Table tennis',0),(663,'羽毛球','Badminton',0),(664,'篮球','Basketball',0),(665,'足球','Football',0),(666,'轮滑滑板','roller skating',0),(667,'网球','tennis',0),(668,'高尔夫','Golf',0),(669,'台球','billiards',0),(670,'排球','Volleyball',0),(671,'棋牌麻将','Chess and Mahjong',0),(672,'民俗运动','folk sports',0),(673,'体育服务','Sports service',0),(674,'田径鞋','Track and field shoes',0),(675,'户外鞋服','Outdoor shoes and clothing',0),(676,'户外风衣','outdoor windbreakers',0),(677,'徒步鞋','hiking shoes',0),(678,'T恤','T-shirts',0),(679,'冲锋衣裤','assault clothing',0),(680,'速干衣裤','quick-drying clothing',0),(681,'越野跑鞋','cross-country running shoes',0),(682,'滑雪服','ski clothing',0),(683,'羽绒服','down jackets',0),(684,'棉服','cotton clothing',0),(685,'休闲衣裤','casual clothing',0),(686,'抓绒衣裤','fleece clothing',0),(687,'溯溪鞋','river shoes',0),(688,'沙滩凉拖','beach sandals',0),(689,'休闲鞋','casual shoes',0),(690,'软壳衣裤','soft shell underwear',0),(691,'功能内衣','functional underwear',0),(692,'军迷服饰','military clothing',0),(693,'登山鞋','hiking shoes',0),(694,'工装鞋','work shoes',0),(695,'户外袜','outdoor socks',0),(696,'户外防晒衣','outdoor sun protection clothing',0),(697,'户外装备','Outdoor equipment',0),(698,'背包','backpacks',0),(699,'帐篷','tents',0),(700,'垫子','MATS',0),(701,'望远镜','binoculars',0),(702,'烧烤用具','barbecue equipment',0),(703,'便携桌椅床','portable table and chair bed',0),(704,'户外配饰','outdoor accessories',0),(705,'军迷用品','military supplies',0),(706,'野餐用品','picnic supplies',0),(707,'睡袋','sleeping bags',0),(708,'吊床','hammocks',0),(709,'救援装备','rescue equipment',0),(710,'户外照明','outdoor lighting',0),(711,'旅行装备','travel equipment',0),(712,'户外工具','outdoor tools',0),(713,'户外仪表','outdoor instrumentation',0),(714,'登山攀岩','Mountaineering',0),(715,'极限户外','Extreme outdoor',0),(716,'冲浪潜水','Surf Diving',0),(717,'滑雪装备','ski equipment',0),(718,'垂钓用品','Fishing supplies',0),(719,'钓竿','fishing rods',0),(720,'鱼线','fishing lines',0),(721,'浮漂','floats',0),(722,'鱼饵','bait',0),(723,'钓鱼配件','fishing accessories',0),(724,'渔具包','fishing gear bags',0),(725,'钓鱼箱','fishing boxes',0),(726,'钓椅','fishing chairs',0),(727,'鱼线轮','fishing reels',0),(728,'钓鱼灯','fishing lights',0),(729,'钓鱼辅助装备','fishing auxiliary equipment',0),(730,'游泳用品','Swimming supplies',0),(731,'女士泳衣','women\'s swimsuit',0),(732,'比基尼','bikini',0),(733,'男士泳衣','men\'s swimsuit',0),(734,'泳镜','swimming goggles',0),(735,'游泳圈','swimming ring',0),(736,'游泳包防水包','swimming bag Waterproof bag',0),(737,'泳帽','swimming cap',0),(738,'游泳配','swimming kit',0),(739,'维修保养','Repair and maintenance',0),(740,'汽机油','gasoline oil',0),(741,'轮胎','tires',0),(742,'添加剂','additives',0),(743,'防冻液','antifreeze',0),(744,'滤清器','filters',0),(745,'蓄电池','batteries',0),(746,'变速箱油','transmission oil',0),(747,'雨刷','wipers',0),(748,'刹车片','brake pads',0),(749,'刹车盘','brake discs',0),(750,'火花塞','spark plugs',0),(751,'车灯','lights',0),(752,'轮毂','wheels',0),(753,'维修配件','repair parts',0),(754,'汽车玻璃','automotive glass',0),(755,'减震器','shock absorbers',0),(756,'正时皮带','timing Belts',0),(757,'汽车喇叭汽修工具','car horn auto repair tools',0),(758,'车改装配件','car modification accessories',0),(759,'车原厂件','car original parts',0),(760,'车底盘装甲','car chassis armor',0),(761,'车底盘护板','car chassis guards',0),(762,'汽车装饰','Car decoration',0),(763,'座垫座套','seat cushions and seat covers',0),(764,'脚垫','floor mats',0),(765,'头枕腰靠','headrests and waistrests',0),(766,'方向盘套','steering wheel covers',0),(767,'后备箱垫','trunk mats',0),(768,'车载支架','car brackets',0),(769,'车钥匙扣','car key chains',0),(770,'香水炭包','perfume charcoal bags',0),(771,'车用净化剂','car purifiers',0),(772,'扶手箱','armrest boxes',0),(773,'车用挂件摆件','car pendants and ornaments',0),(774,'车用收纳袋','car storage Bags',0),(775,'车用收纳盒','car storage boxes',0),(776,'车用遮阳','car sunshades',0),(777,'车用雪挡','car snow shields',0),(778,'车衣','car clothes',0),(779,'车贴','car stickers',0),(780,'车用踏板','car pedals',0),(781,'车用行李架','car luggage racks',0),(782,'车用行李箱','car luggage',0),(783,'汽车雨眉','car rain brows',0),(784,'汽车窗帘','car curtains',0),(785,'汽车导航','car navigation',0),(786,'车用中控膜','car central control Membranes',0),(787,'功能小件','small functional parts',0),(788,'车身装饰件','body decoration parts',0),(789,'车载电器','Car electrical appliances',0),(790,'行车记录仪','driving recorder',0),(791,'车载充电器','car charger',0),(792,'车机导航','car navigation',0),(793,'车载蓝牙','car Bluetooth',0),(794,'智能驾驶','smart driving',0),(795,'对讲电台','intercom radio',0),(796,'倒车雷达','reversing radar',0),(797,'导航仪','navigator',0),(798,'安全预警仪','safety warning device',0),(799,'车载净化器','car purifier',0),(800,'车载吸尘器','car vacuum cleaner',0),(801,'汽车音响','car audio',0),(802,'车载冰箱','car refrigerator',0),(803,'应急电源','emergency power supply',0),(804,'逆变器','inverter',0),(805,'车载影音','car audio and video',0),(806,'车载生活电器','car daily appliances',0),(807,'车载电器配件','car electrical accessories',0),(808,'安全自驾','Safety self-driving',0),(809,'胎压监测','tire pressure monitoring',0),(810,'充气泵','air pump',0),(811,'灭火器','fire extinguisher',0),(812,'车载床','car bed',0),(813,'应急救援','emergency rescue',0),(814,'防盗设备','anti-theft equipment',0),(815,'自驾野营','self-driving camping',0),(816,'保温箱','incubator',0),(817,'储物箱','storage box',0),(818,'GPS定位器','GPS locator',0),(819,'电动自行车','Electric bicycles',0),(820,'电动摩托车','electric motorcycles',0),(821,'电动轻便摩托车','electric mopeds',0),(822,'平衡车','balance cars',0),(823,'电动滑板车','electric scooters',0),(824,'电动车装备','electric vehicle equipment',0),(825,'电动车零配件','electric vehicle spare parts',0),(826,'摩托车','Motorcycles',0),(827,'摩托车','motorcycles',0),(828,'摩托车养护','motorcycle maintenance',0),(829,'摩托车手套','motorcycle gloves',0),(830,'摩托车护具','motorcycle protective gear',0),(831,'摩托车骑行服','motorcycle riding clothes',0),(832,'摩托车蓝牙装备','motorcycle Bluetooth equipment',0),(833,'摩托车头盔','motorcycle helmets',0),(834,'其它摩托车装备','other motorcycle equipment',0),(835,'摩托车骑行鞋','motorcycle riding shoes',0),(836,'骑士包','rider bags',0),(837,'摩托车雨衣','motorcycles Raincoat',0),(838,'摩托车风镜','motorcycle goggles',0),(839,'喂养用品','Feeding supplies',0),(840,'奶瓶奶嘴','bottle pacifier',0),(841,'吸奶器','breast pump',0),(842,'暖奶消毒','milk sanitizer',0),(843,'辅食料理机','Food processor',0),(844,'牙胶安抚','tether',0),(845,'食物存储','Food storage',0),(846,'儿童餐具','children\'s cutlery',0),(847,'水壶','water bottle',0),(848,'水杯','water cup',0),(849,'围兜','bib',0),(850,'防溅衣','splash suit',0),(851,'妈妈专区','Mother\'s area',0),(852,'防辐射服','radiation protective clothing',0),(853,'孕妈装','pregnant mother\'s clothing',0),(854,'孕妇护肤','pregnant women\'s skin care',0),(855,'妈咪包','mommy bag',0),(856,'背婴带','baby belt',0),(857,'待产护理','maternity care',0),(858,'产后塑身','postpartum body shaping',0),(859,'孕妇文胸','pregnant women\'s bra',0),(860,'孕妇内裤','pregnant women\'s underwear',0),(861,'防溢乳垫','anti-spillage pad',0),(862,'孕期营养','pregnancy nutrition',0),(863,'玩具','Toys',0),(864,'益智玩具','educational toys',0),(865,'健身玩具','fitness toys',0),(866,'戏水玩具','water toys',0),(867,'橡皮泥玩具','plasticine toys',0),(868,'绘画DIY','painting DIY',0),(869,'积木拼装','building block assembly',0),(870,'遥控电动','remote control electric',0),(871,'毛绒玩具','plush toys',0),(872,'娃娃玩具','doll toys',0),(873,'动漫玩具','animation toys',0),(874,'模型玩具','model toys',0),(875,'创意减压','creative stress relief',0),(876,'STEAM玩具','STEAM toys',0),(877,'科学实验玩具','scientific experiment toys',0),(878,'潮流玩具','Trendy toys',0),(879,'盲盒','blind boxes',0),(880,'高达玩具','Gundam toys',0),(881,'变形模型玩具','deformed model toys',0),(882,'礼品','Gift',0),(883,'创意礼品','Creative Gift',0),(884,'电子礼品','electronic gift',0),(885,'工艺礼品','craft gift',0),(886,'美妆礼品','beauty gift',0),(887,'婚庆节庆','Wedding festival',0),(888,'礼盒礼券','Gift box gift Certificate',0),(889,'礼品定制','gift customization',0),(890,'军刀军具','Saber military equipment',0),(891,'古董文玩','antique play',0),(892,'收藏品','collectibles',0),(893,'礼品文具','Gift stationery',0),(894,'熏香','incense',0),(895,'京东卡','Jingdong card',0),(896,'生日礼物','Birthday gift',0),(897,'鲜花','Flowers',0),(898,'同城鲜花','city flowers',0),(899,'永生花','eternal flowers',0),(900,'香皂花','soap flowers',0),(901,'生活鲜花','life flowers',0),(902,'干花','dried flowers',0),(903,'花材配件','flower accessories',0),(904,'开业花篮','opening basket',0),(905,'殡葬用花','funeral flowers',0),(906,'婚庆鲜花','wedding flowers',0),(907,'绿植园艺','Green gardening',0),(908,'趣味种植','fun planting',0),(909,'绿植盆栽','green potted plants',0),(910,'花卉','flowers',0),(911,'多肉植物','succulents',0),(912,'大型绿植','large green plants',0),(913,'种球','seed balls',0),(914,'园艺工具','garden tools',0),(915,'花盆花器基质','flower POTS and flowerpot base',0),(916,'营养土','nutrient soil',0),(917,'花肥','flower fertilizer',0),(918,'花药','anther',0),(919,'园艺支架','garden stand',0),(920,'户外园林','Outdoor garden',0),(921,'花种草种','flower seed grass seed',0),(922,'灌溉设备','irrigation equipment',0),(923,'篱笆栅栏','fence fence',0),(924,'苗木','seedlings',0),(925,'割草机','lawn mower',0),(926,'园林机械','garden machinery',0),(927,'花箱','flower box',0),(928,'仿真草坪','artificial lawn',0),(929,'树木介绍牌','tree introduction card',0),(930,'景观绿雕','landscape green carving',0),(931,'别墅庭院设计','villa garden design',0),(932,'科学技术','Science and Technology',0),(933,'计算机与互联网','Computer and Internet',0),(934,'科普','Popular Science',0),(935,'建筑','Architecture',0),(936,'工业技术','Industrial Technology',0),(937,'电子通信','Electronic Communication',0),(938,'医学','Medicine',0),(939,'科学与自然','Science and Nature',0),(940,'农林','Agriculture and Forestry',0),(941,'生活','Life',0),(942,'育儿家教','parenting tutor',0),(943,'孕产胎教','maternity education',0),(944,'健身保健','fitness and health care',0),(945,'旅游地图','travel map',0),(946,'手工DIY','handmade DIY',0),(947,'烹饪美食','cooking food',0),(948,'教育培训','Education training',0),(949,'青少年培训','youth training',0),(950,'语言培训','language training',0),(951,'大学生培训','college student training',0),(952,'考试考证培训','examination certificate training',0),(953,'职业技能培训','vocational skills training',0),(954,'工具','Tools',0),(955,'手动工具','Hand Tools',0),(956,'电动工具','Power Tools',0),(957,'测量工具','Measuring Tools',0),(958,'气动工具','Pneumatic Tools',0),(959,'工具套装','Tool sets',0),(960,'工具配件','Tool Accessories',0),(961,'劳动防护','Labor protection',0),(962,'手部防护','hand protection',0),(963,'足部防护','foot protection',0),(964,'身体防护','body protection',0),(965,'头部防护','head protection',0),(966,'眼脸部防护','eye and face protection',0),(967,'呼吸防护','respiratory protection',0),(968,'坠落防护','fall protection',0),(969,'静电无尘','electrostatic dust free',0),(970,'安全消防','Fire safety',0),(971,'警示标识','warning signs',0),(972,'应急处理','emergency treatment',0),(973,'监控设备','monitoring equipment',0),(974,'安全锁具','safety locks',0),(975,'化学品存储','chemical storage',0),(976,'消防器材','fire equipment',0),(977,'消防服装','fire clothing',0),(978,'化学品','Chemicals',0),(979,'润滑剂','lubricants',0),(980,'胶粘剂','adhesives',0),(981,'化学试剂','chemical agents',0),(982,'工业涂层','industrial coatings',0),(983,'清洗剂','cleaning agents',0),(984,'防锈剂','rust inhibitors',0),(985,'脱模剂','release agents',0),(986,'仓储包装','Storage packaging',0),(987,'包装工具','packaging tools',0),(988,'包装耗材','packaging consumables',0),(989,'标签耗材','label consumables',0),(990,'搬运设备','handling equipment',0),(991,'存储设备','storage equipment',0),(992,'起重设备','lifting equipment',0),(993,'焊接紧固','Welding fasteners',0),(994,'五金紧固件','Hardware fasteners',0),(995,'密封件','seals',0),(996,'焊接设备','welding equipment',0),(997,'焊接耗材','welding consumables',0),(998,'机械配件','Machinery parts',0),(999,'轴承','bearings',0),(1000,'皮带链条','belt chains',0),(1001,'机械零配件','machinery parts',0),(1002,'机床及附件','machine tools and accessories',0),(1003,'刀具','cutting tools',0),(1004,'气动元件','pneumatic components',0),(1005,'泵阀类','pump valves',0),(1006,'暖通照明','Hvac Lighting',0),(1007,'暖通','HVAC',0),(1008,'工业照明','Industrial Lighting',0),(1009,'管材管件','Pipe fittings',0),(1010,'实验用品','Laboratory supplies',0),(1011,'实验室试剂','laboratory reagents',0),(1012,'实验室耗材','Laboratory consumables',0),(1013,'实验室设','laboratory equipment',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 10:42:28
[tengfei@core ~]$ 
