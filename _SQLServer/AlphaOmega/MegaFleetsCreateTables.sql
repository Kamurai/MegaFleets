--drop table [MegaFleets].dbo.Users;

create table [MegaFleets].dbo.Users (
	MegaFleetsUserIndex		bigint IDENTITY(0,1) PRIMARY KEY, 
	HTKBUserIndex			bigint not null, 
	MegaFleetsAdminLevel	int not null,
	MegaFleetsOnline		bit not null
);

create table [MegaFleets].dbo.Races (
	RaceId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	StartingResources	bigint, 
	StartingWork		bigint, 
	ResourceGrowth		bigint,
	WorkGrowth			bigint
);

INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Terran', 		2200, 				350,			220,			35);  --1
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Synergy', 		2500, 				250,			250,			25);  --2
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Eve', 			2150, 				450,			215,			45);  --3
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Stone', 		2300, 				400,			230,			40);  --4
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Torn', 		2350, 				300,			235,			30);  --5
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Gat', 			2600, 				400,			260,			40);  --6
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Crawler', 		2450, 				50,				245,			50);  --7
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Ad Infinitum',	2420, 				380,			242,			38);  --8
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Rabid', 		2090, 				330,			209,			33);  --9
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Plague', 		2090, 				1225,			209,			-8);  --10
INSERT INTO [MegaFleets].dbo.Races (Name, 			StartingResources,	StartingWork,	ResourceGrowth,	WorkGrowth) 
VALUES (							'Pirates', 		1980, 				310,			198,			31);  --11

create table [MegaFleets].dbo.UnitTypes (
	UnitTypeId			bigint IDENTITY(0,1) PRIMARY KEY, 
	UnitType			varchar(50)
);

INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Body');  					--1
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Suit');  					--2
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Mech');  					--3
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Single Vehicle');  		--4
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Assault Vehicle'); 		--5
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Battery');  				--6
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Tank');  					--7
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Landship');  				--8
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Traction City');  			--9
--Orbit
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Satellite');  				--10
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Station');  				--11
--Space
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Probe');  					--12
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Ryder');  					--13
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Single Space Vehicle');  	--14
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Fighter');  				--15
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Shuttle');  				--16
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Frigate');  				--17
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Colony');  				--18
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Corvette');  				--19
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Dreadnought');  			--20
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Carrier');  				--21
INSERT INTO [MegaFleets].dbo.UnitTypes (Name) 
VALUES (								'Capital Ship');  			--22

create table [MegaFleets].dbo.Factories (
	FactoryId			bigint IDENTITY(0,1) PRIMARY KEY, 
	ResourceCost		bigint,
	WorkCost			bigint	
);

--Currency
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								0,				0);	--0 Worker
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								0,				0);	--1 Resource

--Terran
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--2 Terran Imperial Soldier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--3 Terran Imperial Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								100,			0);	--4 Terran Imperial Scanner
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2000,			0);	--5 Terran Imperial Defense Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--6 Terran Imperial Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								50,				0);	--7 Terran Imperial Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								60,				0);	--8 Terran Imperial Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--9 Terran Imperial Colony
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--10 Terran Imperial Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1400,			0);	--11 Terran Imperial Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2000,			0);	--12 Terran Imperial Warship

--Synergy
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--13 Synergy Warrior
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--14 Synergy Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								800,			0);	--15 Synergy Orbital Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--16 Synergy Fighter 1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--17 Synergy Fighter 2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--18 Synergy Fighter 3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--19 Synergy Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								800,			0);	--20 Synergy Carrier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1200,			0);	--21 Synergy Warship

--Eve
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--22 Eve Warrior v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--23 Eve Warrior v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--24 Eve Warrior v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--25 Eve Warrior v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--26 Eve Landship v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								300,			0);	--27 Eve Landship v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								350,			0);	--28 Eve Landship v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								600,			0);	--29 Eve Landship v4
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								100,			0);	--30 Eve Personal Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--31 Eve Suicide Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--32 Eve Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--33 Eve Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--34 Eve Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1500,			0);	--35 Eve Warship

--Stone
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--36 Stone Warrior
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--37 Stone Anti-Space Battery v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--38 Stone Anti-Space Battery v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1200,			0);	--39 Stone Traction City
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								300,			0);	--40 Stone Anti-Bio Bomb
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--41 Stone Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								600,			0);	--42 Stone Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--43 Stone Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1200,			0);	--44 Stone Warship

--Torn
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--45 Torn Walker
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								75,				0);	--46 Torn Rover
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								110,			0);	--47 Torn Sentinel
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--48 Torn Battery
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--49 Torn Space Bike v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--50 Torn Space Bike v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--51 Torn Stealth Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								450,			0);	--52 Torn Saucer
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--53 Torn Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2000,			0);	--54 Torn Mothership

--Gat
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--55 Gat Warbot
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								100,			0);	--56 Gat Warbuggy v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--57 Gat Warbuggy v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--58 Gat Warbuggy v3
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								300,			0);	--59 Gat Space Scanner
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								75,				0);	--60 Gat Ryder
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								200,			0);	--61 Gat Ryder Leader
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--62 Gat Mega Ryder v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								600,			0);	--63 Gat Mega Ryder v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								800,			0);	--64 Gat Mega Ryder v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--65 Gat Mega Ryder v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--66 Gat Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								300,			0);	--67 Gat Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--68 Gat Ryder Carrier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--69 Gat Ultra Ryder

--Crawler
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								50,				0);	--70 Crawler Soldier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								75,				0);	--71 Crawler Scuttler
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								150,			0);	--72 Tank Crawler
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								400,			0);	--73 Scarab Crawler
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--74 Death Worm Crawler
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								300,			0);	--75 Orbital Attack Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								90,				0);	--76 Crawler Flyer
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								190,			0);	--77 Crawler Transport
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--78 Crawler Carrier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								750,			0);	--79 Crawler Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--80 Crawler Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1500,			0);	--81 Crawler Mothership

--Ad Infinitum
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								180,			0);	--82 Ad Infinitum Android
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								240,			0);	--83 Ad Infinitum Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								120,			0);	--84 Ad Infinitum Scanner
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2400,			0);	--85 Ad Infinitum Defense Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								108,			0);	--86 Ad Infinitum Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								60,				0);	--87 Ad Infinitum Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								72,				0);	--88 Ad Infinitum Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								600,			0);	--89 Ad Infinitum Colony
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1200,			0);	--90 Ad Infinitum Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1680,			0);	--91 Ad Infinitum Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2400,			0);	--92 Ad Infinitum Warship

--Rabid
--Rabid Terran
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--93 Rabid Terran Soldier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--94 Rabid Terran Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								110,			0);	--95 Rabid Terran Scanner
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--96 Rabid Terran Defense Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								99,				0);	--97 Rabid Terran Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								55,				0);	--98 Rabid Terran Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								66,				0);	--99 Rabid Terran Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--100 Rabid Terran Colony
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--101 Rabid Terran Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1540,			0);	--102 Rabid Terran Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--103 Rabid Terran Warship

--Rabid Eve
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--104 Rabid Eve Warrior v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--105 Rabid Eve Warrior v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--106 Rabid Eve Warrior v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--107 Rabid Eve Warrior v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--108 Rabid Eve Landship v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								330,			0);	--109 Rabid Eve Landship v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								385,			0);	--110 Rabid Eve Landship v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								660,			0);	--111 Rabid Eve Landship v4
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								110,			0);	--112 Rabid Eve Personal Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--113 Rabid Eve Suicide Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--114 Rabid Eve Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--115 Rabid Eve Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1375,			0);	--116 Rabid Eve Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1650,			0);	--117 Rabid Eve Warship

--Rabid Torn
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--118 Rabid Torn Walker
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								82,				0);	--119 Rabid Torn Rover
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								121,			0);	--120 Rabid Torn Sentinel
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--121 Rabid Torn Battery
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--122 Rabid Torn Space Bike v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--123 Rabid Torn Space Bike v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--124 Rabid Torn Stealth Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								495,			0);	--125 Rabid Torn Saucer
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--126 Rabid Torn Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--127 Rabid Torn Mothership

--Plague
--Plague Terran
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--128 Plague Terran Soldier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--129 Plague Terran Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								110,			0);	--130 Plague Terran Scanner
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--131 Plague Terran Defense Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								99,				0);	--132 Plague Terran Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								55,				0);	--133 Plague Terran Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								66,				0);	--134 Plague Terran Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--135 Plague Terran Colony
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--136 Plague Terran Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1540,			0);	--137 Plague Terran Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--138 Plague Terran Warship

--Plague Eve
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--139 Plague Eve Warrior v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--140 Plague Eve Warrior v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--141 Plague Eve Warrior v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--142 Plague Eve Warrior v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--143 Plague Eve Landship v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								330,			0);	--144 Plague Eve Landship v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								385,			0);	--145 Plague Eve Landship v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								660,			0);	--146 Plague Eve Landship v4
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								110,			0);	--147 Plague Eve Personal Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--148 Plague Eve Suicide Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--149 Plague Eve Frigate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--150 Plague Eve Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1375,			0);	--151 Plague Eve Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1650,			0);	--152 Plague Eve Warship

--Plague Stone
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--153 Plague Stone Warrior
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								99,				0);	--154 Plague Stone Anti-Space Battery v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--155 Plague Stone Anti-Space Battery v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1320,			0);	--156 Plague Stone Traction City
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								330,			0);	--157 Plague Stone Anti-Bio Bomb
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--158 Plague Stone Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								660,			0);	--159 Plague Stone Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--160 Plague Stone Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1320,			0);	--161 Plague Stone Warship

--Plague Torn
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--162 Plague Torn Walker
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								82,				0);	--163 Plague Torn Rover
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								121,			0);	--164 Plague Torn Sentinel
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								165,			0);	--165 Plague Torn Battery
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								220,			0);	--166 Plague Torn Space Bike v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								550,			0);	--167 Plague Torn Space Bike v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								440,			0);	--168 Plague Torn Stealth Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								495,			0);	--169 Plague Torn Saucer
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1100,			0);	--170 Plague Torn Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2200,			0);	--171 Plague Torn Mothership

--Pirates
--Pirate Terran
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								187,			0);	--172 Pirate Terran Soldier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--173 Pirate Terran Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								125,			0);	--174 Pirate Terran Scanner
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2500,			0);	--175 Pirate Terran Defense Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--176 Pirate Terran Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								62,				0);	--177 Pirate Terran Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								75,				0);	--178 Pirate Terran FriPirate Gate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								625,			0);	--179 Pirate Terran Colony
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--180 Pirate Terran Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1750,			0);	--181 Pirate Terran Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2500,			0);	--182 Pirate Terran Warship

--Pirate Synergy
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								187,			0);	--183 Pirate Synergy Warrior
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--184 Pirate Synergy Tank
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--185 Pirate Synergy Orbital Platform
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--186 Pirate Synergy Fighter 1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--187 Pirate Synergy Fighter 2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--188 Pirate Synergy Fighter 3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--189 Pirate Synergy Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--190 Pirate Synergy Carrier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1500,			0);	--191 Pirate Synergy Warship

--Pirate Eve
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								187,			0);	--192 Pirate Eve Warrior v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--193 Pirate Eve Warrior v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--194 Pirate Eve Warrior v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--195 Pirate Eve Warrior v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--196 Pirate Eve Landship v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								375,			0);	--197 Pirate Eve Landship v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								437,			0);	--198 Pirate Eve Landship v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								750,			0);	--199 Pirate Eve Landship v4
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								125,			0);	--200 Pirate Eve Personal Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								625,			0);	--201 Pirate Eve Suicide Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--202 Pirate Eve FriPirate Gate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								625,			0);	--203 Pirate Eve Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1562,			0);	--204 Pirate Eve Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1875,			0);	--205 Pirate Eve Warship

--Pirate Stone
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--206 Pirate Stone Warrior
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								112,				0);	--207 Pirate Stone Anti-Space Battery v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--208 Pirate Stone Anti-Space Battery v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1500,			0);	--209 Pirate Stone Traction City
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								375,			0);	--210 Pirate Stone Anti-Bio Bomb
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--211 Pirate Stone Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								750,			0);	--212 Pirate Stone Corvette
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--213 Pirate Stone Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1500,			0);	--214 Pirate Stone Warship

--Pirate Torn
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--215 Pirate Torn Walker
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								93,				0);	--216 Pirate Torn Rover
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								137,			0);	--217 Pirate Torn Sentinel
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								187,			0);	--218 Pirate Torn Battery
--Orbit
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--219 Pirate Torn Space Bike v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								625,			0);	--220 Pirate Torn Space Bike v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--221 Pirate Torn Stealth Fighter
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								562,			0);	--222 Pirate Torn Saucer
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--223 Pirate Torn Dreadnought
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								2500,			0);	--224 Pirate Torn Mothership

--Pirate Gat
--Land
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--225 Pirate Gat Warbot
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								125,			0);	--226 Pirate Gat Warbuggy v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								187,			0);	--227 Pirate Gat Warbuggy v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--228 Pirate Gat Warbuggy v3
--Orbit
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								375,			0);	--229 Pirate Gat Space Scanner
--Space
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								93,				0);	--230 Pirate Gat Ryder
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								250,			0);	--231 Pirate Gat Ryder Leader
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--232 Pirate Gat Mega Ryder v1
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								750,			0);	--233 Pirate Gat Mega Ryder v2
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1000,			0);	--234 Pirate Gat Mega Ryder v3
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--235 Pirate Gat Mega Ryder v4
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								500,			0);	--236 Pirate Gat Shuttle
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								375,			0);	--237 Pirate Gat FriPirate Gate
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1250,			0);	--238 Pirate Gat Ryder Carrier
INSERT INTO [MegaFleets].dbo.Factories (ResourceCost, 	WorkCost) 
VALUES (								1562,			0);	--239 Pirate Gat Ultra Ryder

create table [MegaFleets].dbo.Units (
	UnitId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	ResourceCost		bigint, 
	WorkCost			bigint, 
	FactoryId			bigint,
	FlightMode			bigint,
	UnitTypeId			bigint,
	MaxOrder			bigint,
	Offense				bigint,
	Defense				bigint,
	PopulationDamage	bigint,
	RateOfFire			bigint,
	Personnel			bigint,
	Cargo				bigint,
	Speed				bigint,
	Scan				bigint	
);

--Currency
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Worker', 								0, 				0, 			0, 			0, 			0, 			0, 			0, 			0, 			0, 					0, 			-1, 		0, 		0, 		0);  --1
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Resource', 							0, 				0, 			1, 			0, 			0, 			0, 			0, 			0, 			0, 					0, 			0, 			-1, 	0, 		0);  --2

--Terran
--Land
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Soldier', 				10, 			10, 		3, 			1, 			1, 			50, 		5, 			2, 			0, 					1, 			-1, 		0, 		0, 		0);  --3
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Tank', 				25, 			65, 		4, 			1, 			7, 			50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --4
--Orbit
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Scanner', 				100, 			65, 		5, 			2, 			10, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --5
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Defense Platform', 	415, 			65, 		6, 			2, 			11, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --6
--Space
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Fighter', 				25, 			65, 		6, 			2, 			15, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --7
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Shuttle', 				25, 			65, 		6, 			2, 			16, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --8
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Frigate', 				25, 			65, 		6, 			2, 			17, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --9
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Colony', 				25, 			65, 		6, 			2, 			18, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --10
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Corvette', 			25, 			65, 		6, 			2, 			19, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --11
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Dreadnought', 			25, 			65, 		6, 			2, 			20, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --12
INSERT INTO [MegaFleets].dbo.Units (Name,									ResourceCost,	WorkCost,	FactoryId,	FlightMode,	UnitTypeId, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Personnel, 	Cargo, 	Speed, 	Scan) 
VALUES (							'Terran Imperial Warship', 				25, 			65, 		6, 			2, 			22, 		50, 		50, 		48, 		3, 					3, 			0, 			-30, 	0, 		0);  --13




--Synergy
--Land
--Orbit
--Space

--Eve
--Land
--Orbit
--Space

--Stone
--Land
--Orbit
--Space

--Torn
--Land
--Orbit
--Space

--Gat
--Land
--Orbit
--Space

--Crawler
--Land
--Orbit
--Space

--Ad Infinitum
--Land
--Orbit
--Space

--Rabid
--Rabid Terran
--Land
--Orbit
--Space

--Rabid Eve
--Land
--Orbit
--Space

--Rabid Torn
--Land
--Orbit
--Space

--Plague
--Plague Terran
--Land
--Orbit
--Space

--Plague Eve
--Land
--Orbit
--Space

--Plague Stone
--Land
--Orbit
--Space

--Plague Torn
--Land
--Orbit
--Space

--Pirates
--Pirate Terran
--Land
--Orbit
--Space

--Pirate Synergy
--Land
--Orbit
--Space

--Pirate Eve
--Land
--Orbit
--Space

--Pirate Stone
--Land
--Orbit
--Space

--Pirate Torn
--Land
--Orbit
--Space

--Pirate Gat
--Land
--Orbit
--Space












create table [MegaFleets].dbo.Upgrades (
	UpgradeId		bigint IDENTITY(0,1) PRIMARY KEY, 
	FromUnitId		bigint,
	ToUnitId		bigint
);







create table [MegaFleets].dbo.StarterFleets (
	StarterFleetId		bigint IDENTITY(0,1) PRIMARY KEY, 
	RaceId				bigint
);

INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 1); --Terran
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 2); --Synergy
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 3); --Eve
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 4); --Stone
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 5); --Torn
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 6); --Gat
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 7); --Ad Infinitum
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 8); --Pirates
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									 9); --Rabid
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									10); --Crawler
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId) 
VALUES (									11); --Plague

create table [MegaFleets].dbo.StarterSubFleets (
	SubFleetId			bigint IDENTITY(0,1) PRIMARY KEY, 
	StarterFleetId		bigint, 
	UnitId				bigint, 
	Quantity			bigint
);

--Terran
--Land
--Orbit
--SpaceINSERT INTO [MegaFleets].dbo.StarterSubFleets 	(StarterFleetId,	UnitId,	Quantity) 
VALUES (										1, 					x, 		y);

--Synergy
--Land
--Orbit
--Space

--Eve
--Land
--Orbit
--Space

--Stone
--Land
--Orbit
--Space

--Torn
--Land
--Orbit
--Space

--Gat
--Land
--Orbit
--Space

--Crawler
--Land
--Orbit
--Space

--Ad Infinitum
--Land
--Orbit
--Space

--Rabid
--Land
--Orbit
--Space

--Plague
--Land
--Orbit
--Space

--Pirates
--Land
--Orbit
--Space






--Arachnons
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1 		1, 						600);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		29, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		4, 						35);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		9, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		24, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		45, 					7);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									1, 		TK Helmet, 				0);
--Cosmic Needle Men
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									2, 		1, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									2, 		2, 						600);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									2, 		35, 					16);
--Ectonians
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		31, 					6);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		24, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		G-21 Arc Cannon, 		0);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		37, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		47,						15);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		Type 9 HyperBooster, 	1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		52, 					15);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									3, 		54, 					15);
--Entradishar
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		1, 						550);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		2, 						600);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		3, 						7);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		29, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		31, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		33,						1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		46, 					5);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		17, 					20);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									4, 		47, 					40);
--Guir
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		TK Assault Pside Car, 	1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		49, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		51, 					3);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		27, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		18, 					15);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									5, 		52, 					15);
--Mah-Tog
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									6, 		1, 						1000);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									6, 		2, 						3000);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									6, 		24, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									6, 		HEW Upgrade Kit, 		5);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									6, 		14, 					10);
--Nozama
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									7, 		1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									7, 		2, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									7, 		31, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									7, 		43, 					95);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									7, 		44, 					1);
--Orn
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		6, 						15);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		31, 					3);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		26, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		48, 					5);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									8, 		19, 					15);
--Swamp Beasts
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		2, 						600);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		3, 						16);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		29, 					8);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		4, 						16);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		HEW Upgrade Kit, 		0);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		15, 					12);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		15, 					0);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		46, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									9, 		17, 					36);
--Sxullborgs
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	2, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	3, 						4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	5, 						4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	29, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	4, 						4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	6, 						4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	9, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	14, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	17, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	47, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	TK Helmet, 				0);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	18, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	52, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	53, 					4);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									10, 	54, 					4);
--VaT\'ak
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	1, 						550);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	4, 						20);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	32, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	24, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	41, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	Type12 Warhead Pod, 	1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	54, 					15);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									11, 	55, 					15);
--Xiron
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	1, 						500);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	2, 						400);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	6, 						6);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	24, 					1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	14, 					3);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	17, 					9);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	19, 					20);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	53, 					9);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	Xiron Force Coil, 		0);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									12, 	56, 					2);
--Zenrin
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	1, 						700);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	2, 						700);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	31, 					2);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	DinChoFu Stealth Arts, 	1);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	46, 					3);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	55, 					5);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	20, 					180);
INSERT INTO [MegaFleets].dbo.StarterFleets (RaceId, UnitId, 				Quantity) 
VALUES (									13, 	ZinCho Mystic Breath, 	20);








create table [MegaFleets].dbo.Games (
	GameId				bigint IDENTITY(0,1) PRIMARY KEY, 
	PlayerId			bigint
);

--No Games

create table [MegaFleets].dbo.Planets (
	PlanetId			bigint IDENTITY(0,1) PRIMARY KEY, 
	GameId				bigint, 
	Name				varchar(50),
	PlayerId			bigint, 
	StartingWork		bigint,
	StartingResources	bigint,	
	WorkGrowth			bigint,
	ResourceGrowth		bigint	
);

--No Planets


create table [MegaFleets].dbo.PlanetFactories (
	FactoryId			bigint IDENTITY(0,1) PRIMARY KEY, 
	PlayerId			bigint, 
	GameId				bigint, 
	PlanetId			bigint	
);

--No Factories

create table [MegaFleets].dbo.Fleets (
	FleetId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	PlayerId			bigint, 
	GameId				bigint, 
	PlanetId			bigint,
	FlightStatus		bigint
);

--No Fleets

create table [MegaFleets].dbo.SubFleets (
	SubFleetId			bigint IDENTITY(0,1) PRIMARY KEY, 
	FleetId				bigint, 
	UnitId				bigint, 
	Quantity			bigint
);

--No SubFleets