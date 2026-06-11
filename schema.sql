-- AIRLINE MANAGEMENT SYSTEM (COMPLETE SQL PROJECT)

-- =============================
-- STEP 1: DATABASE & TABLES
-- =============================

CREATE DATABASE AirlineManagement;
USE AirlineManagement;

-- Airports Table
CREATE TABLE Airports (
    airport_id INT PRIMARY KEY AUTO_INCREMENT,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    iata_code CHAR(3) UNIQUE
);

-- Aircrafts Table
CREATE TABLE Aircrafts (
    aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(50),
    capacity INT,
    airline_name VARCHAR(50)
);

-- Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_name VARCHAR(50),
    flight_number VARCHAR(10),
    origin_airport INT,
    destination_airport INT,
    scheduled_departure DATETIME,
    scheduled_arrival DATETIME,
    actual_departure DATETIME,
    actual_arrival DATETIME,
    aircraft_id INT,
    FOREIGN KEY (origin_airport) REFERENCES Airports(airport_id),
    FOREIGN KEY (destination_airport) REFERENCES Airports(airport_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id)
);

-- Passengers Table
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_name VARCHAR(100),
    date_of_birth DATE,
    frequent_flyer_id VARCHAR(20)
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_id INT,
    flight_id INT,
    seat_number VARCHAR(5),
    ticket_price DECIMAL(10,2),
    booking_date DATE,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Crew Table
CREATE TABLE Crew (
    crew_id INT PRIMARY KEY AUTO_INCREMENT,
    crew_name VARCHAR(100),
    role VARCHAR(30),
    flight_id INT,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Flight Delays Table
CREATE TABLE FlightDelays (
    delay_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    delay_reason VARCHAR(50),
    delay_duration INT,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);