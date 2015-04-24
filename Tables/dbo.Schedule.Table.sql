USE [s15guest38]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[Room_id] [int] NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[Presentation_id] [int] NOT NULL,
 CONSTRAINT [IX_Schedule] UNIQUE NONCLUSTERED 
(
	[Room_id] ASC,
	[Time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Presentation] FOREIGN KEY([Presentation_id])
REFERENCES [dbo].[Presentation] ([Presentation_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Presentation]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Room] FOREIGN KEY([Room_id])
REFERENCES [dbo].[Room] ([Room_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Room]
GO
