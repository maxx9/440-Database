USE [s15guest38]
GO
/****** Object:  Table [dbo].[Raffle]    Script Date: 4/25/2015 2:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raffle](
	[Raffle_id] [int] NOT NULL,
	[Vendor_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Raffle] PRIMARY KEY CLUSTERED 
(
	[Raffle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Raffle]  WITH CHECK ADD  CONSTRAINT [FK_Raffle_Vendor] FOREIGN KEY([Vendor_id])
REFERENCES [dbo].[Vendor] ([Vendor_id])
GO
ALTER TABLE [dbo].[Raffle] CHECK CONSTRAINT [FK_Raffle_Vendor]
GO
