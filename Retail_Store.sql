select *from retail_inventory limit 20
#1.average price of products in each category
SELECT "Category",
AVG("Price")
FROM retail_inventory
GROUP BY "Category";
#2.Average Inventory Level by Region
SELECT "Region",
AVG("Price")
FROM retail_inventory
GROUP BY "Region";
#3.Find total units sold for each category
SELECT "Category",
SUM("Units_Sold") AS Total_Units_Sold
FROM retail_inventory
GROUP BY "Category";
#4.Find average price by region
SELECT "Region",
AVG("Price") AS Average_Price
FROM retail_inventory
GROUP BY "Region";
#5.Find top 5 highest priced products
SELECT *
FROM retail_inventory
ORDER BY "Price" DESC
LIMIT 5;
#6.Count number of products in each category
SELECT "Category",
COUNT(*) AS Product_Count
FROM retail_inventory
GROUP BY "Category";
#7.Find total revenue by category
SELECT "Category",
SUM("Price" * "Units_Sold") AS Revenue
FROM retail_inventory
GROUP BY "Category";
#8.Find products with inventory below 100
SELECT *
FROM retail_inventory
WHERE "Inventory_Level" < 100;
#9.Find maximum and minimum product prices
SELECT
MAX("Price") AS Maximum_Price,
MIN("Price") AS Minimum_Price
FROM retail_inventory;
#10.Find average demand forecast for each season
SELECT "Seasonality",
AVG("Demand_Forecast") AS Average_Demand
FROM retail_inventory
GROUP BY "Seasonality";
#11.Find total sales in each region
SELECT "Region",
SUM("Units_Sold") AS Total_Sales
FROM retail_inventory
GROUP BY "Region";
#12.Find the category with highest average price
SELECT "Category",
AVG("Price") AS Avg_Price
FROM retail_inventory
GROUP BY "Category"
ORDER BY Avg_Price DESC
LIMIT 1;
#13.Find products where price is greater than average price
SELECT *
FROM retail_inventory
WHERE "Price" >
(
SELECT AVG("Price")
FROM retail_inventory
);
#14.Find number of records for each season
SELECT "Seasonality",
COUNT(*) AS Total_Records
FROM retail_inventory
GROUP BY "Seasonality";
#15.Find the region having maximum inventory
SELECT "Region",
SUM("Inventory_Level") AS Total_Inventory
FROM retail_inventory
GROUP BY "Region"
ORDER BY Total_Inventory DESC
LIMIT 1;