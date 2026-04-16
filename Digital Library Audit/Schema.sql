CREATE DATABASE library_db;
USE library_db;
CREATE TABLE books (book_id INT PRIMARY KEY,
title VARCHAR(100),category VARCHAR(50),
total_copies INT);
CREATE TABLE students (student_id INT PRIMARY KEY,
name VARCHAR(100),join_date DATE);
CREATE TABLE issued_books (issue_id INT PRIMARY KEY,
book_id INT,student_id INT,issue_date DATE,return_date DATE,
FOREIGN KEY (book_id) REFERENCES books(book_id),
FOREIGN KEY (student_id) REFERENCES students(student_id));