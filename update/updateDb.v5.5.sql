ALTER TABLE `users` CHANGE `password` `password` VARCHAR(145) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;

UPDATE users SET password = CONCAT('{md5}',password);