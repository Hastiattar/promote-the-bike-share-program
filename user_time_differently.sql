select 
    COUNT(usertype) as count_user,
    day_of_week,
    part_of_day,
    usertype
from divvy_trips
GROUP BY usertype,
        day_of_week,
        part_of_day
ORDER BY count_user DESC

select 
    COUNT(usertype) as count_user,
    part_of_day,
    usertype
from divvy_trips
GROUP BY usertype,
        part_of_day
ORDER BY count_user DESC