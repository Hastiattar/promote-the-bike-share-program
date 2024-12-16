select 
    COUNT(usertype) as count_user,
    from_station_name,
    usertype
FROM
    divvy_trips
GROUP BY 
    from_station_name,
    usertype
ORDER BY
    count_user DESC
    

select 
    COUNT(usertype) as count_user,
    from_station_name
FROM
    divvy_trips
WHERE
    usertype='Customer'
GROUP BY 
    from_station_name
ORDER BY
    count_user DESC