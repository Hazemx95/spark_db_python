-- Active: 1746179588063@@mysql_db@3306@mytestdb
-- Active: 1746179588063@@mysql_db@3306
CREATE DATABASE mytestdb ;
SHOW DATABASES ;

USE mytestdb;

DROP TABLE IF EXISTS employees ;
CREATE TABLE IF NOT EXISTS employees (
    emp_id  int ,
    emp_name varchar(20) not null ,
    emp_address varchar(50) not null , 
    emp_phone varchar(11) not null ,
    emp_salary decimal(8,2) not null  ,
    CONSTRAINT pk_emp_id PRIMARY KEY (emp_id) ,
    department_id varchar(20) ,
    Foreign Key (department_id) REFERENCES departments(department_id)   ,
    dwh_timpstamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);
DROP TABLE IF EXISTS departments ;
CREATE TABLE IF NOT EXISTS  departments(
    department_id varchar(20) , 
    department_name varchar(20) , 
    department_loc varchar(20) ,
    department_date date
);

ALTER TABLE departments ADD primary key (department_id) ;
DESC departments;
SHOW COLUMNS FROM departments ;

DESC employees ;


INSERT INTO departments (department_id, department_name, department_loc, department_date) VALUES
('D001', 'HR', 'Cairo', '2020-01-10'),
('D002', 'IT', 'Alexandria', '2021-06-15'),
('D003', 'Finance', 'Giza', '2019-03-22');


INSERT INTO employees (emp_id, emp_name, emp_address, emp_phone, emp_salary, department_id) VALUES
(1, 'Ali Hassan', 'Nasr City', '01012345678', 8000.00, 'D001'),
(2, 'Mona Adel', 'Heliopolis', '01098765432', 9500.00, 'D002'),
(3, 'Khaled Omar', '6th October', '01011112222', 7200.50, 'D003'),
(4, 'Sara Nabil', 'Zamalek', '01022223333', 8700.75, 'D002');



SELECT * FROM employees ; 

INSERT INTO employees (emp_id, emp_name, emp_address, emp_phone, emp_salary, department_id) VALUES
(5, 'Mostafa Bayomi', 'Maadi', '01022223333', 8700.75, 'D002');


TABLE employees ;

SELECT * FROM customerinfo ;

SELECT COUNT(1) FROM customerinfo ;
