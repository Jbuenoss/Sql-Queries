--SubQuery
SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta');

--DATEPART -- devolve parte da data
SELECT *
FROM Sales.SalesOrderHeader;

SELECT DATEPART(MONTH, OrderDate) AS Mes, SUM(TotalDue) AS Total
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY SUM(TotalDue) DESC;

--STRING
SELECT CONCAT(FirstName, ' ', MiddleName, ' ', LastName) AS 'Nome completo'
FROM Person.Person

SELECT UPPER(FirstName), LEN(MiddleName), LOWER(LastName)
FROM Person.Person

SELECT ProductNumber, REPLACE(ProductNumber, '-', ' modelo ')
FROM Production.Product

--Outras funções
SELECT UnitPrice, ROUND(UnitPrice,2)
FROM Sales.SalesOrderDetail;

--View
CREATE VIEW [Pessoas Simplificadas] AS
SELECT PersonType, CONCAT(FirstName, ' ', ISNULL(MiddleName, ''), ' ', LastName) AS NomeCompleto
FROM Person.Person
WHERE Title = 'Mr.';

SELECT *
FROM [Pessoas Simplificadas];