with TRIP as (

    select time,
    cityname
    
    
    from  {{ source('DEMO', 'WEATHER') }} 

)

SELECT * FROM  trip
