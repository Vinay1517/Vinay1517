

with CTE AS (

    SELECT  
    t.* 
    FROM {{ ref('trip_fact') }} t

    left join {{ref('daily_weather')}} w

    on t.cityname = w.cityname
)

select  * 
from  CTE 