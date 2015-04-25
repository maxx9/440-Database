USE [s15guest38]
GO
/****** Object:  StoredProcedure [dbo].[RetrieveClassPerTrack]    Script Date: 4/25/2015 2:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Maksim Sadovskiy
-- Create date: 4/23/2015
-- Description:	Procedure that retrieves all the classes and their presenter(s) per track.
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveClassPerTrack]
	-- Add the parameters for the stored procedure here
	@TRACKID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT T.Track_Name, PRES.Title, D.Difficulty_Level, PER.First_Name, PER.Last_Name
	FROM [dbo].[Track] T
	INNER JOIN [dbo].[Presentation] PRES on T.Track_id = PRES.Track_id
	INNER JOIN [dbo].[Difficulty] D on D.Difficulty_id = PRES.Difficulty_id
	INNER JOIN [dbo].[PersonPresentationRole] PPR on PRES.Presentation_id = PPR.Presentation_id
	INNER JOIN [dbo].[Person] PER on PPR.Person_id = PER.Person_id
  
  WHERE T.Track_id = @TRACKID
  ORDER BY PRES.Title
END

GO
