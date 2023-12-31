/*7.What is the revenue generated by each product, ranked from highest to lowest?
*/

SELECT product, SUM(total_profit) AS Profit
FROM (SELECT product, (price_per_unit * units_sold) AS total_profit
FROM adidas_sales 
) AS subquery
 GROUP BY product 
 ORDER BY Profit DESC;




