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











