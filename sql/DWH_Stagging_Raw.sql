USE [DWH_Stagging_Raw]
GO
/****** Object:  Table [dbo].[Employee_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Stagging_Raw](
	[BusinessEntityID] [int] NULL,
	[NationalIDNumber] [nvarchar](15) NULL,
	[LoginID] [nvarchar](256) NULL,
	[BirthDate] [date] NULL,
	[Gender] [nvarchar](1) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[SickLeaveHours] [smallint] NULL,
	[VacationHours] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person_Stagging_Raw](
	[BusinessEntityID] [int] NULL,
	[PersonType] [nvarchar](2) NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Stagging_Raw](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[Size] [nvarchar](5) NULL,
	[Weight] [numeric](8, 2) NULL,
	[Color] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory_Stagging_Raw](
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSubCategory_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubCategory_Stagging_Raw](
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductSubcategoryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderDetail_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail_Stagging_Raw](
	[SalesOrderID] [int] NULL,
	[SalesOrderDetailID] [int] NULL,
	[OrderQty] [smallint] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[LineTotal] [numeric](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderHeader_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderHeader_Stagging_Raw](
	[SalesOrderID] [int] NULL,
	[AccountNumber] [nvarchar](15) NULL,
	[CustomerID] [int] NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[TotalDue] [money] NULL,
	[ShipDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[OrderDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTerritory_Stagging_Raw]    Script Date: 7/8/2025 11:43:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTerritory_Stagging_Raw](
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL
) ON [PRIMARY]
GO
