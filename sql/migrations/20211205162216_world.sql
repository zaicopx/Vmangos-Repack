DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20211205162216');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20211205162216');
-- Add your query below.


-- Add Missing Lordaeron Citizen Spawns
UPDATE `creature_template` SET `faction` = 7, `speed_walk`=1.11111, `speed_run`=1.14286, `base_attack_time`=2000, `auras` = '4986' WHERE `entry` = 3617;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `wander_distance`, `movement_type`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(24984, 3617, 0, 1797.82, 254.586, 59.9184, 3.4656, 20, 1, 360, 480),
(24985, 3617, 0, 1787.47, 212.02, 59.8791, 2.13044, 20, 1, 360, 480),
(24986, 3617, 0, 1823.82, 253.429, 60.1046, 1.3174, 20, 1, 360, 480),
(24987, 3617, 0, 1833.97, 227.639, 60.4755, 2.84386, 20, 1, 360, 480),
(24988, 3617, 0, 1803.08, 194.758, 70.483, 0.430935, 20, 1, 360, 480),
(24989, 3617, 0, 1828.78, 211.968, 60.4395, 3.32554, 20, 1, 360, 480),
(24990, 3617, 0, 1804.37, 287.465, 70.483, 6.19455, 20, 1, 360, 480),
(24991, 3617, 0, 1764.58, 288.231, 70.483, 5.67045, 20, 1, 360, 480),
(24992, 3617, 0, 1823.76, 264.217, 60.0994, 5.08934, 20, 1, 360, 480),
(24993, 3617, 0, 1783.84, 229.072, 59.5855, 0.0549958, 20, 1, 360, 480),
(24994, 3617, 0, 1780.76, 248.196, 59.967, 3.885, 20, 1, 360, 480),
(24995, 3617, 0, 1833.44, 250.056, 59.8788, 2.75905, 20, 1, 360, 480),
(24996, 3617, 0, 1805.76, 223.951, 60.4227, 2.87473, 20, 1, 360, 480);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
