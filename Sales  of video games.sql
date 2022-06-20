-- Total number of top five games sold 

SELECT sub.name, sum(sub.Total_sales) AS  sum
from(
SELECT name, (NA_Sales+EU_Sales+JP_Sales+Other_Sales+Global_Sales) AS Total_sales
FROM vgsales)sub
GROUP BY  1
ORDER BY 2 DESC
LIMIT 5;

-- Getting the top five publishers

SELECT DISTINCT publisher, 
count(*) AS number_of_publishers
FROM vgsales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Getting the total number of sales made each year

SELECT sub.year, SUM(sub.total_number_of_sales) AS sum

FROM(
SELECT year, (NA_sales+EU_sales+JP_sales+other_sales+Global_sales) AS Total_number_of_sales
 FROM vgsales)sub
 GROUP BY 1
 ORDER BY 1 DESC;
 
 -- Total number of sales for each region
SELECT SUM(NA_sales), SUM(EU_sales), SUM(JP_sales)
FROM vgsales