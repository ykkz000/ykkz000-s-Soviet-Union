-- YKKZ000_Config
-- Author: ykkz000
-- DateCreated: 2/5/2024 8:32:05 PM
--------------------------------------------------------------
INSERT OR REPLACE INTO Players	
		(CivilizationType,				            Domain,	Portrait,							                PortraitBackground,					LeaderType,				                LeaderName,							            LeaderIcon,						            LeaderAbilityName,									        LeaderAbilityDescription,									            LeaderAbilityIcon,			            CivilizationName,					            CivilizationIcon,				            CivilizationAbilityName,									    CivilizationAbilityDescription,										        CivilizationAbilityIcon)
SELECT	'CIVILIZATION_YKKZ000_SOVIET_UNION',		Domain,	'LEADER_YKKZ000_VLADIMIR_LENIN_NEUTRAL.dds',		'LEADER_JOHN_CURTIN_BACKGROUND',	'LEADER_YKKZ000_VLADIMIR_LENIN',		'LOC_LEADER_YKKZ000_VLADIMIR_LENIN_NAME',		'ICON_LEADER_YKKZ000_VLADIMIR_LENIN',		'LOC_TRAIT_LEADER_YKKZ000_ALL_POWER_TO_THE_SOVIETS_NAME',	'LOC_TRAIT_LEADER_YKKZ000_ALL_POWER_TO_THE_SOVIETS_DESC',	'ICON_LEADER_YKKZ000_VLADIMIR_LENIN',	'LOC_CIVILIZATION_YKKZ000_SOVIET_UNION_NAME',	'ICON_CIVILIZATION_YKKZ000_SOVIET_UNION',	'LOC_TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_NAME',	'LOC_TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_DESC',		'ICON_CIVILIZATION_YKKZ000_SOVIET_UNION'
FROM Players WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,							Domain,	LeaderType,								Type,								Icon,									Name,									  		Description,										SortIndex)
SELECT	'CIVILIZATION_YKKZ000_SOVIET_UNION',		Domain,	'LEADER_YKKZ000_VLADIMIR_LENIN',		'DISTRICT_YKKZ000_NAUKOGRAD',		'ICON_DISTRICT_YKKZ000_NAUKOGRAD',		'LOC_DISTRICT_YKKZ000_NAUKOGRAD_NAME',  		'LOC_DISTRICT_YKKZ000_NAUKOGRAD_DESCRIPTION', 		20
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_RUSSIA';
INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,							Domain,	LeaderType,								Type,								Icon,									Name,									  		Description,										SortIndex)
SELECT	'CIVILIZATION_YKKZ000_SOVIET_UNION',		Domain,	'LEADER_YKKZ000_VLADIMIR_LENIN',		'UNIT_YKKZ000_RED_ARMY',			'ICON_UNIT_YKKZ000_RED_ARMY',			'LOC_UNIT_YKKZ000_RED_ARMY_NAME',  				'LOC_UNIT_YKKZ000_RED_ARMY_DESCRIPTION', 			10
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_RUSSIA';