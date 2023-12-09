 USE StudentManagementSystem;
Database changed
A.1.Insert records in Student table-->
mysql> INSERT INTO Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) VALUES
    ->  ('S10','Haripriya','Behera','2002-11-01','F','haripriyabehera@gmail.com','9876489734'),
    ->     ('S11','Debaki','Kisan','2002-10-19','F','debakikisan@gmail.com','7893450123'),
    ->     ('S12','Archana','Kashyap','2003-02-27','F','archanakashayp@gmail.com','8759432987'),
    ->     ('S13','Deepak','Mardi','2003-06-22','M','deepakmardi@gmail.com','8795975747'),
    ->     ('S14','Bedprakash','Oram','2004-11-01','M','bedprakashoram@gamil.com','7896835789');
A.2.Retrieve data from Student table-->
mysql> SELECT * FROM Student;

output-->
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

+-----------+------------+----------+---------------------+--------+---------------------------+------------+
| StudentID | FirstName  | LastName | DateOfBirth         | Gender | Email                     | Phone      |
+-----------+------------+----------+---------------------+--------+---------------------------+------------+
| S10       | Haripriya  | Behera   | 2002-11-01 00:00:00 | F      | haripriyabehera@gmail.com | 9876489734 |
| S11       | Debaki     | Kisan    | 2002-10-19 00:00:00 | F      | debakikisan@gmail.com     | 7893450123 |
| S12       | Archana    | Kashyap  | 2003-02-27 00:00:00 | F      | archanakashayp@gmail.com  | 8759432987 |
| S13       | Deepak     | Mardi    | 2003-06-22 00:00:00 | M      | deepakmardi@gmail.com     | 8795975747 |
| S14       | Bedprakash | Oram     | 2004-11-01 00:00:00 | M      | bedprakashoram@gamil.com  | 7896835789 |
+-----------+------------+----------+---------------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)
A.3.
mysql> Select FirstName,LastName from Student;
output-->
+------------+----------+
| FirstName  | LastName |
+------------+----------+
| Haripriya  | Behera   |
| Debaki     | Kisan    |
| Archana    | Kashyap  |
| Deepak     | Mardi    |
| Bedprakash | Oram     |
+------------+----------+
5 rows in set (0.00 sec)
B.1.Insert records in Course table-->

mysql> INSERT INTO Course(CourseID,CourseTitle,Credits) VALUES
    ->     ('C10','Math101',20),
    ->     ('C11','Physics101',10),
    ->     ('C12','Chemistry101',30);

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Course;
output-->
+----------+--------------+---------+
| CourseID | CourseTitle  | Credits |
+----------+--------------+---------+
| C10      | Math101      |      20 |
| C11      | Physics101   |      10 |
| C12      | Chemistry101 |      30 |
+----------+--------------+---------+
3 rows in set (0.00 sec)

B.2.Insert records of Instructor table-->

mysql> INSERT INTO Instructor(InstructorID,Email,FirstName,LastName) VALUES
    -> ('I10','haripriyabehera@gmail.com','Haripriya','Behera'),
    -> ('I11','debakikisan@gmail.com','Debaki','Kisan'),
    ->  ('I12','archanakashyap@gmail.com','^Archana',' Kashyap');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Instructor;
output-->
+--------------+---------------------------+-----------+----------+
| InstructorID | Email                     | FirstName | LastName |
+--------------+---------------------------+-----------+----------+
| I10          | haripriyabehera@gmail.com | Haripriya | Behera   |
| I11          | debakikisan@gmail.com     | Debaki    | Kisan    |
| I12          | archanakashyap@gmail.com  | ^Archana  |  Kashyap |
+--------------+---------------------------+-----------+----------+
3 rows in set (0.00 sec)

C.1.Insert records of Enrollment table-->
mysql> INSERT INTO Enrollment(EnrollmentID,StudentID,CourseID,InstructorID) VALUES
    -> ('E1001','S10','C10','I10'),
    ->     ('E1002','S11','C10','I10'),
    ->   ('E1003','S12','C11','I11');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Enrollment;
output-->
+--------------+-----------+----------+--------------+
| EnrollmentID | StudentID | CourseID | InstructorID |
+--------------+-----------+----------+--------------+
| E1001        | S10       | C10      | I10          |
| E1002        | S11       | C10      | I10          |
| E1003        | S12       | C11      | I11          |
+--------------+-----------+----------+--------------+
3 rows in set (0.00 sec)

C.2.Insert records of Score table-->
code > INSERT INTO Score
    -> (ScoreID,StudentID,CourseID,CreditObtained,DateOfExam) VALUES
    -> ('SC101','S10','C10','20','2020-11-07'),
    ->   ('SC102','S11','C10','10','2020-10-09');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from Score ;
output-->
+---------+-----------+----------+----------------+---------------------+
| ScoreID | StudentID | CourseID | CreditObtained | DateOfExam          |
+---------+-----------+----------+----------------+---------------------+
| SC101   | S10       | C10      | 20             | 2020-11-07 00:00:00 |
| SC102   | S11       | C10      | 10             | 2020-10-09 00:00:00 |
+---------+-----------+----------+----------------+---------------------+
2 rows in set (0.00 sec)

C.3.Insert records of Feedback table-->

mysql> INSERT INTO Feedback(StudentID,InstructorName,Feedback) VALUES
    -> ('S10','I10','Topic was well avarge and good explained '),
    -> ('S11','I11','Session was impressive'),
    -> ('S12','I12','Session was super');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Feedback;
output-->
+------------+-----------+----------------+-------------------------------------------+
| FeedbackID | StudentID | InstructorName | Feedback                                  |
+------------+-----------+----------------+-------------------------------------------+
|          1 | S10       | I10            | Topic was well avarge and good explained  |
|          2 | S11       | I11            | Session was impressive                    |
|          3 | S12       | I12            | Session was super                         |
+------------+-----------+----------------+-------------------------------------------+
3 rows in set (0.00 sec)

