# Flight Management System

This repository contains SQL scripts for setting up and managing the database for a Flight Management System. The database consists of various tables to handle users, admins, airlines, feedback, flights, passenger profiles, payments, and tickets. Additionally, it includes stored procedures for inserting, updating, and deleting records in these tables.

## Files Included

1. **`db.sql`**
   - Contains the script to create the `ticket_info` table.

2. **`Insert.sql`**
   - Contains the script to insert sample records into the `ticket_info` table.

3. **`main.sql`**
   - Contains the scripts to create the following tables:
     - `users`
     - `admin`
     - `airline`
     - `feedback`
     - `flight`
     - `passenger_profile`
     - `payment`
     - `ticket`

4. **`store.sql`**
   - Contains the stored procedures for inserting, updating, and deleting records in the tables created in `main.sql`.

## Table Descriptions

### `users`
Stores user information.
- `user_id`: INT, Primary Key
- `username`: VARCHAR(20)
- `email`: VARCHAR(50)
- `password`: VARCHAR(100)

### `admin`
Stores admin information.
- `admin_id`: INT, Primary Key
- `admin_uname`: VARCHAR(20)
- `admin_email`: VARCHAR(50)
- `admin_pwd`: VARCHAR(100)

### `airline`
Stores airline information.
- `airline_id`: INT, Primary Key
- `name`: VARCHAR(20)
- `seats`: INT

### `feedback`
Stores feedback information.
- `feed_id`: INT, Primary Key
- `email`: VARCHAR(50)
- `q1`: VARCHAR(250)
- `q2`: VARCHAR(20)
- `q3`: VARCHAR(250)
- `rate`: INT

### `flight`
Stores flight information.
- `flight_id`: INT, Primary Key
- `admin_id`: INT, Foreign Key
- `arrival`: DATETIME
- `departure`: DATETIME
- `Destination`: VARCHAR(20)
- `source`: VARCHAR(20)
- `airline`: VARCHAR(20)
- `Seats`: VARCHAR(110)
- `duration`: VARCHAR(20)
- `Price`: INT
- `status`: VARCHAR(6), NULL
- `issue`: VARCHAR(50), NULL
- `last_seat`: VARCHAR(5), Default ''
- `bus_seats`: INT, Default 20
- `last_bus_seat`: VARCHAR(5), Default ''

### `passenger_profile`
Stores passenger profile information.
- `passenger_id`: INT, Primary Key
- `user_id`: INT, Foreign Key
- `flight_id`: INT, Foreign Key
- `mobile`: VARCHAR(110)
- `dob`: DATETIME
- `f_name`: VARCHAR(20), NULL
- `m_name`: VARCHAR(20), NULL
- `l_name`: VARCHAR(20), NULL

### `payment`
Stores payment information.
- `card_no`: VARCHAR(16), Primary Key
- `user_id`: INT, Foreign Key
- `flight_id`: INT, Foreign Key
- `expire_date`: VARCHAR(5), NULL
- `amount`: INT

### `ticket`
Stores ticket information.
- `ticket_id`: INT, Primary Key
- `passenger_id`: INT, Foreign Key
- `flight_id`: INT, Foreign Key
- `user_id`: INT, Foreign Key
- `seat_no`: VARCHAR(10)
- `cost`: INT
- `class`: VARCHAR(3)

## Stored Procedures

The stored procedures are used to manage the data in the tables. Each table has procedures for inserting, updating, and deleting records.

### Example Procedures

#### Users
- `InsertUser`: Inserts a new user.
- `UpdateUser`: Updates an existing user.
- `DeleteUser`: Deletes a user.

#### Admin
- `InsertAdmin`: Inserts a new admin.
- `UpdateAdmin`: Updates an existing admin.
- `DeleteAdmin`: Deletes an admin.

#### Airline
- `InsertAirline`: Inserts a new airline.
- `UpdateAirline`: Updates an existing airline.
- `DeleteAirline`: Deletes an airline.

#### Feedback
- `InsertFeedback`: Inserts new feedback.
- `DeleteFeedback`: Deletes feedback.

#### Flight
- `InsertFlight`: Inserts a new flight.
- `UpdateFlight`: Updates an existing flight.
- `DeleteFlight`: Deletes a flight.

#### Passenger Profile
- `InsertPassengerProfile`: Inserts a new passenger profile.
- `UpdatePassengerProfile`: Updates an existing passenger profile.
- `DeletePassengerProfile`: Deletes a passenger profile.

#### Payment
- `InsertPayment`: Inserts a new payment.
- `UpdatePayment`: Updates an existing payment.
- `DeletePayment`: Deletes a payment.

#### Ticket
- `InsertTicket`: Inserts a new ticket.
- `UpdateTicket`: Updates an existing ticket.
- `DeleteTicket`: Deletes a ticket.

## Usage

1. Clone the repository.
2. Execute the SQL scripts in the following order:
   - `db.sql`
   - `Insert.sql`
   - `main.sql`
   - `store.sql`

This will create the necessary tables and stored procedures in your database and insert sample data into the `ticket_info` table.


