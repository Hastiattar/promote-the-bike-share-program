CREATE TABLE Divvy_Trips_q1 (
  trip_id TEXT PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP, 
    bikeid TEXT,
    tripduration INT, 
    from_station_id TEXT,
    from_station_name TEXT, 
    to_station_id TEXT,
    to_station_name TEXT,  
    usertype TEXT, 
    gender TEXT,  
    birthyear INT,
    ride_length TIME, 
    day_of_week INT
);

CREATE TABLE Divvy_Trips_q2(
  trip_id TEXT PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP, 
    bikeid TEXT,
    tripduration INT, 
    from_station_id TEXT,
    from_station_name TEXT, 
    to_station_id TEXT,
    to_station_name TEXT,  
    usertype TEXT, 
    gender TEXT,  
    birthyear INT,
    ride_length TIME, 
    day_of_week INT
);
CREATE TABLE Divvy_Trips_q3 (
  trip_id TEXT PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP, 
    bikeid TEXT,
    tripduration INT, 
    from_station_id TEXT,
    from_station_name TEXT, 
    to_station_id TEXT,
    to_station_name TEXT,  
    usertype TEXT, 
    gender TEXT,  
    birthyear INT,
    ride_length TIME, 
    day_of_week INT
);

CREATE TABLE Divvy_Trips_q4 (
    trip_id TEXT PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP, 
    bikeid TEXT,
    tripduration INT, 
    from_station_id TEXT,
    from_station_name TEXT, 
    to_station_id TEXT,
    to_station_name TEXT,  
    usertype TEXT, 
    gender TEXT,  
    birthyear INT,
    ride_length TIME, 
    day_of_week INT
);

ALTER TABLE divvy_trips ADD COLUMN part_of_day TEXT;

UPDATE divvy_trips
SET part_of_day = CASE 
    WHEN EXTRACT(HOUR FROM start_time) >= 5 AND EXTRACT(HOUR FROM start_time) < 12 THEN 'morning'
    WHEN EXTRACT(HOUR FROM start_time) >= 12 AND EXTRACT(HOUR FROM start_time) < 17 THEN 'afternoon'
    WHEN EXTRACT(HOUR FROM start_time) >= 17 AND EXTRACT(HOUR FROM start_time) < 21 THEN 'evening'
    ELSE 'night'
END;




UPDATE divvy_trips
SET day_of_week = CASE 
    WHEN day_of_week::text = '1' THEN 'Sunday'
    WHEN day_of_week::text = '2' THEN 'Monday'
    WHEN day_of_week::text = '3' THEN 'Tuesday'
    WHEN day_of_week::text = '4' THEN 'Wednesday'
    WHEN day_of_week::text = '5' THEN 'Thursday'
    WHEN day_of_week::text = '6' THEN 'Friday'
    WHEN day_of_week::text = '7' THEN 'Saturday'
    ELSE day_of_week::text
END;

select *
from divvy_trips