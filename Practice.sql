CREATE DATABASE address_book;

CREATE TABLE IF NOT EXISTS contacts (
id INT primary key AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at DATETIME default NOW());

INSERT INTO contacts (first_name,last_name,email) 
VALUES ("Martin","Seldeslachts","cdhsb@sjd.ezd"),
("fegkbhbge","khbsdfsj","cvhisdb"),
("john","Smith","vjvcs");

UPDATE contacts
SET email = "test"
WHERE id = 2;

DELETE FROM contacts
WHERE last_name = "Smith";

INSERT INTO contacts (id,first_name,last_name,email) 
VALUES(3,"john","Smith","mail");

ALTER TABLE contacts
ADD phone_number INT default 0000000000;

UPDATE contacts
SET phone_number = 0052782365
WHERE id = 1;

UPDATE contacts
SET phone_number = 0052792565
WHERE id = 2;

UPDATE contacts
SET phone_number = 0052924365
WHERE id = 3;





CREATE DATABASE library_system;

CREATE TABLE IF NOT EXISTS books (
book_id INT primary key AUTO_INCREMENT,
title VARCHAR(150) NOT NULL,
author VARCHAR(100) NOT NULL,
publication_year YEAR NOT NULL,
genre VARCHAR(50) DEFAULT 'Unknown',
available BOOLEAN DEFAULT True,
created_at TIMESTAMP default NOW()
);

INSERT INTO books (title,author,publication_year)
VALUES ("1984","George Orwell",1949),
("L'Oeuvre","Emile Zola",1886),
("L'épouvanteur", "Joseph Delaney",2004);

UPDATE books
SET available = false
WHERE author = "George Orwell";

DELETE FROM books
WHERE publication_year = 1886;

INSERT INTO books (book_id,title,author,publication_year)
VALUES(2,"L'Oeuvre","Emile Zola",1886);

ALTER TABLE books
ADD price DECIMAL default 10;

UPDATE books
SET price = 8.60
WHERE book_id = 1;

UPDATE books
SET price = 9.60
WHERE book_id = 2;

UPDATE books
SET price = 12.90
WHERE book_id = 3;

ALTER TABLE books
RENAME COLUMN available TO is_available;




CREATE TABLE IF NOT EXISTS authors (
id INT primary key AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
)

ALTER TABLE books
ADD author_id INT default NULL;

