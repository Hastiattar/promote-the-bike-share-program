# Introduction
🚲 Welcome to the CycleWave Bike-Share Analysis Case Study! 🌍 In this project, I worked with the fictional bike-share company CycleWave to analyze how casual riders and annual members use bikes differently. The goal is to provide actionable insights that can help CycleWave improve their marketing strategy and increase annual memberships. 📊💡
SQL queries?check them out here:  [promote_the_bike_share_program folder](/Promote_the_bike_share_program/)
# Background
CycleWave is a bike-share company based in New York, USA, offering a variety of bike options with more than 5,800 bicycles and 600 stations throughout the city. 🚴‍♂️📍 The company aims to convert casual riders into annual members. To achieve this, we need to analyze historical bike trip data and understand the behavior of both groups. 📅🔍
The key questions driving this analysis are:

1. How do annual members and casual riders use CycleWave bikes differently? 🤔
2. Why would casual riders consider purchasing an annual membership? 💡
3. How can CycleWave use digital media to influence casual riders to become members? 📱

These questions will help guide the creation of a new marketing strategy aimed at increasing the number of annual members.
# Tools I used
- **SQL :**
Used for querying, cleaning, and analyzing data from the Cyclistic dataset.

- **PostgreSQL:**
The database management system used for storing and querying the data.

- **Visual Studio Code (VS Code) :**
Code editor for writing SQL queries and scripts.

- **Git :**
Version control for tracking changes and managing code versions.

-** GitHub :**
Cloud platform for hosting the project and collaborating with others.
# The Analysis

The goal of this analysis is to examine the differences and usage patterns of CycleWave bikes by annual members and casual riders. By analyzing past trip data, the main objective is to understand how users interact with CycleWave bikes throughout the day and week. Insights from this analysis can help the marketing team design more effective strategies to convert casual riders into annual members.

In 2023, the total number of users is 196,605, consisting of 25,585 casual riders and 171,020 annual members. This data highlights that the majority of CycleWave's user base is made up of annual members, indicating a significant opportunity to retain and further engage casual riders.
``` sql
SELECT COUNT(usertype) AS count_usertype
FROM divvy_trips;

SELECT COUNT(usertype) AS count_usertype, usertype
FROM divvy_trips
GROUP BY usertype;
```
# **How many occurrences of each user type are there on each day of the week?**
- The highest number of subscribers is observed on Tuesday with 33,351 users.
- The lowest number of subscribers is recorded on Sunday with 9,256 users.
- The highest number of customers is seen on Saturday with 7,945 users.
- The lowest number of customers is reported on Wednesday with 1,877 users.
- Regular customers use the services more on weekends, such as Saturday and Friday.
- Subscribers have the highest usage on weekdays, like Tuesday and Thursday, while their activity drops significantly on the Sunday holiday.
```sql
SELECT COUNT(usertype) AS count_usertype, usertype, day_of_week
FROM divvy_trips
GROUP BY day_of_week, usertype;
```
# **How many occurrences of each user type are there on each start station?**
The analysis of the top 50 busiest stations shows that:

Subscribers dominate usage at these stations.
Out of the 50 stations:
48 stations are primarily used by Subscribers.
Only 2 stations are primarily used by Customers:
Streeter Dr & Grand Ave: 1,386 users.
Lake Shore Dr & Monroe St: 1,236 users.
```sql
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
    count_user DESC
LIMIT 50
```
# **How many occurrences of each user type are there on each part of day?**
- Subscribers predominantly use the service in the morning, with substantial  activity in the afternoon and evening.
- Customers mainly use the service in the afternoon, with significantly less usage in the morning, evening, and night.
```sql 
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
```
# **How many occurrences of each user type are there on each ride length?**
First, we divided the ride lengths into three categories:

- Less than one hour
- Less than one day
- More than one day

The majority of rides for both Subscribers and Customers are less than one hour in duration, indicating a high usage of the service for short-term purposes.
Subscribers have a much larger number of less-than-one-hour rides compared to Customers, highlighting that Subscribers tend to use the service more frequently for short trips.
```sql
SELECT count(ride_length_diffrently) as count_ride_length_diffrently,
       usertype,
       ride_length_diffrently
FROM divvy_trips
GROUP BY ride_length_diffrently,
         usertype
ORDER BY count_ride_length_diffrently DESC;
```
# Conclusions 
## Based on the analysis of CycleWave's trip data, the following conclusions can be drawn:

### Different Usage Patterns of Subscribers and Customers:

- Subscribers predominantly use the service on weekdays, particularly in the morning and afternoon. This group tends to take short rides (less than one hour). Additionally, the busiest stations are mostly used by subscribers.
Customers use the service more on weekends, especially on Friday and Saturday, and their trips are generally shorter (less than one hour).
### Opportunity to Convert Customers to Subscribers:

- Given that a significant number of customers (especially on weekends) use the service, there is an opportunity to offer them incentives to upgrade to an annual membership. These incentives could include discounts for annual memberships or additional benefits for longer trips.
### Increase Activity on Holidays:

- Since subscriber activity decreases on Sunday, promotional campaigns focusing on special offers for one-day trips or annual memberships could be used to increase usage during these off-peak times.
### Ride Length:

In general, rides under one hour are the most common for both groups. This suggests that both customers and subscribers mostly use the service for short trips. Therefore, providing incentives or offers focused on maximizing the use of short rides for new users would be beneficial.
## Solutions to Increase the Number of Casual Riders:
### Targeted Promotions for Day Passes:
By creating special promotions for casual riders, one-day trips can be made more attractive, while also encouraging them to consider an annual membership. For example, offering discounts or extra features for longer trips could motivate casual riders to upgrade.

### Encourage Membership Through User Behavior Analysis:
Personalized membership offers can be designed based on casual riders' behavior. For instance, if users tend to ride more on weekends, targeted offers like discounts or added benefits for purchasing an annual membership on those days could be used.

### Special Services for Casual Riders:
Offering "travel packages" with special discounts for casual riders could encourage them to use bikes more frequently, eventually leading to a higher conversion rate to annual memberships.

### Utilize Digital Media for Membership Promotions:
By leveraging social media and digital advertisements, casual riders can be continuously informed about the benefits of an annual membership, guiding them towards making the switch.






