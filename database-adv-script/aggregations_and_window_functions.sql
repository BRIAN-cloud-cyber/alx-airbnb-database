--1 Aggregations: total number of bookings made by each user

SELECT
    u.user_id,   -- show each user
    u.first_name,
    u.last_name,
    COUNT(b.booking_id)AS total_bookings -- counts how many bookings they made
    
FROM users u
LEFT JOIN Bookings b ON u.user_id=b.user_id -- connect users to their bookings
GROUP BY U.user_id,u.first_name,u.last_name --group rows by user
ORDER BY total_bookings DESC; --show more active users first


--2 Windows Function:Rank Properties based on total number of bookings
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK()OVER (ORDER BY
    COUNT(b.booking_id)DESC) AS booking_row_number
    FROM properties p
    LEFT JOIN Bookings b ON p.property_id=b.property_id
    GROUP BY p.property_id, p.name
    ORDER BY total-booking DESC
