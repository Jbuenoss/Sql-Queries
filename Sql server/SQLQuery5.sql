SELECT *
FROM Customers

SELECT *
FROM Employees

--SELF JOIN
--comparar empregados que foram contratados no mesmo ano

SELECT E1.FirstName, E1.HireDate, E2.FirstName, E2.HireDate
FROM Employees E1, Employees E2
WHERE DATEPART(YEAR,E1.HireDate) = DATEPART(YEAR,E2.HireDate) 
AND E1.EmployeeID <> E2.EmployeeID;
