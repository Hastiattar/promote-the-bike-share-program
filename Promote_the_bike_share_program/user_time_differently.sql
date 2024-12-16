-- How many records exist for each user type, day of the week, and part of the day, grouped by all three, ordered by the count of usertype?
SELECT 
    COUNT(usertype) AS count_user,
    day_of_week,
    part_of_day,
    usertype
FROM divvy_trips
GROUP BY 
    usertype,
    day_of_week,
    part_of_day
ORDER BY 
    count_user DESC;

-- How many records exist for each user type and part of the day, grouped by both usertype and part_of_day, ordered by the count of usertype?
SELECT 
    COUNT(usertype) AS count_user,
    part_of_day,
    usertype
FROM divvy_trips
GROUP BY 
    usertype,
    part_of_day
ORDER BY 
    count_user DESC;
