-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: retail_events_db
-- ------------------------------------------------------
-- Server version	8.0.33
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `retail_events_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `retail_events_db`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;

SELECT * FROM dim_campaigns;  

DELETE FROM dim_campaigns
WHERE campaign_id = 'campaign_id';

COMMIT;
SELECT * from dim_products;
SELECT * from dim_stores;
SELECT * from fact_events;

--    AD-HOC REQUEST 1
SELECT DISTINCT e.product_code,p.product_name,e.base_price,e.promo_type
FROM fact_events e 
INNER JOIN dim_products p 
ON  e.product_code = p.product_code 
WHERE base_price > 500 AND promo_type = "BOGOF";


--   AD-HOC REQUEST 2
SELECT city, COUNT(store_id) as Total_Stores 
FROM dim_stores
GROUP BY city
ORDER BY Total_Stores DESC;


--   AD-HOC REQUEST 3
SELECT
    c.campaign_name,
    CONCAT(ROUND(SUM(f.base_price * f.`quantity_sold(before_promo)`) / 1000000,2),' M') AS Total_Revenue_Before_Promotion,
	CONCAT(ROUND(SUM(CASE WHEN f.promo_type = 'BOGOF' THEN f.base_price * 0.5 * 2 * f.`quantity_sold(after_promo)`
                          WHEN f.promo_type = '50% OFF' THEN f.base_price * 0.5 * f.`quantity_sold(after_promo)`
						  WHEN f.promo_type = '25% OFF' THEN f.base_price * 0.75 * f.`quantity_sold(after_promo)`
						  WHEN f.promo_type = '33% OFF' THEN f.base_price * 0.67 * f.`quantity_sold(after_promo)`
						  WHEN f.promo_type = '500 Cashback' THEN (f.base_price - 500) * f.`quantity_sold(after_promo)`END) / 1000000,2),' M') AS Total_Revenue_After_Promotion
FROM fact_events AS f
JOIN dim_campaigns AS c
    ON f.campaign_id = c.campaign_id
GROUP BY c.campaign_name;

-- AD-HOC REQUEST 4
WITH cte1 AS (SELECT c.campaign_name,p.category,f.`quantity_sold(before_promo)`,
      IF(f.promo_type = 'BOGOF',f.`quantity_sold(after_promo)` * 2,f.`quantity_sold(after_promo)`) AS quantities_sold_AP
      FROM fact_events f
    JOIN dim_campaigns c ON f.campaign_id = c.campaign_id
    JOIN dim_products p  ON f.product_code = p.product_code
    WHERE c.campaign_name = 'Diwali'),

cte2 AS (SELECT campaign_name,category,
		((SUM(quantities_sold_AP) - SUM(`quantity_sold(before_promo)`))
            / SUM(`quantity_sold(before_promo)`)) * 100 AS ISU_Percentage
	FROM cte1
    GROUP BY category)

SELECT campaign_name,category,ROUND(ISU_Percentage,2) AS `ISU%`,
       RANK() OVER(ORDER BY ISU_Percentage DESC) AS Rank_Order
FROM cte2;


--    AD-HOC REQUEST 5
WITH cte AS (SELECT p.product_name,p.category,
	SUM(f.base_price * f.`quantity_sold(before_promo)`) AS revenue_before,
	SUM(CASE WHEN f.promo_type = 'BOGOF' THEN f.base_price * 0.5 * 2 * f.`quantity_sold(after_promo)`
			 WHEN f.promo_type = '50% OFF' THEN f.base_price * 0.5 * f.`quantity_sold(after_promo)`
			 WHEN f.promo_type = '25% OFF' THEN f.base_price * 0.75 * f.`quantity_sold(after_promo)`
			 WHEN f.promo_type = '33% OFF' THEN f.base_price * 0.67 * f.`quantity_sold(after_promo)`
			 WHEN f.promo_type = '500 Cashback' THEN (f.base_price - 500) * f.`quantity_sold(after_promo)`END) AS revenue_after
	FROM fact_events f
    JOIN dim_products p ON f.product_code = p.product_code
	GROUP BY p.product_name,p.category
)

SELECT product_name,category,ROUND((revenue_after - revenue_before),2) AS `IR`,
    ROUND(((revenue_after - revenue_before) / revenue_before) * 100,2) AS `IR%`
FROM cte
ORDER BY `IR%` DESC
LIMIT 5;