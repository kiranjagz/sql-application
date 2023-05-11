SELECT BusinessEntityID,NationalIDNumber, JobTitle, HireDate
FROM HumanResources.Employee
WHERE BusinessEntityID IN
   (SELECT BusinessEntityID
     FROM HumanResources.EmployeeDepartmentHistory
   )
ORDER BY JobTitle;
 
SELECT BusinessEntityID,NationalIDNumber, JobTitle, HireDate
FROM HumanResources.Employee
WHERE BusinessEntityID IN
   (SELECT BusinessEntityID
     FROM HumanResources.EmployeeDepartmentHistory
	 WHERE BusinessEntityID <= 100
   )
ORDER BY JobTitle;