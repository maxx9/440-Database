USE [s15guest38]
GO
/****** Object:  Table [dbo].[PersonPresentationRole]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonPresentationRole](
	[Person_id] [int] NOT NULL,
	[Presentation_id] [int] NOT NULL,
	[Role_id] [int] NOT NULL,
 CONSTRAINT [IX_PersonPresentationRole] UNIQUE NONCLUSTERED 
(
	[Person_id] ASC,
	[Presentation_id] ASC,
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PersonPresentationRole]  WITH CHECK ADD  CONSTRAINT [FK_PersonPresentationRole_Person] FOREIGN KEY([Person_id])
REFERENCES [dbo].[Person] ([Person_id])
GO
ALTER TABLE [dbo].[PersonPresentationRole] CHECK CONSTRAINT [FK_PersonPresentationRole_Person]
GO
ALTER TABLE [dbo].[PersonPresentationRole]  WITH CHECK ADD  CONSTRAINT [FK_PersonPresentationRole_Presentation] FOREIGN KEY([Presentation_id])
REFERENCES [dbo].[Presentation] ([Presentation_id])
GO
ALTER TABLE [dbo].[PersonPresentationRole] CHECK CONSTRAINT [FK_PersonPresentationRole_Presentation]
GO
ALTER TABLE [dbo].[PersonPresentationRole]  WITH CHECK ADD  CONSTRAINT [FK_PersonPresentationRole_Role] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([Role_id])
GO
ALTER TABLE [dbo].[PersonPresentationRole] CHECK CONSTRAINT [FK_PersonPresentationRole_Role]
GO
