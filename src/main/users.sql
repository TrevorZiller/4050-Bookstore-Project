CREATE DATABASE `userInfo` DEFAULT CHARACTER SET utf8mb4;

USE `userInfo`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(45) NOT NULL,
    `password` varchar(45) NOT NULL,
    `firstname` varchar(45) NOT NULL,
    `lastname` varchar(45) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;