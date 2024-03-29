USE [ProjectManagement]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/12/2019 7:38:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 18/12/2019 7:38:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[RegNum] [varchar](50) NULL,
	[Contact] [int] NOT NULL,
	[Degree] [varchar](50) NULL,
	[Rank] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[CatId] [int] NOT NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 18/12/2019 7:38:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[evalid] [int] IDENTITY(1,1) NOT NULL,
	[GroupNo] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[ObtainedMarks] [int] NOT NULL,
	[Comments] [varchar](50) NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[evalid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 18/12/2019 7:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupNo] [int] NULL,
	[Students] [varchar](50) NULL,
	[Project] [varchar](50) NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 18/12/2019 7:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](50) NOT NULL,
	[AdvisorName] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CatId], [Category]) VALUES (1, N'Student')
INSERT [dbo].[Category] ([CatId], [Category]) VALUES (2, N'advisor')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Data] ON 

INSERT [dbo].[Data] ([id], [Name], [RegNum], [Contact], [Degree], [Rank], [Description], [CatId]) VALUES (1, N'laiba', N'266', 9876, N'bs(hons)', NULL, N'kk', 1)
INSERT [dbo].[Data] ([id], [Name], [RegNum], [Contact], [Degree], [Rank], [Description], [CatId]) VALUES (2, N'laiba', NULL, 3456, NULL, N'18', N'oo', 2)
INSERT [dbo].[Data] ([id], [Name], [RegNum], [Contact], [Degree], [Rank], [Description], [CatId]) VALUES (3, N'Mahnoor', N'252', 33387665, N'bs(hons)', NULL, N'nnnnnnnnnnnn', 1)
INSERT [dbo].[Data] ([id], [Name], [RegNum], [Contact], [Degree], [Rank], [Description], [CatId]) VALUES (4, N'Mahnoor', NULL, 33387665, NULL, N'80', N'rrrrrrrrrrr', 2)
SET IDENTITY_INSERT [dbo].[Data] OFF
SET IDENTITY_INSERT [dbo].[Evaluation] ON 

INSERT [dbo].[Evaluation] ([evalid], [GroupNo], [TotalMarks], [ObtainedMarks], [Comments], [GroupId]) VALUES (1, 1, 80, 60, N'No', 33)
INSERT [dbo].[Evaluation] ([evalid], [GroupNo], [TotalMarks], [ObtainedMarks], [Comments], [GroupId]) VALUES (2, 1, 80, 60, N'No', 34)
SET IDENTITY_INSERT [dbo].[Evaluation] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupId], [GroupNo], [Students], [Project], [ProjectId]) VALUES (33, 1, N'laiba', N'Encryption', 10)
INSERT [dbo].[Groups] ([GroupId], [GroupNo], [Students], [Project], [ProjectId]) VALUES (34, 1, N'Mahnoor', N'Encryption', 10)
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectId], [ProjectName], [AdvisorName], [Description], [id]) VALUES (9, N'Project Management', N'Mahnoor', N'eeeeeee', 3)
INSERT [dbo].[Project] ([ProjectId], [ProjectName], [AdvisorName], [Description], [id]) VALUES (10, N'Encryption', N'laiba', N'uuu', 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_Category1] FOREIGN KEY([CatId])
REFERENCES [dbo].[Category] ([CatId])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_Category1]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Groups]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Project]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Data] FOREIGN KEY([id])
REFERENCES [dbo].[Data] ([id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Data]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Project]
GO
