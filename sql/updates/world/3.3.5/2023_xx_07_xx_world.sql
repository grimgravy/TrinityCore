UPDATE `creature_template` SET `ScriptName`='npc_marmot' WHERE `entry`=22189;

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_q10720_the_smallest_creature';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_coax_marmot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(38629, 'spell_q10720_the_smallest_creature'),
(38544, 'spell_coax_marmot');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13) AND (`SourceGroup` = 1) AND (`SourceEntry` = 38629) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 31) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 3) AND (`ConditionValue2` = 22356) AND (`ConditionValue3` = 0);
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13) AND (`SourceGroup` = 1) AND (`SourceEntry` = 38629) AND (`SourceId` = 0) AND (`ElseGroup` = 1) AND (`ConditionTypeOrReference` = 31) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 3) AND (`ConditionValue2` = 22367) AND (`ConditionValue3` = 0);
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13) AND (`SourceGroup` = 1) AND (`SourceEntry` = 38629) AND (`SourceId` = 0) AND (`ElseGroup` = 2) AND (`ConditionTypeOrReference` = 31) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 3) AND (`ConditionValue2` = 22368) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 38629, 0, 0, 31, 0, 3, 22356, 0, 0, 0, 0, '', 'Poison Keg Targets [DND]Green Spot Grog Keg Credit'),
(13, 1, 38629, 0, 1, 31, 0, 3, 22367, 0, 0, 0, 0, '', 'Poison Keg Targets [DND]Ripe Moonshine Keg Credit'),
(13, 1, 38629, 0, 2, 31, 0, 3, 22368, 0, 0, 0, 0, '', 'Poison Keg Targets [DND]Fermented Seed Beer Keg Credit');
