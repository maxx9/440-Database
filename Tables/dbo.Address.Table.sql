USE [s15guest38]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 4/23/2015 10:38:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Address_id] [int] IDENTITY(1,1) NOT NULL,
	[Street_1] [varchar](100) NOT NULL,
	[Street_2] [varchar](100) NULL,
	[City] [varchar](50) NOT NULL,
	[Zip] [varchar](10) NOT NULL,
	[State_Country] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
