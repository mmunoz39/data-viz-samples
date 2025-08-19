-- Create DB
IF DB_ID('DataVizSamples') IS NULL
BEGIN
  CREATE DATABASE DataVizSamples;
END
GO

USE DataVizSamples;
GO

-- PRODUCTS
IF OBJECT_ID('dbo.Products') IS NOT NULL DROP TABLE dbo.Products;
CREATE TABLE dbo.Products (
  ProductID   varchar(10)  NOT NULL PRIMARY KEY,
  Collection  nvarchar(60) NOT NULL,
  FinishType  nvarchar(60) NOT NULL,
  DoorStyle   nvarchar(60) NOT NULL,
  Category    nvarchar(60) NOT NULL,
  UnitCost    decimal(10,2) NOT NULL
);

-- CUSTOMERS
IF OBJECT_ID('dbo.Customers') IS NOT NULL DROP TABLE dbo.Customers;
CREATE TABLE dbo.Customers (
  CustomerID   varchar(10)   NOT NULL PRIMARY KEY,
  CustomerName nvarchar(120) NOT NULL,
  Segment      nvarchar(30)  NOT NULL,   -- Builder / Designer / Homeowner
  City         nvarchar(60)  NOT NULL,
  Province     nvarchar(10)  NOT NULL
);

-- SALES
IF OBJECT_ID('dbo.Sales') IS NOT NULL DROP TABLE dbo.Sales;
CREATE TABLE dbo.Sales (
  OrderID      int           NOT NULL PRIMARY KEY,
  OrderDate    date          NOT NULL,
  ShowroomCity nvarchar(60)  NOT NULL,
  CustomerID   varchar(10)   NOT NULL,
  ProductID    varchar(10)   NOT NULL,
  Quantity     int           NOT NULL,
  UnitPrice    decimal(10,2) NOT NULL,
  CONSTRAINT FK_Sales_Customers FOREIGN KEY (CustomerID) REFERENCES dbo.Customers(CustomerID),
  CONSTRAINT FK_Sales_Products  FOREIGN KEY (ProductID)  REFERENCES dbo.Products(ProductID)
);

-- DATES
IF OBJECT_ID('dbo.Dates') IS NOT NULL DROP TABLE dbo.Dates;
CREATE TABLE dbo.Dates (
  [Date]     date         NOT NULL PRIMARY KEY,
  [Year]     int          NOT NULL,
  [Quarter]  varchar(2)   NOT NULL,   
  [Month]    tinyint      NOT NULL,
  MonthName  nvarchar(20) NOT NULL,
  [Day]      tinyint      NOT NULL
);

-- Indexes for performance
CREATE INDEX IX_Sales_OrderDate ON dbo.Sales(OrderDate);
CREATE INDEX IX_Sales_CustProd ON dbo.Sales(CustomerID, ProductID) INCLUDE (Quantity, UnitPrice);
