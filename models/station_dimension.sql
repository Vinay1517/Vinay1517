with weather as (

    select 
    DISTINCT
    CITYNAME,
    LAT,
    LON,
    CLOUDS

    from {{source('DEMO','WEATHER')}}

    
)

select * from weather 