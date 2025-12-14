CREATE DATABASE IF NOT EXISTS alx_book_store
USE alx_book_store;

CREATE TABLE alx_book_store.Books(
	book_id INT(10) PRIMARY KEY,
    title VARCHAR(130),
    author_id VARCHAR(20),
    price DOUBLE,
    publication_date DATE);
    
CREATE TABLE alx_book_store.Authors(
	author_id VARCHAR(20) PRIMARY KEY,
    author_name VARCHAR(215));
    
CREATE TABLE alx_book_store.Customers(
	customer_id VARCHAR(20) Primary Key,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT);

CREATE TABLE alx_book_store.Orders(
	order_id INT Primary Key,
	customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
	order_date DATE);
    

	["FOREIGN KEY (order_id) REFERENCES Orders(order_id)", "FOREIGN KEY (book_id) REFERENCES Books(book_id)"]
CREATE TABLE alx_book_store.Order_Details(
	orderdetailid VARCHAR(20) Primary Key,
	order_id VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	book_id INT(10),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
	quantity DOUBLE);