CREATE INDEX idx_users_email ON 
Users(email)
CREATE INDEX idx_bookings_users_id ON Bookings ((user_id))

CREATE INDEX idx_bookings_property_id ON Bookings (property_id)

CREATE INDEX idx_bookings_start_date ON Booking(start_date);

CREATE INDEX idx_payments_booking_id ON payments(booking_id)