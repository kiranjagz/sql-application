SELECT *
FROM HumanResources.Department;
 
SELECT GroupName
FROM HumanResources.Department
GROUP BY GroupName;
 
SELECT GroupName, COUNT(GroupName)
FROM HumanResources.Department
GROUP BY GroupName;
 
SELECT GroupName, COUNT(*)
FROM HumanResources.Department
GROUP BY GroupName;