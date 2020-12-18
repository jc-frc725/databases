CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

-- CREATE TABLE rooms(
--   id int NOT NULL AUTO_INCREMENT,
--   roomname varchar(255) NOT NULL,
--   PRIMARY KEY (id)
-- );

CREATE TABLE messages (
  id int NOT NULL AUTO_INCREMENT,
  text varchar(255),
  userId int NOT NULL,
  roomname varchar(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES users(id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u kyle < server/schema.sql
 *  to create the database and the tables.*/

