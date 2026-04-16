SELECT s.name, b.title, ib.issue_date
FROM issued_books ib
JOIN students s ON ib.student_id = s.student_id
JOIN books b ON ib.book_id = b.book_id
WHERE ib.return_date IS NULL
  AND ib.issue_date < CURDATE() - INTERVAL 14 DAY;

SELECT b.category, COUNT(*) AS total_borrowed
FROM issued_books ib
JOIN books b ON ib.book_id = b.book_id
GROUP BY b.category
ORDER BY total_borrowed DESC;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM students
WHERE student_id NOT IN (SELECT DISTINCT student_id
FROM issued_books
WHERE issue_date >= CURDATE() - INTERVAL 3 YEAR);
SET SQL_SAFE_UPDATES = 1;
