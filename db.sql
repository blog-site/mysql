CREATE DATABASE `db`;
USE `db`;

CREATE TABLE `users`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(256) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    `avator` BLOB,
    PRIMARY KEY (`id`)
)AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `files`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `ownerId` INT(11) NOT NULL,
    `type` BOOLEAN NOT NULL,
    `path` VARCHAR(1024) NOT NULL,
    `name` VARCHAR(1024) NOT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT NOW(),
    `modifiedAt` TIMESTAMP NOT NULL,
    `size` INT(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY(`ownerId`) REFERENCES `users`(`id`)
);
