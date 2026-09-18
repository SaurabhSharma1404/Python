create database postgres;
create table students_id(
students_rollnumber int primary key,
name varchar(50) not null,
marks int,
subject_name varchar(20)
);
insert into students_id(students_rollnumber,name,marks,subject_name)
values
(12,'saurabh',65,'Python'),
(17,'keshav',80,'python'),
(19,'jaspreet',85,'python');

ALTER TABLE students_id
ADD CONSTRAINT marks_check CHECK (marks >50);

select * from students_id;

select count(*) from students_id;

select count('name') from students_id;

select name,marks from students_id
where marks>70;

select distinct name,subject_name from students_id;

SELECT COUNT(*) 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'students_id';


CREATE TABLE student_marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

INSERT INTO student_marks (mark_id, student_id, subject, marks)
VALUES
(101, 1, 'SQL', 85),
(102, 1, 'Python', 90),
(103, 2, 'SQL', 72),
(104, 2, 'Python', 68),
(105, 3, 'SQL', 95),
(106, 4, 'SQL', 60),
(107, 5, 'Python', 88);


select * from students_id as s
full join student_marks as m
on s.marks=m.marks;


