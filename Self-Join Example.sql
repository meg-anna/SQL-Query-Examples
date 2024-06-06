--Latest record_load_date per row, LEFT SELF JOIN

SELECT TOP (1000) a1.*
  FROM [CUSTOMER] AS a1
LEFT JOIN [CUSTOMER] AS a2 ON a1.customer_id = a2.customer_id 
AND a1.record_load_date < a2.record_load_date
WHERE a2.record_load_date is NULL and a1.record_load_date is not null