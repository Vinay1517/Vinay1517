

with CTE AS (

    SELECT  
    t.* 
    FROM {{ ref('trip_fact') }} t
)

select  * 
from  CTE 