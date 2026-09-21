with weather as (

    select date(time) as daily_weather,
    time,
    cityname,
    weather_main, 
    pressere,
    humidity,
    clouds

    
    from  {{ source('DEMO', 'WEATHER') }} 
)

SELECT * FROM weather 