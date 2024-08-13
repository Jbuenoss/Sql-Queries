--SELECT e WHERE
SELECT FirstName, LastName
FROM Person.Person;

SELECT DISTINCT LastName
FROM Person.Person;

SELECT *
FROM production.Product
WHERE ListPrice > 500 and ListPrice < 1000 and Color <> 'Red';

--Desafio 1
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700;

--Desafio 2
SELECT *
From HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

--Desafio 3
SELECT BusinessEntityID
From Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'
SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26