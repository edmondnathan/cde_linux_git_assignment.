/* Posey database was created in PostgreSQL database as instructed */

/*This script finds the order IDs where either gloss_qty or poster_qty exceeds 4000. The result includes only the id field in the table */

SELECT 
  id 
FROM 
  orders 
WHERE 
  gloss_qty > 4000 
  OR poster_qty > 4000;


/* This query returns list of orders where standard_qty is zero and either gloss_qty or poster_qty is over 1000 */

SELECT 
  id 
FROM 
  orders 
WHERE 
  standard_qty = 0 
  AND (
    gloss_qty > 1000 
    OR poster_qty > 1000
  );


/* This query displays only the company names starting with 'C' or 'W' and where the primary contact contains 'ana' or 'Ana', but does not contain 'eana'*/

SELECT 
  name 
FROM 
  accounts 
WHERE 
  (
    name LIKE 'C%' 
    OR name LIKE 'W%'
  ) 
  AND (
    primary_poc ILIKE '%ana%' 
    AND primary_poc NOT ILIKE '%eana%'
  );

  
/* This query shows the region, sales rep, and account name, sorted by account name */

SELECT 
  r.name AS region_name, 
  sr.name AS sales_rep_name, 
  a.name AS account_name 
FROM 
  accounts a 
  JOIN sales_reps sr ON a.sales_rep_id = sr.id 
  JOIN region r ON sr.region_id = r.id 
ORDER BY 
  a.name ASC;
