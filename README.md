Perform All Sql Related Task ->
																									
																									
																									
																									
Employee Payroll Database																									
																									
Tables:																									
																									
Employee:																									
																									
Description: This table stores information about employees.																									
Columns:																									
EmployeeID (Primary Key): Unique identifier for each employee.																									
FirstName: First name of the employee.																									
LastName: Last name of the employee.																									
Date of Birth: Date of birth of the employee.																									
Gender: Gender of the employee.																									
Address: Address of the employee.																									
ContactNumber: Contact number of the employee.																									
Email: Email address of the employee.																									
HireDate: Date when the employee was hired.																									
DesignationID (Foreign Key): References the Designation table's DesignationID to link the employee to a specific designation.																									
DepartmentID(Foreign key): References the Department table DepartmentID.																									
																									
Department:																									
																									
Description: This table stores information about different departments within the organization.																									
Columns:																									
DepartmentID (Primary Key): Unique identifier for each department.																									
DepartmentName: The name of the department.																									
ManagerID (Foreign Key): EmployeeID of the  department manager.																									
																									
Designation:																									
																									
Description: This table stores information about different job designations or positions within the organization.																									
Columns:																									
DesignationID (Primary Key): Unique identifier for each job designation.																									
DesignationName: The name of the job designation.																									
																									
Salary:																									
																									
Description: This table stores salary-related information for each employee.																									
Columns:																									
SalaryID (Primary Key): Unique identifier for each salary record.																									
EmployeeID (Foreign Key): References the Employee table's EmployeeID to link the salary to a specific employee.																									
PayrollPeriodID (Foreign Key): References the PayrollPeriod table's PayrollPeriodID to link the salary to a specific payroll period.																									
BasicSalary: The basic salary of the employee.																									
Allowances: Additional allowances or bonuses.																									
Deductions: Any deductions made from the salary (taxes, insurance, etc.).																									
NetSalary: The net salary (calculated as Basic Salary + Allowances - Deductions).																									
																									
PayrollPeriod:																									
																									
Description: This table keeps track of different payroll periods for which salaries are calculated and paid.																									
Columns:																									
PayrollPeriod (Primary Key): Unique identifier for each payroll period.																									
StartDate: The start date of the payroll period.																									
EndDate: The end date of the payroll period.																									
																									
Attendance:																									
																									
Description: This table keeps track of employees' attendance records.																									
Columns:																									
AttendanceID (Primary Key): Unique identifier for each attendance record.																									
EmployeeID (Foreign Key): References the Employee table's EmployeeID to link the attendance record to a specific employee.																									
AttendanceDate: The date for which the attendance is recorded.																									
ClockIn: The time the employee clocked in for the day.																									
ClockOut: The time the employee clocked out for the day.																									
																									
Leave:																									
																									
Description: This table stores information about employee leaves.																									
Columns:																									
LeaveID (Primary Key): Unique identifier for each leave record.																									
EmployeeID (Foreign Key): References the Employee table's EmployeeID to link the leave record to a specific employee.																									
LeaveType: The type of leave (e.g., sick leave, vacation).																									
StartDate: The starting date of the leave.																									
EndDate: The ending date of the leave.																									
																									
Training:																									
																									
Description: This table stores information about employee training programs.																									
Columns:																									
TrainingID (Primary Key): Unique identifier for each training program.																									
TrainingName: The name of the training program.																									
Description: Description of the training program.																									
Trainer: Name of the trainer or instructor.																									
StartDate: The starting date of the training.																									
EndDate: The ending date of the training.																									
EmployeeID (Foreign Key): References the Employee table's EmployeeID to link employees attending the training.																									
																									
																									
																									
Basic Queries:																									
																									
1																									
Query to display last 5 Records from table																									
2																									
Query to fetch last record from the table																									
3																									
Query to fetch monthly Salary of Employee if																									
annual salary is given																									
4																									
Display Even rows in Employee table																									
5																									
Display last 50% records from Employee table																									
6																									
get distinct records from the table without																									
using distinct keyword+																									
7																									
add the email validation using only one query																									
																									
																									
																									
																									
Joins																									
																									
INNER JOIN query:																									
																									
Retrieve employee information along with their department names and designations																									
																									
LEFT JOIN query:																									
																									
Retrieve all employees and their corresponding salaries, if available																									
																									
																									
RIGHT JOIN query:																									
																									
Retrieve all salaries and the corresponding employee names, if available																									
																									
FULL OUTER JOIN query:																									
																									
Retrieve all employees and their salaries, including unmatched records from both table																									
																									
SELF JOIN query:																									
																									
Retrieve the names of employees and their respective managers																									
																									
																									
																									
Stored Procedure:																									
																									
Assuming we want to create a stored procedure to calculate the total salary																									
for a specific employee based on their EmployeeID and a provided PayrollPeriodID.(handle exceptions in SP)																									
																									
Write a Stored Procedure to validate username																									
and password raise error if the data already present.																									
																									
create a stored procedure that will take the																									
Employee ID of a person and checks if it is in the table. There are two																									
conditions																									
·																									
It will create a new record if the Employee ID																									
																									
is not stored in the table																									
·																									
If the record is already in the table, it will																									
update that																									
																									
																									
																									
																									
Functions																									
																									
Queries for Functions:																									
																									
Query using the CalculateAge function to retrieve the age of employees																									
Query using a custom function to calculate the total salary for an employee																									
Query using a function to get the number of employees in a specific department																									
Query using a function to get the number of leaves taken by an employee																									
																									
Queries for Views:																									
																									
Query using the EmployeeDetails view to get employee details along with department and manager information																									
Query using a view to get employees who have taken leaves within a specific date range																									
Query using a view to get employees with their respective department and designation names																									
Query using a view to get employees who are managers along with their department names																									
																									
Queries for Indexes:																									
																									
Query using the IX_Employee_EmployeeID index to retrieve an employee by their ID																									
Query using an index on the StartDate column to improve performance in searching for leaves within a specific date range																									
Query using an index on the DepartmentID column to optimize filtering employees by their department																									
Query using an index on the NetSalary column to speed up searching for employees with specific salary ranges																									
Query using an index on the DesignationName column to quickly search for employees with a specific job designation																									
																									
Queries for Triggers:																									
Trigger to automatically update the HireDate of an employee when their record is inserted																									
Trigger to update the ModifiedDate of an employee when their record is updated																									
Trigger to delete salary records of an employee when they are deleted from the Employee table																									
Trigger to enforce a constraint where the EndDate of a leave must be greater than or equal to the StartDate																									
Trigger to automatically insert a new record in the Salary table with default values when a new employee is added to the Employee table																									
																									
																									
Queries for Cursors:																									
																									
1Query using a cursor to fetch and display all employees' names																									
2 Query using a cursor to update the basic salary of all employees by a certain percentage																									
3 Query using a cursor to delete all employees who have left the organization																									
4 Query using a cursor to update employee designations based on their years of service																									
5 Query using a cursor to calculate the total salary for each employee and display the results																									
6 Cursor to update the salary of employees based on their performance rating:																									
Suppose we have an EmployeePerformance table that contains the EmployeeID and their corresponding PerformanceRating.																									
We want to update the salary of employees based on their PerformanceRating.																									
Employees with a PerformanceRating of 'Excellent' will receive a 10% salary increase,																									
Good' will receive a 5% increase, and 'Average' will receive a 2% increase																									
7 Cursor to assign a default department for employees who don't have one:																									
Suppose we have a Department table with a default department (DepartmentID = 1) representing employees without an assigned department.																									
We want to check if any employees have a NULL DepartmentID and assign them to the default department.																									
																									
Subquery																									
																									
Query to get employees who have salaries greater than the average salary in their department																									
Query to retrieve employees who have taken leaves longer than the average leave duration																									
Query to get employees whose salary is within 10% of the highest salary in their department																									
																									
																									
																									
1.Normalisation																									
2.Acid properties																									
3.Sql server profiler																									
4. Sql Optimization technique																									
																									
https://www.sqlshack.com/an-overview-of-the-sql-server-profiler/																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
																									
