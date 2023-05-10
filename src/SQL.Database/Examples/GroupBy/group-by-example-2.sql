SELECT *
FROM HumanResources.EmployeePayHistory;
 
SELECT PayFrequency, SUM(Rate)
FROM HumanResources.EmployeePayHistory;
 
SELECT PayFrequency, SUM(Rate) AS TotalRatePerPayFrequency
FROM HumanResources.EmployeePayHistory
GROUP BY PayFrequency;
 
SELECT PayFrequency, SUM(Rate) AS TotalRatePerPayFrequency
FROM HumanResources.EmployeePayHistory
GROUP BY PayFrequency
ORDER BY PayFrequency;
 
SELECT PayFrequency, SUM(Rate) AS TotalRatePerPayFrequency
FROM HumanResources.EmployeePayHistory
GROUP BY PayFrequency
ORDER BY PayFrequency DESC;
 
SELECT ProductID, Shelf
FROM Production.ProductInventory
 
SELECT ProductID, Shelf, SUM(Quantity)
FROM Production.ProductInventory
GROUP BY ProductID, Shelf;
 
SELECT ProductID, Shelf, SUM(Quantity) AS SumPerProductPerShelf
FROM Production.ProductInventory
GROUP BY ProductID, Shelf
ORDER BY shelf DESC;