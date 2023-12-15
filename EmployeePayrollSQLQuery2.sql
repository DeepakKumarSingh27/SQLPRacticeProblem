create Database Employee_payroll;
use Employee_payroll;
/*Employee Table*/
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Address VARCHAR(255),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    HireDate DATE,
    DesignationID INT,
    DepartmentID INT,
   
);

/*Department Table*/
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);



/*Designation Table*/
CREATE TABLE Designation(
DesignationID int PRIMARY KEY,
DesignationName varchar(255)
);

/*Salary Table*/
CREATE TABLE Salary(
   SalaryId int PRIMARY KEY,
   EmployeeID int,
   FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
   PayrollPeriodID int,
   FOREIGN KEY (PayrollPeriodID) REFERENCES PayrollPeriod(PayrollPeriodID),
   BaseSalary BIGINT,

);
SELECT * FROM Salary;

/*payrollPeriod*/
CREATE TABLE PayrollPeriod(
PayrollPeriodID int PRIMARY KEY,
StartDate Date,
EndDate Date
);

/*Attendance*/

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockIn TIME,
    ClockOut TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

Alter Table Attendance
Add FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
/*Leave*/

CREATE TABLE Leaves (
    LeaveID INT PRIMARY KEY,
    EmployeeID INT,
    LeaveType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

ALTER TABLE Leaves
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
select * from Leaves;
/*Training*/
CREATE TABLE Training (
TrainingID int PRIMARY KEY,
TrainerName varchar(50),
StartDate Date,
EndDate Date,
EmployeeID int,
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

SELECT * FROM Designation;

SELECT * FROM PayrollPeriod;

ALTER TABLE Employee 
ADD FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID);

ALTER TABLE Department
ADD 
 FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID);
SELECT * FROM  Department;

ALTER TABLE Employee 
ADD FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);


 Employe
   FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
   PayrollPeriodID int,
   FOREIGN KEY (PayrollPeriodID) REFERENCES PayrollPeriod(PayrollPeriodID),

SELECT * FROM Employee;
SELECT * FROM Department;


INSERT INTO Department(DepartmentID,DepartmentName,ManagerID)
values(1,'Accounting',101);

SElect * from Employee;


INSERT INTO Employee(EmployeeID,FirstName,LastName,DateOfBirth,Gender,Address,ContactNumber,Email,HireDate,DesignationID,DepartmentID)
values(1,'Deepak','Singh','01-01-2023','m','USA','7367828168','dksingh@gmail.com','01-02-2023',1,101);

Select * from Training;

Insert into Training(TrainingID,TrainserName,StartDate,EndDate,EmployeeID)
values(1,'Raghu','01-01-2022','01-01-2023',1);

INSERT INTO Training (TrainingID, TrainerName,StartDate, EndDate, EmployeeID)
VALUES
    (1, 'Joker', '2023-01-10', '2023-01-15', 1001),
    (2,'Janny', '2023-02-05', '2023-02-07', 1002),
    (3,'Johnson', '2023-03-20', '2023-03-25', 1003);

	

	ALTER TABLE Training
    RENAME COLUMN TrainserName TO TrainerName;

	INSERT INTO Employee (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Address, ContactNumber, Email, HireDate, DesignationID, DepartmentID)
VALUES
    (1007, 'Deewakar', 'Doe', '1990-05-15', 'M', '123 Main St', '123-456-7890', 'john@example.com', '2022-01-15', 3, 3),
    (1008, 'Nitu', 'Smith', '1995-09-25', 'm', '456 Oak Ave', '987-654-3210', 'jane@example.com', '2022-03-20', 3, 3),
    (1009, 'Nilesh', 'Johnson', '1988-11-10', 'm', '789 Elm St', '111-222-3333', 'mike@example.com', '2022-02-10', 3, 3);

	select * from Employee;
	
	select * from Training;
	INSERT INTO Training(TrainingID,TrainerName,StartDate,EndDate,EmployeeID)
	VALUES
	(2,'Satish','2017-05-08','2023-02-10',1002),
	(3,'Abishek','2016-05-08','2023-02-10',1003),
	(4,'Vishal','2012-05-09','2023-02-10',1004);

	Select * from Attendance;
	INSERT INTO Attendance(AttendanceID,EmployeeID,AttendanceDate,ClockIn,ClockOut)
	VALUES
	(2,1001,'2023-12-12','10:20','6:40'),
	(3,1001,'2023-12-12','10:20','6:50'),
	(4,1001,'2023-12-12','10:20','6:00'),
	(5,1001,'2023-12-12','10:30','6:20'),
	(6,1001,'2023-12-12','10:40','6:10');
	TRUNCATE TABLE Training;
	Select * from Department;
	INSERT INTO Department(DepartmentID,DepartmentName,ManagerID)
	VALUES
	(1,'Accounting',1001),
	(2,'Seals',1001),
	(3,'Riskmanagement',1001),
	(4,'Production',1001),
	(5,'it',1001);
	
	Select * from Designation;
	INSERT INTO Designation(DesignationID,DesignationName)values(5,'CEO');

	INSERT INTO Department(DepartmentID,DepartmentName,ManagerID)
	VALUES(1,'Accounting',1);

	ALTER TABLE Employee
	DROP COLUMN DepartmentID;
	SELECT * FROM Department;
	SELECT * FROM Designation;
	desc Designation;
	SELECT * from Employee;
	INSERT INTO Leaves(LeaveID,EmployeeID,LeaveType,StartDate,EndDate)VALUES(1,1,'HalfDay','2008-11-11','2023-11-11');
	ALTER TABLE Employee
	DROP COLUMN DepartmentID;

	SELECT * FROM Employee_payroll.*
	FROM Employee_Parroll


	Select * from Employee;
	Select * from Employee;
	insert into Employee(EmployeeID,FirstName,LastName,DateOfBirth,Gender,Address,ContactNumber,Email,HireDate,DesignationID,DepartmentID)
	values(1,'Deepak','Singh','27-05-2020','m','Btm layout','6203217025','abc@gmail.com','28-04-2021','1','1');


	Select * from Leaves;
	INSERT INTO Leaves(LeaveID,EmployeeID,LeaveType,StartDate,EndDate)
	VALUES
	(6,1005,'Annual','2021-10-09','2022-10-16');

	SELECT * FROM PayrollPeriod;
	INSERT INTO PayrollPeriod(PayrollPeriodID,StartDate,EndDate)
	VALUES
	(1,'2020-09-09','2020-09-10'),
	(2,'2021-10-03','2021-09-10'),
	(3,'2020-09-13','2020-10-18'),
	(4,'2022-09-09','2023-09-10'),
	(5,'2023-09-09','2023-12-12');

	SELECT * FROM Training;

	SELECT * FROM Salary;
	INSERT INTO Salary(SalaryId,EmployeeID,PayrollPeriodID,BaseSalary)
	VALUES
	(2,1002,2,2000),
	(3,1003,3,2000),
	(4,1004,4,2000),
	(5,1005,5,4000);


	ALTER TABLE Department
	ADD  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
	select * from Department;

	/*Queries*/
	/*Query to display last 5 Records from table*/
	Select * from Employee;

   SELECT TOP 5 *
   FROM Employee
   ORDER BY EmployeeID DESC;

   /*Query to fetch last record from the table*/

   SELECT Employee.*
   FROM Employee
   Where EmployeeID = 9;
   SELECT * FROM Employee;

   SELECT TOP 1 *
  FROM Employee
  ORDER BY EmployeeID DESC;

  /*Query to fetch monthly Salary of Employee if annual salary is given*/

  SELECT BaseSalary / 12 AS MonthlySalary
  FROM Salary;

  select * from Salary;

  /*Display Even rows in Employee table*/

  SELECT * 
  FROM Employee
  WHERE EmployeeID % 2=0;

  SElect * from Employee;

  /*Display last 50% records from Employee table*/

  SELECT LENGTH(EmployeeID)/2 
  FROM Employee
  ORDER BY EmployeeID DESC;


  SELECT * FROM
(SELECT top 50 percent * FROM Employee ORDER BY EmployeeID DESC)
 ORDER BY EmployeeID;

 select Top(50) * from Employee Orderby(EmployeeID) desc;
 select * from Employee;

 SELECT TOP((SELECT COUNT(*) FROM Employee) / 2);

 SELECT *
FROM Employee
ORDER BY EmployeeID DESC
OFFSET (SELECT COUNT(*) FROM Employee) / 2 ROWS
FETCH NEXT (SELECT COUNT(*) FROM Employee) / 2 ROWS ONLY;


select * from Employee

where EmployeeID <= (select count(*) from Employee)/2;

/*get distinct records from the table without using distinct keyword+*/

SELECT EmployeeID
FROM Employee
GROUP BY EmployeeID;

/*add the email validation using only one query*/

SELECT *
FROM Employee
WHERE Email LIKE '%@%.%';


/*JOINS*/


SELECT E.FirstName,L.LeaveType
FROM Employee AS E
INNER JOIN Leaves L
ON E.EmployeeID = L.EmployeeID;

SELECT * FROM Employee AS E
LEFT JOIN Leaves AS L
ON E.EmployeeID = L.EmployeeID;

SELECT * FROM Employee AS E
RIGHT JOIN Leaves AS L
ON E.EmployeeID = L.EmployeeID;

SELECT * FROM Employee AS E
fULL OUTER JOIN Leaves AS L
ON E.EmployeeID = L.EmployeeID;

SELECT *
FROM Employee AS E1
JOIN Employee AS E2
ON E1.FirstName = E2.FirstName;

SELECT E1.FirstName,E2.Address
FROM Employee AS E1
JOIN Employee AS E2
ON E1.FirstName = E2.FirstName;

SHOW tables;

/*INNER JOIN query:

Retrieve employee information along with their department names and designations*/

select * from Employee;
SELECT d.DepartmentName, des.DesignationName
FROM Employee AS e
INNER JOIN Department d ON e.DepartmentID = d.DepartmentID
INNER JOIN Designation des ON e.DesignationID = des.DesignationID;

/*LEFT JOIN query:
Retrieve all employees and their corresponding salaries, if available*/
SELECT E.*,S.BaseSalary
FROM Employee AS E
LEFT JOIN Salary AS S
ON E.EmployeeID = S.EmployeeID;

/*RIGHT JOIN query:

Retrieve all salaries and the corresponding employee names, if available*/

SELECT E.FirstName,E.LastName,S.BaseSalary
FROM Employee AS E
RIGHT JOIN Salary AS S
ON E.EmployeeID = S.EmployeeID;

/*Retrieve all employees and their salaries, including unmatched records from both table*/


SELECT E.*,S.*
FROM Employee AS E
FULL OUTER JOIN Salary AS S
ON E.EmployeeID = S.EmployeeID;

/*Retrieve the names of employees and their respective managers*/
SELECT E1.FirstName,E1.LastName,E2.EmployeeID
FROM Employee AS E1
JOIN Employee AS E2
ON E1.FirstName = E2.FirstName;
Select * from Salary;


/*Store procedure Error */
USE Employee_payroll
GO
-- Basic example of TRY...CATCH
 
BEGIN TRY
-- Generate a divide-by-zero error  
  SELECT
    1 / 0 AS Error;
END TRY
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_SEVERITY() AS ErrorSeverity,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH;
GO

-- Table to record errors
 
CREATE TABLE DB_Errors
         (ErrorID        INT IDENTITY(1, 1),
          UserName       VARCHAR(100),
          ErrorNumber    INT,
          ErrorState     INT,
          ErrorSeverity  INT,
          ErrorLine      INT,
          ErrorProcedure VARCHAR(MAX),
          ErrorMessage   VARCHAR(MAX),
          ErrorDateTime  DATETIME)
GO


ALTER PROCEDURE DB_Errors @employeeid INT,
                   @productid  INT,
                   @quantity   SMALLINT,
                   @saleid     UNIQUEIDENTIFIER OUTPUT
AS
SET @saleid = NEWID()
  BEGIN TRY
    INSERT INTO Sales.Sales
         SELECT
           @saleid,
           @productid,
           @employeeid,
           @quantity
  END TRY
  BEGIN CATCH
    INSERT INTO dbo.DB_Errors
    VALUES
  (SUSER_SNAME(),
   ERROR_NUMBER(),
   ERROR_STATE(),
   ERROR_SEVERITY(),
   ERROR_LINE(),
   ERROR_PROCEDURE(),
   ERROR_MESSAGE(),
   GETDATE());
  END CATCH
GO


select * from Employee

CREATE PROCEDURE SpGetEmployee
AS
BEGIN
select FirstName, Gender from Employee order by FirstName
END

ALTER PROCEDURE SpGetEmployee
AS
BEGIN
select FirstName, Gender from Employee order by FirstName
END

 exec SpGetEmployee;

 CREATE PROCEDURE SpGetEmployeesByGenderAndDept
    @EmployeeID INT,
    @Gender CHAR(1)
 AS
 BEGIN
 SELECT FirstName,Gender,EmployeeID from Employee
 where EmployeeID = @EmployeeID and  Gender = @Gender
 END
 Select * from Employee

 SpGetEmployeesByGenderAndDept 1001,'m'

 sp_helptext SpGetEmployeesByGenderAndDept

 ALTER PROCEDURE SpGetEmployeesByGenderAndDept
    @EmployeeID INT,
    @Gender CHAR(1)
	with Encryption
 AS
 BEGIN
 SELECT FirstName,Gender,EmployeeID from Employee
 where EmployeeID = @EmployeeID and  Gender = @Gender
 END

 CREATE PROCEDURE SpGetEmployeeCountByGender
 @Gender CHAR(1),
 @EmployeeCount INT OUTPUT
 as
 Begin
 SELECT @EmployeeCount = Count(EmployeeID) from Employee where Gender = @Gender
 End

 Declare @TotalCount INT
 Execute SpGetEmployeeCountByGender 'm',@TotalCount OUTPUT
 print @TotalCount


 SELECT Count(*) from Employee;


 sp_depends SpGetEmployeeCountByGender
 

 CREATE PROC spGetTotalCount
 @TotalCount int out
 As
 Begin
 select @TotalCount = Count(EmployeeID) from Employee;
 End

 CREATE PROC spGetTotalCount2
 As
 Begin
  return (select Count(EmployeeID) from Employee);
 End

 Declare @Total int
 Execute @Total = spGetTotalCount2
 print @Total

 spGetTotalCount

 Declare @Total int
 Execute spGetTotalCount @Total out
 print @Total

 CREATE PROC spGetNumberByID1
 @EmployeeID INT,
 @Name varchar(20) out
 as
 Begin
 select @Name = FirstName  from Employee where EmployeeID = @EmployeeID
 End

 Declare @Name varchar(20)
 Execute spGetNumberByID1 1001,@Name out
 print 'Name = '+@Name


 CREATE PROC spGetNumberByID2
 @EmployeeID INT
 as
 Begin
  return (select FirstName  from Employee where EmployeeID = @EmployeeID)
 End


  Declare @Name varchar(20)
 Execute @Name = spGetNumberByID2 1001
 print 'Name = '+@Name

 CREATE DATABASE ERRORHANDLING;
 USE ERRORHANDLING
 CREATE TABLE TBLpRODUCT(PRODUCTID INT PRIMARY KEY,NAME VARCHAR(30),QTYAVAILABLE INT);
 INSERT INTO TBLpRODUCT(PRODUCTID,NAME,QTYAVAILABLE)
 VALUES
 (1,'Laptop',90),
 (2,'Desktops',50);
 select * from TBLpRODUCT;

 CREATE TABLE tblProductSales(productSalesid int primary key,PRODUCTID INT,QuantitySold int);
 INSERT INTO tblProductSales(productSalesid,PRODUCTID,QuantitySold)
 values
 (1,1,10),
 (2,1,10);
 
     ALTER TABLE tblProductSale
	 ADD  FOREIGN KEY (PRODUCTID) REFERENCES TBLpRODUCT(PRODUCTID);

 create procedure spSellproduct
 @PRODUCTID int,
 @QuantityToSell int
 as
 Begin
 --check stock
 Declare @StockAvailable int
 SELECT @StockAvailable = QtyAvailable
 from TBLpRODUCT where PRODUCTID = @PRODUCTID
 if(@StockAvailable < @QuantityToSell)
 Begin
 Raiserror('not enough stock availabe',16,1)
 end
 else
 Begin
 Begin Tran
 Update TBLpRODUCT set QTYAVAILABLE = (QTYAVAILABLE - @QuantityToSell)
 where PRODUCTID = @PRODUCTID

 Declare @MaxProductSalesId int
 select @MaxProductSalesId = case when 
          MAX(ProductSalesID) is null
		  then 0 else Max(ProductSalesId) end
		  from tblProductSales
		  set @MaxProductSalesId = @MaxProductSalesId + 1
		  insert into tblProductSales values (@MaxProductSalesId,@PRODUCTID,@QuantityToSell)
		  commit tran
		  END
END

Execute spSellproduct 1,10

select * from tblProductSales
select * from TBLpRODUCT

create Proc employeeDetails
as
select * from employee
go


create Proc employeeDetails
as
select * from Employee
go
use Employee_payroll
employeeDetails

create Proc empGender
@Gender Char(1)
as
select * from Employee
where Gender = @Gender
go
empGender 'f'
create view frmalEmp
as
select * from Employee
where Gender = 'f'
frmalEmp
select * from frmalEmp;

drop view frmalEmp

declare @val1 int
declare @val2 int
begin try
set @val1 = 8;
set @val2 = @val1/0;
end try
begin catch
print error_message()
end catch



begin try
select EmployeeID + FirstName from Employee
end try
begin catch
print 'cannot add num value with str value'
end catch
go

select * from Employee

Declare @age int;
Begin try
set @age = 60;
print 'Line 1';
print 'Line 2';
IF @age > 40
THROW 5000,'Age is greater then 40',16;
print 'Line 3';
print 'Line 4';
End try
Begin catch
print'Inside the catch block'
print Concat('Error_message()=',Error_message());
print Concat('Error_Line()=',Error_Line());
print Concat('Error_Number()=',Error_Number());
print Concat('Error_Severity()=',Error_Severity());
print Concat('Error_State()=',Error_State());
print Concat('Error_Procedure()=',Error_procedure());
end catch


/*Assuming we want to create a stored procedure to calculate the total salary
for a specific employee based on their EmployeeID and a provided PayrollPeriodID.(handle exceptions in SP)*/

CREATE PROCEDURE CalculateTotalSalary
    @EmployeeID INT,
    @PayrollPeriodID INT,
    @TotalSalary DECIMAL OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT @TotalSalary = SUM(BasicSalary) 
		AS TotalSalary
        FROM Salary
        WHERE EmployeeID = @EmployeeID
        AND Salaryid = @PayrollPeriodID;

        IF @TotalSalary IS NULL
            SET @TotalSalary = 0;
    END TRY
    BEGIN CATCH
        SET @TotalSalary = -1;
    END CATCH
END;

/*  Write a Stored Procedure to validate username
and password raise error if the data already present.*/

CREATE PROCEDURE ValidateUsernamePassword
    @Username VARCHAR(50),
    @Password VARCHAR(50)
AS
BEGIN
    DECLARE @ExistingCount INT;
    SELECT @ExistingCount = COUNT(*)
    FROM Employee
    WHERE Username = @Username AND Password = @Password;

    -- If the combination exists, raise an error
    IF @ExistingCount > 0
    BEGIN
        RAISERROR('Username and password combination already exists!', 16, 1);
        RETURN;
    END
	END
	/*create a stored procedure that will take the
Employee ID of a person and checks if it is in the table. There are two
conditions*/

CREATE PROCEDURE CheckEmployeeExistence
    @EmployeeID INT,
    @Exists int OUTPUT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employee WHERE EmployeeID = @EmployeeID)
        SET @Exists = 1; -- EmployeeID exists in the table
    ELSE
        SET @Exists = 0; -- EmployeeID does not exist in the table
END;
CheckEmployeeExistence 1001

Declare @Exist int
Execute @Exist = CheckEmployeeExistence 1001;
print @Exist

/*Functions*/
--Query using the CalculateAge function to retrieve the age of employees
select EmployeeID from Employee;
--Query using a custom function to calculate the total salary for an employee
CREATE PROC calculateTotalSalary1
as
begin 
Select Sum(BaseSalary) from Salary;
END;
calculateTotalSalary1

--Query using a function to get the number of employees in a specific department
select Count(DepartmentID) 
from Department
where DepartmentName = 'Accounting';
select * from Department
--Query using a function to get the number of leaves taken by an employee
select * from Leaves
select count(EmployeeID)
from Leaves
-- views
-- theory ->
/*Views in SQL are kind of virtual tables. A view also has rows and columns as they are in a real table in the database.
We can create a view by selecting fields from one or more tables present in the database.
A View can either have all the rows of a table or specific rows based on certain condition.
In this article we will learn about creating , deleting and updating Views. 
Sample Tables:
example of views->
CREATE VIEW DetailsView AS
SELECT NAME, ADDRESS
FROM StudentDetails
WHERE S_ID < 5;
execution of view ->
SELECT * FROM DetailsView;
CREATE VIEW StudentNames AS
SELECT S_ID, NAME
FROM StudentDetails
ORDER BY NAME;
SELECT * FROM StudentNames;
Creating View from multiple tables: In this example we will create a View named MarksView from two tables StudentDetails and StudentMarks. 
To create a View from multiple tables we can simply include multiple tables in the SELECT statement. Query:
CREATE VIEW MarksView AS
SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;
To display data of View MarksView:
SELECT * FROM MarksView;
LISTING ALL VIEWS IN A DATABASE

We can list View using the SHOW FULL TABLES statement or using the information_schema table. 
A View can be created from a single table or multiple tables. 

Syntax (Using SHOW FULL TABLES):

use "database_name";
show full tables where table_type like "%VIEW";
Syntax (Using information_schema) :

select * from information_schema.views where table_schema = "database_name";

*/

select * from Employee
CREATE TABLE emp(id int,EmpName varchar(20),City varchar(20),salary int)
insert into emp(id,EmpName,City,salary)
values
(1,'Tom','ABC',7000),
(2,'Emma','PQR',8000),
(3,'jeni','ZYW',500),
(4,'David','FGH',7500),
(5,'Henry','PQR',9500),
(6,'Will','ABC',6700);

CREATE VIEW [EmployeeABC] AS
select EmpName,City
from emp
where City = 'ABC';

select * from EmployeeABC

CREATE VIEW [SalaryAbove] AS
select EmpName,City,salary
from emp
where salary > 7000;

select * from SalaryAbove

drop view SalaryAbove
/*Index*/
CREATE TABLE Employees1(id int,Name varchar(20),Gender varchar(20),salary int)

insert into Employees1(id,Name,Gender,salary)
values
(1,'Sam','Male',2500),
(2,'Pam','Femal',6500),
(3,'John','Male',4500),
(4,'Sara','Femal',5500),
(5,'Todda','male',3100),
(6,'Will','male',6700);
select * from Employees1

select * from tblEmployees

create index IX_tblEmployees_salary
On tblEmployees (salary ASC)
sp_Helpindex tblEmployees
drop index tblEmployees.IX_tblEmployees_salary


exec sp_Helpindex tblEmployees

create index IX_tblEmployees_Gender_salary
On tblEmployees (Gender DESC,salary ASC)

/* index practice problems
Query using the IX_Employee_EmployeeID index to retrieve an employee by their ID
*/
CREATE INDEX IX_EmpByID
ON Employee(EmployeeID)
IX_EmpByID
--Query using an index on the StartDate column to improve performance in searching for leaves within a specific date range

Select * from Leaves


CREATE INDEX IXSearch_date
ON 
 Leaves( StartDate '2022-8-09' AND '2020-10-10');
 CREATE INDEX IX_Leave_StartDate ON Leave (StartDate);

CREATE INDEX IX_Leave_StartDate ON Leaves (StartDate);

--Query using an index on the DepartmentID column to optimize filtering employees by their department
CREATE INDEX IXDepartmentID
On Department(DepartmentID)
select * from Department

--Query using an index on the NetSalary column to speed up searching for employees with specific salary ranges

CREATE INDEX IX_NetSalary
ON Salary(BaseSalary)
select * from Employee
--Query using an index on the DesignationName column to quickly search for employees with a specific job designation
CREATE INDEX IXDesignationID
ON Designation(DesignationName)

select * from Designation
/*Views practice problem*/
--Query using the EmployeeDetails view to get employee details along with department and manager information
select * from Employee
CREATE VIEW [EmployeeDetails1] AS
select EmployeeID,DesignationID,DepartmentID
from Employee


CREATE VIEW [SalaryAbove] AS
select EmpName,City,salary
from emp
where salary > 7000;

select * from EmployeeDetails1

--Query using a view to get employees who have taken leaves within a specific date range
CREATE VIEW [CountLeavs] AS
SELECT EmployeeID
from Leaves
where StartDate between '2022-08-09' AND '2022-08-10';


select * from CountLeavs

--Query using a view to get employees with their respective department and designation names

select * from EMpDetails
CREATE VIEW EMpDetails AS
Select DepartmentID,DepartmentName
from Department

--Query using a view to get employees who are managers along with their department names
select * from DETAILSEMP1
CREATE VIEW DETAILSEMP1 AS
SELECT ManagerID,DepartmentName
from Department

/*Subqueries*/
--Query to get employees who have salaries greater than the average salary in their department
select * from Salary
select * from Department
select BaseSalary
from  Salary
where BaseSalary > (select Avg(BaseSalary)
                      from Salary);

--Query to retrieve employees who have taken leaves longer than the average leave duration
Select * from Leaves
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(DATEDIFF(DAY, l.StartDate, l.EndDate) + 1) AS TotalLeaveDays
FROM Employee e
JOIN Leaves l ON e.EmployeeID = l.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING SUM(DATEDIFF(DAY, l.StartDate, l.EndDate) + 1) > (
    SELECT AVG(DATEDIFF(DAY, StartDate, EndDate) + 1)
    FROM Leaves
)

--Query to get employees whose salary is within 10% of the highest salary in their department

select MAX(BaseSalary) * 0.01
from Salary
where BaseSalary >= (SELECT BaseSalary
                     FROM Salary
                     );
select * from Salary

SELECT s.EmployeeID, s.BaseSalary, s.SalaryId
FROM Salary s
WHERE s.BaseSalary >= 0.9 * (
    SELECT MAX(s2.BaseSalary)
    FROM Salary s2
    WHERE s2.SalaryId = s.SalaryId
);

/*Queries for Triggers:
Trigger to automatically update the HireDate of an employee when their record is inserted*/

select * from tblEmployees

CREATE table tbleEmployee(id int,Name varchar(20),Salary int,Gender varchar(20),Department int)
insert into tbleEmployee(id,Name,Salary,Gender,Department)
values
(1,'john',5000,'male',3),
(2, 'Emily', 60000, 'Female', 102),
    (3, 'David', 55000, 'Male', 101),
    -- Add more rows as needed
    (4, 'Sophia', 58000, 'Female', 103);

	create table tblEmployeeAudit(id int, AuditDate Date)
create trigger tr_tblEmployee_forInsert
ON tblEmployee
for insert
AS
BEgin
Declare @Id int,
Declare @Id = Id from Inseted
insert into tblEmployeeAudit
values('New employee with Id = ' + CAST(@Id as nvarchar(5)) + 'is added at '+CAST()


CREATE TABLE [dbo].[Employee1](
[Emp_ID] [int] IDENTITY(1,1) primary key,
[Emp_name][varchar](100) NOT NULL,
[EMP_Sal][decimal](10,2) NOT NULL,
[Emp_DOB][datetime]NOT NULL,
[Emp_Experince][int] NOT NULL,
[Record_DateTime][datetime]Not Null);
select * from Employee1

CREATE TRIGGER [dbo].[trigerAfterInsert] ON[dbo]. [Employee1]
AFTER INSERT
AS
declare @emp_dob varchar(20);
declare @Age INT;
declare @Emp_Experience INT;
select @emp_dob=i.Emp_DOB from inserted i;
select @Emp_Experience=i.Emp_Experince from inserted i;
set @Age=YEAR(GETDATE()) - YEAR(@emp_dob);
IF @Age > 25
BEGIN
Print 'Not Eligible: Age is greater than 25'
RollBack
END
ELSE IF @Emp_Experience < 5
BEGIN
Print 'Not Eligible: Experience is less than 5'
RollBack
END
ELSE
print 'Employee details inserted successfully';
END
--Trigger to automatically update the HireDate of an employee when their record is inserted

CREATE TRIGGER trg_UpdateHireDate
ON Employee
AFTER INSERT
AS
BEGIN
    UPDATE Employee
    SET HireDate = GETDATE() -- Assuming HireDate is a DATETIME column
    WHERE EmployeeID IN (SELECT EmployeeID FROM inserted);
END;
select * from Employee
--Trigger to update the ModifiedDate of an employee when their record is updated

CREATE TRIGGER trg_UpdateModifiedDate
ON Employee
AFTER UPDATE
AS
BEGIN
    UPDATE Employee
    SET DateOfBirth = GETDATE() 
    WHERE EmployeeID IN (SELECT EmployeeID FROM inserted);
END;

--Trigger to delete salary records of an employee when they are deleted from the Employee table
CREATE TRIGGER trg_DeleteSalaryRecords
ON Salary
AFTER DELETE
AS
BEGIN
    DELETE FROM Salary
    WHERE EmployeeID IN (SELECT SalaryId FROM deleted);
END;

--Trigger to enforce a constraint where the EndDate of a leave must be greater than or equal to the StartDate
select * from Leaves

CREATE TRIGGER trg_EnforceEndDateConstraint
ON Leaves
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT * FROM inserted WHERE EndDate < StartDate
    )
    BEGIN
        RAISERROR ('EndDate must be greater than or equal to StartDate', 16, 1)
        ROLLBACK TRANSACTION;
    END;
END;






