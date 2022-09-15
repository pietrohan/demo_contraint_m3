CREATE DATABASE demo;
CREATE TABLE persons( 
id int NOT NULL,
last_name varchar(255) NOT NULL,
first_name varchar(255) NOT NULL,
age int);
CREATE TABLE persons1(
id int NOT NULL UNIQUE,
name varchar(255) NOT NULL, 
email varchar(100) UNIQUE, 
phone varchar(13)UNIQUE
);
CREATE TABLE persons2( 
id int NOT NULL,
last_name varchar(255) NOT NULL, 
first_name varchar(255),
age int,
CHECK (age>=18)
);

CREATE TABLE persons3( 
id int NOT NULL,
last_name varchar(255) NOT NULL, 
first_name varchar(255),
age int,
city varchar(255) DEFAULT 'Sandnes'
);
CREATE TABLE users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(40), password
VARCHAR(255), email
VARCHAR(255)
);
CREATE TABLE roles(
role_id INT AUTO_INCREMENT, 
role_name VARCHAR(50), PRIMARY
KEY(role_id)
);
CREATE TABLE user_roles( user_id 
INT NOT NULL, role_id INT NOT
NULL,
PRIMARY KEY(user_id,role_id),
FOREIGN KEY(user_id) REFERENCES users(user_id), FOREIGN 
KEY(role_id) REFERENCES roles(role_id)
);
ALTER TABLE users
ADD PRIMARY KEY(id);
CREATE TABLE customers(
id INT AUTO_INCREMENT PRIMARY KEY, name
VARCHAR(40),
address VARCHAR(255), email 
VARCHAR(255)
);
