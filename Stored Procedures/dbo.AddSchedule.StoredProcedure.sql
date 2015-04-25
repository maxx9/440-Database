USE [s15guest38]
GO
/****** Object:  StoredProcedure [dbo].[AddSchedule]    Script Date: 4/25/2015 2:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Maksim Sadovskiy
-- Create date: 4/23/2015
-- Description:	Procedure that adds a schedule entry.
-- =============================================
CREATE PROCEDURE [dbo].[AddSchedule] 
	-- Add the parameters for the stored procedure here
	@ROOMID int, 
	@TIME varchar(50), 
	@PRESENTATIONID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Schedule]
           ([Room_id]
           ,[Time]
           ,[Presentation_id])
     VALUES
           (@ROOMID
           ,@TIME
           ,@PRESENTATIONID)
END

GO
