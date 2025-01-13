SELECT COUNT(EmployeeId) AS EmployeeCount,Department
FROM Employees
GROUP BY Department
ORDER BY EmployeeCount
