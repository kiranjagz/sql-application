USE [World]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Person]    Script Date: 2022/10/17 20:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kiran Jagathlal
-- Create date: 15th August 2022
-- Description:	Insert into persons table
-- =============================================
ALTER PROCEDURE [dbo].[SP_Insert_Person]
( 
	-- Add the parameters for the stored procedure here
	@Name VARCHAR(100),
	@LastName VARCHAR(100),
	@PostCode VARCHAR(100),
	@CityName VARCHAR(100),
	@Msg NVARCHAR(MAX)=null OUTPUT
)
AS
BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @PersonId INT

    -- Insert statements for procedure here
	INSERT INTO Persons
	VALUES
	(
		@Name,
		@LastName
	)

	SELECT @PersonId = SCOPE_IDENTITY() 

	INSERT INTO Address
	VALUES
	(
		@PersonId,
		@PostCode,
		@CityName
	)

	SET @Msg='Table saved successfully!'
END TRY

BEGIN CATCH
    SET @Msg=ERROR_MESSAGE()
END CATCH

