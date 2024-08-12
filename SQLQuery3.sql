--Funções de agregação: MIN MAX SUM AVG e AS
SELECT TOP 10 LineTotal
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal) AS Total
FROM (
SELECT TOP 10 * 
FROM Sales.SalesOrderDetail
) AS T;

SELECT AVG(LineTotal) AS Average
FROM (
SELECT TOP 10 *
FROM Sales.SalesOrderDetail
) AS T; -- precisa colocar um nome temporário na subquery.

--Group By
SELECT MiddleName, COUNT(MiddleName) AS Quantity
FROM Person.Person
GROUP BY MiddleName
ORDER BY Quantity DESC;

SELECT ProductId, AVG(OrderQty) AS Quantity
FROM Sales.SalesOrderDetail
GROUP BY ProductId
ORDER BY Quantity DESC;

SELECT TOP 100 *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 ProductId, SUM(LineTotal) AS Quantity
FROM Sales.SalesOrderDetail
GROUP BY ProductId
ORDER BY Quantity DESC;

--Having : usado para dados agrupados (limitação do where)
SELECT TOP 100 *
FROM Person.Address;

SELECT StateProvinceID, COUNT(StateProvinceID) AS ProvinceQuantity
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

--AS : nomear ou renomear
SELECT AVG(ListPrice) AS 'Preco medio do produto'
FROM Production.Product;

SELECT FirstName AS 'Primeiro nome', LastName AS 'Ultimo Nome'
FROM Person.Person;

