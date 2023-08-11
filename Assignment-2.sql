create database ExerciseDb
use ExerciseDb

create table Publisher(
PID int primary key,
Publisher varchar(50) not null unique)

insert into Publisher values  (1, 'Publisher_A'),
(2, 'Publisher_B'),
(3, 'Publisher_C')
select * from Publisher

create table Category(
CID int primary key,
Category varchar(50) not null unique)

insert into Category (CID, Category)  values(1,'Fiction')
insert into Category (CID, Category)  values(2,'Non-Fiction')
insert into Category (CID, Category)  values(3,'Mystery')
select * from Category

create table Author(
AID int primary key,
AuthorName varchar(50) not null unique)

insert into Author (AID, AuthorName)values(1,'J.K. Rowling')
insert into Author (AID, AuthorName)values(2,'Stephen King')
insert into Author (AID, AuthorName)values(3,'Jane Austen')
select * from Author

create table Book(
BID int primary key ,
BName varchar(50) not null,
BPrice decimal(10, 2) not null,
Author int,
Publisher int,
Category int,
foreign key (Author) references Author(AID),
foreign key (Publisher) references Publisher(PID),
foreign key (Category) references Category(CID)
)

insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (10,'Harry Potter and the Sorcerer''s Stone', 19.99, 1, 1, 1)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (11,'The Shining', 15.99, 2, 2, 2)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (13,'Pride and Prejudice', 12.99, 3, 3, 1)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (14,'The Da Vinci Code', 14.99, 1, 2, 3)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (15,'Misery', 11.99, 2, 2, 2)
insert into Book (BID, BName, BPrice, Author, Publisher, Category) values (16,'Sense and Sensibility', 10.99, 3, 1, 1)

select * from Book