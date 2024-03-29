USE [World]
GO
/****** Object:  StoredProcedure [dbo].[sp_selectallpersons]    Script Date: 2022/08/15 22:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kiran Jagathlal
-- Create date: 15th August 2022
-- Description:	Select all persons
-- =============================================
ALTER PROCEDURE [dbo].[sp_selectallpersons]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		PersonId,
		[Name],
		LastName
	FROM Persons
END
