USE university_db;

INSERT INTO Students (name, email, age)
VALUES
('Katia Ghezali', 'katia@example.com', 22),
('Sara Benali', 'sara@example.com', 21),
('Amine Haddad', 'amine@example.com', 23);

INSERT INTO Instructors (name, department)
VALUES
('Ahmed Mansouri', 'Computer Science'),
('Nadia Belkacem', 'Mathematics'),
('Karim Saidi', 'Information Technology');

INSERT INTO Courses (title, credits, instructor_id)
VALUES
('Database Systems', 4, 1),
('Mathematics', 3, 2),
('Web Development', 3, 3);

INSERT INTO Enrollments (student_id, course_id, grade)
VALUES
(1, 1, 85.50),
(2, 1, 90.00),
(1, 2, 78.00),
(2, 3, 88.50);