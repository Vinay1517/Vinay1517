with daily_weather as (

    select date(time) as daily_weather,
    weather_main, 
    pressere,
    humidity,
    clouds

    
    from  {{ source('DEMO', 'WEATHER') }} 

),

daily_weather_agg as (
    SELECT 
    daily_weather,
    weather_main, 
    --COUNT(weather_main), 

    avg(pressere),
    avg(humidity),
    avg(clouds)



   -- row_number() OVER(PARTITION BY daily_weather ORDER BY COUNT(weather_main) DESC ) AS ROW_NUMBER

    FROM  daily_weather

    GROUP BY daily_weather, weather_main

    qualify row_number() OVER(PARTITION BY daily_weather ORDER BY COUNT(weather_main) DESC ) = 1

    
)

select * from daily_weather_agg