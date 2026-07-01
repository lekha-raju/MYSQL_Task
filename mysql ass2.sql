
USE mydatabase;
 
 SHOW tables;
 
SELECT*
FROM customers;

SELECT*
FROM orders;

SELECT first_name,country,score
FROM customers;

SELECT*
FROM customers
WHERE score<>0;

SELECT*
FROM customers
WHERE country ='Germany';

SELECT*
FROM customers
ORDER by score DESC;

SELECT*
FROM customers
ORDER by score ASC;

SELECT*
FROM customers
ORDER by country ASC,score DESC;

SELECT country,COUNT(id)
FROM  customers
group by country;

SELECT country,AVG(score)
FROM customers
group by country;

SELECT country, avg(score) FROM customers GROUP BY country ;


SELECT country, sum(score) AS Total_Score, count(id) AS Total_customers FROM customers GROUP BY country ;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
GROUP BY country ;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
GROUP BY country 
HAVING AVG(SCORE)>430;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
WHERE score <>0
GROUP BY country 


SELECT country,COUNT(id)
FROM  customers
group by country;

SELECT country,AVG(score)
FROM customers
group by country;

SELECT country, avg(score) FROM customers GROUP BY country ;


SELECT country, sum(score) AS Total_Score, count(id) AS Total_customers FROM customers GROUP BY country ;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
GROUP BY country ;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
GROUP BY country 
HAVING AVG(SCORE)>430;

SELECT country, avg(score) AS Avg_Score 
FROM customers 
WHERE score <>0
GROUP BY country 
HAVING AVG(SCORE)>430;

SELECT country, SUM(score) AS total_Score 
FROM customers 
WHERE score <>400
GROUP BY country 
HAVING SUM(SCORE)>430;

SELECT* 
FROM customers
ORDER BY score DESC
LIMIT 3;


SELECT * 
FROM customers
ORDER BY score ASC
LIMIT 2;

SELECT *
FROM orders
order by order_date DESC
LIMIT 2;

SELECT country,AVG(score) AS average_score
FROM customers
WHERE score <> 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY average_score DESC;

