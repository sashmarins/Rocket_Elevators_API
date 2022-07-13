select * from (SELECT
       DATE_TRUNC('month',creation_date) AS  THE_MONTH, 
         COUNT (id) 
from fact_contacts
GROUP BY DATE_TRUNC('month',creation_date)) as query1 order by query1.the_month ;