-- Aalyze the cumulative revenue generated over time
SELECT order_date, 
ROUND(SUM(revenue) OVER(ORDER BY  order_date),2) AS cum_revenue
FROM 
(SELECT orders.order_date, 
SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details 
JOIN pizzas 
ON order_details.pizza_id = pizzas.pizza_id
JOIN orders
ON orders.order_id =  order_details.order_id
GROUP BY  order_date) AS sales;
