SELECT COUNT(*)
FROM person.Person;

--valores não nulos
SELECT COUNT(title) 
FROM Person.Person;

--valores diferentes
SELECT COUNT(DISTINCT title) 
FROM Person.Person;

SELECT DISTINCT title
FROM Person.Person;

SELECT TOP 20 * 
FROM Production.Product;

--ORDER BY
SELECT TOP 10 ProductId, ListPrice
FROM Production.Product
ORDER BY ListPrice desc, ProductId desc;

SELECT TOP 4 name, ProductNumber
FROM Production.Product
ORDER BY ProductId asc;

--Between
SELECT *
FROM HumanResources.Employee
WHERE BirthDate NOT BETWEEN '1955/01/01' AND '1990/01/01'
ORDER BY BirthDate;

--In, vantagem: é mais rápido
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (1,2,3,4);

--LIKE
SELECT *
FROM Person.Person
WHERE FirstName LIKE '_ro%'; --não é case sensitive

--Desafios fundamentos do sql
--Desafio 1
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;
--Desafio 2
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%';

SELECT COUNT(DISTINCT City)
FROM Person.Address

SELECT DISTINCT City
FROM Person.Address

SELECT COUNT(*)
FROM Production.Product
WHERE (ListPrice BETWEEN 500 and 1000) and (Color = 'Red');

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%';