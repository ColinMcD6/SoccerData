use cs3380;

drop table if exists teams;

CREATE TABLE teams (team_id INTEGER PRIMARY KEY,team_long_name TEXT,team_short_name TEXT );

insert into teams (team_id, team_long_name, team_short_name) values (1,'KRC Genk','GEN');
insert into teams (team_id, team_long_name, team_short_name) values (2,'Beerschot AC','BAC');
insert into teams (team_id, team_long_name, team_short_name) values (3,'SV Zulte-Waregem','ZUL');
insert into teams (team_id, team_long_name, team_short_name) values (4,'Sporting Lokeren','LOK');
insert into teams (team_id, team_long_name, team_short_name) values (5,'KSV Cercle Brugge','CEB');
insert into teams (team_id, team_long_name, team_short_name) values (6,'RSC Anderlecht','AND');
insert into teams (team_id, team_long_name, team_short_name) values (7,'KAA Gent','GEN');
insert into teams (team_id, team_long_name, team_short_name) values (8,'RAEC Mons','MON');
insert into teams (team_id, team_long_name, team_short_name) values (9,'FCV Dender EH','DEN');
insert into teams (team_id, team_long_name, team_short_name) values (10,'Standard de Liège','STL');
insert into teams (team_id, team_long_name, team_short_name) values (11,'KV Mechelen','MEC');
insert into teams (team_id, team_long_name, team_short_name) values (12,'Club Brugge KV','CLB');
insert into teams (team_id, team_long_name, team_short_name) values (13,'KSV Roeselare','ROS');
insert into teams (team_id, team_long_name, team_short_name) values (14,'KV Kortrijk','KOR');
insert into teams (team_id, team_long_name, team_short_name) values (15,'Tubize','TUB');
insert into teams (team_id, team_long_name, team_short_name) values (16,'Royal Excel Mouscron','MOU');
insert into teams (team_id, team_long_name, team_short_name) values (17,'KVC Westerlo','WES');
insert into teams (team_id, team_long_name, team_short_name) values (18,'Sporting Charleroi','CHA');
insert into teams (team_id, team_long_name, team_short_name) values (614,'Sint-Truidense VV','STT');
insert into teams (team_id, team_long_name, team_short_name) values (1034,'Lierse SK','LIE');
insert into teams (team_id, team_long_name, team_short_name) values (1042,'KAS Eupen','EUP');
insert into teams (team_id, team_long_name, team_short_name) values (1513,'Oud-Heverlee Leuven','O-H');
insert into teams (team_id, team_long_name, team_short_name) values (2004,'Waasland-Beveren','WAA');
insert into teams (team_id, team_long_name, team_short_name) values (2476,'KV Oostende','OOS');
insert into teams (team_id, team_long_name, team_short_name) values (2510,'Royal Excel Mouscron','MOP');
insert into teams (team_id, team_long_name, team_short_name) values (3457,'Manchester United','MUN');
insert into teams (team_id, team_long_name, team_short_name) values (3458,'Newcastle United','NEW');
insert into teams (team_id, team_long_name, team_short_name) values (3459,'Arsenal','ARS');
insert into teams (team_id, team_long_name, team_short_name) values (3460,'West Bromwich Albion','WBA');
insert into teams (team_id, team_long_name, team_short_name) values (3461,'Sunderland','SUN');
insert into teams (team_id, team_long_name, team_short_name) values (3462,'Liverpool','LIV');
insert into teams (team_id, team_long_name, team_short_name) values (3463,'West Ham United','WHU');
insert into teams (team_id, team_long_name, team_short_name) values (3464,'Wigan Athletic','WIG');
insert into teams (team_id, team_long_name, team_short_name) values (3465,'Aston Villa','AVL');
insert into teams (team_id, team_long_name, team_short_name) values (3466,'Manchester City','MCI');
insert into teams (team_id, team_long_name, team_short_name) values (3467,'Everton','EVE');
insert into teams (team_id, team_long_name, team_short_name) values (3468,'Blackburn Rovers','BLB');
insert into teams (team_id, team_long_name, team_short_name) values (3469,'Middlesbrough','MID');
insert into teams (team_id, team_long_name, team_short_name) values (3470,'Tottenham Hotspur','TOT');
insert into teams (team_id, team_long_name, team_short_name) values (3471,'Bolton Wanderers','BOL');
insert into teams (team_id, team_long_name, team_short_name) values (3472,'Stoke City','STK');
insert into teams (team_id, team_long_name, team_short_name) values (3473,'Hull City','HUL');
insert into teams (team_id, team_long_name, team_short_name) values (3474,'Fulham','FUL');
insert into teams (team_id, team_long_name, team_short_name) values (3475,'Chelsea','CHE');
insert into teams (team_id, team_long_name, team_short_name) values (3476,'Portsmouth','POR');
insert into teams (team_id, team_long_name, team_short_name) values (4218,'Birmingham City','BIR');
insert into teams (team_id, team_long_name, team_short_name) values (4225,'Wolverhampton Wanderers','WOL');
insert into teams (team_id, team_long_name, team_short_name) values (4234,'Burnley','BUR');
insert into teams (team_id, team_long_name, team_short_name) values (4996,'Blackpool','BLA');
insert into teams (team_id, team_long_name, team_short_name) values (5744,'Swansea City','SWA');
insert into teams (team_id, team_long_name, team_short_name) values (5747,'Queens Park Rangers','QPR');
insert into teams (team_id, team_long_name, team_short_name) values (5756,'Norwich City','NOR');
insert into teams (team_id, team_long_name, team_short_name) values (6504,'Southampton','SOU');
insert into teams (team_id, team_long_name, team_short_name) values (6509,'Reading','REA');
insert into teams (team_id, team_long_name, team_short_name) values (7261,'Crystal Palace','CRY');
insert into teams (team_id, team_long_name, team_short_name) values (7276,'Cardiff City','CAR');
insert into teams (team_id, team_long_name, team_short_name) values (8021,'Leicester City','LEI');
insert into teams (team_id, team_long_name, team_short_name) values (8779,'Bournemouth','BOU');
insert into teams (team_id, team_long_name, team_short_name) values (8784,'Watford','WAT');
insert into teams (team_id, team_long_name, team_short_name) values (9537,'AJ Auxerre','AUX');
insert into teams (team_id, team_long_name, team_short_name) values (9538,'FC Nantes','NAN');
insert into teams (team_id, team_long_name, team_short_name) values (9539,'Girondins de Bordeaux','BOR');
insert into teams (team_id, team_long_name, team_short_name) values (9540,'SM Caen','CAE');
insert into teams (team_id, team_long_name, team_short_name) values (9541,'Le Havre AC','LEH');
insert into teams (team_id, team_long_name, team_short_name) values (9542,'OGC Nice','NIC');
insert into teams (team_id, team_long_name, team_short_name) values (9543,'Le Mans FC','LEM');
insert into teams (team_id, team_long_name, team_short_name) values (9544,'FC Lorient','LOR');
insert into teams (team_id, team_long_name, team_short_name) values (9545,'Olympique Lyonnais','LYO');
insert into teams (team_id, team_long_name, team_short_name) values (9546,'Toulouse FC','TOU');
insert into teams (team_id, team_long_name, team_short_name) values (9547,'AS Monaco','MON');
insert into teams (team_id, team_long_name, team_short_name) values (9548,'Paris Saint-Germain','PSG');
insert into teams (team_id, team_long_name, team_short_name) values (9549,'AS Nancy-Lorraine','NAN');
insert into teams (team_id, team_long_name, team_short_name) values (9550,'LOSC Lille','LIL');
insert into teams (team_id, team_long_name, team_short_name) values (9551,'Stade Rennais FC','REN');
insert into teams (team_id, team_long_name, team_short_name) values (9552,'Olympique de Marseille','MAR');
insert into teams (team_id, team_long_name, team_short_name) values (9553,'FC Sochaux-Montbéliard','SOC');
insert into teams (team_id, team_long_name, team_short_name) values (9554,'Grenoble Foot 38','GRE');
insert into teams (team_id, team_long_name, team_short_name) values (9555,'Valenciennes FC','VAL');
insert into teams (team_id, team_long_name, team_short_name) values (9556,'AS Saint-Étienne','ETI');
insert into teams (team_id, team_long_name, team_short_name) values (10300,'RC Lens','LEN');
insert into teams (team_id, team_long_name, team_short_name) values (10309,'Montpellier Hérault SC','MON');
insert into teams (team_id, team_long_name, team_short_name) values (10312,'US Boulogne Cote D''Opale','BOU');
insert into teams (team_id, team_long_name, team_short_name) values (11074,'AC Arles-Avignon','ARL');
insert into teams (team_id, team_long_name, team_short_name) values (11076,'Stade Brestois 29','BRE');
insert into teams (team_id, team_long_name, team_short_name) values (11817,'AC Ajaccio','AJA');
insert into teams (team_id, team_long_name, team_short_name) values (11822,'Évian Thonon Gaillard FC','ETG');
insert into teams (team_id, team_long_name, team_short_name) values (11825,'Dijon FCO','DIJ');
insert into teams (team_id, team_long_name, team_short_name) values (12587,'Stade de Reims','REI');
insert into teams (team_id, team_long_name, team_short_name) values (12594,'SC Bastia','BAS');
insert into teams (team_id, team_long_name, team_short_name) values (12595,'ES Troyes AC','TRO');
insert into teams (team_id, team_long_name, team_short_name) values (13343,'En Avant de Guingamp','GUI');
insert into teams (team_id, team_long_name, team_short_name) values (14106,'FC Metz','MET');
insert into teams (team_id, team_long_name, team_short_name) values (14868,'Angers SCO','ANG');
insert into teams (team_id, team_long_name, team_short_name) values (14876,'GFC Ajaccio','GAJ');
insert into teams (team_id, team_long_name, team_short_name) values (15617,'FC Bayern Munich','BMU');
insert into teams (team_id, team_long_name, team_short_name) values (15618,'Hamburger SV','HAM');
insert into teams (team_id, team_long_name, team_short_name) values (15619,'Bayer 04 Leverkusen','LEV');
insert into teams (team_id, team_long_name, team_short_name) values (15620,'Borussia Dortmund','DOR');
insert into teams (team_id, team_long_name, team_short_name) values (15621,'FC Schalke 04','S04');
insert into teams (team_id, team_long_name, team_short_name) values (15622,'Hannover 96','HAN');
insert into teams (team_id, team_long_name, team_short_name) values (15623,'VfL Wolfsburg','WOL');
insert into teams (team_id, team_long_name, team_short_name) values (15624,'1. FC Köln','FCK');
insert into teams (team_id, team_long_name, team_short_name) values (15625,'Eintracht Frankfurt','EFR');
insert into teams (team_id, team_long_name, team_short_name) values (15626,'Hertha BSC Berlin','HBE');
insert into teams (team_id, team_long_name, team_short_name) values (15627,'DSC Arminia Bielefeld','BIE');
insert into teams (team_id, team_long_name, team_short_name) values (15628,'SV Werder Bremen','WBR');
insert into teams (team_id, team_long_name, team_short_name) values (15629,'FC Energie Cottbus','COT');
insert into teams (team_id, team_long_name, team_short_name) values (15630,'TSG 1899 Hoffenheim','HOF');
insert into teams (team_id, team_long_name, team_short_name) values (15631,'Borussia Mönchengladbach','GLA');
insert into teams (team_id, team_long_name, team_short_name) values (15632,'VfB Stuttgart','STU');
insert into teams (team_id, team_long_name, team_short_name) values (15633,'Karlsruher SC','KAR');
insert into teams (team_id, team_long_name, team_short_name) values (15634,'VfL Bochum','BOC');
insert into teams (team_id, team_long_name, team_short_name) values (16237,'SC Freiburg','FRE');
insert into teams (team_id, team_long_name, team_short_name) values (16239,'1. FC Nürnberg','NUR');
insert into teams (team_id, team_long_name, team_short_name) values (16243,'1. FSV Mainz 05','MAI');
insert into teams (team_id, team_long_name, team_short_name) values (16848,'1. FC Kaiserslautern','KAI');
insert into teams (team_id, team_long_name, team_short_name) values (16850,'FC St. Pauli','STP');
insert into teams (team_id, team_long_name, team_short_name) values (17465,'FC Augsburg','AUG');
insert into teams (team_id, team_long_name, team_short_name) values (18074,'Fortuna Düsseldorf','FDU');
insert into teams (team_id, team_long_name, team_short_name) values (18079,'SpVgg Greuther Fürth','GRF');
insert into teams (team_id, team_long_name, team_short_name) values (18691,'Eintracht Braunschweig','BRA');
insert into teams (team_id, team_long_name, team_short_name) values (19305,'SC Paderborn 07','PAD');
insert into teams (team_id, team_long_name, team_short_name) values (19916,'FC Ingolstadt 04','ING');
insert into teams (team_id, team_long_name, team_short_name) values (19917,'SV Darmstadt 98','DAR');
insert into teams (team_id, team_long_name, team_short_name) values (20513,'Atalanta','ATA');
insert into teams (team_id, team_long_name, team_short_name) values (20514,'Siena','SIE');
insert into teams (team_id, team_long_name, team_short_name) values (20515,'Cagliari','CAG');
insert into teams (team_id, team_long_name, team_short_name) values (20516,'Lazio','LAZ');
insert into teams (team_id, team_long_name, team_short_name) values (20517,'Catania','CAT');
insert into teams (team_id, team_long_name, team_short_name) values (20518,'Genoa','GEN');
insert into teams (team_id, team_long_name, team_short_name) values (20519,'Chievo Verona','CHI');
insert into teams (team_id, team_long_name, team_short_name) values (20520,'Reggio Calabria','REG');
insert into teams (team_id, team_long_name, team_short_name) values (20521,'Fiorentina','FIO');
insert into teams (team_id, team_long_name, team_short_name) values (20522,'Juventus','JUV');
insert into teams (team_id, team_long_name, team_short_name) values (20523,'Milan','ACM');
insert into teams (team_id, team_long_name, team_short_name) values (20524,'Bologna','BOL');
insert into teams (team_id, team_long_name, team_short_name) values (20525,'Roma','ROM');
insert into teams (team_id, team_long_name, team_short_name) values (20526,'Napoli','NAP');
insert into teams (team_id, team_long_name, team_short_name) values (20527,'Sampdoria','SAM');
insert into teams (team_id, team_long_name, team_short_name) values (20528,'Inter','INT');
insert into teams (team_id, team_long_name, team_short_name) values (20529,'Torino','TOR');
insert into teams (team_id, team_long_name, team_short_name) values (20530,'Lecce','LEC');
insert into teams (team_id, team_long_name, team_short_name) values (20531,'Udinese','UDI');
insert into teams (team_id, team_long_name, team_short_name) values (20532,'Palermo','PAL');
insert into teams (team_id, team_long_name, team_short_name) values (21280,'Bari','BAR');
insert into teams (team_id, team_long_name, team_short_name) values (21285,'Livorno','LIV');
insert into teams (team_id, team_long_name, team_short_name) values (21292,'Parma','PAR');
insert into teams (team_id, team_long_name, team_short_name) values (22042,'Cesena','CES');
insert into teams (team_id, team_long_name, team_short_name) values (22044,'Brescia','BRE');
insert into teams (team_id, team_long_name, team_short_name) values (22805,'Novara','NOV');
insert into teams (team_id, team_long_name, team_short_name) values (23523,'Pescara','PES');
insert into teams (team_id, team_long_name, team_short_name) values (24273,'Hellas Verona','VER');
insert into teams (team_id, team_long_name, team_short_name) values (24288,'Sassuolo','SAS');
insert into teams (team_id, team_long_name, team_short_name) values (25048,'Empoli','EMP');
insert into teams (team_id, team_long_name, team_short_name) values (25791,'Frosinone','FRO');
insert into teams (team_id, team_long_name, team_short_name) values (25804,'Carpi','CAP');
insert into teams (team_id, team_long_name, team_short_name) values (26547,'Vitesse','VIT');
insert into teams (team_id, team_long_name, team_short_name) values (26548,'FC Groningen','GRO');
insert into teams (team_id, team_long_name, team_short_name) values (26549,'Roda JC Kerkrade','ROD');
insert into teams (team_id, team_long_name, team_short_name) values (26550,'FC Twente','TWE');
insert into teams (team_id, team_long_name, team_short_name) values (26551,'Willem II','WII');
insert into teams (team_id, team_long_name, team_short_name) values (26552,'Ajax','AJA');
insert into teams (team_id, team_long_name, team_short_name) values (26553,'N.E.C.','NEC');
insert into teams (team_id, team_long_name, team_short_name) values (26554,'De Graafschap','GRA');
insert into teams (team_id, team_long_name, team_short_name) values (26555,'FC Utrecht','UTR');
insert into teams (team_id, team_long_name, team_short_name) values (26556,'PSV','PSV');
insert into teams (team_id, team_long_name, team_short_name) values (26557,'Heracles Almelo','HER');
insert into teams (team_id, team_long_name, team_short_name) values (26558,'Feyenoord','FEY');
insert into teams (team_id, team_long_name, team_short_name) values (26559,'Sparta Rotterdam','SPA');
insert into teams (team_id, team_long_name, team_short_name) values (26560,'ADO Den Haag','HAA');
insert into teams (team_id, team_long_name, team_short_name) values (26561,'FC Volendam','VOL');
insert into teams (team_id, team_long_name, team_short_name) values (26562,'SC Heerenveen','HEE');
insert into teams (team_id, team_long_name, team_short_name) values (26563,'AZ','ALK');
insert into teams (team_id, team_long_name, team_short_name) values (26564,'NAC Breda','NAC');
insert into teams (team_id, team_long_name, team_short_name) values (27161,'RKC Waalwijk','RKC');
insert into teams (team_id, team_long_name, team_short_name) values (27168,'VVV-Venlo','VEN');
insert into teams (team_id, team_long_name, team_short_name) values (27780,'Excelsior','EXC');
insert into teams (team_id, team_long_name, team_short_name) values (29000,'PEC Zwolle','ZWO');
insert into teams (team_id, team_long_name, team_short_name) values (29617,'SC Cambuur','CAM');
insert into teams (team_id, team_long_name, team_short_name) values (29624,'Go Ahead Eagles','GAE');
insert into teams (team_id, team_long_name, team_short_name) values (30222,'FC Dordrecht','DOR');
insert into teams (team_id, team_long_name, team_short_name) values (31443,'Wisła Kraków','WIS');
insert into teams (team_id, team_long_name, team_short_name) values (31444,'Polonia Bytom','POB');
insert into teams (team_id, team_long_name, team_short_name) values (31445,'Polonia Bytom','GOR');
insert into teams (team_id, team_long_name, team_short_name) values (31446,'Ruch Chorzów','CHO');
insert into teams (team_id, team_long_name, team_short_name) values (31447,'Legia Warszawa','LEG');
insert into teams (team_id, team_long_name, team_short_name) values (31448,'P. Warszawa','PWA');
insert into teams (team_id, team_long_name, team_short_name) values (31449,'Śląsk Wrocław','SLA');
insert into teams (team_id, team_long_name, team_short_name) values (31450,'Lechia Gdańsk','LGD');
insert into teams (team_id, team_long_name, team_short_name) values (31451,'Widzew Łódź','LOD');
insert into teams (team_id, team_long_name, team_short_name) values (31452,'Odra Wodzisław','ODR');
insert into teams (team_id, team_long_name, team_short_name) values (31453,'Lech Poznań','POZ');
insert into teams (team_id, team_long_name, team_short_name) values (31454,'GKS Bełchatów','BEL');
insert into teams (team_id, team_long_name, team_short_name) values (31455,'Arka Gdynia','ARK');
insert into teams (team_id, team_long_name, team_short_name) values (31456,'Jagiellonia Białystok','BIA');
insert into teams (team_id, team_long_name, team_short_name) values (31457,'Piast Gliwice','PIG');
insert into teams (team_id, team_long_name, team_short_name) values (31458,'Cracovia','CKR');
insert into teams (team_id, team_long_name, team_short_name) values (31925,'Korona Kielce','KKI');
insert into teams (team_id, team_long_name, team_short_name) values (31928,'Zagłębie Lubin','ZAG');
insert into teams (team_id, team_long_name, team_short_name) values (32409,'Widzew Łódź','WID');
insert into teams (team_id, team_long_name, team_short_name) values (32891,'Podbeskidzie Bielsko-Biała','POD');
insert into teams (team_id, team_long_name, team_short_name) values (33377,'Pogoń Szczecin','POG');
insert into teams (team_id, team_long_name, team_short_name) values (33855,'Zawisza Bydgoszcz','ZAW');
insert into teams (team_id, team_long_name, team_short_name) values (34337,'Górnik Łęczna','LEC');
insert into teams (team_id, team_long_name, team_short_name) values (34816,'Termalica Bruk-Bet Nieciecza','TBN');
insert into teams (team_id, team_long_name, team_short_name) values (35283,'FC Porto','POR');
insert into teams (team_id, team_long_name, team_short_name) values (35284,'CF Os Belenenses','BEL');
insert into teams (team_id, team_long_name, team_short_name) values (35285,'Sporting CP','SCP');
insert into teams (team_id, team_long_name, team_short_name) values (35286,'Trofense','TRO');
insert into teams (team_id, team_long_name, team_short_name) values (35287,'Vitória Guimarães','GUI');
insert into teams (team_id, team_long_name, team_short_name) values (35288,'Vitória Setúbal','SET');
insert into teams (team_id, team_long_name, team_short_name) values (35289,'FC Paços de Ferreira','FER');
insert into teams (team_id, team_long_name, team_short_name) values (35290,'SC Braga','BRA');
insert into teams (team_id, team_long_name, team_short_name) values (35291,'Amadora','AMA');
insert into teams (team_id, team_long_name, team_short_name) values (35292,'Académica de Coimbra','ACA');
insert into teams (team_id, team_long_name, team_short_name) values (35293,'Rio Ave FC','RA');
insert into teams (team_id, team_long_name, team_short_name) values (35294,'SL Benfica','BEN');
insert into teams (team_id, team_long_name, team_short_name) values (35295,'Leixões SC','LEI');
insert into teams (team_id, team_long_name, team_short_name) values (35296,'CD Nacional','NAC');
insert into teams (team_id, team_long_name, team_short_name) values (35297,'Naval 1° de Maio','NAV');
insert into teams (team_id, team_long_name, team_short_name) values (35298,'CS Marítimo','MAR');
insert into teams (team_id, team_long_name, team_short_name) values (35769,'União de Leiria, SAD','ULE');
insert into teams (team_id, team_long_name, team_short_name) values (35774,'S.C. Olhanense','OLH');
insert into teams (team_id, team_long_name, team_short_name) values (36248,'Portimonense','POR');
insert into teams (team_id, team_long_name, team_short_name) values (36253,'SC Beira Mar','B-M');
insert into teams (team_id, team_long_name, team_short_name) values (36723,'Feirense','FEI');
insert into teams (team_id, team_long_name, team_short_name) values (36735,'Gil Vicente FC','GV');
insert into teams (team_id, team_long_name, team_short_name) values (37210,'Moreirense FC','MOR');
insert into teams (team_id, team_long_name, team_short_name) values (37214,'Estoril Praia','EST');
insert into teams (team_id, team_long_name, team_short_name) values (37696,'FC Arouca','ARO');
insert into teams (team_id, team_long_name, team_short_name) values (38173,'FC Penafiel','PEN');
insert into teams (team_id, team_long_name, team_short_name) values (38176,'Boavista FC','BOA');
insert into teams (team_id, team_long_name, team_short_name) values (38789,'Uniao da Madeira','MAD');
insert into teams (team_id, team_long_name, team_short_name) values (38791,'Tondela','TON');
insert into teams (team_id, team_long_name, team_short_name) values (39387,'Falkirk','FAL');
insert into teams (team_id, team_long_name, team_short_name) values (39388,'Rangers','RAN');
insert into teams (team_id, team_long_name, team_short_name) values (39389,'Heart of Midlothian','HEA');
insert into teams (team_id, team_long_name, team_short_name) values (39390,'Motherwell','MOT');
insert into teams (team_id, team_long_name, team_short_name) values (39391,'Kilmarnock','KIL');
insert into teams (team_id, team_long_name, team_short_name) values (39392,'Hibernian','HIB');
insert into teams (team_id, team_long_name, team_short_name) values (39393,'Aberdeen','ABE');
insert into teams (team_id, team_long_name, team_short_name) values (39394,'Inverness Caledonian Thistle','INV');
insert into teams (team_id, team_long_name, team_short_name) values (39395,'Celtic','CEL');
insert into teams (team_id, team_long_name, team_short_name) values (39396,'St. Mirren','MIR');
insert into teams (team_id, team_long_name, team_short_name) values (39397,'Hamilton Academical FC','HAM');
insert into teams (team_id, team_long_name, team_short_name) values (39398,'Dundee United','DUU');
insert into teams (team_id, team_long_name, team_short_name) values (39853,'St. Johnstone FC','JOH');
insert into teams (team_id, team_long_name, team_short_name) values (40757,'Dunfermline Athletic','DUN');
insert into teams (team_id, team_long_name, team_short_name) values (41216,'Dundee FC','DUF');
insert into teams (team_id, team_long_name, team_short_name) values (41217,'Ross County FC','ROS');
insert into teams (team_id, team_long_name, team_short_name) values (41673,'Partick Thistle F.C.','PAR');
insert into teams (team_id, team_long_name, team_short_name) values (43035,'Valencia CF','VAL');
insert into teams (team_id, team_long_name, team_short_name) values (43036,'RCD Mallorca','MAL');
insert into teams (team_id, team_long_name, team_short_name) values (43037,'CA Osasuna','OSA');
insert into teams (team_id, team_long_name, team_short_name) values (43038,'Villarreal CF','VIL');
insert into teams (team_id, team_long_name, team_short_name) values (43039,'RC Deportivo de La Coruña','COR');
insert into teams (team_id, team_long_name, team_short_name) values (43040,'Real Madrid CF','REA');
insert into teams (team_id, team_long_name, team_short_name) values (43041,'CD Numancia','NUM');
insert into teams (team_id, team_long_name, team_short_name) values (43042,'FC Barcelona','BAR');
insert into teams (team_id, team_long_name, team_short_name) values (43043,'Racing Santander','SAN');
insert into teams (team_id, team_long_name, team_short_name) values (43044,'Sevilla FC','SEV');
insert into teams (team_id, team_long_name, team_short_name) values (43045,'Real Sporting de Gijón','SPG');
insert into teams (team_id, team_long_name, team_short_name) values (43046,'Getafe CF','GET');
insert into teams (team_id, team_long_name, team_short_name) values (43047,'Real Betis Balompié','BET');
insert into teams (team_id, team_long_name, team_short_name) values (43048,'RC Recreativo','HUE');
insert into teams (team_id, team_long_name, team_short_name) values (43049,'RCD Espanyol','ESP');
insert into teams (team_id, team_long_name, team_short_name) values (43050,'Real Valladolid','VAL');
insert into teams (team_id, team_long_name, team_short_name) values (43051,'Athletic Club de Bilbao','BIL');
insert into teams (team_id, team_long_name, team_short_name) values (43052,'UD Almería','ALM');
insert into teams (team_id, team_long_name, team_short_name) values (43053,'Atlético Madrid','AMA');
insert into teams (team_id, team_long_name, team_short_name) values (43054,'Málaga CF','MAL');
insert into teams (team_id, team_long_name, team_short_name) values (43800,'Xerez Club Deportivo','XER');
insert into teams (team_id, team_long_name, team_short_name) values (43803,'Real Zaragoza','ZAR');
insert into teams (team_id, team_long_name, team_short_name) values (43804,'CD Tenerife','TEN');
insert into teams (team_id, team_long_name, team_short_name) values (44557,'Hércules Club de Fútbol','HER');
insert into teams (team_id, team_long_name, team_short_name) values (44565,'Levante UD','LEV');
insert into teams (team_id, team_long_name, team_short_name) values (44569,'Real Sociedad','SOC');
insert into teams (team_id, team_long_name, team_short_name) values (45330,'Granada CF','GRA');
insert into teams (team_id, team_long_name, team_short_name) values (45333,'Rayo Vallecano','RAY');
insert into teams (team_id, team_long_name, team_short_name) values (46087,'RC Celta de Vigo','CEL');
insert into teams (team_id, team_long_name, team_short_name) values (46848,'Elche CF','ELC');
insert into teams (team_id, team_long_name, team_short_name) values (47605,'SD Eibar','EIB');
insert into teams (team_id, team_long_name, team_short_name) values (47612,'Córdoba CF','COR');
insert into teams (team_id, team_long_name, team_short_name) values (48358,'UD Las Palmas','LAS');
insert into teams (team_id, team_long_name, team_short_name) values (49115,'Grasshopper Club Zürich','GRA');
insert into teams (team_id, team_long_name, team_short_name) values (49116,'AC Bellinzona','BEL');
insert into teams (team_id, team_long_name, team_short_name) values (49117,'BSC Young Boys','YB');
insert into teams (team_id, team_long_name, team_short_name) values (49118,'FC Basel','BAS');
insert into teams (team_id, team_long_name, team_short_name) values (49119,'FC Aarau','AAR');
insert into teams (team_id, team_long_name, team_short_name) values (49120,'FC Sion','SIO');
insert into teams (team_id, team_long_name, team_short_name) values (49121,'FC Luzern','LUZ');
insert into teams (team_id, team_long_name, team_short_name) values (49122,'FC Vaduz','VAD');
insert into teams (team_id, team_long_name, team_short_name) values (49123,'Neuchâtel Xamax','XAM');
insert into teams (team_id, team_long_name, team_short_name) values (49124,'FC Zürich','ZUR');
insert into teams (team_id, team_long_name, team_short_name) values (49479,'FC St. Gallen','GAL');
insert into teams (team_id, team_long_name, team_short_name) values (49837,'FC Thun','THU');
insert into teams (team_id, team_long_name, team_short_name) values (50201,'Servette FC','SER');
insert into teams (team_id, team_long_name, team_short_name) values (50204,'FC Lausanne-Sports','LAU');
insert into teams (team_id, team_long_name, team_short_name) values (51606,'Lugano','LUG');