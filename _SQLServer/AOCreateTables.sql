--drop table [MegaFleets].dbo.Users;

create table [MegaFleets].dbo.Users (
	UserIndex	bigint IDENTITY(0,1) PRIMARY KEY, 
	AdminLevel	int not null,
	Online		bit not null, 
	Username	varchar(max) not null, 
	Passcode	varchar(max) not null, 
	Email		varchar(max) not null
);

INSERT INTO [MegaFleets].dbo.Users (AdminLevel, Online, Username, 	Passcode, 	Email) 
VALUES (							3, 			0, 		'Kamurai', 	'green20', 	'KamuraiBlue25@gmail.com');

create table [MegaFleets].dbo.Units (
	UnitId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	FlightMode			bigint, 
	License				bigint,
	MaxOrder			bigint,
	Offense				bigint,
	Defense				bigint,
	PopulationDamage	bigint,
	RateOfFire			bigint,
	Carry				bigint,
	Speed				bigint,
	BaseCost			bigint,
	Complexity			bigint,
	Scan				bigint	
);

--Currency
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Population', 					0, 				0, 			50, 		0, 			0, 			0, 					0, 			-1, 	0, 		-1, 		-1, 		0);  --1
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Ultranium', 					0, 				0, 			50, 		0, 			0, 			0, 					0, 			-1, 	0, 		-1, 		-1, 		0);  --2
--Land Units
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'A-7 Mauler', 					1, 				200, 		50, 		50, 		48, 		3, 					3, 			-30, 	0, 		25, 		65, 		0);  --3
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'All-Terrain Rover', 			1, 				75, 		50, 		20, 		20, 		5, 					1, 			-5, 		0, 	5, 			18, 		0);  --4
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'ATO-2 Scout', 					1, 				150, 		50, 		50, 		40, 		0, 					1, 			-15, 		0, 	15, 		30, 		0);  --5
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Boron Recon Buggy', 			1, 				200, 		50, 		30, 		80, 		2, 					1, 			-10, 		0, 	22, 		60, 		0);  --6
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Boron Recon Buggy v2', 		1, 				0, 			50, 		60, 		92, 		1, 					2, 			-15, 		0, 	0, 			0, 			0);  --7
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Boron Recon Buggy v3', 		1, 				0, 			50, 		60, 		92, 		1, 					2, 			-15, 		0, 	0, 			0, 			0);  --8
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'C.R. Org 2', 					1, 				600, 		10, 		60, 		93, 		7, 					15, 		-40, 		0, 	200, 		1000, 		0);  --9
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'C.R. Org 2 v2', 				1, 				0, 			10, 		80, 		95, 		3, 					15, 		-60, 		0, 	0, 			0, 			0);  --10
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'C.R. Org 2 v3', 				1, 				0, 			50, 		85, 		97, 		50, 				20, 		-60, 		0, 	0, 			0, 			0);  --11
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'C.R. Org 2 v4', 				1, 				0, 			50, 		99, 		98, 		55, 				25, 		-80, 		0, 	0, 			0, 			0);  --12
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'HEW-10 Annihilator v2', 		1, 				0, 			50, 		60, 		75, 		8, 					5, 			-75, 		0, 	0, 			0, 			0);  --13
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'HEW-9 Eliminator', 			1, 				90, 		50, 		50, 		37, 		3, 					1, 			-50, 		0, 	10, 		20, 		0);  --14
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'R-Class Wrecker', 				1, 				1250, 		5, 			40, 		99, 		120, 				30, 		-300, 		0, 	400, 		2000, 		0);  --15
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Scuttler', 					1, 				0, 			5, 			5, 			5, 			5, 					5, 			-1, 		0, 	0, 			25, 		0);  --16
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Sentinel of Garsasso', 		1, 				110, 		50, 		15, 		30, 		0, 					1, 			-10, 		0, 	12, 		8, 			0);  --17
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'TK Tank', 						1, 				200, 		10, 		65, 		79, 		0, 					1, 			-20, 		0, 	30, 		85, 		0);  --18
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Warmek', 						1, 				200, 		50, 		12, 		10, 		0, 					1, 			-2, 		0, 	12, 		12, 		0);  --19
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Zenrin Fighter', 				1, 				150, 		50, 		5, 			2, 			0, 					1, 			-1, 		0, 	10, 		10, 		0);  --20
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Zenrin Fighter v2', 			1, 				0, 			50, 		50, 		20, 		0, 					2, 			-1, 		0, 	0, 			0, 			0);  --21
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Zenrin Fighter v3', 			1, 				0, 			50, 		70, 		80, 		0, 					10, 		-1, 		0, 	0, 			0, 			0);  --22
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Zenrin Fighter v4', 			1, 				0, 			50, 		100, 		98, 		0, 					32, 		-1, 		0, 	0, 			0, 			0);  --23
--Orbit
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'EDM Sensor-200', 				2, 				100, 		50, 		0, 			0, 			0, 					0, 			-200, 		0, 	100, 		150, 		200);  --24
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'N-Class Battle Station v3',	2, 				0, 			50, 		90, 		98, 		60, 				30, 		-200, 		0, 	0, 			0, 			0);  --25
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Orn Moon Gun', 				2, 				1400, 		1, 			100, 		99, 		17, 				23, 		-1000, 		0, 	400, 		3000, 		120);  --26
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'TK Scan420', 					2, 				300, 		10, 		0, 			0, 			0, 					0, 			-250, 		0, 	200, 		300, 		420);  --27
--Space
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'A-90 Blobomb', 				3, 				300, 		10, 		1, 			50, 		500, 				1, 			0, 		200, 	200, 		200, 		0);  --28
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'ATO-3 Crawler', 				3, 				200, 		10, 		25, 		90, 		1, 					2, 			200, 	70, 	50, 		150, 		0);  --29
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'C.R. Org', 					3, 				1250, 		50, 		80, 		97, 		0, 					20, 		0, 		120, 	540, 		1500, 		0);  --30
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Cargo Booster', 				3, 				50, 		50, 		0, 			0, 			0, 					0, 			100, 	50, 	25, 		14, 		0);  --31
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'E-Class Suicide Fighter', 		3, 				500, 		10, 		90, 		1, 			1, 					20, 		0, 		120, 	140, 		600, 		0);  --32
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Giganto Planet Attacker', 		3, 				1000, 		5, 			90, 		96, 		70, 				18, 		400, 	70, 	210, 		1000, 		0);  --33
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'HC-4 Space Runway', 			3, 				800, 		5, 			40, 		98, 		1, 					25, 		500, 	50, 	200, 		1200, 		100);  --34
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Hurax Stealth Fighter', 		3, 				400, 		10, 		60, 		88, 		1, 					2, 			0, 		140, 	75, 		250, 		0);  --35
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Infinita', 					3, 				1250, 		1, 			65, 		99, 		3, 					40, 		20, 	70, 	475, 		4000, 		0);  --36
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'MegaBot', 						3, 				800, 		5, 			75, 		95, 		0, 					5, 			0, 		100, 	250, 		500, 		0);  --37
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'MegaBot v2', 					3, 				0, 			50, 		75, 		96, 		0, 					5, 			0, 		180, 	0, 			0, 			0);  --38
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'MegaBot v3', 					3, 				0, 			50, 		80, 		97, 		1, 					18, 		0, 		140, 	0, 			0, 			0);  --39
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'MegaBot v4', 					3, 				0, 			50, 		90, 		98, 		2, 					50, 		0, 		140, 	0, 			0, 			0);  --40
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'N-Class Battleship', 			3, 				1000, 		5, 			70, 		94, 		5, 					15, 		75, 	80, 	225, 		800, 		0);  --41
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'N-Class Battleship v2', 		3, 				0, 			50, 		90, 		95, 		20, 				20, 		50, 	80, 	0, 			0, 			0);  --42
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Nozama Fighter', 				3, 				75, 		50, 		17, 		17, 		1, 					2, 			0, 		60, 	10, 		20, 		0);  --43
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Nozama Queen', 				3, 				200, 		5, 			40, 		90, 		0, 					5, 			0, 		120, 	500, 		500, 		0);  --44
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'OSAA2 Incinerator', 			3, 				500, 		10, 		15, 		96, 		80, 				10, 		0, 		70, 	35, 		350, 		0);  --45
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Scan-O-Matic', 				3, 				100, 		50, 		0, 			0, 			0, 					0, 			1, 		300, 	50, 		100, 		80);  --46
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Super Space Fighter', 			3, 				90, 		50, 		30, 		22, 		1, 					1, 			0, 		100, 	24, 		25, 		0);  --47
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Thirus All-Purpose Saucer', 	3, 				450, 		10, 		50, 		80, 		4, 					4, 			150, 	100, 	150, 		300, 		0);  --48
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'TK Bike', 						3, 				500, 		10, 		70, 		80, 		1, 					4, 			0, 		200, 	125, 		400, 		0);  --49
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'TK Bike v2', 					3, 				0, 			50, 		70, 		80, 		1, 					8, 			0, 		220, 	0, 			0, 			0);  --50
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'TK PsiHauler', 				3, 				400, 		10, 		10, 		70, 		1, 					5, 			350, 	120, 	175, 		400, 		0);  --51
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'X-5 Raider', 					3, 				90, 		50, 		25, 		20, 		1, 					1, 			0, 		120, 	26, 		25, 		0);  --52
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'X-6 Instigator', 				3, 				90, 		50, 		35, 		25, 		1, 					1, 			0, 		90, 	23, 		25, 		0);  --53
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'X-7 Corvette', 				3, 				90, 		50, 		40, 		45, 		2, 					1, 			0, 		80, 	23, 		25, 		0);  --54
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'X-8 Assault Shuttle', 			3, 				90, 		50, 		20, 		60, 		0, 					1, 			30, 	80, 	20, 		40, 		0);  --55
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Xiron Heavy Cruiser v2', 		3, 				0, 			5, 			70, 		97, 		0, 					20, 		120, 	100, 	0, 			0, 			0);  --56
INSERT INTO [MegaFleets].dbo.Units (Name, 							FlightMode, 	License,	MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	BaseCost, 	Complexity, Scan) 
VALUES (							'Xiron Medium Cruiser', 		3, 				600, 		5, 			50, 		95, 		0, 					12, 		120, 	90, 	200, 		450, 		0);  --57


create table [MegaFleets].dbo.Planets (
	FleetId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	PlayerId			bigint, 
	PopulationGrowth	bigint,
	ResourceGrowth		bigint	
);

--No Planets

create table [MegaFleets].dbo.Games (
	GameId				bigint IDENTITY(0,1) PRIMARY KEY, 
	PlayerId			bigint
);

--No Games

create table [MegaFleets].dbo.Licenses (
	LicenseId			bigint IDENTITY(0,1) PRIMARY KEY, 
	PlayerId			bigint, 
	GameId				bigint, 
	PlanetId			bigint, 
	UnitId				bigint	
);

--No Licenses

create table [MegaFleets].dbo.Fleets (
	FleetId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	PlayerId			bigint, 
	GameId				bigint, 
	PlanetId			bigint, 
	UnitId				bigint, 
	Quanity				bigint, 
	FlightStatus		bigint
);

--No Fleets

create table [MegaFleets].dbo.Races (
	RaceId				bigint IDENTITY(0,1) PRIMARY KEY, 
	Name				varchar(50),
	StarterFleetId		bigint, 
	PopulationGrowth	bigint, 
	ResourceGrowth		bigint
);

INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Arachnons', 			50, 				240);  --1
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Cosmic Needle Men', 	35, 				205);  --2
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Ectonians', 			40, 				200);  --3
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Entradishar', 			40, 				200);  --4
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Guir', 				40, 				250);  --5
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth)
VALUES (							'Mah-Tog', 				20, 				200);  --6
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Nozama', 				35, 				215);  --7
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Orn', 					40, 				200);  --8
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Swamp Beasts', 		50, 				200);  --9
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Sxullborgs', 			30, 				225);  --10
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'VaT\'ak Warriors', 	35, 				200);  --11
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Xirons', 				50, 				190);  --12
INSERT INTO [MegaFleets].dbo.Races (Name, 					PopulationGrowth, 	ResourceGrowth) 
VALUES (							'Zenrin', 				30, 				230);  --13

create table [MegaFleets].dbo.StarterFleets (
	StarterFleetId		bigint IDENTITY(0,1) PRIMARY KEY, 
	RaceId				bigint, 
	UnitId				bigint, 
	Quantity			bigint
);
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

create table [MegaFleets].dbo.Discounts (
	Bonus				bigint IDENTITY(0,1) PRIMARY KEY, 
	RaceId				bigint, 
	UnitId				bigint, 
	FixedDiscountPrice	bigint, 
	ResourceDiscount	bigint not null,
	FixedLicensePrice	bigint,
	LicenseDiscount		bigint not null,
	FixedComplexity		bigint,
	ComplexityDiscount	bigint not null
);

INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			47, 						-1, 				NULL, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			37, 						NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			38, 						NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			39, 						NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			40, 						NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			Type 9 Hyperbooster, 		NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			G-21 Arc Cannon, 			NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								3, 			Hyper-Annihilator, 			NULL, 				15, 				NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								4, 			33, 						NULL, 				0, 					750, 				0, 					750, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								5, 			51, 						175, 				0, 					NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								7, 			44, 						NULL, 				0, 					NULL, 				0, 					NULL, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								8, 			26, 						NULL, 				0, 					NULL, 				0, 					NULL, 				50);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								11, 		41, 						NULL, 				0, 					NULL, 				0, 					550, 				0);
INSERT INTO [MegaFleets].dbo.Discounts (RaceId, 	UnitId, 					FixedDiscountPrice, ResourceDiscount, 	FixedLicensePrice, 	LicenseDiscount, 	FixedComplexity, 	ComplexityDiscount) 
VALUES (								12, 		Xiron Force Coil, 			NULL, 				0, 					NULL, 				0, 					NULL, 				0);

create table [MegaFleets].dbo.Bonuses (
	Bonus				bigint IDENTITY(0,1) PRIMARY KEY, 
	RaceId				bigint, 
	UnitId				bigint, 
	PopulationGrowth	bigint,
	ResourceGrowth		bigint, 
	MaxOrder			bigint, 
	Offense				bigint, 
	Defense				bigint, 
	PopulationDamage	bigint, 
	RateOfFire			bigint, 
	Carry				bigint, 
	Speed				bigint, 
	Scan				bigint
);

INSERT INTO [MegaFleets].dbo.Bonuses (	RaceId, 		UnitId, 					PopulationGrowth, 	ResourceGrowth, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	Scan) 
VALUES (								6, 				NULL, 						10, 				10, 			NULL, 		NULL, 		NULL, 		NULL, 				NULL, 		NULL, 	NULL, 	NULL);
INSERT INTO [MegaFleets].dbo.Bonuses (	RaceId, 		UnitId, 					PopulationGrowth, 	ResourceGrowth, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	Scan) 
VALUES (								8, 				48, 						NULL, 				NULL, 			NULL, 		NULL, 		10, 		NULL, 				NULL, 		NULL, 	NULL, 	NULL);
INSERT INTO [MegaFleets].dbo.Bonuses (	RaceId, 		UnitId, 					PopulationGrowth, 	ResourceGrowth, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	Scan) 
VALUES (								9, 				NULL, 						20, 				NULL, 			NULL, 		NULL, 		NULL, 		NULL, 				NULL, 		NULL, 	NULL, 	NULL);
INSERT INTO [MegaFleets].dbo.Bonuses (	RaceId, 		UnitId, 					PopulationGrowth, 	ResourceGrowth, MaxOrder, 	Offense, 	Defense, 	PopulationDamage, 	RateOfFire, Carry, 	Speed, 	Scan) 
VALUES (								13, 			Art of Silence, 			NULL, 				NULL, 			500, 		NULL, 		NULL, 		NULL, 				NULL, 		NULL, 	NULL, 	NULL);





