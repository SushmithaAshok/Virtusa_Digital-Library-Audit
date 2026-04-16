USE library_db;

INSERT INTO books VALUES (1, 'Science Today', 'Science', 5);
INSERT INTO books VALUES (2, 'Story World', 'Fiction', 3);
INSERT INTO books VALUES (3, 'History Facts', 'History', 4);
INSERT INTO books VALUES (4, 'Math Basics', 'Science', 6);

INSERT INTO students VALUES (101, 'Arun Kumar', '2022-01-10');
INSERT INTO students VALUES (102, 'Priya S', '2023-03-15');
INSERT INTO students VALUES (103, 'Ravi M', '2021-06-20');
INSERT INTO students VALUES (104, 'Sneha R', '2024-01-01');

INSERT INTO issued_books VALUES (1, 1, 101, '2025-03-01', NULL);
INSERT INTO issued_books VALUES (2, 2, 102, '2025-03-20', '2025-03-25');
INSERT INTO issued_books VALUES (3, 3, 103, '2025-02-01', NULL);
INSERT INTO issued_books VALUES (4, 4, 104, '2025-04-10', NULL);
