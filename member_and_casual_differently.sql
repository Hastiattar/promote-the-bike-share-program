SELECT COUNT(usertype) as count_usertype
from divvy_trips;


SELECT COUNT(usertype) as count_usertype, usertype
from divvy_trips
GROUP BY usertype;


SELECT COUNT(usertype) as count_usertype, usertype, gender
from divvy_trips
GROUP BY usertype, gender;

SELECT COUNT(usertype) as count_usertype, usertype, day_of_week
from divvy_trips
GROUP BY  day_of_week, usertype;
   
 

WITH user_of_each_day AS (
    SELECT COUNT(usertype) AS count_usertype, usertype, day_of_week
    FROM divvy_trips
    GROUP BY day_of_week, usertype
),
total_count AS (
    SELECT COUNT(usertype) AS count_usertype, usertype
    FROM divvy_trips
    GROUP BY usertype
)
SELECT 
    u.day_of_week,
    u.usertype,
    (u.count_usertype * 100 / t.count_usertype) AS percentage_of_user
FROM 
    user_of_each_day u
JOIN 
    total_count t ON u.usertype = t.usertype
ORDER BY 
    percentage_of_user DESC;

