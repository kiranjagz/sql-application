CREATE PROCEDURE SP_Select_Person_By_Name
(
	@Name VARCHAR(100)
)
AS
	SELECT * 
	FROM Persons
	WHERE Persons.[Name] = @Name