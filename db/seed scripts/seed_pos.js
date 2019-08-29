var mysql = require('mysql');
var faker = require('faker');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'haakon',
  password: '',
  database: 'bom_app'
});

//*INSERT INTO TABLE posList

let q = 'INSERT INTO pos (pos_no, mainItem_id, subItem_id) VALUES ?';
let data = [];

for (let i = 0; i < 100; i++) {
  data.push([
    faker.random.number({ 'min': 1, 'max': 10 }),
    faker.random.number({ 'min': 1, 'max': 100 }),
    faker.random.number({ 'min': 1, 'max': 100 })
  ]);
}

connection.query(q, [data], function (err, result) {
  console.log(err);
  console.log(result);
});

connection.end() 
