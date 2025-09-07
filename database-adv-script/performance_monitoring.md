## perfomance Monitoring report

## Queries monitored
1. Retrieve booking with user, property, and payment details by date range
2. rank properties by number of bookings

## analysis (Before optimisations)

Using EXPLAIN ANALYZE i observed;
- full table scans on bookings and payments
- High execution time on filtering on start_date
- - temporary tables 