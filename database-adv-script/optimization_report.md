## Query Optimisation Report
## initial Query
I wrote query a query joining Bookings,users,properties,and payments to retrieve all booking details
## perfomance analysis

Using EXPLAIN ,i found,
- full table scans on Bookings and payments
- Missing indexes on Bookings.user_id;
- Bookings.property_id; and
- payments.booking_id

## Optimization
we improved perfomance by;
1. Adding indexes on FK((user_id) property_id) and payment_id, booking_id
2. Selecting only neccesary columns instead of Using 'SELECT'
3. Reordering joins for efficiency