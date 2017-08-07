DROP TABLE IF EXISTS products;

CREATE TABLE products ( 
item_ID INTEGER(10) AUTO_INCREMENT NOT NULL, 
product_name VARCHAR(50), 
department_name VARCHAR(100), 
item_cost FLOAT (10),
stock_quantity INTEGER(5),
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('sports bra', 'fitness', 19.99, 20);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('capris', 'fitness', 29.99, 50);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('leggings', 'fitness', 39.99, 50);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('T-shirts', 'fitness', 15.99, 40);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('sweatband', 'fitness',9.99, 30);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('wristwraps', 'fitness', 19.99, 20);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('ankle weights', 'fitness', 30.99, 50);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('yoga mat', 'fitness', 29.99, 50);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('foam roller', 'fitness', 15.99, 60);

INSERT INTO products (product_name, department_name, item_cost, stock_quantity)
VALUES ('socks', 'fitness', 32.99, 18);

SELECT * FROM products;
