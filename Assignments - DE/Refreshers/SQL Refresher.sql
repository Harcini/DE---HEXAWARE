-- 1. Create and Use Database
CREATE DATABASE College;
USE College;

-- 2. Create Tables
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course_name VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    fee DECIMAL(10,2)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 3. Insert Data (Storing Data in a Table)
INSERT INTO Students VALUES 
(1, 'Asha', 20, 'Python'),
(2, 'Ravi', 21, 'Java'),
(3, 'Meera', 19, 'Python'),
(4, 'John', 22, 'C++');

INSERT INTO Courses VALUES 
(101, 'Python', 3000.00),
(102, 'Java', 3500.00),
(103, 'C++', 2800.00);

INSERT INTO Enrollments (student_id, course_id) VALUES 
(1, 101),
(2, 102),
(3, 101);

-- 4. Updating Data in a Table
UPDATE Students SET age = 23 WHERE student_id = 1;

-- 5. Deleting Data from a Table
DELETE FROM Students WHERE student_id = 4;

-- 6. Retrieving Specific Attributes & Rows
SELECT name, age FROM Students;
SELECT * FROM Students WHERE age > 20;

-- 7. Filtering Data (WHERE, IN, DISTINCT, AND, OR, BETWEEN, LIKE, Aliases)
SELECT DISTINCT course_name FROM Students;
SELECT * FROM Students WHERE course_name IN ('Python', 'Java') AND age BETWEEN 19 AND 23;
SELECT s.name AS student_name, s.course_name AS course FROM Students s WHERE s.name LIKE 'A%';

-- 8. Using Functions to Customize the Result Set
-- String Functions
SELECT UPPER(name), LOWER(course_name), LENGTH(name) FROM Students;
-- Date Functions (Example)
SELECT NOW();
-- Math Functions
SELECT CEIL(AVG(fee)) FROM Courses;
-- System Function
SELECT USER();

-- 9. Aggregate Functions
SELECT COUNT(*) AS total_students FROM Students;
SELECT AVG(age) AS average_age FROM Students;
SELECT MIN(age), MAX(age) FROM Students;

-- 10. Grouping Data
SELECT course_name, COUNT(*) AS student_count FROM Students GROUP BY course_name;

-- 11. Having + Filtered Aggregated Results
SELECT course_name, COUNT(*) AS cnt FROM Students GROUP BY course_name HAVING COUNT(*) > 1;

-- 12. INNER JOIN
SELECT s.name, c.course_name, c.fee FROM Students s INNER JOIN Courses c ON s.course_name = c.course_name;

-- 13. LEFT JOIN
SELECT s.name, c.course_name, c.fee FROM Students s LEFT JOIN Courses c ON s.course_name = c.course_name;

-- 14. RIGHT JOIN
SELECT s.name, c.course_name, c.fee FROM Students s RIGHT JOIN Courses c ON s.course_name = c.course_name;

-- 15. FULL OUTER JOIN (Simulated using UNION in MySQL)
SELECT s.name, c.course_name FROM Students s LEFT JOIN Courses c ON s.course_name = c.course_name
UNION
SELECT s.name, c.course_name FROM Students s RIGHT JOIN Courses c ON s.course_name = c.course_name;

-- 16. CROSS JOIN
SELECT s.name, c.course_name FROM Students s CROSS JOIN Courses c;

-- 17. Joins with GROUP BY and Aggregate
SELECT c.course_name, COUNT(s.student_id) AS enrolled_students
FROM Courses c
LEFT JOIN Students s ON c.course_name = s.course_name
GROUP BY c.course_name;

-- 18. Equi Join (Same as INNER JOIN on equality)
SELECT s.name, c.course_name FROM Students s, Courses c WHERE s.course_name = c.course_name;

-- 19. Self Join (Assume matching students by course)
SELECT A.name AS Student1, B.name AS Student2, A.course_name
FROM Students A, Students B
WHERE A.course_name = B.course_name AND A.student_id <> B.student_id;

-- 20. Grouping Sets / Advanced Group By (MySQL doesn't support GROUPING SETS directly, use UNION)
SELECT course_name, COUNT(*) FROM Students GROUP BY course_name
UNION
SELECT 'Total', COUNT(*) FROM Students;

-- 21. Subquery
SELECT name FROM Students WHERE age > (SELECT AVG(age) FROM Students);

-- 22. EXISTS, ANY, ALL
SELECT name FROM Students s WHERE EXISTS (
  SELECT * FROM Enrollments e WHERE e.student_id = s.student_id
);

-- 23. Nested Subqueries
SELECT name FROM Students WHERE student_id IN (
  SELECT student_id FROM Enrollments WHERE course_id = 101
);

-- 24. Correlated Subquery
SELECT name FROM Students s WHERE age > (
  SELECT AVG(age) FROM Students WHERE course_name = s.course_name
);

-- 25. UNION, INTERSECT, EXCEPT (MySQL doesn't support INTERSECT/EXCEPT directly)
-- UNION
SELECT name FROM Students
UNION
SELECT course_name FROM Courses;

-- Simulating INTERSECT using INNER JOIN
SELECT s.name FROM Students s INNER JOIN Courses c ON s.course_name = c.course_name;

-- Simulating EXCEPT using LEFT JOIN and IS NULL
SELECT s.name FROM Students s
LEFT JOIN Courses c ON s.course_name = c.course_name
WHERE c.course_name IS NULL;

-- 26. CASE Statement
SELECT name,
CASE
    WHEN age < 20 THEN 'Teen'
    WHEN age BETWEEN 20 AND 25 THEN 'Young Adult'
    ELSE 'Adult'
END AS age_category
FROM Students;
