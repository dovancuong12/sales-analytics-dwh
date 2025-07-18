USE [DWH_Stagging]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[OrderDate1] [date] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[Day] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Product]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Product](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[Weight] [numeric](8, 2) NULL,
	[Size] [nvarchar](5) NULL,
	[Color] [nvarchar](15) NULL,
	[ProductSubcategoryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_SalesPerson]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_SalesPerson](
	[SalesPersonID] [int] NULL,
	[NationalIDNumber] [nvarchar](15) NULL,
	[LoginID] [nvarchar](256) NULL,
	[BirthDate] [date] NULL,
	[Gender] [nvarchar](1) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[SickLeaveHours] [smallint] NULL,
	[VacationHours] [smallint] NULL,
	[FullName] [nvarchar](308) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Territory]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Territory](
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_Dim_Date]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_Dim_Date](
	[Month] [int] NULL,
	[Year] [int] NULL,
	[Day] [int] NULL,
	[OrderDate1] [date] NULL,
	[YearKey] [nvarchar](4) NULL,
	[MonthKey] [nvarchar](6) NULL,
	[DateKey] [nvarchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Product]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Product](
	[OrderDate1] [date] NULL,
	[TerritoryID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderQty] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_SalesOrder]    Script Date: 7/8/2025 11:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_SalesOrder](
	[OrderDate1] [date] NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[Revenue] [money] NULL,
	[NumberOrder] [numeric](20, 0) NULL,
	[SalesOrderID] [int] NULL
) ON [PRIMARY]
GO
