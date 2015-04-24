USE [s15guest38]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[Event_id] [int] IDENTITY(1,1) NOT NULL,
	[Event_Description] [varchar](300) NULL,
	[Address_id] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Address] FOREIGN KEY([Address_id])
REFERENCES [dbo].[Address] ([Address_id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Address]
GO
