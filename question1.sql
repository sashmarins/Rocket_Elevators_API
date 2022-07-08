SELECT
       DATE_TRUNC('month',creation_date) AS  THE_MONTH, 
         COUNT ("contactId") 
from fact_contacts
GROUP BY DATE_TRUNC('month',creation_date);