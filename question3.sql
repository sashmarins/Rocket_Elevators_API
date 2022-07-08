select customer_id, 
         COUNT (*) 
from fact_elevators
GROUP BY customer_id;