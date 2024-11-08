-- create database
CREATE DATABASE node44Class;

-- use database
USE node44Class;



/*
3 KIỂU DỮ LIỆU CHÍNH:

-----chuỗi (string): VARCHAR, TEXT, ...

-----số (number): INT, FLOAT

-----thời gian (date): timestamp, datetime,...

*/

-- create table
CREATE TABLE users(

	userID INT,
	fullName VARCHAR(50),
	email VARCHAR(255),
	age INT,
	gender INT,
	address VARCHAR(255)

)

-- create data for table users
INSERT INTO users(userID, fullName, email, age, gender, address)
VALUES 
	(1, 'Alice Smith', 'alice.smith@example.com', 25, 1, '123 Main St, Springfield'),
    (2, 'Bob Johnson', 'bob.johnson@example.com', 30, 0, '456 Oak Ave, Metropolis'),
    (3, 'Charlie Lee', 'charlie.lee@example.com', 22, 0, '789 Pine Rd, Gotham'),
    (4, 'Dana White', 'dana.white@example.com', 28, 1, '101 Maple St, Star City'),
    (5, 'Eve Black', 'eve.black@example.com', 35, 1, '202 Elm St, Central City');
    

    
-- add, delete, change data type for table using ALTER TABLE 

-- ADD passport COLUMN
ALTER TABLE users
ADD COLUMN passport VARCHAR(50)

-- Check passport column
SELECT * FROM users
SELECT passport FROM users

-- CHANGE DATA TYPE FOR fullName column
ALTER TABLE users
MODIFY COLUMN fullName VARCHAR(255);

-- CONSTRAINTS FOR COLUMN userID (PRIMARY KEY)
ALTER TABLE users
MODIFY COLUMN userID INT PRIMARY KEY AUTO_INCREMENT,
MODIFY COLUMN email VARCHAR(255) NOT NULL,
MODIFY COLUMN fullName VARCHAR(255) NOT NULL;

-- query data using SELECT

-- get all data from users table
SELECT * FROM users

-- get fullName and email from users table
SELECT fullName, email FROM users

-- get user have name John
SELECT * FROM users
WHERE fullName LIKE '%John%'

-- %John: tìm những người có tên John ở cuối (abcJohn, defJohn).
--John%: tìm những người có tên John ở đầu (JohnABC, JohnDEF).
-- %John%: tìm những người có tên John (đầu và cuối).

-- filter những người có tuổi trong phạm vi 25 - 35 tuổi

-- Cách 1:
SELECT * FROM users
WHERE age >= 25 AND age <=35;

-- Cách 2:
SELECT * FROM users
WHERE age BETWEEN 25 AND 35
ORDER BY age ASC

SELECT * FROM users
WHERE age BETWEEN 25 AND 35
ORDER BY age DESC

-- sắp xếp: ORDER BY name_column ASC/DESC

--- tương tác data: thêm, xóa, sửa

-- sửa
UPDATE users SET age =31
WHERE userID = 3

SELECT * FROM users

-- delete
DELETE FROM users
WHERE userID = 3;

SELECT * FROM users
