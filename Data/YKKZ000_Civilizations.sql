-- YKKZ000_Civilizations
-- Author: ykkz000
-- DateCreated: 2/5/2024 8:31:21 PM
--------------------------------------------------------------
INSERT OR REPLACE INTO CivilizationCitizenNames	
		(CivilizationType,	CitizenName,	Female,	Modern)
SELECT	'CIVILIZATION_YKKZ000_SOVIET_UNION', CitizenName, Female, Modern
FROM CivilizationCitizenNames WHERE CivilizationType = 'CIVILIZATION_RUSSIA';	
INSERT OR REPLACE INTO NamedRiverCivilizations
		(NamedRiverType,	CivilizationType)
SELECT	NamedRiverType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedRiverCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO NamedMountainCivilizations
		(NamedMountainType,	CivilizationType)
SELECT	NamedMountainType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedMountainCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,	CivilizationType)
SELECT	NamedVolcanoType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedVolcanoCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO NamedDesertCivilizations
		(NamedDesertType,	CivilizationType)
SELECT	NamedDesertType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedDesertCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO NamedLakeCivilizations
		(NamedLakeType,	CivilizationType)
SELECT	NamedLakeType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedLakeCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO NamedSeaCivilizations
		(NamedSeaType,	CivilizationType)
SELECT	NamedSeaType,	'CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM NamedSeaCivilizations WHERE CivilizationType = 'CIVILIZATION_RUSSIA';