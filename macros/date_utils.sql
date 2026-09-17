

{%macro region(x) %}

CASE 
WHEN CITYNAME IN ('NEW YORK')
THEN 'EAST'
ELSE 'WEST'
END AS CITY_REGION,

{%endmacro%}