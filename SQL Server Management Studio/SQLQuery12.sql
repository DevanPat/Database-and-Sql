USE AdventureWorks2017
GO

SELECT DISTINCT PostTime
FROM dbo.DatabaseLog;

SELECT * FROM HumanResources.Employee
WHERE Gender = 'm'

SELECT MAX(LoginID)
FROM HumanResources.Employee

SELECT * FROM HumanResources.Employee
WHERE JobTitle LIKE '%xec%';

SELECT * FROM HumanResources.Employee
WHERE LoginID LIKE '[a-f]%';


SELECT * FROM Person.BusinessEntity
WHERE BusinessEntityID BETWEEN 50 AND 100;