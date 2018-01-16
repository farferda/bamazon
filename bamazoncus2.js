var inquirer = require('inquirer');
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Billybones9",
  database: "bamazon_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  showMenu();
});

function askQuestions(){
	inquirer.prompt([
		{
			type: "input",
			message: "Welcome to Bamazon, please select id of the product you want to buy:",
			name: "itemId"
		},
		{
			type: "input",
			message: "How many:",
			name: "itemQuantity"
		}
	])
	.then(function(answers) {
		console.log(answers)
		findById(answers.itemId);
	})
}	
// askQuestions();	

function showMenu(){
	connection.query("SELECT * FROM inventory",function(err,data){
		for (var i = 0; i < data.length; i++) {
			console.log("Product:", data[i].product_name, " product id", data[i].item_id)
		}
		askQuestions();
	})
}

function findById(id){
	connection.query("SELECT * FROM inventory WHERE item_id =" + id, function(err,data){
		console.log(data)
	})
}
