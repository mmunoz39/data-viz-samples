USE DataVizSamples;
GO

-- Sales by date range
DECLARE @StartDate DATE = '2025-03-01';
DECLARE @EndDate   DATE = '2025-04-30';

SELECT 
    s.OrderDate,
    s.ShowroomCity,
    c.CustomerName,
    CONCAT(p.Collection, ' ', p.DoorStyle) AS ProductName,
    s.Quantity,
    s.UnitPrice,
    s.Quantity * s.UnitPrice AS LineTotal
FROM dbo.Sales s
JOIN dbo.Customers c ON c.CustomerID = s.CustomerID
JOIN dbo.Products p  ON p.ProductID = s.ProductID
WHERE s.OrderDate BETWEEN @StartDate AND @EndDate
ORDER BY s.OrderDate;

SELECT 
    ShowroomCity,
    SUM(Quantity * UnitPrice) AS TotalRevenue,
    RANK() OVER (ORDER BY SUM(Quantity * UnitPrice) DESC) AS RevenueRank
FROM dbo.Sales
GROUP BY ShowroomCity;