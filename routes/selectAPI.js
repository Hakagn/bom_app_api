var express = require('express');
var router = express.Router();
let mysql = require('mysql');
let bodyParser = require('body-parser');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'haakon',
  password: '',
  database: 'bom_app'
});

// router.get('/', (req, res) => res.send('Hello World!'))

router.get('/', function (req, res, next) {
  //SELECT EVERYTHING FROM part TABLE
  let q = 'SELECT * FROM part';
  connection.query(q, function (error, results) {
    if (error) throw error;
    //RESPOND WITH the partName OF FIRST ITEM IN THE ARRAY
    res.send(results[0].partName);
  })
});

/* router.get('/', function (req, res, next) {
  //FIND COUNT OF PARTS IN DATABASE
  let q = 'SELECT COUNT(*) AS count FROM part';
  connection.query(q, function (error, results) {
    if (error) throw error;
    let count = results[0].count;
    //RESPOND WITH THAT COUNT
    res.send("There is " + count + " parts in the database");
  })
}); */

module.exports = router;
