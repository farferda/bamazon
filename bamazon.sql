var mysql = require("mysql");
var inquirer = require('inquirer');

DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE inventory(
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100),
  department_name VARCHAR(100),
  price DECIMAL(8, 2),
  inventory INTEGER(10),
  PRIMARY KEY (item_id)
);

INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (1, 'baseball_bat', 'storeA', 50, 50);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (2, 'baseball_ball', 'storeA', 5, 100);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (3, 'baseball_hat', 'storeA', 25, 50);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (4, 'baseball_glove', 'storeB', 50, 25);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (5, 'basketball', 'storeB', 20, 40);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (6, 'soccerball', 'storeB', 25, 50);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (7, 'pingpongball', 'storeC', 2, 500);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (8, 'shoes', 'storeC', 60, 10);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (9, 'pants', 'storeD',35, 50);
INSERT INTO inventory (item_id, product_name, department_name, price, inventory) values (10, 'shirt', 'storeD', 35, 50);