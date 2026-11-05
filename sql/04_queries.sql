USE university_db;

-- 1. Retrieve students enrolled in Database Systems

SELECT
    Students.student_id,
    Students.name,
    Students.email,
    Enrollments.grade
FROM Students
INNER JOIN Enrollments
    ON Students.student_id = Enrollments.student_id
INNER JOIN Courses
    ON Enrollments.course_id = Courses.course_id
WHERE Courses.title = 'Database Systems';


-- 2. List courses with their instructors

SELECT
    Courses.course_id,
    Courses.title,
    Courses.credits,
    Instructors.name AS instructor_name
FROM Courses
INNER JOIN Instructors
    ON Courses.instructor_id = Instructors.instructor_id;


-- 3. Find students not enrolled in any course

SELECT
    Students.student_id,
    Students.name,
    Students.email
FROM Students
LEFT JOIN Enrollments
    ON Students.student_id = Enrollments.student_id
WHERE Enrollments.student_id IS NULL;


-- 4. Update a student's email address

UPDATE Students
SET email = 'katia.ghezali@example.com'
WHERE student_id = 1;

-- Verify the update

SELECT *
FROM Students
WHERE student_id = 1;


-- 5. Delete a course by its ID

-- First, delete its associated enrollment records

DELETE FROM Enrollments
WHERE course_id = 3;

-- Then delete the course

DELETE FROM Courses
WHERE course_id = 3;

-- Verify the deletion

SELECT * FROM Courses;