USE [s15guest38]
GO
/****** Object:  User [s15guest38]    Script Date: 4/23/2015 10:38:14 PM ******/
CREATE USER [s15guest38] FOR LOGIN [s15guest38] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s15guest38]
GO
