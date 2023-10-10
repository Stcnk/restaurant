.open restaurant.db

.mode column

--JOIN
SELECT
    A.customerid, 
    A.name AS customername,
    B.billingcity AS city, 
    B.total AS price_net
FROM customer A
JOIN invoice B
ON A.customerid = B.customerid;

--Aggregrate
SELECT 
  COUNT(*),
  SUM(total)
FROM customer A
JOIN invoice B
ON A.customerid = B.customerid;

-- WITH
WITH sub1 AS (
    SELECT * FROM customer
    WHERE email LIKE '%@google.com'
  ), sub2 AS (
    SELECT * FROM invoice
    WHERE NOT billingcity = 'Bangkok' 
    AND total >= 200
  )
SELECT 
    sub1.customerid, 
    sub1.name AS customername,
    sub2.billingcity AS city, 
    sub2.total AS price_net
FROM sub1 
JOIN sub2 
ON sub1.customerid = sub2.customerid;

-- Subquery
SELECT 
    sub1.customerid, 
    sub1.name AS customername,
    sub2.billingcity AS city, 
    sub2.total AS price_net
FROM (SELECT * FROM customer
    WHERE email LIKE '%@google.com') AS sub1 
JOIN(SELECT * FROM invoice
    WHERE NOT billingcity = 'Bangkok' 
    AND total >= 200) AS sub2 
ON sub1.customerid = sub2.customerid;

--  JOIN many to many
SELECT 
   C.ingredientname  
FROM menu AS A 
JOIN menu_ingredient AS B 
ON A.menuid = B.menuid 
JOIN ingredient AS C 
ON B.ingredientid = C.ingredientid
WHERE menuname = 'Pad Thai';

-- JOIN inner join
SELECT 
    A.customerid, 
    A.name AS customername,
    B.billingcity AS city, 
    B.total AS price_net
FROM customer A
JOIN invoice B
ON A.customerid = B.customerid
WHERE B.total >= 300;
