SELECT *
FROM Purchasing.Vendor;
 
SELECT *
FROM Purchasing.Vendor
WHERE NAME like '%,%';
 
SELECT *
FROM Purchasing.Vendor
WHERE NAME like '%.%';
 
SELECT *
FROM Purchasing.Vendor
--WHERE NAME like '%.%';
WHERE Name LIKE '%''%';