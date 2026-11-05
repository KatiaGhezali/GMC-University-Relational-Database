USE university_db;

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    age INT NOT NULL,
    CHECK (age > 17)
);

CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    credits INT NOT NULL,
    instructor_id INT NOT NULL,
    CHECK (credits > 0),
    FOREIGN KEY (instructor_id)
        REFERENCES Instructors(instructor_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Enrollments (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade DECIMAL(5,2),

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CHECK (grade IS NULL OR (grade >= 0 AND grade <= 100))
);