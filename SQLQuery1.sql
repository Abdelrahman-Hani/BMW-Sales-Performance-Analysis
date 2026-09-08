select * from dbo.BMW_clean
--------------------------------------------------------------------------
SELECT
    SUM(cast(Sales_Volume as bigint)) AS Total_Units_Sold,
    AVG(cast(Price_USD as bigint)) AS Average_Price,
    AVG(cast(Mileage_KM as bigint)) AS Average_Mileage,
    SUM(CAST(Total_Revenue AS BIGINT)) AS Total_Revenue,
    COUNT(DISTINCT Model) AS Total_Models
FROM dbo.BMW_clean;
--------------------------------------------------------------------------
--What are the top-selling BMW models?
select top 5
model ,sum(Sales_Volume) as Total_sales
from dbo.BMW_clean
group by model
order by Total_sales desc;
--------------------------------------------------------------------------
--Which region generates the highest revenue?
SELECT Top 1
    Region,
    SUM(cast(Total_Revenue AS BIGINT)) AS Total_Revenue
FROM dbo.BMW_clean
GROUP BY Region
ORDER BY Total_Revenue DESC;
---------------------------------------------------------------------------
--Which year had the highest revenue?
SELECT Top 1
    Year,
    SUM(cast(Total_Revenue AS BIGINT)) AS Total_Revenue
FROM dbo.BMW_clean
GROUP BY Year
ORDER BY Total_Revenue DESC;
---------------------------------------------------------------------------
--Which fuel type generates the most revenue?
select Fuel_Type,sum(cast(Total_Revenue as bigint)) as total_renvenue
from dbo.BMW_clean
group by Fuel_Type
order by total_renvenue desc;
----------------------------------------------------------------------------
--Automatic vs Manual — which has higher sales?
select Transmission,
sum(Sales_Volume) as total_sales
from dbo.BMW_clean
group by Transmission
order by total_sales desc;
-------------------------------------------------------------------------------
-- Which models have the highest average price?
SELECT
    Model,
    AVG(Price_USD) AS Average_Price
FROM dbo.BMW_clean
GROUP BY Model
ORDER BY Average_Price DESC;
-------------------------------------------------------------------------------
--What is the average mileage by model?
SELECT
    Model,
    AVG(Mileage_KM) AS Average_mileage
FROM dbo.BMW_clean
GROUP BY Model
ORDER BY Average_mileage DESC;
------------------------------------------------------------------------------
--Which sales classification generates the highest revenue?

select Sales_Classification,
sum(cast(Total_Revenue as bigint))as total_revenue
from dbo.BMW_clean
group by Sales_Classification
order by total_revenue desc;
----------------------------------------------------------------------------
--What are the top 5 models by revenue?
select top 5
model,sum(cast(Total_Revenue as bigint)) as total_revenue
from dbo.BMW_clean
group by model
order by total_revenue desc;
------------------------------------------------------------------------------
--How does sales volume change over the years?
SELECT
    Year,
    SUM(Sales_Volume) AS Total_Sales
FROM dbo.BMW_clean
GROUP BY Year
ORDER BY Year;
-----------------------------------------------------------------------------------