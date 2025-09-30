INSERT INTO Person (person_id, first_name, last_name, email, phone_number) VALUES
(1, 'Laura', 'Stevenson', 'laurastevenson@gmail.com', '1231231233'),
(2, 'Bob', 'Jones', 'bobbyondatthang@hotmail.com', '78984621887'),
(3, 'Charlie', 'Brown', 'ohbotherandshii@gmail.com', '8114620017'),
(4, 'Jimmy', 'Hendricks', 'youveheardofmebefore@aol.com', '7110498636'),
(5, 'Sydney', 'Smith', 'p42wallabyway@proton.me', '14445471672'),
(6, 'Post', 'Malone', 'pinkutahcanesbabyyyy@gmail.com', '9876543210');

INSERT INTO Employee (person_id, employee_position, wages, date_hired, is_adult) VALUES
(1, 'Manager', 20.00, '2020-01-15', 1),
(5, 'Cashier', 13.00, '2023-02-01', 0);

INSERT INTO Customer (person_id, rewards_points, payment_number) VALUES
(2, 55, '2345678901234567'),
(3, 0, ''),
(4, 10, ''),
(6, 0, '6789012345678901');

INSERT INTO Theater_Order (order_id, buyer_id, total_price, order_type) VALUES
(1, 2, 45.99, 1),
(2, 3, 30.50, 2),
(3, 6, 25.00, 3),
(4, 4, 60.00, 2),
(5, 2, 15.75, 1);

INSERT INTO Ticket (ticket_id, order_id, showing_id, theater_id, showing_time, movie_id, seat_number, price, ticket_type) VALUES
(1, 1, 1, 1, '2025-09-27 19:30:00', 1, 'A01', 12.00, 0),
(2, 1, 1, 1, '2025-09-27 19:30:00', 1, 'A02', 12.00, 0),
(3, 2, 2, 2, '2025-09-27 20:00:00', 2, 'B05', 12.00, 0),
(4, 3, 3, 3, '2025-09-27 21:15:00', 3, 'C10', 16.00, 1),
(5, 4, 3, 3, '2025-09-27 21:15:00', 3, 'C11', 16.00, 1),
(6, 5, 4, 2, '2025-09-27 16:00:00', 4, 'D02', 8.50, 0);

INSERT INTO Showing (showing_id, theater_id, showing_time, movie_id) VALUES
(1, 1, '2025-09-27 19:30:00', 3),
(2, 2, '2025-09-27 20:00:00', 1),
(3, 3, '2025-09-27 21:15:00', 3),
(4, 2, '2025-09-27 16:00:00', 2),
(5, 4, '2025-09-27 18:45:00', 5);

INSERT INTO Movie (movie_id, title, distributor, runtime, NPAA_rating) VALUES
(1, 'Space Oddity', 'Columbia Pictures', 132, 'PG-13'),
(2, 'Love & Lattes', 'Universal', 95, 'PG'),
(3, 'Final Stand', 'Warner Bros.', 110, 'R'),
(4, 'The Little Robot', 'Disney', 85, 'G'),
(5, 'Midnight Chase', 'Paramount', 104, 'PG-13');

INSERT INTO Individual_Theater (theater_id, theater_format, max_guests, num_rows) VALUES
(1, 'IMAX', 250, 15),
(2, 'Standard', 120, 12),
(3, 'Dolby', 180, 14),
(4, 'Standard', 100, 10);