USE [s15guest38]
GO
/****** Object:  Table [dbo].[Presentation]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Presentation](
	[Presentation_id] [int] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Description] [varchar](300) NULL,
	[Topic] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Dificulty_id] [int] NULL,
	[Track_id] [int] NULL,
 CONSTRAINT [PK_Presentation] PRIMARY KEY CLUSTERED 
(
	[Presentation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Presentation]  WITH CHECK ADD  CONSTRAINT [FK_Presentation_Difficulty] FOREIGN KEY([Dificulty_id])
REFERENCES [dbo].[Difficulty] ([Difficulty_id])
GO
ALTER TABLE [dbo].[Presentation] CHECK CONSTRAINT [FK_Presentation_Difficulty]
GO
ALTER TABLE [dbo].[Presentation]  WITH CHECK ADD  CONSTRAINT [FK_Presentation_Track] FOREIGN KEY([Track_id])
REFERENCES [dbo].[Track] ([Track_id])
GO
ALTER TABLE [dbo].[Presentation] CHECK CONSTRAINT [FK_Presentation_Track]
GO
