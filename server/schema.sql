CREATE DATABASE chat;

USE chat;

CREATE TABLE users(
  id int NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rooms(
  id int NOT NULL AUTO_INCREMENT,
  roomname varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE messages(
  id int NOT NULL AUTO_INCREMENT,
  textbody varchar(255),
  createdAt timestamp NOT NULL,
  username varchar(255) NOT NULL,
  roomname varchar(255) NOT NULL,
  PRIMARY KEY (id)
  -- FOREIGN KEY (userId) REFERENCES users(id),
  -- FOREIGN KEY (roomId) REFERENCES rooms(id)
);

CREATE TABLE users_rooms(
  roomId int NOT NULL,
  userId int NOT NULL,
  FOREIGN KEY (roomId) REFERENCES rooms(id),
  FOREIGN KEY (userId) REFERENCES users(id)
);

CREATE TABLE users_messages(
  userId int NOT NULL,
  messageId int NOT NULL,
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (messageId) REFERENCES messages(id)
);

CREATE TABLE rooms_messages(
  roomId int NOT NULL,
  messageId int NOT NULL,
  FOREIGN KEY (roomId) REFERENCES rooms(id),
  FOREIGN KEY (messageId) REFERENCES messages(id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u kyle < server/schema.sql
 *  to create the database and the tables.*/

