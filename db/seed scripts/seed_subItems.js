var mysql = require('mysql');
var faker = require('faker');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'haakon',
  password: '',
  database: 'bom_app'
});

//*INSERT INTO TABLE subItems

let q = 'INSERT INTO subItems (itemNumber, itemName) VALUES ?';
let data = [];

for (let i = 0; i < 500; i++) {
  data.push([
    faker.random.number(),
    faker.commerce.productName()
  ]);
}

connection.query(q, [data], function (err, result) {
  console.log(err);
  console.log(result);
});

connection.end()
