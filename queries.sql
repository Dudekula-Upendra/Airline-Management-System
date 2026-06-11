-- Step 3: Core Operations
-- Add a new Passenger
INSERT INTO Passengers (passenger_name, date_of_birth, frequent_flyer_id)
VALUES ('Rahul Verma','1997-03-14','FF103');


-- Book Flight
INSERT INTO Bookings (passenger_id, flight_id, seat_number, ticket_price, booking_date)
VALUES (3, 1, '14C', 4500, DATE('now'));


-- Assign Crew
INSERT INTO Crew (crew_name, role)
VALUES ('Neha','Co-Pilot');


-- Record Delay
INSERT INTO FlightDelays (flight_id, delay_reason, delay_duration)
VALUES (2,'Weather',25);

-- Step 4: Queries
-- Find Most Delayed Flights
SELECT flights.flight_number , COUNT(flightdelays.delay_id) AS total_delays
 FROM flights 
 JOIN FlightDelays ON flights.flight_id = flightdelays.flight_id
GROUP BY flights.flight_number 
ORDER BY total_delays DESC ;

-- Calculate Monthly Revenue per Airline
SELECT strftime('%m', booking_date) AS month,
       SUM(ticket_price) AS revenue
FROM Bookings
GROUP BY strftime('%m', booking_date);

-- Find Top Frequent Flyers
SELECT passengers.passenger_name, COUNT(bookings.booking_id) AS total_flights
FROM Passengers 
JOIN Bookings ON passengers.passenger_id = bookings.passenger_id
GROUP BY passengers.passenger_name
ORDER BY total_flights DESC;

-- Compute Seat Occupancy Rates
SELECT flights.flight_number,
COUNT(bookings.booking_id) AS booked_seats,
aircrafts.capacity,
(COUNT(bookings.booking_id)/aircrafts.capacity)*100 AS occupancy_percentage
FROM Flights 
JOIN Bookings  ON flights.flight_id = bookings.flight_id
JOIN Aircrafts ON flights.aircraft_id = aircrafts.aircraft_id
GROUP BY flights.flight_number, aircrafts.capacity;