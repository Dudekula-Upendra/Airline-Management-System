-- Step 2: Insert Sample Data
INSERT INTO Airports (airport_name, city, country, iata_code) VALUES
('Rajiv Gandhi Intl Airport','Hyderabad','India','HYD'),
('Indira Gandhi Intl Airport','Delhi','India','DEL'),
('Chhatrapati Shivaji Intl Airport','Mumbai','India','BOM');


INSERT INTO Aircrafts (model, capacity, airline_name) VALUES
('Airbus A320',180,'IndiGo'),
('Boeing 737',160,'Air India');


INSERT INTO Flights (airline_name, flight_number, origin_airport, destination_airport,
scheduled_departure, scheduled_arrival, actual_departure, actual_arrival, aircraft_id)
VALUES
('IndiGo','6E-201',1,2,'2025-01-10 06:00','2025-01-10 08:00','2025-01-10 06:30','2025-01-10 08:20',1),
('Air India','AI-101',2,3,'2025-01-11 09:00','2025-01-11 11:00','2025-01-11 09:10','2025-01-11 11:05',2);


INSERT INTO Passengers (passenger_name, date_of_birth, frequent_flyer_id) VALUES
('Ramesh Kumar','1995-05-12','FF101'),
('Sita Sharma','1998-08-22','FF102');


INSERT INTO Bookings (passenger_id, flight_id, seat_number, ticket_price, booking_date) VALUES
(1,1,'12A',4500,'2025-01-05'),
(2,1,'12B',4500,'2025-01-05'),
(1,2,'10C',6000,'2025-01-06');


INSERT INTO Crew (crew_name, role) VALUES
('Captain Rao','Pilot');

INSERT INTO CrewAssignments(assignment_id, crew_id, flight_id) VALUES
(1,1,1),
(2,2,1),
(3,3,2);

INSERT INTO FlightDelays (flight_id, delay_reason, delay_duration) VALUES
(1,'Weather',30),
(1,'Air Traffic',20),
(2,'Maintenance',10);