USE DataVizSamples;
GO

-- View: Sales details, client and product info
CREATE VIEW dbo.vSalesDetail AS
SELECT 
    s.OrderID,
    s.OrderDate,
    s.ShowroomCity,
    c.CustomerName,
    c.Segment,
    c.City AS CustomerCity,
    c.Province AS CustomerProvince,
    CONCAT(p.Collection, ' ', p.DoorStyle) AS ProductName,
    p.Category,
    s.Quantity,
    s.UnitPrice,
    LineTotal = s.Quantity * s.UnitPrice
FROM dbo.Sales s
JOIN dbo.Customers c ON c.CustomerID = s.CustomerID
JOIN dbo.Products p  ON p.ProductID = s.ProductID;
GO

-- View: Monthly sales by showroom
CREATE VIEW dbo.vMonthlySalesByShowroom AS
SELECT 
    ShowroomCity,
    FORMAT(OrderDate, 'yyyy-MM') AS YearMonth,
    SUM(Quantity * UnitPrice) AS MonthlyRevenue
FROM dbo.Sales
GROUP BY ShowroomCity, FORMAT(OrderDate, 'yyyy-MM');
GO

--SELECT * FROM vSalesDetail
--SELECT * FROM vMonthlySalesByShowroom