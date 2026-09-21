with TRIP as (

    select time,
    cityname
    
    
    --from  {{ source('DEMO', 'WEATHER') }} 
     from {{ref ('stage_weather') }}

)

SELECT * FROM  trip
