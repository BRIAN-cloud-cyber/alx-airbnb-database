# Index optimization

## identified columns

I added indexes to columns frequently used in WHERE,JOIN,and ORDER BY:
    - Users.email
    - -Bookings.user_id,Bookings.property_id,Bookings.start_date
    - paymentd.booking_id

