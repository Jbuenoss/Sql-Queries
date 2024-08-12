--Inner join: juntar informa��es de outras tabelas
--S� retorna aqueles que est�o nas duas tabelas (interse��o)
SELECT TOP 10 *
FROM person.PhoneNumberType;
SELECT TOP 10 *
FROM Person.PersonPhone;

SELECT TOP 10 PE.BusinessEntityID, PH.Name, PH.PhoneNumberTypeID, PE.PhoneNumber
FROM Person.PersonPhone PE
INNER JOIN Person.PhoneNumberType PH ON PE.PhoneNumberTypeID = PH.PhoneNumberTypeID;

SELECT TOP 100 *
FROM Person.PersonPhone PE
INNER JOIN Person.PhoneNumberType PH ON PE.PhoneNumberTypeID = PH.PhoneNumberTypeID;

--outros tipos de join

--FULL OUTER JOIN: traz todas as informa��o, coloca null no que n�o � correspondente.
--LEFT JOIN: traz todas as informa��o do A e os correspondentes.
--RIGHT JOIN

--UNION : juntar informa��es, remove dados duplicados

SELECT FirstName, MiddleName
FROM Person.Person
WHERE FirstName LIKE '%a'
UNION
SELECT FirstName, MiddleName
FROM Person.Person
WHERE MiddleName IN ('J', 'A');
