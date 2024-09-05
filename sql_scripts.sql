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
  company_name 
FROM 
  companies 
WHERE 
  (
    company_name LIKE 'C%' 
    OR company_name LIKE 'W%'
  ) 
  AND primary_contact LIKE '%ana%' 
  AND primary_contact NOT LIKE '%eana%';
  
/* This query shows the region, sales rep, and account name, sorted by account name */

SELECT 
  r.region_name, 
  s.sales_rep_name, 
  a.account_name 
FROM 
  regions r 
  JOIN sales_reps s ON r.region_id = s.region_id 
  JOIN accounts a ON s.sales_rep_id = a.sales_rep_id 
ORDER BY 
  a.account_name;
