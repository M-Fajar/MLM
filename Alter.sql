--Add Field 'bv_count' di table 'tree'
ALTER TABLE `tree` ADD `bv_count` INT NOT NULL DEFAULT '0' AFTER `pair_count`; 
--Add Field 'free_place' di table 'tree'
ALTER TABLE `tree` ADD `free_place` INT NOT NULL DEFAULT '0' AFTER `bv_count`; 
--Add Field 'generation_level' di table 'tree'
ALTER TABLE `tree` ADD `generation_level` INT NOT NULL DEFAULT '0' AFTER `free_place`; 