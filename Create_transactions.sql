CREATE DATABASE IF NOT EXISTS `DataMeli`;
USE `DataMeli`;
DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `CUST_ID` varchar(12) NOT NULL,
  `TRANSACTION_DATE` date NOT NULL,
  `TRANSACTION_ID` varchar(12) UNIQUE NOT NULL,
  `TRANSACTION_AMOUNT` float NOT NULL,
  `AUTHORIZATION_TYPE` CHAR(1) NOT NULL,
  `COMMERCE_NAME` varchar(24) NOT NULL,
  `COUNTRY` varchar(12) NOT NULL
  #PRIMARY KEY (`TRANSACTION_ID`) #Usé UNIQUE en su lugar
);

INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (9,"2022-04-23","PTJ448565","24.23","1","Chami","Argentina"),
  (8,"2022-08-09","TWG281676","5.03","3","Adobe","Colombia"),
  (1,"2022-06-18","SMR787934","21.67","1","Yahoo","Argentina"),
  (6,"2022-08-18","WGY827940","95.41","1","Google","Colombia"),
  (7,"2022-04-07","GEG561532","9.50","4","Lavasoft","Colombia"),
  (6,"2022-06-15","PEF111151","76.98","3","Cakewalk","Argentina"),
  (5,"2022-05-28","MKV115192","48.04","1","Microsoft","Colombia"),
  (6,"2022-05-20","QSX198182","80.58","2","Chami","Brasil"),
  (5,"2022-08-26","RWF818088","81.96","3","Finale","Brasil"),
  (3,"2022-05-27","QNI136516","35.58","3","Finale","Colombia"),
  (9,"2022-01-15","OPR250458","29.57","1","Amazon","Brasil"),
  (10,"2022-07-17","VYR764855","90.69","4","Sibelius","Colombia"),
  (2,"2022-09-02","HJN492704","37.79","2","Adobe","Argentina"),
  (9,"2022-05-21","JLQ197595","8.23","1","Sibelius","Brasil"),
  (1,"2022-07-23","RPS211343","98.42","4","Adobe","Colombia"),
  (0,"2022-06-07","KWR913609","16.04","2","Adobe","Argentina"),
  (5,"2022-07-09","RIR445764","86.64","1","Borland","Colombia"),
  (8,"2022-08-07","JFJ410663","63.21","4","Yahoo","Colombia"),
  (10,"2022-07-05","ORW828771","20.40","4","Google","Colombia"),
  (5,"2022-06-02","VXA565859","37.97","2","Cakewalk","Colombia"),
  (8,"2022-06-14","YWI051579","15.11","3","Finale","Brasil"),
  (10,"2022-02-12","NBC236148","63.30","3","Cakewalk","Argentina"),
  (7,"2022-05-10","NQV998994","4.20","3","Yahoo","Colombia"),
  (10,"2022-06-07","UYH714501","20.20","2","Lavasoft","Colombia"),
  (10,"2022-04-17","QYV030999","46.77","4","Cakewalk","Argentina"),
  (7,"2022-02-08","XON866228","62.32","1","Lavasoft","Argentina"),
  (9,"2022-04-18","DWG490520","97.35","4","Adobe","Argentina"),
  (3,"2022-04-15","WDP683967","14.61","2","Chami","Argentina"),
  (3,"2022-05-05","PFE833426","67.91","1","Adobe","Argentina"),
  (4,"2022-06-04","TFL011465","40.31","2","Adobe","Brasil"),
  (9,"2022-08-08","HFG729383","71.54","1","Apple","Argentina"),
  (6,"2022-08-09","FUU376673","30.28","2","Chami","Argentina"),
  (6,"2022-07-29","TUV786221","86.47","2","Amazon","Argentina"),
  (9,"2022-07-20","GYT295253","63.20","4","Borland","Brasil"),
  (10,"2022-09-05","JWX532035","36.04","3","Borland","Brasil"),
  (4,"2022-05-15","WAY751333","92.90","3","Cakewalk","Colombia"),
  (2,"2022-07-05","NRP081957","29.92","1","Adobe","Colombia"),
  (7,"2022-06-27","CHB742887","16.29","1","Chami","Brasil"),
  (1,"2022-02-14","PQT818567","44.52","1","Microsoft","Brasil"),
  (1,"2022-02-02","KFG744213","72.15","1","Google","Argentina"),
  (7,"2022-08-06","JYH715847","27.83","2","Apple","Brasil"),
  (3,"2022-04-13","IKX506313","69.13","1","Adobe","Colombia"),
  (3,"2022-01-26","JVR236596","74.07","4","Lavasoft","Argentina"),
  (2,"2022-01-14","ZYS911489","79.30","4","Google","Colombia"),
  (5,"2022-01-20","RMP384641","48.08","4","Microsoft","Argentina"),
  (6,"2022-03-06","FUT383653","58.48","1","Amazon","Argentina"),
  (4,"2022-05-30","OUS455757","54.89","3","Amazon","Brasil"),
  (4,"2022-04-29","IMT733389","85.71","1","Google","Argentina"),
  (0,"2022-04-28","PQS267568","89.10","2","Yahoo","Brasil"),
  (1,"2022-07-03","VXV832187","17.91","3","Amazon","Brasil");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (1,"2022-03-01","DOR166806","95.32","2","Yahoo","Brasil"),
  (6,"2022-02-09","STP888269","67.17","1","Cakewalk","Colombia"),
  (3,"2022-06-13","DUO124321","36.83","3","Sibelius","Brasil"),
  (8,"2022-04-27","ICA627172","71.57","2","Sibelius","Colombia"),
  (2,"2022-09-03","JIC085151","81.56","1","Chami","Argentina"),
  (5,"2022-03-08","LKJ634343","20.06","3","Microsoft","Argentina"),
  (2,"2022-06-20","CXF705643","16.53","2","Sibelius","Brasil"),
  (8,"2022-06-13","SMO349918","49.24","1","Chami","Brasil"),
  (1,"2022-05-18","HPJ756558","44.95","3","Borland","Argentina"),
  (6,"2022-04-08","MPO254198","76.70","1","Microsoft","Colombia"),
  (10,"2022-02-19","BRY258331","43.87","4","Sibelius","Colombia"),
  (10,"2022-04-05","DOK200833","78.09","1","Microsoft","Colombia"),
  (10,"2022-08-28","SZJ318363","63.26","4","Sibelius","Argentina"),
  (2,"2022-01-21","BJE843239","64.51","3","Google","Colombia"),
  (2,"2022-06-28","TDI349862","36.08","4","Google","Brasil"),
  (3,"2022-04-10","JNY367216","31.18","1","Chami","Argentina"),
  (2,"2022-07-12","CNB162527","84.35","2","Google","Colombia"),
  (10,"2022-07-25","GKB363183","40.43","4","Apple","Brasil"),
  (4,"2022-05-25","OER965179","75.90","4","Amazon","Colombia"),
  (8,"2022-02-17","MGR996125","14.03","3","Yahoo","Argentina"),
  (10,"2022-07-14","QGU443420","8.11","3","Apple","Argentina"),
  (8,"2022-03-20","GQL787984","10.00","4","Apple","Argentina"),
  (3,"2022-02-28","PMW498411","65.20","3","Cakewalk","Argentina"),
  (1,"2022-01-15","BAW882482","15.10","4","Amazon","Brasil"),
  (4,"2022-03-17","PGQ136734","80.78","1","Lavasoft","Brasil"),
  (0,"2022-08-06","BIE861371","43.39","2","Yahoo","Argentina"),
  (3,"2022-06-01","VCH761873","97.93","4","Amazon","Argentina"),
  (4,"2022-05-23","TMK916465","25.99","3","Finale","Brasil"),
  (6,"2022-02-26","TNG161058","60.28","2","Chami","Argentina"),
  (4,"2022-07-23","SMD133238","88.16","4","Lavasoft","Brasil"),
  (8,"2022-04-16","VTJ478527","91.13","4","Borland","Colombia"),
  (3,"2022-05-02","QVX033370","70.32","2","Finale","Brasil"),
  (9,"2022-08-05","VWT414796","85.99","1","Adobe","Brasil"),
  (2,"2022-03-26","KKU258575","94.24","1","Borland","Brasil"),
  (6,"2022-05-05","PUF537543","26.63","4","Adobe","Brasil"),
  (4,"2022-05-11","JIH117417","17.64","1","Finale","Argentina"),
  (5,"2022-03-06","TGQ757564","7.48","3","Yahoo","Brasil"),
  (7,"2022-05-23","SBR496885","74.68","1","Cakewalk","Argentina"),
  (4,"2022-05-03","LNU392265","62.62","3","Finale","Brasil"),
  (7,"2022-02-13","BKL648314","24.03","1","Cakewalk","Argentina"),
  (8,"2022-03-13","RLR367432","22.53","1","Adobe","Argentina"),
  (3,"2022-08-31","SDV546634","72.55","1","Sibelius","Colombia"),
  (3,"2022-09-10","DCW171260","57.60","1","Cakewalk","Colombia"),
  (7,"2022-07-08","NFM492421","49.70","4","Google","Argentina"),
  (8,"2022-02-24","EUV787287","15.53","2","Finale","Argentina"),
  (1,"2022-08-15","MVD386562","89.87","4","Chami","Colombia"),
  (6,"2022-03-10","LAO265867","79.21","1","Borland","Colombia"),
  (2,"2022-03-10","TEM374732","64.40","4","Google","Brasil"),
  (9,"2022-07-29","OMU533181","6.07","3","Finale","Colombia"),
  (9,"2022-04-26","BJH499262","7.76","3","Apple","Brasil");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (8,"2022-07-10","PFJ611174","56.83","4","Borland","Colombia"),
  (3,"2022-09-03","IWN425731","47.45","3","Yahoo","Argentina"),
  (3,"2022-07-21","VBT952663","4.10","4","Apple","Argentina"),
  (8,"2022-06-19","AQJ083081","91.49","4","Cakewalk","Brasil"),
  (9,"2022-03-17","IGE011488","61.35","4","Microsoft","Argentina"),
  (9,"2022-05-07","PRE374365","78.46","1","Finale","Brasil"),
  (2,"2022-02-10","LIL236416","99.64","4","Amazon","Brasil"),
  (5,"2022-08-19","HQY376967","34.43","3","Adobe","Argentina"),
  (5,"2022-08-06","YNW379816","93.07","2","Yahoo","Colombia"),
  (3,"2022-08-25","XHS848776","14.83","4","Finale","Brasil"),
  (9,"2022-02-14","UEZ707524","33.33","1","Yahoo","Argentina"),
  (9,"2022-04-13","QBN796816","94.62","1","Lavasoft","Argentina"),
  (4,"2022-05-28","TNG220815","21.44","1","Google","Colombia"),
  (2,"2022-03-08","NOV856563","29.42","3","Chami","Colombia"),
  (0,"2022-06-14","FLD268461","46.48","2","Cakewalk","Argentina"),
  (4,"2022-05-08","UGG382783","97.51","3","Chami","Colombia"),
  (1,"2022-05-27","QZD799284","39.06","3","Finale","Brasil"),
  (7,"2022-09-09","VTI843977","82.45","3","Google","Argentina"),
  (5,"2022-03-09","VQL892942","16.40","4","Google","Argentina"),
  (8,"2022-02-08","TTS773140","77.89","2","Amazon","Argentina"),
  (1,"2022-03-17","USF382583","63.49","1","Yahoo","Brasil"),
  (5,"2022-08-04","DVC781477","12.51","2","Amazon","Brasil"),
  (10,"2022-04-02","BLL844627","34.99","3","Finale","Brasil"),
  (7,"2022-09-08","KBK538523","43.48","2","Adobe","Argentina"),
  (4,"2022-05-20","OKU443348","33.99","3","Yahoo","Argentina"),
  (2,"2022-07-28","FLT653197","16.67","4","Google","Brasil"),
  (8,"2022-07-27","UNH530459","28.64","4","Finale","Argentina"),
  (6,"2022-03-21","KAU652658","38.11","4","Apple","Colombia"),
  (6,"2022-01-27","KWS194538","56.43","3","Cakewalk","Argentina"),
  (4,"2022-01-31","BPC657568","62.06","2","Sibelius","Brasil"),
  (2,"2022-01-26","CJF565279","82.33","3","Finale","Argentina"),
  (9,"2022-05-03","PSQ121591","22.00","3","Amazon","Argentina"),
  (1,"2022-08-24","HQV563744","63.92","3","Chami","Brasil"),
  (6,"2022-02-08","CTD719684","17.07","1","Borland","Colombia"),
  (9,"2022-03-31","ZDQ286286","17.86","3","Cakewalk","Brasil"),
  (2,"2022-04-24","GQC488270","29.92","4","Google","Argentina"),
  (1,"2022-05-24","UKK734473","67.28","2","Sibelius","Argentina"),
  (3,"2022-04-14","SRX616369","58.22","4","Borland","Colombia"),
  (1,"2022-06-04","GYF259412","86.04","2","Lavasoft","Colombia"),
  (0,"2022-04-02","IRB534580","15.99","1","Chami","Colombia"),
  (3,"2022-07-27","WVX117591","56.37","3","Google","Argentina"),
  (1,"2022-08-04","QYI481208","12.40","3","Apple","Argentina"),
  (3,"2022-03-09","BOB664848","90.83","3","Cakewalk","Brasil"),
  (2,"2022-01-13","HLQ923238","96.12","2","Cakewalk","Colombia"),
  (2,"2022-05-04","UDF808525","20.95","1","Amazon","Colombia"),
  (6,"2022-04-12","NKA845246","79.75","2","Microsoft","Brasil"),
  (2,"2022-03-15","IMP430716","21.78","3","Apple","Colombia"),
  (0,"2022-03-31","YIE645208","21.73","3","Apple","Argentina"),
  (6,"2022-07-30","QDX953687","67.54","3","Amazon","Argentina"),
  (8,"2022-08-03","BMQ855462","66.73","1","Adobe","Colombia");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (8,"2022-05-12","WGX498224","12.34","4","Apple","Argentina"),
  (10,"2022-04-24","ALL546488","12.81","2","Finale","Argentina"),
  (8,"2022-07-01","DEC572087","17.02","3","Lavasoft","Brasil"),
  (9,"2022-09-11","HPL622751","53.26","3","Adobe","Brasil"),
  (0,"2022-05-21","XJW040898","23.19","2","Google","Colombia"),
  (5,"2022-02-11","ETC935676","99.61","1","Finale","Brasil"),
  (9,"2022-04-05","KZH581567","92.72","2","Cakewalk","Brasil"),
  (3,"2022-08-20","TXP244337","32.83","2","Borland","Argentina"),
  (1,"2022-05-29","IBQ603696","65.04","2","Finale","Colombia"),
  (9,"2022-08-17","SFR177562","38.03","3","Microsoft","Brasil"),
  (6,"2022-09-13","YJG236283","28.67","1","Cakewalk","Colombia"),
  (9,"2022-07-13","WRT288384","21.03","3","Sibelius","Colombia"),
  (0,"2022-07-26","WGH803321","56.61","2","Microsoft","Argentina"),
  (7,"2022-05-19","BMF427070","66.61","3","Yahoo","Colombia"),
  (7,"2022-04-19","NLJ882158","22.78","1","Lavasoft","Argentina"),
  (8,"2022-08-01","JJQ757075","93.55","1","Finale","Colombia"),
  (9,"2022-02-17","NRK644356","30.32","1","Amazon","Colombia"),
  (10,"2022-09-04","BKG172876","42.92","4","Adobe","Colombia"),
  (5,"2022-04-30","YBK352535","91.80","3","Amazon","Colombia"),
  (10,"2022-06-06","JUI385494","47.25","1","Finale","Colombia"),
  (9,"2022-05-20","SIN424332","12.45","3","Microsoft","Colombia"),
  (6,"2022-08-28","SNP686882","30.56","4","Microsoft","Colombia"),
  (8,"2022-09-06","RKK157891","6.54","4","Microsoft","Brasil"),
  (4,"2022-06-05","GXJ877688","79.23","2","Amazon","Brasil"),
  (4,"2022-06-27","RLU383453","68.38","4","Yahoo","Argentina"),
  (4,"2022-07-09","XQA586974","46.49","3","Sibelius","Brasil"),
  (1,"2022-08-17","TJH441766","89.90","2","Adobe","Colombia"),
  (9,"2022-01-02","EOS367789","99.11","2","Microsoft","Colombia"),
  (7,"2022-08-25","QAR425722","82.74","2","Adobe","Brasil"),
  (10,"2022-05-07","CZD202224","85.69","1","Lavasoft","Brasil"),
  (4,"2022-05-06","YQE170945","40.24","1","Chami","Brasil"),
  (6,"2022-01-19","XXH162803","70.62","4","Adobe","Brasil"),
  (6,"2022-03-21","GPE308325","11.53","3","Microsoft","Brasil"),
  (7,"2022-01-29","ZLK473632","10.69","4","Microsoft","Brasil"),
  (6,"2022-01-30","QNU745786","72.80","4","Microsoft","Brasil"),
  (2,"2022-08-08","OVS711387","31.52","3","Finale","Argentina"),
  (2,"2022-06-21","CAR361644","74.50","3","Borland","Brasil"),
  (4,"2022-01-05","JXR687716","44.93","3","Amazon","Argentina"),
  (8,"2022-05-05","SBV613335","54.11","4","Google","Argentina"),
  (2,"2022-06-20","RJB569210","65.07","3","Finale","Brasil"),
  (8,"2022-05-11","KKH453254","92.35","1","Yahoo","Colombia"),
  (1,"2022-07-25","DIV787136","72.03","2","Amazon","Colombia"),
  (10,"2022-09-06","BYW742101","86.34","4","Sibelius","Colombia"),
  (3,"2022-08-25","ZUJ357674","5.37","3","Lavasoft","Brasil"),
  (5,"2022-06-11","COV714522","54.60","2","Cakewalk","Brasil"),
  (9,"2022-09-12","IAJ182387","74.01","2","Cakewalk","Brasil"),
  (3,"2022-03-11","KCH725728","20.22","2","Cakewalk","Brasil"),
  (1,"2022-04-08","YQN929344","39.09","2","Amazon","Argentina"),
  (3,"2022-04-19","FRR576276","75.32","2","Google","Brasil"),
  (1,"2022-04-14","KPI789933","63.89","2","Yahoo","Brasil");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (7,"2022-05-27","CRH872542","27.15","1","Yahoo","Brasil"),
  (2,"2022-04-28","TWN633786","53.84","4","Borland","Colombia"),
  (7,"2022-04-28","GMB771554","59.65","4","Lavasoft","Argentina"),
  (0,"2022-04-03","SFA408355","14.11","2","Borland","Argentina"),
  (1,"2022-03-17","SCA596677","51.21","1","Lavasoft","Colombia"),
  (2,"2022-06-17","MBT738666","23.89","3","Adobe","Colombia"),
  (6,"2022-08-18","WBF152429","19.75","4","Lavasoft","Brasil"),
  (8,"2022-01-05","KBT856934","28.46","2","Adobe","Argentina"),
  (9,"2022-01-09","PGY436924","41.53","4","Google","Brasil"),
  (8,"2022-01-15","GMF715541","19.40","1","Yahoo","Brasil"),
  (4,"2022-01-27","TBY708427","64.05","1","Cakewalk","Argentina"),
  (6,"2022-03-19","EPJ161548","3.74","3","Google","Brasil"),
  (8,"2022-01-19","LJV032402","14.93","2","Borland","Argentina"),
  (3,"2022-07-14","PEU381768","43.30","1","Finale","Argentina"),
  (6,"2022-03-23","TTA982970","31.40","4","Google","Argentina"),
  (3,"2022-06-12","GEN036895","71.37","3","Apple","Colombia"),
  (1,"2022-01-12","ONI268584","52.26","1","Chami","Brasil"),
  (4,"2022-01-19","XHY785580","54.21","3","Sibelius","Brasil"),
  (1,"2022-01-02","BYW055467","61.39","3","Cakewalk","Colombia"),
  (7,"2022-08-25","BTO818540","15.37","3","Cakewalk","Argentina"),
  (3,"2022-06-16","UDB338886","4.17","1","Chami","Colombia"),
  (6,"2022-02-25","KLS775087","75.95","4","Chami","Brasil"),
  (4,"2022-02-22","CQR322335","20.00","2","Google","Argentina"),
  (9,"2022-05-04","YEV197560","7.69","4","Sibelius","Argentina"),
  (3,"2022-01-24","NPS667558","31.89","2","Microsoft","Brasil"),
  (1,"2022-07-20","AMZ772701","2.30","2","Lavasoft","Argentina"),
  (7,"2022-09-01","SEL531546","95.16","2","Amazon","Colombia"),
  (1,"2022-08-11","HFF767312","79.86","2","Amazon","Brasil"),
  (6,"2022-03-06","PLI121913","57.72","1","Adobe","Colombia"),
  (9,"2022-01-11","IDI715922","73.44","2","Amazon","Argentina"),
  (8,"2022-04-08","YCV219421","15.72","1","Microsoft","Brasil"),
  (9,"2022-04-10","LLX742712","46.67","4","Yahoo","Colombia"),
  (3,"2022-03-17","JZF193826","26.55","3","Amazon","Brasil"),
  (4,"2022-05-02","QYR849856","65.54","1","Sibelius","Colombia"),
  (9,"2022-08-13","ZZY336842","26.67","2","Yahoo","Brasil"),
  (10,"2022-07-27","VXM224389","94.99","1","Google","Brasil"),
  (6,"2022-06-15","WOK216529","96.59","4","Borland","Argentina"),
  (7,"2022-07-18","WNZ189331","46.62","1","Chami","Colombia"),
  (1,"2022-02-06","ZML584985","80.86","1","Sibelius","Brasil"),
  (9,"2022-04-17","PBB607728","58.00","4","Adobe","Argentina"),
  (9,"2022-08-13","SJN249181","34.43","4","Adobe","Argentina"),
  (5,"2022-09-07","JYM322163","43.32","1","Apple","Brasil"),
  (4,"2022-01-20","VQA521068","30.44","1","Finale","Brasil"),
  (7,"2022-07-29","USJ794253","21.02","4","Google","Colombia"),
  (3,"2022-05-05","HPK359267","59.56","2","Microsoft","Colombia"),
  (8,"2022-06-02","RWV535571","14.66","4","Lavasoft","Colombia"),
  (10,"2022-06-29","KJC664415","51.20","4","Sibelius","Brasil"),
  (10,"2022-03-01","DCX505386","92.66","2","Borland","Colombia"),
  (6,"2022-06-13","GHK802227","52.72","2","Apple","Brasil"),
  (7,"2022-02-27","OCH846686","48.31","2","Amazon","Argentina");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (9,"2022-01-04","LCG704371","72.98","3","Finale","Argentina"),
  (1,"2022-05-15","APW303859","9.59","3","Amazon","Argentina"),
  (8,"2022-07-14","NJX310347","17.52","4","Yahoo","Argentina"),
  (3,"2022-03-22","OEH007834","32.94","4","Sibelius","Argentina"),
  (8,"2022-03-02","KPJ591589","12.39","1","Apple","Colombia"),
  (6,"2022-01-23","YVU643972","32.56","3","Amazon","Colombia"),
  (10,"2022-08-09","VFK236575","2.40","2","Microsoft","Colombia"),
  (2,"2022-03-13","TSI264233","78.62","1","Sibelius","Argentina"),
  (4,"2022-01-04","XZD431430","62.34","1","Sibelius","Argentina"),
  (7,"2022-03-20","YIY745848","83.76","2","Microsoft","Colombia"),
  (0,"2022-07-22","FRF870778","86.92","2","Lavasoft","Colombia"),
  (10,"2022-05-26","NIK855655","97.20","1","Chami","Colombia"),
  (9,"2022-08-09","NQM619782","82.82","1","Amazon","Brasil"),
  (10,"2022-08-28","VSF841608","89.01","1","Yahoo","Argentina"),
  (3,"2022-05-14","GRW014439","52.51","1","Google","Colombia"),
  (4,"2022-06-30","NXM688255","19.06","2","Chami","Argentina"),
  (10,"2022-04-08","MSO856857","82.75","4","Lavasoft","Argentina"),
  (3,"2022-03-20","GUI064362","53.68","4","Adobe","Colombia"),
  (7,"2022-04-19","MVD722578","2.22","1","Chami","Argentina"),
  (2,"2022-01-20","UWB730724","91.10","3","Amazon","Argentina"),
  (8,"2022-07-01","CKN726858","54.97","1","Chami","Colombia"),
  (5,"2022-04-15","RRE422843","14.48","1","Finale","Argentina"),
  (2,"2022-04-01","OOQ599057","11.66","4","Chami","Argentina"),
  (7,"2022-04-25","WLD555348","51.97","3","Apple","Colombia"),
  (7,"2022-03-21","JLX331017","78.18","2","Sibelius","Brasil"),
  (6,"2022-04-29","TUX155538","17.16","1","Amazon","Colombia"),
  (4,"2022-02-04","MUW775517","84.65","1","Yahoo","Argentina"),
  (3,"2022-09-02","QBV197926","65.57","2","Microsoft","Colombia"),
  (0,"2022-03-16","TDB686881","88.54","4","Cakewalk","Argentina"),
  (1,"2022-01-22","PAM548224","98.35","2","Chami","Argentina"),
  (9,"2022-09-04","CYX345218","97.06","3","Amazon","Argentina"),
  (1,"2022-08-07","TST792448","16.65","2","Finale","Brasil"),
  (3,"2022-04-03","GEC341182","78.93","3","Lavasoft","Colombia"),
  (8,"2022-08-10","NPZ355148","84.31","3","Adobe","Colombia"),
  (1,"2022-08-09","MOQ933070","56.17","4","Amazon","Colombia"),
  (5,"2022-03-21","USD869224","39.22","3","Apple","Brasil"),
  (3,"2022-06-02","NLO913446","2.34","2","Microsoft","Colombia"),
  (8,"2022-04-08","MZJ462063","90.89","4","Finale","Argentina"),
  (7,"2022-01-02","ITL615668","66.16","4","Lavasoft","Argentina"),
  (3,"2022-09-10","QUP120028","86.49","3","Apple","Brasil"),
  (6,"2022-04-05","EFS262485","59.95","3","Apple","Colombia"),
  (5,"2022-07-29","LCS675259","2.01","3","Google","Colombia"),
  (10,"2022-05-01","JIG614446","83.92","2","Microsoft","Brasil"),
  (4,"2022-01-16","RPO110488","78.24","3","Yahoo","Colombia"),
  (5,"2022-09-10","ZDT879777","4.57","1","Apple","Argentina"),
  (3,"2022-07-06","XDR659440","31.92","1","Yahoo","Colombia"),
  (1,"2022-07-18","NQG752699","22.78","3","Amazon","Colombia"),
  (5,"2022-05-20","WJD303083","35.62","3","Apple","Colombia"),
  (5,"2022-08-31","DYQ473776","11.46","3","Finale","Colombia"),
  (8,"2022-02-22","VSM537498","7.52","4","Apple","Colombia");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (4,"2022-06-06","MXU389786","82.98","2","Finale","Colombia"),
  (3,"2022-06-27","QQV557118","2.58","2","Yahoo","Colombia"),
  (5,"2022-01-19","DGP894777","88.68","2","Microsoft","Argentina"),
  (9,"2022-02-03","HVB724087","25.28","3","Cakewalk","Colombia"),
  (8,"2022-02-14","SXW342257","6.10","2","Cakewalk","Brasil"),
  (9,"2022-05-19","BTX394404","72.08","3","Chami","Argentina"),
  (3,"2022-02-10","ROI565234","86.64","3","Google","Colombia"),
  (7,"2022-06-18","GVS026485","69.39","1","Chami","Argentina"),
  (2,"2022-09-03","EXH477132","20.10","2","Google","Brasil"),
  (10,"2022-05-20","QYM150829","20.92","1","Cakewalk","Colombia"),
  (3,"2022-01-02","IGG552174","13.00","2","Chami","Brasil"),
  (9,"2022-02-03","JSL387574","40.31","2","Apple","Argentina"),
  (5,"2022-08-03","IHB503769","72.36","1","Lavasoft","Colombia"),
  (2,"2022-02-15","UHT987873","95.90","2","Cakewalk","Colombia"),
  (4,"2022-04-11","UFK275383","34.49","2","Lavasoft","Colombia"),
  (10,"2022-03-11","OGJ580296","44.70","1","Adobe","Brasil"),
  (9,"2022-01-26","IOM015594","30.25","1","Sibelius","Argentina"),
  (2,"2022-04-11","MHX088862","19.88","4","Adobe","Brasil"),
  (0,"2022-02-22","XPQ554324","1.51","2","Adobe","Argentina"),
  (9,"2022-07-15","TON304812","56.87","4","Chami","Argentina"),
  (8,"2022-07-14","YHN731598","10.19","4","Yahoo","Colombia"),
  (3,"2022-07-30","RTR511835","23.63","1","Cakewalk","Brasil"),
  (8,"2022-07-16","XUZ412575","67.54","2","Lavasoft","Colombia"),
  (6,"2022-06-06","DXT568246","69.59","1","Adobe","Argentina"),
  (1,"2022-05-29","VWP030369","38.65","4","Finale","Brasil"),
  (10,"2022-08-06","SUM326017","41.82","4","Lavasoft","Argentina"),
  (7,"2022-02-19","CSU487585","86.30","2","Sibelius","Argentina"),
  (2,"2022-04-14","GEV321396","49.81","4","Yahoo","Argentina"),
  (3,"2022-07-23","QLD072642","11.85","3","Lavasoft","Brasil"),
  (5,"2022-03-12","TKG171969","42.11","4","Yahoo","Argentina"),
  (7,"2022-07-16","GEM072842","56.19","1","Google","Argentina"),
  (9,"2022-08-18","UKX680323","11.50","3","Sibelius","Colombia"),
  (1,"2022-02-06","CQU557951","47.55","2","Lavasoft","Colombia"),
  (7,"2022-02-27","JMD421828","87.25","2","Google","Argentina"),
  (7,"2022-04-15","VIC040208","50.21","2","Apple","Argentina"),
  (6,"2022-04-26","OUT505651","37.10","4","Microsoft","Argentina"),
  (3,"2022-01-13","IQH447646","88.37","3","Borland","Argentina"),
  (5,"2022-04-01","BHR578161","54.98","1","Sibelius","Colombia"),
  (2,"2022-09-12","FHN725845","65.47","4","Yahoo","Brasil"),
  (5,"2022-05-30","WQX285887","65.51","2","Borland","Colombia"),
  (8,"2022-04-25","ZFY737847","32.99","4","Borland","Brasil"),
  (7,"2022-07-29","RUR151762","85.55","1","Microsoft","Argentina"),
  (5,"2022-02-17","WYL563266","60.42","1","Apple","Colombia"),
  (1,"2022-03-14","SRO484788","41.52","2","Google","Argentina"),
  (10,"2022-03-30","BRW844266","14.00","4","Finale","Brasil"),
  (2,"2022-07-13","APM661866","11.25","1","Amazon","Colombia"),
  (1,"2022-03-17","QKQ391545","15.72","2","Lavasoft","Argentina"),
  (3,"2022-04-10","VOQ245236","49.08","3","Apple","Brasil"),
  (2,"2022-08-23","LLW406270","69.83","1","Yahoo","Brasil"),
  (1,"2022-04-05","GCF295642","46.90","4","Apple","Brasil");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (3,"2022-07-23","PRC416539","70.32","1","Lavasoft","Colombia"),
  (10,"2022-03-02","JKR422762","31.94","4","Amazon","Argentina"),
  (7,"2022-01-29","CQQ222220","77.67","4","Amazon","Colombia"),
  (9,"2022-04-22","MOX462249","30.72","4","Yahoo","Argentina"),
  (5,"2022-01-24","YVQ626117","30.56","3","Amazon","Argentina"),
  (5,"2022-03-06","CIN351358","6.60","3","Adobe","Brasil"),
  (8,"2022-01-14","EKD682779","92.51","4","Microsoft","Brasil"),
  (7,"2022-01-17","LGW423477","92.73","2","Adobe","Colombia"),
  (6,"2022-01-05","OPA582402","61.63","1","Sibelius","Brasil"),
  (8,"2022-07-01","QWW271597","44.83","2","Chami","Argentina"),
  (6,"2022-04-24","HXO655878","85.49","1","Google","Brasil"),
  (1,"2022-08-18","SVV569356","33.20","3","Lavasoft","Argentina"),
  (4,"2022-07-26","YJD751817","26.36","3","Yahoo","Brasil"),
  (4,"2022-07-14","OVX945653","81.00","4","Finale","Brasil"),
  (3,"2022-02-28","ZMQ424713","1.67","1","Yahoo","Argentina"),
  (5,"2022-07-04","AMK646277","92.52","1","Cakewalk","Brasil"),
  (4,"2022-07-21","ODJ561615","70.38","1","Cakewalk","Colombia"),
  (3,"2022-03-13","OAO325046","81.08","1","Lavasoft","Argentina"),
  (9,"2022-04-27","EAG323883","56.93","1","Lavasoft","Argentina"),
  (2,"2022-01-27","ARU727737","93.81","4","Cakewalk","Brasil"),
  (7,"2022-07-31","QBX379437","86.97","3","Adobe","Colombia"),
  (4,"2022-03-07","RUB932249","57.26","1","Chami","Argentina"),
  (4,"2022-01-23","YGR815282","39.82","3","Finale","Argentina"),
  (3,"2022-02-04","VCK056208","60.36","2","Yahoo","Brasil"),
  (3,"2022-03-15","FMN735475","63.40","1","Cakewalk","Argentina"),
  (5,"2022-01-19","LXJ420028","17.97","3","Amazon","Colombia"),
  (3,"2022-04-04","HJR105412","84.22","1","Borland","Colombia"),
  (10,"2022-04-16","JQI382566","45.16","1","Google","Brasil"),
  (7,"2022-06-08","FXU913280","85.91","1","Yahoo","Argentina"),
  (1,"2022-09-03","HRH647572","41.93","1","Sibelius","Colombia"),
  (0,"2022-03-12","OLW067355","40.40","1","Lavasoft","Brasil"),
  (4,"2022-03-17","UFM798142","61.98","1","Google","Argentina"),
  (8,"2022-01-19","DEG636074","95.44","2","Apple","Colombia"),
  (5,"2022-04-15","KKB620893","8.84","4","Amazon","Argentina"),
  (1,"2022-04-29","IQT818229","64.08","2","Google","Brasil"),
  (9,"2022-01-17","HRE215758","66.93","1","Finale","Colombia"),
  (0,"2022-06-08","LQM603388","10.11","2","Adobe","Argentina"),
  (1,"2022-08-03","KUD044419","26.91","2","Apple","Colombia"),
  (9,"2022-07-22","JNU326312","19.48","3","Sibelius","Brasil"),
  (10,"2022-03-01","SVS198672","88.60","2","Borland","Colombia"),
  (1,"2022-04-24","IQA568685","66.39","4","Sibelius","Argentina"),
  (2,"2022-07-02","ZFP103304","83.73","2","Adobe","Brasil"),
  (2,"2022-03-13","UOC456658","17.04","3","Microsoft","Colombia"),
  (2,"2022-09-10","YRE322352","4.37","2","Microsoft","Argentina"),
  (9,"2022-05-17","NVV132133","68.50","4","Finale","Argentina"),
  (2,"2022-01-07","IMH988136","30.69","1","Cakewalk","Brasil"),
  (6,"2022-09-06","TYK236925","76.52","4","Finale","Argentina"),
  (8,"2022-09-07","KVM212477","17.60","2","Sibelius","Colombia"),
  (9,"2022-01-18","XSE751664","75.88","2","Sibelius","Brasil"),
  (5,"2022-07-11","ETM952471","98.72","3","Chami","Argentina");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (9,"2022-08-10","TIR854578","65.66","3","Cakewalk","Brasil"),
  (3,"2022-07-12","AEE024448","5.20","4","Microsoft","Colombia"),
  (0,"2022-07-27","FYU636459","77.67","2","Yahoo","Argentina"),
  (8,"2022-06-08","CWO688274","39.59","4","Borland","Colombia"),
  (4,"2022-05-26","MDI146254","38.37","2","Amazon","Brasil"),
  (9,"2022-08-21","KWM264157","57.85","4","Sibelius","Colombia"),
  (4,"2022-02-17","KKV555269","84.66","4","Lavasoft","Argentina"),
  (7,"2022-09-09","URF445272","37.93","4","Amazon","Colombia"),
  (6,"2022-04-16","KTL415361","60.76","1","Adobe","Argentina"),
  (2,"2022-06-09","ENV746772","96.40","1","Google","Colombia"),
  (7,"2022-05-21","KQY474473","64.42","3","Borland","Colombia"),
  (4,"2022-01-09","XSG154127","78.65","3","Lavasoft","Argentina"),
  (5,"2022-02-09","NNC631741","68.48","3","Adobe","Argentina"),
  (9,"2022-06-04","OQQ872470","81.30","4","Adobe","Brasil"),
  (1,"2022-04-28","ULH150456","66.26","4","Chami","Argentina"),
  (6,"2022-03-31","QKU847959","69.04","4","Amazon","Brasil"),
  (6,"2022-07-05","VGS295892","78.65","2","Finale","Colombia"),
  (2,"2022-07-13","GWO341770","41.03","3","Amazon","Brasil"),
  (4,"2022-05-22","ULA613316","8.10","4","Sibelius","Colombia"),
  (1,"2022-01-31","HTS415255","78.04","4","Lavasoft","Argentina"),
  (10,"2022-02-25","BKK714387","28.91","3","Sibelius","Brasil"),
  (1,"2022-07-16","LIP674133","97.21","1","Yahoo","Brasil"),
  (4,"2022-04-03","IZO524658","85.84","2","Google","Argentina"),
  (1,"2022-03-25","RBR915512","21.24","1","Apple","Colombia"),
  (0,"2022-06-29","NAU677180","44.55","4","Adobe","Colombia"),
  (8,"2022-03-25","YGF278503","22.78","3","Microsoft","Argentina"),
  (6,"2022-06-02","NLJ607712","89.31","3","Finale","Colombia"),
  (8,"2022-03-21","AAT996434","60.27","4","Adobe","Colombia"),
  (7,"2022-06-14","NGJ161722","45.82","2","Chami","Colombia"),
  (4,"2022-04-28","GCC220697","54.42","2","Cakewalk","Argentina"),
  (3,"2022-06-18","EBY435814","86.02","2","Microsoft","Brasil"),
  (4,"2022-04-08","USO325529","67.39","2","Finale","Brasil"),
  (6,"2022-02-20","VOO716766","73.34","2","Cakewalk","Argentina"),
  (5,"2022-08-17","PDL236756","78.71","2","Sibelius","Brasil"),
  (0,"2022-08-15","ECW225251","83.25","1","Finale","Brasil"),
  (9,"2022-06-18","OJG217171","25.06","3","Microsoft","Argentina"),
  (2,"2022-09-10","GZS262715","16.14","1","Google","Brasil"),
  (4,"2022-02-19","MQM998560","61.49","4","Apple","Argentina"),
  (1,"2022-08-06","WDI184825","89.75","1","Microsoft","Argentina"),
  (6,"2022-08-02","TIC292920","61.30","3","Finale","Brasil"),
  (10,"2022-07-07","VEC303871","90.56","1","Google","Colombia"),
  (0,"2022-08-17","QVD647106","81.21","2","Cakewalk","Brasil"),
  (6,"2022-06-22","JHK063757","69.52","2","Cakewalk","Brasil"),
  (5,"2022-07-04","UPA726657","28.88","4","Adobe","Brasil"),
  (5,"2022-07-24","GLR587313","89.65","2","Cakewalk","Colombia"),
  (3,"2022-07-09","QIK762438","7.38","3","Yahoo","Brasil"),
  (5,"2022-01-20","INU451188","54.69","2","Sibelius","Argentina"),
  (10,"2022-07-05","UEK614123","2.96","4","Sibelius","Argentina"),
  (0,"2022-08-19","OTH176476","87.70","4","Microsoft","Brasil"),
  (4,"2022-07-25","EJR822689","38.36","3","Apple","Argentina");
INSERT INTO `transactions` (`CUST_ID`,`TRANSACTION_DATE`,`TRANSACTION_ID`,`TRANSACTION_AMOUNT`,`AUTHORIZATION_TYPE`,`COMMERCE_NAME`,`COUNTRY`)
VALUES
  (4,"2022-01-26","BJC861388","20.37","4","Finale","Colombia"),
  (10,"2022-03-23","BCN335834","4.59","3","Chami","Argentina"),
  (3,"2022-08-26","CGC114891","11.37","3","Apple","Argentina"),
  (7,"2022-04-23","SQK429220","21.66","1","Adobe","Colombia"),
  (4,"2022-08-25","GXR893077","5.10","4","Google","Colombia"),
  (1,"2022-05-24","NJB465662","22.59","2","Adobe","Argentina"),
  (6,"2022-05-11","GCI428482","99.58","3","Chami","Colombia"),
  (10,"2022-04-02","LGS872507","21.95","4","Adobe","Colombia"),
  (4,"2022-07-28","PZU484727","19.63","1","Cakewalk","Argentina"),
  (2,"2022-04-02","ZAN873574","91.17","4","Borland","Argentina"),
  (10,"2022-06-05","OBF757379","96.91","2","Borland","Colombia"),
  (3,"2022-08-22","DKS517975","7.12","3","Yahoo","Colombia"),
  (8,"2022-05-31","EDY410537","1.93","3","Finale","Colombia"),
  (7,"2022-04-27","RKW495902","50.61","3","Microsoft","Argentina"),
  (5,"2022-03-14","MCF868363","62.85","2","Google","Brasil"),
  (9,"2022-05-23","IIH841140","83.65","2","Microsoft","Colombia"),
  (6,"2022-08-23","IKZ374648","74.48","2","Google","Brasil"),
  (7,"2022-06-02","ADU745178","7.84","1","Apple","Brasil"),
  (1,"2022-03-31","NAU701036","90.99","3","Google","Argentina"),
  (5,"2022-01-24","MBX633005","26.48","1","Apple","Brasil"),
  (10,"2022-01-14","LEE547666","2.96","2","Chami","Colombia"),
  (4,"2022-03-19","XWU514781","12.00","3","Lavasoft","Argentina"),
  (9,"2022-06-29","PLT640343","14.88","2","Chami","Argentina"),
  (3,"2022-05-26","RQS031946","32.62","3","Sibelius","Colombia"),
  (5,"2022-04-20","WDR243861","96.23","1","Lavasoft","Argentina"),
  (4,"2022-08-25","KBC156637","16.91","3","Borland","Argentina"),
  (4,"2022-07-21","DUN712550","59.58","3","Amazon","Argentina"),
  (10,"2022-01-26","YMZ335745","74.32","1","Adobe","Argentina"),
  (1,"2022-03-11","XZT256696","78.94","2","Adobe","Argentina"),
  (5,"2022-06-13","ACK006548","16.55","4","Yahoo","Brasil"),
  (7,"2022-08-08","LFY253471","50.09","1","Chami","Colombia"),
  (3,"2022-08-12","QXH351858","18.91","1","Yahoo","Brasil"),
  (0,"2022-09-05","XOI658682","57.51","4","Cakewalk","Brasil"),
  (9,"2022-05-09","XGI127164","56.30","4","Lavasoft","Colombia"),
  (6,"2022-05-17","JEY441173","58.89","1","Adobe","Brasil"),
  (7,"2022-05-14","TRE403481","53.68","2","Adobe","Brasil"),
  (7,"2022-02-09","NUX187665","33.86","1","Sibelius","Colombia"),
  (8,"2022-08-02","DQU526402","85.01","3","Amazon","Colombia"),
  (3,"2022-06-28","BJT220343","60.40","3","Microsoft","Colombia"),
  (7,"2022-03-10","JOI251512","52.80","1","Borland","Argentina"),
  (8,"2022-09-03","HIN912456","23.68","1","Finale","Argentina"),
  (4,"2022-05-24","HRK914863","46.13","1","Chami","Brasil"),
  (5,"2022-03-19","JCB769081","78.66","4","Borland","Argentina"),
  (6,"2022-07-26","XUH439075","17.93","4","Borland","Argentina"),
  (9,"2022-04-22","QLB515752","81.92","4","Apple","Argentina"),
  (9,"2022-05-01","FJG423646","35.57","1","Sibelius","Colombia"),
  (4,"2022-06-19","CPB635177","6.31","4","Lavasoft","Brasil"),
  (4,"2022-02-12","EBP986392","94.41","1","Borland","Colombia"),
  (4,"2022-02-19","WJW340591","87.17","2","Google","Argentina"),
  (7,"2022-06-20","XOS437144","94.55","2","Apple","Argentina");
