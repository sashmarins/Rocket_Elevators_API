SELECT
       DATE_TRUNC('month',creation_date) AS  THE_MONTH, 
         COUNT (*) 
from fact_quotes
GROUP BY DATE_TRUNC('month',creation_date);