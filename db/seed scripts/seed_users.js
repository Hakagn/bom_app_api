var mysql = require('mysql');
var faker = require('faker');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'haakon',
  password: '',
  database: 'bom_app'
});

//*INSERT INTO TABLE users

let q = 'INSERT INTO users (firstName, lastName, created_at) VALUES ?';
let data = [];

for (let i = 0; i < 500; i++) {
  data.push([
    faker.name.firstName(),
    faker.name.lastName(),
    faker.date.past()
  ]);
}

connection.query(q, [data], function (err, result) {
  console.log(err);
  console.log(result);
});

connection.end()
