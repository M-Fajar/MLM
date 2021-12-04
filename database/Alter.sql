Add Field 'bv_count' di table 'tree'
ALTER TABLE `tree` ADD `bv_count` INT NOT NULL DEFAULT '0' AFTER `pair_count`; 