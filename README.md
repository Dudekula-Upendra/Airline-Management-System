# ✈️ Airline Management System (SQL Project)

A **relational database project** designed to model and analyze airline operations using SQL. This project focuses on **clean schema design, normalization, and analytical querying**, making it suitable for **academic submission, GitHub portfolio, and viva examinations**.

---

## 📌 Project Overview

The Airline Management System is built to help a global airline company manage and analyze:
- Flight scheduling and tracking
- Passenger and ticket bookings
- Crew management and assignments
- Flight delays and operational issues
- Revenue and seat occupancy analytics

The database is designed using **standard SQL principles** and avoids database-specific features where possible to ensure **portability and correctness**.

---

## 🧩 Database Schema

The project includes the following entities:

### 1️⃣ Airports
Stores airport details such as name, city, country, and IATA code.

### 2️⃣ Aircrafts
Stores aircraft model, seating capacity, and airline ownership.

### 3️⃣ Flights
Manages flight schedules, actual timings, route details, and aircraft assignment.

### 4️⃣ Passengers
Stores passenger personal details and frequent flyer information.

### 5️⃣ Bookings
Handles passenger flight bookings, seat allocation, ticket price, and booking date.

### 6️⃣ CrewMembers
Stores master information of airline crew (pilot, co-pilot, flight attendant, etc.).

### 7️⃣ CrewAssignments
A **junction table** that links crew members to flights, enabling a **many-to-many relationship**.

### 8️⃣ FlightDelays
Logs delay reasons and delay duration for flights.

---

## 🏗️ Design Highlights

- ✅ Fully normalized schema (3NF)
- ✅ Proper use of **primary and foreign keys**
- ✅ Crew-to-flight **many-to-many relationship** implemented correctly
- ✅ Manual primary keys for **cross-database compatibility**
- ✅ Clear separation of schema, data, and queries

---

## 📊 Analytical Queries Included

The project supports advanced analytical queries such as:

- ✈️ Flights with the highest number of delays
- ⏱️ Average delay per airline
- 💰 Most profitable routes
- 👤 Top frequent flyers
- 📅 Monthly revenue reports
- 💺 Seat occupancy percentage per flight

These queries demonstrate how operational data can be converted into **business insights**.

---

## 🛠️ SQL Dialect Compatibility

- ✅ SQLite (fully compatible)
- ⚠️ MySQL / PostgreSQL (minor syntax changes required for date functions)

> Note: SQLite date functions like `DATE('now')` and `strftime()` are used intentionally for portability in academic environments.

---

## ▶️ How to Run the Project

1. Create a new database (or open SQLite)
2. Execute `schema.sql` to create tables
3. Execute `sample_data.sql` to insert test data
4. Execute `queries.sql` to view analytical results

---

## 📁 Project Structure

```
Airline-Management-System/
├── README.md
├── schema.sql        # Table definitions and constraints
├── sample_data.sql   # Sample records for testing
├── queries.sql       # Analytical and reporting queries
```

---

## 🎓 Academic Use & Viva Ready

This project demonstrates:
- Strong understanding of relational database design
- Practical handling of real-world airline operations
- Ability to write optimized SQL queries for analysis
- Awareness of SQL dialect differences

Suitable for:
- DBMS mini-projects
- SQL portfolio projects
- Practical exams and viva voce

---

## 👤 Author

**Your Name**  
Database / SQL Project  

---

⭐ If you find this project useful, feel free to star the repository!
