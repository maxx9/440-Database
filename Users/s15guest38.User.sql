USE [s15guest38]
GO
/****** Object:  User [s15guest38]    Script Date: 4/25/2015 2:58:36 PM ******/
CREATE USER [s15guest38] FOR LOGIN [s15guest38] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s15guest38]
GO
