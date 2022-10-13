USE [World]
GO
/****** Object:  StoredProcedure [dbo].[SP_Select_All_Persons]    Script Date: 2022/08/15 22:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kiran Jagathlal
-- Create date: 15th August 2022
-- Description:	Select all persons
-- =============================================
ALTER PROCEDURE [dbo].[SP_Select_All_Persons]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM Persons
END
