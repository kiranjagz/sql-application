USE [World]
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Person]    Script Date: 2022/10/17 20:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kiran Jagathlal
-- Create date: 17th October 2022
-- Description:	Delete person and address
-- =============================================
ALTER PROCEDURE [dbo].[SP_Delete_Person]
	@Id int,
	@Msg NVARCHAR(MAX)=null OUTPUT
AS
BEGIN TRY
	DELETE FROM Address
	WHERE PersonId = @Id

	DELETE FROM Persons
	WHERE PersonId = @Id

	SET @Msg='Person deleted successfully!'
END TRY

BEGIN CATCH
	SET @Msg=ERROR_MESSAGE()
END CATCH
