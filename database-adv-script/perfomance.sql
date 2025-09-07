EXPLAIN SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.property_name,
    pay.payment_id,
    pay.payment_date


FROM Bookings b
JOIN users u ON b.user_id=u.user_id
JOIN properties p ON b.property_id=p.property_id
JOIN Payments pay ON b.booking_id=pay.booking id;

