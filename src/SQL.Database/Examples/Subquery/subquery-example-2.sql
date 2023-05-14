SELECT *
FROM HumanResources.Employee;
 
SELECT *
FROM HumanResources.Department;
 
SELECT BusinessEntityId, JobTitle 
FROM HumanResources.Employee
WHERE EXISTS
  (SELECT DepartmentID
   FROM HumanResources.Department
   WHERE Name = 'Sales'
  );
 
SELECT BusinessEntityId, JobTitle 
FROM HumanResources.Employee
WHERE EXISTS
  (SELECT DepartmentID
   FROM HumanResources.Department
   WHERE Name = 'Sales'
  ) AND JobTitle LIKE '%Sales%';