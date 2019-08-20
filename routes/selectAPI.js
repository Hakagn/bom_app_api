var express = require('express');
var router = express.Router();
let mysql = require('mysql');
let bodyParser = require('body-parser');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'haakon',
  password: '',
  database: 'join_us'
});

router.get('/', function (req, res, next) {
  //FIND COUNT OF USERS IN DATABASE
  let q = 'SELECT COUNT(*) AS count FROM users';
  connection.query(q, function (error, results) {
    if (error) throw error;
    let count = results[0].count;
    //RESPOND WITH THAT COUNT
    res.send("There is " + count + " users in the database");
  })
});

module.exports = router;
