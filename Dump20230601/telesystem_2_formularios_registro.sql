-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 35.231.147.174    Database: telesystem_2
-- ------------------------------------------------------
-- Server version	8.0.26-google

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `formularios_registro`
--

DROP TABLE IF EXISTS `formularios_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formularios_registro` (
  `idformularios` int NOT NULL AUTO_INCREMENT,
  `nombrecompleto` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firma` longblob,
  `firmanombre` varchar(255) DEFAULT NULL,
  `firmacontenttype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idformularios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formularios_registro`
--

LOCK TABLES `formularios_registro` WRITE;
/*!40000 ALTER TABLE `formularios_registro` DISABLE KEYS */;
INSERT INTO `formularios_registro` VALUES (2,'Luis Felipe Ramos Torres','Peru','luis.ramost@gmail.com','luistelco',_binary '9B6BF88DB56956F88A991BE2178207629DE7FD5416968BB5E15A8EABB80CC40958AD36F8941BAAF2495D9FCC5B506C57765DA94F0C5F224A95DFAF5309B2E70A151D086A4451A706CE0F04B432D217874EBF52974407826A8AB6977EA08E4A39ADA9A71327B31EA217650AD3E026C9982EAA62A8C8E7987F52C789C1B1354A854396B1A6ACB2076A41BAAAF761ACA76C1FF002183896783F33D1C06E95F514522EB5FCD414ABEF96B9CE216AC636FEFB8C06A51A7F84B521379351412E3D39F7D4601E83DC079CCA74C3FFA5FF52F76B0ACE1E59D9C33533E49AC38BCDB2DA457B938BC75E0235CD479B74F0B71036B2C53E8F0D7E3B956F5514C0D05593CCF3DF8FB453574AB811C6AA9F11D6A9B5C313F885688D273F28C294E32B1EC53EE519E30570B78AEE31885632B8DFDCDAC6E060798E6E85DF422FC8F1C4CF7C8EC7FA833DA8C4FDF3F502AA9B0FAFED84A42E7B782EB22BC46DC5BA744323A52E83DB2B9C65E153EDF76C17EEDA17BC5F8096630EC6DAB2A7A83C5668559FCB30D8FB4583EA1D60087D3AF0732A90559AD73B99B59A069AE4EE37FC5C2B21790EA2AE6E26B102B979EA6105FA03DFF003022E6AEF3984131CA9081A569712FAE1F61D33C12C76BADBE63551A031733E7C8E47ADC1B258CE07A8198BB64266F58FA98EB6CA754C4947C1E7C8ADCAD5DE3294D9B17061556F284C87A29BFE3AAE1111729ACADFA25FAD2B01F09E3F398EE8D817DF2F2773E850983D238355283C16FF519930527DC4DCAF38C5B37D012906087CF0CB3CCA06D27114C5FDC4D8EF34F6E67D645F27898005D384AF00131CB0A8A852B07E7B88F6EC553FEC3A0E207F27302CACC4A1E2B129942F4FA1E61AA32CB5C705EE594831B56D3F56421501660E00E89DA76835AE147C433ECD4CB0A7D427D599375C40D1075F553606ED47F7552D8AA28574600BC467073FA4CA5EC2CFB1C8BF1A841F670B5A77E92C2C0DD08E39DC0EB558631D51BFB8694D6C575C4719072863EF32C10AE42315B7207F999960AE53B25766B4B1B8A558EC6EBC473EE0BB7FDCADD5E4A48E73D5AAA34BD8B865D81E881EB79712FE04D70E3C3FF00798AD5741766BD4053B10E7D9EA0539342DA7D4A8C07923D752D4FF57711B83CFAED6390B4D5DB5FEB13801C7B3A1DD4128D641076DD0F70E514D151D2608A118025BCE1ABCB168DA8957157E9049EEA327E6550D5235EA6D61B6573EDEF32E404C5EDAF2D43CC0B0C82B5EE2409E9D025776165D87997BD62DA2E34A1C764D2470750ACA5581E068B55ABA352EA562C78CEA1B50B255C6901D07F946F82FD5FFB16E43BDFF511C1D76E80946208B48E1E539B9844A9B4039003F996C7D8F69C2658747EA61BE6DC1BFE7CC15CC6B438FA8B6E9B750AF01DEC66AF0EA2AFF30252C43E50D1769FE2E3E3A16636B0D42CBB84385B25ADA1B32788B053864BE6A1975E48DBDC7A18ADFBB6CB2B70A747946027942B35E87ED942730844385CD5C71A6D1808B6B673EE5EE0B9403042CBAA16DF5DFD46D6AB8323F1FEF2BFD0F338B4E4E1C770E1EE647D27713EB3AB6E0EF52DCA948D67644E746C581FF70851FF00B47166BAEF5F5B4288929EDF7E23CEDCB786C81B3272B9A1EE16A0B84885B65D8E386097D8B7A671B96594175A7E3A86B88DF4C67333A16C5841A7C88DD14F80E8F72FE3832076454B9F31BA49F91AF81A86368FA665E49ABF44B96569AD0675A992C768596B65DFD442EDABF47FA2713664F47BBA9D588002FB6B593AF598722C0A2D20D0756D84C3174732900BCF07792575475E9F9946D62F7707693284141A30FC335846F991ED940DC057E041ADE004C375160B5CE278465A5B2945DDEBCC06C5F2A8E1415B643D53F72954573471F772A170CD53039C351CE2AA1CD75C3FF8C1248CB3BA3ABE631CA5A2F8216B7E203A1158DC7A19C6209A821823563A6B5D44830164727C1A3077550C0FB0C0E181CB01ACF3EDF508ECFDCAAA4569D1BEE788C5BAB8B0C260F2EA5B450B1C7F73F702CE3E133EB52C6AD72C632B758EA3BCEF3FC8A1910EEBDCA72F84FCCB25AF493EB886A65495805E71CCAB629943675E477CCA8A93258BFEE6F1311259F7926AB442C0355A470931A754D8412FA5711C5E9C2FD97FE47ACDE53FE99E22F3D596A6F8E07C1A5E22C0500E477794323A952DA8B565A99FA970A1439B2711C686CA7AEA3170D0B6A590A984B48404B011BD3ECC6C469D28BB8E17E32E29885CF3FA2021E1BE0FD8D7D4AAC1ACE676EDFB802073584C6690E01BABD9F72C0BD3D4F1F84727C798283997F94E1946FDEE5DC96C60FA71073FACD8D82553599597B10013222E12A88A766CD139F712DC42FE77F7FB87DE0560C4ADD902A43B6DE4F972CB9D707DA9BE2E8C42DA45390795799884072BC83D43EC83B8F52CADED86FEE03CDFB9EF798F7233967B727933C4F429F698993F7072C5566EE2D1BC402CECE13AA9405568D72D839C633302DFF655561FD54AD5CE1570E7B4C1DA7039FD625C495553F4E9E21FB8833699BD6BCC6D5654A6B9F3D85FD4EC160E13373BC608A3128B7E2EF5FD21721EC28C9D1EBCC2ED3FFFDA0008010203013F2112ACD64A11B612E0FC198CAC672E0D518D4F189C466DEFE03E3396F100510959995BC2612FE62E4972BB180EE7A4C23CB13ED1D9308C10CC1E6A59CCAE19635118D6C04094418CCD0FCA51AB833030D31EDB9772C86A48B30A9D32FE2007708C5DBD196A7DB529A27B99F59E1B9CEDFC0834C400F262AFCCB3E12847442929944646331DBC33B1F087C32B117729305B0583CC69AD4D6794C536F3031B885B99EB0705997881955A9C92570943A624E6E6D316C4F2A3DFA6585B9625DC3DD51D20FEE5ADCE6195CCB30CE66F899C0B688916A067B80DCC5E08AED9EB4FF65131582AAB9B582B15C4AB72E0439129BE62EE3F14D18C532CE223585239A659A5C47098075105BCC47944488AF99C0452179651957843F894225CC2F58F2C79772DFCA8657310D6A7DE25014954419899EE64798D153A2288C0C160788025259BDA79C89E3FCEE019E26D14771F19E84F121CFB9747188C6CE25020C951DC1B85D9DCDC2BF37A8B7F146964706A0D54A89F0439461BAC4C18042602A61091A2359587E256F5180A08AF84203D73F0FC03BB8D250423AC2D3F1811C6486771690BB00B1051171B32AA68A3A837718C4B8FCAA28CFC7C096EBE1B4B634483C7F32A20F90A42D7880AD080D11F882B2F4C08BF485F24669C7C3240C31295C6332C11DC6E5B187CCC4E0FCE2CC0DE25AB3A98DD66295FF93F0E7109FFDA0008010303013F214CC8C6125F857231DB71102AA1C329661398E6373985C0C1C303C7C1748B5A99B6CB6C99A452F102E5FE319062B700C711BEA0B08608AC104A22ACD5CA38974B63F19DDCB86235F7F186408B170DCB3FF3788D6ECF8795D41184A35824AD16FAB97E674C18437A8D813C9A89CD98DDDE07C026FE219952F3CC1612030D5C91D127747DACCE21A97CB4470B966E6D2C4C93190CC7442860A23F161F85A994DA8B4C914EC8B78A9AC42999E042EC259A304AFA987CC6DFE371C2A3728E261896C25F515129061E1DD431DAFC3DA86027C40DA5C6A16905583D543F68E99891081A867062F2E1487811F27043E56314451B24B7208A1B974543D2801B65DBF128CACA2062D4582E6652C8147E9007319C419EE5D352B32BF501DEFE0441A5CDC1300F4C16F1046E04357A881197882D45F6C55825A35355D47615DCB5A98A6D6A1E70F740E598CECC64AEB000C08CC089DF0035F280E170AD2D8D7C523CCDC7DC3004F04D28CE512C972D3210FCA52E616E0A193B6098E99875E636436F8FFC51AAB8148EB1F8D6EE5E7C07E12B02A2482AD80F849BC9808C425CCF71FF0086A107FE362C10317BFCDCBF943B7DCE4B7369288D6C8ECF61187C6A6B5047C0BD34A3FF0053E3911DFC66ED316494F69A6770857C313884E71B8EE7FFDA000C030100021103110000107DC8CF936A04B535E7F4237C05D458C8507DFF00D73E1D71C98A183E5E91ACA03D3856D2961BC902102490F5FCF4C62B34989DB90C40D3D4BC2F71ED9A67F9A2BF81C08D72CA34B49ED782E8E4AA80579E3DF3F1D7CCB42F501625C18D82C2F552DB218DDA5CCC48A74A15823D2BC400AB52CB981FFFDA0008010103013F1026235717A2F02894786531A051BFACDF528208603A5046FCDCBF6BCA6D5DA9FD2232A6B4816142CF021AE80B948B8E956439C72818867140052D5A398C4139ACD317CE3A99DFA8A3A139A6F30C06841D014A05E71FAC1CC1B759B618FB309A8CD2EC0524546B4DABADCB702C208047C92F18BEE0A16E4C36365C603EE3CA3AE50B1929BFFA9B0D6B2D145AE563245A5AA1C32188574682D0A23468DF7399E6CF7962FEA002F3E6B40157D472B6DBEC1226C0A00B098117C55C5C1609D2F12A64D640E054BE96573BD58B9006BBC63EB7282AB58686DA1C1B7115D35E90382F0CE2A6710EA9810B2AF16B88A2B5C8BE8B357D4C83F14463914E5EA1E931900868021B730B38060C02AB09C318870ADAD11EF9866864944B4D2D2A99F20758294978017EE6F44A8C97803478FCA0CC6A1658140BAE09498140B953CC643A500E4B429861C26059C22F0689473DE214E57237291558D28EA05708660C3B1B3436E0C2E10138D85C943FA84F2E9379D9783FA8506522D190780158EE5D98789C26832F799C7A6EF8CB957C73B8B74C00A2D344ADA20A0BD5766895987EA05A5DB0016D7A5EFF0031006C5800E6C392FC5C281BA0201AA0BB03F7FA8772D0094477E9088095152DF4D66A9D6F469872D8AC84CDB64B7B45AAA0AB5A4C7A2F8665C91A06A64A8CABD9DC582BD1715AD15BAEE0272C2D270E6FD0C7B66014D0D5D13BED715A99AA6B0BC55D34E2B76B0A303B6C2C37B1415A222010BD07F47572DA972764F6C07B6E283428220B6B5722F35A84794C14AE2C232F8CCB5956064B44729A0A2FCC071A6554364D7E709BC045C09B4033D216C1872003EDE1708BE56AA05905DD25FDC2140DCB6CE70B65F5288565F60EAC5860E41D437E433B2A038B4285AE2F6EF24ABD43E9F181AE323D1370ACE353C2E9EC8351CE30A836ACE6F5B973D88C0A00B54378011EF906C8CEC69B7D44705451FE64E9A802FA0A721E2A3279E101C17298F3AF3045BAF6B0AB6EDE3997071461D86F34D856AA61F6743C215805BE26630961DC78B57B5866EE5999D23228965A323EBCCBF1DE40DC160C7B6A5A862928D5E12EE8C20B90434D8AA185F247A166E4ABBACD99625B6D32980352DB8E665FA7C100A887779949EDEC4052EB0A2FB9492566114AC2A6B1B2257882DA3569BE658844ACB383158DCC51142A37554FD18A354DC14F2E95D4531468C0E30115B3F7E16104D507001BF31E12550A174381DDC6AA392DDB5D05C9C37E58799CE58A2A6956E39B9D4C4C68808A183AD4470C32B74493F2680E2D4D5EA5BA12C50D4000DB1B9E767DC7C06BEB1CA84F03B852E214D217A47F2990E16EB2C38ADF98095EA8535E430B049C1908980166D994570AB2BE80EC0CDCC41C54034A06DEE5FC4C8A5D1B70E8ACE37A6D0456D5D7509717A941ABA6D5C54B80488573B2AE1E074D2AA960EB079B99814664D18D5D6825F5450C47AD599F10D96A552F4D350352CA0943A172BAC85CB3D84AEC797F899FE908924179792AF09591C9972071AAF27A95E62D49CDFBBC42171CFB19239BE1D3B58C6292B14A354D834D660DDD51B627ED082F482B54E1E135D96C1D6F528ADA07831C2339AF66E90A2296F05712E621656A737581F4A8CDBCA04524E0430CB2FF00F0B2696A0A51E15478BCCCBC83C1860ABBA1BDB31F569954D0FB91096CDF8D175727C40998B4AA7A0E71C4CD3E202E3B5611D3885CADB96355BB036A59F885E79F2064B80751182048AF2DD2BC44148C0C8E83F8820E02E58B97823E25F16528816C066FC5B0EE79BBB704BD5770A4A94AAD816880CCA626D093054DB238B89867460C1BCD600FC46933AB48DF605FC45C48BD0CDB68A3ED0296114062B29BC7AA993CD80B6EF00B602FC026008B26C3FC329D124F220A8A72FA4AD0629B80A39AC6D73A4A67B5C328954DD1D6D1A76592B080AA28354EF7B8DA048AA7071BDCB3009F156D189C46737806D1616C2F012E5960E801B3AACCB1B6E5A50EECDB0F3185C1405B4A2DE2A189A3014EF6F82E675E8C94899C5EA6941B313765EB31BB16F542C0CAB6197E287BDCD72FB8081CA51BB66334D5CCDEBFD600A5355F718760FB29CA80D18053F9B740DA77E54CCACEFA2201B9A3847B1293F31B38A88DCB369687E1EF9103044C60535361BEF18A0A8015B6780C0FEDBC658D5F5833141E2691152B8760266B21B2B8BD4028D7114E8DAB91B3BE7116ED82682425F66E88355D1800CED3F16E0FD8261AA6077A9929C1411B0B37FCB8AF88B5665C40C4C041D63BB40532F1752B123A41CD4E1C732D0556CA6306ECBC4A5EB55D46960E7F528E52A0487033C841377A294A325CAB100A01146E32C2E2C63169B12D966FEB3995E272259AAD1DABF1106E08EA51DAD112DC150D310025C5729BAE6DB2DF8860A8D3807AE1BB03CB65CF31D6C177E4B42261B33919BD5A3D84550168BC50712AE8284B28A6F0045647C280963115555B97CC754B0B1D75CD5318F245CA0755AC4CE76EE6326A0C5C99541B4B19040991C770155C2A14A6F83323B40A180C141FB2E1E02749D4CD36A1EA3D5162648A1B0D35A6675A6CCC64A038EA31C58146320D3D54C8E3C10B6D6D4B31B840840EF70AD960D0ECF312140AA181B72CCAC8842ED966F1C08A26C53B9060AE192AD20AA188621AF45F4C6F52E552A52F6B35E4AD4B3D46A0E22A726E66B0C56E41B73184D34F6B4F51929C372C4EFF00B9D1306D4A64BE6C3796995932DB0D1AF284B6EF6CC1E393D0EC512F95F9ACCDC44A0A3B87813C0A0D33858B73898208C5216AEF172F944311B00ADB02BDD57CC51686CC964486D4DF7C01E6EA2D8865ED9E53E9E2092A66D96C000107AA86403401CC93402AFF00B868206E99CD649BDD0A4F2D15516E628E4B580BAD898FB856C235845B70555BCB185C0358323270C58FDC5B57D5A65D45F416FCA00AE8389E8C971534959CE149982F367989705D301AA87F1A3B0D40EC463896E716680B6C0A1545476B21D54B1B0E8F0B30155D400544557969960D5CDB6B4E74209065C01C98951C8F6A28D8E331E1CCC603805022C53B398BAAC0219B10DB8AE311FDA1CD25B54135788D9B0B0593743E65E83AB96C0157F986024A122912EF05F316EAA8ECB2952DD600E6E07D802804FA47A80288337A7D44895C2D71C8FD405A8CB201B4E030A947C20055144F2CB8C4B4AC0B4142CA34C6203E36A552E8ED304E946B7E85862EAB639014D61E0CC21E80A716EB6C8E37D890BF0EBC16251CB5CFB8E2CF5F80B6147D4AE12FB35130A1765723A843674581B1A00CE2B04477090BA1470B957F6841BC005600C363BC1E3702CA0C6808E7C5F2DC302BE5D52B276253960E03681A93D9FC75071A066CAC58EDC4C9BE78DEA0EE24AD103BF7393CE085B9C8621CD8ACABF83F728741669B338AFF0091752083BA83438C036CCE69CA6F02FF0070C310B14321EABFA825F31D76DA01FC02236A70CB90991F02468BF726BA594B4958E5C0170E81B0460CB72ECFC5622E50B552D2EE86FCAF705BB10B018A1B791898D6D282DCC706E993C42C9C1595DAC5A262F25B6F70BA406A540F9A51C0BD4C800A921A5A2D19D9C6A5815812CE07256959626EBA733FFFDA0008010203013F10E0CB1CB550B41C42DD3B372F0BED2CA3CF8F535EEB11BDA23585426FF2C63A1618344315712DBD30036D040708578C46B35880B16A2F7182DD4340625205E8E095B807BA88DAEB46C637398B5465EE396D06DD468AFA9FA2D2F8203800EA2EB0BF73247EE5C8C653F484D6314D1B2034970575B8A29A1D88446C77CC0097F71D9CDA8F334563B813751117CC3EE8F2D9B86AF0CA2C4EEC732DAB88EA97FA253EC8498E862D06980EE73D188505B80CD5C634AC302537DB06A2FA514314B88E626A25606E250370696B97EACFC41558420B8D282AA1298837595AA18992D3CC50253530D41CCA828485C8AD933501C1B8E5DE66C192639B7984ED608F58E1CB0AB90B81BE6D11B6895C615863C916338DD5C717918A8EC95DD098AD40CFC9C5C412E1F519B8CA616CDC705889293DE2AD85B861772A4B981747598D0B0C7242EAB020EC6A5AA49549823166D2B1A7A962C04569C4FEAE39CF9E150C836F9997BDFC2029349606118672B80EE7B5BFA8AB01E035895119C144014DC345BB9C011C62D64731460C77FE6257B9A572A8A8285A5B7A8A0ACF10CBCBCA508C306ADE260ED2A14C30AF01B8C85DF33A5996193E11A062A3F4E50BEF8EE50E4786568E72E0CDE0EA64200839CA289514AD4B5182E886E68DB0D4ABDA8238A604D70E65064BD4A9A89753848A582E68082E925762E504472667F66BF1B4CCCC35E7DC1893B944C5230663C212E3567960AB791FEA2760F28C821B1638AF312D58AD9376F06275E25EBB9750A853ADC782BEE625C55882463A0750A32D90C5445FF51DE4F995CDA9039E250C4C2FC266A75B8954105A012B6972F89D24846D8292E559022B968A728A820CA9A9E20BCB7030D1104AD513556BFA9528FF00E4350D414207646D9CEE2F1D4D69F71921A9A5B19DB11D7307A4D89F51EA2E622510AEA24724AAC90890ADC014D914FF00B410B1BA9AD958BEE0BC5C694B608A8135BE61F2E0E5744722C237F4DC28C32527B941B60972C0FD25000344CBD329DEF06987E861398A505F5FEE00AB1009972C6E4B5530E892D5B9E613588CA2C55F8E2260724B42B6A14E08FA4BD404547785D67E02CB8FEE045ECE7715B4862A04FD772E7C56BCCB7C51F50CEF1010DE266265717A8268C4B533FFDA0008010303013F104F2603913009988F0BC30C00F497A7A7FD8F3604C66B00166E54BF1C00601A8AB2158E116A5E2A1B85CDA6512C99652F4CA81283732385C5D278E382608AE31F89AC2B90E48BF28796887A80D178D5CA08FB94CFBE5F0A26F12EE02CBFC4C478E26E19637FD4D9E5AAE5E131358604332B3D712832228B31C57F971CF8B7FEE01311389981C18CAB9250C8DCBEB1C4C15986B9FC88F7919B9F042552E700A99FDB144118E2897042EAFAE2A2CC07DF3FEE162535CD57EA517933115770CB510B2CA712D6B148897A5C0A165A520555302EDC6941E897222D72ADBE0133CBA999CA774282732CAD43A46F711BFE37511A8B2749015A851A953885CC997EA03258F0C6254648896510C3D13B52244B8764415397DC0347F08C570F08821B893211A209B80E3C32BF743BA52E08F111D1925530899B6C40B19AA58552D116720EE03741E6608054ADFB4238F04CEFE105439E2165FA4A7768C8AB1892D50B2B28A9ED2C6C88DC78CC068306CE625D10829C51DF8FF71473C17EE1D7FD83E31EACC7E235287CF07E088A7C0864041E851829141CC1E3013683E0434F27F9E20178A984EE62A8233EA67C45F1F9410D2DFF009994B57FC11C57BFF0CBEC00313A9A3FB4552D4BBAC4AB02F0846DE25FB70B02672EA324CCB1076460B07D332AC21A547B936BFC4B711FDE605CAA1B49368ACA4176A9437F08E5051190F49887DC0C3B947B212E20DC450BABC12E4EAE98A436F1CC142D5C6B19F3E25A653A1C069801595C3E854A8C635445C2C81A03BEFE28734652B72F0333024CA620C54748086C371DA8CC040FB999B89564C5220DF3D11AD2F2CA28C7ECB2D41719A2AE0EE2C1730862A22F83E1641D214CCC624B61EA0A086C155FC04BC73DC3344A4F32BEDD4070102B52C86E170B36A297F843C196194B50365315305C57115F8CB31BF131119841E60C25DC218CB0C2323A8BFF00806259894A1176B89A981061D25232C9ECFF00932410A8A0234CB5C02A545D8118E230CB128B659A09BEBE1D7CEEC214F8CD951B8BFCCC4259F7592CB9F48046BFCFF12904ED1CB108E152D74DD4B37291FFD900\'',NULL,NULL),(3,'Nicole Guillen Galindo','Peru','nicguillen@example.com','nicole',NULL,NULL,NULL);
/*!40000 ALTER TABLE `formularios_registro` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 20:11:31
