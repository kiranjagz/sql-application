SELECT	Title, 
		FirstName, 
		MiddleName, 
		LastName,
       CONCAT(Title, ' ' , FirstName ,  ' ' , MiddleName , ' ' + LastName) AS FullName
FROM Person.Person;
 
SELECT	FirstName, 
		BusinessEntityID, 
		CONCAT_WS('.','adventure-works','com') AS domain
FROM Person.Person;
 
SELECT	FirstName, 
		BusinessEntityID, 
       CONCAT(FirstName, BusinessEntityID,'@' , CONCAT_WS('.','adventure-works','com')) AS PersonEmail,
       CONCAT_WS('.','adventure-works','com') AS domain
FROM Person.Person;