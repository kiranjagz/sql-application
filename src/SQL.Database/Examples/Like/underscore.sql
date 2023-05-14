SELECT *
FROM Person.StateProvince
WHERE StateProvinceCode LIKE 'A[BKL]_';
 
SELECT *
FROM Person.StateProvince
--WHERE StateProvinceCode LIKE 'A[BKL]_';
WHERE Name LIKE 'AL____';
 
SELECT PersonType
FROM Person.Person
WHERE PersonType LIKE 'S_';