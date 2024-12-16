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
## Annual members and casual riders diffrently
The goal of this analysis is to examine the differences and usage patterns of CycleWave bikes by annual members and casual riders. By analyzing past trip data, the main objective is to understand how users interact with CycleWave bikes throughout the day and week. These insights can help the marketing team design more effective strategies to convert casual riders into annual members.

The analysis includes reviewing usage patterns on different days of the week and comparing the behavior of annual members and casual riders. This will give us a better understanding of peak bike usage times and help optimize resource allocation and targeted marketing efforts.

Ultimately, this analysis will enable the marketing team to design impactful marketing campaigns to encourage casual riders to purchase annual memberships, thereby increasing the membership base for CycleWave.
```sql 
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
```
# Users by Membership Type
## Customers (Casual Riders):

- The highest usage occurs on Saturday with 31%.
- Casual riders tend to use bikes more during weekends (Saturday and Sunday), indicating leisure or recreational use.
- Their usage during weekdays (Monday to Friday) is comparatively lower.
## Subscribers (Annual Members):

- The highest percentage of usage is on Tuesday with 19%.
- Subscribers have a higher usage rate during weekdays (e.g., Tuesday, Thursday, Wednesday), suggesting that they primarily use bikes for commuting.
- Their weekend usage drops significantly, with only 5% on Sunday.


# What I leared 
# Conclusions 
