# joins queries
This directory contains SQL queries 
demonstrating the use of ** INNER JOIN **,
**LEFT JOIN **,and **FULL OUTER JOIN ** on the airbnb_like schema.
# Queries implemented
1.**INNER JOIN **
Retrieves all bookingf and the respective users who made those bookings

2** LEFT JOIN **
Retrieves all properties and their reviews, including properties that have no reviews.
3 ** FULL OUTER JOIN **
Rettieves all users and all bookings,even if the user has no booking or a booking is not linked to a user.
since MYSQL doesnt support FULL OUTER JOIN natively , I implemented it using a combination of 'LEFT JOIN and RIGHT JOIN ' with 'UNION'
## usage

run the queries in your MySQL client:
'''bash
mysql-u root -p <joins_queries.sql>