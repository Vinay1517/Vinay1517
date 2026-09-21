WITH CTE AS (

select

CITYNAME,
CLOUDS,
LOWER (CITYNAME),


{{region('CITYNAME')}}


FROM
{{ source('DEMO', 'WEATHER') }} 

WHERE CLOUDS != 0

)


SELECT * FROM CTE