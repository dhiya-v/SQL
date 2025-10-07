CREATE TABLE students ( student_id int,
name VARCHAR(50),
email VARCHAR(50),
UNIQUE(student_id,email));

CREATE TABLE courses (course_id int,
course_name VARCHAR(50),
UNIQUE(course_id));

CREATE TABLE enrollments (
    student_id int,
    course_id int,
    PRIMARY KEY (student_id,course_id),
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
);