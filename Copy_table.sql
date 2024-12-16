COPY Divvy_Trips_q1 (trip_id, start_time, end_time, bikeid, tripduration, 
                       from_station_id, from_station_name, to_station_id, 
                       to_station_name, usertype, gender, birthyear, 
                       ride_length, day_of_week)
FROM 'E:\Data analys\to promote the bike-share program project\promote the bike-share program\CSV_files\Divvy_Trips_2019_Q1.csv' 
DELIMITER ',' 
CSV HEADER;

COPY Divvy_Trips_q2 (trip_id, start_time, end_time, bikeid, tripduration, 
                       from_station_id, from_station_name, to_station_id, 
                       to_station_name, usertype, gender, birthyear, 
                       ride_length, day_of_week)
FROM 'E:\Data analys\to promote the bike-share program project\promote the bike-share program\CSV_files\Divvy_Trips_2019_Q2.csv' 
DELIMITER ',' 
CSV HEADER;

COPY Divvy_Trips_q3 (trip_id, start_time, end_time, bikeid, tripduration, 
                       from_station_id, from_station_name, to_station_id, 
                       to_station_name, usertype, gender, birthyear, 
                       ride_length, day_of_week)
FROM 'E:\Data analys\to promote the bike-share program project\promote the bike-share program\CSV_files\Divvy_Trips_2019_Q3.csv' 
DELIMITER ',' 
CSV HEADER;

COPY Divvy_Trips_q4 (trip_id, start_time, end_time, bikeid, tripduration, 
                       from_station_id, from_station_name, to_station_id, 
                       to_station_name, usertype, gender, birthyear, 
                       ride_length, day_of_week)
FROM 'E:\Data analys\to promote the bike-share program project\promote the bike-share program\CSV_files\Divvy_Trips_2019_Q4.csv' 
DELIMITER ',' 
CSV HEADER;

DROP Table divvy_trips_q1