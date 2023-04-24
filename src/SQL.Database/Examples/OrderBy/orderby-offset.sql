SELECT BusinessEntityID, NationalIDNumber, HireDate
FROM HumanResources.Employee
ORDER BY HireDate ASC
OFFSET 5 ROWS
FETCH NEXT 20 ROWS ONLY;
 
SELECT BusinessEntityID, NationalIDNumber, HireDate
FROM HumanResources.Employee
ORDER BY HireDate DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;
 
SELECT TOP 5 BusinessEntityID, NationalIDNumber, HireDate
FROM HumanResources.Employee
ORDER BY HireDate DESC;