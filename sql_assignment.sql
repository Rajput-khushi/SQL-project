
                                                          # SQL AASIGNMENT 1

#ACTIVITY:1
create database assignment;
use assignment;
create table student
(
stuId int primary key not null,
stuName varchar(50),
sex enum("Male","Female"),
percentage decimal(5,2) check(percentage>=0 and percentage<=100),
class int check(class in(11,12)),
section char(1),
stream varchar(50),
DOB date 
);
INSERT INTO student
(stuId,stuName,sex,percentage,class,section,stream,DOB)
values
(1001,"AKSHRA AGARWAL","Female",70,11,"A","Science","1996-10-10"),																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											
(1002,"ANJANI SHARMA","Female",75,11,"A","Commerce","1996-09-18"),
(1003,"ANSHUL SAXENA","Male",78,11,"A","Commerce","1996-11-19"),
(1004,"AISHWARYA SINGH","Female",79,11,"A","Commerce","1996-11-01"),
(1005,"AKRITI SAXENA","Female",76,11,"A","Commerce","1996-09-20"),
(1006,"KHUSHI AGARWAL","Female",77,11,"A","Science","2003-09-14"),
(1007,"MAAHI AGARWAL","Female",74,11,"A","Science","1997-04-21"),
(1008,"MITALI GUPTA","Female",78,12,"A","Science","1997-11-26"),
(1009,"NIKUNJ AGARWAL","male",58,12,"A","Science","1997-07-12"),
(1010,"PARKHI","Female",59,12,"A","Commerce","1997-04-22"),
(1011,"PRAKHAR TIWARI","male",43,12,"A","Science","1997-12-21"),
(1012,"RAGHAV GANGWAR","male",58,12,"A","Commerce","1997-12-21"),
(1013,"SAHIL SARAWAT","male",57,12,"A","Commerce","1997-08-13"),
(1014,"SWATI MISHRA","Female",98,11,"A","Science","1996-08-13"),
(1015,"HARSH AGARWAL","male",58,11,"B","Science","2003-08-28"),
(1016,"HARSHIT KUMAR","male",98,11,"B","Science","2003-05-22"),
(1017,"JAHANVI KAPPOR","male",65,11,"B","Science","1997-01-10"),
(1018,"STUTI MISHRA","male",66,11,"C","Commerce","1996-01-10"),
(1019,"SURAYANSH KUMAR AGARWAL","male",85,11,"C","Comsmerce","2007-08-22"),
(1020,"TANI RASTOGI","Female",75,12,"C","Commerce","1998-01-15"),
(1021,"TANISHK GUPTA","male",55,12,"C","Science","1998-04-11"),
(1022,"TANMAY AGARWAL","male",57,11,"C","Commerce","1998-06-28"),
(1023,"YASH SAXENA","male",79,11,"C","Science","1998-03-13"),
(1024,"YESH DUBEY","male",85,12,"C","Commerce","1998-04-03");

#ACTIVITY : 2
select * from student;
select stuName,DOB from student;
select * from student
where percentage >= 80;
select stuName,stream,percentage from student
where percentage > 80;
select * from student
where percentage>75 and stream="science";

#ACTIVITY : 3
truncate table student;
select * from student;
INSERT INTO student
(stuId,stuName,sex,percentage,class,section,stream,DOB)
values
(1001,"AKSHRA AGARWAL","Female",70,11,"A","Science","1996-10-10"),																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											
(1002,"ANJANI SHARMA","Female",75,11,"A","Commerce","1996-09-18"),
(1003,"ANSHUL SAXENA","Male",78,11,"A","Commerce","1996-11-19"),
(1004,"AISHWARYA SINGH","Female",79,11,"A","Commerce","1996-11-01"),
(1005,"AKRITI SAXENA","Female",76,11,"A","Commerce","1996-09-20"),
(1006,"KHUSHI AGARWAL","Female",77,11,"A","Science","2003-09-14"),
(1007,"MAAHI AGARWAL","Female",74,11,"A","Science","1997-04-21"),
(1008,"MITALI GUPTA","Female",78,12,"A","Science","1997-11-26"),
(1009,"NIKUNJ AGARWAL","male",58,12,"A","Science","1997-07-12"),
(1010,"PARKHI","Female",59,12,"A","Commerce","1997-04-22"),
(1011,"PRAKHAR TIWARI","male",43,12,"A","Science","1997-12-21"),
(1012,"RAGHAV GANGWAR","male",58,12,"A","Commerce","1997-12-21"),
(1013,"SAHIL SARAWAT","male",57,12,"A","Commerce","1997-08-13"),
(1014,"SWATI MISHRA","Female",98,11,"A","Science","1996-08-13"),
(1015,"HARSH AGARWAL","male",58,11,"B","Science","2003-08-28"),
(1016,"HARSHIT KUMAR","male",98,11,"B","Science","2003-05-22"),
(1017,"JAHANVI KAPPOR","male",65,11,"B","Science","1997-01-10"),
(1018,"STUTI MISHRA","male",66,11,"C","Commerce","1996-01-10"),
(1019,"SURAYANSH KUMAR AGARWAL","male",85,11,"C","Comsmerce","2007-08-22"),
(1020,"TANI RASTOGI","Female",75,12,"C","Commerce","1998-01-15"),
(1021,"TANISHK GUPTA","male",55,12,"C","Science","1998-04-11"),
(1022,"TANMAY AGARWAL","male",57,11,"C","Commerce","1998-06-28"),
(1023,"YASH SAXENA","male",79,11,"C","Science","1998-03-13"),
(1024,"YESH DUBEY","male",85,12,"C","Commerce","1998-04-03");

alter table student
add column TeacherId varchar(20);

select * from student;
DESC student;

alter table student
 modify column TeacherId int;
 
 #ACTIVITY : 4
 alter table student
 drop column TeacherId;
 select * from student
 where stream!="science";
 select stuName,percentage from student
 where percentage between 60 and 80;
 
 #ACTIVITY : 5
UPDATE student
SET stuName = 'SWATI VERMA', Percentage = 86
WHERE stuId = 1014;

DELETE FROM student
WHERE StuId = 1016;


SELECT * FROM student WHERE StuName LIKE'G_';
SELECT * FROM student WHERE stuName='G';
SELECT * FROM student WHERE stuName LIKE 'G%';
SELECT * FROM student WHERE stuName='%G%';

SELECT Stream FROM student;

select stuName,sex,stream from student
where percentage between 70 and 80;



CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE Empl(
	empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal  DECIMAL(20, 2) CHECK (sal >= 0),
    comm DECIMAL(20, 2) CHECK (comm >= 0),
    deptno INT
);
	
INSERT INTO Empl
	(empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES
    (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20),
    (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
    (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
    (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
    (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
    (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
    (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
    (8888, 'SCOOT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
    (8839, 'AMIR', 'PRESINDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
    (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);


SELECT ename, sal
FROM EMPL
WHERE sal >= 2200;

SELECT * 
FROM EMPL
WHERE comm IS NULL; -- IS NULL TO CHECK NULL VALUES , NOT RECOMMENDED = NULL

SELECT ename, sal
FROM EMPL
WHERE sal < 2500 OR sal > 4000;

SELECT ename, job, sal
FROM Empl
WHERE mgr IS NULL;

SELECT ename
FROM EMPL
WHERE ename LIKE '--A%';

SELECT ename
FROM EMPL
WHERE ename LIKE '%T';

SELECT ename
FROM Empl
WHERE ename LIKE 'M_L%';

SELECT empno, ename, job, mgr, hiredate, 
       CASE
           WHEN comm IS NULL THEN 'Not given'
           ELSE comm
       END AS commission,
       deptno
FROM Empl;





 
 
 
 







