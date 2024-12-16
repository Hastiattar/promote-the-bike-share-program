-- How many records exist for each user type in the divvy_trips table?
SELECT COUNT(usertype) AS count_usertype
FROM divvy_trips;

-- How many occurrences of each user type are there in the divvy_trips table, grouped by user type?
SELECT COUNT(usertype) AS count_usertype, usertype
FROM divvy_trips
GROUP BY usertype;

-- How many occurrences of each user type are there, grouped by the day of the week, in the divvy_trips table?
SELECT COUNT(usertype) AS count_usertype, usertype, day_of_week
FROM divvy_trips
GROUP BY day_of_week, usertype;

-- What is the percentage of each user type for each day of the week, based on the count of each user type in each day compared to the total count of that user type across all days?

