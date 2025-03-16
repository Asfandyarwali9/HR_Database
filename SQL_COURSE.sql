--How to Retrive data
-- Select * will retrive all data from employee table.
select * from employee; 
/
-- How retrive speific columns from a table
-- This will retrive the specified columns from the table.
select emp_id,EMP_NAME,EMP_EMAIL from employee;
/
--how to retrive distinct data 
-- for that we will be using the distinct keyword.
select distinct emp_id from employee;
/
--how to retrive multiple distinct values from columns
select distinct emp_id,EMP_NAME from employee;
/
-- In sql we have two types of functions 
-- single row and multiple row
--single row functions are divided into 5 categories
-- 1.Character functions, 2.Number functions, 3.General functins, 4.Conversion functions,5.Date functions
-- 1.Character functions
-- Divided into two
-- 1. case-manipulation function and 2.Character manipulation function
-- 1. case-manipulation function (upper,lower,initcap)
-- 2. Character manipulation function (concat,substr,instr,length,replace,trim, lpad/rpad)
-- 1. case-manipulation function (upper,lower,initcap)
select upper(EMP_NAME) from employee; -- It will convert the names to upper letter 
/
select lower(EMP_NAME) from employee;  -- It will convert the names to lower/small letter
/
select initcap(EMP_NAME) from employee;  -- It will convert the intial letter of the string to upper letter
/
-- 2. Character manipulation function (concat,substr,instr,length,replace,trim, lpad/rpad)
-- concat will concat two strings or columns values  into single word. we also have || concatenation operator.
select concat(EMP_NAME,EMP_EMAIL) from employee;
select concat(concat(EMP_NAME,' ' ),EMP_EMAIL) from employee;
/
-- substr() to extract a specific string from a given string. it takes three aruguments original string, start pos, srting length to be extracted.
select substr(emp_name,2,5) from employee;