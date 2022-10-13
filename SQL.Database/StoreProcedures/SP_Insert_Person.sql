-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kiran Jagathlal
-- Create date: 15th August 2022
-- Description:	Insert into persons table
-- =============================================
CREATE PROCEDURE SP_Insert_Person
( 
	-- Add the parameters for the stored procedure here
	@Name VARCHAR(100),
	@LastName VARCHAR(100),
	@Msg NVARCHAR(MAX)=null OUTPUT
)
AS
BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Persons
	VALUES
	(
		@Name,
		@LastName
	)

	SET @Msg='Table saved successfully!'
END TRY

BEGIN CATCH
    SET @Msg=ERROR_MESSAGE()
END CATCH

GO
