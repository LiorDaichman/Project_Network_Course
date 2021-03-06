USE [DapperDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 09-Aug-2017 10:25:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewByID]    Script Date: 09-Aug-2017 10:25:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeViewByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmployeeViewByID]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewAll]    Script Date: 09-Aug-2017 10:25:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeViewAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmployeeViewAll]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeDeleteByID]    Script Date: 09-Aug-2017 10:25:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeDeleteByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmployeeDeleteByID]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeAddOrEdit]    Script Date: 09-Aug-2017 10:25:50 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeAddOrEdit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmployeeAddOrEdit]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeAddOrEdit]    Script Date: 09-Aug-2017 10:25:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeAddOrEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[EmployeeAddOrEdit]
@EmployeeID int,
@Name varchar(50),
@Position varchar(50),
@Age int,
@Salary int
AS

	IF @EmployeeID =0 
		INSERT INTO Employee(Name,Position,Age,Salary)
		VALUES (@Name,@Position,@Age,@Salary)
	ELSE
		UPDATE Employee
		SET
		Name=@Name,
		Position=@Position,
		Age=@Age,
		Salary = @Salary
		WHERE EmployeeID = @EmployeeID
	' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmployeeDeleteByID]    Script Date: 09-Aug-2017 10:25:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeDeleteByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[EmployeeDeleteByID]
@EmployeeID int
As
	DELETE FROM Employee
	WHERE EmployeeID = @EmployeeID' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewAll]    Script Date: 09-Aug-2017 10:25:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeViewAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[EmployeeViewAll]
AS
	SELECT *
	FROM Employee
	' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewByID]    Script Date: 09-Aug-2017 10:25:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeViewByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROC [dbo].[EmployeeViewByID]
@EmployeeID int
AS
		SELECT *
		FROM Employee
		WHERE EmployeeID  = @EmployeeID' 
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 09-Aug-2017 10:25:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Age] [int] NULL,
	[Salary] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
