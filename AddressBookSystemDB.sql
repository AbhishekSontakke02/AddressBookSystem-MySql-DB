create database address_book_service;
use address_book_service;
select database();
create table AddressBook(
id int auto_increment primary key,
firstname varchar(50),
lastname varchar(50),
address varchar(100),
city varchar(50),
state varchar(50),
zip INT,
phoneNo varchar(12),
email varchar(100)
);

describe AddressBook;


