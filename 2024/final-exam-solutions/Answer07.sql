SELECT COUNT(*) AS EmployeeCount
,Department
FROM Employees
GROUP BY Department
--ORDER BY 1 DESC
ORDER BY EmployeeCount DESC
