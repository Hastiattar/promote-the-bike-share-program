CREATE Table Divvy_trips as
select *
from divvy_trips_q1
UNION
SELECT *
from divvy_trips_q2
UNION
select *
FROM divvy_trips_q3
UNION
SELECT *
from divvy_trips_q4

COPY divvy_trips TO 'E:\Data analys\to promote the bike-share program project\promote the bike-share program\CSV_files\New Microsoft Excel Worksheet.csv' DELIMITER ',' CSV HEADER;

ALTER table divvy_trips
DROP COLUMN ride_length

ALTER TABLE divvy_trips
ADD COLUMN ride_length INTERVAL;
UPDATE divvy_trips
SET ride_length = end_time - start_time;


