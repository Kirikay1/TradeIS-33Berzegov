USE [master]
GO
/****** Object:  Database [TradeIS-33Berzegov]    Script Date: 06.04.2023 12:33:40 ******/
CREATE DATABASE [TradeIS-33Berzegov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TradeIS-33Berzegov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TradeIS-33Berzegov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TradeIS-33Berzegov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TradeIS-33Berzegov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TradeIS-33Berzegov] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TradeIS-33Berzegov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ARITHABORT OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET RECOVERY FULL 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET  MULTI_USER 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TradeIS-33Berzegov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TradeIS-33Berzegov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TradeIS-33Berzegov', N'ON'
GO
ALTER DATABASE [TradeIS-33Berzegov] SET QUERY_STORE = ON
GO
ALTER DATABASE [TradeIS-33Berzegov] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TradeIS-33Berzegov]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[InfoID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasurementUnit]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasurementUnit](
	[MeasurementUnitID] [int] IDENTITY(1,1) NOT NULL,
	[MeasurementUnitName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MeasurementUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OrderСontents] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderInfo] [int] NULL,
	[OrderCodeToObtain] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointID] [int] IDENTITY(1,1) NOT NULL,
	[IndexPickupPoint] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[House] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductTovar] [int] NOT NULL,
	[ProductMeasurementUnit] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductMaximumDiscountAmount] [tinyint] NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductPhoto] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetID] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StreetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovar]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovar](
	[TovarID] [int] IDENTITY(1,1) NOT NULL,
	[TovarName] [int] NOT NULL,
	[TovarManufacturer] [int] NOT NULL,
	[TovarProvider] [int] NOT NULL,
	[TovarDescription] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TovarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TovarOfName]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TovarOfName](
	[TovarNameID] [int] IDENTITY(1,1) NOT NULL,
	[TovarOfName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TovarNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.04.2023 12:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserInfo] [int] NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Общестроительные материалы')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Стеновые и фасадные материалы')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Сухие строительные смеси и гидроизоляция')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Ручной инструмент')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Защита лица, глаз, головы')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Info] ON 

INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (1, N'Басова', N'Амина', N'Кирилловна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (2, N'Михайлов', N'Андрей', N'Денисович')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (3, N'Сидоров', N'Егор', N'Александрович')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (4, N'Аксенова', N'Ульяна', N'Ивановна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (5, N'Васильева', N'Камила', N'Ивановна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (6, N'Ильин', N'Артём', N'Родионович')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (7, N'Васильева', N'Василиса', N'Фёдоровна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (8, N'Кудрявцева', N'Василиса', N'Матвеевна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (9, N'Кириллова', N'Николь', N'Святославовна')
INSERT [dbo].[Info] ([InfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (10, N'Андреева', N'Полина', N'Артёмовна')
SET IDENTITY_INSERT [dbo].[Info] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'М500')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Knauf')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'Павловский завод')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Weber')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Hesler')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Armero')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (14, N'Исток')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[MeasurementUnit] ON 

INSERT [dbo].[MeasurementUnit] ([MeasurementUnitID], [MeasurementUnitName]) VALUES (1, N'шт.
')
SET IDENTITY_INSERT [dbo].[MeasurementUnit] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'0YGHZ7', 30, 1, CAST(700.0000 AS Decimal(19, 4)), 9, 5, 9, 36, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'2G3280', 8, 1, CAST(795.0000 AS Decimal(19, 4)), 16, 2, 9, 20, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'3L7RCZ', 6, 1, CAST(7400.0000 AS Decimal(19, 4)), 7, 2, 2, 20, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'3XBOTN', 5, 1, CAST(110.0000 AS Decimal(19, 4)), 14, 1, 5, 21, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'4JR1HN', 20, 1, CAST(26.0000 AS Decimal(19, 4)), 3, 4, 6, 7, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'4WZEOT', 19, 1, CAST(110.0000 AS Decimal(19, 4)), 2, 4, 6, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'61PGH3', 24, 1, CAST(184.0000 AS Decimal(19, 4)), 2, 5, 6, 25, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'81F1WG', 29, 1, CAST(1500.0000 AS Decimal(19, 4)), 1, 5, 2, 13, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'83M5ME', 23, 1, CAST(122.0000 AS Decimal(19, 4)), 16, 4, 9, 26, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ASPXSG', 17, 1, CAST(711.0000 AS Decimal(19, 4)), 17, 3, 10, 20, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'BPV4MM', 2, 1, CAST(8.0000 AS Decimal(19, 4)), 13, 1, 8, 2, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'EQ6RKO', 28, 1, CAST(36.0000 AS Decimal(19, 4)), 17, 5, 3, 22, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'F895RB', 4, 1, CAST(102.0000 AS Decimal(19, 4)), 17, 1, 6, 7, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'GN6ICZ', 25, 1, CAST(154.0000 AS Decimal(19, 4)), 10, 5, 6, 8, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'I6MH89', 22, 1, CAST(326.0000 AS Decimal(19, 4)), 12, 4, 6, 3, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'JVL42J', 3, 1, CAST(13.0000 AS Decimal(19, 4)), 1, 1, 4, 34, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'K0YACK', 16, 1, CAST(160.0000 AS Decimal(19, 4)), 9, 3, 8, 19, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'LPDDM4', 12, 1, CAST(500.0000 AS Decimal(19, 4)), 17, 3, 6, 38, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'LQ48MW', 13, 1, CAST(462.0000 AS Decimal(19, 4)), 16, 3, 6, 33, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'M26EXW', 15, 1, CAST(340.0000 AS Decimal(19, 4)), 8, 3, 8, 2, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'MIO8YV', 9, 1, CAST(30.0000 AS Decimal(19, 4)), 9, 2, 9, 31, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'O43COU', 14, 1, CAST(750.0000 AS Decimal(19, 4)), 9, 3, 1, 16, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'PMEZMH', 1, 1, CAST(440.0000 AS Decimal(19, 4)), 10, 1, 8, 34, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'QHNOKR', 27, 1, CAST(251.0000 AS Decimal(19, 4)), 6, 5, 2, 22, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'S72AM3', 7, 1, CAST(500.0000 AS Decimal(19, 4)), 9, 2, 5, 35, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'UER2QD', 10, 1, CAST(25.0000 AS Decimal(19, 4)), 20, 2, 8, 27, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'Z3LO0U', 26, 1, CAST(228.0000 AS Decimal(19, 4)), 19, 5, 9, 11, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'Z3XFSP', 21, 1, CAST(63.0000 AS Decimal(19, 4)), 19, 4, 8, 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ZKQ5FF', 18, 1, CAST(65.0000 AS Decimal(19, 4)), 13, 4, 6, 6, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ZR70B4', 11, 1, CAST(16.0000 AS Decimal(19, 4)), 3, 2, 3, 26, NULL)
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (1, N'М500')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (3, N'Knauf')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (8, N'Павловский завод')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (9, N'Weber')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (10, N'Hesler')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (11, N'Armero')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (14, N'Исток')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Tovar] ON 

INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (1, 1, 1, 1, N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (2, 2, 2, 2, N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (3, 2, 2, 2, N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (4, 3, 3, 3, N'Песок строительный 50 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (5, 4, 4, 4, N'Керамзит фракция 10-20 мм 0,05 куб.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (6, 5, 5, 5, N'Газобетон ЛСР 100х250х625 мм D400')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (7, 6, 6, 6, N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (8, 7, 7, 7, N'Угол наружный Vinylon 3050 мм серо-голубой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (9, 8, 6, 6, N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (10, 9, 3, 3, N'Скоба для пазогребневой плиты Knauf С1 120х100 мм')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (11, 8, 8, 8, N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (12, 10, 3, 3, N'Штукатурка гипсовая Knauf Ротбанд 30 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (13, 10, 9, 9, N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (14, 11, 6, 6, N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (15, 12, 3, 3, N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (16, 13, 4, 4, N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (17, 14, 9, 9, N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (18, 15, 10, 10, N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (19, 15, 11, 11, N'Лезвие для ножа Armero 18 мм прямое (10 шт.)')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (20, 16, 10, 10, N'Шпатель малярный 100 мм с пластиковой ручкой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (21, 17, 10, 10, N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (22, 18, 12, 12, N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (23, 19, 11, 11, N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (24, 20, 13, 13, N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (25, 21, 14, 14, N'Каска защитная Исток (КАС001О) оранжевая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (26, 20, 15, 15, N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (27, 22, 14, 14, N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (28, 23, 16, 16, N'Подшлемник для каски одноразовый')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (29, 21, 17, 17, N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (30, 20, 16, 16, N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами')
SET IDENTITY_INSERT [dbo].[Tovar] OFF
GO
SET IDENTITY_INSERT [dbo].[TovarOfName] ON 

INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (1, N'Цемент')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (2, N'Пленка техническая')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (3, N'Песок строительный')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (4, N'Керамзит фракция')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (5, N'Газобетон')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (6, N'Пазогребневая плита')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (7, N'Угол наружный')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (8, N'Кирпич')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (9, N'Скоба для пазогребневой плиты')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (10, N'Штукатурка гипсовая')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (11, N'Шпаклевка')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (12, N'Клей для плитки, керамогранита и камня')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (13, N'Смесь цементно-песчаная')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (14, N'Ровнитель')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (15, N'Лезвие для ножа')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (16, N'Шпатель')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (17, N'Нож строительный')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (18, N'Валик')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (19, N'Кисть')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (20, N'Очки защитные')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (21, N'Каска защитная')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (22, N'Маска защитная')
INSERT [dbo].[TovarOfName] ([TovarNameID], [TovarOfName]) VALUES (23, N'Подшлемник')
SET IDENTITY_INSERT [dbo].[TovarOfName] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (1, 1, N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (2, 2, N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (3, 3, N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (4, 4, N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (5, 5, N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (6, 6, N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (7, 7, N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (8, 8, N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (9, 9, N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (10, 10, N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderInfo])
REFERENCES [dbo].[Info] ([InfoID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([PickupPointID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([StreetID])
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductTovar])
REFERENCES [dbo].[Tovar] ([TovarID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductMeasurementUnit])
REFERENCES [dbo].[MeasurementUnit] ([MeasurementUnitID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarName])
REFERENCES [dbo].[TovarOfName] ([TovarNameID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarProvider])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserInfo])
REFERENCES [dbo].[Info] ([InfoID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [TradeIS-33Berzegov] SET  READ_WRITE 
GO
