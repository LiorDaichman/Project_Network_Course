USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 31-Jul-2017 6:51:35 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeDetails]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeDetails]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 31-Jul-2017 6:51:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Age] [int] NULL,
	[StartDate] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
	[Extn] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] ON 

INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (1, N'Airi', N'Satou', N'Accountant', N'Tokyo', 33, N'2008/11/28', N'$162,700', N'5407', N'a.satou@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (2, N'Angelica', N'Ramos', N'Chief Executive Officer (CEO)', N'London', 47, N'2009/10/09', N'$1,200,000', N'5797', N'a.ramos@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (3, N'Ashton', N'Cox', N'Junior Technical Author', N'San Francisco', 66, N'2009/01/12', N'$86,000', N'1562', N'a.cox@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (4, N'Bradley', N'Greer', N'Software Engineer', N'London', 41, N'2012/10/13', N'$132,000', N'2558', N'b.greer@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (5, N'Brenden', N'Wagner', N'Software Engineer', N'San Francisco', 28, N'2011/06/07', N'$206,850', N'1314', N'b.wagner@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (6, N'Brielle', N'Williamson', N'Integration Specialist', N'New York', 61, N'2012/12/02', N'$372,000', N'4804', N'b.williamson@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (7, N'Bruno', N'Nash', N'Software Engineer', N'London', 38, N'2011/05/03', N'$163,500', N'6222', N'b.nash@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (8, N'Caesar', N'Vance', N'Pre-Sales Support', N'New York', 21, N'2011/12/12', N'$106,450', N'8330', N'c.vance@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (9, N'Cara', N'Stevens', N'Sales Assistant', N'New York', 46, N'2011/12/06', N'$145,600', N'3990', N'c.stevens@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (10, N'Cedric', N'Kelly', N'Senior Javascript Developer', N'Edinburgh', 22, N'2012/03/29', N'$433,060', N'6224', N'c.kelly@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (11, N'Charde', N'Marshall', N'Regional Director', N'San Francisco', 36, N'2008/10/16', N'$470,600', N'6741', N'c.marshall@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (12, N'Colleen', N'Hurst', N'Javascript Developer', N'San Francisco', 39, N'2009/09/15', N'$205,500', N'2360', N'c.hurst@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (13, N'Dai', N'Rios', N'Personnel Lead', N'Edinburgh', 35, N'2012/09/26', N'$217,500', N'2290', N'd.rios@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (14, N'Donna', N'Snider', N'Customer Support', N'New York', 27, N'2011/01/25', N'$112,000', N'4226', N'd.snider@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (15, N'Doris', N'Wilder', N'Sales Assistant', N'Sidney', 23, N'2010/09/20', N'$85,600', N'3023', N'd.wilder@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (16, N'Finn', N'Camacho', N'Support Engineer', N'San Francisco', 47, N'2009/07/07', N'$87,500', N'2927', N'f.camacho@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (17, N'Fiona', N'Green', N'Chief Operating Officer (COO)', N'San Francisco', 48, N'2010/03/11', N'$850,000', N'2947', N'f.green@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (18, N'Garrett', N'Winters', N'Accountant', N'Tokyo', 63, N'2011/07/25', N'$170,750', N'8422', N'g.winters@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (19, N'Gavin', N'Joyce', N'Developer', N'Edinburgh', 42, N'2010/12/22', N'$92,575', N'8822', N'g.joyce@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (20, N'Gavin', N'Cortez', N'Team Leader', N'San Francisco', 22, N'2008/10/26', N'$235,500', N'2860', N'g.cortez@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (21, N'Gloria', N'Little', N'Systems Administrator', N'New York', 59, N'2009/04/10', N'$237,500', N'1721', N'g.little@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (22, N'Haley', N'Kennedy', N'Senior Marketing Designer', N'London', 43, N'2012/12/18', N'$313,500', N'3597', N'h.kennedy@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (23, N'Hermione', N'Butler', N'Regional Director', N'London', 47, N'2011/03/21', N'$356,250', N'1016', N'h.butler@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (24, N'Herrod', N'Chandler', N'Sales Assistant', N'San Francisco', 59, N'2012/08/06', N'$137,500', N'9608', N'h.chandler@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (25, N'Hope', N'Fuentes', N'Secretary', N'San Francisco', 41, N'2010/02/12', N'$109,850', N'6318', N'h.fuentes@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (26, N'Howard', N'Hatfield', N'Office Manager', N'San Francisco', 51, N'2008/12/16', N'$164,500', N'7031', N'h.hatfield@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (27, N'Jackson', N'Bradshaw', N'Director', N'New York', 65, N'2008/09/26', N'$645,750', N'1042', N'j.bradshaw@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (28, N'Jena', N'Gaines', N'Office Manager', N'London', 30, N'2008/12/19', N'$90,560', N'3814', N'j.gaines@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (29, N'Jenette', N'Caldwell', N'Development Lead', N'New York', 30, N'2011/09/03', N'$345,000', N'1937', N'j.caldwell@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (30, N'Jennifer', N'Chang', N'Regional Director', N'Singapore', 28, N'2010/11/14', N'$357,650', N'9239', N'j.chang@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (31, N'Jennifer', N'Acosta', N'Junior Javascript Developer', N'Edinburgh', 43, N'2013/02/01', N'$75,650', N'3431', N'j.acosta@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (32, N'Jonas', N'Alexander', N'Developer', N'San Francisco', 30, N'2010/07/14', N'$86,500', N'8196', N'j.alexander@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (33, N'Lael', N'Greer', N'Systems Administrator', N'London', 21, N'2009/02/27', N'$103,500', N'6733', N'l.greer@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (34, N'Martena', N'Mccray', N'Post-Sales support', N'Edinburgh', 46, N'2011/03/09', N'$324,050', N'8240', N'm.mccray@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (35, N'Michael', N'Silva', N'Marketing Designer', N'London', 66, N'2012/11/27', N'$198,500', N'1581', N'm.silva@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (36, N'Michael', N'Bruce', N'Javascript Developer', N'Singapore', 29, N'2011/06/27', N'$183,000', N'5384', N'm.bruce@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (37, N'Michelle', N'House', N'Integration Specialist', N'Sidney', 37, N'2011/06/02', N'$95,400', N'2769', N'm.house@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (38, N'Olivia', N'Liang', N'Support Engineer', N'Singapore', 64, N'2011/02/03', N'$234,500', N'2120', N'o.liang@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (39, N'Paul', N'Byrd', N'Chief Financial Officer (CFO)', N'New York', 64, N'2010/06/09', N'$725,000', N'3059', N'p.byrd@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (40, N'Prescott', N'Bartlett', N'Technical Author', N'London', 27, N'2011/05/07', N'$145,000', N'3606', N'p.bartlett@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (41, N'Quinn', N'Flynn', N'Support Lead', N'Edinburgh', 22, N'2013/03/03', N'$342,000', N'9497', N'q.flynn@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (42, N'Rhona', N'Davidson', N'Integration Specialist', N'Tokyo', 55, N'2010/10/14', N'$327,900', N'6200', N'r.davidson@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (43, N'Sakura', N'Yamamoto', N'Support Engineer', N'Tokyo', 37, N'2009/08/19', N'$139,575', N'9383', N's.yamamoto@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (44, N'Serge', N'Baldwin', N'Data Coordinator', N'Singapore', 64, N'2012/04/09', N'$138,575', N'8352', N's.baldwin@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (45, N'Shad', N'Decker', N'Regional Director', N'Edinburgh', 51, N'2008/11/13', N'$183,000', N'6373', N's.decker@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (46, N'Shou', N'Itou', N'Regional Marketing', N'Tokyo', 20, N'2011/08/14', N'$163,000', N'8899', N's.itou@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (47, N'Sonya', N'Frost', N'Software Engineer', N'Edinburgh', 23, N'2008/12/13', N'$103,600', N'1667', N's.frost@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (48, N'Suki', N'Burks', N'Developer', N'London', 53, N'2009/10/22', N'$114,500', N'6832', N's.burks@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (49, N'Tatyana', N'Fitzpatrick', N'Regional Director', N'London', 19, N'2010/03/17', N'$385,750', N'1965', N't.fitzpatrick@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (50, N'Thor', N'Walton', N'Developer', N'New York', 61, N'2013/08/11', N'$98,540', N'8327', N't.walton@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (51, N'Tiger', N'Nixon', N'System Architect', N'Edinburgh', 61, N'2011/04/25', N'$320,800', N'5421', N't.nixon@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (52, N'Timothy', N'Mooney', N'Office Manager', N'London', 37, N'2008/12/11', N'$136,200', N'7580', N't.mooney@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (53, N'Unity', N'Butler', N'Marketing Designer', N'San Francisco', 47, N'2009/12/09', N'$85,675', N'5384', N'u.butler@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (54, N'Vivian', N'Harrell', N'Financial Controller', N'San Francisco', 62, N'2009/02/14', N'$452,500', N'9422', N'v.harrell@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (55, N'Louis George Maurice Adolphe Roche', N'Berry', N'Chief Marketing Officer (CMO)', N'New York', 40, N'2009/06/25', N'$675,000', N'6154', N'y.berry@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (56, N'Zenaida', N'Frank', N'Software Engineer', N'New York', 63, N'2010/01/04', N'$125,250', N'7439', N'z.frank@datatables.net')
INSERT [dbo].[EmployeeDetails] ([ID], [FirstName], [LastName], [Position], [Office], [Age], [StartDate], [Salary], [Extn], [EMail]) VALUES (57, N'Zorita', N'Serrano', N'Software Engineer', N'San Francisco', 56, N'2012/06/01', N'$115,000', N'4389', N'z.serrano@datatables.net')
SET IDENTITY_INSERT [dbo].[EmployeeDetails] OFF
