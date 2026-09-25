select sales_data from sales_dataset_db;
use  sales_dataset_db;
show tables;
select * from sales_data;
select*from sales_data limit 20;
select order_Date, product , Cost from sales_data;
select count(distinct Order_id) As Total_order from Sales_data;
-- Q1.info ofcategory, region.
select category, region from sales_data limit 25;

--- Q2. list of category.
select distinct category from sales_data;

-- Q3. list of region.
select distinct region from sales_data;

-- Q4. List of product.
select distinct product from sales_data;

-- -Q5. Total sales
select sum(sales) As Total_sales from sales_data;

-- Q6. Total profit
select sum (profit) As Total_profit from sales_data;

-- Q7. Calculate total quantity sold
SELECT SUM(Quantity) AS Total_Quantity
FROM sales_data;

-- Q8. Calculate average sales
SELECT AVG(Sales) AS Average_Sales
FROM sales_data;

-- Q9. Sales by category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Q10.Sales by region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Q11.Orders by region
SELECT 
    Region,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data
GROUP BY Region
ORDER BY Total_Orders DESC;

-- Q12.Profit by product
SELECT 
    Product,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Profit DESC;

-- Q13.Top 5 products by sales
SELECT 
    Product,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

-- Q14.Sales by customer segment
SELECT 
    Customer_Segment,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;

-- Q15.Sales by sales channel
SELECT 
    Sales_Channel,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Sales_Channel
ORDER BY Total_Sales DESC;

-- Q16.Profit by sales channel
SELECT 
    Sales_Channel,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Sales_Channel
ORDER BY Total_Profit DESC;

-- Q17.Monthly sales
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

-- Q18.Monthly profit
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Profit) AS Monthly_Profit
FROM sales_data
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;