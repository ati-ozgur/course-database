## SQL Self Joins


- Joins the rows from the same table.
- Create 2 virtual copies of the same table used in the the FROM clause. Compare the rows with each other using the join condition.
- At least one alias is required for this operation.
- Giving a meaningful name to aliases will help you understand sql better later.
- In the below example, Manager (M) is used for aliases.

Chinook reports to which manager example

```sql
SELECT E.EmployeeID
      ,E.LastName AS EmployerLastName
      ,E.FirstName AS EmployerFirstName
      ,E.ReportsTo
      , M.EmployeeID as ManagerID
      , M.LastName AS ManagerLastName
      ,M.FirstName AS ManagerFirstName
  FROM Employee E 
  INNER JOIN Employee M
  ON E.ReportsTo = M.EmployeeID 
```



