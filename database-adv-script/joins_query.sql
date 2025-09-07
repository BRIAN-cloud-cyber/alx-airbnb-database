--1 INNER JOIN: retrieve all bookings and the respective users who made those bookings
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.users_id,
    u.first_name,
    u.last_name,
    u.email

FROM Bookins b 
INNER JOIN Users u ON b.user_id=u.user_id;

--2 LEFT JOIN: retrivieces all properties and their reviews,
--- including properties that have no reviews.
SELECT
    p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment

FROM properties p 
LEFT JOIN Reviews r ON p.property_id=r.property_id;

--3 FULL OUTER JOIN: Retrieve all users and all bookings,
-- even if the user has no booking or a booking is not linked to a user.
--NOTE:MYSQL does support FULL OUTER JOIN DIRECTLY
-- we therefore emulate UNION of LEFT JOIN and RIGHT JOIN.
SELECT
    u.users_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status

FROM users u 
LEFT JOIN Bookings b ON u.user_id=b.user_id

UNION

SELECT
    u.users_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status

FROM users u
RIGHT JOIN Bookings b ON u.user_id=b.user_id;




