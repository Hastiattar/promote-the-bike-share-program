-- How many records exist for each ride_length_diffrently category and usertype in the divvy_trips table, grouped and ordered by count?
ALTER Table divvy_trips
ADD COLUMN total_minutes INT;

ALTER table divvy_trips
add COLUMN ride_length_diffrently text;

UPDATE divvy_trips
SET total_minutes = EXTRACT(DAY FROM ride_length) * 24 * 60 + 
                    EXTRACT(HOUR FROM ride_length) * 60 + 
                    EXTRACT(MINUTE FROM ride_length);


UPDATE divvy_trips
SET ride_length_diffrently = CASE
                                 WHEN total_minutes < 60 THEN 'less than one hour'
                                 WHEN total_minutes > 1440 THEN 'more than one day'
                                 ELSE 'less than one day'
                              END;


SELECT count(ride_length_diffrently) as count_ride_length_diffrently,
       usertype,
       ride_length_diffrently
FROM divvy_trips
GROUP BY ride_length_diffrently,
         usertype
ORDER BY count_ride_length_diffrently DESC;
