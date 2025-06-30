--CREATE TABLE EmployeeDemographics 
--(EmployeeID INT,
--FirstName VARCHAR(50),
--LastName VARCHAR(50),
--AGE INT,
--GENDER VARCHAR(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID INT,
--JobTitle VARCHAR(50),
--Salary INT)


--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')


--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

/*
top, distinct , avg, min , max, As , count
*/

select Firstname, lastname , age
from employeedemographics;

select top  5 *
from employeedemographics;

Select distinct EmployeeID
from  employeedemographics

Select count(Distinct(GENDER)) as GenderCount
from  employeedemographics

select count(lastname) as LastNameCount
from  employeedemographics

Select avg(salary) as AvgSalary
from EmployeeSalary;

Select MIN(salary) as MinSalary
from EmployeeSalary;


Select Max(salary) as MaxSalary
from EmployeeSalary;


--select *
--from SQLTUTORIAL.dbo.EmployeeSalary NOT WORKING
 
--  */ where statement 
--  < ,> <> , like , null, = ,and ,Or, not null , In
--  /*

 Select *
 from EmployeeDemographics 
 where FirstName = 'jim';

 Select *
 from EmployeeDemographics 
 where FirstName <> 'jim';

  Select *
 from EmployeeDemographics 
 where age > 30;

  Select *
 from EmployeeDemographics 
 where age >= 30;

 Select *
 from EmployeeDemographics 
 where age <= 30;

 Select *
 from EmployeeDemographics 
 where age <= 30 and Gender = 'male';

 Select *
 from EmployeeDemographics 
 where age <= 30 or Gender = 'male';

  Select *
 from EmployeeDemographics 
 where  LastName like 's%';

 Select *
 from EmployeeDemographics 
 where  LastName like '%s%';

 Select *
 from EmployeeDemographics 
 where  LastName like 'S%ott%';


 Select *
 from EmployeeDemographics 
 where FirstName is null;

 Select *
 from EmployeeDemographics 
 where FirstName is not null;


 Select *
 from EmployeeDemographics 
 where FirstName In( 'jim' ,'Michael');


 --*/ Group by , order by 
 --/*

 select gender , age ,count(gender) as count
 from employeedemographics 
 group by gender, age

 select gender , age ,count(gender) as count
 from employeedemographics
 where age > 30
 group by gender , age

 select gender , count(gender) as CountGender
 from employeedemographics
 where age > 31
 group by gender
 order by count(gender); 

 select * 
 from employeedemographics 
 Order by age desc , gender

  --/* joins/*

  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  
 Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeSalary]
  
  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  inner join [SQL TUTORIAL].[dbo].[EmployeeSalary]
  on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  
  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  Full outer join [SQL TUTORIAL].[dbo].[EmployeeSalary]
  on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  Full outer join [SQL TUTORIAL].[dbo].[EmployeeSalary]
  on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

  --Table 1 Insert:
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Table 3 Query:
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

--Table 3 Insert:
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')
 

  --*/ unions/*


  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics] full outer join 
  [SQL TUTORIAL].[dbo].[WareHouseEmployeeDemographics]
  on EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID 

  
  Select * 
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics] union
   Select * 
  FROM [SQL TUTORIAL].[dbo].[WareHouseEmployeeDemographics]
  


  Select EmployeeID, FirstName, AGE
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics] union
   Select   EmployeeID ,Jobtitle ,salary
  FROM [SQL TUTORIAL].[dbo].[EmployeeSalary]
  
  --*/ Case Statement/*

  Select Firstname , Lastname, age,
  case when age > 30 then 'old' else 'young' 
  End AS status 
  From [SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  where age is not null
  order by age


  Select Firstname , Lastname, age,
  case when age > 30 then 'old'
  when age Between 27 and 30 then 'young' else 'baby'
  End AS status 
  From [SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  where age is not null
  order by age


  Select FirstName, LastName,Jobtitle, Salary,
  Case 
  when jobtitle = 'salesmen' then Salary + (Salary * .10)
  when jobtitle = 'Accountant' then Salary + (Salary * .05)
  when jobtitle = 'HR' then Salary + (Salary * .000001)
  Else Salary + (Salary * .03)
  End AS Salary_After_Raise
  FROM [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  join [SQL TUTORIAL].[dbo].[EmployeeSalary]
  on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  
  --*/ Having Clause /*

  Select jobtitle , AVG(salary)  AS AVG_SALARY
  from  [SQL TUTORIAL].[dbo].[EmployeeDemographics]
  join  [SQL TUTORIAL].[dbo].[EmployeeSalary]
  on  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
  group by JobTitle 
  having avg(salary) > 45000
  order by avg(Salary);

  --*/ Updating/Deleting data/*

  Select * 
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics]

  Update [SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  set EmployeeID = 1012
  where Firstname = 'Holly' and LastName = 'Flax';

  Update [SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  set Age = 31 , GENDER = 'Female'
  where Firstname = 'Holly' and LastName = 'Flax';


  Delete from[SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  where EmployeeID = 1005;

  Insert into EmployeeDemographics VALUES
  (1005, 'Toby', 'Flenderson', 32, 'Male')

  Delete from[SQL TUTORIAL].[dbo].[EmployeeDemographics] 
  where EmployeeID = 1004;

  --*/Aliasing/*

  Select * 
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics]

  select Firstname + '  ' + lastname as Full_Name
  from  [SQL TUTORIAL].[dbo].[EmployeeDemographics]


  Select Avg(Age)  AvgAge 
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics]

  Select Demo.EmployeeID
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics] as demo   



  Select Demo.EmployeeID , sal.Salary
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics] as demo  
  join [SQL TUTORIAL].[dbo].[EmployeeSalary] as sal
  on demo.EmployeeID = sal.EmployeeID


  --when Aliasing it shouldnt look like this
  Select a.EmployeeID , a.Firstname , a.Firstname , b.jobtitle , c.Age
  from [SQL TUTORIAL].[dbo].[EmployeeDemographics]  a
  Left join [SQL TUTORIAL].[dbo].[EmployeeSalary]  b
  ON a.EmployeeID = b.EmployeeID
  left join [SQL TUTORIAL].[dbo].[WareHouseEmployeeDemographics] c
  on a.EmployeeID = c.EmployeeID

  --it should look like this

  Select demo.EmployeeId , Demo.Firstname , sal.jobtitle, ware.Age 
  from  [SQL TUTORIAL].[dbo].[EmployeeDemographics] demo
  Left Join  [SQL TUTORIAL].[dbo].[EmployeeSalary] as sal
  on demo.EmployeeID = sal.EmployeeID
  left join  [SQL TUTORIAL].[dbo].[WareHouseEmployeeDemographics] ware
  on demo.EmployeeID = ware.EmployeeID

 --*/ Partition by //*

 select firstname , Lastname ,Gender , Salary,
 count(Gender) over (Partition by gender) as TotalGender
 from [SQL TUTORIAL].[dbo].[EmployeeDemographics] dem
 join [SQL TUTORIAL].[dbo].[EmployeeSalary]  sal
 on dem.EmployeeID = sal.EmployeeID

  --*/ CTE /*

  With CTE_Employee as ( select firstname , Lastname ,Gender , Salary
 ,count(Gender) over (Partition by gender) as TotalGender
 , Avg(salary) over (partition by Gender) as AVGSalary
 from [SQL TUTORIAL].[dbo].[EmployeeDemographics] emp
 join [SQL TUTORIAL].[dbo].[EmployeeSalary]  sal
 on emp.EmployeeID = sal.EmployeeID
 where Salary > '45000'
 )  select * from CTE_Employee;

 With CTE_Employee as ( select firstname , Lastname ,Gender , Salary
 ,count(Gender) over (Partition by gender) as TotalGender
 , Avg(salary) over (partition by Gender) as AVGSalary
 from [SQL TUTORIAL].[dbo].[EmployeeDemographics] emp
 join [SQL TUTORIAL].[dbo].[EmployeeSalary]  sal
 on emp.EmployeeID = sal.EmployeeID
 where Salary > '45000'
 )  select Firstname , AvgSalary 
 from  CTE_Employee;

 --*/ Temp table/*

 create table #temp_Employee (EmployeeID int, JobTitle varchar(100), Salary int)

 select *  from #temp_Employee;

 insert into #temp_Employee values (
 '1001' ,'HR' , '45000')

 insert into #temp_Employee
 select *
 from  [SQL TUTORIAL].[dbo].[EmployeeSalary] 

 create table #temp_Employee2(
 jobtitle varchar(50),
 EmployeesPerjob int,
 AvgAge int,
 AvgSalary int)


 insert into #temp_Employee2
 Select jobtitle , count(jobtitle) , avg(age) , avg(salary)
 from  [SQL TUTORIAL].[dbo].[EmployeeDemographics] emp
 join [SQL TUTORIAL].[dbo].[EmployeeSalary] sal
 on emp.EmployeeID =sal.EmployeeID
 group by JobTitle

 Select * from #temp_Employee2

 
 /*

String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

	



-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors;


/*
Stored Procedures

*/


CREATE PROCEDURE  TEST
AS
Select * from EmployeeDemographics

exec test




CREATE PROCEDURE   Temp_Employee
AS
Create table #temp_employee(
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM  [SQL TUTORIAL].[dbo].[EmployeeDemographics] emp
JOIN  [SQL TUTORIAL].[dbo].[EmployeeSalary]  sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #temp_employee
GO;



--*/Sub Quries/*


Select *
from EmployeeSalary

--Subquery in select 

Select EmployeeID, Salary, (Select AVG(Salary)
from EmployeeSalary)  as AllAvgSalary
from EmployeeSalary;

--how to do it with partition by 
Select EmployeeID, Salary, AVG(salary) over ()   as AllAvgSalary
from EmployeeSalary;

--Why Group by doesnt work

Select EmployeeID, Salary, AVG(salary) as AllAvgSalary
from EmployeeSalary
Group by EmployeeID,Salary
Order by 1, 2;

--Subquery in Where

select EmployeeID, Jobtitle, salary
from EmployeeSalary 
where EmployeeID in ( select EmployeeID from EmployeeDemographics where age > 30)

----THE END----
