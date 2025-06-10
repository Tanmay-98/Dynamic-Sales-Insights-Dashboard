USE SalesDb;

-- Regional Sales Analysis
WITH RegionalSales AS (
    SELECT Country, SUM(Total_Sale_Amount) AS Total_Sales
    FROM online_retail_II
    GROUP BY Country
)
SELECT * FROM RegionalSales
ORDER BY Total_Sales DESC;

-- Monthly Sales Trends
WITH MonthlySales AS (
    SELECT 
        Country,
        YEAR(InvoiceDate) AS Year,
        MONTH(InvoiceDate) AS Month,
        SUM(Total_Sale_Amount) AS Monthly_Sales
    FROM online_retail_II
    GROUP BY Country, YEAR(InvoiceDate), MONTH(InvoiceDate)
)
SELECT * FROM MonthlySales
ORDER BY Country, Year, Month;

-- Quarterly Sales Trends
WITH QuarterlySales AS (
    SELECT 
        Country,
        YEAR(InvoiceDate) AS Year,
        DATEPART(QUARTER, InvoiceDate) AS Quarter,
        SUM(Total_Sale_Amount) AS Quarterly_Sales
    FROM online_retail_II
    GROUP BY Country, YEAR(InvoiceDate), DATEPART(QUARTER, InvoiceDate)
)
SELECT * FROM QuarterlySales
ORDER BY Country, Year, Quarter;

-- Product Revenue
WITH ProductRevenue AS (
    SELECT 
        Country,
        StockCode,
        Description,
        SUM(Total_Sale_Amount) AS Total_Revenue
    FROM online_retail_II
    GROUP BY Country, StockCode, Description
)
SELECT * FROM ProductRevenue
ORDER BY Country, Total_Revenue DESC;

-- Customer Purchases
WITH CustomerPurchases AS (
    SELECT 
        Customer_ID,
        Country,
        COUNT(*) AS Purchase_Frequency
    FROM online_retail_II
    GROUP BY Customer_ID, Country
)
SELECT * FROM CustomerPurchases
ORDER BY Country, Purchase_Frequency DESC;

-- Average Order Value
WITH AOV_CTE AS (
    SELECT 
        Country,
        YEAR(InvoiceDate) AS Year,
        MONTH(InvoiceDate) AS Month,
        AVG(Total_Sale_Amount) AS Average_Order_Value
    FROM online_retail_II
    GROUP BY Country, YEAR(InvoiceDate), MONTH(InvoiceDate)
)
SELECT * FROM AOV_CTE
ORDER BY Country, Year, Month;

-- Top 10 Products per Country
WITH RankedProducts AS (
    SELECT
        Country,
        StockCode,
        Description,
        SUM(Total_Sale_Amount) AS Revenue,
        RANK() OVER (PARTITION BY Country ORDER BY SUM(Total_Sale_Amount) DESC) AS Product_Rank
    FROM online_retail_II
    GROUP BY Country, StockCode, Description
)
SELECT *
FROM RankedProducts
WHERE Product_Rank <= 10
ORDER BY Country, Product_Rank;

