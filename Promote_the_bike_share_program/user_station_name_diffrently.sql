-- How many records exist for each user type and from station name, grouped by both usertype and from_station_name, ordered by the count of usertype?
SELECT 
    COUNT(usertype) AS count_user,
    from_station_name,
    usertype
FROM
    divvy_trips
GROUP BY 
    from_station_name,
    usertype
ORDER BY
    count_user DESC;

-- How many records exist for 'Customer' usertype, grouped by from station name, ordered by the count of usertype?
SELECT 
    COUNT(usertype) AS count_user,
    from_station_name
FROM
    divvy_trips
WHERE
    usertype = 'Customer'
GROUP BY 
    from_station_name
ORDER BY
    count_user DESC;
