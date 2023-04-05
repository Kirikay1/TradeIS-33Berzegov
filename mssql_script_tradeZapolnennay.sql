USE [master]
GO
/****** Object:  Database [TradeIS-33Berzegov]    Script Date: 05.04.2023 16:23:20 ******/
CREATE DATABASE [TradeIS-33Berzegov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TradeIS-33Berzegov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TradeIS-33Berzegov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TradeIS-33Berzegov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TradeIS-33Berzegov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TradeIS-33Berzegov] SET COMPATIBILITY_LEVEL = 150
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
ALTER DATABASE [TradeIS-33Berzegov] SET QUERY_STORE = OFF
GO
USE [TradeIS-33Berzegov]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Info]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[MeasurementUnit]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 05.04.2023 16:23:21 ******/
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
	[ProductManufacturer] [int] NOT NULL,
	[ProductProvider] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Provider]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Street]    Script Date: 05.04.2023 16:23:21 ******/
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
/****** Object:  Table [dbo].[Tovar]    Script Date: 05.04.2023 16:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovar](
	[TovarID] [int] IDENTITY(1,1) NOT NULL,
	[TovarName] [nvarchar](150) NOT NULL,
	[TovarDescription] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TovarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.04.2023 16:23:21 ******/
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
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductProvider])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
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
