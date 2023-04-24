SELECT *
FROM Person.StateProvince
WHERE StateProvinceCode IN ('AK','AZ','CO','ID','IA');
 
SELECT *
FROM Person.StateProvince
WHERE StateProvinceCode NOT IN ('AK','AZ','CO','ID','IA');