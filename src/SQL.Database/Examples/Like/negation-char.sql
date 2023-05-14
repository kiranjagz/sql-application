SELECT *
FROM Production.Product
WHERE ProductNumber LIKE 'L[^I-N]-[135]%';
 
SELECT *
FROM Production.Product
WHERE ProductNumber LIKE 'L[^I-N]-[^135]%';