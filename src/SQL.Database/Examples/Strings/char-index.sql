SELECT CHARINDEX('D','DAD');
SELECT CHARINDEX('D','DAD',2);
 
SELECT Name
FROM Production.Product
 
SELECT Name, CHARINDEX('Cr', Name)
FROM Production.Product;
 
SELECT Name, CHARINDEX('Cr', Name)
FROM Production.Product
WHERE Name LIKE '%Cr%';