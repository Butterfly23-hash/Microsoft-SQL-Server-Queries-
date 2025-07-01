# Microsoft-SQL-Server-Quering practice from YouTube tutorial 

## Features
- `EmployeeDemographics` table with personal details
- `EmployeeSalary` table with job titles and salaries
- Ready for JOIN, UNION, and aggregation queries

## Tables

### EmployeeDemographics
```sql
CREATE TABLE EmployeeDemographics (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(50)
);
```

### EmployeeSalary
```sql
CREATE TABLE EmployeeSalary (
    EmployeeID INT,
    JobTitle VARCHAR(50),
    Salary INT
);
```

## Sample Query
```sql
SELECT 
  d.FirstName, 
  d.LastName, 
  s.JobTitle, 
  s.Salary
FROM EmployeeDemographics d
JOIN EmployeeSalary s ON d.EmployeeID = s.EmployeeID;
```

#Usage
Run these scripts in SQL Server Management Studio or Azure Data Studio. Modify the data or structure to match your learning goals.

Feel free to fork this repo and share improvements or variations on the schema.
