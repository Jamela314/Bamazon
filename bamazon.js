var mysqld = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
	host: 'local host',
	port: 3306,
	user: 'root',
	password: 'root',
	database: 'Bamazondb'

});

// display table to the screen

// display all of the items available for sale. Include the ids, names, and prices of products for sale.

connection.connect(function(err) {
	createProduct();
});

function createProduct() {
	var query = connection.query(
		'SELECT * FROM products',
		{
			item_id: '1'
			product_name : 'sports bra',
			department_name: 'fitness',
			price: 19.99,
			stock_quantity: 999
		},
		function(err,res){
			console.log(res.effectedRows + 'product inserted');
		}
	inquirer.prompt([{
			name: 'item',
			type: 'input',
			message: 'Which item would you like to purchase? (Enter the Item ID)'
		},
		{
			name: 'quantity',
			type: 'input',
			message: 'How many would you like to purchase?'
		}]).then(function(answer) {
			console.log(answer);
			var itemID = answer.item;
			console.log(itemID);
			var chosenItem = res[itemID-1];
			console.log(chosenItem);
			var newQuantity = chosenItem.stock_quantity - answer.quantity;
			if (newQuantity >= 0) {
				connection.query('UPDATE products SET ? WHERE itemID = ?', [{ stock_quantity: newQuantity }, itemID]);
				createProduct();
			} else {
				console.log('There are not enough in stock for you to purchase that many.');
				createProduct();
			}
		})
	})
}