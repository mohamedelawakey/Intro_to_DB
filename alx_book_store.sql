DROP DATABASE alx_book_store;

create database IF NOT EXISTS alx_book_store;

use alx_book_store;

create table Authors(
	author_id int auto_increment primary key,
    author_name VARCHAR(215) not null
);

create table Books(
	book_id int auto_increment primary key,
	title VARCHAR(130) not null,
    author_id int,
    price DOUBLE(10,2),
    publication_date DATE,
    foreign key (author_id) references Authors(author_id) 
);

create table Customers(
	customer_id int auto_increment primary key,
    customer_name VARCHAR(215) not null,
    email VARCHAR(215) not null,
    address TEXT
);

create table Orders(
	order_id int auto_increment primary key,
    order_date DATE,
    customer_id int,
    foreign key (customer_id ) references Customers(customer_id)
);

create table Order_Details(
	orderdetailid int auto_increment primary key,
    quantity DOUBLE(10, 2),
    order_id int,
    book_id int,
    foreign key (order_id) references Orders(order_id),
    foreign key (book_id ) references Books(book_id)
);