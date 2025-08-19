-- BULK INSERT METHOD
USE DataVizSamples;
GO

BULK INSERT dbo.Products
FROM 'C:\PATH\data-viz-samples\datasets\products.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK, CODEPAGE = '65001');

BULK INSERT dbo.Customers
FROM 'C:\PATH\data-viz-samples\datasets\customers.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK, CODEPAGE = '65001');

BULK INSERT dbo.Sales
FROM 'C:\PATH\data-viz-samples\datasets\sales.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK, CODEPAGE = '65001');

BULK INSERT dbo.Dates
FROM 'C:\PATH\data-viz-samples\datasets\dates.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK, CODEPAGE = '65001');


--SELECT TOP 3 * FROM dbo.Products
--SELECT TOP 3 * FROM dbo.Customers
--SELECT TOP 3 * FROM dbo.Sales
--SELECT TOP 3 * FROM dbo.Dates
