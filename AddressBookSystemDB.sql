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

INSERT INTO AddressBook(firstname, lastname, address, city, state, zip, phoneNo, email) VALUES
('Bill','John','201 Mega St','Pune','Maha',411041,9090898989,'john12@gmail.com'),
('Siya','Sen','32 Main St','Lucknow','UP','234654','9876567897','siya321@gmail.com'),
('Riya', 'Sharma', '13 Street Road', 'Mumbai', 'Guj', 234346, '5678904321', 'roya.123@gmail.com'),
('Rohn', 'Doe', '123 Main St', 'Solapur', 'Maha', 627040, '5551234234', 'john.doe@example.com'),
('Abhishek','Sontakke','Panvel','Navi Mumbai','Maha','410206','7977467636','abhisontakke3930@gmail.com'),
('Shree','Varma','122 Flat No','Patana','Bihar','345678','9876543210','shreevarma@gmail.com');


select * from AddressBook;

UPDATE AddressBook SET state = 'Maha' , zip = '412334',city = 'New Mumbai' WHERE firstname = 'Riya' AND lastname = 'Sharma';

Delete from AddressBook where firstname = 'Rohn' AND lastname = 'Doe';

Select * from AddressBook where city = 'Lucknow' OR state = 'Maha';

Select city,state, count(*) AS total_contacts from AddressBook group by city,state;

Select * from AddressBook order by firstname,lastname asc;

Alter Table AddressBook ADD COLUMN BookName VARCHAR(50) after id,ADD COLUMN BookType VARCHAR(50) after id;
update AddressBook set BookType = 'Family' where firstname = 'Ashwini' OR firstName = 'Riya';
update AddressBook set BookType = 'Friends' where firstname = 'Siya' OR firstName = 'shree';
update AddressBook set BookType = 'Profession' where firstname = 'Bill';

update AddressBook set BookName = 'FamilyBook' where firstname = 'Ashwini' OR firstName = 'Riya';
update AddressBook set BookName = 'FriendsBook' where firstname = 'Siya' OR firstName = 'shree';
update AddressBook set BookName = 'ProfessionBook' where firstname = 'Bill';

select BookType , count(*) as total_contacts from Addressbook group by BookType; 














