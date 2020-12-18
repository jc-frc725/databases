var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

// mysql mod method for making db connections = mysql.createConnection
// needs options
var connector = mysql.createConnection({
  user: 'root',
  password: '',
  database: 'chat'
});


module.exports = connector;
