USE [s15guest38]
GO
/****** Object:  StoredProcedure [dbo].[AddTrack]    Script Date: 4/25/2015 2:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Maksim Sadovskiy
-- Create date: 4-23-2015
-- Description:	Adds Track
-- =============================================

CREATE PROCEDURE [dbo].[AddTrack] 
	-- Add the parameters for the stored procedure here
	@TRACKNAME varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Track]
           ([Track_Name])
     VALUES
           (@TRACKNAME)
END

GO
