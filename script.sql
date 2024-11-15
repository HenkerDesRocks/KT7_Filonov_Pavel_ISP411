USE [master]
GO
/****** Object:  Database [master_Floor]    Script Date: 12.11.2024 12:29:46 ******/
CREATE DATABASE [master_Floor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'master_Floor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\master_Floor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'master_Floor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\master_Floor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [master_Floor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [master_Floor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [master_Floor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [master_Floor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [master_Floor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [master_Floor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [master_Floor] SET ARITHABORT OFF 
GO
ALTER DATABASE [master_Floor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [master_Floor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [master_Floor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [master_Floor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [master_Floor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [master_Floor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [master_Floor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [master_Floor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [master_Floor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [master_Floor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [master_Floor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [master_Floor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [master_Floor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [master_Floor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [master_Floor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [master_Floor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [master_Floor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [master_Floor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [master_Floor] SET  MULTI_USER 
GO
ALTER DATABASE [master_Floor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [master_Floor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [master_Floor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [master_Floor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [master_Floor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [master_Floor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [master_Floor] SET QUERY_STORE = OFF
GO
USE [master_Floor]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialPercent]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialPercent](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[badProductPerc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[id] [int] NOT NULL,
	[partnerTypeId] [int] NOT NULL,
	[partnernameId] [int] NOT NULL,
	[locationId] [int] NULL,
	[cityId] [int] NOT NULL,
	[streetId] [int] NOT NULL,
	[building] [int] NOT NULL,
	[director] [nvarchar](70) NOT NULL,
	[email] [nvarchar](70) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[cityIndex] [int] NOT NULL,
	[iin] [nvarchar](50) NOT NULL,
	[rating] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerImport]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerImport](
	[id] [int] NOT NULL,
	[partnerId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[materialId] [int] NOT NULL,
	[productNameId] [int] NOT NULL,
	[quentity] [int] NOT NULL,
	[saleDate] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partnertype]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partnertype](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productDesc]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productDesc](
	[id] [int] NULL,
	[name] [int] NULL,
	[percentOnSale] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImport]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImport](
	[id] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[nameOfProductId] [int] NOT NULL,
	[article] [int] NOT NULL,
	[minPrice] [decimal](8, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[id] [int] NOT NULL,
	[name] [nvarchar](70) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[street]    Script Date: 12.11.2024 12:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[street](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([id], [name]) VALUES (1, N' Приморск')
INSERT [dbo].[City] ([id], [name]) VALUES (2, N' Реутов')
INSERT [dbo].[City] ([id], [name]) VALUES (3, N' Северодвинск')
INSERT [dbo].[City] ([id], [name]) VALUES (4, N' Старый Оскол')
INSERT [dbo].[City] ([id], [name]) VALUES (5, N' Юрга')
GO
INSERT [dbo].[Location] ([id], [name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Location] ([id], [name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Location] ([id], [name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Location] ([id], [name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Location] ([id], [name]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[Material] ([id], [name]) VALUES (1, N'Дуб')
INSERT [dbo].[Material] ([id], [name]) VALUES (2, N'Клеевое покрытие')
INSERT [dbo].[Material] ([id], [name]) VALUES (3, N'Ясень')
GO
INSERT [dbo].[MaterialPercent] ([id], [name], [badProductPerc]) VALUES (1, N'Тип материала 1', N'0,10%')
INSERT [dbo].[MaterialPercent] ([id], [name], [badProductPerc]) VALUES (2, N'Тип материала 2', N'0,95%')
INSERT [dbo].[MaterialPercent] ([id], [name], [badProductPerc]) VALUES (3, N'Тип материала 3', N'0,28%')
INSERT [dbo].[MaterialPercent] ([id], [name], [badProductPerc]) VALUES (4, N'Тип материала 4', N'0,55%')
INSERT [dbo].[MaterialPercent] ([id], [name], [badProductPerc]) VALUES (5, N'Тип материала 5', N'0,34%')
GO
INSERT [dbo].[Partner] ([id], [partnerTypeId], [partnernameId], [locationId], [cityId], [streetId], [building], [director], [email], [phone], [cityIndex], [iin], [rating]) VALUES (1, 1, 1, 3, 5, 1, 15, N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', 652050, N'2222455179', 7)
INSERT [dbo].[Partner] ([id], [partnerTypeId], [partnernameId], [locationId], [cityId], [streetId], [building], [director], [email], [phone], [cityIndex], [iin], [rating]) VALUES (2, 3, 3, 1, 3, 5, 18, N'Петров Василий Петрович', N'vppetrov@vl.ru', N'987 123 56 78', 164500, N'3333888520', 7)
INSERT [dbo].[Partner] ([id], [partnerTypeId], [partnernameId], [locationId], [cityId], [streetId], [building], [director], [email], [phone], [cityIndex], [iin], [rating]) VALUES (3, 4, 5, 4, 1, 2, 21, N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'812 223 32 00', 188910, N'4440391035', 7)
INSERT [dbo].[Partner] ([id], [partnerTypeId], [partnernameId], [locationId], [cityId], [streetId], [building], [director], [email], [phone], [cityIndex], [iin], [rating]) VALUES (4, 2, 4, 5, 2, 4, 51, N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', 143960, N'1111520857', 5)
INSERT [dbo].[Partner] ([id], [partnerTypeId], [partnernameId], [locationId], [cityId], [streetId], [building], [director], [email], [phone], [cityIndex], [iin], [rating]) VALUES (5, 1, 2, 2, 4, 3, 122, N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', 309500, N'5552431140', 10)
GO
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (1, 1, 4, 3, 4, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (2, 1, 2, 1, 2, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (3, 1, 2, 1, 3, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (4, 3, 1, 1, 1, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (5, 3, 4, 2, 5, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (6, 3, 2, 1, 2, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (7, 3, 4, 3, 4, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (8, 5, 4, 3, 4, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (9, 5, 1, 1, 1, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (10, 4, 2, 1, 3, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (11, 4, 2, 1, 2, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (12, 4, 4, 2, 5, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (13, 2, 2, 1, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (14, 2, 2, 1, 3, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (15, 2, 4, 3, 4, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerImport] ([id], [partnerId], [productId], [materialId], [productNameId], [quentity], [saleDate]) VALUES (16, 2, 1, 1, 1, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[Partnertype] ([id], [name]) VALUES (1, N'ЗАО')
INSERT [dbo].[Partnertype] ([id], [name]) VALUES (2, N'ОАО')
INSERT [dbo].[Partnertype] ([id], [name]) VALUES (3, N'ООО')
INSERT [dbo].[Partnertype] ([id], [name]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[productDesc] ([id], [name], [percentOnSale]) VALUES (1, 2, CAST(2.35 AS Decimal(8, 2)))
INSERT [dbo].[productDesc] ([id], [name], [percentOnSale]) VALUES (2, 3, CAST(5.15 AS Decimal(8, 2)))
INSERT [dbo].[productDesc] ([id], [name], [percentOnSale]) VALUES (3, 4, CAST(4.34 AS Decimal(8, 2)))
INSERT [dbo].[productDesc] ([id], [name], [percentOnSale]) VALUES (4, 6, CAST(1.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[ProductImport] ([id], [productId], [nameOfProductId], [article], [minPrice]) VALUES (1, 4, 4, 8758385, CAST(4456.90 AS Decimal(8, 2)))
INSERT [dbo].[ProductImport] ([id], [productId], [nameOfProductId], [article], [minPrice]) VALUES (2, 4, 1, 8858958, CAST(7330.99 AS Decimal(8, 2)))
INSERT [dbo].[ProductImport] ([id], [productId], [nameOfProductId], [article], [minPrice]) VALUES (3, 2, 2, 7750282, CAST(1799.33 AS Decimal(8, 2)))
INSERT [dbo].[ProductImport] ([id], [productId], [nameOfProductId], [article], [minPrice]) VALUES (4, 2, 3, 7028748, CAST(3890.41 AS Decimal(8, 2)))
INSERT [dbo].[ProductImport] ([id], [productId], [nameOfProductId], [article], [minPrice]) VALUES (6, 6, 5, 5012543, CAST(5450.59 AS Decimal(8, 2)))
GO
INSERT [dbo].[ProductName] ([id], [name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[ProductType] ([id], [name]) VALUES (1, N'Инженерная доска ')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (2, N'Ламинат')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (3, N'Массивная доска')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (4, N'Паркетная доска')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (5, N'Пробковое напольное клеевое покрытие')
INSERT [dbo].[ProductType] ([id], [name]) VALUES (6, N'Пробковое покрытие')
GO
INSERT [dbo].[street] ([id], [name]) VALUES (1, N' Лесная')
INSERT [dbo].[street] ([id], [name]) VALUES (2, N' Парковая')
INSERT [dbo].[street] ([id], [name]) VALUES (3, N' Рабочая')
INSERT [dbo].[street] ([id], [name]) VALUES (4, N' Свободы')
INSERT [dbo].[street] ([id], [name]) VALUES (5, N' Строителей')
GO
USE [master]
GO
ALTER DATABASE [master_Floor] SET  READ_WRITE 
GO
