CREATE DATABASE DataWareHouse
GO

USE [DataWareHouse]
GO



-- 1. Dim_Year
CREATE TABLE [dbo].[Dim_Year] (
    [YearKey] NVARCHAR(4) NOT NULL PRIMARY KEY,
    [Year] INT NULL
);

-- 2. Dim_Month
CREATE TABLE [dbo].[Dim_Month] (
    [MonthKey] NVARCHAR(6) NOT NULL PRIMARY KEY,
    [Month] INT NULL,
    [YearKey] NVARCHAR(4),
    FOREIGN KEY (YearKey) REFERENCES Dim_Year(YearKey)
);

-- 3. Dim_Date
CREATE TABLE [dbo].[Dim_Date] (
    [DateKey] NVARCHAR(8) NOT NULL PRIMARY KEY,
    [Day] INT NULL,
    [MonthKey] NVARCHAR(6),
    FOREIGN KEY (MonthKey) REFERENCES Dim_Month(MonthKey)
);

-- 4. Dim_ProductCategory
CREATE TABLE [dbo].[Dim_ProductCategory] (
    [ProductCategoryKey] INT NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(50)
);

-- 5. Dim_ProductSubCategory
CREATE TABLE [dbo].[Dim_ProductSubCategory] (
    [ProductSubCategoryKey] INT NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(50),
    [ProductCategoryKey] INT,
    FOREIGN KEY (ProductCategoryKey) REFERENCES Dim_ProductCategory(ProductCategoryKey)
);

-- 6. Dim_Product
CREATE TABLE [dbo].[Dim_Product] (
    [ProductKey] INT NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(50),
    [ProductNumber] NVARCHAR(25),
    [StandardCost] MONEY,
    [ListPrice] MONEY,
    [Weight] NUMERIC(8, 2),
    [Size] NVARCHAR(5),
    [Color] NVARCHAR(15),
    [ProductSubCategoryKey] INT,
    FOREIGN KEY (ProductSubCategoryKey) REFERENCES Dim_ProductSubCategory(ProductSubCategoryKey)
);

-- 7. Dim_SalesPerson
CREATE TABLE [dbo].[Dim_SalesPerson] (
    [SalesPersonKey] INT NOT NULL PRIMARY KEY,
    [FullName] NVARCHAR(308),
    [NationalIDNumber] NVARCHAR(15),
    [Gender] NVARCHAR(1),
    [HireDate] DATE
);

-- 8. Dim_Territory
CREATE TABLE [dbo].[Dim_Territory] (
    [TerritoryKey] INT NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(50)
);

-- 9. Fact_SalesOrder
CREATE TABLE [dbo].[Fact_SalesOrder] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [DateKey] NVARCHAR(8),
    [TerritoryKey] INT,
    [SalesPersonKey] INT,
    [Revenue] MONEY,
    [NumberOrder] NUMERIC(20, 0),
    FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey),
    FOREIGN KEY (TerritoryKey) REFERENCES Dim_Territory(TerritoryKey),
    FOREIGN KEY (SalesPersonKey) REFERENCES Dim_SalesPerson(SalesPersonKey)
);

-- 10. Fact_Product
CREATE TABLE [dbo].[Fact_Product] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [DateKey] NVARCHAR(8),
    [TerritoryKey] INT,
    [ProductKey] INT,
    [Qty] BIGINT,
    FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey),
    FOREIGN KEY (TerritoryKey) REFERENCES Dim_Territory(TerritoryKey),
    FOREIGN KEY (ProductKey) REFERENCES Dim_Product(ProductKey)
);
