USE [s15guest38]
GO
/****** Object:  StoredProcedure [dbo].[AddTrackToPresentation]    Script Date: 4/25/2015 2:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Maksim Sadovskiy
-- Create date: 4-23-2015
-- Description:	Updates Presentation with Track ID
-- =============================================
CREATE PROCEDURE [dbo].[AddTrackToPresentation]
	-- Add the parameters for the stored procedure here
	@PRESENTATIONID int, 
	@TRACKID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Presentation]
	SET [Track_id] = @TRACKID
	WHERE  [Presentation_id] = @PRESENTATIONID
END

GO
