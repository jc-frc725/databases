CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  /*id int NOT NULL,
    username varchar(255) NOT NULL,
    text varchar(255),
    roomname varchar(255) NOT NULL,
    timestamp Timestamp? NOT NULL
    PRIMARY KEY (id),
    FOREIGN KEY (username) REFERENCES users(username),
    FOREIGN KEY (roomname) REFERENCES rooms(roomname)
  */
);

CREATE TABLE rooms_messages(
/*  id int NOT NULL,
    room varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (room) REFERENCES rooms(room_name)
)

/* Create other tables and define schemas for them here! */
CREATE TABLE rooms (
/* id int NOT NULL,
   room_name varchar(255) REQUIRED,
   PRIMARY KEY (id)
*/
)

CREATE TABLE users (
/*  id int NOT NULL,
    user varchar(255) NOT NULL*/
)



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

