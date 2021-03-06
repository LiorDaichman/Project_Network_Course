USE [master]
GO
/****** Object:  Database [EmployeeDB]    Script Date: 26-Jul-2017 6:55:08 PM ******/
CREATE DATABASE [EmployeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\EmployeeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\EmployeeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 26-Jul-2017 6:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Age] [int] NULL,
	[Salary] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (1, N'Fiona Green', N'Chief Operating Officer (COO)', N'San Francisco', 48, 850000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (2, N'Angelica Ramos', N'Chief Executive Officer (CEO)', N'London', 47, 1200000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (3, N'Paul Byrd', N'Chief Financial Officer (CFO)', N'New York', 64, 725000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (4, N'Yuri Berry', N'Chief Marketing Officer (CMO)', N'New York', 40, 675000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (5, N'Jackson Bradshaw', N'Director', N'New York', 65, 645750)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (6, N'Charde Marshall', N'Regional Director', N'San Francisco', 36, 470600)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (7, N'Vivian Harrell', N'Financial Controller', N'San Francisco', 62, 452500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (8, N'Cedric Kelly', N'Senior Javascript Developer', N'Edinburgh', 22, 433060)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (9, N'Tatyana Fitzpatrick', N'Regional Director', N'London', 19, 385750)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (10, N'Brielle Williamson', N'Integration Specialist', N'New York', 61, 372000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (11, N'Jennifer Chang', N'Regional Director', N'Singapore', 28, 357650)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (12, N'Hermione Butler', N'Regional Director', N'London', 47, 356250)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (13, N'Jenette Caldwell', N'Development Lead', N'New York', 30, 345000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (14, N'Quinn Flynn', N'Support Lead', N'Edinburgh', 22, 342000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (15, N'Rhona Davidson', N'Integration Specialist', N'Tokyo', 55, 327900)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (16, N'Martena Mccray', N'Post-Sales support', N'Edinburgh', 46, 324050)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (17, N'Tiger Nixon', N'System Architect', N'Edinburgh', 61, 320800)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (18, N'Haley Kennedy', N'Senior Marketing Designer', N'London', 43, 313500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (19, N'Gloria Little', N'Systems Administrator', N'New York', 59, 237500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (20, N'Gavin Cortez', N'Team Leader', N'San Francisco', 22, 235500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (21, N'Olivia Liang', N'Support Engineer', N'Singapore', 64, 234500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (22, N'Dai Rios', N'Personnel Lead', N'Edinburgh', 35, 217500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (23, N'Brenden Wagner', N'Software Engineer', N'San Francisco', 28, 206850)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (24, N'Colleen Hurst', N'Javascript Developer', N'San Francisco', 39, 205500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (25, N'Michael Silva', N'Marketing Designer', N'London', 66, 198500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (26, N'Michael Bruce', N'Javascript Developer', N'Singapore', 29, 183000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (27, N'Shad Decker', N'Regional Director', N'Edinburgh', 51, 183000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (28, N'Garrett Winters', N'Accountant', N'Tokyo', 63, 170750)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (29, N'Howard Hatfield', N'Office Manager', N'San Francisco', 51, 164500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (30, N'Bruno Nash', N'Software Engineer', N'London', 38, 163500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (31, N'Shou Itou', N'Regional Marketing', N'Tokyo', 20, 163000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (32, N'Airi Satou', N'Accountant', N'Tokyo', 33, 162700)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (33, N'Cara Stevens', N'Sales Assistant', N'New York', 46, 145600)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (34, N'Prescott Bartlett', N'Technical Author', N'London', 27, 145000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (35, N'Sakura Yamamoto', N'Support Engineer', N'Tokyo', 37, 139575)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (36, N'Serge Baldwin', N'Data Coordinator', N'Singapore', 64, 138575)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (37, N'Herrod Chandler', N'Sales Assistant', N'San Francisco', 59, 137500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (38, N'Timothy Mooney', N'Office Manager', N'London', 37, 136200)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (39, N'Bradley Greer', N'Software Engineer', N'London', 41, 132000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (40, N'Zenaida Frank', N'Software Engineer', N'New York', 63, 125250)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (41, N'Zorita Serrano', N'Software Engineer', N'San Francisco', 56, 115000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (42, N'Suki Burks', N'Developer', N'London', 53, 114500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (43, N'Donna Snider', N'Customer Support', N'New York', 27, 112000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (44, N'Hope Fuentes', N'Secretary', N'San Francisco', 41, 109850)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (45, N'Caesar Vance', N'Pre-Sales Support', N'New York', 21, 106450)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (46, N'Sonya Frost', N'Software Engineer', N'Edinburgh', 23, 103600)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (47, N'Lael Greer', N'Systems Administrator', N'London', 21, 103500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (48, N'Thor Walton', N'Developer', N'New York', 61, 98540)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (49, N'Michelle House', N'Integration Specialist', N'Sidney', 37, 95400)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (50, N'Gavin Joyce', N'Developer', N'Edinburgh', 42, 92575)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (51, N'Jena Gaines', N'Office Manager', N'London', 30, 90560)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (52, N'Finn Camacho', N'Support Engineer', N'San Francisco', 47, 87500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (53, N'Jonas Alexander', N'Developer', N'San Francisco', 30, 86500)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (54, N'Ashton Cox', N'Junior Technical Author', N'San Francisco', 66, 86000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (55, N'Unity Butler', N'Marketing Designer', N'San Francisco', 47, 85675)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (56, N'Doris Wilder', N'Sales Assistant', N'Sidney', 23, 85600)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (57, N'Jennifer Acosta', N'Junior Javascript Developer', N'Edinburgh', 43, 75650)
USE [master]
GO
ALTER DATABASE [EmployeeDB] SET  READ_WRITE 
GO
