# 2024 midterm exam practice questions

## Question 1 ( 10 points)

 Please write 2 open source and 2 commercial enterprise database names below. 

## Question 2 T/F (1 point each, 10 points)

Please write if below statements are true (T) or false (F)

| Question | True/False |
|---|---|
| SQL is the abbreviation of Structured Query Language |  |
| SQL contains sub languages such as DDL, DML, DCL, and TCL |  |
| SQL is based on relational data model and set based operations |  |
| SQL queries allows quick and efficient retrieval of a large amount of records from a database |  |
| SQL queries allows quick and efficient retrieval of a large amount of records from a database |  |
| A table cannot have a relation to itself since it will cause and indefiniteness |  |
| Comparison with null can be meaningfully done with equals and not equals operator |  |
| As being a sub language of SQL, DML has select, insert, update, and delete operations |  |
| Open source databases are useless for Enterprise Companies |  |

## Question 3 Simple ER Diagram (20 points)

Please draw a simple ER diagram for a university course schedule system.  
In your system, there will be departments, faculty members (i.e. professors), courses, classes, and offered courses.
Please mark 1-n relations in your ER Diagram.
Your diagram need to include possible columns for understanding the **relations between tables** but does not need to include every possible column.

## Question 4 Fix SQL Query (10 Points)

Your coworker come to you with a following sql query.
He is trying to find customer whose first name starts with A.
Please fix the query so that it works.


```sql
FROM Customers
SELECT CustomerId,FirstName
WHERE FirstName = 'A%'
```

## Question 5 Write SQL (10 points)

Please write the sql statements which will produce following result.
Employee table is our Chinook Employee table.

![prior employee id result set](./images/prior-employee-id.png)

## Question 6 Null handling (10 points)

You are working with following **Address** table.

![Address](./images/address-table.png)

Write an SQL query that fills retrieves all addresses but handle null values in following way.

- If StreetNumber is NULL, display 'No Street Number' instead.
- If StreetName is NULL, display 'No Street Name is given' instead.
- If City is NULL, display 'Unknown City' instead.
- If PostalCode is NULL, display 'N/A' instead.

Your query should return all columns in the table while handling null issues. Order the results by AddressID.

## Employee and Salary tables for Question 7-9

We have following employees and salaries table.
Every employee has only 1 salary row in the salaries table.

![Salaries and Employee](./images/salary-employee.png)

## Question 7 (10 Points)

Write a SQL query to find the names of employees who earn more than the average salary of their department. 
Use a subquery in your solution.


## Question 8 (10 Points)

Solve the question 7 again but use joins in your solution.

## Question 9 (10 Points)

Find the second largest salary owner for every department.
That is if we have maximum salary of 1000 in department 1, you should show the salary information and employee information in your result set.


