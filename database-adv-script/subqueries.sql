
--1 Non-correlated subquery;
--find all properties where the average rating is greater than 4.0

SELECT
    p.property_id,
    p.name AS propert_name,
    p.location

FROM properties p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating)>4.0 
);

--2 correlated subquer subquery;
--find users who have made more thatn 3 bookings

SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email

FROM users u
WHERE (
    SELECT COUNT(*)
    FROM Bookings b
    WHERE b.user_id=u.user_id


) >3;
