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

