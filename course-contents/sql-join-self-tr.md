## SQL JOIN SELF Kendi ile Birleşim 

- Aynı tablonun satırlarını birleştirir.
- FROM cümlesinden aynı tablonun 2 sanal kopyasını oluşturarak satırları bir biri ile karşılaştır.
- Bu işlem için en az bir takma ad (alias) gereklidir. 
- Takma isim verirken anlamlı bir isim vermeniz sql'ı daha sonra daha iyi anlamınız sağlayacaktır.


self-join-northwind-example1

```sql
SELECT E.EmployeeID
      ,E.LastName AS EmployerLastName
      ,E.FirstName AS EmployerFirstName
      ,E.ReportsTo
      , M.EmployeeID as ManagerID
      , M.LastName AS ManagerLastName
      ,M.FirstName AS ManagerFirstName
  FROM dbo.Employees E 
  INNER JOIN dbo.Employees M
  ON E.ReportsTo = M.EmployeeID 
```



