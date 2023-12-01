USE [master]
GO
/****** Object:  Database [DoomsdayDatabase]    Script Date: 11/26/2023 3:23:03 PM ******/
CREATE DATABASE [DoomsdayDatabase]
GO
USE [DoomsdayDatabase]
GO
/****** Object:  Table [dbo].[Adversaries]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adversaries](
	[AdversariesID] [int] IDENTITY(1,1) NOT NULL,
	[FactionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdversariesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allies]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allies](
	[AlliesID] [int] IDENTITY(1,1) NOT NULL,
	[FactionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AlliesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [nvarchar](35) NULL,
	[CurrencyValue] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyPerson]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyPerson](
	[CurrencyPersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NULL,
	[CurrencyID] [int] NULL,
	[CurrencyAmount] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyPersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faction]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faction](
	[FactionID] [int] IDENTITY(1,1) NOT NULL,
	[FactionName] [nvarchar](35) NULL,
	[FactionSize] [int] NULL,
	[FactionInfluence] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactionLocation]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactionLocation](
	[FactionID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FactionID] ASC,
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](35) NULL,
	[FoodAmount] [decimal](8, 2) NULL,
	[FoodExpiryDate] [date] NULL,
	[FoodSourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodSource]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodSource](
	[FoodSourceID] [int] IDENTITY(1,1) NOT NULL,
	[FoodSource] [nvarchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[LocationID] [int] NULL,
	[WaterID] [int] NULL,
	[FoodID] [int] NULL,
	[PowerID] [int] NULL,
	[FactionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](35) NULL,
	[LocationDescription] [nvarchar](max) NULL,
	[LocationSafetyLevel] [tinyint] NULL,
	[LocationExpansionPotential] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationLodging]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationLodging](
	[LocationLodgingID] [int] IDENTITY(1,1) NOT NULL,
	[LodgingID] [int] NULL,
	[LocationID] [int] NULL,
	[LocationLodgingSecurity] [tinyint] NULL,
	[LocationLodgingCondition] [tinyint] NULL,
	[LocationLodgingCapacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationLodgingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lodging]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodging](
	[LodgingID] [int] IDENTITY(1,1) NOT NULL,
	[LodgingName] [nvarchar](35) NULL,
	[LodgingDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LodgingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonFirstName] [nvarchar](35) NULL,
	[PersonLastName] [nvarchar](35) NULL,
	[PersonDateOfBirth] [date] NULL,
	[PersonCallSign] [nvarchar](35) NULL,
	[PersonHealth] [tinyint] NULL,
	[PersonDeceased] [bit] NULL,
	[PersonDateOfDeath] [date] NULL,
	[LocationLodgingID] [int] NULL,
	[FactionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonSkill]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonSkill](
	[PersonID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[PersonSkillProficiency] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC,
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonTask]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonTask](
	[PersonID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
	[TaskStatusID] [int] NULL,
	[PersonTaskStartDate] [date] NULL,
	[PersonTaskDueDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC,
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Power]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Power](
	[PowerID] [int] IDENTITY(1,1) NOT NULL,
	[PowerCapacity] [decimal](8, 2) NULL,
	[PowerAmount] [decimal](8, 2) NULL,
	[PowerSourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PowerSource]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerSource](
	[PowerSourceID] [int] IDENTITY(1,1) NOT NULL,
	[PowerSource] [nvarchar](35) NULL,
	[PowerUnits] [nvarchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[PowerSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NULL,
	[SkillDescription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillTask]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillTask](
	[TaskID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[SkillTaskDifficulty] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC,
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nvarchar](50) NULL,
	[TaskDescription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[TaskStatusID] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatusDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Water]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Water](
	[WaterID] [int] IDENTITY(1,1) NOT NULL,
	[WaterQuality] [tinyint] NULL,
	[WaterQuantity] [decimal](8, 2) NULL,
	[WaterSourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WaterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WaterSource]    Script Date: 11/26/2023 3:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WaterSource](
	[WaterSourceID] [int] IDENTITY(1,1) NOT NULL,
	[WaterSource] [nvarchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[WaterSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adversaries] ON 
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (1, 2)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (2, 3)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (3, 4)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (4, 7)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (5, 8)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (6, 12)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (7, 13)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (8, 14)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (9, 17)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (10, 18)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (11, 26)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (12, 29)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (13, 30)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (14, 31)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (15, 32)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (16, 33)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (17, 35)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (18, 37)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (19, 41)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (20, 43)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (21, 44)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (22, 45)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (23, 47)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (24, 49)
GO
INSERT [dbo].[Adversaries] ([AdversariesID], [FactionID]) VALUES (25, 50)
GO
SET IDENTITY_INSERT [dbo].[Adversaries] OFF
GO
SET IDENTITY_INSERT [dbo].[Allies] ON 
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (1, 1)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (2, 5)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (3, 6)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (4, 9)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (5, 10)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (6, 11)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (7, 15)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (8, 16)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (9, 19)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (10, 20)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (11, 21)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (12, 22)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (13, 23)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (14, 24)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (15, 25)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (16, 27)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (17, 28)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (18, 34)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (19, 36)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (20, 38)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (21, 39)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (22, 40)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (23, 42)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (24, 46)
GO
INSERT [dbo].[Allies] ([AlliesID], [FactionID]) VALUES (25, 48)
GO
SET IDENTITY_INSERT [dbo].[Allies] OFF
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (1, N'Gold ', 255)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (2, N'Platinum ', 200)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (3, N'Palladium ', 180)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (4, N'Rhodium ', 170)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (5, N'Diamond ', 160)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (6, N'Ruby ', 150)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (7, N'Alexandrite ', 145)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (8, N'Silver ', 140)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (9, N'Titanium ', 135)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (10, N'Iridium ', 130)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (11, N'Emerald ', 125)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (12, N'Bitcoin ', 120)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (13, N'Saffron ', 115)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (14, N'Ruby ', 110)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (15, N'Rhinoceros Horn ', 105)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (16, N'Tungsten ', 100)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (17, N'Oil ', 95)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (18, N'Copper ', 90)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (19, N'Cobalt ', 85)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (20, N'Zirconium ', 80)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (21, N'Jade ', 75)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (22, N'Uranium ', 70)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (23, N'Yttrium ', 65)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (24, N'Topaz ', 60)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (25, N'Nickel ', 55)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (26, N'Aluminum ', 50)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (27, N'Opal ', 45)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (28, N'Quicksilver ', 40)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (29, N'Pearl ', 35)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (30, N'Titanium Dioxide ', 30)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (31, N'Cocoa ', 25)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (32, N'Lithium ', 20)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (33, N'Rhubarb ', 18)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (34, N'Silk ', 16)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (35, N'Vanilla ', 14)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (36, N'Bamboo ', 12)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (37, N'Caviar ', 11)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (38, N'Ginger ', 10)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (39, N'Garlic ', 9)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (40, N'Saffron ', 8)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (41, N'Truffles ', 7)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (42, N'Safranin ', 6)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (43, N'Cloves ', 5)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (44, N'Cinnamon ', 4)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (45, N'Nutmeg ', 3)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (46, N'Cardamom ', 2)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (47, N'Vanilla ', 1)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (48, N'Paprika ', 1)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (49, N'Mustard ', 1)
GO
INSERT [dbo].[Currency] ([CurrencyID], [CurrencyName], [CurrencyValue]) VALUES (50, N'Turmeric ', 1)
GO
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[CurrencyPerson] ON 
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (1, 27, 13, CAST(648.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (2, 42, 11, CAST(307.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (3, 83, 30, CAST(829.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (4, 680, 20, CAST(846.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (5, 638, 14, CAST(520.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (6, 798, 3, CAST(349.51 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (7, 995, 4, CAST(558.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (8, 440, 29, CAST(994.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (9, 470, 30, CAST(217.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (10, 744, 40, CAST(661.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (11, 883, 46, CAST(193.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (12, 113, 3, CAST(419.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (13, 341, 19, CAST(982.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (14, 656, 31, CAST(588.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (15, 759, 16, CAST(690.21 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (16, 687, 9, CAST(814.97 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (17, 739, 47, CAST(587.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (18, 395, 8, CAST(925.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (19, 687, 18, CAST(433.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (20, 790, 12, CAST(695.87 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (21, 550, 49, CAST(184.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (22, 227, 33, CAST(510.63 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (23, 444, 40, CAST(988.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (24, 771, 17, CAST(291.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (25, 409, 28, CAST(428.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (26, 11, 9, CAST(113.52 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (27, 260, 48, CAST(662.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (28, 429, 15, CAST(184.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (29, 159, 2, CAST(606.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (30, 386, 44, CAST(738.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (31, 261, 31, CAST(319.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (32, 302, 41, CAST(540.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (33, 273, 5, CAST(85.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (34, 789, 16, CAST(919.19 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (35, 671, 42, CAST(403.21 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (36, 516, 28, CAST(870.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (37, 698, 14, CAST(40.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (38, 550, 8, CAST(986.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (39, 918, 44, CAST(894.39 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (40, 488, 42, CAST(553.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (41, 591, 36, CAST(124.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (42, 508, 29, CAST(594.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (43, 823, 41, CAST(385.92 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (44, 625, 47, CAST(840.78 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (45, 835, 6, CAST(856.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (46, 158, 5, CAST(920.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (47, 701, 24, CAST(279.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (48, 838, 11, CAST(493.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (49, 835, 24, CAST(624.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (50, 971, 46, CAST(472.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (51, 458, 37, CAST(691.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (52, 523, 17, CAST(159.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (53, 188, 33, CAST(437.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (54, 219, 20, CAST(219.55 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (55, 827, 47, CAST(386.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (56, 136, 13, CAST(620.72 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (57, 451, 25, CAST(639.17 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (58, 337, 3, CAST(144.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (59, 505, 5, CAST(635.73 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (60, 976, 8, CAST(115.73 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (61, 797, 15, CAST(325.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (62, 117, 27, CAST(853.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (63, 120, 23, CAST(798.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (64, 758, 14, CAST(743.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (65, 151, 1, CAST(101.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (66, 706, 22, CAST(961.42 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (67, 161, 33, CAST(967.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (68, 349, 4, CAST(214.97 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (69, 362, 50, CAST(493.69 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (70, 716, 44, CAST(731.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (71, 196, 36, CAST(633.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (72, 310, 30, CAST(339.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (73, 63, 19, CAST(144.92 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (74, 857, 1, CAST(426.83 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (75, 500, 20, CAST(250.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (76, 606, 47, CAST(904.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (77, 158, 18, CAST(895.04 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (78, 409, 27, CAST(413.69 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (79, 41, 9, CAST(882.47 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (80, 116, 21, CAST(555.44 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (81, 595, 37, CAST(564.66 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (82, 116, 30, CAST(665.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (83, 105, 30, CAST(70.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (84, 482, 7, CAST(966.72 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (85, 423, 28, CAST(418.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (86, 78, 12, CAST(614.97 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (87, 698, 13, CAST(367.51 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (88, 341, 13, CAST(162.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (89, 343, 41, CAST(76.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (90, 9, 25, CAST(504.07 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (91, 77, 43, CAST(430.92 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (92, 542, 12, CAST(761.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (93, 299, 25, CAST(623.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (94, 104, 33, CAST(408.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (95, 827, 10, CAST(790.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (96, 594, 49, CAST(467.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (97, 522, 39, CAST(186.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (98, 804, 26, CAST(811.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (99, 777, 9, CAST(245.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (100, 261, 16, CAST(539.84 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (101, 921, 44, CAST(370.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (102, 219, 10, CAST(653.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (103, 419, 44, CAST(520.81 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (104, 494, 47, CAST(794.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (105, 872, 17, CAST(782.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (106, 28, 6, CAST(955.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (107, 656, 20, CAST(104.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (108, 804, 3, CAST(887.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (109, 442, 5, CAST(111.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (110, 62, 22, CAST(863.98 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (111, 439, 18, CAST(81.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (112, 442, 14, CAST(573.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (113, 693, 23, CAST(95.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (114, 921, 30, CAST(371.98 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (115, 951, 31, CAST(508.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (116, 636, 19, CAST(707.48 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (117, 902, 26, CAST(836.17 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (118, 108, 7, CAST(106.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (119, 777, 4, CAST(134.91 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (120, 116, 20, CAST(708.64 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (121, 777, 22, CAST(751.19 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (122, 920, 43, CAST(714.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (123, 451, 19, CAST(536.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (124, 663, 9, CAST(153.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (125, 765, 38, CAST(994.47 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (126, 118, 38, CAST(601.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (127, 223, 2, CAST(310.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (128, 872, 30, CAST(665.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (129, 559, 46, CAST(724.52 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (130, 916, 36, CAST(167.64 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (131, 673, 40, CAST(744.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (132, 46, 46, CAST(456.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (133, 405, 6, CAST(10.81 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (134, 264, 30, CAST(323.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (135, 465, 20, CAST(149.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (136, 716, 38, CAST(558.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (137, 655, 19, CAST(120.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (138, 134, 46, CAST(36.21 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (139, 500, 5, CAST(835.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (140, 728, 12, CAST(476.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (141, 69, 38, CAST(783.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (142, 708, 43, CAST(541.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (143, 929, 2, CAST(274.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (144, 176, 30, CAST(697.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (145, 575, 26, CAST(900.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (146, 803, 42, CAST(850.14 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (147, 135, 10, CAST(946.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (148, 442, 27, CAST(75.71 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (149, 199, 31, CAST(108.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (150, 74, 18, CAST(235.41 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (151, 24, 17, CAST(458.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (152, 781, 5, CAST(118.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (153, 924, 26, CAST(225.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (154, 339, 10, CAST(180.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (155, 1, 42, CAST(390.12 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (156, 343, 8, CAST(611.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (157, 236, 34, CAST(67.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (158, 654, 31, CAST(565.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (159, 264, 25, CAST(444.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (160, 446, 2, CAST(840.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (161, 697, 11, CAST(822.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (162, 1000, 21, CAST(103.44 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (163, 571, 33, CAST(216.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (164, 719, 29, CAST(230.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (165, 583, 7, CAST(422.17 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (166, 415, 32, CAST(235.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (167, 921, 2, CAST(127.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (168, 678, 6, CAST(207.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (169, 605, 31, CAST(298.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (170, 522, 24, CAST(874.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (171, 617, 5, CAST(102.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (172, 62, 39, CAST(708.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (173, 243, 41, CAST(866.95 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (174, 507, 7, CAST(727.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (175, 70, 6, CAST(931.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (176, 142, 22, CAST(291.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (177, 1000, 7, CAST(412.91 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (178, 392, 26, CAST(928.04 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (179, 248, 12, CAST(852.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (180, 309, 37, CAST(911.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (181, 552, 5, CAST(38.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (182, 8, 45, CAST(413.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (183, 255, 11, CAST(688.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (184, 95, 31, CAST(685.99 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (185, 788, 7, CAST(855.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (186, 160, 11, CAST(577.95 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (187, 4, 29, CAST(133.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (188, 452, 30, CAST(562.67 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (189, 936, 9, CAST(999.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (190, 369, 32, CAST(270.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (191, 744, 49, CAST(118.66 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (192, 924, 25, CAST(111.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (193, 802, 36, CAST(145.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (194, 183, 18, CAST(581.03 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (195, 403, 21, CAST(693.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (196, 49, 36, CAST(373.84 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (197, 411, 43, CAST(773.67 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (198, 866, 47, CAST(755.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (199, 771, 35, CAST(583.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (200, 293, 5, CAST(423.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (201, 711, 2, CAST(54.98 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (202, 305, 16, CAST(501.86 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (203, 12, 1, CAST(399.67 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (204, 711, 20, CAST(461.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (205, 178, 33, CAST(767.55 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (206, 954, 25, CAST(83.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (207, 252, 9, CAST(172.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (208, 128, 50, CAST(702.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (209, 977, 23, CAST(624.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (210, 977, 32, CAST(79.52 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (211, 217, 15, CAST(929.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (212, 77, 4, CAST(338.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (213, 98, 45, CAST(280.42 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (214, 832, 40, CAST(919.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (215, 679, 36, CAST(655.99 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (216, 585, 29, CAST(536.31 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (217, 958, 36, CAST(407.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (218, 290, 13, CAST(281.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (219, 292, 32, CAST(129.11 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (220, 889, 22, CAST(388.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (221, 323, 10, CAST(790.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (222, 53, 15, CAST(733.93 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (223, 338, 26, CAST(80.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (224, 839, 30, CAST(527.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (225, 53, 24, CAST(899.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (226, 338, 35, CAST(778.66 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (227, 955, 3, CAST(848.63 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (228, 904, 19, CAST(568.48 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (229, 296, 47, CAST(756.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (230, 468, 1, CAST(146.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (231, 536, 19, CAST(439.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (232, 559, 21, CAST(100.91 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (233, 119, 5, CAST(843.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (234, 832, 8, CAST(235.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (235, 603, 45, CAST(456.78 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (236, 444, 30, CAST(724.36 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (237, 624, 6, CAST(897.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (238, 102, 28, CAST(308.23 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (239, 471, 20, CAST(745.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (240, 626, 43, CAST(294.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (241, 573, 49, CAST(981.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (242, 243, 3, CAST(714.42 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (243, 307, 15, CAST(966.14 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (244, 422, 11, CAST(930.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (245, 139, 40, CAST(215.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (246, 433, 29, CAST(938.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (247, 885, 28, CAST(761.89 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (248, 246, 32, CAST(119.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (249, 687, 12, CAST(510.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (250, 49, 30, CAST(321.89 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (251, 832, 12, CAST(351.95 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (252, 361, 18, CAST(66.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (253, 973, 6, CAST(128.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (254, 478, 45, CAST(525.92 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (255, 859, 2, CAST(17.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (256, 292, 13, CAST(927.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (257, 794, 31, CAST(195.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (258, 375, 38, CAST(80.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (259, 889, 21, CAST(836.66 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (260, 95, 11, CAST(109.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (261, 10, 34, CAST(326.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (262, 190, 1, CAST(77.93 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (263, 159, 32, CAST(807.27 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (264, 22, 26, CAST(676.11 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (265, 99, 8, CAST(674.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (266, 698, 17, CAST(294.07 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (267, 903, 31, CAST(181.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (268, 980, 13, CAST(314.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (269, 550, 11, CAST(830.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (270, 741, 5, CAST(349.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (271, 471, 10, CAST(665.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (272, 701, 36, CAST(312.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (273, 554, 35, CAST(372.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (274, 921, 48, CAST(332.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (275, 253, 25, CAST(22.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (276, 862, 7, CAST(352.83 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (277, 420, 49, CAST(95.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (278, 580, 38, CAST(29.11 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (279, 391, 22, CAST(19.48 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (280, 78, 47, CAST(12.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (281, 488, 40, CAST(859.93 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (282, 794, 3, CAST(135.63 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (283, 48, 42, CAST(417.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (284, 124, 19, CAST(312.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (285, 249, 50, CAST(59.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (286, 887, 41, CAST(446.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (287, 189, 8, CAST(111.84 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (288, 135, 37, CAST(710.87 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (289, 588, 1, CAST(498.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (290, 756, 12, CAST(368.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (291, 85, 45, CAST(440.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (292, 171, 5, CAST(220.31 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (293, 97, 28, CAST(900.04 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (294, 530, 32, CAST(306.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (295, 70, 29, CAST(342.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (296, 15, 4, CAST(301.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (297, 561, 19, CAST(413.47 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (298, 40, 15, CAST(723.84 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (299, 583, 43, CAST(336.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (300, 177, 20, CAST(563.91 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (301, 784, 42, CAST(27.97 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (302, 564, 48, CAST(56.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (303, 21, 38, CAST(864.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (304, 657, 10, CAST(299.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (305, 879, 41, CAST(70.27 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (306, 356, 9, CAST(815.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (307, 273, 2, CAST(760.12 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (308, 671, 48, CAST(601.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (309, 694, 13, CAST(428.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (310, 640, 42, CAST(306.89 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (311, 97, 32, CAST(819.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (312, 435, 9, CAST(32.63 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (313, 132, 8, CAST(266.74 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (314, 162, 9, CAST(391.36 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (315, 561, 5, CAST(913.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (316, 405, 14, CAST(224.16 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (317, 530, 36, CAST(284.52 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (318, 861, 28, CAST(187.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (319, 861, 46, CAST(181.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (320, 508, 26, CAST(330.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (321, 720, 25, CAST(280.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (322, 752, 5, CAST(957.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (323, 887, 22, CAST(710.64 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (324, 587, 8, CAST(293.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (325, 587, 17, CAST(605.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (326, 753, 40, CAST(853.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (327, 636, 40, CAST(672.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (328, 997, 19, CAST(424.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (329, 44, 25, CAST(316.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (330, 66, 22, CAST(977.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (331, 518, 30, CAST(295.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (332, 989, 33, CAST(815.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (333, 184, 23, CAST(672.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (334, 579, 27, CAST(529.54 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (335, 959, 19, CAST(810.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (336, 530, 40, CAST(803.04 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (337, 529, 44, CAST(323.99 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (338, 971, 11, CAST(398.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (339, 877, 4, CAST(767.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (340, 40, 14, CAST(448.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (341, 500, 26, CAST(818.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (342, 218, 11, CAST(660.74 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (343, 624, 43, CAST(439.88 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (344, 541, 36, CAST(147.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (345, 595, 16, CAST(250.49 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (346, 105, 9, CAST(137.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (347, 493, 5, CAST(997.31 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (348, 263, 37, CAST(162.81 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (349, 883, 1, CAST(552.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (350, 789, 12, CAST(418.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (351, 362, 15, CAST(714.31 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (352, 225, 37, CAST(481.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (353, 5, 15, CAST(85.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (354, 488, 38, CAST(962.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (355, 465, 45, CAST(483.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (356, 489, 12, CAST(547.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (357, 728, 19, CAST(47.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (358, 438, 28, CAST(623.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (359, 419, 14, CAST(78.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (360, 608, 48, CAST(97.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (361, 389, 19, CAST(178.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (362, 274, 50, CAST(452.93 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (363, 860, 40, CAST(380.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (364, 800, 7, CAST(628.07 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (365, 96, 40, CAST(477.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (366, 118, 49, CAST(945.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (367, 830, 26, CAST(787.55 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (368, 999, 45, CAST(255.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (369, 217, 28, CAST(554.39 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (370, 916, 47, CAST(751.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (371, 9, 17, CAST(722.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (372, 583, 5, CAST(981.86 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (373, 826, 10, CAST(830.87 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (374, 446, 27, CAST(425.99 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (375, 289, 34, CAST(27.27 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (376, 529, 43, CAST(672.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (377, 591, 27, CAST(533.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (378, 355, 25, CAST(152.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (379, 458, 19, CAST(330.03 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (380, 251, 44, CAST(875.39 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (381, 544, 31, CAST(671.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (382, 157, 9, CAST(649.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (383, 408, 18, CAST(219.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (384, 723, 30, CAST(455.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (385, 180, 20, CAST(182.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (386, 682, 10, CAST(662.14 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (387, 494, 48, CAST(235.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (388, 224, 35, CAST(452.71 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (389, 4, 41, CAST(310.21 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (390, 883, 9, CAST(62.01 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (391, 404, 2, CAST(32.49 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (392, 955, 25, CAST(385.04 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (393, 913, 19, CAST(461.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (394, 96, 44, CAST(85.66 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (395, 613, 14, CAST(373.93 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (396, 932, 41, CAST(482.64 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (397, 631, 50, CAST(486.69 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (398, 606, 2, CAST(318.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (399, 259, 25, CAST(841.59 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (400, 42, 36, CAST(375.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (401, 460, 42, CAST(401.36 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (402, 502, 20, CAST(925.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (403, 628, 7, CAST(319.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (404, 293, 44, CAST(225.97 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (405, 74, 15, CAST(176.03 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (406, 821, 11, CAST(878.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (407, 955, 11, CAST(950.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (408, 224, 30, CAST(253.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (409, 149, 27, CAST(29.64 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (410, 932, 27, CAST(54.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (411, 536, 27, CAST(174.14 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (412, 996, 30, CAST(33.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (413, 119, 4, CAST(349.27 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (414, 1, 30, CAST(683.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (415, 916, 19, CAST(548.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (416, 76, 42, CAST(349.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (417, 349, 48, CAST(618.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (418, 928, 11, CAST(544.73 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (419, 50, 8, CAST(686.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (420, 247, 46, CAST(761.19 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (421, 772, 38, CAST(81.21 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (422, 133, 42, CAST(393.19 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (423, 753, 6, CAST(287.82 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (424, 311, 48, CAST(664.31 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (425, 251, 43, CAST(777.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (426, 239, 41, CAST(258.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (427, 19, 47, CAST(858.71 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (428, 608, 33, CAST(259.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (429, 284, 49, CAST(823.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (430, 558, 23, CAST(976.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (431, 995, 33, CAST(315.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (432, 338, 38, CAST(693.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (433, 252, 7, CAST(777.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (434, 757, 12, CAST(685.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (435, 745, 43, CAST(571.57 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (436, 772, 6, CAST(452.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (437, 376, 33, CAST(275.68 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (438, 806, 4, CAST(447.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (439, 608, 19, CAST(452.69 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (440, 156, 29, CAST(627.39 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (441, 657, 42, CAST(726.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (442, 114, 32, CAST(567.32 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (443, 421, 31, CAST(67.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (444, 20, 25, CAST(996.02 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (445, 168, 12, CAST(531.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (446, 138, 8, CAST(457.29 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (447, 369, 11, CAST(574.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (448, 232, 33, CAST(259.09 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (449, 999, 7, CAST(342.41 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (450, 904, 44, CAST(410.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (451, 3, 39, CAST(681.79 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (452, 151, 26, CAST(163.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (453, 269, 18, CAST(68.55 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (454, 623, 12, CAST(680.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (455, 528, 40, CAST(718.19 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (456, 132, 40, CAST(478.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (457, 780, 14, CAST(951.81 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (458, 604, 17, CAST(905.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (459, 15, 40, CAST(149.86 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (460, 793, 42, CAST(738.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (461, 444, 37, CAST(746.84 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (462, 209, 9, CAST(640.32 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (463, 596, 40, CAST(682.41 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (464, 282, 2, CAST(41.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (465, 73, 8, CAST(433.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (466, 19, 37, CAST(349.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (467, 303, 34, CAST(858.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (468, 75, 36, CAST(498.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (469, 41, 34, CAST(777.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (470, 786, 20, CAST(107.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (471, 680, 48, CAST(293.13 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (472, 178, 39, CAST(781.28 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (473, 620, 6, CAST(459.71 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (474, 147, 42, CAST(372.91 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (475, 22, 29, CAST(848.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (476, 246, 39, CAST(302.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (477, 536, 30, CAST(811.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (478, 467, 16, CAST(381.27 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (479, 341, 38, CAST(290.62 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (480, 623, 25, CAST(340.37 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (481, 729, 43, CAST(517.72 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (482, 334, 8, CAST(430.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (483, 751, 40, CAST(719.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (484, 444, 50, CAST(458.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (485, 771, 27, CAST(68.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (486, 272, 42, CAST(754.53 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (487, 110, 43, CAST(30.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (488, 782, 36, CAST(491.26 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (489, 691, 16, CAST(33.03 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (490, 543, 38, CAST(258.61 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (491, 189, 25, CAST(397.43 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (492, 255, 7, CAST(568.96 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (493, 816, 25, CAST(93.03 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (494, 95, 27, CAST(507.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (495, 452, 8, CAST(806.34 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (496, 547, 26, CAST(856.18 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (497, 243, 14, CAST(397.33 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (498, 756, 20, CAST(206.72 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (499, 473, 49, CAST(444.47 AS Decimal(12, 2)))
GO
INSERT [dbo].[CurrencyPerson] ([CurrencyPersonID], [PersonID], [CurrencyID], [CurrencyAmount]) VALUES (500, 3, 29, CAST(98.96 AS Decimal(12, 2)))
GO
SET IDENTITY_INSERT [dbo].[CurrencyPerson] OFF
GO
SET IDENTITY_INSERT [dbo].[Faction] ON 
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (1, N'Smithson Clan', 120, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (2, N'Evergreen Syndicate', 85, 5)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (3, N'Ironhart Collective', 200, 8)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (4, N'Ravenshadow Dynasty', 150, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (5, N'Stormcloak Coalition', 75, 6)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (6, N'Silverthorn Alliance', 110, 1)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (7, N'Firebrand Guild', 160, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (8, N'Starlight Covenant', 95, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (9, N'Bloodmoon Society', 130, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (10, N'Frostblade Brotherhood', 180, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (11, N'Moonshadow Consortium', 70, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (12, N'Darkstar Union', 140, 1)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (13, N'Emberheart Clan', 105, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (14, N'Nightshade Syndicate', 190, 7)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (15, N'Thunderpeak Collective', 80, 5)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (16, N'Shadowthorn Dynasty', 125, 7)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (17, N'Crimsoncloak Coalition', 155, 6)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (18, N'Stormwind Alliance', 100, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (19, N'Stoneheart Guild', 170, 6)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (20, N'Sunfire Covenant', 65, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (21, N'Frostspire Society', 135, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (22, N'Emberforge Brotherhood', 200, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (23, N'Ironhand Consortium', 75, 1)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (24, N'Ghostwind Clan', 110, 4)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (25, N'Starshroud Coalition', 160, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (26, N'Bloodstone Dynasty', 90, 6)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (27, N'Nightfall Alliance', 145, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (28, N'Ashenblade Guild', 175, 1)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (29, N'Moonfire Covenant', 120, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (30, N'Stormwatch Society', 85, 7)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (31, N'Shadowvale Brotherhood', 130, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (32, N'Crimsonflame Syndicate', 195, 8)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (33, N'Ironbark Clan', 70, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (34, N'Emberquill Collective', 105, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (35, N'Frostfallen Dynasty', 140, 10)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (36, N'Thunderstrike Coalition', 165, 7)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (37, N'Shadowthistle Guild', 95, 7)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (38, N'Silverstorm Alliance', 125, 5)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (39, N'Bloodblade Society', 180, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (40, N'Sunshadow Brotherhood', 80, 5)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (41, N'Stormwhisper Consortium', 150, 4)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (42, N'Nightfall Clan', 115, 3)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (43, N'Flameheart Collective', 190, 4)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (44, N'Frostpeak Dynasty', 75, 5)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (45, N'Starborne Coalition', 110, 1)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (46, N'Emberflame Guild', 160, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (47, N'Darkshroud Covenant', 85, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (48, N'Bloodthorn Society', 135, 9)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (49, N'Silverwind Alliance', 170, 2)
GO
INSERT [dbo].[Faction] ([FactionID], [FactionName], [FactionSize], [FactionInfluence]) VALUES (50, N'Stormsong Brotherhood', 100, 9)
GO
SET IDENTITY_INSERT [dbo].[Faction] OFF
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (1, 15)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (1, 44)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (1, 49)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (2, 5)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (2, 36)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (3, 38)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (4, 7)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (4, 16)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (4, 25)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (4, 41)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (5, 38)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (6, 7)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (6, 26)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (7, 47)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (8, 2)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (8, 39)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (9, 10)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (9, 30)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (10, 43)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (12, 24)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (13, 16)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (13, 35)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (13, 39)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (13, 49)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (14, 4)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (16, 1)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (16, 7)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (16, 31)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (17, 24)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (17, 47)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (18, 36)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (18, 46)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (19, 4)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (19, 19)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (19, 24)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (19, 36)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (19, 42)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (21, 20)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (21, 22)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (21, 25)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (23, 3)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (23, 38)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (23, 43)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (24, 11)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (24, 47)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (25, 12)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (25, 36)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (26, 39)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (27, 15)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (27, 32)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (29, 12)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (29, 47)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (30, 5)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (30, 14)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (30, 37)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (30, 42)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (31, 5)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (31, 6)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (31, 13)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (31, 29)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (32, 16)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (32, 31)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (32, 37)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (34, 49)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (35, 1)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (35, 14)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (36, 6)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (36, 46)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (37, 14)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (37, 25)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (37, 26)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (38, 5)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (38, 10)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (38, 15)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (40, 4)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (40, 28)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (42, 11)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (42, 26)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (44, 42)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (45, 27)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (45, 43)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (46, 3)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (46, 25)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (46, 26)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (46, 30)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (47, 6)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (47, 14)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (48, 13)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (48, 15)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (48, 23)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (48, 35)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 1)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 7)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 18)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 32)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 37)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (49, 45)
GO
INSERT [dbo].[FactionLocation] ([FactionID], [LocationID]) VALUES (50, 19)
GO
SET IDENTITY_INSERT [dbo].[Food] ON 
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (1, N'Carp', CAST(683.77 AS Decimal(8, 2)), CAST(N'2024-09-13' AS Date), 7)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (2, N'Beeswax', CAST(1960.48 AS Decimal(8, 2)), CAST(N'2024-11-19' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (3, N'Carrots', CAST(863.96 AS Decimal(8, 2)), CAST(N'2024-08-14' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (4, N'Edible Plants', CAST(3462.12 AS Decimal(8, 2)), CAST(N'2024-10-18' AS Date), 6)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (5, N'Honey', CAST(1598.60 AS Decimal(8, 2)), CAST(N'2024-03-04' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (6, N'Cucumbers', CAST(4089.28 AS Decimal(8, 2)), CAST(N'2024-08-04' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (7, N'Tomatoes', CAST(2356.30 AS Decimal(8, 2)), CAST(N'2024-09-15' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (8, N'Cucumbers', CAST(4995.14 AS Decimal(8, 2)), CAST(N'2024-08-25' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (9, N'Mushrooms', CAST(605.50 AS Decimal(8, 2)), CAST(N'2024-11-05' AS Date), 6)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (10, N'Carp', CAST(1393.75 AS Decimal(8, 2)), CAST(N'2024-07-14' AS Date), 7)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (11, N'Honey', CAST(3029.13 AS Decimal(8, 2)), CAST(N'2023-12-30' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (12, N'Squirrel', CAST(1692.44 AS Decimal(8, 2)), CAST(N'2024-10-28' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (13, N'Wild Berries', CAST(2902.88 AS Decimal(8, 2)), CAST(N'2024-10-07' AS Date), 6)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (14, N'Cheese', CAST(213.65 AS Decimal(8, 2)), CAST(N'2024-04-28' AS Date), 11)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (15, N'Honey', CAST(673.23 AS Decimal(8, 2)), CAST(N'2024-05-13' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (16, N'Wheat', CAST(3933.50 AS Decimal(8, 2)), CAST(N'2024-09-10' AS Date), 1)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (17, N'Pheasant', CAST(1499.11 AS Decimal(8, 2)), CAST(N'2024-04-13' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (18, N'Yogurt', CAST(1760.57 AS Decimal(8, 2)), CAST(N'2024-09-11' AS Date), 11)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (19, N'Apples', CAST(3707.36 AS Decimal(8, 2)), CAST(N'2023-12-07' AS Date), 10)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (20, N'Boar', CAST(2677.58 AS Decimal(8, 2)), CAST(N'2024-08-20' AS Date), 3)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (21, N'Tilapia', CAST(4007.39 AS Decimal(8, 2)), CAST(N'2024-04-29' AS Date), 7)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (22, N'Shrimp', CAST(1541.94 AS Decimal(8, 2)), CAST(N'2023-12-03' AS Date), 7)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (23, N'Salmon', CAST(1644.38 AS Decimal(8, 2)), CAST(N'2024-11-13' AS Date), 2)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (24, N'Rabbit', CAST(931.18 AS Decimal(8, 2)), CAST(N'2024-11-13' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (25, N'Yogurt', CAST(467.61 AS Decimal(8, 2)), CAST(N'2024-10-18' AS Date), 11)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (26, N'Squirrel', CAST(3304.96 AS Decimal(8, 2)), CAST(N'2024-02-02' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (27, N'Pork', CAST(1648.75 AS Decimal(8, 2)), CAST(N'2024-05-19' AS Date), 5)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (28, N'Honey', CAST(2202.85 AS Decimal(8, 2)), CAST(N'2024-08-26' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (29, N'Lettuce', CAST(4463.27 AS Decimal(8, 2)), CAST(N'2024-08-08' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (30, N'Edible Plants', CAST(1721.96 AS Decimal(8, 2)), CAST(N'2024-07-05' AS Date), 6)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (31, N'Wild Berries', CAST(1200.17 AS Decimal(8, 2)), CAST(N'2024-06-10' AS Date), 6)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (32, N'Yogurt', CAST(4756.22 AS Decimal(8, 2)), CAST(N'2024-08-13' AS Date), 11)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (33, N'Bass', CAST(550.85 AS Decimal(8, 2)), CAST(N'2024-01-18' AS Date), 2)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (34, N'Oysters', CAST(292.24 AS Decimal(8, 2)), CAST(N'2024-01-27' AS Date), 7)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (35, N'Duck', CAST(1668.06 AS Decimal(8, 2)), CAST(N'2024-09-15' AS Date), 3)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (36, N'Tomatoes', CAST(3643.86 AS Decimal(8, 2)), CAST(N'2024-11-21' AS Date), 4)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (37, N'Yogurt', CAST(4670.60 AS Decimal(8, 2)), CAST(N'2024-01-18' AS Date), 11)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (38, N'Squirrel', CAST(2726.48 AS Decimal(8, 2)), CAST(N'2024-02-23' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (39, N'Rabbit', CAST(1194.47 AS Decimal(8, 2)), CAST(N'2024-01-24' AS Date), 9)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (40, N'Oranges', CAST(4276.93 AS Decimal(8, 2)), CAST(N'2024-03-27' AS Date), 10)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (41, N'Peaches', CAST(1378.86 AS Decimal(8, 2)), CAST(N'2024-01-29' AS Date), 10)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (42, N'Catfish', CAST(4794.51 AS Decimal(8, 2)), CAST(N'2024-10-21' AS Date), 2)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (43, N'Apples', CAST(3812.88 AS Decimal(8, 2)), CAST(N'2024-01-25' AS Date), 10)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (44, N'Honey', CAST(1425.61 AS Decimal(8, 2)), CAST(N'2024-09-18' AS Date), 8)
GO
INSERT [dbo].[Food] ([FoodID], [FoodName], [FoodAmount], [FoodExpiryDate], [FoodSourceID]) VALUES (45, N'Oysters', CAST(1481.07 AS Decimal(8, 2)), CAST(N'2024-09-07' AS Date), 7)
GO
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodSource] ON 
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (1, N'Farming')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (2, N'Fishing')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (3, N'Hunting')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (4, N'Gardening')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (5, N'Livestock Farming')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (6, N'Foraging')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (7, N'Aquaculture')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (8, N'BeeKeeping')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (9, N'Trapping')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (10, N'Fruit Cultivation')
GO
INSERT [dbo].[FoodSource] ([FoodSourceID], [FoodSource]) VALUES (11, N'Ranching')
GO
SET IDENTITY_INSERT [dbo].[FoodSource] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (1, 32, 7, 39, 11, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (2, 34, 6, 33, 7, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (3, 8, 1, 15, 19, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (4, 34, 3, 7, 2, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (5, 4, 1, 6, 10, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (6, 11, 10, 6, 10, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (7, 25, 11, 26, 8, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (8, 23, 19, 22, 3, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (9, 34, 18, 3, 14, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (10, 22, 12, 28, 20, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (11, 11, 18, 25, 14, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (12, 6, 4, 13, 10, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (13, 3, 9, 12, 20, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (14, 21, 9, 15, 2, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (15, 45, 10, 18, 7, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (16, 26, 1, 13, 8, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (17, 4, 15, 6, 12, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (18, 40, 6, 20, 9, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (19, 13, 18, 10, 2, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (20, 25, 5, 15, 10, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (21, 40, 6, 34, 11, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (22, 16, 2, 14, 17, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (23, 6, 9, 18, 6, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (24, 38, 2, 4, 14, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (25, 38, 4, 25, 16, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (26, 48, 10, 18, 4, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (27, 13, 3, 31, 1, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (28, 37, 2, 17, 7, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (29, 49, 19, 44, 1, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (30, 12, 1, 24, 20, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (31, 29, 4, 2, 6, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (32, 47, 9, 13, 8, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (33, 24, 9, 31, 13, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (34, 49, 1, 34, 6, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (35, 23, 1, 19, 20, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (36, 36, 14, 5, 16, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (37, 13, 17, 41, 2, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (38, 32, 16, 8, 14, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (39, 15, 10, 20, 5, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (40, 23, 4, 10, 11, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (41, 35, 12, 4, 16, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (42, 27, 11, 14, 18, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (43, 45, 20, 38, 5, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (44, 21, 16, 11, 6, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (45, 31, 5, 12, 3, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (46, 4, 3, 38, 8, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (47, 39, 7, 42, 3, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (48, 44, 2, 34, 10, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (49, 19, 1, 24, 6, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (50, 13, 5, 27, 5, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (51, 22, 15, 9, 3, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (52, 7, 18, 31, 3, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (53, 11, 3, 21, 4, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (54, 1, 17, 3, 15, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (55, 14, 14, 26, 4, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (56, 9, 8, 3, 6, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (57, 16, 9, 45, 11, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (58, 2, 18, 18, 5, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (59, 23, 20, 2, 13, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (60, 2, 4, 23, 20, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (61, 35, 5, 31, 9, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (62, 33, 19, 33, 7, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (63, 22, 16, 22, 17, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (64, 42, 5, 25, 2, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (65, 47, 10, 32, 13, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (66, 36, 17, 22, 3, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (67, 42, 12, 25, 2, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (68, 29, 4, 6, 1, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (69, 38, 13, 21, 9, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (70, 40, 8, 5, 6, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (71, 48, 12, 8, 7, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (72, 22, 8, 39, 1, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (73, 19, 14, 17, 11, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (74, 3, 13, 25, 19, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (75, 29, 7, 21, 20, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (76, 1, 3, 5, 17, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (77, 48, 16, 11, 20, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (78, 14, 15, 31, 7, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (79, 10, 3, 10, 15, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (80, 14, 15, 5, 17, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (81, 32, 3, 35, 9, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (82, 45, 10, 24, 19, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (83, 40, 9, 4, 11, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (84, 27, 7, 20, 16, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (85, 47, 14, 25, 20, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (86, 32, 11, 9, 13, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (87, 12, 12, 36, 6, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (88, 27, 20, 20, 13, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (89, 14, 10, 23, 6, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (90, 36, 15, 23, 2, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (91, 15, 4, 29, 16, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (92, 24, 15, 31, 7, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (93, 38, 11, 45, 8, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (94, 43, 1, 27, 15, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (95, 30, 15, 13, 4, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (96, 36, 11, 30, 2, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (97, 36, 12, 13, 7, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (98, 42, 20, 16, 10, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (99, 17, 5, 10, 13, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (100, 20, 8, 9, 2, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (101, 21, 7, 16, 11, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (102, 23, 6, 15, 13, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (103, 38, 13, 38, 8, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (104, 36, 10, 42, 3, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (105, 16, 11, 24, 6, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (106, 26, 5, 43, 17, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (107, 23, 12, 34, 5, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (108, 24, 17, 37, 15, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (109, 48, 9, 10, 15, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (110, 49, 12, 14, 15, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (111, 3, 16, 14, 16, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (112, 28, 3, 45, 7, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (113, 29, 16, 26, 19, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (114, 38, 6, 9, 5, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (115, 27, 2, 2, 6, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (116, 13, 8, 33, 6, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (117, 41, 15, 41, 11, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (118, 18, 2, 4, 3, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (119, 3, 8, 13, 19, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (120, 34, 14, 5, 19, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (121, 24, 16, 16, 2, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (122, 12, 13, 30, 2, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (123, 13, 2, 20, 2, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (124, 30, 1, 24, 3, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (125, 10, 10, 31, 18, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (126, 32, 17, 33, 11, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (127, 9, 14, 39, 14, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (128, 27, 9, 15, 17, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (129, 40, 13, 7, 5, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (130, 31, 7, 20, 6, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (131, 33, 9, 18, 10, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (132, 7, 11, 37, 6, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (133, 5, 16, 13, 19, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (134, 41, 15, 28, 14, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (135, 25, 4, 6, 8, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (136, 45, 15, 37, 14, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (137, 21, 5, 20, 4, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (138, 44, 1, 38, 18, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (139, 15, 3, 45, 7, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (140, 22, 1, 44, 16, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (141, 5, 8, 42, 7, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (142, 36, 12, 14, 17, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (143, 35, 20, 40, 1, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (144, 12, 16, 27, 9, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (145, 17, 8, 44, 6, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (146, 43, 13, 22, 19, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (147, 1, 2, 9, 15, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (148, 1, 17, 2, 8, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (149, 22, 20, 42, 14, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (150, 9, 7, 11, 9, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (151, 4, 4, 23, 3, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (152, 43, 9, 17, 15, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (153, 15, 9, 18, 4, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (154, 1, 11, 2, 17, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (155, 37, 9, 2, 1, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (156, 22, 18, 37, 8, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (157, 28, 20, 8, 7, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (158, 25, 5, 41, 10, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (159, 26, 11, 23, 5, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (160, 38, 14, 12, 9, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (161, 22, 2, 15, 9, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (162, 42, 1, 34, 14, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (163, 29, 13, 29, 3, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (164, 27, 1, 5, 12, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (165, 35, 20, 14, 7, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (166, 2, 2, 30, 18, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (167, 46, 6, 7, 20, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (168, 41, 15, 6, 19, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (169, 44, 16, 30, 18, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (170, 45, 17, 29, 4, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (171, 19, 17, 15, 5, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (172, 43, 19, 43, 3, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (173, 14, 19, 10, 18, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (174, 45, 2, 31, 14, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (175, 25, 4, 38, 16, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (176, 22, 8, 17, 11, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (177, 22, 14, 36, 12, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (178, 30, 7, 5, 19, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (179, 44, 3, 15, 3, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (180, 13, 18, 8, 9, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (181, 39, 14, 40, 1, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (182, 32, 15, 1, 18, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (183, 2, 20, 3, 4, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (184, 32, 2, 16, 20, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (185, 33, 11, 42, 20, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (186, 47, 15, 39, 1, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (187, 8, 12, 22, 3, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (188, 30, 3, 23, 14, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (189, 31, 3, 40, 13, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (190, 8, 20, 5, 5, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (191, 26, 12, 45, 18, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (192, 28, 14, 35, 15, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (193, 44, 9, 34, 17, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (194, 40, 2, 41, 1, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (195, 31, 18, 25, 12, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (196, 37, 7, 3, 8, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (197, 44, 9, 8, 3, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (198, 13, 9, 26, 7, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (199, 17, 1, 43, 2, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (200, 19, 7, 33, 8, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (201, 1, 11, 42, 9, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (202, 14, 20, 30, 20, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (203, 31, 12, 1, 5, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (204, 19, 9, 4, 3, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (205, 7, 3, 31, 20, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (206, 18, 7, 28, 5, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (207, 2, 3, 25, 16, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (208, 40, 10, 10, 18, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (209, 45, 6, 9, 14, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (210, 47, 8, 3, 2, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (211, 33, 4, 24, 2, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (212, 5, 15, 6, 14, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (213, 45, 2, 9, 8, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (214, 42, 17, 12, 9, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (215, 43, 13, 22, 10, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (216, 37, 11, 33, 18, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (217, 33, 16, 15, 14, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (218, 1, 5, 38, 12, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (219, 23, 7, 44, 15, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (220, 29, 15, 10, 11, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (221, 43, 11, 43, 10, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (222, 39, 1, 31, 19, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (223, 11, 18, 37, 5, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (224, 16, 3, 1, 1, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (225, 47, 8, 11, 18, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (226, 36, 7, 12, 16, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (227, 41, 7, 1, 15, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (228, 12, 5, 27, 15, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (229, 29, 7, 23, 8, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (230, 4, 7, 30, 20, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (231, 48, 13, 30, 3, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (232, 26, 16, 21, 13, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (233, 43, 14, 44, 14, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (234, 31, 8, 23, 4, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (235, 15, 18, 29, 9, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (236, 29, 12, 4, 12, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (237, 20, 7, 30, 12, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (238, 38, 5, 18, 4, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (239, 17, 13, 31, 5, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (240, 7, 4, 12, 10, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (241, 42, 12, 10, 3, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (242, 10, 12, 13, 1, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (243, 4, 4, 19, 5, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (244, 37, 1, 21, 19, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (245, 42, 20, 29, 16, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (246, 31, 12, 18, 9, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (247, 3, 20, 38, 15, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (248, 1, 2, 21, 1, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (249, 10, 6, 24, 16, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (250, 23, 5, 21, 10, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (251, 26, 10, 32, 17, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (252, 7, 3, 37, 15, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (253, 38, 9, 43, 5, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (254, 1, 17, 45, 5, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (255, 41, 20, 15, 6, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (256, 48, 18, 26, 20, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (257, 39, 4, 2, 18, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (258, 27, 4, 14, 17, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (259, 12, 18, 22, 14, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (260, 37, 10, 9, 7, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (261, 38, 12, 39, 19, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (262, 37, 18, 13, 15, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (263, 28, 16, 13, 5, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (264, 23, 7, 18, 8, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (265, 21, 16, 34, 20, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (266, 43, 7, 33, 3, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (267, 1, 15, 22, 8, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (268, 17, 9, 23, 11, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (269, 11, 11, 24, 2, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (270, 6, 6, 38, 9, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (271, 44, 12, 30, 16, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (272, 8, 14, 39, 7, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (273, 36, 1, 15, 13, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (274, 40, 15, 1, 2, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (275, 4, 3, 40, 3, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (276, 24, 19, 27, 2, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (277, 16, 2, 26, 14, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (278, 12, 6, 9, 16, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (279, 30, 12, 23, 15, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (280, 5, 4, 27, 13, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (281, 44, 16, 17, 12, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (282, 32, 16, 20, 13, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (283, 4, 6, 12, 7, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (284, 5, 17, 4, 9, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (285, 38, 13, 35, 12, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (286, 3, 7, 37, 14, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (287, 35, 14, 41, 13, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (288, 9, 20, 31, 1, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (289, 11, 5, 45, 17, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (290, 4, 4, 11, 13, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (291, 16, 5, 5, 6, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (292, 17, 8, 34, 11, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (293, 17, 1, 1, 19, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (294, 16, 9, 22, 14, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (295, 30, 13, 19, 9, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (296, 22, 7, 19, 12, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (297, 3, 8, 16, 5, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (298, 38, 2, 26, 17, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (299, 20, 14, 30, 17, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (300, 28, 12, 10, 1, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (301, 8, 10, 11, 7, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (302, 42, 20, 9, 3, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (303, 44, 8, 31, 7, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (304, 20, 17, 34, 5, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (305, 39, 5, 40, 10, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (306, 2, 20, 27, 7, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (307, 47, 16, 30, 7, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (308, 35, 2, 16, 12, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (309, 28, 12, 12, 3, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (310, 39, 10, 13, 8, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (311, 20, 9, 40, 6, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (312, 25, 2, 42, 3, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (313, 11, 10, 43, 1, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (314, 45, 1, 10, 13, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (315, 1, 12, 23, 6, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (316, 20, 13, 17, 3, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (317, 10, 1, 24, 3, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (318, 45, 1, 11, 1, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (319, 25, 19, 12, 6, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (320, 41, 18, 9, 13, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (321, 29, 3, 10, 15, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (322, 37, 20, 12, 18, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (323, 28, 16, 2, 19, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (324, 23, 8, 40, 14, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (325, 12, 3, 4, 3, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (326, 46, 14, 38, 6, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (327, 28, 11, 13, 7, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (328, 14, 16, 31, 10, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (329, 28, 11, 28, 8, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (330, 21, 15, 20, 11, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (331, 14, 16, 14, 4, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (332, 39, 6, 20, 18, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (333, 34, 4, 28, 7, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (334, 38, 16, 43, 10, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (335, 5, 19, 8, 4, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (336, 31, 12, 35, 1, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (337, 4, 16, 38, 5, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (338, 17, 9, 41, 15, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (339, 8, 3, 31, 6, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (340, 22, 17, 39, 15, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (341, 32, 12, 33, 4, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (342, 10, 6, 45, 9, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (343, 27, 14, 19, 14, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (344, 33, 4, 6, 6, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (345, 21, 8, 31, 11, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (346, 30, 11, 23, 19, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (347, 27, 3, 7, 18, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (348, 34, 18, 32, 17, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (349, 15, 14, 39, 10, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (350, 49, 8, 18, 2, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (351, 30, 17, 33, 4, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (352, 31, 13, 34, 6, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (353, 1, 11, 30, 10, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (354, 22, 3, 44, 1, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (355, 42, 14, 22, 18, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (356, 12, 18, 13, 15, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (357, 29, 12, 17, 5, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (358, 47, 1, 22, 9, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (359, 3, 12, 31, 16, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (360, 3, 13, 45, 12, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (361, 36, 10, 36, 13, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (362, 40, 3, 10, 20, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (363, 19, 14, 36, 14, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (364, 19, 10, 26, 10, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (365, 18, 18, 8, 18, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (366, 45, 13, 6, 3, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (367, 10, 9, 34, 15, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (368, 45, 13, 13, 6, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (369, 5, 11, 32, 10, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (370, 3, 11, 3, 4, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (371, 14, 5, 33, 2, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (372, 49, 2, 32, 20, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (373, 44, 11, 21, 15, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (374, 27, 18, 10, 6, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (375, 30, 19, 25, 13, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (376, 2, 5, 31, 10, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (377, 5, 14, 14, 6, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (378, 9, 10, 17, 12, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (379, 11, 10, 28, 3, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (380, 48, 7, 45, 19, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (381, 5, 5, 3, 6, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (382, 24, 13, 40, 9, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (383, 31, 1, 35, 11, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (384, 12, 1, 13, 12, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (385, 23, 11, 1, 8, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (386, 40, 12, 41, 2, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (387, 22, 1, 14, 7, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (388, 15, 6, 15, 20, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (389, 21, 2, 9, 14, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (390, 33, 5, 17, 17, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (391, 40, 16, 26, 20, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (392, 45, 14, 42, 4, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (393, 39, 9, 10, 12, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (394, 31, 9, 11, 13, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (395, 7, 13, 30, 3, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (396, 29, 4, 38, 10, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (397, 32, 5, 14, 19, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (398, 34, 4, 18, 4, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (399, 23, 19, 15, 17, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (400, 23, 11, 19, 13, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (401, 9, 4, 26, 19, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (402, 20, 5, 7, 15, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (403, 2, 4, 19, 17, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (404, 19, 4, 41, 10, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (405, 14, 7, 9, 6, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (406, 1, 13, 17, 5, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (407, 7, 5, 3, 1, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (408, 36, 11, 26, 12, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (409, 35, 4, 2, 12, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (410, 12, 6, 42, 10, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (411, 40, 10, 6, 5, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (412, 30, 4, 1, 8, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (413, 9, 6, 17, 20, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (414, 10, 1, 4, 11, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (415, 24, 10, 42, 18, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (416, 46, 12, 20, 5, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (417, 38, 18, 40, 4, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (418, 41, 6, 21, 20, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (419, 38, 6, 37, 15, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (420, 43, 3, 21, 8, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (421, 33, 20, 29, 15, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (422, 21, 18, 27, 17, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (423, 14, 17, 9, 1, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (424, 25, 11, 24, 1, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (425, 14, 18, 25, 13, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (426, 24, 11, 25, 6, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (427, 49, 5, 7, 16, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (428, 29, 8, 45, 11, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (429, 32, 2, 18, 7, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (430, 30, 4, 17, 7, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (431, 44, 8, 14, 16, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (432, 2, 4, 43, 17, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (433, 35, 3, 15, 14, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (434, 4, 14, 9, 15, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (435, 35, 16, 24, 17, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (436, 37, 4, 11, 2, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (437, 30, 11, 15, 1, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (438, 23, 15, 43, 11, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (439, 6, 14, 37, 19, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (440, 40, 6, 34, 12, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (441, 26, 11, 40, 5, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (442, 31, 12, 34, 14, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (443, 34, 3, 2, 12, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (444, 31, 17, 2, 3, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (445, 23, 14, 5, 2, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (446, 16, 2, 13, 15, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (447, 12, 4, 3, 3, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (448, 15, 20, 32, 16, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (449, 26, 18, 9, 13, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (450, 38, 1, 37, 5, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (451, 3, 2, 44, 3, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (452, 28, 19, 25, 19, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (453, 35, 17, 11, 8, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (454, 33, 1, 21, 8, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (455, 17, 19, 38, 20, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (456, 11, 12, 12, 1, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (457, 16, 3, 8, 18, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (458, 35, 7, 10, 19, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (459, 30, 15, 40, 19, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (460, 10, 7, 37, 10, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (461, 15, 3, 25, 16, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (462, 3, 6, 11, 12, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (463, 12, 10, 7, 19, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (464, 35, 16, 35, 16, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (465, 9, 7, 43, 13, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (466, 35, 2, 21, 1, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (467, 2, 19, 44, 18, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (468, 5, 5, 10, 18, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (469, 32, 19, 40, 4, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (470, 15, 6, 43, 14, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (471, 44, 16, 43, 5, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (472, 30, 1, 39, 7, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (473, 6, 5, 25, 6, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (474, 36, 15, 20, 13, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (475, 12, 5, 11, 11, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (476, 33, 15, 2, 19, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (477, 24, 19, 13, 4, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (478, 29, 7, 11, 6, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (479, 46, 1, 35, 16, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (480, 29, 1, 5, 5, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (481, 24, 1, 35, 14, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (482, 31, 18, 16, 14, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (483, 48, 5, 40, 13, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (484, 21, 15, 23, 6, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (485, 4, 13, 44, 3, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (486, 27, 13, 42, 20, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (487, 45, 8, 41, 10, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (488, 7, 9, 39, 17, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (489, 36, 7, 6, 6, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (490, 30, 3, 41, 10, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (491, 43, 12, 5, 16, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (492, 38, 17, 44, 5, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (493, 22, 12, 14, 2, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (494, 17, 6, 36, 3, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (495, 37, 19, 28, 3, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (496, 44, 15, 1, 7, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (497, 18, 8, 45, 16, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (498, 9, 3, 8, 14, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (499, 36, 2, 39, 15, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (500, 42, 12, 14, 18, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (501, 48, 19, 27, 2, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (502, 12, 20, 33, 5, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (503, 28, 12, 44, 20, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (504, 36, 10, 40, 13, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (505, 3, 6, 36, 10, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (506, 34, 6, 8, 4, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (507, 29, 3, 15, 9, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (508, 8, 3, 42, 14, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (509, 35, 13, 12, 17, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (510, 32, 8, 14, 15, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (511, 29, 6, 12, 12, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (512, 38, 1, 35, 15, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (513, 16, 9, 30, 8, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (514, 34, 17, 36, 5, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (515, 12, 13, 3, 1, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (516, 37, 10, 14, 3, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (517, 41, 3, 26, 12, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (518, 21, 5, 16, 8, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (519, 32, 1, 14, 3, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (520, 48, 17, 43, 13, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (521, 24, 1, 9, 14, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (522, 3, 14, 5, 11, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (523, 31, 3, 44, 4, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (524, 45, 7, 15, 1, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (525, 22, 2, 12, 18, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (526, 20, 19, 5, 18, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (527, 36, 20, 13, 12, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (528, 34, 15, 34, 8, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (529, 46, 2, 44, 11, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (530, 44, 7, 10, 19, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (531, 14, 15, 23, 17, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (532, 31, 18, 20, 5, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (533, 30, 16, 43, 11, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (534, 22, 8, 15, 19, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (535, 32, 2, 15, 11, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (536, 5, 10, 30, 16, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (537, 37, 9, 21, 17, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (538, 36, 5, 42, 17, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (539, 2, 9, 12, 8, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (540, 8, 16, 41, 1, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (541, 5, 20, 12, 8, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (542, 38, 16, 34, 8, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (543, 2, 20, 40, 2, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (544, 7, 1, 38, 6, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (545, 45, 19, 43, 5, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (546, 3, 14, 21, 15, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (547, 48, 16, 37, 9, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (548, 7, 7, 43, 20, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (549, 35, 10, 8, 20, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (550, 25, 19, 22, 11, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (551, 12, 7, 5, 15, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (552, 19, 16, 13, 4, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (553, 27, 16, 15, 20, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (554, 35, 3, 31, 20, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (555, 9, 14, 40, 11, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (556, 3, 14, 36, 4, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (557, 43, 19, 19, 20, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (558, 5, 7, 24, 6, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (559, 23, 5, 21, 15, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (560, 8, 6, 19, 7, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (561, 22, 8, 32, 1, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (562, 16, 14, 21, 12, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (563, 2, 7, 36, 18, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (564, 27, 10, 25, 2, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (565, 29, 13, 25, 13, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (566, 39, 20, 20, 3, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (567, 29, 7, 12, 10, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (568, 6, 18, 1, 17, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (569, 6, 2, 18, 15, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (570, 45, 4, 22, 5, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (571, 28, 18, 18, 8, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (572, 33, 5, 36, 8, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (573, 3, 10, 22, 10, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (574, 22, 10, 31, 4, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (575, 27, 7, 20, 17, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (576, 44, 19, 28, 8, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (577, 41, 2, 31, 12, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (578, 33, 5, 17, 9, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (579, 47, 18, 32, 8, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (580, 17, 14, 32, 15, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (581, 14, 2, 19, 13, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (582, 13, 2, 1, 20, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (583, 16, 5, 44, 8, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (584, 44, 10, 15, 6, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (585, 5, 1, 5, 2, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (586, 23, 20, 44, 9, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (587, 15, 18, 42, 9, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (588, 25, 1, 28, 20, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (589, 1, 4, 8, 13, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (590, 41, 18, 38, 5, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (591, 10, 1, 2, 15, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (592, 46, 16, 45, 11, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (593, 16, 8, 34, 7, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (594, 9, 17, 8, 18, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (595, 34, 13, 20, 5, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (596, 4, 9, 32, 10, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (597, 25, 13, 31, 20, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (598, 9, 17, 8, 15, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (599, 34, 7, 13, 15, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (600, 32, 20, 20, 8, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (601, 32, 17, 6, 4, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (602, 48, 8, 11, 16, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (603, 46, 6, 11, 4, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (604, 33, 11, 44, 7, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (605, 20, 2, 42, 5, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (606, 35, 3, 15, 1, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (607, 22, 14, 29, 15, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (608, 30, 3, 39, 4, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (609, 22, 19, 17, 4, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (610, 33, 12, 1, 2, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (611, 40, 9, 30, 4, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (612, 3, 3, 35, 2, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (613, 4, 3, 12, 6, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (614, 12, 11, 20, 8, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (615, 11, 16, 12, 5, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (616, 41, 1, 6, 7, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (617, 42, 18, 17, 10, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (618, 21, 8, 35, 8, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (619, 2, 16, 34, 4, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (620, 7, 15, 19, 2, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (621, 33, 11, 16, 18, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (622, 8, 2, 42, 16, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (623, 27, 15, 14, 1, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (624, 14, 13, 36, 17, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (625, 40, 3, 31, 20, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (626, 14, 2, 28, 20, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (627, 23, 5, 28, 2, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (628, 10, 4, 19, 8, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (629, 41, 11, 3, 5, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (630, 20, 13, 26, 13, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (631, 22, 20, 11, 8, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (632, 19, 3, 37, 11, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (633, 8, 13, 19, 1, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (634, 19, 5, 7, 13, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (635, 44, 15, 10, 7, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (636, 19, 2, 45, 3, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (637, 46, 10, 4, 20, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (638, 21, 19, 18, 17, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (639, 7, 6, 41, 3, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (640, 23, 14, 15, 2, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (641, 24, 9, 34, 20, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (642, 17, 9, 37, 13, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (643, 46, 4, 38, 8, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (644, 32, 16, 32, 7, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (645, 13, 7, 29, 8, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (646, 42, 4, 12, 5, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (647, 1, 3, 9, 2, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (648, 37, 2, 42, 1, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (649, 23, 2, 19, 15, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (650, 22, 10, 10, 10, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (651, 12, 1, 33, 2, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (652, 45, 12, 7, 11, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (653, 5, 10, 24, 20, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (654, 37, 11, 40, 1, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (655, 25, 9, 20, 12, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (656, 19, 16, 1, 8, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (657, 33, 19, 42, 18, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (658, 25, 9, 33, 7, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (659, 44, 9, 41, 6, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (660, 20, 18, 43, 16, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (661, 23, 19, 10, 18, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (662, 2, 9, 30, 18, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (663, 48, 9, 5, 3, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (664, 30, 3, 26, 13, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (665, 12, 6, 22, 4, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (666, 27, 2, 18, 2, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (667, 38, 8, 18, 18, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (668, 16, 14, 10, 15, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (669, 21, 13, 21, 17, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (670, 18, 8, 18, 13, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (671, 31, 5, 20, 1, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (672, 39, 8, 15, 2, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (673, 4, 16, 35, 2, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (674, 7, 11, 2, 3, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (675, 19, 8, 24, 6, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (676, 36, 14, 14, 11, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (677, 18, 1, 45, 17, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (678, 30, 12, 2, 8, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (679, 32, 7, 27, 15, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (680, 16, 7, 19, 8, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (681, 38, 6, 3, 15, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (682, 19, 14, 32, 6, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (683, 43, 8, 32, 2, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (684, 43, 15, 43, 6, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (685, 38, 12, 11, 2, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (686, 29, 8, 13, 1, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (687, 30, 9, 29, 19, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (688, 6, 17, 1, 19, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (689, 11, 13, 19, 1, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (690, 19, 11, 16, 18, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (691, 13, 18, 33, 4, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (692, 18, 9, 27, 11, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (693, 29, 8, 7, 18, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (694, 17, 20, 14, 16, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (695, 13, 6, 40, 13, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (696, 14, 3, 25, 5, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (697, 32, 10, 45, 5, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (698, 8, 5, 6, 20, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (699, 23, 7, 33, 2, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (700, 17, 7, 38, 10, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (701, 9, 8, 32, 3, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (702, 26, 1, 33, 1, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (703, 18, 14, 20, 7, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (704, 48, 5, 4, 13, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (705, 11, 5, 3, 20, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (706, 28, 20, 35, 4, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (707, 44, 15, 31, 20, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (708, 49, 18, 27, 17, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (709, 23, 5, 2, 16, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (710, 39, 6, 12, 19, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (711, 8, 16, 39, 9, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (712, 13, 3, 41, 8, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (713, 22, 2, 6, 2, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (714, 4, 14, 18, 19, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (715, 11, 14, 42, 7, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (716, 46, 2, 24, 5, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (717, 23, 11, 39, 9, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (718, 9, 17, 14, 15, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (719, 31, 14, 45, 13, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (720, 29, 9, 1, 19, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (721, 43, 2, 21, 14, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (722, 49, 5, 9, 1, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (723, 13, 8, 33, 4, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (724, 1, 20, 6, 9, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (725, 14, 13, 4, 10, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (726, 14, 19, 28, 16, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (727, 34, 7, 35, 15, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (728, 14, 18, 11, 5, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (729, 46, 20, 33, 3, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (730, 36, 11, 10, 10, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (731, 39, 19, 4, 11, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (732, 19, 19, 8, 4, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (733, 14, 5, 26, 3, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (734, 48, 3, 15, 2, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (735, 36, 14, 43, 14, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (736, 17, 11, 44, 16, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (737, 19, 12, 14, 18, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (738, 23, 7, 11, 10, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (739, 40, 7, 4, 16, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (740, 18, 14, 41, 10, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (741, 18, 12, 45, 6, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (742, 48, 7, 1, 1, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (743, 9, 4, 14, 1, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (744, 11, 12, 5, 9, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (745, 46, 18, 21, 12, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (746, 30, 4, 5, 5, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (747, 16, 1, 25, 2, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (748, 4, 4, 36, 8, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (749, 33, 1, 14, 6, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (750, 44, 2, 16, 7, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (751, 29, 15, 37, 14, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (752, 47, 5, 3, 7, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (753, 48, 7, 18, 10, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (754, 33, 11, 40, 7, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (755, 38, 10, 29, 1, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (756, 33, 6, 37, 10, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (757, 29, 2, 10, 20, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (758, 1, 3, 3, 15, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (759, 21, 13, 19, 15, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (760, 3, 13, 13, 1, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (761, 36, 7, 45, 2, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (762, 25, 5, 29, 13, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (763, 35, 11, 13, 12, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (764, 48, 16, 39, 14, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (765, 31, 20, 16, 8, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (766, 49, 11, 5, 20, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (767, 18, 2, 30, 6, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (768, 48, 1, 28, 4, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (769, 31, 17, 9, 15, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (770, 17, 19, 17, 10, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (771, 41, 11, 42, 14, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (772, 9, 2, 29, 2, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (773, 27, 14, 23, 14, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (774, 34, 4, 10, 1, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (775, 2, 16, 28, 2, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (776, 19, 11, 18, 15, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (777, 27, 17, 27, 17, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (778, 20, 4, 36, 4, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (779, 27, 20, 2, 3, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (780, 31, 1, 16, 1, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (781, 39, 13, 10, 8, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (782, 8, 13, 27, 1, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (783, 45, 15, 45, 15, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (784, 13, 3, 35, 16, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (785, 21, 2, 22, 17, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (786, 44, 11, 34, 16, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (787, 47, 16, 2, 11, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (788, 13, 19, 5, 11, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (789, 3, 6, 35, 19, 13)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (790, 10, 13, 18, 2, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (791, 19, 10, 8, 1, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (792, 49, 15, 6, 18, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (793, 34, 1, 8, 15, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (794, 36, 4, 15, 13, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (795, 22, 8, 12, 16, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (796, 14, 2, 19, 9, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (797, 8, 10, 2, 19, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (798, 38, 15, 18, 1, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (799, 29, 7, 36, 16, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (800, 33, 16, 45, 19, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (801, 24, 17, 28, 15, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (802, 34, 1, 30, 9, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (803, 21, 4, 37, 8, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (804, 30, 5, 30, 13, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (805, 45, 1, 25, 8, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (806, 47, 8, 44, 11, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (807, 36, 15, 8, 6, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (808, 37, 20, 34, 16, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (809, 40, 20, 37, 15, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (810, 14, 20, 44, 1, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (811, 11, 6, 3, 8, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (812, 42, 8, 32, 18, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (813, 34, 20, 19, 19, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (814, 35, 18, 34, 3, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (815, 37, 17, 10, 13, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (816, 43, 16, 3, 18, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (817, 15, 11, 33, 16, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (818, 32, 2, 11, 9, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (819, 26, 15, 4, 3, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (820, 47, 11, 44, 6, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (821, 23, 2, 11, 6, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (822, 23, 12, 36, 6, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (823, 30, 6, 1, 12, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (824, 12, 13, 29, 6, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (825, 3, 13, 5, 4, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (826, 36, 1, 13, 1, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (827, 2, 11, 44, 2, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (828, 48, 4, 11, 1, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (829, 16, 13, 9, 17, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (830, 11, 20, 36, 8, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (831, 23, 4, 16, 6, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (832, 11, 20, 9, 7, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (833, 32, 15, 43, 14, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (834, 46, 7, 35, 15, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (835, 11, 8, 38, 11, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (836, 35, 3, 8, 17, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (837, 17, 11, 13, 4, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (838, 21, 10, 31, 2, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (839, 37, 4, 24, 14, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (840, 42, 12, 25, 18, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (841, 10, 19, 6, 1, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (842, 5, 2, 1, 18, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (843, 20, 8, 10, 15, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (844, 13, 6, 3, 19, 19)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (845, 11, 10, 32, 16, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (846, 38, 11, 11, 19, 28)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (847, 44, 3, 27, 16, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (848, 18, 20, 32, 19, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (849, 1, 6, 22, 4, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (850, 45, 7, 13, 2, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (851, 1, 10, 14, 5, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (852, 11, 18, 9, 18, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (853, 22, 3, 4, 15, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (854, 31, 7, 36, 1, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (855, 6, 14, 31, 4, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (856, 25, 12, 43, 13, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (857, 37, 3, 5, 9, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (858, 37, 17, 32, 17, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (859, 27, 17, 14, 20, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (860, 22, 10, 36, 19, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (861, 2, 2, 33, 10, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (862, 43, 18, 17, 7, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (863, 19, 9, 20, 16, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (864, 11, 14, 36, 14, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (865, 49, 2, 26, 11, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (866, 49, 18, 18, 18, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (867, 16, 15, 39, 17, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (868, 3, 18, 44, 14, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (869, 32, 14, 15, 9, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (870, 20, 1, 27, 15, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (871, 23, 1, 13, 10, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (872, 4, 12, 15, 16, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (873, 36, 12, 2, 3, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (874, 3, 6, 4, 4, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (875, 35, 10, 13, 3, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (876, 29, 5, 19, 3, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (877, 42, 16, 10, 16, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (878, 14, 6, 3, 11, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (879, 39, 3, 21, 9, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (880, 41, 1, 20, 7, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (881, 19, 11, 40, 15, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (882, 41, 16, 26, 2, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (883, 5, 12, 5, 17, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (884, 20, 18, 12, 14, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (885, 18, 12, 15, 12, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (886, 44, 14, 17, 16, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (887, 18, 1, 26, 17, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (888, 43, 9, 18, 2, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (889, 6, 13, 14, 2, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (890, 4, 10, 16, 16, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (891, 22, 7, 20, 8, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (892, 45, 7, 45, 18, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (893, 24, 14, 36, 11, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (894, 12, 18, 2, 14, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (895, 42, 12, 19, 13, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (896, 33, 3, 40, 15, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (897, 43, 2, 9, 2, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (898, 22, 15, 7, 10, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (899, 13, 10, 37, 10, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (900, 48, 15, 15, 9, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (901, 13, 2, 30, 20, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (902, 18, 19, 28, 13, 38)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (903, 47, 10, 15, 2, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (904, 40, 13, 19, 5, 32)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (905, 5, 20, 5, 10, 16)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (906, 15, 7, 29, 16, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (907, 34, 6, 32, 10, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (908, 3, 7, 7, 19, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (909, 14, 17, 3, 5, 22)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (910, 44, 17, 43, 2, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (911, 35, 11, 23, 3, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (912, 11, 9, 37, 4, 26)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (913, 23, 20, 38, 15, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (914, 32, 4, 1, 18, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (915, 11, 10, 20, 13, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (916, 35, 18, 44, 15, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (917, 2, 2, 6, 1, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (918, 11, 9, 2, 20, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (919, 2, 6, 42, 5, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (920, 48, 12, 43, 16, 21)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (921, 40, 15, 6, 14, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (922, 5, 5, 6, 10, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (923, 32, 10, 4, 9, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (924, 24, 18, 37, 7, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (925, 26, 4, 31, 20, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (926, 37, 13, 11, 1, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (927, 6, 10, 10, 19, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (928, 48, 15, 44, 3, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (929, 22, 6, 7, 3, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (930, 34, 13, 19, 14, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (931, 16, 9, 4, 2, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (932, 49, 16, 5, 9, 29)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (933, 46, 7, 1, 18, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (934, 42, 15, 21, 20, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (935, 37, 14, 34, 19, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (936, 17, 19, 18, 20, 18)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (937, 14, 8, 5, 11, 15)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (938, 40, 5, 40, 11, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (939, 39, 13, 45, 19, 7)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (940, 17, 9, 12, 19, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (941, 32, 17, 5, 12, 24)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (942, 4, 11, 31, 20, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (943, 48, 19, 32, 9, 10)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (944, 33, 9, 22, 11, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (945, 45, 17, 15, 1, 45)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (946, 17, 11, 45, 9, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (947, 5, 19, 11, 14, 9)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (948, 32, 3, 41, 15, 43)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (949, 45, 10, 20, 4, 40)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (950, 19, 2, 5, 12, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (951, 10, 10, 16, 3, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (952, 41, 1, 28, 17, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (953, 40, 10, 14, 12, 25)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (954, 32, 1, 38, 17, 35)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (955, 37, 16, 13, 6, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (956, 9, 4, 40, 1, 11)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (957, 23, 13, 15, 3, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (958, 13, 11, 28, 1, 8)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (959, 33, 11, 30, 18, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (960, 34, 11, 1, 5, 49)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (961, 3, 11, 10, 15, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (962, 20, 3, 29, 10, 44)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (963, 12, 9, 36, 15, 50)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (964, 36, 17, 27, 18, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (965, 25, 13, 6, 11, 12)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (966, 5, 9, 36, 20, 14)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (967, 41, 9, 1, 7, 2)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (968, 22, 10, 15, 17, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (969, 26, 3, 34, 7, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (970, 39, 8, 5, 4, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (971, 17, 17, 9, 19, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (972, 14, 20, 23, 2, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (973, 20, 3, 15, 12, 1)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (974, 39, 5, 29, 3, 5)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (975, 44, 12, 42, 11, 4)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (976, 25, 10, 5, 15, 42)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (977, 45, 7, 20, 2, 47)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (978, 25, 1, 27, 17, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (979, 22, 14, 23, 5, 39)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (980, 7, 2, 7, 5, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (981, 38, 19, 9, 1, 37)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (982, 33, 1, 29, 15, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (983, 34, 15, 5, 10, 3)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (984, 30, 2, 4, 2, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (985, 17, 10, 5, 1, 23)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (986, 19, 4, 40, 15, 48)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (987, 15, 12, 2, 3, 17)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (988, 31, 19, 28, 13, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (989, 11, 8, 42, 15, 33)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (990, 17, 2, 31, 5, 20)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (991, 10, 17, 33, 12, 36)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (992, 34, 18, 11, 19, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (993, 27, 14, 8, 6, 6)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (994, 25, 11, 7, 16, 30)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (995, 18, 1, 12, 4, 27)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (996, 26, 18, 41, 8, 46)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (997, 23, 13, 44, 2, 31)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (998, 30, 14, 36, 6, 41)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (999, 1, 16, 21, 9, 34)
GO
INSERT [dbo].[Inventory] ([InventoryID], [LocationID], [WaterID], [FoodID], [PowerID], [FactionID]) VALUES (1000, 15, 7, 2, 11, 48)
GO
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (1, N'Minneapolis MN', N' Vibrant city with diverse culture', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (2, N'St. Paul MN', N' Capital city known for historical sites', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (3, N'Duluth MN', N' Port city on Lake Superior', 4, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (4, N'Rochester MN', N' Medical hub with research facilities', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (5, N'Fargo ND', N' Growing city with strong economy', 4, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (6, N'Sioux Falls SD', N' Regional hub for healthcare and finance', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (7, N'Eau Claire WI', N' Scenic city with outdoor recreation', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (8, N'La Crosse WI', N' Historic city along the Mississippi River', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (9, N'Des Moines IA', N' Capital city with agricultural influence', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (10, N'Madison WI', N' University town with cultural attractions', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (11, N'Bismarck ND', N' Capital city with a resilient community', 4, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (12, N'Green Bay WI', N' Home of the Packers, industrial city', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (13, N'Omaha NE', N' Major transportation and business hub', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (14, N'Grand Forks ND', N' University town with strong community ties', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (15, N'Sioux City IA', N' Riverfront city with manufacturing base', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (16, N'Davenport IA', N' Cultural city along the Mississippi River', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (17, N'St. Cloud MN', N' Thriving city with educational institutions', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (18, N'Mankato MN', N' Regional center for arts and entertainment', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (19, N'Lincoln NE', N' Capital city with a growing tech sector', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (20, N'Waterloo IA', N' Industrial city with a diverse workforce', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (21, N'Appleton WI', N' Fox River Valley town known for paper industry', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (22, N'St. Joseph MO', N' Historic city with a strong sense of community', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (23, N'Cedar Rapids IA', N' Cultural and economic center in Eastern Iowa', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (24, N'Rapid City SD', N' Gateway to the Black Hills, outdoor recreation ', 4, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (25, N'La Vista NE', N' Suburb of Omaha with a mix of residential and business', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (26, N'Bloomington MN', N' Suburban city with shopping and entertainment', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (27, N'Brooklyn Park MN', N' Diverse community with parks and lakes', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (28, N'Grand Island NE', N' Central Nebraska city with agricultural ties', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (29, N'Mason City IA', N' Home to Meredith Willson''s "Music Man', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (30, N'Winona MN', N' Scenic town on the Mississippi River', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (31, N'Hutchinson KS', N' Industrial city with a focus on aerospace', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (32, N'St. Louis Park MN', N' Suburban city near Minneapolis with amenities', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (33, N'Council Bluffs IA', N' Riverfront city with a mix of industry and history', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (34, N'Burnsville MN', N' Southern suburb known for its parks and schools', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (35, N'Joplin MO', N' City with a strong emphasis on healthcare and education', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (36, N'Eagan MN', N' Suburban community with a mix of residential and retail', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (37, N'Oshkosh WI', N' University town with aviation and manufacturing', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (38, N'Columbia MO', N' College town with a vibrant arts and culture scene', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (39, N'Ankeny IA', N' Growing suburb with a focus on family-friendly living', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (40, N'Fergus Falls MN', N' Small town with a strong sense of community', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (41, N'North Platte NE', N' Central Nebraska city with a railroad history', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (42, N'Brookings SD', N' University town with a strong agricultural influence', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (43, N'Albert Lea MN', N' Southern town known for its lakes and outdoor activities', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (44, N'Marshall MN', N' Regional center for education and healthcare', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (45, N'Hastings NE', N' Picturesque town on the banks of the Platte River', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (46, N'Independence MO', N' Historic town with a focus on community events', 3, 2)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (47, N'Faribault MN', N' City with a strong emphasis on historic preservation', 3, 4)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (48, N'Excelsior Springs MO', N' Resort town with natural springs and parks', 2, 3)
GO
INSERT [dbo].[Location] ([LocationID], [LocationName], [LocationDescription], [LocationSafetyLevel], [LocationExpansionPotential]) VALUES (49, N'Manhattan KS', N' College town with a growing technology sector', 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[LocationLodging] ON 
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (1, 13, 9, 4, 2, 78)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (2, 2, 2, 3, 3, 87)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (3, 8, 22, 1, 2, 65)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (4, 16, 46, 1, 1, 72)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (5, 10, 40, 1, 5, 57)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (6, 10, 46, 4, 5, 11)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (7, 14, 34, 1, 1, 40)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (8, 14, 18, 1, 5, 6)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (9, 5, 27, 4, 2, 82)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (10, 5, 3, 4, 4, 2)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (11, 15, 16, 4, 3, 37)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (12, 2, 45, 5, 1, 4)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (13, 2, 2, 4, 4, 3)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (14, 10, 14, 3, 4, 61)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (15, 2, 39, 3, 1, 37)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (16, 18, 42, 3, 1, 44)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (17, 3, 18, 1, 2, 9)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (18, 11, 39, 5, 4, 22)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (19, 1, 5, 3, 4, 7)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (20, 7, 33, 3, 3, 18)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (21, 16, 16, 3, 5, 24)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (22, 13, 35, 2, 3, 21)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (23, 8, 46, 5, 4, 2)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (24, 9, 30, 1, 5, 31)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (25, 18, 14, 3, 2, 73)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (26, 16, 9, 5, 2, 68)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (27, 20, 16, 2, 5, 81)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (28, 5, 12, 5, 1, 94)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (29, 15, 24, 4, 3, 94)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (30, 10, 13, 3, 4, 1)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (31, 15, 32, 5, 1, 61)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (32, 11, 19, 2, 5, 32)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (33, 18, 4, 5, 5, 19)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (34, 11, 46, 3, 3, 87)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (35, 9, 20, 2, 2, 53)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (36, 1, 19, 3, 3, 32)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (37, 4, 26, 3, 2, 90)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (38, 2, 15, 3, 4, 20)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (39, 20, 11, 2, 5, 36)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (40, 11, 27, 3, 5, 7)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (41, 9, 49, 4, 5, 28)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (42, 19, 31, 1, 3, 91)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (43, 1, 9, 4, 1, 71)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (44, 6, 45, 2, 3, 44)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (45, 8, 14, 5, 2, 54)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (46, 2, 24, 2, 3, 19)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (47, 20, 13, 4, 4, 4)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (48, 1, 5, 5, 5, 95)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (49, 5, 40, 1, 4, 92)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (50, 16, 5, 5, 1, 75)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (51, 19, 28, 4, 2, 98)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (52, 20, 7, 3, 4, 95)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (53, 16, 17, 2, 5, 29)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (54, 16, 3, 5, 5, 49)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (55, 15, 49, 2, 2, 89)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (56, 15, 48, 2, 3, 80)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (57, 16, 17, 5, 4, 11)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (58, 2, 34, 1, 5, 68)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (59, 8, 17, 5, 2, 100)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (60, 7, 49, 1, 2, 96)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (61, 12, 44, 1, 1, 48)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (62, 8, 8, 3, 4, 78)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (63, 12, 28, 2, 4, 35)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (64, 3, 12, 1, 3, 18)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (65, 4, 2, 1, 1, 85)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (66, 20, 12, 3, 3, 62)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (67, 17, 2, 3, 2, 27)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (68, 19, 25, 4, 1, 61)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (69, 11, 27, 5, 3, 7)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (70, 3, 37, 5, 2, 46)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (71, 11, 26, 5, 2, 77)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (72, 13, 25, 3, 1, 36)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (73, 13, 6, 2, 1, 80)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (74, 4, 10, 5, 2, 91)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (75, 8, 42, 4, 3, 17)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (76, 5, 2, 2, 3, 9)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (77, 13, 15, 1, 2, 45)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (78, 16, 29, 2, 5, 70)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (79, 15, 40, 5, 3, 93)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (80, 4, 9, 2, 3, 47)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (81, 4, 21, 2, 3, 16)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (82, 6, 39, 3, 4, 95)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (83, 4, 29, 1, 1, 58)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (84, 15, 9, 5, 4, 14)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (85, 7, 43, 3, 2, 89)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (86, 4, 29, 5, 5, 49)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (87, 11, 13, 4, 2, 94)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (88, 12, 43, 1, 1, 71)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (89, 19, 31, 5, 2, 48)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (90, 4, 40, 2, 1, 4)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (91, 2, 17, 3, 1, 57)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (92, 2, 12, 2, 2, 16)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (93, 3, 31, 5, 3, 37)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (94, 18, 1, 2, 4, 72)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (95, 6, 17, 3, 4, 70)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (96, 19, 18, 4, 5, 63)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (97, 15, 27, 3, 5, 38)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (98, 1, 4, 1, 4, 76)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (99, 5, 45, 2, 5, 37)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (100, 1, 41, 3, 2, 46)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (101, 3, 7, 5, 1, 50)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (102, 19, 39, 4, 2, 57)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (103, 10, 14, 4, 3, 46)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (104, 9, 15, 5, 4, 16)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (105, 8, 24, 1, 1, 16)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (106, 19, 21, 3, 4, 88)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (107, 14, 44, 2, 5, 61)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (108, 5, 20, 1, 5, 59)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (109, 9, 33, 5, 2, 73)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (110, 4, 30, 1, 5, 83)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (111, 18, 29, 5, 4, 62)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (112, 12, 12, 5, 2, 88)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (113, 7, 10, 2, 2, 52)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (114, 15, 41, 1, 3, 96)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (115, 10, 45, 5, 5, 1)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (116, 13, 20, 3, 5, 71)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (117, 15, 32, 5, 5, 1)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (118, 14, 12, 1, 2, 100)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (119, 2, 12, 3, 4, 37)
GO
INSERT [dbo].[LocationLodging] ([LocationLodgingID], [LodgingID], [LocationID], [LocationLodgingSecurity], [LocationLodgingCondition], [LocationLodgingCapacity]) VALUES (120, 4, 44, 4, 4, 34)
GO
SET IDENTITY_INSERT [dbo].[LocationLodging] OFF
GO
SET IDENTITY_INSERT [dbo].[Lodging] ON 
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (1, N'Prairie Homestead', N'Cozy homestead in the vast prairies.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (2, N'Riverfront Cabin', N'Cabin with a scenic river view.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (3, N'Great Plains Lodge', N'Lodge located in the open plains.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (4, N'Lakeview Cottage', N'Cottage by a serene lake.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (5, N'Rustic Farmhouse', N'Traditional farmhouse in rural area.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (6, N'Woodland Bungalow', N'Bungalow nestled in dense woodlands.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (7, N'Cornfield Inn', N'Inn surrounded by extensive cornfields.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (8, N'Bluffside Retreat', N'Retreat on the bluff with panoramic views.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (9, N'Harvest Haven', N'Haven in a rich agricultural region.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (10, N'Meadowland Manor', N'Manor in a sprawling meadowland.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (11, N'Heartland Hideaway', N'Hideaway in the heart of the heartland.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (12, N'Creek Side Shelter', N'Shelter beside a gentle creek.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (13, N'Pioneer Outpost', N'Outpost reminiscent of early pioneers.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (14, N'Country Villa', N'Elegant villa in a quaint country setting.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (15, N'Forest Edge Lodge', N'Lodge at the edge of a dense forest.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (16, N'Ridgepoint Cabin', N'Cabin overlooking a scenic ridge.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (17, N'Valley View House', N'House with views of rolling valleys.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (18, N'Old Mill Hostel', N'Hostel near an historic old mill.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (19, N'Trailside Tavern', N'Tavern along a popular trail.')
GO
INSERT [dbo].[Lodging] ([LodgingID], [LodgingName], [LodgingDescription]) VALUES (20, N'Sunset Ranch', N'Ranch with beautiful sunset views.')
GO
SET IDENTITY_INSERT [dbo].[Lodging] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (1, N'Robert', N'Brown', CAST(N'1961-11-12' AS Date), N'RB632', 87, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (2, N'Sophia', N'Jackson', CAST(N'1975-07-17' AS Date), N'SJ780', 83, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (3, N'Sophia', N'Hall', CAST(N'1962-06-07' AS Date), N'SH923', 5, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (4, N'Mary', N'Young', CAST(N'1945-05-27' AS Date), N'MY922', 72, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (5, N'Lisa', N'Jones', CAST(N'1942-03-27' AS Date), N'LJ364', 93, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (6, N'Karen', N'Martin', CAST(N'1958-02-07' AS Date), N'KM727', 0, 1, CAST(N'1997-05-18' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (7, N'Jacob', N'Davis', CAST(N'1946-04-27' AS Date), N'JD676', 0, 1, CAST(N'1948-04-08' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (8, N'Emily', N'Williams', CAST(N'1950-12-03' AS Date), N'EW162', 46, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (9, N'Ethan', N'Williams', CAST(N'1993-01-23' AS Date), N'EW432', 9, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (10, N'Jessica', N'Johnson', CAST(N'1941-04-08' AS Date), N'JJ221', 23, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (11, N'Jessica', N'Lewis', CAST(N'1940-08-24' AS Date), N'JL126', 67, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (12, N'Olivia', N'Anderson', CAST(N'1962-08-12' AS Date), N'OA887', 20, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (13, N'Thomas', N'Thompson', CAST(N'1977-05-08' AS Date), N'TT213', 0, 1, CAST(N'2003-10-07' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (14, N'Emily', N'Young', CAST(N'1945-08-30' AS Date), N'EY798', 0, 1, CAST(N'1980-07-13' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (15, N'Matthew', N'Davis', CAST(N'2001-03-19' AS Date), N'MD367', 75, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (16, N'Joseph', N'Jackson', CAST(N'1927-09-20' AS Date), N'JJ209', 97, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (17, N'Anna', N'Taylor', CAST(N'1963-10-02' AS Date), N'AT145', 0, 1, CAST(N'2010-10-24' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (18, N'Kevin', N'Garcia', CAST(N'1955-08-22' AS Date), N'KG135', 0, 1, CAST(N'1979-09-13' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (19, N'Barbara', N'Martinez', CAST(N'1971-04-22' AS Date), N'BM598', 88, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (20, N'Lisa', N'Allen', CAST(N'1964-07-10' AS Date), N'LA367', 23, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (21, N'Sophia', N'Davis', CAST(N'1999-07-21' AS Date), N'SD526', 92, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (22, N'Olivia', N'Miller', CAST(N'1983-11-22' AS Date), N'OM560', 56, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (23, N'Elizabeth', N'Hall', CAST(N'1966-10-15' AS Date), N'EH860', 28, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (24, N'Matthew', N'Jackson', CAST(N'1927-09-29' AS Date), N'MJ232', 15, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (25, N'Kevin', N'Lewis', CAST(N'1958-06-15' AS Date), N'KL563', 46, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (26, N'Jennifer', N'Lee', CAST(N'1954-02-26' AS Date), N'JL388', 74, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (27, N'Brian', N'Brown', CAST(N'1965-04-22' AS Date), N'BB147', 74, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (28, N'James', N'Johnson', CAST(N'1953-02-27' AS Date), N'JJ323', 35, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (29, N'Patricia', N'Taylor', CAST(N'2002-08-25' AS Date), N'PT977', 98, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (30, N'Charles', N'Johnson', CAST(N'1970-09-02' AS Date), N'CJ400', 94, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (31, N'Thomas', N'Martin', CAST(N'1935-11-08' AS Date), N'TM511', 7, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (32, N'Patricia', N'Hall', CAST(N'2000-06-03' AS Date), N'PH192', 0, 1, CAST(N'2021-11-19' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (33, N'Lisa', N'Jones', CAST(N'1979-01-04' AS Date), N'LJ897', 0, 1, CAST(N'2004-05-03' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (34, N'Charles', N'Lewis', CAST(N'1966-06-16' AS Date), N'CL767', 52, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (35, N'Thomas', N'Robinson', CAST(N'1960-03-31' AS Date), N'TR458', 50, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (36, N'Patricia', N'Thompson', CAST(N'1928-08-24' AS Date), N'PT854', 0, 1, CAST(N'1997-07-09' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (37, N'Barbara', N'Walker', CAST(N'1920-02-02' AS Date), N'BW452', 0, 1, CAST(N'1989-06-17' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (38, N'Elizabeth', N'Taylor', CAST(N'1980-10-31' AS Date), N'ET879', 34, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (39, N'John', N'Hall', CAST(N'2002-07-03' AS Date), N'JH812', 0, 1, CAST(N'2015-06-07' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (40, N'Patricia', N'Clark', CAST(N'1920-01-23' AS Date), N'PC437', 76, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (41, N'Matthew', N'Garcia', CAST(N'2003-09-12' AS Date), N'MG719', 54, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (42, N'Ethan', N'Perez', CAST(N'1932-10-09' AS Date), N'EP114', 87, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (43, N'Lisa', N'Young', CAST(N'1981-03-18' AS Date), N'LY431', 0, 1, CAST(N'1989-09-04' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (44, N'Mary', N'Anderson', CAST(N'1987-12-28' AS Date), N'MA352', 6, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (45, N'Robert', N'Thompson', CAST(N'1923-03-18' AS Date), N'RT502', 0, 1, CAST(N'1952-10-11' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (46, N'Jacob', N'Thomas', CAST(N'1926-04-02' AS Date), N'JT896', 78, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (47, N'Richard', N'Smith', CAST(N'1930-10-10' AS Date), N'RS512', 0, 1, CAST(N'1961-06-13' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (48, N'Jennifer', N'Miller', CAST(N'1984-02-05' AS Date), N'JM996', 62, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (49, N'Michael', N'Lewis', CAST(N'1978-06-07' AS Date), N'ML513', 58, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (50, N'David', N'Martin', CAST(N'1986-05-23' AS Date), N'DM645', 100, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (51, N'Patricia', N'Clark', CAST(N'1973-11-02' AS Date), N'PC403', 0, 1, CAST(N'1985-04-04' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (52, N'Lisa', N'Anderson', CAST(N'1928-12-16' AS Date), N'LA200', 0, 1, CAST(N'2009-08-07' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (53, N'Susan', N'Williams', CAST(N'1965-02-17' AS Date), N'SW653', 76, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (54, N'Richard', N'Jones', CAST(N'1955-09-17' AS Date), N'RJ433', 0, 1, CAST(N'1984-06-03' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (55, N'James', N'Smith', CAST(N'1984-07-14' AS Date), N'JS762', 0, 1, CAST(N'2001-05-20' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (56, N'Brian', N'Brown', CAST(N'1963-06-11' AS Date), N'BB250', 24, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (57, N'John', N'Lewis', CAST(N'1954-03-03' AS Date), N'JL626', 0, 1, CAST(N'1986-10-31' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (58, N'Jacob', N'Martinez', CAST(N'1930-06-05' AS Date), N'JM383', 57, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (59, N'Sarah', N'Brown', CAST(N'1975-01-12' AS Date), N'SB221', 48, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (60, N'Barbara', N'Brown', CAST(N'1924-07-14' AS Date), N'BB458', 74, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (61, N'Mary', N'Anderson', CAST(N'1995-07-09' AS Date), N'MA489', 52, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (62, N'John', N'Harris', CAST(N'1933-01-12' AS Date), N'JH671', 10, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (63, N'Matthew', N'White', CAST(N'1996-11-30' AS Date), N'MW592', 16, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (64, N'Anna', N'Smith', CAST(N'1943-12-03' AS Date), N'AS678', 96, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (65, N'Joseph', N'White', CAST(N'1932-11-21' AS Date), N'JW787', 0, 1, CAST(N'1945-06-05' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (66, N'Ethan', N'Hall', CAST(N'1983-06-27' AS Date), N'EH228', 28, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (67, N'Joseph', N'Hall', CAST(N'1959-12-13' AS Date), N'JH360', 66, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (68, N'Patricia', N'Taylor', CAST(N'1931-09-02' AS Date), N'PT897', 0, 1, CAST(N'1950-01-07' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (69, N'Thomas', N'Wilson', CAST(N'1936-03-14' AS Date), N'TW112', 31, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (70, N'Robert', N'Rodriguez', CAST(N'1964-02-08' AS Date), N'RR865', 69, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (71, N'Lisa', N'Walker', CAST(N'1989-01-15' AS Date), N'LW885', 92, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (72, N'Barbara', N'Johnson', CAST(N'1921-01-07' AS Date), N'BJ819', 41, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (73, N'Lisa', N'Miller', CAST(N'1969-05-26' AS Date), N'LM632', 9, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (74, N'David', N'Wilson', CAST(N'1983-03-31' AS Date), N'DW495', 10, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (75, N'Anna', N'Smith', CAST(N'1964-09-28' AS Date), N'AS329', 30, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (76, N'Emily', N'Rodriguez', CAST(N'1977-09-15' AS Date), N'ER623', 41, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (77, N'Charles', N'Williams', CAST(N'1945-01-02' AS Date), N'CW154', 34, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (78, N'Karen', N'Hall', CAST(N'1959-12-07' AS Date), N'KH307', 45, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (79, N'David', N'Young', CAST(N'2001-12-29' AS Date), N'DY569', 50, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (80, N'Ethan', N'Jackson', CAST(N'1970-08-11' AS Date), N'EJ544', 1, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (81, N'Jacob', N'Perez', CAST(N'1938-02-01' AS Date), N'JP317', 8, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (82, N'Emily', N'Garcia', CAST(N'1939-10-26' AS Date), N'EG309', 0, 1, CAST(N'1978-09-15' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (83, N'Jennifer', N'Davis', CAST(N'1958-03-18' AS Date), N'JD976', 54, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (84, N'William', N'Martinez', CAST(N'1945-09-12' AS Date), N'WM556', 0, 1, CAST(N'2020-05-20' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (85, N'Jessica', N'Robinson', CAST(N'1969-10-08' AS Date), N'JR342', 64, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (86, N'David', N'Hernandez', CAST(N'1949-03-15' AS Date), N'DH178', 96, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (87, N'Elizabeth', N'Thompson', CAST(N'1953-12-04' AS Date), N'ET231', 96, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (88, N'Thomas', N'Anderson', CAST(N'1939-05-30' AS Date), N'TA462', 31, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (89, N'Michael', N'Wilson', CAST(N'1989-09-26' AS Date), N'MW401', 4, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (90, N'Barbara', N'Robinson', CAST(N'1994-07-21' AS Date), N'BR563', 27, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (91, N'Charles', N'Brown', CAST(N'1965-03-23' AS Date), N'CB157', 0, 1, CAST(N'1971-09-18' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (92, N'Matthew', N'White', CAST(N'1931-08-12' AS Date), N'MW663', 21, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (93, N'Karen', N'Jackson', CAST(N'1973-10-15' AS Date), N'KJ109', 24, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (94, N'Robert', N'Lee', CAST(N'1974-11-08' AS Date), N'RL152', 93, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (95, N'David', N'Young', CAST(N'1989-02-17' AS Date), N'DY748', 60, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (96, N'Lisa', N'Miller', CAST(N'1992-02-26' AS Date), N'LM635', 25, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (97, N'Mary', N'Hernandez', CAST(N'1960-01-20' AS Date), N'MH603', 1, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (98, N'Joseph', N'Taylor', CAST(N'2000-08-07' AS Date), N'JT358', 75, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (99, N'Susan', N'Clark', CAST(N'1942-07-07' AS Date), N'SC407', 70, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (100, N'Linda', N'Robinson', CAST(N'1951-08-07' AS Date), N'LR802', 23, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (101, N'Mary', N'Taylor', CAST(N'1938-01-18' AS Date), N'MT565', 0, 1, CAST(N'1971-03-01' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (102, N'Emily', N'Martin', CAST(N'1982-01-26' AS Date), N'EM498', 79, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (103, N'Thomas', N'Rodriguez', CAST(N'1984-10-09' AS Date), N'TR651', 0, 1, CAST(N'2003-01-19' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (104, N'Kevin', N'Davis', CAST(N'1964-02-13' AS Date), N'KD794', 53, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (105, N'Matthew', N'Martinez', CAST(N'1979-08-21' AS Date), N'MM830', 94, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (106, N'Lisa', N'Perez', CAST(N'1929-05-13' AS Date), N'LP102', 0, 1, CAST(N'1946-07-01' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (107, N'Barbara', N'Wilson', CAST(N'1988-03-17' AS Date), N'BW402', 0, 1, CAST(N'2020-09-05' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (108, N'Sophia', N'Clark', CAST(N'1953-04-15' AS Date), N'SC883', 66, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (109, N'Lisa', N'Taylor', CAST(N'1990-01-29' AS Date), N'LT225', 39, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (110, N'Elizabeth', N'Thomas', CAST(N'1943-07-31' AS Date), N'ET242', 14, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (111, N'Robert', N'Moore', CAST(N'1935-11-06' AS Date), N'RM735', 0, 1, CAST(N'1957-08-18' AS Date), 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (112, N'Emily', N'Allen', CAST(N'1993-07-18' AS Date), N'EA386', 0, 1, CAST(N'2016-05-24' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (113, N'Linda', N'Davis', CAST(N'1958-08-26' AS Date), N'LD653', 79, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (114, N'Patricia', N'Rodriguez', CAST(N'1939-05-09' AS Date), N'PR367', 51, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (115, N'David', N'Anderson', CAST(N'1974-01-10' AS Date), N'DA963', 0, 1, CAST(N'1994-12-10' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (116, N'Joseph', N'Davis', CAST(N'1926-02-04' AS Date), N'JD736', 69, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (117, N'Olivia', N'Lewis', CAST(N'1948-08-04' AS Date), N'OL901', 59, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (118, N'Jennifer', N'Walker', CAST(N'1934-11-30' AS Date), N'JW298', 3, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (119, N'Michael', N'Thompson', CAST(N'1944-10-24' AS Date), N'MT175', 89, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (120, N'Barbara', N'Taylor', CAST(N'1924-10-25' AS Date), N'BT681', 29, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (121, N'David', N'Lee', CAST(N'1940-02-27' AS Date), N'DL908', 11, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (122, N'Matthew', N'Taylor', CAST(N'1994-05-13' AS Date), N'MT714', 51, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (123, N'William', N'Jones', CAST(N'1967-02-08' AS Date), N'WJ749', 0, 1, CAST(N'1971-02-25' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (124, N'Patricia', N'Anderson', CAST(N'1955-07-05' AS Date), N'PA454', 53, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (125, N'Anna', N'Rodriguez', CAST(N'1981-05-24' AS Date), N'AR198', 81, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (126, N'Emily', N'Clark', CAST(N'1982-07-22' AS Date), N'EC272', 94, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (127, N'Ethan', N'Allen', CAST(N'1974-10-02' AS Date), N'EA690', 20, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (128, N'Linda', N'Garcia', CAST(N'1999-11-10' AS Date), N'LG477', 87, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (129, N'Kevin', N'Lee', CAST(N'1986-04-05' AS Date), N'KL702', 36, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (130, N'James', N'Wilson', CAST(N'1997-09-06' AS Date), N'JW421', 88, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (131, N'Charles', N'Davis', CAST(N'1974-07-24' AS Date), N'CD764', 78, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (132, N'Jennifer', N'Martinez', CAST(N'1937-12-02' AS Date), N'JM114', 27, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (133, N'Jessica', N'White', CAST(N'1990-11-04' AS Date), N'JW539', 76, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (134, N'Charles', N'Taylor', CAST(N'1983-04-13' AS Date), N'CT248', 64, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (135, N'Barbara', N'Miller', CAST(N'1955-08-24' AS Date), N'BM775', 54, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (136, N'David', N'Brown', CAST(N'1923-07-15' AS Date), N'DB358', 49, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (137, N'Jennifer', N'Martin', CAST(N'1923-03-28' AS Date), N'JM669', 78, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (138, N'Thomas', N'Lee', CAST(N'1981-04-07' AS Date), N'TL960', 61, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (139, N'Thomas', N'Robinson', CAST(N'1984-05-25' AS Date), N'TR612', 71, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (140, N'Linda', N'Perez', CAST(N'1990-03-08' AS Date), N'LP892', 6, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (141, N'Robert', N'Rodriguez', CAST(N'1972-10-08' AS Date), N'RR111', 0, 1, CAST(N'2006-04-10' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (142, N'John', N'White', CAST(N'1989-03-19' AS Date), N'JW950', 8, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (143, N'Jessica', N'Martin', CAST(N'1988-03-23' AS Date), N'JM564', 55, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (144, N'Karen', N'Hernandez', CAST(N'1997-04-15' AS Date), N'KH614', 0, 1, CAST(N'2022-12-09' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (145, N'Michael', N'Moore', CAST(N'1958-08-19' AS Date), N'MM526', 66, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (146, N'David', N'Young', CAST(N'1977-09-17' AS Date), N'DY964', 68, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (147, N'David', N'Jones', CAST(N'1943-06-22' AS Date), N'DJ157', 69, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (148, N'Emily', N'White', CAST(N'1942-09-04' AS Date), N'EW864', 95, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (149, N'Lisa', N'Hall', CAST(N'1932-12-20' AS Date), N'LH218', 47, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (150, N'Lisa', N'Walker', CAST(N'1973-12-01' AS Date), N'LW977', 87, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (151, N'Linda', N'Walker', CAST(N'1936-06-09' AS Date), N'LW670', 56, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (152, N'Jessica', N'Martin', CAST(N'1941-09-14' AS Date), N'JM657', 0, 1, CAST(N'1945-06-12' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (153, N'Patricia', N'Williams', CAST(N'1944-05-02' AS Date), N'PW228', 0, 1, CAST(N'1968-05-25' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (154, N'Brian', N'Taylor', CAST(N'1931-04-12' AS Date), N'BT492', 0, 1, CAST(N'1974-01-03' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (155, N'Emily', N'Walker', CAST(N'1948-09-20' AS Date), N'EW605', 0, 1, CAST(N'2010-01-19' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (156, N'Matthew', N'Moore', CAST(N'1964-01-29' AS Date), N'MM514', 85, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (157, N'James', N'Moore', CAST(N'1979-06-25' AS Date), N'JM301', 66, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (158, N'Kevin', N'Rodriguez', CAST(N'1975-01-30' AS Date), N'KR457', 43, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (159, N'Joseph', N'Wilson', CAST(N'1929-10-16' AS Date), N'JW886', 56, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (160, N'John', N'Perez', CAST(N'1972-07-29' AS Date), N'JP426', 34, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (161, N'Mary', N'Moore', CAST(N'1955-10-06' AS Date), N'MM588', 72, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (162, N'Robert', N'Brown', CAST(N'1931-04-26' AS Date), N'RB265', 76, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (163, N'Thomas', N'Clark', CAST(N'1942-04-25' AS Date), N'TC613', 0, 1, CAST(N'1960-08-12' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (164, N'Joseph', N'Hernandez', CAST(N'1941-12-15' AS Date), N'JH471', 0, 1, CAST(N'1993-09-01' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (165, N'Sarah', N'Jones', CAST(N'1978-05-10' AS Date), N'SJ459', 0, 1, CAST(N'1988-09-06' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (166, N'Jessica', N'Walker', CAST(N'1940-02-09' AS Date), N'JW875', 0, 1, CAST(N'1970-10-30' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (167, N'Karen', N'Rodriguez', CAST(N'2001-08-11' AS Date), N'KR974', 0, 1, CAST(N'2023-05-03' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (168, N'Charles', N'Walker', CAST(N'1977-12-12' AS Date), N'CW627', 19, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (169, N'Jennifer', N'Miller', CAST(N'1977-12-22' AS Date), N'JM420', 0, 1, CAST(N'2004-11-17' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (170, N'Charles', N'Wilson', CAST(N'1992-06-14' AS Date), N'CW872', 0, 1, CAST(N'2017-12-21' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (171, N'Jacob', N'Garcia', CAST(N'1963-03-27' AS Date), N'JG902', 62, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (172, N'Karen', N'Thomas', CAST(N'1978-03-28' AS Date), N'KT572', 90, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (173, N'Michael', N'Miller', CAST(N'1975-07-24' AS Date), N'MM724', 43, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (174, N'Robert', N'Lewis', CAST(N'1980-12-12' AS Date), N'RL419', 0, 1, CAST(N'2006-09-12' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (175, N'Joseph', N'Lee', CAST(N'1927-05-28' AS Date), N'JL503', 0, 1, CAST(N'1944-09-15' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (176, N'Richard', N'Young', CAST(N'1969-09-23' AS Date), N'RY585', 74, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (177, N'Jessica', N'Davis', CAST(N'1952-10-23' AS Date), N'JD416', 9, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (178, N'Patricia', N'Walker', CAST(N'1939-08-10' AS Date), N'PW354', 69, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (179, N'Jennifer', N'Brown', CAST(N'1948-06-12' AS Date), N'JB420', 0, 1, CAST(N'1964-12-28' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (180, N'Kevin', N'Taylor', CAST(N'2000-11-05' AS Date), N'KT791', 92, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (181, N'Joseph', N'White', CAST(N'2001-07-26' AS Date), N'JW504', 0, 1, CAST(N'2006-11-24' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (182, N'James', N'Young', CAST(N'1954-06-30' AS Date), N'JY567', 21, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (183, N'Barbara', N'Johnson', CAST(N'1989-02-27' AS Date), N'BJ276', 94, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (184, N'David', N'White', CAST(N'1950-09-23' AS Date), N'DW816', 15, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (185, N'Jacob', N'Lewis', CAST(N'1940-08-11' AS Date), N'JL245', 89, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (186, N'Kevin', N'Garcia', CAST(N'1939-04-04' AS Date), N'KG546', 46, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (187, N'Olivia', N'Jackson', CAST(N'1998-11-11' AS Date), N'OJ255', 0, 1, CAST(N'2021-03-27' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (188, N'William', N'Lee', CAST(N'1946-05-29' AS Date), N'WL726', 66, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (189, N'Jacob', N'Jones', CAST(N'1972-09-24' AS Date), N'JJ331', 12, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (190, N'Elizabeth', N'Walker', CAST(N'1990-10-16' AS Date), N'EW656', 18, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (191, N'Lisa', N'Moore', CAST(N'1967-07-09' AS Date), N'LM575', 95, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (192, N'Sarah', N'Jones', CAST(N'1936-11-28' AS Date), N'SJ595', 12, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (193, N'Elizabeth', N'Thompson', CAST(N'1945-03-19' AS Date), N'ET920', 0, 1, CAST(N'1966-07-11' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (194, N'William', N'Williams', CAST(N'1984-02-14' AS Date), N'WW465', 0, 1, CAST(N'2007-04-20' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (195, N'Jennifer', N'Moore', CAST(N'1999-09-01' AS Date), N'JM748', 0, 1, CAST(N'2017-09-26' AS Date), 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (196, N'Emily', N'Miller', CAST(N'1941-07-29' AS Date), N'EM270', 80, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (197, N'Jacob', N'Hernandez', CAST(N'1941-02-22' AS Date), N'JH365', 0, 1, CAST(N'2020-10-25' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (198, N'Barbara', N'Robinson', CAST(N'1950-09-10' AS Date), N'BR603', 0, 1, CAST(N'2010-10-25' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (199, N'Karen', N'Moore', CAST(N'1999-05-07' AS Date), N'KM909', 54, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (200, N'John', N'Taylor', CAST(N'1942-11-22' AS Date), N'JT650', 0, 1, CAST(N'1984-02-21' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (201, N'Brian', N'Johnson', CAST(N'1997-06-30' AS Date), N'BJ423', 64, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (202, N'James', N'Harris', CAST(N'1992-10-25' AS Date), N'JH583', 83, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (203, N'Olivia', N'White', CAST(N'1960-09-23' AS Date), N'OW641', 0, 1, CAST(N'1988-06-08' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (204, N'Sarah', N'Brown', CAST(N'1929-12-09' AS Date), N'SB721', 39, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (205, N'Jennifer', N'Rodriguez', CAST(N'1980-12-24' AS Date), N'JR788', 0, 1, CAST(N'2022-01-31' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (206, N'Olivia', N'Thomas', CAST(N'1941-08-10' AS Date), N'OT867', 62, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (207, N'Robert', N'Taylor', CAST(N'1957-03-30' AS Date), N'RT423', 0, 1, CAST(N'1984-11-22' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (208, N'Ethan', N'Young', CAST(N'1976-02-06' AS Date), N'EY829', 0, 1, CAST(N'2007-01-22' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (209, N'Charles', N'Williams', CAST(N'1923-11-19' AS Date), N'CW910', 11, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (210, N'Linda', N'Hall', CAST(N'1957-06-16' AS Date), N'LH865', 0, 1, CAST(N'1995-05-10' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (211, N'Sarah', N'Allen', CAST(N'1998-08-24' AS Date), N'SA708', 28, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (212, N'Barbara', N'Garcia', CAST(N'1992-07-06' AS Date), N'BG694', 0, 1, CAST(N'2017-11-22' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (213, N'Thomas', N'Lee', CAST(N'1960-08-23' AS Date), N'TL676', 12, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (214, N'Robert', N'Young', CAST(N'1955-08-08' AS Date), N'RY456', 0, 1, CAST(N'1989-10-12' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (215, N'Linda', N'Harris', CAST(N'1972-06-20' AS Date), N'LH867', 0, 1, CAST(N'1996-10-25' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (216, N'Barbara', N'Harris', CAST(N'1943-01-12' AS Date), N'BH111', 0, 1, CAST(N'2020-11-07' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (217, N'Karen', N'Martin', CAST(N'1976-01-29' AS Date), N'KM638', 5, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (218, N'Thomas', N'Johnson', CAST(N'1930-11-19' AS Date), N'TJ645', 47, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (219, N'James', N'Taylor', CAST(N'1933-12-15' AS Date), N'JT632', 58, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (220, N'Jacob', N'Garcia', CAST(N'1945-01-17' AS Date), N'JG649', 99, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (221, N'Charles', N'Allen', CAST(N'1932-05-01' AS Date), N'CA160', 89, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (222, N'Anna', N'Wilson', CAST(N'1927-05-11' AS Date), N'AW760', 0, 1, CAST(N'1978-04-19' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (223, N'Emily', N'Martinez', CAST(N'1956-02-29' AS Date), N'EM856', 100, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (224, N'John', N'Smith', CAST(N'1988-01-29' AS Date), N'JS242', 88, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (225, N'James', N'Wilson', CAST(N'1985-09-05' AS Date), N'JW203', 100, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (226, N'Brian', N'Allen', CAST(N'1950-09-06' AS Date), N'BA959', 0, 1, CAST(N'1987-06-15' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (227, N'Joseph', N'Clark', CAST(N'1963-11-23' AS Date), N'JC335', 41, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (228, N'Lisa', N'Smith', CAST(N'1940-12-02' AS Date), N'LS616', 0, 1, CAST(N'1943-02-03' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (229, N'Barbara', N'Lewis', CAST(N'2003-06-18' AS Date), N'BL979', 0, 1, CAST(N'2015-08-04' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (230, N'Lisa', N'Perez', CAST(N'1927-11-06' AS Date), N'LP804', 62, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (231, N'Robert', N'Thompson', CAST(N'2000-10-23' AS Date), N'RT578', 4, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (232, N'Charles', N'Robinson', CAST(N'1931-10-04' AS Date), N'CR672', 25, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (233, N'James', N'Garcia', CAST(N'1982-10-03' AS Date), N'JG545', 0, 1, CAST(N'2018-08-10' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (234, N'Olivia', N'Harris', CAST(N'1987-10-28' AS Date), N'OH544', 80, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (235, N'Emily', N'Smith', CAST(N'1940-02-19' AS Date), N'ES976', 33, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (236, N'Richard', N'Williams', CAST(N'1938-11-14' AS Date), N'RW139', 80, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (237, N'Richard', N'Lee', CAST(N'1995-10-28' AS Date), N'RL250', 0, 1, CAST(N'2011-06-27' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (238, N'Barbara', N'Hernandez', CAST(N'1969-10-04' AS Date), N'BH592', 0, 1, CAST(N'2017-04-20' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (239, N'Thomas', N'Williams', CAST(N'1980-08-07' AS Date), N'TW418', 30, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (240, N'David', N'Miller', CAST(N'1965-05-02' AS Date), N'DM442', 0, 1, CAST(N'1966-09-12' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (241, N'John', N'Jones', CAST(N'1928-08-09' AS Date), N'JJ783', 11, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (242, N'Barbara', N'Rodriguez', CAST(N'1968-07-29' AS Date), N'BR811', 87, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (243, N'Sophia', N'Lee', CAST(N'1980-03-06' AS Date), N'SL665', 10, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (244, N'Robert', N'Anderson', CAST(N'1960-12-27' AS Date), N'RA516', 0, 1, CAST(N'2011-05-29' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (245, N'Michael', N'Miller', CAST(N'1931-08-12' AS Date), N'MM248', 10, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (246, N'James', N'Perez', CAST(N'1923-06-07' AS Date), N'JP529', 15, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (247, N'Emily', N'Davis', CAST(N'1987-02-25' AS Date), N'ED972', 75, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (248, N'Charles', N'Lee', CAST(N'1965-11-13' AS Date), N'CL500', 28, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (249, N'Jessica', N'Lewis', CAST(N'1957-12-21' AS Date), N'JL374', 77, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (250, N'Matthew', N'Young', CAST(N'2001-06-08' AS Date), N'MY463', 0, 1, CAST(N'2013-10-10' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (251, N'David', N'Harris', CAST(N'1984-06-12' AS Date), N'DH642', 64, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (252, N'Joseph', N'Perez', CAST(N'2001-07-23' AS Date), N'JP286', 98, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (253, N'Joseph', N'Martinez', CAST(N'1948-08-17' AS Date), N'JM303', 100, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (254, N'Ethan', N'Miller', CAST(N'1994-09-12' AS Date), N'EM316', 0, 1, CAST(N'2020-03-24' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (255, N'Richard', N'Harris', CAST(N'1982-01-01' AS Date), N'RH463', 97, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (256, N'Kevin', N'Walker', CAST(N'1971-01-26' AS Date), N'KW313', 0, 1, CAST(N'2021-09-18' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (257, N'Lisa', N'Thompson', CAST(N'1953-02-28' AS Date), N'LT970', 0, 1, CAST(N'1995-06-17' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (258, N'Charles', N'Johnson', CAST(N'1971-06-28' AS Date), N'CJ907', 0, 1, CAST(N'1982-04-22' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (259, N'Charles', N'Williams', CAST(N'1982-06-16' AS Date), N'CW643', 97, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (260, N'Lisa', N'Martinez', CAST(N'1926-12-14' AS Date), N'LM509', 82, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (261, N'Patricia', N'Brown', CAST(N'1931-12-01' AS Date), N'PB690', 53, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (262, N'Matthew', N'Davis', CAST(N'1931-09-14' AS Date), N'MD197', 0, 1, CAST(N'1980-05-29' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (263, N'Joseph', N'Walker', CAST(N'1947-05-12' AS Date), N'JW664', 100, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (264, N'Matthew', N'Allen', CAST(N'1988-07-01' AS Date), N'MA929', 92, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (265, N'Michael', N'Taylor', CAST(N'1949-03-19' AS Date), N'MT237', 67, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (266, N'Sophia', N'Miller', CAST(N'1992-02-15' AS Date), N'SM934', 52, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (267, N'Sophia', N'Brown', CAST(N'1935-06-07' AS Date), N'SB479', 0, 1, CAST(N'1980-07-27' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (268, N'Elizabeth', N'Garcia', CAST(N'1969-03-26' AS Date), N'EG238', 0, 1, CAST(N'1972-10-14' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (269, N'Susan', N'Hall', CAST(N'1957-10-12' AS Date), N'SH100', 73, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (270, N'Thomas', N'Clark', CAST(N'1978-02-07' AS Date), N'TC789', 27, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (271, N'Jessica', N'Young', CAST(N'1951-11-28' AS Date), N'JY767', 36, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (272, N'Karen', N'Clark', CAST(N'1936-08-23' AS Date), N'KC514', 95, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (273, N'Michael', N'Young', CAST(N'1982-06-14' AS Date), N'MY852', 13, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (274, N'Jessica', N'Moore', CAST(N'2001-11-27' AS Date), N'JM885', 9, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (275, N'Michael', N'Smith', CAST(N'1944-01-23' AS Date), N'MS791', 0, 1, CAST(N'2013-02-03' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (276, N'Richard', N'Garcia', CAST(N'1923-03-28' AS Date), N'RG622', 0, 1, CAST(N'1957-12-06' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (277, N'Patricia', N'Williams', CAST(N'1981-04-29' AS Date), N'PW778', 0, 1, CAST(N'2002-01-19' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (278, N'Robert', N'Thompson', CAST(N'1931-07-30' AS Date), N'RT570', 0, 1, CAST(N'2017-09-03' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (279, N'Emily', N'Young', CAST(N'1938-02-09' AS Date), N'EY861', 72, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (280, N'Thomas', N'Lewis', CAST(N'1974-11-04' AS Date), N'TL526', 94, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (281, N'Michael', N'White', CAST(N'1982-12-30' AS Date), N'MW118', 49, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (282, N'Emily', N'Brown', CAST(N'1982-07-19' AS Date), N'EB732', 9, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (283, N'Olivia', N'Miller', CAST(N'1923-10-29' AS Date), N'OM169', 42, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (284, N'Susan', N'Williams', CAST(N'1971-03-11' AS Date), N'SW694', 79, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (285, N'Matthew', N'Garcia', CAST(N'1948-03-15' AS Date), N'MG395', 0, 1, CAST(N'1975-06-26' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (286, N'Joseph', N'Lee', CAST(N'2001-08-08' AS Date), N'JL675', 37, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (287, N'Jennifer', N'Thompson', CAST(N'1994-03-12' AS Date), N'JT867', 0, 1, CAST(N'2003-06-19' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (288, N'Robert', N'Moore', CAST(N'1959-04-24' AS Date), N'RM601', 0, 1, CAST(N'2005-08-30' AS Date), 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (289, N'Matthew', N'Martin', CAST(N'1978-10-08' AS Date), N'MM187', 2, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (290, N'John', N'Lewis', CAST(N'1999-07-01' AS Date), N'JL175', 71, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (291, N'Emily', N'Garcia', CAST(N'1993-05-03' AS Date), N'EG642', 11, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (292, N'James', N'Miller', CAST(N'1938-09-21' AS Date), N'JM944', 39, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (293, N'Ethan', N'Moore', CAST(N'1956-02-05' AS Date), N'EM425', 58, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (294, N'Michael', N'Allen', CAST(N'1987-12-13' AS Date), N'MA840', 42, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (295, N'Linda', N'Lee', CAST(N'1964-12-31' AS Date), N'LL986', 22, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (296, N'Richard', N'Davis', CAST(N'1964-12-08' AS Date), N'RD133', 3, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (297, N'Mary', N'Robinson', CAST(N'1961-05-25' AS Date), N'MR400', 0, 1, CAST(N'2022-01-02' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (298, N'David', N'Hall', CAST(N'1940-06-02' AS Date), N'DH461', 8, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (299, N'Elizabeth', N'Walker', CAST(N'2000-01-24' AS Date), N'EW481', 83, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (300, N'Matthew', N'Johnson', CAST(N'2003-09-04' AS Date), N'MJ387', 0, 1, CAST(N'2019-07-09' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (301, N'Elizabeth', N'Davis', CAST(N'1946-04-15' AS Date), N'ED648', 0, 1, CAST(N'2021-11-12' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (302, N'Richard', N'Lee', CAST(N'1961-02-10' AS Date), N'RL883', 81, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (303, N'Barbara', N'Moore', CAST(N'1954-10-29' AS Date), N'BM799', 4, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (304, N'Linda', N'Martinez', CAST(N'1997-05-02' AS Date), N'LM480', 0, 1, CAST(N'2017-10-20' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (305, N'Thomas', N'Anderson', CAST(N'1990-08-03' AS Date), N'TA836', 86, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (306, N'Joseph', N'Thompson', CAST(N'2000-02-06' AS Date), N'JT279', 43, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (307, N'Jennifer', N'Martinez', CAST(N'1925-07-24' AS Date), N'JM524', 80, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (308, N'Elizabeth', N'Perez', CAST(N'1962-07-14' AS Date), N'EP308', 93, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (309, N'Susan', N'Thompson', CAST(N'1963-09-02' AS Date), N'ST269', 95, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (310, N'John', N'Walker', CAST(N'1944-02-18' AS Date), N'JW501', 15, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (311, N'Patricia', N'Clark', CAST(N'1954-01-27' AS Date), N'PC575', 40, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (312, N'Jennifer', N'Taylor', CAST(N'1932-04-28' AS Date), N'JT632', 52, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (313, N'William', N'Moore', CAST(N'1921-06-16' AS Date), N'WM934', 62, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (314, N'Jennifer', N'Walker', CAST(N'1967-01-10' AS Date), N'JW748', 0, 1, CAST(N'1974-04-07' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (315, N'Thomas', N'Walker', CAST(N'1954-12-23' AS Date), N'TW690', 7, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (316, N'Michael', N'Martin', CAST(N'1944-01-26' AS Date), N'MM831', 0, 1, CAST(N'2006-08-24' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (317, N'Richard', N'Anderson', CAST(N'1939-10-19' AS Date), N'RA853', 0, 1, CAST(N'1997-03-20' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (318, N'Jessica', N'Moore', CAST(N'1952-02-05' AS Date), N'JM823', 23, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (319, N'Elizabeth', N'Harris', CAST(N'1985-11-18' AS Date), N'EH803', 41, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (320, N'Brian', N'Perez', CAST(N'1931-09-12' AS Date), N'BP738', 18, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (321, N'Karen', N'Johnson', CAST(N'1943-12-24' AS Date), N'KJ881', 81, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (322, N'Sarah', N'Thomas', CAST(N'1963-11-23' AS Date), N'ST180', 0, 1, CAST(N'2010-12-29' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (323, N'John', N'Anderson', CAST(N'1958-05-07' AS Date), N'JA563', 68, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (324, N'Patricia', N'Anderson', CAST(N'1929-04-22' AS Date), N'PA746', 59, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (325, N'Mary', N'Clark', CAST(N'1973-03-21' AS Date), N'MC299', 56, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (326, N'Jennifer', N'Hall', CAST(N'1993-11-13' AS Date), N'JH825', 52, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (327, N'Anna', N'Rodriguez', CAST(N'1955-08-10' AS Date), N'AR847', 0, 1, CAST(N'2021-08-17' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (328, N'Lisa', N'Robinson', CAST(N'1982-09-20' AS Date), N'LR562', 0, 1, CAST(N'1984-06-26' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (329, N'Elizabeth', N'Walker', CAST(N'1994-02-12' AS Date), N'EW367', 0, 1, CAST(N'2000-04-01' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (330, N'Sarah', N'Johnson', CAST(N'1999-10-09' AS Date), N'SJ222', 96, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (331, N'Matthew', N'Martin', CAST(N'2000-11-03' AS Date), N'MM718', 0, 1, CAST(N'2020-06-01' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (332, N'Robert', N'Thompson', CAST(N'1936-02-09' AS Date), N'RT480', 10, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (333, N'Anna', N'Davis', CAST(N'1977-01-12' AS Date), N'AD441', 47, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (334, N'Anna', N'Thompson', CAST(N'1967-10-16' AS Date), N'AT850', 11, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (335, N'Olivia', N'Walker', CAST(N'1986-09-13' AS Date), N'OW779', 76, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (336, N'Brian', N'Thomas', CAST(N'1972-06-27' AS Date), N'BT357', 0, 1, CAST(N'1984-11-07' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (337, N'Charles', N'Martin', CAST(N'1999-03-04' AS Date), N'CM870', 66, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (338, N'Robert', N'Perez', CAST(N'1938-01-22' AS Date), N'RP131', 70, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (339, N'Olivia', N'Young', CAST(N'1955-11-16' AS Date), N'OY606', 95, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (340, N'James', N'Perez', CAST(N'1957-06-12' AS Date), N'JP683', 0, 1, CAST(N'1988-05-16' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (341, N'Emily', N'Martinez', CAST(N'1959-07-25' AS Date), N'EM845', 16, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (342, N'Sarah', N'Thomas', CAST(N'1924-06-04' AS Date), N'ST688', 42, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (343, N'Olivia', N'Johnson', CAST(N'1925-08-03' AS Date), N'OJ706', 72, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (344, N'James', N'Williams', CAST(N'1949-06-05' AS Date), N'JW888', 37, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (345, N'Richard', N'Robinson', CAST(N'1959-04-12' AS Date), N'RR744', 37, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (346, N'James', N'Harris', CAST(N'1956-06-30' AS Date), N'JH932', 0, 1, CAST(N'2021-11-25' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (347, N'Kevin', N'Allen', CAST(N'1924-07-21' AS Date), N'KA784', 0, 1, CAST(N'1950-09-24' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (348, N'Jacob', N'Davis', CAST(N'2002-01-11' AS Date), N'JD992', 0, 1, CAST(N'2003-03-09' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (349, N'David', N'Garcia', CAST(N'1924-05-15' AS Date), N'DG986', 5, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (350, N'Anna', N'Taylor', CAST(N'1998-06-14' AS Date), N'AT862', 31, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (351, N'Sophia', N'Davis', CAST(N'2003-12-30' AS Date), N'SD785', 0, 1, CAST(N'2012-07-02' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (352, N'Joseph', N'Miller', CAST(N'1973-05-25' AS Date), N'JM297', 6, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (353, N'Mary', N'Lewis', CAST(N'1986-09-26' AS Date), N'ML690', 0, 1, CAST(N'2018-10-18' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (354, N'Jacob', N'White', CAST(N'1980-04-17' AS Date), N'JW612', 0, 1, CAST(N'1981-12-15' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (355, N'Jennifer', N'Thomas', CAST(N'1923-12-31' AS Date), N'JT468', 53, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (356, N'Patricia', N'Hall', CAST(N'1942-01-31' AS Date), N'PH907', 65, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (357, N'Linda', N'Taylor', CAST(N'1975-09-04' AS Date), N'LT798', 17, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (358, N'William', N'Perez', CAST(N'1949-03-11' AS Date), N'WP391', 65, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (359, N'Matthew', N'Brown', CAST(N'1962-05-11' AS Date), N'MB177', 53, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (360, N'Matthew', N'Hernandez', CAST(N'1937-06-27' AS Date), N'MH636', 0, 1, CAST(N'1986-12-30' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (361, N'Lisa', N'Brown', CAST(N'1987-10-22' AS Date), N'LB225', 77, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (362, N'Emily', N'Jones', CAST(N'1926-12-12' AS Date), N'EJ806', 99, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (363, N'Jessica', N'Garcia', CAST(N'1981-04-01' AS Date), N'JG143', 11, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (364, N'Jennifer', N'White', CAST(N'1957-08-18' AS Date), N'JW696', 0, 1, CAST(N'1982-12-30' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (365, N'Linda', N'Jones', CAST(N'1998-01-18' AS Date), N'LJ532', 0, 1, CAST(N'1998-06-27' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (366, N'William', N'Garcia', CAST(N'1973-09-22' AS Date), N'WG722', 39, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (367, N'Mary', N'Perez', CAST(N'1981-06-02' AS Date), N'MP798', 0, 1, CAST(N'1983-10-05' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (368, N'Michael', N'Martin', CAST(N'1949-04-06' AS Date), N'MM300', 0, 1, CAST(N'2001-09-16' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (369, N'William', N'Smith', CAST(N'1929-03-01' AS Date), N'WS942', 1, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (370, N'Matthew', N'Walker', CAST(N'1996-05-15' AS Date), N'MW782', 0, 1, CAST(N'2007-07-27' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (371, N'Brian', N'Brown', CAST(N'1983-05-05' AS Date), N'BB138', 13, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (372, N'Jennifer', N'Allen', CAST(N'1980-01-07' AS Date), N'JA312', 0, 1, CAST(N'2003-01-16' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (373, N'Barbara', N'Lee', CAST(N'1978-08-07' AS Date), N'BL669', 21, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (374, N'Anna', N'Davis', CAST(N'1951-05-26' AS Date), N'AD372', 60, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (375, N'David', N'Jackson', CAST(N'1931-08-26' AS Date), N'DJ654', 78, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (376, N'Olivia', N'Garcia', CAST(N'1928-07-20' AS Date), N'OG707', 21, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (377, N'Karen', N'Davis', CAST(N'1930-09-27' AS Date), N'KD735', 21, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (378, N'Linda', N'Wilson', CAST(N'1951-10-13' AS Date), N'LW901', 0, 1, CAST(N'2008-08-15' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (379, N'Sarah', N'Williams', CAST(N'1920-01-17' AS Date), N'SW136', 61, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (380, N'Jacob', N'Garcia', CAST(N'1953-12-05' AS Date), N'JG565', 34, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (381, N'Linda', N'Garcia', CAST(N'1967-11-30' AS Date), N'LG662', 57, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (382, N'Joseph', N'Lee', CAST(N'1948-07-11' AS Date), N'JL612', 0, 1, CAST(N'1991-01-20' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (383, N'Susan', N'Thomas', CAST(N'2002-02-26' AS Date), N'ST916', 0, 1, CAST(N'2002-07-24' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (384, N'Mary', N'Lee', CAST(N'2003-11-18' AS Date), N'ML964', 0, 1, CAST(N'2017-12-25' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (385, N'Olivia', N'Lewis', CAST(N'1974-11-04' AS Date), N'OL669', 0, 1, CAST(N'1985-03-26' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (386, N'Richard', N'Thomas', CAST(N'1982-02-23' AS Date), N'RT379', 50, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (387, N'Joseph', N'Harris', CAST(N'1969-09-02' AS Date), N'JH864', 0, 1, CAST(N'2012-03-23' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (388, N'Jessica', N'Allen', CAST(N'1930-11-28' AS Date), N'JA111', 0, 1, CAST(N'2016-05-06' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (389, N'John', N'Martin', CAST(N'1971-08-10' AS Date), N'JM903', 69, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (390, N'Michael', N'Johnson', CAST(N'1928-04-22' AS Date), N'MJ932', 0, 1, CAST(N'1935-06-09' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (391, N'Thomas', N'Lewis', CAST(N'2002-04-08' AS Date), N'TL604', 13, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (392, N'Sophia', N'Hernandez', CAST(N'1939-03-28' AS Date), N'SH884', 22, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (393, N'Emily', N'Jones', CAST(N'1945-10-27' AS Date), N'EJ833', 29, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (394, N'Emily', N'Hall', CAST(N'1933-03-03' AS Date), N'EH143', 0, 1, CAST(N'2012-02-11' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (395, N'James', N'Thomas', CAST(N'1991-06-24' AS Date), N'JT446', 70, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (396, N'Karen', N'Smith', CAST(N'1983-09-11' AS Date), N'KS937', 42, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (397, N'Anna', N'Miller', CAST(N'1990-03-22' AS Date), N'AM769', 0, 1, CAST(N'2001-06-12' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (398, N'Michael', N'Hall', CAST(N'1940-02-11' AS Date), N'MH471', 95, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (399, N'Susan', N'Hernandez', CAST(N'1957-02-16' AS Date), N'SH441', 0, 1, CAST(N'1957-02-21' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (400, N'Susan', N'Wilson', CAST(N'1950-10-21' AS Date), N'SW188', 0, 1, CAST(N'2022-09-06' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (401, N'Susan', N'Jackson', CAST(N'1970-06-03' AS Date), N'SJ152', 0, 1, CAST(N'2019-05-06' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (402, N'Karen', N'Clark', CAST(N'1928-06-28' AS Date), N'KC194', 60, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (403, N'Olivia', N'Harris', CAST(N'1988-08-25' AS Date), N'OH392', 100, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (404, N'Mary', N'Brown', CAST(N'1958-02-24' AS Date), N'MB271', 77, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (405, N'Charles', N'Miller', CAST(N'1968-12-02' AS Date), N'CM452', 23, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (406, N'Michael', N'Perez', CAST(N'1967-03-04' AS Date), N'MP752', 61, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (407, N'James', N'Young', CAST(N'1987-12-09' AS Date), N'JY727', 50, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (408, N'Thomas', N'Thomas', CAST(N'1961-01-08' AS Date), N'TT460', 81, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (409, N'Sophia', N'Martinez', CAST(N'1958-11-15' AS Date), N'SM165', 70, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (410, N'Karen', N'Lee', CAST(N'1944-10-04' AS Date), N'KL164', 69, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (411, N'Anna', N'White', CAST(N'1932-03-07' AS Date), N'AW265', 5, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (412, N'Sophia', N'Perez', CAST(N'1964-01-14' AS Date), N'SP437', 10, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (413, N'Richard', N'Jackson', CAST(N'1932-07-21' AS Date), N'RJ901', 52, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (414, N'Jessica', N'Hall', CAST(N'1920-03-20' AS Date), N'JH559', 25, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (415, N'Emily', N'Jackson', CAST(N'1932-01-06' AS Date), N'EJ372', 9, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (416, N'Robert', N'Lewis', CAST(N'1939-02-06' AS Date), N'RL858', 12, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (417, N'Jennifer', N'Hall', CAST(N'1986-02-04' AS Date), N'JH201', 0, 1, CAST(N'1996-09-01' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (418, N'Brian', N'Brown', CAST(N'1924-07-13' AS Date), N'BB379', 0, 1, CAST(N'1926-05-16' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (419, N'Emily', N'Hernandez', CAST(N'1933-09-27' AS Date), N'EH908', 42, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (420, N'Mary', N'Davis', CAST(N'1944-12-05' AS Date), N'MD718', 31, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (421, N'Richard', N'Walker', CAST(N'1966-08-04' AS Date), N'RW741', 60, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (422, N'Susan', N'Perez', CAST(N'1982-05-22' AS Date), N'SP870', 63, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (423, N'John', N'Wilson', CAST(N'2003-08-13' AS Date), N'JW959', 8, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (424, N'Mary', N'Hernandez', CAST(N'1930-07-12' AS Date), N'MH639', 0, 1, CAST(N'1933-09-03' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (425, N'Mary', N'Robinson', CAST(N'1958-07-07' AS Date), N'MR401', 56, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (426, N'Olivia', N'Williams', CAST(N'1950-08-22' AS Date), N'OW368', 45, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (427, N'Jennifer', N'Allen', CAST(N'1958-02-14' AS Date), N'JA549', 94, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (428, N'Mary', N'Lewis', CAST(N'1959-03-28' AS Date), N'ML401', 0, 1, CAST(N'2015-05-22' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (429, N'Richard', N'Lewis', CAST(N'1961-06-10' AS Date), N'RL597', 28, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (430, N'Robert', N'Moore', CAST(N'1978-01-11' AS Date), N'RM791', 3, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (431, N'Olivia', N'White', CAST(N'1984-03-07' AS Date), N'OW691', 0, 1, CAST(N'2015-06-17' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (432, N'William', N'Harris', CAST(N'1970-04-10' AS Date), N'WH570', 0, 1, CAST(N'1991-05-19' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (433, N'John', N'Perez', CAST(N'1954-04-16' AS Date), N'JP970', 86, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (434, N'Elizabeth', N'Martinez', CAST(N'1927-09-01' AS Date), N'EM357', 60, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (435, N'Matthew', N'Walker', CAST(N'1959-04-12' AS Date), N'MW511', 73, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (436, N'Jessica', N'Martin', CAST(N'1940-01-20' AS Date), N'JM128', 0, 1, CAST(N'1961-09-28' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (437, N'Karen', N'White', CAST(N'1984-12-08' AS Date), N'KW632', 33, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (438, N'Michael', N'Perez', CAST(N'1969-08-01' AS Date), N'MP316', 1, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (439, N'William', N'Walker', CAST(N'1989-10-04' AS Date), N'WW851', 59, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (440, N'Anna', N'Lee', CAST(N'1959-10-17' AS Date), N'AL619', 6, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (441, N'Lisa', N'Jones', CAST(N'2001-01-15' AS Date), N'LJ339', 0, 1, CAST(N'2015-06-16' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (442, N'David', N'White', CAST(N'1972-03-29' AS Date), N'DW344', 85, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (443, N'Michael', N'Rodriguez', CAST(N'1978-08-26' AS Date), N'MR324', 71, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (444, N'Susan', N'Martinez', CAST(N'2001-03-02' AS Date), N'SM387', 9, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (445, N'Karen', N'Martinez', CAST(N'1929-11-02' AS Date), N'KM793', 0, 1, CAST(N'2019-12-01' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (446, N'Brian', N'Thomas', CAST(N'1955-04-21' AS Date), N'BT340', 41, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (447, N'Jacob', N'Miller', CAST(N'1932-01-26' AS Date), N'JM767', 0, 1, CAST(N'1951-06-17' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (448, N'Michael', N'Jones', CAST(N'1961-04-17' AS Date), N'MJ547', 61, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (449, N'Jessica', N'Hernandez', CAST(N'1924-03-24' AS Date), N'JH550', 97, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (450, N'William', N'Garcia', CAST(N'1997-01-31' AS Date), N'WG660', 72, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (451, N'Sophia', N'Johnson', CAST(N'1985-05-15' AS Date), N'SJ408', 89, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (452, N'David', N'Williams', CAST(N'1975-09-24' AS Date), N'DW814', 69, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (453, N'Jacob', N'Martinez', CAST(N'1985-11-24' AS Date), N'JM323', 0, 1, CAST(N'1993-08-22' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (454, N'Barbara', N'Martin', CAST(N'1982-07-25' AS Date), N'BM662', 12, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (455, N'Jacob', N'Thomas', CAST(N'1966-07-08' AS Date), N'JT965', 81, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (456, N'Joseph', N'Johnson', CAST(N'1929-09-21' AS Date), N'JJ138', 42, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (457, N'Anna', N'Martinez', CAST(N'1932-05-12' AS Date), N'AM437', 0, 1, CAST(N'1939-01-08' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (458, N'Matthew', N'Taylor', CAST(N'1968-12-26' AS Date), N'MT834', 47, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (459, N'Olivia', N'Martinez', CAST(N'1995-12-03' AS Date), N'OM401', 0, 1, CAST(N'2011-01-09' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (460, N'Joseph', N'Taylor', CAST(N'1981-11-13' AS Date), N'JT179', 9, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (461, N'Susan', N'Miller', CAST(N'1965-02-07' AS Date), N'SM526', 0, 1, CAST(N'2019-02-20' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (462, N'Matthew', N'Thompson', CAST(N'1999-08-01' AS Date), N'MT638', 0, 1, CAST(N'2016-09-07' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (463, N'William', N'Johnson', CAST(N'1975-04-21' AS Date), N'WJ410', 82, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (464, N'Jennifer', N'Smith', CAST(N'1945-07-18' AS Date), N'JS239', 70, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (465, N'Olivia', N'Garcia', CAST(N'1977-11-18' AS Date), N'OG952', 15, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (466, N'Sophia', N'Williams', CAST(N'1920-07-09' AS Date), N'SW240', 0, 1, CAST(N'1984-04-26' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (467, N'William', N'Harris', CAST(N'1990-08-04' AS Date), N'WH602', 38, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (468, N'Matthew', N'Martin', CAST(N'1978-01-01' AS Date), N'MM809', 27, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (469, N'Matthew', N'Jones', CAST(N'1982-02-23' AS Date), N'MJ294', 0, 1, CAST(N'1987-07-09' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (470, N'Anna', N'Robinson', CAST(N'1936-07-21' AS Date), N'AR634', 97, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (471, N'Sarah', N'Harris', CAST(N'1992-11-30' AS Date), N'SH869', 47, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (472, N'Patricia', N'Thompson', CAST(N'2002-12-14' AS Date), N'PT331', 0, 1, CAST(N'2019-12-29' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (473, N'Robert', N'Williams', CAST(N'1995-01-17' AS Date), N'RW730', 31, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (474, N'Patricia', N'Thomas', CAST(N'1986-09-19' AS Date), N'PT222', 0, 1, CAST(N'2007-03-14' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (475, N'Jacob', N'Walker', CAST(N'1998-10-30' AS Date), N'JW924', 29, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (476, N'Emily', N'Williams', CAST(N'1942-12-20' AS Date), N'EW891', 43, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (477, N'Matthew', N'Williams', CAST(N'1950-01-31' AS Date), N'MW914', 0, 1, CAST(N'1957-01-11' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (478, N'Richard', N'Moore', CAST(N'1997-08-16' AS Date), N'RM285', 6, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (479, N'Brian', N'Young', CAST(N'1934-08-13' AS Date), N'BY245', 83, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (480, N'Robert', N'Robinson', CAST(N'1972-04-24' AS Date), N'RR932', 0, 1, CAST(N'1973-11-07' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (481, N'Thomas', N'Taylor', CAST(N'1947-08-25' AS Date), N'TT289', 0, 1, CAST(N'2007-03-23' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (482, N'Karen', N'Clark', CAST(N'1984-11-23' AS Date), N'KC691', 4, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (483, N'Thomas', N'Rodriguez', CAST(N'1954-08-11' AS Date), N'TR201', 0, 1, CAST(N'2012-06-25' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (484, N'Brian', N'Thomas', CAST(N'1992-01-15' AS Date), N'BT929', 61, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (485, N'Emily', N'Robinson', CAST(N'1979-12-20' AS Date), N'ER593', 0, 1, CAST(N'1986-12-11' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (486, N'Lisa', N'Brown', CAST(N'1937-05-10' AS Date), N'LB935', 93, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (487, N'Anna', N'Robinson', CAST(N'1945-04-26' AS Date), N'AR878', 47, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (488, N'Sophia', N'Jackson', CAST(N'1962-08-18' AS Date), N'SJ904', 96, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (489, N'Barbara', N'Lee', CAST(N'2002-04-08' AS Date), N'BL573', 27, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (490, N'Matthew', N'Thomas', CAST(N'1973-11-04' AS Date), N'MT386', 31, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (491, N'Jacob', N'Perez', CAST(N'1923-01-19' AS Date), N'JP159', 60, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (492, N'Olivia', N'Smith', CAST(N'1996-03-14' AS Date), N'OS886', 23, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (493, N'Jessica', N'Hall', CAST(N'1939-05-15' AS Date), N'JH605', 91, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (494, N'Susan', N'Martinez', CAST(N'1991-10-11' AS Date), N'SM512', 7, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (495, N'Olivia', N'Williams', CAST(N'1951-09-01' AS Date), N'OW256', 9, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (496, N'Jessica', N'Taylor', CAST(N'1951-01-21' AS Date), N'JT524', 55, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (497, N'Robert', N'Jones', CAST(N'1991-03-13' AS Date), N'RJ287', 0, 1, CAST(N'2012-05-02' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (498, N'David', N'Thomas', CAST(N'1975-05-19' AS Date), N'DT715', 0, 1, CAST(N'1996-08-24' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (499, N'Jessica', N'Rodriguez', CAST(N'1935-10-22' AS Date), N'JR825', 73, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (500, N'Michael', N'Taylor', CAST(N'1965-11-09' AS Date), N'MT302', 48, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (501, N'Susan', N'Thompson', CAST(N'1957-10-01' AS Date), N'ST748', 63, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (502, N'Sophia', N'Martinez', CAST(N'1970-09-12' AS Date), N'SM357', 70, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (503, N'David', N'Garcia', CAST(N'1936-07-25' AS Date), N'DG945', 0, 1, CAST(N'1987-10-10' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (504, N'Barbara', N'Hernandez', CAST(N'2002-07-04' AS Date), N'BH100', 0, 1, CAST(N'2022-06-24' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (505, N'Charles', N'Perez', CAST(N'1979-05-02' AS Date), N'CP352', 77, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (506, N'Patricia', N'Garcia', CAST(N'1969-07-28' AS Date), N'PG843', 89, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (507, N'Mary', N'Walker', CAST(N'1920-02-29' AS Date), N'MW293', 76, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (508, N'Karen', N'Martinez', CAST(N'1931-12-14' AS Date), N'KM172', 40, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (509, N'Anna', N'Moore', CAST(N'1985-01-13' AS Date), N'AM589', 0, 1, CAST(N'2013-06-05' AS Date), 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (510, N'John', N'Brown', CAST(N'1931-04-12' AS Date), N'JB242', 0, 1, CAST(N'1954-11-02' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (511, N'Thomas', N'Taylor', CAST(N'1928-07-19' AS Date), N'TT633', 22, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (512, N'Elizabeth', N'Williams', CAST(N'1939-02-13' AS Date), N'EW928', 90, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (513, N'Sarah', N'Harris', CAST(N'1944-09-30' AS Date), N'SH138', 8, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (514, N'Patricia', N'Jones', CAST(N'1978-01-05' AS Date), N'PJ885', 0, 1, CAST(N'2016-04-12' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (515, N'Joseph', N'Garcia', CAST(N'1938-06-26' AS Date), N'JG403', 67, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (516, N'Thomas', N'Allen', CAST(N'1963-07-21' AS Date), N'TA156', 15, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (517, N'Jennifer', N'Brown', CAST(N'1982-06-27' AS Date), N'JB835', 42, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (518, N'Robert', N'Wilson', CAST(N'1963-09-27' AS Date), N'RW616', 30, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (519, N'Mary', N'Williams', CAST(N'1974-03-08' AS Date), N'MW915', 0, 1, CAST(N'1976-05-08' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (520, N'Thomas', N'Brown', CAST(N'1985-06-01' AS Date), N'TB707', 0, 1, CAST(N'2009-11-04' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (521, N'Mary', N'Hall', CAST(N'1967-08-09' AS Date), N'MH111', 56, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (522, N'Kevin', N'Thompson', CAST(N'1935-03-02' AS Date), N'KT588', 95, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (523, N'Linda', N'Hall', CAST(N'1973-05-15' AS Date), N'LH918', 71, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (524, N'Emily', N'Jones', CAST(N'1965-11-11' AS Date), N'EJ282', 95, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (525, N'Olivia', N'Lewis', CAST(N'1931-03-18' AS Date), N'OL605', 54, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (526, N'Olivia', N'Smith', CAST(N'1937-03-03' AS Date), N'OS212', 22, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (527, N'David', N'Garcia', CAST(N'1999-01-05' AS Date), N'DG556', 7, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (528, N'Barbara', N'Allen', CAST(N'1969-02-05' AS Date), N'BA797', 69, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (529, N'Thomas', N'Robinson', CAST(N'1978-02-23' AS Date), N'TR135', 91, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (530, N'Linda', N'Hernandez', CAST(N'1941-06-16' AS Date), N'LH697', 16, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (531, N'Emily', N'Young', CAST(N'1982-10-22' AS Date), N'EY587', 0, 1, CAST(N'2008-10-13' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (532, N'Thomas', N'Lewis', CAST(N'1961-11-01' AS Date), N'TL116', 0, 1, CAST(N'1986-10-30' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (533, N'Richard', N'White', CAST(N'1943-10-05' AS Date), N'RW702', 0, 1, CAST(N'2005-06-12' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (534, N'Kevin', N'Jones', CAST(N'1938-08-27' AS Date), N'KJ628', 20, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (535, N'Richard', N'Hernandez', CAST(N'1920-11-11' AS Date), N'RH190', 6, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (536, N'Linda', N'Jackson', CAST(N'1943-02-21' AS Date), N'LJ810', 9, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (537, N'Patricia', N'Young', CAST(N'1980-06-22' AS Date), N'PY939', 0, 1, CAST(N'2017-10-24' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (538, N'Jacob', N'Walker', CAST(N'1960-07-11' AS Date), N'JW214', 0, 1, CAST(N'2018-06-04' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (539, N'Karen', N'Hall', CAST(N'1960-12-30' AS Date), N'KH377', 1, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (540, N'Lisa', N'Martin', CAST(N'1972-07-18' AS Date), N'LM971', 44, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (541, N'Jacob', N'Young', CAST(N'1928-12-07' AS Date), N'JY108', 70, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (542, N'Ethan', N'Young', CAST(N'1936-06-19' AS Date), N'EY653', 1, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (543, N'Thomas', N'Harris', CAST(N'1961-08-20' AS Date), N'TH792', 24, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (544, N'Jessica', N'Jackson', CAST(N'1959-10-11' AS Date), N'JJ567', 20, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (545, N'Sarah', N'Anderson', CAST(N'1954-03-31' AS Date), N'SA171', 0, 1, CAST(N'1954-04-24' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (546, N'Ethan', N'Thompson', CAST(N'1990-09-09' AS Date), N'ET561', 0, 1, CAST(N'2006-07-14' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (547, N'Linda', N'Rodriguez', CAST(N'1970-09-17' AS Date), N'LR940', 75, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (548, N'Emily', N'Martin', CAST(N'1940-09-13' AS Date), N'EM461', 97, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (549, N'Richard', N'Smith', CAST(N'1967-11-21' AS Date), N'RS964', 44, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (550, N'Ethan', N'Miller', CAST(N'1925-10-27' AS Date), N'EM752', 28, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (551, N'Brian', N'Taylor', CAST(N'1943-11-13' AS Date), N'BT371', 0, 1, CAST(N'1946-04-12' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (552, N'Mary', N'Brown', CAST(N'1944-04-26' AS Date), N'MB945', 78, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (553, N'Karen', N'Hernandez', CAST(N'1951-08-24' AS Date), N'KH282', 86, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (554, N'Susan', N'Rodriguez', CAST(N'1925-11-19' AS Date), N'SR804', 30, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (555, N'Elizabeth', N'Anderson', CAST(N'1925-10-01' AS Date), N'EA147', 91, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (556, N'David', N'Anderson', CAST(N'1940-09-08' AS Date), N'DA620', 0, 1, CAST(N'2010-12-13' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (557, N'Kevin', N'Jackson', CAST(N'1966-02-15' AS Date), N'KJ920', 0, 1, CAST(N'1971-01-11' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (558, N'Joseph', N'Robinson', CAST(N'1943-08-12' AS Date), N'JR908', 49, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (559, N'Ethan', N'Clark', CAST(N'2000-01-28' AS Date), N'EC104', 37, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (560, N'Karen', N'Smith', CAST(N'1954-01-11' AS Date), N'KS104', 0, 1, CAST(N'1958-08-28' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (561, N'Ethan', N'Lewis', CAST(N'1939-06-07' AS Date), N'EL334', 14, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (562, N'William', N'White', CAST(N'1990-06-17' AS Date), N'WW780', 80, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (563, N'Richard', N'Rodriguez', CAST(N'1949-03-08' AS Date), N'RR812', 0, 1, CAST(N'1972-01-08' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (564, N'Anna', N'Smith', CAST(N'1939-06-21' AS Date), N'AS789', 99, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (565, N'Barbara', N'Williams', CAST(N'1936-12-16' AS Date), N'BW323', 0, 1, CAST(N'1948-04-14' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (566, N'Lisa', N'Thompson', CAST(N'1936-03-04' AS Date), N'LT171', 0, 1, CAST(N'1954-01-15' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (567, N'Joseph', N'Allen', CAST(N'1997-04-10' AS Date), N'JA644', 2, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (568, N'Mary', N'Harris', CAST(N'1983-06-07' AS Date), N'MH684', 77, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (569, N'Susan', N'Rodriguez', CAST(N'1956-10-09' AS Date), N'SR806', 0, 1, CAST(N'1961-01-11' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (570, N'Charles', N'Lewis', CAST(N'1996-05-26' AS Date), N'CL384', 0, 1, CAST(N'2004-01-16' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (571, N'Thomas', N'Thompson', CAST(N'1985-08-17' AS Date), N'TT866', 45, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (572, N'Matthew', N'Jones', CAST(N'1999-04-19' AS Date), N'MJ964', 89, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (573, N'James', N'Martinez', CAST(N'1966-01-05' AS Date), N'JM587', 23, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (574, N'Kevin', N'Thompson', CAST(N'1978-10-25' AS Date), N'KT856', 38, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (575, N'Thomas', N'Moore', CAST(N'1921-06-09' AS Date), N'TM125', 13, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (576, N'Robert', N'Lewis', CAST(N'1957-03-28' AS Date), N'RL689', 99, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (577, N'Patricia', N'Martinez', CAST(N'1929-03-08' AS Date), N'PM412', 44, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (578, N'Jacob', N'Wilson', CAST(N'1940-12-05' AS Date), N'JW462', 32, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (579, N'Olivia', N'White', CAST(N'1999-04-19' AS Date), N'OW271', 44, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (580, N'Richard', N'Lewis', CAST(N'1947-10-22' AS Date), N'RL721', 53, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (581, N'Emily', N'Jones', CAST(N'1928-09-07' AS Date), N'EJ290', 8, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (582, N'Jessica', N'Perez', CAST(N'1984-08-19' AS Date), N'JP342', 0, 1, CAST(N'2013-05-10' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (583, N'Linda', N'Johnson', CAST(N'1992-08-04' AS Date), N'LJ239', 78, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (584, N'Charles', N'Hernandez', CAST(N'1958-07-12' AS Date), N'CH203', 1, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (585, N'Richard', N'Williams', CAST(N'1941-04-15' AS Date), N'RW854', 24, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (586, N'James', N'Anderson', CAST(N'1953-08-08' AS Date), N'JA455', 0, 1, CAST(N'1984-09-21' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (587, N'James', N'Rodriguez', CAST(N'1990-11-05' AS Date), N'JR752', 89, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (588, N'Linda', N'Anderson', CAST(N'1958-09-14' AS Date), N'LA549', 36, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (589, N'Richard', N'White', CAST(N'2003-09-09' AS Date), N'RW971', 0, 1, CAST(N'2014-04-05' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (590, N'Jacob', N'Moore', CAST(N'1967-07-05' AS Date), N'JM763', 11, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (591, N'Jennifer', N'Walker', CAST(N'1927-08-28' AS Date), N'JW150', 49, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (592, N'Sophia', N'Davis', CAST(N'1961-06-07' AS Date), N'SD268', 0, 1, CAST(N'2009-11-30' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (593, N'Linda', N'Anderson', CAST(N'1924-09-10' AS Date), N'LA935', 36, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (594, N'Kevin', N'Martinez', CAST(N'1945-12-31' AS Date), N'KM391', 72, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (595, N'Brian', N'White', CAST(N'1921-04-01' AS Date), N'BW698', 60, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (596, N'Sarah', N'Perez', CAST(N'1981-09-21' AS Date), N'SP904', 47, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (597, N'Elizabeth', N'Miller', CAST(N'1970-04-03' AS Date), N'EM273', 0, 1, CAST(N'1984-09-29' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (598, N'Sophia', N'Jackson', CAST(N'1944-02-23' AS Date), N'SJ677', 0, 1, CAST(N'1988-08-02' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (599, N'Susan', N'Anderson', CAST(N'1983-07-20' AS Date), N'SA350', 69, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (600, N'Karen', N'Hall', CAST(N'1928-04-07' AS Date), N'KH191', 11, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (601, N'Anna', N'White', CAST(N'1931-03-06' AS Date), N'AW307', 64, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (602, N'Emily', N'Harris', CAST(N'1963-02-26' AS Date), N'EH110', 63, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (603, N'David', N'Martin', CAST(N'1964-07-16' AS Date), N'DM218', 63, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (604, N'Jessica', N'Brown', CAST(N'1965-11-02' AS Date), N'JB107', 37, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (605, N'Lisa', N'Wilson', CAST(N'1992-04-12' AS Date), N'LW840', 2, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (606, N'Lisa', N'Garcia', CAST(N'1921-09-27' AS Date), N'LG520', 38, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (607, N'Olivia', N'Clark', CAST(N'1970-07-14' AS Date), N'OC442', 55, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (608, N'Susan', N'Smith', CAST(N'1995-03-05' AS Date), N'SS654', 56, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (609, N'Anna', N'Wilson', CAST(N'1977-09-12' AS Date), N'AW889', 0, 1, CAST(N'2000-02-26' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (610, N'William', N'Smith', CAST(N'1938-01-16' AS Date), N'WS363', 0, 1, CAST(N'1940-11-10' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (611, N'Robert', N'Martin', CAST(N'1920-10-28' AS Date), N'RM735', 0, 1, CAST(N'1970-05-21' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (612, N'Lisa', N'Moore', CAST(N'1932-04-21' AS Date), N'LM854', 79, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (613, N'Mary', N'White', CAST(N'2001-03-05' AS Date), N'MW906', 64, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (614, N'Lisa', N'White', CAST(N'1989-03-08' AS Date), N'LW757', 1, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (615, N'Sophia', N'Walker', CAST(N'1925-10-16' AS Date), N'SW530', 0, 1, CAST(N'1996-03-23' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (616, N'John', N'Harris', CAST(N'1922-11-03' AS Date), N'JH543', 0, 1, CAST(N'1997-10-11' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (617, N'Kevin', N'Jackson', CAST(N'1985-09-09' AS Date), N'KJ751', 86, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (618, N'David', N'Anderson', CAST(N'1995-06-17' AS Date), N'DA281', 0, 1, CAST(N'2022-07-10' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (619, N'David', N'White', CAST(N'1940-05-15' AS Date), N'DW368', 93, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (620, N'Ethan', N'Davis', CAST(N'1956-05-04' AS Date), N'ED862', 10, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (621, N'Mary', N'Perez', CAST(N'1964-03-10' AS Date), N'MP916', 73, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (622, N'Patricia', N'Rodriguez', CAST(N'1950-03-23' AS Date), N'PR919', 0, 1, CAST(N'1967-02-24' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (623, N'Kevin', N'White', CAST(N'1956-06-07' AS Date), N'KW371', 26, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (624, N'Anna', N'Lee', CAST(N'1983-02-27' AS Date), N'AL526', 29, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (625, N'Brian', N'White', CAST(N'1967-05-25' AS Date), N'BW680', 24, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (626, N'Anna', N'Lewis', CAST(N'1971-01-21' AS Date), N'AL742', 39, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (627, N'Linda', N'Davis', CAST(N'1978-07-08' AS Date), N'LD585', 79, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (628, N'Ethan', N'Anderson', CAST(N'1969-07-30' AS Date), N'EA169', 100, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (629, N'Sarah', N'Walker', CAST(N'2001-11-03' AS Date), N'SW901', 45, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (630, N'Patricia', N'Johnson', CAST(N'1934-04-24' AS Date), N'PJ881', 0, 1, CAST(N'2019-08-16' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (631, N'Barbara', N'Allen', CAST(N'1969-12-03' AS Date), N'BA412', 14, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (632, N'Mary', N'Anderson', CAST(N'1966-06-11' AS Date), N'MA862', 0, 1, CAST(N'1967-02-11' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (633, N'Charles', N'Perez', CAST(N'2001-03-08' AS Date), N'CP157', 0, 1, CAST(N'2007-01-12' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (634, N'Michael', N'Walker', CAST(N'1996-05-27' AS Date), N'MW204', 76, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (635, N'Jennifer', N'Robinson', CAST(N'1945-04-26' AS Date), N'JR529', 0, 1, CAST(N'1983-05-25' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (636, N'Thomas', N'Taylor', CAST(N'1974-09-09' AS Date), N'TT675', 50, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (637, N'Barbara', N'Young', CAST(N'1960-07-29' AS Date), N'BY393', 0, 1, CAST(N'2016-01-06' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (638, N'Lisa', N'Rodriguez', CAST(N'1972-04-08' AS Date), N'LR959', 100, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (639, N'Susan', N'Miller', CAST(N'1933-06-30' AS Date), N'SM616', 0, 1, CAST(N'1973-12-07' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (640, N'John', N'Williams', CAST(N'1952-08-31' AS Date), N'JW912', 50, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (641, N'Olivia', N'Moore', CAST(N'1935-06-14' AS Date), N'OM987', 20, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (642, N'Jennifer', N'Lewis', CAST(N'1968-03-09' AS Date), N'JL597', 43, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (643, N'Joseph', N'Garcia', CAST(N'1941-12-21' AS Date), N'JG323', 98, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (644, N'Lisa', N'Johnson', CAST(N'2001-08-18' AS Date), N'LJ155', 80, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (645, N'Elizabeth', N'Johnson', CAST(N'1943-09-15' AS Date), N'EJ276', 0, 1, CAST(N'1983-10-15' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (646, N'Michael', N'Williams', CAST(N'1947-01-13' AS Date), N'MW785', 81, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (647, N'Sophia', N'White', CAST(N'1933-10-26' AS Date), N'SW154', 0, 1, CAST(N'1956-11-24' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (648, N'Lisa', N'Garcia', CAST(N'1995-01-31' AS Date), N'LG384', 75, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (649, N'Brian', N'White', CAST(N'1998-06-24' AS Date), N'BW970', 75, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (650, N'Susan', N'Allen', CAST(N'1985-10-15' AS Date), N'SA524', 44, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (651, N'James', N'Hall', CAST(N'1986-12-19' AS Date), N'JH739', 18, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (652, N'Charles', N'Allen', CAST(N'1937-05-16' AS Date), N'CA160', 89, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (653, N'Susan', N'Young', CAST(N'1937-02-18' AS Date), N'SY106', 0, 1, CAST(N'2006-03-29' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (654, N'Mary', N'Miller', CAST(N'1975-10-26' AS Date), N'MM784', 74, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (655, N'Joseph', N'Thompson', CAST(N'1925-05-27' AS Date), N'JT583', 86, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (656, N'Jacob', N'Taylor', CAST(N'2001-08-08' AS Date), N'JT235', 75, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (657, N'Charles', N'Johnson', CAST(N'1926-12-16' AS Date), N'CJ418', 8, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (658, N'Emily', N'Robinson', CAST(N'1940-02-24' AS Date), N'ER679', 0, 1, CAST(N'2012-03-19' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (659, N'Jennifer', N'Hall', CAST(N'1938-09-22' AS Date), N'JH912', 34, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (660, N'Robert', N'Wilson', CAST(N'1922-12-22' AS Date), N'RW536', 72, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (661, N'Jacob', N'Harris', CAST(N'1972-06-03' AS Date), N'JH885', 0, 1, CAST(N'2020-02-08' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (662, N'Joseph', N'Lee', CAST(N'1994-03-11' AS Date), N'JL804', 0, 1, CAST(N'2005-03-18' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (663, N'James', N'Garcia', CAST(N'1974-09-13' AS Date), N'JG758', 5, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (664, N'Anna', N'Davis', CAST(N'1953-03-17' AS Date), N'AD756', 29, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (665, N'Matthew', N'Thomas', CAST(N'1953-07-01' AS Date), N'MT710', 0, 1, CAST(N'1975-04-15' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (666, N'Brian', N'Jackson', CAST(N'1961-11-29' AS Date), N'BJ659', 59, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (667, N'Kevin', N'Anderson', CAST(N'1959-07-10' AS Date), N'KA312', 68, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (668, N'Karen', N'Smith', CAST(N'1967-03-23' AS Date), N'KS989', 0, 1, CAST(N'1981-05-03' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (669, N'Elizabeth', N'Rodriguez', CAST(N'1986-02-14' AS Date), N'ER768', 21, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (670, N'Olivia', N'Martin', CAST(N'1968-05-11' AS Date), N'OM705', 85, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (671, N'John', N'Miller', CAST(N'1951-07-20' AS Date), N'JM778', 45, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (672, N'Thomas', N'Miller', CAST(N'1953-08-11' AS Date), N'TM299', 0, 1, CAST(N'1985-10-31' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (673, N'Joseph', N'Clark', CAST(N'1936-07-09' AS Date), N'JC533', 100, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (674, N'Matthew', N'Smith', CAST(N'2003-01-08' AS Date), N'MS660', 7, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (675, N'Karen', N'Miller', CAST(N'2001-12-03' AS Date), N'KM486', 0, 1, CAST(N'2007-10-08' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (676, N'Ethan', N'Wilson', CAST(N'1954-08-01' AS Date), N'EW288', 62, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (677, N'Jennifer', N'Hall', CAST(N'1957-08-18' AS Date), N'JH111', 0, 1, CAST(N'1983-03-13' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (678, N'Elizabeth', N'Johnson', CAST(N'1969-03-29' AS Date), N'EJ950', 68, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (679, N'Patricia', N'Lewis', CAST(N'1937-09-30' AS Date), N'PL163', 65, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (680, N'Anna', N'Brown', CAST(N'1968-07-04' AS Date), N'AB170', 6, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (681, N'Kevin', N'Miller', CAST(N'1947-10-27' AS Date), N'KM500', 60, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (682, N'Elizabeth', N'Allen', CAST(N'1991-05-14' AS Date), N'EA378', 28, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (683, N'John', N'Robinson', CAST(N'1970-07-13' AS Date), N'JR488', 0, 1, CAST(N'1986-02-16' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (684, N'David', N'Young', CAST(N'1986-01-14' AS Date), N'DY489', 0, 1, CAST(N'2021-11-13' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (685, N'Karen', N'Taylor', CAST(N'1930-03-31' AS Date), N'KT730', 0, 1, CAST(N'1964-03-31' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (686, N'Brian', N'Wilson', CAST(N'1932-07-20' AS Date), N'BW203', 59, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (687, N'Elizabeth', N'Perez', CAST(N'1928-11-20' AS Date), N'EP923', 3, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (688, N'Joseph', N'Jackson', CAST(N'1920-09-26' AS Date), N'JJ756', 41, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (689, N'Patricia', N'Martin', CAST(N'1960-02-20' AS Date), N'PM804', 88, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (690, N'Charles', N'Martin', CAST(N'1993-02-09' AS Date), N'CM238', 88, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (691, N'Joseph', N'Williams', CAST(N'1998-07-24' AS Date), N'JW861', 55, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (692, N'Olivia', N'Harris', CAST(N'1960-12-13' AS Date), N'OH617', 0, 1, CAST(N'1970-01-04' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (693, N'Thomas', N'Hernandez', CAST(N'1976-05-26' AS Date), N'TH881', 73, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (694, N'Mary', N'Rodriguez', CAST(N'1930-05-09' AS Date), N'MR496', 38, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (695, N'Richard', N'Jackson', CAST(N'1988-11-19' AS Date), N'RJ538', 60, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (696, N'James', N'Moore', CAST(N'1972-06-05' AS Date), N'JM738', 96, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (697, N'William', N'Hernandez', CAST(N'1948-10-12' AS Date), N'WH956', 22, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (698, N'James', N'Robinson', CAST(N'1975-06-12' AS Date), N'JR663', 48, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (699, N'Anna', N'Johnson', CAST(N'1988-04-22' AS Date), N'AJ946', 0, 1, CAST(N'2022-11-30' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (700, N'Barbara', N'Robinson', CAST(N'1922-11-10' AS Date), N'BR217', 32, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (701, N'Ethan', N'Perez', CAST(N'1941-06-12' AS Date), N'EP476', 25, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (702, N'Elizabeth', N'Taylor', CAST(N'1938-01-07' AS Date), N'ET643', 0, 1, CAST(N'1951-09-12' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (703, N'Mary', N'Brown', CAST(N'1962-01-20' AS Date), N'MB924', 96, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (704, N'Susan', N'Lee', CAST(N'1935-10-09' AS Date), N'SL971', 0, 1, CAST(N'1988-12-09' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (705, N'Kevin', N'White', CAST(N'1969-12-17' AS Date), N'KW220', 0, 1, CAST(N'1987-08-11' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (706, N'Olivia', N'Lewis', CAST(N'1964-11-15' AS Date), N'OL881', 89, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (707, N'Robert', N'Lewis', CAST(N'1930-12-10' AS Date), N'RL878', 53, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (708, N'Richard', N'Smith', CAST(N'1997-12-26' AS Date), N'RS334', 97, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (709, N'Olivia', N'Hernandez', CAST(N'1963-05-27' AS Date), N'OH367', 89, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (710, N'Emily', N'Jones', CAST(N'1980-12-11' AS Date), N'EJ296', 0, 1, CAST(N'2010-09-21' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (711, N'Barbara', N'Allen', CAST(N'1979-09-27' AS Date), N'BA359', 99, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (712, N'Joseph', N'Thomas', CAST(N'1976-11-23' AS Date), N'JT252', 0, 1, CAST(N'2020-05-22' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (713, N'James', N'Martin', CAST(N'1939-05-27' AS Date), N'JM310', 54, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (714, N'Linda', N'Anderson', CAST(N'1960-08-31' AS Date), N'LA585', 0, 1, CAST(N'1999-04-06' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (715, N'Ethan', N'Johnson', CAST(N'1991-07-21' AS Date), N'EJ842', 79, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (716, N'Jennifer', N'Young', CAST(N'1957-12-23' AS Date), N'JY275', 77, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (717, N'William', N'Thompson', CAST(N'1966-08-28' AS Date), N'WT338', 0, 1, CAST(N'2023-03-07' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (718, N'Elizabeth', N'Young', CAST(N'1927-12-08' AS Date), N'EY568', 85, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (719, N'Elizabeth', N'Williams', CAST(N'1995-07-21' AS Date), N'EW639', 50, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (720, N'Mary', N'Walker', CAST(N'1930-07-11' AS Date), N'MW864', 5, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (721, N'Sophia', N'Miller', CAST(N'1955-12-22' AS Date), N'SM405', 82, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (722, N'Barbara', N'Clark', CAST(N'1927-11-20' AS Date), N'BC224', 0, 1, CAST(N'1996-02-14' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (723, N'Linda', N'Williams', CAST(N'1979-12-21' AS Date), N'LW878', 40, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (724, N'Linda', N'Young', CAST(N'1971-06-26' AS Date), N'LY813', 2, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (725, N'William', N'Martin', CAST(N'1993-10-23' AS Date), N'WM946', 81, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (726, N'Jessica', N'Clark', CAST(N'1926-03-31' AS Date), N'JC842', 41, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (727, N'Richard', N'Smith', CAST(N'1942-02-11' AS Date), N'RS298', 0, 1, CAST(N'2014-01-07' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (728, N'Karen', N'Thompson', CAST(N'1923-09-10' AS Date), N'KT487', 36, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (729, N'Linda', N'Lee', CAST(N'1950-05-21' AS Date), N'LL762', 91, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (730, N'Olivia', N'Garcia', CAST(N'1995-01-13' AS Date), N'OG925', 0, 1, CAST(N'2014-02-19' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (731, N'David', N'Robinson', CAST(N'1976-11-12' AS Date), N'DR114', 0, 1, CAST(N'2021-12-16' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (732, N'Sophia', N'Thomas', CAST(N'1934-09-10' AS Date), N'ST386', 0, 1, CAST(N'1988-10-31' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (733, N'Barbara', N'Lewis', CAST(N'1964-01-14' AS Date), N'BL748', 26, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (734, N'Susan', N'Thompson', CAST(N'1987-01-08' AS Date), N'ST483', 6, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (735, N'Emily', N'Brown', CAST(N'1934-06-03' AS Date), N'EB592', 0, 1, CAST(N'1966-11-12' AS Date), 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (736, N'Jacob', N'Rodriguez', CAST(N'1973-09-17' AS Date), N'JR135', 0, 1, CAST(N'2004-05-04' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (737, N'Ethan', N'Miller', CAST(N'1953-10-31' AS Date), N'EM933', 0, 1, CAST(N'2021-10-29' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (738, N'Jacob', N'Lee', CAST(N'2003-06-25' AS Date), N'JL236', 0, 1, CAST(N'2008-10-17' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (739, N'Sophia', N'Martinez', CAST(N'1921-12-19' AS Date), N'SM351', 52, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (740, N'Michael', N'Allen', CAST(N'1929-08-14' AS Date), N'MA356', 60, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (741, N'Karen', N'Harris', CAST(N'1954-03-07' AS Date), N'KH769', 20, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (742, N'Jessica', N'Davis', CAST(N'1922-04-15' AS Date), N'JD178', 22, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (743, N'Susan', N'Perez', CAST(N'1947-09-02' AS Date), N'SP263', 11, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (744, N'Lisa', N'Thompson', CAST(N'1986-06-16' AS Date), N'LT582', 20, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (745, N'Elizabeth', N'Hall', CAST(N'1978-02-14' AS Date), N'EH373', 47, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (746, N'Elizabeth', N'Jones', CAST(N'1954-05-05' AS Date), N'EJ442', 59, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (747, N'Lisa', N'Young', CAST(N'1980-02-20' AS Date), N'LY721', 0, 1, CAST(N'1989-02-19' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (748, N'Jennifer', N'Jones', CAST(N'1988-01-20' AS Date), N'JJ264', 0, 1, CAST(N'2017-07-27' AS Date), 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (749, N'Elizabeth', N'Thompson', CAST(N'1920-12-26' AS Date), N'ET523', 42, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (750, N'Sarah', N'Moore', CAST(N'1992-12-26' AS Date), N'SM144', 57, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (751, N'Robert', N'Perez', CAST(N'1971-04-04' AS Date), N'RP716', 88, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (752, N'Linda', N'Anderson', CAST(N'1947-03-26' AS Date), N'LA762', 97, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (753, N'Mary', N'Thompson', CAST(N'1950-01-24' AS Date), N'MT310', 43, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (754, N'Thomas', N'Robinson', CAST(N'1923-07-13' AS Date), N'TR478', 0, 1, CAST(N'2020-07-14' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (755, N'John', N'Taylor', CAST(N'1959-05-22' AS Date), N'JT756', 0, 1, CAST(N'1966-03-01' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (756, N'Robert', N'Walker', CAST(N'1984-10-21' AS Date), N'RW903', 41, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (757, N'Barbara', N'Smith', CAST(N'1979-04-07' AS Date), N'BS514', 53, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (758, N'Anna', N'Young', CAST(N'1967-08-22' AS Date), N'AY285', 6, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (759, N'Ethan', N'Moore', CAST(N'1988-04-10' AS Date), N'EM335', 67, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (760, N'Patricia', N'Garcia', CAST(N'1988-09-07' AS Date), N'PG891', 73, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (761, N'Sophia', N'Garcia', CAST(N'1991-11-13' AS Date), N'SG105', 88, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (762, N'Jacob', N'Clark', CAST(N'1962-05-30' AS Date), N'JC803', 0, 1, CAST(N'1974-06-14' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (763, N'Karen', N'Robinson', CAST(N'1941-04-07' AS Date), N'KR914', 0, 1, CAST(N'2008-03-05' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (764, N'William', N'Anderson', CAST(N'1977-09-29' AS Date), N'WA948', 0, 1, CAST(N'2020-05-31' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (765, N'Elizabeth', N'Brown', CAST(N'1992-10-04' AS Date), N'EB973', 92, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (766, N'Elizabeth', N'Thompson', CAST(N'1960-03-08' AS Date), N'ET499', 24, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (767, N'Mary', N'Garcia', CAST(N'1928-09-02' AS Date), N'MG987', 32, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (768, N'James', N'Jackson', CAST(N'1973-08-26' AS Date), N'JJ281', 63, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (769, N'James', N'Miller', CAST(N'1956-08-24' AS Date), N'JM405', 85, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (770, N'James', N'Martin', CAST(N'1965-10-21' AS Date), N'JM171', 0, 1, CAST(N'1972-07-31' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (771, N'Susan', N'Garcia', CAST(N'1981-03-26' AS Date), N'SG855', 20, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (772, N'Charles', N'Martinez', CAST(N'1972-07-02' AS Date), N'CM778', 93, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (773, N'Sophia', N'Walker', CAST(N'1990-08-26' AS Date), N'SW357', 1, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (774, N'James', N'Walker', CAST(N'1924-10-21' AS Date), N'JW425', 0, 1, CAST(N'1936-06-24' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (775, N'William', N'White', CAST(N'1921-12-28' AS Date), N'WW180', 16, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (776, N'Patricia', N'Hall', CAST(N'1989-07-20' AS Date), N'PH344', 53, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (777, N'Matthew', N'Robinson', CAST(N'1978-09-27' AS Date), N'MR700', 95, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (778, N'Michael', N'Wilson', CAST(N'2001-03-23' AS Date), N'MW806', 74, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (779, N'Kevin', N'Thompson', CAST(N'1960-10-29' AS Date), N'KT833', 0, 1, CAST(N'2001-02-05' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (780, N'Anna', N'White', CAST(N'1924-08-18' AS Date), N'AW265', 77, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (781, N'Sophia', N'Anderson', CAST(N'1964-04-17' AS Date), N'SA121', 48, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (782, N'Jennifer', N'Martinez', CAST(N'1935-07-06' AS Date), N'JM456', 70, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (783, N'Michael', N'Smith', CAST(N'1948-04-28' AS Date), N'MS210', 59, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (784, N'Richard', N'Lee', CAST(N'1986-05-31' AS Date), N'RL190', 91, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (785, N'Patricia', N'Garcia', CAST(N'1944-08-13' AS Date), N'PG758', 90, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (786, N'Sophia', N'Davis', CAST(N'1932-06-23' AS Date), N'SD402', 100, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (787, N'Sophia', N'Young', CAST(N'1947-06-20' AS Date), N'SY943', 83, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (788, N'Elizabeth', N'Jones', CAST(N'1964-09-12' AS Date), N'EJ563', 30, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (789, N'Linda', N'Miller', CAST(N'1999-05-09' AS Date), N'LM476', 52, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (790, N'David', N'Lewis', CAST(N'1952-05-21' AS Date), N'DL155', 46, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (791, N'Jessica', N'Wilson', CAST(N'1993-08-12' AS Date), N'JW670', 0, 1, CAST(N'2001-03-08' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (792, N'Olivia', N'Wilson', CAST(N'2002-09-01' AS Date), N'OW810', 45, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (793, N'Matthew', N'Miller', CAST(N'1975-01-30' AS Date), N'MM380', 99, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (794, N'Olivia', N'Harris', CAST(N'1994-10-11' AS Date), N'OH658', 14, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (795, N'Kevin', N'Robinson', CAST(N'2001-12-30' AS Date), N'KR463', 0, 1, CAST(N'2019-03-31' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (796, N'Kevin', N'Harris', CAST(N'1984-12-19' AS Date), N'KH565', 0, 1, CAST(N'1998-08-30' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (797, N'Jacob', N'Taylor', CAST(N'1930-12-19' AS Date), N'JT133', 53, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (798, N'Sarah', N'White', CAST(N'1949-03-21' AS Date), N'SW690', 69, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (799, N'Lisa', N'Perez', CAST(N'1997-06-10' AS Date), N'LP712', 71, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (800, N'Ethan', N'Garcia', CAST(N'1966-10-29' AS Date), N'EG473', 6, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (801, N'Jessica', N'Perez', CAST(N'1953-03-15' AS Date), N'JP517', 55, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (802, N'Ethan', N'Taylor', CAST(N'1967-11-03' AS Date), N'ET931', 73, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (803, N'Patricia', N'Brown', CAST(N'1980-07-05' AS Date), N'PB241', 53, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (804, N'Emily', N'Miller', CAST(N'1966-08-05' AS Date), N'EM979', 92, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (805, N'David', N'Jackson', CAST(N'1991-01-20' AS Date), N'DJ367', 0, 1, CAST(N'2004-06-12' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (806, N'Susan', N'Allen', CAST(N'1977-03-10' AS Date), N'SA711', 55, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (807, N'Elizabeth', N'Williams', CAST(N'1973-07-01' AS Date), N'EW601', 0, 1, CAST(N'1982-03-18' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (808, N'Mary', N'Hall', CAST(N'1936-04-16' AS Date), N'MH859', 87, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (809, N'Matthew', N'Smith', CAST(N'1942-05-29' AS Date), N'MS851', 15, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (810, N'Charles', N'White', CAST(N'1969-02-02' AS Date), N'CW510', 0, 1, CAST(N'2000-07-28' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (811, N'Barbara', N'Lee', CAST(N'2002-11-01' AS Date), N'BL337', 0, 1, CAST(N'2011-07-19' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (812, N'Michael', N'Miller', CAST(N'1993-05-21' AS Date), N'MM572', 0, 1, CAST(N'2008-02-27' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (813, N'Lisa', N'Harris', CAST(N'1947-06-08' AS Date), N'LH283', 0, 1, CAST(N'1990-07-18' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (814, N'Mary', N'Hernandez', CAST(N'1983-03-05' AS Date), N'MH652', 0, 1, CAST(N'2014-08-17' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (815, N'Elizabeth', N'Martin', CAST(N'1948-12-19' AS Date), N'EM994', 18, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (816, N'Jacob', N'Harris', CAST(N'1956-07-26' AS Date), N'JH166', 45, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (817, N'Kevin', N'Jackson', CAST(N'1934-02-12' AS Date), N'KJ802', 42, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (818, N'John', N'Wilson', CAST(N'1974-08-13' AS Date), N'JW215', 0, 1, CAST(N'1981-07-14' AS Date), 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (819, N'Emily', N'Williams', CAST(N'1954-08-22' AS Date), N'EW714', 20, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (820, N'James', N'Johnson', CAST(N'1931-09-15' AS Date), N'JJ621', 0, 1, CAST(N'2007-02-01' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (821, N'Charles', N'Rodriguez', CAST(N'1947-02-26' AS Date), N'CR897', 32, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (822, N'Jacob', N'Garcia', CAST(N'1988-01-22' AS Date), N'JG211', 0, 1, CAST(N'1991-08-31' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (823, N'Thomas', N'Johnson', CAST(N'1992-07-17' AS Date), N'TJ512', 48, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (824, N'Jennifer', N'Hall', CAST(N'1943-01-04' AS Date), N'JH580', 43, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (825, N'Ethan', N'Davis', CAST(N'1997-07-07' AS Date), N'ED741', 45, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (826, N'Emily', N'Lee', CAST(N'1928-06-27' AS Date), N'EL385', 94, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (827, N'Joseph', N'Anderson', CAST(N'1927-03-27' AS Date), N'JA342', 61, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (828, N'Jessica', N'Davis', CAST(N'1975-06-15' AS Date), N'JD763', 0, 1, CAST(N'1990-05-03' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (829, N'Joseph', N'Jackson', CAST(N'1966-08-18' AS Date), N'JJ312', 0, 1, CAST(N'1976-05-11' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (830, N'Richard', N'Harris', CAST(N'1937-02-17' AS Date), N'RH429', 19, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (831, N'Karen', N'Miller', CAST(N'1921-11-14' AS Date), N'KM998', 0, 1, CAST(N'1930-08-06' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (832, N'Jacob', N'Hall', CAST(N'1951-08-12' AS Date), N'JH557', 5, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (833, N'Emily', N'Clark', CAST(N'1921-05-14' AS Date), N'EC732', 12, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (834, N'Barbara', N'Anderson', CAST(N'1969-05-08' AS Date), N'BA125', 78, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (835, N'Emily', N'Robinson', CAST(N'1977-05-16' AS Date), N'ER752', 6, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (836, N'Michael', N'Allen', CAST(N'1974-04-13' AS Date), N'MA395', 50, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (837, N'Michael', N'Johnson', CAST(N'1960-09-24' AS Date), N'MJ236', 0, 1, CAST(N'2003-07-05' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (838, N'Ethan', N'Miller', CAST(N'1952-04-23' AS Date), N'EM241', 89, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (839, N'Robert', N'Smith', CAST(N'1932-02-03' AS Date), N'RS770', 74, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (840, N'Charles', N'Hernandez', CAST(N'1962-02-01' AS Date), N'CH999', 96, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (841, N'Sarah', N'Taylor', CAST(N'2001-04-29' AS Date), N'ST594', 29, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (842, N'Kevin', N'Johnson', CAST(N'1985-10-13' AS Date), N'KJ706', 0, 1, CAST(N'2001-06-21' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (843, N'Thomas', N'Smith', CAST(N'1991-11-09' AS Date), N'TS268', 0, 1, CAST(N'2004-10-20' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (844, N'Jennifer', N'Thompson', CAST(N'1958-01-05' AS Date), N'JT318', 0, 1, CAST(N'1998-05-08' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (845, N'Matthew', N'Smith', CAST(N'1939-02-14' AS Date), N'MS296', 78, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (846, N'Mary', N'Walker', CAST(N'1993-12-27' AS Date), N'MW635', 62, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (847, N'John', N'Williams', CAST(N'1957-12-16' AS Date), N'JW963', 0, 1, CAST(N'1958-04-15' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (848, N'Karen', N'Perez', CAST(N'1968-09-05' AS Date), N'KP839', 0, 1, CAST(N'2019-01-01' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (849, N'Jacob', N'Davis', CAST(N'1936-09-24' AS Date), N'JD902', 96, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (850, N'Barbara', N'Thompson', CAST(N'1940-06-04' AS Date), N'BT777', 0, 1, CAST(N'2009-01-15' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (851, N'Linda', N'Martin', CAST(N'1953-11-01' AS Date), N'LM503', 0, 1, CAST(N'2014-04-20' AS Date), 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (852, N'William', N'Allen', CAST(N'1934-08-27' AS Date), N'WA531', 0, 1, CAST(N'2019-05-16' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (853, N'David', N'Johnson', CAST(N'1985-03-16' AS Date), N'DJ327', 73, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (854, N'Joseph', N'Robinson', CAST(N'1962-07-01' AS Date), N'JR552', 0, 1, CAST(N'2013-11-13' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (855, N'James', N'Martin', CAST(N'1951-03-31' AS Date), N'JM142', 10, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (856, N'Michael', N'Rodriguez', CAST(N'1925-12-10' AS Date), N'MR782', 13, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (857, N'Lisa', N'Garcia', CAST(N'1922-12-18' AS Date), N'LG647', 39, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (858, N'Jessica', N'Smith', CAST(N'1962-11-15' AS Date), N'JS693', 0, 1, CAST(N'2014-10-30' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (859, N'Linda', N'Harris', CAST(N'1979-04-10' AS Date), N'LH568', 63, 0, NULL, 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (860, N'Barbara', N'Martin', CAST(N'2003-08-11' AS Date), N'BM147', 49, 0, NULL, 34, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (861, N'Olivia', N'Taylor', CAST(N'1997-03-10' AS Date), N'OT463', 33, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (862, N'James', N'Taylor', CAST(N'1945-08-17' AS Date), N'JT749', 55, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (863, N'Mary', N'Young', CAST(N'1995-05-30' AS Date), N'MY924', 0, 1, CAST(N'2003-12-13' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (864, N'Karen', N'Moore', CAST(N'1943-03-20' AS Date), N'KM730', 34, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (865, N'Charles', N'Johnson', CAST(N'1940-11-10' AS Date), N'CJ796', 0, 1, CAST(N'1948-11-29' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (866, N'Emily', N'Hernandez', CAST(N'1937-10-03' AS Date), N'EH826', 55, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (867, N'James', N'Taylor', CAST(N'1988-07-18' AS Date), N'JT168', 0, 1, CAST(N'2010-01-13' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (868, N'Mary', N'Taylor', CAST(N'1981-05-28' AS Date), N'MT388', 0, 1, CAST(N'1992-04-29' AS Date), 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (869, N'Linda', N'Moore', CAST(N'1926-12-15' AS Date), N'LM344', 10, 0, NULL, 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (870, N'Elizabeth', N'Allen', CAST(N'1980-12-02' AS Date), N'EA931', 0, 1, CAST(N'2011-05-15' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (871, N'Anna', N'Clark', CAST(N'1949-06-03' AS Date), N'AC170', 0, 1, CAST(N'1964-08-05' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (872, N'Matthew', N'Robinson', CAST(N'1937-06-16' AS Date), N'MR960', 44, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (873, N'Linda', N'Young', CAST(N'1958-09-06' AS Date), N'LY721', 0, 1, CAST(N'1978-07-01' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (874, N'Michael', N'Taylor', CAST(N'1953-09-05' AS Date), N'MT375', 87, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (875, N'John', N'Hernandez', CAST(N'1979-07-17' AS Date), N'JH166', 34, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (876, N'Michael', N'Hall', CAST(N'1955-11-21' AS Date), N'MH416', 86, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (877, N'Anna', N'Martinez', CAST(N'1946-01-03' AS Date), N'AM855', 42, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (878, N'Kevin', N'Thomas', CAST(N'1961-10-03' AS Date), N'KT138', 0, 1, CAST(N'2022-10-23' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (879, N'Michael', N'Young', CAST(N'1971-06-18' AS Date), N'MY856', 74, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (880, N'Elizabeth', N'Miller', CAST(N'1991-11-27' AS Date), N'EM100', 71, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (881, N'Karen', N'Anderson', CAST(N'1989-04-30' AS Date), N'KA347', 0, 1, CAST(N'2001-08-31' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (882, N'Susan', N'Allen', CAST(N'1927-06-14' AS Date), N'SA164', 0, 1, CAST(N'1988-02-29' AS Date), 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (883, N'David', N'Clark', CAST(N'2001-09-21' AS Date), N'DC479', 53, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (884, N'Matthew', N'Walker', CAST(N'1982-03-23' AS Date), N'MW798', 5, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (885, N'Robert', N'Jones', CAST(N'1950-01-25' AS Date), N'RJ686', 2, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (886, N'Joseph', N'Jackson', CAST(N'1989-09-02' AS Date), N'JJ555', 87, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (887, N'Kevin', N'Hernandez', CAST(N'1922-11-05' AS Date), N'KH483', 44, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (888, N'Thomas', N'Robinson', CAST(N'1922-03-13' AS Date), N'TR461', 0, 1, CAST(N'1973-04-04' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (889, N'Patricia', N'Garcia', CAST(N'1948-07-02' AS Date), N'PG856', 97, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (890, N'Richard', N'Lewis', CAST(N'1941-02-19' AS Date), N'RL315', 0, 1, CAST(N'2021-06-14' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (891, N'Emily', N'Miller', CAST(N'1922-12-06' AS Date), N'EM979', 80, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (892, N'Lisa', N'Perez', CAST(N'1962-11-03' AS Date), N'LP714', 0, 1, CAST(N'1978-12-07' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (893, N'Lisa', N'Hernandez', CAST(N'1999-05-04' AS Date), N'LH303', 0, 1, CAST(N'2021-03-15' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (894, N'Michael', N'Johnson', CAST(N'1980-10-11' AS Date), N'MJ390', 34, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (895, N'Susan', N'Wilson', CAST(N'1998-07-28' AS Date), N'SW436', 14, 0, NULL, 2, 24)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (896, N'James', N'Martinez', CAST(N'1997-11-24' AS Date), N'JM790', 0, 1, CAST(N'2013-04-18' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (897, N'Linda', N'Williams', CAST(N'1958-02-26' AS Date), N'LW762', 0, 1, CAST(N'1992-04-26' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (898, N'Barbara', N'Johnson', CAST(N'2001-03-29' AS Date), N'BJ884', 0, 1, CAST(N'2002-06-28' AS Date), 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (899, N'Emily', N'Jones', CAST(N'2000-12-27' AS Date), N'EJ339', 18, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (900, N'Lisa', N'Lee', CAST(N'1990-02-22' AS Date), N'LL314', 0, 1, CAST(N'1993-04-21' AS Date), 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (901, N'Thomas', N'Taylor', CAST(N'1968-07-01' AS Date), N'TT790', 28, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (902, N'Joseph', N'Walker', CAST(N'1946-09-06' AS Date), N'JW935', 34, 0, NULL, 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (903, N'William', N'Thomas', CAST(N'1979-07-27' AS Date), N'WT295', 36, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (904, N'Susan', N'White', CAST(N'1922-02-05' AS Date), N'SW560', 91, 0, NULL, 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (905, N'Sarah', N'Davis', CAST(N'1971-08-08' AS Date), N'SD972', 0, 1, CAST(N'2012-06-17' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (906, N'Sophia', N'Hernandez', CAST(N'1922-03-07' AS Date), N'SH288', 0, 1, CAST(N'1975-12-24' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (907, N'Emily', N'Allen', CAST(N'1925-12-30' AS Date), N'EA235', 77, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (908, N'James', N'Thomas', CAST(N'1993-10-21' AS Date), N'JT997', 82, 0, NULL, 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (909, N'Charles', N'Anderson', CAST(N'1938-12-05' AS Date), N'CA817', 50, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (910, N'Joseph', N'Rodriguez', CAST(N'1967-05-05' AS Date), N'JR118', 18, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (911, N'Matthew', N'Walker', CAST(N'1985-08-31' AS Date), N'MW339', 0, 1, CAST(N'1997-03-19' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (912, N'Matthew', N'Thomas', CAST(N'1934-09-11' AS Date), N'MT901', 0, 1, CAST(N'1945-04-11' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (913, N'Mary', N'Lewis', CAST(N'1974-03-28' AS Date), N'ML366', 11, 0, NULL, 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (914, N'Kevin', N'White', CAST(N'1922-04-18' AS Date), N'KW732', 0, 1, CAST(N'1966-08-08' AS Date), 112, 10)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (915, N'William', N'Robinson', CAST(N'1982-05-29' AS Date), N'WR623', 12, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (916, N'Mary', N'Robinson', CAST(N'1968-04-06' AS Date), N'MR896', 95, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (917, N'Thomas', N'Jackson', CAST(N'1949-06-23' AS Date), N'TJ193', 50, 0, NULL, 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (918, N'Richard', N'Robinson', CAST(N'2001-03-27' AS Date), N'RR628', 70, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (919, N'Anna', N'Perez', CAST(N'1984-05-12' AS Date), N'AP833', 0, 1, CAST(N'2022-02-25' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (920, N'Barbara', N'Taylor', CAST(N'1946-02-08' AS Date), N'BT383', 92, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (921, N'Karen', N'Allen', CAST(N'1934-12-14' AS Date), N'KA113', 46, 0, NULL, 102, 40)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (922, N'David', N'Hall', CAST(N'1975-03-03' AS Date), N'DH106', 33, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (923, N'Jacob', N'Clark', CAST(N'1953-12-23' AS Date), N'JC529', 0, 1, CAST(N'2004-07-30' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (924, N'Jessica', N'Williams', CAST(N'1927-08-05' AS Date), N'JW568', 82, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (925, N'Jacob', N'Young', CAST(N'1987-04-02' AS Date), N'JY937', 0, 1, CAST(N'2006-06-12' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (926, N'Thomas', N'Young', CAST(N'2000-10-16' AS Date), N'TY598', 42, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (927, N'Patricia', N'Hernandez', CAST(N'1998-02-24' AS Date), N'PH363', 0, 1, CAST(N'2018-10-12' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (928, N'Robert', N'Miller', CAST(N'1957-08-11' AS Date), N'RM619', 15, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (929, N'David', N'Miller', CAST(N'1987-08-04' AS Date), N'DM287', 41, 0, NULL, 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (930, N'Jacob', N'Taylor', CAST(N'1958-04-29' AS Date), N'JT527', 58, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (931, N'James', N'Taylor', CAST(N'1968-03-16' AS Date), N'JT782', 8, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (932, N'Joseph', N'Garcia', CAST(N'1991-07-10' AS Date), N'JG863', 67, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (933, N'Karen', N'Anderson', CAST(N'1950-11-26' AS Date), N'KA297', 80, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (934, N'Mary', N'Hall', CAST(N'1964-12-11' AS Date), N'MH743', 5, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (935, N'Emily', N'Smith', CAST(N'1978-10-16' AS Date), N'ES599', 0, 1, CAST(N'1992-05-31' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (936, N'John', N'Robinson', CAST(N'1954-09-04' AS Date), N'JR194', 86, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (937, N'Robert', N'Lee', CAST(N'1931-02-14' AS Date), N'RL828', 77, 0, NULL, 111, 27)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (938, N'Emily', N'Hall', CAST(N'1966-09-27' AS Date), N'EH897', 0, 1, CAST(N'1984-10-17' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (939, N'Jennifer', N'Lewis', CAST(N'1937-04-06' AS Date), N'JL310', 0, 1, CAST(N'1968-04-06' AS Date), 92, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (940, N'Sophia', N'Rodriguez', CAST(N'1988-08-19' AS Date), N'SR881', 72, 0, NULL, 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (941, N'Mary', N'Rodriguez', CAST(N'1986-05-07' AS Date), N'MR584', 0, 1, CAST(N'2005-07-06' AS Date), 78, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (942, N'Jessica', N'Williams', CAST(N'1974-11-09' AS Date), N'JW157', 0, 1, CAST(N'1979-01-23' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (943, N'Linda', N'Jackson', CAST(N'1925-12-07' AS Date), N'LJ287', 0, 1, CAST(N'1973-07-12' AS Date), 59, 1)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (944, N'Susan', N'Smith', CAST(N'1985-01-02' AS Date), N'SS111', 73, 0, NULL, 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (945, N'Joseph', N'Brown', CAST(N'1941-03-29' AS Date), N'JB518', 10, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (946, N'Matthew', N'Jones', CAST(N'1982-05-02' AS Date), N'MJ411', 95, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (947, N'Kevin', N'Davis', CAST(N'1954-07-20' AS Date), N'KD398', 90, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (948, N'Olivia', N'Miller', CAST(N'1934-06-15' AS Date), N'OM511', 0, 1, CAST(N'2006-07-01' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (949, N'Jessica', N'Anderson', CAST(N'1925-02-23' AS Date), N'JA482', 21, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (950, N'Jessica', N'Hall', CAST(N'1991-06-23' AS Date), N'JH401', 0, 1, CAST(N'2011-06-19' AS Date), 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (951, N'Lisa', N'Taylor', CAST(N'2003-10-30' AS Date), N'LT418', 24, 0, NULL, 22, 22)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (952, N'Jessica', N'Davis', CAST(N'1920-09-13' AS Date), N'JD945', 2, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (953, N'John', N'Moore', CAST(N'1951-12-16' AS Date), N'JM933', 0, 1, CAST(N'1955-03-07' AS Date), 43, 26)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (954, N'Charles', N'Hernandez', CAST(N'1983-03-29' AS Date), N'CH386', 24, 0, NULL, 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (955, N'Matthew', N'Young', CAST(N'1933-12-02' AS Date), N'MY840', 31, 0, NULL, 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (956, N'Patricia', N'Garcia', CAST(N'1966-08-20' AS Date), N'PG891', 0, 1, CAST(N'2005-06-05' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (957, N'Karen', N'Miller', CAST(N'1923-12-10' AS Date), N'KM979', 0, 1, CAST(N'1992-08-18' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (958, N'Matthew', N'Perez', CAST(N'1971-09-09' AS Date), N'MP310', 78, 0, NULL, 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (959, N'Emily', N'Brown', CAST(N'1997-10-18' AS Date), N'EB719', 61, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (960, N'Olivia', N'Perez', CAST(N'1999-06-28' AS Date), N'OP290', 0, 1, CAST(N'2019-06-23' AS Date), 44, 6)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (961, N'Charles', N'Harris', CAST(N'1960-11-21' AS Date), N'CH664', 0, 1, CAST(N'1969-06-06' AS Date), 85, 13)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (962, N'Patricia', N'Williams', CAST(N'2000-06-28' AS Date), N'PW252', 99, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (963, N'Sophia', N'Thompson', CAST(N'1990-03-06' AS Date), N'ST863', 0, 1, CAST(N'2019-08-19' AS Date), 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (964, N'William', N'Smith', CAST(N'1966-10-21' AS Date), N'WS858', 0, 1, CAST(N'1999-08-31' AS Date), 112, 38)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (965, N'Robert', N'Garcia', CAST(N'1959-11-21' AS Date), N'RG754', 77, 0, NULL, 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (966, N'Patricia', N'Hernandez', CAST(N'1955-04-24' AS Date), N'PH827', 0, 1, CAST(N'2002-02-09' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (967, N'Richard', N'Hall', CAST(N'1989-03-15' AS Date), N'RH647', 63, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (968, N'Barbara', N'Garcia', CAST(N'1960-02-26' AS Date), N'BG895', 0, 1, CAST(N'2014-07-17' AS Date), 106, 16)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (969, N'Thomas', N'Thomas', CAST(N'1957-06-27' AS Date), N'TT801', 0, 1, CAST(N'1972-03-05' AS Date), 79, 25)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (970, N'Patricia', N'Walker', CAST(N'1930-03-26' AS Date), N'PW258', 0, 1, CAST(N'1960-09-08' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (971, N'Charles', N'Johnson', CAST(N'2001-02-28' AS Date), N'CJ729', 83, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (972, N'David', N'Miller', CAST(N'1999-03-08' AS Date), N'DM679', 0, 1, CAST(N'2003-04-22' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (973, N'Joseph', N'Anderson', CAST(N'1944-04-18' AS Date), N'JA592', 57, 0, NULL, 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (974, N'Jennifer', N'Martinez', CAST(N'1986-12-21' AS Date), N'JM414', 0, 1, CAST(N'2021-12-03' AS Date), 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (975, N'Olivia', N'Jones', CAST(N'1932-09-16' AS Date), N'OJ762', 86, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (976, N'Karen', N'Johnson', CAST(N'1922-04-12' AS Date), N'KJ857', 41, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (977, N'Lisa', N'Martinez', CAST(N'1982-10-09' AS Date), N'LM596', 58, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (978, N'Richard', N'Hernandez', CAST(N'1956-11-04' AS Date), N'RH307', 0, 1, CAST(N'1987-05-12' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (979, N'William', N'Robinson', CAST(N'1931-05-20' AS Date), N'WR872', 0, 1, CAST(N'1977-10-13' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (980, N'David', N'Johnson', CAST(N'1984-06-15' AS Date), N'DJ152', 24, 0, NULL, 85, 45)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (981, N'Michael', N'Anderson', CAST(N'1937-05-05' AS Date), N'MA203', 0, 1, CAST(N'1969-10-26' AS Date), 72, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (982, N'Sophia', N'Davis', CAST(N'1948-08-07' AS Date), N'SD938', 95, 0, NULL, 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (983, N'Jacob', N'Miller', CAST(N'1982-07-19' AS Date), N'JM252', 0, 1, CAST(N'2013-07-12' AS Date), 1, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (984, N'Jacob', N'Martinez', CAST(N'1924-07-03' AS Date), N'JM672', 10, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (985, N'Matthew', N'Clark', CAST(N'1939-06-21' AS Date), N'MC558', 0, 1, CAST(N'1943-08-12' AS Date), 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (986, N'Thomas', N'Hall', CAST(N'1976-10-14' AS Date), N'TH315', 78, 0, NULL, 98, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (987, N'Patricia', N'Williams', CAST(N'1930-12-10' AS Date), N'PW400', 0, 1, CAST(N'1958-01-10' AS Date), 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (988, N'Lisa', N'Davis', CAST(N'1945-11-27' AS Date), N'LD853', 0, 1, CAST(N'2009-04-15' AS Date), 104, 18)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (989, N'Lisa', N'Williams', CAST(N'1990-08-08' AS Date), N'LW971', 69, 0, NULL, 29, 39)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (990, N'Jessica', N'Young', CAST(N'1956-02-09' AS Date), N'JY181', 0, 1, CAST(N'2017-05-12' AS Date), 94, 8)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (991, N'Michael', N'Walker', CAST(N'2000-05-21' AS Date), N'MW563', 0, 1, CAST(N'2001-03-10' AS Date), 42, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (992, N'Michael', N'Robinson', CAST(N'2002-09-03' AS Date), N'MR151', 0, 1, CAST(N'2017-05-25' AS Date), 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (993, N'Sophia', N'Thompson', CAST(N'1947-04-28' AS Date), N'ST912', 96, 0, NULL, 7, 50)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (994, N'Kevin', N'Jones', CAST(N'1991-09-19' AS Date), N'KJ239', 81, 0, NULL, 61, 11)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (995, N'Thomas', N'Brown', CAST(N'1983-02-13' AS Date), N'TB343', 30, 0, NULL, 66, 33)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (996, N'Barbara', N'Clark', CAST(N'1928-04-03' AS Date), N'BC816', 18, 0, NULL, 33, 12)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (997, N'Linda', N'Robinson', CAST(N'1984-06-18' AS Date), N'LR838', 71, 0, NULL, 66, 19)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (998, N'Jennifer', N'Hernandez', CAST(N'1924-12-14' AS Date), N'JH391', 0, 1, CAST(N'2011-10-08' AS Date), 110, 5)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (999, N'Charles', N'Martinez', CAST(N'1978-12-31' AS Date), N'CM433', 33, 0, NULL, 26, 15)
GO
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [PersonCallSign], [PersonHealth], [PersonDeceased], [PersonDateOfDeath], [LocationLodgingID], [FactionID]) VALUES (1000, N'Mary', N'Hernandez', CAST(N'2001-08-24' AS Date), N'MH306', 35, 0, NULL, 110, 5)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (2, 16, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (2, 27, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (4, 15, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (5, 15, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (5, 18, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (5, 37, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (9, 16, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (12, 33, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (15, 33, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (16, 5, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (19, 33, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (19, 43, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (20, 7, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (20, 22, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (20, 39, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (20, 40, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (20, 46, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (22, 42, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (23, 5, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (23, 18, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (23, 39, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (25, 12, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (27, 30, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (29, 43, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (30, 16, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (30, 44, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (34, 34, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (38, 46, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (40, 6, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (40, 35, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (46, 32, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (46, 39, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (49, 5, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (50, 12, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (53, 5, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (53, 21, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (56, 45, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (58, 50, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (63, 6, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (63, 17, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (64, 25, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (64, 27, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (66, 17, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (66, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (69, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (73, 44, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (75, 43, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (76, 3, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (76, 26, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (77, 33, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (78, 19, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (79, 32, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (85, 3, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (86, 13, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (86, 29, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (87, 17, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (88, 39, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (90, 37, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (93, 47, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (95, 10, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (96, 5, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (97, 49, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (98, 1, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (100, 15, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (104, 3, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (104, 16, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (104, 37, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (104, 39, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (108, 2, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (110, 37, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (110, 39, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (113, 11, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (113, 28, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (114, 10, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (118, 17, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (119, 1, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (119, 19, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (119, 42, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (120, 28, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (122, 15, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (124, 40, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (127, 40, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (127, 43, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (129, 30, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (130, 29, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (131, 8, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (132, 11, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (136, 17, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (136, 37, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (137, 4, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (137, 29, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (138, 15, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (139, 35, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (140, 41, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (142, 38, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (146, 8, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (146, 21, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (147, 39, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (148, 29, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (148, 44, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (151, 28, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (151, 47, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (158, 17, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (158, 20, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (158, 44, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (158, 45, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (158, 50, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (162, 50, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (172, 30, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (173, 43, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (178, 7, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (180, 9, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (182, 11, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (189, 31, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (191, 19, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (196, 44, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (204, 38, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (206, 8, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (206, 43, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (217, 26, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (219, 8, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (219, 31, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (220, 12, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (220, 20, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (223, 28, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (225, 50, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (230, 49, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (231, 15, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (231, 28, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (231, 34, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (231, 49, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (232, 21, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (232, 28, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (234, 30, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (236, 3, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (236, 5, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (239, 8, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (241, 30, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (246, 39, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (246, 44, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (248, 26, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (248, 28, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (249, 8, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (255, 5, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (255, 20, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (259, 46, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (260, 9, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (260, 42, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (263, 34, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (263, 35, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (269, 27, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (270, 39, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (271, 14, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (271, 37, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (271, 42, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (273, 26, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (279, 7, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (280, 14, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (281, 22, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (281, 27, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (282, 5, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (283, 47, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (286, 24, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (296, 2, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (296, 41, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (298, 8, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (298, 12, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (298, 27, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (298, 36, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (298, 44, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (303, 12, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (307, 3, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (307, 34, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (307, 48, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (308, 29, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (308, 49, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (311, 43, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (313, 50, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (315, 14, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (318, 24, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (318, 31, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (319, 25, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (319, 40, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (319, 44, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (319, 45, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (321, 2, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (321, 5, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (324, 27, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (324, 28, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (325, 7, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (325, 26, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (330, 50, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (332, 46, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (334, 26, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (337, 13, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (337, 30, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (337, 39, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (338, 4, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (338, 22, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (338, 36, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (339, 7, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (341, 39, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (342, 10, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (342, 38, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (344, 18, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (345, 49, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (352, 31, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (356, 26, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (359, 29, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (361, 2, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (369, 36, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (371, 7, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (371, 48, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (374, 49, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (375, 21, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (386, 27, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (386, 38, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (392, 15, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (395, 15, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (395, 18, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (398, 4, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (403, 37, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (404, 32, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (404, 39, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (405, 1, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (407, 16, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (411, 5, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (411, 40, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (412, 35, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (413, 29, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (420, 19, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (421, 23, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (421, 28, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (425, 38, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (429, 47, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (430, 10, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (434, 14, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (435, 13, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (437, 47, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (438, 5, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (438, 45, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (438, 50, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (439, 31, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (440, 9, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (440, 29, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (440, 50, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (442, 26, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (446, 11, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (449, 26, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (450, 40, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (450, 44, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (458, 47, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (460, 8, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (463, 7, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (465, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (470, 23, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (471, 26, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (475, 34, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (476, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (482, 33, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (486, 16, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (487, 22, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (487, 42, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (488, 49, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (489, 23, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (500, 1, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (500, 27, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (502, 30, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (502, 43, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (505, 39, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (508, 18, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (511, 45, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (512, 15, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (516, 1, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (518, 38, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (524, 36, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (524, 49, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (525, 18, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (527, 10, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (529, 23, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (530, 45, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (534, 32, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (535, 36, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (536, 11, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (536, 40, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (540, 45, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (541, 12, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (542, 36, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (542, 48, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (543, 8, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (547, 9, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (547, 29, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (550, 18, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (552, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (555, 19, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (555, 26, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (558, 9, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (558, 26, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (558, 48, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (562, 17, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (567, 7, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (573, 45, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (574, 34, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (577, 42, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (578, 12, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (580, 36, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (580, 47, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (583, 38, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (588, 17, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (588, 48, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (590, 44, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (591, 10, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (591, 16, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (591, 35, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (594, 25, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (594, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (595, 4, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (606, 39, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (607, 11, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (607, 33, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (613, 28, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (617, 6, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (617, 18, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (621, 21, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (621, 39, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (625, 15, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (625, 20, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (626, 41, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (627, 6, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (629, 44, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (634, 4, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (636, 44, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (640, 12, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (640, 35, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (642, 26, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (643, 6, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (644, 9, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (644, 33, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (646, 1, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (648, 34, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (649, 48, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (650, 18, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (651, 6, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (654, 38, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (656, 3, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (663, 35, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (669, 12, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (671, 41, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (673, 33, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (673, 35, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (674, 27, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (679, 26, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (679, 33, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (680, 41, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (680, 45, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (681, 38, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (686, 28, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (687, 39, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (688, 11, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (689, 19, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (693, 30, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (697, 36, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (698, 9, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (698, 21, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (700, 22, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (701, 7, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (703, 28, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (707, 14, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (713, 18, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (720, 45, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (724, 12, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (724, 35, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (734, 41, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (739, 32, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (739, 41, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (741, 9, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (741, 11, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (743, 24, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (745, 27, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (745, 33, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (745, 49, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (746, 42, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (750, 11, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (751, 11, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (753, 5, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (753, 9, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (757, 41, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (757, 48, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (759, 28, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (760, 12, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (765, 16, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (765, 50, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (773, 47, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (775, 14, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (775, 37, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (780, 34, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (784, 38, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (787, 38, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (788, 8, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (788, 19, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (788, 27, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (788, 48, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (790, 30, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (792, 11, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (793, 4, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (798, 13, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (798, 35, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (800, 13, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (803, 1, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (803, 39, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (804, 11, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (804, 32, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (804, 46, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (806, 6, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (808, 16, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (815, 28, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (817, 7, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (817, 36, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (819, 15, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (824, 5, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (824, 18, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (825, 29, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (833, 38, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (834, 20, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (838, 3, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (838, 49, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (841, 50, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (845, 33, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (845, 39, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (856, 5, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (857, 40, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (860, 49, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (862, 3, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (864, 13, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (875, 10, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (875, 15, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (877, 13, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (879, 46, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (880, 13, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (880, 41, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (884, 18, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (886, 41, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (891, 27, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (902, 25, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (902, 41, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (904, 46, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (908, 26, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (909, 1, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (910, 47, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (913, 41, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (917, 4, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (918, 20, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (918, 33, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (920, 33, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (922, 18, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (926, 33, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (928, 2, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (928, 19, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (930, 37, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (931, 36, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (931, 41, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (932, 23, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (932, 37, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (932, 47, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (934, 15, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (934, 22, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (934, 35, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (940, 6, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (940, 42, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (944, 20, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (946, 4, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (946, 49, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (947, 11, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (949, 7, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (949, 48, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (951, 34, 1)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (952, 12, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (954, 34, 7)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (958, 23, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (959, 17, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (962, 12, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (965, 39, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (967, 23, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (971, 2, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (971, 30, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (971, 39, 6)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (973, 37, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (976, 2, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (980, 32, 8)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (980, 37, 2)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (982, 24, 4)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (982, 44, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (984, 14, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (986, 43, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (989, 41, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (993, 18, 10)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (995, 22, 5)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (996, 10, 9)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (997, 48, 3)
GO
INSERT [dbo].[PersonSkill] ([PersonID], [SkillID], [PersonSkillProficiency]) VALUES (1000, 9, 7)
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (1, 47, 3, CAST(N'2023-02-15' AS Date), CAST(N'2023-07-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (4, 34, 3, CAST(N'2022-11-16' AS Date), CAST(N'2023-05-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (5, 16, 4, CAST(N'2023-04-06' AS Date), CAST(N'2023-09-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (6, 33, 1, CAST(N'2024-10-21' AS Date), CAST(N'2025-04-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (8, 44, 2, CAST(N'2023-06-15' AS Date), CAST(N'2024-01-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (9, 19, 2, CAST(N'2023-10-14' AS Date), CAST(N'2024-02-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (15, 13, 4, CAST(N'2022-10-15' AS Date), CAST(N'2023-01-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (15, 45, 1, CAST(N'2024-10-07' AS Date), CAST(N'2025-08-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (16, 6, 1, CAST(N'2024-08-23' AS Date), CAST(N'2025-08-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (24, 45, 3, CAST(N'2022-10-08' AS Date), CAST(N'2023-02-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (28, 39, 1, CAST(N'2023-12-17' AS Date), CAST(N'2024-05-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (29, 1, 2, CAST(N'2023-10-26' AS Date), CAST(N'2024-11-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (29, 23, 1, CAST(N'2023-12-12' AS Date), CAST(N'2024-07-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (31, 36, 4, CAST(N'2023-09-18' AS Date), CAST(N'2023-10-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (32, 21, 4, CAST(N'2023-02-27' AS Date), CAST(N'2023-07-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (35, 8, 4, CAST(N'2022-03-30' AS Date), CAST(N'2022-12-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (35, 15, 1, CAST(N'2023-12-31' AS Date), CAST(N'2024-11-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (36, 33, 2, CAST(N'2023-06-05' AS Date), CAST(N'2024-05-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (37, 9, 2, CAST(N'2023-08-11' AS Date), CAST(N'2024-03-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (38, 2, 1, CAST(N'2023-12-14' AS Date), CAST(N'2023-12-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (39, 7, 3, CAST(N'2022-09-03' AS Date), CAST(N'2023-05-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (40, 23, 3, CAST(N'2022-05-16' AS Date), CAST(N'2023-04-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (43, 30, 4, CAST(N'2022-08-27' AS Date), CAST(N'2023-07-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (46, 8, 3, CAST(N'2022-08-29' AS Date), CAST(N'2022-12-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (46, 10, 1, CAST(N'2024-03-17' AS Date), CAST(N'2024-11-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (51, 33, 3, CAST(N'2022-12-31' AS Date), CAST(N'2023-06-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (52, 3, 4, CAST(N'2023-07-28' AS Date), CAST(N'2023-08-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (53, 16, 3, CAST(N'2022-08-11' AS Date), CAST(N'2023-06-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (59, 37, 2, CAST(N'2023-10-07' AS Date), CAST(N'2024-08-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (59, 47, 1, CAST(N'2024-08-13' AS Date), CAST(N'2024-10-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (61, 5, 1, CAST(N'2023-12-26' AS Date), CAST(N'2024-12-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (63, 45, 1, CAST(N'2024-04-19' AS Date), CAST(N'2025-01-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (67, 1, 3, CAST(N'2022-02-16' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (70, 30, 3, CAST(N'2022-01-31' AS Date), CAST(N'2023-01-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (72, 25, 2, CAST(N'2023-11-02' AS Date), CAST(N'2024-06-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (73, 4, 4, CAST(N'2023-04-15' AS Date), CAST(N'2023-06-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (80, 27, 2, CAST(N'2023-09-08' AS Date), CAST(N'2024-10-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (80, 42, 3, CAST(N'2022-02-25' AS Date), CAST(N'2022-12-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (82, 18, 2, CAST(N'2023-02-10' AS Date), CAST(N'2024-04-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (92, 41, 3, CAST(N'2022-03-17' AS Date), CAST(N'2023-02-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (93, 22, 3, CAST(N'2022-09-23' AS Date), CAST(N'2023-09-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (95, 41, 3, CAST(N'2022-10-23' AS Date), CAST(N'2023-08-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (95, 42, 4, CAST(N'2023-05-20' AS Date), CAST(N'2023-07-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (97, 44, 2, CAST(N'2023-06-10' AS Date), CAST(N'2024-06-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (105, 44, 3, CAST(N'2022-10-01' AS Date), CAST(N'2023-02-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (106, 10, 3, CAST(N'2022-04-15' AS Date), CAST(N'2023-02-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (111, 29, 4, CAST(N'2023-01-02' AS Date), CAST(N'2023-07-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (116, 34, 1, CAST(N'2024-01-17' AS Date), CAST(N'2024-07-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (118, 2, 1, CAST(N'2024-11-09' AS Date), CAST(N'2025-10-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (119, 5, 1, CAST(N'2024-06-21' AS Date), CAST(N'2024-11-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (120, 9, 1, CAST(N'2024-02-09' AS Date), CAST(N'2024-03-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (121, 2, 4, CAST(N'2022-06-06' AS Date), CAST(N'2023-04-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (121, 17, 4, CAST(N'2023-02-20' AS Date), CAST(N'2023-06-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (122, 13, 3, CAST(N'2022-09-27' AS Date), CAST(N'2023-01-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (122, 38, 2, CAST(N'2023-06-29' AS Date), CAST(N'2024-03-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (124, 29, 1, CAST(N'2023-12-30' AS Date), CAST(N'2024-12-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (132, 18, 4, CAST(N'2022-02-14' AS Date), CAST(N'2023-02-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (133, 16, 2, CAST(N'2023-03-25' AS Date), CAST(N'2024-08-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (142, 29, 3, CAST(N'2022-12-03' AS Date), CAST(N'2023-07-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (143, 34, 4, CAST(N'2022-04-12' AS Date), CAST(N'2023-04-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (145, 46, 1, CAST(N'2024-04-10' AS Date), CAST(N'2024-08-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (148, 25, 1, CAST(N'2024-09-10' AS Date), CAST(N'2024-12-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (152, 35, 1, CAST(N'2024-08-14' AS Date), CAST(N'2024-11-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (154, 35, 2, CAST(N'2023-05-05' AS Date), CAST(N'2024-02-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (154, 40, 2, CAST(N'2023-05-08' AS Date), CAST(N'2024-09-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (155, 18, 3, CAST(N'2023-03-16' AS Date), CAST(N'2023-09-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (156, 9, 4, CAST(N'2022-01-29' AS Date), CAST(N'2022-11-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (159, 4, 4, CAST(N'2023-01-07' AS Date), CAST(N'2023-09-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (159, 27, 4, CAST(N'2022-12-08' AS Date), CAST(N'2023-11-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (160, 1, 2, CAST(N'2023-04-27' AS Date), CAST(N'2024-07-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (161, 1, 4, CAST(N'2023-03-07' AS Date), CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (161, 33, 3, CAST(N'2023-05-26' AS Date), CAST(N'2023-11-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (167, 6, 2, CAST(N'2022-12-07' AS Date), CAST(N'2024-03-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (169, 2, 2, CAST(N'2023-07-31' AS Date), CAST(N'2024-02-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (169, 21, 3, CAST(N'2023-09-08' AS Date), CAST(N'2023-11-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (170, 39, 4, CAST(N'2022-10-17' AS Date), CAST(N'2023-08-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (170, 41, 4, CAST(N'2022-07-20' AS Date), CAST(N'2023-03-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (172, 40, 1, CAST(N'2024-08-24' AS Date), CAST(N'2025-07-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (175, 22, 2, CAST(N'2023-08-21' AS Date), CAST(N'2024-06-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (175, 44, 2, CAST(N'2023-08-16' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (177, 11, 1, CAST(N'2024-02-05' AS Date), CAST(N'2024-05-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (178, 13, 2, CAST(N'2023-11-08' AS Date), CAST(N'2024-04-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (179, 45, 2, CAST(N'2023-02-23' AS Date), CAST(N'2023-12-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (180, 38, 4, CAST(N'2022-06-17' AS Date), CAST(N'2022-12-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (183, 10, 2, CAST(N'2023-10-23' AS Date), CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (183, 27, 1, CAST(N'2024-04-18' AS Date), CAST(N'2024-10-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (186, 18, 2, CAST(N'2023-07-27' AS Date), CAST(N'2024-06-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (188, 2, 3, CAST(N'2022-11-28' AS Date), CAST(N'2023-09-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (189, 43, 3, CAST(N'2022-12-04' AS Date), CAST(N'2023-08-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (190, 41, 2, CAST(N'2023-09-19' AS Date), CAST(N'2024-11-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (192, 43, 2, CAST(N'2023-04-13' AS Date), CAST(N'2024-11-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (194, 33, 2, CAST(N'2023-03-03' AS Date), CAST(N'2024-01-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (194, 45, 2, CAST(N'2023-09-14' AS Date), CAST(N'2023-12-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (196, 27, 4, CAST(N'2022-11-22' AS Date), CAST(N'2023-10-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (202, 2, 3, CAST(N'2022-10-13' AS Date), CAST(N'2023-08-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (204, 42, 1, CAST(N'2024-04-14' AS Date), CAST(N'2025-04-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (207, 3, 1, CAST(N'2024-11-12' AS Date), CAST(N'2025-08-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (207, 30, 3, CAST(N'2023-01-23' AS Date), CAST(N'2023-08-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (210, 16, 2, CAST(N'2023-07-26' AS Date), CAST(N'2024-07-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (210, 28, 1, CAST(N'2024-03-13' AS Date), CAST(N'2025-03-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (211, 34, 2, CAST(N'2023-09-07' AS Date), CAST(N'2023-12-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (213, 36, 2, CAST(N'2023-11-15' AS Date), CAST(N'2024-11-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (214, 23, 1, CAST(N'2024-11-09' AS Date), CAST(N'2025-09-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (215, 10, 3, CAST(N'2023-01-09' AS Date), CAST(N'2023-03-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (216, 37, 2, CAST(N'2023-05-20' AS Date), CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (218, 35, 2, CAST(N'2023-07-08' AS Date), CAST(N'2024-07-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (218, 45, 2, CAST(N'2023-10-29' AS Date), CAST(N'2024-07-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (220, 11, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-12-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (221, 32, 4, CAST(N'2023-06-12' AS Date), CAST(N'2023-09-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (222, 10, 4, CAST(N'2022-11-10' AS Date), CAST(N'2023-03-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (224, 13, 1, CAST(N'2024-04-02' AS Date), CAST(N'2024-08-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (224, 21, 3, CAST(N'2023-05-23' AS Date), CAST(N'2023-05-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (226, 23, 1, CAST(N'2024-07-29' AS Date), CAST(N'2024-09-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (227, 7, 4, CAST(N'2022-07-23' AS Date), CAST(N'2022-12-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (227, 11, 4, CAST(N'2023-07-11' AS Date), CAST(N'2023-11-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (228, 43, 1, CAST(N'2024-06-18' AS Date), CAST(N'2024-12-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (229, 42, 2, CAST(N'2023-07-21' AS Date), CAST(N'2024-09-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (232, 43, 1, CAST(N'2023-11-29' AS Date), CAST(N'2024-05-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (234, 43, 3, CAST(N'2022-09-16' AS Date), CAST(N'2023-08-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (241, 29, 4, CAST(N'2022-10-05' AS Date), CAST(N'2023-08-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (246, 10, 3, CAST(N'2023-10-11' AS Date), CAST(N'2023-11-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (247, 2, 1, CAST(N'2024-05-19' AS Date), CAST(N'2025-04-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (253, 8, 4, CAST(N'2022-11-21' AS Date), CAST(N'2023-08-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (254, 12, 4, CAST(N'2023-01-17' AS Date), CAST(N'2023-08-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (260, 6, 1, CAST(N'2024-09-03' AS Date), CAST(N'2024-11-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (260, 37, 4, CAST(N'2022-08-18' AS Date), CAST(N'2023-08-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (266, 6, 2, CAST(N'2023-04-05' AS Date), CAST(N'2024-04-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (267, 7, 2, CAST(N'2023-02-04' AS Date), CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (268, 31, 1, CAST(N'2024-03-30' AS Date), CAST(N'2024-11-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (269, 27, 4, CAST(N'2022-06-29' AS Date), CAST(N'2023-03-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (271, 19, 1, CAST(N'2024-02-24' AS Date), CAST(N'2024-09-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (273, 14, 4, CAST(N'2022-04-04' AS Date), CAST(N'2023-01-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (273, 38, 1, CAST(N'2024-04-17' AS Date), CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (273, 45, 3, CAST(N'2022-10-22' AS Date), CAST(N'2023-08-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (276, 33, 2, CAST(N'2023-03-20' AS Date), CAST(N'2023-12-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (278, 34, 2, CAST(N'2023-06-26' AS Date), CAST(N'2024-06-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (279, 40, 1, CAST(N'2024-10-09' AS Date), CAST(N'2025-07-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (280, 23, 1, CAST(N'2024-03-30' AS Date), CAST(N'2024-08-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (285, 44, 2, CAST(N'2023-02-18' AS Date), CAST(N'2024-06-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (288, 38, 4, CAST(N'2023-04-20' AS Date), CAST(N'2023-10-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (293, 39, 4, CAST(N'2023-05-04' AS Date), CAST(N'2023-11-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (294, 21, 1, CAST(N'2024-07-07' AS Date), CAST(N'2025-06-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (294, 44, 4, CAST(N'2022-08-24' AS Date), CAST(N'2023-01-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (298, 18, 4, CAST(N'2023-04-06' AS Date), CAST(N'2023-06-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (299, 36, 3, CAST(N'2023-05-31' AS Date), CAST(N'2023-10-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (301, 8, 1, CAST(N'2024-05-08' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (305, 47, 2, CAST(N'2023-01-05' AS Date), CAST(N'2024-04-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (306, 6, 4, CAST(N'2023-01-20' AS Date), CAST(N'2023-05-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (306, 8, 4, CAST(N'2023-04-30' AS Date), CAST(N'2023-08-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (307, 9, 4, CAST(N'2022-06-23' AS Date), CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (310, 43, 2, CAST(N'2023-10-05' AS Date), CAST(N'2024-09-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (311, 29, 1, CAST(N'2024-04-06' AS Date), CAST(N'2024-09-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (311, 45, 2, CAST(N'2023-03-14' AS Date), CAST(N'2024-09-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (312, 30, 3, CAST(N'2022-11-11' AS Date), CAST(N'2023-01-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (317, 41, 4, CAST(N'2022-11-15' AS Date), CAST(N'2023-11-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (320, 38, 2, CAST(N'2023-02-24' AS Date), CAST(N'2024-04-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (320, 46, 3, CAST(N'2022-12-17' AS Date), CAST(N'2023-03-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (321, 40, 1, CAST(N'2024-06-08' AS Date), CAST(N'2024-11-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (325, 13, 1, CAST(N'2023-12-09' AS Date), CAST(N'2024-04-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (327, 12, 2, CAST(N'2022-12-16' AS Date), CAST(N'2024-08-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (330, 18, 2, CAST(N'2023-10-29' AS Date), CAST(N'2024-11-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (330, 44, 1, CAST(N'2024-08-26' AS Date), CAST(N'2025-02-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (331, 40, 1, CAST(N'2023-11-30' AS Date), CAST(N'2024-03-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (335, 23, 2, CAST(N'2023-01-02' AS Date), CAST(N'2024-09-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (337, 22, 1, CAST(N'2024-09-16' AS Date), CAST(N'2024-12-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (337, 27, 2, CAST(N'2022-11-28' AS Date), CAST(N'2024-07-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (338, 4, 4, CAST(N'2022-12-03' AS Date), CAST(N'2023-07-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (338, 44, 4, CAST(N'2023-05-12' AS Date), CAST(N'2023-09-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (339, 26, 2, CAST(N'2023-06-21' AS Date), CAST(N'2024-05-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (340, 26, 3, CAST(N'2022-01-30' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (343, 29, 4, CAST(N'2022-12-27' AS Date), CAST(N'2023-08-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (344, 14, 2, CAST(N'2023-05-08' AS Date), CAST(N'2024-07-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (345, 13, 1, CAST(N'2024-03-27' AS Date), CAST(N'2024-05-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (347, 10, 3, CAST(N'2022-07-27' AS Date), CAST(N'2023-07-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (347, 26, 1, CAST(N'2024-10-30' AS Date), CAST(N'2025-08-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (348, 20, 4, CAST(N'2023-01-17' AS Date), CAST(N'2023-08-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (348, 26, 3, CAST(N'2022-07-31' AS Date), CAST(N'2023-07-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (350, 10, 4, CAST(N'2023-08-22' AS Date), CAST(N'2023-09-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (350, 45, 3, CAST(N'2022-04-06' AS Date), CAST(N'2023-03-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (351, 15, 1, CAST(N'2024-06-27' AS Date), CAST(N'2024-10-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (365, 19, 3, CAST(N'2023-03-13' AS Date), CAST(N'2023-03-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (368, 9, 3, CAST(N'2023-04-09' AS Date), CAST(N'2023-06-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (369, 1, 3, CAST(N'2022-07-30' AS Date), CAST(N'2023-02-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (369, 41, 4, CAST(N'2023-06-14' AS Date), CAST(N'2023-10-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (371, 15, 2, CAST(N'2023-06-25' AS Date), CAST(N'2024-02-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (371, 30, 4, CAST(N'2023-08-14' AS Date), CAST(N'2023-08-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (377, 22, 4, CAST(N'2023-07-29' AS Date), CAST(N'2023-11-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (387, 23, 4, CAST(N'2023-08-06' AS Date), CAST(N'2023-10-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (390, 4, 1, CAST(N'2024-04-30' AS Date), CAST(N'2024-11-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (391, 4, 4, CAST(N'2022-07-09' AS Date), CAST(N'2023-04-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (391, 27, 3, CAST(N'2023-02-24' AS Date), CAST(N'2023-05-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (393, 20, 1, CAST(N'2024-11-23' AS Date), CAST(N'2025-06-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (395, 1, 4, CAST(N'2023-10-13' AS Date), CAST(N'2023-11-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (395, 41, 1, CAST(N'2024-10-30' AS Date), CAST(N'2025-09-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (397, 13, 1, CAST(N'2024-05-26' AS Date), CAST(N'2024-12-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (400, 19, 3, CAST(N'2023-01-13' AS Date), CAST(N'2023-03-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (400, 27, 3, CAST(N'2022-10-30' AS Date), CAST(N'2023-09-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (401, 39, 3, CAST(N'2022-03-11' AS Date), CAST(N'2023-01-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (402, 24, 4, CAST(N'2023-04-09' AS Date), CAST(N'2023-06-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (405, 8, 2, CAST(N'2022-12-30' AS Date), CAST(N'2024-04-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (417, 22, 3, CAST(N'2022-05-06' AS Date), CAST(N'2023-01-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (423, 9, 3, CAST(N'2023-02-17' AS Date), CAST(N'2023-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (423, 10, 4, CAST(N'2022-11-06' AS Date), CAST(N'2023-03-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (423, 25, 2, CAST(N'2023-04-25' AS Date), CAST(N'2024-09-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (425, 44, 2, CAST(N'2023-06-09' AS Date), CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (426, 9, 1, CAST(N'2024-10-02' AS Date), CAST(N'2025-01-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (426, 24, 3, CAST(N'2022-12-31' AS Date), CAST(N'2023-06-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (427, 2, 1, CAST(N'2024-08-11' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (432, 26, 2, CAST(N'2023-04-23' AS Date), CAST(N'2024-11-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (434, 19, 1, CAST(N'2024-05-28' AS Date), CAST(N'2025-02-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (436, 37, 3, CAST(N'2022-11-06' AS Date), CAST(N'2023-03-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (438, 47, 2, CAST(N'2023-01-16' AS Date), CAST(N'2024-03-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (439, 3, 1, CAST(N'2023-12-27' AS Date), CAST(N'2024-03-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (441, 15, 3, CAST(N'2022-09-05' AS Date), CAST(N'2023-01-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (442, 25, 3, CAST(N'2022-12-24' AS Date), CAST(N'2023-04-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (449, 26, 3, CAST(N'2023-04-17' AS Date), CAST(N'2023-09-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (451, 27, 2, CAST(N'2023-08-15' AS Date), CAST(N'2024-10-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (451, 32, 3, CAST(N'2023-03-25' AS Date), CAST(N'2023-07-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (452, 26, 4, CAST(N'2023-01-11' AS Date), CAST(N'2023-08-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (453, 30, 4, CAST(N'2022-09-01' AS Date), CAST(N'2022-12-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (453, 31, 4, CAST(N'2023-08-24' AS Date), CAST(N'2023-10-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (455, 38, 2, CAST(N'2023-02-12' AS Date), CAST(N'2023-12-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (456, 27, 4, CAST(N'2022-08-27' AS Date), CAST(N'2023-08-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (457, 28, 3, CAST(N'2022-11-30' AS Date), CAST(N'2022-12-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (463, 30, 4, CAST(N'2022-08-11' AS Date), CAST(N'2023-01-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (464, 22, 1, CAST(N'2024-01-02' AS Date), CAST(N'2024-08-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (464, 25, 2, CAST(N'2023-09-19' AS Date), CAST(N'2024-05-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (465, 30, 2, CAST(N'2023-05-01' AS Date), CAST(N'2024-06-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (466, 27, 4, CAST(N'2023-02-23' AS Date), CAST(N'2023-07-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (467, 20, 4, CAST(N'2023-02-08' AS Date), CAST(N'2023-10-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (468, 44, 3, CAST(N'2022-06-12' AS Date), CAST(N'2023-02-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (469, 6, 2, CAST(N'2023-09-26' AS Date), CAST(N'2024-11-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (474, 24, 4, CAST(N'2022-10-07' AS Date), CAST(N'2023-03-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (477, 4, 1, CAST(N'2024-01-20' AS Date), CAST(N'2024-04-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (482, 16, 4, CAST(N'2023-11-02' AS Date), CAST(N'2023-11-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (484, 45, 4, CAST(N'2023-06-29' AS Date), CAST(N'2023-07-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (490, 26, 2, CAST(N'2023-03-10' AS Date), CAST(N'2024-03-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (492, 13, 2, CAST(N'2023-11-19' AS Date), CAST(N'2024-02-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (493, 45, 3, CAST(N'2022-09-20' AS Date), CAST(N'2023-01-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (496, 43, 3, CAST(N'2023-01-20' AS Date), CAST(N'2023-06-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (497, 6, 2, CAST(N'2023-04-30' AS Date), CAST(N'2024-03-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (500, 35, 2, CAST(N'2023-03-13' AS Date), CAST(N'2024-11-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (501, 26, 4, CAST(N'2022-10-27' AS Date), CAST(N'2023-04-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (505, 17, 2, CAST(N'2023-11-22' AS Date), CAST(N'2024-02-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (506, 6, 3, CAST(N'2022-03-30' AS Date), CAST(N'2023-02-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (510, 5, 3, CAST(N'2023-03-24' AS Date), CAST(N'2023-09-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (513, 34, 1, CAST(N'2024-01-22' AS Date), CAST(N'2024-06-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (513, 45, 1, CAST(N'2024-07-14' AS Date), CAST(N'2024-11-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (514, 38, 2, CAST(N'2023-07-30' AS Date), CAST(N'2024-03-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (515, 37, 1, CAST(N'2024-06-18' AS Date), CAST(N'2025-01-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (517, 19, 2, CAST(N'2023-07-02' AS Date), CAST(N'2024-08-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (521, 27, 4, CAST(N'2022-10-05' AS Date), CAST(N'2023-05-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (527, 4, 1, CAST(N'2024-06-06' AS Date), CAST(N'2024-11-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (527, 32, 4, CAST(N'2022-06-10' AS Date), CAST(N'2023-02-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (531, 15, 2, CAST(N'2023-01-16' AS Date), CAST(N'2024-10-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (531, 32, 2, CAST(N'2023-02-09' AS Date), CAST(N'2024-03-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (535, 2, 3, CAST(N'2022-08-29' AS Date), CAST(N'2023-04-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (538, 9, 2, CAST(N'2023-11-02' AS Date), CAST(N'2024-11-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (539, 8, 4, CAST(N'2022-07-11' AS Date), CAST(N'2023-03-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (540, 41, 3, CAST(N'2023-03-03' AS Date), CAST(N'2023-03-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (543, 13, 4, CAST(N'2022-11-25' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (554, 47, 4, CAST(N'2022-08-10' AS Date), CAST(N'2023-05-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (557, 39, 4, CAST(N'2023-03-04' AS Date), CAST(N'2023-05-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (559, 44, 2, CAST(N'2023-05-10' AS Date), CAST(N'2023-12-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (560, 14, 4, CAST(N'2022-07-16' AS Date), CAST(N'2023-03-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (562, 37, 3, CAST(N'2023-01-18' AS Date), CAST(N'2023-07-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (564, 6, 4, CAST(N'2022-01-08' AS Date), CAST(N'2022-12-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (565, 8, 3, CAST(N'2022-07-07' AS Date), CAST(N'2023-04-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (567, 26, 1, CAST(N'2024-07-12' AS Date), CAST(N'2025-04-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (568, 24, 4, CAST(N'2022-10-26' AS Date), CAST(N'2023-05-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (569, 8, 3, CAST(N'2023-04-07' AS Date), CAST(N'2023-04-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (569, 39, 3, CAST(N'2023-04-05' AS Date), CAST(N'2023-09-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (572, 22, 3, CAST(N'2023-01-12' AS Date), CAST(N'2023-07-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (581, 34, 1, CAST(N'2024-10-20' AS Date), CAST(N'2025-05-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (581, 39, 4, CAST(N'2022-10-11' AS Date), CAST(N'2023-10-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (591, 7, 4, CAST(N'2022-02-12' AS Date), CAST(N'2022-12-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (592, 9, 1, CAST(N'2024-01-10' AS Date), CAST(N'2024-03-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (596, 1, 1, CAST(N'2023-11-27' AS Date), CAST(N'2024-06-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (596, 26, 3, CAST(N'2023-03-28' AS Date), CAST(N'2023-11-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (599, 7, 2, CAST(N'2022-12-24' AS Date), CAST(N'2024-08-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (599, 20, 3, CAST(N'2022-12-30' AS Date), CAST(N'2023-09-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (603, 30, 2, CAST(N'2022-12-06' AS Date), CAST(N'2024-02-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (604, 1, 1, CAST(N'2024-05-01' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (605, 12, 4, CAST(N'2022-12-30' AS Date), CAST(N'2023-02-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (606, 18, 1, CAST(N'2024-01-14' AS Date), CAST(N'2024-02-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (609, 29, 1, CAST(N'2023-12-12' AS Date), CAST(N'2024-11-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (618, 44, 4, CAST(N'2023-02-14' AS Date), CAST(N'2023-10-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (620, 22, 4, CAST(N'2022-03-05' AS Date), CAST(N'2023-02-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (622, 2, 4, CAST(N'2022-05-18' AS Date), CAST(N'2023-05-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (625, 13, 3, CAST(N'2022-12-02' AS Date), CAST(N'2023-10-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (626, 29, 1, CAST(N'2024-07-03' AS Date), CAST(N'2024-10-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (627, 1, 2, CAST(N'2023-06-24' AS Date), CAST(N'2024-04-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (629, 23, 4, CAST(N'2023-02-16' AS Date), CAST(N'2023-04-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (629, 43, 1, CAST(N'2024-06-06' AS Date), CAST(N'2025-04-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (630, 13, 2, CAST(N'2023-05-18' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (631, 27, 1, CAST(N'2024-01-26' AS Date), CAST(N'2024-09-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (631, 28, 3, CAST(N'2022-04-29' AS Date), CAST(N'2023-04-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (634, 16, 2, CAST(N'2023-03-16' AS Date), CAST(N'2024-05-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (634, 29, 2, CAST(N'2023-09-13' AS Date), CAST(N'2024-07-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (635, 19, 3, CAST(N'2023-05-29' AS Date), CAST(N'2023-08-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (636, 6, 1, CAST(N'2024-03-26' AS Date), CAST(N'2025-03-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (636, 25, 1, CAST(N'2023-11-27' AS Date), CAST(N'2024-07-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (637, 21, 1, CAST(N'2024-01-10' AS Date), CAST(N'2024-03-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (638, 43, 4, CAST(N'2022-09-26' AS Date), CAST(N'2022-12-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (639, 18, 1, CAST(N'2024-11-01' AS Date), CAST(N'2025-03-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (639, 22, 1, CAST(N'2024-10-08' AS Date), CAST(N'2025-05-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (640, 15, 1, CAST(N'2024-08-08' AS Date), CAST(N'2024-10-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (648, 42, 1, CAST(N'2023-12-26' AS Date), CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (651, 34, 4, CAST(N'2022-06-25' AS Date), CAST(N'2023-03-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (653, 47, 4, CAST(N'2023-01-14' AS Date), CAST(N'2023-09-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (656, 26, 1, CAST(N'2024-01-17' AS Date), CAST(N'2024-05-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (657, 33, 4, CAST(N'2022-08-28' AS Date), CAST(N'2023-05-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (658, 20, 4, CAST(N'2022-02-06' AS Date), CAST(N'2022-12-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (658, 31, 4, CAST(N'2022-08-02' AS Date), CAST(N'2023-01-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (659, 32, 2, CAST(N'2022-12-16' AS Date), CAST(N'2024-11-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (662, 6, 1, CAST(N'2024-04-11' AS Date), CAST(N'2024-04-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (665, 16, 1, CAST(N'2024-10-23' AS Date), CAST(N'2025-05-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (666, 23, 4, CAST(N'2022-09-27' AS Date), CAST(N'2023-06-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (668, 27, 1, CAST(N'2024-03-06' AS Date), CAST(N'2024-09-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (670, 20, 4, CAST(N'2022-09-02' AS Date), CAST(N'2023-04-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (672, 32, 1, CAST(N'2024-01-12' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (675, 33, 3, CAST(N'2022-12-04' AS Date), CAST(N'2023-01-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (677, 24, 1, CAST(N'2024-01-30' AS Date), CAST(N'2024-05-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (678, 33, 1, CAST(N'2024-11-17' AS Date), CAST(N'2025-05-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (679, 36, 2, CAST(N'2023-06-11' AS Date), CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (680, 13, 2, CAST(N'2023-02-24' AS Date), CAST(N'2024-09-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (681, 2, 4, CAST(N'2022-06-13' AS Date), CAST(N'2023-03-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (683, 33, 3, CAST(N'2022-11-09' AS Date), CAST(N'2023-11-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (688, 41, 3, CAST(N'2022-02-06' AS Date), CAST(N'2023-01-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (691, 11, 1, CAST(N'2024-05-01' AS Date), CAST(N'2024-12-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (692, 23, 3, CAST(N'2023-03-21' AS Date), CAST(N'2023-11-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (692, 28, 3, CAST(N'2022-06-15' AS Date), CAST(N'2023-04-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (705, 31, 4, CAST(N'2023-02-10' AS Date), CAST(N'2023-09-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (706, 42, 3, CAST(N'2022-09-30' AS Date), CAST(N'2023-04-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (707, 6, 2, CAST(N'2023-09-25' AS Date), CAST(N'2024-02-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (710, 27, 2, CAST(N'2022-12-18' AS Date), CAST(N'2024-01-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (710, 46, 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-08-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (711, 10, 1, CAST(N'2023-12-14' AS Date), CAST(N'2024-05-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (713, 16, 4, CAST(N'2022-11-09' AS Date), CAST(N'2022-12-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (713, 30, 2, CAST(N'2023-05-08' AS Date), CAST(N'2024-03-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (713, 35, 2, CAST(N'2023-05-09' AS Date), CAST(N'2024-11-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (716, 18, 3, CAST(N'2022-05-18' AS Date), CAST(N'2023-03-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (719, 6, 4, CAST(N'2023-06-06' AS Date), CAST(N'2023-07-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (719, 37, 1, CAST(N'2024-07-18' AS Date), CAST(N'2024-12-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (721, 37, 1, CAST(N'2024-10-30' AS Date), CAST(N'2025-08-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (723, 15, 1, CAST(N'2024-09-29' AS Date), CAST(N'2025-06-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (723, 31, 4, CAST(N'2023-02-08' AS Date), CAST(N'2023-09-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (723, 43, 1, CAST(N'2024-09-12' AS Date), CAST(N'2025-03-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (724, 22, 3, CAST(N'2022-08-10' AS Date), CAST(N'2022-12-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (724, 47, 3, CAST(N'2023-07-21' AS Date), CAST(N'2023-09-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (728, 39, 2, CAST(N'2023-11-13' AS Date), CAST(N'2024-09-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (729, 20, 3, CAST(N'2022-06-19' AS Date), CAST(N'2023-01-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (730, 31, 4, CAST(N'2022-09-23' AS Date), CAST(N'2023-01-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (730, 44, 4, CAST(N'2022-11-21' AS Date), CAST(N'2023-02-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (731, 32, 1, CAST(N'2024-07-04' AS Date), CAST(N'2025-05-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (732, 21, 2, CAST(N'2023-06-11' AS Date), CAST(N'2024-07-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (737, 16, 3, CAST(N'2022-07-01' AS Date), CAST(N'2022-12-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (738, 4, 1, CAST(N'2024-05-23' AS Date), CAST(N'2025-05-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (739, 11, 3, CAST(N'2022-07-11' AS Date), CAST(N'2023-04-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (740, 42, 4, CAST(N'2022-10-06' AS Date), CAST(N'2023-05-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (746, 32, 1, CAST(N'2024-02-02' AS Date), CAST(N'2024-06-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (748, 18, 3, CAST(N'2023-04-13' AS Date), CAST(N'2023-11-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (750, 17, 1, CAST(N'2024-05-22' AS Date), CAST(N'2025-03-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (752, 25, 2, CAST(N'2023-08-06' AS Date), CAST(N'2024-10-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (754, 7, 1, CAST(N'2024-02-29' AS Date), CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (754, 28, 3, CAST(N'2022-12-30' AS Date), CAST(N'2023-08-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (757, 14, 4, CAST(N'2023-04-07' AS Date), CAST(N'2023-04-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (757, 27, 2, CAST(N'2023-01-12' AS Date), CAST(N'2024-05-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (760, 7, 1, CAST(N'2024-08-06' AS Date), CAST(N'2025-03-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (763, 21, 1, CAST(N'2024-11-17' AS Date), CAST(N'2025-08-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (764, 17, 3, CAST(N'2022-10-11' AS Date), CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (770, 17, 4, CAST(N'2023-10-08' AS Date), CAST(N'2023-11-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (771, 32, 4, CAST(N'2023-03-26' AS Date), CAST(N'2023-04-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (776, 5, 2, CAST(N'2023-07-27' AS Date), CAST(N'2024-07-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (777, 5, 2, CAST(N'2023-07-11' AS Date), CAST(N'2023-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (777, 11, 2, CAST(N'2023-11-22' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (780, 44, 2, CAST(N'2023-03-21' AS Date), CAST(N'2023-12-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (781, 6, 1, CAST(N'2023-12-08' AS Date), CAST(N'2024-02-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (781, 32, 2, CAST(N'2023-04-29' AS Date), CAST(N'2024-09-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (782, 42, 2, CAST(N'2023-07-11' AS Date), CAST(N'2024-09-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (788, 4, 1, CAST(N'2024-08-06' AS Date), CAST(N'2025-05-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (789, 3, 4, CAST(N'2023-03-08' AS Date), CAST(N'2023-06-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (791, 42, 1, CAST(N'2024-08-07' AS Date), CAST(N'2025-01-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (791, 43, 4, CAST(N'2022-12-23' AS Date), CAST(N'2023-07-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (794, 27, 4, CAST(N'2022-05-08' AS Date), CAST(N'2023-01-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (796, 6, 3, CAST(N'2023-06-11' AS Date), CAST(N'2023-08-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (798, 8, 3, CAST(N'2022-06-27' AS Date), CAST(N'2022-12-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (803, 9, 4, CAST(N'2023-09-14' AS Date), CAST(N'2023-10-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (805, 19, 1, CAST(N'2024-02-01' AS Date), CAST(N'2024-04-12' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (805, 37, 2, CAST(N'2023-04-04' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (808, 22, 1, CAST(N'2024-04-11' AS Date), CAST(N'2024-11-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (810, 7, 2, CAST(N'2023-03-15' AS Date), CAST(N'2024-03-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (811, 42, 3, CAST(N'2023-03-05' AS Date), CAST(N'2023-09-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (814, 24, 2, CAST(N'2023-09-03' AS Date), CAST(N'2024-11-13' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (815, 41, 1, CAST(N'2024-06-30' AS Date), CAST(N'2024-11-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (830, 45, 1, CAST(N'2024-11-09' AS Date), CAST(N'2025-01-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (836, 45, 2, CAST(N'2023-09-04' AS Date), CAST(N'2024-10-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (837, 30, 1, CAST(N'2024-04-18' AS Date), CAST(N'2024-07-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (839, 14, 3, CAST(N'2022-11-06' AS Date), CAST(N'2022-12-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (841, 9, 2, CAST(N'2023-03-12' AS Date), CAST(N'2024-07-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (841, 29, 4, CAST(N'2023-01-08' AS Date), CAST(N'2023-10-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (843, 21, 1, CAST(N'2023-12-24' AS Date), CAST(N'2024-03-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (844, 9, 1, CAST(N'2023-12-18' AS Date), CAST(N'2024-12-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (844, 17, 1, CAST(N'2024-01-17' AS Date), CAST(N'2024-04-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (844, 38, 4, CAST(N'2021-12-26' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (844, 43, 2, CAST(N'2023-06-04' AS Date), CAST(N'2024-06-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (847, 41, 3, CAST(N'2022-04-21' AS Date), CAST(N'2023-01-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (848, 15, 3, CAST(N'2022-12-15' AS Date), CAST(N'2023-03-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (849, 38, 1, CAST(N'2024-02-08' AS Date), CAST(N'2024-08-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (853, 5, 4, CAST(N'2022-10-09' AS Date), CAST(N'2023-05-09' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (853, 10, 2, CAST(N'2023-03-02' AS Date), CAST(N'2024-09-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (860, 36, 2, CAST(N'2023-07-08' AS Date), CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (861, 27, 2, CAST(N'2023-05-22' AS Date), CAST(N'2024-04-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (863, 4, 4, CAST(N'2023-02-20' AS Date), CAST(N'2023-04-07' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (864, 24, 1, CAST(N'2024-10-17' AS Date), CAST(N'2025-05-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (866, 29, 4, CAST(N'2022-11-29' AS Date), CAST(N'2023-02-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (867, 7, 3, CAST(N'2023-04-08' AS Date), CAST(N'2023-08-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (869, 10, 4, CAST(N'2022-02-18' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (873, 20, 3, CAST(N'2022-04-15' AS Date), CAST(N'2023-04-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (877, 32, 1, CAST(N'2024-08-16' AS Date), CAST(N'2025-06-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (879, 32, 4, CAST(N'2022-02-16' AS Date), CAST(N'2022-12-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (880, 4, 2, CAST(N'2023-10-31' AS Date), CAST(N'2023-12-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (880, 36, 2, CAST(N'2023-04-29' AS Date), CAST(N'2024-02-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (881, 29, 4, CAST(N'2023-03-14' AS Date), CAST(N'2023-10-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (881, 44, 3, CAST(N'2022-01-20' AS Date), CAST(N'2022-12-05' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (882, 42, 4, CAST(N'2022-10-14' AS Date), CAST(N'2023-05-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (883, 7, 1, CAST(N'2024-11-23' AS Date), CAST(N'2025-04-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (887, 25, 1, CAST(N'2024-11-08' AS Date), CAST(N'2024-11-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (887, 44, 3, CAST(N'2023-02-04' AS Date), CAST(N'2023-03-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (888, 19, 1, CAST(N'2024-09-19' AS Date), CAST(N'2025-06-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (888, 24, 2, CAST(N'2023-10-19' AS Date), CAST(N'2024-08-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (890, 13, 3, CAST(N'2022-08-24' AS Date), CAST(N'2023-05-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (897, 5, 1, CAST(N'2024-01-05' AS Date), CAST(N'2024-10-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (897, 26, 2, CAST(N'2023-05-25' AS Date), CAST(N'2024-05-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (899, 22, 2, CAST(N'2023-06-07' AS Date), CAST(N'2024-10-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (900, 2, 1, CAST(N'2024-11-08' AS Date), CAST(N'2024-12-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (903, 41, 3, CAST(N'2023-02-20' AS Date), CAST(N'2023-08-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (903, 43, 3, CAST(N'2023-08-03' AS Date), CAST(N'2023-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (904, 6, 1, CAST(N'2024-01-12' AS Date), CAST(N'2024-07-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (910, 41, 3, CAST(N'2023-02-05' AS Date), CAST(N'2023-04-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (912, 33, 2, CAST(N'2023-08-08' AS Date), CAST(N'2024-05-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (913, 13, 3, CAST(N'2022-08-16' AS Date), CAST(N'2023-06-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (916, 18, 2, CAST(N'2023-01-18' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (918, 1, 3, CAST(N'2023-01-01' AS Date), CAST(N'2023-08-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (919, 32, 1, CAST(N'2024-04-30' AS Date), CAST(N'2025-02-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (920, 6, 1, CAST(N'2024-09-21' AS Date), CAST(N'2025-06-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (920, 31, 3, CAST(N'2023-03-02' AS Date), CAST(N'2023-10-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (921, 13, 2, CAST(N'2023-01-13' AS Date), CAST(N'2024-06-29' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (925, 3, 2, CAST(N'2023-11-25' AS Date), CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (928, 40, 3, CAST(N'2022-04-14' AS Date), CAST(N'2023-03-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (928, 45, 1, CAST(N'2023-12-12' AS Date), CAST(N'2024-03-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (929, 10, 4, CAST(N'2022-09-27' AS Date), CAST(N'2023-08-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (929, 39, 2, CAST(N'2023-05-22' AS Date), CAST(N'2024-04-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (930, 45, 4, CAST(N'2022-11-21' AS Date), CAST(N'2023-08-04' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (931, 14, 3, CAST(N'2022-09-23' AS Date), CAST(N'2023-09-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (932, 23, 3, CAST(N'2022-09-06' AS Date), CAST(N'2023-08-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (934, 30, 1, CAST(N'2024-11-23' AS Date), CAST(N'2025-11-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (934, 41, 1, CAST(N'2024-03-10' AS Date), CAST(N'2024-07-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (935, 9, 4, CAST(N'2022-07-14' AS Date), CAST(N'2023-02-14' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (937, 44, 3, CAST(N'2022-04-01' AS Date), CAST(N'2023-02-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (943, 22, 3, CAST(N'2022-10-29' AS Date), CAST(N'2023-08-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (947, 11, 1, CAST(N'2024-11-25' AS Date), CAST(N'2025-03-31' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (947, 17, 1, CAST(N'2024-06-03' AS Date), CAST(N'2024-06-16' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (948, 3, 4, CAST(N'2023-02-26' AS Date), CAST(N'2023-05-17' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (948, 15, 2, CAST(N'2023-02-27' AS Date), CAST(N'2023-12-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (948, 25, 2, CAST(N'2023-07-17' AS Date), CAST(N'2024-01-11' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (949, 23, 4, CAST(N'2023-01-31' AS Date), CAST(N'2023-03-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (953, 31, 2, CAST(N'2023-03-07' AS Date), CAST(N'2024-04-28' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (956, 11, 3, CAST(N'2023-01-25' AS Date), CAST(N'2023-05-24' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (958, 9, 2, CAST(N'2022-12-08' AS Date), CAST(N'2024-02-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (958, 28, 2, CAST(N'2023-10-06' AS Date), CAST(N'2024-10-23' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (959, 42, 2, CAST(N'2023-11-11' AS Date), CAST(N'2023-12-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (971, 33, 2, CAST(N'2023-04-07' AS Date), CAST(N'2024-06-22' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (972, 30, 2, CAST(N'2023-07-18' AS Date), CAST(N'2024-10-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (973, 16, 1, CAST(N'2024-06-05' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (973, 33, 2, CAST(N'2023-11-03' AS Date), CAST(N'2024-11-20' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (978, 3, 2, CAST(N'2023-04-28' AS Date), CAST(N'2024-11-08' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (978, 38, 3, CAST(N'2023-07-11' AS Date), CAST(N'2023-11-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (979, 30, 1, CAST(N'2024-07-16' AS Date), CAST(N'2024-07-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (981, 36, 2, CAST(N'2022-11-28' AS Date), CAST(N'2024-03-15' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (981, 39, 1, CAST(N'2024-01-25' AS Date), CAST(N'2024-09-18' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (983, 39, 1, CAST(N'2024-03-08' AS Date), CAST(N'2024-08-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (985, 34, 2, CAST(N'2023-03-15' AS Date), CAST(N'2024-07-27' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (986, 2, 2, CAST(N'2023-06-29' AS Date), CAST(N'2024-06-06' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (986, 10, 1, CAST(N'2023-12-17' AS Date), CAST(N'2024-01-26' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (986, 31, 2, CAST(N'2023-07-22' AS Date), CAST(N'2024-07-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (986, 36, 2, CAST(N'2023-09-15' AS Date), CAST(N'2024-10-19' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (987, 31, 2, CAST(N'2023-05-05' AS Date), CAST(N'2024-11-02' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (989, 20, 2, CAST(N'2023-07-31' AS Date), CAST(N'2023-11-30' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (990, 25, 4, CAST(N'2022-07-16' AS Date), CAST(N'2023-06-03' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (991, 33, 1, CAST(N'2024-01-02' AS Date), CAST(N'2024-03-01' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (992, 5, 2, CAST(N'2023-03-22' AS Date), CAST(N'2024-04-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (994, 17, 2, CAST(N'2023-07-16' AS Date), CAST(N'2024-03-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (994, 35, 2, CAST(N'2023-01-22' AS Date), CAST(N'2024-07-21' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (996, 2, 2, CAST(N'2023-05-19' AS Date), CAST(N'2024-11-10' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (996, 23, 1, CAST(N'2023-12-03' AS Date), CAST(N'2024-11-25' AS Date))
GO
INSERT [dbo].[PersonTask] ([PersonID], [TaskID], [TaskStatusID], [PersonTaskStartDate], [PersonTaskDueDate]) VALUES (997, 47, 2, CAST(N'2023-06-29' AS Date), CAST(N'2024-06-25' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Power] ON 
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (1, CAST(897.65 AS Decimal(8, 2)), CAST(792.53 AS Decimal(8, 2)), 1)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (2, CAST(383.07 AS Decimal(8, 2)), CAST(80.87 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (3, CAST(523.93 AS Decimal(8, 2)), CAST(420.95 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (4, CAST(790.87 AS Decimal(8, 2)), CAST(104.29 AS Decimal(8, 2)), 2)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (5, CAST(31.44 AS Decimal(8, 2)), CAST(5.66 AS Decimal(8, 2)), 1)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (6, CAST(49.12 AS Decimal(8, 2)), CAST(24.89 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (7, CAST(943.90 AS Decimal(8, 2)), CAST(284.31 AS Decimal(8, 2)), 2)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (8, CAST(645.12 AS Decimal(8, 2)), CAST(343.72 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (9, CAST(20.26 AS Decimal(8, 2)), CAST(3.37 AS Decimal(8, 2)), 2)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (10, CAST(115.87 AS Decimal(8, 2)), CAST(14.85 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (11, CAST(549.91 AS Decimal(8, 2)), CAST(201.08 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (12, CAST(897.80 AS Decimal(8, 2)), CAST(483.20 AS Decimal(8, 2)), 2)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (13, CAST(646.37 AS Decimal(8, 2)), CAST(280.65 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (14, CAST(13.90 AS Decimal(8, 2)), CAST(2.10 AS Decimal(8, 2)), 4)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (15, CAST(418.17 AS Decimal(8, 2)), CAST(180.11 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (16, CAST(841.54 AS Decimal(8, 2)), CAST(90.00 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (17, CAST(832.53 AS Decimal(8, 2)), CAST(682.50 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (18, CAST(140.15 AS Decimal(8, 2)), CAST(52.34 AS Decimal(8, 2)), 1)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (19, CAST(890.51 AS Decimal(8, 2)), CAST(339.31 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Power] ([PowerID], [PowerCapacity], [PowerAmount], [PowerSourceID]) VALUES (20, CAST(607.61 AS Decimal(8, 2)), CAST(284.75 AS Decimal(8, 2)), 2)
GO
SET IDENTITY_INSERT [dbo].[Power] OFF
GO
SET IDENTITY_INSERT [dbo].[PowerSource] ON 
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (1, N'Solar', N'Megawatts')
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (2, N'Wind', N'Megawatts')
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (3, N'Hydro', N'Megawatts')
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (4, N'Generator', N'Megawatts')
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (5, N'Coal', N'Megawatts')
GO
INSERT [dbo].[PowerSource] ([PowerSourceID], [PowerSource], [PowerUnits]) VALUES (6, N'Natural Gas', N'BTU')
GO
SET IDENTITY_INSERT [dbo].[PowerSource] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (1, N'Communication ', N' Effective verbal and written communication to convey ideas clearly.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (2, N'Problem Solving ', N' Analytical and critical thinking to find innovative solutions.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (3, N'Time Management ', N' Efficient use of time to prioritize tasks and meet deadlines.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (4, N'Teamwork ', N' Collaborative skills to work effectively with diverse teams.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (5, N'Leadership ', N' Ability to guide and motivate a team towards common goals.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (6, N'Adaptability ', N' Flexibility to thrive in dynamic and changing environments.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (7, N'Creativity ', N' Thinking outside the box to generate new ideas and solutions.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (8, N'Decision Making ', N' Sound judgment and quick decision-making abilities.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (9, N'Research ', N' Proficient in gathering and analyzing information for informed decisions.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (10, N'Coding ', N' Programming skills in various languages for software development.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (11, N'Data Analysis ', N' Extracting insights from data sets using analytical tools.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (12, N'Project Management ', N' Organizing and overseeing projects from initiation to completion.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (13, N'Customer Service ', N' Providing excellent service and resolving customer issues.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (14, N'Sales ', N' Persuasive communication to sell products or services.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (15, N'Negotiation ', N' Skillful discussions to reach mutually beneficial agreements.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (16, N'Networking ', N' Building and maintaining professional relationships.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (17, N'Graphic Design ', N' Creating visually appealing graphics and layouts.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (18, N'Public Speaking ', N' Confident and effective communication in public settings.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (19, N'Marketing ', N' Developing and implementing strategies to promote products.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (20, N'Financial Analysis ', N' Analyzing financial data for decision-making.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (21, N'Problem Solving ', N' Identifying and resolving complex issues efficiently.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (22, N'Critical Thinking ', N' Evaluating situations objectively to make informed decisions.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (23, N'Presentation ', N' Designing and delivering engaging presentations.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (24, N'Foreign Language ', N' Proficiency in speaking and writing in a foreign language.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (25, N'Event Planning ', N' Organizing and coordinating events with attention to detail.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (26, N'Quality Assurance ', N' Ensuring products meet specified standards and requirements.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (27, N'Coaching ', N' Guiding and developing individuals to reach their full potential.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (28, N'Conflict Resolution ', N' Resolving disputes and fostering positive relationships.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (29, N'SEO Optimization ', N' Enhancing online visibility through search engine optimization.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (30, N'Software Testing ', N' Evaluating software to ensure functionality and performance.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (31, N'Social Media Management ', N' Building and maintaining a strong online presence.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (32, N'Mobile App Development ', N' Creating applications for mobile devices.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (33, N'Teaching ', N' Effectively conveying information and facilitating learning.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (34, N'Emotional Intelligence ', N' Understanding and managing emotions for interpersonal effectiveness.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (35, N'Cybersecurity ', N' Protecting digital systems and information from threats.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (36, N'Database Management ', N' Organizing and maintaining databases efficiently.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (37, N'UI/UX Design ', N' Creating user-friendly and visually appealing interfaces.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (38, N'Artificial Intelligence ', N' Developing and implementing AI solutions.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (39, N'Health and Safety ', N' Ensuring a safe and healthy environment for all.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (40, N'Content Writing ', N' Creating engaging and informative written content.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (41, N'Legal Research ', N' Conducting thorough research for legal matters.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (42, N'3D Modeling ', N' Creating three-dimensional models for various applications.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (43, N'Electrical Engineering ', N' Designing and maintaining electrical systems.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (44, N'Animation ', N' Creating dynamic and visually appealing animations.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (45, N'Cloud Computing ', N' Managing and optimizing cloud-based systems.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (46, N'Mechanical Engineering ', N' Designing and optimizing mechanical systems.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (47, N'Augmented Reality ', N' Developing applications with augmented reality features.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (48, N'Robotics ', N' Designing and programming robotic systems.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (49, N'Game Development ', N' Creating interactive and engaging video games.')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (50, N'Crisis Management ', N' Effectively responding to and mitigating crises.')
GO
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 25, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 29, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (1, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 10, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 29, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (2, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (3, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 5, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (4, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 29, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (5, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 37, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (6, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 39, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (7, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (8, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 10, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (9, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 18, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 36, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (10, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 17, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 36, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (11, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 15, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (12, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 10, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (13, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 17, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (14, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 26, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (15, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 18, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 25, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 40, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (16, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 36, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (17, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 5, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 10, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (18, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 15, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 33, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (19, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 10, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 25, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (20, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 10, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 15, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 17, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 32, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 36, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (21, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (22, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (23, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 15, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 25, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (24, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 15, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (25, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 10, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 22, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (26, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 18, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 26, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (27, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (28, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 14, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 20, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 28, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 49, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (29, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 5, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 40, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (30, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 29, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 30, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 38, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (31, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 10, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 34, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (32, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 10, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 13, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 18, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 29, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 31, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 33, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (33, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 4, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 26, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 44, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (34, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 3, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 24, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 27, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 33, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 43, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (35, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 1, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 18, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 26, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 27, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 30, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 33, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 39, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (36, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 13, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 25, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 39, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 40, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 46, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 47, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (37, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 6, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 7, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 19, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 35, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 36, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 41, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 48, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (38, 50, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 9, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 16, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 17, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 29, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 40, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 42, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 43, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (39, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 3, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 4, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 6, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 8, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 9, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 19, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 23, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 32, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 35, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 37, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 46, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (40, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 5, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 11, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 12, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 16, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 17, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 18, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 22, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 24, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 26, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 38, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 39, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 42, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 45, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 46, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (41, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 5, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 8, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 11, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 15, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 16, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 18, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 21, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 24, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 35, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 37, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 38, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 39, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 41, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 44, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 47, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (42, 50, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 2, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 7, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 9, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 10, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 12, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 14, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 23, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 26, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 30, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 33, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 34, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 37, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 39, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 40, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 45, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 49, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (43, 50, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 1, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 2, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 5, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 6, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 7, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 8, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 13, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 17, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 19, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 20, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 21, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 25, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 27, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 28, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 31, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 36, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 39, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 41, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 42, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 43, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 44, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 45, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 47, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 48, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (44, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 1, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 2, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 3, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 4, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 5, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 6, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 10, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 11, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 12, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 14, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 15, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 17, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 19, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 20, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 21, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 22, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 23, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 25, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 26, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 28, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 29, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 31, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 32, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 33, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 34, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 35, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 36, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 37, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 40, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 41, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 44, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 46, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 48, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 49, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (45, 50, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 1, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 2, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 3, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 4, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 5, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 7, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 8, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 9, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 10, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 11, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 12, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 13, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 14, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 15, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 16, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 17, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 18, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 20, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 21, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 22, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 23, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 24, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 25, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 26, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 27, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 28, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 29, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 30, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 31, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 32, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 34, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 36, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 37, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 38, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 39, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 40, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 42, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 43, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 45, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 47, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 48, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 49, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (46, 50, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 1, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 2, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 3, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 4, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 5, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 6, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 7, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 8, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 9, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 10, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 11, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 12, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 13, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 14, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 15, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 16, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 17, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 18, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 19, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 20, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 21, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 22, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 23, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 24, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 25, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 26, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 27, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 28, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 29, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 30, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 31, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 32, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 33, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 34, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 35, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 36, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 37, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 38, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 39, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 40, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 41, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 42, 4)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 43, 3)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 44, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 45, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 46, 5)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 47, 2)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 48, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 49, 1)
GO
INSERT [dbo].[SkillTask] ([TaskID], [SkillID], [SkillTaskDifficulty]) VALUES (47, 50, 3)
GO
SET IDENTITY_INSERT [dbo].[Task] ON 
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (1, N'Build Emergency Kit', N' Assemble a kit with essential supplies like water,non-perishable food, first aid supplies, flashlight, and important documents.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (2, N'Create Neighbourhood Watch', N' Organize or join a neighborhood watch program to enhance community safety and communication.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (3, N'Community Garden Maintenance', N' Contribute to a community garden by planting, weeding, and harvesting fruits and vegetables')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (4, N'Attend Local Meetings', N' Participate in local community meetings to stay informed about important issues and contribute to discussions.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (5, N'Trash Cleanup', N' Organize or participate in regular trash cleanup events to keep the community clean and environmentally friendly.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (6, N'Emergency Response Training', N' Attend training sessions on basic first aidm,CPR, and emergency response to be prepared')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (7, N'Volunteer at Local Shelter', N' Offer your time at a local shelter or food bank to support those in need within the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (8, N'Recycle Program Participation', N' Sort and recycle materials according to local guidelines to promote sustainability.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (9, N'Support Local Businesses', N' Prioritize shopping at local businesses to boost the community''s economy.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (10, N'Community Event Planning', N' Take part in organizing and planning community events to foster a sense of togetherness.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (11, N'Fire Safety Inspection', N' Conduct regular fire safety inspections in your home and encourage neighbors to do the same.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (12, N'Public Park Maintenance', N' Volunteer for park cleanup and maintenance to ensure safe and enjoyable public spaces.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (13, N'Car Pooling Initiative', N' Coordinate with neighbors to organize a carpooling system to reduce traffic and save energy.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (14, N'Disaster Preparedness Drill', N' Participate in community-wide disaster preparedness drills to ensure readiness.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (15, N'Community Outreach', N' Engage in outreach activities to connect with neighbors and build a stronger sense of community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (16, N'Traffic Control Assistance', N' Assist with traffic control during community events to ensure safety and smooth flow.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (17, N'Energy Conservation', N' Educate and practice energy-saving habits to reduce the community''s overall energy consumption.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (18, N'Local School Support', N' Volunteer at local schools or participate in parent-teacher associations to support education.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (19, N'Social Media Moderation', N' Monitor and contribute positively to local community social media groups for effective communication.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (20, N'Emergency Evacuation Planning', N' Collaborate with neighbors to create a plan for emergency evacuations and shelter locations.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (21, N'Lead a Workshop', N' Share your skills or knowledge by leading a workshop or class within the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (22, N'Litter-Free Campaign', N' Initiate or participate in a campaign to keep the community litter-free and beautiful.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (23, N'Community Library Volunteer', N' Offer your time to help manage and maintain a community library or book exchange.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (24, N'Community Watch Patrols', N' Participate in or organize community watch patrols to enhance security.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (25, N'Public Health Education', N' Provide information and resources on public health issues to raise awareness in the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (26, N'Community Fitness Classes', N' Organize or participate in community fitness classes to promote a healthy lifestyle.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (27, N'Create a Community Newsletter', N' Contribute articles or help create a community newsletter to share important updates.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (28, N'Public Art Installation', N' Collaborate on public art projects to beautify the community and promote creativity.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (29, N'Assist Elderly Neighbors', N' Offer assistance to elderly neighbors with tasks like grocery shopping or home maintenance.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (30, N'Safe Playground Initiative', N' Advocate for and participate in initiatives to ensure safe and well-maintained playgrounds.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (31, N'Street Maintenance', N' Collaborate with neighbors to address and report street maintenance issues to local authorities.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (32, N'Local History Preservation', N' Support efforts to preserve and share the local history and heritage of the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (33, N'Neighborhood Potluck Dinners', N' Organize or attend neighborhood potluck dinners to build connections with neighbors.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (34, N'Crisis Hotline Volunteer', N' Volunteer for local crisis hotlines to provide support to community members in need.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (35, N'Bicycle Safety Workshops', N' Organize or participate in workshops on bicycle safety to promote a bike-friendly community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (36, N'Wildlife Conservation', N' Support local wildlife conservation efforts by participating in cleanups and awareness campaigns.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (37, N'Community Art Exhibitions', N' Contribute artwork or help organize community art exhibitions to celebrate creativity.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (38, N'Promote Green Spaces', N' Advocate for and participate in initiatives to create and maintain green spaces within the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (39, N'Coordinate Blood Drives', N' Work with local organizations to coordinate and participate in community blood drives.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (40, N'Host a Neighborhood Clean-up Day', N' Organize a day for the entire community to come together for a thorough clean-up.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (41, N'Community Technology Workshops', N' Share technological skills by organizing workshops on digital literacy within the community.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (42, N'Support Mental Health Initiatives', N' Participate in or promote initiatives that raise awareness about mental health issues.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (43, N'Local Farmers Market', N' Support and participate in local farmers'' markets to promote fresh and local produce.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (44, N'Public Safety Training', N' Attend or organize training sessions on public safety and crime prevention.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (45, N'Community Garage Sale', N' Participate in or organize community garage sales to foster a sense of community and declutter homes.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (46, N'Promote Water Conservation', N' Advocate for and practice water conservation habits to preserve local water resources.')
GO
INSERT [dbo].[Task] ([TaskID], [TaskName], [TaskDescription]) VALUES (47, N'Tree Planting Events', N' Join or organize tree-planting events to contribute to environmental sustainability.')
GO
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
SET IDENTITY_INSERT [dbo].[TaskStatus] ON 
GO
INSERT [dbo].[TaskStatus] ([TaskStatusID], [TaskStatusDescription]) VALUES (1, N'Not Started')
GO
INSERT [dbo].[TaskStatus] ([TaskStatusID], [TaskStatusDescription]) VALUES (2, N'In Progress')
GO
INSERT [dbo].[TaskStatus] ([TaskStatusID], [TaskStatusDescription]) VALUES (3, N'Completed')
GO
INSERT [dbo].[TaskStatus] ([TaskStatusID], [TaskStatusDescription]) VALUES (4, N'Past Due')
GO
SET IDENTITY_INSERT [dbo].[TaskStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Water] ON 
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (1, 2, CAST(21031.70 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (2, 4, CAST(88105.44 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (3, 3, CAST(33670.35 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (4, 3, CAST(95465.91 AS Decimal(8, 2)), 4)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (5, 5, CAST(63701.82 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (6, 4, CAST(35483.53 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (7, 3, CAST(56505.52 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (8, 5, CAST(78659.24 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (9, 3, CAST(52129.59 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (10, 2, CAST(60706.10 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (11, 3, CAST(89271.87 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (12, 4, CAST(54660.13 AS Decimal(8, 2)), 5)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (13, 5, CAST(99771.49 AS Decimal(8, 2)), 4)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (14, 2, CAST(62548.83 AS Decimal(8, 2)), 2)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (15, 2, CAST(37316.33 AS Decimal(8, 2)), 4)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (16, 4, CAST(19538.09 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (17, 5, CAST(67573.29 AS Decimal(8, 2)), 4)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (18, 4, CAST(25711.77 AS Decimal(8, 2)), 3)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (19, 5, CAST(22744.39 AS Decimal(8, 2)), 6)
GO
INSERT [dbo].[Water] ([WaterID], [WaterQuality], [WaterQuantity], [WaterSourceID]) VALUES (20, 5, CAST(45688.48 AS Decimal(8, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Water] OFF
GO
SET IDENTITY_INSERT [dbo].[WaterSource] ON 
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (1, N'River')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (2, N'Lake')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (3, N'Pond')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (4, N'Well')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (5, N'Stream')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (6, N'Resavoir')
GO
INSERT [dbo].[WaterSource] ([WaterSourceID], [WaterSource]) VALUES (7, N'Ocean')
GO
SET IDENTITY_INSERT [dbo].[WaterSource] OFF
GO
ALTER TABLE [dbo].[Adversaries]  WITH CHECK ADD FOREIGN KEY([FactionID])
REFERENCES [dbo].[Faction] ([FactionID])
GO
ALTER TABLE [dbo].[Allies]  WITH CHECK ADD FOREIGN KEY([FactionID])
REFERENCES [dbo].[Faction] ([FactionID])
GO
ALTER TABLE [dbo].[CurrencyPerson]  WITH CHECK ADD FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[CurrencyPerson]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[FactionLocation]  WITH CHECK ADD FOREIGN KEY([FactionID])
REFERENCES [dbo].[Faction] ([FactionID])
GO
ALTER TABLE [dbo].[FactionLocation]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD FOREIGN KEY([FoodSourceID])
REFERENCES [dbo].[FoodSource] ([FoodSourceID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([FactionID])
REFERENCES [dbo].[Faction] ([FactionID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([FoodID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([PowerID])
REFERENCES [dbo].[Power] ([PowerID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([WaterID])
REFERENCES [dbo].[Water] ([WaterID])
GO
ALTER TABLE [dbo].[LocationLodging]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[LocationLodging]  WITH CHECK ADD FOREIGN KEY([LodgingID])
REFERENCES [dbo].[Lodging] ([LodgingID])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([FactionID])
REFERENCES [dbo].[Faction] ([FactionID])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([LocationLodgingID])
REFERENCES [dbo].[LocationLodging] ([LocationLodgingID])
GO
ALTER TABLE [dbo].[PersonSkill]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[PersonSkill]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([SkillID])
GO
ALTER TABLE [dbo].[PersonTask]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[PersonTask]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task] ([TaskID])
GO
ALTER TABLE [dbo].[PersonTask]  WITH CHECK ADD FOREIGN KEY([TaskStatusID])
REFERENCES [dbo].[TaskStatus] ([TaskStatusID])
GO
ALTER TABLE [dbo].[Power]  WITH CHECK ADD FOREIGN KEY([PowerSourceID])
REFERENCES [dbo].[PowerSource] ([PowerSourceID])
GO
ALTER TABLE [dbo].[SkillTask]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([SkillID])
GO
ALTER TABLE [dbo].[SkillTask]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task] ([TaskID])
GO
ALTER TABLE [dbo].[Water]  WITH CHECK ADD FOREIGN KEY([WaterSourceID])
REFERENCES [dbo].[WaterSource] ([WaterSourceID])
GO
ALTER TABLE [dbo].[Currency]  WITH CHECK ADD  CONSTRAINT [CK__Currency__Curren__47DBAE45] CHECK  (([CurrencyValue]>=(1) AND [CurrencyValue]<=(255)))
GO
ALTER TABLE [dbo].[Currency] CHECK CONSTRAINT [CK__Currency__Curren__47DBAE45]
GO
ALTER TABLE [dbo].[Faction]  WITH CHECK ADD CHECK  (([FactionSize]>(0)))
GO
ALTER TABLE [dbo].[Faction]  WITH CHECK ADD CHECK  (([FactionInfluence]>=(1) AND [FactionInfluence]<=(10)))
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD CHECK  (([LocationSafetyLevel]>=(1) AND [LocationSafetyLevel]<=(5)))
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD CHECK  (([LocationExpansionPotential]>=(1) AND [LocationExpansionPotential]<=(5)))
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [CHK_PersonDateOfDeath_AfterBirth] CHECK ([PersonDateOfDeath] >= [PersonDateOfBirth])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [CHK_PersonDateOfDeath_AfterBirth]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [CHK_PersonDateOfDeath_NotInFuture] CHECK ([PersonDateOfDeath] <= CONVERT(DATE,GETDATE()))
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [CHK_PersonDateOfDeath_NotInFuture]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD CHECK  (([PersonHealth]>=(0) AND [PersonHealth]<=(100)))
GO
ALTER TABLE [dbo].[PersonSkill]  WITH CHECK ADD CHECK  (([PersonSkillProficiency]>=(1) AND [PersonSkillProficiency]<=(10)))
GO
ALTER TABLE [dbo].[PersonTask]  WITH CHECK ADD  CONSTRAINT [CHK_DueDate_After_StartDate] CHECK  (([PersonTaskDueDate]>=[PersonTaskStartDate]))
GO
ALTER TABLE [dbo].[PersonTask] CHECK CONSTRAINT [CHK_DueDate_After_StartDate]
GO
ALTER TABLE [dbo].[PersonTask]  WITH CHECK ADD CHECK  (([TaskStatusID]>=(1) AND [TaskStatusID]<=(4)))
GO
ALTER TABLE [dbo].[Power]  WITH CHECK ADD  CONSTRAINT [CHK_PowerAmount_LessThan_Capacity] CHECK  (([PowerAmount]<[PowerCapacity]))
GO
ALTER TABLE [dbo].[Power] CHECK CONSTRAINT [CHK_PowerAmount_LessThan_Capacity]
GO
ALTER TABLE [dbo].[SkillTask]  WITH CHECK ADD CHECK  (([SkillTaskDifficulty]>=(1) AND [SkillTaskDifficulty]<=(5)))
GO
ALTER TABLE [dbo].[Water]  WITH CHECK ADD CHECK  (([WaterQuality]>=(1) AND [WaterQuality]<=(5)))
GO
USE [master]
GO
ALTER DATABASE [DoomsdayDatabase] SET  READ_WRITE 
GO