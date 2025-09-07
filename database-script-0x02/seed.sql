
 --insert users

INSERT INTO Users (user_id, name, email, phone, user_type) VALUES
(1, 'Alice Johnson', 'alice@example.com', '+254700111111', 'host'),
(2, 'Brian Otieno', 'brian@example.com', '+254700222222', 'guest'),
(3, 'Clara Mwangi', 'clara@example.com', '+254700333333', 'host'),
(4, 'David Kamau', 'david@example.com', '+254700444444', 'guest'),
(5, 'Emily Wanjiru', 'emily@example.com', '+254700555555', 'guest');

-- insert properties
INSERT INTO Properties (property_id, host_id, title, location, price_per_night, property_type) VALUES
(1, 1, 'Cozy Apartment in Nairobi CBD', 'Nairobi', 4500.00, 'Apartment'),
(2, 1, 'Luxury Villa with Pool', 'Karen, Nairobi', 15000.00, 'Villa'),
(3, 3, 'Beachfront Cottage', 'Diani, Mombasa', 8000.00, 'Cottage');

-- insert Bookings
INSERT INTO Bookings (booking_id, property_id, guest_id, check_in, check_out, status) VALUES
(1, 1, 2, '2025-09-10', '2025-09-12', 'confirmed'),
(2, 2, 4, '2025-09-15', '2025-09-18', 'completed'),
(3, 3, 5, '2025-10-01', '2025-10-05', 'confirmed'),
(4, 1, 5, '2025-08-15', '2025-08-17', 'cancelled');

 --insert Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
(1, 1, 9000.00, '2025-09-05', 'credit_card'),
(2, 2, 45000.00, '2025-09-10', 'paypal'),
(3, 3, 32000.00, '2025-09-25', 'credit_card');

-- insert reviews
INSERT INTO Reviews(review_id,property_id,user_id,rating,comment)
VALUES
UUID(), (SELECT property_id FROM propertIES LIMIT 1),
(SELECT user_id FROM users WHERE email='alice@example.com',5,'Amazing stay! super clea and host was helpful.'):

--insert Messages
INSERT INTO messages (message_id,sender_id,recipient_id,message_body)
VALUES 
UUID(),
(SELECT use_id FROM users WHERE email="alice@example.com"),
(SELECT use_id FROM users WHERE email="rian@example.com"),('Hi rian,just confirming my booking for nextweek');
