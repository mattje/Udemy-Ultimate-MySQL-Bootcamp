const { faker } = require('@faker-js/faker');
const mysql = require('mysql');

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'join_us'
});

var data = [];
for (var i = 0; i < 500; i++){
	data.push([
		faker.internet.email(),
		faker.date.past()
	]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function(err, result, fields){
	console.log(err);
	console.log(result);
});

connection.end();










// const { faker } = require('@faker-js/faker');

// const mysql = require('mysql');

// var connection = mysql.createConnection({
// 	host: 'localhost',
// 	user: 'root',			//root username
// 	database: 'join_us'		//name of db
// })

// var person = {
// 	email: faker.internet.email(),
// 	created_at: faker.date.past()
// };

// var selectStar = 'SELECT * FROM users';
// var insertPerson = 'INSERT INTO users SET ?';


// connection.query(selectStar, function (err, results, fields) {
// 	if (err) throw err;
// 	console.log(results);
// });

// connection.query(insertPerson, person, function (err, results, fields) {
// 	if (err) throw err;
// 	console.log(results);
// });

// connection.query(selectStar, function (err, results, fields) {
// 	if (err) throw err;
// 	console.log(results);
// });

// connection.end();

// console.log(faker.date.past());

// Select all users from database
// note [#].alias gives you arrary_object.variable

// var q = 'SELECT * FROM users ';
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// var q = 'SELECT COUNT(*) AS total FROM users';
// connection.query(q, function (error, results, fields) {
// 	if (error) throw error;
// 	console.log(results[0].total);
// });

// connection.end();

// INSERTING DATA

// var q = 'INSERT INTO users (email) VALUES ("wyatt_the_dog@gmail.com"), ("rusty_the_dog@gmail.com")';

// connection.query(q, function (error, results, fields) {
// 	if (error) throw error;
// 	console.log(results);
// });

// var q = 'SELECT * FROM users ';
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// connection.end();


// INSERTING DATA TAKE 2

// var person = {
// 	email: faker.internet.email(),
// 	created_at: faker.date.past()
// };

// var end_result = connection.query('INSERT INTO users SET ?',
// 	person, function(err, result) {
// 		if (err) throw err;
// 		console.log(result);
// });

// var q = 'SELECT * FROM users ORDER BY created_at';
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// connection.end();




/* Practice with queries and results

// SELECT 1+1;
connection.query('SELECT 1 + 1 AS solution', function (error, results, fields){
	if (error) throw error;
	console.log('The solution is ', results[0].solution);
	console.log(results);
	console.log(results[0]);
})

var q = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';
connection.query(q, function (error, results, fields) {
	if (error) throw error;
	console.log(results);
	console.log(results[0]);
	console.log(results[0].time);
	console.log(results[0].date);
	console.log(results[0].now);
})

*/


/* 
Some initial experimentation with app.js

console.log(faker.internet.email());

console.log(faker.date.past());

function generateAddress() {
console.log(faker.address.streetAddress());

console.log(faker.address.city());

console.log(faker.address.state());
}

generateAddress();
generateAddress();
generateAddress();
generateAddress();


SELECT 1 + 1;

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
	if (error) throw error;
	console.log('The solution is: ', results[0].solution);
});
*/