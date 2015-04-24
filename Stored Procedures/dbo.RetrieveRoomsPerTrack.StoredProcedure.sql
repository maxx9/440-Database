USE [s15guest38]
GO
/****** Object:  StoredProcedure [dbo].[RetrieveRoomsPerTrack]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Maksim Sadovskiy
-- Create date: 4-23-2015
-- Description:	Procedure that retrieves all the rooms per track - with respective presentations.
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveRoomsPerTrack]
	-- Add the parameters for the stored procedure here
	@TID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT T.Track_Name, P.Title, R.Room_Name, S.Time

	FROM [dbo].[Track] T
	INNER JOIN [dbo].[Presentation] P on P.Track_id = T.Track_id
	INNER JOIN [dbo].[Schedule] S on S.Presentation_id = P.Presentation_id
	INNER JOIN [dbo].[Room] R on R.Room_id = S.Room_id

	WHERE T.Track_id = @TID
	ORDER BY P.Title
END

GO
