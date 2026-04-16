# Library Management System (SQL Project)

## Overview

This project is a basic Library Management System developed using SQL. It is designed to store and manage information about books, students, and issued books. The system also includes queries to analyze borrowing patterns and manage records effectively.

## Objectives

* Store details of books and students
* Track book issue and return records
* Identify overdue books
* Analyze popular book categories
* Maintain active student records

## Database Structure

### Books Table

This table stores details about the books available in the library.

* book_id: Unique identifier for each book
* title: Name of the book
* category: Type or genre of the book
* total_copies: Total number of copies available

### Students Table

This table contains information about students.

* student_id: Unique identifier for each student
* name: Name of the student
* join_date: Date when the student joined

### Issued Books Table

This table records the details of issued books.

* issue_id: Unique identifier for each record
* book_id: Reference to the book
* student_id: Reference to the student
* issue_date: Date when the book was issued
* return_date: Date when the book was returned

## Relationships

The issued_books table is connected to both books and students using foreign keys. This ensures that every issued record is linked to a valid book and student.

## Features

* Tracks which student borrowed which book
* Identifies books that are overdue
* Shows which categories are most frequently borrowed
* Helps manage student activity
